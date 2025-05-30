#include "utils.hpp"

#include "llvm/Support/WithColor.h"

#define TASK_FUNCTION_STR  "INK::TASK"
#define IGNORE_STR         "INK::IGNORE"

void LogInstrumentation(std::string type, std::string original, std::string instrumented, std::string location)
{
    llvm::errs() << ">>> Instrumented " << type
        << " \'" << original << "\' "
        << "-> \'" << instrumented << "\' "
        << "at: " << location << "\n";
}

bool isRootTask(const clang::FunctionDecl *d)
{
    return isTaskFunction(d);
}

void reportError(std::string message)
{
    llvm::WithColor(llvm::errs(), llvm::raw_ostream::RED) << "ERROR: ";
    llvm::errs() << message << "\n";
}

bool excludeFromInstrumentation(const clang::VarDecl *d)
{
    if (d->hasAttr<clang::AnnotateAttr>())
    {
        clang::AnnotateAttr* attr = d->getAttr<clang::AnnotateAttr>();
        if(attr->getAnnotation() == IGNORE_STR) {
            llvm::errs() << "Ignoring variable '" << d->getName() << "'\n";
            return true;
        }
    }

    return false;
}

int getTaskPriority(const clang::FunctionDecl *task)
{
    clang::AnnotateAttr* attr = task->getAttr<clang::AnnotateAttr>();
    const std::string priority_string = std::string(attr->getAnnotation()).substr(9);

    return stoi(priority_string);
}

bool isTaskFunction(const clang::FunctionDecl *d)
{
    if (d->hasAttr<clang::AnnotateAttr>())
    {
        clang::AnnotateAttr* attr = d->getAttr<clang::AnnotateAttr>();
        const std::string attr_string = std::string(attr->getAnnotation()).substr(0, 9);

        return attr_string == TASK_FUNCTION_STR;
    }

    return false;
}

// Source: https://stackoverflow.com/a/72642060
const clang::FunctionDecl* getParentFunction(const clang::Stmt *d, const clang::ast_matchers::MatchFinder::MatchResult &Result)
{
    clang::DynTypedNodeList NodeList = Result.Context->getParents(*d);

    while (!NodeList.empty()) {
        // Get the first parent.
        clang::DynTypedNode ParentNode = NodeList[0];

        // Is the parent a FunctionDecl?
        if (const clang::FunctionDecl *Parent = ParentNode.get<clang::FunctionDecl>()) {
            return Parent;
        }

        // It was not a FunctionDecl.  Keep going up.
        NodeList = Result.Context->getParents(ParentNode);
    }

    return nullptr;
}

locations_t getBeginEndLoc(clang::Rewriter &Rewrite, const clang::Stmt* stmt)
{
    clang::SourceManager &sm = Rewrite.getSourceMgr();

    return {sm.getExpansionLoc(stmt->getBeginLoc()), sm.getExpansionLoc(stmt->getEndLoc())};
}
