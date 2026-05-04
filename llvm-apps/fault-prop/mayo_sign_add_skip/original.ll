; ModuleID = '../no_struct/mayo1.ll'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local local_unnamed_addr global i64 0, align 8, !dbg !27
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local local_unnamed_addr global i8 0, align 1, !dbg !31

; Function Attrs: inlinehint nounwind
define dso_local fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !91 {
entry:
    #dbg_value(ptr %a, !95, !DIExpression(), !96)
    #dbg_value(ptr %b, !97, !DIExpression(), !96)
    #dbg_value(ptr %c, !98, !DIExpression(), !96)
    #dbg_value(i32 78, !99, !DIExpression(), !96)
    #dbg_value(i32 1, !100, !DIExpression(), !96)
    #dbg_value(i32 0, !101, !DIExpression(), !103)
  br label %for.body3, !dbg !104

for.body3:                                        ; preds = %entry, %for.body3
  %i.01 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ]
    #dbg_value(i32 %i.01, !101, !DIExpression(), !103)
    #dbg_value(i32 poison, !105, !DIExpression(), !109)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.01, !dbg !110
  %0 = load i8, ptr %add.ptr, align 1, !dbg !113
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.01, !dbg !114
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !115
    #dbg_value(i8 %0, !116, !DIExpression(), !120)
    #dbg_value(i8 %1, !122, !DIExpression(), !120)
  %xor1.i = xor i8 %0, %1, !dbg !123
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.01, !dbg !124
  store i8 %xor1.i, ptr %add.ptr9, align 1, !dbg !125
  %inc12 = add nuw nsw i32 %i.01, 1, !dbg !126
    #dbg_value(i32 %inc12, !101, !DIExpression(), !103)
  %exitcond.not = icmp eq i32 %inc12, 78, !dbg !127
  br i1 %exitcond.not, label %for.end13, label %for.body3, !dbg !104, !llvm.loop !128

for.end13:                                        ; preds = %for.body3
  ret void, !dbg !131
}

attributes #0 = { inlinehint nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }

!llvm.dbg.cu = !{!35, !37, !2, !66, !77}
!llvm.ident = !{!86, !86, !86, !86, !86}
!llvm.module.flags = !{!87, !88, !89, !90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint32_t_blocker", scope: !2, file: !29, line: 126, type: !34, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../src/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!4 = !{!5, !10, !11, !14, !16, !19, !21, !24}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 60, baseType: !7)
!6 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 105, baseType: !9)
!8 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!9 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 56, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 103, baseType: !13)
!13 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 48, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 79, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !6, line: 20, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !8, line: 41, baseType: !23)
!23 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 44, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !10)
!26 = !{!0, !27, !31}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint64_t_blocker", scope: !2, file: !29, line: 127, type: !30, isLocal: false, isDefinition: true)
!29 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_unsigned_char_blocker", scope: !2, file: !29, line: 128, type: !33, isLocal: false, isDefinition: true)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!34 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !36, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!37 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !38, globals: !45, splitDebugInlining: false, nameTableKind: None)
!38 = !{!39, !40, !15, !43, !14, !16}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 43, baseType: !15)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 214, baseType: !18)
!44 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!45 = !{!46, !52, !60, !62, !64}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "f_tail", scope: !37, file: !48, line: 247, type: !49, isLocal: true, isDefinition: true)
!48 = !DIFile(filename: "../../../include/mayo.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 4)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !54, file: !55, line: 112, type: !59, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !55, file: !55, line: 111, type: !56, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!55 = !DIFile(filename: "../../../src/mayo.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!56 = !DISubroutineType(types: !57)
!57 = !{null, !39}
!58 = !{}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "even_bytes", scope: !54, file: !55, line: 113, type: !59, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !54, file: !55, line: 114, type: !59, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "even_half", scope: !54, file: !55, line: 115, type: !59, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !68, globals: !70, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../../../src/common/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!68 = !{!69, !16, !5, !43, !41}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!70 = !{!71}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "KeccakF_RoundConstants", scope: !66, file: !73, line: 214, type: !74, isLocal: true, isDefinition: true)
!73 = !DIFile(filename: "../../../src/common/fips202.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1536, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 24)
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !78, globals: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !{!69, !10, !5, !16, !15}
!79 = !{!80}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "Rcon", scope: !77, file: !82, line: 388, type: !83, isLocal: true, isDefinition: true)
!82 = !DIFile(filename: "../../../src/common/aes_c.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 80, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 10)
!86 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 1, !"Code Model", i32 1}
!91 = distinct !DISubprogram(name: "mat_add", scope: !92, file: !92, line: 88, type: !93, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!92 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!93 = !DISubroutineType(types: !94)
!94 = !{null, !19, !19, !14, !10, !10}
!95 = !DILocalVariable(name: "a", arg: 1, scope: !91, file: !92, line: 88, type: !19)
!96 = !DILocation(line: 0, scope: !91)
!97 = !DILocalVariable(name: "b", arg: 2, scope: !91, file: !92, line: 88, type: !19)
!98 = !DILocalVariable(name: "c", arg: 3, scope: !91, file: !92, line: 89, type: !14)
!99 = !DILocalVariable(name: "m", arg: 4, scope: !91, file: !92, line: 89, type: !10)
!100 = !DILocalVariable(name: "n", arg: 5, scope: !91, file: !92, line: 89, type: !10)
!101 = !DILocalVariable(name: "i", scope: !102, file: !92, line: 90, type: !10)
!102 = distinct !DILexicalBlock(scope: !91, file: !92, line: 90, column: 5)
!103 = !DILocation(line: 0, scope: !102)
!104 = !DILocation(line: 90, column: 5, scope: !102)
!105 = !DILocalVariable(name: "j", scope: !106, file: !92, line: 91, type: !10)
!106 = distinct !DILexicalBlock(scope: !107, file: !92, line: 91, column: 9)
!107 = distinct !DILexicalBlock(scope: !108, file: !92, line: 90, column: 33)
!108 = distinct !DILexicalBlock(scope: !102, file: !92, line: 90, column: 5)
!109 = !DILocation(line: 0, scope: !106)
!110 = !DILocation(line: 92, column: 42, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !92, line: 91, column: 37)
!112 = distinct !DILexicalBlock(scope: !106, file: !92, line: 91, column: 9)
!113 = !DILocation(line: 92, column: 38, scope: !111)
!114 = !DILocation(line: 92, column: 60, scope: !111)
!115 = !DILocation(line: 92, column: 56, scope: !111)
!116 = !DILocalVariable(name: "a", arg: 1, scope: !117, file: !92, line: 43, type: !15)
!117 = distinct !DISubprogram(name: "add_f", scope: !92, file: !92, line: 43, type: !118, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!118 = !DISubroutineType(types: !119)
!119 = !{!15, !15, !15}
!120 = !DILocation(line: 0, scope: !117, inlinedAt: !121)
!121 = distinct !DILocation(line: 92, column: 32, scope: !111)
!122 = !DILocalVariable(name: "b", arg: 2, scope: !117, file: !92, line: 43, type: !15)
!123 = !DILocation(line: 44, column: 14, scope: !117, inlinedAt: !121)
!124 = !DILocation(line: 92, column: 17, scope: !111)
!125 = !DILocation(line: 92, column: 30, scope: !111)
!126 = !DILocation(line: 90, column: 28, scope: !108)
!127 = !DILocation(line: 90, column: 23, scope: !108)
!128 = distinct !{!128, !104, !129, !130}
!129 = !DILocation(line: 94, column: 5, scope: !102)
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILocation(line: 95, column: 1, scope: !91)
