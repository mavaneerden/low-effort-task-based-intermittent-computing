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

class PointerDereferenceAssignHandler : public MatchFinder::MatchCallback {
    public:
        PointerDereferenceAssignHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const UnaryOperator *PtrRef = Result.Nodes.getNodeAs<UnaryOperator>("pointer_ref");

            if (!isTaskFunction(getParentFunction(PtrRef, Result)))
            {
                return;
            }

            // Write and opening bracket
            Rewrite.InsertTextAfterToken(PtrRef->getBeginLoc(), PTR_WRITE "(");

            // Closing bracket
            Rewrite.InsertTextAfterToken(PtrRef->getEndLoc(), ")");

            string location = PtrRef->getBeginLoc().printToString(Rewrite.getSourceMgr());
            LogInstrumentation("Pointer Dereference", "", "", location);
        }

    private:
        Rewriter &Rewrite;
};

class ArraySubscriptHandler : public MatchFinder::MatchCallback {
    public:
        ArraySubscriptHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const DeclRefExpr *PtrRef = Result.Nodes.getNodeAs<DeclRefExpr>("pointer_ref");

            if (!isTaskFunction(getParentFunction(PtrRef, Result)))
            {
                return;
            }

            string var_ref = PtrRef->getNameInfo().getName().getAsString();
            string var_ref_new = PTR_WRITE "(" + var_ref + ")";

            // Write and opening bracket
            Rewrite.ReplaceText(PtrRef->getLocation(), var_ref_new);

            string location = PtrRef->getBeginLoc().printToString(Rewrite.getSourceMgr());
            LogInstrumentation("Pointer Dereference", var_ref, var_ref_new, location);
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
      HandlerForArraySubscript(R)
    {

    // Pointer dereference
    Matcher.addMatcher(
        unaryOperator(
            hasOperatorName("*")
        ).bind("pointer_ref"),
        &HandlerForPtrAssign
    );

    Matcher.addMatcher(
        arraySubscriptExpr(
            has(
                implicitCastExpr(
                    unless(has(memberExpr())),
                    hasDescendant(
                        declRefExpr(
                            to(
                                varDecl(
                                    unless(
                                        hasGlobalStorage()
                                    )
                                )
                            )
                        ).bind("pointer_ref")
                    )
                )
            )
        ),
        &HandlerForArraySubscript
    );

    Matcher.addMatcher(
        memberExpr(
            has(
                implicitCastExpr(
                    hasDescendant(
                        declRefExpr(
                            to(
                                varDecl(
                                    unless(
                                        hasGlobalStorage()
                                    )
                                )
                            )
                        ).bind("pointer_ref")
                    )
                )
            )
        ),
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
        //   (*b)->dump();
      }
      return true;
  }

private:
  PointerDereferenceAssignHandler HandlerForPtrAssign;
  ArraySubscriptHandler HandlerForArraySubscript;

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