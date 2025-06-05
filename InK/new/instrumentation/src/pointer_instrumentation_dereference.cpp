/*------------------------------------------------------------------------------
Memory logging instrumentation

Copyright (c) 2019 Vito Kortbeek (v.kortbeek-1@tudelft.nl)

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
------------------------------------------------------------------------------*/

#include <string>
using namespace std;

#include "clang/AST/AST.h"
#include "clang/AST/ASTConsumer.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "clang/ASTMatchers/ASTMatchers.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendActions.h"
#include "clang/Rewrite/Core/Rewriter.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Attributes.h"
#include "llvm/Support/WithColor.h"

#include "utils.hpp"

using namespace clang;
using namespace clang::ast_matchers;
using namespace clang::driver;
using namespace clang::tooling;

static llvm::cl::OptionCategory MatcherSampleCategory("Matcher Sample");

#define GLOBAL_WRITE       "__INK_TRANSLATE_VARIABLE_ACCESS"
#define GLOBAL_GET_ADDRESS "__INK_GET_VARIABLE_ADDRESS"
#define PTR_WRITE          "__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE"
#define PTR_READ           "__INK_TRANSLATE_POINTER_DEREFERENCE_READ"
#define IGNORE_STR         "INK::IGNORE"
#define TASK_FUNCTION_STR  "INK::TASK"
#define INK_POINTER_PREFIX "__ink_pointer_"

static uint32_t num_errors = 0;

std::string getCastString(const Expr* expr)
{
    std::string exprTypeStr = expr->getType().getAsString();

    return "(" + exprTypeStr + ")";
}

const auto getAssignmentOperatorMatcher()
{
    return anyOf(
        hasOperatorName("="),
        hasOperatorName("+="),
        hasOperatorName("-="),
        hasOperatorName("*="),
        hasOperatorName("/="),
        hasOperatorName("%="),
        hasOperatorName("<<="),
        hasOperatorName(">>="),
        hasOperatorName("&="),
        hasOperatorName("^="),
        hasOperatorName("|=")
    );
}

const auto getAssignmentUnaryMatcher(const clang::ast_matchers::internal::BindableMatcher<clang::Stmt> &BaseMatcher, std::string binding)
{
    return
    unaryOperator(
        hasAnyOperatorName("++", "--"),
        has(
            BaseMatcher.bind(binding)
        )
    ).bind("assignment_matcher");
}

const auto getAssignmentLHSMatcher(const clang::ast_matchers::internal::BindableMatcher<clang::Stmt> &BaseMatcher, std::string binding)
{
    return
    binaryOperator(
        getAssignmentOperatorMatcher(),
        hasLHS(
            BaseMatcher.bind(binding)
        )
    ).bind("assignment_matcher");
}

const auto getAssignmentRHSMatcher(const clang::ast_matchers::internal::BindableMatcher<clang::Stmt> &BaseMatcher, std::string binding)
{
    return
    binaryOperator(
        getAssignmentOperatorMatcher(),
        hasLHS(
            BaseMatcher
        ),
        hasRHS(
            BaseMatcher.bind(binding)
        )
    );
}

const auto getNonAssignmentMatcher(const clang::ast_matchers::internal::Matcher<clang::Stmt> &BaseMatcher)
{
    return unless(
        anyOf(
            /* UnaryOperator with ++ or -- is a write, not a read. */
            hasParent(
                unaryOperator(
                    hasAnyOperatorName("++", "--")
                )
            ),
            /* Reads can only match on the RHS of the binary operator.
             * If the RHS is not a match, then it is not a read.
             */
            hasParent(
                binaryOperator(
                    getAssignmentOperatorMatcher(),
                    unless(
                        hasRHS(
                            BaseMatcher
                        )
                    )
                )
            ),
            /* If the RHS is a match, but the LHS is also a match, the BaseMatcher could match on the LHS of the binaryOperator.
             * To avoid this, we must exclude this case as well.
             * However, now the BaseMatcher cannot match the RHS in this case.
             * So we need another matcher to specifically match on the RHS of the binary operator
             * if the LHS also matches. This matcher is in the getAssignmentRHSMatcher() function.
             */
            hasParent(
                binaryOperator(
                    getAssignmentOperatorMatcher(),
                    hasLHS(
                        BaseMatcher
                    ),
                    hasRHS(
                        BaseMatcher
                    )
                )
            )
        )
    );
}

void matchAll(clang::ast_matchers::MatchFinder &Matcher, MatchFinder::MatchCallback &Handler, const clang::ast_matchers::internal::BindableMatcher<clang::Stmt> &BaseMatcher, std::string binding)
{
    /* READ: Matches on the RHS of a binary operator assignment where the LHS is also a match. */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            getAssignmentRHSMatcher(BaseMatcher, binding)
        ),
        &Handler
    );
    /* WRITE: Matches on the LHS of a binary operator assignment. */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            getAssignmentLHSMatcher(BaseMatcher, binding)
        ),
        &Handler
    );
    /* WRITE: Matches on the operand of a unary operator assignment. */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            getAssignmentUnaryMatcher(BaseMatcher, binding)
        ),
        &Handler
    );
}

std::string getMacro(const Stmt* AssignmentMatcher)
{
    return AssignmentMatcher ? PTR_WRITE : PTR_READ;
}

class PointerDereferenceHandler : public MatchFinder::MatchCallback {
    public:
        PointerDereferenceHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const UnaryOperator *PtrRef = Result.Nodes.getNodeAs<UnaryOperator>("pointer_ref");
            const Stmt *AssignmentMatcher = Result.Nodes.getNodeAs<Stmt>("assignment_matcher");

            if (!isTaskFunction(getParentFunction(PtrRef, Result)))
            {
                return;
            }

            std::string macro_name = getMacro(AssignmentMatcher);

            const Expr* subExpr = PtrRef->getSubExpr();
            auto locations = getBeginEndLoc(Rewrite, subExpr);

            Rewrite.InsertTextBefore(locations.begin_loc, "(" + getCastString(subExpr) + macro_name + "(");
            Rewrite.InsertTextAfterToken(locations.end_loc, "))");

            string location = subExpr->getBeginLoc().printToString(Rewrite.getSourceMgr());
            LogInstrumentation("Pointer Dereference", "", "", location);
        }

    private:
        Rewriter &Rewrite;
};

class ArraySubscriptHandler : public MatchFinder::MatchCallback {
    public:
        ArraySubscriptHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const ArraySubscriptExpr *subscriptExpr = Result.Nodes.getNodeAs<ArraySubscriptExpr>("array_subscript_expr");
            const Stmt *AssignmentMatcher = Result.Nodes.getNodeAs<Stmt>("assignment_matcher");

            if (!isTaskFunction(getParentFunction(subscriptExpr, Result)))
            {
                return;
            }

            std::string macro_name = getMacro(AssignmentMatcher);

            const MemberExpr *memberExpr = Result.Nodes.getNodeAs<MemberExpr>("member_expr");

            if (memberExpr)
            {
                const Expr* memberExprBase = memberExpr->getBase();
                auto locations = getBeginEndLoc(Rewrite, memberExprBase);

                Rewrite.InsertTextBefore(locations.begin_loc, "(" + getCastString(memberExprBase) + macro_name + "(");
                Rewrite.InsertTextAfterToken(locations.end_loc, "))");
            }

            const ImplicitCastExpr *castExpr = Result.Nodes.getNodeAs<ImplicitCastExpr>("cast_expr");
            if (castExpr)
            {
                if (castExpr->getCastKind() != CK_LValueToRValue)
                {
                    return;
                }
            }

            const Expr* subscriptPointer = subscriptExpr->getBase();
            auto locations = getBeginEndLoc(Rewrite, subscriptPointer);

            Rewrite.InsertTextBefore(locations.begin_loc, "(" + getCastString(subscriptPointer) + macro_name + "(");
            Rewrite.InsertTextAfterToken(locations.end_loc, "))");

            string location = subscriptExpr->getBeginLoc().printToString(Rewrite.getSourceMgr());
            LogInstrumentation("Pointer Dereference", "", "", location);
        }

    private:
        Rewriter &Rewrite;
};

class MemberHandler : public MatchFinder::MatchCallback {
    public:
        MemberHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const MemberExpr *memberExpr = Result.Nodes.getNodeAs<MemberExpr>("member_expr");
            const Stmt *AssignmentMatcher = Result.Nodes.getNodeAs<Stmt>("assignment_matcher");

            if (!isTaskFunction(getParentFunction(memberExpr, Result)))
            {
                return;
            }

            std::string macro_name = getMacro(AssignmentMatcher);

            const Expr* memberExprBase = memberExpr->getBase();

            Rewrite.InsertTextBefore(memberExprBase->getBeginLoc(), "(" + getCastString(memberExprBase) + macro_name + "(");
            Rewrite.InsertTextAfterToken(memberExprBase->getEndLoc(), "))");

            string location = memberExpr->getBeginLoc().printToString(Rewrite.getSourceMgr());
            LogInstrumentation("Pointer Dereference", "", "", location);
        }

    private:
        Rewriter &Rewrite;
};


// Implementation of the ASTConsumer interface for reading an AST produced
// by the Clang parser. It registers a couple of matchers and runs them on
// the AST.
class MyASTConsumer : public ASTConsumer {
public:
  MyASTConsumer(Rewriter &R) :
      HandlerForPointerDeref(R),
      HandlerForArraySubscript(R),
      HandlerForMember(R)
    {

    /***************************************************************
     *                    POINTER DEREFERENCE                      *
     ***************************************************************/
    const auto pointerDerefMatch = unaryOperator(hasOperatorName("*"));
    const std::string pointerDerefBinding = "pointer_ref";
    /* Pointer dereference READ
     * *(expr)
     *
     * This matcher does not match dereferences on the LHS of a binary assignment,
     * since these are writes.
     *
     * Does NOT match:
     * *x = *(expr) ------> Matched in other matcher
     * *(expr) = x
     * ++*(expr)
     * --*(expr)
     * (*(expr))++
     * (*(expr))--
     */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            unaryOperator(
                hasOperatorName("*"),
                getNonAssignmentMatcher(pointerDerefMatch)
            ).bind(pointerDerefBinding)
        ),
        &HandlerForPointerDeref
    );
    matchAll(Matcher, HandlerForPointerDeref, pointerDerefMatch, pointerDerefBinding);

    /***************************************************************
     *                     POINTER SUBSCRIPT                       *
     ***************************************************************/
    const auto arraySubscriptMatchInner =
        /* Filter out array accesses. */
        hasBase(
            allOf(
                hasType(
                    pointerType()
                ),
                unless(
                    hasType(
                        arrayType()
                    )
                )
            )
        );
    const auto arraySubscriptMatch = arraySubscriptExpr(
        arraySubscriptMatchInner
    );
    const std::string arraySubscriptBinding = "array_subscript_expr";
    /* Pointer subscript (not struct/union member) READ
     * (expr)[i]
     */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            arraySubscriptExpr(
                arraySubscriptMatchInner,
                getNonAssignmentMatcher(arraySubscriptMatch)
            ).bind(arraySubscriptBinding)
        ),
        &HandlerForArraySubscript
    );
    matchAll(Matcher, HandlerForArraySubscript, arraySubscriptMatch, arraySubscriptBinding);
  }

  void HandleTranslationUnit(ASTContext &Context) override {
    // Run the matchers when we have the whole TU parsed.
    Matcher.matchAST(Context);
  }
  // Override the method that gets called for each parsed top-level
  // declaration.
  bool HandleTopLevelDecl(DeclGroupRef DR) override {
      for (DeclGroupRef::iterator b = DR.begin(), e = DR.end(); b != e; ++b) {
          // Traverse the declaration using our AST visitor.
          (*b)->dump();
      }
      return true;
  }

private:
  PointerDereferenceHandler HandlerForPointerDeref;
  ArraySubscriptHandler HandlerForArraySubscript;
  MemberHandler HandlerForMember;

  MatchFinder Matcher;
};

// For each source file provided to the tool, a new FrontendAction is created.
class MyFrontendAction : public ASTFrontendAction {
    public:
        MyFrontendAction() {}
        void EndSourceFileAction() override {
            TheRewriter.getEditBuffer(TheRewriter.getSourceMgr().getMainFileID())
                .write(llvm::outs());
        }

        std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI,
                StringRef file) override {
            TheRewriter.setSourceMgr(CI.getSourceManager(), CI.getLangOpts());
            return std::make_unique<MyASTConsumer>(TheRewriter);
        }

    private:
        Rewriter TheRewriter;
};

int main(int argc, const char **argv) {
    auto op = CommonOptionsParser::create(argc, argv, MatcherSampleCategory);
    ClangTool Tool(op.get().getCompilations(), op.get().getSourcePathList());

    Tool.run(newFrontendActionFactory<MyFrontendAction>().get());

    if (num_errors > 0)
    {
        llvm::errs() << "Instrumentation failed: Exited with " << num_errors << " error(s).\n";
    }
    else
    {
        llvm::errs() << "Instrumentation successful.\n";
    }

    return num_errors;
}