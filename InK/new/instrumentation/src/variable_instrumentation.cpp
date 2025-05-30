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

#include "utils.hpp"

using namespace clang;
using namespace clang::ast_matchers;
using namespace clang::driver;
using namespace clang::tooling;

static llvm::cl::OptionCategory MatcherSampleCategory("Matcher Sample");

#define GLOBAL_WRITE         "__INK_TRANSLATE_VARIABLE_ACCESS"
#define GLOBAL_GET_ADDRESS   "__INK_GET_VARIABLE_ADDRESS"
#define PTR_WRITE            "__INK_TRANSLATE_POINTER_DEREFERENCE"
#define INK_POINTER_PREFIX   "__ink_pointer_"
#define INK_STRUCT_TYPE_BASE "__ink_shared_struct_type_"
#define INK_STRUCT_NAME_BASE "__ink_shared_struct_"

uint32_t num_errors = 0;

std::map<const VarDecl*, const SourceLocation> StaticVars;
std::set<const VarDecl*> VarsUsedOutsideTasks;
std::set<const VarDecl*> VarsUsedInGlobalScope;
std::map<const VarDecl*, std::set<const FunctionDecl*>> FunctionVarRelation;

string getVarDeclAsString(const VarDecl* var)
{
    string var_name_str = std::string(var->getName());
    string type_str = var->getType().getAsString();
    string array_type_str = "";
    size_t open_bracket_pos;
    if ((open_bracket_pos = type_str.find("[")) != type_str.npos)
    {
        for (size_t i = open_bracket_pos; i < type_str.size(); i++)
        {
            array_type_str += type_str.at(i);
        }

        type_str.erase(open_bracket_pos, type_str.size() - open_bracket_pos);
    }

    return type_str + " " + var_name_str + array_type_str;
}

void addSectionToVars(Rewriter &Rewrite)
{
    for (auto &[var, func_list] : FunctionVarRelation)
    {
        std::set<int> task_priorities;
        std::string section_value;

        if (VarsUsedOutsideTasks.find(var) != VarsUsedOutsideTasks.end())
        {
            num_errors++;
            reportError("Variable '" + std::string(var->getName()) + "' used outside task function.");
        }

        /* Add a section attribute to the variable declaration. */
        for (auto &func : func_list)
        {
            task_priorities.insert(getTaskPriority(func));

            /* Also add the pointer for the variable to every function wherein it is used. */
            string global_var_ref = std::string(var->getName());
            string global_var_ptr = INK_POINTER_PREFIX + global_var_ref;
            auto location = getBeginEndLoc(Rewrite, *func->getBody()->child_begin()).begin_loc;
            string prefix_string = "";

            if (StaticVars.find(var) != StaticVars.end())
            {
                location = StaticVars[var];
                prefix_string = ";\n";
            }

            string type_str = "__typeof__(" + global_var_ref + ")";

            Rewrite.InsertTextBefore(location, prefix_string + type_str + "(* const " + global_var_ptr + ")" + " = " + GLOBAL_GET_ADDRESS + "(" + global_var_ref + ");\n");
            LogInstrumentation("Shared Variable Pointer", func->getNameAsString(), "", location.printToString(Rewrite.getSourceMgr()));
        }

        if (task_priorities.size() == 1u)
        {
            /* Variable is only used in single thread. */
            section_value = ".ink.task_shared." + std::to_string(*task_priorities.begin());
        }
        else
        {
            /* Variable is used in tasks with different priorities ==> used in different threads. */
            section_value = ".ink.thread_shared";
        }

        Rewrite.InsertTextBefore(Rewrite.getSourceMgr().getExpansionLoc(var->getLocation()), "__attribute__((section(\"" + section_value + "\")))");
    }
}

class GlobalVarHandler : public MatchFinder::MatchCallback {
    public:
        GlobalVarHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const DeclRefExpr * GlobalVarRef = Result.Nodes.getNodeAs<DeclRefExpr>("gvar_ref");
            const VarDecl * GlobalVar = Result.Nodes.getNodeAs<VarDecl>("gvar")->getFirstDecl();

            /* If marked to exclude, ignore. */
            if (excludeFromInstrumentation(GlobalVar)) {
                return;
            }

            if (GlobalVar->getType().isConstant(GlobalVar->getASTContext()))
            {
                return;
            }

            /* Only instrument variables inside tasks. */
            const FunctionDecl* parent_function = getParentFunction(GlobalVarRef, Result);
            if (!parent_function)
            {
                /* No parent function, expression in global scope (this is allowed). */
                VarsUsedInGlobalScope.insert(GlobalVar);
                return;
            }
            if (!isTaskFunction(parent_function))
            {
                VarsUsedOutsideTasks.insert(GlobalVar);
                return;
            }

            /* Replace global variable access with macro. */
            string global_var_ref = GlobalVarRef->getNameInfo().getName().getAsString();
            string global_var_ptr = INK_POINTER_PREFIX + global_var_ref;

            if (FunctionVarRelation.find(GlobalVar) == FunctionVarRelation.end())
            {
                FunctionVarRelation.insert({GlobalVar, {}});
            }
            if (FunctionVarRelation[GlobalVar].find(parent_function) == FunctionVarRelation[GlobalVar].end())
            {
                FunctionVarRelation[GlobalVar].insert(parent_function);
            }

            string global_var_ref_instr =  "(*" + global_var_ptr + ")";
            auto locations = getBeginEndLoc(Rewrite, GlobalVarRef);

            Rewrite.InsertTextBefore(locations.begin_loc, "(*" INK_POINTER_PREFIX);
            Rewrite.InsertTextAfterToken(locations.end_loc, ")");

            /* Log the instrumentation. */
            string location = GlobalVarRef->getLocation().printToString(Rewrite.getSourceMgr());
            LogInstrumentation("Global variable", global_var_ref, global_var_ref_instr, location);
        }

    private:
        Rewriter &Rewrite;
};

class StaticVarHandler : public MatchFinder::MatchCallback {
    public:
        StaticVarHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const DeclStmt * GlobalVarRef = Result.Nodes.getNodeAs<DeclStmt>("gvar_ref");
            const VarDecl * GlobalVar = Result.Nodes.getNodeAs<VarDecl>("gvar")->getFirstDecl();

            /* If marked to exclude, ignore. */
            if (excludeFromInstrumentation(GlobalVar)) {
                return;
            }

            const FunctionDecl* parent_function = getParentFunction(GlobalVarRef, Result);

            if (parent_function && !isTaskFunction(parent_function))
            {
                return;
            }

            StaticVars.insert({GlobalVar, Rewrite.getSourceMgr().getExpansionLoc(GlobalVarRef->getEndLoc())});

            if (FunctionVarRelation.find(GlobalVar) == FunctionVarRelation.end())
            {
                FunctionVarRelation.insert({GlobalVar, {}});
            }
            if (FunctionVarRelation[GlobalVar].find(parent_function) == FunctionVarRelation[GlobalVar].end())
            {
                FunctionVarRelation[GlobalVar].insert(parent_function);
            }
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
      HandlerForGlobal(R),
      HandlerForStatic(R)
    {

    Matcher.addMatcher(
        declRefExpr(
            to(
                varDecl(
                    hasGlobalStorage()
                ).bind("gvar")
            )
        ).bind("gvar_ref"),
        &HandlerForGlobal
    );

    Matcher.addMatcher(
        functionDecl(
            hasDescendant(
                declStmt(
                    hasDescendant(
                        varDecl(
                            hasGlobalStorage(),
                            isStaticStorageClass()
                        ).bind("gvar")
                    )
                ).bind("gvar_ref")
            )
        ),
        &HandlerForStatic
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
  GlobalVarHandler HandlerForGlobal;
  StaticVarHandler HandlerForStatic;
  MatchFinder Matcher;
};

// For each source file provided to the tool, a new FrontendAction is created.
class MyFrontendAction : public ASTFrontendAction {
    public:
        MyFrontendAction() {}
        void EndSourceFileAction() override {
            addSectionToVars(TheRewriter);
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

    if (Tool.run(newFrontendActionFactory<MyFrontendAction>().get()))
    {
        llvm::errs() << "Instrumentation successful.\n";
        return 0;
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
