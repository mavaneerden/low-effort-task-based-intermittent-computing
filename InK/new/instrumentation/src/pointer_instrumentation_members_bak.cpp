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

const auto getAssignmentUnaryMatcher(const clang::ast_matchers::internal::Matcher<clang::Stmt> &BaseMatcher)
{
    return
    unaryOperator(
        anyOf(
            hasOperatorName("++"),
            hasOperatorName("--")
        ),
        anyOf(
            hasDescendant(
                BaseMatcher
            ),
            has(
                BaseMatcher
            )
        )
    ).bind("assignment_matcher");
}

const auto getAssignmentLHSMatcher(const clang::ast_matchers::internal::Matcher<clang::Stmt> &BaseMatcher)
{
    return
    binaryOperator(
        getAssignmentOperatorMatcher(),
        hasLHS(
            anyOf(
                hasDescendant(
                    BaseMatcher
                ),
                BaseMatcher
            )
        )
    ).bind("assignment_matcher");
}

const auto getAssignmentRHSMatcher(const clang::ast_matchers::internal::Matcher<clang::Stmt> &BaseMatcher)
{
    // TODO: make this work
    return
    binaryOperator(
        getAssignmentOperatorMatcher(),
        hasLHS(
            traverse(TK_IgnoreUnlessSpelledInSource,
                ignoringParens(
                    BaseMatcher // TODO: do not bind this!
                )
            )
        ),
        hasRHS(
            traverse(TK_IgnoreUnlessSpelledInSource,
                ignoringParens(
                    BaseMatcher
                )
            )
        )
    );
}

const auto getNonAssignmentMatcher(const clang::ast_matchers::internal::Matcher<clang::Stmt> &BaseMatcher)
{
    /* Ignores matches that are changed by ++ or -- operators. */
    const auto UnaryOperatorMatch =
        unaryOperator(
            anyOf(
                hasOperatorName("++"),
                hasOperatorName("--")
            ),
            hasUnaryOperand(
                traverse(TK_IgnoreUnlessSpelledInSource,
                    ignoringParens(
                        BaseMatcher
                    )
                )
            )
        );
    /* Ignores matches on the LHS, where the RHS is not a match. */
    const auto BinaryOperatorNoRHSMatch =
        binaryOperator(
            getAssignmentOperatorMatcher(),
            unless(
                hasRHS(
                    traverse(TK_IgnoreUnlessSpelledInSource,
                        ignoringParens(
                            BaseMatcher
                        )
                    )
                )
            )
        );
    /* Ignores matches on the LHS and RHS, if both sides are matches.
     * This case is handled by a separate matcher for READ.
     */
    const auto BinaryOperatorBothSidesMatch =
        binaryOperator(
            getAssignmentOperatorMatcher(),
            hasLHS(
                traverse(TK_IgnoreUnlessSpelledInSource,
                    ignoringParens(
                        BaseMatcher
                    )
                )
            ),
            hasRHS(
                traverse(TK_IgnoreUnlessSpelledInSource,
                    ignoringParens(
                        BaseMatcher
                    )
                )
            )
        );

    // We need to use ArraySubscriptExpr as this otherwise would not work with MemberExprs that are not direct children of BinaryOperator or UnaryOperator
    // (i.e. they are arraysubscriptexpr base) we could use hasAncestor here, but this breaks nested expressions
    return
    traverse(TK_IgnoreUnlessSpelledInSource,
        unless(anyOf(
            hasParent(
                UnaryOperatorMatch
            ),
            hasParent(
                arraySubscriptExpr(
                    hasParent(
                        UnaryOperatorMatch
                    )
                )
            ),
            hasParent(
                BinaryOperatorNoRHSMatch
            ),
            hasParent(
                arraySubscriptExpr(
                    hasParent(
                        BinaryOperatorNoRHSMatch
                    )
                )
            ),
            hasParent(
                BinaryOperatorBothSidesMatch
            ),
            hasParent(
                arraySubscriptExpr(
                    hasParent(
                        BinaryOperatorBothSidesMatch
                    )
                )
            )
        ))
    );
}

void matchAll(clang::ast_matchers::MatchFinder &Matcher, MatchFinder::MatchCallback &Handler, const clang::ast_matchers::internal::Matcher<clang::Stmt> &BaseMatcher)
{
    /* Pointer subscript READ
     * x[i] = (expr)[i]
     */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            getAssignmentRHSMatcher(BaseMatcher)
        ),
        &Handler
    );
    /* Pointer dereference WRITE
     * (expr)[i] = x
     */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            getAssignmentLHSMatcher(BaseMatcher)
        ),
        &Handler
    );
    /* Pointer dereference WRITE
     * ++(expr)[i]
     * --(expr)[i]
     * (expr)[i]++
     * (expr)[i]--
     */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            getAssignmentUnaryMatcher(BaseMatcher)
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
     *                   POINTER MEMBER ACCESS                     *
     ***************************************************************/
    const std::string pointerMemberAccessBinding = "member_expr";
    const auto pointerMemberAccessMatch =
    anyOf(
        memberExpr(
            isArrow()
        ).bind(pointerMemberAccessBinding),
        arraySubscriptExpr(
            has(
                memberExpr(
                    isArrow()
                ).bind(pointerMemberAccessBinding)
            )
        )
    );
    /* Struct/union pointer member access READ
     * (expr)->member
     */
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            memberExpr(
                isArrow(),
                getNonAssignmentMatcher(pointerMemberAccessMatch)
            ).bind(pointerMemberAccessBinding)
        ),
        &HandlerForMember
    );
    matchAll(Matcher, HandlerForMember, pointerMemberAccessMatch);
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

    if (int succ = Tool.run(newFrontendActionFactory<MyFrontendAction>().get()))
    {
        return succ;
    }

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