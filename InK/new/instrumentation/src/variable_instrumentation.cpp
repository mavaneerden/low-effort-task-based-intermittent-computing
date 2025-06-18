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

#define GLOBAL_GET_ADDRESS   "__INK_GET_VARIABLE_ADDRESS"
#define INK_POINTER_PREFIX   "__ink_pointer_"
#define ENABLE_BACKUP       "__INK_ENABLE_TASK_SHARED_BACKUP"

uint32_t num_errors = 0;
uint32_t static_local_num = 0;

struct static_var_data_t {
    uint32_t num;
    locations_t decl_loc;
};

const FunctionDecl* first_task_function = nullptr;
std::map<const VarDecl*, std::map<const FunctionDecl*, std::map<const DeclRefExpr*, bool>>> VariableMap;
std::map<const VarDecl*, static_var_data_t> StaticLocalVariableMap;

std::map<const VarDecl*, std::string> VarsInstrumented;
// std::map<const VarDecl*, const SourceLocation> StaticVars;
std::set<const VarDecl*> VarsUsedOutsideTasks;
std::map<const VarDecl*, const DeclRefExpr *> VarsUsedInGlobalScope;
// std::map<const VarDecl*, std::map<const FunctionDecl*, std::vector<var_info_t>>> FunctionVarRelation;
// std::set<const FunctionDecl*> ProcessFunctionsForWrite;

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

void instrumentGlobalScopeUses(Rewriter &Rewrite)
{
    std::vector<const VarDecl*> mark_for_deletion;

    do
    {
        mark_for_deletion.clear();

        for (auto &[var, var_ref] : VarsUsedInGlobalScope)
        {
            /* Ignore if already instrumented. */
            if (VarsInstrumented.find(var) != VarsInstrumented.end())
            {
                mark_for_deletion.push_back(var);
                continue;
            }

            const VarDecl* TopLevelDecl = getParentNode<VarDecl>(var_ref, &var->getASTContext());

            if (VarsInstrumented.find(TopLevelDecl) != VarsInstrumented.end())
            {
                const std::string section_value = VarsInstrumented[TopLevelDecl];
                VarsInstrumented[var] = section_value;
                Rewrite.InsertTextBefore(Rewrite.getSourceMgr().getExpansionLoc(var->getLocation()), "__attribute__((section(\"" + section_value + "\")))");
                LogInstrumentation("Shared Variable Declaration", var->getNameAsString(), "", var->getLocation().printToString(Rewrite.getSourceMgr()));
                mark_for_deletion.push_back(var);
            }
        }

        for (auto var : mark_for_deletion)
        {
            VarsUsedInGlobalScope.erase(var);
        }
    } while (mark_for_deletion.size() > 0);
}

void removeReadOnlyVars()
{
    std::set<const VarDecl*> ToRemove;

    for (auto &[var, func_map] : VariableMap)
    {
        /* Using a task-shared variable outside of a task function is not allowed for correctness reasons. */
        if (VarsUsedOutsideTasks.find(var) != VarsUsedOutsideTasks.end())
        {
            reportError("Variable '" + std::string(var->getName()) + "' used outside task function.");
            exit(1);
        }

        bool remove_var = true;

        for (auto &[func, decl_map] : func_map)
        {
            for (auto &[decl, is_write] : decl_map)
            {
                if (is_write)
                {
                    remove_var = false;
                }
            }
        }

        if (remove_var)
        {
            ToRemove.insert(var);
        }
    }

    for (auto var : ToRemove)
    {
        VariableMap.erase(var);
    }
}

void instrumentDecls(Rewriter &Rewrite)
{
    for (auto &[var, func_map] : VariableMap)
    {
        /* Get the task priority of the variable. */
        const int task_priority = getTaskPriority(func_map.begin()->first);

        /* Variable is only used in single thread. */
        const std::string section_value = ".ink.task_shared." + std::to_string(task_priority);

        /* For instrumenting global scope uses. */
        VarsInstrumented[var] = section_value;

        /* Instrument the variable with the section. */
        Rewrite.InsertTextBefore(Rewrite.getSourceMgr().getExpansionLoc(var->getLocation()), "__attribute__((section(\"" + section_value + "\")))");
        LogInstrumentation("Shared Variable Declaration", var->getNameAsString(), "", var->getLocation().printToString(Rewrite.getSourceMgr()));

        /* If it is a static local variable, add the call to the initializer function. */
        if (var->isStaticLocal())
        {
            const std::string static_var_name = var->getName().str();
            const std::string static_var_num = std::to_string(StaticLocalVariableMap[var].num);
            const std::string array_str = var->getType()->isArrayType() ? "_ARRAY" : "";
            Rewrite.InsertTextAfterToken(Rewrite.getSourceMgr().getExpansionLoc(StaticLocalVariableMap[var].decl_loc.end_loc), "\n__INK_SET_BUFFER_POINTERS_STATIC" + array_str + "(" + static_var_name + ", " + static_var_num + ");");
        }
    }
}

void instrumentVarUses(Rewriter &Rewrite)
{
    for (auto &[var, func_map] : VariableMap)
    {
        const std::string var_name = var->getName().str();

        for (auto &[func, decl_map] : func_map)
        {
            for (auto &[decl, _] : decl_map)
            {
                auto locations = getBeginEndLoc(Rewrite, decl);
                std::string array_str = "";

                if (var->getType()->isArrayType())
                {
                    array_str = "_ARRAY";
                }

                if (var->isStaticLocal())
                {
                    const std::string static_var_num = std::to_string(StaticLocalVariableMap[var].num);

                    /* ReplaceText is necessary to properly replace macro's. */
                    Rewrite.ReplaceText(locations.begin_loc, "__INK_GET_VAR_FROM_BUF_STATIC" + array_str + "(" + var_name + ", " + static_var_num + ")");
                }
                else
                {
                    /* ReplaceText is necessary to properly replace macro's. */
                    Rewrite.ReplaceText(locations.begin_loc, "__INK_GET_VAR_FROM_BUF" + array_str + "(" + var_name + ")");
                }
            }
        }
    }
}

void instrumentFunctions(Rewriter &Rewrite)
{
// __INK_SET_CURRENT_TASK_BUFFER_INDEX
    std::set<const FunctionDecl*> processed_functions;

    for (auto &[var, func_map] : VariableMap)
    {
        for (auto &[func, _] : func_map)
        {
            if (processed_functions.find(func) == processed_functions.end())
            {
                auto location = getBeginEndLoc(Rewrite, *func->getBody()->child_begin()).begin_loc;
                Rewrite.InsertTextBefore(location, "__INK_SET_CURRENT_TASK_BUFFER_INDEX\n");

                processed_functions.insert(func);
            }
        }
    }
}

std::string getVarTypeForField(const VarDecl* var, Rewriter &Rewrite)
{
    /* Handle other types. Arrays are saved into the struct as pointers. */
    string type_str = var->getType().getAsString();
    size_t nd = std::count_if( type_str.begin(), type_str.end(), []( char c ){return c =='[';});
    std::string pointer_str = std::string(nd == 0 ? 0 : nd - 1, '*');

    /* Handle anonymous structs and unions.
     * The anonymous declarations must be copied into the struct verbatim,
     * since there is no associated type.
     */
    if (type_str.find("unnamed struct at") != type_str.npos)
    {
        auto* t = var->getTypeSourceInfo()->getTypeLoc().getTypePtr();
        while (const ArrayType* at = t->getAsArrayTypeUnsafe())
        {
            t = at->getElementType().getTypePtr();
        }

        if (const RecordType* rt = t->getAs<RecordType>())
        {
            const RecordDecl* rd = rt->getDecl();
            if (rd->isAnonymousStructOrUnion() || rd->getName().str() == "")
            {
                return Rewrite.getRewrittenText(rd->getSourceRange()) + pointer_str;
            }
        }
    }

    size_t open_bracket_pos;
    if ((open_bracket_pos = type_str.find("[")) != type_str.npos)
    {
        type_str.erase(open_bracket_pos, type_str.size() - open_bracket_pos);
    }

    return type_str + pointer_str;
}

std::string getStructDefinition(Rewriter &Rewrite)
{
    std::string struct_defintion_begin = "typedef struct {\n";
    std::string struct_definition_end = "} __INK_SHARED_VAR_STRUCT_TYPE;\nstatic __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];";

    std::string struct_definition_fields = "";

    for (auto &[var, _] : VariableMap)
    {
        const auto var_type = getVarTypeForField(var, Rewrite);
        const auto var_name = var->getName().str();

        if (var->isStaticLocal())
        {
            const std::string static_var_num = std::to_string(StaticLocalVariableMap[var].num);

            struct_definition_fields += "    __INK_SHARED_VAR_STRUCT_FIELD_STATIC(" + var_type + ", " + var_name + ", " + static_var_num + ");\n";
        }
        else
        {
            struct_definition_fields += "    __INK_SHARED_VAR_STRUCT_FIELD(" + var_type + ", " + var_name + ");\n";
        }
    }

    return struct_defintion_begin + struct_definition_fields + struct_definition_end;
}

std::string getInitializerConstructorFunction()
{
    std::string task_priority = std::to_string(getTaskPriority(VariableMap.begin()->second.begin()->first));
    std::string func_definition_begin = "__INK_INITIALIZE_SHARED_VARS_FUNC(" + task_priority + "){\n";
    std::string func_definition_end = "}";

    std::string function_definition_body = "";

    for (auto &[var, _] : VariableMap)
    {
        const auto var_name = var->getName().str(); //+ (var->getType().getTypePtr()->isArrayType() ? "[0]" : "");

        if (var->isStaticLocal())
        {
            continue;
        }
        else
        {
            const std::string array_str = var->getType()->isArrayType() ? "_ARRAY" : "";
            function_definition_body += "    __INK_SET_BUFFER_POINTERS" + array_str + "(" + var_name + ");\n";
        }
    }

    return func_definition_begin + function_definition_body + func_definition_end;
}


void instrumentSOF(Rewriter &Rewrite)
{
    auto &sm = Rewrite.getSourceMgr();
    auto SOFloc = sm.getExpansionLoc(first_task_function->getReturnTypeSourceRange().getBegin());

    std::string include_str = "#include \"ink/address_translation.h\"\n";
    // std::string struct_forward_decl_str = VariableMap.size() == 0 ? "" : "typedef struct __INK_SHARED_VAR_STRUCT_TYPE __INK_SHARED_VAR_STRUCT_TYPE;\n";
    std::string struct_forward_decl_str = VariableMap.size() == 0 ? "" : getStructDefinition(Rewrite);

    Rewrite.InsertTextBefore(SOFloc, include_str + struct_forward_decl_str);
}

void instrumentEOF(Rewriter &Rewrite)
{
    auto &sm = Rewrite.getSourceMgr();
    auto EOFloc = sm.getLocForEndOfFile(sm.getMainFileID());

    std::string struct_definition_str = "";//getStructDefinition(Rewrite) + "\n";
    std::string initializer_constructor = getInitializerConstructorFunction();

    Rewrite.InsertTextAfterToken(EOFloc, struct_definition_str + initializer_constructor + "\n");
}

void instrumentVariables(Rewriter &Rewrite)
{
    removeReadOnlyVars();

    if (VariableMap.size() > 0)
    {
        instrumentDecls(Rewrite);
        instrumentVarUses(Rewrite);
        instrumentFunctions(Rewrite);
    }

    /* Add include statement and struct definition.
     * Putting the struct definition here has the constraint that all
     * shared-variable declarations must come before the definition of the
     * first task function.
     */
    if (first_task_function)
    {
        instrumentSOF(Rewrite);
    }

    if (VariableMap.size() > 0)
    {
        instrumentEOF(Rewrite);
        instrumentGlobalScopeUses(Rewrite);
    }
}

bool isVariableRead(const clang::DeclRefExpr *d, const clang::ast_matchers::MatchFinder::MatchResult &Result)
{
    clang::DynTypedNodeList NodeList = Result.Context->getParents(*d);

    const Expr *prev_node = d;

    while (!NodeList.empty()) {
        // Get the first parent.
        clang::DynTypedNode ParentNode = NodeList[0];

        if (const ArraySubscriptExpr* ase = ParentNode.get<ArraySubscriptExpr>())
        {
            if (ase->getIdx() == prev_node)
            {
                return true;
            }
        }

        if (const CallExpr* ce = ParentNode.get<CallExpr>())
        {
            if (const FunctionDecl* fd = ce->getDirectCallee())
            {
                if (fd->getName().str() == "__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE")
                {
                    return false;
                }
            }
        }

        if (!ParentNode.get<ArraySubscriptExpr>() && !ParentNode.get<CStyleCastExpr>() && !ParentNode.get<ParenExpr>() && !ParentNode.get<ImplicitCastExpr>() && !ParentNode.get<MemberExpr>() && ParentNode.get<Expr>()) {
            if (const BinaryOperator* binop = ParentNode.get<BinaryOperator>())
            {
                if (binop->getOpcode() == clang::BinaryOperator::Opcode::BO_Assign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_OrAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_AddAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_AndAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_DivAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_MulAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_RemAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_ShlAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_ShrAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_SubAssign ||
                    binop->getOpcode() == clang::BinaryOperator::Opcode::BO_XorAssign
                ) {
                    if (binop->getLHS() == prev_node)
                    {
                        return false;
                    }

                    return true;
                }
            }
            else if (const UnaryOperator* unop = ParentNode.get<UnaryOperator>())
            {
                if (unop->getOpcode() == UnaryOperator::Opcode::UO_PostDec ||
                    unop->getOpcode() == UnaryOperator::Opcode::UO_PostInc ||
                    unop->getOpcode() == UnaryOperator::Opcode::UO_PreDec ||
                    unop->getOpcode() == UnaryOperator::Opcode::UO_PreInc
                ) {
                    return false;
                }
            }

            return true;
        }

        if (const Expr* expr = ParentNode.get<Expr>())
        {
            prev_node = expr;
        }

        NodeList = Result.Context->getParents(ParentNode);
    }

    return false;
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

            /* Ignore const variables (these cannot be written). */
            if (GlobalVar->getType().isConstant(GlobalVar->getASTContext()))
            {
                return;
            }

            /* Volatile variables are assumed to be hardware-related.
             * Intermittent hardware register operations are not supported by InK,
             * but the programmer is allowed to use them.
             */
            if (GlobalVar->getType().isVolatileQualified())
            {
                return;
            }

            /* Only instrument variables inside tasks. */
            const FunctionDecl* parent_function = getParentFunction(GlobalVarRef, Result);
            if (!parent_function)
            {
                /* No parent function, expression in global scope (this is allowed). */
                VarsUsedInGlobalScope.insert(std::make_pair(GlobalVar, GlobalVarRef));
                return;
            }
            if (!isTaskFunction(parent_function))
            {
                VarsUsedOutsideTasks.insert(GlobalVar);
                return;
            }

            auto &sm = Result.Context->getSourceManager();
            std::string global_var_name = GlobalVar->getName().str();

            if (GlobalVar->hasExternalStorage())
            {
                reportError("Global variable '" + global_var_name + "' has external storage, this is not allowed.");
                exit(1);
            }
            if (sm.getFileID(GlobalVar->getLocation()) != sm.getMainFileID())
            {
                reportError("Global variable '" + global_var_name + "' declared in header file, this is not allowed.");
                exit(1);
            }

            VariableMap[GlobalVar][parent_function][GlobalVarRef] = !isVariableRead(GlobalVarRef, Result);
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

            /* Ignore const variables (these cannot be written). */
            if (GlobalVar->getType().isConstant(GlobalVar->getASTContext()))
            {
                return;
            }

            /* Volatile variables are assumed to be hardware-related.
             * Intermittent hardware register operations are not supported by InK,
             * but the programmer is allowed to use them.
             */
            if (GlobalVar->getType().isVolatileQualified())
            {
                return;
            }

            /* Only instrument variables inside tasks. */
            const FunctionDecl* parent_function = getParentFunction(GlobalVarRef, Result);
            if (!parent_function || !isTaskFunction(parent_function))
            {
                return;
            }

            auto &sm = Result.Context->getSourceManager();
            std::string global_var_name = GlobalVar->getName().str();

            if (GlobalVar->hasExternalStorage())
            {
                reportError("Global variable '" + global_var_name + "' has external storage, this is not allowed.");
                exit(1);
            }
            if (sm.getFileID(GlobalVar->getLocation()) != sm.getMainFileID())
            {
                reportError("Global variable '" + global_var_name + "' declared in header file, this is not allowed.");
                exit(1);
            }

            StaticLocalVariableMap[GlobalVar] = {
                static_local_num++,
                getBeginEndLoc(Rewrite, GlobalVarRef)
            };
        }

    private:
        Rewriter &Rewrite;
};

class TaskFunctionHandler : public MatchFinder::MatchCallback {
    public:
        TaskFunctionHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            const FunctionDecl * task_candidate = Result.Nodes.getNodeAs<FunctionDecl>("task_candidate");

            if (isTaskFunction(task_candidate) && !first_task_function)
            {
                first_task_function = task_candidate;
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
      HandlerForStatic(R),
      HandlerForTaskFunction(R)
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


    Matcher.addMatcher(
        functionDecl(
            hasAttr(clang::attr::Kind::Annotate),
            isDefinition()
        ).bind("task_candidate"),
        &HandlerForTaskFunction
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
  TaskFunctionHandler HandlerForTaskFunction;
  MatchFinder Matcher;
};

// For each source file provided to the tool, a new FrontendAction is created.
class MyFrontendAction : public ASTFrontendAction {
    public:
        MyFrontendAction() {}
        void EndSourceFileAction() override {
            instrumentVariables(TheRewriter);
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
