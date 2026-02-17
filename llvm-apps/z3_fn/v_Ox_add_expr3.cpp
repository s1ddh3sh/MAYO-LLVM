#include "z3++.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/TargetParser/Host.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IRReader/IRReader.h"

#include <map>
// #include "mayo.h"
using namespace llvm;

// const mayo_params_t *p = &MAYO_1;

static const int param_o = 8;
static const int param_k = 1;
static const int param_v = 78;
static const int param_n = 86;

// std::map<Value *, z3::expr> reg;
z3::context ctx;

std::vector<z3::expr> Vdec;
std::vector<z3::expr> x;
std::vector<std::vector<z3::expr>> O;
std::vector<z3::expr> Ox;
std::vector<z3::expr> s;

void compute_Ox(z3::func_decl MUL_F, z3::func_decl ADD_F)
{
    for (int r = 0; r < param_v; r++)
    {
        z3::expr acc = ctx.bv_val(0, 8);

        for (int c = 0; c < param_o; c++)
        {
            z3::expr prod = MUL_F(O[r][c], x[c]);
            acc = ADD_F(acc, prod);
        }

        Ox[r] = acc;
    }
}

void compute_s_head(z3::func_decl ADD_F)
{
    for (int r = 0; r < param_v; r++)
    {
        s[r] = ADD_F(Vdec[r], Ox[r]);
    }
}

void append_tail()
{
    for (int j = 0; j < param_o; j++)
    {
        s[param_v + j] = x[j];
    }
}

int main()
{

    Ox.resize(param_v, ctx.bv_val(0, 8));
    s.resize(param_n, ctx.bv_val(0, 8));


    LLVMContext llvm_ctx;

    SMDiagnostic err;

    auto module = parseIRFile("../mayo.ll", err, llvm_ctx);
    if (!module)
    {
        std::cout << "Failed to load IR\n";
        return 1;
    }

    Function *F = module->getFunction("mayo_sign_signature");
    if (!F)
    {
        std::cout << "Function not found\n";
        return 1;
    }

    // Find for.body112
    BasicBlock *target = nullptr;
    for (auto &BB : *F)
    {
        if (BB.getName() == "for.body112")
        {
            target = &BB;
            break;
        }
    }

    if (!target)
    {
        std::cout << "Block not found\n";
        return 1;
    }

    z3::sort bv8 = ctx.bv_sort(8);

    // Uninterpreted field operations
    z3::func_decl MUL_F = ctx.function("MUL_F", bv8, bv8, bv8);
    z3::func_decl ADD_F = ctx.function("ADD_F", bv8, bv8, bv8);

    for (int i = 0; i < param_v; i++)
        Vdec.push_back(ctx.bv_const(("Vdec_" + std::to_string(i)).c_str(), 8));

    // x symbolic
    for (int i = 0; i < param_o; i++)
        x.push_back(ctx.bv_const(("x_" + std::to_string(i)).c_str(), 8));

    // O symbolic
    O.resize(param_v);
    for (int r = 0; r < param_v; r++)
        for (int c = 0; c < param_o; c++)
            O[r].push_back(
                ctx.bv_const(("O_" + std::to_string(r) + "_" + std::to_string(c)).c_str(), 8));

    for (auto &I : *target)
    {

        if (auto *call = dyn_cast<CallInst>(&I))
        {

            Function *callee = call->getCalledFunction();
            if (!callee)
                continue;

            std::string name = callee->getName().str();

            if (name == "mat_mul")
            {

                compute_Ox(MUL_F, ADD_F);
            }

            else if (name == "mat_add")
            {

                compute_s_head(ADD_F);
            }
            else if (name == "memcpy")
            {
                append_tail();
            }
        }
    }

    std::cout << "\nOne signature block symbolic expression:\n\n";

    for (int i = 0; i < param_n; i++)
    {
        std::cout << "s[" << i << "] = " << s[i].simplify() << "\n\n";
    }

    return 0;
}