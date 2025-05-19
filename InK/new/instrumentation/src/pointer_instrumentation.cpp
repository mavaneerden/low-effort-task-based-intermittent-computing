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
#define PTR_WRITE          "__INK_TRANSLATE_POINTER_DEREFERENCE"
#define IGNORE_STR         "INK::IGNORE"
#define TASK_FUNCTION_STR  "INK::TASK"
#define INK_POINTER_PREFIX "__ink_pointer_"

static uint32_t num_errors = 0;

std::string getCastString(const Expr* expr)
{
    std::string exprTypeStr = expr->getType().getAsString();

    return "(" + exprTypeStr + ")";
}

class PointerDereferenceAssignHandler : public MatchFinder::MatchCallback {
    public:
        PointerDereferenceAssignHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const UnaryOperator *PtrRef = Result.Nodes.getNodeAs<UnaryOperator>("pointer_ref");

            if (!isTaskFunction(getParentFunction(PtrRef, Result)))
            {
                return;
            }

            const Expr* subExpr = PtrRef->getSubExpr();

            Rewrite.InsertTextBefore(subExpr->getBeginLoc(), "(" + getCastString(subExpr) + PTR_WRITE "(");
            Rewrite.InsertTextAfterToken(subExpr->getEndLoc(), "))");

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

            if (!isTaskFunction(getParentFunction(subscriptExpr, Result)))
            {
                return;
            }

            const MemberExpr *memberExpr = Result.Nodes.getNodeAs<MemberExpr>("member_expr");

            if (memberExpr)
            {
                const Expr* memberExprBase = memberExpr->getBase();

                Rewrite.InsertTextBefore(memberExprBase->getBeginLoc(), "(" + getCastString(memberExprBase) + PTR_WRITE "(");
                Rewrite.InsertTextAfterToken(memberExprBase->getEndLoc(), "))");
            }


            const Expr* subscriptPointer = subscriptExpr->getLHS();

            Rewrite.InsertTextBefore(subscriptPointer->getBeginLoc(), "(" + getCastString(subscriptPointer) + PTR_WRITE "(");
            Rewrite.InsertTextAfterToken(subscriptPointer->getEndLoc(), "))");

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

            if (!isTaskFunction(getParentFunction(memberExpr, Result)))
            {
                return;
            }

            const Expr* memberExprBase = memberExpr->getBase();

            Rewrite.InsertTextBefore(memberExprBase->getBeginLoc(), "(" + getCastString(memberExprBase) + PTR_WRITE "(");
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
      HandlerForPtrAssign(R),
      HandlerForArraySubscript(R),
      HandlerForMember(R)
    {

    /* Pointer dereference
     * *(expr)
     */
    Matcher.addMatcher(
        unaryOperator(
            hasOperatorName("*")
        ).bind("pointer_ref"),
        &HandlerForPtrAssign
    );

    /* Pointer subscript (not struct/union member)
     * (expr)[x]
     */
    Matcher.addMatcher(
        arraySubscriptExpr(
            /* Filter out array accesses. */
            unless(
                has(
                    implicitCastExpr(
                        hasCastKind(CK_ArrayToPointerDecay)
                    )
                )
            ),
            /* Filter out struct/union members. */
            unless(
                hasDescendant(
                    memberExpr()
                )
            )
        ).bind("array_subscript_expr"),
        &HandlerForArraySubscript
    );

    /* Struct/union pointer member access
     * (expr)->member
     */
    Matcher.addMatcher(
        memberExpr(
            isArrow(),
            unless(
                hasAncestor(
                    implicitCastExpr(
                        hasParent(
                            arraySubscriptExpr()
                        ),
                        hasCastKind(CK_LValueToRValue)
                    )
                )
            )
        ).bind("member_expr"),
        &HandlerForMember
    );

    /* Struct/union member pointer subscript
     * (expr.member)[x]
     */
    Matcher.addMatcher(
        arraySubscriptExpr(
            has(
                implicitCastExpr(
                    hasDescendant(
                        memberExpr(
                            unless(isArrow())
                        )
                    ),
                    /* Filter out array accesses. */
                    hasCastKind(CK_LValueToRValue)
                )
            )
        ).bind("array_subscript_expr"),
        &HandlerForArraySubscript
    );

    /* Struct/union pointer member pointer subscript
     * ((expr)->member)[x]
     */
    Matcher.addMatcher(
        arraySubscriptExpr(
            has(
                implicitCastExpr(
                    hasDescendant(
                        memberExpr(
                            isArrow()
                        ).bind("member_expr")
                    ),
                    /* Filter out array accesses. */
                    hasCastKind(CK_LValueToRValue)
                )
            )
        ).bind("array_subscript_expr"),
        &HandlerForArraySubscript
    );
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
  PointerDereferenceAssignHandler HandlerForPtrAssign;
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