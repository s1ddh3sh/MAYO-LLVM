; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\01\01\00", align 1, !dbg !0
@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
@KeccakF_RoundConstants = internal unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 8, !dbg !64
@Rcon = internal unnamed_addr constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !75

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 !dbg !91 {
entry:
  %call = call fastcc i32 @example_mayo(ptr noundef null) #7, !dbg !95
  ret i32 %call, !dbg !96
}

; Function Attrs: nounwind
define internal fastcc range(i32 -1, 1) i32 @example_mayo(ptr noundef %p) unnamed_addr #0 !dbg !97 {
entry:
  %msglen = alloca i32, align 4
  %smlen = alloca i32, align 4
  %epk = alloca [18705 x i64], align 8
  %esk = alloca [18603 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !131, !DIExpression(), !132)
    #dbg_value(i32 32, !133, !DIExpression(), !132)
  store i32 32, ptr %msglen, align 4, !dbg !134
    #dbg_value(i32 32, !133, !DIExpression(), !132)
    #dbg_value(i32 486, !135, !DIExpression(), !132)
  store i32 486, ptr %smlen, align 4, !dbg !136
  %call = call dereferenceable_or_null(1420) ptr @calloc(i32 noundef 1420, i32 noundef 1) #8, !dbg !137
    #dbg_value(ptr %call, !138, !DIExpression(), !132)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #8, !dbg !139
    #dbg_value(ptr %call1, !140, !DIExpression(), !132)
    #dbg_declare(ptr %epk, !141, !DIExpression(), !146)
    #dbg_declare(ptr %esk, !147, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !153
    #dbg_value(i32 %0, !133, !DIExpression(), !132)
  %add2 = add i32 %0, 454, !dbg !154
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #8, !dbg !155
    #dbg_value(ptr %call3, !156, !DIExpression(), !132)
    #dbg_declare(ptr %msg, !157, !DIExpression(), !161)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !161
    #dbg_declare(ptr %msg2, !162, !DIExpression(), !163)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !163
  %call4 = call i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #7, !dbg !164
    #dbg_value(i32 %call4, !165, !DIExpression(), !132)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !166
  br i1 %cmp.not, label %if.end, label %err, !dbg !166

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #7, !dbg !168
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %call11 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #7, !dbg !169
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %1 = load i32, ptr %msglen, align 4, !dbg !170
    #dbg_value(i32 %1, !133, !DIExpression(), !132)
    #dbg_value(ptr %smlen, !135, !DIExpression(DW_OP_deref), !132)
  %call17 = call i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #7, !dbg !171
    #dbg_value(i32 %call17, !165, !DIExpression(), !132)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !172
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !172

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !174
    #dbg_value(i32 %2, !135, !DIExpression(), !132)
    #dbg_value(ptr %msglen, !133, !DIExpression(DW_OP_deref), !132)
  %call23 = call i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #7, !dbg !175
    #dbg_value(i32 %call23, !165, !DIExpression(), !132)
  %cmp24.not = icmp eq i32 %call23, 0, !dbg !176
  br i1 %cmp24.not, label %lor.lhs.false, label %err, !dbg !178

lor.lhs.false:                                    ; preds = %if.end21
  %3 = load i32, ptr %msglen, align 4, !dbg !179
    #dbg_value(i32 %3, !133, !DIExpression(), !132)
  %call27 = call i32 @memcmp(ptr noundef nonnull %msg, ptr noundef nonnull %msg2, i32 noundef %3) #9, !dbg !180
  %tobool.not = icmp eq i32 %call27, 0, !dbg !180
  br i1 %tobool.not, label %if.end30, label %err, !dbg !178

if.end30:                                         ; preds = %lor.lhs.false
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %4 = load i32, ptr %msglen, align 4, !dbg !181
    #dbg_value(i32 %4, !133, !DIExpression(), !132)
  %call32 = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #7, !dbg !182
    #dbg_value(i32 %call32, !165, !DIExpression(), !132)
  %sext = sub nsw i32 0, %call32, !dbg !183
  br label %err, !dbg !183

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !132
    #dbg_value(i32 %res.0, !165, !DIExpression(), !132)
    #dbg_label(!185, !186)
  call void @free(ptr noundef %call) #9, !dbg !187
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 24) #9, !dbg !188
  call void @free(ptr noundef %call3) #9, !dbg !189
  ret i32 %res.0, !dbg !190
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @free(ptr noundef) local_unnamed_addr #4

declare dso_local void @mayo_secure_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !191 {
entry:
    #dbg_value(ptr %p, !222, !DIExpression(), !223)
    #dbg_value(ptr %pk, !224, !DIExpression(), !223)
    #dbg_value(ptr %sk, !225, !DIExpression(), !223)
    #dbg_value(i32 0, !226, !DIExpression(), !223)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #7, !dbg !227
    #dbg_value(i32 %call, !226, !DIExpression(), !223)
    #dbg_label(!228, !229)
  ret i32 %call, !dbg !230
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !231 {
entry:
  %S = alloca [328 x i8], align 1
  %P = alloca [18525 x i64], align 8
  %P3 = alloca [320 x i64], align 8
  %O = alloca [624 x i8], align 1
  %P3_upper = alloca [180 x i64], align 8
    #dbg_value(ptr %p, !232, !DIExpression(), !233)
    #dbg_value(ptr %cpk, !234, !DIExpression(), !233)
    #dbg_value(ptr %csk, !235, !DIExpression(), !233)
    #dbg_value(i32 0, !236, !DIExpression(), !233)
    #dbg_value(ptr %csk, !237, !DIExpression(), !233)
    #dbg_declare(ptr %S, !238, !DIExpression(), !242)
    #dbg_declare(ptr %P, !243, !DIExpression(), !247)
    #dbg_declare(ptr %P3, !248, !DIExpression(), !252)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2560) %P3, i8 0, i32 2560, i1 false), !dbg !252
    #dbg_declare(ptr %O, !253, !DIExpression(), !257)
    #dbg_value(i32 5, !258, !DIExpression(), !233)
    #dbg_value(i32 78, !260, !DIExpression(), !233)
    #dbg_value(i32 78, !261, !DIExpression(), !233)
    #dbg_value(i32 8, !262, !DIExpression(), !233)
    #dbg_value(i32 312, !263, !DIExpression(), !233)
    #dbg_value(i32 15405, !264, !DIExpression(), !233)
    #dbg_value(i32 180, !265, !DIExpression(), !233)
    #dbg_value(i32 16, !266, !DIExpression(), !233)
    #dbg_value(i32 24, !267, !DIExpression(), !233)
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 123240, !dbg !269
    #dbg_value(ptr %add.ptr, !270, !DIExpression(), !233)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #9, !dbg !271
  %cmp.not = icmp eq i32 %call, 0, !dbg !273
  br i1 %cmp.not, label %if.end, label %err, !dbg !273

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #7, !dbg !274
    #dbg_value(ptr %S, !275, !DIExpression(), !233)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !276
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 624) #7, !dbg !277
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #7, !dbg !278
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #7, !dbg !279
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #9, !dbg !280
    #dbg_declare(ptr %P3_upper, !281, !DIExpression(), !285)
  call void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 8) #7, !dbg !286
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !287
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 36, i32 noundef 78) #7, !dbg !288
  br label %err, !dbg !288

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !233
    #dbg_value(i32 %ret.0, !236, !DIExpression(), !233)
    #dbg_label(!289, !290)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 624) #9, !dbg !291
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 24960) #9, !dbg !292
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 2560) #9, !dbg !293
  ret i32 %ret.0, !dbg !294
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483567, -2147483648) %mdeclen) unnamed_addr #0 !dbg !295 {
entry:
    #dbg_value(ptr %m, !298, !DIExpression(), !299)
    #dbg_value(ptr %mdec, !300, !DIExpression(), !299)
    #dbg_value(i32 %mdeclen, !301, !DIExpression(), !299)
    #dbg_value(i32 0, !302, !DIExpression(), !299)
  br label %for.cond, !dbg !303

for.cond:                                         ; preds = %for.body, %entry
  %mdec.addr.0 = phi ptr [ %mdec, %entry ], [ %incdec.ptr5, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !305
    #dbg_value(i32 %i.0, !302, !DIExpression(), !299)
    #dbg_value(ptr %mdec.addr.0, !300, !DIExpression(), !299)
  %div = sdiv i32 %mdeclen, 2, !dbg !306
  %cmp = icmp slt i32 %i.0, %div, !dbg !308
  br i1 %cmp, label %for.body, label %for.end, !dbg !309

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !310
  %0 = load i8, ptr %arrayidx, align 1, !dbg !310
  %1 = and i8 %0, 15, !dbg !312
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 1, !dbg !313
    #dbg_value(ptr %incdec.ptr, !300, !DIExpression(), !299)
  store i8 %1, ptr %mdec.addr.0, align 1, !dbg !314
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !315
  %2 = load i8, ptr %arrayidx2, align 1, !dbg !315
  %3 = lshr i8 %2, 4, !dbg !316
    #dbg_value(ptr %incdec.ptr, !300, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !299)
  store i8 %3, ptr %incdec.ptr, align 1, !dbg !317
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 2, !dbg !318
    #dbg_value(ptr %incdec.ptr5, !300, !DIExpression(), !299)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !319
    #dbg_value(i32 %inc, !302, !DIExpression(), !299)
  br label %for.cond, !dbg !320, !llvm.loop !321

for.end:                                          ; preds = %for.cond
  %mdec.addr.0.lcssa = phi ptr [ %mdec.addr.0, %for.cond ]
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !305
  %4 = and i32 %mdeclen, -2147483647, !dbg !324
  %cmp6 = icmp eq i32 %4, 1, !dbg !324
  br i1 %cmp6, label %if.then, label %if.end, !dbg !324

if.then:                                          ; preds = %for.end
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0.lcssa, !dbg !326
  %5 = load i8, ptr %arrayidx8, align 1, !dbg !326
  %6 = and i8 %5, 15, !dbg !328
    #dbg_value(ptr %mdec.addr.0.lcssa, !300, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !299)
  store i8 %6, ptr %mdec.addr.0.lcssa, align 1, !dbg !329
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !331
}

; Function Attrs: nounwind
define internal fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) unnamed_addr #0 !dbg !332 {
entry:
    #dbg_value(ptr %p, !335, !DIExpression(), !336)
    #dbg_value(ptr %P, !337, !DIExpression(), !336)
    #dbg_value(ptr %seed_pk, !338, !DIExpression(), !336)
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 144495, ptr noundef %seed_pk, i32 noundef 16) #7, !dbg !339
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3705, i32 noundef 78) #7, !dbg !340
  ret void, !dbg !341
}

; Function Attrs: nounwind
define internal fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %O, ptr noundef nonnull %P3) unnamed_addr #0 !dbg !342 {
entry:
    #dbg_value(ptr %p, !347, !DIExpression(), !348)
    #dbg_value(ptr %P1, !349, !DIExpression(), !348)
    #dbg_value(ptr %P2, !350, !DIExpression(), !348)
    #dbg_value(ptr %O, !351, !DIExpression(), !348)
    #dbg_value(ptr %P3, !352, !DIExpression(), !348)
    #dbg_value(i32 5, !353, !DIExpression(), !348)
    #dbg_value(i32 78, !354, !DIExpression(), !348)
    #dbg_value(i32 8, !355, !DIExpression(), !348)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #7, !dbg !356
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 5, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 78, i32 noundef 8, i32 noundef 8) #7, !dbg !357
  ret void, !dbg !358
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !359 {
entry:
    #dbg_value(ptr %in, !362, !DIExpression(), !363)
    #dbg_value(ptr %out, !364, !DIExpression(), !363)
    #dbg_value(i32 36, !365, !DIExpression(), !363)
    #dbg_value(i32 78, !366, !DIExpression(), !363)
    #dbg_value(i32 5, !367, !DIExpression(), !363)
    #dbg_value(ptr %in, !368, !DIExpression(), !363)
    #dbg_value(i32 0, !369, !DIExpression(), !371)
  br label %for.cond, !dbg !372

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !373
    #dbg_value(i32 %i.0, !369, !DIExpression(), !371)
  %exitcond = icmp ne i32 %i.0, 36, !dbg !374
  br i1 %exitcond, label %for.body, label %for.end, !dbg !376

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 39, !dbg !377
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !379
  %mul3 = mul nuw nsw i32 %i.0, 40, !dbg !380
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !381
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 39) #9, !dbg !382
  %inc = add nuw nsw i32 %i.0, 1, !dbg !383
    #dbg_value(i32 %inc, !369, !DIExpression(), !371)
  br label %for.cond, !dbg !384, !llvm.loop !385

for.end:                                          ; preds = %for.cond
  ret void, !dbg !387
}

declare dso_local void @mayo_secure_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @P1_times_O(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %O, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !388 {
entry:
    #dbg_value(ptr %p, !391, !DIExpression(), !392)
    #dbg_value(ptr %P1, !393, !DIExpression(), !392)
    #dbg_value(ptr %O, !394, !DIExpression(), !392)
    #dbg_value(ptr %acc, !395, !DIExpression(), !392)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 5, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 1) #7, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !398 {
entry:
    #dbg_value(i32 5, !401, !DIExpression(), !402)
    #dbg_value(ptr %mat, !403, !DIExpression(), !402)
    #dbg_value(ptr %bs_mat, !404, !DIExpression(), !402)
    #dbg_value(ptr %acc, !405, !DIExpression(), !402)
    #dbg_value(i32 78, !406, !DIExpression(), !402)
    #dbg_value(i32 8, !407, !DIExpression(), !402)
    #dbg_value(i32 8, !408, !DIExpression(), !402)
    #dbg_value(i32 0, !409, !DIExpression(), !411)
  br label %for.cond, !dbg !412

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !413
    #dbg_value(i32 %r.0, !409, !DIExpression(), !411)
  %exitcond2 = icmp ne i32 %r.0, 8, !dbg !414
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !416

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !417

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !420
    #dbg_value(i32 %c.0, !421, !DIExpression(), !422)
  %exitcond1 = icmp ne i32 %c.0, 78, !dbg !423
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !417

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !425

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !428
    #dbg_value(i32 %k.0, !429, !DIExpression(), !430)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !431
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !425

for.body6:                                        ; preds = %for.cond4
  %mul = shl nuw nsw i32 %c.0, 3, !dbg !433
  %add = or disjoint i32 %mul, %k.0, !dbg !435
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !436
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !436
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !437
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !438
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !438
  %1 = load i8, ptr %arrayidx, align 1, !dbg !438
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !439
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !440
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !441
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !441
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !442
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !443
    #dbg_value(i32 %add14, !429, !DIExpression(), !430)
  br label %for.cond4, !dbg !444, !llvm.loop !445

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !447
    #dbg_value(i32 %inc, !421, !DIExpression(), !422)
  br label %for.cond1, !dbg !448, !llvm.loop !449

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !451
    #dbg_value(i32 %inc18, !409, !DIExpression(), !411)
  br label %for.cond, !dbg !452, !llvm.loop !453

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !455
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !456 {
entry:
    #dbg_value(i32 %m_vec_limbs, !460, !DIExpression(), !461)
    #dbg_value(ptr %in, !462, !DIExpression(), !461)
    #dbg_value(i8 %a, !463, !DIExpression(), !461)
    #dbg_value(ptr %acc, !464, !DIExpression(), !461)
  %call = call fastcc i32 @mul_table(i8 noundef zeroext %a) #7, !dbg !465
    #dbg_value(i32 %call, !466, !DIExpression(), !461)
    #dbg_value(i64 1229782938247303441, !467, !DIExpression(), !461)
    #dbg_value(i32 0, !468, !DIExpression(), !470)
  br label %for.cond, !dbg !471

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !472
    #dbg_value(i32 %i.0, !468, !DIExpression(), !470)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !473
  br i1 %exitcond, label %for.body, label %for.end, !dbg !475

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !476
  %0 = load i64, ptr %arrayidx, align 8, !dbg !476
  %and = and i64 %0, 1229782938247303441, !dbg !478
  %and1 = and i32 %call, 255, !dbg !479
  %conv = zext nneg i32 %and1 to i64, !dbg !480
  %mul = mul i64 %and, %conv, !dbg !481
  %shr = lshr i64 %0, 1, !dbg !482
  %and3 = and i64 %shr, 1229782938247303441, !dbg !483
  %shr4 = lshr i32 %call, 8, !dbg !484
  %and5 = and i32 %shr4, 15, !dbg !485
  %conv6 = zext nneg i32 %and5 to i64, !dbg !486
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !487
  %xor = xor i64 %mul, %mul7, !dbg !488
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !489
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !489
  %shr9 = lshr i64 %1, 2, !dbg !490
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !491
  %shr11 = lshr i32 %call, 16, !dbg !492
  %and12 = and i32 %shr11, 15, !dbg !493
  %conv13 = zext nneg i32 %and12 to i64, !dbg !494
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !495
  %xor15 = xor i64 %xor, %mul14, !dbg !496
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !497
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !497
  %shr17 = lshr i64 %2, 3, !dbg !498
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !499
  %shr19 = lshr i32 %call, 24, !dbg !500
  %and20 = and i32 %shr19, 15, !dbg !501
  %conv21 = zext nneg i32 %and20 to i64, !dbg !502
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !503
  %xor23 = xor i64 %xor15, %mul22, !dbg !504
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !505
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !506
  %xor25 = xor i64 %3, %xor23, !dbg !506
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !506
  %inc = add nuw nsw i32 %i.0, 1, !dbg !507
    #dbg_value(i32 %inc, !468, !DIExpression(), !470)
  br label %for.cond, !dbg !508, !llvm.loop !509

for.end:                                          ; preds = %for.cond
  ret void, !dbg !511
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table(i8 noundef zeroext %b) unnamed_addr #0 !dbg !512 {
entry:
    #dbg_value(i8 %b, !516, !DIExpression(), !517)
  %conv = zext i8 %b to i32, !dbg !518
  %mul = mul i32 %conv, 134480385, !dbg !519
    #dbg_value(i32 %mul, !520, !DIExpression(), !517)
    #dbg_value(i32 -252645136, !521, !DIExpression(), !517)
  %and = and i32 %mul, -252645136, !dbg !522
    #dbg_value(i32 %and, !523, !DIExpression(), !517)
  %shr = lshr exact i32 %and, 4, !dbg !524
  %shr1 = lshr exact i32 %and, 3, !dbg !525
  %0 = xor i32 %shr, %shr1, !dbg !526
  %xor2 = xor i32 %0, %mul, !dbg !526
  ret i32 %xor2, !dbg !527
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) unnamed_addr #0 !dbg !528 {
entry:
    #dbg_value(i32 5, !531, !DIExpression(), !532)
    #dbg_value(ptr %bs_mat, !533, !DIExpression(), !532)
    #dbg_value(ptr %mat, !534, !DIExpression(), !532)
    #dbg_value(ptr %acc, !535, !DIExpression(), !532)
    #dbg_value(i32 78, !536, !DIExpression(), !532)
    #dbg_value(i32 78, !537, !DIExpression(), !532)
    #dbg_value(i32 8, !538, !DIExpression(), !532)
    #dbg_value(i32 1, !539, !DIExpression(), !532)
    #dbg_value(i32 0, !540, !DIExpression(), !532)
    #dbg_value(i32 0, !541, !DIExpression(), !543)
  br label %for.cond, !dbg !544

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 78, %entry ], !dbg !545
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !545
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !546
    #dbg_value(i32 %r.0, !541, !DIExpression(), !543)
    #dbg_value(i32 %bs_mat_entries_used.0, !540, !DIExpression(), !532)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !547
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !549

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !550
  br label %for.cond1, !dbg !550

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !532
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !553
    #dbg_value(i32 %c.0, !554, !DIExpression(), !555)
    #dbg_value(i32 %bs_mat_entries_used.1, !540, !DIExpression(), !532)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !556
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !550

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !558

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !561
    #dbg_value(i32 %k.0, !562, !DIExpression(), !563)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !564
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !558

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !566
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !566
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !568
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !569
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !569
  %2 = load i8, ptr %arrayidx, align 1, !dbg !569
  %mul9 = shl nuw nsw i32 %r.0, 3, !dbg !570
  %add10 = or disjoint i32 %mul9, %k.0, !dbg !571
  %add.ptr12.idx = mul nuw nsw i32 %add10, 40, !dbg !572
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !572
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !573
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !574
    #dbg_value(i32 %add13, !562, !DIExpression(), !563)
  br label %for.cond4, !dbg !575, !llvm.loop !576

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !540, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !532)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !578
    #dbg_value(i32 %add14, !540, !DIExpression(), !532)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !579
    #dbg_value(i32 %inc, !554, !DIExpression(), !555)
  br label %for.cond1, !dbg !580, !llvm.loop !581

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !532
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !583
    #dbg_value(i32 %inc18, !541, !DIExpression(), !543)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !584
  br label %for.cond, !dbg !584, !llvm.loop !585

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !587
}

; Function Attrs: nounwind
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 36, 3706) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !588 {
entry:
  %tmp = alloca [5 x i64], align 8
    #dbg_value(ptr %in, !591, !DIExpression(), !592)
    #dbg_value(ptr %out, !593, !DIExpression(), !592)
    #dbg_value(i32 %vecs, !594, !DIExpression(), !592)
    #dbg_value(i32 78, !595, !DIExpression(), !592)
    #dbg_value(i32 5, !596, !DIExpression(), !592)
    #dbg_value(ptr %out, !597, !DIExpression(), !592)
    #dbg_declare(ptr %tmp, !598, !DIExpression(), !602)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %tmp, i8 0, i32 40, i1 false), !dbg !602
    #dbg_value(i32 %vecs, !603, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !605)
  br label %for.cond, !dbg !606

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !603, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !605)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !607
  br i1 %cmp, label %for.body, label %for.end, !dbg !609

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !610
    #dbg_value(i32 %i.0, !603, !DIExpression(), !605)
  %div1 = mul nsw i32 %i.0, 39, !dbg !611
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !613
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 39) #9, !dbg !614
  %mul4 = mul nsw i32 %i.0, 40, !dbg !615
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !616
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 40) #9, !dbg !617
    #dbg_value(i32 %i.0, !603, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !605)
  br label %for.cond, !dbg !618, !llvm.loop !619

for.end:                                          ; preds = %for.cond
  ret void, !dbg !621
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !622 {
entry:
  %S = alloca [328 x i8], align 1
    #dbg_value(ptr %p, !625, !DIExpression(), !626)
    #dbg_value(ptr %csk, !627, !DIExpression(), !626)
    #dbg_value(ptr %sk, !628, !DIExpression(), !626)
    #dbg_value(i32 0, !629, !DIExpression(), !626)
    #dbg_declare(ptr %S, !630, !DIExpression(), !631)
    #dbg_value(ptr %sk, !632, !DIExpression(), !626)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !633
    #dbg_value(ptr %add.ptr1, !634, !DIExpression(), !626)
    #dbg_value(i32 8, !635, !DIExpression(), !626)
    #dbg_value(i32 78, !636, !DIExpression(), !626)
    #dbg_value(i32 312, !637, !DIExpression(), !626)
    #dbg_value(i32 16, !638, !DIExpression(), !626)
    #dbg_value(i32 24, !639, !DIExpression(), !626)
    #dbg_value(ptr %csk, !640, !DIExpression(), !626)
    #dbg_value(ptr %S, !641, !DIExpression(), !626)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #7, !dbg !642
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !643
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 624) #7, !dbg !644
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #7, !dbg !645
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !646
    #dbg_value(ptr %add.ptr5, !647, !DIExpression(), !626)
    #dbg_value(ptr %sk, !648, !DIExpression(), !626)
    #dbg_value(ptr %add.ptr5, !649, !DIExpression(), !626)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #7, !dbg !650
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 328) #9, !dbg !651
  ret i32 0, !dbg !652
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !653 {
entry:
    #dbg_value(ptr %p, !654, !DIExpression(), !655)
    #dbg_value(ptr %P1, !656, !DIExpression(), !655)
    #dbg_value(ptr %O, !657, !DIExpression(), !655)
    #dbg_value(ptr %acc, !658, !DIExpression(), !655)
    #dbg_value(i32 8, !659, !DIExpression(), !655)
    #dbg_value(i32 78, !660, !DIExpression(), !655)
    #dbg_value(i32 5, !661, !DIExpression(), !655)
    #dbg_value(i32 0, !662, !DIExpression(), !655)
    #dbg_value(i32 0, !663, !DIExpression(), !665)
  br label %for.cond, !dbg !666

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 78, %entry ], !dbg !667
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !667
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !668
    #dbg_value(i32 %r.0, !663, !DIExpression(), !665)
    #dbg_value(i32 %bs_mat_entries_used.0, !662, !DIExpression(), !655)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !669
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !671

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !672
  br label %for.cond1, !dbg !672

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !655
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !675
    #dbg_value(i32 %c.0, !676, !DIExpression(), !677)
    #dbg_value(i32 %bs_mat_entries_used.1, !662, !DIExpression(), !655)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !678
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !672

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !680
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !680

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !683

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !685
    #dbg_value(i32 %k.0, !686, !DIExpression(), !687)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !688
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !683

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !690
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !690
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !692
  %add9 = or disjoint i32 %mul8, %k.0, !dbg !693
  %arrayidx = getelementptr inbounds nuw i8, ptr %O, i32 %add9, !dbg !694
  %1 = load i8, ptr %arrayidx, align 1, !dbg !694
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !695
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !696
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !697
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !697
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #7, !dbg !698
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !699
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !699
  %mul16 = shl nuw nsw i32 %r.0, 3, !dbg !700
  %add17 = or disjoint i32 %mul16, %k.0, !dbg !701
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %O, i32 %add17, !dbg !702
  %2 = load i8, ptr %arrayidx18, align 1, !dbg !702
  %mul19 = shl nuw nsw i32 %c.0, 3, !dbg !703
  %add20 = or disjoint i32 %mul19, %k.0, !dbg !704
  %add.ptr22.idx = mul nuw nsw i32 %add20, 40, !dbg !705
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !705
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr15, i8 noundef zeroext %2, ptr noundef %add.ptr22) #7, !dbg !706
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !707
    #dbg_value(i32 %add23, !686, !DIExpression(), !687)
  br label %for.cond5, !dbg !708, !llvm.loop !709

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !711

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !711
    #dbg_value(i32 %bs_mat_entries_used.2, !662, !DIExpression(), !655)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !712
    #dbg_value(i32 %inc, !676, !DIExpression(), !677)
  br label %for.cond1, !dbg !713, !llvm.loop !714

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !655
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !716
    #dbg_value(i32 %inc28, !663, !DIExpression(), !665)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !717
  br label %for.cond, !dbg !717, !llvm.loop !718

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !720
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !721 {
entry:
  %tenc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [78 x i8], align 1
  %salt = alloca [24 x i8], align 1
  %V = alloca [430 x i8], align 1
  %Vdec = alloca [780 x i8], align 1
  %A = alloca [6480 x i8], align 1
  %x = alloca [860 x i8], align 1
  %r = alloca [81 x i8], align 1
  %s = alloca [860 x i8], align 1
  %sk = alloca [18603 x i64], align 32
  %Ox = alloca [78 x i8], align 1
  %tmp = alloca [81 x i8], align 1
  %Mtmp = alloca [400 x i64], align 8
    #dbg_value(ptr %p, !725, !DIExpression(), !726)
    #dbg_value(ptr %sig, !727, !DIExpression(), !726)
    #dbg_value(ptr %siglen, !728, !DIExpression(), !726)
    #dbg_value(ptr %m, !729, !DIExpression(), !726)
    #dbg_value(i32 %mlen, !730, !DIExpression(), !726)
    #dbg_value(ptr %csk, !731, !DIExpression(), !726)
    #dbg_value(i32 0, !732, !DIExpression(), !726)
    #dbg_declare(ptr %tenc, !733, !DIExpression(), !737)
    #dbg_declare(ptr %t, !738, !DIExpression(), !742)
    #dbg_declare(ptr %y, !743, !DIExpression(), !744)
    #dbg_declare(ptr %salt, !745, !DIExpression(), !747)
    #dbg_declare(ptr %V, !748, !DIExpression(), !752)
    #dbg_declare(ptr %Vdec, !753, !DIExpression(), !757)
    #dbg_declare(ptr %A, !758, !DIExpression(), !762)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6480) %A, i8 0, i32 6480, i1 false), !dbg !762
    #dbg_declare(ptr %x, !763, !DIExpression(), !767)
    #dbg_declare(ptr %r, !768, !DIExpression(), !772)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(81) %r, i8 0, i32 81, i1 false), !dbg !772
    #dbg_declare(ptr %s, !773, !DIExpression(), !774)
    #dbg_declare(ptr %sk, !775, !DIExpression(), !776)
    #dbg_declare(ptr %Ox, !777, !DIExpression(), !778)
    #dbg_declare(ptr %tmp, !779, !DIExpression(), !780)
    #dbg_value(i32 78, !781, !DIExpression(), !726)
    #dbg_value(i32 86, !782, !DIExpression(), !726)
    #dbg_value(i32 8, !783, !DIExpression(), !726)
    #dbg_value(i32 10, !784, !DIExpression(), !726)
    #dbg_value(i32 78, !785, !DIExpression(), !726)
    #dbg_value(i32 39, !786, !DIExpression(), !726)
    #dbg_value(i32 39, !787, !DIExpression(), !726)
    #dbg_value(i32 40, !788, !DIExpression(), !726)
    #dbg_value(i32 454, !789, !DIExpression(), !726)
    #dbg_value(i32 81, !790, !DIExpression(), !726)
    #dbg_value(i32 32, !791, !DIExpression(), !726)
    #dbg_value(i32 24, !792, !DIExpression(), !726)
    #dbg_value(i32 24, !793, !DIExpression(), !726)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #7, !dbg !794
    #dbg_value(i32 0, !732, !DIExpression(), !726)
    #dbg_value(ptr %csk, !795, !DIExpression(), !726)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #7, !dbg !796
    #dbg_value(ptr %sk, !797, !DIExpression(), !726)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !798
    #dbg_value(ptr %add.ptr, !799, !DIExpression(), !726)
    #dbg_declare(ptr %Mtmp, !800, !DIExpression(), !804)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(3200) %Mtmp, i8 0, i32 3200, i1 false), !dbg !804
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !805
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #9, !dbg !807
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !808
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !808

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !809
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #9, !dbg !810
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #7, !dbg !811
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !812
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #9, !dbg !813
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !814
    #dbg_value(ptr %add.ptr24, !815, !DIExpression(), !726)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #7, !dbg !816
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 78) #7, !dbg !817
  store i8 0, ptr %add.ptr24, align 1, !dbg !818
  call void @shake256(ptr noundef nonnull %V, i32 noundef 430, ptr noundef nonnull %tmp, i32 noundef 81) #7, !dbg !819
    #dbg_value(i32 0, !820, !DIExpression(), !822)
  br label %for.cond, !dbg !823

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !824
    #dbg_value(i32 %i.0, !820, !DIExpression(), !822)
  %exitcond = icmp ne i32 %i.0, 10, !dbg !825
  br i1 %exitcond, label %for.body, label %for.end, !dbg !827

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 39, !dbg !828
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !830
  %mul37 = mul nuw nsw i32 %i.0, 78, !dbg !831
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !832
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 78) #7, !dbg !833
  %inc = add nuw nsw i32 %i.0, 1, !dbg !834
    #dbg_value(i32 %inc, !820, !DIExpression(), !822)
  br label %for.cond, !dbg !835, !llvm.loop !836

for.end:                                          ; preds = %for.cond
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #7, !dbg !838
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #7, !dbg !839
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #7, !dbg !840
    #dbg_value(i32 0, !841, !DIExpression(), !843)
  br label %for.cond48, !dbg !844

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !845
    #dbg_value(i32 %i47.0, !841, !DIExpression(), !843)
  %exitcond1 = icmp ne i32 %i47.0, 78, !dbg !846
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !848

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 81, !dbg !849
  %sub = add nuw nsw i32 %0, 80, !dbg !851
  %arrayidx = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub, !dbg !852
  store i8 0, ptr %arrayidx, align 1, !dbg !853
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !854
    #dbg_value(i32 %inc53, !841, !DIExpression(), !843)
  br label %for.cond48, !dbg !855, !llvm.loop !856

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 390, !dbg !858
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 80) #7, !dbg !859
  %call62 = call i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 10, i32 noundef 8, i32 noundef 78, i32 noundef 81) #7, !dbg !860
  %tobool.not = icmp eq i32 %call62, 0, !dbg !860
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !860

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 3200) #9, !dbg !862
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 6480) #9, !dbg !864
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !865, !DIExpression(), !867)
  br label %for.cond70, !dbg !868

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !869
    #dbg_value(i32 %i69.0, !865, !DIExpression(), !867)
  %exitcond2 = icmp ne i32 %i69.0, 10, !dbg !870
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !872

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 78, !dbg !873
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !875
    #dbg_value(ptr %add.ptr75, !876, !DIExpression(), !726)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !877
  %mul80 = shl nuw nsw i32 %i69.0, 3, !dbg !878
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !879
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 8, i32 noundef 78, i32 noundef 1) #7, !dbg !880
  %mul85 = mul nuw nsw i32 %i69.0, 86, !dbg !881
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !882
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 78, i32 noundef 1) #7, !dbg !883
  %mul88 = mul nuw nsw i32 %i69.0, 86, !dbg !884
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !885
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 78, !dbg !886
  %mul92 = shl nuw nsw i32 %i69.0, 3, !dbg !887
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !888
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 8) #9, !dbg !889
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !890
    #dbg_value(i32 %inc96, !865, !DIExpression(), !867)
  br label %for.cond70, !dbg !891, !llvm.loop !892

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 860) #7, !dbg !894
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !895
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 24) #9, !dbg !896
  store i32 454, ptr %siglen, align 4, !dbg !897
  br label %err, !dbg !898

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !726
    #dbg_value(i32 %ret.0, !732, !DIExpression(), !726)
    #dbg_label(!899, !900)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 430) #9, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 780) #9, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 6480) #9, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 81) #9, !dbg !904
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !905
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 624) #9, !dbg !906
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 148824) #9, !dbg !907
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 78) #9, !dbg !908
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #9, !dbg !909
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 3200) #9, !dbg !910
  ret i32 %ret.0, !dbg !911
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !912 {
entry:
  %Pv = alloca [3900 x i64], align 8
    #dbg_value(ptr %p, !915, !DIExpression(), !916)
    #dbg_value(ptr %Vdec, !917, !DIExpression(), !916)
    #dbg_value(ptr %L, !918, !DIExpression(), !916)
    #dbg_value(ptr %P1, !919, !DIExpression(), !916)
    #dbg_value(ptr %VL, !920, !DIExpression(), !916)
    #dbg_value(ptr %VP1V, !921, !DIExpression(), !916)
    #dbg_value(i32 10, !922, !DIExpression(), !916)
    #dbg_value(i32 78, !923, !DIExpression(), !916)
    #dbg_value(i32 8, !924, !DIExpression(), !916)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 10, i32 noundef 78, i32 noundef 8) #7, !dbg !925
    #dbg_declare(ptr %Pv, !926, !DIExpression(), !930)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(31200) %Pv, i8 0, i32 31200, i1 false), !dbg !930
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #7, !dbg !931
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 10, i32 noundef 78, i32 noundef 10) #7, !dbg !932
  ret void, !dbg !933
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !934 {
entry:
  %temp = alloca [5 x i64], align 8
    #dbg_value(ptr %p, !937, !DIExpression(), !938)
    #dbg_value(ptr %vPv, !939, !DIExpression(), !938)
    #dbg_value(ptr %t, !940, !DIExpression(), !938)
    #dbg_value(ptr %y, !941, !DIExpression(), !938)
    #dbg_value(i32 52, !942, !DIExpression(), !938)
    #dbg_value(i32 5, !944, !DIExpression(), !938)
    #dbg_value(i64 1, !945, !DIExpression(), !948)
    #dbg_value(i64 72057594037927936, !945, !DIExpression(), !948)
    #dbg_value(i64 72057594037927935, !945, !DIExpression(), !948)
    #dbg_value(i32 0, !949, !DIExpression(), !951)
  br label %for.cond, !dbg !952

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !953
    #dbg_value(i32 %i.0, !949, !DIExpression(), !951)
  %exitcond = icmp ne i32 %i.0, 100, !dbg !954
  br i1 %exitcond, label %for.body, label %for.end, !dbg !956

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 40, !dbg !957
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !957
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !957
  %1 = load i64, ptr %arrayidx, align 8, !dbg !959
  %and = and i64 %1, 72057594037927935, !dbg !959
  store i64 %and, ptr %arrayidx, align 8, !dbg !959
  %inc = add nuw nsw i32 %i.0, 1, !dbg !960
    #dbg_value(i32 %inc, !949, !DIExpression(), !951)
  br label %for.cond, !dbg !961, !llvm.loop !962

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !964, !DIExpression(), !965)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %temp, i8 0, i32 40, i1 false), !dbg !965
    #dbg_value(ptr %temp, !966, !DIExpression(), !938)
    #dbg_value(i32 9, !967, !DIExpression(), !969)
  br label %for.cond3, !dbg !970

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 9, %for.end ], [ %dec78, %for.inc77 ], !dbg !971
    #dbg_value(i32 %i2.0, !967, !DIExpression(), !969)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !972
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !974

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !975

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !978

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !980
    #dbg_value(i32 %j.0, !981, !DIExpression(), !982)
  %exitcond10 = icmp ne i32 %j.0, 10, !dbg !983
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !975

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !985
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !985
  %shr = lshr i64 %2, 52, !dbg !987
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !988
    #dbg_value(i8 %rem1, !989, !DIExpression(), !990)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !991
  %shl11 = shl i64 %2, 4, !dbg !992
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !992
    #dbg_value(i32 3, !993, !DIExpression(), !995)
  br label %for.cond12, !dbg !996

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 3, %for.body8 ], [ %dec, %for.body15 ], !dbg !997
    #dbg_value(i32 %k.0, !993, !DIExpression(), !995)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !998
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1000

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !988
  br label %for.cond24, !dbg !1001

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1003
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !1003
  %shr17 = lshr i64 %3, 60, !dbg !1005
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1006
  %arrayidx19 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1007
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1008
  %xor = xor i64 %4, %shr17, !dbg !1008
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1008
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1009
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !1010
  %shl21 = shl i64 %5, 4, !dbg !1010
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1010
  %dec = add nsw i32 %k.0, -1, !dbg !1011
    #dbg_value(i32 %dec, !993, !DIExpression(), !995)
  br label %for.cond12, !dbg !1012, !llvm.loop !1013

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1015
    #dbg_value(i32 %jj.0, !1016, !DIExpression(), !1017)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !1018
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !1001

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1020

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1022
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1025
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1025

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1026
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1026
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #7, !dbg !1028
  %div = lshr exact i32 %jj.0, 1, !dbg !1029
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1030
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1031
  %xor356 = xor i8 %7, %call, !dbg !1031
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1031
  br label %for.inc46, !dbg !1032

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1033
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1033
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #7, !dbg !1035
  %shl40 = shl nuw i8 %call38, 4, !dbg !1036
  %div415 = lshr i32 %jj.0, 1, !dbg !1037
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1038
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1039
  %xor44 = xor i8 %shl40, %9, !dbg !1039
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1039
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1040
    #dbg_value(i32 %inc47, !1016, !DIExpression(), !1017)
  br label %for.cond24, !dbg !1041, !llvm.loop !1042

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1044
    #dbg_value(i32 %k49.0, !1045, !DIExpression(), !1046)
  %exitcond9 = icmp ne i32 %k49.0, 5, !dbg !1047
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1020

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 10, !dbg !1049
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1051
  %.idx = mul nsw i32 %add55, 40, !dbg !1052
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1052
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1052
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1052
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1053
  %mul62 = mul nuw nsw i32 %j.0, 10, !dbg !1054
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1055
  %.idx4 = mul nsw i32 %add63, 40, !dbg !1056
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1056
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1056
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1056
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1057
  %xor68 = xor i64 %11, %mul67, !dbg !1058
  %arrayidx69 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1059
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1060
  %xor70 = xor i64 %14, %xor68, !dbg !1060
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1060
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1061
    #dbg_value(i32 %inc72, !1045, !DIExpression(), !1046)
  br label %for.cond50, !dbg !1062, !llvm.loop !1063

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1065
    #dbg_value(i32 %inc75, !981, !DIExpression(), !982)
  br label %for.cond6, !dbg !1066, !llvm.loop !1067

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1069
    #dbg_value(i32 %dec78, !967, !DIExpression(), !969)
  br label %for.cond3, !dbg !1070, !llvm.loop !1071

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1073
    #dbg_value(i32 %i80.0, !1074, !DIExpression(), !1075)
  %cmp82 = icmp samesign ult i32 %i80.0, 78, !dbg !1076
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !978

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1078
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1078
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1080
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1081
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1081
  %17 = and i8 %16, 15, !dbg !1082
  %xor912 = xor i8 %15, %17, !dbg !1083
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1084
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1085
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1086
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1087
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1087
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1088
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1089
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1089
  %20 = lshr i8 %19, 4, !dbg !1090
  %xor1013 = xor i8 %18, %20, !dbg !1091
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1092
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1093
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1094
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1095
    #dbg_value(i32 %add106, !1074, !DIExpression(), !1075)
  br label %for.cond81, !dbg !1096, !llvm.loop !1097

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1099
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1100 {
entry:
  %A = alloca [800 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1103, !DIExpression(), !1104)
    #dbg_value(ptr %VtL, !1105, !DIExpression(), !1104)
    #dbg_value(ptr %A_out, !1106, !DIExpression(), !1104)
    #dbg_value(i32 0, !1107, !DIExpression(), !1104)
    #dbg_value(i32 0, !1108, !DIExpression(), !1104)
    #dbg_value(i32 5, !1109, !DIExpression(), !1104)
    #dbg_declare(ptr %A, !1110, !DIExpression(), !1114)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6400) %A, i8 0, i32 6400, i1 false), !dbg !1114
    #dbg_value(i32 80, !1115, !DIExpression(), !1104)
    #dbg_value(i64 1, !1116, !DIExpression(), !1119)
    #dbg_value(i64 72057594037927936, !1116, !DIExpression(), !1119)
    #dbg_value(i64 72057594037927935, !1116, !DIExpression(), !1119)
    #dbg_value(i32 0, !1120, !DIExpression(), !1122)
  br label %for.cond, !dbg !1123

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1124
    #dbg_value(i32 %i.0, !1120, !DIExpression(), !1122)
  %exitcond = icmp ne i32 %i.0, 80, !dbg !1125
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1127

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1128

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 40, !dbg !1130
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1130
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1130
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1132
  %and = and i64 %1, 72057594037927935, !dbg !1132
  store i64 %and, ptr %arrayidx, align 8, !dbg !1132
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1133
    #dbg_value(i32 %inc, !1120, !DIExpression(), !1122)
  br label %for.cond, !dbg !1134, !llvm.loop !1135

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1137
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1138
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1139
    #dbg_value(i32 %bits_to_shift.0, !1107, !DIExpression(), !1104)
    #dbg_value(i32 %words_to_shift.0, !1108, !DIExpression(), !1104)
    #dbg_value(i32 %i2.0, !1140, !DIExpression(), !1141)
  %exitcond8 = icmp ne i32 %i2.0, 10, !dbg !1142
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1128

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1144

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1147

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 9, %for.cond6.preheader ], !dbg !1149
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1104
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1104
    #dbg_value(i32 %bits_to_shift.1, !1107, !DIExpression(), !1104)
    #dbg_value(i32 %words_to_shift.1, !1108, !DIExpression(), !1104)
    #dbg_value(i32 %j.0, !1150, !DIExpression(), !1151)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1152
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1144

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 320, !dbg !1154
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1154
    #dbg_value(ptr %add.ptr, !1156, !DIExpression(), !1104)
    #dbg_value(i32 0, !1157, !DIExpression(), !1159)
  br label %for.cond11, !dbg !1160

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1161
    #dbg_value(i32 %c.0, !1157, !DIExpression(), !1159)
  %exitcond5 = icmp ne i32 %c.0, 8, !dbg !1162
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1164

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1165

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1168
    #dbg_value(i32 %k.0, !1169, !DIExpression(), !1170)
  %exitcond4 = icmp ne i32 %k.0, 5, !dbg !1171
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1165

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1173
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 40, !dbg !1173
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1173
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1173
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1175
  %shl20 = shl i64 %3, %sh_prom, !dbg !1175
  %mul21 = shl nuw nsw i32 %i2.0, 3, !dbg !1176
  %add22 = or disjoint i32 %mul21, %c.0, !dbg !1177
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1178
  %mul24 = mul i32 %add23, 80, !dbg !1179
  %add25 = add i32 %add22, %mul24, !dbg !1180
  %arrayidx26 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25, !dbg !1181
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1182
  %xor = xor i64 %4, %shl20, !dbg !1182
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1182
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1183
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1183

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1185
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 40, !dbg !1185
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1185
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1185
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1187
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1188
  %shr = lshr i64 %6, %sh_prom32, !dbg !1188
  %mul33 = shl nuw nsw i32 %i2.0, 3, !dbg !1189
  %add34 = or disjoint i32 %mul33, %c.0, !dbg !1190
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1191
  %7 = mul i32 %add35, 80, !dbg !1192
  %mul37 = add i32 %7, 80, !dbg !1192
  %add38 = add i32 %add34, %mul37, !dbg !1193
  %arrayidx39 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38, !dbg !1194
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1195
  %xor40 = xor i64 %8, %shr, !dbg !1195
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1195
  br label %for.inc41, !dbg !1196

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1197
    #dbg_value(i32 %inc42, !1169, !DIExpression(), !1170)
  br label %for.cond14, !dbg !1198, !llvm.loop !1199

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1201
    #dbg_value(i32 %inc45, !1157, !DIExpression(), !1159)
  br label %for.cond11, !dbg !1202, !llvm.loop !1203

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1205
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1205

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 320, !dbg !1207
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1207
    #dbg_value(ptr %add.ptr51, !1209, !DIExpression(), !1104)
    #dbg_value(i32 0, !1210, !DIExpression(), !1212)
  br label %for.cond53, !dbg !1213

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1214
    #dbg_value(i32 %c52.0, !1210, !DIExpression(), !1212)
  %exitcond7 = icmp ne i32 %c52.0, 8, !dbg !1215
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1217

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1218

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1221
    #dbg_value(i32 %k56.0, !1222, !DIExpression(), !1223)
  %exitcond6 = icmp ne i32 %k56.0, 5, !dbg !1224
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1218

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1226
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1226
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1226
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1226
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1228
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1228
  %mul65 = shl nsw i32 %j.0, 3, !dbg !1229
  %add66 = or disjoint i32 %mul65, %c52.0, !dbg !1230
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1231
  %mul68 = mul i32 %add67, 80, !dbg !1232
  %add69 = add i32 %add66, %mul68, !dbg !1233
  %arrayidx70 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69, !dbg !1234
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1235
  %xor71 = xor i64 %11, %shl64, !dbg !1235
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1235
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1236
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1236

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1238
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1238
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1238
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1238
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1240
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1241
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1241
  %mul80 = shl nsw i32 %j.0, 3, !dbg !1242
  %add81 = or disjoint i32 %mul80, %c52.0, !dbg !1243
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1244
  %14 = mul i32 %add82, 80, !dbg !1245
  %mul84 = add i32 %14, 80, !dbg !1245
  %add85 = add i32 %add81, %mul84, !dbg !1246
  %arrayidx86 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85, !dbg !1247
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1248
  %xor87 = xor i64 %15, %shr79, !dbg !1248
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1248
  br label %for.inc89, !dbg !1249

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1250
    #dbg_value(i32 %inc90, !1222, !DIExpression(), !1223)
  br label %for.cond57, !dbg !1251, !llvm.loop !1252

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1254
    #dbg_value(i32 %inc93, !1210, !DIExpression(), !1212)
  br label %for.cond53, !dbg !1255, !llvm.loop !1256

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1258

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1258
    #dbg_value(i32 %add96, !1107, !DIExpression(), !1104)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1259
  %inc99 = zext i1 %cmp97 to i32, !dbg !1259
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1259
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1259
    #dbg_value(i32 %spec.select3, !1107, !DIExpression(), !1104)
    #dbg_value(i32 %spec.select, !1108, !DIExpression(), !1104)
  %dec = add nsw i32 %j.0, -1, !dbg !1261
    #dbg_value(i32 %dec, !1150, !DIExpression(), !1151)
  br label %for.cond6, !dbg !1262, !llvm.loop !1263

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1104
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1104
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1265
    #dbg_value(i32 %inc104, !1140, !DIExpression(), !1141)
  br label %for.cond3, !dbg !1266, !llvm.loop !1267

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1269
    #dbg_value(i32 %c106.0, !1270, !DIExpression(), !1271)
  %cmp109 = icmp samesign ult i32 %c106.0, 720, !dbg !1272
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1147

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1274
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #7, !dbg !1276
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1277
    #dbg_value(i32 %add113, !1270, !DIExpression(), !1271)
  br label %for.cond107, !dbg !1278, !llvm.loop !1279

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1281, !DIExpression(), !1285)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1285
    #dbg_value(i32 0, !1286, !DIExpression(), !1288)
  br label %for.cond116, !dbg !1289

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1290
    #dbg_value(i32 %i115.0, !1286, !DIExpression(), !1288)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1291
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1293

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1294

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1296
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1296
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #7, !dbg !1298
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1299
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1300
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1301
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #7, !dbg !1302
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1303
  %add125 = or disjoint i32 %mul124, 1, !dbg !1304
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1305
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1306
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1307
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1307
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #7, !dbg !1308
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1309
  %add130 = or disjoint i32 %mul129, 2, !dbg !1310
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1311
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1312
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1313
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1313
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #7, !dbg !1314
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1315
  %add135 = or disjoint i32 %mul134, 3, !dbg !1316
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1317
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1318
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1319
    #dbg_value(i32 %inc138, !1286, !DIExpression(), !1288)
  br label %for.cond116, !dbg !1320, !llvm.loop !1321

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1323
    #dbg_value(i32 %c140.0, !1324, !DIExpression(), !1325)
  %cmp142 = icmp samesign ult i32 %c140.0, 80, !dbg !1326
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1294

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1328

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1331

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 78, %for.cond144.preheader ], !dbg !1333
    #dbg_value(i32 %r.0, !1334, !DIExpression(), !1335)
  %exitcond11 = icmp ne i32 %r.0, 133, !dbg !1336
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1328

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1338
  %mul147 = mul nuw nsw i32 %div1, 80, !dbg !1340
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1341
  %rem = and i32 %r.0, 15, !dbg !1342
  %add149 = or disjoint i32 %add148, %rem, !dbg !1343
    #dbg_value(i32 %add149, !1344, !DIExpression(), !1345)
  %arrayidx150 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1346
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1346
  %and151 = and i64 %19, 1229782938247303441, !dbg !1347
    #dbg_value(i64 %and151, !1348, !DIExpression(), !1345)
  %shr153 = lshr i64 %19, 1, !dbg !1349
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1350
    #dbg_value(i64 %and154, !1351, !DIExpression(), !1345)
  %shr156 = lshr i64 %19, 2, !dbg !1352
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1353
    #dbg_value(i64 %and157, !1354, !DIExpression(), !1345)
  %arrayidx158 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1355
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1355
  %shr159 = lshr i64 %20, 3, !dbg !1356
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1357
    #dbg_value(i64 %and160, !1358, !DIExpression(), !1345)
    #dbg_value(i32 0, !1359, !DIExpression(), !1361)
  br label %for.cond161, !dbg !1362

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1363
    #dbg_value(i32 %t.0, !1359, !DIExpression(), !1361)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1364
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1366

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1367
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1369
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1369
  %conv = zext i8 %21 to i64, !dbg !1369
  %mul167 = mul i64 %and151, %conv, !dbg !1370
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1371
  %add169 = or disjoint i32 %mul168, 1, !dbg !1372
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1373
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1373
  %conv171 = zext i8 %22 to i64, !dbg !1373
  %mul172 = mul i64 %and154, %conv171, !dbg !1374
  %xor173 = xor i64 %mul167, %mul172, !dbg !1375
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1376
  %add175 = or disjoint i32 %mul174, 2, !dbg !1377
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1378
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1378
  %conv177 = zext i8 %23 to i64, !dbg !1378
  %mul178 = mul i64 %and157, %conv177, !dbg !1379
  %xor179 = xor i64 %xor173, %mul178, !dbg !1380
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1381
  %add181 = or disjoint i32 %mul180, 3, !dbg !1382
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1383
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1383
  %conv183 = zext i8 %24 to i64, !dbg !1383
  %mul184 = mul i64 %and160, %conv183, !dbg !1384
  %xor185 = xor i64 %xor179, %mul184, !dbg !1385
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1386
  %sub187 = add nsw i32 %add186, -78, !dbg !1387
  %div1882 = lshr i32 %sub187, 4, !dbg !1388
  %mul189 = mul i32 %div1882, 80, !dbg !1389
  %add190 = add i32 %mul189, %c140.0, !dbg !1390
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1391
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1392
  %rem193 = and i32 %sub192, 15, !dbg !1393
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1394
  %arrayidx195 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194, !dbg !1395
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1396
  %xor196 = xor i64 %25, %xor185, !dbg !1396
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1396
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1397
    #dbg_value(i32 %inc198, !1359, !DIExpression(), !1361)
  br label %for.cond161, !dbg !1398, !llvm.loop !1399

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1401
    #dbg_value(i32 %inc201, !1334, !DIExpression(), !1335)
  br label %for.cond144, !dbg !1402, !llvm.loop !1403

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1405
    #dbg_value(i32 %add204, !1324, !DIExpression(), !1325)
  br label %for.cond141, !dbg !1406, !llvm.loop !1407

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 78, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1409
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1409
    #dbg_value(i32 %r206.0, !1410, !DIExpression(), !1411)
  %cmp208 = icmp samesign ult i32 %r206.0, 78, !dbg !1412
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1331

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1414

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1417
    #dbg_value(i32 %c211.0, !1418, !DIExpression(), !1419)
  %cmp213 = icmp samesign ult i32 %c211.0, 80, !dbg !1420
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1414

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1422

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1425
    #dbg_value(i32 %i216.0, !1426, !DIExpression(), !1427)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1428
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1422

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 5, !dbg !1430
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1432
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1433
  %arrayidx226 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225, !dbg !1434
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1435
  %mul228 = mul nuw nsw i32 %add227, 81, !dbg !1436
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1437
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1438
  %cmp232 = icmp samesign ult i32 %c211.0, 64, !dbg !1439
  %sub234 = sub nuw nsw i32 80, %c211.0, !dbg !1439
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1439
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #7, !dbg !1440
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1441
    #dbg_value(i32 %inc236, !1426, !DIExpression(), !1427)
  br label %for.cond217, !dbg !1442, !llvm.loop !1443

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1445
    #dbg_value(i32 %add239, !1418, !DIExpression(), !1419)
  br label %for.cond212, !dbg !1446, !llvm.loop !1447

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1449
    #dbg_value(i32 %add242, !1410, !DIExpression(), !1411)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1450
  br label %for.cond207, !dbg !1450, !llvm.loop !1451

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1453
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1454 {
entry:
    #dbg_value(ptr %a, !1457, !DIExpression(), !1458)
    #dbg_value(ptr %b, !1459, !DIExpression(), !1458)
    #dbg_value(ptr %c, !1460, !DIExpression(), !1458)
    #dbg_value(i32 8, !1461, !DIExpression(), !1458)
    #dbg_value(i32 78, !1462, !DIExpression(), !1458)
    #dbg_value(i32 1, !1463, !DIExpression(), !1458)
    #dbg_value(i32 0, !1464, !DIExpression(), !1466)
  br label %for.cond, !dbg !1467

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1468
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1457, !DIExpression(), !1458)
    #dbg_value(ptr %c.addr.0, !1460, !DIExpression(), !1458)
    #dbg_value(i32 %i.0, !1464, !DIExpression(), !1466)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1469
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1471

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1472

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1475
    #dbg_value(i32 poison, !1476, !DIExpression(), !1477)
    #dbg_value(ptr %c.addr.1, !1460, !DIExpression(), !1458)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1472

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 8, i32 noundef 1) #7, !dbg !1478
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1481
    #dbg_value(i32 1, !1476, !DIExpression(), !1477)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1482
    #dbg_value(ptr %incdec.ptr, !1460, !DIExpression(), !1458)
  br label %for.cond1, !dbg !1483, !llvm.loop !1484

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1486
    #dbg_value(i32 %inc5, !1464, !DIExpression(), !1466)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 8, !dbg !1487
    #dbg_value(ptr %add.ptr6, !1457, !DIExpression(), !1458)
  br label %for.cond, !dbg !1488, !llvm.loop !1489

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1491
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1492 {
entry:
    #dbg_value(ptr %a, !1495, !DIExpression(), !1496)
    #dbg_value(ptr %b, !1497, !DIExpression(), !1496)
    #dbg_value(ptr %c, !1498, !DIExpression(), !1496)
    #dbg_value(i32 78, !1499, !DIExpression(), !1496)
    #dbg_value(i32 1, !1500, !DIExpression(), !1496)
    #dbg_value(i32 0, !1501, !DIExpression(), !1503)
  br label %for.cond, !dbg !1504

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1505
    #dbg_value(i32 %i.0, !1501, !DIExpression(), !1503)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1506
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1508

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1509, !DIExpression(), !1512)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1513
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1516
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1517
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1518
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !1519
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1520
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1521
    #dbg_value(i32 1, !1509, !DIExpression(), !1512)
    #dbg_value(i32 poison, !1509, !DIExpression(), !1512)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1522
    #dbg_value(i32 %inc12, !1501, !DIExpression(), !1503)
  br label %for.cond, !dbg !1523, !llvm.loop !1524

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1526
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1527 {
entry:
    #dbg_value(ptr %m, !1528, !DIExpression(), !1529)
    #dbg_value(ptr %menc, !1530, !DIExpression(), !1529)
    #dbg_value(i32 860, !1531, !DIExpression(), !1529)
    #dbg_value(i32 0, !1532, !DIExpression(), !1529)
  br label %for.cond, !dbg !1533

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1535
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1528, !DIExpression(), !1529)
    #dbg_value(i32 %i.0, !1532, !DIExpression(), !1529)
  %exitcond = icmp ne i32 %i.0, 430, !dbg !1536
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1538

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1539
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1541
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1542
  %shl = shl i8 %1, 4, !dbg !1543
  %or = or i8 %shl, %0, !dbg !1544
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1545
  store i8 %or, ptr %arrayidx, align 1, !dbg !1546
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1547
    #dbg_value(i32 %inc, !1532, !DIExpression(), !1529)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1548
    #dbg_value(ptr %add.ptr3, !1528, !DIExpression(), !1529)
  br label %for.cond, !dbg !1549, !llvm.loop !1550

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1552
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1553 {
entry:
    #dbg_value(i8 %a, !1556, !DIExpression(), !1557)
    #dbg_value(i8 %b, !1558, !DIExpression(), !1557)
  %xor1 = xor i8 %a, %b, !dbg !1559
  ret i8 %xor1, !dbg !1560
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1561 {
entry:
    #dbg_value(ptr %a, !1564, !DIExpression(), !1565)
    #dbg_value(ptr %b, !1566, !DIExpression(), !1565)
    #dbg_value(i32 8, !1567, !DIExpression(), !1565)
    #dbg_value(i32 1, !1568, !DIExpression(), !1565)
    #dbg_value(i8 0, !1569, !DIExpression(), !1565)
    #dbg_value(i32 0, !1570, !DIExpression(), !1572)
  br label %for.cond, !dbg !1573

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1565
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1574
    #dbg_value(i32 %i.0, !1570, !DIExpression(), !1572)
    #dbg_value(ptr %b.addr.0, !1566, !DIExpression(), !1565)
    #dbg_value(i8 %ret.0, !1569, !DIExpression(), !1565)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1575
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1577

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1578
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1578
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1580
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !1581
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #7, !dbg !1582
    #dbg_value(i8 %call1, !1569, !DIExpression(), !1565)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1583
    #dbg_value(i32 %inc, !1570, !DIExpression(), !1572)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1584
    #dbg_value(ptr %add.ptr, !1566, !DIExpression(), !1565)
  br label %for.cond, !dbg !1585, !llvm.loop !1586

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1565
  ret i8 %ret.0.lcssa, !dbg !1588
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1589 {
entry:
    #dbg_value(i8 %a, !1590, !DIExpression(), !1591)
    #dbg_value(i8 %b, !1592, !DIExpression(), !1591)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !1593
  %xor1 = xor i8 %a, %0, !dbg !1594
    #dbg_value(i8 %xor1, !1590, !DIExpression(), !1591)
  %1 = trunc i8 %xor1 to i1, !dbg !1595
    #dbg_value(i8 poison, !1596, !DIExpression(), !1591)
  %2 = and i8 %xor1, 2, !dbg !1597
  %mul9 = mul i8 %2, %b, !dbg !1598
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1595
  %xor11 = xor i8 %conv10, %mul9, !dbg !1599
    #dbg_value(i8 %xor11, !1596, !DIExpression(), !1591)
  %3 = and i8 %xor1, 4, !dbg !1600
  %mul16 = mul i8 %3, %b, !dbg !1601
  %xor18 = xor i8 %mul16, %xor11, !dbg !1602
    #dbg_value(i8 %xor18, !1596, !DIExpression(), !1591)
  %4 = and i8 %xor1, 8, !dbg !1603
  %mul23 = mul i8 %4, %b, !dbg !1604
  %xor25 = xor i8 %mul23, %xor18, !dbg !1605
    #dbg_value(i8 %xor25, !1596, !DIExpression(), !1591)
    #dbg_value(i8 %xor25, !1606, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1591)
  %5 = lshr i8 %xor25, 4, !dbg !1607
  %6 = lshr i8 %xor25, 3, !dbg !1608
  %7 = and i8 %6, 14, !dbg !1608
  %8 = xor i8 %5, %7, !dbg !1609
  %xor25.masked = and i8 %xor25, 15, !dbg !1610
  %9 = xor i8 %8, %xor25.masked, !dbg !1610
    #dbg_value(i8 %9, !1611, !DIExpression(), !1591)
  ret i8 %9, !dbg !1612
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1613, !DIExpression(), !1614)
    #dbg_value(i32 0, !1615, !DIExpression(), !1617)
  br label %for.cond, !dbg !1618

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1619
    #dbg_value(i32 %i.0, !1615, !DIExpression(), !1617)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1620
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1622

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1623

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1625
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1625
  %shr = lshr i64 %0, 4, !dbg !1627
  %add = or disjoint i32 %i.0, 1, !dbg !1628
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1629
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1629
  %xor = xor i64 %shr, %1, !dbg !1630
  %and = and i64 %xor, 1085102592571150095, !dbg !1631
    #dbg_value(i64 %and, !1632, !DIExpression(), !1633)
  %shl = shl nuw i64 %and, 4, !dbg !1634
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1635
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1636
  %xor3 = xor i64 %2, %shl, !dbg !1636
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1636
  %add4 = or disjoint i32 %i.0, 1, !dbg !1637
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1638
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1639
  %xor6 = xor i64 %3, %and, !dbg !1639
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1639
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1640
    #dbg_value(i32 %add7, !1615, !DIExpression(), !1617)
  br label %for.cond, !dbg !1641, !llvm.loop !1642

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1644
    #dbg_value(i32 %i8.0, !1645, !DIExpression(), !1646)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1647
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1623

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1649

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1651
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1651
  %shr13 = lshr i64 %4, 8, !dbg !1653
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1654
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1655
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1655
  %xor16 = xor i64 %shr13, %5, !dbg !1656
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1657
    #dbg_value(i64 %and17, !1658, !DIExpression(), !1659)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1660
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1661
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1661
  %shr20 = lshr i64 %6, 8, !dbg !1662
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1663
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1664
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1664
  %xor23 = xor i64 %shr20, %7, !dbg !1665
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1666
    #dbg_value(i64 %and24, !1667, !DIExpression(), !1659)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1668
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1669
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1670
  %xor27 = xor i64 %8, %shl25, !dbg !1670
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1670
  %shl28 = shl nuw i64 %and24, 8, !dbg !1671
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1672
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1673
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1674
  %xor31 = xor i64 %9, %shl28, !dbg !1674
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1674
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1675
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1676
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1677
  %xor34 = xor i64 %10, %and17, !dbg !1677
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1677
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1678
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1679
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1680
  %xor37 = xor i64 %11, %and24, !dbg !1680
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1680
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1681
    #dbg_value(i32 %add39, !1645, !DIExpression(), !1646)
  br label %for.cond9, !dbg !1682, !llvm.loop !1683

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1685
    #dbg_value(i32 %i41.0, !1686, !DIExpression(), !1687)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1688
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1649

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1690

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1692
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1692
  %shr47 = lshr i64 %12, 16, !dbg !1694
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1695
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1696
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1696
  %xor50 = xor i64 %shr47, %13, !dbg !1697
  %and51 = and i64 %xor50, 281470681808895, !dbg !1698
    #dbg_value(i64 %and51, !1699, !DIExpression(), !1700)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1701
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1702
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1702
  %shr55 = lshr i64 %14, 16, !dbg !1703
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1704
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1705
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1705
  %xor58 = xor i64 %shr55, %15, !dbg !1706
  %and59 = and i64 %xor58, 281470681808895, !dbg !1707
    #dbg_value(i64 %and59, !1708, !DIExpression(), !1700)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1709
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1710
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1711
  %xor62 = xor i64 %16, %shl60, !dbg !1711
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1711
  %shl63 = shl nuw i64 %and59, 16, !dbg !1712
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1713
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1714
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1715
  %xor66 = xor i64 %17, %shl63, !dbg !1715
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1715
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1716
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1717
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1718
  %xor69 = xor i64 %18, %and51, !dbg !1718
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1718
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1719
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1720
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1721
  %xor72 = xor i64 %19, %and59, !dbg !1721
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1721
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1722
    #dbg_value(i32 %inc, !1686, !DIExpression(), !1687)
  br label %for.cond42, !dbg !1723, !llvm.loop !1724

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1726
    #dbg_value(i32 %i75.0, !1727, !DIExpression(), !1728)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1729
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1690

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1731
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1731
  %shr81 = lshr i64 %20, 32, !dbg !1733
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1734
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1735
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1735
  %.masked = and i64 %21, 4294967295, !dbg !1736
  %and85 = xor i64 %shr81, %.masked, !dbg !1736
    #dbg_value(i64 %and85, !1737, !DIExpression(), !1738)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1739
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1740
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1741
  %xor88 = xor i64 %22, %shl86, !dbg !1741
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1741
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1742
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1743
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1744
  %xor91 = xor i64 %23, %and85, !dbg !1744
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1744
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1745
    #dbg_value(i32 %inc93, !1727, !DIExpression(), !1728)
  br label %for.cond76, !dbg !1746, !llvm.loop !1747

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1749
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 8, 11) %bs_mat_cols) unnamed_addr #0 !dbg !1750 {
entry:
    #dbg_value(i32 5, !1751, !DIExpression(), !1752)
    #dbg_value(ptr %mat, !1753, !DIExpression(), !1752)
    #dbg_value(ptr %bs_mat, !1754, !DIExpression(), !1752)
    #dbg_value(ptr %acc, !1755, !DIExpression(), !1752)
    #dbg_value(i32 10, !1756, !DIExpression(), !1752)
    #dbg_value(i32 78, !1757, !DIExpression(), !1752)
    #dbg_value(i32 %bs_mat_cols, !1758, !DIExpression(), !1752)
    #dbg_value(i32 0, !1759, !DIExpression(), !1761)
  br label %for.cond, !dbg !1762

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1763
    #dbg_value(i32 %r.0, !1759, !DIExpression(), !1761)
  %exitcond2 = icmp ne i32 %r.0, 10, !dbg !1764
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1766

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1767

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1770
    #dbg_value(i32 %c.0, !1771, !DIExpression(), !1772)
  %exitcond1 = icmp ne i32 %c.0, 78, !dbg !1773
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1767

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1775

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1778
    #dbg_value(i32 %k.0, !1779, !DIExpression(), !1780)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1781
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1775

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1783
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1785
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !1786
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1786
  %mul8 = mul nuw nsw i32 %r.0, 78, !dbg !1787
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1788
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1788
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1788
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1789
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1790
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !1791
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1791
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !1792
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1793
    #dbg_value(i32 %add14, !1779, !DIExpression(), !1780)
  br label %for.cond4, !dbg !1794, !llvm.loop !1795

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1797
    #dbg_value(i32 %inc, !1771, !DIExpression(), !1772)
  br label %for.cond1, !dbg !1798, !llvm.loop !1799

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1801
    #dbg_value(i32 %inc18, !1759, !DIExpression(), !1761)
  br label %for.cond, !dbg !1802, !llvm.loop !1803

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1805
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1806 {
entry:
    #dbg_value(ptr %p, !1807, !DIExpression(), !1808)
    #dbg_value(ptr %P1, !1809, !DIExpression(), !1808)
    #dbg_value(ptr %V, !1810, !DIExpression(), !1808)
    #dbg_value(ptr %acc, !1811, !DIExpression(), !1808)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 5, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 10, i32 noundef 1) #7, !dbg !1812
  ret void, !dbg !1813
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1814 {
entry:
    #dbg_value(i32 5, !1815, !DIExpression(), !1816)
    #dbg_value(ptr %bs_mat, !1817, !DIExpression(), !1816)
    #dbg_value(ptr %mat, !1818, !DIExpression(), !1816)
    #dbg_value(ptr %acc, !1819, !DIExpression(), !1816)
    #dbg_value(i32 78, !1820, !DIExpression(), !1816)
    #dbg_value(i32 78, !1821, !DIExpression(), !1816)
    #dbg_value(i32 10, !1822, !DIExpression(), !1816)
    #dbg_value(i32 1, !1823, !DIExpression(), !1816)
    #dbg_value(i32 0, !1824, !DIExpression(), !1816)
    #dbg_value(i32 0, !1825, !DIExpression(), !1827)
  br label %for.cond, !dbg !1828

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 78, %entry ], !dbg !1829
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1829
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1830
    #dbg_value(i32 %r.0, !1825, !DIExpression(), !1827)
    #dbg_value(i32 %bs_mat_entries_used.0, !1824, !DIExpression(), !1816)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !1831
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1833

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1834
  br label %for.cond1, !dbg !1834

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1816
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1837
    #dbg_value(i32 %c.0, !1838, !DIExpression(), !1839)
    #dbg_value(i32 %bs_mat_entries_used.1, !1824, !DIExpression(), !1816)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1840
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1834

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1842

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1845
    #dbg_value(i32 %k.0, !1846, !DIExpression(), !1847)
  %exitcond = icmp ne i32 %k.0, 10, !dbg !1848
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1842

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !1850
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1850
  %mul8 = mul nuw nsw i32 %k.0, 78, !dbg !1852
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1853
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1853
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1853
  %mul9 = mul nuw nsw i32 %r.0, 10, !dbg !1854
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1855
  %add.ptr12.idx = mul nuw nsw i32 %add10, 40, !dbg !1856
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1856
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !1857
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1858
    #dbg_value(i32 %add13, !1846, !DIExpression(), !1847)
  br label %for.cond4, !dbg !1859, !llvm.loop !1860

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1824, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1816)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1862
    #dbg_value(i32 %add14, !1824, !DIExpression(), !1816)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1863
    #dbg_value(i32 %inc, !1838, !DIExpression(), !1839)
  br label %for.cond1, !dbg !1864, !llvm.loop !1865

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1816
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1867
    #dbg_value(i32 %inc18, !1825, !DIExpression(), !1827)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1868
  br label %for.cond, !dbg !1868, !llvm.loop !1869

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1871
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1872 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1873, !DIExpression(), !1874)
    #dbg_value(ptr %sm, !1875, !DIExpression(), !1874)
    #dbg_value(ptr %smlen, !1876, !DIExpression(), !1874)
    #dbg_value(ptr %m, !1877, !DIExpression(), !1874)
    #dbg_value(i32 %mlen, !1878, !DIExpression(), !1874)
    #dbg_value(ptr %csk, !1879, !DIExpression(), !1874)
    #dbg_value(i32 0, !1880, !DIExpression(), !1874)
    #dbg_value(i32 454, !1881, !DIExpression(), !1874)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1882
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #9, !dbg !1883
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1884
    #dbg_value(ptr %siglen, !1885, !DIExpression(DW_OP_deref), !1874)
  %call2 = call i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #7, !dbg !1886
    #dbg_value(i32 %call2, !1880, !DIExpression(), !1874)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1887
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1885, !DIExpression(), !1874)
  %cmp3.not = icmp eq i32 %0, 454
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1889
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1889

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1890
    #dbg_value(i32 %1, !1885, !DIExpression(), !1874)
  %add = add i32 %1, %mlen, !dbg !1892
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #9, !dbg !1893
  br label %err, !dbg !1894

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1895
    #dbg_value(i32 %2, !1885, !DIExpression(), !1874)
  %add5 = add i32 %2, %mlen, !dbg !1896
  store i32 %add5, ptr %smlen, align 4, !dbg !1897
  br label %err, !dbg !1898

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1899, !1900)
  ret i32 %call2, !dbg !1901
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1902 {
entry:
    #dbg_value(ptr %p, !1903, !DIExpression(), !1904)
    #dbg_value(ptr %m, !1905, !DIExpression(), !1904)
    #dbg_value(ptr %mlen, !1906, !DIExpression(), !1904)
    #dbg_value(ptr %sm, !1907, !DIExpression(), !1904)
    #dbg_value(i32 %smlen, !1908, !DIExpression(), !1904)
    #dbg_value(ptr %pk, !1909, !DIExpression(), !1904)
    #dbg_value(i32 454, !1910, !DIExpression(), !1904)
  %cmp = icmp ult i32 %smlen, 454, !dbg !1911
  br i1 %cmp, label %return, label %if.end, !dbg !1911

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1913
  %sub = add i32 %smlen, -454, !dbg !1914
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #7, !dbg !1915
    #dbg_value(i32 %call, !1916, !DIExpression(), !1904)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1917
  br i1 %cmp1, label %if.then2, label %return, !dbg !1917

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -454, !dbg !1919
  store i32 %sub3, ptr %mlen, align 4, !dbg !1921
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1922
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #9, !dbg !1923
  br label %return, !dbg !1924

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1904
  ret i32 %retval.0, !dbg !1925
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1926 {
entry:
  %tEnc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [156 x i8], align 1
  %s = alloca [860 x i8], align 1
  %pk = alloca [18705 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1929, !DIExpression(), !1930)
    #dbg_value(ptr %m, !1931, !DIExpression(), !1930)
    #dbg_value(i32 %mlen, !1932, !DIExpression(), !1930)
    #dbg_value(ptr %sig, !1933, !DIExpression(), !1930)
    #dbg_value(ptr %cpk, !1934, !DIExpression(), !1930)
    #dbg_declare(ptr %tEnc, !1935, !DIExpression(), !1936)
    #dbg_declare(ptr %t, !1937, !DIExpression(), !1938)
    #dbg_declare(ptr %y, !1939, !DIExpression(), !1943)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(156) %y, i8 0, i32 156, i1 false), !dbg !1943
    #dbg_declare(ptr %s, !1944, !DIExpression(), !1945)
    #dbg_declare(ptr %pk, !1946, !DIExpression(), !1947)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(149640) %pk, i8 0, i32 149640, i1 false), !dbg !1947
    #dbg_declare(ptr %tmp, !1948, !DIExpression(), !1952)
    #dbg_value(i32 78, !1953, !DIExpression(), !1930)
    #dbg_value(i32 86, !1954, !DIExpression(), !1930)
    #dbg_value(i32 10, !1955, !DIExpression(), !1930)
    #dbg_value(i32 39, !1956, !DIExpression(), !1930)
    #dbg_value(i32 454, !1957, !DIExpression(), !1930)
    #dbg_value(i32 32, !1958, !DIExpression(), !1930)
    #dbg_value(i32 24, !1959, !DIExpression(), !1930)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #7, !dbg !1960
    #dbg_value(i32 0, !1961, !DIExpression(), !1930)
    #dbg_value(ptr %pk, !1962, !DIExpression(), !1930)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 123240, !dbg !1963
    #dbg_value(ptr %add.ptr, !1964, !DIExpression(), !1930)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1965
    #dbg_value(ptr %add.ptr2, !1966, !DIExpression(), !1930)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #7, !dbg !1967
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1968
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !1969
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #9, !dbg !1970
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #7, !dbg !1971
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 78) #7, !dbg !1972
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 860) #7, !dbg !1973
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #7, !dbg !1974
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 78) #9, !dbg !1975
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1977
  %. = zext i1 %cmp21 to i32, !dbg !1930
  ret i32 %., !dbg !1978
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1979 {
entry:
    #dbg_value(ptr %p, !1980, !DIExpression(), !1981)
    #dbg_value(ptr %cpk, !1982, !DIExpression(), !1981)
    #dbg_value(ptr %pk, !1983, !DIExpression(), !1981)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #7, !dbg !1984
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1985
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1986
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 36, i32 noundef 78) #7, !dbg !1987
  ret i32 0, !dbg !1988
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1989 {
entry:
  %SPS = alloca [500 x i64], align 8
  %zero = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !1992, !DIExpression(), !1993)
    #dbg_value(ptr %s, !1994, !DIExpression(), !1993)
    #dbg_value(ptr %P1, !1995, !DIExpression(), !1993)
    #dbg_value(ptr %P2, !1996, !DIExpression(), !1993)
    #dbg_value(ptr %P3, !1997, !DIExpression(), !1993)
    #dbg_value(ptr %eval, !1998, !DIExpression(), !1993)
    #dbg_declare(ptr %SPS, !1999, !DIExpression(), !2003)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4000) %SPS, i8 0, i32 4000, i1 false), !dbg !2003
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #7, !dbg !2004
    #dbg_declare(ptr %zero, !2005, !DIExpression(), !2006)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(78) %zero, i8 0, i32 78, i1 false), !dbg !2006
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #7, !dbg !2007
  ret void, !dbg !2008
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2009 {
entry:
  %PS = alloca [4300 x i64], align 8
    #dbg_value(ptr %p, !2012, !DIExpression(), !2013)
    #dbg_value(ptr %P1, !2014, !DIExpression(), !2013)
    #dbg_value(ptr %P2, !2015, !DIExpression(), !2013)
    #dbg_value(ptr %P3, !2016, !DIExpression(), !2013)
    #dbg_value(ptr %s, !2017, !DIExpression(), !2013)
    #dbg_value(ptr %SPS, !2018, !DIExpression(), !2013)
    #dbg_declare(ptr %PS, !2019, !DIExpression(), !2023)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(34400) %PS, i8 0, i32 34400, i1 false), !dbg !2023
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 10, ptr noundef nonnull %PS) #7, !dbg !2024
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 78, i32 noundef 10, i32 noundef 86, ptr noundef %SPS) #7, !dbg !2025
  ret void, !dbg !2026
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2027 {
entry:
  %accumulator = alloca [68800 x i64], align 8
    #dbg_value(ptr %P1, !2030, !DIExpression(), !2031)
    #dbg_value(ptr %P2, !2032, !DIExpression(), !2031)
    #dbg_value(ptr %P3, !2033, !DIExpression(), !2031)
    #dbg_value(ptr %S, !2034, !DIExpression(), !2031)
    #dbg_value(i32 78, !2035, !DIExpression(), !2031)
    #dbg_value(i32 78, !2036, !DIExpression(), !2031)
    #dbg_value(i32 8, !2037, !DIExpression(), !2031)
    #dbg_value(i32 10, !2038, !DIExpression(), !2031)
    #dbg_value(ptr %PS, !2039, !DIExpression(), !2031)
    #dbg_value(i32 86, !2040, !DIExpression(), !2031)
    #dbg_value(i32 5, !2041, !DIExpression(), !2031)
    #dbg_declare(ptr %accumulator, !2042, !DIExpression(), !2046)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(550400) %accumulator, i8 0, i32 550400, i1 false), !dbg !2046
    #dbg_value(i32 0, !2047, !DIExpression(), !2031)
    #dbg_value(i32 0, !2048, !DIExpression(), !2050)
  br label %for.cond, !dbg !2051

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 78, %entry ], !dbg !2052
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2052
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2053
    #dbg_value(i32 %row.0, !2048, !DIExpression(), !2050)
    #dbg_value(i32 %P1_used.0, !2047, !DIExpression(), !2031)
  %exitcond4 = icmp ne i32 %row.0, 78, !dbg !2054
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2056

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2057
  br label %for.cond2, !dbg !2057

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2060

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2031
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2062
    #dbg_value(i32 %j.0, !2063, !DIExpression(), !2064)
    #dbg_value(i32 %P1_used.1, !2047, !DIExpression(), !2031)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2065
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2057

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2031
  br label %for.cond21, !dbg !2067

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2069

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2072
    #dbg_value(i32 %col.0, !2073, !DIExpression(), !2074)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2075
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2069

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 40, !dbg !2077
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2077
  %mul8 = mul nuw nsw i32 %row.0, 10, !dbg !2079
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2080
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2081
  %mul11 = mul nuw nsw i32 %col.0, 86, !dbg !2082
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2083
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2083
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2083
  %conv = zext i8 %2 to i32, !dbg !2083
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2084
  %add.ptr15.idx = mul nuw nsw i32 %add13, 40, !dbg !2085
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2085
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #7, !dbg !2086
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2087
    #dbg_value(i32 %inc, !2073, !DIExpression(), !2074)
  br label %for.cond5, !dbg !2088, !llvm.loop !2089

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2047, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2031)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2091
    #dbg_value(i32 %inc16, !2047, !DIExpression(), !2031)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2092
    #dbg_value(i32 %inc18, !2063, !DIExpression(), !2064)
  br label %for.cond2, !dbg !2093, !llvm.loop !2094

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2096
    #dbg_value(i32 %j20.0, !2097, !DIExpression(), !2098)
  %exitcond3 = icmp ne i32 %j20.0, 8, !dbg !2099
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2067

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2101

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2104
    #dbg_value(i32 %col25.0, !2105, !DIExpression(), !2106)
  %exitcond2 = icmp ne i32 %col25.0, 10, !dbg !2107
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2101

for.body29:                                       ; preds = %for.cond26
  %mul30 = shl nuw nsw i32 %row.0, 3, !dbg !2109
  %add31 = or disjoint i32 %mul30, %j20.0, !dbg !2111
  %add.ptr33.idx = mul nuw nsw i32 %add31, 40, !dbg !2112
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2112
  %mul35 = mul nuw nsw i32 %row.0, 10, !dbg !2113
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2114
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2115
  %mul38 = mul nuw nsw i32 %col25.0, 86, !dbg !2116
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2117
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2117
  %arrayidx41 = getelementptr i8, ptr %4, i32 78, !dbg !2117
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2117
  %conv42 = zext i8 %5 to i32, !dbg !2117
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2118
  %add.ptr45.idx = mul nuw nsw i32 %add43, 40, !dbg !2119
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2119
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #7, !dbg !2120
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2121
    #dbg_value(i32 %inc47, !2105, !DIExpression(), !2106)
  br label %for.cond26, !dbg !2122, !llvm.loop !2123

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2125
    #dbg_value(i32 %inc50, !2097, !DIExpression(), !2098)
  br label %for.cond21, !dbg !2126, !llvm.loop !2127

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2129
    #dbg_value(i32 %inc53, !2048, !DIExpression(), !2050)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2130
  br label %for.cond, !dbg !2130, !llvm.loop !2131

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 8, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2133
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2133
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 78, %for.cond56.preheader ], !dbg !2134
    #dbg_value(i32 %row55.0, !2135, !DIExpression(), !2136)
    #dbg_value(i32 %P3_used.0, !2137, !DIExpression(), !2031)
  %exitcond9 = icmp ne i32 %row55.0, 86, !dbg !2138
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2060

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2140
  br label %for.cond61, !dbg !2140

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2143

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2031
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2144
    #dbg_value(i32 %j60.0, !2145, !DIExpression(), !2146)
    #dbg_value(i32 %P3_used.1, !2137, !DIExpression(), !2031)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2147
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2140

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2149

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2152
    #dbg_value(i32 %col65.0, !2153, !DIExpression(), !2154)
  %exitcond5 = icmp ne i32 %col65.0, 10, !dbg !2155
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2149

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 40, !dbg !2157
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2157
  %mul73 = mul nuw nsw i32 %row55.0, 10, !dbg !2159
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2160
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2161
  %mul76 = mul nuw nsw i32 %col65.0, 86, !dbg !2162
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2163
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2163
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2163
  %conv79 = zext i8 %8 to i32, !dbg !2163
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2164
  %add.ptr82.idx = mul nuw nsw i32 %add80, 40, !dbg !2165
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2165
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #7, !dbg !2166
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2167
    #dbg_value(i32 %inc84, !2153, !DIExpression(), !2154)
  br label %for.cond66, !dbg !2168, !llvm.loop !2169

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2137, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2031)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2171
    #dbg_value(i32 %inc86, !2137, !DIExpression(), !2031)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2172
    #dbg_value(i32 %inc88, !2145, !DIExpression(), !2146)
  br label %for.cond61, !dbg !2173, !llvm.loop !2174

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2031
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2176
    #dbg_value(i32 %inc91, !2135, !DIExpression(), !2136)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2177
  br label %for.cond56, !dbg !2177, !llvm.loop !2178

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2031
    #dbg_value(i32 %i.0, !2180, !DIExpression(), !2031)
  %exitcond10 = icmp ne i32 %i.0, 860, !dbg !2181
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2143

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 640, !dbg !2182
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2182
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 40, !dbg !2184
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2184
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #7, !dbg !2185
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2186
    #dbg_value(i32 %inc102, !2180, !DIExpression(), !2031)
  br label %while.cond, !dbg !2143, !llvm.loop !2187

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2189
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2190 {
entry:
  %accumulator = alloca [8000 x i64], align 8
    #dbg_value(ptr %PS, !2193, !DIExpression(), !2194)
    #dbg_value(ptr %S, !2195, !DIExpression(), !2194)
    #dbg_value(i32 78, !2196, !DIExpression(), !2194)
    #dbg_value(i32 10, !2197, !DIExpression(), !2194)
    #dbg_value(i32 86, !2198, !DIExpression(), !2194)
    #dbg_value(ptr %SPS, !2199, !DIExpression(), !2194)
    #dbg_declare(ptr %accumulator, !2200, !DIExpression(), !2204)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64000) %accumulator, i8 0, i32 64000, i1 false), !dbg !2204
    #dbg_value(i32 5, !2205, !DIExpression(), !2194)
    #dbg_value(i32 0, !2206, !DIExpression(), !2208)
  br label %for.cond, !dbg !2209

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2210
    #dbg_value(i32 %row.0, !2206, !DIExpression(), !2208)
  %exitcond2 = icmp ne i32 %row.0, 10, !dbg !2211
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2213

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2214

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2217

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2218
    #dbg_value(i32 %j.0, !2219, !DIExpression(), !2220)
  %exitcond1 = icmp ne i32 %j.0, 86, !dbg !2221
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2214

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2223

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2226
    #dbg_value(i32 %col.0, !2227, !DIExpression(), !2228)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2229
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2223

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 10, !dbg !2231
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2233
  %add.ptr.idx = mul nuw nsw i32 %add7, 40, !dbg !2234
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2234
  %mul9 = mul nuw nsw i32 %row.0, 10, !dbg !2235
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2236
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2237
  %mul12 = mul nuw nsw i32 %row.0, 86, !dbg !2238
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2239
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2239
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2239
  %conv = zext i8 %1 to i32, !dbg !2239
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2240
  %add.ptr16.idx = mul nuw nsw i32 %add14, 40, !dbg !2241
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2241
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #7, !dbg !2242
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2243
    #dbg_value(i32 %add17, !2227, !DIExpression(), !2228)
  br label %for.cond4, !dbg !2244, !llvm.loop !2245

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2247
    #dbg_value(i32 %inc, !2219, !DIExpression(), !2220)
  br label %for.cond1, !dbg !2248, !llvm.loop !2249

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2251
    #dbg_value(i32 %inc21, !2206, !DIExpression(), !2208)
  br label %for.cond, !dbg !2252, !llvm.loop !2253

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2194
    #dbg_value(i32 %i.0, !2255, !DIExpression(), !2194)
  %exitcond3 = icmp ne i32 %i.0, 100, !dbg !2256
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2217

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 640, !dbg !2257
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2257
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 40, !dbg !2259
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2259
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #7, !dbg !2260
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2261
    #dbg_value(i32 %inc32, !2255, !DIExpression(), !2194)
  br label %while.cond, !dbg !2217, !llvm.loop !2262

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2264
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2265 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2268, !DIExpression(), !2269)
    #dbg_value(ptr %in, !2270, !DIExpression(), !2269)
    #dbg_value(ptr %acc, !2271, !DIExpression(), !2269)
    #dbg_value(i32 0, !2272, !DIExpression(), !2274)
  br label %for.cond, !dbg !2275

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2276
    #dbg_value(i32 %i.0, !2272, !DIExpression(), !2274)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2277
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2279

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2280
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2280
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2282
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2283
  %xor = xor i64 %1, %0, !dbg !2283
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2283
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2284
    #dbg_value(i32 %inc, !2272, !DIExpression(), !2274)
  br label %for.cond, !dbg !2285, !llvm.loop !2286

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2288
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2289 {
entry:
    #dbg_value(i32 5, !2292, !DIExpression(), !2293)
    #dbg_value(ptr %bins, !2294, !DIExpression(), !2293)
    #dbg_value(ptr %out, !2295, !DIExpression(), !2293)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 200, !dbg !2296
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2297
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #7, !dbg !2298
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 440, !dbg !2299
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2300
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #7, !dbg !2301
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2302
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2303
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #7, !dbg !2304
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2305
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2306
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #7, !dbg !2307
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2308
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2309
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #7, !dbg !2310
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2311
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2312
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #7, !dbg !2313
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2314
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2315
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #7, !dbg !2316
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2317
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2318
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #7, !dbg !2319
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2320
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2321
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #7, !dbg !2322
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2323
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2324
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #7, !dbg !2325
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2326
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2327
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #7, !dbg !2328
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2329
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2330
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #7, !dbg !2331
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2332
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2333
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #7, !dbg !2334
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2335
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2336
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #7, !dbg !2337
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2338
  call fastcc void @m_vec_copy(i32 noundef 5, ptr noundef nonnull %add.ptr28, ptr noundef %out) #7, !dbg !2339
  ret void, !dbg !2340
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2341 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2342, !DIExpression(), !2343)
    #dbg_value(ptr %in, !2344, !DIExpression(), !2343)
    #dbg_value(ptr %acc, !2345, !DIExpression(), !2343)
    #dbg_value(i64 1229782938247303441, !2346, !DIExpression(), !2343)
    #dbg_value(i32 0, !2347, !DIExpression(), !2349)
  br label %for.cond, !dbg !2350

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2351
    #dbg_value(i32 %i.0, !2347, !DIExpression(), !2349)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2352
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2354

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2355
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2355
  %and = and i64 %0, 1229782938247303441, !dbg !2357
    #dbg_value(i64 %and, !2358, !DIExpression(), !2359)
  %xor = lshr i64 %0, 1, !dbg !2360
  %shr = and i64 %xor, 8608480567731124087, !dbg !2360
  %mul = mul nuw i64 %and, 9, !dbg !2361
  %xor2 = xor i64 %shr, %mul, !dbg !2362
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2363
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2364
  %xor4 = xor i64 %1, %xor2, !dbg !2364
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2364
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2365
    #dbg_value(i32 %inc, !2347, !DIExpression(), !2349)
  br label %for.cond, !dbg !2366, !llvm.loop !2367

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2369
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2370 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2371, !DIExpression(), !2372)
    #dbg_value(ptr %in, !2373, !DIExpression(), !2372)
    #dbg_value(ptr %acc, !2374, !DIExpression(), !2372)
    #dbg_value(i64 -8608480567731124088, !2375, !DIExpression(), !2372)
    #dbg_value(i32 0, !2376, !DIExpression(), !2378)
  br label %for.cond, !dbg !2379

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2380
    #dbg_value(i32 %i.0, !2376, !DIExpression(), !2378)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2381
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2383

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2384
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2384
    #dbg_value(i64 %0, !2386, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2387)
  %xor = shl i64 %0, 1, !dbg !2388
  %shl = and i64 %xor, -1229782938247303442, !dbg !2388
  %and = lshr i64 %0, 3, !dbg !2389
  %shr = and i64 %and, 1229782938247303441, !dbg !2389
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2390
  %xor2 = xor i64 %shl, %mul, !dbg !2391
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2392
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2393
  %xor4 = xor i64 %1, %xor2, !dbg !2393
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2393
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2394
    #dbg_value(i32 %inc, !2376, !DIExpression(), !2378)
  br label %for.cond, !dbg !2395, !llvm.loop !2396

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2398
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2399 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2400, !DIExpression(), !2401)
    #dbg_value(ptr %in, !2402, !DIExpression(), !2401)
    #dbg_value(ptr %out, !2403, !DIExpression(), !2401)
    #dbg_value(i32 0, !2404, !DIExpression(), !2406)
  br label %for.cond, !dbg !2407

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2408
    #dbg_value(i32 %i.0, !2404, !DIExpression(), !2406)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2409
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2411

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2412
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2412
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2414
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2415
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2416
    #dbg_value(i32 %inc, !2404, !DIExpression(), !2406)
  br label %for.cond, !dbg !2417, !llvm.loop !2418

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2420
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2421 {
entry:
    #dbg_value(ptr %p, !2452, !DIExpression(), !2453)
    #dbg_value(ptr %in, !2454, !DIExpression(), !2453)
    #dbg_value(ptr %out, !2455, !DIExpression(), !2453)
    #dbg_value(i32 %size, !2456, !DIExpression(), !2453)
    #dbg_value(i32 5, !2457, !DIExpression(), !2453)
    #dbg_value(i32 0, !2458, !DIExpression(), !2453)
    #dbg_value(i32 0, !2459, !DIExpression(), !2461)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2462
  br label %for.cond, !dbg !2462

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2463
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2463
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2464
    #dbg_value(i32 %r.0, !2459, !DIExpression(), !2461)
    #dbg_value(i32 %m_vecs_stored.0, !2458, !DIExpression(), !2453)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2465
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2467

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2468
  br label %for.cond1, !dbg !2468

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2453
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2471
    #dbg_value(i32 %c.0, !2472, !DIExpression(), !2473)
    #dbg_value(i32 %m_vecs_stored.1, !2458, !DIExpression(), !2453)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2474
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2468

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2476
  %add = add nsw i32 %mul, %c.0, !dbg !2478
  %add.ptr.idx = mul nsw i32 %add, 40, !dbg !2479
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2479
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2480
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2480
  call fastcc void @m_vec_copy.17(i32 noundef 5, ptr noundef %add.ptr, ptr noundef %add.ptr6) #7, !dbg !2481
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2482
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2482

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2484
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2486
  %add.ptr11.idx = mul nsw i32 %add9, 40, !dbg !2487
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2487
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2488
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2488
  call fastcc void @m_vec_add.18(i32 noundef 5, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #7, !dbg !2489
  br label %for.inc, !dbg !2490

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2458, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2453)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2491
    #dbg_value(i32 %inc, !2458, !DIExpression(), !2453)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2492
    #dbg_value(i32 %inc14, !2472, !DIExpression(), !2473)
  br label %for.cond1, !dbg !2493, !llvm.loop !2494

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2453
  %inc16 = add nuw i32 %r.0, 1, !dbg !2496
    #dbg_value(i32 %inc16, !2459, !DIExpression(), !2461)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2497
  br label %for.cond, !dbg !2497, !llvm.loop !2498

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2500
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2501 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2502, !DIExpression(), !2503)
    #dbg_value(ptr %in, !2504, !DIExpression(), !2503)
    #dbg_value(ptr %out, !2505, !DIExpression(), !2503)
    #dbg_value(i32 0, !2506, !DIExpression(), !2508)
  br label %for.cond, !dbg !2509

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2510
    #dbg_value(i32 %i.0, !2506, !DIExpression(), !2508)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2511
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2513

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2514
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2514
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2516
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2517
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2518
    #dbg_value(i32 %inc, !2506, !DIExpression(), !2508)
  br label %for.cond, !dbg !2519, !llvm.loop !2520

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2522
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2523 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2524, !DIExpression(), !2525)
    #dbg_value(ptr %in, !2526, !DIExpression(), !2525)
    #dbg_value(ptr %acc, !2527, !DIExpression(), !2525)
    #dbg_value(i32 0, !2528, !DIExpression(), !2530)
  br label %for.cond, !dbg !2531

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2532
    #dbg_value(i32 %i.0, !2528, !DIExpression(), !2530)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2533
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2535

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2536
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2536
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2538
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2539
  %xor = xor i64 %1, %0, !dbg !2539
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2539
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2540
    #dbg_value(i32 %inc, !2528, !DIExpression(), !2530)
  br label %for.cond, !dbg !2541, !llvm.loop !2542

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2544
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2545 {
entry:
  %Ar = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2548, !DIExpression(), !2549)
    #dbg_value(ptr %A, !2550, !DIExpression(), !2549)
    #dbg_value(ptr %y, !2551, !DIExpression(), !2549)
    #dbg_value(ptr %r, !2552, !DIExpression(), !2549)
    #dbg_value(ptr %x, !2553, !DIExpression(), !2549)
    #dbg_value(i32 %k, !2554, !DIExpression(), !2549)
    #dbg_value(i32 %o, !2555, !DIExpression(), !2549)
    #dbg_value(i32 %m, !2556, !DIExpression(), !2549)
    #dbg_value(i32 %A_cols, !2557, !DIExpression(), !2549)
    #dbg_value(i32 0, !2558, !DIExpression(), !2560)
  %0 = mul nsw i32 %o, %k, !dbg !2561
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2561
  br label %for.cond, !dbg !2561

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2562
    #dbg_value(i32 %i.0, !2558, !DIExpression(), !2560)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2563
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2565

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2566
  br label %for.cond3, !dbg !2566

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2568
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2568
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2570
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2571
  %inc = add nuw i32 %i.0, 1, !dbg !2572
    #dbg_value(i32 %inc, !2558, !DIExpression(), !2560)
  br label %for.cond, !dbg !2573, !llvm.loop !2574

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2576
    #dbg_value(i32 %i2.0, !2577, !DIExpression(), !2578)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2579
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2566

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2581
  %mul7 = mul nsw i32 %k, %o, !dbg !2583
  %add = add nsw i32 %mul7, 1, !dbg !2584
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2585
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2586
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2586
  store i8 0, ptr %arrayidx10, align 1, !dbg !2587
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2588
    #dbg_value(i32 %inc12, !2577, !DIExpression(), !2578)
  br label %for.cond3, !dbg !2589, !llvm.loop !2590

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2592
  %add15 = add nsw i32 %mul14, 1, !dbg !2593
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #7, !dbg !2594
    #dbg_value(i32 0, !2595, !DIExpression(), !2597)
  br label %for.cond17, !dbg !2598

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2599
    #dbg_value(i32 %i16.0, !2595, !DIExpression(), !2597)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2600
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2602

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2603
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2603
  %arrayidx21 = getelementptr inbounds nuw [78 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2605
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2605
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #7, !dbg !2606
  %mul22 = mul nsw i32 %k, %o, !dbg !2607
  %mul23 = mul nsw i32 %k, %o, !dbg !2608
  %add24 = add nsw i32 %mul23, 1, !dbg !2609
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2610
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2611
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2611
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2612
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2613
    #dbg_value(i32 %inc29, !2595, !DIExpression(), !2597)
  br label %for.cond17, !dbg !2614, !llvm.loop !2615

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2617
  %add32 = add nsw i32 %mul31, 1, !dbg !2618
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #7, !dbg !2619
    #dbg_value(i8 0, !2620, !DIExpression(), !2549)
    #dbg_value(i32 0, !2621, !DIExpression(), !2623)
  %6 = add i32 %A_cols, -1, !dbg !2624
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2624
  br label %for.cond34, !dbg !2624

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2549
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2625
    #dbg_value(i32 %i33.0, !2621, !DIExpression(), !2623)
    #dbg_value(i8 %full_rank.0, !2620, !DIExpression(), !2549)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2626
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2628

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2549)
  %sub37 = add nsw i32 %m, -1, !dbg !2629
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2631
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2632
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2632
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2632
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2549)
  %or12 = or i8 %full_rank.0, %8, !dbg !2633
    #dbg_value(i8 %or12, !2620, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2549)
    #dbg_value(i8 %or12, !2620, !DIExpression(), !2549)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2634
    #dbg_value(i32 %inc44, !2621, !DIExpression(), !2623)
  br label %for.cond34, !dbg !2635, !llvm.loop !2636

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2549
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2638
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2638

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2640

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2640, !llvm.loop !2642

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2644
    #dbg_value(i32 %row.0, !2645, !DIExpression(), !2646)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2647
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2640

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2649, !DIExpression(), !2549)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2650
  %div = sdiv i32 32, %sub54, !dbg !2650
  %add55 = add nsw i32 %row.0, %div, !dbg !2650
  %mul56 = mul nsw i32 %k, %o, !dbg !2650
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2650
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2650

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2650
  %div60 = sdiv i32 32, %sub59, !dbg !2650
  %add61 = add nsw i32 %row.0, %div60, !dbg !2650
  br label %cond.end, !dbg !2650

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2650
  br label %cond.end, !dbg !2650

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2650
    #dbg_value(i32 %cond, !2652, !DIExpression(), !2549)
    #dbg_value(i32 %row.0, !2653, !DIExpression(), !2655)
  br label %for.cond63, !dbg !2656

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2657
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2658
    #dbg_value(i32 %col.0, !2653, !DIExpression(), !2655)
    #dbg_value(i8 %finished.0, !2649, !DIExpression(), !2549)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2659
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2661

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2662
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2664
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2664
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2664
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #7, !dbg !2665
  %not = xor i8 %finished.0, -1, !dbg !2666
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2549)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2668
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2669
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2669
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2669
  %13 = and i8 %12, %not, !dbg !2670
  %and801 = and i8 %13, %call70, !dbg !2670
    #dbg_value(i8 %and801, !2671, !DIExpression(), !2672)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2673
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2674
  %xor2 = xor i8 %14, %and801, !dbg !2674
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2674
    #dbg_value(i32 0, !2675, !DIExpression(), !2677)
  br label %for.cond87, !dbg !2678

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2679
    #dbg_value(i32 %i86.0, !2675, !DIExpression(), !2677)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2680
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2682

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2683
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2685
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2685
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2685
  %conv94 = zext i8 %16 to i64, !dbg !2686
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2687
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2688
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2689
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2689
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2689
  %conv99 = zext i8 %18 to i64, !dbg !2690
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2691
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2692
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2693
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2694
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2695
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2695
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2695
  %conv106 = zext i8 %20 to i64, !dbg !2696
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2697
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2698
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2699
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2700
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2701
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2701
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2701
  %conv113 = zext i8 %22 to i64, !dbg !2702
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2703
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2704
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2705
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2706
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2707
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2707
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2707
  %conv120 = zext i8 %24 to i64, !dbg !2708
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2709
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2710
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2711
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2712
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2713
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2713
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2713
  %conv127 = zext i8 %26 to i64, !dbg !2714
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2715
  %xor129 = xor i64 %xor122, %shl128, !dbg !2716
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2717
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2718
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2719
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2719
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2719
  %conv134 = zext i8 %28 to i64, !dbg !2720
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2721
  %xor136 = xor i64 %xor129, %shl135, !dbg !2722
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2723
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2724
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2725
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2725
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2725
  %conv141 = zext i8 %30 to i64, !dbg !2726
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2727
  %xor143 = xor i64 %xor136, %shl142, !dbg !2728
    #dbg_value(i64 %xor143, !2729, !DIExpression(), !2730)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #7, !dbg !2731
    #dbg_value(i64 %call144, !2729, !DIExpression(), !2730)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2732
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2732
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2733
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2733
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2734
  %33 = trunc i64 %call144 to i8, !dbg !2734
  %34 = and i8 %33, 15, !dbg !2734
  %conv152 = xor i8 %34, %32, !dbg !2734
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2734
  %shr = lshr i64 %call144, 8, !dbg !2735
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2736
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2736
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2737
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2737
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2738
  %37 = trunc i64 %shr to i8, !dbg !2738
  %38 = and i8 %37, 15, !dbg !2738
  %conv161 = xor i8 %38, %36, !dbg !2738
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2738
  %shr162 = lshr i64 %call144, 16, !dbg !2739
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2740
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2740
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2741
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2741
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2742
  %41 = trunc i64 %shr162 to i8, !dbg !2742
  %42 = and i8 %41, 15, !dbg !2742
  %conv171 = xor i8 %42, %40, !dbg !2742
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2742
  %shr172 = lshr i64 %call144, 24, !dbg !2743
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2744
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2744
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2745
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2745
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2746
  %45 = trunc i64 %shr172 to i8, !dbg !2746
  %46 = and i8 %45, 15, !dbg !2746
  %conv181 = xor i8 %46, %44, !dbg !2746
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2746
  %shr182 = lshr i64 %call144, 32, !dbg !2747
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2748
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2748
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2749
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2749
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2750
  %49 = trunc i64 %shr182 to i8, !dbg !2750
  %50 = and i8 %49, 15, !dbg !2750
  %conv191 = xor i8 %50, %48, !dbg !2750
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2750
  %shr192 = lshr i64 %call144, 40, !dbg !2751
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2752
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2752
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2753
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2753
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2754
  %53 = trunc i64 %shr192 to i8, !dbg !2754
  %54 = and i8 %53, 15, !dbg !2754
  %conv201 = xor i8 %54, %52, !dbg !2754
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2754
  %shr202 = lshr i64 %call144, 48, !dbg !2755
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2756
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2756
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2757
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2757
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2758
  %57 = trunc i64 %shr202 to i8, !dbg !2758
  %58 = and i8 %57, 15, !dbg !2758
  %conv211 = xor i8 %58, %56, !dbg !2758
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2758
  %shr212 = lshr i64 %call144, 56, !dbg !2759
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2760
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2760
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2761
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2761
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2762
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2762
  %conv221 = xor i8 %60, %61, !dbg !2762
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2762
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2763
    #dbg_value(i32 %add223, !2675, !DIExpression(), !2677)
  br label %for.cond87, !dbg !2764, !llvm.loop !2765

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2649, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2549)
  %or2273 = or i8 %finished.0, %call70, !dbg !2767
    #dbg_value(i8 %or2273, !2649, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2549)
    #dbg_value(i8 %or2273, !2649, !DIExpression(), !2549)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2768
    #dbg_value(i32 %inc230, !2653, !DIExpression(), !2655)
  br label %for.cond63, !dbg !2769, !llvm.loop !2770

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2772

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2549
  ret i32 %retval.0, !dbg !2772
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2773 {
entry:
    #dbg_value(ptr %a, !2774, !DIExpression(), !2775)
    #dbg_value(ptr %b, !2776, !DIExpression(), !2775)
    #dbg_value(ptr %c, !2777, !DIExpression(), !2775)
    #dbg_value(i32 %colrow_ab, !2778, !DIExpression(), !2775)
    #dbg_value(i32 %row_a, !2779, !DIExpression(), !2775)
    #dbg_value(i32 1, !2780, !DIExpression(), !2775)
    #dbg_value(i32 0, !2781, !DIExpression(), !2783)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2784
  br label %for.cond, !dbg !2784

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2785
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2774, !DIExpression(), !2775)
    #dbg_value(ptr %c.addr.0, !2777, !DIExpression(), !2775)
    #dbg_value(i32 %i.0, !2781, !DIExpression(), !2783)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2786
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2788

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2789

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2792
    #dbg_value(i32 poison, !2793, !DIExpression(), !2794)
    #dbg_value(ptr %c.addr.1, !2777, !DIExpression(), !2775)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2789

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #7, !dbg !2795
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2798
    #dbg_value(i32 1, !2793, !DIExpression(), !2794)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2799
    #dbg_value(ptr %incdec.ptr, !2777, !DIExpression(), !2775)
  br label %for.cond1, !dbg !2800, !llvm.loop !2801

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2803
    #dbg_value(i32 %inc5, !2781, !DIExpression(), !2783)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2804
    #dbg_value(ptr %add.ptr6, !2774, !DIExpression(), !2775)
  br label %for.cond, !dbg !2805, !llvm.loop !2806

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2808
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2809 {
entry:
    #dbg_value(i8 %a, !2810, !DIExpression(), !2811)
    #dbg_value(i8 %b, !2812, !DIExpression(), !2811)
  %xor1 = xor i8 %a, %b, !dbg !2813
  ret i8 %xor1, !dbg !2814
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2815 {
entry:
  %_pivot_row = alloca [6 x i64], align 32
  %_pivot_row2 = alloca [6 x i64], align 32
  %packed_A = alloca [468 x i64], align 32
  %temp = alloca [96 x i8], align 1
    #dbg_value(ptr %A, !2819, !DIExpression(), !2820)
    #dbg_value(i32 %nrows, !2821, !DIExpression(), !2820)
    #dbg_value(i32 %ncols, !2822, !DIExpression(), !2820)
    #dbg_declare(ptr %_pivot_row, !2823, !DIExpression(), !2827)
    #dbg_declare(ptr %_pivot_row2, !2828, !DIExpression(), !2829)
    #dbg_declare(ptr %packed_A, !2830, !DIExpression(), !2834)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(3744) %packed_A, i8 0, i32 3744, i1 false), !dbg !2834
  %add = add nsw i32 %ncols, 15, !dbg !2835
  %div = sdiv i32 %add, 16, !dbg !2836
    #dbg_value(i32 %div, !2837, !DIExpression(), !2820)
    #dbg_value(i32 0, !2838, !DIExpression(), !2840)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2841
  br label %for.cond, !dbg !2841

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2842
    #dbg_value(i32 %i.0, !2838, !DIExpression(), !2840)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2843
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2845

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2846
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2846
  br label %for.cond3, !dbg !2846

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2848
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2850
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2851
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2852
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #7, !dbg !2853
  %inc = add nuw i32 %i.0, 1, !dbg !2854
    #dbg_value(i32 %inc, !2838, !DIExpression(), !2840)
  br label %for.cond, !dbg !2855, !llvm.loop !2856

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2858
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2820
    #dbg_value(i32 %pivot_row.0, !2859, !DIExpression(), !2820)
    #dbg_value(i32 %pivot_col.0, !2860, !DIExpression(), !2861)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2862
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2846

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2864

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2866
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2866
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2866
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2866
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2866
    #dbg_value(i32 %cond, !2868, !DIExpression(), !2869)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2870
    #dbg_value(i32 %cond16, !2871, !DIExpression(), !2869)
    #dbg_value(i32 0, !2872, !DIExpression(), !2874)
  br label %for.cond18, !dbg !2875

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2876
    #dbg_value(i32 %i17.0, !2872, !DIExpression(), !2874)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2877
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2879

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2870
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2870
  br label %for.cond25, !dbg !2880

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2882
  store i64 0, ptr %arrayidx, align 8, !dbg !2884
  %arrayidx21 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2885
  store i64 0, ptr %arrayidx21, align 8, !dbg !2886
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2887
    #dbg_value(i32 %inc23, !2872, !DIExpression(), !2874)
  br label %for.cond18, !dbg !2888, !llvm.loop !2889

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2869
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2869
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2891
    #dbg_value(i32 %row.0, !2892, !DIExpression(), !2891)
    #dbg_value(i8 %pivot.0, !2893, !DIExpression(), !2869)
    #dbg_value(i64 %pivot_is_zero.0, !2894, !DIExpression(), !2869)
  %add27 = add nsw i32 %cond16, 32, !dbg !2895
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2895
  %sub30 = add nsw i32 %nrows, -1, !dbg !2895
  %add32 = add nsw i32 %cond16, 32, !dbg !2895
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2895
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2897
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2880

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2898
  %not = xor i64 %call, -1, !dbg !2900
    #dbg_value(i64 %not, !2901, !DIExpression(), !2902)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2903
    #dbg_value(i64 %call37, !2904, !DIExpression(), !2902)
    #dbg_value(i32 0, !2905, !DIExpression(), !2907)
  br label %for.cond38, !dbg !2908

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2909
    #dbg_value(i32 %j.0, !2905, !DIExpression(), !2907)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2910
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2912

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2913
  %or = or i64 %and, %not, !dbg !2915
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2916
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2917
  %arrayidx43 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2918
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2918
  %and44 = and i64 %or, %0, !dbg !2919
  %arrayidx45 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2920
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2921
  %xor = xor i64 %1, %and44, !dbg !2921
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2921
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2922
    #dbg_value(i32 %inc47, !2905, !DIExpression(), !2907)
  br label %for.cond38, !dbg !2923, !llvm.loop !2924

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #7, !dbg !2926
    #dbg_value(i8 %call50, !2893, !DIExpression(), !2869)
  %conv = zext nneg i8 %call50 to i32, !dbg !2927
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #7, !dbg !2928
    #dbg_value(i64 %call51, !2894, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2869)
  %not52 = xor i64 %call51, -1, !dbg !2929
    #dbg_value(i64 %not52, !2894, !DIExpression(), !2869)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2930
    #dbg_value(i32 %inc54, !2892, !DIExpression(), !2891)
  br label %for.cond25, !dbg !2931, !llvm.loop !2932

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2869
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2869
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #7, !dbg !2934
    #dbg_value(i8 %call56, !2935, !DIExpression(), !2820)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #7, !dbg !2936
    #dbg_value(i32 %cond, !2937, !DIExpression(), !2939)
  br label %for.cond60, !dbg !2940

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2941
    #dbg_value(i32 %row59.0, !2937, !DIExpression(), !2939)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2942
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2944

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2945

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #7, !dbg !2947
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2949
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2949
    #dbg_value(i64 %and67, !2950, !DIExpression(), !2951)
    #dbg_value(i64 %and67.demorgan, !2952, !DIExpression(), !2951)
    #dbg_value(i32 0, !2953, !DIExpression(), !2955)
  br label %for.cond69, !dbg !2956

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2957
    #dbg_value(i32 %col.0, !2953, !DIExpression(), !2955)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2958
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2960

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2961
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2963
  %arrayidx75 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2964
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2964
  %and76 = and i64 %and67.demorgan, %2, !dbg !2965
  %arrayidx77 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2966
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2966
  %and78 = and i64 %3, %and67, !dbg !2967
  %add79 = add i64 %and76, %and78, !dbg !2968
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2969
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2970
  %arrayidx82 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2971
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2972
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2973
    #dbg_value(i32 %inc84, !2953, !DIExpression(), !2955)
  br label %for.cond69, !dbg !2974, !llvm.loop !2975

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2977
    #dbg_value(i32 %inc87, !2937, !DIExpression(), !2939)
  br label %for.cond60, !dbg !2978, !llvm.loop !2979

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2981
    #dbg_value(i32 %row89.0, !2982, !DIExpression(), !2983)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2984
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2945

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2986
    #dbg_value(i1 %cmp94, !2988, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2989)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2990
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2991
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #7, !dbg !2992
    #dbg_value(i8 %call100, !2993, !DIExpression(), !2989)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2994
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2995
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2996
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #7, !dbg !2997
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2998
    #dbg_value(i32 %inc110, !2982, !DIExpression(), !2983)
  br label %for.cond90, !dbg !2999, !llvm.loop !3000

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2859, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2820)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3002
  %5 = add i32 %4, 1, !dbg !3002
  %conv116 = add i32 %5, %pivot_row.0, !dbg !3002
    #dbg_value(i32 %conv116, !2859, !DIExpression(), !2820)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3003
    #dbg_value(i32 %inc118, !2860, !DIExpression(), !2861)
  br label %for.cond3, !dbg !3004, !llvm.loop !3005

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3007
    #dbg_value(i32 %i120.0, !3008, !DIExpression(), !3009)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3010
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2864

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3012
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3014
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #7, !dbg !3015
    #dbg_value(i32 0, !3016, !DIExpression(), !3018)
  br label %for.cond130, !dbg !3019

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3020
    #dbg_value(i32 %j129.0, !3016, !DIExpression(), !3018)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3021
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3023

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [96 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3024
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3024
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3026
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3027
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3027
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3028
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3029
    #dbg_value(i32 %inc139, !3016, !DIExpression(), !3018)
  br label %for.cond130, !dbg !3030, !llvm.loop !3031

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3033
    #dbg_value(i32 %inc142, !3008, !DIExpression(), !3009)
  br label %for.cond121, !dbg !3034, !llvm.loop !3035

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 96) #9, !dbg !3037
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 48) #9, !dbg !3038
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 48) #9, !dbg !3039
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 3744) #9, !dbg !3040
  ret void, !dbg !3041
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3042 {
entry:
    #dbg_value(i8 %a, !3044, !DIExpression(), !3045)
    #dbg_value(i8 0, !3046, !DIExpression(), !3045)
  %0 = icmp ne i8 %a, 0, !dbg !3047
  %conv3 = sext i1 %0 to i8, !dbg !3048
  %1 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3049
  %xor5 = xor i8 %1, %conv3, !dbg !3050
  ret i8 %xor5, !dbg !3051
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3052 {
entry:
    #dbg_value(i8 %a, !3055, !DIExpression(), !3056)
    #dbg_value(i64 %b, !3057, !DIExpression(), !3056)
  %0 = and i8 %a, 1, !dbg !3058
  %conv1 = zext nneg i8 %0 to i64, !dbg !3059
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3060
    #dbg_value(i64 %mul, !3061, !DIExpression(), !3056)
  %1 = and i8 %a, 2, !dbg !3062
  %conv4 = zext nneg i8 %1 to i64, !dbg !3063
  %mul5 = mul i64 %b, %conv4, !dbg !3064
  %xor = xor i64 %mul, %mul5, !dbg !3065
    #dbg_value(i64 %xor, !3061, !DIExpression(), !3056)
  %2 = and i8 %a, 4, !dbg !3066
  %conv8 = zext nneg i8 %2 to i64, !dbg !3067
  %mul9 = mul i64 %b, %conv8, !dbg !3068
  %xor10 = xor i64 %xor, %mul9, !dbg !3069
    #dbg_value(i64 %xor10, !3061, !DIExpression(), !3056)
  %3 = and i8 %a, 8, !dbg !3070
  %conv13 = zext nneg i8 %3 to i64, !dbg !3071
  %mul14 = mul i64 %b, %conv13, !dbg !3072
  %xor15 = xor i64 %xor10, %mul14, !dbg !3073
    #dbg_value(i64 %xor15, !3061, !DIExpression(), !3056)
    #dbg_value(i64 %xor15, !3074, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3056)
  %shr = lshr i64 %xor15, 4, !dbg !3075
  %and16 = lshr i64 %xor15, 3, !dbg !3076
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3076
  %4 = xor i64 %shr, %shr18, !dbg !3077
  %xor19 = xor i64 %4, %xor15, !dbg !3077
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3078
    #dbg_value(i64 %and20, !3079, !DIExpression(), !3056)
  ret i64 %and20, !dbg !3080
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3081 {
entry:
    #dbg_value(ptr %in, !3084, !DIExpression(), !3085)
    #dbg_value(ptr %out, !3086, !DIExpression(), !3085)
    #dbg_value(i32 %ncols, !3087, !DIExpression(), !3085)
    #dbg_value(ptr %out, !3088, !DIExpression(), !3085)
    #dbg_value(i32 0, !3089, !DIExpression(), !3085)
  br label %for.cond, !dbg !3090

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3092
    #dbg_value(i32 %i.0, !3089, !DIExpression(), !3085)
  %add = or disjoint i32 %i.0, 1, !dbg !3093
  %cmp = icmp slt i32 %add, %ncols, !dbg !3095
  br i1 %cmp, label %for.body, label %for.end, !dbg !3096

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3097
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3097
  %add2 = or disjoint i32 %i.0, 1, !dbg !3099
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3100
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3100
  %shl5 = shl i8 %1, 4, !dbg !3101
  %or = or i8 %shl5, %0, !dbg !3102
  %div = lshr exact i32 %i.0, 1, !dbg !3103
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3104
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3105
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3106
    #dbg_value(i32 %add8, !3089, !DIExpression(), !3085)
  br label %for.cond, !dbg !3107, !llvm.loop !3108

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3092
  %2 = and i32 %ncols, -2147483647, !dbg !3110
  %cmp9 = icmp eq i32 %2, 1, !dbg !3110
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3110

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3112
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3112
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3114
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3115
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3116
  br label %if.end, !dbg !3117

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3118
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3119 {
entry:
    #dbg_value(i32 %a, !3122, !DIExpression(), !3123)
    #dbg_value(i32 %b, !3124, !DIExpression(), !3123)
  %xor = xor i32 %a, %b, !dbg !3125
  %0 = icmp sgt i32 %xor, 0, !dbg !3126
  %shr = sext i1 %0 to i64, !dbg !3126
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3127
  %xor1 = xor i64 %1, %shr, !dbg !3128
  ret i64 %xor1, !dbg !3129
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3130 {
entry:
    #dbg_value(i32 %a, !3131, !DIExpression(), !3132)
    #dbg_value(i32 %b, !3133, !DIExpression(), !3132)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3134, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3132)
  %0 = icmp slt i32 %b, %a, !dbg !3135
  %shr = sext i1 %0 to i64, !dbg !3135
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3136
  %xor = xor i64 %1, %shr, !dbg !3137
  ret i64 %xor, !dbg !3138
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3139 {
entry:
    #dbg_value(ptr %in, !3142, !DIExpression(), !3143)
    #dbg_value(i32 %index, !3144, !DIExpression(), !3143)
  %div = sdiv i32 %index, 16, !dbg !3145
    #dbg_value(i32 %div, !3146, !DIExpression(), !3143)
  %rem = srem i32 %index, 16, !dbg !3147
    #dbg_value(i32 %rem, !3148, !DIExpression(), !3143)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3149
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3149
  %mul = shl nsw i32 %rem, 2, !dbg !3150
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3151
  %shr = lshr i64 %0, %sh_prom, !dbg !3151
  %1 = trunc i64 %shr to i8, !dbg !3152
  %conv = and i8 %1, 15, !dbg !3152
  ret i8 %conv, !dbg !3153
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3154 {
entry:
    #dbg_value(i8 %a, !3157, !DIExpression(), !3158)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #7, !dbg !3159
    #dbg_value(i8 %call, !3160, !DIExpression(), !3158)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #7, !dbg !3161
    #dbg_value(i8 %call1, !3162, !DIExpression(), !3158)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #7, !dbg !3163
    #dbg_value(i8 %call2, !3164, !DIExpression(), !3158)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #7, !dbg !3165
    #dbg_value(i8 %call3, !3166, !DIExpression(), !3158)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #7, !dbg !3167
    #dbg_value(i8 %call4, !3168, !DIExpression(), !3158)
  ret i8 %call4, !dbg !3169
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3170 {
entry:
    #dbg_value(i32 %legs, !3173, !DIExpression(), !3174)
    #dbg_value(ptr %in, !3175, !DIExpression(), !3174)
    #dbg_value(i8 %a, !3176, !DIExpression(), !3174)
    #dbg_value(ptr %acc, !3177, !DIExpression(), !3174)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #7, !dbg !3178
    #dbg_value(i32 %call, !3179, !DIExpression(), !3174)
    #dbg_value(i64 1229782938247303441, !3180, !DIExpression(), !3174)
    #dbg_value(i32 0, !3181, !DIExpression(), !3183)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3184
  br label %for.cond, !dbg !3184

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3185
    #dbg_value(i32 %i.0, !3181, !DIExpression(), !3183)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3186
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3188

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3189
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3189
  %and = and i64 %0, 1229782938247303441, !dbg !3191
  %and1 = and i32 %call, 255, !dbg !3192
  %conv = zext nneg i32 %and1 to i64, !dbg !3193
  %mul = mul i64 %and, %conv, !dbg !3194
  %shr = lshr i64 %0, 1, !dbg !3195
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3196
  %shr4 = lshr i32 %call, 8, !dbg !3197
  %and5 = and i32 %shr4, 15, !dbg !3198
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3199
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3200
  %xor = xor i64 %mul, %mul7, !dbg !3201
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3202
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3202
  %shr9 = lshr i64 %1, 2, !dbg !3203
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3204
  %shr11 = lshr i32 %call, 16, !dbg !3205
  %and12 = and i32 %shr11, 15, !dbg !3206
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3207
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3208
  %xor15 = xor i64 %xor, %mul14, !dbg !3209
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3210
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3210
  %shr17 = lshr i64 %2, 3, !dbg !3211
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3212
  %shr19 = lshr i32 %call, 24, !dbg !3213
  %and20 = and i32 %shr19, 15, !dbg !3214
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3215
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3216
  %xor23 = xor i64 %xor15, %mul22, !dbg !3217
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3218
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3219
  %xor25 = xor i64 %3, %xor23, !dbg !3219
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3219
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3220
    #dbg_value(i32 %inc, !3181, !DIExpression(), !3183)
  br label %for.cond, !dbg !3221, !llvm.loop !3222

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3224
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3225 {
entry:
    #dbg_value(i32 %legs, !3228, !DIExpression(), !3229)
    #dbg_value(ptr %in, !3230, !DIExpression(), !3229)
    #dbg_value(ptr %out, !3231, !DIExpression(), !3229)
    #dbg_value(ptr %in, !3232, !DIExpression(), !3229)
    #dbg_value(i32 0, !3233, !DIExpression(), !3235)
  br label %for.cond, !dbg !3236

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3237
    #dbg_value(i32 %i.0, !3233, !DIExpression(), !3235)
  %mul = shl nsw i32 %legs, 4, !dbg !3238
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3240
  br i1 %cmp, label %for.body, label %for.end, !dbg !3241

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3242
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3244
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3244
  %1 = and i8 %0, 15, !dbg !3245
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3246
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3247
  %div3 = lshr exact i32 %i.0, 1, !dbg !3248
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3249
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3249
  %3 = lshr i8 %2, 4, !dbg !3250
  %add = or disjoint i32 %i.0, 1, !dbg !3251
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3252
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3253
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3254
    #dbg_value(i32 %add8, !3233, !DIExpression(), !3235)
  br label %for.cond, !dbg !3255, !llvm.loop !3256

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3258
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3259 {
entry:
    #dbg_value(i8 %b, !3260, !DIExpression(), !3261)
  %conv = zext nneg i8 %b to i32, !dbg !3262
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3263
    #dbg_value(i32 %mul, !3264, !DIExpression(), !3261)
    #dbg_value(i32 -252645136, !3265, !DIExpression(), !3261)
  %and = and i32 %mul, 1894838512, !dbg !3266
    #dbg_value(i32 %and, !3267, !DIExpression(), !3261)
  %shr = lshr exact i32 %and, 4, !dbg !3268
  %shr1 = lshr exact i32 %and, 3, !dbg !3269
  %0 = xor i32 %shr, %shr1, !dbg !3270
  %xor2 = xor i32 %0, %mul, !dbg !3270
  ret i32 %xor2, !dbg !3271
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3272 {
entry:
    #dbg_value(i8 %a, !3273, !DIExpression(), !3274)
    #dbg_value(i8 %b, !3275, !DIExpression(), !3274)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3276
  %xor1 = xor i8 %a, %0, !dbg !3277
    #dbg_value(i8 %xor1, !3273, !DIExpression(), !3274)
  %1 = trunc i8 %xor1 to i1, !dbg !3278
    #dbg_value(i8 poison, !3279, !DIExpression(), !3274)
  %2 = and i8 %xor1, 2, !dbg !3280
  %mul9 = mul i8 %2, %b, !dbg !3281
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3278
  %xor11 = xor i8 %conv10, %mul9, !dbg !3282
    #dbg_value(i8 %xor11, !3279, !DIExpression(), !3274)
  %3 = and i8 %xor1, 4, !dbg !3283
  %mul16 = mul i8 %3, %b, !dbg !3284
  %xor18 = xor i8 %mul16, %xor11, !dbg !3285
    #dbg_value(i8 %xor18, !3279, !DIExpression(), !3274)
  %4 = and i8 %xor1, 8, !dbg !3286
  %mul23 = mul i8 %4, %b, !dbg !3287
  %xor25 = xor i8 %mul23, %xor18, !dbg !3288
    #dbg_value(i8 %xor25, !3279, !DIExpression(), !3274)
    #dbg_value(i8 %xor25, !3289, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3274)
  %5 = lshr i8 %xor25, 4, !dbg !3290
  %6 = lshr i8 %xor25, 3, !dbg !3291
  %7 = and i8 %6, 14, !dbg !3291
  %8 = xor i8 %5, %7, !dbg !3292
  %xor25.masked = and i8 %xor25, 15, !dbg !3293
  %9 = xor i8 %8, %xor25.masked, !dbg !3293
    #dbg_value(i8 %9, !3294, !DIExpression(), !3274)
  ret i8 %9, !dbg !3295
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3296 {
entry:
    #dbg_value(ptr %a, !3297, !DIExpression(), !3298)
    #dbg_value(ptr %b, !3299, !DIExpression(), !3298)
    #dbg_value(i32 %n, !3300, !DIExpression(), !3298)
    #dbg_value(i32 1, !3301, !DIExpression(), !3298)
    #dbg_value(i8 0, !3302, !DIExpression(), !3298)
    #dbg_value(i32 0, !3303, !DIExpression(), !3305)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3306
  br label %for.cond, !dbg !3306

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3298
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3307
    #dbg_value(i32 %i.0, !3303, !DIExpression(), !3305)
    #dbg_value(ptr %b.addr.0, !3299, !DIExpression(), !3298)
    #dbg_value(i8 %ret.0, !3302, !DIExpression(), !3298)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3308
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3310

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3311
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3311
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3313
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !3314
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #7, !dbg !3315
    #dbg_value(i8 %call1, !3302, !DIExpression(), !3298)
  %inc = add nuw i32 %i.0, 1, !dbg !3316
    #dbg_value(i32 %inc, !3303, !DIExpression(), !3305)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3317
    #dbg_value(ptr %add.ptr, !3299, !DIExpression(), !3298)
  br label %for.cond, !dbg !3318, !llvm.loop !3319

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3298
  ret i8 %ret.0.lcssa, !dbg !3321
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3322 {
entry:
    #dbg_value(i8 %a, !3323, !DIExpression(), !3324)
    #dbg_value(i8 %b, !3325, !DIExpression(), !3324)
  %xor1 = xor i8 %a, %b, !dbg !3326
  ret i8 %xor1, !dbg !3327
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3328 {
entry:
    #dbg_value(ptr %state, !3336, !DIExpression(), !3337)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !3338
  store ptr %call, ptr %state, align 4, !dbg !3339
  %cmp = icmp eq ptr %call, null, !dbg !3340
  br i1 %cmp, label %if.then, label %if.end, !dbg !3340

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !3342
  br label %if.end, !dbg !3344

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3345
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !3346
  ret void, !dbg !3347
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #5

declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3348 {
entry:
    #dbg_value(ptr %s_inc, !3349, !DIExpression(), !3350)
    #dbg_value(i32 0, !3351, !DIExpression(), !3350)
  br label %for.cond, !dbg !3352

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3354
    #dbg_value(i32 %i.0, !3351, !DIExpression(), !3350)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3355
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3357

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3358
  store i64 0, ptr %arrayidx, align 8, !dbg !3360
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3361
    #dbg_value(i32 %inc, !3351, !DIExpression(), !3350)
  br label %for.cond, !dbg !3362, !llvm.loop !3363

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3365
  store i64 0, ptr %arrayidx1, align 8, !dbg !3366
  ret void, !dbg !3367
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3368 {
entry:
    #dbg_value(ptr %state, !3373, !DIExpression(), !3374)
    #dbg_value(ptr %input, !3375, !DIExpression(), !3374)
    #dbg_value(i32 %inlen, !3376, !DIExpression(), !3374)
  %0 = load ptr, ptr %state, align 4, !dbg !3377
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #7, !dbg !3378
  ret void, !dbg !3379
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3380 {
entry:
    #dbg_value(ptr %s_inc, !3383, !DIExpression(), !3384)
    #dbg_value(i32 %r, !3385, !DIExpression(), !3384)
    #dbg_value(ptr %m, !3386, !DIExpression(), !3384)
    #dbg_value(i32 %mlen, !3387, !DIExpression(), !3384)
  br label %while.cond, !dbg !3388

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3387, !DIExpression(), !3384)
    #dbg_value(ptr %m.addr.0, !3386, !DIExpression(), !3384)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3389
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3390
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3390
  %add = add i64 %0, %conv, !dbg !3391
  %conv1 = zext nneg i32 %r to i64, !dbg !3392
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3393
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3388

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3394

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3397

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3399
    #dbg_value(i32 %i.0, !3400, !DIExpression(), !3384)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3401
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3401
  %conv4 = trunc i64 %1 to i32, !dbg !3403
  %sub = sub i32 %r, %conv4, !dbg !3404
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3405
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3394

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3406
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3406
  %conv8 = zext i8 %2 to i64, !dbg !3408
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3409
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3409
  %conv10 = zext i32 %i.0 to i64, !dbg !3410
  %add11 = add i64 %3, %conv10, !dbg !3411
  %and = shl i64 %add11, 3, !dbg !3412
  %mul = and i64 %and, 56, !dbg !3412
  %shl = shl nuw i64 %conv8, %mul, !dbg !3413
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3414
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3414
  %conv13 = zext i32 %i.0 to i64, !dbg !3415
  %add14 = add i64 %4, %conv13, !dbg !3416
  %shr = lshr i64 %add14, 3, !dbg !3417
  %idxprom = trunc i64 %shr to i32, !dbg !3418
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3418
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3419
  %xor = xor i64 %5, %shl, !dbg !3419
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3419
  %inc = add nuw i32 %i.0, 1, !dbg !3420
    #dbg_value(i32 %inc, !3400, !DIExpression(), !3384)
  br label %for.cond, !dbg !3421, !llvm.loop !3422

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3424
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3424
  %7 = trunc i64 %6 to i32, !dbg !3425
  %conv19.neg = sub i32 %7, %r, !dbg !3425
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3426
    #dbg_value(i32 %sub20, !3387, !DIExpression(), !3384)
  %8 = trunc i64 %6 to i32, !dbg !3427
  %idx.ext = sub i32 %r, %8, !dbg !3427
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3427
    #dbg_value(ptr %add.ptr, !3386, !DIExpression(), !3384)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3428
  store i64 0, ptr %arrayidx24, align 8, !dbg !3429
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !3430
  br label %while.cond, !dbg !3388, !llvm.loop !3431

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3433
    #dbg_value(i32 %i.1, !3400, !DIExpression(), !3384)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3434
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3397

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3436
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3436
  %conv30 = zext i8 %9 to i64, !dbg !3438
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3439
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3439
  %conv32 = zext i32 %i.1 to i64, !dbg !3440
  %add33 = add i64 %10, %conv32, !dbg !3441
  %and34 = shl i64 %add33, 3, !dbg !3442
  %mul35 = and i64 %and34, 56, !dbg !3442
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3443
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3444
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3444
  %conv38 = zext i32 %i.1 to i64, !dbg !3445
  %add39 = add i64 %11, %conv38, !dbg !3446
  %shr40 = lshr i64 %add39, 3, !dbg !3447
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3448
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3448
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3449
  %xor43 = xor i64 %12, %shl36, !dbg !3449
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3449
  %inc45 = add i32 %i.1, 1, !dbg !3450
    #dbg_value(i32 %inc45, !3400, !DIExpression(), !3384)
  br label %for.cond25, !dbg !3451, !llvm.loop !3452

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3454
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3455
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3456
  %add49 = add i64 %13, %conv47, !dbg !3456
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3456
  ret void, !dbg !3457
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3458 {
entry:
    #dbg_value(ptr %state, !3459, !DIExpression(), !3460)
  %0 = load i64, ptr %state, align 8, !dbg !3461
    #dbg_value(i64 %0, !3462, !DIExpression(), !3460)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3463
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3463
    #dbg_value(i64 %1, !3464, !DIExpression(), !3460)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3465
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3465
    #dbg_value(i64 %2, !3466, !DIExpression(), !3460)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3467
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3467
    #dbg_value(i64 %3, !3468, !DIExpression(), !3460)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3469
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3469
    #dbg_value(i64 %4, !3470, !DIExpression(), !3460)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3471
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3471
    #dbg_value(i64 %5, !3472, !DIExpression(), !3460)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3473
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3473
    #dbg_value(i64 %6, !3474, !DIExpression(), !3460)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3475
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3475
    #dbg_value(i64 %7, !3476, !DIExpression(), !3460)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3477
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3477
    #dbg_value(i64 %8, !3478, !DIExpression(), !3460)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3479
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3479
    #dbg_value(i64 %9, !3480, !DIExpression(), !3460)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3481
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3481
    #dbg_value(i64 %10, !3482, !DIExpression(), !3460)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3483
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3483
    #dbg_value(i64 %11, !3484, !DIExpression(), !3460)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3485
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3485
    #dbg_value(i64 %12, !3486, !DIExpression(), !3460)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3487
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3487
    #dbg_value(i64 %13, !3488, !DIExpression(), !3460)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3489
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3489
    #dbg_value(i64 %14, !3490, !DIExpression(), !3460)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3491
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3491
    #dbg_value(i64 %15, !3492, !DIExpression(), !3460)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3493
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3493
    #dbg_value(i64 %16, !3494, !DIExpression(), !3460)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3495
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3495
    #dbg_value(i64 %17, !3496, !DIExpression(), !3460)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3497
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3497
    #dbg_value(i64 %18, !3498, !DIExpression(), !3460)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3499
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3499
    #dbg_value(i64 %19, !3500, !DIExpression(), !3460)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3501
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3501
    #dbg_value(i64 %20, !3502, !DIExpression(), !3460)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3503
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3503
    #dbg_value(i64 %21, !3504, !DIExpression(), !3460)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3505
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3505
    #dbg_value(i64 %22, !3506, !DIExpression(), !3460)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3507
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3507
    #dbg_value(i64 %23, !3508, !DIExpression(), !3460)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3509
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3509
    #dbg_value(i64 %24, !3510, !DIExpression(), !3460)
    #dbg_value(i32 0, !3511, !DIExpression(), !3460)
  br label %for.cond, !dbg !3512

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3460
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3460
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3460
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3460
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3460
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3460
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3460
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3460
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3460
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3460
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3460
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3460
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3460
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3460
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3460
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3460
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3460
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3460
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3460
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3460
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3460
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3460
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3460
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3460
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3514
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3460
    #dbg_value(i64 %Asu.0, !3510, !DIExpression(), !3460)
    #dbg_value(i32 %round.0, !3511, !DIExpression(), !3460)
    #dbg_value(i64 %Aba.0, !3462, !DIExpression(), !3460)
    #dbg_value(i64 %Abe.0, !3464, !DIExpression(), !3460)
    #dbg_value(i64 %Abi.0, !3466, !DIExpression(), !3460)
    #dbg_value(i64 %Abo.0, !3468, !DIExpression(), !3460)
    #dbg_value(i64 %Abu.0, !3470, !DIExpression(), !3460)
    #dbg_value(i64 %Aga.0, !3472, !DIExpression(), !3460)
    #dbg_value(i64 %Age.0, !3474, !DIExpression(), !3460)
    #dbg_value(i64 %Agi.0, !3476, !DIExpression(), !3460)
    #dbg_value(i64 %Ago.0, !3478, !DIExpression(), !3460)
    #dbg_value(i64 %Agu.0, !3480, !DIExpression(), !3460)
    #dbg_value(i64 %Aka.0, !3482, !DIExpression(), !3460)
    #dbg_value(i64 %Ake.0, !3484, !DIExpression(), !3460)
    #dbg_value(i64 %Aki.0, !3486, !DIExpression(), !3460)
    #dbg_value(i64 %Ako.0, !3488, !DIExpression(), !3460)
    #dbg_value(i64 %Aku.0, !3490, !DIExpression(), !3460)
    #dbg_value(i64 %Ama.0, !3492, !DIExpression(), !3460)
    #dbg_value(i64 %Ame.0, !3494, !DIExpression(), !3460)
    #dbg_value(i64 %Ami.0, !3496, !DIExpression(), !3460)
    #dbg_value(i64 %Amo.0, !3498, !DIExpression(), !3460)
    #dbg_value(i64 %Amu.0, !3500, !DIExpression(), !3460)
    #dbg_value(i64 %Asa.0, !3502, !DIExpression(), !3460)
    #dbg_value(i64 %Ase.0, !3504, !DIExpression(), !3460)
    #dbg_value(i64 %Asi.0, !3506, !DIExpression(), !3460)
    #dbg_value(i64 %Aso.0, !3508, !DIExpression(), !3460)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3515
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3517

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 poison, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3553
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3555
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3556
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3557
    #dbg_value(i64 %xor35, !3520, !DIExpression(), !3460)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3558
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3559
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3560
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3561
    #dbg_value(i64 %xor43, !3522, !DIExpression(), !3460)
  %xor56 = call i64 @llvm.fshl.i64(i64 %xor43, i64 %xor43, i64 1), !dbg !3562
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %xor56), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %xor56), !3468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %xor56), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %xor56), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %xor56), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor35, i64 %xor56), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor57 = xor i64 %xor35, %xor56, !dbg !3563
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 %xor57, !3526, !DIExpression(), !3460)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3564
    #dbg_value(i64 %xor203, !3478, !DIExpression(), !3460)
  %xor206 = call i64 @llvm.fshl.i64(i64 %xor203, i64 %xor203, i64 55), !dbg !3565
    #dbg_value(i64 %xor206, !3519, !DIExpression(), !3460)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3566
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3567
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3568
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3569
    #dbg_value(i64 %xor31, !3519, !DIExpression(), !3460)
  %xor44 = call i64 @llvm.fshl.i64(i64 %xor31, i64 %xor31, i64 1), !dbg !3570
    #dbg_value(!DIArgList(i64 %xor43, i64 %xor44), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %xor44), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %xor44), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %xor44), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %xor44), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor45 = xor i64 %xor43, %xor44, !dbg !3571
    #dbg_value(i64 %xor45, !3523, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3572
    #dbg_value(i64 %xor211, !3492, !DIExpression(), !3460)
  %xor214 = call i64 @llvm.fshl.i64(i64 %xor211, i64 %xor211, i64 41), !dbg !3573
    #dbg_value(i64 %xor214, !3521, !DIExpression(), !3460)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3574
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3575
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3576
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3577
    #dbg_value(i64 %xor39, !3521, !DIExpression(), !3460)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3578
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3579
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3580
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3581
    #dbg_value(i64 %xor27, !3518, !DIExpression(), !3460)
  %xor60 = call i64 @llvm.fshl.i64(i64 %xor27, i64 %xor27, i64 1), !dbg !3582
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %xor60), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %xor60), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %xor60), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %xor60), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor39, i64 %xor60), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %xor60), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor61 = xor i64 %xor39, %xor60, !dbg !3583
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 %xor61, !3527, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3584
    #dbg_value(i64 %xor207, !3490, !DIExpression(), !3460)
  %xor210 = call i64 @llvm.fshl.i64(i64 %xor207, i64 %xor207, i64 39), !dbg !3585
    #dbg_value(i64 %xor210, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %xor210), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not222 = xor i64 %xor210, -1, !dbg !3586
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %not222), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and223 = and i64 %xor214, %not222, !dbg !3587
    #dbg_value(!DIArgList(i64 %xor206, i64 %and223), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor224 = xor i64 %xor206, %and223, !dbg !3588
    #dbg_value(i64 %xor224, !3549, !DIExpression(), !3460)
  %xor52 = call i64 @llvm.fshl.i64(i64 %xor39, i64 %xor39, i64 1), !dbg !3589
    #dbg_value(!DIArgList(i64 %xor31, i64 %xor52), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %xor52), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %xor52), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %xor52), !3466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %xor52), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %xor52), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor53 = xor i64 %xor31, %xor52, !dbg !3590
    #dbg_value(i64 %xor53, !3525, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3591
    #dbg_value(i64 %xor67, !3486, !DIExpression(), !3460)
  %xor70 = call i64 @llvm.fshl.i64(i64 %xor67, i64 %xor67, i64 43), !dbg !3592
    #dbg_value(i64 %xor70, !3520, !DIExpression(), !3460)
  %xor48 = call i64 @llvm.fshl.i64(i64 %xor35, i64 %xor35, i64 1), !dbg !3593
    #dbg_value(!DIArgList(i64 %xor27, i64 %xor48), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %xor48), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %xor48), !3464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %xor48), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %xor48), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %xor48), !3504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor49 = xor i64 %xor27, %xor48, !dbg !3594
    #dbg_value(i64 %xor49, !3524, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3595
    #dbg_value(i64 %xor63, !3474, !DIExpression(), !3460)
  %xor66 = call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 44), !dbg !3596
    #dbg_value(i64 %xor66, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %xor66), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not = xor i64 %xor66, -1, !dbg !3597
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %not), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and = and i64 %xor70, %not, !dbg !3598
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3599
  %25 = load i64, ptr %arrayidx80, align 8, !dbg !3599
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %25), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %26 = xor i64 %and, %25, !dbg !3600
    #dbg_value(!DIArgList(i64 %26, i64 %Aba.0, i64 %xor45), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3601
    #dbg_value(i64 %xor62, !3462, !DIExpression(), !3460)
    #dbg_value(i64 %xor62, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %26, i64 %xor62), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor81 = xor i64 %26, %xor62, !dbg !3600
    #dbg_value(i64 %xor81, !3528, !DIExpression(), !3460)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3602
    #dbg_value(i64 %xor94, !3468, !DIExpression(), !3460)
  %xor97 = call i64 @llvm.fshl.i64(i64 %xor94, i64 %xor94, i64 28), !dbg !3603
    #dbg_value(i64 %xor97, !3518, !DIExpression(), !3460)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3604
    #dbg_value(i64 %xor102, !3482, !DIExpression(), !3460)
  %xor105 = call i64 @llvm.fshl.i64(i64 %xor102, i64 %xor102, i64 3), !dbg !3605
    #dbg_value(i64 %xor105, !3520, !DIExpression(), !3460)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3606
    #dbg_value(i64 %xor98, !3480, !DIExpression(), !3460)
  %xor101 = call i64 @llvm.fshl.i64(i64 %xor98, i64 %xor98, i64 20), !dbg !3607
    #dbg_value(i64 %xor101, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %xor101), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not114 = xor i64 %xor101, -1, !dbg !3608
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %not114), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and115 = and i64 %xor105, %not114, !dbg !3609
    #dbg_value(!DIArgList(i64 %xor97, i64 %and115), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor116 = xor i64 %xor97, %and115, !dbg !3610
    #dbg_value(i64 %xor116, !3533, !DIExpression(), !3460)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3611
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3612
    #dbg_value(i64 %xor129, !3464, !DIExpression(), !3460)
  %xor132 = call i64 @llvm.fshl.i64(i64 %xor129, i64 %xor129, i64 1), !dbg !3613
    #dbg_value(i64 %xor132, !3518, !DIExpression(), !3460)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3614
    #dbg_value(i64 %xor137, !3488, !DIExpression(), !3460)
  %xor140 = call i64 @llvm.fshl.i64(i64 %xor137, i64 %xor137, i64 25), !dbg !3615
    #dbg_value(i64 %xor140, !3520, !DIExpression(), !3460)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3616
    #dbg_value(i64 %xor133, !3476, !DIExpression(), !3460)
  %xor136 = call i64 @llvm.fshl.i64(i64 %xor133, i64 %xor133, i64 6), !dbg !3617
    #dbg_value(i64 %xor136, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %xor136), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not149 = xor i64 %xor136, -1, !dbg !3618
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %not149), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and150 = and i64 %xor140, %not149, !dbg !3619
    #dbg_value(!DIArgList(i64 %xor132, i64 %and150), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor151 = xor i64 %xor132, %and150, !dbg !3620
    #dbg_value(i64 %xor151, !3538, !DIExpression(), !3460)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3621
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3622
    #dbg_value(i64 %xor164, !3470, !DIExpression(), !3460)
  %xor167 = call i64 @llvm.fshl.i64(i64 %xor164, i64 %xor164, i64 27), !dbg !3623
    #dbg_value(i64 %xor167, !3518, !DIExpression(), !3460)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3624
    #dbg_value(i64 %xor172, !3484, !DIExpression(), !3460)
  %xor175 = call i64 @llvm.fshl.i64(i64 %xor172, i64 %xor172, i64 10), !dbg !3625
    #dbg_value(i64 %xor175, !3520, !DIExpression(), !3460)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3626
    #dbg_value(i64 %xor168, !3472, !DIExpression(), !3460)
  %xor171 = call i64 @llvm.fshl.i64(i64 %xor168, i64 %xor168, i64 36), !dbg !3627
    #dbg_value(i64 %xor171, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %xor171), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not184 = xor i64 %xor171, -1, !dbg !3628
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %not184), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and185 = and i64 %xor175, %not184, !dbg !3629
    #dbg_value(!DIArgList(i64 %xor167, i64 %and185), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor186 = xor i64 %xor167, %and185, !dbg !3630
    #dbg_value(i64 %xor186, !3543, !DIExpression(), !3460)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3631
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3632
    #dbg_value(i64 %xor199, !3466, !DIExpression(), !3460)
  %xor202 = call i64 @llvm.fshl.i64(i64 %xor199, i64 %xor199, i64 62), !dbg !3633
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %xor206), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %xor206), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not219 = xor i64 %xor206, -1, !dbg !3634
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %not219), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %not219), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and220 = and i64 %xor210, %not219, !dbg !3635
    #dbg_value(!DIArgList(i64 %xor202, i64 %and220), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %and220), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor221 = xor i64 %xor202, %and220, !dbg !3636
    #dbg_value(i64 %xor221, !3548, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3637
    #dbg_value(i64 %xor237, !3518, !DIExpression(), !3460)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3638
    #dbg_value(i64 %xor75, !3510, !DIExpression(), !3460)
  %xor78 = call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 14), !dbg !3639
    #dbg_value(i64 %xor78, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %xor62), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3640
    #dbg_value(i64 %xor71, !3498, !DIExpression(), !3460)
  %xor74 = call i64 @llvm.fshl.i64(i64 %xor71, i64 %xor71, i64 21), !dbg !3641
    #dbg_value(i64 %xor74, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %xor74), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor74, i64 %xor70), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor62, i64 %xor78), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not85 = xor i64 %xor74, -1, !dbg !3642
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %not85), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and86 = and i64 %xor78, %not85, !dbg !3643
    #dbg_value(!DIArgList(i64 %xor70, i64 %and86), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor87 = xor i64 %xor70, %and86, !dbg !3644
    #dbg_value(i64 %xor87, !3530, !DIExpression(), !3460)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3645
    #dbg_value(i64 %xor110, !3506, !DIExpression(), !3460)
  %xor113 = call i64 @llvm.fshl.i64(i64 %xor110, i64 %xor110, i64 61), !dbg !3646
    #dbg_value(i64 %xor113, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %xor97), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3647
    #dbg_value(i64 %xor106, !3494, !DIExpression(), !3460)
  %xor109 = call i64 @llvm.fshl.i64(i64 %xor106, i64 %xor106, i64 45), !dbg !3648
    #dbg_value(i64 %xor109, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %xor109), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %xor113), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor109, i64 %xor105), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not120 = xor i64 %xor109, -1, !dbg !3649
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %not120), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and121 = and i64 %xor113, %not120, !dbg !3650
    #dbg_value(!DIArgList(i64 %xor105, i64 %and121), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor122 = xor i64 %xor105, %and121, !dbg !3651
    #dbg_value(i64 %xor122, !3535, !DIExpression(), !3460)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3652
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3653
    #dbg_value(i64 %xor145, !3502, !DIExpression(), !3460)
  %xor148 = call i64 @llvm.fshl.i64(i64 %xor145, i64 %xor145, i64 18), !dbg !3654
    #dbg_value(i64 %xor148, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %xor132), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3655
    #dbg_value(i64 %xor141, !3500, !DIExpression(), !3460)
  %xor144 = call i64 @llvm.fshl.i64(i64 %xor141, i64 %xor141, i64 8), !dbg !3656
    #dbg_value(i64 %xor144, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %xor144), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor144, i64 %xor140), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor132, i64 %xor148), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not155 = xor i64 %xor144, -1, !dbg !3657
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %not155), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and156 = and i64 %xor148, %not155, !dbg !3658
    #dbg_value(!DIArgList(i64 %xor140, i64 %and156), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor157 = xor i64 %xor140, %and156, !dbg !3659
    #dbg_value(i64 %xor157, !3540, !DIExpression(), !3460)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3660
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3661
    #dbg_value(i64 %xor180, !3508, !DIExpression(), !3460)
  %xor183 = call i64 @llvm.fshl.i64(i64 %xor180, i64 %xor180, i64 56), !dbg !3662
    #dbg_value(i64 %xor183, !3522, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %xor167), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3663
    #dbg_value(i64 %xor176, !3496, !DIExpression(), !3460)
  %xor179 = call i64 @llvm.fshl.i64(i64 %xor176, i64 %xor176, i64 15), !dbg !3664
    #dbg_value(i64 %xor179, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %xor179), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor179, i64 %xor175), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor167, i64 %xor183), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %xor70), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %not190 = xor i64 %xor179, -1, !dbg !3665
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %not190), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and191 = and i64 %xor183, %not190, !dbg !3666
    #dbg_value(!DIArgList(i64 %xor175, i64 %and191), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor192 = xor i64 %xor175, %and191, !dbg !3667
    #dbg_value(i64 %xor192, !3545, !DIExpression(), !3460)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3668
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3669
    #dbg_value(i64 %xor215, !3504, !DIExpression(), !3460)
  %xor218 = call i64 @llvm.fshl.i64(i64 %xor215, i64 %xor215, i64 2), !dbg !3670
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %xor214), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %xor202), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor202, i64 %xor218), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %xor214), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %xor113), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %xor62), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not225 = xor i64 %xor214, -1, !dbg !3671
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %not225), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %not225), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and226 = and i64 %xor218, %not225, !dbg !3672
    #dbg_value(!DIArgList(i64 %xor210, i64 %and226), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %and226), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor227 = xor i64 %xor210, %and226, !dbg !3673
    #dbg_value(i64 %xor227, !3550, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3674
    #dbg_value(i64 %xor245, !3520, !DIExpression(), !3460)
  %xor260 = call i64 @llvm.fshl.i64(i64 %xor245, i64 %xor245, i64 1), !dbg !3675
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %xor260), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor237, i64 %xor74, i64 %xor70, i64 %xor260), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor237, i64 %xor109, i64 %xor105, i64 %xor260), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor237, i64 %xor144, i64 %xor140, i64 %xor260), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor237, i64 %xor179, i64 %xor175, i64 %xor260), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor237, i64 %xor260), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor261 = xor i64 %xor237, %xor260, !dbg !3676
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %xor70), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %xor105), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %xor140), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %xor175), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 %xor261, !3524, !DIExpression(), !3460)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3677
    #dbg_value(i64 %xor429, !3549, !DIExpression(), !3460)
  %xor432 = call i64 @llvm.fshl.i64(i64 %xor429, i64 %xor429, i64 2), !dbg !3678
    #dbg_value(i64 %xor432, !3522, !DIExpression(), !3460)
  %not123 = xor i64 %xor113, -1, !dbg !3679
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %not123), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %not123), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and124 = and i64 %xor97, %not123, !dbg !3680
    #dbg_value(!DIArgList(i64 %xor109, i64 %and124), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %and124), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor125 = xor i64 %xor109, %and124, !dbg !3681
    #dbg_value(i64 %xor125, !3536, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %xor78), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not91 = xor i64 %xor62, -1, !dbg !3682
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %not91), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %not91), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and92 = and i64 %xor66, %not91, !dbg !3683
    #dbg_value(!DIArgList(i64 %xor78, i64 %and92), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %and92), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor93 = xor i64 %xor78, %and92, !dbg !3684
    #dbg_value(i64 %xor93, !3532, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not126 = xor i64 %xor97, -1, !dbg !3685
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %not126), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %not126), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and127 = and i64 %xor101, %not126, !dbg !3686
    #dbg_value(!DIArgList(i64 %xor113, i64 %and127), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %and127), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor128 = xor i64 %xor113, %and127, !dbg !3687
    #dbg_value(i64 %xor128, !3537, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor128), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3688
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not161 = xor i64 %xor132, -1, !dbg !3689
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %not161), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %not161), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and162 = and i64 %xor136, %not161, !dbg !3690
    #dbg_value(!DIArgList(i64 %xor148, i64 %and162), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %and162), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor163 = xor i64 %xor148, %and162, !dbg !3691
    #dbg_value(i64 %xor163, !3542, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor163), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3692
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not196 = xor i64 %xor167, -1, !dbg !3693
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %not196), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %not196), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and197 = and i64 %xor171, %not196, !dbg !3694
    #dbg_value(!DIArgList(i64 %xor183, i64 %and197), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %and197), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor198 = xor i64 %xor183, %and197, !dbg !3695
    #dbg_value(i64 %xor198, !3547, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor198), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3696
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %xor202), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not231 = xor i64 %xor202, -1, !dbg !3697
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %not231), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %not231), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %and232 = and i64 %xor206, %not231, !dbg !3698
    #dbg_value(!DIArgList(i64 %xor218, i64 %and232), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %and232), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor233 = xor i64 %xor218, %and232, !dbg !3699
    #dbg_value(i64 %xor233, !3552, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3700
    #dbg_value(i64 %xor253, !3522, !DIExpression(), !3460)
  %xor268 = call i64 @llvm.fshl.i64(i64 %xor253, i64 %xor253, i64 1), !dbg !3701
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %xor268), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor245, i64 %xor62, i64 %xor78, i64 %xor268), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor245, i64 %xor132, i64 %xor148, i64 %xor268), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor245, i64 %xor167, i64 %xor183, i64 %xor268), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor245, i64 %xor202, i64 %xor218, i64 %xor268), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor245, i64 %xor268), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor269 = xor i64 %xor245, %xor268, !dbg !3702
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %xor78), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %xor148), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %xor183), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %xor218), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 %xor269, !3526, !DIExpression(), !3460)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3703
    #dbg_value(i64 %xor417, !3536, !DIExpression(), !3460)
  %xor420 = call i64 @llvm.fshl.i64(i64 %xor417, i64 %xor417, i64 55), !dbg !3704
    #dbg_value(i64 %xor420, !3519, !DIExpression(), !3460)
  %not82 = xor i64 %xor70, -1, !dbg !3705
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %not82), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %not82), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and83 = and i64 %xor74, %not82, !dbg !3706
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %and83), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %and83), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor84 = xor i64 %xor66, %and83, !dbg !3707
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %not117 = xor i64 %xor105, -1, !dbg !3708
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %not117), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %not117), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and118 = and i64 %xor109, %not117, !dbg !3709
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %and118), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %and118), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor119 = xor i64 %xor101, %and118, !dbg !3710
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor119), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3711
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %not152 = xor i64 %xor140, -1, !dbg !3712
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %not152), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %not152), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and153 = and i64 %xor144, %not152, !dbg !3713
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %and153), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %and153), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor154 = xor i64 %xor136, %and153, !dbg !3714
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor154), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3715
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %not187 = xor i64 %xor175, -1, !dbg !3716
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %not187), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %not187), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and188 = and i64 %xor179, %not187, !dbg !3717
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %and188), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %and188), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor189 = xor i64 %xor171, %and188, !dbg !3718
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3719
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3720
    #dbg_value(i64 %xor241, !3519, !DIExpression(), !3460)
  %not88 = xor i64 %xor78, -1, !dbg !3721
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %not88), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %not88), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and89 = and i64 %xor62, %not88, !dbg !3722
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %and89), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %and89), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor90 = xor i64 %xor74, %and89, !dbg !3723
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3724
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not158 = xor i64 %xor148, -1, !dbg !3725
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %not158), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %not158), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and159 = and i64 %xor132, %not158, !dbg !3726
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %and159), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %and159), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor160 = xor i64 %xor144, %and159, !dbg !3727
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor160), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3728
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not193 = xor i64 %xor183, -1, !dbg !3729
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %not193), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %not193), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and194 = and i64 %xor167, %not193, !dbg !3730
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %and194), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %and194), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor195 = xor i64 %xor179, %and194, !dbg !3731
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor195), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3732
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %xor218), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %not228 = xor i64 %xor218, -1, !dbg !3733
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %not228), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %not228), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and229 = and i64 %xor202, %not228, !dbg !3734
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %and229), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %and229), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor230 = xor i64 %xor214, %and229, !dbg !3735
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3736
    #dbg_value(i64 %xor249, !3521, !DIExpression(), !3460)
  %xor264 = call i64 @llvm.fshl.i64(i64 %xor249, i64 %xor249, i64 1), !dbg !3737
    #dbg_value(!DIArgList(i64 %xor241, i64 %xor264), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %xor264), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %xor264), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %xor264), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %xor264), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %xor264), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor265 = xor i64 %xor241, %xor264, !dbg !3738
    #dbg_value(i64 %xor265, !3525, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3739
    #dbg_value(i64 %xor413, !3530, !DIExpression(), !3460)
  %xor416 = call i64 @llvm.fshl.i64(i64 %xor413, i64 %xor413, i64 62), !dbg !3740
    #dbg_value(i64 %xor416, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %xor416), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not445 = xor i64 %xor416, -1, !dbg !3741
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %not445), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and446 = and i64 %xor420, %not445, !dbg !3742
    #dbg_value(!DIArgList(i64 %xor432, i64 %and446), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor447 = xor i64 %xor432, %and446, !dbg !3743
    #dbg_value(i64 %xor447, !3510, !DIExpression(), !3460)
  %xor256 = call i64 @llvm.fshl.i64(i64 %xor241, i64 %xor241, i64 1), !dbg !3744
    #dbg_value(!DIArgList(i64 %xor253, i64 %xor256), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %xor256), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %xor256), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %xor256), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %xor256), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor257 = xor i64 %xor253, %xor256, !dbg !3745
    #dbg_value(i64 %xor257, !3523, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3746
    #dbg_value(i64 %xor425, !3543, !DIExpression(), !3460)
  %xor428 = call i64 @llvm.fshl.i64(i64 %xor425, i64 %xor425, i64 41), !dbg !3747
    #dbg_value(i64 %xor428, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %xor432), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not442 = xor i64 %xor432, -1, !dbg !3748
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %not442), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and443 = and i64 %xor416, %not442, !dbg !3749
    #dbg_value(!DIArgList(i64 %xor428, i64 %and443), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor444 = xor i64 %xor428, %and443, !dbg !3750
    #dbg_value(i64 %xor444, !3508, !DIExpression(), !3460)
  %xor272 = call i64 @llvm.fshl.i64(i64 %xor237, i64 %xor237, i64 1), !dbg !3751
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %xor272), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %xor272), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %xor272), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %xor272), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor249, i64 %xor272), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %xor272), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor273 = xor i64 %xor249, %xor272, !dbg !3752
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(i64 %xor273, !3527, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3753
    #dbg_value(i64 %xor421, !3542, !DIExpression(), !3460)
  %xor424 = call i64 @llvm.fshl.i64(i64 %xor421, i64 %xor421, i64 39), !dbg !3754
    #dbg_value(i64 %xor424, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %xor428), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %xor424), !3504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %xor420), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not439 = xor i64 %xor428, -1, !dbg !3755
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %not439), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and440 = and i64 %xor432, %not439, !dbg !3756
    #dbg_value(!DIArgList(i64 %xor424, i64 %and440), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor441 = xor i64 %xor424, %and440, !dbg !3757
    #dbg_value(i64 %xor441, !3506, !DIExpression(), !3460)
  %not436 = xor i64 %xor424, -1, !dbg !3758
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %not436), !3504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and437 = and i64 %xor428, %not436, !dbg !3759
    #dbg_value(!DIArgList(i64 %xor420, i64 %and437), !3504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor438 = xor i64 %xor420, %and437, !dbg !3760
    #dbg_value(i64 %xor438, !3504, !DIExpression(), !3460)
  %not433 = xor i64 %xor420, -1, !dbg !3761
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %not433), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and434 = and i64 %xor424, %not433, !dbg !3762
    #dbg_value(!DIArgList(i64 %xor416, i64 %and434), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor435 = xor i64 %xor416, %and434, !dbg !3763
    #dbg_value(i64 %xor435, !3502, !DIExpression(), !3460)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3764
    #dbg_value(i64 %xor394, !3551, !DIExpression(), !3460)
  %xor397 = call i64 @llvm.fshl.i64(i64 %xor394, i64 %xor394, i64 56), !dbg !3765
    #dbg_value(i64 %xor397, !3522, !DIExpression(), !3460)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3766
    #dbg_value(i64 %xor382, !3533, !DIExpression(), !3460)
  %xor385 = call i64 @llvm.fshl.i64(i64 %xor382, i64 %xor382, i64 36), !dbg !3767
    #dbg_value(i64 %xor385, !3519, !DIExpression(), !3460)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3768
    #dbg_value(i64 %xor378, !3532, !DIExpression(), !3460)
  %xor381 = call i64 @llvm.fshl.i64(i64 %xor378, i64 %xor378, i64 27), !dbg !3769
    #dbg_value(i64 %xor381, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %xor381), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not410 = xor i64 %xor381, -1, !dbg !3770
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %not410), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and411 = and i64 %xor385, %not410, !dbg !3771
    #dbg_value(!DIArgList(i64 %xor397, i64 %and411), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor412 = xor i64 %xor397, %and411, !dbg !3772
    #dbg_value(i64 %xor412, !3500, !DIExpression(), !3460)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3773
    #dbg_value(i64 %xor390, !3545, !DIExpression(), !3460)
  %xor393 = call i64 @llvm.fshl.i64(i64 %xor390, i64 %xor390, i64 15), !dbg !3774
    #dbg_value(i64 %xor393, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %xor397), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not407 = xor i64 %xor397, -1, !dbg !3775
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %not407), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and408 = and i64 %xor381, %not407, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor393, i64 %and408), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor409 = xor i64 %xor393, %and408, !dbg !3777
    #dbg_value(i64 %xor409, !3498, !DIExpression(), !3460)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3778
    #dbg_value(i64 %xor386, !3539, !DIExpression(), !3460)
  %xor389 = call i64 @llvm.fshl.i64(i64 %xor386, i64 %xor386, i64 10), !dbg !3779
    #dbg_value(i64 %xor389, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %xor393), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %xor389), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %xor385), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not404 = xor i64 %xor393, -1, !dbg !3780
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %not404), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and405 = and i64 %xor397, %not404, !dbg !3781
    #dbg_value(!DIArgList(i64 %xor389, i64 %and405), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor406 = xor i64 %xor389, %and405, !dbg !3782
    #dbg_value(i64 %xor406, !3496, !DIExpression(), !3460)
  %not401 = xor i64 %xor389, -1, !dbg !3783
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %not401), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and402 = and i64 %xor393, %not401, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor385, i64 %and402), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor403 = xor i64 %xor385, %and402, !dbg !3785
    #dbg_value(i64 %xor403, !3494, !DIExpression(), !3460)
  %not398 = xor i64 %xor385, -1, !dbg !3786
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %not398), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and399 = and i64 %xor389, %not398, !dbg !3787
    #dbg_value(!DIArgList(i64 %xor381, i64 %and399), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor400 = xor i64 %xor381, %and399, !dbg !3788
    #dbg_value(i64 %xor400, !3492, !DIExpression(), !3460)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3789
    #dbg_value(i64 %xor359, !3548, !DIExpression(), !3460)
  %xor362 = call i64 @llvm.fshl.i64(i64 %xor359, i64 %xor359, i64 18), !dbg !3790
    #dbg_value(i64 %xor362, !3522, !DIExpression(), !3460)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3791
    #dbg_value(i64 %xor347, !3535, !DIExpression(), !3460)
  %xor350 = call i64 @llvm.fshl.i64(i64 %xor347, i64 %xor347, i64 6), !dbg !3792
    #dbg_value(i64 %xor350, !3519, !DIExpression(), !3460)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3793
    #dbg_value(i64 %xor343, !3529, !DIExpression(), !3460)
  %xor346 = call i64 @llvm.fshl.i64(i64 %xor343, i64 %xor343, i64 1), !dbg !3794
    #dbg_value(i64 %xor346, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %xor346), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not375 = xor i64 %xor346, -1, !dbg !3795
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %not375), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and376 = and i64 %xor350, %not375, !dbg !3796
    #dbg_value(!DIArgList(i64 %xor362, i64 %and376), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor377 = xor i64 %xor362, %and376, !dbg !3797
    #dbg_value(i64 %xor377, !3490, !DIExpression(), !3460)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3798
    #dbg_value(i64 %xor355, !3547, !DIExpression(), !3460)
  %xor358 = call i64 @llvm.fshl.i64(i64 %xor355, i64 %xor355, i64 8), !dbg !3799
    #dbg_value(i64 %xor358, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %xor362), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not372 = xor i64 %xor362, -1, !dbg !3800
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %not372), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and373 = and i64 %xor346, %not372, !dbg !3801
    #dbg_value(!DIArgList(i64 %xor358, i64 %and373), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor374 = xor i64 %xor358, %and373, !dbg !3802
    #dbg_value(i64 %xor374, !3488, !DIExpression(), !3460)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3803
    #dbg_value(i64 %xor351, !3541, !DIExpression(), !3460)
  %xor354 = call i64 @llvm.fshl.i64(i64 %xor351, i64 %xor351, i64 25), !dbg !3804
    #dbg_value(i64 %xor354, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %xor358), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %xor354), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %xor350), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not369 = xor i64 %xor358, -1, !dbg !3805
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %not369), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and370 = and i64 %xor362, %not369, !dbg !3806
    #dbg_value(!DIArgList(i64 %xor354, i64 %and370), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor371 = xor i64 %xor354, %and370, !dbg !3807
    #dbg_value(i64 %xor371, !3486, !DIExpression(), !3460)
  %not366 = xor i64 %xor354, -1, !dbg !3808
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %not366), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and367 = and i64 %xor358, %not366, !dbg !3809
    #dbg_value(!DIArgList(i64 %xor350, i64 %and367), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor368 = xor i64 %xor350, %and367, !dbg !3810
    #dbg_value(i64 %xor368, !3484, !DIExpression(), !3460)
  %not363 = xor i64 %xor350, -1, !dbg !3811
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %not363), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and364 = and i64 %xor354, %not363, !dbg !3812
    #dbg_value(!DIArgList(i64 %xor346, i64 %and364), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor365 = xor i64 %xor346, %and364, !dbg !3813
    #dbg_value(i64 %xor365, !3482, !DIExpression(), !3460)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3814
    #dbg_value(i64 %xor324, !3550, !DIExpression(), !3460)
  %xor327 = call i64 @llvm.fshl.i64(i64 %xor324, i64 %xor324, i64 61), !dbg !3815
    #dbg_value(i64 %xor327, !3522, !DIExpression(), !3460)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3816
    #dbg_value(i64 %xor312, !3537, !DIExpression(), !3460)
  %xor315 = call i64 @llvm.fshl.i64(i64 %xor312, i64 %xor312, i64 20), !dbg !3817
    #dbg_value(i64 %xor315, !3519, !DIExpression(), !3460)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3818
    #dbg_value(i64 %xor308, !3531, !DIExpression(), !3460)
  %xor311 = call i64 @llvm.fshl.i64(i64 %xor308, i64 %xor308, i64 28), !dbg !3819
    #dbg_value(i64 %xor311, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %xor311), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not340 = xor i64 %xor311, -1, !dbg !3820
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %not340), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and341 = and i64 %xor315, %not340, !dbg !3821
    #dbg_value(!DIArgList(i64 %xor327, i64 %and341), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor342 = xor i64 %xor327, %and341, !dbg !3822
    #dbg_value(i64 %xor342, !3480, !DIExpression(), !3460)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3823
    #dbg_value(i64 %xor320, !3544, !DIExpression(), !3460)
  %xor323 = call i64 @llvm.fshl.i64(i64 %xor320, i64 %xor320, i64 45), !dbg !3824
    #dbg_value(i64 %xor323, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %xor327), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not337 = xor i64 %xor327, -1, !dbg !3825
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %not337), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and338 = and i64 %xor311, %not337, !dbg !3826
    #dbg_value(!DIArgList(i64 %xor323, i64 %and338), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor339 = xor i64 %xor323, %and338, !dbg !3827
    #dbg_value(i64 %xor339, !3478, !DIExpression(), !3460)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3828
    #dbg_value(i64 %xor316, !3538, !DIExpression(), !3460)
  %xor319 = call i64 @llvm.fshl.i64(i64 %xor316, i64 %xor316, i64 3), !dbg !3829
    #dbg_value(i64 %xor319, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %xor323), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %xor319), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %xor315), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not334 = xor i64 %xor323, -1, !dbg !3830
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %not334), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and335 = and i64 %xor327, %not334, !dbg !3831
    #dbg_value(!DIArgList(i64 %xor319, i64 %and335), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor336 = xor i64 %xor319, %and335, !dbg !3832
    #dbg_value(i64 %xor336, !3476, !DIExpression(), !3460)
  %not331 = xor i64 %xor319, -1, !dbg !3833
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %not331), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and332 = and i64 %xor323, %not331, !dbg !3834
    #dbg_value(!DIArgList(i64 %xor315, i64 %and332), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor333 = xor i64 %xor315, %and332, !dbg !3835
    #dbg_value(i64 %xor333, !3474, !DIExpression(), !3460)
  %not328 = xor i64 %xor315, -1, !dbg !3836
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %not328), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and329 = and i64 %xor319, %not328, !dbg !3837
    #dbg_value(!DIArgList(i64 %xor311, i64 %and329), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor330 = xor i64 %xor311, %and329, !dbg !3838
    #dbg_value(i64 %xor330, !3472, !DIExpression(), !3460)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3839
    #dbg_value(i64 %xor287, !3552, !DIExpression(), !3460)
  %xor290 = call i64 @llvm.fshl.i64(i64 %xor287, i64 %xor287, i64 14), !dbg !3840
    #dbg_value(i64 %xor290, !3522, !DIExpression(), !3460)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3841
    #dbg_value(i64 %xor275, !3534, !DIExpression(), !3460)
  %xor278 = call i64 @llvm.fshl.i64(i64 %xor275, i64 %xor275, i64 44), !dbg !3842
    #dbg_value(i64 %xor278, !3519, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor81, i64 %xor257), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3843
    #dbg_value(i64 %xor274, !3528, !DIExpression(), !3460)
    #dbg_value(i64 %xor274, !3518, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor274), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not305 = xor i64 %xor274, -1, !dbg !3844
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %not305), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and306 = and i64 %xor278, %not305, !dbg !3845
    #dbg_value(!DIArgList(i64 %xor290, i64 %and306), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor307 = xor i64 %xor290, %and306, !dbg !3846
    #dbg_value(i64 %xor307, !3470, !DIExpression(), !3460)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3847
    #dbg_value(i64 %xor283, !3546, !DIExpression(), !3460)
  %xor286 = call i64 @llvm.fshl.i64(i64 %xor283, i64 %xor283, i64 21), !dbg !3848
    #dbg_value(i64 %xor286, !3521, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %xor290), !3468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not302 = xor i64 %xor290, -1, !dbg !3849
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %not302), !3468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and303 = and i64 %xor274, %not302, !dbg !3850
    #dbg_value(!DIArgList(i64 %xor286, i64 %and303), !3468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor304 = xor i64 %xor286, %and303, !dbg !3851
    #dbg_value(i64 %xor304, !3468, !DIExpression(), !3460)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3852
    #dbg_value(i64 %xor279, !3540, !DIExpression(), !3460)
  %xor282 = call i64 @llvm.fshl.i64(i64 %xor279, i64 %xor279, i64 43), !dbg !3853
    #dbg_value(i64 %xor282, !3520, !DIExpression(), !3460)
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %xor286), !3466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %xor282), !3464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
    #dbg_value(!DIArgList(i64 %xor274, i64 %xor282, i64 %xor278), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %not299 = xor i64 %xor286, -1, !dbg !3854
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %not299), !3466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and300 = and i64 %xor290, %not299, !dbg !3855
    #dbg_value(!DIArgList(i64 %xor282, i64 %and300), !3466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor301 = xor i64 %xor282, %and300, !dbg !3856
    #dbg_value(i64 %xor301, !3466, !DIExpression(), !3460)
  %not296 = xor i64 %xor282, -1, !dbg !3857
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %not296), !3464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3460)
  %and297 = and i64 %xor286, %not296, !dbg !3858
    #dbg_value(!DIArgList(i64 %xor278, i64 %and297), !3464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %xor298 = xor i64 %xor278, %and297, !dbg !3859
    #dbg_value(i64 %xor298, !3464, !DIExpression(), !3460)
  %add = or disjoint i32 %round.0, 1, !dbg !3860
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3861
  %27 = load i64, ptr %arrayidx294, align 8, !dbg !3861
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %xor278), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %not291 = xor i64 %xor278, -1, !dbg !3862
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %not291), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %and292 = and i64 %xor282, %not291, !dbg !3863
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %and292), !3462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3460)
  %28 = xor i64 %and292, %27, !dbg !3864
  %xor295 = xor i64 %28, %xor274, !dbg !3864
    #dbg_value(i64 %xor295, !3462, !DIExpression(), !3460)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3865
    #dbg_value(i32 %add448, !3511, !DIExpression(), !3460)
  br label %for.cond, !dbg !3866, !llvm.loop !3867

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3460
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3460
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3460
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3460
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3460
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3460
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3460
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3460
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3460
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3460
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3460
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3460
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3460
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3460
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3460
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3460
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3460
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3460
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3460
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3460
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3460
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3460
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3460
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3460
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3460
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3869
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3870
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3871
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3872
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3873
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3874
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3875
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3876
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3877
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3878
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3879
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3880
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3881
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3882
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3883
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3884
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3885
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3886
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3887
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3888
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3889
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3890
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3891
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3892
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3893
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3894
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3895
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3896
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3897
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3898
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3899
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3900
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3901
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3902
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3903
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3904
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3905
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3906
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3907
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3908
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3909
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3910
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3911
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3912
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3913
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3914
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3915
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3916
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3917
  ret void, !dbg !3918
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3919 {
entry:
    #dbg_value(ptr %state, !3920, !DIExpression(), !3921)
  %0 = load ptr, ptr %state, align 4, !dbg !3922
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #7, !dbg !3923
  ret void, !dbg !3924
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3925 {
entry:
    #dbg_value(ptr %s_inc, !3928, !DIExpression(), !3929)
    #dbg_value(i32 %r, !3930, !DIExpression(), !3929)
    #dbg_value(i8 %p, !3931, !DIExpression(), !3929)
  %conv = zext nneg i8 %p to i64, !dbg !3932
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3933
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3933
  %and = shl i64 %0, 3, !dbg !3934
  %mul = and i64 %and, 56, !dbg !3934
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3935
  %shr = lshr i64 %0, 3, !dbg !3936
  %idxprom = trunc i64 %shr to i32, !dbg !3937
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3937
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !3938
  %xor = xor i64 %1, %shl, !dbg !3938
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !3938
  %sub = shl nuw nsw i32 %r, 3, !dbg !3939
  %and3 = add nuw nsw i32 %sub, 56, !dbg !3939
  %mul4 = and i32 %and3, 56, !dbg !3939
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !3940
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !3940
  %sub6 = add nsw i32 %r, -1, !dbg !3941
  %shr7 = lshr i32 %sub6, 3, !dbg !3942
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !3943
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !3944
  %xor9 = xor i64 %2, %shl5, !dbg !3944
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !3944
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3945
  store i64 0, ptr %arrayidx10, align 8, !dbg !3946
  ret void, !dbg !3947
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3948 {
entry:
    #dbg_value(ptr %output, !3951, !DIExpression(), !3952)
    #dbg_value(i32 %outlen, !3953, !DIExpression(), !3952)
    #dbg_value(ptr %state, !3954, !DIExpression(), !3952)
  %0 = load ptr, ptr %state, align 4, !dbg !3955
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #7, !dbg !3956
  ret void, !dbg !3957
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3958 {
entry:
    #dbg_value(ptr %h, !3961, !DIExpression(), !3962)
    #dbg_value(i32 %outlen, !3963, !DIExpression(), !3962)
    #dbg_value(ptr %s_inc, !3964, !DIExpression(), !3962)
    #dbg_value(i32 %r, !3965, !DIExpression(), !3962)
    #dbg_value(i32 0, !3966, !DIExpression(), !3962)
  br label %for.cond, !dbg !3967

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3969
    #dbg_value(i32 %i.0, !3966, !DIExpression(), !3962)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !3970
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !3972

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !3973
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3974
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3974
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !3975
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3976

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !3977
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3979
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !3979
  %sub = sub i64 %conv3, %1, !dbg !3980
  %conv5 = zext i32 %i.0 to i64, !dbg !3981
  %add = add i64 %sub, %conv5, !dbg !3982
  %shr = lshr i64 %add, 3, !dbg !3983
  %idxprom = trunc i64 %shr to i32, !dbg !3984
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3984
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !3984
  %conv7 = zext nneg i32 %r to i64, !dbg !3985
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3986
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3986
  %sub9 = sub i64 %conv7, %3, !dbg !3987
  %conv10 = zext i32 %i.0 to i64, !dbg !3988
  %add11 = add i64 %sub9, %conv10, !dbg !3989
  %and = shl i64 %add11, 3, !dbg !3990
  %mul = and i64 %and, 56, !dbg !3990
  %shr12 = lshr i64 %2, %mul, !dbg !3991
  %conv13 = trunc i64 %shr12 to i8, !dbg !3992
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !3993
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !3994
  %inc = add i32 %i.0, 1, !dbg !3995
    #dbg_value(i32 %inc, !3966, !DIExpression(), !3962)
  br label %for.cond, !dbg !3996, !llvm.loop !3997

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !3969
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !3999
    #dbg_value(ptr %add.ptr, !3961, !DIExpression(), !3962)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4000
    #dbg_value(i32 %sub15, !3963, !DIExpression(), !3962)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4001
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4002
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4003
  %sub18 = sub i64 %4, %conv16, !dbg !4003
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4003
  br label %while.cond, !dbg !4004

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !3962
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !3962
    #dbg_value(ptr %h.addr.0, !3961, !DIExpression(), !3962)
    #dbg_value(i32 %outlen.addr.0, !3963, !DIExpression(), !3962)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4005
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4004

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !4006
    #dbg_value(i32 0, !3966, !DIExpression(), !3962)
  %umin = call i32 @llvm.umin.i32(i32 %outlen.addr.0, i32 %r), !dbg !4008
  br label %for.cond21, !dbg !4008

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4010
    #dbg_value(i32 %i.1, !3966, !DIExpression(), !3962)
  %exitcond1 = icmp ne i32 %i.1, %umin, !dbg !4011
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4013

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4014
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4016
  %5 = load i64, ptr %arrayidx30, align 8, !dbg !4016
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4017
  %mul32 = and i32 %and31, 56, !dbg !4017
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4018
  %shr33 = lshr i64 %5, %sh_prom, !dbg !4018
  %conv34 = trunc i64 %shr33 to i8, !dbg !4019
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4020
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4021
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4022
    #dbg_value(i32 %inc37, !3966, !DIExpression(), !3962)
  br label %for.cond21, !dbg !4023, !llvm.loop !4024

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4010
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4026
    #dbg_value(ptr %add.ptr39, !3961, !DIExpression(), !3962)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4027
    #dbg_value(i32 %sub40, !3963, !DIExpression(), !3962)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4028
  %conv42 = zext i32 %sub41 to i64, !dbg !4029
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4030
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4031
  br label %while.cond, !dbg !4004, !llvm.loop !4032

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4034
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4035 {
entry:
    #dbg_value(ptr %dest, !4040, !DIExpression(), !4041)
    #dbg_value(ptr %src, !4042, !DIExpression(), !4041)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4043
  store ptr %call, ptr %dest, align 4, !dbg !4044
  %cmp = icmp eq ptr %call, null, !dbg !4045
  br i1 %cmp, label %if.then, label %if.end, !dbg !4045

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4047
  br label %if.end, !dbg !4049

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4050
  %1 = load ptr, ptr %src, align 4, !dbg !4051
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4052
  ret void, !dbg !4053
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4054 {
entry:
    #dbg_value(ptr %state, !4055, !DIExpression(), !4056)
  %0 = load ptr, ptr %state, align 4, !dbg !4057
  call void @free(ptr noundef %0) #9, !dbg !4058
  ret void, !dbg !4059
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4060 {
entry:
    #dbg_value(ptr %state, !4068, !DIExpression(), !4069)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4070
  store ptr %call, ptr %state, align 4, !dbg !4071
  %cmp = icmp eq ptr %call, null, !dbg !4072
  br i1 %cmp, label %if.then, label %if.end, !dbg !4072

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4074
  br label %if.end, !dbg !4076

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4077
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4078
  ret void, !dbg !4079
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4080 {
entry:
    #dbg_value(ptr %state, !4083, !DIExpression(), !4084)
    #dbg_value(ptr %input, !4085, !DIExpression(), !4084)
    #dbg_value(i32 %inlen, !4086, !DIExpression(), !4084)
  %0 = load ptr, ptr %state, align 4, !dbg !4087
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4088
  ret void, !dbg !4089
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4090 {
entry:
    #dbg_value(ptr %state, !4091, !DIExpression(), !4092)
  %0 = load ptr, ptr %state, align 4, !dbg !4093
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #7, !dbg !4094
  ret void, !dbg !4095
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4096 {
entry:
    #dbg_value(ptr %output, !4099, !DIExpression(), !4100)
    #dbg_value(i32 %outlen, !4101, !DIExpression(), !4100)
    #dbg_value(ptr %state, !4102, !DIExpression(), !4100)
  %0 = load ptr, ptr %state, align 4, !dbg !4103
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #7, !dbg !4104
  ret void, !dbg !4105
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4106 {
entry:
    #dbg_value(ptr %dest, !4111, !DIExpression(), !4112)
    #dbg_value(ptr %src, !4113, !DIExpression(), !4112)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4114
  store ptr %call, ptr %dest, align 4, !dbg !4115
  %cmp = icmp eq ptr %call, null, !dbg !4116
  br i1 %cmp, label %if.then, label %if.end, !dbg !4116

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4118
  br label %if.end, !dbg !4120

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4121
  %1 = load ptr, ptr %src, align 4, !dbg !4122
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4123
  ret void, !dbg !4124
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4125 {
entry:
    #dbg_value(ptr %state, !4126, !DIExpression(), !4127)
  %0 = load ptr, ptr %state, align 4, !dbg !4128
  call void @free(ptr noundef %0) #9, !dbg !4129
  ret void, !dbg !4130
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4131 {
entry:
    #dbg_value(ptr %state, !4139, !DIExpression(), !4140)
    #dbg_value(ptr %input, !4141, !DIExpression(), !4140)
    #dbg_value(i32 %inlen, !4142, !DIExpression(), !4140)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4143
  store ptr %call, ptr %state, align 4, !dbg !4144
  %cmp = icmp eq ptr %call, null, !dbg !4145
  br i1 %cmp, label %if.then, label %if.end, !dbg !4145

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4147
  br label %if.end, !dbg !4149

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4150
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4151
  ret void, !dbg !4152
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4153 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4156, !DIExpression(), !4157)
    #dbg_value(i32 %r, !4158, !DIExpression(), !4157)
    #dbg_value(ptr %m, !4159, !DIExpression(), !4157)
    #dbg_value(i32 %mlen, !4160, !DIExpression(), !4157)
    #dbg_value(i8 %p, !4161, !DIExpression(), !4157)
    #dbg_declare(ptr %t, !4162, !DIExpression(), !4166)
    #dbg_value(i32 0, !4167, !DIExpression(), !4157)
  br label %for.cond, !dbg !4168

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4170
    #dbg_value(i32 %i.0, !4167, !DIExpression(), !4157)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4171
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4173

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4174
  br label %while.cond, !dbg !4174

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4175
  store i64 0, ptr %arrayidx, align 8, !dbg !4177
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4178
    #dbg_value(i32 %inc, !4167, !DIExpression(), !4157)
  br label %for.cond, !dbg !4179, !llvm.loop !4180

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4160, !DIExpression(), !4157)
    #dbg_value(ptr %m.addr.0, !4159, !DIExpression(), !4157)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4182
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4174

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4183

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4186

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4188
    #dbg_value(i32 %i.1, !4167, !DIExpression(), !4157)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4189
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4183

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4191
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4193
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #7, !dbg !4194
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4195
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4196
  %xor = xor i64 %1, %call, !dbg !4196
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4196
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4197
    #dbg_value(i32 %inc7, !4167, !DIExpression(), !4157)
  br label %for.cond2, !dbg !4198, !llvm.loop !4199

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4201
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4202
    #dbg_value(i32 %sub, !4160, !DIExpression(), !4157)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4203
    #dbg_value(ptr %add.ptr9, !4159, !DIExpression(), !4157)
  br label %while.cond, !dbg !4174, !llvm.loop !4204

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4206
    #dbg_value(i32 %i.2, !4167, !DIExpression(), !4157)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4207
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4186

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4209

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4211
  store i8 0, ptr %arrayidx13, align 1, !dbg !4213
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4214
    #dbg_value(i32 %inc15, !4167, !DIExpression(), !4157)
  br label %for.cond10, !dbg !4215, !llvm.loop !4216

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4218
    #dbg_value(i32 %i.3, !4167, !DIExpression(), !4157)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4219
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4209

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4221
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4221
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4223
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4224
  %inc23 = add i32 %i.3, 1, !dbg !4225
    #dbg_value(i32 %inc23, !4167, !DIExpression(), !4157)
  br label %for.cond17, !dbg !4226, !llvm.loop !4227

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4218
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4229
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4230
  %sub26 = add nsw i32 %r, -1, !dbg !4231
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4232
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4233
  %4 = or i8 %3, -128, !dbg !4233
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4233
    #dbg_value(i32 0, !4167, !DIExpression(), !4157)
  br label %for.cond29, !dbg !4234

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4236
    #dbg_value(i32 %i.4, !4167, !DIExpression(), !4157)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4237
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4239

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4240
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4242
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #7, !dbg !4243
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4244
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4245
  %xor38 = xor i64 %5, %call36, !dbg !4245
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4245
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4246
    #dbg_value(i32 %inc40, !4167, !DIExpression(), !4157)
  br label %for.cond29, !dbg !4247, !llvm.loop !4248

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4250
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4251 {
entry:
    #dbg_value(ptr %x, !4254, !DIExpression(), !4255)
    #dbg_value(i64 0, !4256, !DIExpression(), !4255)
    #dbg_value(i32 0, !4257, !DIExpression(), !4259)
  br label %for.cond, !dbg !4260

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4255
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4261
    #dbg_value(i32 %i.0, !4257, !DIExpression(), !4259)
    #dbg_value(i64 %r.0, !4256, !DIExpression(), !4255)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4262
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4264

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4256, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4255)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4265
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4265
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4256, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4255)
  %conv = zext i8 %0 to i64, !dbg !4267
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4256, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4255)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4268
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4256, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4255)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4269
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4256, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4255)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4269
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4256, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4255)
  %or = or i64 %r.0, %shl, !dbg !4270
    #dbg_value(i64 %or, !4256, !DIExpression(), !4255)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4271
    #dbg_value(i32 %inc, !4257, !DIExpression(), !4259)
  br label %for.cond, !dbg !4272, !llvm.loop !4273

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4255
  ret i64 %r.0.lcssa, !dbg !4275
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4276 {
entry:
    #dbg_value(ptr %output, !4279, !DIExpression(), !4280)
    #dbg_value(i32 %nblocks, !4281, !DIExpression(), !4280)
    #dbg_value(ptr %state, !4282, !DIExpression(), !4280)
  %0 = load ptr, ptr %state, align 4, !dbg !4283
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #7, !dbg !4284
  ret void, !dbg !4285
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4286 {
entry:
    #dbg_value(ptr %h, !4287, !DIExpression(), !4288)
    #dbg_value(i32 %nblocks, !4289, !DIExpression(), !4288)
    #dbg_value(ptr %s, !4290, !DIExpression(), !4288)
    #dbg_value(i32 %r, !4291, !DIExpression(), !4288)
  %0 = lshr i32 %r, 3, !dbg !4292
  br label %while.cond, !dbg !4292

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4287, !DIExpression(), !4288)
    #dbg_value(i32 %nblocks.addr.0, !4289, !DIExpression(), !4288)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4293
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4292

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4294
    #dbg_value(i32 0, !4296, !DIExpression(), !4298)
  br label %for.cond, !dbg !4299

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4300
    #dbg_value(i32 %i.0, !4296, !DIExpression(), !4298)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4301
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4303

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4304
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4306
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4307
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4307
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #7, !dbg !4308
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4309
    #dbg_value(i32 %inc, !4296, !DIExpression(), !4298)
  br label %for.cond, !dbg !4310, !llvm.loop !4311

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4313
    #dbg_value(ptr %add.ptr2, !4287, !DIExpression(), !4288)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4314
    #dbg_value(i32 %dec, !4289, !DIExpression(), !4288)
  br label %while.cond, !dbg !4292, !llvm.loop !4315

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4317
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4318 {
entry:
    #dbg_value(ptr %x, !4321, !DIExpression(), !4322)
    #dbg_value(i64 %u, !4323, !DIExpression(), !4322)
    #dbg_value(i32 0, !4324, !DIExpression(), !4326)
  br label %for.cond, !dbg !4327

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4328
    #dbg_value(i32 %i.0, !4324, !DIExpression(), !4326)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4329
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4331

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4332
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4334
  %shr = lshr i64 %u, %sh_prom, !dbg !4334
  %conv = trunc i64 %shr to i8, !dbg !4335
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4336
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4337
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4338
    #dbg_value(i32 %inc, !4324, !DIExpression(), !4326)
  br label %for.cond, !dbg !4339, !llvm.loop !4340

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4342
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4343 {
entry:
    #dbg_value(ptr %dest, !4348, !DIExpression(), !4349)
    #dbg_value(ptr %src, !4350, !DIExpression(), !4349)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4351
  store ptr %call, ptr %dest, align 4, !dbg !4352
  %cmp = icmp eq ptr %call, null, !dbg !4353
  br i1 %cmp, label %if.then, label %if.end, !dbg !4353

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4355
  br label %if.end, !dbg !4357

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4358
  %1 = load ptr, ptr %src, align 4, !dbg !4359
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4360
  ret void, !dbg !4361
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4362 {
entry:
    #dbg_value(ptr %state, !4365, !DIExpression(), !4366)
  %0 = load ptr, ptr %state, align 4, !dbg !4367
  call void @free(ptr noundef %0) #9, !dbg !4368
  ret void, !dbg !4369
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4370 {
entry:
    #dbg_value(ptr %state, !4378, !DIExpression(), !4379)
    #dbg_value(ptr %input, !4380, !DIExpression(), !4379)
    #dbg_value(i32 %inlen, !4381, !DIExpression(), !4379)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4382
  store ptr %call, ptr %state, align 4, !dbg !4383
  %cmp = icmp eq ptr %call, null, !dbg !4384
  br i1 %cmp, label %if.then, label %if.end, !dbg !4384

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4386
  br label %if.end, !dbg !4388

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4389
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4390
  ret void, !dbg !4391
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4392 {
entry:
    #dbg_value(ptr %output, !4395, !DIExpression(), !4396)
    #dbg_value(i32 %nblocks, !4397, !DIExpression(), !4396)
    #dbg_value(ptr %state, !4398, !DIExpression(), !4396)
  %0 = load ptr, ptr %state, align 4, !dbg !4399
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #7, !dbg !4400
  ret void, !dbg !4401
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4402 {
entry:
    #dbg_value(ptr %dest, !4407, !DIExpression(), !4408)
    #dbg_value(ptr %src, !4409, !DIExpression(), !4408)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4410
  store ptr %call, ptr %dest, align 4, !dbg !4411
  %cmp = icmp eq ptr %call, null, !dbg !4412
  br i1 %cmp, label %if.then, label %if.end, !dbg !4412

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4414
  br label %if.end, !dbg !4416

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4417
  %1 = load ptr, ptr %src, align 4, !dbg !4418
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4419
  ret void, !dbg !4420
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4421 {
entry:
    #dbg_value(ptr %state, !4424, !DIExpression(), !4425)
  %0 = load ptr, ptr %state, align 4, !dbg !4426
  call void @free(ptr noundef %0) #9, !dbg !4427
  ret void, !dbg !4428
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4429 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4432, !DIExpression(), !4433)
    #dbg_value(i32 %outlen, !4434, !DIExpression(), !4433)
    #dbg_value(ptr %input, !4435, !DIExpression(), !4433)
    #dbg_value(i32 %inlen, !4436, !DIExpression(), !4433)
  %div = udiv i32 %outlen, 168, !dbg !4437
    #dbg_value(i32 %div, !4438, !DIExpression(), !4433)
    #dbg_declare(ptr %t, !4439, !DIExpression(), !4443)
    #dbg_declare(ptr %s, !4444, !DIExpression(), !4445)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4446
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4447
  %mul = mul nuw i32 %div, 168, !dbg !4448
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4449
    #dbg_value(ptr %add.ptr, !4432, !DIExpression(), !4433)
  %mul1.neg = mul i32 %div, -168, !dbg !4450
  %sub = add i32 %mul1.neg, %outlen, !dbg !4451
    #dbg_value(i32 %sub, !4434, !DIExpression(), !4433)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4452
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4452

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4454
    #dbg_value(i32 0, !4456, !DIExpression(), !4458)
  br label %for.cond, !dbg !4459

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4460
    #dbg_value(i32 %i.0, !4456, !DIExpression(), !4458)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4461
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4463

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4464
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4464
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4466
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4467
  %inc = add i32 %i.0, 1, !dbg !4468
    #dbg_value(i32 %inc, !4456, !DIExpression(), !4458)
  br label %for.cond, !dbg !4469, !llvm.loop !4470

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4472

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #7, !dbg !4472
  ret void, !dbg !4473
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4474 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4475, !DIExpression(), !4476)
    #dbg_value(i32 %outlen, !4477, !DIExpression(), !4476)
    #dbg_value(ptr %input, !4478, !DIExpression(), !4476)
    #dbg_value(i32 %inlen, !4479, !DIExpression(), !4476)
  %div = udiv i32 %outlen, 136, !dbg !4480
    #dbg_value(i32 %div, !4481, !DIExpression(), !4476)
    #dbg_declare(ptr %t, !4482, !DIExpression(), !4486)
    #dbg_declare(ptr %s, !4487, !DIExpression(), !4488)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4489
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4490
  %mul = mul nuw i32 %div, 136, !dbg !4491
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4492
    #dbg_value(ptr %add.ptr, !4475, !DIExpression(), !4476)
  %mul1.neg = mul i32 %div, -136, !dbg !4493
  %sub = add i32 %mul1.neg, %outlen, !dbg !4494
    #dbg_value(i32 %sub, !4477, !DIExpression(), !4476)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4495
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4495

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4497
    #dbg_value(i32 0, !4499, !DIExpression(), !4501)
  br label %for.cond, !dbg !4502

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4503
    #dbg_value(i32 %i.0, !4499, !DIExpression(), !4501)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4504
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4506

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4507
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4507
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4509
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4510
  %inc = add i32 %i.0, 1, !dbg !4511
    #dbg_value(i32 %inc, !4499, !DIExpression(), !4501)
  br label %for.cond, !dbg !4512, !llvm.loop !4513

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4515

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #7, !dbg !4515
  ret void, !dbg !4516
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4517 {
entry:
    #dbg_value(ptr %state, !4525, !DIExpression(), !4526)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4527
  store ptr %call, ptr %state, align 4, !dbg !4528
  %cmp = icmp eq ptr %call, null, !dbg !4529
  br i1 %cmp, label %if.then, label %if.end, !dbg !4529

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4531
  br label %if.end, !dbg !4533

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4534
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4535
  ret void, !dbg !4536
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4537 {
entry:
    #dbg_value(ptr %dest, !4542, !DIExpression(), !4543)
    #dbg_value(ptr %src, !4544, !DIExpression(), !4543)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4545
  store ptr %call, ptr %dest, align 4, !dbg !4546
  %cmp = icmp eq ptr %call, null, !dbg !4547
  br i1 %cmp, label %if.then, label %if.end, !dbg !4547

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4549
  br label %if.end, !dbg !4551

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4552
  %1 = load ptr, ptr %src, align 4, !dbg !4553
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4554
  ret void, !dbg !4555
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4556 {
entry:
    #dbg_value(ptr %state, !4557, !DIExpression(), !4558)
  %0 = load ptr, ptr %state, align 4, !dbg !4559
  call void @free(ptr noundef %0) #9, !dbg !4560
  ret void, !dbg !4561
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4562 {
entry:
    #dbg_value(ptr %state, !4565, !DIExpression(), !4566)
    #dbg_value(ptr %input, !4567, !DIExpression(), !4566)
    #dbg_value(i32 %inlen, !4568, !DIExpression(), !4566)
  %0 = load ptr, ptr %state, align 4, !dbg !4569
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4570
  ret void, !dbg !4571
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4572 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4575, !DIExpression(), !4576)
    #dbg_value(ptr %state, !4577, !DIExpression(), !4576)
    #dbg_declare(ptr %t, !4578, !DIExpression(), !4579)
  %0 = load ptr, ptr %state, align 4, !dbg !4580
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #7, !dbg !4581
  %1 = load ptr, ptr %state, align 4, !dbg !4582
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #7, !dbg !4583
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4584
    #dbg_value(i32 0, !4585, !DIExpression(), !4587)
  br label %for.cond, !dbg !4588

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4589
    #dbg_value(i32 %i.0, !4585, !DIExpression(), !4587)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4590
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4592

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4593
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4593
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4595
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4596
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4597
    #dbg_value(i32 %inc, !4585, !DIExpression(), !4587)
  br label %for.cond, !dbg !4598, !llvm.loop !4599

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4601
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4602 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4605, !DIExpression(), !4606)
    #dbg_value(ptr %input, !4607, !DIExpression(), !4606)
    #dbg_value(i32 %inlen, !4608, !DIExpression(), !4606)
    #dbg_declare(ptr %s, !4609, !DIExpression(), !4613)
    #dbg_declare(ptr %t, !4614, !DIExpression(), !4615)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4616
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #7, !dbg !4617
    #dbg_value(i32 0, !4618, !DIExpression(), !4620)
  br label %for.cond, !dbg !4621

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4622
    #dbg_value(i32 %i.0, !4618, !DIExpression(), !4620)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4623
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4625

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4626
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4626
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4628
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4629
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4630
    #dbg_value(i32 %inc, !4618, !DIExpression(), !4620)
  br label %for.cond, !dbg !4631, !llvm.loop !4632

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4634
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4635 {
entry:
    #dbg_value(ptr %state, !4643, !DIExpression(), !4644)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4645
  store ptr %call, ptr %state, align 4, !dbg !4646
  %cmp = icmp eq ptr %call, null, !dbg !4647
  br i1 %cmp, label %if.then, label %if.end, !dbg !4647

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4649
  br label %if.end, !dbg !4651

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4652
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4653
  ret void, !dbg !4654
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4655 {
entry:
    #dbg_value(ptr %dest, !4660, !DIExpression(), !4661)
    #dbg_value(ptr %src, !4662, !DIExpression(), !4661)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4663
  store ptr %call, ptr %dest, align 4, !dbg !4664
  %cmp = icmp eq ptr %call, null, !dbg !4665
  br i1 %cmp, label %if.then, label %if.end, !dbg !4665

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4667
  br label %if.end, !dbg !4669

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4670
  %1 = load ptr, ptr %src, align 4, !dbg !4671
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4672
  ret void, !dbg !4673
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4674 {
entry:
    #dbg_value(ptr %state, !4677, !DIExpression(), !4678)
    #dbg_value(ptr %input, !4679, !DIExpression(), !4678)
    #dbg_value(i32 %inlen, !4680, !DIExpression(), !4678)
  %0 = load ptr, ptr %state, align 4, !dbg !4681
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4682
  ret void, !dbg !4683
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4684 {
entry:
    #dbg_value(ptr %state, !4685, !DIExpression(), !4686)
  %0 = load ptr, ptr %state, align 4, !dbg !4687
  call void @free(ptr noundef %0) #9, !dbg !4688
  ret void, !dbg !4689
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4690 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4693, !DIExpression(), !4694)
    #dbg_value(ptr %state, !4695, !DIExpression(), !4694)
    #dbg_declare(ptr %t, !4696, !DIExpression(), !4700)
  %0 = load ptr, ptr %state, align 4, !dbg !4701
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #7, !dbg !4702
  %1 = load ptr, ptr %state, align 4, !dbg !4703
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #7, !dbg !4704
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4705
    #dbg_value(i32 0, !4706, !DIExpression(), !4708)
  br label %for.cond, !dbg !4709

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4710
    #dbg_value(i32 %i.0, !4706, !DIExpression(), !4708)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4711
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4713

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4714
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4714
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4716
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4717
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4718
    #dbg_value(i32 %inc, !4706, !DIExpression(), !4708)
  br label %for.cond, !dbg !4719, !llvm.loop !4720

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4722
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4723 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4724, !DIExpression(), !4725)
    #dbg_value(ptr %input, !4726, !DIExpression(), !4725)
    #dbg_value(i32 %inlen, !4727, !DIExpression(), !4725)
    #dbg_declare(ptr %s, !4728, !DIExpression(), !4729)
    #dbg_declare(ptr %t, !4730, !DIExpression(), !4731)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4732
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #7, !dbg !4733
    #dbg_value(i32 0, !4734, !DIExpression(), !4736)
  br label %for.cond, !dbg !4737

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4738
    #dbg_value(i32 %i.0, !4734, !DIExpression(), !4736)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4739
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4741

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4742
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4742
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4744
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4745
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4746
    #dbg_value(i32 %inc, !4734, !DIExpression(), !4736)
  br label %for.cond, !dbg !4747, !llvm.loop !4748

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4750
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4751 {
entry:
    #dbg_value(ptr %state, !4759, !DIExpression(), !4760)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4761
  store ptr %call, ptr %state, align 4, !dbg !4762
  %cmp = icmp eq ptr %call, null, !dbg !4763
  br i1 %cmp, label %if.then, label %if.end, !dbg !4763

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4765
  br label %if.end, !dbg !4767

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4768
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4769
  ret void, !dbg !4770
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4771 {
entry:
    #dbg_value(ptr %dest, !4776, !DIExpression(), !4777)
    #dbg_value(ptr %src, !4778, !DIExpression(), !4777)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4779
  store ptr %call, ptr %dest, align 4, !dbg !4780
  %cmp = icmp eq ptr %call, null, !dbg !4781
  br i1 %cmp, label %if.then, label %if.end, !dbg !4781

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4783
  br label %if.end, !dbg !4785

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4786
  %1 = load ptr, ptr %src, align 4, !dbg !4787
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4788
  ret void, !dbg !4789
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4790 {
entry:
    #dbg_value(ptr %state, !4793, !DIExpression(), !4794)
    #dbg_value(ptr %input, !4795, !DIExpression(), !4794)
    #dbg_value(i32 %inlen, !4796, !DIExpression(), !4794)
  %0 = load ptr, ptr %state, align 4, !dbg !4797
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4798
  ret void, !dbg !4799
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4800 {
entry:
    #dbg_value(ptr %state, !4801, !DIExpression(), !4802)
  %0 = load ptr, ptr %state, align 4, !dbg !4803
  call void @free(ptr noundef %0) #9, !dbg !4804
  ret void, !dbg !4805
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4806 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4809, !DIExpression(), !4810)
    #dbg_value(ptr %state, !4811, !DIExpression(), !4810)
    #dbg_declare(ptr %t, !4812, !DIExpression(), !4816)
  %0 = load ptr, ptr %state, align 4, !dbg !4817
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #7, !dbg !4818
  %1 = load ptr, ptr %state, align 4, !dbg !4819
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #7, !dbg !4820
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4821
    #dbg_value(i32 0, !4822, !DIExpression(), !4824)
  br label %for.cond, !dbg !4825

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4826
    #dbg_value(i32 %i.0, !4822, !DIExpression(), !4824)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4827
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4829

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4830
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4830
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4832
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4833
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4834
    #dbg_value(i32 %inc, !4822, !DIExpression(), !4824)
  br label %for.cond, !dbg !4835, !llvm.loop !4836

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4838
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4839 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4840, !DIExpression(), !4841)
    #dbg_value(ptr %input, !4842, !DIExpression(), !4841)
    #dbg_value(i32 %inlen, !4843, !DIExpression(), !4841)
    #dbg_declare(ptr %s, !4844, !DIExpression(), !4845)
    #dbg_declare(ptr %t, !4846, !DIExpression(), !4847)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4848
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #7, !dbg !4849
    #dbg_value(i32 0, !4850, !DIExpression(), !4852)
  br label %for.cond, !dbg !4853

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4854
    #dbg_value(i32 %i.0, !4850, !DIExpression(), !4852)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4855
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4857

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4858
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4858
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4860
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4861
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4862
    #dbg_value(i32 %inc, !4850, !DIExpression(), !4852)
  br label %for.cond, !dbg !4863, !llvm.loop !4864

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4866
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4867 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4875, !DIExpression(), !4876)
    #dbg_value(ptr %key, !4877, !DIExpression(), !4876)
    #dbg_declare(ptr %skey, !4878, !DIExpression(), !4882)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #10, !dbg !4883
  store ptr %call, ptr %r, align 4, !dbg !4884
  %cmp = icmp eq ptr %call, null, !dbg !4885
  br i1 %cmp, label %if.then, label %if.end, !dbg !4885

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4887
  br label %if.end, !dbg !4889

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #7, !dbg !4890
  %0 = load ptr, ptr %r, align 4, !dbg !4891
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #7, !dbg !4892
  ret void, !dbg !4893
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4894 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4897, !DIExpression(), !4898)
    #dbg_value(ptr %key, !4899, !DIExpression(), !4898)
    #dbg_value(i32 %key_len, !4900, !DIExpression(), !4898)
    #dbg_declare(ptr %skey, !4901, !DIExpression(), !4905)
  %0 = and i32 %key_len, 60, !dbg !4906
    #dbg_value(i32 %key_len, !4907, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4898)
  %shr1 = lshr i32 %key_len, 2, !dbg !4908
    #dbg_value(i32 %shr1, !4909, !DIExpression(), !4898)
  %shl = add nuw nsw i32 %0, 28, !dbg !4906
    #dbg_value(i32 %shl, !4910, !DIExpression(), !4898)
  %shr3 = lshr i32 %key_len, 2, !dbg !4911
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #7, !dbg !4912
  %shr4 = lshr i32 %key_len, 2, !dbg !4913
  %sub5 = add nsw i32 %shr4, -1, !dbg !4914
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4915
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4915
    #dbg_value(i32 %1, !4916, !DIExpression(), !4898)
    #dbg_value(i32 %shr1, !4917, !DIExpression(), !4898)
    #dbg_value(i32 0, !4918, !DIExpression(), !4898)
    #dbg_value(i32 0, !4919, !DIExpression(), !4898)
  br label %for.cond, !dbg !4920

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4922
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4923
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4923
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4898
    #dbg_value(i32 %tmp.0, !4916, !DIExpression(), !4898)
    #dbg_value(i32 %k.0, !4919, !DIExpression(), !4898)
    #dbg_value(i32 %j.0, !4918, !DIExpression(), !4898)
    #dbg_value(i32 %i.0, !4917, !DIExpression(), !4898)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4924
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4926

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4927

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4929
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4929

if.then:                                          ; preds = %for.body
  %or = call i32 @llvm.fshl.i32(i32 %tmp.0, i32 %tmp.0, i32 24), !dbg !4932
    #dbg_value(i32 %or, !4916, !DIExpression(), !4898)
  %call = call fastcc i32 @sub_word(i32 noundef %or) #7, !dbg !4934
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4935
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !4935
  %conv = zext i8 %2 to i32, !dbg !4935
  %xor = xor i32 %call, %conv, !dbg !4936
    #dbg_value(i32 %xor, !4916, !DIExpression(), !4898)
  br label %if.end16, !dbg !4937

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4938
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !4940
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !4940

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #7, !dbg !4941
    #dbg_value(i32 %call15, !4916, !DIExpression(), !4898)
  br label %if.end16, !dbg !4943

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !4944
    #dbg_value(i32 %tmp.2, !4916, !DIExpression(), !4898)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !4945
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !4946
  %3 = load i32, ptr %arrayidx18, align 4, !dbg !4946
  %xor19 = xor i32 %tmp.2, %3, !dbg !4947
    #dbg_value(i32 %xor19, !4916, !DIExpression(), !4898)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !4948
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !4949
  %inc = add i32 %j.0, 1, !dbg !4950
    #dbg_value(i32 %inc, !4918, !DIExpression(), !4898)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !4952
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !4952
  %inc24 = zext i1 %cmp21 to i32, !dbg !4952
  %spec.select1 = add i32 %k.0, %inc24, !dbg !4952
    #dbg_value(i32 %spec.select1, !4919, !DIExpression(), !4898)
    #dbg_value(i32 %spec.select, !4918, !DIExpression(), !4898)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !4953
    #dbg_value(i32 %inc26, !4917, !DIExpression(), !4898)
  br label %for.cond, !dbg !4954, !llvm.loop !4955

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4957
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4957
    #dbg_value(i32 %j.2, !4918, !DIExpression(), !4898)
    #dbg_value(i32 %i.1, !4917, !DIExpression(), !4898)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !4958
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4927

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !4960, !DIExpression(), !4965)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4966
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !4967
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #7, !dbg !4968
  %4 = load i64, ptr %q, align 8, !dbg !4969
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4970
  store i64 %4, ptr %arrayidx35, align 8, !dbg !4971
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4972
  store i64 %4, ptr %arrayidx37, align 8, !dbg !4973
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4974
  store i64 %4, ptr %arrayidx39, align 8, !dbg !4975
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4976
  %5 = load i64, ptr %arrayidx40, align 8, !dbg !4976
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4977
  store i64 %5, ptr %arrayidx41, align 8, !dbg !4978
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !4979
  store i64 %5, ptr %arrayidx43, align 8, !dbg !4980
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !4981
  store i64 %5, ptr %arrayidx45, align 8, !dbg !4982
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !4983
  %6 = load i64, ptr %q, align 8, !dbg !4984
  %and = and i64 %6, 1229782938247303441, !dbg !4985
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4986
  %7 = load i64, ptr %arrayidx48, align 8, !dbg !4986
  %and49 = and i64 %7, 2459565876494606882, !dbg !4987
  %or50 = or disjoint i64 %and, %and49, !dbg !4988
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4989
  %8 = load i64, ptr %arrayidx51, align 8, !dbg !4989
  %and52 = and i64 %8, 4919131752989213764, !dbg !4990
  %or53 = or disjoint i64 %or50, %and52, !dbg !4991
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4992
  %9 = load i64, ptr %arrayidx54, align 8, !dbg !4992
  %and55 = and i64 %9, -8608480567731124088, !dbg !4993
  %or56 = or disjoint i64 %or53, %and55, !dbg !4994
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !4995
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !4996
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4997
  %10 = load i64, ptr %arrayidx59, align 8, !dbg !4997
  %and60 = and i64 %10, 1229782938247303441, !dbg !4998
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4999
  %11 = load i64, ptr %arrayidx61, align 8, !dbg !4999
  %and62 = and i64 %11, 2459565876494606882, !dbg !5000
  %or63 = or disjoint i64 %and60, %and62, !dbg !5001
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5002
  %12 = load i64, ptr %arrayidx64, align 8, !dbg !5002
  %and65 = and i64 %12, 4919131752989213764, !dbg !5003
  %or66 = or disjoint i64 %or63, %and65, !dbg !5004
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5005
  %13 = load i64, ptr %arrayidx67, align 8, !dbg !5005
  %and68 = and i64 %13, -8608480567731124088, !dbg !5006
  %or69 = or disjoint i64 %or66, %and68, !dbg !5007
  %add70 = or disjoint i32 %j.2, 1, !dbg !5008
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5009
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5010
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5011
    #dbg_value(i32 %add73, !4917, !DIExpression(), !4898)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5012
    #dbg_value(i32 %add74, !4918, !DIExpression(), !4898)
  br label %for.cond27, !dbg !5013, !llvm.loop !5014

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5016
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5017 {
entry:
    #dbg_value(ptr %skey, !5020, !DIExpression(), !5021)
    #dbg_value(ptr %comp_skey, !5022, !DIExpression(), !5021)
    #dbg_value(i32 %nrounds, !5023, !DIExpression(), !5021)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5024
  %shl = add nuw nsw i32 %add, 2, !dbg !5024
    #dbg_value(i32 %shl, !5025, !DIExpression(), !5021)
    #dbg_value(i32 0, !5026, !DIExpression(), !5021)
    #dbg_value(i32 0, !5027, !DIExpression(), !5021)
  br label %for.cond, !dbg !5028

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5030
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5030
    #dbg_value(i32 %v.0, !5027, !DIExpression(), !5021)
    #dbg_value(i32 %u.0, !5026, !DIExpression(), !5021)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5031
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5033

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5034
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5034
    #dbg_value(i64 %0, !5036, !DIExpression(), !5037)
    #dbg_value(i64 %0, !5038, !DIExpression(), !5037)
    #dbg_value(i64 %0, !5039, !DIExpression(), !5037)
    #dbg_value(i64 %0, !5040, !DIExpression(), !5037)
  %and = and i64 %0, 1229782938247303441, !dbg !5041
    #dbg_value(i64 %and, !5040, !DIExpression(), !5037)
    #dbg_value(i64 %0, !5039, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5037)
    #dbg_value(i64 %0, !5038, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5037)
    #dbg_value(i64 %0, !5036, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5037)
  %and1 = lshr i64 %0, 1, !dbg !5042
  %shr = and i64 %and1, 1229782938247303441, !dbg !5042
    #dbg_value(i64 %shr, !5039, !DIExpression(), !5037)
  %and2 = lshr i64 %0, 2, !dbg !5043
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5043
    #dbg_value(i64 %shr4, !5038, !DIExpression(), !5037)
  %and3 = lshr i64 %0, 3, !dbg !5044
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5044
    #dbg_value(i64 %shr5, !5036, !DIExpression(), !5037)
  %sub = mul nuw i64 %and, 15, !dbg !5045
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5046
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5047
  %sub10 = mul nuw i64 %shr, 15, !dbg !5048
  %add11 = or disjoint i32 %v.0, 1, !dbg !5049
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5050
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5051
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5052
  %add15 = or disjoint i32 %v.0, 2, !dbg !5053
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5054
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5055
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5056
  %add19 = or disjoint i32 %v.0, 3, !dbg !5057
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5058
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5059
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5060
    #dbg_value(i32 %inc, !5026, !DIExpression(), !5021)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5061
    #dbg_value(i32 %add21, !5027, !DIExpression(), !5021)
  br label %for.cond, !dbg !5062, !llvm.loop !5063

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5065
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5066 {
entry:
    #dbg_value(ptr %v, !5070, !DIExpression(), !5071)
    #dbg_value(i32 %num, !5072, !DIExpression(), !5071)
    #dbg_value(ptr %src, !5073, !DIExpression(), !5071)
  br label %while.cond, !dbg !5074

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5070, !DIExpression(), !5071)
    #dbg_value(i32 %num.addr.0, !5072, !DIExpression(), !5071)
    #dbg_value(ptr %src.addr.0, !5073, !DIExpression(), !5071)
    #dbg_value(i32 %num.addr.0, !5072, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5071)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5075
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5074

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5076
    #dbg_value(i32 %dec, !5072, !DIExpression(), !5071)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #7, !dbg !5077
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5079
    #dbg_value(ptr %incdec.ptr, !5070, !DIExpression(), !5071)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5080
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5081
    #dbg_value(ptr %add.ptr, !5073, !DIExpression(), !5071)
  br label %while.cond, !dbg !5074, !llvm.loop !5082

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5084
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5085 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5088, !DIExpression(), !5089)
    #dbg_declare(ptr %q, !5090, !DIExpression(), !5091)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #9, !dbg !5092
  %conv = zext i32 %x to i64, !dbg !5093
  store i64 %conv, ptr %q, align 8, !dbg !5094
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5095
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5096
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5097
  %0 = load i64, ptr %q, align 8, !dbg !5098
  %conv5 = trunc i64 %0 to i32, !dbg !5099
  ret i32 %conv5, !dbg !5100
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5101 {
entry:
    #dbg_value(ptr %q0, !5106, !DIExpression(), !5107)
    #dbg_value(ptr %q1, !5108, !DIExpression(), !5107)
    #dbg_value(ptr %w, !5109, !DIExpression(), !5107)
  %0 = load i32, ptr %w, align 4, !dbg !5110
  %conv = zext i32 %0 to i64, !dbg !5110
    #dbg_value(i64 %conv, !5111, !DIExpression(), !5107)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5112
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5112
  %conv2 = zext i32 %1 to i64, !dbg !5112
    #dbg_value(i64 %conv2, !5113, !DIExpression(), !5107)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5114
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5114
  %conv4 = zext i32 %2 to i64, !dbg !5114
    #dbg_value(i64 %conv4, !5115, !DIExpression(), !5107)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5116
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5116
  %conv6 = zext i32 %3 to i64, !dbg !5116
    #dbg_value(i64 %conv6, !5117, !DIExpression(), !5107)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5118
  %or = or i64 %shl, %conv, !dbg !5119
    #dbg_value(i64 %or, !5111, !DIExpression(), !5107)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5120
  %or8 = or i64 %shl7, %conv2, !dbg !5121
    #dbg_value(i64 %or8, !5113, !DIExpression(), !5107)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5122
  %or10 = or i64 %shl9, %conv4, !dbg !5123
    #dbg_value(i64 %or10, !5115, !DIExpression(), !5107)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5124
  %or12 = or i64 %shl11, %conv6, !dbg !5125
    #dbg_value(i64 %or12, !5117, !DIExpression(), !5107)
  %and = and i64 %or, 281470681808895, !dbg !5126
    #dbg_value(i64 %and, !5111, !DIExpression(), !5107)
  %and13 = and i64 %or8, 281470681808895, !dbg !5127
    #dbg_value(i64 %and13, !5113, !DIExpression(), !5107)
  %and14 = and i64 %or10, 281470681808895, !dbg !5128
    #dbg_value(i64 %and14, !5115, !DIExpression(), !5107)
  %and15 = and i64 %or12, 281470681808895, !dbg !5129
    #dbg_value(i64 %and15, !5117, !DIExpression(), !5107)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5130
  %or17 = or i64 %and, %shl16, !dbg !5131
    #dbg_value(i64 %or17, !5111, !DIExpression(), !5107)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5132
  %or19 = or i64 %and13, %shl18, !dbg !5133
    #dbg_value(i64 %or19, !5113, !DIExpression(), !5107)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5107)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5107)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5134
    #dbg_value(i64 %and24, !5111, !DIExpression(), !5107)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5135
    #dbg_value(i64 %and25, !5113, !DIExpression(), !5107)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5107)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5107)
  %4 = shl nuw i64 %and14, 16, !dbg !5136
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5136
  %and26 = or i64 %4, %5, !dbg !5136
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5136
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5137
  store i64 %or29, ptr %q0, align 8, !dbg !5138
  %6 = shl nuw i64 %and15, 16, !dbg !5139
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5139
  %and27 = or i64 %6, %7, !dbg !5139
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5139
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5140
  store i64 %or31, ptr %q1, align 8, !dbg !5141
  ret void, !dbg !5142
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5143 {
entry:
    #dbg_value(ptr %q, !5144, !DIExpression(), !5145)
  %0 = load i64, ptr %q, align 8, !dbg !5146
    #dbg_value(i64 %0, !5148, !DIExpression(), !5149)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5146
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5146
    #dbg_value(i64 %1, !5150, !DIExpression(), !5149)
  %and = and i64 %0, 6148914691236517205, !dbg !5146
  %and2 = shl i64 %1, 1, !dbg !5146
  %shl = and i64 %and2, -6148914691236517206, !dbg !5146
  %or = or disjoint i64 %and, %shl, !dbg !5146
  store i64 %or, ptr %q, align 8, !dbg !5146
  %and4 = lshr i64 %0, 1, !dbg !5146
  %shr = and i64 %and4, 6148914691236517205, !dbg !5146
  %and5 = and i64 %1, -6148914691236517206, !dbg !5146
  %or6 = or disjoint i64 %shr, %and5, !dbg !5146
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5146
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5146
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5151
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5151
    #dbg_value(i64 %2, !5153, !DIExpression(), !5154)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5151
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5151
    #dbg_value(i64 %3, !5155, !DIExpression(), !5154)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5151
  %and14 = shl i64 %3, 1, !dbg !5151
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5151
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5151
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5151
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5151
  %and18 = lshr i64 %2, 1, !dbg !5151
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5151
  %and20 = and i64 %3, -6148914691236517206, !dbg !5151
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5151
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5151
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5151
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5156
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5156
    #dbg_value(i64 %4, !5158, !DIExpression(), !5159)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5156
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5156
    #dbg_value(i64 %5, !5160, !DIExpression(), !5159)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5156
  %and30 = shl i64 %5, 1, !dbg !5156
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5156
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5156
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5156
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5156
  %and34 = lshr i64 %4, 1, !dbg !5156
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5156
  %and36 = and i64 %5, -6148914691236517206, !dbg !5156
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5156
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5156
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5156
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5161
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5161
    #dbg_value(i64 %6, !5163, !DIExpression(), !5164)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5161
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5161
    #dbg_value(i64 %7, !5165, !DIExpression(), !5164)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5161
  %and46 = shl i64 %7, 1, !dbg !5161
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5161
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5161
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5161
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5161
  %and50 = lshr i64 %6, 1, !dbg !5161
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5161
  %and52 = and i64 %7, -6148914691236517206, !dbg !5161
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5161
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5161
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5161
  %8 = load i64, ptr %q, align 8, !dbg !5166
    #dbg_value(i64 %8, !5168, !DIExpression(), !5169)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5166
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5166
    #dbg_value(i64 %9, !5170, !DIExpression(), !5169)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5166
  %and62 = shl i64 %9, 2, !dbg !5166
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5166
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5166
  store i64 %or64, ptr %q, align 8, !dbg !5166
  %and66 = lshr i64 %8, 2, !dbg !5166
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5166
  %and68 = and i64 %9, -3689348814741910324, !dbg !5166
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5166
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5166
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5166
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5171
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5171
    #dbg_value(i64 %10, !5173, !DIExpression(), !5174)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5171
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5171
    #dbg_value(i64 %11, !5175, !DIExpression(), !5174)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5171
  %and78 = shl i64 %11, 2, !dbg !5171
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5171
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5171
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5171
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5171
  %and82 = lshr i64 %10, 2, !dbg !5171
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5171
  %and84 = and i64 %11, -3689348814741910324, !dbg !5171
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5171
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5171
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5171
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5176
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5176
    #dbg_value(i64 %12, !5178, !DIExpression(), !5179)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5176
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5176
    #dbg_value(i64 %13, !5180, !DIExpression(), !5179)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5176
  %and94 = shl i64 %13, 2, !dbg !5176
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5176
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5176
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5176
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5176
  %and98 = lshr i64 %12, 2, !dbg !5176
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5176
  %and100 = and i64 %13, -3689348814741910324, !dbg !5176
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5176
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5176
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5176
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5181
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5181
    #dbg_value(i64 %14, !5183, !DIExpression(), !5184)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5181
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5181
    #dbg_value(i64 %15, !5185, !DIExpression(), !5184)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5181
  %and110 = shl i64 %15, 2, !dbg !5181
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5181
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5181
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5181
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5181
  %and114 = lshr i64 %14, 2, !dbg !5181
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5181
  %and116 = and i64 %15, -3689348814741910324, !dbg !5181
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5181
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5181
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5181
  %16 = load i64, ptr %q, align 8, !dbg !5186
    #dbg_value(i64 %16, !5188, !DIExpression(), !5189)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5186
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5186
    #dbg_value(i64 %17, !5190, !DIExpression(), !5189)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5186
  %and126 = shl i64 %17, 4, !dbg !5186
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5186
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5186
  store i64 %or128, ptr %q, align 8, !dbg !5186
  %and130 = lshr i64 %16, 4, !dbg !5186
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5186
  %and132 = and i64 %17, -1085102592571150096, !dbg !5186
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5186
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5186
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5186
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5191
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5191
    #dbg_value(i64 %18, !5193, !DIExpression(), !5194)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5191
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5191
    #dbg_value(i64 %19, !5195, !DIExpression(), !5194)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5191
  %and142 = shl i64 %19, 4, !dbg !5191
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5191
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5191
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5191
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5191
  %and146 = lshr i64 %18, 4, !dbg !5191
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5191
  %and148 = and i64 %19, -1085102592571150096, !dbg !5191
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5191
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5191
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5191
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5196
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5196
    #dbg_value(i64 %20, !5198, !DIExpression(), !5199)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5196
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5196
    #dbg_value(i64 %21, !5200, !DIExpression(), !5199)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5196
  %and158 = shl i64 %21, 4, !dbg !5196
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5196
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5196
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5196
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5196
  %and162 = lshr i64 %20, 4, !dbg !5196
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5196
  %and164 = and i64 %21, -1085102592571150096, !dbg !5196
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5196
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5196
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5196
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5201
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5201
    #dbg_value(i64 %22, !5203, !DIExpression(), !5204)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5201
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5201
    #dbg_value(i64 %23, !5205, !DIExpression(), !5204)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5201
  %and174 = shl i64 %23, 4, !dbg !5201
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5201
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5201
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5201
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5201
  %and178 = lshr i64 %22, 4, !dbg !5201
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5201
  %and180 = and i64 %23, -1085102592571150096, !dbg !5201
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5201
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5201
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5201
  ret void, !dbg !5206
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5207 {
entry:
    #dbg_value(ptr %q, !5208, !DIExpression(), !5209)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5210
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5210
    #dbg_value(i64 %0, !5211, !DIExpression(), !5209)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5212
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5212
    #dbg_value(i64 %1, !5213, !DIExpression(), !5209)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5214
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5214
    #dbg_value(i64 %2, !5215, !DIExpression(), !5209)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5216
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5216
    #dbg_value(i64 %3, !5217, !DIExpression(), !5209)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5218
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5218
    #dbg_value(i64 %4, !5219, !DIExpression(), !5209)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5220
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5220
    #dbg_value(i64 %5, !5221, !DIExpression(), !5209)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5222
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5222
    #dbg_value(i64 %6, !5223, !DIExpression(), !5209)
  %7 = load i64, ptr %q, align 8, !dbg !5224
    #dbg_value(i64 %7, !5225, !DIExpression(), !5209)
  %xor = xor i64 %3, %5, !dbg !5226
    #dbg_value(i64 %xor, !5227, !DIExpression(), !5209)
  %xor8 = xor i64 %0, %6, !dbg !5228
    #dbg_value(i64 %xor8, !5229, !DIExpression(), !5209)
  %xor9 = xor i64 %0, %3, !dbg !5230
    #dbg_value(i64 %xor9, !5231, !DIExpression(), !5209)
  %xor10 = xor i64 %0, %5, !dbg !5232
    #dbg_value(i64 %xor10, !5233, !DIExpression(), !5209)
  %xor11 = xor i64 %1, %2, !dbg !5234
    #dbg_value(i64 %xor11, !5235, !DIExpression(), !5209)
  %xor12 = xor i64 %xor11, %7, !dbg !5236
    #dbg_value(i64 %xor12, !5237, !DIExpression(), !5209)
  %xor13 = xor i64 %xor12, %3, !dbg !5238
    #dbg_value(i64 %xor13, !5239, !DIExpression(), !5209)
  %xor14 = xor i64 %xor8, %xor, !dbg !5240
    #dbg_value(i64 %xor14, !5241, !DIExpression(), !5209)
  %xor15 = xor i64 %xor12, %0, !dbg !5242
    #dbg_value(i64 %xor15, !5243, !DIExpression(), !5209)
  %xor16 = xor i64 %xor12, %6, !dbg !5244
    #dbg_value(i64 %xor16, !5245, !DIExpression(), !5209)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5246
    #dbg_value(i64 %xor17, !5247, !DIExpression(), !5209)
  %xor18 = xor i64 %4, %xor14, !dbg !5248
    #dbg_value(i64 %xor18, !5249, !DIExpression(), !5209)
  %xor19 = xor i64 %xor18, %5, !dbg !5250
    #dbg_value(i64 %xor19, !5251, !DIExpression(), !5209)
  %xor20 = xor i64 %xor18, %1, !dbg !5252
    #dbg_value(i64 %xor20, !5253, !DIExpression(), !5209)
  %xor21 = xor i64 %xor19, %7, !dbg !5254
    #dbg_value(i64 %xor21, !5255, !DIExpression(), !5209)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5256
    #dbg_value(i64 %xor22, !5257, !DIExpression(), !5209)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5258
    #dbg_value(i64 %xor23, !5259, !DIExpression(), !5209)
  %xor24 = xor i64 %7, %xor23, !dbg !5260
    #dbg_value(i64 %xor24, !5261, !DIExpression(), !5209)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5262
    #dbg_value(i64 %xor25, !5263, !DIExpression(), !5209)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5264, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5265
    #dbg_value(i64 %xor27, !5266, !DIExpression(), !5209)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5267, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5268, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
  %and = and i64 %xor14, %xor19, !dbg !5269
    #dbg_value(i64 %and, !5270, !DIExpression(), !5209)
  %and30 = and i64 %xor17, %xor21, !dbg !5271
    #dbg_value(i64 %and30, !5272, !DIExpression(), !5209)
  %xor31 = xor i64 %and30, %and, !dbg !5273
    #dbg_value(i64 %xor31, !5274, !DIExpression(), !5209)
  %and32 = and i64 %xor13, %7, !dbg !5275
    #dbg_value(i64 %and32, !5276, !DIExpression(), !5209)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5277, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
  %and34 = and i64 %xor8, %xor27, !dbg !5278
    #dbg_value(i64 %and34, !5279, !DIExpression(), !5209)
  %and35 = and i64 %xor16, %xor12, !dbg !5280
    #dbg_value(i64 %and35, !5281, !DIExpression(), !5209)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5282, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
  %and37 = and i64 %xor15, %xor24, !dbg !5283
    #dbg_value(i64 %and37, !5284, !DIExpression(), !5209)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5285, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
  %and39 = and i64 %xor9, %xor23, !dbg !5286
    #dbg_value(i64 %and39, !5287, !DIExpression(), !5209)
  %and40 = and i64 %xor, %xor25, !dbg !5288
    #dbg_value(i64 %and40, !5289, !DIExpression(), !5209)
  %xor41 = xor i64 %and40, %and39, !dbg !5290
    #dbg_value(i64 %xor41, !5291, !DIExpression(), !5209)
  %and42 = and i64 %xor10, %xor22, !dbg !5292
    #dbg_value(i64 %and42, !5293, !DIExpression(), !5209)
  %xor43 = xor i64 %and42, %and39, !dbg !5294
    #dbg_value(i64 %xor43, !5295, !DIExpression(), !5209)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5296
    #dbg_value(i64 %xor44, !5297, !DIExpression(), !5209)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5298, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5299, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5300, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5301
    #dbg_value(i64 %xor48, !5302, !DIExpression(), !5209)
  %8 = xor i64 %xor10, %and32, !dbg !5303
  %9 = xor i64 %8, %xor22, !dbg !5303
  %10 = xor i64 %9, %and, !dbg !5303
  %xor49 = xor i64 %10, %xor43, !dbg !5303
    #dbg_value(i64 %xor49, !5304, !DIExpression(), !5209)
  %11 = xor i64 %xor27, %and35, !dbg !5305
  %12 = xor i64 %11, %xor8, !dbg !5305
  %13 = xor i64 %12, %and34, !dbg !5305
  %xor50 = xor i64 %13, %xor41, !dbg !5305
    #dbg_value(i64 %xor50, !5306, !DIExpression(), !5209)
  %14 = xor i64 %xor27, %and37, !dbg !5307
  %15 = xor i64 %14, %0, !dbg !5307
  %16 = xor i64 %15, %and34, !dbg !5307
  %xor51 = xor i64 %16, %xor43, !dbg !5307
    #dbg_value(i64 %xor51, !5308, !DIExpression(), !5209)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5309
    #dbg_value(i64 %xor52, !5310, !DIExpression(), !5209)
  %and53 = and i64 %xor48, %xor50, !dbg !5311
    #dbg_value(i64 %and53, !5312, !DIExpression(), !5209)
  %xor54 = xor i64 %xor51, %and53, !dbg !5313
    #dbg_value(i64 %xor54, !5314, !DIExpression(), !5209)
  %and55 = and i64 %xor52, %xor54, !dbg !5315
    #dbg_value(i64 %and55, !5316, !DIExpression(), !5209)
  %xor56 = xor i64 %and55, %xor49, !dbg !5317
    #dbg_value(i64 %xor56, !5318, !DIExpression(), !5209)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5319
    #dbg_value(i64 %xor57, !5320, !DIExpression(), !5209)
  %xor58 = xor i64 %xor49, %and53, !dbg !5321
    #dbg_value(i64 %xor58, !5322, !DIExpression(), !5209)
  %and59 = and i64 %xor58, %xor57, !dbg !5323
    #dbg_value(i64 %and59, !5324, !DIExpression(), !5209)
  %xor60 = xor i64 %and59, %xor51, !dbg !5325
    #dbg_value(i64 %xor60, !5326, !DIExpression(), !5209)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5327
    #dbg_value(i64 %xor61, !5328, !DIExpression(), !5209)
  %xor62 = xor i64 %and59, %and53, !dbg !5329
    #dbg_value(i64 %xor62, !5330, !DIExpression(), !5209)
  %and63 = and i64 %xor51, %xor62, !dbg !5331
    #dbg_value(i64 %and63, !5332, !DIExpression(), !5209)
  %xor64 = xor i64 %and63, %xor61, !dbg !5333
    #dbg_value(i64 %xor64, !5334, !DIExpression(), !5209)
  %xor65 = xor i64 %xor54, %and63, !dbg !5335
    #dbg_value(i64 %xor65, !5336, !DIExpression(), !5209)
  %and66 = and i64 %xor56, %xor65, !dbg !5337
    #dbg_value(i64 %and66, !5338, !DIExpression(), !5209)
  %xor67 = xor i64 %xor52, %and66, !dbg !5339
    #dbg_value(i64 %xor67, !5340, !DIExpression(), !5209)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5341
    #dbg_value(i64 %xor68, !5342, !DIExpression(), !5209)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5343
    #dbg_value(i64 %xor69, !5344, !DIExpression(), !5209)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5345
    #dbg_value(i64 %xor70, !5346, !DIExpression(), !5209)
  %xor71 = xor i64 %and63, %xor50, !dbg !5347
    #dbg_value(i64 %xor71, !5348, !DIExpression(), !5209)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5349
    #dbg_value(i64 %xor72, !5350, !DIExpression(), !5209)
  %and73 = and i64 %xor71, %xor19, !dbg !5351
    #dbg_value(i64 %and73, !5352, !DIExpression(), !5209)
  %and74 = and i64 %xor64, %xor21, !dbg !5353
    #dbg_value(i64 %and74, !5354, !DIExpression(), !5209)
  %and75 = and i64 %xor60, %7, !dbg !5355
    #dbg_value(i64 %and75, !5356, !DIExpression(), !5209)
  %and76 = and i64 %xor70, %xor27, !dbg !5357
    #dbg_value(i64 %and76, !5358, !DIExpression(), !5209)
  %and77 = and i64 %xor67, %xor12, !dbg !5359
    #dbg_value(i64 %and77, !5360, !DIExpression(), !5209)
  %and78 = and i64 %xor56, %xor24, !dbg !5361
    #dbg_value(i64 %and78, !5362, !DIExpression(), !5209)
  %and79 = and i64 %xor69, %xor23, !dbg !5363
    #dbg_value(i64 %and79, !5364, !DIExpression(), !5209)
  %and80 = and i64 %xor72, %xor25, !dbg !5365
    #dbg_value(i64 %and80, !5366, !DIExpression(), !5209)
  %and81 = and i64 %xor68, %xor22, !dbg !5367
    #dbg_value(i64 %and81, !5368, !DIExpression(), !5209)
  %and82 = and i64 %xor71, %xor14, !dbg !5369
    #dbg_value(i64 %and82, !5370, !DIExpression(), !5209)
  %and83 = and i64 %xor64, %xor17, !dbg !5371
    #dbg_value(i64 %and83, !5372, !DIExpression(), !5209)
  %and84 = and i64 %xor60, %xor13, !dbg !5373
    #dbg_value(i64 %and84, !5374, !DIExpression(), !5209)
  %and85 = and i64 %xor70, %xor8, !dbg !5375
    #dbg_value(i64 %and85, !5376, !DIExpression(), !5209)
  %and86 = and i64 %xor67, %xor16, !dbg !5377
    #dbg_value(i64 %and86, !5378, !DIExpression(), !5209)
  %and87 = and i64 %xor56, %xor15, !dbg !5379
    #dbg_value(i64 %and87, !5380, !DIExpression(), !5209)
  %and88 = and i64 %xor69, %xor9, !dbg !5381
    #dbg_value(i64 %and88, !5382, !DIExpression(), !5209)
  %and89 = and i64 %xor72, %xor, !dbg !5383
    #dbg_value(i64 %and89, !5384, !DIExpression(), !5209)
  %and90 = and i64 %xor68, %xor10, !dbg !5385
    #dbg_value(i64 %and90, !5386, !DIExpression(), !5209)
  %xor91 = xor i64 %and88, %and89, !dbg !5387
    #dbg_value(i64 %xor91, !5388, !DIExpression(), !5209)
  %xor92 = xor i64 %and83, %and84, !dbg !5389
    #dbg_value(i64 %xor92, !5390, !DIExpression(), !5209)
  %xor93 = xor i64 %and78, %and86, !dbg !5391
    #dbg_value(i64 %xor93, !5392, !DIExpression(), !5209)
  %xor94 = xor i64 %and82, %and83, !dbg !5393
    #dbg_value(i64 %xor94, !5394, !DIExpression(), !5209)
  %xor95 = xor i64 %and75, %and85, !dbg !5395
    #dbg_value(i64 %xor95, !5396, !DIExpression(), !5209)
  %xor96 = xor i64 %and75, %and78, !dbg !5397
    #dbg_value(i64 %xor96, !5398, !DIExpression(), !5209)
  %xor97 = xor i64 %and80, %and81, !dbg !5399
    #dbg_value(i64 %xor97, !5400, !DIExpression(), !5209)
  %xor98 = xor i64 %and73, %and76, !dbg !5401
    #dbg_value(i64 %xor98, !5402, !DIExpression(), !5209)
  %xor99 = xor i64 %and79, %and80, !dbg !5403
    #dbg_value(i64 %xor99, !5404, !DIExpression(), !5209)
  %xor100 = xor i64 %and89, %and90, !dbg !5405
    #dbg_value(i64 %xor100, !5406, !DIExpression(), !5209)
  %xor101 = xor i64 %and85, %xor93, !dbg !5407
    #dbg_value(i64 %xor101, !5408, !DIExpression(), !5209)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5409
    #dbg_value(i64 %xor102, !5410, !DIExpression(), !5209)
  %xor103 = xor i64 %and77, %xor91, !dbg !5411
    #dbg_value(i64 %xor103, !5412, !DIExpression(), !5209)
  %xor104 = xor i64 %and76, %xor99, !dbg !5413
    #dbg_value(i64 %xor104, !5414, !DIExpression(), !5209)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5415
    #dbg_value(i64 %xor105, !5416, !DIExpression(), !5209)
  %xor106 = xor i64 %and87, %xor102, !dbg !5417
    #dbg_value(i64 %xor106, !5418, !DIExpression(), !5209)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5419
    #dbg_value(i64 %xor107, !5420, !DIExpression(), !5209)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5421
    #dbg_value(i64 %xor108, !5422, !DIExpression(), !5209)
  %xor109 = xor i64 %and77, %xor104, !dbg !5423
    #dbg_value(i64 %xor109, !5424, !DIExpression(), !5209)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5425
    #dbg_value(i64 %xor110, !5426, !DIExpression(), !5209)
  %xor111 = xor i64 %and74, %xor108, !dbg !5427
    #dbg_value(i64 %xor111, !5428, !DIExpression(), !5209)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5429
    #dbg_value(i64 %xor112, !5430, !DIExpression(), !5209)
  %17 = xor i64 %xor107, %xor101, !dbg !5431
  %xor113 = xor i64 %17, -1, !dbg !5431
    #dbg_value(i64 %xor113, !5432, !DIExpression(), !5209)
  %18 = xor i64 %xor105, %xor93, !dbg !5433
  %xor115 = xor i64 %18, -1, !dbg !5433
    #dbg_value(i64 %xor115, !5434, !DIExpression(), !5209)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5209)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5436
    #dbg_value(i64 %xor117, !5437, !DIExpression(), !5209)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5438
    #dbg_value(i64 %xor118, !5439, !DIExpression(), !5209)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5440
    #dbg_value(i64 %xor119, !5441, !DIExpression(), !5209)
  %19 = xor i64 %xor117, %xor109, !dbg !5442
  %xor121 = xor i64 %19, -1, !dbg !5442
    #dbg_value(i64 %xor121, !5443, !DIExpression(), !5209)
  %20 = xor i64 %xor110, %xor100, !dbg !5444
  %21 = xor i64 %20, %xor109, !dbg !5444
  %xor123 = xor i64 %21, -1, !dbg !5444
    #dbg_value(i64 %xor123, !5445, !DIExpression(), !5209)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5446
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5447
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5448
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5449
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5450
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5451
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5452
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5453
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5454
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5455
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5456
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5457
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5458
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5459
  store i64 %xor115, ptr %q, align 8, !dbg !5460
  ret void, !dbg !5461
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5462 {
entry:
    #dbg_value(ptr %src, !5465, !DIExpression(), !5466)
  %0 = load i8, ptr %src, align 1, !dbg !5467
  %conv = zext i8 %0 to i32, !dbg !5468
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5469
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5469
  %conv2 = zext i8 %1 to i32, !dbg !5470
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5471
  %or = or disjoint i32 %shl, %conv, !dbg !5472
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5473
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5473
  %conv4 = zext i8 %2 to i32, !dbg !5474
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5475
  %or6 = or disjoint i32 %or, %shl5, !dbg !5476
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5477
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5477
  %conv8 = zext i8 %3 to i32, !dbg !5478
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5479
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5480
  ret i32 %or10, !dbg !5481
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5482 {
entry:
    #dbg_value(ptr %r, !5483, !DIExpression(), !5484)
    #dbg_value(ptr %key, !5485, !DIExpression(), !5484)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5486
  ret void, !dbg !5487
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5488 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5496, !DIExpression(), !5497)
    #dbg_value(ptr %key, !5498, !DIExpression(), !5497)
    #dbg_declare(ptr %skey, !5499, !DIExpression(), !5503)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #10, !dbg !5504
  store ptr %call, ptr %r, align 4, !dbg !5505
  %cmp = icmp eq ptr %call, null, !dbg !5506
  br i1 %cmp, label %if.then, label %if.end, !dbg !5506

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5508
  br label %if.end, !dbg !5510

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #7, !dbg !5511
  %0 = load ptr, ptr %r, align 4, !dbg !5512
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #7, !dbg !5513
  ret void, !dbg !5514
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5515 {
entry:
    #dbg_value(ptr %r, !5516, !DIExpression(), !5517)
    #dbg_value(ptr %key, !5518, !DIExpression(), !5517)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5519
  ret void, !dbg !5520
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5521 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5529, !DIExpression(), !5530)
    #dbg_value(ptr %key, !5531, !DIExpression(), !5530)
    #dbg_declare(ptr %skey, !5532, !DIExpression(), !5536)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #10, !dbg !5537
  store ptr %call, ptr %r, align 4, !dbg !5538
  %cmp = icmp eq ptr %call, null, !dbg !5539
  br i1 %cmp, label %if.then, label %if.end, !dbg !5539

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5541
  br label %if.end, !dbg !5543

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #7, !dbg !5544
  %0 = load ptr, ptr %r, align 4, !dbg !5545
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #7, !dbg !5546
  ret void, !dbg !5547
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5548 {
entry:
    #dbg_value(ptr %r, !5549, !DIExpression(), !5550)
    #dbg_value(ptr %key, !5551, !DIExpression(), !5550)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5552
  ret void, !dbg !5553
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5554 {
entry:
    #dbg_value(ptr %out, !5559, !DIExpression(), !5560)
    #dbg_value(ptr %in, !5561, !DIExpression(), !5560)
    #dbg_value(i32 %nblocks, !5562, !DIExpression(), !5560)
    #dbg_value(ptr %ctx, !5563, !DIExpression(), !5560)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5564
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #7, !dbg !5565
  ret void, !dbg !5566
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5567 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5570, !DIExpression(), !5571)
    #dbg_value(ptr %in, !5572, !DIExpression(), !5571)
    #dbg_value(i32 %nblocks, !5573, !DIExpression(), !5571)
    #dbg_value(ptr %rkeys, !5574, !DIExpression(), !5571)
    #dbg_value(i32 %nrounds, !5575, !DIExpression(), !5571)
    #dbg_declare(ptr %blocks, !5576, !DIExpression(), !5578)
    #dbg_declare(ptr %t, !5579, !DIExpression(), !5583)
  br label %while.cond, !dbg !5584

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5570, !DIExpression(), !5571)
    #dbg_value(ptr %in.addr.0, !5572, !DIExpression(), !5571)
    #dbg_value(i32 %nblocks.addr.0, !5573, !DIExpression(), !5571)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5585
  br i1 %cmp, label %while.body, label %while.end, !dbg !5584

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #7, !dbg !5586
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5588
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5589
    #dbg_value(i32 %sub, !5573, !DIExpression(), !5571)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5590
    #dbg_value(ptr %add.ptr, !5572, !DIExpression(), !5571)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5591
    #dbg_value(ptr %add.ptr2, !5570, !DIExpression(), !5571)
  br label %while.cond, !dbg !5584, !llvm.loop !5592

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5594
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5594

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5596
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #7, !dbg !5598
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5599
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5600
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #9, !dbg !5601
  br label %if.end, !dbg !5602

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5603
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5604 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5607, !DIExpression(), !5608)
    #dbg_value(ptr %ivw, !5609, !DIExpression(), !5608)
    #dbg_value(ptr %sk_exp, !5610, !DIExpression(), !5608)
    #dbg_value(i32 %nrounds, !5611, !DIExpression(), !5608)
    #dbg_declare(ptr %w, !5612, !DIExpression(), !5613)
    #dbg_declare(ptr %q, !5614, !DIExpression(), !5615)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #9, !dbg !5616
    #dbg_value(i32 0, !5617, !DIExpression(), !5608)
  br label %for.cond, !dbg !5618

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5620
    #dbg_value(i32 %i.0, !5617, !DIExpression(), !5608)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5621
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5623

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5624
  %add = or disjoint i32 %i.0, 4, !dbg !5626
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5627
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5628
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5628
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #7, !dbg !5629
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5630
    #dbg_value(i32 %inc, !5617, !DIExpression(), !5608)
  br label %for.cond, !dbg !5631, !llvm.loop !5632

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5634
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #7, !dbg !5635
    #dbg_value(i32 1, !5617, !DIExpression(), !5608)
  br label %for.cond5, !dbg !5636

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5638
    #dbg_value(i32 %i.1, !5617, !DIExpression(), !5608)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5639
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5641

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5642
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5644
  call fastcc void @mix_columns(ptr noundef nonnull %q) #7, !dbg !5645
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5646
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5646
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #7, !dbg !5647
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5648
    #dbg_value(i32 %inc15, !5617, !DIExpression(), !5608)
  br label %for.cond5, !dbg !5649, !llvm.loop !5650

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5652
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5653
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5654
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5654
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #7, !dbg !5655
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5656
    #dbg_value(i32 0, !5617, !DIExpression(), !5608)
  br label %for.cond22, !dbg !5657

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5659
    #dbg_value(i32 %i.2, !5617, !DIExpression(), !5608)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5660
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5662

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5663
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5663
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5665
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5665
  %add29 = or disjoint i32 %i.2, 4, !dbg !5666
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5667
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5667
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #7, !dbg !5668
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5669
    #dbg_value(i32 %inc32, !5617, !DIExpression(), !5608)
  br label %for.cond22, !dbg !5670, !llvm.loop !5671

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #7, !dbg !5673
  ret void, !dbg !5674
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5675 {
entry:
    #dbg_value(ptr %q, !5678, !DIExpression(), !5679)
    #dbg_value(ptr %sk, !5680, !DIExpression(), !5679)
  %0 = load i64, ptr %sk, align 8, !dbg !5681
  %1 = load i64, ptr %q, align 8, !dbg !5682
  %xor = xor i64 %1, %0, !dbg !5682
  store i64 %xor, ptr %q, align 8, !dbg !5682
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5683
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5683
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5684
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5685
  %xor4 = xor i64 %3, %2, !dbg !5685
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5685
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5686
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5686
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5687
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5688
  %xor7 = xor i64 %5, %4, !dbg !5688
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5688
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5689
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5689
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5690
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5691
  %xor10 = xor i64 %7, %6, !dbg !5691
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5691
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5692
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5692
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5693
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5694
  %xor13 = xor i64 %9, %8, !dbg !5694
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5694
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5695
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5695
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5696
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5697
  %xor16 = xor i64 %11, %10, !dbg !5697
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5697
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5698
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5698
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5699
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5700
  %xor19 = xor i64 %13, %12, !dbg !5700
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5700
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5701
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5701
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5702
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5703
  %xor22 = xor i64 %15, %14, !dbg !5703
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5703
  ret void, !dbg !5704
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5705 {
entry:
    #dbg_value(ptr %q, !5706, !DIExpression(), !5707)
    #dbg_value(i32 0, !5708, !DIExpression(), !5707)
  br label %for.cond, !dbg !5709

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5711
    #dbg_value(i32 %i.0, !5708, !DIExpression(), !5707)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5712
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5714

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5715
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5715
    #dbg_value(i64 %0, !5717, !DIExpression(), !5718)
  %and = and i64 %0, 65535, !dbg !5719
  %and1 = lshr i64 %0, 4, !dbg !5720
  %shr = and i64 %and1, 268369920, !dbg !5720
  %or = or disjoint i64 %and, %shr, !dbg !5721
  %and2 = shl i64 %0, 12, !dbg !5722
  %shl = and i64 %and2, 4026531840, !dbg !5722
  %or3 = or disjoint i64 %or, %shl, !dbg !5723
  %and4 = lshr i64 %0, 8, !dbg !5724
  %shr5 = and i64 %and4, 1095216660480, !dbg !5724
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5725
  %and7 = shl i64 %0, 8, !dbg !5726
  %shl8 = and i64 %and7, 280375465082880, !dbg !5726
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5727
  %and10 = lshr i64 %0, 12, !dbg !5728
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5728
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5729
  %and13 = shl i64 %0, 4, !dbg !5730
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5730
  %or15 = or i64 %or12, %shl14, !dbg !5731
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5732
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5733
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5734
    #dbg_value(i32 %inc, !5708, !DIExpression(), !5707)
  br label %for.cond, !dbg !5735, !llvm.loop !5736

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5738
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5739 {
entry:
    #dbg_value(ptr %q, !5740, !DIExpression(), !5741)
  %0 = load i64, ptr %q, align 8, !dbg !5742
    #dbg_value(i64 %0, !5743, !DIExpression(), !5741)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5744
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5744
    #dbg_value(i64 %1, !5745, !DIExpression(), !5741)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5746
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5746
    #dbg_value(i64 %2, !5747, !DIExpression(), !5741)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5748
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5748
    #dbg_value(i64 %3, !5749, !DIExpression(), !5741)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5750
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5750
    #dbg_value(i64 %4, !5751, !DIExpression(), !5741)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5752
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5752
    #dbg_value(i64 %5, !5753, !DIExpression(), !5741)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5754
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5754
    #dbg_value(i64 %6, !5755, !DIExpression(), !5741)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5756
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5756
    #dbg_value(i64 %7, !5757, !DIExpression(), !5741)
  %or = call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 48), !dbg !5758
    #dbg_value(i64 %or, !5759, !DIExpression(), !5741)
  %or10 = call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 48), !dbg !5760
    #dbg_value(i64 %or10, !5761, !DIExpression(), !5741)
  %or13 = call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 48), !dbg !5762
    #dbg_value(i64 %or13, !5763, !DIExpression(), !5741)
  %or16 = call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 48), !dbg !5764
    #dbg_value(i64 %or16, !5765, !DIExpression(), !5741)
  %or19 = call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 48), !dbg !5766
    #dbg_value(i64 %or19, !5767, !DIExpression(), !5741)
  %or22 = call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 48), !dbg !5768
    #dbg_value(i64 %or22, !5769, !DIExpression(), !5741)
  %or25 = call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 48), !dbg !5770
    #dbg_value(i64 %or25, !5771, !DIExpression(), !5741)
  %or28 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 48), !dbg !5772
    #dbg_value(i64 %or28, !5773, !DIExpression(), !5741)
  %xor30 = xor i64 %0, %or, !dbg !5774
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #7, !dbg !5775
  %8 = xor i64 %or28, %call, !dbg !5776
  %9 = xor i64 %8, %7, !dbg !5776
  %xor31 = xor i64 %9, %or, !dbg !5776
  store i64 %xor31, ptr %q, align 8, !dbg !5777
  %xor37 = xor i64 %1, %or10, !dbg !5778
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #7, !dbg !5779
  %10 = xor i64 %or, %call38, !dbg !5780
  %11 = xor i64 %10, %0, !dbg !5780
  %12 = xor i64 %11, %7, !dbg !5780
  %13 = xor i64 %12, %or28, !dbg !5780
  %xor39 = xor i64 %13, %or10, !dbg !5780
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5781
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5782
  %xor43 = xor i64 %2, %or13, !dbg !5783
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #7, !dbg !5784
  %14 = xor i64 %or10, %call44, !dbg !5785
  %15 = xor i64 %14, %1, !dbg !5785
  %xor45 = xor i64 %15, %or13, !dbg !5785
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5786
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5787
  %xor51 = xor i64 %3, %or16, !dbg !5788
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #7, !dbg !5789
  %16 = xor i64 %or13, %call52, !dbg !5790
  %17 = xor i64 %16, %2, !dbg !5790
  %18 = xor i64 %17, %7, !dbg !5790
  %19 = xor i64 %18, %or28, !dbg !5790
  %xor53 = xor i64 %19, %or16, !dbg !5790
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5791
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5792
  %xor59 = xor i64 %4, %or19, !dbg !5793
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #7, !dbg !5794
  %20 = xor i64 %or16, %call60, !dbg !5795
  %21 = xor i64 %20, %3, !dbg !5795
  %22 = xor i64 %21, %7, !dbg !5795
  %23 = xor i64 %22, %or28, !dbg !5795
  %xor61 = xor i64 %23, %or19, !dbg !5795
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5796
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5797
  %xor65 = xor i64 %5, %or22, !dbg !5798
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #7, !dbg !5799
  %24 = xor i64 %or19, %call66, !dbg !5800
  %25 = xor i64 %24, %4, !dbg !5800
  %xor67 = xor i64 %25, %or22, !dbg !5800
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5801
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5802
  %xor71 = xor i64 %6, %or25, !dbg !5803
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #7, !dbg !5804
  %26 = xor i64 %or22, %call72, !dbg !5805
  %27 = xor i64 %26, %5, !dbg !5805
  %xor73 = xor i64 %27, %or25, !dbg !5805
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5806
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5807
  %xor77 = xor i64 %7, %or28, !dbg !5808
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #7, !dbg !5809
  %28 = xor i64 %or25, %call78, !dbg !5810
  %29 = xor i64 %28, %6, !dbg !5810
  %xor79 = xor i64 %29, %or28, !dbg !5810
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5811
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5812
  ret void, !dbg !5813
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5814 {
entry:
    #dbg_value(ptr %w, !5817, !DIExpression(), !5818)
    #dbg_value(i64 %q0, !5819, !DIExpression(), !5818)
    #dbg_value(i64 %q1, !5820, !DIExpression(), !5818)
  %and = and i64 %q0, 71777214294589695, !dbg !5821
    #dbg_value(i64 %and, !5822, !DIExpression(), !5818)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5823
    #dbg_value(i64 %and1, !5824, !DIExpression(), !5818)
  %shr = lshr i64 %q0, 8, !dbg !5825
  %and2 = and i64 %shr, 71776119077928960, !dbg !5826
    #dbg_value(i64 %shr, !5827, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5818)
  %shr3 = lshr i64 %q1, 8, !dbg !5828
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5829
    #dbg_value(i64 %shr3, !5830, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5818)
  %shr5 = lshr i64 %and, 8, !dbg !5831
  %or = or disjoint i64 %and, %shr5, !dbg !5832
    #dbg_value(i64 %or, !5822, !DIExpression(), !5818)
  %shr6 = lshr i64 %and1, 8, !dbg !5833
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5834
    #dbg_value(i64 %or7, !5824, !DIExpression(), !5818)
  %0 = and i64 %q0, 280375465148160, !dbg !5835
  %1 = or disjoint i64 %and2, %0, !dbg !5835
  %or9 = lshr exact i64 %1, 8, !dbg !5835
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5827, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5818)
  %2 = and i64 %q1, 280375465148160, !dbg !5836
  %3 = or disjoint i64 %and4, %2, !dbg !5836
  %or11 = lshr exact i64 %3, 8, !dbg !5836
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5818)
  %and12 = and i64 %or, 281470681808895, !dbg !5837
    #dbg_value(i64 %and12, !5822, !DIExpression(), !5818)
  %and13 = and i64 %or7, 281470681808895, !dbg !5838
    #dbg_value(i64 %and13, !5824, !DIExpression(), !5818)
    #dbg_value(i64 %or9, !5827, !DIExpression(), !5818)
    #dbg_value(i64 %or11, !5830, !DIExpression(), !5818)
  %shr16 = lshr i64 %and12, 16, !dbg !5839
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5840
  %or18 = trunc i64 %or181 to i32, !dbg !5840
  store i32 %or18, ptr %w, align 4, !dbg !5841
  %shr20 = lshr i64 %and13, 16, !dbg !5842
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5843
  %or22 = trunc i64 %or222 to i32, !dbg !5843
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5844
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5845
  %shr25 = lshr i64 %1, 24, !dbg !5846
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5847
  %or27 = trunc i64 %or273 to i32, !dbg !5847
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5848
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5849
  %shr30 = lshr i64 %3, 24, !dbg !5850
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5851
  %or32 = trunc i64 %or324 to i32, !dbg !5851
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5852
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5853
  ret void, !dbg !5854
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5855 {
entry:
    #dbg_value(ptr %dst, !5858, !DIExpression(), !5859)
    #dbg_value(ptr %v, !5860, !DIExpression(), !5859)
    #dbg_value(i32 16, !5861, !DIExpression(), !5859)
  br label %while.cond, !dbg !5862

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5858, !DIExpression(), !5859)
    #dbg_value(ptr %v.addr.0, !5860, !DIExpression(), !5859)
    #dbg_value(i32 %num.addr.0, !5861, !DIExpression(), !5859)
    #dbg_value(i32 %num.addr.0, !5861, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5859)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5863
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5862

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5864
    #dbg_value(i32 %dec, !5861, !DIExpression(), !5859)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5865
    #dbg_value(ptr %incdec.ptr, !5860, !DIExpression(), !5859)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5867
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #7, !dbg !5868
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5869
    #dbg_value(ptr %add.ptr, !5858, !DIExpression(), !5859)
  br label %while.cond, !dbg !5862, !llvm.loop !5870

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5872
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5873 {
entry:
    #dbg_value(ptr %dst, !5876, !DIExpression(), !5877)
    #dbg_value(i32 %x, !5878, !DIExpression(), !5877)
  %conv = trunc i32 %x to i8, !dbg !5879
  store i8 %conv, ptr %dst, align 1, !dbg !5880
  %shr = lshr i32 %x, 8, !dbg !5881
  %conv1 = trunc i32 %shr to i8, !dbg !5882
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5883
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5884
  %shr3 = lshr i32 %x, 16, !dbg !5885
  %conv4 = trunc i32 %shr3 to i8, !dbg !5886
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5887
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5888
  %shr6 = lshr i32 %x, 24, !dbg !5889
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5890
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5891
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5892
  ret void, !dbg !5893
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5894 {
entry:
    #dbg_value(i64 %x, !5897, !DIExpression(), !5898)
  %or = call i64 @llvm.fshl.i64(i64 %x, i64 %x, i64 32), !dbg !5899
  ret i64 %or, !dbg !5900
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5901 {
entry:
    #dbg_value(ptr %out, !5904, !DIExpression(), !5905)
    #dbg_value(i32 %outlen, !5906, !DIExpression(), !5905)
    #dbg_value(ptr %iv, !5907, !DIExpression(), !5905)
    #dbg_value(ptr %ctx, !5908, !DIExpression(), !5905)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5909
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #7, !dbg !5910
  ret void, !dbg !5911
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5912 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5915, !DIExpression(), !5916)
    #dbg_value(i32 %outlen, !5917, !DIExpression(), !5916)
    #dbg_value(ptr %iv, !5918, !DIExpression(), !5916)
    #dbg_value(ptr %rkeys, !5919, !DIExpression(), !5916)
    #dbg_value(i32 %nrounds, !5920, !DIExpression(), !5916)
    #dbg_declare(ptr %ivw, !5921, !DIExpression(), !5922)
    #dbg_value(i32 0, !5923, !DIExpression(), !5916)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #7, !dbg !5924
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5925
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5926
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5927
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5928
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5929
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5930
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #7, !dbg !5931
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5932
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5933
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #7, !dbg !5934
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5935
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5936
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #7, !dbg !5937
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5938
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !5939
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #7, !dbg !5940
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5941
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !5942
  br label %while.cond, !dbg !5943

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5915, !DIExpression(), !5916)
    #dbg_value(i32 %outlen.addr.0, !5917, !DIExpression(), !5916)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !5944
  br i1 %cmp, label %while.body, label %while.end, !dbg !5943

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5945
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5947
    #dbg_value(ptr %add.ptr21, !5915, !DIExpression(), !5916)
  %sub = add i32 %outlen.addr.0, -64, !dbg !5948
    #dbg_value(i32 %sub, !5917, !DIExpression(), !5916)
  br label %while.cond, !dbg !5943, !llvm.loop !5949

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !5951
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !5951

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !5953, !DIExpression(), !5955)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5956
    #dbg_value(i32 0, !5957, !DIExpression(), !5916)
  br label %for.cond, !dbg !5958

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !5960
    #dbg_value(i32 %i.0, !5957, !DIExpression(), !5916)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !5961
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !5963

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !5964
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !5964
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !5966
  store i8 %0, ptr %arrayidx27, align 1, !dbg !5967
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5968
    #dbg_value(i32 %inc, !5957, !DIExpression(), !5916)
  br label %for.cond, !dbg !5969, !llvm.loop !5970

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5972

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !5972
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !5973 {
entry:
    #dbg_value(i32 %x, !5974, !DIExpression(), !5975)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !5974, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !5975)
  %or4 = call i32 @llvm.bswap.i32(i32 %x), !dbg !5976
  ret i32 %or4, !dbg !5977
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5978 {
entry:
    #dbg_value(ptr %out, !5981, !DIExpression(), !5982)
    #dbg_value(ptr %ivw, !5983, !DIExpression(), !5982)
    #dbg_value(ptr %sk_exp, !5984, !DIExpression(), !5982)
    #dbg_value(i32 %nrounds, !5985, !DIExpression(), !5982)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #7, !dbg !5986
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5987
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #7, !dbg !5988
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5989
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #7, !dbg !5990
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5991
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #7, !dbg !5992
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5993
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #7, !dbg !5994
  ret void, !dbg !5995
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !5996 {
entry:
    #dbg_value(ptr %x, !5999, !DIExpression(), !6000)
  %0 = load i32, ptr %x, align 4, !dbg !6001
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #7, !dbg !6002
  %add = add i32 %call, 4, !dbg !6003
    #dbg_value(i32 %add, !6004, !DIExpression(), !6000)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #7, !dbg !6005
  store i32 %call1, ptr %x, align 4, !dbg !6006
  ret void, !dbg !6007
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6008 {
entry:
    #dbg_value(ptr %out, !6013, !DIExpression(), !6014)
    #dbg_value(ptr %in, !6015, !DIExpression(), !6014)
    #dbg_value(i32 %nblocks, !6016, !DIExpression(), !6014)
    #dbg_value(ptr %ctx, !6017, !DIExpression(), !6014)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6018
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #7, !dbg !6019
  ret void, !dbg !6020
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6021 {
entry:
    #dbg_value(ptr %out, !6024, !DIExpression(), !6025)
    #dbg_value(i32 %outlen, !6026, !DIExpression(), !6025)
    #dbg_value(ptr %iv, !6027, !DIExpression(), !6025)
    #dbg_value(ptr %ctx, !6028, !DIExpression(), !6025)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6029
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #7, !dbg !6030
  ret void, !dbg !6031
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6032 {
entry:
    #dbg_value(ptr %out, !6037, !DIExpression(), !6038)
    #dbg_value(ptr %in, !6039, !DIExpression(), !6038)
    #dbg_value(i32 %nblocks, !6040, !DIExpression(), !6038)
    #dbg_value(ptr %ctx, !6041, !DIExpression(), !6038)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6042
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #7, !dbg !6043
  ret void, !dbg !6044
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6045 {
entry:
    #dbg_value(ptr %out, !6048, !DIExpression(), !6049)
    #dbg_value(i32 %outlen, !6050, !DIExpression(), !6049)
    #dbg_value(ptr %iv, !6051, !DIExpression(), !6049)
    #dbg_value(ptr %ctx, !6052, !DIExpression(), !6049)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6053
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #7, !dbg !6054
  ret void, !dbg !6055
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6056 {
entry:
    #dbg_value(ptr %r, !6059, !DIExpression(), !6060)
  %0 = load ptr, ptr %r, align 4, !dbg !6061
  call void @free(ptr noundef %0) #9, !dbg !6062
  ret void, !dbg !6063
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6064 {
entry:
    #dbg_value(ptr %r, !6067, !DIExpression(), !6068)
  %0 = load ptr, ptr %r, align 4, !dbg !6069
  call void @free(ptr noundef %0) #9, !dbg !6070
  ret void, !dbg !6071
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6072 {
entry:
    #dbg_value(ptr %r, !6075, !DIExpression(), !6076)
  %0 = load ptr, ptr %r, align 4, !dbg !6077
  call void @free(ptr noundef %0) #9, !dbg !6078
  ret void, !dbg !6079
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6080 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6083, !DIExpression(), !6084)
    #dbg_value(i32 %outputByteLen, !6085, !DIExpression(), !6084)
    #dbg_value(ptr %input, !6086, !DIExpression(), !6084)
    #dbg_value(i32 %inputByteLen, !6087, !DIExpression(), !6084)
    #dbg_declare(ptr %ctx, !6088, !DIExpression(), !6089)
    #dbg_declare(ptr %iv, !6090, !DIExpression(), !6091)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %iv, i8 0, i32 16, i1 false), !dbg !6091
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #7, !dbg !6092
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #7, !dbg !6093
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6094
  ret i32 %outputByteLen, !dbg !6095
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6096 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6099, !DIExpression(), !6100)
    #dbg_value(ptr %key, !6101, !DIExpression(), !6100)
    #dbg_value(ptr %output, !6102, !DIExpression(), !6100)
    #dbg_declare(ptr %ctx, !6103, !DIExpression(), !6104)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #7, !dbg !6105
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #7, !dbg !6106
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6107
  ret void, !dbg !6108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #1 = { allocsize(0,1) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #5 = { allocsize(0) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind allocsize(0,1) "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind allocsize(0) "no-builtins" }

!llvm.dbg.cu = !{!84, !2, !43, !66, !77}
!llvm.ident = !{!86, !86, !86, !86, !86}
!llvm.module.flags = !{!87, !88, !89, !90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "f_tail", scope: !2, file: !36, line: 247, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../src/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!4 = !{!5, !11, !14, !15, !18, !19}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 60, baseType: !8)
!7 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 105, baseType: !10)
!9 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 43, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 214, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !17)
!21 = !{!0, !22, !30, !32, !34}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !24, file: !25, line: 112, type: !29, isLocal: true, isDefinition: true)
!24 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !25, file: !25, line: 111, type: !26, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!25 = !DIFile(filename: "../../../src/mayo.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !5}
!28 = !{}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "even_bytes", scope: !24, file: !25, line: 113, type: !29, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !24, file: !25, line: 114, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "even_half", scope: !24, file: !25, line: 115, type: !29, isLocal: true, isDefinition: true)
!36 = !DIFile(filename: "../../../include/mayo.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!39 = !{!40}
!40 = !DISubrange(count: 4)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !55, splitDebugInlining: false, nameTableKind: None)
!44 = !{!6, !45, !46, !18, !19, !49, !50, !53}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 56, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 103, baseType: !48)
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 20, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !9, line: 41, baseType: !52)
!52 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 44, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 77, baseType: !45)
!55 = !{!41, !56, !60}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
!62 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "KeccakF_RoundConstants", scope: !66, file: !71, line: 214, type: !72, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !68, globals: !70, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../../../src/common/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!68 = !{!69, !19, !6, !15, !12}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!70 = !{!64}
!71 = !DIFile(filename: "../../../src/common/fips202.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1536, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 24)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "Rcon", scope: !77, file: !80, line: 388, type: !81, isLocal: true, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !78, globals: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !{!69, !45, !6, !19, !14}
!79 = !{!75}
!80 = !DIFile(filename: "../../../src/common/aes_c.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 80, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = distinct !DICompileUnit(language: DW_LANG_C11, file: !85, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!86 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 1, !"Code Model", i32 1}
!91 = distinct !DISubprogram(name: "main", scope: !92, file: !92, line: 116, type: !93, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84)
!92 = !DIFile(filename: "../example.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!93 = !DISubroutineType(types: !94)
!94 = !{!45}
!95 = !DILocation(line: 126, column: 12, scope: !91)
!96 = !DILocation(line: 126, column: 5, scope: !91)
!97 = distinct !DISubprogram(name: "example_mayo", scope: !92, file: !92, line: 25, type: !98, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !28)
!98 = !DISubroutineType(types: !99)
!99 = !{!45, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !103, file: !36, line: 266, baseType: !45, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !103, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !103, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !103, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !103, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !103, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !103, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !103, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !103, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !103, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !103, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !103, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !103, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !103, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !103, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !103, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !103, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !103, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !103, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !103, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !103, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !103, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !36, line: 288, baseType: !128, size: 32, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DILocalVariable(name: "p", arg: 1, scope: !97, file: !92, line: 25, type: !100)
!132 = !DILocation(line: 0, scope: !97)
!133 = !DILocalVariable(name: "msglen", scope: !97, file: !92, line: 27, type: !15)
!134 = !DILocation(line: 27, column: 12, scope: !97)
!135 = !DILocalVariable(name: "smlen", scope: !97, file: !92, line: 28, type: !15)
!136 = !DILocation(line: 28, column: 12, scope: !97)
!137 = !DILocation(line: 30, column: 26, scope: !97)
!138 = !DILocalVariable(name: "pk", scope: !97, file: !92, line: 30, type: !18)
!139 = !DILocation(line: 31, column: 26, scope: !97)
!140 = !DILocalVariable(name: "sk", scope: !97, file: !92, line: 31, type: !18)
!141 = !DILocalVariable(name: "epk", scope: !97, file: !92, line: 32, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pk_t", file: !36, line: 295, baseType: !143)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1197120, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 18705)
!146 = !DILocation(line: 32, column: 10, scope: !97)
!147 = !DILocalVariable(name: "esk", scope: !97, file: !92, line: 33, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1190592, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 18603)
!152 = !DILocation(line: 33, column: 10, scope: !97)
!153 = !DILocation(line: 35, column: 54, scope: !97)
!154 = !DILocation(line: 35, column: 52, scope: !97)
!155 = !DILocation(line: 35, column: 26, scope: !97)
!156 = !DILocalVariable(name: "sig", scope: !97, file: !92, line: 35, type: !18)
!157 = !DILocalVariable(name: "msg", scope: !97, file: !92, line: 37, type: !158)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 32)
!161 = !DILocation(line: 37, column: 19, scope: !97)
!162 = !DILocalVariable(name: "msg2", scope: !97, file: !92, line: 38, type: !158)
!163 = !DILocation(line: 38, column: 19, scope: !97)
!164 = !DILocation(line: 41, column: 15, scope: !97)
!165 = !DILocalVariable(name: "res", scope: !97, file: !92, line: 41, type: !45)
!166 = !DILocation(line: 42, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !97, file: !92, line: 42, column: 9)
!168 = !DILocation(line: 48, column: 11, scope: !97)
!169 = !DILocation(line: 55, column: 11, scope: !97)
!170 = !DILocation(line: 62, column: 42, scope: !97)
!171 = !DILocation(line: 62, column: 11, scope: !97)
!172 = !DILocation(line: 63, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !97, file: !92, line: 63, column: 9)
!174 = !DILocation(line: 69, column: 44, scope: !97)
!175 = !DILocation(line: 69, column: 11, scope: !97)
!176 = !DILocation(line: 70, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !97, file: !92, line: 70, column: 9)
!178 = !DILocation(line: 70, column: 24, scope: !177)
!179 = !DILocation(line: 70, column: 45, scope: !177)
!180 = !DILocation(line: 70, column: 27, scope: !177)
!181 = !DILocation(line: 77, column: 31, scope: !97)
!182 = !DILocation(line: 77, column: 11, scope: !97)
!183 = !DILocation(line: 78, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !97, file: !92, line: 78, column: 9)
!185 = !DILabel(scope: !97, name: "err", file: !92, line: 109)
!186 = !DILocation(line: 109, column: 1, scope: !97)
!187 = !DILocation(line: 110, column: 5, scope: !97)
!188 = !DILocation(line: 111, column: 5, scope: !97)
!189 = !DILocation(line: 112, column: 5, scope: !97)
!190 = !DILocation(line: 113, column: 5, scope: !97)
!191 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !192, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!192 = !DISubroutineType(types: !193)
!193 = !{!45, !194, !18, !18}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !197, file: !36, line: 266, baseType: !45, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !197, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !197, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !197, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !197, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !197, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !197, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !197, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !197, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !197, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !197, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !197, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !197, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !197, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !197, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !197, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !197, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !197, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !197, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !197, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !197, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !197, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !36, line: 288, baseType: !128, size: 32, offset: 704)
!222 = !DILocalVariable(name: "p", arg: 1, scope: !191, file: !25, line: 298, type: !194)
!223 = !DILocation(line: 0, scope: !191)
!224 = !DILocalVariable(name: "pk", arg: 2, scope: !191, file: !25, line: 298, type: !18)
!225 = !DILocalVariable(name: "sk", arg: 3, scope: !191, file: !25, line: 298, type: !18)
!226 = !DILocalVariable(name: "ret", scope: !191, file: !25, line: 299, type: !45)
!227 = !DILocation(line: 301, column: 11, scope: !191)
!228 = !DILabel(scope: !191, name: "err", file: !25, line: 306)
!229 = !DILocation(line: 306, column: 1, scope: !191)
!230 = !DILocation(line: 307, column: 5, scope: !191)
!231 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !192, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!232 = !DILocalVariable(name: "p", arg: 1, scope: !231, file: !25, line: 537, type: !194)
!233 = !DILocation(line: 0, scope: !231)
!234 = !DILocalVariable(name: "cpk", arg: 2, scope: !231, file: !25, line: 537, type: !18)
!235 = !DILocalVariable(name: "csk", arg: 3, scope: !231, file: !25, line: 538, type: !18)
!236 = !DILocalVariable(name: "ret", scope: !231, file: !25, line: 539, type: !45)
!237 = !DILocalVariable(name: "seed_sk", scope: !231, file: !25, line: 540, type: !18)
!238 = !DILocalVariable(name: "S", scope: !231, file: !25, line: 541, type: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2624, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 328)
!242 = !DILocation(line: 541, column: 19, scope: !231)
!243 = !DILocalVariable(name: "P", scope: !231, file: !25, line: 542, type: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1185600, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 18525)
!247 = !DILocation(line: 542, column: 14, scope: !231)
!248 = !DILocalVariable(name: "P3", scope: !231, file: !25, line: 543, type: !249)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 320)
!252 = !DILocation(line: 543, column: 14, scope: !231)
!253 = !DILocalVariable(name: "O", scope: !231, file: !25, line: 546, type: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4992, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 624)
!257 = !DILocation(line: 546, column: 19, scope: !231)
!258 = !DILocalVariable(name: "m_vec_limbs", scope: !231, file: !25, line: 548, type: !259)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!260 = !DILocalVariable(name: "param_m", scope: !231, file: !25, line: 549, type: !259)
!261 = !DILocalVariable(name: "param_v", scope: !231, file: !25, line: 550, type: !259)
!262 = !DILocalVariable(name: "param_o", scope: !231, file: !25, line: 551, type: !259)
!263 = !DILocalVariable(name: "param_O_bytes", scope: !231, file: !25, line: 552, type: !259)
!264 = !DILocalVariable(name: "param_P1_limbs", scope: !231, file: !25, line: 553, type: !259)
!265 = !DILocalVariable(name: "param_P3_limbs", scope: !231, file: !25, line: 554, type: !259)
!266 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !231, file: !25, line: 555, type: !259)
!267 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !231, file: !25, line: 556, type: !259)
!268 = !DILocalVariable(name: "P1", scope: !231, file: !25, line: 558, type: !5)
!269 = !DILocation(line: 559, column: 22, scope: !231)
!270 = !DILocalVariable(name: "P2", scope: !231, file: !25, line: 559, type: !5)
!271 = !DILocation(line: 565, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !231, file: !25, line: 565, column: 9)
!273 = !DILocation(line: 565, column: 51, scope: !272)
!274 = !DILocation(line: 572, column: 5, scope: !231)
!275 = !DILocalVariable(name: "seed_pk", scope: !231, file: !25, line: 545, type: !18)
!276 = !DILocation(line: 578, column: 14, scope: !231)
!277 = !DILocation(line: 578, column: 5, scope: !231)
!278 = !DILocation(line: 584, column: 5, scope: !231)
!279 = !DILocation(line: 587, column: 5, scope: !231)
!280 = !DILocation(line: 590, column: 5, scope: !231)
!281 = !DILocalVariable(name: "P3_upper", scope: !231, file: !25, line: 592, type: !282)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 11520, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 180)
!285 = !DILocation(line: 592, column: 14, scope: !231)
!286 = !DILocation(line: 595, column: 5, scope: !231)
!287 = !DILocation(line: 596, column: 31, scope: !231)
!288 = !DILocation(line: 596, column: 5, scope: !231)
!289 = !DILabel(scope: !231, name: "err", file: !25, line: 599)
!290 = !DILocation(line: 599, column: 5, scope: !231)
!291 = !DILocation(line: 601, column: 5, scope: !231)
!292 = !DILocation(line: 602, column: 5, scope: !231)
!293 = !DILocation(line: 603, column: 5, scope: !231)
!294 = !DILocation(line: 604, column: 5, scope: !231)
!295 = distinct !DISubprogram(name: "decode", scope: !25, file: !25, line: 20, type: !296, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !49, !18, !45}
!298 = !DILocalVariable(name: "m", arg: 1, scope: !295, file: !25, line: 20, type: !49)
!299 = !DILocation(line: 0, scope: !295)
!300 = !DILocalVariable(name: "mdec", arg: 2, scope: !295, file: !25, line: 20, type: !18)
!301 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !295, file: !25, line: 20, type: !45)
!302 = !DILocalVariable(name: "i", scope: !295, file: !25, line: 21, type: !45)
!303 = !DILocation(line: 22, column: 10, scope: !304)
!304 = distinct !DILexicalBlock(scope: !295, file: !25, line: 22, column: 5)
!305 = !DILocation(line: 22, scope: !304)
!306 = !DILocation(line: 22, column: 29, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !25, line: 22, column: 5)
!308 = !DILocation(line: 22, column: 19, scope: !307)
!309 = !DILocation(line: 22, column: 5, scope: !304)
!310 = !DILocation(line: 23, column: 19, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !25, line: 22, column: 39)
!312 = !DILocation(line: 23, column: 24, scope: !311)
!313 = !DILocation(line: 23, column: 14, scope: !311)
!314 = !DILocation(line: 23, column: 17, scope: !311)
!315 = !DILocation(line: 24, column: 19, scope: !311)
!316 = !DILocation(line: 24, column: 24, scope: !311)
!317 = !DILocation(line: 24, column: 17, scope: !311)
!318 = !DILocation(line: 24, column: 14, scope: !311)
!319 = !DILocation(line: 22, column: 34, scope: !307)
!320 = !DILocation(line: 22, column: 5, scope: !307)
!321 = distinct !{!321, !309, !322, !323}
!322 = !DILocation(line: 25, column: 5, scope: !304)
!323 = !{!"llvm.loop.mustprogress"}
!324 = !DILocation(line: 27, column: 21, scope: !325)
!325 = distinct !DILexicalBlock(scope: !295, file: !25, line: 27, column: 9)
!326 = !DILocation(line: 28, column: 19, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !25, line: 27, column: 27)
!328 = !DILocation(line: 28, column: 24, scope: !327)
!329 = !DILocation(line: 28, column: 17, scope: !327)
!330 = !DILocation(line: 29, column: 5, scope: !327)
!331 = !DILocation(line: 30, column: 1, scope: !295)
!332 = distinct !DISubprogram(name: "expand_P1_P2", scope: !25, file: !25, line: 280, type: !333, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !194, !5, !49}
!335 = !DILocalVariable(name: "p", arg: 1, scope: !332, file: !25, line: 280, type: !194)
!336 = !DILocation(line: 0, scope: !332)
!337 = !DILocalVariable(name: "P", arg: 2, scope: !332, file: !25, line: 280, type: !5)
!338 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !332, file: !25, line: 280, type: !49)
!339 = !DILocation(line: 284, column: 5, scope: !332)
!340 = !DILocation(line: 285, column: 5, scope: !332)
!341 = !DILocation(line: 286, column: 1, scope: !332)
!342 = distinct !DISubprogram(name: "compute_P3", scope: !343, file: !343, line: 260, type: !344, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!343 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!344 = !DISubroutineType(types: !345)
!345 = !{null, !194, !346, !5, !49, !5}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!347 = !DILocalVariable(name: "p", arg: 1, scope: !342, file: !343, line: 260, type: !194)
!348 = !DILocation(line: 0, scope: !342)
!349 = !DILocalVariable(name: "P1", arg: 2, scope: !342, file: !343, line: 260, type: !346)
!350 = !DILocalVariable(name: "P2", arg: 3, scope: !342, file: !343, line: 260, type: !5)
!351 = !DILocalVariable(name: "O", arg: 4, scope: !342, file: !343, line: 260, type: !49)
!352 = !DILocalVariable(name: "P3", arg: 5, scope: !342, file: !343, line: 260, type: !5)
!353 = !DILocalVariable(name: "m_vec_limbs", scope: !342, file: !343, line: 262, type: !259)
!354 = !DILocalVariable(name: "param_v", scope: !342, file: !343, line: 263, type: !259)
!355 = !DILocalVariable(name: "param_o", scope: !342, file: !343, line: 264, type: !259)
!356 = !DILocation(line: 267, column: 5, scope: !342)
!357 = !DILocation(line: 270, column: 5, scope: !342)
!358 = !DILocation(line: 271, column: 1, scope: !342)
!359 = distinct !DISubprogram(name: "pack_m_vecs", scope: !25, file: !25, line: 272, type: !360, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !346, !18, !45, !45}
!362 = !DILocalVariable(name: "in", arg: 1, scope: !359, file: !25, line: 272, type: !346)
!363 = !DILocation(line: 0, scope: !359)
!364 = !DILocalVariable(name: "out", arg: 2, scope: !359, file: !25, line: 272, type: !18)
!365 = !DILocalVariable(name: "vecs", arg: 3, scope: !359, file: !25, line: 272, type: !45)
!366 = !DILocalVariable(name: "m", arg: 4, scope: !359, file: !25, line: 272, type: !45)
!367 = !DILocalVariable(name: "m_vec_limbs", scope: !359, file: !25, line: 273, type: !259)
!368 = !DILocalVariable(name: "_in", scope: !359, file: !25, line: 274, type: !18)
!369 = !DILocalVariable(name: "i", scope: !370, file: !25, line: 275, type: !45)
!370 = distinct !DILexicalBlock(scope: !359, file: !25, line: 275, column: 5)
!371 = !DILocation(line: 0, scope: !370)
!372 = !DILocation(line: 275, column: 10, scope: !370)
!373 = !DILocation(line: 275, scope: !370)
!374 = !DILocation(line: 275, column: 23, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !25, line: 275, column: 5)
!376 = !DILocation(line: 275, column: 5, scope: !370)
!377 = !DILocation(line: 277, column: 27, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !25, line: 276, column: 5)
!379 = !DILocation(line: 277, column: 21, scope: !378)
!380 = !DILocation(line: 277, column: 51, scope: !378)
!381 = !DILocation(line: 277, column: 36, scope: !378)
!382 = !DILocation(line: 277, column: 9, scope: !378)
!383 = !DILocation(line: 275, column: 32, scope: !375)
!384 = !DILocation(line: 275, column: 5, scope: !375)
!385 = distinct !{!385, !376, !386, !323}
!386 = !DILocation(line: 278, column: 5, scope: !370)
!387 = !DILocation(line: 279, column: 1, scope: !359)
!388 = distinct !DISubprogram(name: "P1_times_O", scope: !343, file: !343, line: 74, type: !389, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !194, !346, !49, !5}
!391 = !DILocalVariable(name: "p", arg: 1, scope: !388, file: !343, line: 74, type: !194)
!392 = !DILocation(line: 0, scope: !388)
!393 = !DILocalVariable(name: "P1", arg: 2, scope: !388, file: !343, line: 74, type: !346)
!394 = !DILocalVariable(name: "O", arg: 3, scope: !388, file: !343, line: 74, type: !49)
!395 = !DILocalVariable(name: "acc", arg: 4, scope: !388, file: !343, line: 74, type: !5)
!396 = !DILocation(line: 78, column: 5, scope: !388)
!397 = !DILocation(line: 79, column: 1, scope: !388)
!398 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !343, file: !343, line: 47, type: !399, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !259, !49, !346, !5, !259, !259, !259}
!401 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !398, file: !343, line: 47, type: !259)
!402 = !DILocation(line: 0, scope: !398)
!403 = !DILocalVariable(name: "mat", arg: 2, scope: !398, file: !343, line: 47, type: !49)
!404 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !398, file: !343, line: 47, type: !346)
!405 = !DILocalVariable(name: "acc", arg: 4, scope: !398, file: !343, line: 47, type: !5)
!406 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !398, file: !343, line: 48, type: !259)
!407 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !398, file: !343, line: 48, type: !259)
!408 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !398, file: !343, line: 48, type: !259)
!409 = !DILocalVariable(name: "r", scope: !410, file: !343, line: 50, type: !45)
!410 = distinct !DILexicalBlock(scope: !398, file: !343, line: 50, column: 5)
!411 = !DILocation(line: 0, scope: !410)
!412 = !DILocation(line: 50, column: 10, scope: !410)
!413 = !DILocation(line: 50, scope: !410)
!414 = !DILocation(line: 50, column: 23, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !343, line: 50, column: 5)
!416 = !DILocation(line: 50, column: 5, scope: !410)
!417 = !DILocation(line: 51, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !343, line: 51, column: 9)
!419 = distinct !DILexicalBlock(scope: !415, file: !343, line: 50, column: 40)
!420 = !DILocation(line: 51, scope: !418)
!421 = !DILocalVariable(name: "c", scope: !418, file: !343, line: 51, type: !45)
!422 = !DILocation(line: 0, scope: !418)
!423 = !DILocation(line: 51, column: 27, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !343, line: 51, column: 9)
!425 = !DILocation(line: 52, column: 13, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !343, line: 52, column: 13)
!427 = distinct !DILexicalBlock(scope: !424, file: !343, line: 51, column: 44)
!428 = !DILocation(line: 52, scope: !426)
!429 = !DILocalVariable(name: "k", scope: !426, file: !343, line: 52, type: !45)
!430 = !DILocation(line: 0, scope: !426)
!431 = !DILocation(line: 52, column: 31, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !343, line: 52, column: 13)
!433 = !DILocation(line: 53, column: 70, scope: !434)
!434 = distinct !DILexicalBlock(scope: !432, file: !343, line: 52, column: 54)
!435 = !DILocation(line: 53, column: 84, scope: !434)
!436 = !DILocation(line: 53, column: 51, scope: !434)
!437 = !DILocation(line: 53, column: 96, scope: !434)
!438 = !DILocation(line: 53, column: 90, scope: !434)
!439 = !DILocation(line: 53, column: 136, scope: !434)
!440 = !DILocation(line: 53, column: 150, scope: !434)
!441 = !DILocation(line: 53, column: 117, scope: !434)
!442 = !DILocation(line: 53, column: 17, scope: !434)
!443 = !DILocation(line: 52, column: 48, scope: !432)
!444 = !DILocation(line: 52, column: 13, scope: !432)
!445 = distinct !{!445, !425, !446, !323}
!446 = !DILocation(line: 54, column: 13, scope: !426)
!447 = !DILocation(line: 51, column: 40, scope: !424)
!448 = !DILocation(line: 51, column: 9, scope: !424)
!449 = distinct !{!449, !417, !450, !323}
!450 = !DILocation(line: 55, column: 9, scope: !418)
!451 = !DILocation(line: 50, column: 36, scope: !415)
!452 = !DILocation(line: 50, column: 5, scope: !415)
!453 = distinct !{!453, !416, !454, !323}
!454 = !DILocation(line: 56, column: 5, scope: !410)
!455 = !DILocation(line: 57, column: 1, scope: !398)
!456 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !457, file: !457, line: 31, type: !458, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!457 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!458 = !DISubroutineType(types: !459)
!459 = !{null, !45, !346, !14, !5}
!460 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !456, file: !457, line: 31, type: !45)
!461 = !DILocation(line: 0, scope: !456)
!462 = !DILocalVariable(name: "in", arg: 2, scope: !456, file: !457, line: 31, type: !346)
!463 = !DILocalVariable(name: "a", arg: 3, scope: !456, file: !457, line: 31, type: !14)
!464 = !DILocalVariable(name: "acc", arg: 4, scope: !456, file: !457, line: 31, type: !5)
!465 = !DILocation(line: 33, column: 20, scope: !456)
!466 = !DILocalVariable(name: "tab", scope: !456, file: !457, line: 33, type: !19)
!467 = !DILocalVariable(name: "lsb_ask", scope: !456, file: !457, line: 35, type: !6)
!468 = !DILocalVariable(name: "i", scope: !469, file: !457, line: 37, type: !45)
!469 = distinct !DILexicalBlock(scope: !456, file: !457, line: 37, column: 5)
!470 = !DILocation(line: 0, scope: !469)
!471 = !DILocation(line: 37, column: 9, scope: !469)
!472 = !DILocation(line: 37, scope: !469)
!473 = !DILocation(line: 37, column: 20, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !457, line: 37, column: 5)
!475 = !DILocation(line: 37, column: 5, scope: !469)
!476 = !DILocation(line: 38, column: 21, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !457, line: 37, column: 43)
!478 = !DILocation(line: 38, column: 33, scope: !477)
!479 = !DILocation(line: 38, column: 51, scope: !477)
!480 = !DILocation(line: 38, column: 46, scope: !477)
!481 = !DILocation(line: 38, column: 44, scope: !477)
!482 = !DILocation(line: 39, column: 27, scope: !477)
!483 = !DILocation(line: 39, column: 33, scope: !477)
!484 = !DILocation(line: 39, column: 52, scope: !477)
!485 = !DILocation(line: 39, column: 59, scope: !477)
!486 = !DILocation(line: 39, column: 46, scope: !477)
!487 = !DILocation(line: 39, column: 44, scope: !477)
!488 = !DILocation(line: 39, column: 17, scope: !477)
!489 = !DILocation(line: 40, column: 21, scope: !477)
!490 = !DILocation(line: 40, column: 27, scope: !477)
!491 = !DILocation(line: 40, column: 33, scope: !477)
!492 = !DILocation(line: 40, column: 52, scope: !477)
!493 = !DILocation(line: 40, column: 59, scope: !477)
!494 = !DILocation(line: 40, column: 46, scope: !477)
!495 = !DILocation(line: 40, column: 44, scope: !477)
!496 = !DILocation(line: 40, column: 17, scope: !477)
!497 = !DILocation(line: 41, column: 21, scope: !477)
!498 = !DILocation(line: 41, column: 27, scope: !477)
!499 = !DILocation(line: 41, column: 33, scope: !477)
!500 = !DILocation(line: 41, column: 52, scope: !477)
!501 = !DILocation(line: 41, column: 59, scope: !477)
!502 = !DILocation(line: 41, column: 46, scope: !477)
!503 = !DILocation(line: 41, column: 44, scope: !477)
!504 = !DILocation(line: 41, column: 17, scope: !477)
!505 = !DILocation(line: 38, column: 9, scope: !477)
!506 = !DILocation(line: 38, column: 16, scope: !477)
!507 = !DILocation(line: 37, column: 40, scope: !474)
!508 = !DILocation(line: 37, column: 5, scope: !474)
!509 = distinct !{!509, !475, !510, !323}
!510 = !DILocation(line: 42, column: 5, scope: !469)
!511 = !DILocation(line: 43, column: 1, scope: !456)
!512 = distinct !DISubprogram(name: "mul_table", scope: !513, file: !513, line: 129, type: !514, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!513 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!514 = !DISubroutineType(types: !515)
!515 = !{!19, !12}
!516 = !DILocalVariable(name: "b", arg: 1, scope: !512, file: !513, line: 129, type: !12)
!517 = !DILocation(line: 0, scope: !512)
!518 = !DILocation(line: 130, column: 19, scope: !512)
!519 = !DILocation(line: 130, column: 33, scope: !512)
!520 = !DILocalVariable(name: "x", scope: !512, file: !513, line: 130, type: !19)
!521 = !DILocalVariable(name: "high_nibble_mask", scope: !512, file: !513, line: 132, type: !19)
!522 = !DILocation(line: 134, column: 28, scope: !512)
!523 = !DILocalVariable(name: "high_half", scope: !512, file: !513, line: 134, type: !19)
!524 = !DILocation(line: 135, column: 28, scope: !512)
!525 = !DILocation(line: 135, column: 47, scope: !512)
!526 = !DILocation(line: 135, column: 34, scope: !512)
!527 = !DILocation(line: 135, column: 5, scope: !512)
!528 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !343, file: !343, line: 16, type: !529, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !259, !346, !49, !5, !259, !259, !259, !259}
!531 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !528, file: !343, line: 16, type: !259)
!532 = !DILocation(line: 0, scope: !528)
!533 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !528, file: !343, line: 16, type: !346)
!534 = !DILocalVariable(name: "mat", arg: 3, scope: !528, file: !343, line: 16, type: !49)
!535 = !DILocalVariable(name: "acc", arg: 4, scope: !528, file: !343, line: 16, type: !5)
!536 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !528, file: !343, line: 17, type: !259)
!537 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !528, file: !343, line: 17, type: !259)
!538 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !528, file: !343, line: 17, type: !259)
!539 = !DILocalVariable(name: "triangular", arg: 8, scope: !528, file: !343, line: 17, type: !259)
!540 = !DILocalVariable(name: "bs_mat_entries_used", scope: !528, file: !343, line: 19, type: !45)
!541 = !DILocalVariable(name: "r", scope: !542, file: !343, line: 20, type: !45)
!542 = distinct !DILexicalBlock(scope: !528, file: !343, line: 20, column: 5)
!543 = !DILocation(line: 0, scope: !542)
!544 = !DILocation(line: 20, column: 10, scope: !542)
!545 = !DILocation(line: 19, column: 9, scope: !528)
!546 = !DILocation(line: 20, scope: !542)
!547 = !DILocation(line: 20, column: 23, scope: !548)
!548 = distinct !DILexicalBlock(scope: !542, file: !343, line: 20, column: 5)
!549 = !DILocation(line: 20, column: 5, scope: !542)
!550 = !DILocation(line: 21, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !343, line: 21, column: 9)
!552 = distinct !DILexicalBlock(scope: !548, file: !343, line: 20, column: 43)
!553 = !DILocation(line: 21, scope: !551)
!554 = !DILocalVariable(name: "c", scope: !551, file: !343, line: 21, type: !45)
!555 = !DILocation(line: 0, scope: !551)
!556 = !DILocation(line: 21, column: 40, scope: !557)
!557 = distinct !DILexicalBlock(scope: !551, file: !343, line: 21, column: 9)
!558 = !DILocation(line: 22, column: 13, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !343, line: 22, column: 13)
!560 = distinct !DILexicalBlock(scope: !557, file: !343, line: 21, column: 60)
!561 = !DILocation(line: 22, scope: !559)
!562 = !DILocalVariable(name: "k", scope: !559, file: !343, line: 22, type: !45)
!563 = !DILocation(line: 0, scope: !559)
!564 = !DILocation(line: 22, column: 31, scope: !565)
!565 = distinct !DILexicalBlock(scope: !559, file: !343, line: 22, column: 13)
!566 = !DILocation(line: 23, column: 51, scope: !567)
!567 = distinct !DILexicalBlock(scope: !565, file: !343, line: 22, column: 51)
!568 = !DILocation(line: 23, column: 94, scope: !567)
!569 = !DILocation(line: 23, column: 88, scope: !567)
!570 = !DILocation(line: 23, column: 134, scope: !567)
!571 = !DILocation(line: 23, column: 145, scope: !567)
!572 = !DILocation(line: 23, column: 115, scope: !567)
!573 = !DILocation(line: 23, column: 17, scope: !567)
!574 = !DILocation(line: 22, column: 45, scope: !565)
!575 = !DILocation(line: 22, column: 13, scope: !565)
!576 = distinct !{!576, !558, !577, !323}
!577 = !DILocation(line: 24, column: 13, scope: !559)
!578 = !DILocation(line: 25, column: 33, scope: !560)
!579 = !DILocation(line: 21, column: 56, scope: !557)
!580 = !DILocation(line: 21, column: 9, scope: !557)
!581 = distinct !{!581, !550, !582, !323}
!582 = !DILocation(line: 26, column: 9, scope: !551)
!583 = !DILocation(line: 20, column: 39, scope: !548)
!584 = !DILocation(line: 20, column: 5, scope: !548)
!585 = distinct !{!585, !549, !586, !323}
!586 = !DILocation(line: 27, column: 5, scope: !542)
!587 = !DILocation(line: 28, column: 1, scope: !528)
!588 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !25, file: !25, line: 262, type: !589, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !49, !5, !45, !45}
!591 = !DILocalVariable(name: "in", arg: 1, scope: !588, file: !25, line: 262, type: !49)
!592 = !DILocation(line: 0, scope: !588)
!593 = !DILocalVariable(name: "out", arg: 2, scope: !588, file: !25, line: 262, type: !5)
!594 = !DILocalVariable(name: "vecs", arg: 3, scope: !588, file: !25, line: 262, type: !45)
!595 = !DILocalVariable(name: "m", arg: 4, scope: !588, file: !25, line: 262, type: !45)
!596 = !DILocalVariable(name: "m_vec_limbs", scope: !588, file: !25, line: 263, type: !259)
!597 = !DILocalVariable(name: "_out", scope: !588, file: !25, line: 264, type: !18)
!598 = !DILocalVariable(name: "tmp", scope: !588, file: !25, line: 265, type: !599)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 5)
!602 = !DILocation(line: 265, column: 14, scope: !588)
!603 = !DILocalVariable(name: "i", scope: !604, file: !25, line: 266, type: !45)
!604 = distinct !DILexicalBlock(scope: !588, file: !25, line: 266, column: 5)
!605 = !DILocation(line: 0, scope: !604)
!606 = !DILocation(line: 266, column: 10, scope: !604)
!607 = !DILocation(line: 266, column: 28, scope: !608)
!608 = distinct !DILexicalBlock(scope: !604, file: !25, line: 266, column: 5)
!609 = !DILocation(line: 266, column: 5, scope: !604)
!610 = !DILocation(line: 266, scope: !604)
!611 = !DILocation(line: 268, column: 29, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !25, line: 267, column: 5)
!613 = !DILocation(line: 268, column: 24, scope: !612)
!614 = !DILocation(line: 268, column: 9, scope: !612)
!615 = !DILocation(line: 269, column: 36, scope: !612)
!616 = !DILocation(line: 269, column: 21, scope: !612)
!617 = !DILocation(line: 269, column: 9, scope: !612)
!618 = !DILocation(line: 266, column: 5, scope: !608)
!619 = distinct !{!619, !609, !620, !323}
!620 = !DILocation(line: 270, column: 5, scope: !604)
!621 = !DILocation(line: 271, column: 1, scope: !588)
!622 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !623, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!623 = !DISubroutineType(types: !624)
!624 = !{!45, !194, !49, !5}
!625 = !DILocalVariable(name: "p", arg: 1, scope: !622, file: !25, line: 310, type: !194)
!626 = !DILocation(line: 0, scope: !622)
!627 = !DILocalVariable(name: "csk", arg: 2, scope: !622, file: !25, line: 310, type: !49)
!628 = !DILocalVariable(name: "sk", arg: 3, scope: !622, file: !25, line: 311, type: !5)
!629 = !DILocalVariable(name: "ret", scope: !622, file: !25, line: 312, type: !45)
!630 = !DILocalVariable(name: "S", scope: !622, file: !25, line: 313, type: !239)
!631 = !DILocation(line: 313, column: 19, scope: !622)
!632 = !DILocalVariable(name: "P", scope: !622, file: !25, line: 314, type: !5)
!633 = !DILocation(line: 315, column: 24, scope: !622)
!634 = !DILocalVariable(name: "O", scope: !622, file: !25, line: 315, type: !18)
!635 = !DILocalVariable(name: "param_o", scope: !622, file: !25, line: 317, type: !259)
!636 = !DILocalVariable(name: "param_v", scope: !622, file: !25, line: 318, type: !259)
!637 = !DILocalVariable(name: "param_O_bytes", scope: !622, file: !25, line: 319, type: !259)
!638 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !622, file: !25, line: 320, type: !259)
!639 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !622, file: !25, line: 321, type: !259)
!640 = !DILocalVariable(name: "seed_sk", scope: !622, file: !25, line: 323, type: !49)
!641 = !DILocalVariable(name: "seed_pk", scope: !622, file: !25, line: 324, type: !18)
!642 = !DILocation(line: 326, column: 5, scope: !622)
!643 = !DILocation(line: 328, column: 14, scope: !622)
!644 = !DILocation(line: 328, column: 5, scope: !622)
!645 = !DILocation(line: 334, column: 5, scope: !622)
!646 = !DILocation(line: 341, column: 22, scope: !622)
!647 = !DILocalVariable(name: "P2", scope: !622, file: !25, line: 341, type: !5)
!648 = !DILocalVariable(name: "P1", scope: !622, file: !25, line: 343, type: !5)
!649 = !DILocalVariable(name: "L", scope: !622, file: !25, line: 346, type: !5)
!650 = !DILocation(line: 347, column: 5, scope: !622)
!651 = !DILocation(line: 355, column: 5, scope: !622)
!652 = !DILocation(line: 356, column: 5, scope: !622)
!653 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !343, file: !343, line: 218, type: !389, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!654 = !DILocalVariable(name: "p", arg: 1, scope: !653, file: !343, line: 218, type: !194)
!655 = !DILocation(line: 0, scope: !653)
!656 = !DILocalVariable(name: "P1", arg: 2, scope: !653, file: !343, line: 218, type: !346)
!657 = !DILocalVariable(name: "O", arg: 3, scope: !653, file: !343, line: 218, type: !49)
!658 = !DILocalVariable(name: "acc", arg: 4, scope: !653, file: !343, line: 218, type: !5)
!659 = !DILocalVariable(name: "param_o", scope: !653, file: !343, line: 222, type: !259)
!660 = !DILocalVariable(name: "param_v", scope: !653, file: !343, line: 223, type: !259)
!661 = !DILocalVariable(name: "m_vec_limbs", scope: !653, file: !343, line: 224, type: !259)
!662 = !DILocalVariable(name: "bs_mat_entries_used", scope: !653, file: !343, line: 226, type: !45)
!663 = !DILocalVariable(name: "r", scope: !664, file: !343, line: 227, type: !45)
!664 = distinct !DILexicalBlock(scope: !653, file: !343, line: 227, column: 5)
!665 = !DILocation(line: 0, scope: !664)
!666 = !DILocation(line: 227, column: 10, scope: !664)
!667 = !DILocation(line: 226, column: 9, scope: !653)
!668 = !DILocation(line: 227, scope: !664)
!669 = !DILocation(line: 227, column: 23, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !343, line: 227, column: 5)
!671 = !DILocation(line: 227, column: 5, scope: !664)
!672 = !DILocation(line: 228, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !343, line: 228, column: 9)
!674 = distinct !DILexicalBlock(scope: !670, file: !343, line: 227, column: 39)
!675 = !DILocation(line: 228, scope: !673)
!676 = !DILocalVariable(name: "c", scope: !673, file: !343, line: 228, type: !45)
!677 = !DILocation(line: 0, scope: !673)
!678 = !DILocation(line: 228, column: 27, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !343, line: 228, column: 9)
!680 = !DILocation(line: 229, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !343, line: 229, column: 16)
!682 = distinct !DILexicalBlock(scope: !679, file: !343, line: 228, column: 43)
!683 = !DILocation(line: 233, column: 13, scope: !684)
!684 = distinct !DILexicalBlock(scope: !682, file: !343, line: 233, column: 13)
!685 = !DILocation(line: 233, scope: !684)
!686 = !DILocalVariable(name: "k", scope: !684, file: !343, line: 233, type: !45)
!687 = !DILocation(line: 0, scope: !684)
!688 = !DILocation(line: 233, column: 31, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !343, line: 233, column: 13)
!690 = !DILocation(line: 234, column: 47, scope: !691)
!691 = distinct !DILexicalBlock(scope: !689, file: !343, line: 233, column: 50)
!692 = !DILocation(line: 234, column: 88, scope: !691)
!693 = !DILocation(line: 234, column: 98, scope: !691)
!694 = !DILocation(line: 234, column: 84, scope: !691)
!695 = !DILocation(line: 234, column: 127, scope: !691)
!696 = !DILocation(line: 234, column: 137, scope: !691)
!697 = !DILocation(line: 234, column: 108, scope: !691)
!698 = !DILocation(line: 234, column: 17, scope: !691)
!699 = !DILocation(line: 235, column: 47, scope: !691)
!700 = !DILocation(line: 235, column: 88, scope: !691)
!701 = !DILocation(line: 235, column: 98, scope: !691)
!702 = !DILocation(line: 235, column: 84, scope: !691)
!703 = !DILocation(line: 235, column: 127, scope: !691)
!704 = !DILocation(line: 235, column: 137, scope: !691)
!705 = !DILocation(line: 235, column: 108, scope: !691)
!706 = !DILocation(line: 235, column: 17, scope: !691)
!707 = !DILocation(line: 233, column: 44, scope: !689)
!708 = !DILocation(line: 233, column: 13, scope: !689)
!709 = distinct !{!709, !683, !710, !323}
!710 = !DILocation(line: 236, column: 13, scope: !684)
!711 = !DILocation(line: 0, scope: !682)
!712 = !DILocation(line: 228, column: 39, scope: !679)
!713 = !DILocation(line: 228, column: 9, scope: !679)
!714 = distinct !{!714, !672, !715, !323}
!715 = !DILocation(line: 238, column: 9, scope: !673)
!716 = !DILocation(line: 227, column: 35, scope: !670)
!717 = !DILocation(line: 227, column: 5, scope: !670)
!718 = distinct !{!718, !671, !719, !323}
!719 = !DILocation(line: 239, column: 5, scope: !664)
!720 = !DILocation(line: 240, column: 1, scope: !653)
!721 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !722, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!722 = !DISubroutineType(types: !723)
!723 = !{!45, !194, !18, !724, !49, !15, !49}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!725 = !DILocalVariable(name: "p", arg: 1, scope: !721, file: !25, line: 359, type: !194)
!726 = !DILocation(line: 0, scope: !721)
!727 = !DILocalVariable(name: "sig", arg: 2, scope: !721, file: !25, line: 359, type: !18)
!728 = !DILocalVariable(name: "siglen", arg: 3, scope: !721, file: !25, line: 360, type: !724)
!729 = !DILocalVariable(name: "m", arg: 4, scope: !721, file: !25, line: 360, type: !49)
!730 = !DILocalVariable(name: "mlen", arg: 5, scope: !721, file: !25, line: 361, type: !15)
!731 = !DILocalVariable(name: "csk", arg: 6, scope: !721, file: !25, line: 361, type: !49)
!732 = !DILocalVariable(name: "ret", scope: !721, file: !25, line: 362, type: !45)
!733 = !DILocalVariable(name: "tenc", scope: !721, file: !25, line: 363, type: !734)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 312, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 39)
!737 = !DILocation(line: 363, column: 19, scope: !721)
!738 = !DILocalVariable(name: "t", scope: !721, file: !25, line: 363, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 624, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 78)
!742 = !DILocation(line: 363, column: 38, scope: !721)
!743 = !DILocalVariable(name: "y", scope: !721, file: !25, line: 364, type: !739)
!744 = !DILocation(line: 364, column: 19, scope: !721)
!745 = !DILocalVariable(name: "salt", scope: !721, file: !25, line: 365, type: !746)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !73)
!747 = !DILocation(line: 365, column: 19, scope: !721)
!748 = !DILocalVariable(name: "V", scope: !721, file: !25, line: 366, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3440, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 430)
!752 = !DILocation(line: 366, column: 19, scope: !721)
!753 = !DILocalVariable(name: "Vdec", scope: !721, file: !25, line: 366, type: !754)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6240, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 780)
!757 = !DILocation(line: 366, column: 57, scope: !721)
!758 = !DILocalVariable(name: "A", scope: !721, file: !25, line: 367, type: !759)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 51840, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 6480)
!762 = !DILocation(line: 367, column: 19, scope: !721)
!763 = !DILocalVariable(name: "x", scope: !721, file: !25, line: 368, type: !764)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6880, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 860)
!767 = !DILocation(line: 368, column: 19, scope: !721)
!768 = !DILocalVariable(name: "r", scope: !721, file: !25, line: 369, type: !769)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 81)
!772 = !DILocation(line: 369, column: 19, scope: !721)
!773 = !DILocalVariable(name: "s", scope: !721, file: !25, line: 370, type: !764)
!774 = !DILocation(line: 370, column: 19, scope: !721)
!775 = !DILocalVariable(name: "sk", scope: !721, file: !25, line: 372, type: !148, align: 256)
!776 = !DILocation(line: 372, column: 22, scope: !721)
!777 = !DILocalVariable(name: "Ox", scope: !721, file: !25, line: 373, type: !739)
!778 = !DILocation(line: 373, column: 19, scope: !721)
!779 = !DILocalVariable(name: "tmp", scope: !721, file: !25, line: 374, type: !769)
!780 = !DILocation(line: 374, column: 19, scope: !721)
!781 = !DILocalVariable(name: "param_m", scope: !721, file: !25, line: 378, type: !259)
!782 = !DILocalVariable(name: "param_n", scope: !721, file: !25, line: 379, type: !259)
!783 = !DILocalVariable(name: "param_o", scope: !721, file: !25, line: 380, type: !259)
!784 = !DILocalVariable(name: "param_k", scope: !721, file: !25, line: 381, type: !259)
!785 = !DILocalVariable(name: "param_v", scope: !721, file: !25, line: 382, type: !259)
!786 = !DILocalVariable(name: "param_m_bytes", scope: !721, file: !25, line: 383, type: !259)
!787 = !DILocalVariable(name: "param_v_bytes", scope: !721, file: !25, line: 384, type: !259)
!788 = !DILocalVariable(name: "param_r_bytes", scope: !721, file: !25, line: 385, type: !259)
!789 = !DILocalVariable(name: "param_sig_bytes", scope: !721, file: !25, line: 386, type: !259)
!790 = !DILocalVariable(name: "param_A_cols", scope: !721, file: !25, line: 387, type: !259)
!791 = !DILocalVariable(name: "param_digest_bytes", scope: !721, file: !25, line: 388, type: !259)
!792 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !721, file: !25, line: 389, type: !259)
!793 = !DILocalVariable(name: "param_salt_bytes", scope: !721, file: !25, line: 390, type: !259)
!794 = !DILocation(line: 392, column: 11, scope: !721)
!795 = !DILocalVariable(name: "seed_sk", scope: !721, file: !25, line: 371, type: !49)
!796 = !DILocation(line: 401, column: 5, scope: !721)
!797 = !DILocalVariable(name: "P1", scope: !721, file: !25, line: 403, type: !5)
!798 = !DILocation(line: 404, column: 23, scope: !721)
!799 = !DILocalVariable(name: "L", scope: !721, file: !25, line: 404, type: !5)
!800 = !DILocalVariable(name: "Mtmp", scope: !721, file: !25, line: 405, type: !801)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 25600, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 400)
!804 = !DILocation(line: 405, column: 14, scope: !721)
!805 = !DILocation(line: 420, column: 25, scope: !806)
!806 = distinct !DILexicalBlock(scope: !721, file: !25, line: 420, column: 9)
!807 = !DILocation(line: 420, column: 9, scope: !806)
!808 = !DILocation(line: 420, column: 65, scope: !806)
!809 = !DILocation(line: 427, column: 37, scope: !721)
!810 = !DILocation(line: 427, column: 5, scope: !721)
!811 = !DILocation(line: 429, column: 5, scope: !721)
!812 = !DILocation(line: 437, column: 16, scope: !721)
!813 = !DILocation(line: 437, column: 5, scope: !721)
!814 = !DILocation(line: 438, column: 59, scope: !721)
!815 = !DILocalVariable(name: "ctrbyte", scope: !721, file: !25, line: 375, type: !18)
!816 = !DILocation(line: 440, column: 5, scope: !721)
!817 = !DILocation(line: 442, column: 5, scope: !721)
!818 = !DILocation(line: 445, column: 18, scope: !721)
!819 = !DILocation(line: 447, column: 9, scope: !721)
!820 = !DILocalVariable(name: "i", scope: !821, file: !25, line: 451, type: !45)
!821 = distinct !DILexicalBlock(scope: !721, file: !25, line: 451, column: 9)
!822 = !DILocation(line: 0, scope: !821)
!823 = !DILocation(line: 451, column: 14, scope: !821)
!824 = !DILocation(line: 451, scope: !821)
!825 = !DILocation(line: 451, column: 27, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !25, line: 451, column: 9)
!827 = !DILocation(line: 451, column: 9, scope: !821)
!828 = !DILocation(line: 452, column: 26, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !25, line: 451, column: 48)
!830 = !DILocation(line: 452, column: 22, scope: !829)
!831 = !DILocation(line: 452, column: 52, scope: !829)
!832 = !DILocation(line: 452, column: 48, scope: !829)
!833 = !DILocation(line: 452, column: 13, scope: !829)
!834 = !DILocation(line: 451, column: 43, scope: !826)
!835 = !DILocation(line: 451, column: 9, scope: !826)
!836 = distinct !{!836, !827, !837, !323}
!837 = !DILocation(line: 453, column: 9, scope: !821)
!838 = !DILocation(line: 455, column: 9, scope: !721)
!839 = !DILocation(line: 457, column: 9, scope: !721)
!840 = !DILocation(line: 458, column: 9, scope: !721)
!841 = !DILocalVariable(name: "i", scope: !842, file: !25, line: 460, type: !45)
!842 = distinct !DILexicalBlock(scope: !721, file: !25, line: 460, column: 9)
!843 = !DILocation(line: 0, scope: !842)
!844 = !DILocation(line: 460, column: 14, scope: !842)
!845 = !DILocation(line: 460, scope: !842)
!846 = !DILocation(line: 460, column: 27, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !25, line: 460, column: 9)
!848 = !DILocation(line: 460, column: 9, scope: !842)
!849 = !DILocation(line: 462, column: 20, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !25, line: 461, column: 9)
!851 = !DILocation(line: 462, column: 43, scope: !850)
!852 = !DILocation(line: 462, column: 13, scope: !850)
!853 = !DILocation(line: 462, column: 48, scope: !850)
!854 = !DILocation(line: 460, column: 39, scope: !847)
!855 = !DILocation(line: 460, column: 9, scope: !847)
!856 = distinct !{!856, !848, !857, !323}
!857 = !DILocation(line: 463, column: 9, scope: !842)
!858 = !DILocation(line: 465, column: 18, scope: !721)
!859 = !DILocation(line: 465, column: 9, scope: !721)
!860 = !DILocation(line: 469, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !721, file: !25, line: 469, column: 13)
!862 = !DILocation(line: 472, column: 13, scope: !863)
!863 = distinct !DILexicalBlock(scope: !861, file: !25, line: 471, column: 16)
!864 = !DILocation(line: 473, column: 13, scope: !863)
!865 = !DILocalVariable(name: "i", scope: !866, file: !25, line: 477, type: !45)
!866 = distinct !DILexicalBlock(scope: !721, file: !25, line: 477, column: 5)
!867 = !DILocation(line: 0, scope: !866)
!868 = !DILocation(line: 477, column: 10, scope: !866)
!869 = !DILocation(line: 477, scope: !866)
!870 = !DILocation(line: 477, column: 23, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !25, line: 477, column: 5)
!872 = !DILocation(line: 477, column: 5, scope: !866)
!873 = !DILocation(line: 478, column: 23, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !25, line: 477, column: 44)
!875 = !DILocation(line: 478, column: 19, scope: !874)
!876 = !DILocalVariable(name: "vi", scope: !721, file: !25, line: 376, type: !18)
!877 = !DILocation(line: 479, column: 17, scope: !874)
!878 = !DILocation(line: 479, column: 33, scope: !874)
!879 = !DILocation(line: 479, column: 29, scope: !874)
!880 = !DILocation(line: 479, column: 9, scope: !874)
!881 = !DILocation(line: 480, column: 31, scope: !874)
!882 = !DILocation(line: 480, column: 27, scope: !874)
!883 = !DILocation(line: 480, column: 9, scope: !874)
!884 = !DILocation(line: 481, column: 22, scope: !874)
!885 = !DILocation(line: 481, column: 18, scope: !874)
!886 = !DILocation(line: 481, column: 32, scope: !874)
!887 = !DILocation(line: 481, column: 61, scope: !874)
!888 = !DILocation(line: 481, column: 57, scope: !874)
!889 = !DILocation(line: 481, column: 9, scope: !874)
!890 = !DILocation(line: 477, column: 39, scope: !871)
!891 = !DILocation(line: 477, column: 5, scope: !871)
!892 = distinct !{!892, !872, !893, !323}
!893 = !DILocation(line: 482, column: 5, scope: !866)
!894 = !DILocation(line: 483, column: 5, scope: !721)
!895 = !DILocation(line: 485, column: 34, scope: !721)
!896 = !DILocation(line: 485, column: 5, scope: !721)
!897 = !DILocation(line: 486, column: 13, scope: !721)
!898 = !DILocation(line: 486, column: 5, scope: !721)
!899 = !DILabel(scope: !721, name: "err", file: !25, line: 488)
!900 = !DILocation(line: 488, column: 1, scope: !721)
!901 = !DILocation(line: 489, column: 5, scope: !721)
!902 = !DILocation(line: 490, column: 5, scope: !721)
!903 = !DILocation(line: 491, column: 5, scope: !721)
!904 = !DILocation(line: 492, column: 5, scope: !721)
!905 = !DILocation(line: 493, column: 23, scope: !721)
!906 = !DILocation(line: 493, column: 5, scope: !721)
!907 = !DILocation(line: 494, column: 5, scope: !721)
!908 = !DILocation(line: 495, column: 5, scope: !721)
!909 = !DILocation(line: 496, column: 5, scope: !721)
!910 = !DILocation(line: 497, column: 5, scope: !721)
!911 = !DILocation(line: 498, column: 5, scope: !721)
!912 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !343, file: !343, line: 244, type: !913, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !194, !49, !346, !346, !5, !5}
!915 = !DILocalVariable(name: "p", arg: 1, scope: !912, file: !343, line: 244, type: !194)
!916 = !DILocation(line: 0, scope: !912)
!917 = !DILocalVariable(name: "Vdec", arg: 2, scope: !912, file: !343, line: 244, type: !49)
!918 = !DILocalVariable(name: "L", arg: 3, scope: !912, file: !343, line: 244, type: !346)
!919 = !DILocalVariable(name: "P1", arg: 4, scope: !912, file: !343, line: 244, type: !346)
!920 = !DILocalVariable(name: "VL", arg: 5, scope: !912, file: !343, line: 244, type: !5)
!921 = !DILocalVariable(name: "VP1V", arg: 6, scope: !912, file: !343, line: 244, type: !5)
!922 = !DILocalVariable(name: "param_k", scope: !912, file: !343, line: 246, type: !259)
!923 = !DILocalVariable(name: "param_v", scope: !912, file: !343, line: 247, type: !259)
!924 = !DILocalVariable(name: "param_o", scope: !912, file: !343, line: 248, type: !259)
!925 = !DILocation(line: 251, column: 5, scope: !912)
!926 = !DILocalVariable(name: "Pv", scope: !912, file: !343, line: 254, type: !927)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 249600, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 3900)
!930 = !DILocation(line: 254, column: 14, scope: !912)
!931 = !DILocation(line: 255, column: 5, scope: !912)
!932 = !DILocation(line: 256, column: 5, scope: !912)
!933 = !DILocation(line: 257, column: 1, scope: !912)
!934 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !935, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !194, !5, !49, !18}
!937 = !DILocalVariable(name: "p", arg: 1, scope: !934, file: !25, line: 43, type: !194)
!938 = !DILocation(line: 0, scope: !934)
!939 = !DILocalVariable(name: "vPv", arg: 2, scope: !934, file: !25, line: 43, type: !5)
!940 = !DILocalVariable(name: "t", arg: 3, scope: !934, file: !25, line: 43, type: !49)
!941 = !DILocalVariable(name: "y", arg: 4, scope: !934, file: !25, line: 43, type: !18)
!942 = !DILocalVariable(name: "top_pos", scope: !934, file: !25, line: 48, type: !943)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!944 = !DILocalVariable(name: "m_vec_limbs", scope: !934, file: !25, line: 49, type: !943)
!945 = !DILocalVariable(name: "mask", scope: !946, file: !25, line: 53, type: !6)
!946 = distinct !DILexicalBlock(scope: !947, file: !25, line: 52, column: 29)
!947 = distinct !DILexicalBlock(scope: !934, file: !25, line: 52, column: 8)
!948 = !DILocation(line: 0, scope: !946)
!949 = !DILocalVariable(name: "i", scope: !950, file: !25, line: 56, type: !45)
!950 = distinct !DILexicalBlock(scope: !946, file: !25, line: 56, column: 9)
!951 = !DILocation(line: 0, scope: !950)
!952 = !DILocation(line: 56, column: 14, scope: !950)
!953 = !DILocation(line: 56, scope: !950)
!954 = !DILocation(line: 56, column: 27, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !25, line: 56, column: 9)
!956 = !DILocation(line: 56, column: 9, scope: !950)
!957 = !DILocation(line: 58, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !25, line: 57, column: 9)
!959 = !DILocation(line: 58, column: 50, scope: !958)
!960 = !DILocation(line: 56, column: 53, scope: !955)
!961 = !DILocation(line: 56, column: 9, scope: !955)
!962 = distinct !{!962, !956, !963, !323}
!963 = !DILocation(line: 59, column: 9, scope: !950)
!964 = !DILocalVariable(name: "temp", scope: !934, file: !25, line: 62, type: !599)
!965 = !DILocation(line: 62, column: 14, scope: !934)
!966 = !DILocalVariable(name: "temp_bytes", scope: !934, file: !25, line: 63, type: !18)
!967 = !DILocalVariable(name: "i", scope: !968, file: !25, line: 64, type: !45)
!968 = distinct !DILexicalBlock(scope: !934, file: !25, line: 64, column: 5)
!969 = !DILocation(line: 0, scope: !968)
!970 = !DILocation(line: 64, column: 10, scope: !968)
!971 = !DILocation(line: 64, scope: !968)
!972 = !DILocation(line: 64, column: 36, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !25, line: 64, column: 5)
!974 = !DILocation(line: 64, column: 5, scope: !968)
!975 = !DILocation(line: 65, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !25, line: 65, column: 9)
!977 = distinct !DILexicalBlock(scope: !973, file: !25, line: 64, column: 48)
!978 = !DILocation(line: 99, column: 5, scope: !979)
!979 = distinct !DILexicalBlock(scope: !934, file: !25, line: 99, column: 5)
!980 = !DILocation(line: 65, scope: !976)
!981 = !DILocalVariable(name: "j", scope: !976, file: !25, line: 65, type: !45)
!982 = !DILocation(line: 0, scope: !976)
!983 = !DILocation(line: 65, column: 27, scope: !984)
!984 = distinct !DILexicalBlock(scope: !976, file: !25, line: 65, column: 9)
!985 = !DILocation(line: 67, column: 34, scope: !986)
!986 = distinct !DILexicalBlock(scope: !984, file: !25, line: 65, column: 46)
!987 = !DILocation(line: 67, column: 54, scope: !986)
!988 = !DILocation(line: 67, column: 66, scope: !986)
!989 = !DILocalVariable(name: "top", scope: !986, file: !25, line: 67, type: !14)
!990 = !DILocation(line: 0, scope: !986)
!991 = !DILocation(line: 68, column: 13, scope: !986)
!992 = !DILocation(line: 68, column: 33, scope: !986)
!993 = !DILocalVariable(name: "k", scope: !994, file: !25, line: 69, type: !45)
!994 = distinct !DILexicalBlock(scope: !986, file: !25, line: 69, column: 13)
!995 = !DILocation(line: 0, scope: !994)
!996 = !DILocation(line: 69, column: 17, scope: !994)
!997 = !DILocation(line: 69, scope: !994)
!998 = !DILocation(line: 69, column: 43, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !25, line: 69, column: 13)
!1000 = !DILocation(line: 69, column: 13, scope: !994)
!1001 = !DILocation(line: 74, column: 13, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !986, file: !25, line: 74, column: 13)
!1003 = !DILocation(line: 70, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !25, line: 69, column: 52)
!1005 = !DILocation(line: 70, column: 38, scope: !1004)
!1006 = !DILocation(line: 70, column: 23, scope: !1004)
!1007 = !DILocation(line: 70, column: 17, scope: !1004)
!1008 = !DILocation(line: 70, column: 27, scope: !1004)
!1009 = !DILocation(line: 71, column: 17, scope: !1004)
!1010 = !DILocation(line: 71, column: 25, scope: !1004)
!1011 = !DILocation(line: 69, column: 49, scope: !999)
!1012 = !DILocation(line: 69, column: 13, scope: !999)
!1013 = distinct !{!1013, !1000, !1014, !323}
!1014 = !DILocation(line: 72, column: 13, scope: !994)
!1015 = !DILocation(line: 74, scope: !1002)
!1016 = !DILocalVariable(name: "jj", scope: !1002, file: !25, line: 74, type: !45)
!1017 = !DILocation(line: 0, scope: !1002)
!1018 = !DILocation(line: 74, column: 33, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1002, file: !25, line: 74, column: 13)
!1020 = !DILocation(line: 92, column: 13, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !986, file: !25, line: 92, column: 13)
!1022 = !DILocation(line: 75, column: 22, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !25, line: 75, column: 20)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !25, line: 74, column: 53)
!1025 = !DILocation(line: 75, column: 25, scope: !1023)
!1026 = !DILocation(line: 79, column: 52, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !25, line: 75, column: 30)
!1028 = !DILocation(line: 79, column: 41, scope: !1027)
!1029 = !DILocation(line: 79, column: 34, scope: !1027)
!1030 = !DILocation(line: 79, column: 21, scope: !1027)
!1031 = !DILocation(line: 79, column: 38, scope: !1027)
!1032 = !DILocation(line: 81, column: 17, scope: !1027)
!1033 = !DILocation(line: 86, column: 52, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1023, file: !25, line: 82, column: 22)
!1035 = !DILocation(line: 86, column: 41, scope: !1034)
!1036 = !DILocation(line: 86, column: 73, scope: !1034)
!1037 = !DILocation(line: 86, column: 34, scope: !1034)
!1038 = !DILocation(line: 86, column: 21, scope: !1034)
!1039 = !DILocation(line: 86, column: 38, scope: !1034)
!1040 = !DILocation(line: 74, column: 49, scope: !1019)
!1041 = !DILocation(line: 74, column: 13, scope: !1019)
!1042 = distinct !{!1042, !1001, !1043, !323}
!1043 = !DILocation(line: 89, column: 13, scope: !1002)
!1044 = !DILocation(line: 92, scope: !1021)
!1045 = !DILocalVariable(name: "k", scope: !1021, file: !25, line: 92, type: !15)
!1046 = !DILocation(line: 0, scope: !1021)
!1047 = !DILocation(line: 92, column: 31, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1021, file: !25, line: 92, column: 13)
!1049 = !DILocation(line: 93, column: 36, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1048, file: !25, line: 92, column: 51)
!1051 = !DILocation(line: 93, column: 49, scope: !1050)
!1052 = !DILocation(line: 93, column: 28, scope: !1050)
!1053 = !DILocation(line: 93, column: 78, scope: !1050)
!1054 = !DILocation(line: 93, column: 91, scope: !1050)
!1055 = !DILocation(line: 93, column: 104, scope: !1050)
!1056 = !DILocation(line: 93, column: 83, scope: !1050)
!1057 = !DILocation(line: 93, column: 82, scope: !1050)
!1058 = !DILocation(line: 93, column: 73, scope: !1050)
!1059 = !DILocation(line: 93, column: 17, scope: !1050)
!1060 = !DILocation(line: 93, column: 25, scope: !1050)
!1061 = !DILocation(line: 92, column: 48, scope: !1048)
!1062 = !DILocation(line: 92, column: 13, scope: !1048)
!1063 = distinct !{!1063, !1020, !1064, !323}
!1064 = !DILocation(line: 94, column: 13, scope: !1021)
!1065 = !DILocation(line: 65, column: 42, scope: !984)
!1066 = !DILocation(line: 65, column: 9, scope: !984)
!1067 = distinct !{!1067, !975, !1068, !323}
!1068 = !DILocation(line: 95, column: 9, scope: !976)
!1069 = !DILocation(line: 64, column: 44, scope: !973)
!1070 = !DILocation(line: 64, column: 5, scope: !973)
!1071 = distinct !{!1071, !974, !1072, !323}
!1072 = !DILocation(line: 96, column: 5, scope: !968)
!1073 = !DILocation(line: 99, scope: !979)
!1074 = !DILocalVariable(name: "i", scope: !979, file: !25, line: 99, type: !45)
!1075 = !DILocation(line: 0, scope: !979)
!1076 = !DILocation(line: 99, column: 23, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !979, file: !25, line: 99, column: 5)
!1078 = !DILocation(line: 105, column: 18, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1077, file: !25, line: 100, column: 5)
!1080 = !DILocation(line: 105, column: 40, scope: !1079)
!1081 = !DILocation(line: 105, column: 28, scope: !1079)
!1082 = !DILocation(line: 105, column: 44, scope: !1079)
!1083 = !DILocation(line: 105, column: 25, scope: !1079)
!1084 = !DILocation(line: 105, column: 9, scope: !1079)
!1085 = !DILocation(line: 105, column: 16, scope: !1079)
!1086 = !DILocation(line: 106, column: 21, scope: !1079)
!1087 = !DILocation(line: 106, column: 18, scope: !1079)
!1088 = !DILocation(line: 106, column: 40, scope: !1079)
!1089 = !DILocation(line: 106, column: 28, scope: !1079)
!1090 = !DILocation(line: 106, column: 44, scope: !1079)
!1091 = !DILocation(line: 106, column: 25, scope: !1079)
!1092 = !DILocation(line: 106, column: 12, scope: !1079)
!1093 = !DILocation(line: 106, column: 9, scope: !1079)
!1094 = !DILocation(line: 106, column: 16, scope: !1079)
!1095 = !DILocation(line: 99, column: 38, scope: !1077)
!1096 = !DILocation(line: 99, column: 5, scope: !1077)
!1097 = distinct !{!1097, !978, !1098, !323}
!1098 = !DILocation(line: 108, column: 5, scope: !979)
!1099 = !DILocation(line: 109, column: 1, scope: !934)
!1100 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1101, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !194, !5, !18}
!1103 = !DILocalVariable(name: "p", arg: 1, scope: !1100, file: !25, line: 154, type: !194)
!1104 = !DILocation(line: 0, scope: !1100)
!1105 = !DILocalVariable(name: "VtL", arg: 2, scope: !1100, file: !25, line: 154, type: !5)
!1106 = !DILocalVariable(name: "A_out", arg: 3, scope: !1100, file: !25, line: 154, type: !18)
!1107 = !DILocalVariable(name: "bits_to_shift", scope: !1100, file: !25, line: 159, type: !45)
!1108 = !DILocalVariable(name: "words_to_shift", scope: !1100, file: !25, line: 160, type: !45)
!1109 = !DILocalVariable(name: "m_vec_limbs", scope: !1100, file: !25, line: 161, type: !259)
!1110 = !DILocalVariable(name: "A", scope: !1100, file: !25, line: 162, type: !1111)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 51200, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 800)
!1114 = !DILocation(line: 162, column: 14, scope: !1100)
!1115 = !DILocalVariable(name: "A_width", scope: !1100, file: !25, line: 163, type: !15)
!1116 = !DILocalVariable(name: "mask", scope: !1117, file: !25, line: 168, type: !6)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !25, line: 167, column: 29)
!1118 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 167, column: 8)
!1119 = !DILocation(line: 0, scope: !1117)
!1120 = !DILocalVariable(name: "i", scope: !1121, file: !25, line: 171, type: !45)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !25, line: 171, column: 9)
!1122 = !DILocation(line: 0, scope: !1121)
!1123 = !DILocation(line: 171, column: 14, scope: !1121)
!1124 = !DILocation(line: 171, scope: !1121)
!1125 = !DILocation(line: 171, column: 27, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !25, line: 171, column: 9)
!1127 = !DILocation(line: 171, column: 9, scope: !1121)
!1128 = !DILocation(line: 177, column: 5, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 177, column: 5)
!1130 = !DILocation(line: 173, column: 13, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !25, line: 172, column: 9)
!1132 = !DILocation(line: 173, column: 50, scope: !1131)
!1133 = !DILocation(line: 171, column: 53, scope: !1126)
!1134 = !DILocation(line: 171, column: 9, scope: !1126)
!1135 = distinct !{!1135, !1127, !1136, !323}
!1136 = !DILocation(line: 174, column: 9, scope: !1121)
!1137 = !DILocation(line: 177, scope: !1129)
!1138 = !DILocation(line: 160, column: 9, scope: !1100)
!1139 = !DILocation(line: 159, column: 9, scope: !1100)
!1140 = !DILocalVariable(name: "i", scope: !1129, file: !25, line: 177, type: !45)
!1141 = !DILocation(line: 0, scope: !1129)
!1142 = !DILocation(line: 177, column: 23, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1129, file: !25, line: 177, column: 5)
!1144 = !DILocation(line: 178, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !25, line: 178, column: 9)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !25, line: 177, column: 47)
!1147 = !DILocation(line: 212, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 212, column: 5)
!1149 = !DILocation(line: 178, scope: !1145)
!1150 = !DILocalVariable(name: "j", scope: !1145, file: !25, line: 178, type: !45)
!1151 = !DILocation(line: 0, scope: !1145)
!1152 = !DILocation(line: 178, column: 40, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 178, column: 9)
!1154 = !DILocation(line: 180, column: 22, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1153, file: !25, line: 178, column: 51)
!1156 = !DILocalVariable(name: "Mj", scope: !1100, file: !25, line: 164, type: !346)
!1157 = !DILocalVariable(name: "c", scope: !1158, file: !25, line: 181, type: !45)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !25, line: 181, column: 13)
!1159 = !DILocation(line: 0, scope: !1158)
!1160 = !DILocation(line: 181, column: 18, scope: !1158)
!1161 = !DILocation(line: 181, scope: !1158)
!1162 = !DILocation(line: 181, column: 31, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !25, line: 181, column: 13)
!1164 = !DILocation(line: 181, column: 13, scope: !1158)
!1165 = !DILocation(line: 182, column: 17, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !25, line: 182, column: 17)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !25, line: 181, column: 50)
!1168 = !DILocation(line: 182, scope: !1166)
!1169 = !DILocalVariable(name: "k", scope: !1166, file: !25, line: 182, type: !45)
!1170 = !DILocation(line: 0, scope: !1166)
!1171 = !DILocation(line: 182, column: 35, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1166, file: !25, line: 182, column: 17)
!1173 = !DILocation(line: 184, column: 78, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !25, line: 183, column: 17)
!1175 = !DILocation(line: 184, column: 100, scope: !1174)
!1176 = !DILocation(line: 184, column: 35, scope: !1174)
!1177 = !DILocation(line: 184, column: 39, scope: !1174)
!1178 = !DILocation(line: 184, column: 48, scope: !1174)
!1179 = !DILocation(line: 184, column: 65, scope: !1174)
!1180 = !DILocation(line: 184, column: 43, scope: !1174)
!1181 = !DILocation(line: 184, column: 21, scope: !1174)
!1182 = !DILocation(line: 184, column: 75, scope: !1174)
!1183 = !DILocation(line: 185, column: 38, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 185, column: 24)
!1185 = !DILocation(line: 186, column: 86, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !25, line: 185, column: 42)
!1187 = !DILocation(line: 186, column: 114, scope: !1186)
!1188 = !DILocation(line: 186, column: 108, scope: !1186)
!1189 = !DILocation(line: 186, column: 39, scope: !1186)
!1190 = !DILocation(line: 186, column: 43, scope: !1186)
!1191 = !DILocation(line: 186, column: 52, scope: !1186)
!1192 = !DILocation(line: 186, column: 73, scope: !1186)
!1193 = !DILocation(line: 186, column: 47, scope: !1186)
!1194 = !DILocation(line: 186, column: 25, scope: !1186)
!1195 = !DILocation(line: 186, column: 83, scope: !1186)
!1196 = !DILocation(line: 187, column: 21, scope: !1186)
!1197 = !DILocation(line: 182, column: 51, scope: !1172)
!1198 = !DILocation(line: 182, column: 17, scope: !1172)
!1199 = distinct !{!1199, !1165, !1200, !323}
!1200 = !DILocation(line: 188, column: 17, scope: !1166)
!1201 = !DILocation(line: 181, column: 46, scope: !1163)
!1202 = !DILocation(line: 181, column: 13, scope: !1163)
!1203 = distinct !{!1203, !1164, !1204, !323}
!1204 = !DILocation(line: 189, column: 13, scope: !1158)
!1205 = !DILocation(line: 191, column: 19, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1155, file: !25, line: 191, column: 17)
!1207 = !DILocation(line: 192, column: 26, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1206, file: !25, line: 191, column: 25)
!1209 = !DILocalVariable(name: "Mi", scope: !1100, file: !25, line: 164, type: !346)
!1210 = !DILocalVariable(name: "c", scope: !1211, file: !25, line: 193, type: !45)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !25, line: 193, column: 17)
!1212 = !DILocation(line: 0, scope: !1211)
!1213 = !DILocation(line: 193, column: 22, scope: !1211)
!1214 = !DILocation(line: 193, scope: !1211)
!1215 = !DILocation(line: 193, column: 35, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !25, line: 193, column: 17)
!1217 = !DILocation(line: 193, column: 17, scope: !1211)
!1218 = !DILocation(line: 194, column: 21, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !25, line: 194, column: 21)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !25, line: 193, column: 54)
!1221 = !DILocation(line: 194, scope: !1219)
!1222 = !DILocalVariable(name: "k", scope: !1219, file: !25, line: 194, type: !45)
!1223 = !DILocation(line: 0, scope: !1219)
!1224 = !DILocation(line: 194, column: 39, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1219, file: !25, line: 194, column: 21)
!1226 = !DILocation(line: 196, column: 81, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !25, line: 195, column: 21)
!1228 = !DILocation(line: 196, column: 103, scope: !1227)
!1229 = !DILocation(line: 196, column: 38, scope: !1227)
!1230 = !DILocation(line: 196, column: 42, scope: !1227)
!1231 = !DILocation(line: 196, column: 51, scope: !1227)
!1232 = !DILocation(line: 196, column: 68, scope: !1227)
!1233 = !DILocation(line: 196, column: 46, scope: !1227)
!1234 = !DILocation(line: 196, column: 25, scope: !1227)
!1235 = !DILocation(line: 196, column: 78, scope: !1227)
!1236 = !DILocation(line: 197, column: 42, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1227, file: !25, line: 197, column: 28)
!1238 = !DILocation(line: 198, column: 89, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1237, file: !25, line: 197, column: 46)
!1240 = !DILocation(line: 198, column: 117, scope: !1239)
!1241 = !DILocation(line: 198, column: 111, scope: !1239)
!1242 = !DILocation(line: 198, column: 42, scope: !1239)
!1243 = !DILocation(line: 198, column: 46, scope: !1239)
!1244 = !DILocation(line: 198, column: 55, scope: !1239)
!1245 = !DILocation(line: 198, column: 76, scope: !1239)
!1246 = !DILocation(line: 198, column: 50, scope: !1239)
!1247 = !DILocation(line: 198, column: 29, scope: !1239)
!1248 = !DILocation(line: 198, column: 86, scope: !1239)
!1249 = !DILocation(line: 199, column: 25, scope: !1239)
!1250 = !DILocation(line: 194, column: 55, scope: !1225)
!1251 = !DILocation(line: 194, column: 21, scope: !1225)
!1252 = distinct !{!1252, !1218, !1253, !323}
!1253 = !DILocation(line: 200, column: 21, scope: !1219)
!1254 = !DILocation(line: 193, column: 50, scope: !1216)
!1255 = !DILocation(line: 193, column: 17, scope: !1216)
!1256 = distinct !{!1256, !1217, !1257, !323}
!1257 = !DILocation(line: 201, column: 17, scope: !1211)
!1258 = !DILocation(line: 204, column: 27, scope: !1155)
!1259 = !DILocation(line: 205, column: 30, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1155, file: !25, line: 205, column: 16)
!1261 = !DILocation(line: 178, column: 46, scope: !1153)
!1262 = !DILocation(line: 178, column: 9, scope: !1153)
!1263 = distinct !{!1263, !1144, !1264, !323}
!1264 = !DILocation(line: 209, column: 9, scope: !1145)
!1265 = !DILocation(line: 177, column: 42, scope: !1143)
!1266 = !DILocation(line: 177, column: 5, scope: !1143)
!1267 = distinct !{!1267, !1128, !1268, !323}
!1268 = !DILocation(line: 210, column: 5, scope: !1129)
!1269 = !DILocation(line: 212, scope: !1148)
!1270 = !DILocalVariable(name: "c", scope: !1148, file: !25, line: 212, type: !15)
!1271 = !DILocation(line: 0, scope: !1148)
!1272 = !DILocation(line: 212, column: 26, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1148, file: !25, line: 212, column: 5)
!1274 = !DILocation(line: 214, column: 35, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !25, line: 213, column: 5)
!1276 = !DILocation(line: 214, column: 9, scope: !1275)
!1277 = !DILocation(line: 212, column: 91, scope: !1273)
!1278 = !DILocation(line: 212, column: 5, scope: !1273)
!1279 = distinct !{!1279, !1147, !1280, !323}
!1280 = !DILocation(line: 215, column: 5, scope: !1148)
!1281 = !DILocalVariable(name: "tab", scope: !1100, file: !25, line: 217, type: !1282)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 16)
!1285 = !DILocation(line: 217, column: 19, scope: !1100)
!1286 = !DILocalVariable(name: "i", scope: !1287, file: !25, line: 218, type: !15)
!1287 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 218, column: 5)
!1288 = !DILocation(line: 0, scope: !1287)
!1289 = !DILocation(line: 218, column: 10, scope: !1287)
!1290 = !DILocation(line: 218, scope: !1287)
!1291 = !DILocation(line: 218, column: 26, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !25, line: 218, column: 5)
!1293 = !DILocation(line: 218, column: 5, scope: !1287)
!1294 = !DILocation(line: 228, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 228, column: 5)
!1296 = !DILocation(line: 220, column: 28, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !25, line: 219, column: 5)
!1298 = !DILocation(line: 220, column: 22, scope: !1297)
!1299 = !DILocation(line: 220, column: 14, scope: !1297)
!1300 = !DILocation(line: 220, column: 9, scope: !1297)
!1301 = !DILocation(line: 220, column: 20, scope: !1297)
!1302 = !DILocation(line: 221, column: 22, scope: !1297)
!1303 = !DILocation(line: 221, column: 14, scope: !1297)
!1304 = !DILocation(line: 221, column: 16, scope: !1297)
!1305 = !DILocation(line: 221, column: 9, scope: !1297)
!1306 = !DILocation(line: 221, column: 20, scope: !1297)
!1307 = !DILocation(line: 222, column: 28, scope: !1297)
!1308 = !DILocation(line: 222, column: 22, scope: !1297)
!1309 = !DILocation(line: 222, column: 14, scope: !1297)
!1310 = !DILocation(line: 222, column: 16, scope: !1297)
!1311 = !DILocation(line: 222, column: 9, scope: !1297)
!1312 = !DILocation(line: 222, column: 20, scope: !1297)
!1313 = !DILocation(line: 223, column: 28, scope: !1297)
!1314 = !DILocation(line: 223, column: 22, scope: !1297)
!1315 = !DILocation(line: 223, column: 14, scope: !1297)
!1316 = !DILocation(line: 223, column: 16, scope: !1297)
!1317 = !DILocation(line: 223, column: 9, scope: !1297)
!1318 = !DILocation(line: 223, column: 20, scope: !1297)
!1319 = !DILocation(line: 218, column: 41, scope: !1292)
!1320 = !DILocation(line: 218, column: 5, scope: !1292)
!1321 = distinct !{!1321, !1293, !1322, !323}
!1322 = !DILocation(line: 224, column: 5, scope: !1287)
!1323 = !DILocation(line: 228, scope: !1295)
!1324 = !DILocalVariable(name: "c", scope: !1295, file: !25, line: 228, type: !15)
!1325 = !DILocation(line: 0, scope: !1295)
!1326 = !DILocation(line: 228, column: 26, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1295, file: !25, line: 228, column: 5)
!1328 = !DILocation(line: 230, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !25, line: 230, column: 9)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !25, line: 229, column: 5)
!1331 = !DILocation(line: 250, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 250, column: 5)
!1333 = !DILocation(line: 230, scope: !1329)
!1334 = !DILocalVariable(name: "r", scope: !1329, file: !25, line: 230, type: !45)
!1335 = !DILocation(line: 0, scope: !1329)
!1336 = !DILocation(line: 230, column: 36, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1329, file: !25, line: 230, column: 9)
!1338 = !DILocation(line: 232, column: 28, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !25, line: 231, column: 9)
!1340 = !DILocation(line: 232, column: 32, scope: !1339)
!1341 = !DILocation(line: 232, column: 41, scope: !1339)
!1342 = !DILocation(line: 232, column: 49, scope: !1339)
!1343 = !DILocation(line: 232, column: 45, scope: !1339)
!1344 = !DILocalVariable(name: "pos", scope: !1339, file: !25, line: 232, type: !15)
!1345 = !DILocation(line: 0, scope: !1339)
!1346 = !DILocation(line: 233, column: 28, scope: !1339)
!1347 = !DILocation(line: 233, column: 41, scope: !1339)
!1348 = !DILocalVariable(name: "t0", scope: !1339, file: !25, line: 233, type: !6)
!1349 = !DILocation(line: 234, column: 35, scope: !1339)
!1350 = !DILocation(line: 234, column: 41, scope: !1339)
!1351 = !DILocalVariable(name: "t1", scope: !1339, file: !25, line: 234, type: !6)
!1352 = !DILocation(line: 235, column: 35, scope: !1339)
!1353 = !DILocation(line: 235, column: 41, scope: !1339)
!1354 = !DILocalVariable(name: "t2", scope: !1339, file: !25, line: 235, type: !6)
!1355 = !DILocation(line: 236, column: 28, scope: !1339)
!1356 = !DILocation(line: 236, column: 35, scope: !1339)
!1357 = !DILocation(line: 236, column: 41, scope: !1339)
!1358 = !DILocalVariable(name: "t3", scope: !1339, file: !25, line: 236, type: !6)
!1359 = !DILocalVariable(name: "t", scope: !1360, file: !25, line: 237, type: !15)
!1360 = distinct !DILexicalBlock(scope: !1339, file: !25, line: 237, column: 13)
!1361 = !DILocation(line: 0, scope: !1360)
!1362 = !DILocation(line: 237, column: 18, scope: !1360)
!1363 = !DILocation(line: 237, scope: !1360)
!1364 = !DILocation(line: 237, column: 34, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !25, line: 237, column: 13)
!1366 = !DILocation(line: 237, column: 13, scope: !1360)
!1367 = !DILocation(line: 239, column: 89, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !25, line: 238, column: 13)
!1369 = !DILocation(line: 239, column: 84, scope: !1368)
!1370 = !DILocation(line: 239, column: 83, scope: !1368)
!1371 = !DILocation(line: 239, column: 105, scope: !1368)
!1372 = !DILocation(line: 239, column: 107, scope: !1368)
!1373 = !DILocation(line: 239, column: 100, scope: !1368)
!1374 = !DILocation(line: 239, column: 99, scope: !1368)
!1375 = !DILocation(line: 239, column: 95, scope: !1368)
!1376 = !DILocation(line: 239, column: 121, scope: !1368)
!1377 = !DILocation(line: 239, column: 123, scope: !1368)
!1378 = !DILocation(line: 239, column: 116, scope: !1368)
!1379 = !DILocation(line: 239, column: 115, scope: !1368)
!1380 = !DILocation(line: 239, column: 111, scope: !1368)
!1381 = !DILocation(line: 239, column: 137, scope: !1368)
!1382 = !DILocation(line: 239, column: 139, scope: !1368)
!1383 = !DILocation(line: 239, column: 132, scope: !1368)
!1384 = !DILocation(line: 239, column: 131, scope: !1368)
!1385 = !DILocation(line: 239, column: 127, scope: !1368)
!1386 = !DILocation(line: 239, column: 22, scope: !1368)
!1387 = !DILocation(line: 239, column: 24, scope: !1368)
!1388 = !DILocation(line: 239, column: 36, scope: !1368)
!1389 = !DILocation(line: 239, column: 40, scope: !1368)
!1390 = !DILocation(line: 239, column: 49, scope: !1368)
!1391 = !DILocation(line: 239, column: 58, scope: !1368)
!1392 = !DILocation(line: 239, column: 60, scope: !1368)
!1393 = !DILocation(line: 239, column: 72, scope: !1368)
!1394 = !DILocation(line: 239, column: 53, scope: !1368)
!1395 = !DILocation(line: 239, column: 17, scope: !1368)
!1396 = !DILocation(line: 239, column: 78, scope: !1368)
!1397 = !DILocation(line: 237, column: 49, scope: !1365)
!1398 = !DILocation(line: 237, column: 13, scope: !1365)
!1399 = distinct !{!1399, !1366, !1400, !323}
!1400 = !DILocation(line: 240, column: 13, scope: !1360)
!1401 = !DILocation(line: 230, column: 82, scope: !1337)
!1402 = !DILocation(line: 230, column: 9, scope: !1337)
!1403 = distinct !{!1403, !1328, !1404, !323}
!1404 = !DILocation(line: 241, column: 9, scope: !1329)
!1405 = !DILocation(line: 228, column: 38, scope: !1327)
!1406 = !DILocation(line: 228, column: 5, scope: !1327)
!1407 = distinct !{!1407, !1294, !1408, !323}
!1408 = !DILocation(line: 242, column: 5, scope: !1295)
!1409 = !DILocation(line: 250, scope: !1332)
!1410 = !DILocalVariable(name: "r", scope: !1332, file: !25, line: 250, type: !45)
!1411 = !DILocation(line: 0, scope: !1332)
!1412 = !DILocation(line: 250, column: 23, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1332, file: !25, line: 250, column: 5)
!1414 = !DILocation(line: 252, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !25, line: 252, column: 9)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !25, line: 251, column: 5)
!1417 = !DILocation(line: 252, scope: !1415)
!1418 = !DILocalVariable(name: "c", scope: !1415, file: !25, line: 252, type: !45)
!1419 = !DILocation(line: 0, scope: !1415)
!1420 = !DILocation(line: 252, column: 27, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !25, line: 252, column: 9)
!1422 = !DILocation(line: 254, column: 13, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !25, line: 254, column: 13)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !25, line: 253, column: 9)
!1425 = !DILocation(line: 254, scope: !1423)
!1426 = !DILocalVariable(name: "i", scope: !1423, file: !25, line: 254, type: !45)
!1427 = !DILocation(line: 0, scope: !1423)
!1428 = !DILocation(line: 254, column: 35, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !25, line: 254, column: 13)
!1430 = !DILocation(line: 256, column: 55, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1429, file: !25, line: 255, column: 13)
!1432 = !DILocation(line: 256, column: 59, scope: !1431)
!1433 = !DILocation(line: 256, column: 63, scope: !1431)
!1434 = !DILocation(line: 256, column: 44, scope: !1431)
!1435 = !DILocation(line: 256, column: 95, scope: !1431)
!1436 = !DILocation(line: 256, column: 92, scope: !1431)
!1437 = !DILocation(line: 256, column: 75, scope: !1431)
!1438 = !DILocation(line: 256, column: 99, scope: !1431)
!1439 = !DILocation(line: 256, column: 104, scope: !1431)
!1440 = !DILocation(line: 256, column: 17, scope: !1431)
!1441 = !DILocation(line: 254, column: 50, scope: !1429)
!1442 = !DILocation(line: 254, column: 13, scope: !1429)
!1443 = distinct !{!1443, !1422, !1444, !323}
!1444 = !DILocation(line: 257, column: 13, scope: !1423)
!1445 = !DILocation(line: 252, column: 50, scope: !1421)
!1446 = !DILocation(line: 252, column: 9, scope: !1421)
!1447 = distinct !{!1447, !1414, !1448, !323}
!1448 = !DILocation(line: 258, column: 9, scope: !1415)
!1449 = !DILocation(line: 250, column: 38, scope: !1413)
!1450 = !DILocation(line: 250, column: 5, scope: !1413)
!1451 = distinct !{!1451, !1331, !1452, !323}
!1452 = !DILocation(line: 259, column: 5, scope: !1332)
!1453 = !DILocation(line: 260, column: 1, scope: !1100)
!1454 = distinct !DISubprogram(name: "mat_mul", scope: !513, file: !513, line: 79, type: !1455, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !49, !49, !18, !45, !45, !45}
!1457 = !DILocalVariable(name: "a", arg: 1, scope: !1454, file: !513, line: 79, type: !49)
!1458 = !DILocation(line: 0, scope: !1454)
!1459 = !DILocalVariable(name: "b", arg: 2, scope: !1454, file: !513, line: 79, type: !49)
!1460 = !DILocalVariable(name: "c", arg: 3, scope: !1454, file: !513, line: 80, type: !18)
!1461 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1454, file: !513, line: 80, type: !45)
!1462 = !DILocalVariable(name: "row_a", arg: 5, scope: !1454, file: !513, line: 80, type: !45)
!1463 = !DILocalVariable(name: "col_b", arg: 6, scope: !1454, file: !513, line: 80, type: !45)
!1464 = !DILocalVariable(name: "i", scope: !1465, file: !513, line: 81, type: !45)
!1465 = distinct !DILexicalBlock(scope: !1454, file: !513, line: 81, column: 5)
!1466 = !DILocation(line: 0, scope: !1465)
!1467 = !DILocation(line: 81, column: 10, scope: !1465)
!1468 = !DILocation(line: 81, scope: !1465)
!1469 = !DILocation(line: 81, column: 23, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !513, line: 81, column: 5)
!1471 = !DILocation(line: 81, column: 5, scope: !1465)
!1472 = !DILocation(line: 82, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !513, line: 82, column: 9)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !513, line: 81, column: 53)
!1475 = !DILocation(line: 82, scope: !1473)
!1476 = !DILocalVariable(name: "j", scope: !1473, file: !513, line: 82, type: !45)
!1477 = !DILocation(line: 0, scope: !1473)
!1478 = !DILocation(line: 83, column: 18, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !513, line: 82, column: 46)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !513, line: 82, column: 9)
!1481 = !DILocation(line: 83, column: 16, scope: !1479)
!1482 = !DILocation(line: 82, column: 41, scope: !1480)
!1483 = !DILocation(line: 82, column: 9, scope: !1480)
!1484 = distinct !{!1484, !1472, !1485, !323}
!1485 = !DILocation(line: 84, column: 9, scope: !1473)
!1486 = !DILocation(line: 81, column: 32, scope: !1470)
!1487 = !DILocation(line: 81, column: 39, scope: !1470)
!1488 = !DILocation(line: 81, column: 5, scope: !1470)
!1489 = distinct !{!1489, !1471, !1490, !323}
!1490 = !DILocation(line: 85, column: 5, scope: !1465)
!1491 = !DILocation(line: 86, column: 1, scope: !1454)
!1492 = distinct !DISubprogram(name: "mat_add", scope: !513, file: !513, line: 88, type: !1493, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !49, !49, !18, !45, !45}
!1495 = !DILocalVariable(name: "a", arg: 1, scope: !1492, file: !513, line: 88, type: !49)
!1496 = !DILocation(line: 0, scope: !1492)
!1497 = !DILocalVariable(name: "b", arg: 2, scope: !1492, file: !513, line: 88, type: !49)
!1498 = !DILocalVariable(name: "c", arg: 3, scope: !1492, file: !513, line: 89, type: !18)
!1499 = !DILocalVariable(name: "m", arg: 4, scope: !1492, file: !513, line: 89, type: !45)
!1500 = !DILocalVariable(name: "n", arg: 5, scope: !1492, file: !513, line: 89, type: !45)
!1501 = !DILocalVariable(name: "i", scope: !1502, file: !513, line: 90, type: !45)
!1502 = distinct !DILexicalBlock(scope: !1492, file: !513, line: 90, column: 5)
!1503 = !DILocation(line: 0, scope: !1502)
!1504 = !DILocation(line: 90, column: 10, scope: !1502)
!1505 = !DILocation(line: 90, scope: !1502)
!1506 = !DILocation(line: 90, column: 23, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !513, line: 90, column: 5)
!1508 = !DILocation(line: 90, column: 5, scope: !1502)
!1509 = !DILocalVariable(name: "j", scope: !1510, file: !513, line: 91, type: !45)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !513, line: 91, column: 9)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !513, line: 90, column: 33)
!1512 = !DILocation(line: 0, scope: !1510)
!1513 = !DILocation(line: 92, column: 42, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !513, line: 91, column: 37)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !513, line: 91, column: 9)
!1516 = !DILocation(line: 92, column: 38, scope: !1514)
!1517 = !DILocation(line: 92, column: 60, scope: !1514)
!1518 = !DILocation(line: 92, column: 56, scope: !1514)
!1519 = !DILocation(line: 92, column: 32, scope: !1514)
!1520 = !DILocation(line: 92, column: 17, scope: !1514)
!1521 = !DILocation(line: 92, column: 30, scope: !1514)
!1522 = !DILocation(line: 90, column: 28, scope: !1507)
!1523 = !DILocation(line: 90, column: 5, scope: !1507)
!1524 = distinct !{!1524, !1508, !1525, !323}
!1525 = !DILocation(line: 94, column: 5, scope: !1502)
!1526 = !DILocation(line: 95, column: 1, scope: !1492)
!1527 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !296, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1528 = !DILocalVariable(name: "m", arg: 1, scope: !1527, file: !25, line: 32, type: !49)
!1529 = !DILocation(line: 0, scope: !1527)
!1530 = !DILocalVariable(name: "menc", arg: 2, scope: !1527, file: !25, line: 32, type: !18)
!1531 = !DILocalVariable(name: "mlen", arg: 3, scope: !1527, file: !25, line: 32, type: !45)
!1532 = !DILocalVariable(name: "i", scope: !1527, file: !25, line: 33, type: !45)
!1533 = !DILocation(line: 34, column: 10, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !25, line: 34, column: 5)
!1535 = !DILocation(line: 34, scope: !1534)
!1536 = !DILocation(line: 34, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !25, line: 34, column: 5)
!1538 = !DILocation(line: 34, column: 5, scope: !1534)
!1539 = !DILocation(line: 35, column: 20, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !25, line: 34, column: 44)
!1541 = !DILocation(line: 35, column: 31, scope: !1540)
!1542 = !DILocation(line: 35, column: 27, scope: !1540)
!1543 = !DILocation(line: 35, column: 36, scope: !1540)
!1544 = !DILocation(line: 35, column: 24, scope: !1540)
!1545 = !DILocation(line: 35, column: 9, scope: !1540)
!1546 = !DILocation(line: 35, column: 17, scope: !1540)
!1547 = !DILocation(line: 34, column: 31, scope: !1537)
!1548 = !DILocation(line: 34, column: 38, scope: !1537)
!1549 = !DILocation(line: 34, column: 5, scope: !1537)
!1550 = distinct !{!1550, !1538, !1551, !323}
!1551 = !DILocation(line: 36, column: 5, scope: !1534)
!1552 = !DILocation(line: 41, column: 1, scope: !1527)
!1553 = distinct !DISubprogram(name: "add_f", scope: !513, file: !513, line: 43, type: !1554, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!14, !14, !14}
!1556 = !DILocalVariable(name: "a", arg: 1, scope: !1553, file: !513, line: 43, type: !14)
!1557 = !DILocation(line: 0, scope: !1553)
!1558 = !DILocalVariable(name: "b", arg: 2, scope: !1553, file: !513, line: 43, type: !14)
!1559 = !DILocation(line: 44, column: 14, scope: !1553)
!1560 = !DILocation(line: 44, column: 5, scope: !1553)
!1561 = distinct !DISubprogram(name: "lincomb", scope: !513, file: !513, line: 70, type: !1562, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!14, !49, !49, !45, !45}
!1564 = !DILocalVariable(name: "a", arg: 1, scope: !1561, file: !513, line: 70, type: !49)
!1565 = !DILocation(line: 0, scope: !1561)
!1566 = !DILocalVariable(name: "b", arg: 2, scope: !1561, file: !513, line: 71, type: !49)
!1567 = !DILocalVariable(name: "n", arg: 3, scope: !1561, file: !513, line: 71, type: !45)
!1568 = !DILocalVariable(name: "m", arg: 4, scope: !1561, file: !513, line: 71, type: !45)
!1569 = !DILocalVariable(name: "ret", scope: !1561, file: !513, line: 72, type: !14)
!1570 = !DILocalVariable(name: "i", scope: !1571, file: !513, line: 73, type: !45)
!1571 = distinct !DILexicalBlock(scope: !1561, file: !513, line: 73, column: 5)
!1572 = !DILocation(line: 0, scope: !1571)
!1573 = !DILocation(line: 73, column: 10, scope: !1571)
!1574 = !DILocation(line: 73, scope: !1571)
!1575 = !DILocation(line: 73, column: 23, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !513, line: 73, column: 5)
!1577 = !DILocation(line: 73, column: 5, scope: !1571)
!1578 = !DILocation(line: 74, column: 27, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !513, line: 73, column: 41)
!1580 = !DILocation(line: 74, column: 33, scope: !1579)
!1581 = !DILocation(line: 74, column: 21, scope: !1579)
!1582 = !DILocation(line: 74, column: 15, scope: !1579)
!1583 = !DILocation(line: 73, column: 28, scope: !1576)
!1584 = !DILocation(line: 73, column: 35, scope: !1576)
!1585 = !DILocation(line: 73, column: 5, scope: !1576)
!1586 = distinct !{!1586, !1577, !1587, !323}
!1587 = !DILocation(line: 75, column: 5, scope: !1571)
!1588 = !DILocation(line: 76, column: 5, scope: !1561)
!1589 = distinct !DISubprogram(name: "mul_f", scope: !513, file: !513, line: 9, type: !1554, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1590 = !DILocalVariable(name: "a", arg: 1, scope: !1589, file: !513, line: 9, type: !14)
!1591 = !DILocation(line: 0, scope: !1589)
!1592 = !DILocalVariable(name: "b", arg: 2, scope: !1589, file: !513, line: 9, type: !14)
!1593 = !DILocation(line: 14, column: 10, scope: !1589)
!1594 = !DILocation(line: 14, column: 7, scope: !1589)
!1595 = !DILocation(line: 17, column: 17, scope: !1589)
!1596 = !DILocalVariable(name: "p", scope: !1589, file: !513, line: 11, type: !14)
!1597 = !DILocation(line: 18, column: 13, scope: !1589)
!1598 = !DILocation(line: 18, column: 17, scope: !1589)
!1599 = !DILocation(line: 18, column: 7, scope: !1589)
!1600 = !DILocation(line: 19, column: 13, scope: !1589)
!1601 = !DILocation(line: 19, column: 17, scope: !1589)
!1602 = !DILocation(line: 19, column: 7, scope: !1589)
!1603 = !DILocation(line: 20, column: 13, scope: !1589)
!1604 = !DILocation(line: 20, column: 17, scope: !1589)
!1605 = !DILocation(line: 20, column: 7, scope: !1589)
!1606 = !DILocalVariable(name: "top_p", scope: !1589, file: !513, line: 23, type: !14)
!1607 = !DILocation(line: 24, column: 37, scope: !1589)
!1608 = !DILocation(line: 24, column: 52, scope: !1589)
!1609 = !DILocation(line: 24, column: 43, scope: !1589)
!1610 = !DILocation(line: 24, column: 59, scope: !1589)
!1611 = !DILocalVariable(name: "out", scope: !1589, file: !513, line: 24, type: !14)
!1612 = !DILocation(line: 25, column: 5, scope: !1589)
!1613 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1614 = !DILocation(line: 0, scope: !24)
!1615 = !DILocalVariable(name: "i", scope: !1616, file: !25, line: 117, type: !15)
!1616 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1617 = !DILocation(line: 0, scope: !1616)
!1618 = !DILocation(line: 117, column: 10, scope: !1616)
!1619 = !DILocation(line: 117, scope: !1616)
!1620 = !DILocation(line: 117, column: 26, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !25, line: 117, column: 5)
!1622 = !DILocation(line: 117, column: 5, scope: !1616)
!1623 = !DILocation(line: 124, column: 5, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1625 = !DILocation(line: 119, column: 24, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1621, file: !25, line: 118, column: 5)
!1627 = !DILocation(line: 119, column: 29, scope: !1626)
!1628 = !DILocation(line: 119, column: 41, scope: !1626)
!1629 = !DILocation(line: 119, column: 38, scope: !1626)
!1630 = !DILocation(line: 119, column: 36, scope: !1626)
!1631 = !DILocation(line: 119, column: 46, scope: !1626)
!1632 = !DILocalVariable(name: "t", scope: !1626, file: !25, line: 119, type: !6)
!1633 = !DILocation(line: 0, scope: !1626)
!1634 = !DILocation(line: 120, column: 21, scope: !1626)
!1635 = !DILocation(line: 120, column: 9, scope: !1626)
!1636 = !DILocation(line: 120, column: 16, scope: !1626)
!1637 = !DILocation(line: 121, column: 12, scope: !1626)
!1638 = !DILocation(line: 121, column: 9, scope: !1626)
!1639 = !DILocation(line: 121, column: 16, scope: !1626)
!1640 = !DILocation(line: 117, column: 33, scope: !1621)
!1641 = !DILocation(line: 117, column: 5, scope: !1621)
!1642 = distinct !{!1642, !1622, !1643, !323}
!1643 = !DILocation(line: 122, column: 5, scope: !1616)
!1644 = !DILocation(line: 124, scope: !1624)
!1645 = !DILocalVariable(name: "i", scope: !1624, file: !25, line: 124, type: !15)
!1646 = !DILocation(line: 0, scope: !1624)
!1647 = !DILocation(line: 124, column: 26, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1624, file: !25, line: 124, column: 5)
!1649 = !DILocation(line: 134, column: 5, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1651 = !DILocation(line: 126, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !25, line: 125, column: 5)
!1653 = !DILocation(line: 126, column: 32, scope: !1652)
!1654 = !DILocation(line: 126, column: 43, scope: !1652)
!1655 = !DILocation(line: 126, column: 40, scope: !1652)
!1656 = !DILocation(line: 126, column: 38, scope: !1652)
!1657 = !DILocation(line: 126, column: 48, scope: !1652)
!1658 = !DILocalVariable(name: "t0", scope: !1652, file: !25, line: 126, type: !6)
!1659 = !DILocation(line: 0, scope: !1652)
!1660 = !DILocation(line: 127, column: 28, scope: !1652)
!1661 = !DILocation(line: 127, column: 25, scope: !1652)
!1662 = !DILocation(line: 127, column: 32, scope: !1652)
!1663 = !DILocation(line: 127, column: 43, scope: !1652)
!1664 = !DILocation(line: 127, column: 40, scope: !1652)
!1665 = !DILocation(line: 127, column: 38, scope: !1652)
!1666 = !DILocation(line: 127, column: 48, scope: !1652)
!1667 = !DILocalVariable(name: "t1", scope: !1652, file: !25, line: 127, type: !6)
!1668 = !DILocation(line: 128, column: 23, scope: !1652)
!1669 = !DILocation(line: 128, column: 9, scope: !1652)
!1670 = !DILocation(line: 128, column: 16, scope: !1652)
!1671 = !DILocation(line: 129, column: 23, scope: !1652)
!1672 = !DILocation(line: 129, column: 12, scope: !1652)
!1673 = !DILocation(line: 129, column: 9, scope: !1652)
!1674 = !DILocation(line: 129, column: 16, scope: !1652)
!1675 = !DILocation(line: 130, column: 12, scope: !1652)
!1676 = !DILocation(line: 130, column: 9, scope: !1652)
!1677 = !DILocation(line: 130, column: 16, scope: !1652)
!1678 = !DILocation(line: 131, column: 12, scope: !1652)
!1679 = !DILocation(line: 131, column: 9, scope: !1652)
!1680 = !DILocation(line: 131, column: 16, scope: !1652)
!1681 = !DILocation(line: 124, column: 33, scope: !1648)
!1682 = !DILocation(line: 124, column: 5, scope: !1648)
!1683 = distinct !{!1683, !1623, !1684, !323}
!1684 = !DILocation(line: 132, column: 5, scope: !1624)
!1685 = !DILocation(line: 134, scope: !1650)
!1686 = !DILocalVariable(name: "i", scope: !1650, file: !25, line: 134, type: !15)
!1687 = !DILocation(line: 0, scope: !1650)
!1688 = !DILocation(line: 134, column: 26, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1650, file: !25, line: 134, column: 5)
!1690 = !DILocation(line: 145, column: 5, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1692 = !DILocation(line: 136, column: 25, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !25, line: 135, column: 5)
!1694 = !DILocation(line: 136, column: 32, scope: !1693)
!1695 = !DILocation(line: 136, column: 44, scope: !1693)
!1696 = !DILocation(line: 136, column: 41, scope: !1693)
!1697 = !DILocation(line: 136, column: 39, scope: !1693)
!1698 = !DILocation(line: 136, column: 50, scope: !1693)
!1699 = !DILocalVariable(name: "t0", scope: !1693, file: !25, line: 136, type: !6)
!1700 = !DILocation(line: 0, scope: !1693)
!1701 = !DILocation(line: 137, column: 28, scope: !1693)
!1702 = !DILocation(line: 137, column: 25, scope: !1693)
!1703 = !DILocation(line: 137, column: 32, scope: !1693)
!1704 = !DILocation(line: 137, column: 44, scope: !1693)
!1705 = !DILocation(line: 137, column: 41, scope: !1693)
!1706 = !DILocation(line: 137, column: 39, scope: !1693)
!1707 = !DILocation(line: 137, column: 50, scope: !1693)
!1708 = !DILocalVariable(name: "t1", scope: !1693, file: !25, line: 137, type: !6)
!1709 = !DILocation(line: 139, column: 23, scope: !1693)
!1710 = !DILocation(line: 139, column: 9, scope: !1693)
!1711 = !DILocation(line: 139, column: 17, scope: !1693)
!1712 = !DILocation(line: 140, column: 23, scope: !1693)
!1713 = !DILocation(line: 140, column: 12, scope: !1693)
!1714 = !DILocation(line: 140, column: 9, scope: !1693)
!1715 = !DILocation(line: 140, column: 17, scope: !1693)
!1716 = !DILocation(line: 141, column: 12, scope: !1693)
!1717 = !DILocation(line: 141, column: 9, scope: !1693)
!1718 = !DILocation(line: 141, column: 17, scope: !1693)
!1719 = !DILocation(line: 142, column: 12, scope: !1693)
!1720 = !DILocation(line: 142, column: 9, scope: !1693)
!1721 = !DILocation(line: 142, column: 17, scope: !1693)
!1722 = !DILocation(line: 134, column: 32, scope: !1689)
!1723 = !DILocation(line: 134, column: 5, scope: !1689)
!1724 = distinct !{!1724, !1649, !1725, !323}
!1725 = !DILocation(line: 143, column: 5, scope: !1650)
!1726 = !DILocation(line: 145, scope: !1691)
!1727 = !DILocalVariable(name: "i", scope: !1691, file: !25, line: 145, type: !15)
!1728 = !DILocation(line: 0, scope: !1691)
!1729 = !DILocation(line: 145, column: 26, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1691, file: !25, line: 145, column: 5)
!1731 = !DILocation(line: 147, column: 24, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1730, file: !25, line: 146, column: 5)
!1733 = !DILocation(line: 147, column: 28, scope: !1732)
!1734 = !DILocation(line: 147, column: 39, scope: !1732)
!1735 = !DILocation(line: 147, column: 36, scope: !1732)
!1736 = !DILocation(line: 147, column: 44, scope: !1732)
!1737 = !DILocalVariable(name: "t", scope: !1732, file: !25, line: 147, type: !6)
!1738 = !DILocation(line: 0, scope: !1732)
!1739 = !DILocation(line: 148, column: 21, scope: !1732)
!1740 = !DILocation(line: 148, column: 9, scope: !1732)
!1741 = !DILocation(line: 148, column: 16, scope: !1732)
!1742 = !DILocation(line: 149, column: 12, scope: !1732)
!1743 = !DILocation(line: 149, column: 9, scope: !1732)
!1744 = !DILocation(line: 149, column: 16, scope: !1732)
!1745 = !DILocation(line: 145, column: 32, scope: !1730)
!1746 = !DILocation(line: 145, column: 5, scope: !1730)
!1747 = distinct !{!1747, !1690, !1748, !323}
!1748 = !DILocation(line: 150, column: 5, scope: !1691)
!1749 = !DILocation(line: 151, column: 1, scope: !24)
!1750 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !343, file: !343, line: 61, type: !399, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1751 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1750, file: !343, line: 61, type: !259)
!1752 = !DILocation(line: 0, scope: !1750)
!1753 = !DILocalVariable(name: "mat", arg: 2, scope: !1750, file: !343, line: 61, type: !49)
!1754 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1750, file: !343, line: 61, type: !346)
!1755 = !DILocalVariable(name: "acc", arg: 4, scope: !1750, file: !343, line: 61, type: !5)
!1756 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1750, file: !343, line: 62, type: !259)
!1757 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1750, file: !343, line: 62, type: !259)
!1758 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1750, file: !343, line: 62, type: !259)
!1759 = !DILocalVariable(name: "r", scope: !1760, file: !343, line: 64, type: !45)
!1760 = distinct !DILexicalBlock(scope: !1750, file: !343, line: 64, column: 5)
!1761 = !DILocation(line: 0, scope: !1760)
!1762 = !DILocation(line: 64, column: 10, scope: !1760)
!1763 = !DILocation(line: 64, scope: !1760)
!1764 = !DILocation(line: 64, column: 23, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !343, line: 64, column: 5)
!1766 = !DILocation(line: 64, column: 5, scope: !1760)
!1767 = !DILocation(line: 65, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !343, line: 65, column: 9)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !343, line: 64, column: 40)
!1770 = !DILocation(line: 65, scope: !1768)
!1771 = !DILocalVariable(name: "c", scope: !1768, file: !343, line: 65, type: !45)
!1772 = !DILocation(line: 0, scope: !1768)
!1773 = !DILocation(line: 65, column: 27, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !343, line: 65, column: 9)
!1775 = !DILocation(line: 66, column: 13, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !343, line: 66, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !343, line: 65, column: 44)
!1778 = !DILocation(line: 66, scope: !1776)
!1779 = !DILocalVariable(name: "k", scope: !1776, file: !343, line: 66, type: !45)
!1780 = !DILocation(line: 0, scope: !1776)
!1781 = !DILocation(line: 66, column: 31, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1776, file: !343, line: 66, column: 13)
!1783 = !DILocation(line: 67, column: 70, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1782, file: !343, line: 66, column: 54)
!1785 = !DILocation(line: 67, column: 84, scope: !1784)
!1786 = !DILocation(line: 67, column: 51, scope: !1784)
!1787 = !DILocation(line: 67, column: 96, scope: !1784)
!1788 = !DILocation(line: 67, column: 90, scope: !1784)
!1789 = !DILocation(line: 67, column: 136, scope: !1784)
!1790 = !DILocation(line: 67, column: 150, scope: !1784)
!1791 = !DILocation(line: 67, column: 117, scope: !1784)
!1792 = !DILocation(line: 67, column: 17, scope: !1784)
!1793 = !DILocation(line: 66, column: 48, scope: !1782)
!1794 = !DILocation(line: 66, column: 13, scope: !1782)
!1795 = distinct !{!1795, !1775, !1796, !323}
!1796 = !DILocation(line: 68, column: 13, scope: !1776)
!1797 = !DILocation(line: 65, column: 40, scope: !1774)
!1798 = !DILocation(line: 65, column: 9, scope: !1774)
!1799 = distinct !{!1799, !1767, !1800, !323}
!1800 = !DILocation(line: 69, column: 9, scope: !1768)
!1801 = !DILocation(line: 64, column: 36, scope: !1765)
!1802 = !DILocation(line: 64, column: 5, scope: !1765)
!1803 = distinct !{!1803, !1766, !1804, !323}
!1804 = !DILocation(line: 70, column: 5, scope: !1760)
!1805 = !DILocation(line: 71, column: 1, scope: !1750)
!1806 = distinct !DISubprogram(name: "P1_times_Vt", scope: !343, file: !343, line: 82, type: !389, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1807 = !DILocalVariable(name: "p", arg: 1, scope: !1806, file: !343, line: 82, type: !194)
!1808 = !DILocation(line: 0, scope: !1806)
!1809 = !DILocalVariable(name: "P1", arg: 2, scope: !1806, file: !343, line: 82, type: !346)
!1810 = !DILocalVariable(name: "V", arg: 3, scope: !1806, file: !343, line: 82, type: !49)
!1811 = !DILocalVariable(name: "acc", arg: 4, scope: !1806, file: !343, line: 82, type: !5)
!1812 = !DILocation(line: 86, column: 5, scope: !1806)
!1813 = !DILocation(line: 87, column: 1, scope: !1806)
!1814 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !343, file: !343, line: 32, type: !529, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1815 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1814, file: !343, line: 32, type: !259)
!1816 = !DILocation(line: 0, scope: !1814)
!1817 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1814, file: !343, line: 32, type: !346)
!1818 = !DILocalVariable(name: "mat", arg: 3, scope: !1814, file: !343, line: 32, type: !49)
!1819 = !DILocalVariable(name: "acc", arg: 4, scope: !1814, file: !343, line: 32, type: !5)
!1820 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1814, file: !343, line: 33, type: !259)
!1821 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1814, file: !343, line: 33, type: !259)
!1822 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1814, file: !343, line: 33, type: !259)
!1823 = !DILocalVariable(name: "triangular", arg: 8, scope: !1814, file: !343, line: 33, type: !259)
!1824 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1814, file: !343, line: 34, type: !45)
!1825 = !DILocalVariable(name: "r", scope: !1826, file: !343, line: 35, type: !45)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !343, line: 35, column: 5)
!1827 = !DILocation(line: 0, scope: !1826)
!1828 = !DILocation(line: 35, column: 10, scope: !1826)
!1829 = !DILocation(line: 34, column: 9, scope: !1814)
!1830 = !DILocation(line: 35, scope: !1826)
!1831 = !DILocation(line: 35, column: 23, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1826, file: !343, line: 35, column: 5)
!1833 = !DILocation(line: 35, column: 5, scope: !1826)
!1834 = !DILocation(line: 36, column: 9, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !343, line: 36, column: 9)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !343, line: 35, column: 43)
!1837 = !DILocation(line: 36, scope: !1835)
!1838 = !DILocalVariable(name: "c", scope: !1835, file: !343, line: 36, type: !45)
!1839 = !DILocation(line: 0, scope: !1835)
!1840 = !DILocation(line: 36, column: 40, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1835, file: !343, line: 36, column: 9)
!1842 = !DILocation(line: 37, column: 13, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !343, line: 37, column: 13)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !343, line: 36, column: 60)
!1845 = !DILocation(line: 37, scope: !1843)
!1846 = !DILocalVariable(name: "k", scope: !1843, file: !343, line: 37, type: !45)
!1847 = !DILocation(line: 0, scope: !1843)
!1848 = !DILocation(line: 37, column: 31, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !343, line: 37, column: 13)
!1850 = !DILocation(line: 38, column: 51, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1849, file: !343, line: 37, column: 51)
!1852 = !DILocation(line: 38, column: 94, scope: !1851)
!1853 = !DILocation(line: 38, column: 88, scope: !1851)
!1854 = !DILocation(line: 38, column: 137, scope: !1851)
!1855 = !DILocation(line: 38, column: 148, scope: !1851)
!1856 = !DILocation(line: 38, column: 118, scope: !1851)
!1857 = !DILocation(line: 38, column: 17, scope: !1851)
!1858 = !DILocation(line: 37, column: 45, scope: !1849)
!1859 = !DILocation(line: 37, column: 13, scope: !1849)
!1860 = distinct !{!1860, !1842, !1861, !323}
!1861 = !DILocation(line: 39, column: 13, scope: !1843)
!1862 = !DILocation(line: 40, column: 33, scope: !1844)
!1863 = !DILocation(line: 36, column: 56, scope: !1841)
!1864 = !DILocation(line: 36, column: 9, scope: !1841)
!1865 = distinct !{!1865, !1834, !1866, !323}
!1866 = !DILocation(line: 41, column: 9, scope: !1835)
!1867 = !DILocation(line: 35, column: 39, scope: !1832)
!1868 = !DILocation(line: 35, column: 5, scope: !1832)
!1869 = distinct !{!1869, !1833, !1870, !323}
!1870 = !DILocation(line: 42, column: 5, scope: !1826)
!1871 = !DILocation(line: 43, column: 1, scope: !1814)
!1872 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !722, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1873 = !DILocalVariable(name: "p", arg: 1, scope: !1872, file: !25, line: 501, type: !194)
!1874 = !DILocation(line: 0, scope: !1872)
!1875 = !DILocalVariable(name: "sm", arg: 2, scope: !1872, file: !25, line: 501, type: !18)
!1876 = !DILocalVariable(name: "smlen", arg: 3, scope: !1872, file: !25, line: 502, type: !724)
!1877 = !DILocalVariable(name: "m", arg: 4, scope: !1872, file: !25, line: 502, type: !49)
!1878 = !DILocalVariable(name: "mlen", arg: 5, scope: !1872, file: !25, line: 503, type: !15)
!1879 = !DILocalVariable(name: "csk", arg: 6, scope: !1872, file: !25, line: 503, type: !49)
!1880 = !DILocalVariable(name: "ret", scope: !1872, file: !25, line: 504, type: !45)
!1881 = !DILocalVariable(name: "param_sig_bytes", scope: !1872, file: !25, line: 505, type: !259)
!1882 = !DILocation(line: 507, column: 16, scope: !1872)
!1883 = !DILocation(line: 507, column: 5, scope: !1872)
!1884 = !DILocation(line: 508, column: 50, scope: !1872)
!1885 = !DILocalVariable(name: "siglen", scope: !1872, file: !25, line: 506, type: !15)
!1886 = !DILocation(line: 508, column: 11, scope: !1872)
!1887 = !DILocation(line: 509, column: 13, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1872, file: !25, line: 509, column: 9)
!1889 = !DILocation(line: 509, column: 24, scope: !1888)
!1890 = !DILocation(line: 510, column: 23, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !25, line: 509, column: 62)
!1892 = !DILocation(line: 510, column: 30, scope: !1891)
!1893 = !DILocation(line: 510, column: 9, scope: !1891)
!1894 = !DILocation(line: 511, column: 9, scope: !1891)
!1895 = !DILocation(line: 514, column: 14, scope: !1872)
!1896 = !DILocation(line: 514, column: 21, scope: !1872)
!1897 = !DILocation(line: 514, column: 12, scope: !1872)
!1898 = !DILocation(line: 514, column: 5, scope: !1872)
!1899 = !DILabel(scope: !1872, name: "err", file: !25, line: 515)
!1900 = !DILocation(line: 515, column: 1, scope: !1872)
!1901 = !DILocation(line: 516, column: 5, scope: !1872)
!1902 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_open", scope: !25, file: !25, line: 519, type: !722, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1903 = !DILocalVariable(name: "p", arg: 1, scope: !1902, file: !25, line: 519, type: !194)
!1904 = !DILocation(line: 0, scope: !1902)
!1905 = !DILocalVariable(name: "m", arg: 2, scope: !1902, file: !25, line: 519, type: !18)
!1906 = !DILocalVariable(name: "mlen", arg: 3, scope: !1902, file: !25, line: 520, type: !724)
!1907 = !DILocalVariable(name: "sm", arg: 4, scope: !1902, file: !25, line: 520, type: !49)
!1908 = !DILocalVariable(name: "smlen", arg: 5, scope: !1902, file: !25, line: 521, type: !15)
!1909 = !DILocalVariable(name: "pk", arg: 6, scope: !1902, file: !25, line: 521, type: !49)
!1910 = !DILocalVariable(name: "param_sig_bytes", scope: !1902, file: !25, line: 522, type: !259)
!1911 = !DILocation(line: 523, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1902, file: !25, line: 523, column: 9)
!1913 = !DILocation(line: 526, column: 36, scope: !1902)
!1914 = !DILocation(line: 526, column: 61, scope: !1902)
!1915 = !DILocation(line: 526, column: 18, scope: !1902)
!1916 = !DILocalVariable(name: "result", scope: !1902, file: !25, line: 526, type: !45)
!1917 = !DILocation(line: 529, column: 16, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1902, file: !25, line: 529, column: 9)
!1919 = !DILocation(line: 530, column: 23, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1918, file: !25, line: 529, column: 28)
!1921 = !DILocation(line: 530, column: 15, scope: !1920)
!1922 = !DILocation(line: 531, column: 23, scope: !1920)
!1923 = !DILocation(line: 531, column: 9, scope: !1920)
!1924 = !DILocation(line: 532, column: 5, scope: !1920)
!1925 = !DILocation(line: 535, column: 1, scope: !1902)
!1926 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1927, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!45, !194, !49, !15, !49, !49}
!1929 = !DILocalVariable(name: "p", arg: 1, scope: !1926, file: !25, line: 616, type: !194)
!1930 = !DILocation(line: 0, scope: !1926)
!1931 = !DILocalVariable(name: "m", arg: 2, scope: !1926, file: !25, line: 616, type: !49)
!1932 = !DILocalVariable(name: "mlen", arg: 3, scope: !1926, file: !25, line: 617, type: !15)
!1933 = !DILocalVariable(name: "sig", arg: 4, scope: !1926, file: !25, line: 617, type: !49)
!1934 = !DILocalVariable(name: "cpk", arg: 5, scope: !1926, file: !25, line: 618, type: !49)
!1935 = !DILocalVariable(name: "tEnc", scope: !1926, file: !25, line: 619, type: !734)
!1936 = !DILocation(line: 619, column: 19, scope: !1926)
!1937 = !DILocalVariable(name: "t", scope: !1926, file: !25, line: 620, type: !739)
!1938 = !DILocation(line: 620, column: 19, scope: !1926)
!1939 = !DILocalVariable(name: "y", scope: !1926, file: !25, line: 621, type: !1940)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1248, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 156)
!1943 = !DILocation(line: 621, column: 19, scope: !1926)
!1944 = !DILocalVariable(name: "s", scope: !1926, file: !25, line: 622, type: !764)
!1945 = !DILocation(line: 622, column: 19, scope: !1926)
!1946 = !DILocalVariable(name: "pk", scope: !1926, file: !25, line: 623, type: !143)
!1947 = !DILocation(line: 623, column: 14, scope: !1926)
!1948 = !DILocalVariable(name: "tmp", scope: !1926, file: !25, line: 624, type: !1949)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 56)
!1952 = !DILocation(line: 624, column: 19, scope: !1926)
!1953 = !DILocalVariable(name: "param_m", scope: !1926, file: !25, line: 626, type: !259)
!1954 = !DILocalVariable(name: "param_n", scope: !1926, file: !25, line: 627, type: !259)
!1955 = !DILocalVariable(name: "param_k", scope: !1926, file: !25, line: 628, type: !259)
!1956 = !DILocalVariable(name: "param_m_bytes", scope: !1926, file: !25, line: 629, type: !259)
!1957 = !DILocalVariable(name: "param_sig_bytes", scope: !1926, file: !25, line: 630, type: !259)
!1958 = !DILocalVariable(name: "param_digest_bytes", scope: !1926, file: !25, line: 631, type: !259)
!1959 = !DILocalVariable(name: "param_salt_bytes", scope: !1926, file: !25, line: 632, type: !259)
!1960 = !DILocation(line: 634, column: 15, scope: !1926)
!1961 = !DILocalVariable(name: "ret", scope: !1926, file: !25, line: 634, type: !45)
!1962 = !DILocalVariable(name: "P1", scope: !1926, file: !25, line: 639, type: !5)
!1963 = !DILocation(line: 640, column: 23, scope: !1926)
!1964 = !DILocalVariable(name: "P2", scope: !1926, file: !25, line: 640, type: !5)
!1965 = !DILocation(line: 641, column: 23, scope: !1926)
!1966 = !DILocalVariable(name: "P3", scope: !1926, file: !25, line: 641, type: !5)
!1967 = !DILocation(line: 656, column: 5, scope: !1926)
!1968 = !DILocation(line: 659, column: 16, scope: !1926)
!1969 = !DILocation(line: 659, column: 60, scope: !1926)
!1970 = !DILocation(line: 659, column: 5, scope: !1926)
!1971 = !DILocation(line: 661, column: 5, scope: !1926)
!1972 = !DILocation(line: 662, column: 5, scope: !1926)
!1973 = !DILocation(line: 665, column: 5, scope: !1926)
!1974 = !DILocation(line: 667, column: 5, scope: !1926)
!1975 = !DILocation(line: 669, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1926, file: !25, line: 669, column: 9)
!1977 = !DILocation(line: 669, column: 31, scope: !1976)
!1978 = !DILocation(line: 673, column: 1, scope: !1926)
!1979 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !623, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1980 = !DILocalVariable(name: "p", arg: 1, scope: !1979, file: !25, line: 607, type: !194)
!1981 = !DILocation(line: 0, scope: !1979)
!1982 = !DILocalVariable(name: "cpk", arg: 2, scope: !1979, file: !25, line: 607, type: !49)
!1983 = !DILocalVariable(name: "pk", arg: 3, scope: !1979, file: !25, line: 608, type: !5)
!1984 = !DILocation(line: 609, column: 5, scope: !1979)
!1985 = !DILocation(line: 611, column: 23, scope: !1979)
!1986 = !DILocation(line: 611, column: 72, scope: !1979)
!1987 = !DILocation(line: 611, column: 5, scope: !1979)
!1988 = !DILocation(line: 613, column: 5, scope: !1979)
!1989 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1990, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !194, !49, !346, !346, !346, !18}
!1992 = !DILocalVariable(name: "p", arg: 1, scope: !1989, file: !25, line: 288, type: !194)
!1993 = !DILocation(line: 0, scope: !1989)
!1994 = !DILocalVariable(name: "s", arg: 2, scope: !1989, file: !25, line: 288, type: !49)
!1995 = !DILocalVariable(name: "P1", arg: 3, scope: !1989, file: !25, line: 288, type: !346)
!1996 = !DILocalVariable(name: "P2", arg: 4, scope: !1989, file: !25, line: 288, type: !346)
!1997 = !DILocalVariable(name: "P3", arg: 5, scope: !1989, file: !25, line: 288, type: !346)
!1998 = !DILocalVariable(name: "eval", arg: 6, scope: !1989, file: !25, line: 288, type: !18)
!1999 = !DILocalVariable(name: "SPS", scope: !1989, file: !25, line: 289, type: !2000)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32000, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 500)
!2003 = !DILocation(line: 289, column: 14, scope: !1989)
!2004 = !DILocation(line: 291, column: 5, scope: !1989)
!2005 = !DILocalVariable(name: "zero", scope: !1989, file: !25, line: 292, type: !739)
!2006 = !DILocation(line: 292, column: 19, scope: !1989)
!2007 = !DILocation(line: 293, column: 5, scope: !1989)
!2008 = !DILocation(line: 294, column: 1, scope: !1989)
!2009 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !343, file: !343, line: 277, type: !2010, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !194, !346, !346, !346, !49, !5}
!2012 = !DILocalVariable(name: "p", arg: 1, scope: !2009, file: !343, line: 277, type: !194)
!2013 = !DILocation(line: 0, scope: !2009)
!2014 = !DILocalVariable(name: "P1", arg: 2, scope: !2009, file: !343, line: 277, type: !346)
!2015 = !DILocalVariable(name: "P2", arg: 3, scope: !2009, file: !343, line: 277, type: !346)
!2016 = !DILocalVariable(name: "P3", arg: 4, scope: !2009, file: !343, line: 277, type: !346)
!2017 = !DILocalVariable(name: "s", arg: 5, scope: !2009, file: !343, line: 277, type: !49)
!2018 = !DILocalVariable(name: "SPS", arg: 6, scope: !2009, file: !343, line: 278, type: !5)
!2019 = !DILocalVariable(name: "PS", scope: !2009, file: !343, line: 286, type: !2020)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 275200, elements: !2021)
!2021 = !{!2022}
!2022 = !DISubrange(count: 4300)
!2023 = !DILocation(line: 286, column: 14, scope: !2009)
!2024 = !DILocation(line: 287, column: 5, scope: !2009)
!2025 = !DILocation(line: 290, column: 5, scope: !2009)
!2026 = !DILocation(line: 292, column: 1, scope: !2009)
!2027 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !343, file: !343, line: 151, type: !2028, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !346, !346, !346, !49, !259, !259, !259, !259, !5}
!2030 = !DILocalVariable(name: "P1", arg: 1, scope: !2027, file: !343, line: 151, type: !346)
!2031 = !DILocation(line: 0, scope: !2027)
!2032 = !DILocalVariable(name: "P2", arg: 2, scope: !2027, file: !343, line: 151, type: !346)
!2033 = !DILocalVariable(name: "P3", arg: 3, scope: !2027, file: !343, line: 151, type: !346)
!2034 = !DILocalVariable(name: "S", arg: 4, scope: !2027, file: !343, line: 151, type: !49)
!2035 = !DILocalVariable(name: "m", arg: 5, scope: !2027, file: !343, line: 152, type: !259)
!2036 = !DILocalVariable(name: "v", arg: 6, scope: !2027, file: !343, line: 152, type: !259)
!2037 = !DILocalVariable(name: "o", arg: 7, scope: !2027, file: !343, line: 152, type: !259)
!2038 = !DILocalVariable(name: "k", arg: 8, scope: !2027, file: !343, line: 152, type: !259)
!2039 = !DILocalVariable(name: "PS", arg: 9, scope: !2027, file: !343, line: 152, type: !5)
!2040 = !DILocalVariable(name: "n", scope: !2027, file: !343, line: 154, type: !259)
!2041 = !DILocalVariable(name: "m_vec_limbs", scope: !2027, file: !343, line: 155, type: !259)
!2042 = !DILocalVariable(name: "accumulator", scope: !2027, file: !343, line: 157, type: !2043)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4403200, elements: !2044)
!2044 = !{!2045}
!2045 = !DISubrange(count: 68800)
!2046 = !DILocation(line: 157, column: 14, scope: !2027)
!2047 = !DILocalVariable(name: "P1_used", scope: !2027, file: !343, line: 158, type: !45)
!2048 = !DILocalVariable(name: "row", scope: !2049, file: !343, line: 159, type: !45)
!2049 = distinct !DILexicalBlock(scope: !2027, file: !343, line: 159, column: 5)
!2050 = !DILocation(line: 0, scope: !2049)
!2051 = !DILocation(line: 159, column: 10, scope: !2049)
!2052 = !DILocation(line: 158, column: 9, scope: !2027)
!2053 = !DILocation(line: 159, scope: !2049)
!2054 = !DILocation(line: 159, column: 27, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2049, file: !343, line: 159, column: 5)
!2056 = !DILocation(line: 159, column: 5, scope: !2049)
!2057 = !DILocation(line: 160, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !343, line: 160, column: 9)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !343, line: 159, column: 39)
!2060 = !DILocation(line: 175, column: 5, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2027, file: !343, line: 175, column: 5)
!2062 = !DILocation(line: 160, scope: !2058)
!2063 = !DILocalVariable(name: "j", scope: !2058, file: !343, line: 160, type: !45)
!2064 = !DILocation(line: 0, scope: !2058)
!2065 = !DILocation(line: 160, column: 29, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2058, file: !343, line: 160, column: 9)
!2067 = !DILocation(line: 167, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2059, file: !343, line: 167, column: 9)
!2069 = !DILocation(line: 161, column: 13, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !343, line: 161, column: 13)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !343, line: 160, column: 39)
!2072 = !DILocation(line: 161, scope: !2070)
!2073 = !DILocalVariable(name: "col", scope: !2070, file: !343, line: 161, type: !45)
!2074 = !DILocation(line: 0, scope: !2070)
!2075 = !DILocation(line: 161, column: 35, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !343, line: 161, column: 13)
!2077 = !DILocation(line: 162, column: 43, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2076, file: !343, line: 161, column: 47)
!2079 = !DILocation(line: 162, column: 91, scope: !2078)
!2080 = !DILocation(line: 162, column: 95, scope: !2078)
!2081 = !DILocation(line: 162, column: 102, scope: !2078)
!2082 = !DILocation(line: 162, column: 115, scope: !2078)
!2083 = !DILocation(line: 162, column: 109, scope: !2078)
!2084 = !DILocation(line: 162, column: 107, scope: !2078)
!2085 = !DILocation(line: 162, column: 82, scope: !2078)
!2086 = !DILocation(line: 162, column: 17, scope: !2078)
!2087 = !DILocation(line: 161, column: 43, scope: !2076)
!2088 = !DILocation(line: 161, column: 13, scope: !2076)
!2089 = distinct !{!2089, !2069, !2090, !323}
!2090 = !DILocation(line: 163, column: 13, scope: !2070)
!2091 = !DILocation(line: 164, column: 21, scope: !2071)
!2092 = !DILocation(line: 160, column: 35, scope: !2066)
!2093 = !DILocation(line: 160, column: 9, scope: !2066)
!2094 = distinct !{!2094, !2057, !2095, !323}
!2095 = !DILocation(line: 165, column: 9, scope: !2058)
!2096 = !DILocation(line: 167, scope: !2068)
!2097 = !DILocalVariable(name: "j", scope: !2068, file: !343, line: 167, type: !45)
!2098 = !DILocation(line: 0, scope: !2068)
!2099 = !DILocation(line: 167, column: 27, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2068, file: !343, line: 167, column: 9)
!2101 = !DILocation(line: 168, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !343, line: 168, column: 13)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !343, line: 167, column: 37)
!2104 = !DILocation(line: 168, scope: !2102)
!2105 = !DILocalVariable(name: "col", scope: !2102, file: !343, line: 168, type: !45)
!2106 = !DILocation(line: 0, scope: !2102)
!2107 = !DILocation(line: 168, column: 35, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2102, file: !343, line: 168, column: 13)
!2109 = !DILocation(line: 169, column: 50, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2108, file: !343, line: 168, column: 47)
!2111 = !DILocation(line: 169, column: 54, scope: !2110)
!2112 = !DILocation(line: 169, column: 43, scope: !2110)
!2113 = !DILocation(line: 169, column: 93, scope: !2110)
!2114 = !DILocation(line: 169, column: 97, scope: !2110)
!2115 = !DILocation(line: 169, column: 104, scope: !2110)
!2116 = !DILocation(line: 169, column: 118, scope: !2110)
!2117 = !DILocation(line: 169, column: 111, scope: !2110)
!2118 = !DILocation(line: 169, column: 109, scope: !2110)
!2119 = !DILocation(line: 169, column: 84, scope: !2110)
!2120 = !DILocation(line: 169, column: 17, scope: !2110)
!2121 = !DILocation(line: 168, column: 43, scope: !2108)
!2122 = !DILocation(line: 168, column: 13, scope: !2108)
!2123 = distinct !{!2123, !2101, !2124, !323}
!2124 = !DILocation(line: 170, column: 13, scope: !2102)
!2125 = !DILocation(line: 167, column: 33, scope: !2100)
!2126 = !DILocation(line: 167, column: 9, scope: !2100)
!2127 = distinct !{!2127, !2067, !2128, !323}
!2128 = !DILocation(line: 171, column: 9, scope: !2068)
!2129 = !DILocation(line: 159, column: 35, scope: !2055)
!2130 = !DILocation(line: 159, column: 5, scope: !2055)
!2131 = distinct !{!2131, !2056, !2132, !323}
!2132 = !DILocation(line: 172, column: 5, scope: !2049)
!2133 = !DILocation(line: 174, column: 9, scope: !2027)
!2134 = !DILocation(line: 175, scope: !2061)
!2135 = !DILocalVariable(name: "row", scope: !2061, file: !343, line: 175, type: !45)
!2136 = !DILocation(line: 0, scope: !2061)
!2137 = !DILocalVariable(name: "P3_used", scope: !2027, file: !343, line: 174, type: !45)
!2138 = !DILocation(line: 175, column: 27, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2061, file: !343, line: 175, column: 5)
!2140 = !DILocation(line: 176, column: 9, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !343, line: 176, column: 9)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !343, line: 175, column: 39)
!2143 = !DILocation(line: 186, column: 5, scope: !2027)
!2144 = !DILocation(line: 176, scope: !2141)
!2145 = !DILocalVariable(name: "j", scope: !2141, file: !343, line: 176, type: !45)
!2146 = !DILocation(line: 0, scope: !2141)
!2147 = !DILocation(line: 176, column: 29, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2141, file: !343, line: 176, column: 9)
!2149 = !DILocation(line: 177, column: 13, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !343, line: 177, column: 13)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !343, line: 176, column: 39)
!2152 = !DILocation(line: 177, scope: !2150)
!2153 = !DILocalVariable(name: "col", scope: !2150, file: !343, line: 177, type: !45)
!2154 = !DILocation(line: 0, scope: !2150)
!2155 = !DILocation(line: 177, column: 35, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !343, line: 177, column: 13)
!2157 = !DILocation(line: 178, column: 43, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2156, file: !343, line: 177, column: 47)
!2159 = !DILocation(line: 178, column: 89, scope: !2158)
!2160 = !DILocation(line: 178, column: 93, scope: !2158)
!2161 = !DILocation(line: 178, column: 100, scope: !2158)
!2162 = !DILocation(line: 178, column: 113, scope: !2158)
!2163 = !DILocation(line: 178, column: 107, scope: !2158)
!2164 = !DILocation(line: 178, column: 105, scope: !2158)
!2165 = !DILocation(line: 178, column: 80, scope: !2158)
!2166 = !DILocation(line: 178, column: 17, scope: !2158)
!2167 = !DILocation(line: 177, column: 43, scope: !2156)
!2168 = !DILocation(line: 177, column: 13, scope: !2156)
!2169 = distinct !{!2169, !2149, !2170, !323}
!2170 = !DILocation(line: 179, column: 13, scope: !2150)
!2171 = !DILocation(line: 180, column: 21, scope: !2151)
!2172 = !DILocation(line: 176, column: 35, scope: !2148)
!2173 = !DILocation(line: 176, column: 9, scope: !2148)
!2174 = distinct !{!2174, !2140, !2175, !323}
!2175 = !DILocation(line: 181, column: 9, scope: !2141)
!2176 = !DILocation(line: 175, column: 35, scope: !2139)
!2177 = !DILocation(line: 175, column: 5, scope: !2139)
!2178 = distinct !{!2178, !2060, !2179, !323}
!2179 = !DILocation(line: 182, column: 5, scope: !2061)
!2180 = !DILocalVariable(name: "i", scope: !2027, file: !343, line: 185, type: !45)
!2181 = !DILocation(line: 186, column: 14, scope: !2027)
!2182 = !DILocation(line: 187, column: 54, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2027, file: !343, line: 186, column: 23)
!2184 = !DILocation(line: 187, column: 81, scope: !2183)
!2185 = !DILocation(line: 187, column: 9, scope: !2183)
!2186 = !DILocation(line: 188, column: 10, scope: !2183)
!2187 = distinct !{!2187, !2143, !2188, !323}
!2188 = !DILocation(line: 189, column: 5, scope: !2027)
!2189 = !DILocation(line: 191, column: 1, scope: !2027)
!2190 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !343, file: !343, line: 195, type: !2191, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !346, !49, !45, !45, !45, !5}
!2193 = !DILocalVariable(name: "PS", arg: 1, scope: !2190, file: !343, line: 195, type: !346)
!2194 = !DILocation(line: 0, scope: !2190)
!2195 = !DILocalVariable(name: "S", arg: 2, scope: !2190, file: !343, line: 195, type: !49)
!2196 = !DILocalVariable(name: "m", arg: 3, scope: !2190, file: !343, line: 195, type: !45)
!2197 = !DILocalVariable(name: "k", arg: 4, scope: !2190, file: !343, line: 195, type: !45)
!2198 = !DILocalVariable(name: "n", arg: 5, scope: !2190, file: !343, line: 195, type: !45)
!2199 = !DILocalVariable(name: "SPS", arg: 6, scope: !2190, file: !343, line: 195, type: !5)
!2200 = !DILocalVariable(name: "accumulator", scope: !2190, file: !343, line: 196, type: !2201)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512000, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 8000)
!2204 = !DILocation(line: 196, column: 14, scope: !2190)
!2205 = !DILocalVariable(name: "m_vec_limbs", scope: !2190, file: !343, line: 197, type: !259)
!2206 = !DILocalVariable(name: "row", scope: !2207, file: !343, line: 198, type: !45)
!2207 = distinct !DILexicalBlock(scope: !2190, file: !343, line: 198, column: 5)
!2208 = !DILocation(line: 0, scope: !2207)
!2209 = !DILocation(line: 198, column: 10, scope: !2207)
!2210 = !DILocation(line: 198, scope: !2207)
!2211 = !DILocation(line: 198, column: 27, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !343, line: 198, column: 5)
!2213 = !DILocation(line: 198, column: 5, scope: !2207)
!2214 = !DILocation(line: 199, column: 9, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !343, line: 199, column: 9)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !343, line: 198, column: 39)
!2217 = !DILocation(line: 208, column: 5, scope: !2190)
!2218 = !DILocation(line: 199, scope: !2215)
!2219 = !DILocalVariable(name: "j", scope: !2215, file: !343, line: 199, type: !45)
!2220 = !DILocation(line: 0, scope: !2215)
!2221 = !DILocation(line: 199, column: 27, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2215, file: !343, line: 199, column: 9)
!2223 = !DILocation(line: 200, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !343, line: 200, column: 13)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !343, line: 199, column: 37)
!2226 = !DILocation(line: 200, scope: !2224)
!2227 = !DILocalVariable(name: "col", scope: !2224, file: !343, line: 200, type: !45)
!2228 = !DILocation(line: 0, scope: !2224)
!2229 = !DILocation(line: 200, column: 35, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !343, line: 200, column: 13)
!2231 = !DILocation(line: 201, column: 52, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !343, line: 200, column: 50)
!2233 = !DILocation(line: 201, column: 56, scope: !2232)
!2234 = !DILocation(line: 201, column: 47, scope: !2232)
!2235 = !DILocation(line: 201, column: 99, scope: !2232)
!2236 = !DILocation(line: 201, column: 103, scope: !2232)
!2237 = !DILocation(line: 201, column: 110, scope: !2232)
!2238 = !DILocation(line: 201, column: 123, scope: !2232)
!2239 = !DILocation(line: 201, column: 117, scope: !2232)
!2240 = !DILocation(line: 201, column: 115, scope: !2232)
!2241 = !DILocation(line: 201, column: 90, scope: !2232)
!2242 = !DILocation(line: 201, column: 21, scope: !2232)
!2243 = !DILocation(line: 200, column: 44, scope: !2230)
!2244 = !DILocation(line: 200, column: 13, scope: !2230)
!2245 = distinct !{!2245, !2223, !2246, !323}
!2246 = !DILocation(line: 202, column: 13, scope: !2224)
!2247 = !DILocation(line: 199, column: 33, scope: !2222)
!2248 = !DILocation(line: 199, column: 9, scope: !2222)
!2249 = distinct !{!2249, !2214, !2250, !323}
!2250 = !DILocation(line: 203, column: 9, scope: !2215)
!2251 = !DILocation(line: 198, column: 35, scope: !2212)
!2252 = !DILocation(line: 198, column: 5, scope: !2212)
!2253 = distinct !{!2253, !2213, !2254, !323}
!2254 = !DILocation(line: 204, column: 5, scope: !2207)
!2255 = !DILocalVariable(name: "i", scope: !2190, file: !343, line: 207, type: !45)
!2256 = !DILocation(line: 208, column: 14, scope: !2190)
!2257 = !DILocation(line: 209, column: 54, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2190, file: !343, line: 208, column: 21)
!2259 = !DILocation(line: 209, column: 82, scope: !2258)
!2260 = !DILocation(line: 209, column: 9, scope: !2258)
!2261 = !DILocation(line: 210, column: 10, scope: !2258)
!2262 = distinct !{!2262, !2217, !2263, !323}
!2263 = !DILocation(line: 211, column: 5, scope: !2190)
!2264 = !DILocation(line: 212, column: 1, scope: !2190)
!2265 = distinct !DISubprogram(name: "m_vec_add", scope: !457, file: !457, line: 22, type: !2266, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !45, !346, !5}
!2268 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2265, file: !457, line: 22, type: !45)
!2269 = !DILocation(line: 0, scope: !2265)
!2270 = !DILocalVariable(name: "in", arg: 2, scope: !2265, file: !457, line: 22, type: !346)
!2271 = !DILocalVariable(name: "acc", arg: 3, scope: !2265, file: !457, line: 22, type: !5)
!2272 = !DILocalVariable(name: "i", scope: !2273, file: !457, line: 24, type: !15)
!2273 = distinct !DILexicalBlock(scope: !2265, file: !457, line: 24, column: 5)
!2274 = !DILocation(line: 0, scope: !2273)
!2275 = !DILocation(line: 24, column: 10, scope: !2273)
!2276 = !DILocation(line: 24, scope: !2273)
!2277 = !DILocation(line: 24, column: 26, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !457, line: 24, column: 5)
!2279 = !DILocation(line: 24, column: 5, scope: !2273)
!2280 = !DILocation(line: 26, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !457, line: 25, column: 5)
!2282 = !DILocation(line: 26, column: 9, scope: !2281)
!2283 = !DILocation(line: 26, column: 16, scope: !2281)
!2284 = !DILocation(line: 24, column: 46, scope: !2278)
!2285 = !DILocation(line: 24, column: 5, scope: !2278)
!2286 = distinct !{!2286, !2279, !2287, !323}
!2287 = !DILocation(line: 27, column: 5, scope: !2273)
!2288 = !DILocation(line: 28, column: 1, scope: !2265)
!2289 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !457, file: !457, line: 66, type: !2290, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !45, !5, !5}
!2292 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2289, file: !457, line: 66, type: !45)
!2293 = !DILocation(line: 0, scope: !2289)
!2294 = !DILocalVariable(name: "bins", arg: 2, scope: !2289, file: !457, line: 66, type: !5)
!2295 = !DILocalVariable(name: "out", arg: 3, scope: !2289, file: !457, line: 66, type: !5)
!2296 = !DILocation(line: 67, column: 44, scope: !2289)
!2297 = !DILocation(line: 67, column: 73, scope: !2289)
!2298 = !DILocation(line: 67, column: 5, scope: !2289)
!2299 = !DILocation(line: 68, column: 40, scope: !2289)
!2300 = !DILocation(line: 68, column: 69, scope: !2289)
!2301 = !DILocation(line: 68, column: 5, scope: !2289)
!2302 = !DILocation(line: 69, column: 44, scope: !2289)
!2303 = !DILocation(line: 69, column: 74, scope: !2289)
!2304 = !DILocation(line: 69, column: 5, scope: !2289)
!2305 = !DILocation(line: 70, column: 40, scope: !2289)
!2306 = !DILocation(line: 70, column: 69, scope: !2289)
!2307 = !DILocation(line: 70, column: 5, scope: !2289)
!2308 = !DILocation(line: 71, column: 44, scope: !2289)
!2309 = !DILocation(line: 71, column: 73, scope: !2289)
!2310 = !DILocation(line: 71, column: 5, scope: !2289)
!2311 = !DILocation(line: 72, column: 40, scope: !2289)
!2312 = !DILocation(line: 72, column: 69, scope: !2289)
!2313 = !DILocation(line: 72, column: 5, scope: !2289)
!2314 = !DILocation(line: 73, column: 44, scope: !2289)
!2315 = !DILocation(line: 73, column: 74, scope: !2289)
!2316 = !DILocation(line: 73, column: 5, scope: !2289)
!2317 = !DILocation(line: 74, column: 40, scope: !2289)
!2318 = !DILocation(line: 74, column: 69, scope: !2289)
!2319 = !DILocation(line: 74, column: 5, scope: !2289)
!2320 = !DILocation(line: 75, column: 44, scope: !2289)
!2321 = !DILocation(line: 75, column: 74, scope: !2289)
!2322 = !DILocation(line: 75, column: 5, scope: !2289)
!2323 = !DILocation(line: 76, column: 40, scope: !2289)
!2324 = !DILocation(line: 76, column: 69, scope: !2289)
!2325 = !DILocation(line: 76, column: 5, scope: !2289)
!2326 = !DILocation(line: 77, column: 44, scope: !2289)
!2327 = !DILocation(line: 77, column: 74, scope: !2289)
!2328 = !DILocation(line: 77, column: 5, scope: !2289)
!2329 = !DILocation(line: 78, column: 40, scope: !2289)
!2330 = !DILocation(line: 78, column: 69, scope: !2289)
!2331 = !DILocation(line: 78, column: 5, scope: !2289)
!2332 = !DILocation(line: 79, column: 44, scope: !2289)
!2333 = !DILocation(line: 79, column: 74, scope: !2289)
!2334 = !DILocation(line: 79, column: 5, scope: !2289)
!2335 = !DILocation(line: 80, column: 40, scope: !2289)
!2336 = !DILocation(line: 80, column: 69, scope: !2289)
!2337 = !DILocation(line: 80, column: 5, scope: !2289)
!2338 = !DILocation(line: 81, column: 35, scope: !2289)
!2339 = !DILocation(line: 81, column: 5, scope: !2289)
!2340 = !DILocation(line: 82, column: 1, scope: !2289)
!2341 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !457, file: !457, line: 56, type: !2266, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2342 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2341, file: !457, line: 56, type: !45)
!2343 = !DILocation(line: 0, scope: !2341)
!2344 = !DILocalVariable(name: "in", arg: 2, scope: !2341, file: !457, line: 56, type: !346)
!2345 = !DILocalVariable(name: "acc", arg: 3, scope: !2341, file: !457, line: 56, type: !5)
!2346 = !DILocalVariable(name: "mask_lsb", scope: !2341, file: !457, line: 58, type: !6)
!2347 = !DILocalVariable(name: "i", scope: !2348, file: !457, line: 59, type: !45)
!2348 = distinct !DILexicalBlock(scope: !2341, file: !457, line: 59, column: 5)
!2349 = !DILocation(line: 0, scope: !2348)
!2350 = !DILocation(line: 59, column: 9, scope: !2348)
!2351 = !DILocation(line: 59, scope: !2348)
!2352 = !DILocation(line: 59, column: 20, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !457, line: 59, column: 5)
!2354 = !DILocation(line: 59, column: 5, scope: !2348)
!2355 = !DILocation(line: 60, column: 22, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !457, line: 59, column: 43)
!2357 = !DILocation(line: 60, column: 28, scope: !2356)
!2358 = !DILocalVariable(name: "t", scope: !2356, file: !457, line: 60, type: !6)
!2359 = !DILocation(line: 0, scope: !2356)
!2360 = !DILocation(line: 61, column: 32, scope: !2356)
!2361 = !DILocation(line: 61, column: 43, scope: !2356)
!2362 = !DILocation(line: 61, column: 38, scope: !2356)
!2363 = !DILocation(line: 61, column: 9, scope: !2356)
!2364 = !DILocation(line: 61, column: 16, scope: !2356)
!2365 = !DILocation(line: 59, column: 40, scope: !2353)
!2366 = !DILocation(line: 59, column: 5, scope: !2353)
!2367 = distinct !{!2367, !2354, !2368, !323}
!2368 = !DILocation(line: 62, column: 5, scope: !2348)
!2369 = !DILocation(line: 63, column: 1, scope: !2341)
!2370 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !457, file: !457, line: 46, type: !2266, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2371 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2370, file: !457, line: 46, type: !45)
!2372 = !DILocation(line: 0, scope: !2370)
!2373 = !DILocalVariable(name: "in", arg: 2, scope: !2370, file: !457, line: 46, type: !346)
!2374 = !DILocalVariable(name: "acc", arg: 3, scope: !2370, file: !457, line: 46, type: !5)
!2375 = !DILocalVariable(name: "mask_msb", scope: !2370, file: !457, line: 48, type: !6)
!2376 = !DILocalVariable(name: "i", scope: !2377, file: !457, line: 49, type: !45)
!2377 = distinct !DILexicalBlock(scope: !2370, file: !457, line: 49, column: 5)
!2378 = !DILocation(line: 0, scope: !2377)
!2379 = !DILocation(line: 49, column: 9, scope: !2377)
!2380 = !DILocation(line: 49, scope: !2377)
!2381 = !DILocation(line: 49, column: 20, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !457, line: 49, column: 5)
!2383 = !DILocation(line: 49, column: 5, scope: !2377)
!2384 = !DILocation(line: 50, column: 22, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !457, line: 49, column: 43)
!2386 = !DILocalVariable(name: "t", scope: !2385, file: !457, line: 50, type: !6)
!2387 = !DILocation(line: 0, scope: !2385)
!2388 = !DILocation(line: 51, column: 32, scope: !2385)
!2389 = !DILocation(line: 51, column: 44, scope: !2385)
!2390 = !DILocation(line: 51, column: 50, scope: !2385)
!2391 = !DILocation(line: 51, column: 38, scope: !2385)
!2392 = !DILocation(line: 51, column: 9, scope: !2385)
!2393 = !DILocation(line: 51, column: 16, scope: !2385)
!2394 = !DILocation(line: 49, column: 40, scope: !2382)
!2395 = !DILocation(line: 49, column: 5, scope: !2382)
!2396 = distinct !{!2396, !2383, !2397, !323}
!2397 = !DILocation(line: 52, column: 5, scope: !2377)
!2398 = !DILocation(line: 53, column: 1, scope: !2370)
!2399 = distinct !DISubprogram(name: "m_vec_copy", scope: !457, file: !457, line: 13, type: !2266, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2400 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2399, file: !457, line: 13, type: !45)
!2401 = !DILocation(line: 0, scope: !2399)
!2402 = !DILocalVariable(name: "in", arg: 2, scope: !2399, file: !457, line: 13, type: !346)
!2403 = !DILocalVariable(name: "out", arg: 3, scope: !2399, file: !457, line: 13, type: !5)
!2404 = !DILocalVariable(name: "i", scope: !2405, file: !457, line: 15, type: !15)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !457, line: 15, column: 5)
!2406 = !DILocation(line: 0, scope: !2405)
!2407 = !DILocation(line: 15, column: 10, scope: !2405)
!2408 = !DILocation(line: 15, scope: !2405)
!2409 = !DILocation(line: 15, column: 26, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !457, line: 15, column: 5)
!2411 = !DILocation(line: 15, column: 5, scope: !2405)
!2412 = !DILocation(line: 17, column: 18, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !457, line: 16, column: 5)
!2414 = !DILocation(line: 17, column: 9, scope: !2413)
!2415 = !DILocation(line: 17, column: 16, scope: !2413)
!2416 = !DILocation(line: 15, column: 46, scope: !2410)
!2417 = !DILocation(line: 15, column: 5, scope: !2410)
!2418 = distinct !{!2418, !2411, !2419, !323}
!2419 = !DILocation(line: 18, column: 5, scope: !2405)
!2420 = !DILocation(line: 19, column: 1, scope: !2399)
!2421 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_m_upper", scope: !58, file: !58, line: 14, type: !2422, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2424, !346, !5, !45}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2427)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2427, file: !36, line: 266, baseType: !45, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2427, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2427, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2427, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2427, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2427, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2427, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2427, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2427, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2427, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2427, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2427, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2427, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2427, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2427, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2427, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2427, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2427, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2427, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2427, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2427, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2427, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2427, file: !36, line: 288, baseType: !128, size: 32, offset: 704)
!2452 = !DILocalVariable(name: "p", arg: 1, scope: !2421, file: !58, line: 14, type: !2424)
!2453 = !DILocation(line: 0, scope: !2421)
!2454 = !DILocalVariable(name: "in", arg: 2, scope: !2421, file: !58, line: 14, type: !346)
!2455 = !DILocalVariable(name: "out", arg: 3, scope: !2421, file: !58, line: 14, type: !5)
!2456 = !DILocalVariable(name: "size", arg: 4, scope: !2421, file: !58, line: 14, type: !45)
!2457 = !DILocalVariable(name: "m_vec_limbs", scope: !2421, file: !58, line: 19, type: !259)
!2458 = !DILocalVariable(name: "m_vecs_stored", scope: !2421, file: !58, line: 20, type: !45)
!2459 = !DILocalVariable(name: "r", scope: !2460, file: !58, line: 21, type: !45)
!2460 = distinct !DILexicalBlock(scope: !2421, file: !58, line: 21, column: 5)
!2461 = !DILocation(line: 0, scope: !2460)
!2462 = !DILocation(line: 21, column: 10, scope: !2460)
!2463 = !DILocation(line: 20, column: 9, scope: !2421)
!2464 = !DILocation(line: 21, scope: !2460)
!2465 = !DILocation(line: 21, column: 23, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2460, file: !58, line: 21, column: 5)
!2467 = !DILocation(line: 21, column: 5, scope: !2460)
!2468 = !DILocation(line: 22, column: 9, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !58, line: 22, column: 9)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !58, line: 21, column: 36)
!2471 = !DILocation(line: 22, scope: !2469)
!2472 = !DILocalVariable(name: "c", scope: !2469, file: !58, line: 22, type: !45)
!2473 = !DILocation(line: 0, scope: !2469)
!2474 = !DILocation(line: 22, column: 27, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2469, file: !58, line: 22, column: 9)
!2476 = !DILocation(line: 23, column: 59, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2475, file: !58, line: 22, column: 40)
!2478 = !DILocation(line: 23, column: 66, scope: !2477)
!2479 = !DILocation(line: 23, column: 40, scope: !2477)
!2480 = !DILocation(line: 23, column: 76, scope: !2477)
!2481 = !DILocation(line: 23, column: 13, scope: !2477)
!2482 = !DILocation(line: 24, column: 19, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !58, line: 24, column: 17)
!2484 = !DILocation(line: 25, column: 62, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2483, file: !58, line: 24, column: 25)
!2486 = !DILocation(line: 25, column: 69, scope: !2485)
!2487 = !DILocation(line: 25, column: 43, scope: !2485)
!2488 = !DILocation(line: 25, column: 79, scope: !2485)
!2489 = !DILocation(line: 25, column: 17, scope: !2485)
!2490 = !DILocation(line: 26, column: 13, scope: !2485)
!2491 = !DILocation(line: 27, column: 27, scope: !2477)
!2492 = !DILocation(line: 22, column: 36, scope: !2475)
!2493 = !DILocation(line: 22, column: 9, scope: !2475)
!2494 = distinct !{!2494, !2468, !2495, !323}
!2495 = !DILocation(line: 28, column: 9, scope: !2469)
!2496 = !DILocation(line: 21, column: 32, scope: !2466)
!2497 = !DILocation(line: 21, column: 5, scope: !2466)
!2498 = distinct !{!2498, !2467, !2499, !323}
!2499 = !DILocation(line: 29, column: 5, scope: !2460)
!2500 = !DILocation(line: 30, column: 1, scope: !2421)
!2501 = distinct !DISubprogram(name: "m_vec_copy", scope: !457, file: !457, line: 13, type: !2266, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2502 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2501, file: !457, line: 13, type: !45)
!2503 = !DILocation(line: 0, scope: !2501)
!2504 = !DILocalVariable(name: "in", arg: 2, scope: !2501, file: !457, line: 13, type: !346)
!2505 = !DILocalVariable(name: "out", arg: 3, scope: !2501, file: !457, line: 13, type: !5)
!2506 = !DILocalVariable(name: "i", scope: !2507, file: !457, line: 15, type: !15)
!2507 = distinct !DILexicalBlock(scope: !2501, file: !457, line: 15, column: 5)
!2508 = !DILocation(line: 0, scope: !2507)
!2509 = !DILocation(line: 15, column: 10, scope: !2507)
!2510 = !DILocation(line: 15, scope: !2507)
!2511 = !DILocation(line: 15, column: 26, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !457, line: 15, column: 5)
!2513 = !DILocation(line: 15, column: 5, scope: !2507)
!2514 = !DILocation(line: 17, column: 18, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !457, line: 16, column: 5)
!2516 = !DILocation(line: 17, column: 9, scope: !2515)
!2517 = !DILocation(line: 17, column: 16, scope: !2515)
!2518 = !DILocation(line: 15, column: 46, scope: !2512)
!2519 = !DILocation(line: 15, column: 5, scope: !2512)
!2520 = distinct !{!2520, !2513, !2521, !323}
!2521 = !DILocation(line: 18, column: 5, scope: !2507)
!2522 = !DILocation(line: 19, column: 1, scope: !2501)
!2523 = distinct !DISubprogram(name: "m_vec_add", scope: !457, file: !457, line: 22, type: !2266, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2524 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2523, file: !457, line: 22, type: !45)
!2525 = !DILocation(line: 0, scope: !2523)
!2526 = !DILocalVariable(name: "in", arg: 2, scope: !2523, file: !457, line: 22, type: !346)
!2527 = !DILocalVariable(name: "acc", arg: 3, scope: !2523, file: !457, line: 22, type: !5)
!2528 = !DILocalVariable(name: "i", scope: !2529, file: !457, line: 24, type: !15)
!2529 = distinct !DILexicalBlock(scope: !2523, file: !457, line: 24, column: 5)
!2530 = !DILocation(line: 0, scope: !2529)
!2531 = !DILocation(line: 24, column: 10, scope: !2529)
!2532 = !DILocation(line: 24, scope: !2529)
!2533 = !DILocation(line: 24, column: 26, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !457, line: 24, column: 5)
!2535 = !DILocation(line: 24, column: 5, scope: !2529)
!2536 = !DILocation(line: 26, column: 19, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !457, line: 25, column: 5)
!2538 = !DILocation(line: 26, column: 9, scope: !2537)
!2539 = !DILocation(line: 26, column: 16, scope: !2537)
!2540 = !DILocation(line: 24, column: 46, scope: !2534)
!2541 = !DILocation(line: 24, column: 5, scope: !2534)
!2542 = distinct !{!2542, !2535, !2543, !323}
!2543 = !DILocation(line: 27, column: 5, scope: !2529)
!2544 = !DILocation(line: 28, column: 1, scope: !2523)
!2545 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2546, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!45, !2424, !18, !49, !49, !18, !45, !45, !45, !45}
!2548 = !DILocalVariable(name: "p", arg: 1, scope: !2545, file: !58, line: 40, type: !2424)
!2549 = !DILocation(line: 0, scope: !2545)
!2550 = !DILocalVariable(name: "A", arg: 2, scope: !2545, file: !58, line: 40, type: !18)
!2551 = !DILocalVariable(name: "y", arg: 3, scope: !2545, file: !58, line: 41, type: !49)
!2552 = !DILocalVariable(name: "r", arg: 4, scope: !2545, file: !58, line: 41, type: !49)
!2553 = !DILocalVariable(name: "x", arg: 5, scope: !2545, file: !58, line: 42, type: !18)
!2554 = !DILocalVariable(name: "k", arg: 6, scope: !2545, file: !58, line: 42, type: !45)
!2555 = !DILocalVariable(name: "o", arg: 7, scope: !2545, file: !58, line: 42, type: !45)
!2556 = !DILocalVariable(name: "m", arg: 8, scope: !2545, file: !58, line: 42, type: !45)
!2557 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2545, file: !58, line: 42, type: !45)
!2558 = !DILocalVariable(name: "i", scope: !2559, file: !58, line: 51, type: !45)
!2559 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 51, column: 5)
!2560 = !DILocation(line: 0, scope: !2559)
!2561 = !DILocation(line: 51, column: 10, scope: !2559)
!2562 = !DILocation(line: 51, scope: !2559)
!2563 = !DILocation(line: 51, column: 23, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !58, line: 51, column: 5)
!2565 = !DILocation(line: 51, column: 5, scope: !2559)
!2566 = !DILocation(line: 57, column: 5, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 57, column: 5)
!2568 = !DILocation(line: 52, column: 16, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2564, file: !58, line: 51, column: 37)
!2570 = !DILocation(line: 52, column: 9, scope: !2569)
!2571 = !DILocation(line: 52, column: 14, scope: !2569)
!2572 = !DILocation(line: 51, column: 33, scope: !2564)
!2573 = !DILocation(line: 51, column: 5, scope: !2564)
!2574 = distinct !{!2574, !2565, !2575, !323}
!2575 = !DILocation(line: 53, column: 5, scope: !2559)
!2576 = !DILocation(line: 57, scope: !2567)
!2577 = !DILocalVariable(name: "i", scope: !2567, file: !58, line: 57, type: !45)
!2578 = !DILocation(line: 0, scope: !2567)
!2579 = !DILocation(line: 57, column: 23, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2567, file: !58, line: 57, column: 5)
!2581 = !DILocation(line: 58, column: 13, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2580, file: !58, line: 57, column: 33)
!2583 = !DILocation(line: 58, column: 26, scope: !2582)
!2584 = !DILocation(line: 58, column: 30, scope: !2582)
!2585 = !DILocation(line: 58, column: 21, scope: !2582)
!2586 = !DILocation(line: 58, column: 9, scope: !2582)
!2587 = !DILocation(line: 58, column: 36, scope: !2582)
!2588 = !DILocation(line: 57, column: 29, scope: !2580)
!2589 = !DILocation(line: 57, column: 5, scope: !2580)
!2590 = distinct !{!2590, !2566, !2591, !323}
!2591 = !DILocation(line: 59, column: 5, scope: !2567)
!2592 = !DILocation(line: 60, column: 25, scope: !2545)
!2593 = !DILocation(line: 60, column: 29, scope: !2545)
!2594 = !DILocation(line: 60, column: 5, scope: !2545)
!2595 = !DILocalVariable(name: "i", scope: !2596, file: !58, line: 63, type: !45)
!2596 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 63, column: 5)
!2597 = !DILocation(line: 0, scope: !2596)
!2598 = !DILocation(line: 63, column: 10, scope: !2596)
!2599 = !DILocation(line: 63, scope: !2596)
!2600 = !DILocation(line: 63, column: 23, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !58, line: 63, column: 5)
!2602 = !DILocation(line: 63, column: 5, scope: !2596)
!2603 = !DILocation(line: 64, column: 44, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !58, line: 63, column: 33)
!2605 = !DILocation(line: 64, column: 50, scope: !2604)
!2606 = !DILocation(line: 64, column: 38, scope: !2604)
!2607 = !DILocation(line: 64, column: 13, scope: !2604)
!2608 = !DILocation(line: 64, column: 26, scope: !2604)
!2609 = !DILocation(line: 64, column: 30, scope: !2604)
!2610 = !DILocation(line: 64, column: 21, scope: !2604)
!2611 = !DILocation(line: 64, column: 9, scope: !2604)
!2612 = !DILocation(line: 64, column: 36, scope: !2604)
!2613 = !DILocation(line: 63, column: 29, scope: !2601)
!2614 = !DILocation(line: 63, column: 5, scope: !2601)
!2615 = distinct !{!2615, !2602, !2616, !323}
!2616 = !DILocation(line: 65, column: 5, scope: !2596)
!2617 = !DILocation(line: 67, column: 16, scope: !2545)
!2618 = !DILocation(line: 67, column: 20, scope: !2545)
!2619 = !DILocation(line: 67, column: 5, scope: !2545)
!2620 = !DILocalVariable(name: "full_rank", scope: !2545, file: !58, line: 70, type: !14)
!2621 = !DILocalVariable(name: "i", scope: !2622, file: !58, line: 71, type: !45)
!2622 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 71, column: 5)
!2623 = !DILocation(line: 0, scope: !2622)
!2624 = !DILocation(line: 71, column: 10, scope: !2622)
!2625 = !DILocation(line: 71, scope: !2622)
!2626 = !DILocation(line: 71, column: 23, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2622, file: !58, line: 71, column: 5)
!2628 = !DILocation(line: 71, column: 5, scope: !2622)
!2629 = !DILocation(line: 72, column: 27, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !58, line: 71, column: 42)
!2631 = !DILocation(line: 72, column: 32, scope: !2630)
!2632 = !DILocation(line: 72, column: 22, scope: !2630)
!2633 = !DILocation(line: 72, column: 19, scope: !2630)
!2634 = !DILocation(line: 71, column: 38, scope: !2627)
!2635 = !DILocation(line: 71, column: 5, scope: !2627)
!2636 = distinct !{!2636, !2628, !2637, !323}
!2637 = !DILocation(line: 73, column: 5, scope: !2622)
!2638 = !DILocation(line: 80, column: 19, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 80, column: 9)
!2640 = !DILocation(line: 88, column: 5, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 88, column: 5)
!2642 = distinct !{!2642, !2640, !2643, !323}
!2643 = !DILocation(line: 122, column: 5, scope: !2641)
!2644 = !DILocation(line: 88, scope: !2641)
!2645 = !DILocalVariable(name: "row", scope: !2641, file: !58, line: 88, type: !45)
!2646 = !DILocation(line: 0, scope: !2641)
!2647 = !DILocation(line: 88, column: 31, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2641, file: !58, line: 88, column: 5)
!2649 = !DILocalVariable(name: "finished", scope: !2545, file: !58, line: 46, type: !14)
!2650 = !DILocation(line: 90, column: 27, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !58, line: 88, column: 44)
!2652 = !DILocalVariable(name: "col_upper_bound", scope: !2545, file: !58, line: 47, type: !45)
!2653 = !DILocalVariable(name: "col", scope: !2654, file: !58, line: 93, type: !45)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !58, line: 93, column: 9)
!2655 = !DILocation(line: 0, scope: !2654)
!2656 = !DILocation(line: 93, column: 14, scope: !2654)
!2657 = !DILocation(line: 0, scope: !2651)
!2658 = !DILocation(line: 93, scope: !2654)
!2659 = !DILocation(line: 93, column: 33, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !58, line: 93, column: 9)
!2661 = !DILocation(line: 93, column: 9, scope: !2654)
!2662 = !DILocation(line: 97, column: 50, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !58, line: 93, column: 60)
!2664 = !DILocation(line: 97, column: 44, scope: !2663)
!2665 = !DILocation(line: 97, column: 30, scope: !2663)
!2666 = !DILocation(line: 97, column: 73, scope: !2663)
!2667 = !DILocalVariable(name: "correct_column", scope: !2545, file: !58, line: 48, type: !14)
!2668 = !DILocation(line: 99, column: 63, scope: !2663)
!2669 = !DILocation(line: 99, column: 48, scope: !2663)
!2670 = !DILocation(line: 99, column: 46, scope: !2663)
!2671 = !DILocalVariable(name: "u", scope: !2663, file: !58, line: 99, type: !14)
!2672 = !DILocation(line: 0, scope: !2663)
!2673 = !DILocation(line: 100, column: 13, scope: !2663)
!2674 = !DILocation(line: 100, column: 20, scope: !2663)
!2675 = !DILocalVariable(name: "i", scope: !2676, file: !58, line: 102, type: !45)
!2676 = distinct !DILexicalBlock(scope: !2663, file: !58, line: 102, column: 13)
!2677 = !DILocation(line: 0, scope: !2676)
!2678 = !DILocation(line: 102, column: 18, scope: !2676)
!2679 = !DILocation(line: 102, scope: !2676)
!2680 = !DILocation(line: 102, column: 31, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !58, line: 102, column: 13)
!2682 = !DILocation(line: 102, column: 13, scope: !2676)
!2683 = !DILocation(line: 103, column: 53, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2681, file: !58, line: 102, column: 46)
!2685 = !DILocation(line: 103, column: 45, scope: !2684)
!2686 = !DILocation(line: 103, column: 34, scope: !2684)
!2687 = !DILocation(line: 103, column: 95, scope: !2684)
!2688 = !DILocation(line: 103, column: 99, scope: !2684)
!2689 = !DILocation(line: 103, column: 91, scope: !2684)
!2690 = !DILocation(line: 103, column: 80, scope: !2684)
!2691 = !DILocation(line: 103, column: 115, scope: !2684)
!2692 = !DILocation(line: 103, column: 76, scope: !2684)
!2693 = !DILocation(line: 104, column: 49, scope: !2684)
!2694 = !DILocation(line: 104, column: 53, scope: !2684)
!2695 = !DILocation(line: 104, column: 45, scope: !2684)
!2696 = !DILocation(line: 104, column: 34, scope: !2684)
!2697 = !DILocation(line: 104, column: 69, scope: !2684)
!2698 = !DILocation(line: 104, column: 30, scope: !2684)
!2699 = !DILocation(line: 104, column: 95, scope: !2684)
!2700 = !DILocation(line: 104, column: 99, scope: !2684)
!2701 = !DILocation(line: 104, column: 91, scope: !2684)
!2702 = !DILocation(line: 104, column: 80, scope: !2684)
!2703 = !DILocation(line: 104, column: 115, scope: !2684)
!2704 = !DILocation(line: 104, column: 76, scope: !2684)
!2705 = !DILocation(line: 105, column: 49, scope: !2684)
!2706 = !DILocation(line: 105, column: 53, scope: !2684)
!2707 = !DILocation(line: 105, column: 45, scope: !2684)
!2708 = !DILocation(line: 105, column: 34, scope: !2684)
!2709 = !DILocation(line: 105, column: 69, scope: !2684)
!2710 = !DILocation(line: 105, column: 30, scope: !2684)
!2711 = !DILocation(line: 105, column: 95, scope: !2684)
!2712 = !DILocation(line: 105, column: 99, scope: !2684)
!2713 = !DILocation(line: 105, column: 91, scope: !2684)
!2714 = !DILocation(line: 105, column: 80, scope: !2684)
!2715 = !DILocation(line: 105, column: 115, scope: !2684)
!2716 = !DILocation(line: 105, column: 76, scope: !2684)
!2717 = !DILocation(line: 106, column: 49, scope: !2684)
!2718 = !DILocation(line: 106, column: 53, scope: !2684)
!2719 = !DILocation(line: 106, column: 45, scope: !2684)
!2720 = !DILocation(line: 106, column: 34, scope: !2684)
!2721 = !DILocation(line: 106, column: 69, scope: !2684)
!2722 = !DILocation(line: 106, column: 30, scope: !2684)
!2723 = !DILocation(line: 106, column: 95, scope: !2684)
!2724 = !DILocation(line: 106, column: 99, scope: !2684)
!2725 = !DILocation(line: 106, column: 91, scope: !2684)
!2726 = !DILocation(line: 106, column: 80, scope: !2684)
!2727 = !DILocation(line: 106, column: 115, scope: !2684)
!2728 = !DILocation(line: 106, column: 76, scope: !2684)
!2729 = !DILocalVariable(name: "tmp", scope: !2684, file: !58, line: 103, type: !6)
!2730 = !DILocation(line: 0, scope: !2684)
!2731 = !DILocation(line: 108, column: 23, scope: !2684)
!2732 = !DILocation(line: 110, column: 34, scope: !2684)
!2733 = !DILocation(line: 110, column: 17, scope: !2684)
!2734 = !DILocation(line: 110, column: 48, scope: !2684)
!2735 = !DILocation(line: 111, column: 56, scope: !2684)
!2736 = !DILocation(line: 111, column: 34, scope: !2684)
!2737 = !DILocation(line: 111, column: 17, scope: !2684)
!2738 = !DILocation(line: 111, column: 48, scope: !2684)
!2739 = !DILocation(line: 112, column: 56, scope: !2684)
!2740 = !DILocation(line: 112, column: 34, scope: !2684)
!2741 = !DILocation(line: 112, column: 17, scope: !2684)
!2742 = !DILocation(line: 112, column: 48, scope: !2684)
!2743 = !DILocation(line: 113, column: 56, scope: !2684)
!2744 = !DILocation(line: 113, column: 34, scope: !2684)
!2745 = !DILocation(line: 113, column: 17, scope: !2684)
!2746 = !DILocation(line: 113, column: 48, scope: !2684)
!2747 = !DILocation(line: 114, column: 56, scope: !2684)
!2748 = !DILocation(line: 114, column: 34, scope: !2684)
!2749 = !DILocation(line: 114, column: 17, scope: !2684)
!2750 = !DILocation(line: 114, column: 48, scope: !2684)
!2751 = !DILocation(line: 115, column: 56, scope: !2684)
!2752 = !DILocation(line: 115, column: 34, scope: !2684)
!2753 = !DILocation(line: 115, column: 17, scope: !2684)
!2754 = !DILocation(line: 115, column: 48, scope: !2684)
!2755 = !DILocation(line: 116, column: 56, scope: !2684)
!2756 = !DILocation(line: 116, column: 34, scope: !2684)
!2757 = !DILocation(line: 116, column: 17, scope: !2684)
!2758 = !DILocation(line: 116, column: 48, scope: !2684)
!2759 = !DILocation(line: 117, column: 56, scope: !2684)
!2760 = !DILocation(line: 117, column: 34, scope: !2684)
!2761 = !DILocation(line: 117, column: 17, scope: !2684)
!2762 = !DILocation(line: 117, column: 48, scope: !2684)
!2763 = !DILocation(line: 102, column: 40, scope: !2681)
!2764 = !DILocation(line: 102, column: 13, scope: !2681)
!2765 = distinct !{!2765, !2682, !2766, !323}
!2766 = !DILocation(line: 118, column: 13, scope: !2676)
!2767 = !DILocation(line: 120, column: 33, scope: !2663)
!2768 = !DILocation(line: 93, column: 56, scope: !2660)
!2769 = !DILocation(line: 93, column: 9, scope: !2660)
!2770 = distinct !{!2770, !2661, !2771, !323}
!2771 = !DILocation(line: 121, column: 9, scope: !2654)
!2772 = !DILocation(line: 124, column: 1, scope: !2545)
!2773 = distinct !DISubprogram(name: "mat_mul", scope: !513, file: !513, line: 79, type: !1455, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2774 = !DILocalVariable(name: "a", arg: 1, scope: !2773, file: !513, line: 79, type: !49)
!2775 = !DILocation(line: 0, scope: !2773)
!2776 = !DILocalVariable(name: "b", arg: 2, scope: !2773, file: !513, line: 79, type: !49)
!2777 = !DILocalVariable(name: "c", arg: 3, scope: !2773, file: !513, line: 80, type: !18)
!2778 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2773, file: !513, line: 80, type: !45)
!2779 = !DILocalVariable(name: "row_a", arg: 5, scope: !2773, file: !513, line: 80, type: !45)
!2780 = !DILocalVariable(name: "col_b", arg: 6, scope: !2773, file: !513, line: 80, type: !45)
!2781 = !DILocalVariable(name: "i", scope: !2782, file: !513, line: 81, type: !45)
!2782 = distinct !DILexicalBlock(scope: !2773, file: !513, line: 81, column: 5)
!2783 = !DILocation(line: 0, scope: !2782)
!2784 = !DILocation(line: 81, column: 10, scope: !2782)
!2785 = !DILocation(line: 81, scope: !2782)
!2786 = !DILocation(line: 81, column: 23, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !513, line: 81, column: 5)
!2788 = !DILocation(line: 81, column: 5, scope: !2782)
!2789 = !DILocation(line: 82, column: 9, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !513, line: 82, column: 9)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !513, line: 81, column: 53)
!2792 = !DILocation(line: 82, scope: !2790)
!2793 = !DILocalVariable(name: "j", scope: !2790, file: !513, line: 82, type: !45)
!2794 = !DILocation(line: 0, scope: !2790)
!2795 = !DILocation(line: 83, column: 18, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !513, line: 82, column: 46)
!2797 = distinct !DILexicalBlock(scope: !2790, file: !513, line: 82, column: 9)
!2798 = !DILocation(line: 83, column: 16, scope: !2796)
!2799 = !DILocation(line: 82, column: 41, scope: !2797)
!2800 = !DILocation(line: 82, column: 9, scope: !2797)
!2801 = distinct !{!2801, !2789, !2802, !323}
!2802 = !DILocation(line: 84, column: 9, scope: !2790)
!2803 = !DILocation(line: 81, column: 32, scope: !2787)
!2804 = !DILocation(line: 81, column: 39, scope: !2787)
!2805 = !DILocation(line: 81, column: 5, scope: !2787)
!2806 = distinct !{!2806, !2788, !2807, !323}
!2807 = !DILocation(line: 85, column: 5, scope: !2782)
!2808 = !DILocation(line: 86, column: 1, scope: !2773)
!2809 = distinct !DISubprogram(name: "sub_f", scope: !513, file: !513, line: 48, type: !1554, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2810 = !DILocalVariable(name: "a", arg: 1, scope: !2809, file: !513, line: 48, type: !14)
!2811 = !DILocation(line: 0, scope: !2809)
!2812 = !DILocalVariable(name: "b", arg: 2, scope: !2809, file: !513, line: 48, type: !14)
!2813 = !DILocation(line: 49, column: 14, scope: !2809)
!2814 = !DILocation(line: 49, column: 5, scope: !2809)
!2815 = distinct !DISubprogram(name: "EF", scope: !2816, file: !2816, line: 60, type: !2817, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2816 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !18, !45, !45}
!2819 = !DILocalVariable(name: "A", arg: 1, scope: !2815, file: !2816, line: 60, type: !18)
!2820 = !DILocation(line: 0, scope: !2815)
!2821 = !DILocalVariable(name: "nrows", arg: 2, scope: !2815, file: !2816, line: 60, type: !45)
!2822 = !DILocalVariable(name: "ncols", arg: 3, scope: !2815, file: !2816, line: 60, type: !45)
!2823 = !DILocalVariable(name: "_pivot_row", scope: !2815, file: !2816, line: 62, type: !2824, align: 256)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, elements: !2825)
!2825 = !{!2826}
!2826 = !DISubrange(count: 6)
!2827 = !DILocation(line: 62, column: 27, scope: !2815)
!2828 = !DILocalVariable(name: "_pivot_row2", scope: !2815, file: !2816, line: 63, type: !2824, align: 256)
!2829 = !DILocation(line: 63, column: 27, scope: !2815)
!2830 = !DILocalVariable(name: "packed_A", scope: !2815, file: !2816, line: 64, type: !2831, align: 256)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 29952, elements: !2832)
!2832 = !{!2833}
!2833 = !DISubrange(count: 468)
!2834 = !DILocation(line: 64, column: 27, scope: !2815)
!2835 = !DILocation(line: 66, column: 26, scope: !2815)
!2836 = !DILocation(line: 66, column: 32, scope: !2815)
!2837 = !DILocalVariable(name: "row_len", scope: !2815, file: !2816, line: 66, type: !45)
!2838 = !DILocalVariable(name: "i", scope: !2839, file: !2816, line: 69, type: !45)
!2839 = distinct !DILexicalBlock(scope: !2815, file: !2816, line: 69, column: 5)
!2840 = !DILocation(line: 0, scope: !2839)
!2841 = !DILocation(line: 69, column: 10, scope: !2839)
!2842 = !DILocation(line: 69, scope: !2839)
!2843 = !DILocation(line: 69, column: 23, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !2816, line: 69, column: 5)
!2845 = !DILocation(line: 69, column: 5, scope: !2839)
!2846 = !DILocation(line: 77, column: 5, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2815, file: !2816, line: 77, column: 5)
!2848 = !DILocation(line: 70, column: 29, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !2816, line: 69, column: 37)
!2850 = !DILocation(line: 70, column: 25, scope: !2849)
!2851 = !DILocation(line: 70, column: 51, scope: !2849)
!2852 = !DILocation(line: 70, column: 47, scope: !2849)
!2853 = !DILocation(line: 70, column: 9, scope: !2849)
!2854 = !DILocation(line: 69, column: 33, scope: !2844)
!2855 = !DILocation(line: 69, column: 5, scope: !2844)
!2856 = distinct !{!2856, !2845, !2857, !323}
!2857 = !DILocation(line: 71, column: 5, scope: !2839)
!2858 = !DILocation(line: 77, scope: !2847)
!2859 = !DILocalVariable(name: "pivot_row", scope: !2815, file: !2816, line: 76, type: !45)
!2860 = !DILocalVariable(name: "pivot_col", scope: !2847, file: !2816, line: 77, type: !45)
!2861 = !DILocation(line: 0, scope: !2847)
!2862 = !DILocation(line: 77, column: 39, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2847, file: !2816, line: 77, column: 5)
!2864 = !DILocation(line: 138, column: 5, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2815, file: !2816, line: 138, column: 5)
!2866 = !DILocation(line: 79, column: 37, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !2816, line: 77, column: 61)
!2868 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2867, file: !2816, line: 79, type: !45)
!2869 = !DILocation(line: 0, scope: !2867)
!2870 = !DILocation(line: 80, column: 37, scope: !2867)
!2871 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2867, file: !2816, line: 80, type: !45)
!2872 = !DILocalVariable(name: "i", scope: !2873, file: !2816, line: 85, type: !45)
!2873 = distinct !DILexicalBlock(scope: !2867, file: !2816, line: 85, column: 9)
!2874 = !DILocation(line: 0, scope: !2873)
!2875 = !DILocation(line: 85, column: 14, scope: !2873)
!2876 = !DILocation(line: 85, scope: !2873)
!2877 = !DILocation(line: 85, column: 27, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2873, file: !2816, line: 85, column: 9)
!2879 = !DILocation(line: 85, column: 9, scope: !2873)
!2880 = !DILocation(line: 93, column: 9, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2867, file: !2816, line: 93, column: 9)
!2882 = !DILocation(line: 86, column: 13, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2878, file: !2816, line: 85, column: 43)
!2884 = !DILocation(line: 86, column: 27, scope: !2883)
!2885 = !DILocation(line: 87, column: 13, scope: !2883)
!2886 = !DILocation(line: 87, column: 28, scope: !2883)
!2887 = !DILocation(line: 85, column: 39, scope: !2878)
!2888 = !DILocation(line: 85, column: 9, scope: !2878)
!2889 = distinct !{!2889, !2879, !2890, !323}
!2890 = !DILocation(line: 88, column: 9, scope: !2873)
!2891 = !DILocation(line: 0, scope: !2881)
!2892 = !DILocalVariable(name: "row", scope: !2881, file: !2816, line: 93, type: !45)
!2893 = !DILocalVariable(name: "pivot", scope: !2867, file: !2816, line: 91, type: !14)
!2894 = !DILocalVariable(name: "pivot_is_zero", scope: !2867, file: !2816, line: 92, type: !6)
!2895 = !DILocation(line: 94, column: 24, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2881, file: !2816, line: 93, column: 9)
!2897 = !DILocation(line: 94, column: 21, scope: !2896)
!2898 = !DILocation(line: 96, column: 38, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !2816, line: 94, column: 80)
!2900 = !DILocation(line: 96, column: 37, scope: !2899)
!2901 = !DILocalVariable(name: "is_pivot_row", scope: !2899, file: !2816, line: 96, type: !6)
!2902 = !DILocation(line: 0, scope: !2899)
!2903 = !DILocation(line: 97, column: 40, scope: !2899)
!2904 = !DILocalVariable(name: "below_pivot_row", scope: !2899, file: !2816, line: 97, type: !6)
!2905 = !DILocalVariable(name: "j", scope: !2906, file: !2816, line: 99, type: !45)
!2906 = distinct !DILexicalBlock(scope: !2899, file: !2816, line: 99, column: 13)
!2907 = !DILocation(line: 0, scope: !2906)
!2908 = !DILocation(line: 99, column: 18, scope: !2906)
!2909 = !DILocation(line: 99, scope: !2906)
!2910 = !DILocation(line: 99, column: 31, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2906, file: !2816, line: 99, column: 13)
!2912 = !DILocation(line: 99, column: 13, scope: !2906)
!2913 = !DILocation(line: 100, column: 67, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2911, file: !2816, line: 99, column: 47)
!2915 = !DILocation(line: 100, column: 48, scope: !2914)
!2916 = !DILocation(line: 101, column: 47, scope: !2914)
!2917 = !DILocation(line: 101, column: 57, scope: !2914)
!2918 = !DILocation(line: 101, column: 34, scope: !2914)
!2919 = !DILocation(line: 100, column: 85, scope: !2914)
!2920 = !DILocation(line: 100, column: 17, scope: !2914)
!2921 = !DILocation(line: 100, column: 31, scope: !2914)
!2922 = !DILocation(line: 99, column: 43, scope: !2911)
!2923 = !DILocation(line: 99, column: 13, scope: !2911)
!2924 = distinct !{!2924, !2912, !2925, !323}
!2925 = !DILocation(line: 102, column: 13, scope: !2906)
!2926 = !DILocation(line: 103, column: 21, scope: !2899)
!2927 = !DILocation(line: 104, column: 44, scope: !2899)
!2928 = !DILocation(line: 104, column: 30, scope: !2899)
!2929 = !DILocation(line: 104, column: 29, scope: !2899)
!2930 = !DILocation(line: 94, column: 76, scope: !2896)
!2931 = !DILocation(line: 93, column: 9, scope: !2896)
!2932 = distinct !{!2932, !2880, !2933, !323}
!2933 = !DILocation(line: 105, column: 9, scope: !2881)
!2934 = !DILocation(line: 108, column: 19, scope: !2867)
!2935 = !DILocalVariable(name: "inverse", scope: !2815, file: !2816, line: 75, type: !14)
!2936 = !DILocation(line: 109, column: 9, scope: !2867)
!2937 = !DILocalVariable(name: "row", scope: !2938, file: !2816, line: 113, type: !45)
!2938 = distinct !DILexicalBlock(scope: !2867, file: !2816, line: 113, column: 9)
!2939 = !DILocation(line: 0, scope: !2938)
!2940 = !DILocation(line: 113, column: 14, scope: !2938)
!2941 = !DILocation(line: 113, scope: !2938)
!2942 = !DILocation(line: 113, column: 51, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !2816, line: 113, column: 9)
!2944 = !DILocation(line: 113, column: 9, scope: !2938)
!2945 = !DILocation(line: 124, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2867, file: !2816, line: 124, column: 9)
!2947 = !DILocation(line: 114, column: 33, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2943, file: !2816, line: 113, column: 84)
!2949 = !DILocation(line: 114, column: 63, scope: !2948)
!2950 = !DILocalVariable(name: "do_copy", scope: !2948, file: !2816, line: 114, type: !6)
!2951 = !DILocation(line: 0, scope: !2948)
!2952 = !DILocalVariable(name: "do_not_copy", scope: !2948, file: !2816, line: 115, type: !6)
!2953 = !DILocalVariable(name: "col", scope: !2954, file: !2816, line: 116, type: !45)
!2954 = distinct !DILexicalBlock(scope: !2948, file: !2816, line: 116, column: 13)
!2955 = !DILocation(line: 0, scope: !2954)
!2956 = !DILocation(line: 116, column: 18, scope: !2954)
!2957 = !DILocation(line: 116, scope: !2954)
!2958 = !DILocation(line: 116, column: 35, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !2816, line: 116, column: 13)
!2960 = !DILocation(line: 116, column: 13, scope: !2954)
!2961 = !DILocation(line: 118, column: 49, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2959, file: !2816, line: 116, column: 53)
!2963 = !DILocation(line: 118, column: 59, scope: !2962)
!2964 = !DILocation(line: 118, column: 36, scope: !2962)
!2965 = !DILocation(line: 118, column: 34, scope: !2962)
!2966 = !DILocation(line: 119, column: 32, scope: !2962)
!2967 = !DILocation(line: 119, column: 30, scope: !2962)
!2968 = !DILocation(line: 118, column: 67, scope: !2962)
!2969 = !DILocation(line: 117, column: 30, scope: !2962)
!2970 = !DILocation(line: 117, column: 40, scope: !2962)
!2971 = !DILocation(line: 117, column: 17, scope: !2962)
!2972 = !DILocation(line: 117, column: 47, scope: !2962)
!2973 = !DILocation(line: 116, column: 49, scope: !2959)
!2974 = !DILocation(line: 116, column: 13, scope: !2959)
!2975 = distinct !{!2975, !2960, !2976, !323}
!2976 = !DILocation(line: 120, column: 13, scope: !2954)
!2977 = !DILocation(line: 113, column: 80, scope: !2943)
!2978 = !DILocation(line: 113, column: 9, scope: !2943)
!2979 = distinct !{!2979, !2944, !2980, !323}
!2980 = !DILocation(line: 121, column: 9, scope: !2938)
!2981 = !DILocation(line: 124, scope: !2946)
!2982 = !DILocalVariable(name: "row", scope: !2946, file: !2816, line: 124, type: !45)
!2983 = !DILocation(line: 0, scope: !2946)
!2984 = !DILocation(line: 124, column: 51, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2946, file: !2816, line: 124, column: 9)
!2986 = !DILocation(line: 125, column: 46, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2985, file: !2816, line: 124, column: 67)
!2988 = !DILocalVariable(name: "below_pivot", scope: !2987, file: !2816, line: 125, type: !14)
!2989 = !DILocation(line: 0, scope: !2987)
!2990 = !DILocation(line: 126, column: 74, scope: !2987)
!2991 = !DILocation(line: 126, column: 68, scope: !2987)
!2992 = !DILocation(line: 126, column: 41, scope: !2987)
!2993 = !DILocalVariable(name: "elt_to_elim", scope: !2987, file: !2816, line: 126, type: !14)
!2994 = !DILocation(line: 128, column: 63, scope: !2987)
!2995 = !DILocation(line: 129, column: 52, scope: !2987)
!2996 = !DILocation(line: 129, column: 46, scope: !2987)
!2997 = !DILocation(line: 128, column: 13, scope: !2987)
!2998 = !DILocation(line: 124, column: 63, scope: !2985)
!2999 = !DILocation(line: 124, column: 9, scope: !2985)
!3000 = distinct !{!3000, !2945, !3001, !323}
!3001 = !DILocation(line: 130, column: 9, scope: !2946)
!3002 = !DILocation(line: 132, column: 19, scope: !2867)
!3003 = !DILocation(line: 77, column: 57, scope: !2863)
!3004 = !DILocation(line: 77, column: 5, scope: !2863)
!3005 = distinct !{!3005, !2846, !3006, !323}
!3006 = !DILocation(line: 133, column: 5, scope: !2847)
!3007 = !DILocation(line: 138, scope: !2865)
!3008 = !DILocalVariable(name: "i", scope: !2865, file: !2816, line: 138, type: !45)
!3009 = !DILocation(line: 0, scope: !2865)
!3010 = !DILocation(line: 138, column: 23, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2865, file: !2816, line: 138, column: 5)
!3012 = !DILocation(line: 139, column: 47, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3011, file: !2816, line: 138, column: 37)
!3014 = !DILocation(line: 139, column: 43, scope: !3013)
!3015 = !DILocation(line: 139, column: 9, scope: !3013)
!3016 = !DILocalVariable(name: "j", scope: !3017, file: !2816, line: 140, type: !45)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !2816, line: 140, column: 9)
!3018 = !DILocation(line: 0, scope: !3017)
!3019 = !DILocation(line: 140, column: 14, scope: !3017)
!3020 = !DILocation(line: 140, scope: !3017)
!3021 = !DILocation(line: 140, column: 27, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !2816, line: 140, column: 9)
!3023 = !DILocation(line: 140, column: 9, scope: !3017)
!3024 = !DILocation(line: 141, column: 32, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !2816, line: 140, column: 41)
!3026 = !DILocation(line: 141, column: 17, scope: !3025)
!3027 = !DILocation(line: 141, column: 13, scope: !3025)
!3028 = !DILocation(line: 141, column: 30, scope: !3025)
!3029 = !DILocation(line: 140, column: 37, scope: !3022)
!3030 = !DILocation(line: 140, column: 9, scope: !3022)
!3031 = distinct !{!3031, !3023, !3032, !323}
!3032 = !DILocation(line: 142, column: 9, scope: !3017)
!3033 = !DILocation(line: 138, column: 33, scope: !3011)
!3034 = !DILocation(line: 138, column: 5, scope: !3011)
!3035 = distinct !{!3035, !2864, !3036, !323}
!3036 = !DILocation(line: 143, column: 5, scope: !2865)
!3037 = !DILocation(line: 145, column: 5, scope: !2815)
!3038 = !DILocation(line: 146, column: 5, scope: !2815)
!3039 = !DILocation(line: 147, column: 5, scope: !2815)
!3040 = !DILocation(line: 148, column: 5, scope: !2815)
!3041 = !DILocation(line: 149, column: 1, scope: !2815)
!3042 = distinct !DISubprogram(name: "ct_compare_8", scope: !3043, file: !3043, line: 51, type: !1554, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3043 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3044 = !DILocalVariable(name: "a", arg: 1, scope: !3042, file: !3043, line: 51, type: !14)
!3045 = !DILocation(line: 0, scope: !3042)
!3046 = !DILocalVariable(name: "b", arg: 2, scope: !3042, file: !3043, line: 51, type: !14)
!3047 = !DILocation(line: 52, column: 42, scope: !3042)
!3048 = !DILocation(line: 52, column: 13, scope: !3042)
!3049 = !DILocation(line: 52, column: 71, scope: !3042)
!3050 = !DILocation(line: 52, column: 69, scope: !3042)
!3051 = !DILocation(line: 52, column: 5, scope: !3042)
!3052 = distinct !DISubprogram(name: "mul_fx8", scope: !513, file: !513, line: 28, type: !3053, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!6, !14, !6}
!3055 = !DILocalVariable(name: "a", arg: 1, scope: !3052, file: !513, line: 28, type: !14)
!3056 = !DILocation(line: 0, scope: !3052)
!3057 = !DILocalVariable(name: "b", arg: 2, scope: !3052, file: !513, line: 28, type: !6)
!3058 = !DILocation(line: 31, column: 13, scope: !3052)
!3059 = !DILocation(line: 31, column: 10, scope: !3052)
!3060 = !DILocation(line: 31, column: 17, scope: !3052)
!3061 = !DILocalVariable(name: "p", scope: !3052, file: !513, line: 30, type: !6)
!3062 = !DILocation(line: 32, column: 13, scope: !3052)
!3063 = !DILocation(line: 32, column: 10, scope: !3052)
!3064 = !DILocation(line: 32, column: 17, scope: !3052)
!3065 = !DILocation(line: 32, column: 7, scope: !3052)
!3066 = !DILocation(line: 33, column: 13, scope: !3052)
!3067 = !DILocation(line: 33, column: 10, scope: !3052)
!3068 = !DILocation(line: 33, column: 17, scope: !3052)
!3069 = !DILocation(line: 33, column: 7, scope: !3052)
!3070 = !DILocation(line: 34, column: 13, scope: !3052)
!3071 = !DILocation(line: 34, column: 10, scope: !3052)
!3072 = !DILocation(line: 34, column: 17, scope: !3052)
!3073 = !DILocation(line: 34, column: 7, scope: !3052)
!3074 = !DILocalVariable(name: "top_p", scope: !3052, file: !513, line: 37, type: !6)
!3075 = !DILocation(line: 38, column: 32, scope: !3052)
!3076 = !DILocation(line: 38, column: 47, scope: !3052)
!3077 = !DILocation(line: 38, column: 38, scope: !3052)
!3078 = !DILocation(line: 38, column: 54, scope: !3052)
!3079 = !DILocalVariable(name: "out", scope: !3052, file: !513, line: 38, type: !6)
!3080 = !DILocation(line: 39, column: 5, scope: !3052)
!3081 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2816, file: !2816, line: 24, type: !3082, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !49, !5, !45}
!3084 = !DILocalVariable(name: "in", arg: 1, scope: !3081, file: !2816, line: 24, type: !49)
!3085 = !DILocation(line: 0, scope: !3081)
!3086 = !DILocalVariable(name: "out", arg: 2, scope: !3081, file: !2816, line: 24, type: !5)
!3087 = !DILocalVariable(name: "ncols", arg: 3, scope: !3081, file: !2816, line: 24, type: !45)
!3088 = !DILocalVariable(name: "out8", scope: !3081, file: !2816, line: 26, type: !18)
!3089 = !DILocalVariable(name: "i", scope: !3081, file: !2816, line: 25, type: !45)
!3090 = !DILocation(line: 27, column: 9, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3081, file: !2816, line: 27, column: 5)
!3092 = !DILocation(line: 27, scope: !3091)
!3093 = !DILocation(line: 27, column: 17, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !2816, line: 27, column: 5)
!3095 = !DILocation(line: 27, column: 20, scope: !3094)
!3096 = !DILocation(line: 27, column: 5, scope: !3091)
!3097 = !DILocation(line: 31, column: 23, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !2816, line: 27, column: 36)
!3099 = !DILocation(line: 31, column: 44, scope: !3098)
!3100 = !DILocation(line: 31, column: 40, scope: !3098)
!3101 = !DILocation(line: 31, column: 48, scope: !3098)
!3102 = !DILocation(line: 31, column: 37, scope: !3098)
!3103 = !DILocation(line: 31, column: 15, scope: !3098)
!3104 = !DILocation(line: 31, column: 9, scope: !3098)
!3105 = !DILocation(line: 31, column: 20, scope: !3098)
!3106 = !DILocation(line: 27, column: 31, scope: !3094)
!3107 = !DILocation(line: 27, column: 5, scope: !3094)
!3108 = distinct !{!3108, !3096, !3109, !323}
!3109 = !DILocation(line: 33, column: 5, scope: !3091)
!3110 = !DILocation(line: 34, column: 19, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3081, file: !2816, line: 34, column: 9)
!3112 = !DILocation(line: 38, column: 23, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3111, file: !2816, line: 34, column: 24)
!3114 = !DILocation(line: 38, column: 15, scope: !3113)
!3115 = !DILocation(line: 38, column: 9, scope: !3113)
!3116 = !DILocation(line: 38, column: 20, scope: !3113)
!3117 = !DILocation(line: 40, column: 5, scope: !3113)
!3118 = !DILocation(line: 41, column: 1, scope: !3081)
!3119 = distinct !DISubprogram(name: "ct_compare_64", scope: !3043, file: !3043, line: 46, type: !3120, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!6, !45, !45}
!3122 = !DILocalVariable(name: "a", arg: 1, scope: !3119, file: !3043, line: 46, type: !45)
!3123 = !DILocation(line: 0, scope: !3119)
!3124 = !DILocalVariable(name: "b", arg: 2, scope: !3119, file: !3043, line: 46, type: !45)
!3125 = !DILocation(line: 47, column: 38, scope: !3119)
!3126 = !DILocation(line: 47, column: 44, scope: !3119)
!3127 = !DILocation(line: 47, column: 73, scope: !3119)
!3128 = !DILocation(line: 47, column: 71, scope: !3119)
!3129 = !DILocation(line: 47, column: 5, scope: !3119)
!3130 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3043, file: !3043, line: 35, type: !3120, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3131 = !DILocalVariable(name: "a", arg: 1, scope: !3130, file: !3043, line: 35, type: !45)
!3132 = !DILocation(line: 0, scope: !3130)
!3133 = !DILocalVariable(name: "b", arg: 2, scope: !3130, file: !3043, line: 35, type: !45)
!3134 = !DILocalVariable(name: "diff", scope: !3130, file: !3043, line: 36, type: !46)
!3135 = !DILocation(line: 37, column: 30, scope: !3130)
!3136 = !DILocation(line: 37, column: 59, scope: !3130)
!3137 = !DILocation(line: 37, column: 57, scope: !3130)
!3138 = !DILocation(line: 37, column: 5, scope: !3130)
!3139 = distinct !DISubprogram(name: "m_extract_element", scope: !2816, file: !2816, line: 16, type: !3140, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!14, !346, !45}
!3142 = !DILocalVariable(name: "in", arg: 1, scope: !3139, file: !2816, line: 16, type: !346)
!3143 = !DILocation(line: 0, scope: !3139)
!3144 = !DILocalVariable(name: "index", arg: 2, scope: !3139, file: !2816, line: 16, type: !45)
!3145 = !DILocation(line: 17, column: 27, scope: !3139)
!3146 = !DILocalVariable(name: "leg", scope: !3139, file: !2816, line: 17, type: !259)
!3147 = !DILocation(line: 18, column: 30, scope: !3139)
!3148 = !DILocalVariable(name: "offset", scope: !3139, file: !2816, line: 18, type: !259)
!3149 = !DILocation(line: 20, column: 13, scope: !3139)
!3150 = !DILocation(line: 20, column: 31, scope: !3139)
!3151 = !DILocation(line: 20, column: 21, scope: !3139)
!3152 = !DILocation(line: 20, column: 12, scope: !3139)
!3153 = !DILocation(line: 20, column: 5, scope: !3139)
!3154 = distinct !DISubprogram(name: "inverse_f", scope: !513, file: !513, line: 57, type: !3155, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!14, !14}
!3157 = !DILocalVariable(name: "a", arg: 1, scope: !3154, file: !513, line: 57, type: !14)
!3158 = !DILocation(line: 0, scope: !3154)
!3159 = !DILocation(line: 61, column: 24, scope: !3154)
!3160 = !DILocalVariable(name: "a2", scope: !3154, file: !513, line: 61, type: !14)
!3161 = !DILocation(line: 62, column: 24, scope: !3154)
!3162 = !DILocalVariable(name: "a4", scope: !3154, file: !513, line: 62, type: !14)
!3163 = !DILocation(line: 63, column: 24, scope: !3154)
!3164 = !DILocalVariable(name: "a8", scope: !3154, file: !513, line: 63, type: !14)
!3165 = !DILocation(line: 64, column: 24, scope: !3154)
!3166 = !DILocalVariable(name: "a6", scope: !3154, file: !513, line: 64, type: !14)
!3167 = !DILocation(line: 65, column: 25, scope: !3154)
!3168 = !DILocalVariable(name: "a14", scope: !3154, file: !513, line: 65, type: !14)
!3169 = !DILocation(line: 67, column: 5, scope: !3154)
!3170 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3043, file: !3043, line: 94, type: !3171, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !259, !346, !14, !5}
!3173 = !DILocalVariable(name: "legs", arg: 1, scope: !3170, file: !3043, line: 94, type: !259)
!3174 = !DILocation(line: 0, scope: !3170)
!3175 = !DILocalVariable(name: "in", arg: 2, scope: !3170, file: !3043, line: 94, type: !346)
!3176 = !DILocalVariable(name: "a", arg: 3, scope: !3170, file: !3043, line: 94, type: !14)
!3177 = !DILocalVariable(name: "acc", arg: 4, scope: !3170, file: !3043, line: 94, type: !5)
!3178 = !DILocation(line: 95, column: 20, scope: !3170)
!3179 = !DILocalVariable(name: "tab", scope: !3170, file: !3043, line: 95, type: !19)
!3180 = !DILocalVariable(name: "lsb_ask", scope: !3170, file: !3043, line: 97, type: !6)
!3181 = !DILocalVariable(name: "i", scope: !3182, file: !3043, line: 99, type: !45)
!3182 = distinct !DILexicalBlock(scope: !3170, file: !3043, line: 99, column: 5)
!3183 = !DILocation(line: 0, scope: !3182)
!3184 = !DILocation(line: 99, column: 9, scope: !3182)
!3185 = !DILocation(line: 99, scope: !3182)
!3186 = !DILocation(line: 99, column: 20, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !3043, line: 99, column: 5)
!3188 = !DILocation(line: 99, column: 5, scope: !3182)
!3189 = !DILocation(line: 100, column: 21, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3187, file: !3043, line: 99, column: 32)
!3191 = !DILocation(line: 100, column: 33, scope: !3190)
!3192 = !DILocation(line: 100, column: 51, scope: !3190)
!3193 = !DILocation(line: 100, column: 46, scope: !3190)
!3194 = !DILocation(line: 100, column: 44, scope: !3190)
!3195 = !DILocation(line: 101, column: 27, scope: !3190)
!3196 = !DILocation(line: 101, column: 33, scope: !3190)
!3197 = !DILocation(line: 101, column: 52, scope: !3190)
!3198 = !DILocation(line: 101, column: 59, scope: !3190)
!3199 = !DILocation(line: 101, column: 46, scope: !3190)
!3200 = !DILocation(line: 101, column: 44, scope: !3190)
!3201 = !DILocation(line: 101, column: 17, scope: !3190)
!3202 = !DILocation(line: 102, column: 21, scope: !3190)
!3203 = !DILocation(line: 102, column: 27, scope: !3190)
!3204 = !DILocation(line: 102, column: 33, scope: !3190)
!3205 = !DILocation(line: 102, column: 52, scope: !3190)
!3206 = !DILocation(line: 102, column: 59, scope: !3190)
!3207 = !DILocation(line: 102, column: 46, scope: !3190)
!3208 = !DILocation(line: 102, column: 44, scope: !3190)
!3209 = !DILocation(line: 102, column: 17, scope: !3190)
!3210 = !DILocation(line: 103, column: 21, scope: !3190)
!3211 = !DILocation(line: 103, column: 27, scope: !3190)
!3212 = !DILocation(line: 103, column: 33, scope: !3190)
!3213 = !DILocation(line: 103, column: 52, scope: !3190)
!3214 = !DILocation(line: 103, column: 59, scope: !3190)
!3215 = !DILocation(line: 103, column: 46, scope: !3190)
!3216 = !DILocation(line: 103, column: 44, scope: !3190)
!3217 = !DILocation(line: 103, column: 17, scope: !3190)
!3218 = !DILocation(line: 100, column: 9, scope: !3190)
!3219 = !DILocation(line: 100, column: 16, scope: !3190)
!3220 = !DILocation(line: 99, column: 29, scope: !3187)
!3221 = !DILocation(line: 99, column: 5, scope: !3187)
!3222 = distinct !{!3222, !3188, !3223, !323}
!3223 = !DILocation(line: 104, column: 5, scope: !3182)
!3224 = !DILocation(line: 105, column: 1, scope: !3170)
!3225 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2816, file: !2816, line: 44, type: !3226, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !45, !346, !18}
!3228 = !DILocalVariable(name: "legs", arg: 1, scope: !3225, file: !2816, line: 44, type: !45)
!3229 = !DILocation(line: 0, scope: !3225)
!3230 = !DILocalVariable(name: "in", arg: 2, scope: !3225, file: !2816, line: 44, type: !346)
!3231 = !DILocalVariable(name: "out", arg: 3, scope: !3225, file: !2816, line: 44, type: !18)
!3232 = !DILocalVariable(name: "in8", scope: !3225, file: !2816, line: 45, type: !49)
!3233 = !DILocalVariable(name: "i", scope: !3234, file: !2816, line: 46, type: !45)
!3234 = distinct !DILexicalBlock(scope: !3225, file: !2816, line: 46, column: 5)
!3235 = !DILocation(line: 0, scope: !3234)
!3236 = !DILocation(line: 46, column: 9, scope: !3234)
!3237 = !DILocation(line: 46, scope: !3234)
!3238 = !DILocation(line: 46, column: 29, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !2816, line: 46, column: 5)
!3240 = !DILocation(line: 46, column: 22, scope: !3239)
!3241 = !DILocation(line: 46, column: 5, scope: !3234)
!3242 = !DILocation(line: 51, column: 26, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3239, file: !2816, line: 46, column: 42)
!3244 = !DILocation(line: 51, column: 21, scope: !3243)
!3245 = !DILocation(line: 51, column: 31, scope: !3243)
!3246 = !DILocation(line: 51, column: 9, scope: !3243)
!3247 = !DILocation(line: 51, column: 18, scope: !3243)
!3248 = !DILocation(line: 52, column: 26, scope: !3243)
!3249 = !DILocation(line: 52, column: 21, scope: !3243)
!3250 = !DILocation(line: 52, column: 30, scope: !3243)
!3251 = !DILocation(line: 52, column: 14, scope: !3243)
!3252 = !DILocation(line: 52, column: 9, scope: !3243)
!3253 = !DILocation(line: 52, column: 18, scope: !3243)
!3254 = !DILocation(line: 46, column: 37, scope: !3239)
!3255 = !DILocation(line: 46, column: 5, scope: !3239)
!3256 = distinct !{!3256, !3241, !3257, !323}
!3257 = !DILocation(line: 54, column: 5, scope: !3234)
!3258 = !DILocation(line: 55, column: 1, scope: !3225)
!3259 = distinct !DISubprogram(name: "mul_table", scope: !513, file: !513, line: 129, type: !514, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3260 = !DILocalVariable(name: "b", arg: 1, scope: !3259, file: !513, line: 129, type: !12)
!3261 = !DILocation(line: 0, scope: !3259)
!3262 = !DILocation(line: 130, column: 19, scope: !3259)
!3263 = !DILocation(line: 130, column: 33, scope: !3259)
!3264 = !DILocalVariable(name: "x", scope: !3259, file: !513, line: 130, type: !19)
!3265 = !DILocalVariable(name: "high_nibble_mask", scope: !3259, file: !513, line: 132, type: !19)
!3266 = !DILocation(line: 134, column: 28, scope: !3259)
!3267 = !DILocalVariable(name: "high_half", scope: !3259, file: !513, line: 134, type: !19)
!3268 = !DILocation(line: 135, column: 28, scope: !3259)
!3269 = !DILocation(line: 135, column: 47, scope: !3259)
!3270 = !DILocation(line: 135, column: 34, scope: !3259)
!3271 = !DILocation(line: 135, column: 5, scope: !3259)
!3272 = distinct !DISubprogram(name: "mul_f", scope: !513, file: !513, line: 9, type: !1554, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3273 = !DILocalVariable(name: "a", arg: 1, scope: !3272, file: !513, line: 9, type: !14)
!3274 = !DILocation(line: 0, scope: !3272)
!3275 = !DILocalVariable(name: "b", arg: 2, scope: !3272, file: !513, line: 9, type: !14)
!3276 = !DILocation(line: 14, column: 10, scope: !3272)
!3277 = !DILocation(line: 14, column: 7, scope: !3272)
!3278 = !DILocation(line: 17, column: 17, scope: !3272)
!3279 = !DILocalVariable(name: "p", scope: !3272, file: !513, line: 11, type: !14)
!3280 = !DILocation(line: 18, column: 13, scope: !3272)
!3281 = !DILocation(line: 18, column: 17, scope: !3272)
!3282 = !DILocation(line: 18, column: 7, scope: !3272)
!3283 = !DILocation(line: 19, column: 13, scope: !3272)
!3284 = !DILocation(line: 19, column: 17, scope: !3272)
!3285 = !DILocation(line: 19, column: 7, scope: !3272)
!3286 = !DILocation(line: 20, column: 13, scope: !3272)
!3287 = !DILocation(line: 20, column: 17, scope: !3272)
!3288 = !DILocation(line: 20, column: 7, scope: !3272)
!3289 = !DILocalVariable(name: "top_p", scope: !3272, file: !513, line: 23, type: !14)
!3290 = !DILocation(line: 24, column: 37, scope: !3272)
!3291 = !DILocation(line: 24, column: 52, scope: !3272)
!3292 = !DILocation(line: 24, column: 43, scope: !3272)
!3293 = !DILocation(line: 24, column: 59, scope: !3272)
!3294 = !DILocalVariable(name: "out", scope: !3272, file: !513, line: 24, type: !14)
!3295 = !DILocation(line: 25, column: 5, scope: !3272)
!3296 = distinct !DISubprogram(name: "lincomb", scope: !513, file: !513, line: 70, type: !1562, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3297 = !DILocalVariable(name: "a", arg: 1, scope: !3296, file: !513, line: 70, type: !49)
!3298 = !DILocation(line: 0, scope: !3296)
!3299 = !DILocalVariable(name: "b", arg: 2, scope: !3296, file: !513, line: 71, type: !49)
!3300 = !DILocalVariable(name: "n", arg: 3, scope: !3296, file: !513, line: 71, type: !45)
!3301 = !DILocalVariable(name: "m", arg: 4, scope: !3296, file: !513, line: 71, type: !45)
!3302 = !DILocalVariable(name: "ret", scope: !3296, file: !513, line: 72, type: !14)
!3303 = !DILocalVariable(name: "i", scope: !3304, file: !513, line: 73, type: !45)
!3304 = distinct !DILexicalBlock(scope: !3296, file: !513, line: 73, column: 5)
!3305 = !DILocation(line: 0, scope: !3304)
!3306 = !DILocation(line: 73, column: 10, scope: !3304)
!3307 = !DILocation(line: 73, scope: !3304)
!3308 = !DILocation(line: 73, column: 23, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3304, file: !513, line: 73, column: 5)
!3310 = !DILocation(line: 73, column: 5, scope: !3304)
!3311 = !DILocation(line: 74, column: 27, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !513, line: 73, column: 41)
!3313 = !DILocation(line: 74, column: 33, scope: !3312)
!3314 = !DILocation(line: 74, column: 21, scope: !3312)
!3315 = !DILocation(line: 74, column: 15, scope: !3312)
!3316 = !DILocation(line: 73, column: 28, scope: !3309)
!3317 = !DILocation(line: 73, column: 35, scope: !3309)
!3318 = !DILocation(line: 73, column: 5, scope: !3309)
!3319 = distinct !{!3319, !3310, !3320, !323}
!3320 = !DILocation(line: 75, column: 5, scope: !3304)
!3321 = !DILocation(line: 76, column: 5, scope: !3296)
!3322 = distinct !DISubprogram(name: "add_f", scope: !513, file: !513, line: 43, type: !1554, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3323 = !DILocalVariable(name: "a", arg: 1, scope: !3322, file: !513, line: 43, type: !14)
!3324 = !DILocation(line: 0, scope: !3322)
!3325 = !DILocalVariable(name: "b", arg: 2, scope: !3322, file: !513, line: 43, type: !14)
!3326 = !DILocation(line: 44, column: 14, scope: !3322)
!3327 = !DILocation(line: 44, column: 5, scope: !3322)
!3328 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3329, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3333)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3334)
!3334 = !{!3335}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3333, file: !71, line: 30, baseType: !5, size: 32)
!3336 = !DILocalVariable(name: "state", arg: 1, scope: !3328, file: !71, line: 688, type: !3331)
!3337 = !DILocation(line: 0, scope: !3328)
!3338 = !DILocation(line: 689, column: 18, scope: !3328)
!3339 = !DILocation(line: 689, column: 16, scope: !3328)
!3340 = !DILocation(line: 690, column: 20, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3328, file: !71, line: 690, column: 9)
!3342 = !DILocation(line: 691, column: 9, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3341, file: !71, line: 690, column: 29)
!3344 = !DILocation(line: 692, column: 5, scope: !3343)
!3345 = !DILocation(line: 693, column: 28, scope: !3328)
!3346 = !DILocation(line: 693, column: 5, scope: !3328)
!3347 = !DILocation(line: 694, column: 1, scope: !3328)
!3348 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3349 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3348, file: !71, line: 580, type: !5)
!3350 = !DILocation(line: 0, scope: !3348)
!3351 = !DILocalVariable(name: "i", scope: !3348, file: !71, line: 581, type: !15)
!3352 = !DILocation(line: 583, column: 10, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3348, file: !71, line: 583, column: 5)
!3354 = !DILocation(line: 583, scope: !3353)
!3355 = !DILocation(line: 583, column: 19, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3353, file: !71, line: 583, column: 5)
!3357 = !DILocation(line: 583, column: 5, scope: !3353)
!3358 = !DILocation(line: 584, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !71, line: 583, column: 30)
!3360 = !DILocation(line: 584, column: 18, scope: !3359)
!3361 = !DILocation(line: 583, column: 25, scope: !3356)
!3362 = !DILocation(line: 583, column: 5, scope: !3356)
!3363 = distinct !{!3363, !3357, !3364, !323}
!3364 = !DILocation(line: 585, column: 5, scope: !3353)
!3365 = !DILocation(line: 586, column: 5, scope: !3348)
!3366 = !DILocation(line: 586, column: 15, scope: !3348)
!3367 = !DILocation(line: 587, column: 1, scope: !3348)
!3368 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3369, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !3331, !3371, !15}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!3373 = !DILocalVariable(name: "state", arg: 1, scope: !3368, file: !71, line: 696, type: !3331)
!3374 = !DILocation(line: 0, scope: !3368)
!3375 = !DILocalVariable(name: "input", arg: 2, scope: !3368, file: !71, line: 696, type: !3371)
!3376 = !DILocalVariable(name: "inlen", arg: 3, scope: !3368, file: !71, line: 696, type: !15)
!3377 = !DILocation(line: 697, column: 30, scope: !3368)
!3378 = !DILocation(line: 697, column: 5, scope: !3368)
!3379 = !DILocation(line: 698, column: 1, scope: !3368)
!3380 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3381, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !5, !19, !3371, !15}
!3383 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3380, file: !71, line: 603, type: !5)
!3384 = !DILocation(line: 0, scope: !3380)
!3385 = !DILocalVariable(name: "r", arg: 2, scope: !3380, file: !71, line: 603, type: !19)
!3386 = !DILocalVariable(name: "m", arg: 3, scope: !3380, file: !71, line: 603, type: !3371)
!3387 = !DILocalVariable(name: "mlen", arg: 4, scope: !3380, file: !71, line: 604, type: !15)
!3388 = !DILocation(line: 608, column: 5, scope: !3380)
!3389 = !DILocation(line: 608, column: 12, scope: !3380)
!3390 = !DILocation(line: 608, column: 19, scope: !3380)
!3391 = !DILocation(line: 608, column: 17, scope: !3380)
!3392 = !DILocation(line: 608, column: 32, scope: !3380)
!3393 = !DILocation(line: 608, column: 29, scope: !3380)
!3394 = !DILocation(line: 609, column: 9, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !71, line: 609, column: 9)
!3396 = distinct !DILexicalBlock(scope: !3380, file: !71, line: 608, column: 35)
!3397 = !DILocation(line: 621, column: 5, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3380, file: !71, line: 621, column: 5)
!3399 = !DILocation(line: 609, scope: !3395)
!3400 = !DILocalVariable(name: "i", scope: !3380, file: !71, line: 605, type: !15)
!3401 = !DILocation(line: 609, column: 39, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !71, line: 609, column: 9)
!3403 = !DILocation(line: 609, column: 29, scope: !3402)
!3404 = !DILocation(line: 609, column: 27, scope: !3402)
!3405 = !DILocation(line: 609, column: 23, scope: !3402)
!3406 = !DILocation(line: 612, column: 54, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !71, line: 609, column: 55)
!3408 = !DILocation(line: 612, column: 44, scope: !3407)
!3409 = !DILocation(line: 612, column: 69, scope: !3407)
!3410 = !DILocation(line: 612, column: 81, scope: !3407)
!3411 = !DILocation(line: 612, column: 79, scope: !3407)
!3412 = !DILocation(line: 612, column: 65, scope: !3407)
!3413 = !DILocation(line: 612, column: 59, scope: !3407)
!3414 = !DILocation(line: 612, column: 20, scope: !3407)
!3415 = !DILocation(line: 612, column: 32, scope: !3407)
!3416 = !DILocation(line: 612, column: 30, scope: !3407)
!3417 = !DILocation(line: 612, column: 35, scope: !3407)
!3418 = !DILocation(line: 612, column: 13, scope: !3407)
!3419 = !DILocation(line: 612, column: 41, scope: !3407)
!3420 = !DILocation(line: 609, column: 51, scope: !3402)
!3421 = !DILocation(line: 609, column: 9, scope: !3402)
!3422 = distinct !{!3422, !3394, !3423, !323}
!3423 = !DILocation(line: 613, column: 9, scope: !3395)
!3424 = !DILocation(line: 614, column: 30, scope: !3396)
!3425 = !DILocation(line: 614, column: 17, scope: !3396)
!3426 = !DILocation(line: 614, column: 14, scope: !3396)
!3427 = !DILocation(line: 615, column: 11, scope: !3396)
!3428 = !DILocation(line: 616, column: 9, scope: !3396)
!3429 = !DILocation(line: 616, column: 19, scope: !3396)
!3430 = !DILocation(line: 618, column: 9, scope: !3396)
!3431 = distinct !{!3431, !3388, !3432, !323}
!3432 = !DILocation(line: 619, column: 5, scope: !3380)
!3433 = !DILocation(line: 621, scope: !3398)
!3434 = !DILocation(line: 621, column: 19, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3398, file: !71, line: 621, column: 5)
!3436 = !DILocation(line: 622, column: 50, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3435, file: !71, line: 621, column: 32)
!3438 = !DILocation(line: 622, column: 40, scope: !3437)
!3439 = !DILocation(line: 622, column: 65, scope: !3437)
!3440 = !DILocation(line: 622, column: 77, scope: !3437)
!3441 = !DILocation(line: 622, column: 75, scope: !3437)
!3442 = !DILocation(line: 622, column: 61, scope: !3437)
!3443 = !DILocation(line: 622, column: 55, scope: !3437)
!3444 = !DILocation(line: 622, column: 16, scope: !3437)
!3445 = !DILocation(line: 622, column: 28, scope: !3437)
!3446 = !DILocation(line: 622, column: 26, scope: !3437)
!3447 = !DILocation(line: 622, column: 31, scope: !3437)
!3448 = !DILocation(line: 622, column: 9, scope: !3437)
!3449 = !DILocation(line: 622, column: 37, scope: !3437)
!3450 = !DILocation(line: 621, column: 28, scope: !3435)
!3451 = !DILocation(line: 621, column: 5, scope: !3435)
!3452 = distinct !{!3452, !3397, !3453, !323}
!3453 = !DILocation(line: 623, column: 5, scope: !3398)
!3454 = !DILocation(line: 624, column: 18, scope: !3380)
!3455 = !DILocation(line: 624, column: 5, scope: !3380)
!3456 = !DILocation(line: 624, column: 15, scope: !3380)
!3457 = !DILocation(line: 625, column: 1, scope: !3380)
!3458 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3459 = !DILocalVariable(name: "state", arg: 1, scope: !3458, file: !71, line: 236, type: !5)
!3460 = !DILocation(line: 0, scope: !3458)
!3461 = !DILocation(line: 253, column: 11, scope: !3458)
!3462 = !DILocalVariable(name: "Aba", scope: !3458, file: !71, line: 239, type: !6)
!3463 = !DILocation(line: 254, column: 11, scope: !3458)
!3464 = !DILocalVariable(name: "Abe", scope: !3458, file: !71, line: 239, type: !6)
!3465 = !DILocation(line: 255, column: 11, scope: !3458)
!3466 = !DILocalVariable(name: "Abi", scope: !3458, file: !71, line: 239, type: !6)
!3467 = !DILocation(line: 256, column: 11, scope: !3458)
!3468 = !DILocalVariable(name: "Abo", scope: !3458, file: !71, line: 239, type: !6)
!3469 = !DILocation(line: 257, column: 11, scope: !3458)
!3470 = !DILocalVariable(name: "Abu", scope: !3458, file: !71, line: 239, type: !6)
!3471 = !DILocation(line: 258, column: 11, scope: !3458)
!3472 = !DILocalVariable(name: "Aga", scope: !3458, file: !71, line: 240, type: !6)
!3473 = !DILocation(line: 259, column: 11, scope: !3458)
!3474 = !DILocalVariable(name: "Age", scope: !3458, file: !71, line: 240, type: !6)
!3475 = !DILocation(line: 260, column: 11, scope: !3458)
!3476 = !DILocalVariable(name: "Agi", scope: !3458, file: !71, line: 240, type: !6)
!3477 = !DILocation(line: 261, column: 11, scope: !3458)
!3478 = !DILocalVariable(name: "Ago", scope: !3458, file: !71, line: 240, type: !6)
!3479 = !DILocation(line: 262, column: 11, scope: !3458)
!3480 = !DILocalVariable(name: "Agu", scope: !3458, file: !71, line: 240, type: !6)
!3481 = !DILocation(line: 263, column: 11, scope: !3458)
!3482 = !DILocalVariable(name: "Aka", scope: !3458, file: !71, line: 241, type: !6)
!3483 = !DILocation(line: 264, column: 11, scope: !3458)
!3484 = !DILocalVariable(name: "Ake", scope: !3458, file: !71, line: 241, type: !6)
!3485 = !DILocation(line: 265, column: 11, scope: !3458)
!3486 = !DILocalVariable(name: "Aki", scope: !3458, file: !71, line: 241, type: !6)
!3487 = !DILocation(line: 266, column: 11, scope: !3458)
!3488 = !DILocalVariable(name: "Ako", scope: !3458, file: !71, line: 241, type: !6)
!3489 = !DILocation(line: 267, column: 11, scope: !3458)
!3490 = !DILocalVariable(name: "Aku", scope: !3458, file: !71, line: 241, type: !6)
!3491 = !DILocation(line: 268, column: 11, scope: !3458)
!3492 = !DILocalVariable(name: "Ama", scope: !3458, file: !71, line: 242, type: !6)
!3493 = !DILocation(line: 269, column: 11, scope: !3458)
!3494 = !DILocalVariable(name: "Ame", scope: !3458, file: !71, line: 242, type: !6)
!3495 = !DILocation(line: 270, column: 11, scope: !3458)
!3496 = !DILocalVariable(name: "Ami", scope: !3458, file: !71, line: 242, type: !6)
!3497 = !DILocation(line: 271, column: 11, scope: !3458)
!3498 = !DILocalVariable(name: "Amo", scope: !3458, file: !71, line: 242, type: !6)
!3499 = !DILocation(line: 272, column: 11, scope: !3458)
!3500 = !DILocalVariable(name: "Amu", scope: !3458, file: !71, line: 242, type: !6)
!3501 = !DILocation(line: 273, column: 11, scope: !3458)
!3502 = !DILocalVariable(name: "Asa", scope: !3458, file: !71, line: 243, type: !6)
!3503 = !DILocation(line: 274, column: 11, scope: !3458)
!3504 = !DILocalVariable(name: "Ase", scope: !3458, file: !71, line: 243, type: !6)
!3505 = !DILocation(line: 275, column: 11, scope: !3458)
!3506 = !DILocalVariable(name: "Asi", scope: !3458, file: !71, line: 243, type: !6)
!3507 = !DILocation(line: 276, column: 11, scope: !3458)
!3508 = !DILocalVariable(name: "Aso", scope: !3458, file: !71, line: 243, type: !6)
!3509 = !DILocation(line: 277, column: 11, scope: !3458)
!3510 = !DILocalVariable(name: "Asu", scope: !3458, file: !71, line: 243, type: !6)
!3511 = !DILocalVariable(name: "round", scope: !3458, file: !71, line: 237, type: !45)
!3512 = !DILocation(line: 279, column: 10, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3458, file: !71, line: 279, column: 5)
!3514 = !DILocation(line: 279, scope: !3513)
!3515 = !DILocation(line: 279, column: 27, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !71, line: 279, column: 5)
!3517 = !DILocation(line: 279, column: 5, scope: !3513)
!3518 = !DILocalVariable(name: "BCa", scope: !3458, file: !71, line: 244, type: !6)
!3519 = !DILocalVariable(name: "BCe", scope: !3458, file: !71, line: 244, type: !6)
!3520 = !DILocalVariable(name: "BCi", scope: !3458, file: !71, line: 244, type: !6)
!3521 = !DILocalVariable(name: "BCo", scope: !3458, file: !71, line: 244, type: !6)
!3522 = !DILocalVariable(name: "BCu", scope: !3458, file: !71, line: 244, type: !6)
!3523 = !DILocalVariable(name: "Da", scope: !3458, file: !71, line: 245, type: !6)
!3524 = !DILocalVariable(name: "De", scope: !3458, file: !71, line: 245, type: !6)
!3525 = !DILocalVariable(name: "Di", scope: !3458, file: !71, line: 245, type: !6)
!3526 = !DILocalVariable(name: "Do", scope: !3458, file: !71, line: 245, type: !6)
!3527 = !DILocalVariable(name: "Du", scope: !3458, file: !71, line: 245, type: !6)
!3528 = !DILocalVariable(name: "Eba", scope: !3458, file: !71, line: 246, type: !6)
!3529 = !DILocalVariable(name: "Ebe", scope: !3458, file: !71, line: 246, type: !6)
!3530 = !DILocalVariable(name: "Ebi", scope: !3458, file: !71, line: 246, type: !6)
!3531 = !DILocalVariable(name: "Ebo", scope: !3458, file: !71, line: 246, type: !6)
!3532 = !DILocalVariable(name: "Ebu", scope: !3458, file: !71, line: 246, type: !6)
!3533 = !DILocalVariable(name: "Ega", scope: !3458, file: !71, line: 247, type: !6)
!3534 = !DILocalVariable(name: "Ege", scope: !3458, file: !71, line: 247, type: !6)
!3535 = !DILocalVariable(name: "Egi", scope: !3458, file: !71, line: 247, type: !6)
!3536 = !DILocalVariable(name: "Ego", scope: !3458, file: !71, line: 247, type: !6)
!3537 = !DILocalVariable(name: "Egu", scope: !3458, file: !71, line: 247, type: !6)
!3538 = !DILocalVariable(name: "Eka", scope: !3458, file: !71, line: 248, type: !6)
!3539 = !DILocalVariable(name: "Eke", scope: !3458, file: !71, line: 248, type: !6)
!3540 = !DILocalVariable(name: "Eki", scope: !3458, file: !71, line: 248, type: !6)
!3541 = !DILocalVariable(name: "Eko", scope: !3458, file: !71, line: 248, type: !6)
!3542 = !DILocalVariable(name: "Eku", scope: !3458, file: !71, line: 248, type: !6)
!3543 = !DILocalVariable(name: "Ema", scope: !3458, file: !71, line: 249, type: !6)
!3544 = !DILocalVariable(name: "Eme", scope: !3458, file: !71, line: 249, type: !6)
!3545 = !DILocalVariable(name: "Emi", scope: !3458, file: !71, line: 249, type: !6)
!3546 = !DILocalVariable(name: "Emo", scope: !3458, file: !71, line: 249, type: !6)
!3547 = !DILocalVariable(name: "Emu", scope: !3458, file: !71, line: 249, type: !6)
!3548 = !DILocalVariable(name: "Esa", scope: !3458, file: !71, line: 250, type: !6)
!3549 = !DILocalVariable(name: "Ese", scope: !3458, file: !71, line: 250, type: !6)
!3550 = !DILocalVariable(name: "Esi", scope: !3458, file: !71, line: 250, type: !6)
!3551 = !DILocalVariable(name: "Eso", scope: !3458, file: !71, line: 250, type: !6)
!3552 = !DILocalVariable(name: "Esu", scope: !3458, file: !71, line: 250, type: !6)
!3553 = !DILocation(line: 283, column: 19, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3516, file: !71, line: 279, column: 50)
!3555 = !DILocation(line: 283, column: 25, scope: !3554)
!3556 = !DILocation(line: 283, column: 31, scope: !3554)
!3557 = !DILocation(line: 283, column: 37, scope: !3554)
!3558 = !DILocation(line: 285, column: 19, scope: !3554)
!3559 = !DILocation(line: 285, column: 25, scope: !3554)
!3560 = !DILocation(line: 285, column: 31, scope: !3554)
!3561 = !DILocation(line: 285, column: 37, scope: !3554)
!3562 = !DILocation(line: 291, column: 20, scope: !3554)
!3563 = !DILocation(line: 291, column: 18, scope: !3554)
!3564 = !DILocation(line: 361, column: 13, scope: !3554)
!3565 = !DILocation(line: 362, column: 15, scope: !3554)
!3566 = !DILocation(line: 282, column: 19, scope: !3554)
!3567 = !DILocation(line: 282, column: 25, scope: !3554)
!3568 = !DILocation(line: 282, column: 31, scope: !3554)
!3569 = !DILocation(line: 282, column: 37, scope: !3554)
!3570 = !DILocation(line: 288, column: 20, scope: !3554)
!3571 = !DILocation(line: 288, column: 18, scope: !3554)
!3572 = !DILocation(line: 365, column: 13, scope: !3554)
!3573 = !DILocation(line: 366, column: 15, scope: !3554)
!3574 = !DILocation(line: 284, column: 19, scope: !3554)
!3575 = !DILocation(line: 284, column: 25, scope: !3554)
!3576 = !DILocation(line: 284, column: 31, scope: !3554)
!3577 = !DILocation(line: 284, column: 37, scope: !3554)
!3578 = !DILocation(line: 281, column: 19, scope: !3554)
!3579 = !DILocation(line: 281, column: 25, scope: !3554)
!3580 = !DILocation(line: 281, column: 31, scope: !3554)
!3581 = !DILocation(line: 281, column: 37, scope: !3554)
!3582 = !DILocation(line: 292, column: 20, scope: !3554)
!3583 = !DILocation(line: 292, column: 18, scope: !3554)
!3584 = !DILocation(line: 363, column: 13, scope: !3554)
!3585 = !DILocation(line: 364, column: 15, scope: !3554)
!3586 = !DILocation(line: 370, column: 23, scope: !3554)
!3587 = !DILocation(line: 370, column: 29, scope: !3554)
!3588 = !DILocation(line: 370, column: 19, scope: !3554)
!3589 = !DILocation(line: 290, column: 20, scope: !3554)
!3590 = !DILocation(line: 290, column: 18, scope: !3554)
!3591 = !DILocation(line: 298, column: 13, scope: !3554)
!3592 = !DILocation(line: 299, column: 15, scope: !3554)
!3593 = !DILocation(line: 289, column: 20, scope: !3554)
!3594 = !DILocation(line: 289, column: 18, scope: !3554)
!3595 = !DILocation(line: 296, column: 13, scope: !3554)
!3596 = !DILocation(line: 297, column: 15, scope: !3554)
!3597 = !DILocation(line: 304, column: 23, scope: !3554)
!3598 = !DILocation(line: 304, column: 29, scope: !3554)
!3599 = !DILocation(line: 305, column: 16, scope: !3554)
!3600 = !DILocation(line: 305, column: 13, scope: !3554)
!3601 = !DILocation(line: 294, column: 13, scope: !3554)
!3602 = !DILocation(line: 311, column: 13, scope: !3554)
!3603 = !DILocation(line: 312, column: 15, scope: !3554)
!3604 = !DILocation(line: 315, column: 13, scope: !3554)
!3605 = !DILocation(line: 316, column: 15, scope: !3554)
!3606 = !DILocation(line: 313, column: 13, scope: !3554)
!3607 = !DILocation(line: 314, column: 15, scope: !3554)
!3608 = !DILocation(line: 321, column: 23, scope: !3554)
!3609 = !DILocation(line: 321, column: 29, scope: !3554)
!3610 = !DILocation(line: 321, column: 19, scope: !3554)
!3611 = !DILocation(line: 376, column: 19, scope: !3554)
!3612 = !DILocation(line: 327, column: 13, scope: !3554)
!3613 = !DILocation(line: 328, column: 15, scope: !3554)
!3614 = !DILocation(line: 331, column: 13, scope: !3554)
!3615 = !DILocation(line: 332, column: 15, scope: !3554)
!3616 = !DILocation(line: 329, column: 13, scope: !3554)
!3617 = !DILocation(line: 330, column: 15, scope: !3554)
!3618 = !DILocation(line: 337, column: 23, scope: !3554)
!3619 = !DILocation(line: 337, column: 29, scope: !3554)
!3620 = !DILocation(line: 337, column: 19, scope: !3554)
!3621 = !DILocation(line: 376, column: 25, scope: !3554)
!3622 = !DILocation(line: 343, column: 13, scope: !3554)
!3623 = !DILocation(line: 344, column: 15, scope: !3554)
!3624 = !DILocation(line: 347, column: 13, scope: !3554)
!3625 = !DILocation(line: 348, column: 15, scope: !3554)
!3626 = !DILocation(line: 345, column: 13, scope: !3554)
!3627 = !DILocation(line: 346, column: 15, scope: !3554)
!3628 = !DILocation(line: 353, column: 23, scope: !3554)
!3629 = !DILocation(line: 353, column: 29, scope: !3554)
!3630 = !DILocation(line: 353, column: 19, scope: !3554)
!3631 = !DILocation(line: 376, column: 31, scope: !3554)
!3632 = !DILocation(line: 359, column: 13, scope: !3554)
!3633 = !DILocation(line: 360, column: 15, scope: !3554)
!3634 = !DILocation(line: 369, column: 23, scope: !3554)
!3635 = !DILocation(line: 369, column: 29, scope: !3554)
!3636 = !DILocation(line: 369, column: 19, scope: !3554)
!3637 = !DILocation(line: 376, column: 37, scope: !3554)
!3638 = !DILocation(line: 302, column: 13, scope: !3554)
!3639 = !DILocation(line: 303, column: 15, scope: !3554)
!3640 = !DILocation(line: 300, column: 13, scope: !3554)
!3641 = !DILocation(line: 301, column: 15, scope: !3554)
!3642 = !DILocation(line: 307, column: 23, scope: !3554)
!3643 = !DILocation(line: 307, column: 29, scope: !3554)
!3644 = !DILocation(line: 307, column: 19, scope: !3554)
!3645 = !DILocation(line: 319, column: 13, scope: !3554)
!3646 = !DILocation(line: 320, column: 15, scope: !3554)
!3647 = !DILocation(line: 317, column: 13, scope: !3554)
!3648 = !DILocation(line: 318, column: 15, scope: !3554)
!3649 = !DILocation(line: 323, column: 23, scope: !3554)
!3650 = !DILocation(line: 323, column: 29, scope: !3554)
!3651 = !DILocation(line: 323, column: 19, scope: !3554)
!3652 = !DILocation(line: 378, column: 19, scope: !3554)
!3653 = !DILocation(line: 335, column: 13, scope: !3554)
!3654 = !DILocation(line: 336, column: 15, scope: !3554)
!3655 = !DILocation(line: 333, column: 13, scope: !3554)
!3656 = !DILocation(line: 334, column: 15, scope: !3554)
!3657 = !DILocation(line: 339, column: 23, scope: !3554)
!3658 = !DILocation(line: 339, column: 29, scope: !3554)
!3659 = !DILocation(line: 339, column: 19, scope: !3554)
!3660 = !DILocation(line: 378, column: 25, scope: !3554)
!3661 = !DILocation(line: 351, column: 13, scope: !3554)
!3662 = !DILocation(line: 352, column: 15, scope: !3554)
!3663 = !DILocation(line: 349, column: 13, scope: !3554)
!3664 = !DILocation(line: 350, column: 15, scope: !3554)
!3665 = !DILocation(line: 355, column: 23, scope: !3554)
!3666 = !DILocation(line: 355, column: 29, scope: !3554)
!3667 = !DILocation(line: 355, column: 19, scope: !3554)
!3668 = !DILocation(line: 378, column: 31, scope: !3554)
!3669 = !DILocation(line: 367, column: 13, scope: !3554)
!3670 = !DILocation(line: 368, column: 15, scope: !3554)
!3671 = !DILocation(line: 371, column: 23, scope: !3554)
!3672 = !DILocation(line: 371, column: 29, scope: !3554)
!3673 = !DILocation(line: 371, column: 19, scope: !3554)
!3674 = !DILocation(line: 378, column: 37, scope: !3554)
!3675 = !DILocation(line: 384, column: 20, scope: !3554)
!3676 = !DILocation(line: 384, column: 18, scope: !3554)
!3677 = !DILocation(line: 462, column: 13, scope: !3554)
!3678 = !DILocation(line: 463, column: 15, scope: !3554)
!3679 = !DILocation(line: 324, column: 23, scope: !3554)
!3680 = !DILocation(line: 324, column: 29, scope: !3554)
!3681 = !DILocation(line: 324, column: 19, scope: !3554)
!3682 = !DILocation(line: 309, column: 23, scope: !3554)
!3683 = !DILocation(line: 309, column: 29, scope: !3554)
!3684 = !DILocation(line: 309, column: 19, scope: !3554)
!3685 = !DILocation(line: 325, column: 23, scope: !3554)
!3686 = !DILocation(line: 325, column: 29, scope: !3554)
!3687 = !DILocation(line: 325, column: 19, scope: !3554)
!3688 = !DILocation(line: 380, column: 19, scope: !3554)
!3689 = !DILocation(line: 341, column: 23, scope: !3554)
!3690 = !DILocation(line: 341, column: 29, scope: !3554)
!3691 = !DILocation(line: 341, column: 19, scope: !3554)
!3692 = !DILocation(line: 380, column: 25, scope: !3554)
!3693 = !DILocation(line: 357, column: 23, scope: !3554)
!3694 = !DILocation(line: 357, column: 29, scope: !3554)
!3695 = !DILocation(line: 357, column: 19, scope: !3554)
!3696 = !DILocation(line: 380, column: 31, scope: !3554)
!3697 = !DILocation(line: 373, column: 23, scope: !3554)
!3698 = !DILocation(line: 373, column: 29, scope: !3554)
!3699 = !DILocation(line: 373, column: 19, scope: !3554)
!3700 = !DILocation(line: 380, column: 37, scope: !3554)
!3701 = !DILocation(line: 386, column: 20, scope: !3554)
!3702 = !DILocation(line: 386, column: 18, scope: !3554)
!3703 = !DILocation(line: 456, column: 13, scope: !3554)
!3704 = !DILocation(line: 457, column: 15, scope: !3554)
!3705 = !DILocation(line: 306, column: 23, scope: !3554)
!3706 = !DILocation(line: 306, column: 29, scope: !3554)
!3707 = !DILocation(line: 306, column: 19, scope: !3554)
!3708 = !DILocation(line: 322, column: 23, scope: !3554)
!3709 = !DILocation(line: 322, column: 29, scope: !3554)
!3710 = !DILocation(line: 322, column: 19, scope: !3554)
!3711 = !DILocation(line: 377, column: 19, scope: !3554)
!3712 = !DILocation(line: 338, column: 23, scope: !3554)
!3713 = !DILocation(line: 338, column: 29, scope: !3554)
!3714 = !DILocation(line: 338, column: 19, scope: !3554)
!3715 = !DILocation(line: 377, column: 25, scope: !3554)
!3716 = !DILocation(line: 354, column: 23, scope: !3554)
!3717 = !DILocation(line: 354, column: 29, scope: !3554)
!3718 = !DILocation(line: 354, column: 19, scope: !3554)
!3719 = !DILocation(line: 377, column: 31, scope: !3554)
!3720 = !DILocation(line: 377, column: 37, scope: !3554)
!3721 = !DILocation(line: 308, column: 23, scope: !3554)
!3722 = !DILocation(line: 308, column: 29, scope: !3554)
!3723 = !DILocation(line: 308, column: 19, scope: !3554)
!3724 = !DILocation(line: 379, column: 19, scope: !3554)
!3725 = !DILocation(line: 340, column: 23, scope: !3554)
!3726 = !DILocation(line: 340, column: 29, scope: !3554)
!3727 = !DILocation(line: 340, column: 19, scope: !3554)
!3728 = !DILocation(line: 379, column: 25, scope: !3554)
!3729 = !DILocation(line: 356, column: 23, scope: !3554)
!3730 = !DILocation(line: 356, column: 29, scope: !3554)
!3731 = !DILocation(line: 356, column: 19, scope: !3554)
!3732 = !DILocation(line: 379, column: 31, scope: !3554)
!3733 = !DILocation(line: 372, column: 23, scope: !3554)
!3734 = !DILocation(line: 372, column: 29, scope: !3554)
!3735 = !DILocation(line: 372, column: 19, scope: !3554)
!3736 = !DILocation(line: 379, column: 37, scope: !3554)
!3737 = !DILocation(line: 385, column: 20, scope: !3554)
!3738 = !DILocation(line: 385, column: 18, scope: !3554)
!3739 = !DILocation(line: 454, column: 13, scope: !3554)
!3740 = !DILocation(line: 455, column: 15, scope: !3554)
!3741 = !DILocation(line: 468, column: 23, scope: !3554)
!3742 = !DILocation(line: 468, column: 29, scope: !3554)
!3743 = !DILocation(line: 468, column: 19, scope: !3554)
!3744 = !DILocation(line: 383, column: 20, scope: !3554)
!3745 = !DILocation(line: 383, column: 18, scope: !3554)
!3746 = !DILocation(line: 460, column: 13, scope: !3554)
!3747 = !DILocation(line: 461, column: 15, scope: !3554)
!3748 = !DILocation(line: 467, column: 23, scope: !3554)
!3749 = !DILocation(line: 467, column: 29, scope: !3554)
!3750 = !DILocation(line: 467, column: 19, scope: !3554)
!3751 = !DILocation(line: 387, column: 20, scope: !3554)
!3752 = !DILocation(line: 387, column: 18, scope: !3554)
!3753 = !DILocation(line: 458, column: 13, scope: !3554)
!3754 = !DILocation(line: 459, column: 15, scope: !3554)
!3755 = !DILocation(line: 466, column: 23, scope: !3554)
!3756 = !DILocation(line: 466, column: 29, scope: !3554)
!3757 = !DILocation(line: 466, column: 19, scope: !3554)
!3758 = !DILocation(line: 465, column: 23, scope: !3554)
!3759 = !DILocation(line: 465, column: 29, scope: !3554)
!3760 = !DILocation(line: 465, column: 19, scope: !3554)
!3761 = !DILocation(line: 464, column: 23, scope: !3554)
!3762 = !DILocation(line: 464, column: 29, scope: !3554)
!3763 = !DILocation(line: 464, column: 19, scope: !3554)
!3764 = !DILocation(line: 446, column: 13, scope: !3554)
!3765 = !DILocation(line: 447, column: 15, scope: !3554)
!3766 = !DILocation(line: 440, column: 13, scope: !3554)
!3767 = !DILocation(line: 441, column: 15, scope: !3554)
!3768 = !DILocation(line: 438, column: 13, scope: !3554)
!3769 = !DILocation(line: 439, column: 15, scope: !3554)
!3770 = !DILocation(line: 452, column: 23, scope: !3554)
!3771 = !DILocation(line: 452, column: 29, scope: !3554)
!3772 = !DILocation(line: 452, column: 19, scope: !3554)
!3773 = !DILocation(line: 444, column: 13, scope: !3554)
!3774 = !DILocation(line: 445, column: 15, scope: !3554)
!3775 = !DILocation(line: 451, column: 23, scope: !3554)
!3776 = !DILocation(line: 451, column: 29, scope: !3554)
!3777 = !DILocation(line: 451, column: 19, scope: !3554)
!3778 = !DILocation(line: 442, column: 13, scope: !3554)
!3779 = !DILocation(line: 443, column: 15, scope: !3554)
!3780 = !DILocation(line: 450, column: 23, scope: !3554)
!3781 = !DILocation(line: 450, column: 29, scope: !3554)
!3782 = !DILocation(line: 450, column: 19, scope: !3554)
!3783 = !DILocation(line: 449, column: 23, scope: !3554)
!3784 = !DILocation(line: 449, column: 29, scope: !3554)
!3785 = !DILocation(line: 449, column: 19, scope: !3554)
!3786 = !DILocation(line: 448, column: 23, scope: !3554)
!3787 = !DILocation(line: 448, column: 29, scope: !3554)
!3788 = !DILocation(line: 448, column: 19, scope: !3554)
!3789 = !DILocation(line: 430, column: 13, scope: !3554)
!3790 = !DILocation(line: 431, column: 15, scope: !3554)
!3791 = !DILocation(line: 424, column: 13, scope: !3554)
!3792 = !DILocation(line: 425, column: 15, scope: !3554)
!3793 = !DILocation(line: 422, column: 13, scope: !3554)
!3794 = !DILocation(line: 423, column: 15, scope: !3554)
!3795 = !DILocation(line: 436, column: 23, scope: !3554)
!3796 = !DILocation(line: 436, column: 29, scope: !3554)
!3797 = !DILocation(line: 436, column: 19, scope: !3554)
!3798 = !DILocation(line: 428, column: 13, scope: !3554)
!3799 = !DILocation(line: 429, column: 15, scope: !3554)
!3800 = !DILocation(line: 435, column: 23, scope: !3554)
!3801 = !DILocation(line: 435, column: 29, scope: !3554)
!3802 = !DILocation(line: 435, column: 19, scope: !3554)
!3803 = !DILocation(line: 426, column: 13, scope: !3554)
!3804 = !DILocation(line: 427, column: 15, scope: !3554)
!3805 = !DILocation(line: 434, column: 23, scope: !3554)
!3806 = !DILocation(line: 434, column: 29, scope: !3554)
!3807 = !DILocation(line: 434, column: 19, scope: !3554)
!3808 = !DILocation(line: 433, column: 23, scope: !3554)
!3809 = !DILocation(line: 433, column: 29, scope: !3554)
!3810 = !DILocation(line: 433, column: 19, scope: !3554)
!3811 = !DILocation(line: 432, column: 23, scope: !3554)
!3812 = !DILocation(line: 432, column: 29, scope: !3554)
!3813 = !DILocation(line: 432, column: 19, scope: !3554)
!3814 = !DILocation(line: 414, column: 13, scope: !3554)
!3815 = !DILocation(line: 415, column: 15, scope: !3554)
!3816 = !DILocation(line: 408, column: 13, scope: !3554)
!3817 = !DILocation(line: 409, column: 15, scope: !3554)
!3818 = !DILocation(line: 406, column: 13, scope: !3554)
!3819 = !DILocation(line: 407, column: 15, scope: !3554)
!3820 = !DILocation(line: 420, column: 23, scope: !3554)
!3821 = !DILocation(line: 420, column: 29, scope: !3554)
!3822 = !DILocation(line: 420, column: 19, scope: !3554)
!3823 = !DILocation(line: 412, column: 13, scope: !3554)
!3824 = !DILocation(line: 413, column: 15, scope: !3554)
!3825 = !DILocation(line: 419, column: 23, scope: !3554)
!3826 = !DILocation(line: 419, column: 29, scope: !3554)
!3827 = !DILocation(line: 419, column: 19, scope: !3554)
!3828 = !DILocation(line: 410, column: 13, scope: !3554)
!3829 = !DILocation(line: 411, column: 15, scope: !3554)
!3830 = !DILocation(line: 418, column: 23, scope: !3554)
!3831 = !DILocation(line: 418, column: 29, scope: !3554)
!3832 = !DILocation(line: 418, column: 19, scope: !3554)
!3833 = !DILocation(line: 417, column: 23, scope: !3554)
!3834 = !DILocation(line: 417, column: 29, scope: !3554)
!3835 = !DILocation(line: 417, column: 19, scope: !3554)
!3836 = !DILocation(line: 416, column: 23, scope: !3554)
!3837 = !DILocation(line: 416, column: 29, scope: !3554)
!3838 = !DILocation(line: 416, column: 19, scope: !3554)
!3839 = !DILocation(line: 397, column: 13, scope: !3554)
!3840 = !DILocation(line: 398, column: 15, scope: !3554)
!3841 = !DILocation(line: 391, column: 13, scope: !3554)
!3842 = !DILocation(line: 392, column: 15, scope: !3554)
!3843 = !DILocation(line: 389, column: 13, scope: !3554)
!3844 = !DILocation(line: 404, column: 23, scope: !3554)
!3845 = !DILocation(line: 404, column: 29, scope: !3554)
!3846 = !DILocation(line: 404, column: 19, scope: !3554)
!3847 = !DILocation(line: 395, column: 13, scope: !3554)
!3848 = !DILocation(line: 396, column: 15, scope: !3554)
!3849 = !DILocation(line: 403, column: 23, scope: !3554)
!3850 = !DILocation(line: 403, column: 29, scope: !3554)
!3851 = !DILocation(line: 403, column: 19, scope: !3554)
!3852 = !DILocation(line: 393, column: 13, scope: !3554)
!3853 = !DILocation(line: 394, column: 15, scope: !3554)
!3854 = !DILocation(line: 402, column: 23, scope: !3554)
!3855 = !DILocation(line: 402, column: 29, scope: !3554)
!3856 = !DILocation(line: 402, column: 19, scope: !3554)
!3857 = !DILocation(line: 401, column: 23, scope: !3554)
!3858 = !DILocation(line: 401, column: 29, scope: !3554)
!3859 = !DILocation(line: 401, column: 19, scope: !3554)
!3860 = !DILocation(line: 400, column: 45, scope: !3554)
!3861 = !DILocation(line: 400, column: 16, scope: !3554)
!3862 = !DILocation(line: 399, column: 23, scope: !3554)
!3863 = !DILocation(line: 399, column: 29, scope: !3554)
!3864 = !DILocation(line: 400, column: 13, scope: !3554)
!3865 = !DILocation(line: 279, column: 44, scope: !3516)
!3866 = !DILocation(line: 279, column: 5, scope: !3516)
!3867 = distinct !{!3867, !3517, !3868, !323}
!3868 = !DILocation(line: 469, column: 5, scope: !3513)
!3869 = !DILocation(line: 472, column: 14, scope: !3458)
!3870 = !DILocation(line: 473, column: 5, scope: !3458)
!3871 = !DILocation(line: 473, column: 14, scope: !3458)
!3872 = !DILocation(line: 474, column: 5, scope: !3458)
!3873 = !DILocation(line: 474, column: 14, scope: !3458)
!3874 = !DILocation(line: 475, column: 5, scope: !3458)
!3875 = !DILocation(line: 475, column: 14, scope: !3458)
!3876 = !DILocation(line: 476, column: 5, scope: !3458)
!3877 = !DILocation(line: 476, column: 14, scope: !3458)
!3878 = !DILocation(line: 477, column: 5, scope: !3458)
!3879 = !DILocation(line: 477, column: 14, scope: !3458)
!3880 = !DILocation(line: 478, column: 5, scope: !3458)
!3881 = !DILocation(line: 478, column: 14, scope: !3458)
!3882 = !DILocation(line: 479, column: 5, scope: !3458)
!3883 = !DILocation(line: 479, column: 14, scope: !3458)
!3884 = !DILocation(line: 480, column: 5, scope: !3458)
!3885 = !DILocation(line: 480, column: 14, scope: !3458)
!3886 = !DILocation(line: 481, column: 5, scope: !3458)
!3887 = !DILocation(line: 481, column: 14, scope: !3458)
!3888 = !DILocation(line: 482, column: 5, scope: !3458)
!3889 = !DILocation(line: 482, column: 15, scope: !3458)
!3890 = !DILocation(line: 483, column: 5, scope: !3458)
!3891 = !DILocation(line: 483, column: 15, scope: !3458)
!3892 = !DILocation(line: 484, column: 5, scope: !3458)
!3893 = !DILocation(line: 484, column: 15, scope: !3458)
!3894 = !DILocation(line: 485, column: 5, scope: !3458)
!3895 = !DILocation(line: 485, column: 15, scope: !3458)
!3896 = !DILocation(line: 486, column: 5, scope: !3458)
!3897 = !DILocation(line: 486, column: 15, scope: !3458)
!3898 = !DILocation(line: 487, column: 5, scope: !3458)
!3899 = !DILocation(line: 487, column: 15, scope: !3458)
!3900 = !DILocation(line: 488, column: 5, scope: !3458)
!3901 = !DILocation(line: 488, column: 15, scope: !3458)
!3902 = !DILocation(line: 489, column: 5, scope: !3458)
!3903 = !DILocation(line: 489, column: 15, scope: !3458)
!3904 = !DILocation(line: 490, column: 5, scope: !3458)
!3905 = !DILocation(line: 490, column: 15, scope: !3458)
!3906 = !DILocation(line: 491, column: 5, scope: !3458)
!3907 = !DILocation(line: 491, column: 15, scope: !3458)
!3908 = !DILocation(line: 492, column: 5, scope: !3458)
!3909 = !DILocation(line: 492, column: 15, scope: !3458)
!3910 = !DILocation(line: 493, column: 5, scope: !3458)
!3911 = !DILocation(line: 493, column: 15, scope: !3458)
!3912 = !DILocation(line: 494, column: 5, scope: !3458)
!3913 = !DILocation(line: 494, column: 15, scope: !3458)
!3914 = !DILocation(line: 495, column: 5, scope: !3458)
!3915 = !DILocation(line: 495, column: 15, scope: !3458)
!3916 = !DILocation(line: 496, column: 5, scope: !3458)
!3917 = !DILocation(line: 496, column: 15, scope: !3458)
!3918 = !DILocation(line: 497, column: 1, scope: !3458)
!3919 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3329, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3920 = !DILocalVariable(name: "state", arg: 1, scope: !3919, file: !71, line: 700, type: !3331)
!3921 = !DILocation(line: 0, scope: !3919)
!3922 = !DILocation(line: 701, column: 32, scope: !3919)
!3923 = !DILocation(line: 701, column: 5, scope: !3919)
!3924 = !DILocation(line: 702, column: 1, scope: !3919)
!3925 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3926, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{null, !5, !19, !12}
!3928 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3925, file: !71, line: 640, type: !5)
!3929 = !DILocation(line: 0, scope: !3925)
!3930 = !DILocalVariable(name: "r", arg: 2, scope: !3925, file: !71, line: 640, type: !19)
!3931 = !DILocalVariable(name: "p", arg: 3, scope: !3925, file: !71, line: 640, type: !12)
!3932 = !DILocation(line: 643, column: 30, scope: !3925)
!3933 = !DILocation(line: 643, column: 51, scope: !3925)
!3934 = !DILocation(line: 643, column: 48, scope: !3925)
!3935 = !DILocation(line: 643, column: 42, scope: !3925)
!3936 = !DILocation(line: 643, column: 21, scope: !3925)
!3937 = !DILocation(line: 643, column: 5, scope: !3925)
!3938 = !DILocation(line: 643, column: 27, scope: !3925)
!3939 = !DILocation(line: 644, column: 48, scope: !3925)
!3940 = !DILocation(line: 644, column: 42, scope: !3925)
!3941 = !DILocation(line: 644, column: 14, scope: !3925)
!3942 = !DILocation(line: 644, column: 19, scope: !3925)
!3943 = !DILocation(line: 644, column: 5, scope: !3925)
!3944 = !DILocation(line: 644, column: 25, scope: !3925)
!3945 = !DILocation(line: 645, column: 5, scope: !3925)
!3946 = !DILocation(line: 645, column: 15, scope: !3925)
!3947 = !DILocation(line: 646, column: 1, scope: !3925)
!3948 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !3949, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !11, !15, !3331}
!3951 = !DILocalVariable(name: "output", arg: 1, scope: !3948, file: !71, line: 704, type: !11)
!3952 = !DILocation(line: 0, scope: !3948)
!3953 = !DILocalVariable(name: "outlen", arg: 2, scope: !3948, file: !71, line: 704, type: !15)
!3954 = !DILocalVariable(name: "state", arg: 3, scope: !3948, file: !71, line: 704, type: !3331)
!3955 = !DILocation(line: 705, column: 47, scope: !3948)
!3956 = !DILocation(line: 705, column: 5, scope: !3948)
!3957 = !DILocation(line: 706, column: 1, scope: !3948)
!3958 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !3959, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !11, !15, !5, !19}
!3961 = !DILocalVariable(name: "h", arg: 1, scope: !3958, file: !71, line: 661, type: !11)
!3962 = !DILocation(line: 0, scope: !3958)
!3963 = !DILocalVariable(name: "outlen", arg: 2, scope: !3958, file: !71, line: 661, type: !15)
!3964 = !DILocalVariable(name: "s_inc", arg: 3, scope: !3958, file: !71, line: 662, type: !5)
!3965 = !DILocalVariable(name: "r", arg: 4, scope: !3958, file: !71, line: 662, type: !19)
!3966 = !DILocalVariable(name: "i", scope: !3958, file: !71, line: 663, type: !15)
!3967 = !DILocation(line: 666, column: 10, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3958, file: !71, line: 666, column: 5)
!3969 = !DILocation(line: 666, scope: !3968)
!3970 = !DILocation(line: 666, column: 19, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3968, file: !71, line: 666, column: 5)
!3972 = !DILocation(line: 666, column: 28, scope: !3971)
!3973 = !DILocation(line: 666, column: 31, scope: !3971)
!3974 = !DILocation(line: 666, column: 35, scope: !3971)
!3975 = !DILocation(line: 666, column: 33, scope: !3971)
!3976 = !DILocation(line: 666, column: 5, scope: !3968)
!3977 = !DILocation(line: 669, column: 33, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3971, file: !71, line: 666, column: 51)
!3979 = !DILocation(line: 669, column: 37, scope: !3978)
!3980 = !DILocation(line: 669, column: 35, scope: !3978)
!3981 = !DILocation(line: 669, column: 49, scope: !3978)
!3982 = !DILocation(line: 669, column: 47, scope: !3978)
!3983 = !DILocation(line: 669, column: 52, scope: !3978)
!3984 = !DILocation(line: 669, column: 26, scope: !3978)
!3985 = !DILocation(line: 669, column: 68, scope: !3978)
!3986 = !DILocation(line: 669, column: 72, scope: !3978)
!3987 = !DILocation(line: 669, column: 70, scope: !3978)
!3988 = !DILocation(line: 669, column: 84, scope: !3978)
!3989 = !DILocation(line: 669, column: 82, scope: !3978)
!3990 = !DILocation(line: 669, column: 64, scope: !3978)
!3991 = !DILocation(line: 669, column: 58, scope: !3978)
!3992 = !DILocation(line: 669, column: 16, scope: !3978)
!3993 = !DILocation(line: 669, column: 9, scope: !3978)
!3994 = !DILocation(line: 669, column: 14, scope: !3978)
!3995 = !DILocation(line: 666, column: 47, scope: !3971)
!3996 = !DILocation(line: 666, column: 5, scope: !3971)
!3997 = distinct !{!3997, !3976, !3998, !323}
!3998 = !DILocation(line: 670, column: 5, scope: !3968)
!3999 = !DILocation(line: 671, column: 7, scope: !3958)
!4000 = !DILocation(line: 672, column: 12, scope: !3958)
!4001 = !DILocation(line: 673, column: 18, scope: !3958)
!4002 = !DILocation(line: 673, column: 5, scope: !3958)
!4003 = !DILocation(line: 673, column: 15, scope: !3958)
!4004 = !DILocation(line: 676, column: 5, scope: !3958)
!4005 = !DILocation(line: 676, column: 19, scope: !3958)
!4006 = !DILocation(line: 677, column: 9, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3958, file: !71, line: 676, column: 24)
!4008 = !DILocation(line: 679, column: 14, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4007, file: !71, line: 679, column: 9)
!4010 = !DILocation(line: 679, scope: !4009)
!4011 = !DILocation(line: 679, column: 32, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4009, file: !71, line: 679, column: 9)
!4013 = !DILocation(line: 679, column: 9, scope: !4009)
!4014 = !DILocation(line: 680, column: 38, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4012, file: !71, line: 679, column: 47)
!4016 = !DILocation(line: 680, column: 30, scope: !4015)
!4017 = !DILocation(line: 680, column: 50, scope: !4015)
!4018 = !DILocation(line: 680, column: 44, scope: !4015)
!4019 = !DILocation(line: 680, column: 20, scope: !4015)
!4020 = !DILocation(line: 680, column: 13, scope: !4015)
!4021 = !DILocation(line: 680, column: 18, scope: !4015)
!4022 = !DILocation(line: 679, column: 43, scope: !4012)
!4023 = !DILocation(line: 679, column: 9, scope: !4012)
!4024 = distinct !{!4024, !4013, !4025, !323}
!4025 = !DILocation(line: 681, column: 9, scope: !4009)
!4026 = !DILocation(line: 682, column: 11, scope: !4007)
!4027 = !DILocation(line: 683, column: 16, scope: !4007)
!4028 = !DILocation(line: 684, column: 23, scope: !4007)
!4029 = !DILocation(line: 684, column: 21, scope: !4007)
!4030 = !DILocation(line: 684, column: 9, scope: !4007)
!4031 = !DILocation(line: 684, column: 19, scope: !4007)
!4032 = distinct !{!4032, !4004, !4033, !323}
!4033 = !DILocation(line: 685, column: 5, scope: !3958)
!4034 = !DILocation(line: 686, column: 1, scope: !3958)
!4035 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4036, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !3331, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3332)
!4040 = !DILocalVariable(name: "dest", arg: 1, scope: !4035, file: !71, line: 708, type: !3331)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocalVariable(name: "src", arg: 2, scope: !4035, file: !71, line: 708, type: !4038)
!4043 = !DILocation(line: 709, column: 17, scope: !4035)
!4044 = !DILocation(line: 709, column: 15, scope: !4035)
!4045 = !DILocation(line: 710, column: 19, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4035, file: !71, line: 710, column: 9)
!4047 = !DILocation(line: 711, column: 9, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4046, file: !71, line: 710, column: 28)
!4049 = !DILocation(line: 712, column: 5, scope: !4048)
!4050 = !DILocation(line: 713, column: 18, scope: !4035)
!4051 = !DILocation(line: 713, column: 28, scope: !4035)
!4052 = !DILocation(line: 713, column: 5, scope: !4035)
!4053 = !DILocation(line: 714, column: 1, scope: !4035)
!4054 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3329, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4055 = !DILocalVariable(name: "state", arg: 1, scope: !4054, file: !71, line: 716, type: !3331)
!4056 = !DILocation(line: 0, scope: !4054)
!4057 = !DILocation(line: 717, column: 17, scope: !4054)
!4058 = !DILocation(line: 717, column: 5, scope: !4054)
!4059 = !DILocation(line: 718, column: 1, scope: !4054)
!4060 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4061, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4065)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4066)
!4066 = !{!4067}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4065, file: !71, line: 40, baseType: !5, size: 32)
!4068 = !DILocalVariable(name: "state", arg: 1, scope: !4060, file: !71, line: 720, type: !4063)
!4069 = !DILocation(line: 0, scope: !4060)
!4070 = !DILocation(line: 721, column: 18, scope: !4060)
!4071 = !DILocation(line: 721, column: 16, scope: !4060)
!4072 = !DILocation(line: 722, column: 20, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4060, file: !71, line: 722, column: 9)
!4074 = !DILocation(line: 723, column: 9, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4073, file: !71, line: 722, column: 29)
!4076 = !DILocation(line: 724, column: 5, scope: !4075)
!4077 = !DILocation(line: 725, column: 28, scope: !4060)
!4078 = !DILocation(line: 725, column: 5, scope: !4060)
!4079 = !DILocation(line: 726, column: 1, scope: !4060)
!4080 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4081, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{null, !4063, !3371, !15}
!4083 = !DILocalVariable(name: "state", arg: 1, scope: !4080, file: !71, line: 728, type: !4063)
!4084 = !DILocation(line: 0, scope: !4080)
!4085 = !DILocalVariable(name: "input", arg: 2, scope: !4080, file: !71, line: 728, type: !3371)
!4086 = !DILocalVariable(name: "inlen", arg: 3, scope: !4080, file: !71, line: 728, type: !15)
!4087 = !DILocation(line: 729, column: 30, scope: !4080)
!4088 = !DILocation(line: 729, column: 5, scope: !4080)
!4089 = !DILocation(line: 730, column: 1, scope: !4080)
!4090 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4061, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4091 = !DILocalVariable(name: "state", arg: 1, scope: !4090, file: !71, line: 732, type: !4063)
!4092 = !DILocation(line: 0, scope: !4090)
!4093 = !DILocation(line: 733, column: 32, scope: !4090)
!4094 = !DILocation(line: 733, column: 5, scope: !4090)
!4095 = !DILocation(line: 734, column: 1, scope: !4090)
!4096 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4097, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{null, !11, !15, !4063}
!4099 = !DILocalVariable(name: "output", arg: 1, scope: !4096, file: !71, line: 736, type: !11)
!4100 = !DILocation(line: 0, scope: !4096)
!4101 = !DILocalVariable(name: "outlen", arg: 2, scope: !4096, file: !71, line: 736, type: !15)
!4102 = !DILocalVariable(name: "state", arg: 3, scope: !4096, file: !71, line: 736, type: !4063)
!4103 = !DILocation(line: 737, column: 47, scope: !4096)
!4104 = !DILocation(line: 737, column: 5, scope: !4096)
!4105 = !DILocation(line: 738, column: 1, scope: !4096)
!4106 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4107, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !4063, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4064)
!4111 = !DILocalVariable(name: "dest", arg: 1, scope: !4106, file: !71, line: 740, type: !4063)
!4112 = !DILocation(line: 0, scope: !4106)
!4113 = !DILocalVariable(name: "src", arg: 2, scope: !4106, file: !71, line: 740, type: !4109)
!4114 = !DILocation(line: 741, column: 17, scope: !4106)
!4115 = !DILocation(line: 741, column: 15, scope: !4106)
!4116 = !DILocation(line: 742, column: 19, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4106, file: !71, line: 742, column: 9)
!4118 = !DILocation(line: 743, column: 9, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4117, file: !71, line: 742, column: 28)
!4120 = !DILocation(line: 744, column: 5, scope: !4119)
!4121 = !DILocation(line: 745, column: 18, scope: !4106)
!4122 = !DILocation(line: 745, column: 28, scope: !4106)
!4123 = !DILocation(line: 745, column: 5, scope: !4106)
!4124 = !DILocation(line: 746, column: 1, scope: !4106)
!4125 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4061, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4126 = !DILocalVariable(name: "state", arg: 1, scope: !4125, file: !71, line: 748, type: !4063)
!4127 = !DILocation(line: 0, scope: !4125)
!4128 = !DILocation(line: 749, column: 17, scope: !4125)
!4129 = !DILocation(line: 749, column: 5, scope: !4125)
!4130 = !DILocation(line: 750, column: 1, scope: !4125)
!4131 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4132, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4134, !3371, !15}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4137)
!4137 = !{!4138}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4136, file: !71, line: 35, baseType: !5, size: 32)
!4139 = !DILocalVariable(name: "state", arg: 1, scope: !4131, file: !71, line: 764, type: !4134)
!4140 = !DILocation(line: 0, scope: !4131)
!4141 = !DILocalVariable(name: "input", arg: 2, scope: !4131, file: !71, line: 764, type: !3371)
!4142 = !DILocalVariable(name: "inlen", arg: 3, scope: !4131, file: !71, line: 764, type: !15)
!4143 = !DILocation(line: 765, column: 18, scope: !4131)
!4144 = !DILocation(line: 765, column: 16, scope: !4131)
!4145 = !DILocation(line: 766, column: 20, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4131, file: !71, line: 766, column: 9)
!4147 = !DILocation(line: 767, column: 9, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4146, file: !71, line: 766, column: 29)
!4149 = !DILocation(line: 768, column: 5, scope: !4148)
!4150 = !DILocation(line: 769, column: 26, scope: !4131)
!4151 = !DILocation(line: 769, column: 5, scope: !4131)
!4152 = !DILocation(line: 770, column: 1, scope: !4131)
!4153 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4154, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !5, !19, !3371, !15, !12}
!4156 = !DILocalVariable(name: "s", arg: 1, scope: !4153, file: !71, line: 512, type: !5)
!4157 = !DILocation(line: 0, scope: !4153)
!4158 = !DILocalVariable(name: "r", arg: 2, scope: !4153, file: !71, line: 512, type: !19)
!4159 = !DILocalVariable(name: "m", arg: 3, scope: !4153, file: !71, line: 512, type: !3371)
!4160 = !DILocalVariable(name: "mlen", arg: 4, scope: !4153, file: !71, line: 513, type: !15)
!4161 = !DILocalVariable(name: "p", arg: 5, scope: !4153, file: !71, line: 513, type: !12)
!4162 = !DILocalVariable(name: "t", scope: !4153, file: !71, line: 515, type: !4163)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4164)
!4164 = !{!4165}
!4165 = !DISubrange(count: 200)
!4166 = !DILocation(line: 515, column: 13, scope: !4153)
!4167 = !DILocalVariable(name: "i", scope: !4153, file: !71, line: 514, type: !15)
!4168 = !DILocation(line: 518, column: 10, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4153, file: !71, line: 518, column: 5)
!4170 = !DILocation(line: 518, scope: !4169)
!4171 = !DILocation(line: 518, column: 19, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4169, file: !71, line: 518, column: 5)
!4173 = !DILocation(line: 518, column: 5, scope: !4169)
!4174 = !DILocation(line: 522, column: 5, scope: !4153)
!4175 = !DILocation(line: 519, column: 9, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4172, file: !71, line: 518, column: 30)
!4177 = !DILocation(line: 519, column: 14, scope: !4176)
!4178 = !DILocation(line: 518, column: 25, scope: !4172)
!4179 = !DILocation(line: 518, column: 5, scope: !4172)
!4180 = distinct !{!4180, !4173, !4181, !323}
!4181 = !DILocation(line: 520, column: 5, scope: !4169)
!4182 = !DILocation(line: 522, column: 17, scope: !4153)
!4183 = !DILocation(line: 523, column: 9, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !71, line: 523, column: 9)
!4185 = distinct !DILexicalBlock(scope: !4153, file: !71, line: 522, column: 23)
!4186 = !DILocation(line: 532, column: 5, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4153, file: !71, line: 532, column: 5)
!4188 = !DILocation(line: 523, scope: !4184)
!4189 = !DILocation(line: 523, column: 23, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4184, file: !71, line: 523, column: 9)
!4191 = !DILocation(line: 524, column: 34, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4190, file: !71, line: 523, column: 37)
!4193 = !DILocation(line: 524, column: 30, scope: !4192)
!4194 = !DILocation(line: 524, column: 21, scope: !4192)
!4195 = !DILocation(line: 524, column: 13, scope: !4192)
!4196 = !DILocation(line: 524, column: 18, scope: !4192)
!4197 = !DILocation(line: 523, column: 32, scope: !4190)
!4198 = !DILocation(line: 523, column: 9, scope: !4190)
!4199 = distinct !{!4199, !4183, !4200, !323}
!4200 = !DILocation(line: 525, column: 9, scope: !4184)
!4201 = !DILocation(line: 527, column: 9, scope: !4185)
!4202 = !DILocation(line: 528, column: 14, scope: !4185)
!4203 = !DILocation(line: 529, column: 11, scope: !4185)
!4204 = distinct !{!4204, !4174, !4205, !323}
!4205 = !DILocation(line: 530, column: 5, scope: !4153)
!4206 = !DILocation(line: 532, scope: !4187)
!4207 = !DILocation(line: 532, column: 19, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4187, file: !71, line: 532, column: 5)
!4209 = !DILocation(line: 535, column: 5, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4153, file: !71, line: 535, column: 5)
!4211 = !DILocation(line: 533, column: 9, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4208, file: !71, line: 532, column: 29)
!4213 = !DILocation(line: 533, column: 14, scope: !4212)
!4214 = !DILocation(line: 532, column: 24, scope: !4208)
!4215 = !DILocation(line: 532, column: 5, scope: !4208)
!4216 = distinct !{!4216, !4186, !4217, !323}
!4217 = !DILocation(line: 534, column: 5, scope: !4187)
!4218 = !DILocation(line: 535, scope: !4210)
!4219 = !DILocation(line: 535, column: 19, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4210, file: !71, line: 535, column: 5)
!4221 = !DILocation(line: 536, column: 16, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4220, file: !71, line: 535, column: 32)
!4223 = !DILocation(line: 536, column: 9, scope: !4222)
!4224 = !DILocation(line: 536, column: 14, scope: !4222)
!4225 = !DILocation(line: 535, column: 27, scope: !4220)
!4226 = !DILocation(line: 535, column: 5, scope: !4220)
!4227 = distinct !{!4227, !4209, !4228, !323}
!4228 = !DILocation(line: 537, column: 5, scope: !4210)
!4229 = !DILocation(line: 538, column: 5, scope: !4153)
!4230 = !DILocation(line: 538, column: 10, scope: !4153)
!4231 = !DILocation(line: 539, column: 9, scope: !4153)
!4232 = !DILocation(line: 539, column: 5, scope: !4153)
!4233 = !DILocation(line: 539, column: 14, scope: !4153)
!4234 = !DILocation(line: 540, column: 10, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4153, file: !71, line: 540, column: 5)
!4236 = !DILocation(line: 540, scope: !4235)
!4237 = !DILocation(line: 540, column: 19, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4235, file: !71, line: 540, column: 5)
!4239 = !DILocation(line: 540, column: 5, scope: !4235)
!4240 = !DILocation(line: 541, column: 30, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4238, file: !71, line: 540, column: 33)
!4242 = !DILocation(line: 541, column: 26, scope: !4241)
!4243 = !DILocation(line: 541, column: 17, scope: !4241)
!4244 = !DILocation(line: 541, column: 9, scope: !4241)
!4245 = !DILocation(line: 541, column: 14, scope: !4241)
!4246 = !DILocation(line: 540, column: 28, scope: !4238)
!4247 = !DILocation(line: 540, column: 5, scope: !4238)
!4248 = distinct !{!4248, !4239, !4249, !323}
!4249 = !DILocation(line: 542, column: 5, scope: !4235)
!4250 = !DILocation(line: 543, column: 1, scope: !4153)
!4251 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4252, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!6, !3371}
!4254 = !DILocalVariable(name: "x", arg: 1, scope: !4251, file: !71, line: 190, type: !3371)
!4255 = !DILocation(line: 0, scope: !4251)
!4256 = !DILocalVariable(name: "r", scope: !4251, file: !71, line: 191, type: !6)
!4257 = !DILocalVariable(name: "i", scope: !4258, file: !71, line: 192, type: !15)
!4258 = distinct !DILexicalBlock(scope: !4251, file: !71, line: 192, column: 5)
!4259 = !DILocation(line: 0, scope: !4258)
!4260 = !DILocation(line: 192, column: 10, scope: !4258)
!4261 = !DILocation(line: 192, scope: !4258)
!4262 = !DILocation(line: 192, column: 26, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4258, file: !71, line: 192, column: 5)
!4264 = !DILocation(line: 192, column: 5, scope: !4258)
!4265 = !DILocation(line: 193, column: 24, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !71, line: 192, column: 36)
!4267 = !DILocation(line: 193, column: 14, scope: !4266)
!4268 = !DILocation(line: 193, column: 34, scope: !4266)
!4269 = !DILocation(line: 193, column: 29, scope: !4266)
!4270 = !DILocation(line: 193, column: 11, scope: !4266)
!4271 = !DILocation(line: 192, column: 31, scope: !4263)
!4272 = !DILocation(line: 192, column: 5, scope: !4263)
!4273 = distinct !{!4273, !4264, !4274, !323}
!4274 = !DILocation(line: 194, column: 5, scope: !4258)
!4275 = !DILocation(line: 196, column: 5, scope: !4251)
!4276 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4277, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{null, !11, !15, !4134}
!4279 = !DILocalVariable(name: "output", arg: 1, scope: !4276, file: !71, line: 784, type: !11)
!4280 = !DILocation(line: 0, scope: !4276)
!4281 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4276, file: !71, line: 784, type: !15)
!4282 = !DILocalVariable(name: "state", arg: 3, scope: !4276, file: !71, line: 784, type: !4134)
!4283 = !DILocation(line: 785, column: 50, scope: !4276)
!4284 = !DILocation(line: 785, column: 5, scope: !4276)
!4285 = !DILocation(line: 786, column: 1, scope: !4276)
!4286 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !3959, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4287 = !DILocalVariable(name: "h", arg: 1, scope: !4286, file: !71, line: 558, type: !11)
!4288 = !DILocation(line: 0, scope: !4286)
!4289 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4286, file: !71, line: 558, type: !15)
!4290 = !DILocalVariable(name: "s", arg: 3, scope: !4286, file: !71, line: 559, type: !5)
!4291 = !DILocalVariable(name: "r", arg: 4, scope: !4286, file: !71, line: 559, type: !19)
!4292 = !DILocation(line: 560, column: 5, scope: !4286)
!4293 = !DILocation(line: 560, column: 20, scope: !4286)
!4294 = !DILocation(line: 561, column: 9, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4286, file: !71, line: 560, column: 25)
!4296 = !DILocalVariable(name: "i", scope: !4297, file: !71, line: 562, type: !15)
!4297 = distinct !DILexicalBlock(scope: !4295, file: !71, line: 562, column: 9)
!4298 = !DILocation(line: 0, scope: !4297)
!4299 = !DILocation(line: 562, column: 14, scope: !4297)
!4300 = !DILocation(line: 562, scope: !4297)
!4301 = !DILocation(line: 562, column: 30, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4297, file: !71, line: 562, column: 9)
!4303 = !DILocation(line: 562, column: 9, scope: !4297)
!4304 = !DILocation(line: 563, column: 27, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4302, file: !71, line: 562, column: 47)
!4306 = !DILocation(line: 563, column: 23, scope: !4305)
!4307 = !DILocation(line: 563, column: 32, scope: !4305)
!4308 = !DILocation(line: 563, column: 13, scope: !4305)
!4309 = !DILocation(line: 562, column: 43, scope: !4302)
!4310 = !DILocation(line: 562, column: 9, scope: !4302)
!4311 = distinct !{!4311, !4303, !4312, !323}
!4312 = !DILocation(line: 564, column: 9, scope: !4297)
!4313 = !DILocation(line: 565, column: 11, scope: !4295)
!4314 = !DILocation(line: 566, column: 16, scope: !4295)
!4315 = distinct !{!4315, !4292, !4316, !323}
!4316 = !DILocation(line: 567, column: 5, scope: !4286)
!4317 = !DILocation(line: 568, column: 1, scope: !4286)
!4318 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4319, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !11, !6}
!4321 = !DILocalVariable(name: "x", arg: 1, scope: !4318, file: !71, line: 207, type: !11)
!4322 = !DILocation(line: 0, scope: !4318)
!4323 = !DILocalVariable(name: "u", arg: 2, scope: !4318, file: !71, line: 207, type: !6)
!4324 = !DILocalVariable(name: "i", scope: !4325, file: !71, line: 208, type: !15)
!4325 = distinct !DILexicalBlock(scope: !4318, file: !71, line: 208, column: 5)
!4326 = !DILocation(line: 0, scope: !4325)
!4327 = !DILocation(line: 208, column: 10, scope: !4325)
!4328 = !DILocation(line: 208, scope: !4325)
!4329 = !DILocation(line: 208, column: 26, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4325, file: !71, line: 208, column: 5)
!4331 = !DILocation(line: 208, column: 5, scope: !4325)
!4332 = !DILocation(line: 209, column: 34, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !71, line: 208, column: 36)
!4334 = !DILocation(line: 209, column: 29, scope: !4333)
!4335 = !DILocation(line: 209, column: 16, scope: !4333)
!4336 = !DILocation(line: 209, column: 9, scope: !4333)
!4337 = !DILocation(line: 209, column: 14, scope: !4333)
!4338 = !DILocation(line: 208, column: 31, scope: !4330)
!4339 = !DILocation(line: 208, column: 5, scope: !4330)
!4340 = distinct !{!4340, !4331, !4341, !323}
!4341 = !DILocation(line: 210, column: 5, scope: !4325)
!4342 = !DILocation(line: 211, column: 1, scope: !4318)
!4343 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4344, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !4134, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4135)
!4348 = !DILocalVariable(name: "dest", arg: 1, scope: !4343, file: !71, line: 788, type: !4134)
!4349 = !DILocation(line: 0, scope: !4343)
!4350 = !DILocalVariable(name: "src", arg: 2, scope: !4343, file: !71, line: 788, type: !4346)
!4351 = !DILocation(line: 789, column: 17, scope: !4343)
!4352 = !DILocation(line: 789, column: 15, scope: !4343)
!4353 = !DILocation(line: 790, column: 19, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4343, file: !71, line: 790, column: 9)
!4355 = !DILocation(line: 791, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4354, file: !71, line: 790, column: 28)
!4357 = !DILocation(line: 792, column: 5, scope: !4356)
!4358 = !DILocation(line: 793, column: 18, scope: !4343)
!4359 = !DILocation(line: 793, column: 28, scope: !4343)
!4360 = !DILocation(line: 793, column: 5, scope: !4343)
!4361 = !DILocation(line: 794, column: 1, scope: !4343)
!4362 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4363, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !4134}
!4365 = !DILocalVariable(name: "state", arg: 1, scope: !4362, file: !71, line: 797, type: !4134)
!4366 = !DILocation(line: 0, scope: !4362)
!4367 = !DILocation(line: 798, column: 17, scope: !4362)
!4368 = !DILocation(line: 798, column: 5, scope: !4362)
!4369 = !DILocation(line: 799, column: 1, scope: !4362)
!4370 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4371, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{null, !4373, !3371, !15}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 32)
!4374 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4375)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4376)
!4376 = !{!4377}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4375, file: !71, line: 45, baseType: !5, size: 32)
!4378 = !DILocalVariable(name: "state", arg: 1, scope: !4370, file: !71, line: 812, type: !4373)
!4379 = !DILocation(line: 0, scope: !4370)
!4380 = !DILocalVariable(name: "input", arg: 2, scope: !4370, file: !71, line: 812, type: !3371)
!4381 = !DILocalVariable(name: "inlen", arg: 3, scope: !4370, file: !71, line: 812, type: !15)
!4382 = !DILocation(line: 813, column: 18, scope: !4370)
!4383 = !DILocation(line: 813, column: 16, scope: !4370)
!4384 = !DILocation(line: 814, column: 20, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4370, file: !71, line: 814, column: 9)
!4386 = !DILocation(line: 815, column: 9, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4385, file: !71, line: 814, column: 29)
!4388 = !DILocation(line: 816, column: 5, scope: !4387)
!4389 = !DILocation(line: 817, column: 26, scope: !4370)
!4390 = !DILocation(line: 817, column: 5, scope: !4370)
!4391 = !DILocation(line: 818, column: 1, scope: !4370)
!4392 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4393, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !11, !15, !4373}
!4395 = !DILocalVariable(name: "output", arg: 1, scope: !4392, file: !71, line: 832, type: !11)
!4396 = !DILocation(line: 0, scope: !4392)
!4397 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4392, file: !71, line: 832, type: !15)
!4398 = !DILocalVariable(name: "state", arg: 3, scope: !4392, file: !71, line: 832, type: !4373)
!4399 = !DILocation(line: 833, column: 50, scope: !4392)
!4400 = !DILocation(line: 833, column: 5, scope: !4392)
!4401 = !DILocation(line: 834, column: 1, scope: !4392)
!4402 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4403, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !4373, !4405}
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4374)
!4407 = !DILocalVariable(name: "dest", arg: 1, scope: !4402, file: !71, line: 836, type: !4373)
!4408 = !DILocation(line: 0, scope: !4402)
!4409 = !DILocalVariable(name: "src", arg: 2, scope: !4402, file: !71, line: 836, type: !4405)
!4410 = !DILocation(line: 837, column: 17, scope: !4402)
!4411 = !DILocation(line: 837, column: 15, scope: !4402)
!4412 = !DILocation(line: 838, column: 19, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4402, file: !71, line: 838, column: 9)
!4414 = !DILocation(line: 839, column: 9, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4413, file: !71, line: 838, column: 28)
!4416 = !DILocation(line: 840, column: 5, scope: !4415)
!4417 = !DILocation(line: 841, column: 18, scope: !4402)
!4418 = !DILocation(line: 841, column: 28, scope: !4402)
!4419 = !DILocation(line: 841, column: 5, scope: !4402)
!4420 = !DILocation(line: 842, column: 1, scope: !4402)
!4421 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4422, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{null, !4373}
!4424 = !DILocalVariable(name: "state", arg: 1, scope: !4421, file: !71, line: 845, type: !4373)
!4425 = !DILocation(line: 0, scope: !4421)
!4426 = !DILocation(line: 846, column: 17, scope: !4421)
!4427 = !DILocation(line: 846, column: 5, scope: !4421)
!4428 = !DILocation(line: 847, column: 1, scope: !4421)
!4429 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4430, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !11, !15, !3371, !15}
!4432 = !DILocalVariable(name: "output", arg: 1, scope: !4429, file: !71, line: 859, type: !11)
!4433 = !DILocation(line: 0, scope: !4429)
!4434 = !DILocalVariable(name: "outlen", arg: 2, scope: !4429, file: !71, line: 859, type: !15)
!4435 = !DILocalVariable(name: "input", arg: 3, scope: !4429, file: !71, line: 860, type: !3371)
!4436 = !DILocalVariable(name: "inlen", arg: 4, scope: !4429, file: !71, line: 860, type: !15)
!4437 = !DILocation(line: 861, column: 29, scope: !4429)
!4438 = !DILocalVariable(name: "nblocks", scope: !4429, file: !71, line: 861, type: !15)
!4439 = !DILocalVariable(name: "t", scope: !4429, file: !71, line: 862, type: !4440)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4441)
!4441 = !{!4442}
!4442 = !DISubrange(count: 168)
!4443 = !DILocation(line: 862, column: 13, scope: !4429)
!4444 = !DILocalVariable(name: "s", scope: !4429, file: !71, line: 863, type: !4135)
!4445 = !DILocation(line: 863, column: 17, scope: !4429)
!4446 = !DILocation(line: 865, column: 5, scope: !4429)
!4447 = !DILocation(line: 866, column: 5, scope: !4429)
!4448 = !DILocation(line: 868, column: 23, scope: !4429)
!4449 = !DILocation(line: 868, column: 12, scope: !4429)
!4450 = !DILocation(line: 869, column: 23, scope: !4429)
!4451 = !DILocation(line: 869, column: 12, scope: !4429)
!4452 = !DILocation(line: 871, column: 9, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4429, file: !71, line: 871, column: 9)
!4454 = !DILocation(line: 872, column: 9, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4453, file: !71, line: 871, column: 17)
!4456 = !DILocalVariable(name: "i", scope: !4457, file: !71, line: 873, type: !15)
!4457 = distinct !DILexicalBlock(scope: !4455, file: !71, line: 873, column: 9)
!4458 = !DILocation(line: 0, scope: !4457)
!4459 = !DILocation(line: 873, column: 14, scope: !4457)
!4460 = !DILocation(line: 873, scope: !4457)
!4461 = !DILocation(line: 873, column: 30, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4457, file: !71, line: 873, column: 9)
!4463 = !DILocation(line: 873, column: 9, scope: !4457)
!4464 = !DILocation(line: 874, column: 25, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4462, file: !71, line: 873, column: 45)
!4466 = !DILocation(line: 874, column: 13, scope: !4465)
!4467 = !DILocation(line: 874, column: 23, scope: !4465)
!4468 = !DILocation(line: 873, column: 40, scope: !4462)
!4469 = !DILocation(line: 873, column: 9, scope: !4462)
!4470 = distinct !{!4470, !4463, !4471, !323}
!4471 = !DILocation(line: 875, column: 9, scope: !4457)
!4472 = !DILocation(line: 877, column: 5, scope: !4429)
!4473 = !DILocation(line: 878, column: 1, scope: !4429)
!4474 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4430, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4475 = !DILocalVariable(name: "output", arg: 1, scope: !4474, file: !71, line: 890, type: !11)
!4476 = !DILocation(line: 0, scope: !4474)
!4477 = !DILocalVariable(name: "outlen", arg: 2, scope: !4474, file: !71, line: 890, type: !15)
!4478 = !DILocalVariable(name: "input", arg: 3, scope: !4474, file: !71, line: 891, type: !3371)
!4479 = !DILocalVariable(name: "inlen", arg: 4, scope: !4474, file: !71, line: 891, type: !15)
!4480 = !DILocation(line: 892, column: 29, scope: !4474)
!4481 = !DILocalVariable(name: "nblocks", scope: !4474, file: !71, line: 892, type: !15)
!4482 = !DILocalVariable(name: "t", scope: !4474, file: !71, line: 893, type: !4483)
!4483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4484)
!4484 = !{!4485}
!4485 = !DISubrange(count: 136)
!4486 = !DILocation(line: 893, column: 13, scope: !4474)
!4487 = !DILocalVariable(name: "s", scope: !4474, file: !71, line: 894, type: !4374)
!4488 = !DILocation(line: 894, column: 17, scope: !4474)
!4489 = !DILocation(line: 896, column: 5, scope: !4474)
!4490 = !DILocation(line: 897, column: 5, scope: !4474)
!4491 = !DILocation(line: 899, column: 23, scope: !4474)
!4492 = !DILocation(line: 899, column: 12, scope: !4474)
!4493 = !DILocation(line: 900, column: 23, scope: !4474)
!4494 = !DILocation(line: 900, column: 12, scope: !4474)
!4495 = !DILocation(line: 902, column: 9, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4474, file: !71, line: 902, column: 9)
!4497 = !DILocation(line: 903, column: 9, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4496, file: !71, line: 902, column: 17)
!4499 = !DILocalVariable(name: "i", scope: !4500, file: !71, line: 904, type: !15)
!4500 = distinct !DILexicalBlock(scope: !4498, file: !71, line: 904, column: 9)
!4501 = !DILocation(line: 0, scope: !4500)
!4502 = !DILocation(line: 904, column: 14, scope: !4500)
!4503 = !DILocation(line: 904, scope: !4500)
!4504 = !DILocation(line: 904, column: 30, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4500, file: !71, line: 904, column: 9)
!4506 = !DILocation(line: 904, column: 9, scope: !4500)
!4507 = !DILocation(line: 905, column: 25, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4505, file: !71, line: 904, column: 45)
!4509 = !DILocation(line: 905, column: 13, scope: !4508)
!4510 = !DILocation(line: 905, column: 23, scope: !4508)
!4511 = !DILocation(line: 904, column: 40, scope: !4505)
!4512 = !DILocation(line: 904, column: 9, scope: !4505)
!4513 = distinct !{!4513, !4506, !4514, !323}
!4514 = !DILocation(line: 906, column: 9, scope: !4500)
!4515 = !DILocation(line: 908, column: 5, scope: !4474)
!4516 = !DILocation(line: 909, column: 1, scope: !4474)
!4517 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4518, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !4520}
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 32)
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4522)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4523)
!4523 = !{!4524}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4522, file: !71, line: 50, baseType: !5, size: 32)
!4525 = !DILocalVariable(name: "state", arg: 1, scope: !4517, file: !71, line: 911, type: !4520)
!4526 = !DILocation(line: 0, scope: !4517)
!4527 = !DILocation(line: 912, column: 18, scope: !4517)
!4528 = !DILocation(line: 912, column: 16, scope: !4517)
!4529 = !DILocation(line: 913, column: 20, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4517, file: !71, line: 913, column: 9)
!4531 = !DILocation(line: 914, column: 9, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4530, file: !71, line: 913, column: 29)
!4533 = !DILocation(line: 915, column: 5, scope: !4532)
!4534 = !DILocation(line: 916, column: 28, scope: !4517)
!4535 = !DILocation(line: 916, column: 5, scope: !4517)
!4536 = !DILocation(line: 917, column: 1, scope: !4517)
!4537 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4538, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !4520, !4540}
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4521)
!4542 = !DILocalVariable(name: "dest", arg: 1, scope: !4537, file: !71, line: 919, type: !4520)
!4543 = !DILocation(line: 0, scope: !4537)
!4544 = !DILocalVariable(name: "src", arg: 2, scope: !4537, file: !71, line: 919, type: !4540)
!4545 = !DILocation(line: 920, column: 17, scope: !4537)
!4546 = !DILocation(line: 920, column: 15, scope: !4537)
!4547 = !DILocation(line: 921, column: 19, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4537, file: !71, line: 921, column: 9)
!4549 = !DILocation(line: 922, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4548, file: !71, line: 921, column: 28)
!4551 = !DILocation(line: 923, column: 5, scope: !4550)
!4552 = !DILocation(line: 924, column: 18, scope: !4537)
!4553 = !DILocation(line: 924, column: 28, scope: !4537)
!4554 = !DILocation(line: 924, column: 5, scope: !4537)
!4555 = !DILocation(line: 925, column: 1, scope: !4537)
!4556 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4518, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4557 = !DILocalVariable(name: "state", arg: 1, scope: !4556, file: !71, line: 927, type: !4520)
!4558 = !DILocation(line: 0, scope: !4556)
!4559 = !DILocation(line: 928, column: 17, scope: !4556)
!4560 = !DILocation(line: 928, column: 5, scope: !4556)
!4561 = !DILocation(line: 929, column: 1, scope: !4556)
!4562 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4563, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !4520, !3371, !15}
!4565 = !DILocalVariable(name: "state", arg: 1, scope: !4562, file: !71, line: 931, type: !4520)
!4566 = !DILocation(line: 0, scope: !4562)
!4567 = !DILocalVariable(name: "input", arg: 2, scope: !4562, file: !71, line: 931, type: !3371)
!4568 = !DILocalVariable(name: "inlen", arg: 3, scope: !4562, file: !71, line: 931, type: !15)
!4569 = !DILocation(line: 932, column: 30, scope: !4562)
!4570 = !DILocation(line: 932, column: 5, scope: !4562)
!4571 = !DILocation(line: 933, column: 1, scope: !4562)
!4572 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4573, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{null, !11, !4520}
!4575 = !DILocalVariable(name: "output", arg: 1, scope: !4572, file: !71, line: 935, type: !11)
!4576 = !DILocation(line: 0, scope: !4572)
!4577 = !DILocalVariable(name: "state", arg: 2, scope: !4572, file: !71, line: 935, type: !4520)
!4578 = !DILocalVariable(name: "t", scope: !4572, file: !71, line: 936, type: !4483)
!4579 = !DILocation(line: 936, column: 13, scope: !4572)
!4580 = !DILocation(line: 937, column: 32, scope: !4572)
!4581 = !DILocation(line: 937, column: 5, scope: !4572)
!4582 = !DILocation(line: 939, column: 39, scope: !4572)
!4583 = !DILocation(line: 939, column: 5, scope: !4572)
!4584 = !DILocation(line: 941, column: 5, scope: !4572)
!4585 = !DILocalVariable(name: "i", scope: !4586, file: !71, line: 943, type: !15)
!4586 = distinct !DILexicalBlock(scope: !4572, file: !71, line: 943, column: 5)
!4587 = !DILocation(line: 0, scope: !4586)
!4588 = !DILocation(line: 943, column: 10, scope: !4586)
!4589 = !DILocation(line: 943, scope: !4586)
!4590 = !DILocation(line: 943, column: 26, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4586, file: !71, line: 943, column: 5)
!4592 = !DILocation(line: 943, column: 5, scope: !4586)
!4593 = !DILocation(line: 944, column: 21, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4591, file: !71, line: 943, column: 37)
!4595 = !DILocation(line: 944, column: 9, scope: !4594)
!4596 = !DILocation(line: 944, column: 19, scope: !4594)
!4597 = !DILocation(line: 943, column: 33, scope: !4591)
!4598 = !DILocation(line: 943, column: 5, scope: !4591)
!4599 = distinct !{!4599, !4592, !4600, !323}
!4600 = !DILocation(line: 945, column: 5, scope: !4586)
!4601 = !DILocation(line: 946, column: 1, scope: !4572)
!4602 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4603, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !11, !3371, !15}
!4605 = !DILocalVariable(name: "output", arg: 1, scope: !4602, file: !71, line: 957, type: !11)
!4606 = !DILocation(line: 0, scope: !4602)
!4607 = !DILocalVariable(name: "input", arg: 2, scope: !4602, file: !71, line: 957, type: !3371)
!4608 = !DILocalVariable(name: "inlen", arg: 3, scope: !4602, file: !71, line: 957, type: !15)
!4609 = !DILocalVariable(name: "s", scope: !4602, file: !71, line: 958, type: !4610)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4611)
!4611 = !{!4612}
!4612 = !DISubrange(count: 25)
!4613 = !DILocation(line: 958, column: 14, scope: !4602)
!4614 = !DILocalVariable(name: "t", scope: !4602, file: !71, line: 959, type: !4483)
!4615 = !DILocation(line: 959, column: 13, scope: !4602)
!4616 = !DILocation(line: 962, column: 5, scope: !4602)
!4617 = !DILocation(line: 965, column: 5, scope: !4602)
!4618 = !DILocalVariable(name: "i", scope: !4619, file: !71, line: 967, type: !15)
!4619 = distinct !DILexicalBlock(scope: !4602, file: !71, line: 967, column: 5)
!4620 = !DILocation(line: 0, scope: !4619)
!4621 = !DILocation(line: 967, column: 10, scope: !4619)
!4622 = !DILocation(line: 967, scope: !4619)
!4623 = !DILocation(line: 967, column: 26, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4619, file: !71, line: 967, column: 5)
!4625 = !DILocation(line: 967, column: 5, scope: !4619)
!4626 = !DILocation(line: 968, column: 21, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4624, file: !71, line: 967, column: 37)
!4628 = !DILocation(line: 968, column: 9, scope: !4627)
!4629 = !DILocation(line: 968, column: 19, scope: !4627)
!4630 = !DILocation(line: 967, column: 33, scope: !4624)
!4631 = !DILocation(line: 967, column: 5, scope: !4624)
!4632 = distinct !{!4632, !4625, !4633, !323}
!4633 = !DILocation(line: 969, column: 5, scope: !4619)
!4634 = !DILocation(line: 970, column: 1, scope: !4602)
!4635 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4636, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{null, !4638}
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4640)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4641)
!4641 = !{!4642}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4640, file: !71, line: 55, baseType: !5, size: 32)
!4643 = !DILocalVariable(name: "state", arg: 1, scope: !4635, file: !71, line: 972, type: !4638)
!4644 = !DILocation(line: 0, scope: !4635)
!4645 = !DILocation(line: 973, column: 18, scope: !4635)
!4646 = !DILocation(line: 973, column: 16, scope: !4635)
!4647 = !DILocation(line: 974, column: 20, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4635, file: !71, line: 974, column: 9)
!4649 = !DILocation(line: 975, column: 9, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4648, file: !71, line: 974, column: 29)
!4651 = !DILocation(line: 976, column: 5, scope: !4650)
!4652 = !DILocation(line: 977, column: 28, scope: !4635)
!4653 = !DILocation(line: 977, column: 5, scope: !4635)
!4654 = !DILocation(line: 978, column: 1, scope: !4635)
!4655 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4656, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !4638, !4658}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4639)
!4660 = !DILocalVariable(name: "dest", arg: 1, scope: !4655, file: !71, line: 980, type: !4638)
!4661 = !DILocation(line: 0, scope: !4655)
!4662 = !DILocalVariable(name: "src", arg: 2, scope: !4655, file: !71, line: 980, type: !4658)
!4663 = !DILocation(line: 981, column: 17, scope: !4655)
!4664 = !DILocation(line: 981, column: 15, scope: !4655)
!4665 = !DILocation(line: 982, column: 19, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4655, file: !71, line: 982, column: 9)
!4667 = !DILocation(line: 983, column: 9, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4666, file: !71, line: 982, column: 28)
!4669 = !DILocation(line: 984, column: 5, scope: !4668)
!4670 = !DILocation(line: 985, column: 18, scope: !4655)
!4671 = !DILocation(line: 985, column: 28, scope: !4655)
!4672 = !DILocation(line: 985, column: 5, scope: !4655)
!4673 = !DILocation(line: 986, column: 1, scope: !4655)
!4674 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4675, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !4638, !3371, !15}
!4677 = !DILocalVariable(name: "state", arg: 1, scope: !4674, file: !71, line: 988, type: !4638)
!4678 = !DILocation(line: 0, scope: !4674)
!4679 = !DILocalVariable(name: "input", arg: 2, scope: !4674, file: !71, line: 988, type: !3371)
!4680 = !DILocalVariable(name: "inlen", arg: 3, scope: !4674, file: !71, line: 988, type: !15)
!4681 = !DILocation(line: 989, column: 30, scope: !4674)
!4682 = !DILocation(line: 989, column: 5, scope: !4674)
!4683 = !DILocation(line: 990, column: 1, scope: !4674)
!4684 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4636, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4685 = !DILocalVariable(name: "state", arg: 1, scope: !4684, file: !71, line: 992, type: !4638)
!4686 = !DILocation(line: 0, scope: !4684)
!4687 = !DILocation(line: 993, column: 17, scope: !4684)
!4688 = !DILocation(line: 993, column: 5, scope: !4684)
!4689 = !DILocation(line: 994, column: 1, scope: !4684)
!4690 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4691, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !11, !4638}
!4693 = !DILocalVariable(name: "output", arg: 1, scope: !4690, file: !71, line: 996, type: !11)
!4694 = !DILocation(line: 0, scope: !4690)
!4695 = !DILocalVariable(name: "state", arg: 2, scope: !4690, file: !71, line: 996, type: !4638)
!4696 = !DILocalVariable(name: "t", scope: !4690, file: !71, line: 997, type: !4697)
!4697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4698)
!4698 = !{!4699}
!4699 = !DISubrange(count: 104)
!4700 = !DILocation(line: 997, column: 13, scope: !4690)
!4701 = !DILocation(line: 998, column: 32, scope: !4690)
!4702 = !DILocation(line: 998, column: 5, scope: !4690)
!4703 = !DILocation(line: 1000, column: 39, scope: !4690)
!4704 = !DILocation(line: 1000, column: 5, scope: !4690)
!4705 = !DILocation(line: 1002, column: 5, scope: !4690)
!4706 = !DILocalVariable(name: "i", scope: !4707, file: !71, line: 1004, type: !15)
!4707 = distinct !DILexicalBlock(scope: !4690, file: !71, line: 1004, column: 5)
!4708 = !DILocation(line: 0, scope: !4707)
!4709 = !DILocation(line: 1004, column: 10, scope: !4707)
!4710 = !DILocation(line: 1004, scope: !4707)
!4711 = !DILocation(line: 1004, column: 26, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4707, file: !71, line: 1004, column: 5)
!4713 = !DILocation(line: 1004, column: 5, scope: !4707)
!4714 = !DILocation(line: 1005, column: 21, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4712, file: !71, line: 1004, column: 37)
!4716 = !DILocation(line: 1005, column: 9, scope: !4715)
!4717 = !DILocation(line: 1005, column: 19, scope: !4715)
!4718 = !DILocation(line: 1004, column: 33, scope: !4712)
!4719 = !DILocation(line: 1004, column: 5, scope: !4712)
!4720 = distinct !{!4720, !4713, !4721, !323}
!4721 = !DILocation(line: 1006, column: 5, scope: !4707)
!4722 = !DILocation(line: 1007, column: 1, scope: !4690)
!4723 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4603, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4724 = !DILocalVariable(name: "output", arg: 1, scope: !4723, file: !71, line: 1018, type: !11)
!4725 = !DILocation(line: 0, scope: !4723)
!4726 = !DILocalVariable(name: "input", arg: 2, scope: !4723, file: !71, line: 1018, type: !3371)
!4727 = !DILocalVariable(name: "inlen", arg: 3, scope: !4723, file: !71, line: 1018, type: !15)
!4728 = !DILocalVariable(name: "s", scope: !4723, file: !71, line: 1019, type: !4610)
!4729 = !DILocation(line: 1019, column: 14, scope: !4723)
!4730 = !DILocalVariable(name: "t", scope: !4723, file: !71, line: 1020, type: !4697)
!4731 = !DILocation(line: 1020, column: 13, scope: !4723)
!4732 = !DILocation(line: 1023, column: 5, scope: !4723)
!4733 = !DILocation(line: 1026, column: 5, scope: !4723)
!4734 = !DILocalVariable(name: "i", scope: !4735, file: !71, line: 1028, type: !15)
!4735 = distinct !DILexicalBlock(scope: !4723, file: !71, line: 1028, column: 5)
!4736 = !DILocation(line: 0, scope: !4735)
!4737 = !DILocation(line: 1028, column: 10, scope: !4735)
!4738 = !DILocation(line: 1028, scope: !4735)
!4739 = !DILocation(line: 1028, column: 26, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4735, file: !71, line: 1028, column: 5)
!4741 = !DILocation(line: 1028, column: 5, scope: !4735)
!4742 = !DILocation(line: 1029, column: 21, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4740, file: !71, line: 1028, column: 37)
!4744 = !DILocation(line: 1029, column: 9, scope: !4743)
!4745 = !DILocation(line: 1029, column: 19, scope: !4743)
!4746 = !DILocation(line: 1028, column: 33, scope: !4740)
!4747 = !DILocation(line: 1028, column: 5, scope: !4740)
!4748 = distinct !{!4748, !4741, !4749, !323}
!4749 = !DILocation(line: 1030, column: 5, scope: !4735)
!4750 = !DILocation(line: 1031, column: 1, scope: !4723)
!4751 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4752, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{null, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 32)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4756)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4757)
!4757 = !{!4758}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4756, file: !71, line: 60, baseType: !5, size: 32)
!4759 = !DILocalVariable(name: "state", arg: 1, scope: !4751, file: !71, line: 1033, type: !4754)
!4760 = !DILocation(line: 0, scope: !4751)
!4761 = !DILocation(line: 1034, column: 18, scope: !4751)
!4762 = !DILocation(line: 1034, column: 16, scope: !4751)
!4763 = !DILocation(line: 1035, column: 20, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4751, file: !71, line: 1035, column: 9)
!4765 = !DILocation(line: 1036, column: 9, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4764, file: !71, line: 1035, column: 29)
!4767 = !DILocation(line: 1037, column: 5, scope: !4766)
!4768 = !DILocation(line: 1038, column: 28, scope: !4751)
!4769 = !DILocation(line: 1038, column: 5, scope: !4751)
!4770 = !DILocation(line: 1039, column: 1, scope: !4751)
!4771 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4772, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{null, !4754, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 32)
!4775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4755)
!4776 = !DILocalVariable(name: "dest", arg: 1, scope: !4771, file: !71, line: 1041, type: !4754)
!4777 = !DILocation(line: 0, scope: !4771)
!4778 = !DILocalVariable(name: "src", arg: 2, scope: !4771, file: !71, line: 1041, type: !4774)
!4779 = !DILocation(line: 1042, column: 17, scope: !4771)
!4780 = !DILocation(line: 1042, column: 15, scope: !4771)
!4781 = !DILocation(line: 1043, column: 19, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4771, file: !71, line: 1043, column: 9)
!4783 = !DILocation(line: 1044, column: 9, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4782, file: !71, line: 1043, column: 28)
!4785 = !DILocation(line: 1045, column: 5, scope: !4784)
!4786 = !DILocation(line: 1046, column: 18, scope: !4771)
!4787 = !DILocation(line: 1046, column: 28, scope: !4771)
!4788 = !DILocation(line: 1046, column: 5, scope: !4771)
!4789 = !DILocation(line: 1047, column: 1, scope: !4771)
!4790 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4791, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{null, !4754, !3371, !15}
!4793 = !DILocalVariable(name: "state", arg: 1, scope: !4790, file: !71, line: 1049, type: !4754)
!4794 = !DILocation(line: 0, scope: !4790)
!4795 = !DILocalVariable(name: "input", arg: 2, scope: !4790, file: !71, line: 1049, type: !3371)
!4796 = !DILocalVariable(name: "inlen", arg: 3, scope: !4790, file: !71, line: 1049, type: !15)
!4797 = !DILocation(line: 1050, column: 30, scope: !4790)
!4798 = !DILocation(line: 1050, column: 5, scope: !4790)
!4799 = !DILocation(line: 1051, column: 1, scope: !4790)
!4800 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4752, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4801 = !DILocalVariable(name: "state", arg: 1, scope: !4800, file: !71, line: 1053, type: !4754)
!4802 = !DILocation(line: 0, scope: !4800)
!4803 = !DILocation(line: 1054, column: 17, scope: !4800)
!4804 = !DILocation(line: 1054, column: 5, scope: !4800)
!4805 = !DILocation(line: 1055, column: 1, scope: !4800)
!4806 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4807, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !11, !4754}
!4809 = !DILocalVariable(name: "output", arg: 1, scope: !4806, file: !71, line: 1057, type: !11)
!4810 = !DILocation(line: 0, scope: !4806)
!4811 = !DILocalVariable(name: "state", arg: 2, scope: !4806, file: !71, line: 1057, type: !4754)
!4812 = !DILocalVariable(name: "t", scope: !4806, file: !71, line: 1058, type: !4813)
!4813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4814)
!4814 = !{!4815}
!4815 = !DISubrange(count: 72)
!4816 = !DILocation(line: 1058, column: 13, scope: !4806)
!4817 = !DILocation(line: 1059, column: 32, scope: !4806)
!4818 = !DILocation(line: 1059, column: 5, scope: !4806)
!4819 = !DILocation(line: 1061, column: 39, scope: !4806)
!4820 = !DILocation(line: 1061, column: 5, scope: !4806)
!4821 = !DILocation(line: 1063, column: 5, scope: !4806)
!4822 = !DILocalVariable(name: "i", scope: !4823, file: !71, line: 1065, type: !15)
!4823 = distinct !DILexicalBlock(scope: !4806, file: !71, line: 1065, column: 5)
!4824 = !DILocation(line: 0, scope: !4823)
!4825 = !DILocation(line: 1065, column: 10, scope: !4823)
!4826 = !DILocation(line: 1065, scope: !4823)
!4827 = !DILocation(line: 1065, column: 26, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4823, file: !71, line: 1065, column: 5)
!4829 = !DILocation(line: 1065, column: 5, scope: !4823)
!4830 = !DILocation(line: 1066, column: 21, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4828, file: !71, line: 1065, column: 37)
!4832 = !DILocation(line: 1066, column: 9, scope: !4831)
!4833 = !DILocation(line: 1066, column: 19, scope: !4831)
!4834 = !DILocation(line: 1065, column: 33, scope: !4828)
!4835 = !DILocation(line: 1065, column: 5, scope: !4828)
!4836 = distinct !{!4836, !4829, !4837, !323}
!4837 = !DILocation(line: 1067, column: 5, scope: !4823)
!4838 = !DILocation(line: 1068, column: 1, scope: !4806)
!4839 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4603, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4840 = !DILocalVariable(name: "output", arg: 1, scope: !4839, file: !71, line: 1079, type: !11)
!4841 = !DILocation(line: 0, scope: !4839)
!4842 = !DILocalVariable(name: "input", arg: 2, scope: !4839, file: !71, line: 1079, type: !3371)
!4843 = !DILocalVariable(name: "inlen", arg: 3, scope: !4839, file: !71, line: 1079, type: !15)
!4844 = !DILocalVariable(name: "s", scope: !4839, file: !71, line: 1080, type: !4610)
!4845 = !DILocation(line: 1080, column: 14, scope: !4839)
!4846 = !DILocalVariable(name: "t", scope: !4839, file: !71, line: 1081, type: !4813)
!4847 = !DILocation(line: 1081, column: 13, scope: !4839)
!4848 = !DILocation(line: 1084, column: 5, scope: !4839)
!4849 = !DILocation(line: 1087, column: 5, scope: !4839)
!4850 = !DILocalVariable(name: "i", scope: !4851, file: !71, line: 1089, type: !15)
!4851 = distinct !DILexicalBlock(scope: !4839, file: !71, line: 1089, column: 5)
!4852 = !DILocation(line: 0, scope: !4851)
!4853 = !DILocation(line: 1089, column: 10, scope: !4851)
!4854 = !DILocation(line: 1089, scope: !4851)
!4855 = !DILocation(line: 1089, column: 26, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4851, file: !71, line: 1089, column: 5)
!4857 = !DILocation(line: 1089, column: 5, scope: !4851)
!4858 = !DILocation(line: 1090, column: 21, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4856, file: !71, line: 1089, column: 37)
!4860 = !DILocation(line: 1090, column: 9, scope: !4859)
!4861 = !DILocation(line: 1090, column: 19, scope: !4859)
!4862 = !DILocation(line: 1089, column: 33, scope: !4856)
!4863 = !DILocation(line: 1089, column: 5, scope: !4856)
!4864 = distinct !{!4864, !4857, !4865, !323}
!4865 = !DILocation(line: 1091, column: 5, scope: !4851)
!4866 = !DILocation(line: 1092, column: 1, scope: !4839)
!4867 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4868, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{null, !4870, !49}
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 32)
!4871 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4872)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4873)
!4873 = !{!4874}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4872, file: !80, line: 45, baseType: !5, size: 32)
!4875 = !DILocalVariable(name: "r", arg: 1, scope: !4867, file: !80, line: 635, type: !4870)
!4876 = !DILocation(line: 0, scope: !4867)
!4877 = !DILocalVariable(name: "key", arg: 2, scope: !4867, file: !80, line: 635, type: !49)
!4878 = !DILocalVariable(name: "skey", scope: !4867, file: !80, line: 636, type: !4879)
!4879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4880)
!4880 = !{!4881}
!4881 = !DISubrange(count: 22)
!4882 = !DILocation(line: 636, column: 14, scope: !4867)
!4883 = !DILocation(line: 638, column: 17, scope: !4867)
!4884 = !DILocation(line: 638, column: 15, scope: !4867)
!4885 = !DILocation(line: 639, column: 19, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4867, file: !80, line: 639, column: 9)
!4887 = !DILocation(line: 640, column: 9, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4886, file: !80, line: 639, column: 28)
!4889 = !DILocation(line: 641, column: 5, scope: !4888)
!4890 = !DILocation(line: 643, column: 5, scope: !4867)
!4891 = !DILocation(line: 644, column: 32, scope: !4867)
!4892 = !DILocation(line: 644, column: 5, scope: !4867)
!4893 = !DILocation(line: 645, column: 1, scope: !4867)
!4894 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4895, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{null, !5, !49, !17}
!4897 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4894, file: !80, line: 403, type: !5)
!4898 = !DILocation(line: 0, scope: !4894)
!4899 = !DILocalVariable(name: "key", arg: 2, scope: !4894, file: !80, line: 403, type: !49)
!4900 = !DILocalVariable(name: "key_len", arg: 3, scope: !4894, file: !80, line: 403, type: !17)
!4901 = !DILocalVariable(name: "skey", scope: !4894, file: !80, line: 406, type: !4902)
!4902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4903)
!4903 = !{!4904}
!4904 = !DISubrange(count: 60)
!4905 = !DILocation(line: 406, column: 14, scope: !4894)
!4906 = !DILocation(line: 410, column: 26, scope: !4894)
!4907 = !DILocalVariable(name: "nrounds", scope: !4894, file: !80, line: 407, type: !17)
!4908 = !DILocation(line: 409, column: 19, scope: !4894)
!4909 = !DILocalVariable(name: "nk", scope: !4894, file: !80, line: 404, type: !17)
!4910 = !DILocalVariable(name: "nkf", scope: !4894, file: !80, line: 404, type: !17)
!4911 = !DILocation(line: 411, column: 37, scope: !4894)
!4912 = !DILocation(line: 411, column: 5, scope: !4894)
!4913 = !DILocation(line: 412, column: 25, scope: !4894)
!4914 = !DILocation(line: 412, column: 31, scope: !4894)
!4915 = !DILocation(line: 412, column: 11, scope: !4894)
!4916 = !DILocalVariable(name: "tmp", scope: !4894, file: !80, line: 405, type: !19)
!4917 = !DILocalVariable(name: "i", scope: !4894, file: !80, line: 404, type: !17)
!4918 = !DILocalVariable(name: "j", scope: !4894, file: !80, line: 404, type: !17)
!4919 = !DILocalVariable(name: "k", scope: !4894, file: !80, line: 404, type: !17)
!4920 = !DILocation(line: 413, column: 10, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4894, file: !80, line: 413, column: 5)
!4922 = !DILocation(line: 413, scope: !4921)
!4923 = !DILocation(line: 0, scope: !4921)
!4924 = !DILocation(line: 413, column: 34, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4921, file: !80, line: 413, column: 5)
!4926 = !DILocation(line: 413, column: 5, scope: !4921)
!4927 = !DILocation(line: 428, column: 5, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4894, file: !80, line: 428, column: 5)
!4929 = !DILocation(line: 414, column: 15, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !80, line: 414, column: 13)
!4931 = distinct !DILexicalBlock(scope: !4925, file: !80, line: 413, column: 47)
!4932 = !DILocation(line: 415, column: 31, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4930, file: !80, line: 414, column: 21)
!4934 = !DILocation(line: 416, column: 19, scope: !4933)
!4935 = !DILocation(line: 416, column: 35, scope: !4933)
!4936 = !DILocation(line: 416, column: 33, scope: !4933)
!4937 = !DILocation(line: 417, column: 9, scope: !4933)
!4938 = !DILocation(line: 417, column: 23, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4930, file: !80, line: 417, column: 20)
!4940 = !DILocation(line: 417, column: 27, scope: !4939)
!4941 = !DILocation(line: 418, column: 19, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4939, file: !80, line: 417, column: 38)
!4943 = !DILocation(line: 419, column: 9, scope: !4942)
!4944 = !DILocation(line: 0, scope: !4930)
!4945 = !DILocation(line: 420, column: 23, scope: !4931)
!4946 = !DILocation(line: 420, column: 16, scope: !4931)
!4947 = !DILocation(line: 420, column: 13, scope: !4931)
!4948 = !DILocation(line: 421, column: 9, scope: !4931)
!4949 = !DILocation(line: 421, column: 17, scope: !4931)
!4950 = !DILocation(line: 422, column: 13, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4931, file: !80, line: 422, column: 13)
!4952 = !DILocation(line: 422, column: 18, scope: !4951)
!4953 = !DILocation(line: 413, column: 43, scope: !4925)
!4954 = !DILocation(line: 413, column: 5, scope: !4925)
!4955 = distinct !{!4955, !4926, !4956, !323}
!4956 = !DILocation(line: 426, column: 5, scope: !4921)
!4957 = !DILocation(line: 428, scope: !4928)
!4958 = !DILocation(line: 428, column: 26, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4928, file: !80, line: 428, column: 5)
!4960 = !DILocalVariable(name: "q", scope: !4961, file: !80, line: 429, type: !4962)
!4961 = distinct !DILexicalBlock(scope: !4959, file: !80, line: 428, column: 49)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !4963)
!4963 = !{!4964}
!4964 = !DISubrange(count: 8)
!4965 = !DILocation(line: 429, column: 18, scope: !4961)
!4966 = !DILocation(line: 431, column: 43, scope: !4961)
!4967 = !DILocation(line: 431, column: 54, scope: !4961)
!4968 = !DILocation(line: 431, column: 9, scope: !4961)
!4969 = !DILocation(line: 432, column: 16, scope: !4961)
!4970 = !DILocation(line: 432, column: 9, scope: !4961)
!4971 = !DILocation(line: 432, column: 14, scope: !4961)
!4972 = !DILocation(line: 433, column: 9, scope: !4961)
!4973 = !DILocation(line: 433, column: 14, scope: !4961)
!4974 = !DILocation(line: 434, column: 9, scope: !4961)
!4975 = !DILocation(line: 434, column: 14, scope: !4961)
!4976 = !DILocation(line: 435, column: 16, scope: !4961)
!4977 = !DILocation(line: 435, column: 9, scope: !4961)
!4978 = !DILocation(line: 435, column: 14, scope: !4961)
!4979 = !DILocation(line: 436, column: 9, scope: !4961)
!4980 = !DILocation(line: 436, column: 14, scope: !4961)
!4981 = !DILocation(line: 437, column: 9, scope: !4961)
!4982 = !DILocation(line: 437, column: 14, scope: !4961)
!4983 = !DILocation(line: 438, column: 9, scope: !4961)
!4984 = !DILocation(line: 440, column: 14, scope: !4961)
!4985 = !DILocation(line: 440, column: 19, scope: !4961)
!4986 = !DILocation(line: 441, column: 16, scope: !4961)
!4987 = !DILocation(line: 441, column: 21, scope: !4961)
!4988 = !DILocation(line: 441, column: 13, scope: !4961)
!4989 = !DILocation(line: 442, column: 16, scope: !4961)
!4990 = !DILocation(line: 442, column: 21, scope: !4961)
!4991 = !DILocation(line: 442, column: 13, scope: !4961)
!4992 = !DILocation(line: 443, column: 16, scope: !4961)
!4993 = !DILocation(line: 443, column: 21, scope: !4961)
!4994 = !DILocation(line: 443, column: 13, scope: !4961)
!4995 = !DILocation(line: 439, column: 9, scope: !4961)
!4996 = !DILocation(line: 439, column: 26, scope: !4961)
!4997 = !DILocation(line: 445, column: 14, scope: !4961)
!4998 = !DILocation(line: 445, column: 19, scope: !4961)
!4999 = !DILocation(line: 446, column: 16, scope: !4961)
!5000 = !DILocation(line: 446, column: 21, scope: !4961)
!5001 = !DILocation(line: 446, column: 13, scope: !4961)
!5002 = !DILocation(line: 447, column: 16, scope: !4961)
!5003 = !DILocation(line: 447, column: 21, scope: !4961)
!5004 = !DILocation(line: 447, column: 13, scope: !4961)
!5005 = !DILocation(line: 448, column: 16, scope: !4961)
!5006 = !DILocation(line: 448, column: 21, scope: !4961)
!5007 = !DILocation(line: 448, column: 13, scope: !4961)
!5008 = !DILocation(line: 444, column: 21, scope: !4961)
!5009 = !DILocation(line: 444, column: 9, scope: !4961)
!5010 = !DILocation(line: 444, column: 26, scope: !4961)
!5011 = !DILocation(line: 428, column: 35, scope: !4959)
!5012 = !DILocation(line: 428, column: 43, scope: !4959)
!5013 = !DILocation(line: 428, column: 5, scope: !4959)
!5014 = distinct !{!5014, !4927, !5015, !323}
!5015 = !DILocation(line: 449, column: 5, scope: !4928)
!5016 = !DILocation(line: 450, column: 1, scope: !4894)
!5017 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5018, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !5, !346, !17}
!5020 = !DILocalVariable(name: "skey", arg: 1, scope: !5017, file: !80, line: 452, type: !5)
!5021 = !DILocation(line: 0, scope: !5017)
!5022 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5017, file: !80, line: 452, type: !346)
!5023 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5017, file: !80, line: 452, type: !17)
!5024 = !DILocation(line: 455, column: 23, scope: !5017)
!5025 = !DILocalVariable(name: "n", scope: !5017, file: !80, line: 453, type: !17)
!5026 = !DILocalVariable(name: "u", scope: !5017, file: !80, line: 453, type: !17)
!5027 = !DILocalVariable(name: "v", scope: !5017, file: !80, line: 453, type: !17)
!5028 = !DILocation(line: 456, column: 10, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5017, file: !80, line: 456, column: 5)
!5030 = !DILocation(line: 456, scope: !5029)
!5031 = !DILocation(line: 456, column: 26, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5029, file: !80, line: 456, column: 5)
!5033 = !DILocation(line: 456, column: 5, scope: !5029)
!5034 = !DILocation(line: 459, column: 29, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5032, file: !80, line: 456, column: 45)
!5036 = !DILocalVariable(name: "x3", scope: !5035, file: !80, line: 457, type: !6)
!5037 = !DILocation(line: 0, scope: !5035)
!5038 = !DILocalVariable(name: "x2", scope: !5035, file: !80, line: 457, type: !6)
!5039 = !DILocalVariable(name: "x1", scope: !5035, file: !80, line: 457, type: !6)
!5040 = !DILocalVariable(name: "x0", scope: !5035, file: !80, line: 457, type: !6)
!5041 = !DILocation(line: 460, column: 12, scope: !5035)
!5042 = !DILocation(line: 464, column: 12, scope: !5035)
!5043 = !DILocation(line: 465, column: 12, scope: !5035)
!5044 = !DILocation(line: 466, column: 12, scope: !5035)
!5045 = !DILocation(line: 467, column: 33, scope: !5035)
!5046 = !DILocation(line: 467, column: 9, scope: !5035)
!5047 = !DILocation(line: 467, column: 21, scope: !5035)
!5048 = !DILocation(line: 468, column: 33, scope: !5035)
!5049 = !DILocation(line: 468, column: 16, scope: !5035)
!5050 = !DILocation(line: 468, column: 9, scope: !5035)
!5051 = !DILocation(line: 468, column: 21, scope: !5035)
!5052 = !DILocation(line: 469, column: 33, scope: !5035)
!5053 = !DILocation(line: 469, column: 16, scope: !5035)
!5054 = !DILocation(line: 469, column: 9, scope: !5035)
!5055 = !DILocation(line: 469, column: 21, scope: !5035)
!5056 = !DILocation(line: 470, column: 33, scope: !5035)
!5057 = !DILocation(line: 470, column: 16, scope: !5035)
!5058 = !DILocation(line: 470, column: 9, scope: !5035)
!5059 = !DILocation(line: 470, column: 21, scope: !5035)
!5060 = !DILocation(line: 456, column: 33, scope: !5032)
!5061 = !DILocation(line: 456, column: 39, scope: !5032)
!5062 = !DILocation(line: 456, column: 5, scope: !5032)
!5063 = distinct !{!5063, !5033, !5064, !323}
!5064 = !DILocation(line: 471, column: 5, scope: !5029)
!5065 = !DILocation(line: 472, column: 1, scope: !5017)
!5066 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5067, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{null, !5069, !15, !49}
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5070 = !DILocalVariable(name: "v", arg: 1, scope: !5066, file: !80, line: 104, type: !5069)
!5071 = !DILocation(line: 0, scope: !5066)
!5072 = !DILocalVariable(name: "num", arg: 2, scope: !5066, file: !80, line: 104, type: !15)
!5073 = !DILocalVariable(name: "src", arg: 3, scope: !5066, file: !80, line: 104, type: !49)
!5074 = !DILocation(line: 105, column: 5, scope: !5066)
!5075 = !DILocation(line: 105, column: 18, scope: !5066)
!5076 = !DILocation(line: 105, column: 15, scope: !5066)
!5077 = !DILocation(line: 106, column: 17, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5066, file: !80, line: 105, column: 23)
!5079 = !DILocation(line: 106, column: 12, scope: !5078)
!5080 = !DILocation(line: 106, column: 15, scope: !5078)
!5081 = !DILocation(line: 107, column: 13, scope: !5078)
!5082 = distinct !{!5082, !5074, !5083, !323}
!5083 = !DILocation(line: 108, column: 5, scope: !5066)
!5084 = !DILocation(line: 109, column: 1, scope: !5066)
!5085 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5086, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!19, !19}
!5088 = !DILocalVariable(name: "x", arg: 1, scope: !5085, file: !80, line: 392, type: !19)
!5089 = !DILocation(line: 0, scope: !5085)
!5090 = !DILocalVariable(name: "q", scope: !5085, file: !80, line: 393, type: !4962)
!5091 = !DILocation(line: 393, column: 14, scope: !5085)
!5092 = !DILocation(line: 395, column: 5, scope: !5085)
!5093 = !DILocation(line: 396, column: 12, scope: !5085)
!5094 = !DILocation(line: 396, column: 10, scope: !5085)
!5095 = !DILocation(line: 397, column: 5, scope: !5085)
!5096 = !DILocation(line: 398, column: 5, scope: !5085)
!5097 = !DILocation(line: 399, column: 5, scope: !5085)
!5098 = !DILocation(line: 400, column: 22, scope: !5085)
!5099 = !DILocation(line: 400, column: 12, scope: !5085)
!5100 = !DILocation(line: 400, column: 5, scope: !5085)
!5101 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5102, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !5, !5, !5104}
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 32)
!5105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5106 = !DILocalVariable(name: "q0", arg: 1, scope: !5101, file: !80, line: 339, type: !5)
!5107 = !DILocation(line: 0, scope: !5101)
!5108 = !DILocalVariable(name: "q1", arg: 2, scope: !5101, file: !80, line: 339, type: !5)
!5109 = !DILocalVariable(name: "w", arg: 3, scope: !5101, file: !80, line: 339, type: !5104)
!5110 = !DILocation(line: 342, column: 10, scope: !5101)
!5111 = !DILocalVariable(name: "x0", scope: !5101, file: !80, line: 340, type: !6)
!5112 = !DILocation(line: 343, column: 10, scope: !5101)
!5113 = !DILocalVariable(name: "x1", scope: !5101, file: !80, line: 340, type: !6)
!5114 = !DILocation(line: 344, column: 10, scope: !5101)
!5115 = !DILocalVariable(name: "x2", scope: !5101, file: !80, line: 340, type: !6)
!5116 = !DILocation(line: 345, column: 10, scope: !5101)
!5117 = !DILocalVariable(name: "x3", scope: !5101, file: !80, line: 340, type: !6)
!5118 = !DILocation(line: 346, column: 15, scope: !5101)
!5119 = !DILocation(line: 346, column: 8, scope: !5101)
!5120 = !DILocation(line: 347, column: 15, scope: !5101)
!5121 = !DILocation(line: 347, column: 8, scope: !5101)
!5122 = !DILocation(line: 348, column: 15, scope: !5101)
!5123 = !DILocation(line: 348, column: 8, scope: !5101)
!5124 = !DILocation(line: 349, column: 15, scope: !5101)
!5125 = !DILocation(line: 349, column: 8, scope: !5101)
!5126 = !DILocation(line: 350, column: 8, scope: !5101)
!5127 = !DILocation(line: 351, column: 8, scope: !5101)
!5128 = !DILocation(line: 352, column: 8, scope: !5101)
!5129 = !DILocation(line: 353, column: 8, scope: !5101)
!5130 = !DILocation(line: 354, column: 15, scope: !5101)
!5131 = !DILocation(line: 354, column: 8, scope: !5101)
!5132 = !DILocation(line: 355, column: 15, scope: !5101)
!5133 = !DILocation(line: 355, column: 8, scope: !5101)
!5134 = !DILocation(line: 358, column: 8, scope: !5101)
!5135 = !DILocation(line: 359, column: 8, scope: !5101)
!5136 = !DILocation(line: 362, column: 20, scope: !5101)
!5137 = !DILocation(line: 362, column: 14, scope: !5101)
!5138 = !DILocation(line: 362, column: 9, scope: !5101)
!5139 = !DILocation(line: 363, column: 20, scope: !5101)
!5140 = !DILocation(line: 363, column: 14, scope: !5101)
!5141 = !DILocation(line: 363, column: 9, scope: !5101)
!5142 = !DILocation(line: 364, column: 1, scope: !5101)
!5143 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5144 = !DILocalVariable(name: "q", arg: 1, scope: !5143, file: !80, line: 309, type: !5)
!5145 = !DILocation(line: 0, scope: !5143)
!5146 = !DILocation(line: 322, column: 5, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 322, column: 5)
!5148 = !DILocalVariable(name: "a", scope: !5147, file: !80, line: 322, type: !6)
!5149 = !DILocation(line: 0, scope: !5147)
!5150 = !DILocalVariable(name: "b", scope: !5147, file: !80, line: 322, type: !6)
!5151 = !DILocation(line: 323, column: 5, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 323, column: 5)
!5153 = !DILocalVariable(name: "a", scope: !5152, file: !80, line: 323, type: !6)
!5154 = !DILocation(line: 0, scope: !5152)
!5155 = !DILocalVariable(name: "b", scope: !5152, file: !80, line: 323, type: !6)
!5156 = !DILocation(line: 324, column: 5, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 324, column: 5)
!5158 = !DILocalVariable(name: "a", scope: !5157, file: !80, line: 324, type: !6)
!5159 = !DILocation(line: 0, scope: !5157)
!5160 = !DILocalVariable(name: "b", scope: !5157, file: !80, line: 324, type: !6)
!5161 = !DILocation(line: 325, column: 5, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 325, column: 5)
!5163 = !DILocalVariable(name: "a", scope: !5162, file: !80, line: 325, type: !6)
!5164 = !DILocation(line: 0, scope: !5162)
!5165 = !DILocalVariable(name: "b", scope: !5162, file: !80, line: 325, type: !6)
!5166 = !DILocation(line: 327, column: 5, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 327, column: 5)
!5168 = !DILocalVariable(name: "a", scope: !5167, file: !80, line: 327, type: !6)
!5169 = !DILocation(line: 0, scope: !5167)
!5170 = !DILocalVariable(name: "b", scope: !5167, file: !80, line: 327, type: !6)
!5171 = !DILocation(line: 328, column: 5, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 328, column: 5)
!5173 = !DILocalVariable(name: "a", scope: !5172, file: !80, line: 328, type: !6)
!5174 = !DILocation(line: 0, scope: !5172)
!5175 = !DILocalVariable(name: "b", scope: !5172, file: !80, line: 328, type: !6)
!5176 = !DILocation(line: 329, column: 5, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 329, column: 5)
!5178 = !DILocalVariable(name: "a", scope: !5177, file: !80, line: 329, type: !6)
!5179 = !DILocation(line: 0, scope: !5177)
!5180 = !DILocalVariable(name: "b", scope: !5177, file: !80, line: 329, type: !6)
!5181 = !DILocation(line: 330, column: 5, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 330, column: 5)
!5183 = !DILocalVariable(name: "a", scope: !5182, file: !80, line: 330, type: !6)
!5184 = !DILocation(line: 0, scope: !5182)
!5185 = !DILocalVariable(name: "b", scope: !5182, file: !80, line: 330, type: !6)
!5186 = !DILocation(line: 332, column: 5, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 332, column: 5)
!5188 = !DILocalVariable(name: "a", scope: !5187, file: !80, line: 332, type: !6)
!5189 = !DILocation(line: 0, scope: !5187)
!5190 = !DILocalVariable(name: "b", scope: !5187, file: !80, line: 332, type: !6)
!5191 = !DILocation(line: 333, column: 5, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 333, column: 5)
!5193 = !DILocalVariable(name: "a", scope: !5192, file: !80, line: 333, type: !6)
!5194 = !DILocation(line: 0, scope: !5192)
!5195 = !DILocalVariable(name: "b", scope: !5192, file: !80, line: 333, type: !6)
!5196 = !DILocation(line: 334, column: 5, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 334, column: 5)
!5198 = !DILocalVariable(name: "a", scope: !5197, file: !80, line: 334, type: !6)
!5199 = !DILocation(line: 0, scope: !5197)
!5200 = !DILocalVariable(name: "b", scope: !5197, file: !80, line: 334, type: !6)
!5201 = !DILocation(line: 335, column: 5, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5143, file: !80, line: 335, column: 5)
!5203 = !DILocalVariable(name: "a", scope: !5202, file: !80, line: 335, type: !6)
!5204 = !DILocation(line: 0, scope: !5202)
!5205 = !DILocalVariable(name: "b", scope: !5202, file: !80, line: 335, type: !6)
!5206 = !DILocation(line: 336, column: 1, scope: !5143)
!5207 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5208 = !DILocalVariable(name: "q", arg: 1, scope: !5207, file: !80, line: 135, type: !5)
!5209 = !DILocation(line: 0, scope: !5207)
!5210 = !DILocation(line: 161, column: 10, scope: !5207)
!5211 = !DILocalVariable(name: "x0", scope: !5207, file: !80, line: 146, type: !6)
!5212 = !DILocation(line: 162, column: 10, scope: !5207)
!5213 = !DILocalVariable(name: "x1", scope: !5207, file: !80, line: 146, type: !6)
!5214 = !DILocation(line: 163, column: 10, scope: !5207)
!5215 = !DILocalVariable(name: "x2", scope: !5207, file: !80, line: 146, type: !6)
!5216 = !DILocation(line: 164, column: 10, scope: !5207)
!5217 = !DILocalVariable(name: "x3", scope: !5207, file: !80, line: 146, type: !6)
!5218 = !DILocation(line: 165, column: 10, scope: !5207)
!5219 = !DILocalVariable(name: "x4", scope: !5207, file: !80, line: 146, type: !6)
!5220 = !DILocation(line: 166, column: 10, scope: !5207)
!5221 = !DILocalVariable(name: "x5", scope: !5207, file: !80, line: 146, type: !6)
!5222 = !DILocation(line: 167, column: 10, scope: !5207)
!5223 = !DILocalVariable(name: "x6", scope: !5207, file: !80, line: 146, type: !6)
!5224 = !DILocation(line: 168, column: 10, scope: !5207)
!5225 = !DILocalVariable(name: "x7", scope: !5207, file: !80, line: 146, type: !6)
!5226 = !DILocation(line: 173, column: 14, scope: !5207)
!5227 = !DILocalVariable(name: "y14", scope: !5207, file: !80, line: 148, type: !6)
!5228 = !DILocation(line: 174, column: 14, scope: !5207)
!5229 = !DILocalVariable(name: "y13", scope: !5207, file: !80, line: 148, type: !6)
!5230 = !DILocation(line: 175, column: 13, scope: !5207)
!5231 = !DILocalVariable(name: "y9", scope: !5207, file: !80, line: 147, type: !6)
!5232 = !DILocation(line: 176, column: 13, scope: !5207)
!5233 = !DILocalVariable(name: "y8", scope: !5207, file: !80, line: 147, type: !6)
!5234 = !DILocation(line: 177, column: 13, scope: !5207)
!5235 = !DILocalVariable(name: "t0", scope: !5207, file: !80, line: 152, type: !6)
!5236 = !DILocation(line: 178, column: 13, scope: !5207)
!5237 = !DILocalVariable(name: "y1", scope: !5207, file: !80, line: 147, type: !6)
!5238 = !DILocation(line: 179, column: 13, scope: !5207)
!5239 = !DILocalVariable(name: "y4", scope: !5207, file: !80, line: 147, type: !6)
!5240 = !DILocation(line: 180, column: 15, scope: !5207)
!5241 = !DILocalVariable(name: "y12", scope: !5207, file: !80, line: 148, type: !6)
!5242 = !DILocation(line: 181, column: 13, scope: !5207)
!5243 = !DILocalVariable(name: "y2", scope: !5207, file: !80, line: 147, type: !6)
!5244 = !DILocation(line: 182, column: 13, scope: !5207)
!5245 = !DILocalVariable(name: "y5", scope: !5207, file: !80, line: 147, type: !6)
!5246 = !DILocation(line: 183, column: 13, scope: !5207)
!5247 = !DILocalVariable(name: "y3", scope: !5207, file: !80, line: 147, type: !6)
!5248 = !DILocation(line: 184, column: 13, scope: !5207)
!5249 = !DILocalVariable(name: "t1", scope: !5207, file: !80, line: 152, type: !6)
!5250 = !DILocation(line: 185, column: 14, scope: !5207)
!5251 = !DILocalVariable(name: "y15", scope: !5207, file: !80, line: 148, type: !6)
!5252 = !DILocation(line: 186, column: 14, scope: !5207)
!5253 = !DILocalVariable(name: "y20", scope: !5207, file: !80, line: 149, type: !6)
!5254 = !DILocation(line: 187, column: 14, scope: !5207)
!5255 = !DILocalVariable(name: "y6", scope: !5207, file: !80, line: 147, type: !6)
!5256 = !DILocation(line: 188, column: 15, scope: !5207)
!5257 = !DILocalVariable(name: "y10", scope: !5207, file: !80, line: 148, type: !6)
!5258 = !DILocation(line: 189, column: 15, scope: !5207)
!5259 = !DILocalVariable(name: "y11", scope: !5207, file: !80, line: 148, type: !6)
!5260 = !DILocation(line: 190, column: 13, scope: !5207)
!5261 = !DILocalVariable(name: "y7", scope: !5207, file: !80, line: 147, type: !6)
!5262 = !DILocation(line: 191, column: 15, scope: !5207)
!5263 = !DILocalVariable(name: "y17", scope: !5207, file: !80, line: 148, type: !6)
!5264 = !DILocalVariable(name: "y19", scope: !5207, file: !80, line: 148, type: !6)
!5265 = !DILocation(line: 193, column: 14, scope: !5207)
!5266 = !DILocalVariable(name: "y16", scope: !5207, file: !80, line: 148, type: !6)
!5267 = !DILocalVariable(name: "y21", scope: !5207, file: !80, line: 149, type: !6)
!5268 = !DILocalVariable(name: "y18", scope: !5207, file: !80, line: 148, type: !6)
!5269 = !DILocation(line: 200, column: 14, scope: !5207)
!5270 = !DILocalVariable(name: "t2", scope: !5207, file: !80, line: 152, type: !6)
!5271 = !DILocation(line: 201, column: 13, scope: !5207)
!5272 = !DILocalVariable(name: "t3", scope: !5207, file: !80, line: 152, type: !6)
!5273 = !DILocation(line: 202, column: 13, scope: !5207)
!5274 = !DILocalVariable(name: "t4", scope: !5207, file: !80, line: 152, type: !6)
!5275 = !DILocation(line: 203, column: 13, scope: !5207)
!5276 = !DILocalVariable(name: "t5", scope: !5207, file: !80, line: 152, type: !6)
!5277 = !DILocalVariable(name: "t6", scope: !5207, file: !80, line: 152, type: !6)
!5278 = !DILocation(line: 205, column: 14, scope: !5207)
!5279 = !DILocalVariable(name: "t7", scope: !5207, file: !80, line: 152, type: !6)
!5280 = !DILocation(line: 206, column: 13, scope: !5207)
!5281 = !DILocalVariable(name: "t8", scope: !5207, file: !80, line: 152, type: !6)
!5282 = !DILocalVariable(name: "t9", scope: !5207, file: !80, line: 152, type: !6)
!5283 = !DILocation(line: 208, column: 14, scope: !5207)
!5284 = !DILocalVariable(name: "t10", scope: !5207, file: !80, line: 153, type: !6)
!5285 = !DILocalVariable(name: "t11", scope: !5207, file: !80, line: 153, type: !6)
!5286 = !DILocation(line: 210, column: 14, scope: !5207)
!5287 = !DILocalVariable(name: "t12", scope: !5207, file: !80, line: 153, type: !6)
!5288 = !DILocation(line: 211, column: 15, scope: !5207)
!5289 = !DILocalVariable(name: "t13", scope: !5207, file: !80, line: 153, type: !6)
!5290 = !DILocation(line: 212, column: 15, scope: !5207)
!5291 = !DILocalVariable(name: "t14", scope: !5207, file: !80, line: 153, type: !6)
!5292 = !DILocation(line: 213, column: 14, scope: !5207)
!5293 = !DILocalVariable(name: "t15", scope: !5207, file: !80, line: 153, type: !6)
!5294 = !DILocation(line: 214, column: 15, scope: !5207)
!5295 = !DILocalVariable(name: "t16", scope: !5207, file: !80, line: 153, type: !6)
!5296 = !DILocation(line: 215, column: 14, scope: !5207)
!5297 = !DILocalVariable(name: "t17", scope: !5207, file: !80, line: 153, type: !6)
!5298 = !DILocalVariable(name: "t18", scope: !5207, file: !80, line: 153, type: !6)
!5299 = !DILocalVariable(name: "t19", scope: !5207, file: !80, line: 153, type: !6)
!5300 = !DILocalVariable(name: "t20", scope: !5207, file: !80, line: 154, type: !6)
!5301 = !DILocation(line: 219, column: 15, scope: !5207)
!5302 = !DILocalVariable(name: "t21", scope: !5207, file: !80, line: 154, type: !6)
!5303 = !DILocation(line: 220, column: 15, scope: !5207)
!5304 = !DILocalVariable(name: "t22", scope: !5207, file: !80, line: 154, type: !6)
!5305 = !DILocation(line: 221, column: 15, scope: !5207)
!5306 = !DILocalVariable(name: "t23", scope: !5207, file: !80, line: 154, type: !6)
!5307 = !DILocation(line: 222, column: 15, scope: !5207)
!5308 = !DILocalVariable(name: "t24", scope: !5207, file: !80, line: 154, type: !6)
!5309 = !DILocation(line: 224, column: 15, scope: !5207)
!5310 = !DILocalVariable(name: "t25", scope: !5207, file: !80, line: 154, type: !6)
!5311 = !DILocation(line: 225, column: 15, scope: !5207)
!5312 = !DILocalVariable(name: "t26", scope: !5207, file: !80, line: 154, type: !6)
!5313 = !DILocation(line: 226, column: 15, scope: !5207)
!5314 = !DILocalVariable(name: "t27", scope: !5207, file: !80, line: 154, type: !6)
!5315 = !DILocation(line: 227, column: 15, scope: !5207)
!5316 = !DILocalVariable(name: "t28", scope: !5207, file: !80, line: 154, type: !6)
!5317 = !DILocation(line: 228, column: 15, scope: !5207)
!5318 = !DILocalVariable(name: "t29", scope: !5207, file: !80, line: 154, type: !6)
!5319 = !DILocation(line: 229, column: 15, scope: !5207)
!5320 = !DILocalVariable(name: "t30", scope: !5207, file: !80, line: 155, type: !6)
!5321 = !DILocation(line: 230, column: 15, scope: !5207)
!5322 = !DILocalVariable(name: "t31", scope: !5207, file: !80, line: 155, type: !6)
!5323 = !DILocation(line: 231, column: 15, scope: !5207)
!5324 = !DILocalVariable(name: "t32", scope: !5207, file: !80, line: 155, type: !6)
!5325 = !DILocation(line: 232, column: 15, scope: !5207)
!5326 = !DILocalVariable(name: "t33", scope: !5207, file: !80, line: 155, type: !6)
!5327 = !DILocation(line: 233, column: 15, scope: !5207)
!5328 = !DILocalVariable(name: "t34", scope: !5207, file: !80, line: 155, type: !6)
!5329 = !DILocation(line: 234, column: 15, scope: !5207)
!5330 = !DILocalVariable(name: "t35", scope: !5207, file: !80, line: 155, type: !6)
!5331 = !DILocation(line: 235, column: 15, scope: !5207)
!5332 = !DILocalVariable(name: "t36", scope: !5207, file: !80, line: 155, type: !6)
!5333 = !DILocation(line: 236, column: 15, scope: !5207)
!5334 = !DILocalVariable(name: "t37", scope: !5207, file: !80, line: 155, type: !6)
!5335 = !DILocation(line: 237, column: 15, scope: !5207)
!5336 = !DILocalVariable(name: "t38", scope: !5207, file: !80, line: 155, type: !6)
!5337 = !DILocation(line: 238, column: 15, scope: !5207)
!5338 = !DILocalVariable(name: "t39", scope: !5207, file: !80, line: 155, type: !6)
!5339 = !DILocation(line: 239, column: 15, scope: !5207)
!5340 = !DILocalVariable(name: "t40", scope: !5207, file: !80, line: 156, type: !6)
!5341 = !DILocation(line: 241, column: 15, scope: !5207)
!5342 = !DILocalVariable(name: "t41", scope: !5207, file: !80, line: 156, type: !6)
!5343 = !DILocation(line: 242, column: 15, scope: !5207)
!5344 = !DILocalVariable(name: "t42", scope: !5207, file: !80, line: 156, type: !6)
!5345 = !DILocation(line: 243, column: 15, scope: !5207)
!5346 = !DILocalVariable(name: "t43", scope: !5207, file: !80, line: 156, type: !6)
!5347 = !DILocation(line: 244, column: 15, scope: !5207)
!5348 = !DILocalVariable(name: "t44", scope: !5207, file: !80, line: 156, type: !6)
!5349 = !DILocation(line: 245, column: 15, scope: !5207)
!5350 = !DILocalVariable(name: "t45", scope: !5207, file: !80, line: 156, type: !6)
!5351 = !DILocation(line: 246, column: 14, scope: !5207)
!5352 = !DILocalVariable(name: "z0", scope: !5207, file: !80, line: 150, type: !6)
!5353 = !DILocation(line: 247, column: 14, scope: !5207)
!5354 = !DILocalVariable(name: "z1", scope: !5207, file: !80, line: 150, type: !6)
!5355 = !DILocation(line: 248, column: 14, scope: !5207)
!5356 = !DILocalVariable(name: "z2", scope: !5207, file: !80, line: 150, type: !6)
!5357 = !DILocation(line: 249, column: 14, scope: !5207)
!5358 = !DILocalVariable(name: "z3", scope: !5207, file: !80, line: 150, type: !6)
!5359 = !DILocation(line: 250, column: 14, scope: !5207)
!5360 = !DILocalVariable(name: "z4", scope: !5207, file: !80, line: 150, type: !6)
!5361 = !DILocation(line: 251, column: 14, scope: !5207)
!5362 = !DILocalVariable(name: "z5", scope: !5207, file: !80, line: 150, type: !6)
!5363 = !DILocation(line: 252, column: 14, scope: !5207)
!5364 = !DILocalVariable(name: "z6", scope: !5207, file: !80, line: 150, type: !6)
!5365 = !DILocation(line: 253, column: 14, scope: !5207)
!5366 = !DILocalVariable(name: "z7", scope: !5207, file: !80, line: 150, type: !6)
!5367 = !DILocation(line: 254, column: 14, scope: !5207)
!5368 = !DILocalVariable(name: "z8", scope: !5207, file: !80, line: 150, type: !6)
!5369 = !DILocation(line: 255, column: 14, scope: !5207)
!5370 = !DILocalVariable(name: "z9", scope: !5207, file: !80, line: 150, type: !6)
!5371 = !DILocation(line: 256, column: 15, scope: !5207)
!5372 = !DILocalVariable(name: "z10", scope: !5207, file: !80, line: 151, type: !6)
!5373 = !DILocation(line: 257, column: 15, scope: !5207)
!5374 = !DILocalVariable(name: "z11", scope: !5207, file: !80, line: 151, type: !6)
!5375 = !DILocation(line: 258, column: 15, scope: !5207)
!5376 = !DILocalVariable(name: "z12", scope: !5207, file: !80, line: 151, type: !6)
!5377 = !DILocation(line: 259, column: 15, scope: !5207)
!5378 = !DILocalVariable(name: "z13", scope: !5207, file: !80, line: 151, type: !6)
!5379 = !DILocation(line: 260, column: 15, scope: !5207)
!5380 = !DILocalVariable(name: "z14", scope: !5207, file: !80, line: 151, type: !6)
!5381 = !DILocation(line: 261, column: 15, scope: !5207)
!5382 = !DILocalVariable(name: "z15", scope: !5207, file: !80, line: 151, type: !6)
!5383 = !DILocation(line: 262, column: 15, scope: !5207)
!5384 = !DILocalVariable(name: "z16", scope: !5207, file: !80, line: 151, type: !6)
!5385 = !DILocation(line: 263, column: 15, scope: !5207)
!5386 = !DILocalVariable(name: "z17", scope: !5207, file: !80, line: 151, type: !6)
!5387 = !DILocation(line: 268, column: 15, scope: !5207)
!5388 = !DILocalVariable(name: "t46", scope: !5207, file: !80, line: 156, type: !6)
!5389 = !DILocation(line: 269, column: 15, scope: !5207)
!5390 = !DILocalVariable(name: "t47", scope: !5207, file: !80, line: 156, type: !6)
!5391 = !DILocation(line: 270, column: 14, scope: !5207)
!5392 = !DILocalVariable(name: "t48", scope: !5207, file: !80, line: 156, type: !6)
!5393 = !DILocation(line: 271, column: 14, scope: !5207)
!5394 = !DILocalVariable(name: "t49", scope: !5207, file: !80, line: 156, type: !6)
!5395 = !DILocation(line: 272, column: 14, scope: !5207)
!5396 = !DILocalVariable(name: "t50", scope: !5207, file: !80, line: 157, type: !6)
!5397 = !DILocation(line: 273, column: 14, scope: !5207)
!5398 = !DILocalVariable(name: "t51", scope: !5207, file: !80, line: 157, type: !6)
!5399 = !DILocation(line: 274, column: 14, scope: !5207)
!5400 = !DILocalVariable(name: "t52", scope: !5207, file: !80, line: 157, type: !6)
!5401 = !DILocation(line: 275, column: 14, scope: !5207)
!5402 = !DILocalVariable(name: "t53", scope: !5207, file: !80, line: 157, type: !6)
!5403 = !DILocation(line: 276, column: 14, scope: !5207)
!5404 = !DILocalVariable(name: "t54", scope: !5207, file: !80, line: 157, type: !6)
!5405 = !DILocation(line: 277, column: 15, scope: !5207)
!5406 = !DILocalVariable(name: "t55", scope: !5207, file: !80, line: 157, type: !6)
!5407 = !DILocation(line: 278, column: 15, scope: !5207)
!5408 = !DILocalVariable(name: "t56", scope: !5207, file: !80, line: 157, type: !6)
!5409 = !DILocation(line: 279, column: 15, scope: !5207)
!5410 = !DILocalVariable(name: "t57", scope: !5207, file: !80, line: 157, type: !6)
!5411 = !DILocation(line: 280, column: 14, scope: !5207)
!5412 = !DILocalVariable(name: "t58", scope: !5207, file: !80, line: 157, type: !6)
!5413 = !DILocation(line: 281, column: 14, scope: !5207)
!5414 = !DILocalVariable(name: "t59", scope: !5207, file: !80, line: 157, type: !6)
!5415 = !DILocation(line: 282, column: 15, scope: !5207)
!5416 = !DILocalVariable(name: "t60", scope: !5207, file: !80, line: 158, type: !6)
!5417 = !DILocation(line: 283, column: 15, scope: !5207)
!5418 = !DILocalVariable(name: "t61", scope: !5207, file: !80, line: 158, type: !6)
!5419 = !DILocation(line: 284, column: 15, scope: !5207)
!5420 = !DILocalVariable(name: "t62", scope: !5207, file: !80, line: 158, type: !6)
!5421 = !DILocation(line: 285, column: 15, scope: !5207)
!5422 = !DILocalVariable(name: "t63", scope: !5207, file: !80, line: 158, type: !6)
!5423 = !DILocation(line: 286, column: 14, scope: !5207)
!5424 = !DILocalVariable(name: "t64", scope: !5207, file: !80, line: 158, type: !6)
!5425 = !DILocation(line: 287, column: 15, scope: !5207)
!5426 = !DILocalVariable(name: "t65", scope: !5207, file: !80, line: 158, type: !6)
!5427 = !DILocation(line: 288, column: 14, scope: !5207)
!5428 = !DILocalVariable(name: "t66", scope: !5207, file: !80, line: 158, type: !6)
!5429 = !DILocation(line: 289, column: 14, scope: !5207)
!5430 = !DILocalVariable(name: "s0", scope: !5207, file: !80, line: 159, type: !6)
!5431 = !DILocation(line: 290, column: 14, scope: !5207)
!5432 = !DILocalVariable(name: "s6", scope: !5207, file: !80, line: 159, type: !6)
!5433 = !DILocation(line: 291, column: 14, scope: !5207)
!5434 = !DILocalVariable(name: "s7", scope: !5207, file: !80, line: 159, type: !6)
!5435 = !DILocalVariable(name: "t67", scope: !5207, file: !80, line: 158, type: !6)
!5436 = !DILocation(line: 293, column: 14, scope: !5207)
!5437 = !DILocalVariable(name: "s3", scope: !5207, file: !80, line: 159, type: !6)
!5438 = !DILocation(line: 294, column: 14, scope: !5207)
!5439 = !DILocalVariable(name: "s4", scope: !5207, file: !80, line: 159, type: !6)
!5440 = !DILocation(line: 295, column: 14, scope: !5207)
!5441 = !DILocalVariable(name: "s5", scope: !5207, file: !80, line: 159, type: !6)
!5442 = !DILocation(line: 296, column: 14, scope: !5207)
!5443 = !DILocalVariable(name: "s1", scope: !5207, file: !80, line: 159, type: !6)
!5444 = !DILocation(line: 297, column: 14, scope: !5207)
!5445 = !DILocalVariable(name: "s2", scope: !5207, file: !80, line: 159, type: !6)
!5446 = !DILocation(line: 299, column: 5, scope: !5207)
!5447 = !DILocation(line: 299, column: 10, scope: !5207)
!5448 = !DILocation(line: 300, column: 5, scope: !5207)
!5449 = !DILocation(line: 300, column: 10, scope: !5207)
!5450 = !DILocation(line: 301, column: 5, scope: !5207)
!5451 = !DILocation(line: 301, column: 10, scope: !5207)
!5452 = !DILocation(line: 302, column: 5, scope: !5207)
!5453 = !DILocation(line: 302, column: 10, scope: !5207)
!5454 = !DILocation(line: 303, column: 5, scope: !5207)
!5455 = !DILocation(line: 303, column: 10, scope: !5207)
!5456 = !DILocation(line: 304, column: 5, scope: !5207)
!5457 = !DILocation(line: 304, column: 10, scope: !5207)
!5458 = !DILocation(line: 305, column: 5, scope: !5207)
!5459 = !DILocation(line: 305, column: 10, scope: !5207)
!5460 = !DILocation(line: 306, column: 10, scope: !5207)
!5461 = !DILocation(line: 307, column: 1, scope: !5207)
!5462 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5463, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!19, !49}
!5465 = !DILocalVariable(name: "src", arg: 1, scope: !5462, file: !80, line: 96, type: !49)
!5466 = !DILocation(line: 0, scope: !5462)
!5467 = !DILocation(line: 97, column: 22, scope: !5462)
!5468 = !DILocation(line: 97, column: 12, scope: !5462)
!5469 = !DILocation(line: 98, column: 25, scope: !5462)
!5470 = !DILocation(line: 98, column: 15, scope: !5462)
!5471 = !DILocation(line: 98, column: 32, scope: !5462)
!5472 = !DILocation(line: 98, column: 12, scope: !5462)
!5473 = !DILocation(line: 99, column: 25, scope: !5462)
!5474 = !DILocation(line: 99, column: 15, scope: !5462)
!5475 = !DILocation(line: 99, column: 32, scope: !5462)
!5476 = !DILocation(line: 99, column: 12, scope: !5462)
!5477 = !DILocation(line: 100, column: 25, scope: !5462)
!5478 = !DILocation(line: 100, column: 15, scope: !5462)
!5479 = !DILocation(line: 100, column: 32, scope: !5462)
!5480 = !DILocation(line: 100, column: 12, scope: !5462)
!5481 = !DILocation(line: 97, column: 5, scope: !5462)
!5482 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4868, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5483 = !DILocalVariable(name: "r", arg: 1, scope: !5482, file: !80, line: 647, type: !4870)
!5484 = !DILocation(line: 0, scope: !5482)
!5485 = !DILocalVariable(name: "key", arg: 2, scope: !5482, file: !80, line: 647, type: !49)
!5486 = !DILocation(line: 648, column: 5, scope: !5482)
!5487 = !DILocation(line: 649, column: 1, scope: !5482)
!5488 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5489, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{null, !5491, !49}
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 32)
!5492 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5493)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5494)
!5494 = !{!5495}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5493, file: !80, line: 50, baseType: !5, size: 32)
!5496 = !DILocalVariable(name: "r", arg: 1, scope: !5488, file: !80, line: 652, type: !5491)
!5497 = !DILocation(line: 0, scope: !5488)
!5498 = !DILocalVariable(name: "key", arg: 2, scope: !5488, file: !80, line: 652, type: !49)
!5499 = !DILocalVariable(name: "skey", scope: !5488, file: !80, line: 653, type: !5500)
!5500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5501)
!5501 = !{!5502}
!5502 = !DISubrange(count: 26)
!5503 = !DILocation(line: 653, column: 14, scope: !5488)
!5504 = !DILocation(line: 654, column: 17, scope: !5488)
!5505 = !DILocation(line: 654, column: 15, scope: !5488)
!5506 = !DILocation(line: 655, column: 19, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5488, file: !80, line: 655, column: 9)
!5508 = !DILocation(line: 656, column: 9, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5507, file: !80, line: 655, column: 28)
!5510 = !DILocation(line: 657, column: 5, scope: !5509)
!5511 = !DILocation(line: 659, column: 5, scope: !5488)
!5512 = !DILocation(line: 660, column: 32, scope: !5488)
!5513 = !DILocation(line: 660, column: 5, scope: !5488)
!5514 = !DILocation(line: 661, column: 1, scope: !5488)
!5515 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5489, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5516 = !DILocalVariable(name: "r", arg: 1, scope: !5515, file: !80, line: 664, type: !5491)
!5517 = !DILocation(line: 0, scope: !5515)
!5518 = !DILocalVariable(name: "key", arg: 2, scope: !5515, file: !80, line: 664, type: !49)
!5519 = !DILocation(line: 665, column: 5, scope: !5515)
!5520 = !DILocation(line: 666, column: 1, scope: !5515)
!5521 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5522, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{null, !5524, !49}
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 32)
!5525 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5526)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5527)
!5527 = !{!5528}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5526, file: !80, line: 55, baseType: !5, size: 32)
!5529 = !DILocalVariable(name: "r", arg: 1, scope: !5521, file: !80, line: 669, type: !5524)
!5530 = !DILocation(line: 0, scope: !5521)
!5531 = !DILocalVariable(name: "key", arg: 2, scope: !5521, file: !80, line: 669, type: !49)
!5532 = !DILocalVariable(name: "skey", scope: !5521, file: !80, line: 670, type: !5533)
!5533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5534)
!5534 = !{!5535}
!5535 = !DISubrange(count: 30)
!5536 = !DILocation(line: 670, column: 14, scope: !5521)
!5537 = !DILocation(line: 671, column: 17, scope: !5521)
!5538 = !DILocation(line: 671, column: 15, scope: !5521)
!5539 = !DILocation(line: 672, column: 19, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5521, file: !80, line: 672, column: 9)
!5541 = !DILocation(line: 673, column: 9, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5540, file: !80, line: 672, column: 28)
!5543 = !DILocation(line: 674, column: 5, scope: !5542)
!5544 = !DILocation(line: 676, column: 5, scope: !5521)
!5545 = !DILocation(line: 677, column: 32, scope: !5521)
!5546 = !DILocation(line: 677, column: 5, scope: !5521)
!5547 = !DILocation(line: 678, column: 1, scope: !5521)
!5548 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5522, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5549 = !DILocalVariable(name: "r", arg: 1, scope: !5548, file: !80, line: 681, type: !5524)
!5550 = !DILocation(line: 0, scope: !5548)
!5551 = !DILocalVariable(name: "key", arg: 2, scope: !5548, file: !80, line: 681, type: !49)
!5552 = !DILocation(line: 682, column: 5, scope: !5548)
!5553 = !DILocation(line: 683, column: 1, scope: !5548)
!5554 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5555, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !18, !49, !15, !5557}
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 32)
!5558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4871)
!5559 = !DILocalVariable(name: "out", arg: 1, scope: !5554, file: !80, line: 686, type: !18)
!5560 = !DILocation(line: 0, scope: !5554)
!5561 = !DILocalVariable(name: "in", arg: 2, scope: !5554, file: !80, line: 686, type: !49)
!5562 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5554, file: !80, line: 686, type: !15)
!5563 = !DILocalVariable(name: "ctx", arg: 4, scope: !5554, file: !80, line: 686, type: !5557)
!5564 = !DILocation(line: 687, column: 36, scope: !5554)
!5565 = !DILocation(line: 687, column: 5, scope: !5554)
!5566 = !DILocation(line: 688, column: 1, scope: !5554)
!5567 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5568, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{null, !18, !49, !15, !346, !17}
!5570 = !DILocalVariable(name: "out", arg: 1, scope: !5567, file: !80, line: 587, type: !18)
!5571 = !DILocation(line: 0, scope: !5567)
!5572 = !DILocalVariable(name: "in", arg: 2, scope: !5567, file: !80, line: 587, type: !49)
!5573 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5567, file: !80, line: 587, type: !15)
!5574 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5567, file: !80, line: 587, type: !346)
!5575 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5567, file: !80, line: 587, type: !17)
!5576 = !DILocalVariable(name: "blocks", scope: !5567, file: !80, line: 588, type: !5577)
!5577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !1283)
!5578 = !DILocation(line: 588, column: 14, scope: !5567)
!5579 = !DILocalVariable(name: "t", scope: !5567, file: !80, line: 589, type: !5580)
!5580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5581)
!5581 = !{!5582}
!5582 = !DISubrange(count: 64)
!5583 = !DILocation(line: 589, column: 19, scope: !5567)
!5584 = !DILocation(line: 591, column: 5, scope: !5567)
!5585 = !DILocation(line: 591, column: 20, scope: !5567)
!5586 = !DILocation(line: 592, column: 9, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5567, file: !80, line: 591, column: 26)
!5588 = !DILocation(line: 593, column: 9, scope: !5587)
!5589 = !DILocation(line: 594, column: 17, scope: !5587)
!5590 = !DILocation(line: 595, column: 12, scope: !5587)
!5591 = !DILocation(line: 596, column: 13, scope: !5587)
!5592 = distinct !{!5592, !5584, !5593, !323}
!5593 = !DILocation(line: 597, column: 5, scope: !5567)
!5594 = !DILocation(line: 599, column: 9, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5567, file: !80, line: 599, column: 9)
!5596 = !DILocation(line: 600, column: 42, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5595, file: !80, line: 599, column: 18)
!5598 = !DILocation(line: 600, column: 9, scope: !5597)
!5599 = !DILocation(line: 601, column: 9, scope: !5597)
!5600 = !DILocation(line: 602, column: 32, scope: !5597)
!5601 = !DILocation(line: 602, column: 9, scope: !5597)
!5602 = !DILocation(line: 603, column: 5, scope: !5597)
!5603 = !DILocation(line: 604, column: 1, scope: !5567)
!5604 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5605, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{null, !18, !5104, !346, !17}
!5607 = !DILocalVariable(name: "out", arg: 1, scope: !5604, file: !80, line: 545, type: !18)
!5608 = !DILocation(line: 0, scope: !5604)
!5609 = !DILocalVariable(name: "ivw", arg: 2, scope: !5604, file: !80, line: 545, type: !5104)
!5610 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5604, file: !80, line: 545, type: !346)
!5611 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5604, file: !80, line: 545, type: !17)
!5612 = !DILocalVariable(name: "w", scope: !5604, file: !80, line: 546, type: !5577)
!5613 = !DILocation(line: 546, column: 14, scope: !5604)
!5614 = !DILocalVariable(name: "q", scope: !5604, file: !80, line: 547, type: !4962)
!5615 = !DILocation(line: 547, column: 14, scope: !5604)
!5616 = !DILocation(line: 550, column: 5, scope: !5604)
!5617 = !DILocalVariable(name: "i", scope: !5604, file: !80, line: 548, type: !17)
!5618 = !DILocation(line: 551, column: 10, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5604, file: !80, line: 551, column: 5)
!5620 = !DILocation(line: 551, scope: !5619)
!5621 = !DILocation(line: 551, column: 19, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5619, file: !80, line: 551, column: 5)
!5623 = !DILocation(line: 551, column: 5, scope: !5619)
!5624 = !DILocation(line: 552, column: 36, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5622, file: !80, line: 551, column: 29)
!5626 = !DILocation(line: 552, column: 47, scope: !5625)
!5627 = !DILocation(line: 552, column: 43, scope: !5625)
!5628 = !DILocation(line: 552, column: 55, scope: !5625)
!5629 = !DILocation(line: 552, column: 9, scope: !5625)
!5630 = !DILocation(line: 551, column: 25, scope: !5622)
!5631 = !DILocation(line: 551, column: 5, scope: !5622)
!5632 = distinct !{!5632, !5623, !5633, !323}
!5633 = !DILocation(line: 553, column: 5, scope: !5619)
!5634 = !DILocation(line: 554, column: 5, scope: !5604)
!5635 = !DILocation(line: 557, column: 5, scope: !5604)
!5636 = !DILocation(line: 558, column: 10, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5604, file: !80, line: 558, column: 5)
!5638 = !DILocation(line: 558, scope: !5637)
!5639 = !DILocation(line: 558, column: 19, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !80, line: 558, column: 5)
!5641 = !DILocation(line: 558, column: 5, scope: !5637)
!5642 = !DILocation(line: 559, column: 9, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5640, file: !80, line: 558, column: 35)
!5644 = !DILocation(line: 560, column: 9, scope: !5643)
!5645 = !DILocation(line: 561, column: 9, scope: !5643)
!5646 = !DILocation(line: 562, column: 33, scope: !5643)
!5647 = !DILocation(line: 562, column: 9, scope: !5643)
!5648 = !DILocation(line: 558, column: 31, scope: !5640)
!5649 = !DILocation(line: 558, column: 5, scope: !5640)
!5650 = distinct !{!5650, !5641, !5651, !323}
!5651 = !DILocation(line: 563, column: 5, scope: !5637)
!5652 = !DILocation(line: 564, column: 5, scope: !5604)
!5653 = !DILocation(line: 565, column: 5, scope: !5604)
!5654 = !DILocation(line: 566, column: 29, scope: !5604)
!5655 = !DILocation(line: 566, column: 5, scope: !5604)
!5656 = !DILocation(line: 568, column: 5, scope: !5604)
!5657 = !DILocation(line: 569, column: 10, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5604, file: !80, line: 569, column: 5)
!5659 = !DILocation(line: 569, scope: !5658)
!5660 = !DILocation(line: 569, column: 19, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5658, file: !80, line: 569, column: 5)
!5662 = !DILocation(line: 569, column: 5, scope: !5658)
!5663 = !DILocation(line: 570, column: 38, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5661, file: !80, line: 569, column: 30)
!5665 = !DILocation(line: 570, column: 50, scope: !5664)
!5666 = !DILocation(line: 570, column: 60, scope: !5664)
!5667 = !DILocation(line: 570, column: 56, scope: !5664)
!5668 = !DILocation(line: 570, column: 9, scope: !5664)
!5669 = !DILocation(line: 569, column: 26, scope: !5661)
!5670 = !DILocation(line: 569, column: 5, scope: !5661)
!5671 = distinct !{!5671, !5662, !5672, !323}
!5672 = !DILocation(line: 571, column: 5, scope: !5658)
!5673 = !DILocation(line: 572, column: 5, scope: !5604)
!5674 = !DILocation(line: 573, column: 1, scope: !5604)
!5675 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5676, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{null, !5, !346}
!5678 = !DILocalVariable(name: "q", arg: 1, scope: !5675, file: !80, line: 475, type: !5)
!5679 = !DILocation(line: 0, scope: !5675)
!5680 = !DILocalVariable(name: "sk", arg: 2, scope: !5675, file: !80, line: 475, type: !346)
!5681 = !DILocation(line: 476, column: 13, scope: !5675)
!5682 = !DILocation(line: 476, column: 10, scope: !5675)
!5683 = !DILocation(line: 477, column: 13, scope: !5675)
!5684 = !DILocation(line: 477, column: 5, scope: !5675)
!5685 = !DILocation(line: 477, column: 10, scope: !5675)
!5686 = !DILocation(line: 478, column: 13, scope: !5675)
!5687 = !DILocation(line: 478, column: 5, scope: !5675)
!5688 = !DILocation(line: 478, column: 10, scope: !5675)
!5689 = !DILocation(line: 479, column: 13, scope: !5675)
!5690 = !DILocation(line: 479, column: 5, scope: !5675)
!5691 = !DILocation(line: 479, column: 10, scope: !5675)
!5692 = !DILocation(line: 480, column: 13, scope: !5675)
!5693 = !DILocation(line: 480, column: 5, scope: !5675)
!5694 = !DILocation(line: 480, column: 10, scope: !5675)
!5695 = !DILocation(line: 481, column: 13, scope: !5675)
!5696 = !DILocation(line: 481, column: 5, scope: !5675)
!5697 = !DILocation(line: 481, column: 10, scope: !5675)
!5698 = !DILocation(line: 482, column: 13, scope: !5675)
!5699 = !DILocation(line: 482, column: 5, scope: !5675)
!5700 = !DILocation(line: 482, column: 10, scope: !5675)
!5701 = !DILocation(line: 483, column: 13, scope: !5675)
!5702 = !DILocation(line: 483, column: 5, scope: !5675)
!5703 = !DILocation(line: 483, column: 10, scope: !5675)
!5704 = !DILocation(line: 484, column: 1, scope: !5675)
!5705 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5706 = !DILocalVariable(name: "q", arg: 1, scope: !5705, file: !80, line: 486, type: !5)
!5707 = !DILocation(line: 0, scope: !5705)
!5708 = !DILocalVariable(name: "i", scope: !5705, file: !80, line: 487, type: !45)
!5709 = !DILocation(line: 489, column: 10, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5705, file: !80, line: 489, column: 5)
!5711 = !DILocation(line: 489, scope: !5710)
!5712 = !DILocation(line: 489, column: 19, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5710, file: !80, line: 489, column: 5)
!5714 = !DILocation(line: 489, column: 5, scope: !5710)
!5715 = !DILocation(line: 492, column: 13, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5713, file: !80, line: 489, column: 30)
!5717 = !DILocalVariable(name: "x", scope: !5716, file: !80, line: 490, type: !6)
!5718 = !DILocation(line: 0, scope: !5716)
!5719 = !DILocation(line: 493, column: 19, scope: !5716)
!5720 = !DILocation(line: 494, column: 54, scope: !5716)
!5721 = !DILocation(line: 494, column: 16, scope: !5716)
!5722 = !DILocation(line: 495, column: 54, scope: !5716)
!5723 = !DILocation(line: 495, column: 16, scope: !5716)
!5724 = !DILocation(line: 496, column: 54, scope: !5716)
!5725 = !DILocation(line: 496, column: 16, scope: !5716)
!5726 = !DILocation(line: 497, column: 54, scope: !5716)
!5727 = !DILocation(line: 497, column: 16, scope: !5716)
!5728 = !DILocation(line: 498, column: 54, scope: !5716)
!5729 = !DILocation(line: 498, column: 16, scope: !5716)
!5730 = !DILocation(line: 499, column: 54, scope: !5716)
!5731 = !DILocation(line: 499, column: 16, scope: !5716)
!5732 = !DILocation(line: 493, column: 9, scope: !5716)
!5733 = !DILocation(line: 493, column: 14, scope: !5716)
!5734 = !DILocation(line: 489, column: 26, scope: !5713)
!5735 = !DILocation(line: 489, column: 5, scope: !5713)
!5736 = distinct !{!5736, !5714, !5737, !323}
!5737 = !DILocation(line: 500, column: 5, scope: !5710)
!5738 = !DILocation(line: 501, column: 1, scope: !5705)
!5739 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5740 = !DILocalVariable(name: "q", arg: 1, scope: !5739, file: !80, line: 507, type: !5)
!5741 = !DILocation(line: 0, scope: !5739)
!5742 = !DILocation(line: 511, column: 10, scope: !5739)
!5743 = !DILocalVariable(name: "q0", scope: !5739, file: !80, line: 508, type: !6)
!5744 = !DILocation(line: 512, column: 10, scope: !5739)
!5745 = !DILocalVariable(name: "q1", scope: !5739, file: !80, line: 508, type: !6)
!5746 = !DILocation(line: 513, column: 10, scope: !5739)
!5747 = !DILocalVariable(name: "q2", scope: !5739, file: !80, line: 508, type: !6)
!5748 = !DILocation(line: 514, column: 10, scope: !5739)
!5749 = !DILocalVariable(name: "q3", scope: !5739, file: !80, line: 508, type: !6)
!5750 = !DILocation(line: 515, column: 10, scope: !5739)
!5751 = !DILocalVariable(name: "q4", scope: !5739, file: !80, line: 508, type: !6)
!5752 = !DILocation(line: 516, column: 10, scope: !5739)
!5753 = !DILocalVariable(name: "q5", scope: !5739, file: !80, line: 508, type: !6)
!5754 = !DILocation(line: 517, column: 10, scope: !5739)
!5755 = !DILocalVariable(name: "q6", scope: !5739, file: !80, line: 508, type: !6)
!5756 = !DILocation(line: 518, column: 10, scope: !5739)
!5757 = !DILocalVariable(name: "q7", scope: !5739, file: !80, line: 508, type: !6)
!5758 = !DILocation(line: 519, column: 21, scope: !5739)
!5759 = !DILocalVariable(name: "r0", scope: !5739, file: !80, line: 509, type: !6)
!5760 = !DILocation(line: 520, column: 21, scope: !5739)
!5761 = !DILocalVariable(name: "r1", scope: !5739, file: !80, line: 509, type: !6)
!5762 = !DILocation(line: 521, column: 21, scope: !5739)
!5763 = !DILocalVariable(name: "r2", scope: !5739, file: !80, line: 509, type: !6)
!5764 = !DILocation(line: 522, column: 21, scope: !5739)
!5765 = !DILocalVariable(name: "r3", scope: !5739, file: !80, line: 509, type: !6)
!5766 = !DILocation(line: 523, column: 21, scope: !5739)
!5767 = !DILocalVariable(name: "r4", scope: !5739, file: !80, line: 509, type: !6)
!5768 = !DILocation(line: 524, column: 21, scope: !5739)
!5769 = !DILocalVariable(name: "r5", scope: !5739, file: !80, line: 509, type: !6)
!5770 = !DILocation(line: 525, column: 21, scope: !5739)
!5771 = !DILocalVariable(name: "r6", scope: !5739, file: !80, line: 509, type: !6)
!5772 = !DILocation(line: 526, column: 21, scope: !5739)
!5773 = !DILocalVariable(name: "r7", scope: !5739, file: !80, line: 509, type: !6)
!5774 = !DILocation(line: 528, column: 37, scope: !5739)
!5775 = !DILocation(line: 528, column: 27, scope: !5739)
!5776 = !DILocation(line: 528, column: 25, scope: !5739)
!5777 = !DILocation(line: 528, column: 10, scope: !5739)
!5778 = !DILocation(line: 529, column: 47, scope: !5739)
!5779 = !DILocation(line: 529, column: 37, scope: !5739)
!5780 = !DILocation(line: 529, column: 35, scope: !5739)
!5781 = !DILocation(line: 529, column: 5, scope: !5739)
!5782 = !DILocation(line: 529, column: 10, scope: !5739)
!5783 = !DILocation(line: 530, column: 37, scope: !5739)
!5784 = !DILocation(line: 530, column: 27, scope: !5739)
!5785 = !DILocation(line: 530, column: 25, scope: !5739)
!5786 = !DILocation(line: 530, column: 5, scope: !5739)
!5787 = !DILocation(line: 530, column: 10, scope: !5739)
!5788 = !DILocation(line: 531, column: 47, scope: !5739)
!5789 = !DILocation(line: 531, column: 37, scope: !5739)
!5790 = !DILocation(line: 531, column: 35, scope: !5739)
!5791 = !DILocation(line: 531, column: 5, scope: !5739)
!5792 = !DILocation(line: 531, column: 10, scope: !5739)
!5793 = !DILocation(line: 532, column: 47, scope: !5739)
!5794 = !DILocation(line: 532, column: 37, scope: !5739)
!5795 = !DILocation(line: 532, column: 35, scope: !5739)
!5796 = !DILocation(line: 532, column: 5, scope: !5739)
!5797 = !DILocation(line: 532, column: 10, scope: !5739)
!5798 = !DILocation(line: 533, column: 37, scope: !5739)
!5799 = !DILocation(line: 533, column: 27, scope: !5739)
!5800 = !DILocation(line: 533, column: 25, scope: !5739)
!5801 = !DILocation(line: 533, column: 5, scope: !5739)
!5802 = !DILocation(line: 533, column: 10, scope: !5739)
!5803 = !DILocation(line: 534, column: 37, scope: !5739)
!5804 = !DILocation(line: 534, column: 27, scope: !5739)
!5805 = !DILocation(line: 534, column: 25, scope: !5739)
!5806 = !DILocation(line: 534, column: 5, scope: !5739)
!5807 = !DILocation(line: 534, column: 10, scope: !5739)
!5808 = !DILocation(line: 535, column: 37, scope: !5739)
!5809 = !DILocation(line: 535, column: 27, scope: !5739)
!5810 = !DILocation(line: 535, column: 25, scope: !5739)
!5811 = !DILocation(line: 535, column: 5, scope: !5739)
!5812 = !DILocation(line: 535, column: 10, scope: !5739)
!5813 = !DILocation(line: 536, column: 1, scope: !5739)
!5814 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5815, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{null, !5069, !6, !6}
!5817 = !DILocalVariable(name: "w", arg: 1, scope: !5814, file: !80, line: 367, type: !5069)
!5818 = !DILocation(line: 0, scope: !5814)
!5819 = !DILocalVariable(name: "q0", arg: 2, scope: !5814, file: !80, line: 367, type: !6)
!5820 = !DILocalVariable(name: "q1", arg: 3, scope: !5814, file: !80, line: 367, type: !6)
!5821 = !DILocation(line: 370, column: 13, scope: !5814)
!5822 = !DILocalVariable(name: "x0", scope: !5814, file: !80, line: 368, type: !6)
!5823 = !DILocation(line: 371, column: 13, scope: !5814)
!5824 = !DILocalVariable(name: "x1", scope: !5814, file: !80, line: 368, type: !6)
!5825 = !DILocation(line: 372, column: 14, scope: !5814)
!5826 = !DILocation(line: 372, column: 20, scope: !5814)
!5827 = !DILocalVariable(name: "x2", scope: !5814, file: !80, line: 368, type: !6)
!5828 = !DILocation(line: 373, column: 14, scope: !5814)
!5829 = !DILocation(line: 373, column: 20, scope: !5814)
!5830 = !DILocalVariable(name: "x3", scope: !5814, file: !80, line: 368, type: !6)
!5831 = !DILocation(line: 374, column: 15, scope: !5814)
!5832 = !DILocation(line: 374, column: 8, scope: !5814)
!5833 = !DILocation(line: 375, column: 15, scope: !5814)
!5834 = !DILocation(line: 375, column: 8, scope: !5814)
!5835 = !DILocation(line: 376, column: 8, scope: !5814)
!5836 = !DILocation(line: 377, column: 8, scope: !5814)
!5837 = !DILocation(line: 378, column: 8, scope: !5814)
!5838 = !DILocation(line: 379, column: 8, scope: !5814)
!5839 = !DILocation(line: 382, column: 41, scope: !5814)
!5840 = !DILocation(line: 382, column: 25, scope: !5814)
!5841 = !DILocation(line: 382, column: 10, scope: !5814)
!5842 = !DILocation(line: 383, column: 41, scope: !5814)
!5843 = !DILocation(line: 383, column: 25, scope: !5814)
!5844 = !DILocation(line: 383, column: 5, scope: !5814)
!5845 = !DILocation(line: 383, column: 10, scope: !5814)
!5846 = !DILocation(line: 384, column: 41, scope: !5814)
!5847 = !DILocation(line: 384, column: 25, scope: !5814)
!5848 = !DILocation(line: 384, column: 5, scope: !5814)
!5849 = !DILocation(line: 384, column: 10, scope: !5814)
!5850 = !DILocation(line: 385, column: 41, scope: !5814)
!5851 = !DILocation(line: 385, column: 25, scope: !5814)
!5852 = !DILocation(line: 385, column: 5, scope: !5814)
!5853 = !DILocation(line: 385, column: 10, scope: !5814)
!5854 = !DILocation(line: 386, column: 1, scope: !5814)
!5855 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5856, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{null, !18, !5104, !15}
!5858 = !DILocalVariable(name: "dst", arg: 1, scope: !5855, file: !80, line: 127, type: !18)
!5859 = !DILocation(line: 0, scope: !5855)
!5860 = !DILocalVariable(name: "v", arg: 2, scope: !5855, file: !80, line: 127, type: !5104)
!5861 = !DILocalVariable(name: "num", arg: 3, scope: !5855, file: !80, line: 127, type: !15)
!5862 = !DILocation(line: 128, column: 5, scope: !5855)
!5863 = !DILocation(line: 128, column: 18, scope: !5855)
!5864 = !DILocation(line: 128, column: 15, scope: !5855)
!5865 = !DILocation(line: 129, column: 28, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5855, file: !80, line: 128, column: 23)
!5867 = !DILocation(line: 129, column: 25, scope: !5866)
!5868 = !DILocation(line: 129, column: 9, scope: !5866)
!5869 = !DILocation(line: 130, column: 13, scope: !5866)
!5870 = distinct !{!5870, !5862, !5871, !323}
!5871 = !DILocation(line: 131, column: 5, scope: !5855)
!5872 = !DILocation(line: 132, column: 1, scope: !5855)
!5873 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5874, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{null, !18, !19}
!5876 = !DILocalVariable(name: "dst", arg: 1, scope: !5873, file: !80, line: 119, type: !18)
!5877 = !DILocation(line: 0, scope: !5873)
!5878 = !DILocalVariable(name: "x", arg: 2, scope: !5873, file: !80, line: 119, type: !19)
!5879 = !DILocation(line: 120, column: 14, scope: !5873)
!5880 = !DILocation(line: 120, column: 12, scope: !5873)
!5881 = !DILocation(line: 121, column: 32, scope: !5873)
!5882 = !DILocation(line: 121, column: 14, scope: !5873)
!5883 = !DILocation(line: 121, column: 5, scope: !5873)
!5884 = !DILocation(line: 121, column: 12, scope: !5873)
!5885 = !DILocation(line: 122, column: 32, scope: !5873)
!5886 = !DILocation(line: 122, column: 14, scope: !5873)
!5887 = !DILocation(line: 122, column: 5, scope: !5873)
!5888 = !DILocation(line: 122, column: 12, scope: !5873)
!5889 = !DILocation(line: 123, column: 32, scope: !5873)
!5890 = !DILocation(line: 123, column: 14, scope: !5873)
!5891 = !DILocation(line: 123, column: 5, scope: !5873)
!5892 = !DILocation(line: 123, column: 12, scope: !5873)
!5893 = !DILocation(line: 124, column: 1, scope: !5873)
!5894 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5895, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!6, !6}
!5897 = !DILocalVariable(name: "x", arg: 1, scope: !5894, file: !80, line: 503, type: !6)
!5898 = !DILocation(line: 0, scope: !5894)
!5899 = !DILocation(line: 504, column: 22, scope: !5894)
!5900 = !DILocation(line: 504, column: 5, scope: !5894)
!5901 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5902, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{null, !18, !15, !49, !5557}
!5904 = !DILocalVariable(name: "out", arg: 1, scope: !5901, file: !80, line: 690, type: !18)
!5905 = !DILocation(line: 0, scope: !5901)
!5906 = !DILocalVariable(name: "outlen", arg: 2, scope: !5901, file: !80, line: 690, type: !15)
!5907 = !DILocalVariable(name: "iv", arg: 3, scope: !5901, file: !80, line: 690, type: !49)
!5908 = !DILocalVariable(name: "ctx", arg: 4, scope: !5901, file: !80, line: 690, type: !5557)
!5909 = !DILocation(line: 691, column: 35, scope: !5901)
!5910 = !DILocation(line: 691, column: 5, scope: !5901)
!5911 = !DILocation(line: 692, column: 1, scope: !5901)
!5912 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5913, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{null, !18, !15, !49, !346, !17}
!5915 = !DILocalVariable(name: "out", arg: 1, scope: !5912, file: !80, line: 607, type: !18)
!5916 = !DILocation(line: 0, scope: !5912)
!5917 = !DILocalVariable(name: "outlen", arg: 2, scope: !5912, file: !80, line: 607, type: !15)
!5918 = !DILocalVariable(name: "iv", arg: 3, scope: !5912, file: !80, line: 607, type: !49)
!5919 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5912, file: !80, line: 607, type: !346)
!5920 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5912, file: !80, line: 607, type: !17)
!5921 = !DILocalVariable(name: "ivw", scope: !5912, file: !80, line: 608, type: !5577)
!5922 = !DILocation(line: 608, column: 14, scope: !5912)
!5923 = !DILocalVariable(name: "cc", scope: !5912, file: !80, line: 610, type: !19)
!5924 = !DILocation(line: 612, column: 5, scope: !5912)
!5925 = !DILocation(line: 613, column: 16, scope: !5912)
!5926 = !DILocation(line: 613, column: 5, scope: !5912)
!5927 = !DILocation(line: 614, column: 16, scope: !5912)
!5928 = !DILocation(line: 614, column: 5, scope: !5912)
!5929 = !DILocation(line: 615, column: 16, scope: !5912)
!5930 = !DILocation(line: 615, column: 5, scope: !5912)
!5931 = !DILocation(line: 616, column: 15, scope: !5912)
!5932 = !DILocation(line: 616, column: 5, scope: !5912)
!5933 = !DILocation(line: 616, column: 13, scope: !5912)
!5934 = !DILocation(line: 617, column: 15, scope: !5912)
!5935 = !DILocation(line: 617, column: 5, scope: !5912)
!5936 = !DILocation(line: 617, column: 13, scope: !5912)
!5937 = !DILocation(line: 618, column: 15, scope: !5912)
!5938 = !DILocation(line: 618, column: 5, scope: !5912)
!5939 = !DILocation(line: 618, column: 13, scope: !5912)
!5940 = !DILocation(line: 619, column: 15, scope: !5912)
!5941 = !DILocation(line: 619, column: 5, scope: !5912)
!5942 = !DILocation(line: 619, column: 13, scope: !5912)
!5943 = !DILocation(line: 621, column: 5, scope: !5912)
!5944 = !DILocation(line: 621, column: 19, scope: !5912)
!5945 = !DILocation(line: 622, column: 9, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5912, file: !80, line: 621, column: 25)
!5947 = !DILocation(line: 623, column: 13, scope: !5946)
!5948 = !DILocation(line: 624, column: 16, scope: !5946)
!5949 = distinct !{!5949, !5943, !5950, !323}
!5950 = !DILocation(line: 625, column: 5, scope: !5912)
!5951 = !DILocation(line: 626, column: 16, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5912, file: !80, line: 626, column: 9)
!5953 = !DILocalVariable(name: "tmp", scope: !5954, file: !80, line: 627, type: !5580)
!5954 = distinct !DILexicalBlock(scope: !5952, file: !80, line: 626, column: 21)
!5955 = !DILocation(line: 627, column: 23, scope: !5954)
!5956 = !DILocation(line: 628, column: 9, scope: !5954)
!5957 = !DILocalVariable(name: "i", scope: !5912, file: !80, line: 609, type: !15)
!5958 = !DILocation(line: 629, column: 14, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5954, file: !80, line: 629, column: 9)
!5960 = !DILocation(line: 629, scope: !5959)
!5961 = !DILocation(line: 629, column: 23, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5959, file: !80, line: 629, column: 9)
!5963 = !DILocation(line: 629, column: 9, scope: !5959)
!5964 = !DILocation(line: 630, column: 22, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5962, file: !80, line: 629, column: 38)
!5966 = !DILocation(line: 630, column: 13, scope: !5965)
!5967 = !DILocation(line: 630, column: 20, scope: !5965)
!5968 = !DILocation(line: 629, column: 34, scope: !5962)
!5969 = !DILocation(line: 629, column: 9, scope: !5962)
!5970 = distinct !{!5970, !5963, !5971, !323}
!5971 = !DILocation(line: 631, column: 9, scope: !5959)
!5972 = !DILocation(line: 633, column: 1, scope: !5912)
!5973 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5086, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5974 = !DILocalVariable(name: "x", arg: 1, scope: !5973, file: !80, line: 112, type: !19)
!5975 = !DILocation(line: 0, scope: !5973)
!5976 = !DILocation(line: 115, column: 22, scope: !5973)
!5977 = !DILocation(line: 115, column: 5, scope: !5973)
!5978 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !5979, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{null, !18, !5069, !346, !17}
!5981 = !DILocalVariable(name: "out", arg: 1, scope: !5978, file: !80, line: 576, type: !18)
!5982 = !DILocation(line: 0, scope: !5978)
!5983 = !DILocalVariable(name: "ivw", arg: 2, scope: !5978, file: !80, line: 576, type: !5069)
!5984 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5978, file: !80, line: 576, type: !346)
!5985 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5978, file: !80, line: 576, type: !17)
!5986 = !DILocation(line: 577, column: 5, scope: !5978)
!5987 = !DILocation(line: 580, column: 17, scope: !5978)
!5988 = !DILocation(line: 580, column: 5, scope: !5978)
!5989 = !DILocation(line: 581, column: 17, scope: !5978)
!5990 = !DILocation(line: 581, column: 5, scope: !5978)
!5991 = !DILocation(line: 582, column: 17, scope: !5978)
!5992 = !DILocation(line: 582, column: 5, scope: !5978)
!5993 = !DILocation(line: 583, column: 17, scope: !5978)
!5994 = !DILocation(line: 583, column: 5, scope: !5978)
!5995 = !DILocation(line: 584, column: 1, scope: !5978)
!5996 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !5997, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{null, !5069}
!5999 = !DILocalVariable(name: "x", arg: 1, scope: !5996, file: !80, line: 539, type: !5069)
!6000 = !DILocation(line: 0, scope: !5996)
!6001 = !DILocation(line: 540, column: 28, scope: !5996)
!6002 = !DILocation(line: 540, column: 18, scope: !5996)
!6003 = !DILocation(line: 540, column: 32, scope: !5996)
!6004 = !DILocalVariable(name: "t", scope: !5996, file: !80, line: 540, type: !19)
!6005 = !DILocation(line: 541, column: 10, scope: !5996)
!6006 = !DILocation(line: 541, column: 8, scope: !5996)
!6007 = !DILocation(line: 542, column: 1, scope: !5996)
!6008 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6009, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !18, !49, !15, !6011}
!6011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6012, size: 32)
!6012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5492)
!6013 = !DILocalVariable(name: "out", arg: 1, scope: !6008, file: !80, line: 694, type: !18)
!6014 = !DILocation(line: 0, scope: !6008)
!6015 = !DILocalVariable(name: "in", arg: 2, scope: !6008, file: !80, line: 694, type: !49)
!6016 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6008, file: !80, line: 694, type: !15)
!6017 = !DILocalVariable(name: "ctx", arg: 4, scope: !6008, file: !80, line: 694, type: !6011)
!6018 = !DILocation(line: 695, column: 36, scope: !6008)
!6019 = !DILocation(line: 695, column: 5, scope: !6008)
!6020 = !DILocation(line: 696, column: 1, scope: !6008)
!6021 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6022, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{null, !18, !15, !49, !6011}
!6024 = !DILocalVariable(name: "out", arg: 1, scope: !6021, file: !80, line: 698, type: !18)
!6025 = !DILocation(line: 0, scope: !6021)
!6026 = !DILocalVariable(name: "outlen", arg: 2, scope: !6021, file: !80, line: 698, type: !15)
!6027 = !DILocalVariable(name: "iv", arg: 3, scope: !6021, file: !80, line: 698, type: !49)
!6028 = !DILocalVariable(name: "ctx", arg: 4, scope: !6021, file: !80, line: 698, type: !6011)
!6029 = !DILocation(line: 699, column: 35, scope: !6021)
!6030 = !DILocation(line: 699, column: 5, scope: !6021)
!6031 = !DILocation(line: 700, column: 1, scope: !6021)
!6032 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6033, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{null, !18, !49, !15, !6035}
!6035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6036, size: 32)
!6036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5525)
!6037 = !DILocalVariable(name: "out", arg: 1, scope: !6032, file: !80, line: 702, type: !18)
!6038 = !DILocation(line: 0, scope: !6032)
!6039 = !DILocalVariable(name: "in", arg: 2, scope: !6032, file: !80, line: 702, type: !49)
!6040 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6032, file: !80, line: 702, type: !15)
!6041 = !DILocalVariable(name: "ctx", arg: 4, scope: !6032, file: !80, line: 702, type: !6035)
!6042 = !DILocation(line: 703, column: 36, scope: !6032)
!6043 = !DILocation(line: 703, column: 5, scope: !6032)
!6044 = !DILocation(line: 704, column: 1, scope: !6032)
!6045 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6046, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !18, !15, !49, !6035}
!6048 = !DILocalVariable(name: "out", arg: 1, scope: !6045, file: !80, line: 706, type: !18)
!6049 = !DILocation(line: 0, scope: !6045)
!6050 = !DILocalVariable(name: "outlen", arg: 2, scope: !6045, file: !80, line: 706, type: !15)
!6051 = !DILocalVariable(name: "iv", arg: 3, scope: !6045, file: !80, line: 706, type: !49)
!6052 = !DILocalVariable(name: "ctx", arg: 4, scope: !6045, file: !80, line: 706, type: !6035)
!6053 = !DILocation(line: 707, column: 35, scope: !6045)
!6054 = !DILocation(line: 707, column: 5, scope: !6045)
!6055 = !DILocation(line: 708, column: 1, scope: !6045)
!6056 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6057, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6057 = !DISubroutineType(types: !6058)
!6058 = !{null, !4870}
!6059 = !DILocalVariable(name: "r", arg: 1, scope: !6056, file: !80, line: 710, type: !4870)
!6060 = !DILocation(line: 0, scope: !6056)
!6061 = !DILocation(line: 711, column: 13, scope: !6056)
!6062 = !DILocation(line: 711, column: 5, scope: !6056)
!6063 = !DILocation(line: 712, column: 1, scope: !6056)
!6064 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6065, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{null, !5491}
!6067 = !DILocalVariable(name: "r", arg: 1, scope: !6064, file: !80, line: 714, type: !5491)
!6068 = !DILocation(line: 0, scope: !6064)
!6069 = !DILocation(line: 715, column: 13, scope: !6064)
!6070 = !DILocation(line: 715, column: 5, scope: !6064)
!6071 = !DILocation(line: 716, column: 1, scope: !6064)
!6072 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6073, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{null, !5524}
!6075 = !DILocalVariable(name: "r", arg: 1, scope: !6072, file: !80, line: 718, type: !5524)
!6076 = !DILocation(line: 0, scope: !6072)
!6077 = !DILocation(line: 719, column: 13, scope: !6072)
!6078 = !DILocation(line: 719, column: 5, scope: !6072)
!6079 = !DILocation(line: 720, column: 1, scope: !6072)
!6080 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6081, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!45, !18, !15, !49, !15}
!6083 = !DILocalVariable(name: "output", arg: 1, scope: !6080, file: !80, line: 722, type: !18)
!6084 = !DILocation(line: 0, scope: !6080)
!6085 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6080, file: !80, line: 722, type: !15)
!6086 = !DILocalVariable(name: "input", arg: 3, scope: !6080, file: !80, line: 723, type: !49)
!6087 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6080, file: !80, line: 723, type: !15)
!6088 = !DILocalVariable(name: "ctx", scope: !6080, file: !80, line: 724, type: !4871)
!6089 = !DILocation(line: 724, column: 15, scope: !6080)
!6090 = !DILocalVariable(name: "iv", scope: !6080, file: !80, line: 725, type: !1282)
!6091 = !DILocation(line: 725, column: 19, scope: !6080)
!6092 = !DILocation(line: 727, column: 5, scope: !6080)
!6093 = !DILocation(line: 728, column: 5, scope: !6080)
!6094 = !DILocation(line: 729, column: 5, scope: !6080)
!6095 = !DILocation(line: 731, column: 5, scope: !6080)
!6096 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6097, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{null, !3371, !49, !18}
!6099 = !DILocalVariable(name: "input", arg: 1, scope: !6096, file: !80, line: 734, type: !3371)
!6100 = !DILocation(line: 0, scope: !6096)
!6101 = !DILocalVariable(name: "key", arg: 2, scope: !6096, file: !80, line: 734, type: !49)
!6102 = !DILocalVariable(name: "output", arg: 3, scope: !6096, file: !80, line: 734, type: !18)
!6103 = !DILocalVariable(name: "ctx", scope: !6096, file: !80, line: 735, type: !5525)
!6104 = !DILocation(line: 735, column: 15, scope: !6096)
!6105 = !DILocation(line: 737, column: 5, scope: !6096)
!6106 = !DILocation(line: 738, column: 5, scope: !6096)
!6107 = !DILocation(line: 739, column: 5, scope: !6096)
!6108 = !DILocation(line: 740, column: 1, scope: !6096)
