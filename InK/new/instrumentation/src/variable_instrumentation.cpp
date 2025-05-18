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

#define GLOBAL_WRITE       "__INK_TRANSLATE_VARIABLE_ACCESS"
#define GLOBAL_GET_ADDRESS "__INK_GET_VARIABLE_ADDRESS"
#define PTR_WRITE          "__INK_TRANSLATE_POINTER_DEREFERENCE"
#define INK_POINTER_PREFIX "__ink_pointer_"

static uint32_t num_errors = 0;

std::map<const VarDecl*, const SourceLocation> StaticVars;
std::set<const VarDecl*> VarsUsedOutsideTasks;
// std::set<std::pair<const FunctionDecl*, const VarDecl*>> FunctionVarRelation;
std::map<const VarDecl*, std::set<const FunctionDecl*>> FunctionVarRelation;

void addSectionToVars(Rewriter &Rewrite)
{
    for (auto &[var, func_list] : FunctionVarRelation)
    {
        std::set<std::string> task_priorities;
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
            auto location = (*func->getBody()->child_begin())->getBeginLoc();
            string prefix_string = "";

            if (StaticVars.find(var) != StaticVars.end())
            {
                location = StaticVars[var];
                prefix_string = ";\n";
            }

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

            Rewrite.InsertTextBefore(location, prefix_string + type_str + "(* const " + global_var_ptr + ")" + array_type_str + " = " + GLOBAL_GET_ADDRESS + "(" + global_var_ref + ");\n");
            LogInstrumentation("Shared Variable Pointer", func->getNameAsString(), "", location.printToString(Rewrite.getSourceMgr()));
        }

        if (task_priorities.size() == 1u)
        {
            /* Variable is only used in single thread. */
            section_value = ".ink.task_shared." + *task_priorities.begin();
        }
        else
        {
            /* Variable is used in tasks with different priorities ==> used in different threads. */
            section_value = ".ink.thread_shared";
        }

        Rewrite.InsertTextBefore(var->getLocation(), "__attribute__((section(\"" + section_value + "\")))");
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

            /* Only instrument variables inside tasks. */
            const FunctionDecl* parent_function = getParentFunction(GlobalVarRef, Result);
            if (!parent_function)
            {
                /* No parent function, expression in global scope (this is allowed). */
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
            Rewrite.ReplaceText(GlobalVarRef->getLocation(), global_var_ref_instr);

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
            StaticVars.insert({GlobalVar, GlobalVarRef->getEndLoc()});

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

// class StructHandler : public MatchFinder::MatchCallback {
//     public:
//         StructHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

//         virtual void run(const MatchFinder::MatchResult &Result) {

//             const DeclRefExpr *VarRef = Result.Nodes.getNodeAs<DeclRefExpr>("struct_ref");
//             const MemberExpr *StructMember = Result.Nodes.getNodeAs<MemberExpr>("struct_member");

//             // Optional
//             const ArraySubscriptExpr *ArrSubs = Result.Nodes.getNodeAs<ArraySubscriptExpr>("struct_arr_subs");

//             const VarDecl *Var = Result.Nodes.getNodeAs<VarDecl>("struct");
//             if (excludeFromInstrumentation(Var)) {
//                 return;
//             }


//             string location = VarRef->getLocation().printToString(Rewrite.getSourceMgr());

//             if (ArrSubs == NULL) {
//                 /* Not an array member */
//                 string struct_member = StructMember->getMemberNameInfo().getName().getAsString();

//                 string var_ref = VarRef->getNameInfo().getName().getAsString();
//                 string var_ref_instr =  GLOBAL_WRITE"(" + var_ref;
//                 Rewrite.ReplaceText(VarRef->getLocation(), var_ref_instr);
//                 string struct_member_instr = struct_member + ")";
//                 Rewrite.ReplaceText(StructMember->getMemberLoc(), struct_member_instr);

//                 LogInstrumentation("Struct", var_ref, var_ref_instr, location);
//             } else {
//                 /* Array member */
//                 // Opening brace
//                 Rewrite.InsertTextAfter(ArrSubs->getBeginLoc(), GLOBAL_WRITE "(");
//                 // Closing brace
//                 Rewrite.InsertTextAfterToken(ArrSubs->getEndLoc(), ")");

//                 LogInstrumentation("Struct array member", "-", "-", location);
//             }

//         }

//     private:
//         Rewriter &Rewrite;
// };

// class ArrHandler : public MatchFinder::MatchCallback {
//     public:
//         ArrHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

//         virtual void run(const MatchFinder::MatchResult &Result) {

//             const ArraySubscriptExpr *GlobalArrSubs = Result.Nodes.getNodeAs<ArraySubscriptExpr>("arr_subs");
//             string location = GlobalArrSubs->getBeginLoc().printToString(Rewrite.getSourceMgr());

//             if (isInstrumented(GlobalArrSubs)) {
//                 LogInstrumentation("Array [already instrumented]", "-", "-", location);
//                 return;
//             } else {
//                 addInstrumented(GlobalArrSubs);
//             }

//             // Write and opening bracket
//             Rewrite.InsertTextAfter(GlobalArrSubs->getBeginLoc(), GLOBAL_WRITE "(");

//             // Closing bracket
//             Rewrite.InsertTextAfterToken(GlobalArrSubs->getEndLoc(), ")");

//             //string global_var_ref = GlobalArrRef->getNameInfo().getName().getAsString();
//             //string global_var_ref_instr =  GLOBAL_WRITE"(" + global_var_ref + ")";
//             //Rewrite.ReplaceText(GlobalArrRef->getLocation(), global_var_ref_instr);

//             LogInstrumentation("Array", "-", "-", location);
//         }

//     private:
//         Rewriter &Rewrite;

//         list<const ArraySubscriptExpr *> instrumented_list;

//         bool isInstrumented(const ArraySubscriptExpr *arr) {
//             list<const ArraySubscriptExpr *>::iterator it;
//             for (it=instrumented_list.begin(); it!=instrumented_list.end(); it++) {
//                 if (arr == *it) {
//                     return true;
//                 }
//             }
//             return false;
//         }

//         void addInstrumented(const ArraySubscriptExpr *arr) {
//             if (arr != NULL && !isInstrumented(arr)) {
//                 instrumented_list.push_back(arr);
//             }
//         }
// };

// class StructDereferenceAssignHandler : public MatchFinder::MatchCallback {
//     public:
//         StructDereferenceAssignHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

//         virtual void run(const MatchFinder::MatchResult &Result) {
//             const DeclRefExpr *SVarRef = Result.Nodes.getNodeAs<DeclRefExpr>("struct_ref");
//             const MemberExpr *StructMember = Result.Nodes.getNodeAs<MemberExpr>("struct_member");

//             string struct_member = StructMember->getMemberNameInfo().getName().getAsString();

//             string var_ref = SVarRef->getNameInfo().getName().getAsString();
//             string var_ref_instr =  GLOBAL_WRITE"(" + var_ref;
//             Rewrite.ReplaceText(SVarRef->getLocation(), var_ref_instr);

//             string struct_member_instr = struct_member + ")";
//             Rewrite.ReplaceText(StructMember->getMemberLoc(), struct_member_instr);

//             string location = SVarRef->getLocation().printToString(Rewrite.getSourceMgr());
//             LogInstrumentation("Struct ptr", var_ref, var_ref_instr, location);
//         }

//     private:
//         Rewriter &Rewrite;
// };


// Implementation of the ASTConsumer interface for reading an AST produced
// by the Clang parser. It registers a couple of matchers and runs them on
// the AST.
class MyASTConsumer : public ASTConsumer {
public:
  MyASTConsumer(Rewriter &R) :
      HandlerForGlobal(R),
      HandlerForStatic(R)
    //   HandlerForStruct(R),
    //   HandlerForArr(R)
    {

    // Global variable write
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

    // Global struct write
    // Matcher.addMatcher(
    //         binaryOperator(
    //             //hasOperatorName("="),
    //             has(
    //                 memberExpr(
    //                 has(
    //                     declRefExpr(
    //                         to(
    //                             varDecl(
    //                                 hasGlobalStorage()
    //                             ).bind("struct")
    //                         )
    //                     ).bind("struct_ref")
    //                 )).bind("struct_member")
    //             )
    //         )
    //     ,
    //     &HandlerForStruct);

    // Global Struct array member assign
    // Matcher.addMatcher(
    //         binaryOperator(
    //             hasOperatorName("="),
    //             has(arraySubscriptExpr(has(implicitCastExpr(
    //                 has(
    //                     memberExpr(
    //                     has(
    //                         declRefExpr(
    //                             to(
    //                                 varDecl(
    //                                     hasGlobalStorage()
    //                                 ).bind("struct")
    //                             )
    //                         ).bind("struct_ref")
    //                     )).bind("struct_member")
    //                 )
    //             ))).bind("struct_arr_subs"))
    //         )
    //     ,
    //     &HandlerForStruct);

    // Struct member reference assign
    // Matcher.addMatcher(
    //         binaryOperator(
    //             //hasOperatorName("="),
    //             has(
    //                 memberExpr(
    //                 has(
    //                     implicitCastExpr(has(
                        // declRefExpr(
                        //     to(
                        //         varDecl().bind("struct")
                        //     )
    //                     ).bind("struct_ref")))
    //                 )).bind("struct_member")
    //             )
    //         )
    //     ,
    //     &HandlerForStruct);

    // Struct array member reference assign
    // Matcher.addMatcher(
    //         binaryOperator(
    //             //hasOperatorName("="),
    //             has(arraySubscriptExpr(has(implicitCastExpr(
    //                 has(
    //                     memberExpr(
    //                     has(
    //                         implicitCastExpr(has(
    //                         declRefExpr(
    //                             to(
    //                                 varDecl().bind("struct")
    //                             )
    //                         ).bind("struct_ref")))
    //                     )).bind("struct_member")
    //                 )
    //             ))).bind("struct_arr_subs"))
    //         )
    //     ,
    //     &HandlerForStruct);

    // Global direct Array write unless struct member
    // Matcher.addMatcher(
    //         binaryOperator(
    //             hasOperatorName("="),
    //             has(
    //                 arraySubscriptExpr(
    //                     has(
    //                         implicitCastExpr(
    //                             unless(has(memberExpr())),
    //                             hasDescendant(
                                    // declRefExpr(to(
                                    //     varDecl(
                                    //         hasGlobalStorage()
                                    //     ).bind("gvar")
    //                                 ))
    //                             )
    //                         )
    //                     )
    //                 ).bind("arr_subs")
    //             )
    //         )
    //     ,
    //     &HandlerForArr);

    // // Array write pointer unless struct member
    // Matcher.addMatcher(
    //         binaryOperator(
    //             hasOperatorName("="),
    //             has(
    //                 arraySubscriptExpr(
    //                     has(
    //                         implicitCastExpr(
    //                             hasCastKind(CK_LValueToRValue),
    //                             unless(has(memberExpr()))
    //                         )
    //                     )
    //                 ).bind("arr_subs")
    //             )
    //         )
    //     ,
    //     &HandlerForArr);

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
//   StructHandler HandlerForStruct;
//   ArrHandler HandlerForArr;
  MatchFinder Matcher;
};

// For each source file provided to the tool, a new FrontendAction is created.
class MyFrontendAction : public ASTFrontendAction {
    public:
        MyFrontendAction() {}
        void EndSourceFileAction() override {
            addSectionToVars(TheRewriter); // TODO: doesn't work for variable shared between files
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