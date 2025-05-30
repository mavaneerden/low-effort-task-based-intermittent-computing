#include <string>

#include "clang/AST/AST.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "clang/Rewrite/Core/Rewriter.h"

struct locations_t
{
    clang::SourceLocation begin_loc;
    clang::SourceLocation end_loc;
};

void LogInstrumentation(std::string type, std::string original, std::string instrumented, std::string location);
bool isRootTask(const clang::FunctionDecl *d);
void reportError(std::string message);
bool excludeFromInstrumentation(const clang::VarDecl *d);
int getTaskPriority(const clang::FunctionDecl *task);
bool isTaskFunction(const clang::FunctionDecl *d);
const clang::FunctionDecl* getParentFunction(const clang::Stmt *d, const clang::ast_matchers::MatchFinder::MatchResult &Result);
locations_t getBeginEndLoc(clang::Rewriter &Rewrite, const clang::Stmt* stmt);
