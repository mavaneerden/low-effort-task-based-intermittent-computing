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
#include "clang/AST/RecursiveASTVisitor.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "clang/ASTMatchers/ASTMatchers.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendActions.h"
#include "clang/Rewrite/Core/Rewriter.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Attributes.h"

#include "utils.hpp"

using namespace clang;
using namespace clang::ast_matchers;
using namespace clang::driver;
using namespace clang::tooling;

static llvm::cl::OptionCategory MatcherSampleCategory("Matcher Sample");
static int total_root_tasks;

#define TASK_FUNCTION_STR "INK::TASK"

// From https://stackoverflow.com/a/60721350
class ReturnCollector : public clang::RecursiveASTVisitor<ReturnCollector> {
public:
    static std::vector<ReturnStmt*> collect(FunctionDecl *D) {
        ReturnCollector ActualCollector;
        ActualCollector.TraverseDecl(D);
        return ActualCollector.Visited;
    }

    bool VisitReturnStmt(ReturnStmt *S) {
        Visited.push_back(S);
        return true;
    }

private:
    ReturnCollector() = default;

    std::vector<ReturnStmt*> Visited;
};

class FunctionLabeler : public MatchFinder::MatchCallback {
    public:
        FunctionLabeler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        using TaskFunctions = std::set<FunctionDecl*>;

        void collectChildTasks(FunctionDecl* current_task, TaskFunctions &task_functions, SourceManager &sm)
        {
            /* Collect all return statements inside the task definition. */
            std::vector<ReturnStmt*> return_statements = ReturnCollector::collect(const_cast<FunctionDecl *>(current_task));

            for (ReturnStmt* return_statement : return_statements)
            {
                /* Find the last statement in the return statement. */
                Stmt * statement = return_statement->getRetValue();
                while (!statement->children().empty())
                {
                    statement = *statement->child_begin();
                }

                /* Check if the return value points to a function declaration. */
                if (isa<DeclRefExpr>(statement))
                {
                    auto decl_candidate = dyn_cast<DeclRefExpr>(statement)->getFoundDecl();

                    if (isa<FunctionDecl>(decl_candidate))
                    {
                        FunctionDecl *child_task = dyn_cast<FunctionDecl>(decl_candidate);

                        /* Get the macro expansion location, so we can support function names that are expanded from macro's. */
                        SourceLocation loc = child_task->getBeginLoc();
                        SourceLocation expansion_loc = sm.getFileLoc(loc);

                        /* Disallow declarations in other files (source or header). */
                        if (child_task->getStorageClass() == StorageClass::SC_Extern)
                        {
                            reportError("Task function '" + child_task->getNameAsString() + "' declared as 'extern', this is not allowed.");
                            exit(1);
                        }
                        if (sm.getFileID(expansion_loc) != sm.getMainFileID())
                        {
                            reportError("Task function '" + child_task->getNameAsString() + "' declared in header file, this is not allowed.");
                            exit(1);
                        }
                        if (!child_task->isStatic())
                        {
                            reportError("Task function '" + child_task->getNameAsString() + "' is not static, this is not allowed.");
                            exit(1);
                        }


                        /* If the decl was not already processed, add it to the set
                         * and traverse its own return values recursively.
                         */
                        if (task_functions.find(child_task) == task_functions.end())
                        {
                            task_functions.insert(child_task);
                            collectChildTasks(child_task->getDefinition(), task_functions, sm);
                        }
                    }
                    else
                    {
                        reportError("Task function '" + current_task->getNameAsString() + "' returns non-null non-function pointer, this is not allowed.");
                        exit(1);
                    }
                }
            }
        }

        virtual void run(const MatchFinder::MatchResult &Result) {
            /* Get the task candidate from the matcher. */
            const FunctionDecl *task_candidate = Result.Nodes.getNodeAs<FunctionDecl>("task_candidate");

            /* If the function is not a root task, discard. */
            if (!isRootTask(task_candidate))
            {
                return;
            }

            /* Only one root task is allowed. */
            if (++total_root_tasks > 1)
            {
                reportError("Too many root tasks in file (expected 1, was " + std::to_string(total_root_tasks) + ")");
                exit(1);
            }

            /* Collect all child task functions into the task_functions set. */
            SourceManager &sm = Result.Context->getSourceManager();
            TaskFunctions task_functions;
            collectChildTasks(const_cast<FunctionDecl *>(task_candidate), task_functions, sm);

            /* Copy attribute of the root task to all child task functions. */
            for (auto task : task_functions)
            {
                string new_attr = std::string(task_candidate->getAttr<AnnotateAttr>()->getAnnotation());
                Rewrite.InsertTextBefore(task->getLocation(), "__attribute__((annotate(\"" + new_attr + "\"))) ");

                LogInstrumentation("function", task->getNameAsString(), "", task->getLocation().printToString(Rewrite.getSourceMgr()));
            }
        }

    private:
        Rewriter &Rewrite;
};

class MyASTConsumer : public ASTConsumer {
public:
    MyASTConsumer(Rewriter &R) :
        functionLabeler(R)
    {
        Matcher.addMatcher(
            functionDecl(
                hasAttr(clang::attr::Kind::Annotate),
                isDefinition()
            ).bind("task_candidate"),
            &functionLabeler
        );
    }

    void HandleTranslationUnit(ASTContext &Context) override {
        Matcher.matchAST(Context);
    }
    bool HandleTopLevelDecl(DeclGroupRef DR) override {
        for (DeclGroupRef::iterator b = DR.begin(), e = DR.end(); b != e; ++b) {
            // (*b)->dump();
        }
        return true;
    }

private:
    FunctionLabeler functionLabeler;
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

    return 0;
}