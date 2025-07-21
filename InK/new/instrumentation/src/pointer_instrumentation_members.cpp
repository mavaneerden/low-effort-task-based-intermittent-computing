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

MemberExpr* getMemberDescendantFromOperator(const Expr *AssignmentOperator)
{
    Expr *next_node = nullptr;

    if (isa<BinaryOperator>(AssignmentOperator))
    {
        next_node = dyn_cast<BinaryOperator>(AssignmentOperator)->getLHS();
    }
    else if (isa<UnaryOperator>(AssignmentOperator))
    {
        next_node = dyn_cast<UnaryOperator>(AssignmentOperator)->getSubExpr();
    }
    else
    {
        return nullptr;
    }

    while (next_node)
    {
        if (isa<ArraySubscriptExpr>(next_node))
        {
            next_node = dyn_cast<ArraySubscriptExpr>(next_node)->getBase();
        }
        else if (isa<CStyleCastExpr>(next_node))
        {
            next_node = dyn_cast<CStyleCastExpr>(next_node)->getSubExpr();
        }
        else if (isa<ParenExpr>(next_node))
        {
            next_node = dyn_cast<ParenExpr>(next_node)->getSubExpr();
        }
        else if (isa<ImplicitCastExpr>(next_node))
        {
            next_node = dyn_cast<ImplicitCastExpr>(next_node)->getSubExpr();
        }
        else if (isa<MemberExpr>(next_node))
        {
            MemberExpr* member_expr = dyn_cast<MemberExpr>(next_node);

            return member_expr->isArrow() ? member_expr : nullptr;
        }
        else
        {
            next_node = nullptr;
        }
    }

    return nullptr;
}

// Checks if the member access is a read. Goes up the AST from the member node, and skips all 'filler' nodes
// such as casts, parentheses, etc.
// If it finds a unary operator ++, -- it is a write.
// If it finds a binary operator with the member expression on the LHS, it is a write, and RHS is a read.
// If it finds the member expression is the index of an array subscript expression, it must be a read.
bool isMemberRead(const clang::MemberExpr *d, const clang::ast_matchers::MatchFinder::MatchResult &Result)
{
    clang::DynTypedNodeList NodeList = Result.Context->getParents(*d);

    const Expr *prev_node = d;

    while (!NodeList.empty()) {
        // Get the first parent.
        clang::DynTypedNode ParentNode = NodeList[0];

        if (const ArraySubscriptExpr* ase = ParentNode.get<ArraySubscriptExpr>())
        {
            // It is a read if it is inside an arraysubscript
            if (ase->getIdx() == prev_node)
            {
                return true;
            }
        }

        if (!ParentNode.get<ArraySubscriptExpr>() && !ParentNode.get<CStyleCastExpr>() && !ParentNode.get<ParenExpr>() && !ParentNode.get<ImplicitCastExpr>() && ParentNode.get<Expr>()) {
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
                    // If it is an assign operator and the member access is on the LHS, it is a write.
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

        // Non-expression nodes are skipped because they do not matter
        if (const Expr* expr = ParentNode.get<Expr>())
        {
            prev_node = expr;
        }

        NodeList = Result.Context->getParents(ParentNode);
    }

    return false;
}

std::string getMacro(const Stmt* AssignmentMatcher)
{
    return AssignmentMatcher ? PTR_WRITE : PTR_READ;
}

class MemberHandler : public MatchFinder::MatchCallback {
    public:
        MemberHandler(Rewriter &Rewrite) : Rewrite(Rewrite) {}

        virtual void run(const MatchFinder::MatchResult &Result) {
            MemberExpr *memberExpr = const_cast<MemberExpr*>(Result.Nodes.getNodeAs<MemberExpr>("member_expr"));
            const Expr *AssignmentMatcher = Result.Nodes.getNodeAs<Expr>("assignment_matcher");
            std::string macro_name = "";

            // Finding out if the member is written or read is tricky. First we need to check if the member
            // is descending from the lhs of binary operators, and subexpressions of casts, array subexprs, etc.
            // If this is the case, then it is a write. If it is not the case, it is a read and will be processed
            // by a different matcher.
            if (AssignmentMatcher)
            {
                memberExpr = getMemberDescendantFromOperator(AssignmentMatcher);

                if(memberExpr == nullptr)
                {
                    return;
                }

                macro_name = PTR_WRITE;
            }
            // If there is no assignment matcher, i.e. just a member match, we still need to check if it is a read to
            // avoid processing again the writes.
            else
            {
                if (!isMemberRead(memberExpr, Result))
                {
                    return;
                }

                macro_name = PTR_READ;
            }

            const FunctionDecl* ParentFunction = getParentFunction(memberExpr, Result);

            if (ParentFunction && !isTaskFunction(ParentFunction))
            {
                // No task function, no good.
                return;
            }

            int task_priority = getTaskPriority(ParentFunction);

            const Expr* memberExprBase = memberExpr->getBase();
            auto locations = getBeginEndLoc(Rewrite, memberExprBase);

            Rewrite.InsertTextBefore(locations.begin_loc, "(" + getCastString(memberExprBase) + macro_name + "(");
            Rewrite.InsertTextAfterToken(locations.end_loc, ", " + std::to_string(task_priority) + "))");

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
      HandlerForMember(R)
    {

    /***************************************************************
     *                   POINTER MEMBER ACCESS                     *
     ***************************************************************/
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            memberExpr(
                isArrow()
            ).bind("member_expr")
        ),
        &HandlerForMember
    );

    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            binaryOperator(
                getAssignmentOperatorMatcher()
            ).bind("assignment_matcher")
        ),
        &HandlerForMember
    );
    Matcher.addMatcher(
        traverse(TK_IgnoreUnlessSpelledInSource,
            unaryOperator(
                hasAnyOperatorName("++", "--")
            ).bind("assignment_matcher")
        ),
        &HandlerForMember
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