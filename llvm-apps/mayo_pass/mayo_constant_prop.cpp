#include "clang/Basic/DiagnosticOptions.h"
#include "clang/CodeGen/CodeGenAction.h"
#include "clang/Driver/Driver.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/CompilerInvocation.h"
#include "clang/Frontend/TextDiagnosticPrinter.h"
#include "clang/Frontend/Utils.h"

#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Linker/Linker.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/VirtualFileSystem.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/TargetParser/Host.h"
#include "llvm/Transforms/AggressiveInstCombine/AggressiveInstCombine.h"
#include "llvm/Transforms/IPO/GlobalDCE.h"
#include "llvm/Transforms/IPO/GlobalOpt.h"
#include "llvm/Transforms/IPO/Inliner.h"
#include "llvm/Transforms/IPO/StripDeadPrototypes.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar/CorrelatedValuePropagation.h"
#include "llvm/Transforms/Scalar/IndVarSimplify.h"
#include "llvm/Transforms/Scalar/InstSimplifyPass.h"
#include "llvm/Transforms/Scalar/LoopDeletion.h"
#include "llvm/Transforms/Scalar/LoopUnrollPass.h"
#include "llvm/Transforms/Scalar/SCCP.h"
#include "llvm/Transforms/Scalar/SimplifyCFG.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/Mem2Reg.h"

#include <llvm-20/llvm/Analysis/InlineCost.h>
#include <llvm-20/llvm/Transforms/IPO/ModuleInliner.h>
#include <memory>

using namespace llvm;

std::unique_ptr<Module> c2ir(const std::vector<std::string> &filepaths,
                             const std::vector<std::string> &includeDirs,
                             LLVMContext &llvm_ctx, const std::string &variant,
                             const std::string &buildType) {
  auto composite = std::make_unique<Module>("composite", llvm_ctx);

  composite->setTargetTriple("arm-unknown-none-eabi");
  // composite->setDataLayout(
  //     llvm::DataLayout("e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"));

  Linker linker(*composite);

  for (const auto &filepath : filepaths) {
    clang::CompilerInstance compiler;

    auto VFS = llvm::vfs::getRealFileSystem();
    compiler.createDiagnostics(
        *VFS, new clang::TextDiagnosticPrinter(llvm::errs(),
                                               new clang::DiagnosticOptions()));

    std::vector<const char *> args = {
        "clang-tool",
        "-O0",
        // "-g",
        // "-fno-builtin",
        // "-fno-freestanding",
        // "-debug-info-kind=limited",
        //   "-DENABLE_PARAMS_DYNAMIC=ON"
    };

    std::string variantDef = "-DMAYO_VARIANT=" + variant;
    std::string buildTypeDef = "-D" + buildType;
    args.push_back(variantDef.c_str());
    args.push_back(buildTypeDef.c_str());

    auto &CGO = compiler.getInvocation().getCodeGenOpts();
    CGO.setDebugInfo(llvm::codegenoptions::FullDebugInfo);
    CGO.DebugColumnInfo = true;

    // Run clang -print-resource-dir programmatically
    FILE *pipe = popen("clang-20 -print-resource-dir 2>/dev/null", "r");
    char buf[256];
    fgets(buf, sizeof(buf), pipe);
    pclose(pipe);
    std::string resourceDir = std::string(buf);
    resourceDir.erase(resourceDir.find_last_not_of(" \n\r") + 1);

    // std::string resourceDir = "/usr/local/lib/clang/23";

    args.push_back("-Wno-macro-redefined");

    args.push_back("-resource-dir");
    args.push_back(resourceDir.c_str());

    args.push_back("-ffreestanding");
    args.push_back("-fno-builtin");

    compiler.getInvocation().getHeaderSearchOpts().Sysroot =
        "/usr/lib/arm-none-eabi";

    args.push_back("-isystem");
    args.push_back("/usr/lib/arm-none-eabi/include");

    args.push_back("-isystem");
    args.push_back("/usr/lib/gcc/arm-none-eabi/13.2.1/include");

    std::string builtinInclude = resourceDir + "/include";
    args.push_back("-internal-isystem");
    args.push_back(strdup(builtinInclude.c_str()));

    for (const auto &dir : includeDirs) {
      args.push_back("-I");
      args.push_back(dir.c_str());
    }

    clang::CompilerInvocation::CreateFromArgs(compiler.getInvocation(), args,
                                              compiler.getDiagnostics());

    CGO.FloatABI = "soft"; // or "hard" if FPU
    CGO.RelocationModel = llvm::Reloc::Model::Static;
    CGO.CodeModel = "small";

    auto &frontendOpts = compiler.getInvocation().getFrontendOpts();
    frontendOpts.Inputs.clear();
    frontendOpts.Inputs.emplace_back(filepath, clang::Language::C);
    compiler.getInvocation().getTargetOpts().Triple = "arm-unknown-none-eabi";

    auto &TO = compiler.getInvocation().getTargetOpts();
    TO.CPU = "cortex-m4";
    TO.Features = {"+thumb2"};

    compiler.createFileManager();
    compiler.createSourceManager(compiler.getFileManager());

    auto TO_shared = std::make_shared<clang::TargetOptions>(
        compiler.getInvocation().getTargetOpts());

    compiler.setTarget(clang::TargetInfo::CreateTargetInfo(
        compiler.getDiagnostics(), TO_shared));

    auto action = std::make_unique<clang::EmitLLVMOnlyAction>(&llvm_ctx);
    if (!compiler.ExecuteAction(*action)) {
      return nullptr;
    }

    std::unique_ptr<Module> mod = action->takeModule();
    if (!mod) {
      llvm::errs() << "Module generation failed\n";
      return nullptr;
    }
    if (linker.linkInModule(std::move(mod))) {
      return nullptr;
    }
  }
  return composite;
}

std::unique_ptr<Module> ir2Module(const std::string &filepath,
                                  LLVMContext &llvm_ctx) {

  SMDiagnostic error;
  std::unique_ptr<llvm::Module> module =
      llvm::parseIRFile(filepath, error, llvm_ctx);
  if (!module)
    return nullptr;

  return module;
}

void stripOptnoneNoinline(llvm::Module &module) {
  for (Function &F : module) {
    F.removeFnAttr(Attribute::OptimizeNone);
    F.removeFnAttr(Attribute::NoInline);
  }
}

void prepare(std::unique_ptr<llvm::Module> &module,
             const std::string &variantName) {

  stripOptnoneNoinline(*module);

  LoopAnalysisManager LAM;
  FunctionAnalysisManager FAM;
  CGSCCAnalysisManager CGAM;
  ModuleAnalysisManager MAM;

  PassBuilder PB;

  PB.registerModuleAnalyses(MAM);
  PB.registerCGSCCAnalyses(CGAM);
  PB.registerFunctionAnalyses(FAM);
  PB.registerLoopAnalyses(LAM);
  PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

  ModulePassManager MPM;
  MPM.addPass(GlobalOptPass());

  // constants 
  {
    FunctionPassManager FPM;
    FPM.addPass(PromotePass());
    FPM.addPass(SCCPPass());
    FPM.addPass(InstCombinePass());
    FPM.addPass(SimplifyCFGPass());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }

  // inlining
  {
    InlineParams IP;
    IP.DefaultThreshold = 100;
    MPM.addPass(ModuleInlinerPass(IP));
  }

  {
    FunctionPassManager FPM;
    FPM.addPass(PromotePass());
    FPM.addPass(SCCPPass());
    FPM.addPass(CorrelatedValuePropagationPass());
    FPM.addPass(InstCombinePass());
    FPM.addPass(SimplifyCFGPass());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }

  // Loop
  {
    FunctionPassManager FPM;
    FPM.addPass(LoopSimplifyPass());
    FPM.addPass(createFunctionToLoopPassAdaptor(IndVarSimplifyPass()));
    // FPM.addPass(createFunctionToLoopPassAdaptor(
    //     LoopDeletionPass())); // delete dead loops
    // LoopUnrollOptions LUOpts;
    // LUOpts.setFullUnrollMaxCount(1024); // unroll short loops completely
    // // LUOpts.setPartialOptSizeThreshold(0);
    // FPM.addPass(LoopUnrollPass(LUOpts));
    // FPM.addPass(SCCPPass()); // SCCP again after unrolling
    // FPM.addPass(InstCombinePass());
    // FPM.addPass(SimplifyCFGPass());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }

  MPM.addPass(StripDeadPrototypesPass());

  MPM.run(*module, MAM);
}

int main(int argc, char **argv) {

  const std::vector<std::pair<std::string, std::string>> variants = {
      {"MAYO_1", "mayo1"},
      {"MAYO_2", "mayo2"},
      {"MAYO_3", "mayo3"},
      {"MAYO_5", "mayo5"},
  };

  std::vector<std::string> files = {"../example.c", "../../../src/mayo.c",
                                    "../../../src/arithmetic.c"};

  std::vector<std::string> includes = {"../../../include", "../../../src",
                                       "../../../src/common",
                                       "../../../src/generic"};

  for (auto &[variant, suffix] : variants) {
    llvm::LLVMContext llvm_ctx;
    auto module =
        c2ir(files, includes, llvm_ctx, variant, "MAYO_BUILD_TYPE_REF");
    if (!module) {
      llvm::errs() << "Failed for " << variant << "\n";
      continue;
    }

    module->setTargetTriple("arm-unknown-none-eabi");

    if (llvm::verifyModule(*module, &llvm::errs())) {
      llvm::errs() << "Invalid module for " << variant << "\n";
      continue;
    }

    
    prepare(module, variant);
    std::string outPath = "../" + suffix + ".ll";
    std::error_code EC;
    llvm::raw_fd_ostream outFile(outPath, EC);
    if (!EC)
      module->print(outFile, nullptr);
    llvm::outs() << "Wrote " << outPath << "\n";
  }
}