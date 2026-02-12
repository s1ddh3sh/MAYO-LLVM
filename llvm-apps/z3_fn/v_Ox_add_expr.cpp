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

using namespace llvm;

Function *findFunction(Module &M)
{
    for (Function &F : M)
    {
        if (F.getName() == "mayo_sign_signature")
            return &F;
    }
    return nullptr;
}

std::unique_ptr<Module> ir2Module(const std::string &filepath, LLVMContext &llvm_ctx)
{

    SMDiagnostic error;
    std::unique_ptr<llvm::Module> module = llvm::parseIRFile(filepath, error, llvm_ctx);
    if (!module)
        return nullptr;

    return module;
}

void translateToZ3(Function &F, z3::context &ctx)
{
    std::map<Value *, z3::expr> term_store;
    z3::expr secret = ctx.bool_const("SECRET_KEY");
    z3::expr public_val = ctx.bool_val(false);
    z3::expr mask = ctx.bool_const("VINEGAR_MASK");

    for (auto &BB : F)
    {
        for (auto &I : BB)
        {
            // I.print(errs());
            std::string regName = "";
            if (I.hasName())
                regName = "%" + I.getName().str();

            if (auto *gep = llvm::dyn_cast<llvm::GetElementPtrInst>(&I))
            {

                Value *basePtr = gep->getPointerOperand();
                std::string baseName = basePtr->getName().str();

                z3::expr property = public_val; // Default to public
                if (term_store.count(basePtr))
                {
                    property = term_store.at(basePtr);
                }
                else
                {

                    if (baseName.find("sk") != std::string::npos)
                    {
                        property = secret;
                    }
                    else if (baseName.find("Vdec") != std::string::npos)
                    {
                        property = mask;
                    }
                }
                term_store.insert({gep, property});
            }
            if (auto *load = dyn_cast<LoadInst>(&I))
            {
                Value *src = load->getPointerOperand();

                if (term_store.count(src))
                {
                    term_store.insert({&I, term_store.at(src)});
                }
            }

            if (auto *store = dyn_cast<StoreInst>(&I))
            {
                Value *src = store->getValueOperand();
                Value *dst = store->getPointerOperand();

                if (term_store.count(src))
                {
                    term_store.insert({dst, term_store.at(src)});
                }
            }

            //     // Handle Function Calls (mat_add, mat_mul, memcpy)
            if (auto *call = llvm::dyn_cast<llvm::CallInst>(&I))
            {

                Function *callee = call->getCalledFunction();
                if (!callee)
                    continue;
                std::string funcName = callee->getName().str();

                if (funcName == "mat_add")
                {
                    // Expression: vi_eph || Ox_sec
                    llvm::Value *arg_vi = call->getArgOperand(0); // ptr %115 (vi)
                    llvm::Value *arg_Ox = call->getArgOperand(1); // ptr %arraydecay123

                    // std::cout << "Checking mat_add args:\n";
                    // std::cout << "  arg_vi: ";
                    // arg_vi->print(llvm::errs());
                    // std::cout << "\n  arg_Ox: ";
                    // arg_Ox->print(llvm::errs());
                    // std::cout << "\n";

                    // std::cout << "term_store has arg_vi? "
                    //           << term_store.count(arg_vi) << "\n";
                    // std::cout << "term_store has arg_Ox? "
                    //           << term_store.count(arg_Ox) << "\n";

                    if (term_store.count(arg_vi) && term_store.count(arg_Ox))
                    {
                        z3::expr res = term_store.at(arg_vi) || term_store.at(arg_Ox);

                        // The result of mat_add is stored in the buffer provided in Arg 2
                        llvm::Value *dest = call->getArgOperand(2);
                        term_store.insert({dest, res});
                        if (auto *gep = dyn_cast<GetElementPtrInst>(dest))
                        {
                            Value *base = gep->getPointerOperand();
                            term_store.insert({base, res});
                        }
                        // std::cout << "mat_add result at "
                        //           << call->getArgOperand(2)->getName().str()
                        //           << " : "
                        //           << res.simplify()
                        //           << "\n";
                    }
                }

                else if (funcName == "mat_mul")
                {
                    llvm::Value *arg_O = call->getArgOperand(0); // ptr %arraydecay117
                    llvm::Value *arg_x = call->getArgOperand(1); // ptr %add.ptr120

                    if (term_store.count(arg_O) && term_store.count(arg_x))
                    {
                        z3::expr res = term_store.at(arg_O) || term_store.at(arg_x);

                        // Result goes into Arg 2 (%arraydecay121)
                        llvm::Value *dest = call->getArgOperand(2);
                        term_store.insert({dest, res});
                        if (auto *gep = dyn_cast<GetElementPtrInst>(dest))
                        {
                            Value *base = gep->getPointerOperand();
                            term_store.insert({base, res});
                        }
                        // std::cout << "  -> Z3 mat_mul: " << res.simplify() << "\n";
                    }
                }
                else if (funcName == "memcpy")
                {
                    // memcpy(dest, src, size)
                    llvm::Value *dest = call->getArgOperand(0);
                    llvm::Value *src = call->getArgOperand(1);

                    if (term_store.count(src))
                    {
                        z3::expr res = term_store.at(src);
                        term_store.insert({dest, res});
                        if (auto *gep = dyn_cast<GetElementPtrInst>(dest))
                        {
                            Value *base = gep->getPointerOperand();
                            term_store.insert({base, res});
                        }
                        // std::cout << "  -> Z3 memcpy: " << res.simplify() << "\n";
                    }
                }
            }
        }
    }

    for (auto &entry : term_store)
    {
        Value *key = entry.first;
        z3::expr expr = entry.second;

        std::string name = key->getName().str();
        std::cout << "%" << name << " : "
                  << expr << "\n";
    }
}

int main()
{
    LLVMContext llvm_ctx;

    std::unique_ptr<Module> module = ir2Module("../mayo.ll", llvm_ctx);
    if (!module)
    {
        std::cerr << "Failed to load mayo.ll\n";
        return 1;
    }

    Function *F = findFunction(*module);
    if (!F)
    {
        std::cerr << "mayo_sign_signature not found\n";
        return 1;
    }

    z3::context ctx;

    translateToZ3(*F, ctx);

    return 0;
}