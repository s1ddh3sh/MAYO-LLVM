; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\04\00\08\01", align 1, !dbg !0
@pqmayo_MAYO_5_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_5_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_5_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
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
  %epk = alloca [107415 x i64], align 8
  %esk = alloca [106926 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !131, !DIExpression(), !132)
    #dbg_value(i32 32, !133, !DIExpression(), !132)
  store i32 32, ptr %msglen, align 4, !dbg !134
    #dbg_value(i32 32, !133, !DIExpression(), !132)
    #dbg_value(i32 996, !135, !DIExpression(), !132)
  store i32 996, ptr %smlen, align 4, !dbg !136
  %call = call dereferenceable_or_null(5554) ptr @calloc(i32 noundef 5554, i32 noundef 1) #8, !dbg !137
    #dbg_value(ptr %call, !138, !DIExpression(), !132)
  %call1 = call dereferenceable_or_null(40) ptr @calloc(i32 noundef 40, i32 noundef 1) #8, !dbg !139
    #dbg_value(ptr %call1, !140, !DIExpression(), !132)
    #dbg_declare(ptr %epk, !141, !DIExpression(), !146)
    #dbg_declare(ptr %esk, !147, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !153
    #dbg_value(i32 %0, !133, !DIExpression(), !132)
  %add2 = add i32 %0, 964, !dbg !154
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #8, !dbg !155
    #dbg_value(ptr %call3, !156, !DIExpression(), !132)
    #dbg_declare(ptr %msg, !157, !DIExpression(), !161)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !161
    #dbg_declare(ptr %msg2, !162, !DIExpression(), !163)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !163
  %call4 = call i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #7, !dbg !164
    #dbg_value(i32 %call4, !165, !DIExpression(), !132)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !166
  br i1 %cmp.not, label %if.end, label %err, !dbg !166

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #7, !dbg !168
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %call11 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #7, !dbg !169
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %1 = load i32, ptr %msglen, align 4, !dbg !170
    #dbg_value(i32 %1, !133, !DIExpression(), !132)
    #dbg_value(ptr %smlen, !135, !DIExpression(DW_OP_deref), !132)
  %call17 = call i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #7, !dbg !171
    #dbg_value(i32 %call17, !165, !DIExpression(), !132)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !172
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !172

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !174
    #dbg_value(i32 %2, !135, !DIExpression(), !132)
    #dbg_value(ptr %msglen, !133, !DIExpression(DW_OP_deref), !132)
  %call23 = call i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #7, !dbg !175
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
  %call32 = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #7, !dbg !182
    #dbg_value(i32 %call32, !165, !DIExpression(), !132)
  %sext = sub nsw i32 0, %call32, !dbg !183
  br label %err, !dbg !183

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !132
    #dbg_value(i32 %res.0, !165, !DIExpression(), !132)
    #dbg_label(!185, !186)
  call void @free(ptr noundef %call) #9, !dbg !187
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 40) #9, !dbg !188
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !191 {
entry:
    #dbg_value(ptr %p, !222, !DIExpression(), !223)
    #dbg_value(ptr %pk, !224, !DIExpression(), !223)
    #dbg_value(ptr %sk, !225, !DIExpression(), !223)
    #dbg_value(i32 0, !226, !DIExpression(), !223)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #7, !dbg !227
    #dbg_value(i32 %call, !226, !DIExpression(), !223)
    #dbg_label(!228, !229)
  ret i32 %call, !dbg !230
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !231 {
entry:
  %S = alloca [868 x i8], align 1
  %P = alloca [106713 x i64], align 8
  %P3 = alloca [1296 x i64], align 8
  %O = alloca [1704 x i8], align 1
  %P3_upper = alloca [702 x i64], align 8
    #dbg_value(ptr %p, !232, !DIExpression(), !233)
    #dbg_value(ptr %cpk, !234, !DIExpression(), !233)
    #dbg_value(ptr %csk, !235, !DIExpression(), !233)
    #dbg_value(i32 0, !236, !DIExpression(), !233)
    #dbg_value(ptr %csk, !237, !DIExpression(), !233)
    #dbg_declare(ptr %S, !238, !DIExpression(), !242)
    #dbg_declare(ptr %P, !243, !DIExpression(), !247)
    #dbg_declare(ptr %P3, !248, !DIExpression(), !252)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %P3, i8 0, i32 10368, i1 false), !dbg !252
    #dbg_declare(ptr %O, !253, !DIExpression(), !257)
    #dbg_value(i32 9, !258, !DIExpression(), !233)
    #dbg_value(i32 142, !260, !DIExpression(), !233)
    #dbg_value(i32 142, !261, !DIExpression(), !233)
    #dbg_value(i32 12, !262, !DIExpression(), !233)
    #dbg_value(i32 852, !263, !DIExpression(), !233)
    #dbg_value(i32 91377, !264, !DIExpression(), !233)
    #dbg_value(i32 702, !265, !DIExpression(), !233)
    #dbg_value(i32 16, !266, !DIExpression(), !233)
    #dbg_value(i32 40, !267, !DIExpression(), !233)
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 731016, !dbg !269
    #dbg_value(ptr %add.ptr, !270, !DIExpression(), !233)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 40) #9, !dbg !271
  %cmp.not = icmp eq i32 %call, 0, !dbg !273
  br i1 %cmp.not, label %if.end, label %err, !dbg !273

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #7, !dbg !274
    #dbg_value(ptr %S, !275, !DIExpression(), !233)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !276
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1704) #7, !dbg !277
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #7, !dbg !278
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #7, !dbg !279
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #9, !dbg !280
    #dbg_declare(ptr %P3_upper, !281, !DIExpression(), !285)
  call void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 12) #7, !dbg !286
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !287
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 78, i32 noundef 142) #7, !dbg !288
  br label %err, !dbg !288

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !233
    #dbg_value(i32 %ret.0, !236, !DIExpression(), !233)
    #dbg_label(!289, !290)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1704) #9, !dbg !291
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 122688) #9, !dbg !292
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 10368) #9, !dbg !293
  ret i32 %ret.0, !dbg !294
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483503, -2147483648) %mdeclen) unnamed_addr #0 !dbg !295 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 841847, ptr noundef %seed_pk, i32 noundef 16) #7, !dbg !339
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 11857, i32 noundef 142) #7, !dbg !340
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
    #dbg_value(i32 9, !353, !DIExpression(), !348)
    #dbg_value(i32 142, !354, !DIExpression(), !348)
    #dbg_value(i32 12, !355, !DIExpression(), !348)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #7, !dbg !356
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 9, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 142, i32 noundef 12, i32 noundef 12) #7, !dbg !357
  ret void, !dbg !358
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !359 {
entry:
    #dbg_value(ptr %in, !362, !DIExpression(), !363)
    #dbg_value(ptr %out, !364, !DIExpression(), !363)
    #dbg_value(i32 78, !365, !DIExpression(), !363)
    #dbg_value(i32 142, !366, !DIExpression(), !363)
    #dbg_value(i32 9, !367, !DIExpression(), !363)
    #dbg_value(ptr %in, !368, !DIExpression(), !363)
    #dbg_value(i32 0, !369, !DIExpression(), !371)
  br label %for.cond, !dbg !372

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !373
    #dbg_value(i32 %i.0, !369, !DIExpression(), !371)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !374
  br i1 %exitcond, label %for.body, label %for.end, !dbg !376

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 71, !dbg !377
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !379
  %mul3 = mul nuw nsw i32 %i.0, 72, !dbg !380
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !381
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 71) #9, !dbg !382
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 9, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #7, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !398 {
entry:
    #dbg_value(i32 9, !401, !DIExpression(), !402)
    #dbg_value(ptr %mat, !403, !DIExpression(), !402)
    #dbg_value(ptr %bs_mat, !404, !DIExpression(), !402)
    #dbg_value(ptr %acc, !405, !DIExpression(), !402)
    #dbg_value(i32 142, !406, !DIExpression(), !402)
    #dbg_value(i32 12, !407, !DIExpression(), !402)
    #dbg_value(i32 12, !408, !DIExpression(), !402)
    #dbg_value(i32 0, !409, !DIExpression(), !411)
  br label %for.cond, !dbg !412

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !413
    #dbg_value(i32 %r.0, !409, !DIExpression(), !411)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !414
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !416

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !417

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !420
    #dbg_value(i32 %c.0, !421, !DIExpression(), !422)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !423
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !417

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !425

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !428
    #dbg_value(i32 %k.0, !429, !DIExpression(), !430)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !431
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !425

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !433
  %add = add nuw nsw i32 %mul, %k.0, !dbg !435
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !436
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !436
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !437
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !438
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !438
  %1 = load i8, ptr %arrayidx, align 1, !dbg !438
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !439
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !440
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !441
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !441
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !442
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
  %exitcond = icmp ne i32 %i.0, 9, !dbg !473
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
    #dbg_value(i32 9, !531, !DIExpression(), !532)
    #dbg_value(ptr %bs_mat, !533, !DIExpression(), !532)
    #dbg_value(ptr %mat, !534, !DIExpression(), !532)
    #dbg_value(ptr %acc, !535, !DIExpression(), !532)
    #dbg_value(i32 142, !536, !DIExpression(), !532)
    #dbg_value(i32 142, !537, !DIExpression(), !532)
    #dbg_value(i32 12, !538, !DIExpression(), !532)
    #dbg_value(i32 1, !539, !DIExpression(), !532)
    #dbg_value(i32 0, !540, !DIExpression(), !532)
    #dbg_value(i32 0, !541, !DIExpression(), !543)
  br label %for.cond, !dbg !544

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !545
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !545
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !546
    #dbg_value(i32 %r.0, !541, !DIExpression(), !543)
    #dbg_value(i32 %bs_mat_entries_used.0, !540, !DIExpression(), !532)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !547
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
  %exitcond = icmp ne i32 %k.0, 12, !dbg !564
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !558

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !566
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !566
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !568
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !569
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !569
  %2 = load i8, ptr %arrayidx, align 1, !dbg !569
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !570
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !571
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !572
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !572
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !573
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 78, 11858) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !588 {
entry:
  %tmp = alloca [9 x i64], align 8
    #dbg_value(ptr %in, !591, !DIExpression(), !592)
    #dbg_value(ptr %out, !593, !DIExpression(), !592)
    #dbg_value(i32 %vecs, !594, !DIExpression(), !592)
    #dbg_value(i32 142, !595, !DIExpression(), !592)
    #dbg_value(i32 9, !596, !DIExpression(), !592)
    #dbg_value(ptr %out, !597, !DIExpression(), !592)
    #dbg_declare(ptr %tmp, !598, !DIExpression(), !602)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %tmp, i8 0, i32 72, i1 false), !dbg !602
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
  %div1 = mul nsw i32 %i.0, 71, !dbg !611
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !613
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 71) #9, !dbg !614
  %mul4 = mul nsw i32 %i.0, 72, !dbg !615
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !616
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 72) #9, !dbg !617
    #dbg_value(i32 %i.0, !603, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !605)
  br label %for.cond, !dbg !618, !llvm.loop !619

for.end:                                          ; preds = %for.cond
  ret void, !dbg !621
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !622 {
entry:
  %S = alloca [868 x i8], align 1
    #dbg_value(ptr %p, !625, !DIExpression(), !626)
    #dbg_value(ptr %csk, !627, !DIExpression(), !626)
    #dbg_value(ptr %sk, !628, !DIExpression(), !626)
    #dbg_value(i32 0, !629, !DIExpression(), !626)
    #dbg_declare(ptr %S, !630, !DIExpression(), !631)
    #dbg_value(ptr %sk, !632, !DIExpression(), !626)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !633
    #dbg_value(ptr %add.ptr1, !634, !DIExpression(), !626)
    #dbg_value(i32 12, !635, !DIExpression(), !626)
    #dbg_value(i32 142, !636, !DIExpression(), !626)
    #dbg_value(i32 852, !637, !DIExpression(), !626)
    #dbg_value(i32 16, !638, !DIExpression(), !626)
    #dbg_value(i32 40, !639, !DIExpression(), !626)
    #dbg_value(ptr %csk, !640, !DIExpression(), !626)
    #dbg_value(ptr %S, !641, !DIExpression(), !626)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #7, !dbg !642
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !643
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1704) #7, !dbg !644
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #7, !dbg !645
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !646
    #dbg_value(ptr %add.ptr5, !647, !DIExpression(), !626)
    #dbg_value(ptr %sk, !648, !DIExpression(), !626)
    #dbg_value(ptr %add.ptr5, !649, !DIExpression(), !626)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #7, !dbg !650
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 868) #9, !dbg !651
  ret i32 0, !dbg !652
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !653 {
entry:
    #dbg_value(ptr %p, !654, !DIExpression(), !655)
    #dbg_value(ptr %P1, !656, !DIExpression(), !655)
    #dbg_value(ptr %O, !657, !DIExpression(), !655)
    #dbg_value(ptr %acc, !658, !DIExpression(), !655)
    #dbg_value(i32 12, !659, !DIExpression(), !655)
    #dbg_value(i32 142, !660, !DIExpression(), !655)
    #dbg_value(i32 9, !661, !DIExpression(), !655)
    #dbg_value(i32 0, !662, !DIExpression(), !655)
    #dbg_value(i32 0, !663, !DIExpression(), !665)
  br label %for.cond, !dbg !666

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 142, %entry ], !dbg !667
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !667
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !668
    #dbg_value(i32 %r.0, !663, !DIExpression(), !665)
    #dbg_value(i32 %bs_mat_entries_used.0, !662, !DIExpression(), !655)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !669
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
  %exitcond = icmp ne i32 %k.0, 12, !dbg !688
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !683

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !690
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !690
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !692
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !693
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !693
  %2 = load i8, ptr %arrayidx, align 1, !dbg !693
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !694
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !695
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !696
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !696
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #7, !dbg !697
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !698
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !698
  %mul16 = mul nuw nsw i32 %r.0, 12, !dbg !699
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !700
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !700
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !700
  %mul19 = mul nuw nsw i32 %c.0, 12, !dbg !701
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !702
  %add.ptr22.idx = mul nuw nsw i32 %add20, 72, !dbg !703
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !703
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #7, !dbg !704
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !705
    #dbg_value(i32 %add23, !686, !DIExpression(), !687)
  br label %for.cond5, !dbg !706, !llvm.loop !707

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !709

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !709
    #dbg_value(i32 %bs_mat_entries_used.2, !662, !DIExpression(), !655)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !710
    #dbg_value(i32 %inc, !676, !DIExpression(), !677)
  br label %for.cond1, !dbg !711, !llvm.loop !712

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !655
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !714
    #dbg_value(i32 %inc28, !663, !DIExpression(), !665)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !715
  br label %for.cond, !dbg !715, !llvm.loop !716

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !718
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !719 {
entry:
  %tenc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [142 x i8], align 1
  %salt = alloca [40 x i8], align 1
  %V = alloca [924 x i8], align 1
  %Vdec = alloca [1704 x i8], align 1
  %A = alloca [20880 x i8], align 1
  %x = alloca [1848 x i8], align 1
  %r = alloca [145 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %sk = alloca [106926 x i64], align 32
  %Ox = alloca [142 x i8], align 1
  %tmp = alloca [145 x i8], align 1
  %Mtmp = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !723, !DIExpression(), !724)
    #dbg_value(ptr %sig, !725, !DIExpression(), !724)
    #dbg_value(ptr %siglen, !726, !DIExpression(), !724)
    #dbg_value(ptr %m, !727, !DIExpression(), !724)
    #dbg_value(i32 %mlen, !728, !DIExpression(), !724)
    #dbg_value(ptr %csk, !729, !DIExpression(), !724)
    #dbg_value(i32 0, !730, !DIExpression(), !724)
    #dbg_declare(ptr %tenc, !731, !DIExpression(), !735)
    #dbg_declare(ptr %t, !736, !DIExpression(), !740)
    #dbg_declare(ptr %y, !741, !DIExpression(), !742)
    #dbg_declare(ptr %salt, !743, !DIExpression(), !747)
    #dbg_declare(ptr %V, !748, !DIExpression(), !752)
    #dbg_declare(ptr %Vdec, !753, !DIExpression(), !754)
    #dbg_declare(ptr %A, !755, !DIExpression(), !759)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20880) %A, i8 0, i32 20880, i1 false), !dbg !759
    #dbg_declare(ptr %x, !760, !DIExpression(), !764)
    #dbg_declare(ptr %r, !765, !DIExpression(), !769)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(145) %r, i8 0, i32 145, i1 false), !dbg !769
    #dbg_declare(ptr %s, !770, !DIExpression(), !771)
    #dbg_declare(ptr %sk, !772, !DIExpression(), !773)
    #dbg_declare(ptr %Ox, !774, !DIExpression(), !775)
    #dbg_declare(ptr %tmp, !776, !DIExpression(), !777)
    #dbg_value(i32 142, !778, !DIExpression(), !724)
    #dbg_value(i32 154, !779, !DIExpression(), !724)
    #dbg_value(i32 12, !780, !DIExpression(), !724)
    #dbg_value(i32 12, !781, !DIExpression(), !724)
    #dbg_value(i32 142, !782, !DIExpression(), !724)
    #dbg_value(i32 71, !783, !DIExpression(), !724)
    #dbg_value(i32 71, !784, !DIExpression(), !724)
    #dbg_value(i32 72, !785, !DIExpression(), !724)
    #dbg_value(i32 964, !786, !DIExpression(), !724)
    #dbg_value(i32 145, !787, !DIExpression(), !724)
    #dbg_value(i32 64, !788, !DIExpression(), !724)
    #dbg_value(i32 40, !789, !DIExpression(), !724)
    #dbg_value(i32 40, !790, !DIExpression(), !724)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #7, !dbg !791
    #dbg_value(i32 0, !730, !DIExpression(), !724)
    #dbg_value(ptr %csk, !792, !DIExpression(), !724)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #7, !dbg !793
    #dbg_value(ptr %sk, !794, !DIExpression(), !724)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !795
    #dbg_value(ptr %add.ptr, !796, !DIExpression(), !724)
    #dbg_declare(ptr %Mtmp, !797, !DIExpression(), !798)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %Mtmp, i8 0, i32 10368, i1 false), !dbg !798
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !799
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 40) #9, !dbg !801
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !802
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !802

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 104, !dbg !803
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 40) #9, !dbg !804
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 40, ptr noundef nonnull %tmp, i32 noundef 144) #7, !dbg !805
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !806
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 40) #9, !dbg !807
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 144, !dbg !808
    #dbg_value(ptr %add.ptr24, !809, !DIExpression(), !724)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #7, !dbg !810
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 142) #7, !dbg !811
  store i8 0, ptr %add.ptr24, align 1, !dbg !812
  call void @shake256(ptr noundef nonnull %V, i32 noundef 924, ptr noundef nonnull %tmp, i32 noundef 145) #7, !dbg !813
    #dbg_value(i32 0, !814, !DIExpression(), !816)
  br label %for.cond, !dbg !817

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !818
    #dbg_value(i32 %i.0, !814, !DIExpression(), !816)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !819
  br i1 %exitcond, label %for.body, label %for.end, !dbg !821

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 71, !dbg !822
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !824
  %mul37 = mul nuw nsw i32 %i.0, 142, !dbg !825
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !826
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 142) #7, !dbg !827
  %inc = add nuw nsw i32 %i.0, 1, !dbg !828
    #dbg_value(i32 %inc, !814, !DIExpression(), !816)
  br label %for.cond, !dbg !829, !llvm.loop !830

for.end:                                          ; preds = %for.cond
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #7, !dbg !832
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #7, !dbg !833
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #7, !dbg !834
    #dbg_value(i32 0, !835, !DIExpression(), !837)
  br label %for.cond48, !dbg !838

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !839
    #dbg_value(i32 %i47.0, !835, !DIExpression(), !837)
  %exitcond1 = icmp ne i32 %i47.0, 142, !dbg !840
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !842

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 145, !dbg !843
  %sub = add nuw nsw i32 %0, 144, !dbg !845
  %arrayidx = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub, !dbg !846
  store i8 0, ptr %arrayidx, align 1, !dbg !847
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !848
    #dbg_value(i32 %inc53, !835, !DIExpression(), !837)
  br label %for.cond48, !dbg !849, !llvm.loop !850

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 852, !dbg !852
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 144) #7, !dbg !853
  %call62 = call i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 12, i32 noundef 12, i32 noundef 142, i32 noundef 145) #7, !dbg !854
  %tobool.not = icmp eq i32 %call62, 0, !dbg !854
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !854

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 10368) #9, !dbg !856
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 20880) #9, !dbg !858
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !859, !DIExpression(), !861)
  br label %for.cond70, !dbg !862

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !863
    #dbg_value(i32 %i69.0, !859, !DIExpression(), !861)
  %exitcond2 = icmp ne i32 %i69.0, 12, !dbg !864
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !866

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 142, !dbg !867
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !869
    #dbg_value(ptr %add.ptr75, !870, !DIExpression(), !724)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !871
  %mul80 = mul nuw nsw i32 %i69.0, 12, !dbg !872
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !873
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 12, i32 noundef 142, i32 noundef 1) #7, !dbg !874
  %mul85 = mul nuw nsw i32 %i69.0, 154, !dbg !875
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !876
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 142, i32 noundef 1) #7, !dbg !877
  %mul88 = mul nuw nsw i32 %i69.0, 154, !dbg !878
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !879
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 142, !dbg !880
  %mul92 = mul nuw nsw i32 %i69.0, 12, !dbg !881
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !882
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 12) #9, !dbg !883
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !884
    #dbg_value(i32 %inc96, !859, !DIExpression(), !861)
  br label %for.cond70, !dbg !885, !llvm.loop !886

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1848) #7, !dbg !888
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !889
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 40) #9, !dbg !890
  store i32 964, ptr %siglen, align 4, !dbg !891
  br label %err, !dbg !892

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !724
    #dbg_value(i32 %ret.0, !730, !DIExpression(), !724)
    #dbg_label(!893, !894)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 924) #9, !dbg !895
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1704) #9, !dbg !896
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 20880) #9, !dbg !897
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 145) #9, !dbg !898
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !899
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1704) #9, !dbg !900
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 855408) #9, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 142) #9, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 145) #9, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 10368) #9, !dbg !904
  ret i32 %ret.0, !dbg !905
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !906 {
entry:
  %Pv = alloca [15336 x i64], align 8
    #dbg_value(ptr %p, !909, !DIExpression(), !910)
    #dbg_value(ptr %Vdec, !911, !DIExpression(), !910)
    #dbg_value(ptr %L, !912, !DIExpression(), !910)
    #dbg_value(ptr %P1, !913, !DIExpression(), !910)
    #dbg_value(ptr %VL, !914, !DIExpression(), !910)
    #dbg_value(ptr %VP1V, !915, !DIExpression(), !910)
    #dbg_value(i32 12, !916, !DIExpression(), !910)
    #dbg_value(i32 142, !917, !DIExpression(), !910)
    #dbg_value(i32 12, !918, !DIExpression(), !910)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 12, i32 noundef 142, i32 noundef 12) #7, !dbg !919
    #dbg_declare(ptr %Pv, !920, !DIExpression(), !924)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(122688) %Pv, i8 0, i32 122688, i1 false), !dbg !924
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #7, !dbg !925
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 12, i32 noundef 142, i32 noundef 12) #7, !dbg !926
  ret void, !dbg !927
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !928 {
entry:
  %temp = alloca [9 x i64], align 8
    #dbg_value(ptr %p, !931, !DIExpression(), !932)
    #dbg_value(ptr %vPv, !933, !DIExpression(), !932)
    #dbg_value(ptr %t, !934, !DIExpression(), !932)
    #dbg_value(ptr %y, !935, !DIExpression(), !932)
    #dbg_value(i32 52, !936, !DIExpression(), !932)
    #dbg_value(i32 9, !938, !DIExpression(), !932)
    #dbg_value(i64 1, !939, !DIExpression(), !942)
    #dbg_value(i64 72057594037927936, !939, !DIExpression(), !942)
    #dbg_value(i64 72057594037927935, !939, !DIExpression(), !942)
    #dbg_value(i32 0, !943, !DIExpression(), !945)
  br label %for.cond, !dbg !946

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !947
    #dbg_value(i32 %i.0, !943, !DIExpression(), !945)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !948
  br i1 %exitcond, label %for.body, label %for.end, !dbg !950

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 72, !dbg !951
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !951
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !951
  %1 = load i64, ptr %arrayidx, align 8, !dbg !953
  %and = and i64 %1, 72057594037927935, !dbg !953
  store i64 %and, ptr %arrayidx, align 8, !dbg !953
  %inc = add nuw nsw i32 %i.0, 1, !dbg !954
    #dbg_value(i32 %inc, !943, !DIExpression(), !945)
  br label %for.cond, !dbg !955, !llvm.loop !956

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !958, !DIExpression(), !959)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %temp, i8 0, i32 72, i1 false), !dbg !959
    #dbg_value(ptr %temp, !960, !DIExpression(), !932)
    #dbg_value(i32 11, !961, !DIExpression(), !963)
  br label %for.cond3, !dbg !964

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 11, %for.end ], [ %dec78, %for.inc77 ], !dbg !965
    #dbg_value(i32 %i2.0, !961, !DIExpression(), !963)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !966
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !968

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !969

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !972

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !974
    #dbg_value(i32 %j.0, !975, !DIExpression(), !976)
  %exitcond10 = icmp ne i32 %j.0, 12, !dbg !977
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !969

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !979
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !979
  %shr = lshr i64 %2, 52, !dbg !981
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !982
    #dbg_value(i8 %rem1, !983, !DIExpression(), !984)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !985
  %shl11 = shl i64 %2, 4, !dbg !986
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !986
    #dbg_value(i32 7, !987, !DIExpression(), !989)
  br label %for.cond12, !dbg !990

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 7, %for.body8 ], [ %dec, %for.body15 ], !dbg !991
    #dbg_value(i32 %k.0, !987, !DIExpression(), !989)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !992
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !994

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !982
  br label %for.cond24, !dbg !995

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !997
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !997
  %shr17 = lshr i64 %3, 60, !dbg !999
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1000
  %arrayidx19 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1001
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1002
  %xor = xor i64 %4, %shr17, !dbg !1002
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1002
  %arrayidx20 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1003
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !1004
  %shl21 = shl i64 %5, 4, !dbg !1004
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1004
  %dec = add nsw i32 %k.0, -1, !dbg !1005
    #dbg_value(i32 %dec, !987, !DIExpression(), !989)
  br label %for.cond12, !dbg !1006, !llvm.loop !1007

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1009
    #dbg_value(i32 %jj.0, !1010, !DIExpression(), !1011)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !1012
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !995

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1014

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1016
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1019
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1019

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1020
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1020
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #7, !dbg !1022
  %div = lshr exact i32 %jj.0, 1, !dbg !1023
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1024
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1025
  %xor356 = xor i8 %7, %call, !dbg !1025
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1025
  br label %for.inc46, !dbg !1026

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1027
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1027
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #7, !dbg !1029
  %shl40 = shl nuw i8 %call38, 4, !dbg !1030
  %div415 = lshr i32 %jj.0, 1, !dbg !1031
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1032
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1033
  %xor44 = xor i8 %shl40, %9, !dbg !1033
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1033
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1034
    #dbg_value(i32 %inc47, !1010, !DIExpression(), !1011)
  br label %for.cond24, !dbg !1035, !llvm.loop !1036

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1038
    #dbg_value(i32 %k49.0, !1039, !DIExpression(), !1040)
  %exitcond9 = icmp ne i32 %k49.0, 9, !dbg !1041
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1014

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 12, !dbg !1043
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1045
  %.idx = mul nsw i32 %add55, 72, !dbg !1046
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1046
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1046
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1046
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1047
  %mul62 = mul nuw nsw i32 %j.0, 12, !dbg !1048
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1049
  %.idx4 = mul nsw i32 %add63, 72, !dbg !1050
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1050
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1050
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1050
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1051
  %xor68 = xor i64 %11, %mul67, !dbg !1052
  %arrayidx69 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1053
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1054
  %xor70 = xor i64 %14, %xor68, !dbg !1054
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1054
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1055
    #dbg_value(i32 %inc72, !1039, !DIExpression(), !1040)
  br label %for.cond50, !dbg !1056, !llvm.loop !1057

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1059
    #dbg_value(i32 %inc75, !975, !DIExpression(), !976)
  br label %for.cond6, !dbg !1060, !llvm.loop !1061

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1063
    #dbg_value(i32 %dec78, !961, !DIExpression(), !963)
  br label %for.cond3, !dbg !1064, !llvm.loop !1065

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1067
    #dbg_value(i32 %i80.0, !1068, !DIExpression(), !1069)
  %cmp82 = icmp samesign ult i32 %i80.0, 142, !dbg !1070
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !972

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1072
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1072
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1074
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1075
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1075
  %17 = and i8 %16, 15, !dbg !1076
  %xor912 = xor i8 %15, %17, !dbg !1077
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1078
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1079
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1080
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1081
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1081
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1082
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1083
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1083
  %20 = lshr i8 %19, 4, !dbg !1084
  %xor1013 = xor i8 %18, %20, !dbg !1085
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1086
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1087
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1088
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1089
    #dbg_value(i32 %add106, !1068, !DIExpression(), !1069)
  br label %for.cond81, !dbg !1090, !llvm.loop !1091

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1093
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1094 {
entry:
  %A = alloca [2592 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1097, !DIExpression(), !1098)
    #dbg_value(ptr %VtL, !1099, !DIExpression(), !1098)
    #dbg_value(ptr %A_out, !1100, !DIExpression(), !1098)
    #dbg_value(i32 0, !1101, !DIExpression(), !1098)
    #dbg_value(i32 0, !1102, !DIExpression(), !1098)
    #dbg_value(i32 9, !1103, !DIExpression(), !1098)
    #dbg_declare(ptr %A, !1104, !DIExpression(), !1108)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20736) %A, i8 0, i32 20736, i1 false), !dbg !1108
    #dbg_value(i32 144, !1109, !DIExpression(), !1098)
    #dbg_value(i64 1, !1110, !DIExpression(), !1113)
    #dbg_value(i64 72057594037927936, !1110, !DIExpression(), !1113)
    #dbg_value(i64 72057594037927935, !1110, !DIExpression(), !1113)
    #dbg_value(i32 0, !1114, !DIExpression(), !1116)
  br label %for.cond, !dbg !1117

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1118
    #dbg_value(i32 %i.0, !1114, !DIExpression(), !1116)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !1119
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1121

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1122

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 72, !dbg !1124
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1124
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1124
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1126
  %and = and i64 %1, 72057594037927935, !dbg !1126
  store i64 %and, ptr %arrayidx, align 8, !dbg !1126
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1127
    #dbg_value(i32 %inc, !1114, !DIExpression(), !1116)
  br label %for.cond, !dbg !1128, !llvm.loop !1129

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1131
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1132
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1133
    #dbg_value(i32 %bits_to_shift.0, !1101, !DIExpression(), !1098)
    #dbg_value(i32 %words_to_shift.0, !1102, !DIExpression(), !1098)
    #dbg_value(i32 %i2.0, !1134, !DIExpression(), !1135)
  %exitcond8 = icmp ne i32 %i2.0, 12, !dbg !1136
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1122

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1138

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1141

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 11, %for.cond6.preheader ], !dbg !1143
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1098
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1098
    #dbg_value(i32 %bits_to_shift.1, !1101, !DIExpression(), !1098)
    #dbg_value(i32 %words_to_shift.1, !1102, !DIExpression(), !1098)
    #dbg_value(i32 %j.0, !1144, !DIExpression(), !1145)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1146
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1138

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 864, !dbg !1148
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1148
    #dbg_value(ptr %add.ptr, !1150, !DIExpression(), !1098)
    #dbg_value(i32 0, !1151, !DIExpression(), !1153)
  br label %for.cond11, !dbg !1154

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1155
    #dbg_value(i32 %c.0, !1151, !DIExpression(), !1153)
  %exitcond5 = icmp ne i32 %c.0, 12, !dbg !1156
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1158

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1159

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1162
    #dbg_value(i32 %k.0, !1163, !DIExpression(), !1164)
  %exitcond4 = icmp ne i32 %k.0, 9, !dbg !1165
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1159

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1167
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 72, !dbg !1167
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1167
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1167
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1169
  %shl20 = shl i64 %3, %sh_prom, !dbg !1169
  %mul21 = mul nuw nsw i32 %i2.0, 12, !dbg !1170
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1171
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1172
  %mul24 = mul i32 %add23, 144, !dbg !1173
  %add25 = add i32 %add22, %mul24, !dbg !1174
  %arrayidx26 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25, !dbg !1175
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1176
  %xor = xor i64 %4, %shl20, !dbg !1176
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1176
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1177
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1177

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1179
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 72, !dbg !1179
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1179
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1179
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1181
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1182
  %shr = lshr i64 %6, %sh_prom32, !dbg !1182
  %mul33 = mul nuw nsw i32 %i2.0, 12, !dbg !1183
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1184
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1185
  %7 = mul i32 %add35, 144, !dbg !1186
  %mul37 = add i32 %7, 144, !dbg !1186
  %add38 = add i32 %add34, %mul37, !dbg !1187
  %arrayidx39 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38, !dbg !1188
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1189
  %xor40 = xor i64 %8, %shr, !dbg !1189
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1189
  br label %for.inc41, !dbg !1190

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1191
    #dbg_value(i32 %inc42, !1163, !DIExpression(), !1164)
  br label %for.cond14, !dbg !1192, !llvm.loop !1193

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1195
    #dbg_value(i32 %inc45, !1151, !DIExpression(), !1153)
  br label %for.cond11, !dbg !1196, !llvm.loop !1197

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1199
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1199

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 864, !dbg !1201
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1201
    #dbg_value(ptr %add.ptr51, !1203, !DIExpression(), !1098)
    #dbg_value(i32 0, !1204, !DIExpression(), !1206)
  br label %for.cond53, !dbg !1207

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1208
    #dbg_value(i32 %c52.0, !1204, !DIExpression(), !1206)
  %exitcond7 = icmp ne i32 %c52.0, 12, !dbg !1209
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1211

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1212

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1215
    #dbg_value(i32 %k56.0, !1216, !DIExpression(), !1217)
  %exitcond6 = icmp ne i32 %k56.0, 9, !dbg !1218
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1212

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1220
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1220
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1220
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1220
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1222
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1222
  %mul65 = mul nsw i32 %j.0, 12, !dbg !1223
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1224
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1225
  %mul68 = mul i32 %add67, 144, !dbg !1226
  %add69 = add i32 %add66, %mul68, !dbg !1227
  %arrayidx70 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69, !dbg !1228
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1229
  %xor71 = xor i64 %11, %shl64, !dbg !1229
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1229
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1230
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1230

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1232
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1232
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1232
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1232
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1234
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1235
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1235
  %mul80 = mul nsw i32 %j.0, 12, !dbg !1236
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1237
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1238
  %14 = mul i32 %add82, 144, !dbg !1239
  %mul84 = add i32 %14, 144, !dbg !1239
  %add85 = add i32 %add81, %mul84, !dbg !1240
  %arrayidx86 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85, !dbg !1241
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1242
  %xor87 = xor i64 %15, %shr79, !dbg !1242
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1242
  br label %for.inc89, !dbg !1243

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1244
    #dbg_value(i32 %inc90, !1216, !DIExpression(), !1217)
  br label %for.cond57, !dbg !1245, !llvm.loop !1246

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1248
    #dbg_value(i32 %inc93, !1204, !DIExpression(), !1206)
  br label %for.cond53, !dbg !1249, !llvm.loop !1250

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1252

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1252
    #dbg_value(i32 %add96, !1101, !DIExpression(), !1098)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1253
  %inc99 = zext i1 %cmp97 to i32, !dbg !1253
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1253
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1253
    #dbg_value(i32 %spec.select3, !1101, !DIExpression(), !1098)
    #dbg_value(i32 %spec.select, !1102, !DIExpression(), !1098)
  %dec = add nsw i32 %j.0, -1, !dbg !1255
    #dbg_value(i32 %dec, !1144, !DIExpression(), !1145)
  br label %for.cond6, !dbg !1256, !llvm.loop !1257

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1098
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1098
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1259
    #dbg_value(i32 %inc104, !1134, !DIExpression(), !1135)
  br label %for.cond3, !dbg !1260, !llvm.loop !1261

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1263
    #dbg_value(i32 %c106.0, !1264, !DIExpression(), !1265)
  %cmp109 = icmp samesign ult i32 %c106.0, 2016, !dbg !1266
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1141

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1268
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #7, !dbg !1270
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1271
    #dbg_value(i32 %add113, !1264, !DIExpression(), !1265)
  br label %for.cond107, !dbg !1272, !llvm.loop !1273

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1275, !DIExpression(), !1279)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1279
    #dbg_value(i32 0, !1280, !DIExpression(), !1282)
  br label %for.cond116, !dbg !1283

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1284
    #dbg_value(i32 %i115.0, !1280, !DIExpression(), !1282)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1285
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1287

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1288

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1290
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1290
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #7, !dbg !1292
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1293
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1294
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1295
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #7, !dbg !1296
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1297
  %add125 = or disjoint i32 %mul124, 1, !dbg !1298
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1299
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1300
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1301
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1301
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #7, !dbg !1302
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1303
  %add130 = or disjoint i32 %mul129, 2, !dbg !1304
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1305
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1306
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1307
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1307
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #7, !dbg !1308
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1309
  %add135 = or disjoint i32 %mul134, 3, !dbg !1310
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1311
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1312
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1313
    #dbg_value(i32 %inc138, !1280, !DIExpression(), !1282)
  br label %for.cond116, !dbg !1314, !llvm.loop !1315

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1317
    #dbg_value(i32 %c140.0, !1318, !DIExpression(), !1319)
  %cmp142 = icmp samesign ult i32 %c140.0, 144, !dbg !1320
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1288

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1322

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1325

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 142, %for.cond144.preheader ], !dbg !1327
    #dbg_value(i32 %r.0, !1328, !DIExpression(), !1329)
  %exitcond11 = icmp ne i32 %r.0, 220, !dbg !1330
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1322

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1332
  %mul147 = mul nuw nsw i32 %div1, 144, !dbg !1334
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1335
  %rem = and i32 %r.0, 15, !dbg !1336
  %add149 = or disjoint i32 %add148, %rem, !dbg !1337
    #dbg_value(i32 %add149, !1338, !DIExpression(), !1339)
  %arrayidx150 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1340
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1340
  %and151 = and i64 %19, 1229782938247303441, !dbg !1341
    #dbg_value(i64 %and151, !1342, !DIExpression(), !1339)
  %shr153 = lshr i64 %19, 1, !dbg !1343
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1344
    #dbg_value(i64 %and154, !1345, !DIExpression(), !1339)
  %shr156 = lshr i64 %19, 2, !dbg !1346
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1347
    #dbg_value(i64 %and157, !1348, !DIExpression(), !1339)
  %arrayidx158 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1349
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1349
  %shr159 = lshr i64 %20, 3, !dbg !1350
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1351
    #dbg_value(i64 %and160, !1352, !DIExpression(), !1339)
    #dbg_value(i32 0, !1353, !DIExpression(), !1355)
  br label %for.cond161, !dbg !1356

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1357
    #dbg_value(i32 %t.0, !1353, !DIExpression(), !1355)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1358
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1360

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1361
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1363
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1363
  %conv = zext i8 %21 to i64, !dbg !1363
  %mul167 = mul i64 %and151, %conv, !dbg !1364
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1365
  %add169 = or disjoint i32 %mul168, 1, !dbg !1366
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1367
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1367
  %conv171 = zext i8 %22 to i64, !dbg !1367
  %mul172 = mul i64 %and154, %conv171, !dbg !1368
  %xor173 = xor i64 %mul167, %mul172, !dbg !1369
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1370
  %add175 = or disjoint i32 %mul174, 2, !dbg !1371
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1372
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1372
  %conv177 = zext i8 %23 to i64, !dbg !1372
  %mul178 = mul i64 %and157, %conv177, !dbg !1373
  %xor179 = xor i64 %xor173, %mul178, !dbg !1374
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1375
  %add181 = or disjoint i32 %mul180, 3, !dbg !1376
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1377
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1377
  %conv183 = zext i8 %24 to i64, !dbg !1377
  %mul184 = mul i64 %and160, %conv183, !dbg !1378
  %xor185 = xor i64 %xor179, %mul184, !dbg !1379
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1380
  %sub187 = add nsw i32 %add186, -142, !dbg !1381
  %div1882 = lshr i32 %sub187, 4, !dbg !1382
  %mul189 = mul i32 %div1882, 144, !dbg !1383
  %add190 = add i32 %mul189, %c140.0, !dbg !1384
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1385
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1386
  %rem193 = and i32 %sub192, 15, !dbg !1387
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1388
  %arrayidx195 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194, !dbg !1389
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1390
  %xor196 = xor i64 %25, %xor185, !dbg !1390
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1390
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1391
    #dbg_value(i32 %inc198, !1353, !DIExpression(), !1355)
  br label %for.cond161, !dbg !1392, !llvm.loop !1393

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1395
    #dbg_value(i32 %inc201, !1328, !DIExpression(), !1329)
  br label %for.cond144, !dbg !1396, !llvm.loop !1397

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1399
    #dbg_value(i32 %add204, !1318, !DIExpression(), !1319)
  br label %for.cond141, !dbg !1400, !llvm.loop !1401

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 142, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1403
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1403
    #dbg_value(i32 %r206.0, !1404, !DIExpression(), !1405)
  %cmp208 = icmp samesign ult i32 %r206.0, 142, !dbg !1406
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1325

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1408

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1411
    #dbg_value(i32 %c211.0, !1412, !DIExpression(), !1413)
  %cmp213 = icmp samesign ult i32 %c211.0, 144, !dbg !1414
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1408

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1416

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1419
    #dbg_value(i32 %i216.0, !1420, !DIExpression(), !1421)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1422
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1416

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 9, !dbg !1424
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1426
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1427
  %arrayidx226 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225, !dbg !1428
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1429
  %mul228 = mul nuw nsw i32 %add227, 145, !dbg !1430
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1431
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1432
  %cmp232 = icmp samesign ult i32 %c211.0, 128, !dbg !1433
  %sub234 = sub nuw nsw i32 144, %c211.0, !dbg !1433
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1433
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #7, !dbg !1434
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1435
    #dbg_value(i32 %inc236, !1420, !DIExpression(), !1421)
  br label %for.cond217, !dbg !1436, !llvm.loop !1437

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1439
    #dbg_value(i32 %add239, !1412, !DIExpression(), !1413)
  br label %for.cond212, !dbg !1440, !llvm.loop !1441

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1443
    #dbg_value(i32 %add242, !1404, !DIExpression(), !1405)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1444
  br label %for.cond207, !dbg !1444, !llvm.loop !1445

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1447
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1448 {
entry:
    #dbg_value(ptr %a, !1451, !DIExpression(), !1452)
    #dbg_value(ptr %b, !1453, !DIExpression(), !1452)
    #dbg_value(ptr %c, !1454, !DIExpression(), !1452)
    #dbg_value(i32 12, !1455, !DIExpression(), !1452)
    #dbg_value(i32 142, !1456, !DIExpression(), !1452)
    #dbg_value(i32 1, !1457, !DIExpression(), !1452)
    #dbg_value(i32 0, !1458, !DIExpression(), !1460)
  br label %for.cond, !dbg !1461

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1462
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1451, !DIExpression(), !1452)
    #dbg_value(ptr %c.addr.0, !1454, !DIExpression(), !1452)
    #dbg_value(i32 %i.0, !1458, !DIExpression(), !1460)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1463
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1465

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1466

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1469
    #dbg_value(i32 poison, !1470, !DIExpression(), !1471)
    #dbg_value(ptr %c.addr.1, !1454, !DIExpression(), !1452)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1466

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 12, i32 noundef 1) #7, !dbg !1472
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1475
    #dbg_value(i32 1, !1470, !DIExpression(), !1471)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1476
    #dbg_value(ptr %incdec.ptr, !1454, !DIExpression(), !1452)
  br label %for.cond1, !dbg !1477, !llvm.loop !1478

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1480
    #dbg_value(i32 %inc5, !1458, !DIExpression(), !1460)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 12, !dbg !1481
    #dbg_value(ptr %add.ptr6, !1451, !DIExpression(), !1452)
  br label %for.cond, !dbg !1482, !llvm.loop !1483

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1485
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1486 {
entry:
    #dbg_value(ptr %a, !1489, !DIExpression(), !1490)
    #dbg_value(ptr %b, !1491, !DIExpression(), !1490)
    #dbg_value(ptr %c, !1492, !DIExpression(), !1490)
    #dbg_value(i32 142, !1493, !DIExpression(), !1490)
    #dbg_value(i32 1, !1494, !DIExpression(), !1490)
    #dbg_value(i32 0, !1495, !DIExpression(), !1497)
  br label %for.cond, !dbg !1498

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1499
    #dbg_value(i32 %i.0, !1495, !DIExpression(), !1497)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1500
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1502

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1503, !DIExpression(), !1506)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1507
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1510
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1511
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1512
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !1513
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1514
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1515
    #dbg_value(i32 1, !1503, !DIExpression(), !1506)
    #dbg_value(i32 poison, !1503, !DIExpression(), !1506)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1516
    #dbg_value(i32 %inc12, !1495, !DIExpression(), !1497)
  br label %for.cond, !dbg !1517, !llvm.loop !1518

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1520
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1521 {
entry:
    #dbg_value(ptr %m, !1522, !DIExpression(), !1523)
    #dbg_value(ptr %menc, !1524, !DIExpression(), !1523)
    #dbg_value(i32 1848, !1525, !DIExpression(), !1523)
    #dbg_value(i32 0, !1526, !DIExpression(), !1523)
  br label %for.cond, !dbg !1527

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1529
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1522, !DIExpression(), !1523)
    #dbg_value(i32 %i.0, !1526, !DIExpression(), !1523)
  %exitcond = icmp ne i32 %i.0, 924, !dbg !1530
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1532

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1533
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1535
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1536
  %shl = shl i8 %1, 4, !dbg !1537
  %or = or i8 %shl, %0, !dbg !1538
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1539
  store i8 %or, ptr %arrayidx, align 1, !dbg !1540
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1541
    #dbg_value(i32 %inc, !1526, !DIExpression(), !1523)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1542
    #dbg_value(ptr %add.ptr3, !1522, !DIExpression(), !1523)
  br label %for.cond, !dbg !1543, !llvm.loop !1544

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1546
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1547 {
entry:
    #dbg_value(i8 %a, !1550, !DIExpression(), !1551)
    #dbg_value(i8 %b, !1552, !DIExpression(), !1551)
  %xor1 = xor i8 %a, %b, !dbg !1553
  ret i8 %xor1, !dbg !1554
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1555 {
entry:
    #dbg_value(ptr %a, !1558, !DIExpression(), !1559)
    #dbg_value(ptr %b, !1560, !DIExpression(), !1559)
    #dbg_value(i32 12, !1561, !DIExpression(), !1559)
    #dbg_value(i32 1, !1562, !DIExpression(), !1559)
    #dbg_value(i8 0, !1563, !DIExpression(), !1559)
    #dbg_value(i32 0, !1564, !DIExpression(), !1566)
  br label %for.cond, !dbg !1567

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1559
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1568
    #dbg_value(i32 %i.0, !1564, !DIExpression(), !1566)
    #dbg_value(ptr %b.addr.0, !1560, !DIExpression(), !1559)
    #dbg_value(i8 %ret.0, !1563, !DIExpression(), !1559)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !1569
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1571

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1572
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1572
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1574
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !1575
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #7, !dbg !1576
    #dbg_value(i8 %call1, !1563, !DIExpression(), !1559)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1577
    #dbg_value(i32 %inc, !1564, !DIExpression(), !1566)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1578
    #dbg_value(ptr %add.ptr, !1560, !DIExpression(), !1559)
  br label %for.cond, !dbg !1579, !llvm.loop !1580

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1559
  ret i8 %ret.0.lcssa, !dbg !1582
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1583 {
entry:
    #dbg_value(i8 %a, !1584, !DIExpression(), !1585)
    #dbg_value(i8 %b, !1586, !DIExpression(), !1585)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !1587
  %xor1 = xor i8 %a, %0, !dbg !1588
    #dbg_value(i8 %xor1, !1584, !DIExpression(), !1585)
  %1 = trunc i8 %xor1 to i1, !dbg !1589
    #dbg_value(i8 poison, !1590, !DIExpression(), !1585)
  %2 = and i8 %xor1, 2, !dbg !1591
  %mul9 = mul i8 %2, %b, !dbg !1592
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1589
  %xor11 = xor i8 %conv10, %mul9, !dbg !1593
    #dbg_value(i8 %xor11, !1590, !DIExpression(), !1585)
  %3 = and i8 %xor1, 4, !dbg !1594
  %mul16 = mul i8 %3, %b, !dbg !1595
  %xor18 = xor i8 %mul16, %xor11, !dbg !1596
    #dbg_value(i8 %xor18, !1590, !DIExpression(), !1585)
  %4 = and i8 %xor1, 8, !dbg !1597
  %mul23 = mul i8 %4, %b, !dbg !1598
  %xor25 = xor i8 %mul23, %xor18, !dbg !1599
    #dbg_value(i8 %xor25, !1590, !DIExpression(), !1585)
    #dbg_value(i8 %xor25, !1600, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1585)
  %5 = lshr i8 %xor25, 4, !dbg !1601
  %6 = lshr i8 %xor25, 3, !dbg !1602
  %7 = and i8 %6, 14, !dbg !1602
  %8 = xor i8 %5, %7, !dbg !1603
  %xor25.masked = and i8 %xor25, 15, !dbg !1604
  %9 = xor i8 %8, %xor25.masked, !dbg !1604
    #dbg_value(i8 %9, !1605, !DIExpression(), !1585)
  ret i8 %9, !dbg !1606
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1607, !DIExpression(), !1608)
    #dbg_value(i32 0, !1609, !DIExpression(), !1611)
  br label %for.cond, !dbg !1612

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1613
    #dbg_value(i32 %i.0, !1609, !DIExpression(), !1611)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1614
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1616

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1617

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1619
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1619
  %shr = lshr i64 %0, 4, !dbg !1621
  %add = or disjoint i32 %i.0, 1, !dbg !1622
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1623
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1623
  %xor = xor i64 %shr, %1, !dbg !1624
  %and = and i64 %xor, 1085102592571150095, !dbg !1625
    #dbg_value(i64 %and, !1626, !DIExpression(), !1627)
  %shl = shl nuw i64 %and, 4, !dbg !1628
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1629
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1630
  %xor3 = xor i64 %2, %shl, !dbg !1630
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1630
  %add4 = or disjoint i32 %i.0, 1, !dbg !1631
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1632
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1633
  %xor6 = xor i64 %3, %and, !dbg !1633
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1633
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1634
    #dbg_value(i32 %add7, !1609, !DIExpression(), !1611)
  br label %for.cond, !dbg !1635, !llvm.loop !1636

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1638
    #dbg_value(i32 %i8.0, !1639, !DIExpression(), !1640)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1641
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1617

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1643

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1645
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1645
  %shr13 = lshr i64 %4, 8, !dbg !1647
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1648
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1649
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1649
  %xor16 = xor i64 %shr13, %5, !dbg !1650
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1651
    #dbg_value(i64 %and17, !1652, !DIExpression(), !1653)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1654
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1655
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1655
  %shr20 = lshr i64 %6, 8, !dbg !1656
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1657
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1658
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1658
  %xor23 = xor i64 %shr20, %7, !dbg !1659
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1660
    #dbg_value(i64 %and24, !1661, !DIExpression(), !1653)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1662
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1663
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1664
  %xor27 = xor i64 %8, %shl25, !dbg !1664
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1664
  %shl28 = shl nuw i64 %and24, 8, !dbg !1665
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1666
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1667
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1668
  %xor31 = xor i64 %9, %shl28, !dbg !1668
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1668
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1669
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1670
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1671
  %xor34 = xor i64 %10, %and17, !dbg !1671
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1671
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1672
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1673
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1674
  %xor37 = xor i64 %11, %and24, !dbg !1674
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1674
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1675
    #dbg_value(i32 %add39, !1639, !DIExpression(), !1640)
  br label %for.cond9, !dbg !1676, !llvm.loop !1677

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1679
    #dbg_value(i32 %i41.0, !1680, !DIExpression(), !1681)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1682
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1643

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1684

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1686
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1686
  %shr47 = lshr i64 %12, 16, !dbg !1688
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1689
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1690
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1690
  %xor50 = xor i64 %shr47, %13, !dbg !1691
  %and51 = and i64 %xor50, 281470681808895, !dbg !1692
    #dbg_value(i64 %and51, !1693, !DIExpression(), !1694)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1695
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1696
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1696
  %shr55 = lshr i64 %14, 16, !dbg !1697
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1698
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1699
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1699
  %xor58 = xor i64 %shr55, %15, !dbg !1700
  %and59 = and i64 %xor58, 281470681808895, !dbg !1701
    #dbg_value(i64 %and59, !1702, !DIExpression(), !1694)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1703
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1704
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1705
  %xor62 = xor i64 %16, %shl60, !dbg !1705
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1705
  %shl63 = shl nuw i64 %and59, 16, !dbg !1706
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1707
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1708
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1709
  %xor66 = xor i64 %17, %shl63, !dbg !1709
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1709
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1710
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1711
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1712
  %xor69 = xor i64 %18, %and51, !dbg !1712
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1712
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1713
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1714
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1715
  %xor72 = xor i64 %19, %and59, !dbg !1715
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1715
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1716
    #dbg_value(i32 %inc, !1680, !DIExpression(), !1681)
  br label %for.cond42, !dbg !1717, !llvm.loop !1718

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1720
    #dbg_value(i32 %i75.0, !1721, !DIExpression(), !1722)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1723
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1684

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1725
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1725
  %shr81 = lshr i64 %20, 32, !dbg !1727
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1728
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1729
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1729
  %.masked = and i64 %21, 4294967295, !dbg !1730
  %and85 = xor i64 %shr81, %.masked, !dbg !1730
    #dbg_value(i64 %and85, !1731, !DIExpression(), !1732)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1733
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1734
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1735
  %xor88 = xor i64 %22, %shl86, !dbg !1735
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1735
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1736
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1737
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1738
  %xor91 = xor i64 %23, %and85, !dbg !1738
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1738
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1739
    #dbg_value(i32 %inc93, !1721, !DIExpression(), !1722)
  br label %for.cond76, !dbg !1740, !llvm.loop !1741

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1743
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1744 {
entry:
    #dbg_value(i32 9, !1745, !DIExpression(), !1746)
    #dbg_value(ptr %mat, !1747, !DIExpression(), !1746)
    #dbg_value(ptr %bs_mat, !1748, !DIExpression(), !1746)
    #dbg_value(ptr %acc, !1749, !DIExpression(), !1746)
    #dbg_value(i32 12, !1750, !DIExpression(), !1746)
    #dbg_value(i32 142, !1751, !DIExpression(), !1746)
    #dbg_value(i32 12, !1752, !DIExpression(), !1746)
    #dbg_value(i32 0, !1753, !DIExpression(), !1755)
  br label %for.cond, !dbg !1756

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1757
    #dbg_value(i32 %r.0, !1753, !DIExpression(), !1755)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !1758
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1760

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1761

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1764
    #dbg_value(i32 %c.0, !1765, !DIExpression(), !1766)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !1767
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1761

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1769

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1772
    #dbg_value(i32 %k.0, !1773, !DIExpression(), !1774)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1775
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1769

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !1777
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1779
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !1780
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1780
  %mul8 = mul nuw nsw i32 %r.0, 142, !dbg !1781
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1782
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1782
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1782
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !1783
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1784
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !1785
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1785
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !1786
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1787
    #dbg_value(i32 %add14, !1773, !DIExpression(), !1774)
  br label %for.cond4, !dbg !1788, !llvm.loop !1789

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1791
    #dbg_value(i32 %inc, !1765, !DIExpression(), !1766)
  br label %for.cond1, !dbg !1792, !llvm.loop !1793

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1795
    #dbg_value(i32 %inc18, !1753, !DIExpression(), !1755)
  br label %for.cond, !dbg !1796, !llvm.loop !1797

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1799
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1800 {
entry:
    #dbg_value(ptr %p, !1801, !DIExpression(), !1802)
    #dbg_value(ptr %P1, !1803, !DIExpression(), !1802)
    #dbg_value(ptr %V, !1804, !DIExpression(), !1802)
    #dbg_value(ptr %acc, !1805, !DIExpression(), !1802)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 9, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #7, !dbg !1806
  ret void, !dbg !1807
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1808 {
entry:
    #dbg_value(i32 9, !1809, !DIExpression(), !1810)
    #dbg_value(ptr %bs_mat, !1811, !DIExpression(), !1810)
    #dbg_value(ptr %mat, !1812, !DIExpression(), !1810)
    #dbg_value(ptr %acc, !1813, !DIExpression(), !1810)
    #dbg_value(i32 142, !1814, !DIExpression(), !1810)
    #dbg_value(i32 142, !1815, !DIExpression(), !1810)
    #dbg_value(i32 12, !1816, !DIExpression(), !1810)
    #dbg_value(i32 1, !1817, !DIExpression(), !1810)
    #dbg_value(i32 0, !1818, !DIExpression(), !1810)
    #dbg_value(i32 0, !1819, !DIExpression(), !1821)
  br label %for.cond, !dbg !1822

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !1823
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1823
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1824
    #dbg_value(i32 %r.0, !1819, !DIExpression(), !1821)
    #dbg_value(i32 %bs_mat_entries_used.0, !1818, !DIExpression(), !1810)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !1825
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1827

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1828
  br label %for.cond1, !dbg !1828

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1810
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1831
    #dbg_value(i32 %c.0, !1832, !DIExpression(), !1833)
    #dbg_value(i32 %bs_mat_entries_used.1, !1818, !DIExpression(), !1810)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1834
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1828

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1836

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1839
    #dbg_value(i32 %k.0, !1840, !DIExpression(), !1841)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1842
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1836

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !1844
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1844
  %mul8 = mul nuw nsw i32 %k.0, 142, !dbg !1846
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1847
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1847
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1847
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !1848
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1849
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !1850
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1850
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !1851
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1852
    #dbg_value(i32 %add13, !1840, !DIExpression(), !1841)
  br label %for.cond4, !dbg !1853, !llvm.loop !1854

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1818, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1810)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1856
    #dbg_value(i32 %add14, !1818, !DIExpression(), !1810)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1857
    #dbg_value(i32 %inc, !1832, !DIExpression(), !1833)
  br label %for.cond1, !dbg !1858, !llvm.loop !1859

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1810
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1861
    #dbg_value(i32 %inc18, !1819, !DIExpression(), !1821)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1862
  br label %for.cond, !dbg !1862, !llvm.loop !1863

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1865
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1866 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1867, !DIExpression(), !1868)
    #dbg_value(ptr %sm, !1869, !DIExpression(), !1868)
    #dbg_value(ptr %smlen, !1870, !DIExpression(), !1868)
    #dbg_value(ptr %m, !1871, !DIExpression(), !1868)
    #dbg_value(i32 %mlen, !1872, !DIExpression(), !1868)
    #dbg_value(ptr %csk, !1873, !DIExpression(), !1868)
    #dbg_value(i32 0, !1874, !DIExpression(), !1868)
    #dbg_value(i32 964, !1875, !DIExpression(), !1868)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1876
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #9, !dbg !1877
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1878
    #dbg_value(ptr %siglen, !1879, !DIExpression(DW_OP_deref), !1868)
  %call2 = call i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #7, !dbg !1880
    #dbg_value(i32 %call2, !1874, !DIExpression(), !1868)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1881
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1879, !DIExpression(), !1868)
  %cmp3.not = icmp eq i32 %0, 964
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1883
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1883

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1884
    #dbg_value(i32 %1, !1879, !DIExpression(), !1868)
  %add = add i32 %1, %mlen, !dbg !1886
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #9, !dbg !1887
  br label %err, !dbg !1888

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1889
    #dbg_value(i32 %2, !1879, !DIExpression(), !1868)
  %add5 = add i32 %2, %mlen, !dbg !1890
  store i32 %add5, ptr %smlen, align 4, !dbg !1891
  br label %err, !dbg !1892

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1893, !1894)
  ret i32 %call2, !dbg !1895
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1896 {
entry:
    #dbg_value(ptr %p, !1897, !DIExpression(), !1898)
    #dbg_value(ptr %m, !1899, !DIExpression(), !1898)
    #dbg_value(ptr %mlen, !1900, !DIExpression(), !1898)
    #dbg_value(ptr %sm, !1901, !DIExpression(), !1898)
    #dbg_value(i32 %smlen, !1902, !DIExpression(), !1898)
    #dbg_value(ptr %pk, !1903, !DIExpression(), !1898)
    #dbg_value(i32 964, !1904, !DIExpression(), !1898)
  %cmp = icmp ult i32 %smlen, 964, !dbg !1905
  br i1 %cmp, label %return, label %if.end, !dbg !1905

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1907
  %sub = add i32 %smlen, -964, !dbg !1908
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #7, !dbg !1909
    #dbg_value(i32 %call, !1910, !DIExpression(), !1898)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1911
  br i1 %cmp1, label %if.then2, label %return, !dbg !1911

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -964, !dbg !1913
  store i32 %sub3, ptr %mlen, align 4, !dbg !1915
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1916
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #9, !dbg !1917
  br label %return, !dbg !1918

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1898
  ret i32 %retval.0, !dbg !1919
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1920 {
entry:
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [107415 x i64], align 8
  %tmp = alloca [104 x i8], align 1
    #dbg_value(ptr %p, !1923, !DIExpression(), !1924)
    #dbg_value(ptr %m, !1925, !DIExpression(), !1924)
    #dbg_value(i32 %mlen, !1926, !DIExpression(), !1924)
    #dbg_value(ptr %sig, !1927, !DIExpression(), !1924)
    #dbg_value(ptr %cpk, !1928, !DIExpression(), !1924)
    #dbg_declare(ptr %tEnc, !1929, !DIExpression(), !1930)
    #dbg_declare(ptr %t, !1931, !DIExpression(), !1932)
    #dbg_declare(ptr %y, !1933, !DIExpression(), !1937)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(284) %y, i8 0, i32 284, i1 false), !dbg !1937
    #dbg_declare(ptr %s, !1938, !DIExpression(), !1939)
    #dbg_declare(ptr %pk, !1940, !DIExpression(), !1941)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(859320) %pk, i8 0, i32 859320, i1 false), !dbg !1941
    #dbg_declare(ptr %tmp, !1942, !DIExpression(), !1946)
    #dbg_value(i32 142, !1947, !DIExpression(), !1924)
    #dbg_value(i32 154, !1948, !DIExpression(), !1924)
    #dbg_value(i32 12, !1949, !DIExpression(), !1924)
    #dbg_value(i32 71, !1950, !DIExpression(), !1924)
    #dbg_value(i32 964, !1951, !DIExpression(), !1924)
    #dbg_value(i32 64, !1952, !DIExpression(), !1924)
    #dbg_value(i32 40, !1953, !DIExpression(), !1924)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #7, !dbg !1954
    #dbg_value(i32 0, !1955, !DIExpression(), !1924)
    #dbg_value(ptr %pk, !1956, !DIExpression(), !1924)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 731016, !dbg !1957
    #dbg_value(ptr %add.ptr, !1958, !DIExpression(), !1924)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1959
    #dbg_value(ptr %add.ptr2, !1960, !DIExpression(), !1924)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #7, !dbg !1961
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !1962
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !1963
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 40) #9, !dbg !1964
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #7, !dbg !1965
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 142) #7, !dbg !1966
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1848) #7, !dbg !1967
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #7, !dbg !1968
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 142) #9, !dbg !1969
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1971
  %. = zext i1 %cmp21 to i32, !dbg !1924
  ret i32 %., !dbg !1972
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1973 {
entry:
    #dbg_value(ptr %p, !1974, !DIExpression(), !1975)
    #dbg_value(ptr %cpk, !1976, !DIExpression(), !1975)
    #dbg_value(ptr %pk, !1977, !DIExpression(), !1975)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #7, !dbg !1978
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1979
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1980
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 78, i32 noundef 142) #7, !dbg !1981
  ret i32 0, !dbg !1982
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1983 {
entry:
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !1986, !DIExpression(), !1987)
    #dbg_value(ptr %s, !1988, !DIExpression(), !1987)
    #dbg_value(ptr %P1, !1989, !DIExpression(), !1987)
    #dbg_value(ptr %P2, !1990, !DIExpression(), !1987)
    #dbg_value(ptr %P3, !1991, !DIExpression(), !1987)
    #dbg_value(ptr %eval, !1992, !DIExpression(), !1987)
    #dbg_declare(ptr %SPS, !1993, !DIExpression(), !1994)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %SPS, i8 0, i32 10368, i1 false), !dbg !1994
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #7, !dbg !1995
    #dbg_declare(ptr %zero, !1996, !DIExpression(), !1997)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(142) %zero, i8 0, i32 142, i1 false), !dbg !1997
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #7, !dbg !1998
  ret void, !dbg !1999
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2000 {
entry:
  %PS = alloca [16632 x i64], align 8
    #dbg_value(ptr %p, !2003, !DIExpression(), !2004)
    #dbg_value(ptr %P1, !2005, !DIExpression(), !2004)
    #dbg_value(ptr %P2, !2006, !DIExpression(), !2004)
    #dbg_value(ptr %P3, !2007, !DIExpression(), !2004)
    #dbg_value(ptr %s, !2008, !DIExpression(), !2004)
    #dbg_value(ptr %SPS, !2009, !DIExpression(), !2004)
    #dbg_declare(ptr %PS, !2010, !DIExpression(), !2014)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(133056) %PS, i8 0, i32 133056, i1 false), !dbg !2014
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 12, ptr noundef nonnull %PS) #7, !dbg !2015
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 142, i32 noundef 12, i32 noundef 154, ptr noundef %SPS) #7, !dbg !2016
  ret void, !dbg !2017
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2018 {
entry:
  %accumulator = alloca [266112 x i64], align 8
    #dbg_value(ptr %P1, !2021, !DIExpression(), !2022)
    #dbg_value(ptr %P2, !2023, !DIExpression(), !2022)
    #dbg_value(ptr %P3, !2024, !DIExpression(), !2022)
    #dbg_value(ptr %S, !2025, !DIExpression(), !2022)
    #dbg_value(i32 142, !2026, !DIExpression(), !2022)
    #dbg_value(i32 142, !2027, !DIExpression(), !2022)
    #dbg_value(i32 12, !2028, !DIExpression(), !2022)
    #dbg_value(i32 12, !2029, !DIExpression(), !2022)
    #dbg_value(ptr %PS, !2030, !DIExpression(), !2022)
    #dbg_value(i32 154, !2031, !DIExpression(), !2022)
    #dbg_value(i32 9, !2032, !DIExpression(), !2022)
    #dbg_declare(ptr %accumulator, !2033, !DIExpression(), !2037)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2128896) %accumulator, i8 0, i32 2128896, i1 false), !dbg !2037
    #dbg_value(i32 0, !2038, !DIExpression(), !2022)
    #dbg_value(i32 0, !2039, !DIExpression(), !2041)
  br label %for.cond, !dbg !2042

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 142, %entry ], !dbg !2043
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2043
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2044
    #dbg_value(i32 %row.0, !2039, !DIExpression(), !2041)
    #dbg_value(i32 %P1_used.0, !2038, !DIExpression(), !2022)
  %exitcond4 = icmp ne i32 %row.0, 142, !dbg !2045
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2047

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2048
  br label %for.cond2, !dbg !2048

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2051

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2022
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2053
    #dbg_value(i32 %j.0, !2054, !DIExpression(), !2055)
    #dbg_value(i32 %P1_used.1, !2038, !DIExpression(), !2022)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2056
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2048

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2022
  br label %for.cond21, !dbg !2058

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2060

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2063
    #dbg_value(i32 %col.0, !2064, !DIExpression(), !2065)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2066
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2060

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 72, !dbg !2068
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2068
  %mul8 = mul nuw nsw i32 %row.0, 12, !dbg !2070
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2071
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2072
  %mul11 = mul nuw nsw i32 %col.0, 154, !dbg !2073
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2074
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2074
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2074
  %conv = zext i8 %2 to i32, !dbg !2074
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2075
  %add.ptr15.idx = mul nuw nsw i32 %add13, 72, !dbg !2076
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2076
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #7, !dbg !2077
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2078
    #dbg_value(i32 %inc, !2064, !DIExpression(), !2065)
  br label %for.cond5, !dbg !2079, !llvm.loop !2080

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2022)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2082
    #dbg_value(i32 %inc16, !2038, !DIExpression(), !2022)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2083
    #dbg_value(i32 %inc18, !2054, !DIExpression(), !2055)
  br label %for.cond2, !dbg !2084, !llvm.loop !2085

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2087
    #dbg_value(i32 %j20.0, !2088, !DIExpression(), !2089)
  %exitcond3 = icmp ne i32 %j20.0, 12, !dbg !2090
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2058

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2092

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2095
    #dbg_value(i32 %col25.0, !2096, !DIExpression(), !2097)
  %exitcond2 = icmp ne i32 %col25.0, 12, !dbg !2098
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2092

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 12, !dbg !2100
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2102
  %add.ptr33.idx = mul nuw nsw i32 %add31, 72, !dbg !2103
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2103
  %mul35 = mul nuw nsw i32 %row.0, 12, !dbg !2104
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2105
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2106
  %mul38 = mul nuw nsw i32 %col25.0, 154, !dbg !2107
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2108
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2108
  %arrayidx41 = getelementptr i8, ptr %4, i32 142, !dbg !2108
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2108
  %conv42 = zext i8 %5 to i32, !dbg !2108
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2109
  %add.ptr45.idx = mul nuw nsw i32 %add43, 72, !dbg !2110
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2110
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #7, !dbg !2111
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2112
    #dbg_value(i32 %inc47, !2096, !DIExpression(), !2097)
  br label %for.cond26, !dbg !2113, !llvm.loop !2114

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2116
    #dbg_value(i32 %inc50, !2088, !DIExpression(), !2089)
  br label %for.cond21, !dbg !2117, !llvm.loop !2118

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2120
    #dbg_value(i32 %inc53, !2039, !DIExpression(), !2041)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2121
  br label %for.cond, !dbg !2121, !llvm.loop !2122

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 12, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2124
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2124
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 142, %for.cond56.preheader ], !dbg !2125
    #dbg_value(i32 %row55.0, !2126, !DIExpression(), !2127)
    #dbg_value(i32 %P3_used.0, !2128, !DIExpression(), !2022)
  %exitcond9 = icmp ne i32 %row55.0, 154, !dbg !2129
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2051

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2131
  br label %for.cond61, !dbg !2131

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2134

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2022
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2135
    #dbg_value(i32 %j60.0, !2136, !DIExpression(), !2137)
    #dbg_value(i32 %P3_used.1, !2128, !DIExpression(), !2022)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2138
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2131

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2140

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2143
    #dbg_value(i32 %col65.0, !2144, !DIExpression(), !2145)
  %exitcond5 = icmp ne i32 %col65.0, 12, !dbg !2146
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2140

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 72, !dbg !2148
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2148
  %mul73 = mul nuw nsw i32 %row55.0, 12, !dbg !2150
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2151
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2152
  %mul76 = mul nuw nsw i32 %col65.0, 154, !dbg !2153
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2154
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2154
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2154
  %conv79 = zext i8 %8 to i32, !dbg !2154
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2155
  %add.ptr82.idx = mul nuw nsw i32 %add80, 72, !dbg !2156
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2156
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #7, !dbg !2157
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2158
    #dbg_value(i32 %inc84, !2144, !DIExpression(), !2145)
  br label %for.cond66, !dbg !2159, !llvm.loop !2160

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2128, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2022)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2162
    #dbg_value(i32 %inc86, !2128, !DIExpression(), !2022)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2163
    #dbg_value(i32 %inc88, !2136, !DIExpression(), !2137)
  br label %for.cond61, !dbg !2164, !llvm.loop !2165

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2022
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2167
    #dbg_value(i32 %inc91, !2126, !DIExpression(), !2127)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2168
  br label %for.cond56, !dbg !2168, !llvm.loop !2169

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2022
    #dbg_value(i32 %i.0, !2171, !DIExpression(), !2022)
  %exitcond10 = icmp ne i32 %i.0, 1848, !dbg !2172
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2134

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2173
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2173
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 72, !dbg !2175
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2175
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #7, !dbg !2176
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2177
    #dbg_value(i32 %inc102, !2171, !DIExpression(), !2022)
  br label %while.cond, !dbg !2134, !llvm.loop !2178

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2180
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2181 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %PS, !2184, !DIExpression(), !2185)
    #dbg_value(ptr %S, !2186, !DIExpression(), !2185)
    #dbg_value(i32 142, !2187, !DIExpression(), !2185)
    #dbg_value(i32 12, !2188, !DIExpression(), !2185)
    #dbg_value(i32 154, !2189, !DIExpression(), !2185)
    #dbg_value(ptr %SPS, !2190, !DIExpression(), !2185)
    #dbg_declare(ptr %accumulator, !2191, !DIExpression(), !2195)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2195
    #dbg_value(i32 9, !2196, !DIExpression(), !2185)
    #dbg_value(i32 0, !2197, !DIExpression(), !2199)
  br label %for.cond, !dbg !2200

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2201
    #dbg_value(i32 %row.0, !2197, !DIExpression(), !2199)
  %exitcond2 = icmp ne i32 %row.0, 12, !dbg !2202
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2204

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2205

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2208

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2209
    #dbg_value(i32 %j.0, !2210, !DIExpression(), !2211)
  %exitcond1 = icmp ne i32 %j.0, 154, !dbg !2212
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2205

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2214

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2217
    #dbg_value(i32 %col.0, !2218, !DIExpression(), !2219)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2220
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2214

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 12, !dbg !2222
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2224
  %add.ptr.idx = mul nuw nsw i32 %add7, 72, !dbg !2225
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2225
  %mul9 = mul nuw nsw i32 %row.0, 12, !dbg !2226
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2227
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2228
  %mul12 = mul nuw nsw i32 %row.0, 154, !dbg !2229
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2230
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2230
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2230
  %conv = zext i8 %1 to i32, !dbg !2230
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2231
  %add.ptr16.idx = mul nuw nsw i32 %add14, 72, !dbg !2232
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2232
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #7, !dbg !2233
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2234
    #dbg_value(i32 %add17, !2218, !DIExpression(), !2219)
  br label %for.cond4, !dbg !2235, !llvm.loop !2236

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2238
    #dbg_value(i32 %inc, !2210, !DIExpression(), !2211)
  br label %for.cond1, !dbg !2239, !llvm.loop !2240

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2242
    #dbg_value(i32 %inc21, !2197, !DIExpression(), !2199)
  br label %for.cond, !dbg !2243, !llvm.loop !2244

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2185
    #dbg_value(i32 %i.0, !2246, !DIExpression(), !2185)
  %exitcond3 = icmp ne i32 %i.0, 144, !dbg !2247
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2208

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2248
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2248
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 72, !dbg !2250
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2250
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #7, !dbg !2251
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2252
    #dbg_value(i32 %inc32, !2246, !DIExpression(), !2185)
  br label %while.cond, !dbg !2208, !llvm.loop !2253

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2255
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2256 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2259, !DIExpression(), !2260)
    #dbg_value(ptr %in, !2261, !DIExpression(), !2260)
    #dbg_value(ptr %acc, !2262, !DIExpression(), !2260)
    #dbg_value(i32 0, !2263, !DIExpression(), !2265)
  br label %for.cond, !dbg !2266

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2267
    #dbg_value(i32 %i.0, !2263, !DIExpression(), !2265)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2268
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2270

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2271
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2271
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2273
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2274
  %xor = xor i64 %1, %0, !dbg !2274
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2274
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2275
    #dbg_value(i32 %inc, !2263, !DIExpression(), !2265)
  br label %for.cond, !dbg !2276, !llvm.loop !2277

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2279
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2280 {
entry:
    #dbg_value(i32 9, !2283, !DIExpression(), !2284)
    #dbg_value(ptr %bins, !2285, !DIExpression(), !2284)
    #dbg_value(ptr %out, !2286, !DIExpression(), !2284)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2287
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2288
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #7, !dbg !2289
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 792, !dbg !2290
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2291
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #7, !dbg !2292
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2293
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2294
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #7, !dbg !2295
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2296
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2297
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #7, !dbg !2298
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2299
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2300
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #7, !dbg !2301
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2302
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2303
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #7, !dbg !2304
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2305
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2306
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #7, !dbg !2307
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2308
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2309
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #7, !dbg !2310
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2311
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2312
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #7, !dbg !2313
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2314
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2315
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #7, !dbg !2316
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2317
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2318
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #7, !dbg !2319
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2320
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2321
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #7, !dbg !2322
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2323
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2324
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #7, !dbg !2325
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2326
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2327
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #7, !dbg !2328
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2329
  call fastcc void @m_vec_copy(i32 noundef 9, ptr noundef nonnull %add.ptr28, ptr noundef %out) #7, !dbg !2330
  ret void, !dbg !2331
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2332 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2333, !DIExpression(), !2334)
    #dbg_value(ptr %in, !2335, !DIExpression(), !2334)
    #dbg_value(ptr %acc, !2336, !DIExpression(), !2334)
    #dbg_value(i64 1229782938247303441, !2337, !DIExpression(), !2334)
    #dbg_value(i32 0, !2338, !DIExpression(), !2340)
  br label %for.cond, !dbg !2341

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2342
    #dbg_value(i32 %i.0, !2338, !DIExpression(), !2340)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2343
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2345

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2346
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2346
  %and = and i64 %0, 1229782938247303441, !dbg !2348
    #dbg_value(i64 %and, !2349, !DIExpression(), !2350)
  %xor = lshr i64 %0, 1, !dbg !2351
  %shr = and i64 %xor, 8608480567731124087, !dbg !2351
  %mul = mul nuw i64 %and, 9, !dbg !2352
  %xor2 = xor i64 %shr, %mul, !dbg !2353
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2354
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2355
  %xor4 = xor i64 %1, %xor2, !dbg !2355
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2355
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2356
    #dbg_value(i32 %inc, !2338, !DIExpression(), !2340)
  br label %for.cond, !dbg !2357, !llvm.loop !2358

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2360
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2361 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2362, !DIExpression(), !2363)
    #dbg_value(ptr %in, !2364, !DIExpression(), !2363)
    #dbg_value(ptr %acc, !2365, !DIExpression(), !2363)
    #dbg_value(i64 -8608480567731124088, !2366, !DIExpression(), !2363)
    #dbg_value(i32 0, !2367, !DIExpression(), !2369)
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2371
    #dbg_value(i32 %i.0, !2367, !DIExpression(), !2369)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2372
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2374

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2375
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2375
    #dbg_value(i64 %0, !2377, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2378)
  %xor = shl i64 %0, 1, !dbg !2379
  %shl = and i64 %xor, -1229782938247303442, !dbg !2379
  %and = lshr i64 %0, 3, !dbg !2380
  %shr = and i64 %and, 1229782938247303441, !dbg !2380
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2381
  %xor2 = xor i64 %shl, %mul, !dbg !2382
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2383
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2384
  %xor4 = xor i64 %1, %xor2, !dbg !2384
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2384
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2385
    #dbg_value(i32 %inc, !2367, !DIExpression(), !2369)
  br label %for.cond, !dbg !2386, !llvm.loop !2387

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2389
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2390 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2391, !DIExpression(), !2392)
    #dbg_value(ptr %in, !2393, !DIExpression(), !2392)
    #dbg_value(ptr %out, !2394, !DIExpression(), !2392)
    #dbg_value(i32 0, !2395, !DIExpression(), !2397)
  br label %for.cond, !dbg !2398

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2399
    #dbg_value(i32 %i.0, !2395, !DIExpression(), !2397)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2400
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2402

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2403
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2403
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2405
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2406
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2407
    #dbg_value(i32 %inc, !2395, !DIExpression(), !2397)
  br label %for.cond, !dbg !2408, !llvm.loop !2409

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2411
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2412 {
entry:
    #dbg_value(ptr %p, !2443, !DIExpression(), !2444)
    #dbg_value(ptr %in, !2445, !DIExpression(), !2444)
    #dbg_value(ptr %out, !2446, !DIExpression(), !2444)
    #dbg_value(i32 %size, !2447, !DIExpression(), !2444)
    #dbg_value(i32 9, !2448, !DIExpression(), !2444)
    #dbg_value(i32 0, !2449, !DIExpression(), !2444)
    #dbg_value(i32 0, !2450, !DIExpression(), !2452)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2453
  br label %for.cond, !dbg !2453

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2454
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2454
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2455
    #dbg_value(i32 %r.0, !2450, !DIExpression(), !2452)
    #dbg_value(i32 %m_vecs_stored.0, !2449, !DIExpression(), !2444)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2456
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2458

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2459
  br label %for.cond1, !dbg !2459

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2444
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2462
    #dbg_value(i32 %c.0, !2463, !DIExpression(), !2464)
    #dbg_value(i32 %m_vecs_stored.1, !2449, !DIExpression(), !2444)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2465
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2459

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2467
  %add = add nsw i32 %mul, %c.0, !dbg !2469
  %add.ptr.idx = mul nsw i32 %add, 72, !dbg !2470
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2470
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2471
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2471
  call fastcc void @m_vec_copy.17(i32 noundef 9, ptr noundef %add.ptr, ptr noundef %add.ptr6) #7, !dbg !2472
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2473
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2473

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2475
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2477
  %add.ptr11.idx = mul nsw i32 %add9, 72, !dbg !2478
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2478
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2479
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2479
  call fastcc void @m_vec_add.18(i32 noundef 9, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #7, !dbg !2480
  br label %for.inc, !dbg !2481

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2449, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2444)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2482
    #dbg_value(i32 %inc, !2449, !DIExpression(), !2444)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2483
    #dbg_value(i32 %inc14, !2463, !DIExpression(), !2464)
  br label %for.cond1, !dbg !2484, !llvm.loop !2485

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2444
  %inc16 = add nuw i32 %r.0, 1, !dbg !2487
    #dbg_value(i32 %inc16, !2450, !DIExpression(), !2452)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2488
  br label %for.cond, !dbg !2488, !llvm.loop !2489

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2491
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2492 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2493, !DIExpression(), !2494)
    #dbg_value(ptr %in, !2495, !DIExpression(), !2494)
    #dbg_value(ptr %out, !2496, !DIExpression(), !2494)
    #dbg_value(i32 0, !2497, !DIExpression(), !2499)
  br label %for.cond, !dbg !2500

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2501
    #dbg_value(i32 %i.0, !2497, !DIExpression(), !2499)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2502
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2504

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2505
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2505
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2507
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2508
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2509
    #dbg_value(i32 %inc, !2497, !DIExpression(), !2499)
  br label %for.cond, !dbg !2510, !llvm.loop !2511

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2513
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2514 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2515, !DIExpression(), !2516)
    #dbg_value(ptr %in, !2517, !DIExpression(), !2516)
    #dbg_value(ptr %acc, !2518, !DIExpression(), !2516)
    #dbg_value(i32 0, !2519, !DIExpression(), !2521)
  br label %for.cond, !dbg !2522

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2523
    #dbg_value(i32 %i.0, !2519, !DIExpression(), !2521)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2524
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2526

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2527
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2527
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2529
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2530
  %xor = xor i64 %1, %0, !dbg !2530
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2530
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2531
    #dbg_value(i32 %inc, !2519, !DIExpression(), !2521)
  br label %for.cond, !dbg !2532, !llvm.loop !2533

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2535
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2536 {
entry:
  %Ar = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2539, !DIExpression(), !2540)
    #dbg_value(ptr %A, !2541, !DIExpression(), !2540)
    #dbg_value(ptr %y, !2542, !DIExpression(), !2540)
    #dbg_value(ptr %r, !2543, !DIExpression(), !2540)
    #dbg_value(ptr %x, !2544, !DIExpression(), !2540)
    #dbg_value(i32 %k, !2545, !DIExpression(), !2540)
    #dbg_value(i32 %o, !2546, !DIExpression(), !2540)
    #dbg_value(i32 %m, !2547, !DIExpression(), !2540)
    #dbg_value(i32 %A_cols, !2548, !DIExpression(), !2540)
    #dbg_value(i32 0, !2549, !DIExpression(), !2551)
  %0 = mul nsw i32 %o, %k, !dbg !2552
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2552
  br label %for.cond, !dbg !2552

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2553
    #dbg_value(i32 %i.0, !2549, !DIExpression(), !2551)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2554
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2556

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2557
  br label %for.cond3, !dbg !2557

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2559
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2559
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2561
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2562
  %inc = add nuw i32 %i.0, 1, !dbg !2563
    #dbg_value(i32 %inc, !2549, !DIExpression(), !2551)
  br label %for.cond, !dbg !2564, !llvm.loop !2565

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2567
    #dbg_value(i32 %i2.0, !2568, !DIExpression(), !2569)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2570
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2557

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2572
  %mul7 = mul nsw i32 %k, %o, !dbg !2574
  %add = add nsw i32 %mul7, 1, !dbg !2575
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2576
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2577
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2577
  store i8 0, ptr %arrayidx10, align 1, !dbg !2578
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2579
    #dbg_value(i32 %inc12, !2568, !DIExpression(), !2569)
  br label %for.cond3, !dbg !2580, !llvm.loop !2581

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2583
  %add15 = add nsw i32 %mul14, 1, !dbg !2584
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #7, !dbg !2585
    #dbg_value(i32 0, !2586, !DIExpression(), !2588)
  br label %for.cond17, !dbg !2589

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2590
    #dbg_value(i32 %i16.0, !2586, !DIExpression(), !2588)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2591
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2593

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2594
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2594
  %arrayidx21 = getelementptr inbounds nuw [142 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2596
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2596
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #7, !dbg !2597
  %mul22 = mul nsw i32 %k, %o, !dbg !2598
  %mul23 = mul nsw i32 %k, %o, !dbg !2599
  %add24 = add nsw i32 %mul23, 1, !dbg !2600
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2601
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2602
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2602
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2603
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2604
    #dbg_value(i32 %inc29, !2586, !DIExpression(), !2588)
  br label %for.cond17, !dbg !2605, !llvm.loop !2606

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2608
  %add32 = add nsw i32 %mul31, 1, !dbg !2609
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #7, !dbg !2610
    #dbg_value(i8 0, !2611, !DIExpression(), !2540)
    #dbg_value(i32 0, !2612, !DIExpression(), !2614)
  %6 = add i32 %A_cols, -1, !dbg !2615
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2615
  br label %for.cond34, !dbg !2615

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2540
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2616
    #dbg_value(i32 %i33.0, !2612, !DIExpression(), !2614)
    #dbg_value(i8 %full_rank.0, !2611, !DIExpression(), !2540)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2617
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2619

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2540)
  %sub37 = add nsw i32 %m, -1, !dbg !2620
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2622
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2623
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2623
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2623
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2540)
  %or12 = or i8 %full_rank.0, %8, !dbg !2624
    #dbg_value(i8 %or12, !2611, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2540)
    #dbg_value(i8 %or12, !2611, !DIExpression(), !2540)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2625
    #dbg_value(i32 %inc44, !2612, !DIExpression(), !2614)
  br label %for.cond34, !dbg !2626, !llvm.loop !2627

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2540
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2629
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2629

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2631

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2631, !llvm.loop !2633

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2635
    #dbg_value(i32 %row.0, !2636, !DIExpression(), !2637)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2638
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2631

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2640, !DIExpression(), !2540)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2641
  %div = sdiv i32 32, %sub54, !dbg !2641
  %add55 = add nsw i32 %row.0, %div, !dbg !2641
  %mul56 = mul nsw i32 %k, %o, !dbg !2641
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2641
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2641

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2641
  %div60 = sdiv i32 32, %sub59, !dbg !2641
  %add61 = add nsw i32 %row.0, %div60, !dbg !2641
  br label %cond.end, !dbg !2641

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2641
  br label %cond.end, !dbg !2641

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2641
    #dbg_value(i32 %cond, !2643, !DIExpression(), !2540)
    #dbg_value(i32 %row.0, !2644, !DIExpression(), !2646)
  br label %for.cond63, !dbg !2647

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2648
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2649
    #dbg_value(i32 %col.0, !2644, !DIExpression(), !2646)
    #dbg_value(i8 %finished.0, !2640, !DIExpression(), !2540)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2650
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2652

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2653
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2655
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2655
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2655
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #7, !dbg !2656
  %not = xor i8 %finished.0, -1, !dbg !2657
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2658, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2540)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2659
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2660
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2660
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2660
  %13 = and i8 %12, %not, !dbg !2661
  %and801 = and i8 %13, %call70, !dbg !2661
    #dbg_value(i8 %and801, !2662, !DIExpression(), !2663)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2664
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2665
  %xor2 = xor i8 %14, %and801, !dbg !2665
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2665
    #dbg_value(i32 0, !2666, !DIExpression(), !2668)
  br label %for.cond87, !dbg !2669

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2670
    #dbg_value(i32 %i86.0, !2666, !DIExpression(), !2668)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2671
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2673

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2674
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2676
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2676
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2676
  %conv94 = zext i8 %16 to i64, !dbg !2677
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2678
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2679
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2680
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2680
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2680
  %conv99 = zext i8 %18 to i64, !dbg !2681
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2682
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2683
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2684
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2685
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2686
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2686
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2686
  %conv106 = zext i8 %20 to i64, !dbg !2687
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2688
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2689
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2690
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2691
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2692
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2692
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2692
  %conv113 = zext i8 %22 to i64, !dbg !2693
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2694
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2695
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2696
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2697
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2698
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2698
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2698
  %conv120 = zext i8 %24 to i64, !dbg !2699
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2700
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2701
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2702
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2703
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2704
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2704
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2704
  %conv127 = zext i8 %26 to i64, !dbg !2705
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2706
  %xor129 = xor i64 %xor122, %shl128, !dbg !2707
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2708
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2709
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2710
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2710
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2710
  %conv134 = zext i8 %28 to i64, !dbg !2711
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2712
  %xor136 = xor i64 %xor129, %shl135, !dbg !2713
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2714
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2715
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2716
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2716
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2716
  %conv141 = zext i8 %30 to i64, !dbg !2717
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2718
  %xor143 = xor i64 %xor136, %shl142, !dbg !2719
    #dbg_value(i64 %xor143, !2720, !DIExpression(), !2721)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #7, !dbg !2722
    #dbg_value(i64 %call144, !2720, !DIExpression(), !2721)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2723
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2723
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2724
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2724
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2725
  %33 = trunc i64 %call144 to i8, !dbg !2725
  %34 = and i8 %33, 15, !dbg !2725
  %conv152 = xor i8 %34, %32, !dbg !2725
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2725
  %shr = lshr i64 %call144, 8, !dbg !2726
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2727
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2727
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2728
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2728
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2729
  %37 = trunc i64 %shr to i8, !dbg !2729
  %38 = and i8 %37, 15, !dbg !2729
  %conv161 = xor i8 %38, %36, !dbg !2729
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2729
  %shr162 = lshr i64 %call144, 16, !dbg !2730
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2731
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2731
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2732
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2732
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2733
  %41 = trunc i64 %shr162 to i8, !dbg !2733
  %42 = and i8 %41, 15, !dbg !2733
  %conv171 = xor i8 %42, %40, !dbg !2733
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2733
  %shr172 = lshr i64 %call144, 24, !dbg !2734
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2735
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2735
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2736
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2736
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2737
  %45 = trunc i64 %shr172 to i8, !dbg !2737
  %46 = and i8 %45, 15, !dbg !2737
  %conv181 = xor i8 %46, %44, !dbg !2737
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2737
  %shr182 = lshr i64 %call144, 32, !dbg !2738
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2739
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2739
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2740
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2740
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2741
  %49 = trunc i64 %shr182 to i8, !dbg !2741
  %50 = and i8 %49, 15, !dbg !2741
  %conv191 = xor i8 %50, %48, !dbg !2741
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2741
  %shr192 = lshr i64 %call144, 40, !dbg !2742
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2743
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2743
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2744
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2744
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2745
  %53 = trunc i64 %shr192 to i8, !dbg !2745
  %54 = and i8 %53, 15, !dbg !2745
  %conv201 = xor i8 %54, %52, !dbg !2745
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2745
  %shr202 = lshr i64 %call144, 48, !dbg !2746
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2747
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2747
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2748
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2748
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2749
  %57 = trunc i64 %shr202 to i8, !dbg !2749
  %58 = and i8 %57, 15, !dbg !2749
  %conv211 = xor i8 %58, %56, !dbg !2749
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2749
  %shr212 = lshr i64 %call144, 56, !dbg !2750
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2751
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2751
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2752
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2752
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2753
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2753
  %conv221 = xor i8 %60, %61, !dbg !2753
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2753
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2754
    #dbg_value(i32 %add223, !2666, !DIExpression(), !2668)
  br label %for.cond87, !dbg !2755, !llvm.loop !2756

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2640, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2540)
  %or2273 = or i8 %finished.0, %call70, !dbg !2758
    #dbg_value(i8 %or2273, !2640, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2540)
    #dbg_value(i8 %or2273, !2640, !DIExpression(), !2540)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2759
    #dbg_value(i32 %inc230, !2644, !DIExpression(), !2646)
  br label %for.cond63, !dbg !2760, !llvm.loop !2761

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2763

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2540
  ret i32 %retval.0, !dbg !2763
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2764 {
entry:
    #dbg_value(ptr %a, !2765, !DIExpression(), !2766)
    #dbg_value(ptr %b, !2767, !DIExpression(), !2766)
    #dbg_value(ptr %c, !2768, !DIExpression(), !2766)
    #dbg_value(i32 %colrow_ab, !2769, !DIExpression(), !2766)
    #dbg_value(i32 %row_a, !2770, !DIExpression(), !2766)
    #dbg_value(i32 1, !2771, !DIExpression(), !2766)
    #dbg_value(i32 0, !2772, !DIExpression(), !2774)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2775
  br label %for.cond, !dbg !2775

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2776
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2765, !DIExpression(), !2766)
    #dbg_value(ptr %c.addr.0, !2768, !DIExpression(), !2766)
    #dbg_value(i32 %i.0, !2772, !DIExpression(), !2774)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2777
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2779

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2780

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2783
    #dbg_value(i32 poison, !2784, !DIExpression(), !2785)
    #dbg_value(ptr %c.addr.1, !2768, !DIExpression(), !2766)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2780

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #7, !dbg !2786
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2789
    #dbg_value(i32 1, !2784, !DIExpression(), !2785)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2790
    #dbg_value(ptr %incdec.ptr, !2768, !DIExpression(), !2766)
  br label %for.cond1, !dbg !2791, !llvm.loop !2792

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2794
    #dbg_value(i32 %inc5, !2772, !DIExpression(), !2774)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2795
    #dbg_value(ptr %add.ptr6, !2765, !DIExpression(), !2766)
  br label %for.cond, !dbg !2796, !llvm.loop !2797

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2799
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2800 {
entry:
    #dbg_value(i8 %a, !2801, !DIExpression(), !2802)
    #dbg_value(i8 %b, !2803, !DIExpression(), !2802)
  %xor1 = xor i8 %a, %b, !dbg !2804
  ret i8 %xor1, !dbg !2805
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2806 {
entry:
  %_pivot_row = alloca [10 x i64], align 32
  %_pivot_row2 = alloca [10 x i64], align 32
  %packed_A = alloca [1420 x i64], align 32
  %temp = alloca [160 x i8], align 1
    #dbg_value(ptr %A, !2810, !DIExpression(), !2811)
    #dbg_value(i32 %nrows, !2812, !DIExpression(), !2811)
    #dbg_value(i32 %ncols, !2813, !DIExpression(), !2811)
    #dbg_declare(ptr %_pivot_row, !2814, !DIExpression(), !2816)
    #dbg_declare(ptr %_pivot_row2, !2817, !DIExpression(), !2818)
    #dbg_declare(ptr %packed_A, !2819, !DIExpression(), !2823)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(11360) %packed_A, i8 0, i32 11360, i1 false), !dbg !2823
  %add = add nsw i32 %ncols, 15, !dbg !2824
  %div = sdiv i32 %add, 16, !dbg !2825
    #dbg_value(i32 %div, !2826, !DIExpression(), !2811)
    #dbg_value(i32 0, !2827, !DIExpression(), !2829)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2830
  br label %for.cond, !dbg !2830

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2831
    #dbg_value(i32 %i.0, !2827, !DIExpression(), !2829)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2832
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2834

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2835
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2835
  br label %for.cond3, !dbg !2835

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2837
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2839
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2840
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2841
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #7, !dbg !2842
  %inc = add nuw i32 %i.0, 1, !dbg !2843
    #dbg_value(i32 %inc, !2827, !DIExpression(), !2829)
  br label %for.cond, !dbg !2844, !llvm.loop !2845

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2847
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2811
    #dbg_value(i32 %pivot_row.0, !2848, !DIExpression(), !2811)
    #dbg_value(i32 %pivot_col.0, !2849, !DIExpression(), !2850)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2851
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2835

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2853

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2855
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2855
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2855
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2855
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2855
    #dbg_value(i32 %cond, !2857, !DIExpression(), !2858)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2859
    #dbg_value(i32 %cond16, !2860, !DIExpression(), !2858)
    #dbg_value(i32 0, !2861, !DIExpression(), !2863)
  br label %for.cond18, !dbg !2864

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2865
    #dbg_value(i32 %i17.0, !2861, !DIExpression(), !2863)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2866
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2868

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2859
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2859
  br label %for.cond25, !dbg !2869

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2871
  store i64 0, ptr %arrayidx, align 8, !dbg !2873
  %arrayidx21 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2874
  store i64 0, ptr %arrayidx21, align 8, !dbg !2875
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2876
    #dbg_value(i32 %inc23, !2861, !DIExpression(), !2863)
  br label %for.cond18, !dbg !2877, !llvm.loop !2878

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2858
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2858
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2880
    #dbg_value(i32 %row.0, !2881, !DIExpression(), !2880)
    #dbg_value(i8 %pivot.0, !2882, !DIExpression(), !2858)
    #dbg_value(i64 %pivot_is_zero.0, !2883, !DIExpression(), !2858)
  %add27 = add nsw i32 %cond16, 32, !dbg !2884
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2884
  %sub30 = add nsw i32 %nrows, -1, !dbg !2884
  %add32 = add nsw i32 %cond16, 32, !dbg !2884
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2884
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2886
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2869

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2887
  %not = xor i64 %call, -1, !dbg !2889
    #dbg_value(i64 %not, !2890, !DIExpression(), !2891)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2892
    #dbg_value(i64 %call37, !2893, !DIExpression(), !2891)
    #dbg_value(i32 0, !2894, !DIExpression(), !2896)
  br label %for.cond38, !dbg !2897

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2898
    #dbg_value(i32 %j.0, !2894, !DIExpression(), !2896)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2899
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2901

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2902
  %or = or i64 %and, %not, !dbg !2904
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2905
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2906
  %arrayidx43 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2907
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2907
  %and44 = and i64 %or, %0, !dbg !2908
  %arrayidx45 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2909
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2910
  %xor = xor i64 %1, %and44, !dbg !2910
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2910
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2911
    #dbg_value(i32 %inc47, !2894, !DIExpression(), !2896)
  br label %for.cond38, !dbg !2912, !llvm.loop !2913

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #7, !dbg !2915
    #dbg_value(i8 %call50, !2882, !DIExpression(), !2858)
  %conv = zext nneg i8 %call50 to i32, !dbg !2916
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #7, !dbg !2917
    #dbg_value(i64 %call51, !2883, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2858)
  %not52 = xor i64 %call51, -1, !dbg !2918
    #dbg_value(i64 %not52, !2883, !DIExpression(), !2858)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2919
    #dbg_value(i32 %inc54, !2881, !DIExpression(), !2880)
  br label %for.cond25, !dbg !2920, !llvm.loop !2921

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2858
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2858
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #7, !dbg !2923
    #dbg_value(i8 %call56, !2924, !DIExpression(), !2811)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #7, !dbg !2925
    #dbg_value(i32 %cond, !2926, !DIExpression(), !2928)
  br label %for.cond60, !dbg !2929

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2930
    #dbg_value(i32 %row59.0, !2926, !DIExpression(), !2928)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2931
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2933

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2934

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #7, !dbg !2936
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2938
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2938
    #dbg_value(i64 %and67, !2939, !DIExpression(), !2940)
    #dbg_value(i64 %and67.demorgan, !2941, !DIExpression(), !2940)
    #dbg_value(i32 0, !2942, !DIExpression(), !2944)
  br label %for.cond69, !dbg !2945

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2946
    #dbg_value(i32 %col.0, !2942, !DIExpression(), !2944)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2947
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2949

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2950
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2952
  %arrayidx75 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2953
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2953
  %and76 = and i64 %and67.demorgan, %2, !dbg !2954
  %arrayidx77 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2955
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2955
  %and78 = and i64 %3, %and67, !dbg !2956
  %add79 = add i64 %and76, %and78, !dbg !2957
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2958
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2959
  %arrayidx82 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2960
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2961
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2962
    #dbg_value(i32 %inc84, !2942, !DIExpression(), !2944)
  br label %for.cond69, !dbg !2963, !llvm.loop !2964

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2966
    #dbg_value(i32 %inc87, !2926, !DIExpression(), !2928)
  br label %for.cond60, !dbg !2967, !llvm.loop !2968

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2970
    #dbg_value(i32 %row89.0, !2971, !DIExpression(), !2972)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2973
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2934

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2975
    #dbg_value(i1 %cmp94, !2977, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2978)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2979
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2980
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #7, !dbg !2981
    #dbg_value(i8 %call100, !2982, !DIExpression(), !2978)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2983
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2984
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2985
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #7, !dbg !2986
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2987
    #dbg_value(i32 %inc110, !2971, !DIExpression(), !2972)
  br label %for.cond90, !dbg !2988, !llvm.loop !2989

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2811)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2991
  %5 = add i32 %4, 1, !dbg !2991
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2991
    #dbg_value(i32 %conv116, !2848, !DIExpression(), !2811)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2992
    #dbg_value(i32 %inc118, !2849, !DIExpression(), !2850)
  br label %for.cond3, !dbg !2993, !llvm.loop !2994

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2996
    #dbg_value(i32 %i120.0, !2997, !DIExpression(), !2998)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2999
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2853

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3001
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3003
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #7, !dbg !3004
    #dbg_value(i32 0, !3005, !DIExpression(), !3007)
  br label %for.cond130, !dbg !3008

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3009
    #dbg_value(i32 %j129.0, !3005, !DIExpression(), !3007)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3010
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3012

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [160 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3013
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3013
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3015
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3016
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3016
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3017
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3018
    #dbg_value(i32 %inc139, !3005, !DIExpression(), !3007)
  br label %for.cond130, !dbg !3019, !llvm.loop !3020

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3022
    #dbg_value(i32 %inc142, !2997, !DIExpression(), !2998)
  br label %for.cond121, !dbg !3023, !llvm.loop !3024

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 160) #9, !dbg !3026
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 80) #9, !dbg !3027
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 80) #9, !dbg !3028
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 11360) #9, !dbg !3029
  ret void, !dbg !3030
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3031 {
entry:
    #dbg_value(i8 %a, !3033, !DIExpression(), !3034)
    #dbg_value(i8 0, !3035, !DIExpression(), !3034)
  %0 = icmp ne i8 %a, 0, !dbg !3036
  %conv3 = sext i1 %0 to i8, !dbg !3037
  %1 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3038
  %xor5 = xor i8 %1, %conv3, !dbg !3039
  ret i8 %xor5, !dbg !3040
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3041 {
entry:
    #dbg_value(i8 %a, !3044, !DIExpression(), !3045)
    #dbg_value(i64 %b, !3046, !DIExpression(), !3045)
  %0 = and i8 %a, 1, !dbg !3047
  %conv1 = zext nneg i8 %0 to i64, !dbg !3048
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3049
    #dbg_value(i64 %mul, !3050, !DIExpression(), !3045)
  %1 = and i8 %a, 2, !dbg !3051
  %conv4 = zext nneg i8 %1 to i64, !dbg !3052
  %mul5 = mul i64 %b, %conv4, !dbg !3053
  %xor = xor i64 %mul, %mul5, !dbg !3054
    #dbg_value(i64 %xor, !3050, !DIExpression(), !3045)
  %2 = and i8 %a, 4, !dbg !3055
  %conv8 = zext nneg i8 %2 to i64, !dbg !3056
  %mul9 = mul i64 %b, %conv8, !dbg !3057
  %xor10 = xor i64 %xor, %mul9, !dbg !3058
    #dbg_value(i64 %xor10, !3050, !DIExpression(), !3045)
  %3 = and i8 %a, 8, !dbg !3059
  %conv13 = zext nneg i8 %3 to i64, !dbg !3060
  %mul14 = mul i64 %b, %conv13, !dbg !3061
  %xor15 = xor i64 %xor10, %mul14, !dbg !3062
    #dbg_value(i64 %xor15, !3050, !DIExpression(), !3045)
    #dbg_value(i64 %xor15, !3063, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3045)
  %shr = lshr i64 %xor15, 4, !dbg !3064
  %and16 = lshr i64 %xor15, 3, !dbg !3065
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3065
  %4 = xor i64 %shr, %shr18, !dbg !3066
  %xor19 = xor i64 %4, %xor15, !dbg !3066
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3067
    #dbg_value(i64 %and20, !3068, !DIExpression(), !3045)
  ret i64 %and20, !dbg !3069
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3070 {
entry:
    #dbg_value(ptr %in, !3073, !DIExpression(), !3074)
    #dbg_value(ptr %out, !3075, !DIExpression(), !3074)
    #dbg_value(i32 %ncols, !3076, !DIExpression(), !3074)
    #dbg_value(ptr %out, !3077, !DIExpression(), !3074)
    #dbg_value(i32 0, !3078, !DIExpression(), !3074)
  br label %for.cond, !dbg !3079

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3081
    #dbg_value(i32 %i.0, !3078, !DIExpression(), !3074)
  %add = or disjoint i32 %i.0, 1, !dbg !3082
  %cmp = icmp slt i32 %add, %ncols, !dbg !3084
  br i1 %cmp, label %for.body, label %for.end, !dbg !3085

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3086
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3086
  %add2 = or disjoint i32 %i.0, 1, !dbg !3088
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3089
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3089
  %shl5 = shl i8 %1, 4, !dbg !3090
  %or = or i8 %shl5, %0, !dbg !3091
  %div = lshr exact i32 %i.0, 1, !dbg !3092
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3093
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3094
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3095
    #dbg_value(i32 %add8, !3078, !DIExpression(), !3074)
  br label %for.cond, !dbg !3096, !llvm.loop !3097

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3081
  %2 = and i32 %ncols, -2147483647, !dbg !3099
  %cmp9 = icmp eq i32 %2, 1, !dbg !3099
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3099

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3101
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3101
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3103
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3104
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3105
  br label %if.end, !dbg !3106

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3107
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3108 {
entry:
    #dbg_value(i32 %a, !3111, !DIExpression(), !3112)
    #dbg_value(i32 %b, !3113, !DIExpression(), !3112)
  %xor = xor i32 %a, %b, !dbg !3114
  %0 = icmp sgt i32 %xor, 0, !dbg !3115
  %shr = sext i1 %0 to i64, !dbg !3115
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3116
  %xor1 = xor i64 %1, %shr, !dbg !3117
  ret i64 %xor1, !dbg !3118
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3119 {
entry:
    #dbg_value(i32 %a, !3120, !DIExpression(), !3121)
    #dbg_value(i32 %b, !3122, !DIExpression(), !3121)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3121)
  %0 = icmp slt i32 %b, %a, !dbg !3124
  %shr = sext i1 %0 to i64, !dbg !3124
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3125
  %xor = xor i64 %1, %shr, !dbg !3126
  ret i64 %xor, !dbg !3127
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3128 {
entry:
    #dbg_value(ptr %in, !3131, !DIExpression(), !3132)
    #dbg_value(i32 %index, !3133, !DIExpression(), !3132)
  %div = sdiv i32 %index, 16, !dbg !3134
    #dbg_value(i32 %div, !3135, !DIExpression(), !3132)
  %rem = srem i32 %index, 16, !dbg !3136
    #dbg_value(i32 %rem, !3137, !DIExpression(), !3132)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3138
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3138
  %mul = shl nsw i32 %rem, 2, !dbg !3139
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3140
  %shr = lshr i64 %0, %sh_prom, !dbg !3140
  %1 = trunc i64 %shr to i8, !dbg !3141
  %conv = and i8 %1, 15, !dbg !3141
  ret i8 %conv, !dbg !3142
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3143 {
entry:
    #dbg_value(i8 %a, !3146, !DIExpression(), !3147)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #7, !dbg !3148
    #dbg_value(i8 %call, !3149, !DIExpression(), !3147)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #7, !dbg !3150
    #dbg_value(i8 %call1, !3151, !DIExpression(), !3147)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #7, !dbg !3152
    #dbg_value(i8 %call2, !3153, !DIExpression(), !3147)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #7, !dbg !3154
    #dbg_value(i8 %call3, !3155, !DIExpression(), !3147)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #7, !dbg !3156
    #dbg_value(i8 %call4, !3157, !DIExpression(), !3147)
  ret i8 %call4, !dbg !3158
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3159 {
entry:
    #dbg_value(i32 %legs, !3162, !DIExpression(), !3163)
    #dbg_value(ptr %in, !3164, !DIExpression(), !3163)
    #dbg_value(i8 %a, !3165, !DIExpression(), !3163)
    #dbg_value(ptr %acc, !3166, !DIExpression(), !3163)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #7, !dbg !3167
    #dbg_value(i32 %call, !3168, !DIExpression(), !3163)
    #dbg_value(i64 1229782938247303441, !3169, !DIExpression(), !3163)
    #dbg_value(i32 0, !3170, !DIExpression(), !3172)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3173
  br label %for.cond, !dbg !3173

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3174
    #dbg_value(i32 %i.0, !3170, !DIExpression(), !3172)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3175
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3177

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3178
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3178
  %and = and i64 %0, 1229782938247303441, !dbg !3180
  %and1 = and i32 %call, 255, !dbg !3181
  %conv = zext nneg i32 %and1 to i64, !dbg !3182
  %mul = mul i64 %and, %conv, !dbg !3183
  %shr = lshr i64 %0, 1, !dbg !3184
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3185
  %shr4 = lshr i32 %call, 8, !dbg !3186
  %and5 = and i32 %shr4, 15, !dbg !3187
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3188
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3189
  %xor = xor i64 %mul, %mul7, !dbg !3190
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3191
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3191
  %shr9 = lshr i64 %1, 2, !dbg !3192
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3193
  %shr11 = lshr i32 %call, 16, !dbg !3194
  %and12 = and i32 %shr11, 15, !dbg !3195
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3196
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3197
  %xor15 = xor i64 %xor, %mul14, !dbg !3198
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3199
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3199
  %shr17 = lshr i64 %2, 3, !dbg !3200
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3201
  %shr19 = lshr i32 %call, 24, !dbg !3202
  %and20 = and i32 %shr19, 15, !dbg !3203
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3204
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3205
  %xor23 = xor i64 %xor15, %mul22, !dbg !3206
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3207
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3208
  %xor25 = xor i64 %3, %xor23, !dbg !3208
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3208
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3209
    #dbg_value(i32 %inc, !3170, !DIExpression(), !3172)
  br label %for.cond, !dbg !3210, !llvm.loop !3211

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3213
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3214 {
entry:
    #dbg_value(i32 %legs, !3217, !DIExpression(), !3218)
    #dbg_value(ptr %in, !3219, !DIExpression(), !3218)
    #dbg_value(ptr %out, !3220, !DIExpression(), !3218)
    #dbg_value(ptr %in, !3221, !DIExpression(), !3218)
    #dbg_value(i32 0, !3222, !DIExpression(), !3224)
  br label %for.cond, !dbg !3225

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3226
    #dbg_value(i32 %i.0, !3222, !DIExpression(), !3224)
  %mul = shl nsw i32 %legs, 4, !dbg !3227
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3229
  br i1 %cmp, label %for.body, label %for.end, !dbg !3230

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3231
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3233
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3233
  %1 = and i8 %0, 15, !dbg !3234
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3235
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3236
  %div3 = lshr exact i32 %i.0, 1, !dbg !3237
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3238
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3238
  %3 = lshr i8 %2, 4, !dbg !3239
  %add = or disjoint i32 %i.0, 1, !dbg !3240
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3241
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3242
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3243
    #dbg_value(i32 %add8, !3222, !DIExpression(), !3224)
  br label %for.cond, !dbg !3244, !llvm.loop !3245

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3247
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3248 {
entry:
    #dbg_value(i8 %b, !3249, !DIExpression(), !3250)
  %conv = zext nneg i8 %b to i32, !dbg !3251
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3252
    #dbg_value(i32 %mul, !3253, !DIExpression(), !3250)
    #dbg_value(i32 -252645136, !3254, !DIExpression(), !3250)
  %and = and i32 %mul, 1894838512, !dbg !3255
    #dbg_value(i32 %and, !3256, !DIExpression(), !3250)
  %shr = lshr exact i32 %and, 4, !dbg !3257
  %shr1 = lshr exact i32 %and, 3, !dbg !3258
  %0 = xor i32 %shr, %shr1, !dbg !3259
  %xor2 = xor i32 %0, %mul, !dbg !3259
  ret i32 %xor2, !dbg !3260
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3261 {
entry:
    #dbg_value(i8 %a, !3262, !DIExpression(), !3263)
    #dbg_value(i8 %b, !3264, !DIExpression(), !3263)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3265
  %xor1 = xor i8 %a, %0, !dbg !3266
    #dbg_value(i8 %xor1, !3262, !DIExpression(), !3263)
  %1 = trunc i8 %xor1 to i1, !dbg !3267
    #dbg_value(i8 poison, !3268, !DIExpression(), !3263)
  %2 = and i8 %xor1, 2, !dbg !3269
  %mul9 = mul i8 %2, %b, !dbg !3270
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3267
  %xor11 = xor i8 %conv10, %mul9, !dbg !3271
    #dbg_value(i8 %xor11, !3268, !DIExpression(), !3263)
  %3 = and i8 %xor1, 4, !dbg !3272
  %mul16 = mul i8 %3, %b, !dbg !3273
  %xor18 = xor i8 %mul16, %xor11, !dbg !3274
    #dbg_value(i8 %xor18, !3268, !DIExpression(), !3263)
  %4 = and i8 %xor1, 8, !dbg !3275
  %mul23 = mul i8 %4, %b, !dbg !3276
  %xor25 = xor i8 %mul23, %xor18, !dbg !3277
    #dbg_value(i8 %xor25, !3268, !DIExpression(), !3263)
    #dbg_value(i8 %xor25, !3278, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3263)
  %5 = lshr i8 %xor25, 4, !dbg !3279
  %6 = lshr i8 %xor25, 3, !dbg !3280
  %7 = and i8 %6, 14, !dbg !3280
  %8 = xor i8 %5, %7, !dbg !3281
  %xor25.masked = and i8 %xor25, 15, !dbg !3282
  %9 = xor i8 %8, %xor25.masked, !dbg !3282
    #dbg_value(i8 %9, !3283, !DIExpression(), !3263)
  ret i8 %9, !dbg !3284
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3285 {
entry:
    #dbg_value(ptr %a, !3286, !DIExpression(), !3287)
    #dbg_value(ptr %b, !3288, !DIExpression(), !3287)
    #dbg_value(i32 %n, !3289, !DIExpression(), !3287)
    #dbg_value(i32 1, !3290, !DIExpression(), !3287)
    #dbg_value(i8 0, !3291, !DIExpression(), !3287)
    #dbg_value(i32 0, !3292, !DIExpression(), !3294)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3295
  br label %for.cond, !dbg !3295

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3287
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3296
    #dbg_value(i32 %i.0, !3292, !DIExpression(), !3294)
    #dbg_value(ptr %b.addr.0, !3288, !DIExpression(), !3287)
    #dbg_value(i8 %ret.0, !3291, !DIExpression(), !3287)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3297
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3299

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3300
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3300
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3302
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !3303
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #7, !dbg !3304
    #dbg_value(i8 %call1, !3291, !DIExpression(), !3287)
  %inc = add nuw i32 %i.0, 1, !dbg !3305
    #dbg_value(i32 %inc, !3292, !DIExpression(), !3294)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3306
    #dbg_value(ptr %add.ptr, !3288, !DIExpression(), !3287)
  br label %for.cond, !dbg !3307, !llvm.loop !3308

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3287
  ret i8 %ret.0.lcssa, !dbg !3310
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3311 {
entry:
    #dbg_value(i8 %a, !3312, !DIExpression(), !3313)
    #dbg_value(i8 %b, !3314, !DIExpression(), !3313)
  %xor1 = xor i8 %a, %b, !dbg !3315
  ret i8 %xor1, !dbg !3316
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3317 {
entry:
    #dbg_value(ptr %state, !3325, !DIExpression(), !3326)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !3327
  store ptr %call, ptr %state, align 4, !dbg !3328
  %cmp = icmp eq ptr %call, null, !dbg !3329
  br i1 %cmp, label %if.then, label %if.end, !dbg !3329

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !3331
  br label %if.end, !dbg !3333

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3334
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !3335
  ret void, !dbg !3336
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #5

declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3337 {
entry:
    #dbg_value(ptr %s_inc, !3338, !DIExpression(), !3339)
    #dbg_value(i32 0, !3340, !DIExpression(), !3339)
  br label %for.cond, !dbg !3341

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3343
    #dbg_value(i32 %i.0, !3340, !DIExpression(), !3339)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3344
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3346

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3347
  store i64 0, ptr %arrayidx, align 8, !dbg !3349
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3350
    #dbg_value(i32 %inc, !3340, !DIExpression(), !3339)
  br label %for.cond, !dbg !3351, !llvm.loop !3352

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3354
  store i64 0, ptr %arrayidx1, align 8, !dbg !3355
  ret void, !dbg !3356
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3357 {
entry:
    #dbg_value(ptr %state, !3362, !DIExpression(), !3363)
    #dbg_value(ptr %input, !3364, !DIExpression(), !3363)
    #dbg_value(i32 %inlen, !3365, !DIExpression(), !3363)
  %0 = load ptr, ptr %state, align 4, !dbg !3366
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #7, !dbg !3367
  ret void, !dbg !3368
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3369 {
entry:
    #dbg_value(ptr %s_inc, !3372, !DIExpression(), !3373)
    #dbg_value(i32 %r, !3374, !DIExpression(), !3373)
    #dbg_value(ptr %m, !3375, !DIExpression(), !3373)
    #dbg_value(i32 %mlen, !3376, !DIExpression(), !3373)
  br label %while.cond, !dbg !3377

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3376, !DIExpression(), !3373)
    #dbg_value(ptr %m.addr.0, !3375, !DIExpression(), !3373)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3378
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3379
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3379
  %add = add i64 %0, %conv, !dbg !3380
  %conv1 = zext nneg i32 %r to i64, !dbg !3381
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3382
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3377

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3383

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3386

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3388
    #dbg_value(i32 %i.0, !3389, !DIExpression(), !3373)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3390
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3390
  %conv4 = trunc i64 %1 to i32, !dbg !3392
  %sub = sub i32 %r, %conv4, !dbg !3393
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3394
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3383

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3395
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3395
  %conv8 = zext i8 %2 to i64, !dbg !3397
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3398
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3398
  %conv10 = zext i32 %i.0 to i64, !dbg !3399
  %add11 = add i64 %3, %conv10, !dbg !3400
  %and = shl i64 %add11, 3, !dbg !3401
  %mul = and i64 %and, 56, !dbg !3401
  %shl = shl nuw i64 %conv8, %mul, !dbg !3402
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3403
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3403
  %conv13 = zext i32 %i.0 to i64, !dbg !3404
  %add14 = add i64 %4, %conv13, !dbg !3405
  %shr = lshr i64 %add14, 3, !dbg !3406
  %idxprom = trunc i64 %shr to i32, !dbg !3407
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3407
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3408
  %xor = xor i64 %5, %shl, !dbg !3408
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3408
  %inc = add nuw i32 %i.0, 1, !dbg !3409
    #dbg_value(i32 %inc, !3389, !DIExpression(), !3373)
  br label %for.cond, !dbg !3410, !llvm.loop !3411

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3413
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3413
  %7 = trunc i64 %6 to i32, !dbg !3414
  %conv19.neg = sub i32 %7, %r, !dbg !3414
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3415
    #dbg_value(i32 %sub20, !3376, !DIExpression(), !3373)
  %8 = trunc i64 %6 to i32, !dbg !3416
  %idx.ext = sub i32 %r, %8, !dbg !3416
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3416
    #dbg_value(ptr %add.ptr, !3375, !DIExpression(), !3373)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3417
  store i64 0, ptr %arrayidx24, align 8, !dbg !3418
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !3419
  br label %while.cond, !dbg !3377, !llvm.loop !3420

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3422
    #dbg_value(i32 %i.1, !3389, !DIExpression(), !3373)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3423
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3386

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3425
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3425
  %conv30 = zext i8 %9 to i64, !dbg !3427
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3428
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3428
  %conv32 = zext i32 %i.1 to i64, !dbg !3429
  %add33 = add i64 %10, %conv32, !dbg !3430
  %and34 = shl i64 %add33, 3, !dbg !3431
  %mul35 = and i64 %and34, 56, !dbg !3431
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3432
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3433
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3433
  %conv38 = zext i32 %i.1 to i64, !dbg !3434
  %add39 = add i64 %11, %conv38, !dbg !3435
  %shr40 = lshr i64 %add39, 3, !dbg !3436
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3437
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3437
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3438
  %xor43 = xor i64 %12, %shl36, !dbg !3438
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3438
  %inc45 = add i32 %i.1, 1, !dbg !3439
    #dbg_value(i32 %inc45, !3389, !DIExpression(), !3373)
  br label %for.cond25, !dbg !3440, !llvm.loop !3441

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3443
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3444
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3445
  %add49 = add i64 %13, %conv47, !dbg !3445
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3445
  ret void, !dbg !3446
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3447 {
entry:
    #dbg_value(ptr %state, !3448, !DIExpression(), !3449)
  %0 = load i64, ptr %state, align 8, !dbg !3450
    #dbg_value(i64 %0, !3451, !DIExpression(), !3449)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3452
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3452
    #dbg_value(i64 %1, !3453, !DIExpression(), !3449)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3454
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3454
    #dbg_value(i64 %2, !3455, !DIExpression(), !3449)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3456
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3456
    #dbg_value(i64 %3, !3457, !DIExpression(), !3449)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3458
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3458
    #dbg_value(i64 %4, !3459, !DIExpression(), !3449)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3460
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3460
    #dbg_value(i64 %5, !3461, !DIExpression(), !3449)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3462
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3462
    #dbg_value(i64 %6, !3463, !DIExpression(), !3449)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3464
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3464
    #dbg_value(i64 %7, !3465, !DIExpression(), !3449)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3466
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3466
    #dbg_value(i64 %8, !3467, !DIExpression(), !3449)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3468
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3468
    #dbg_value(i64 %9, !3469, !DIExpression(), !3449)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3470
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3470
    #dbg_value(i64 %10, !3471, !DIExpression(), !3449)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3472
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3472
    #dbg_value(i64 %11, !3473, !DIExpression(), !3449)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3474
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3474
    #dbg_value(i64 %12, !3475, !DIExpression(), !3449)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3476
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3476
    #dbg_value(i64 %13, !3477, !DIExpression(), !3449)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3478
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3478
    #dbg_value(i64 %14, !3479, !DIExpression(), !3449)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3480
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3480
    #dbg_value(i64 %15, !3481, !DIExpression(), !3449)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3482
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3482
    #dbg_value(i64 %16, !3483, !DIExpression(), !3449)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3484
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3484
    #dbg_value(i64 %17, !3485, !DIExpression(), !3449)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3486
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3486
    #dbg_value(i64 %18, !3487, !DIExpression(), !3449)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3488
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3488
    #dbg_value(i64 %19, !3489, !DIExpression(), !3449)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3490
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3490
    #dbg_value(i64 %20, !3491, !DIExpression(), !3449)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3492
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3492
    #dbg_value(i64 %21, !3493, !DIExpression(), !3449)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3494
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3494
    #dbg_value(i64 %22, !3495, !DIExpression(), !3449)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3496
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3496
    #dbg_value(i64 %23, !3497, !DIExpression(), !3449)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3498
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3498
    #dbg_value(i64 %24, !3499, !DIExpression(), !3449)
    #dbg_value(i32 0, !3500, !DIExpression(), !3449)
  br label %for.cond, !dbg !3501

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3449
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3449
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3449
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3449
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3449
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3449
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3449
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3449
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3449
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3449
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3449
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3449
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3449
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3449
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3449
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3449
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3449
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3449
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3449
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3449
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3449
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3449
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3449
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3449
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3503
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3449
    #dbg_value(i64 %Asu.0, !3499, !DIExpression(), !3449)
    #dbg_value(i32 %round.0, !3500, !DIExpression(), !3449)
    #dbg_value(i64 %Aba.0, !3451, !DIExpression(), !3449)
    #dbg_value(i64 %Abe.0, !3453, !DIExpression(), !3449)
    #dbg_value(i64 %Abi.0, !3455, !DIExpression(), !3449)
    #dbg_value(i64 %Abo.0, !3457, !DIExpression(), !3449)
    #dbg_value(i64 %Abu.0, !3459, !DIExpression(), !3449)
    #dbg_value(i64 %Aga.0, !3461, !DIExpression(), !3449)
    #dbg_value(i64 %Age.0, !3463, !DIExpression(), !3449)
    #dbg_value(i64 %Agi.0, !3465, !DIExpression(), !3449)
    #dbg_value(i64 %Ago.0, !3467, !DIExpression(), !3449)
    #dbg_value(i64 %Agu.0, !3469, !DIExpression(), !3449)
    #dbg_value(i64 %Aka.0, !3471, !DIExpression(), !3449)
    #dbg_value(i64 %Ake.0, !3473, !DIExpression(), !3449)
    #dbg_value(i64 %Aki.0, !3475, !DIExpression(), !3449)
    #dbg_value(i64 %Ako.0, !3477, !DIExpression(), !3449)
    #dbg_value(i64 %Aku.0, !3479, !DIExpression(), !3449)
    #dbg_value(i64 %Ama.0, !3481, !DIExpression(), !3449)
    #dbg_value(i64 %Ame.0, !3483, !DIExpression(), !3449)
    #dbg_value(i64 %Ami.0, !3485, !DIExpression(), !3449)
    #dbg_value(i64 %Amo.0, !3487, !DIExpression(), !3449)
    #dbg_value(i64 %Amu.0, !3489, !DIExpression(), !3449)
    #dbg_value(i64 %Asa.0, !3491, !DIExpression(), !3449)
    #dbg_value(i64 %Ase.0, !3493, !DIExpression(), !3449)
    #dbg_value(i64 %Asi.0, !3495, !DIExpression(), !3449)
    #dbg_value(i64 %Aso.0, !3497, !DIExpression(), !3449)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3504
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3506

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3512, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3514, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3512, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3514, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 poison, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3542
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3544
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3545
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3546
    #dbg_value(i64 %xor35, !3509, !DIExpression(), !3449)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3547
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3548
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3549
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3550
    #dbg_value(i64 %xor43, !3511, !DIExpression(), !3449)
  %xor56 = call i64 @llvm.fshl.i64(i64 %xor43, i64 %xor43, i64 1), !dbg !3551
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %xor56), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %xor56), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %xor56), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %xor56), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %xor56), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor35, i64 %xor56), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor57 = xor i64 %xor35, %xor56, !dbg !3552
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 %xor57, !3515, !DIExpression(), !3449)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3553
    #dbg_value(i64 %xor203, !3467, !DIExpression(), !3449)
  %xor206 = call i64 @llvm.fshl.i64(i64 %xor203, i64 %xor203, i64 55), !dbg !3554
    #dbg_value(i64 %xor206, !3508, !DIExpression(), !3449)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3555
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3556
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3557
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3558
    #dbg_value(i64 %xor31, !3508, !DIExpression(), !3449)
  %xor44 = call i64 @llvm.fshl.i64(i64 %xor31, i64 %xor31, i64 1), !dbg !3559
    #dbg_value(!DIArgList(i64 %xor43, i64 %xor44), !3512, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %xor44), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %xor44), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %xor44), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %xor44), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor45 = xor i64 %xor43, %xor44, !dbg !3560
    #dbg_value(i64 %xor45, !3512, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3561
    #dbg_value(i64 %xor211, !3481, !DIExpression(), !3449)
  %xor214 = call i64 @llvm.fshl.i64(i64 %xor211, i64 %xor211, i64 41), !dbg !3562
    #dbg_value(i64 %xor214, !3510, !DIExpression(), !3449)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3563
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3564
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3565
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3566
    #dbg_value(i64 %xor39, !3510, !DIExpression(), !3449)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3567
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3568
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3569
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3570
    #dbg_value(i64 %xor27, !3507, !DIExpression(), !3449)
  %xor60 = call i64 @llvm.fshl.i64(i64 %xor27, i64 %xor27, i64 1), !dbg !3571
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %xor60), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %xor60), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %xor60), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %xor60), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor39, i64 %xor60), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %xor60), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor61 = xor i64 %xor39, %xor60, !dbg !3572
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 %xor61, !3516, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3573
    #dbg_value(i64 %xor207, !3479, !DIExpression(), !3449)
  %xor210 = call i64 @llvm.fshl.i64(i64 %xor207, i64 %xor207, i64 39), !dbg !3574
    #dbg_value(i64 %xor210, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %xor210), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not222 = xor i64 %xor210, -1, !dbg !3575
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %not222), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and223 = and i64 %xor214, %not222, !dbg !3576
    #dbg_value(!DIArgList(i64 %xor206, i64 %and223), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor224 = xor i64 %xor206, %and223, !dbg !3577
    #dbg_value(i64 %xor224, !3538, !DIExpression(), !3449)
  %xor52 = call i64 @llvm.fshl.i64(i64 %xor39, i64 %xor39, i64 1), !dbg !3578
    #dbg_value(!DIArgList(i64 %xor31, i64 %xor52), !3514, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %xor52), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %xor52), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %xor52), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %xor52), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %xor52), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor53 = xor i64 %xor31, %xor52, !dbg !3579
    #dbg_value(i64 %xor53, !3514, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3580
    #dbg_value(i64 %xor67, !3475, !DIExpression(), !3449)
  %xor70 = call i64 @llvm.fshl.i64(i64 %xor67, i64 %xor67, i64 43), !dbg !3581
    #dbg_value(i64 %xor70, !3509, !DIExpression(), !3449)
  %xor48 = call i64 @llvm.fshl.i64(i64 %xor35, i64 %xor35, i64 1), !dbg !3582
    #dbg_value(!DIArgList(i64 %xor27, i64 %xor48), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %xor48), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %xor48), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %xor48), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %xor48), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %xor48), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor49 = xor i64 %xor27, %xor48, !dbg !3583
    #dbg_value(i64 %xor49, !3513, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3584
    #dbg_value(i64 %xor63, !3463, !DIExpression(), !3449)
  %xor66 = call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 44), !dbg !3585
    #dbg_value(i64 %xor66, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %xor66), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not = xor i64 %xor66, -1, !dbg !3586
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %not), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and = and i64 %xor70, %not, !dbg !3587
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3588
  %25 = load i64, ptr %arrayidx80, align 8, !dbg !3588
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %25), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %26 = xor i64 %and, %25, !dbg !3589
    #dbg_value(!DIArgList(i64 %26, i64 %Aba.0, i64 %xor45), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3590
    #dbg_value(i64 %xor62, !3451, !DIExpression(), !3449)
    #dbg_value(i64 %xor62, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %26, i64 %xor62), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor81 = xor i64 %26, %xor62, !dbg !3589
    #dbg_value(i64 %xor81, !3517, !DIExpression(), !3449)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3591
    #dbg_value(i64 %xor94, !3457, !DIExpression(), !3449)
  %xor97 = call i64 @llvm.fshl.i64(i64 %xor94, i64 %xor94, i64 28), !dbg !3592
    #dbg_value(i64 %xor97, !3507, !DIExpression(), !3449)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3593
    #dbg_value(i64 %xor102, !3471, !DIExpression(), !3449)
  %xor105 = call i64 @llvm.fshl.i64(i64 %xor102, i64 %xor102, i64 3), !dbg !3594
    #dbg_value(i64 %xor105, !3509, !DIExpression(), !3449)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3595
    #dbg_value(i64 %xor98, !3469, !DIExpression(), !3449)
  %xor101 = call i64 @llvm.fshl.i64(i64 %xor98, i64 %xor98, i64 20), !dbg !3596
    #dbg_value(i64 %xor101, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %xor101), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not114 = xor i64 %xor101, -1, !dbg !3597
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %not114), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and115 = and i64 %xor105, %not114, !dbg !3598
    #dbg_value(!DIArgList(i64 %xor97, i64 %and115), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor116 = xor i64 %xor97, %and115, !dbg !3599
    #dbg_value(i64 %xor116, !3522, !DIExpression(), !3449)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3600
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3601
    #dbg_value(i64 %xor129, !3453, !DIExpression(), !3449)
  %xor132 = call i64 @llvm.fshl.i64(i64 %xor129, i64 %xor129, i64 1), !dbg !3602
    #dbg_value(i64 %xor132, !3507, !DIExpression(), !3449)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3603
    #dbg_value(i64 %xor137, !3477, !DIExpression(), !3449)
  %xor140 = call i64 @llvm.fshl.i64(i64 %xor137, i64 %xor137, i64 25), !dbg !3604
    #dbg_value(i64 %xor140, !3509, !DIExpression(), !3449)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3605
    #dbg_value(i64 %xor133, !3465, !DIExpression(), !3449)
  %xor136 = call i64 @llvm.fshl.i64(i64 %xor133, i64 %xor133, i64 6), !dbg !3606
    #dbg_value(i64 %xor136, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %xor136), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not149 = xor i64 %xor136, -1, !dbg !3607
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %not149), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and150 = and i64 %xor140, %not149, !dbg !3608
    #dbg_value(!DIArgList(i64 %xor132, i64 %and150), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor151 = xor i64 %xor132, %and150, !dbg !3609
    #dbg_value(i64 %xor151, !3527, !DIExpression(), !3449)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3610
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3611
    #dbg_value(i64 %xor164, !3459, !DIExpression(), !3449)
  %xor167 = call i64 @llvm.fshl.i64(i64 %xor164, i64 %xor164, i64 27), !dbg !3612
    #dbg_value(i64 %xor167, !3507, !DIExpression(), !3449)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3613
    #dbg_value(i64 %xor172, !3473, !DIExpression(), !3449)
  %xor175 = call i64 @llvm.fshl.i64(i64 %xor172, i64 %xor172, i64 10), !dbg !3614
    #dbg_value(i64 %xor175, !3509, !DIExpression(), !3449)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3615
    #dbg_value(i64 %xor168, !3461, !DIExpression(), !3449)
  %xor171 = call i64 @llvm.fshl.i64(i64 %xor168, i64 %xor168, i64 36), !dbg !3616
    #dbg_value(i64 %xor171, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %xor171), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not184 = xor i64 %xor171, -1, !dbg !3617
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %not184), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and185 = and i64 %xor175, %not184, !dbg !3618
    #dbg_value(!DIArgList(i64 %xor167, i64 %and185), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor186 = xor i64 %xor167, %and185, !dbg !3619
    #dbg_value(i64 %xor186, !3532, !DIExpression(), !3449)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3620
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3621
    #dbg_value(i64 %xor199, !3455, !DIExpression(), !3449)
  %xor202 = call i64 @llvm.fshl.i64(i64 %xor199, i64 %xor199, i64 62), !dbg !3622
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %xor206), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %xor206), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not219 = xor i64 %xor206, -1, !dbg !3623
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %not219), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %not219), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and220 = and i64 %xor210, %not219, !dbg !3624
    #dbg_value(!DIArgList(i64 %xor202, i64 %and220), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %and220), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor221 = xor i64 %xor202, %and220, !dbg !3625
    #dbg_value(i64 %xor221, !3537, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3626
    #dbg_value(i64 %xor237, !3507, !DIExpression(), !3449)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3627
    #dbg_value(i64 %xor75, !3499, !DIExpression(), !3449)
  %xor78 = call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 14), !dbg !3628
    #dbg_value(i64 %xor78, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %xor62), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3629
    #dbg_value(i64 %xor71, !3487, !DIExpression(), !3449)
  %xor74 = call i64 @llvm.fshl.i64(i64 %xor71, i64 %xor71, i64 21), !dbg !3630
    #dbg_value(i64 %xor74, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %xor74), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor74, i64 %xor70), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor62, i64 %xor78), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not85 = xor i64 %xor74, -1, !dbg !3631
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %not85), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and86 = and i64 %xor78, %not85, !dbg !3632
    #dbg_value(!DIArgList(i64 %xor70, i64 %and86), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor87 = xor i64 %xor70, %and86, !dbg !3633
    #dbg_value(i64 %xor87, !3519, !DIExpression(), !3449)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3634
    #dbg_value(i64 %xor110, !3495, !DIExpression(), !3449)
  %xor113 = call i64 @llvm.fshl.i64(i64 %xor110, i64 %xor110, i64 61), !dbg !3635
    #dbg_value(i64 %xor113, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %xor97), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3636
    #dbg_value(i64 %xor106, !3483, !DIExpression(), !3449)
  %xor109 = call i64 @llvm.fshl.i64(i64 %xor106, i64 %xor106, i64 45), !dbg !3637
    #dbg_value(i64 %xor109, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %xor109), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %xor113), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor109, i64 %xor105), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not120 = xor i64 %xor109, -1, !dbg !3638
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %not120), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and121 = and i64 %xor113, %not120, !dbg !3639
    #dbg_value(!DIArgList(i64 %xor105, i64 %and121), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor122 = xor i64 %xor105, %and121, !dbg !3640
    #dbg_value(i64 %xor122, !3524, !DIExpression(), !3449)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3641
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3642
    #dbg_value(i64 %xor145, !3491, !DIExpression(), !3449)
  %xor148 = call i64 @llvm.fshl.i64(i64 %xor145, i64 %xor145, i64 18), !dbg !3643
    #dbg_value(i64 %xor148, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %xor132), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3644
    #dbg_value(i64 %xor141, !3489, !DIExpression(), !3449)
  %xor144 = call i64 @llvm.fshl.i64(i64 %xor141, i64 %xor141, i64 8), !dbg !3645
    #dbg_value(i64 %xor144, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %xor144), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor144, i64 %xor140), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor132, i64 %xor148), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not155 = xor i64 %xor144, -1, !dbg !3646
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %not155), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and156 = and i64 %xor148, %not155, !dbg !3647
    #dbg_value(!DIArgList(i64 %xor140, i64 %and156), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor157 = xor i64 %xor140, %and156, !dbg !3648
    #dbg_value(i64 %xor157, !3529, !DIExpression(), !3449)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3649
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3650
    #dbg_value(i64 %xor180, !3497, !DIExpression(), !3449)
  %xor183 = call i64 @llvm.fshl.i64(i64 %xor180, i64 %xor180, i64 56), !dbg !3651
    #dbg_value(i64 %xor183, !3511, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %xor167), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3652
    #dbg_value(i64 %xor176, !3485, !DIExpression(), !3449)
  %xor179 = call i64 @llvm.fshl.i64(i64 %xor176, i64 %xor176, i64 15), !dbg !3653
    #dbg_value(i64 %xor179, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %xor179), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor179, i64 %xor175), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor167, i64 %xor183), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %xor70), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %not190 = xor i64 %xor179, -1, !dbg !3654
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %not190), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and191 = and i64 %xor183, %not190, !dbg !3655
    #dbg_value(!DIArgList(i64 %xor175, i64 %and191), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor192 = xor i64 %xor175, %and191, !dbg !3656
    #dbg_value(i64 %xor192, !3534, !DIExpression(), !3449)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3657
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3658
    #dbg_value(i64 %xor215, !3493, !DIExpression(), !3449)
  %xor218 = call i64 @llvm.fshl.i64(i64 %xor215, i64 %xor215, i64 2), !dbg !3659
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %xor214), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %xor202), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor202, i64 %xor218), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %xor214), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %xor113), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %xor62), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not225 = xor i64 %xor214, -1, !dbg !3660
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %not225), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %not225), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and226 = and i64 %xor218, %not225, !dbg !3661
    #dbg_value(!DIArgList(i64 %xor210, i64 %and226), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %and226), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor227 = xor i64 %xor210, %and226, !dbg !3662
    #dbg_value(i64 %xor227, !3539, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3663
    #dbg_value(i64 %xor245, !3509, !DIExpression(), !3449)
  %xor260 = call i64 @llvm.fshl.i64(i64 %xor245, i64 %xor245, i64 1), !dbg !3664
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %xor260), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor237, i64 %xor74, i64 %xor70, i64 %xor260), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor237, i64 %xor109, i64 %xor105, i64 %xor260), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor237, i64 %xor144, i64 %xor140, i64 %xor260), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor237, i64 %xor179, i64 %xor175, i64 %xor260), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor237, i64 %xor260), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor261 = xor i64 %xor237, %xor260, !dbg !3665
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %xor70), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %xor105), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %xor140), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %xor175), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 %xor261, !3513, !DIExpression(), !3449)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3666
    #dbg_value(i64 %xor429, !3538, !DIExpression(), !3449)
  %xor432 = call i64 @llvm.fshl.i64(i64 %xor429, i64 %xor429, i64 2), !dbg !3667
    #dbg_value(i64 %xor432, !3511, !DIExpression(), !3449)
  %not123 = xor i64 %xor113, -1, !dbg !3668
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %not123), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %not123), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and124 = and i64 %xor97, %not123, !dbg !3669
    #dbg_value(!DIArgList(i64 %xor109, i64 %and124), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %and124), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor125 = xor i64 %xor109, %and124, !dbg !3670
    #dbg_value(i64 %xor125, !3525, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %xor78), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not91 = xor i64 %xor62, -1, !dbg !3671
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %not91), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %not91), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and92 = and i64 %xor66, %not91, !dbg !3672
    #dbg_value(!DIArgList(i64 %xor78, i64 %and92), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %and92), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor93 = xor i64 %xor78, %and92, !dbg !3673
    #dbg_value(i64 %xor93, !3521, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not126 = xor i64 %xor97, -1, !dbg !3674
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %not126), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %not126), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and127 = and i64 %xor101, %not126, !dbg !3675
    #dbg_value(!DIArgList(i64 %xor113, i64 %and127), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %and127), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor128 = xor i64 %xor113, %and127, !dbg !3676
    #dbg_value(i64 %xor128, !3526, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor128), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3677
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not161 = xor i64 %xor132, -1, !dbg !3678
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %not161), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %not161), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and162 = and i64 %xor136, %not161, !dbg !3679
    #dbg_value(!DIArgList(i64 %xor148, i64 %and162), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %and162), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor163 = xor i64 %xor148, %and162, !dbg !3680
    #dbg_value(i64 %xor163, !3531, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor163), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3681
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not196 = xor i64 %xor167, -1, !dbg !3682
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %not196), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %not196), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and197 = and i64 %xor171, %not196, !dbg !3683
    #dbg_value(!DIArgList(i64 %xor183, i64 %and197), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %and197), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor198 = xor i64 %xor183, %and197, !dbg !3684
    #dbg_value(i64 %xor198, !3536, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor198), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3685
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %xor202), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not231 = xor i64 %xor202, -1, !dbg !3686
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %not231), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %not231), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %and232 = and i64 %xor206, %not231, !dbg !3687
    #dbg_value(!DIArgList(i64 %xor218, i64 %and232), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %and232), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor233 = xor i64 %xor218, %and232, !dbg !3688
    #dbg_value(i64 %xor233, !3541, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3689
    #dbg_value(i64 %xor253, !3511, !DIExpression(), !3449)
  %xor268 = call i64 @llvm.fshl.i64(i64 %xor253, i64 %xor253, i64 1), !dbg !3690
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %xor268), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor245, i64 %xor62, i64 %xor78, i64 %xor268), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor245, i64 %xor132, i64 %xor148, i64 %xor268), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor245, i64 %xor167, i64 %xor183, i64 %xor268), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor245, i64 %xor202, i64 %xor218, i64 %xor268), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor245, i64 %xor268), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor269 = xor i64 %xor245, %xor268, !dbg !3691
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %xor78), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %xor148), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %xor183), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %xor218), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 %xor269, !3515, !DIExpression(), !3449)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3692
    #dbg_value(i64 %xor417, !3525, !DIExpression(), !3449)
  %xor420 = call i64 @llvm.fshl.i64(i64 %xor417, i64 %xor417, i64 55), !dbg !3693
    #dbg_value(i64 %xor420, !3508, !DIExpression(), !3449)
  %not82 = xor i64 %xor70, -1, !dbg !3694
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %not82), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %not82), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and83 = and i64 %xor74, %not82, !dbg !3695
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %and83), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %and83), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor84 = xor i64 %xor66, %and83, !dbg !3696
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %not117 = xor i64 %xor105, -1, !dbg !3697
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %not117), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %not117), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and118 = and i64 %xor109, %not117, !dbg !3698
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %and118), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %and118), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor119 = xor i64 %xor101, %and118, !dbg !3699
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor119), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3700
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %not152 = xor i64 %xor140, -1, !dbg !3701
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %not152), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %not152), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and153 = and i64 %xor144, %not152, !dbg !3702
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %and153), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %and153), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor154 = xor i64 %xor136, %and153, !dbg !3703
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor154), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3704
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %not187 = xor i64 %xor175, -1, !dbg !3705
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %not187), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %not187), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and188 = and i64 %xor179, %not187, !dbg !3706
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %and188), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %and188), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor189 = xor i64 %xor171, %and188, !dbg !3707
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3708
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3709
    #dbg_value(i64 %xor241, !3508, !DIExpression(), !3449)
  %not88 = xor i64 %xor78, -1, !dbg !3710
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %not88), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %not88), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and89 = and i64 %xor62, %not88, !dbg !3711
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %and89), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %and89), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor90 = xor i64 %xor74, %and89, !dbg !3712
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3713
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not158 = xor i64 %xor148, -1, !dbg !3714
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %not158), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %not158), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and159 = and i64 %xor132, %not158, !dbg !3715
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %and159), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %and159), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor160 = xor i64 %xor144, %and159, !dbg !3716
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor160), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3717
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not193 = xor i64 %xor183, -1, !dbg !3718
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %not193), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %not193), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and194 = and i64 %xor167, %not193, !dbg !3719
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %and194), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %and194), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor195 = xor i64 %xor179, %and194, !dbg !3720
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor195), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3721
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %xor218), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %not228 = xor i64 %xor218, -1, !dbg !3722
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %not228), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %not228), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and229 = and i64 %xor202, %not228, !dbg !3723
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %and229), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %and229), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor230 = xor i64 %xor214, %and229, !dbg !3724
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3510, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3725
    #dbg_value(i64 %xor249, !3510, !DIExpression(), !3449)
  %xor264 = call i64 @llvm.fshl.i64(i64 %xor249, i64 %xor249, i64 1), !dbg !3726
    #dbg_value(!DIArgList(i64 %xor241, i64 %xor264), !3514, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %xor264), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %xor264), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %xor264), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %xor264), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %xor264), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor265 = xor i64 %xor241, %xor264, !dbg !3727
    #dbg_value(i64 %xor265, !3514, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3728
    #dbg_value(i64 %xor413, !3519, !DIExpression(), !3449)
  %xor416 = call i64 @llvm.fshl.i64(i64 %xor413, i64 %xor413, i64 62), !dbg !3729
    #dbg_value(i64 %xor416, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %xor416), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not445 = xor i64 %xor416, -1, !dbg !3730
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %not445), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and446 = and i64 %xor420, %not445, !dbg !3731
    #dbg_value(!DIArgList(i64 %xor432, i64 %and446), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor447 = xor i64 %xor432, %and446, !dbg !3732
    #dbg_value(i64 %xor447, !3499, !DIExpression(), !3449)
  %xor256 = call i64 @llvm.fshl.i64(i64 %xor241, i64 %xor241, i64 1), !dbg !3733
    #dbg_value(!DIArgList(i64 %xor253, i64 %xor256), !3512, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %xor256), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %xor256), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %xor256), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %xor256), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor257 = xor i64 %xor253, %xor256, !dbg !3734
    #dbg_value(i64 %xor257, !3512, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3735
    #dbg_value(i64 %xor425, !3532, !DIExpression(), !3449)
  %xor428 = call i64 @llvm.fshl.i64(i64 %xor425, i64 %xor425, i64 41), !dbg !3736
    #dbg_value(i64 %xor428, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %xor432), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not442 = xor i64 %xor432, -1, !dbg !3737
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %not442), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and443 = and i64 %xor416, %not442, !dbg !3738
    #dbg_value(!DIArgList(i64 %xor428, i64 %and443), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor444 = xor i64 %xor428, %and443, !dbg !3739
    #dbg_value(i64 %xor444, !3497, !DIExpression(), !3449)
  %xor272 = call i64 @llvm.fshl.i64(i64 %xor237, i64 %xor237, i64 1), !dbg !3740
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %xor272), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %xor272), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %xor272), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %xor272), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor249, i64 %xor272), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %xor272), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor273 = xor i64 %xor249, %xor272, !dbg !3741
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(i64 %xor273, !3516, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3742
    #dbg_value(i64 %xor421, !3531, !DIExpression(), !3449)
  %xor424 = call i64 @llvm.fshl.i64(i64 %xor421, i64 %xor421, i64 39), !dbg !3743
    #dbg_value(i64 %xor424, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %xor428), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %xor424), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %xor420), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not439 = xor i64 %xor428, -1, !dbg !3744
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %not439), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and440 = and i64 %xor432, %not439, !dbg !3745
    #dbg_value(!DIArgList(i64 %xor424, i64 %and440), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor441 = xor i64 %xor424, %and440, !dbg !3746
    #dbg_value(i64 %xor441, !3495, !DIExpression(), !3449)
  %not436 = xor i64 %xor424, -1, !dbg !3747
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %not436), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and437 = and i64 %xor428, %not436, !dbg !3748
    #dbg_value(!DIArgList(i64 %xor420, i64 %and437), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor438 = xor i64 %xor420, %and437, !dbg !3749
    #dbg_value(i64 %xor438, !3493, !DIExpression(), !3449)
  %not433 = xor i64 %xor420, -1, !dbg !3750
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %not433), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and434 = and i64 %xor424, %not433, !dbg !3751
    #dbg_value(!DIArgList(i64 %xor416, i64 %and434), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor435 = xor i64 %xor416, %and434, !dbg !3752
    #dbg_value(i64 %xor435, !3491, !DIExpression(), !3449)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3753
    #dbg_value(i64 %xor394, !3540, !DIExpression(), !3449)
  %xor397 = call i64 @llvm.fshl.i64(i64 %xor394, i64 %xor394, i64 56), !dbg !3754
    #dbg_value(i64 %xor397, !3511, !DIExpression(), !3449)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3755
    #dbg_value(i64 %xor382, !3522, !DIExpression(), !3449)
  %xor385 = call i64 @llvm.fshl.i64(i64 %xor382, i64 %xor382, i64 36), !dbg !3756
    #dbg_value(i64 %xor385, !3508, !DIExpression(), !3449)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3757
    #dbg_value(i64 %xor378, !3521, !DIExpression(), !3449)
  %xor381 = call i64 @llvm.fshl.i64(i64 %xor378, i64 %xor378, i64 27), !dbg !3758
    #dbg_value(i64 %xor381, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %xor381), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not410 = xor i64 %xor381, -1, !dbg !3759
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %not410), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and411 = and i64 %xor385, %not410, !dbg !3760
    #dbg_value(!DIArgList(i64 %xor397, i64 %and411), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor412 = xor i64 %xor397, %and411, !dbg !3761
    #dbg_value(i64 %xor412, !3489, !DIExpression(), !3449)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3762
    #dbg_value(i64 %xor390, !3534, !DIExpression(), !3449)
  %xor393 = call i64 @llvm.fshl.i64(i64 %xor390, i64 %xor390, i64 15), !dbg !3763
    #dbg_value(i64 %xor393, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %xor397), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not407 = xor i64 %xor397, -1, !dbg !3764
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %not407), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and408 = and i64 %xor381, %not407, !dbg !3765
    #dbg_value(!DIArgList(i64 %xor393, i64 %and408), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor409 = xor i64 %xor393, %and408, !dbg !3766
    #dbg_value(i64 %xor409, !3487, !DIExpression(), !3449)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3767
    #dbg_value(i64 %xor386, !3528, !DIExpression(), !3449)
  %xor389 = call i64 @llvm.fshl.i64(i64 %xor386, i64 %xor386, i64 10), !dbg !3768
    #dbg_value(i64 %xor389, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %xor393), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %xor389), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %xor385), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not404 = xor i64 %xor393, -1, !dbg !3769
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %not404), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and405 = and i64 %xor397, %not404, !dbg !3770
    #dbg_value(!DIArgList(i64 %xor389, i64 %and405), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor406 = xor i64 %xor389, %and405, !dbg !3771
    #dbg_value(i64 %xor406, !3485, !DIExpression(), !3449)
  %not401 = xor i64 %xor389, -1, !dbg !3772
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %not401), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and402 = and i64 %xor393, %not401, !dbg !3773
    #dbg_value(!DIArgList(i64 %xor385, i64 %and402), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor403 = xor i64 %xor385, %and402, !dbg !3774
    #dbg_value(i64 %xor403, !3483, !DIExpression(), !3449)
  %not398 = xor i64 %xor385, -1, !dbg !3775
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %not398), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and399 = and i64 %xor389, %not398, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor381, i64 %and399), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor400 = xor i64 %xor381, %and399, !dbg !3777
    #dbg_value(i64 %xor400, !3481, !DIExpression(), !3449)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3778
    #dbg_value(i64 %xor359, !3537, !DIExpression(), !3449)
  %xor362 = call i64 @llvm.fshl.i64(i64 %xor359, i64 %xor359, i64 18), !dbg !3779
    #dbg_value(i64 %xor362, !3511, !DIExpression(), !3449)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3780
    #dbg_value(i64 %xor347, !3524, !DIExpression(), !3449)
  %xor350 = call i64 @llvm.fshl.i64(i64 %xor347, i64 %xor347, i64 6), !dbg !3781
    #dbg_value(i64 %xor350, !3508, !DIExpression(), !3449)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3782
    #dbg_value(i64 %xor343, !3518, !DIExpression(), !3449)
  %xor346 = call i64 @llvm.fshl.i64(i64 %xor343, i64 %xor343, i64 1), !dbg !3783
    #dbg_value(i64 %xor346, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %xor346), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not375 = xor i64 %xor346, -1, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %not375), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and376 = and i64 %xor350, %not375, !dbg !3785
    #dbg_value(!DIArgList(i64 %xor362, i64 %and376), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor377 = xor i64 %xor362, %and376, !dbg !3786
    #dbg_value(i64 %xor377, !3479, !DIExpression(), !3449)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3787
    #dbg_value(i64 %xor355, !3536, !DIExpression(), !3449)
  %xor358 = call i64 @llvm.fshl.i64(i64 %xor355, i64 %xor355, i64 8), !dbg !3788
    #dbg_value(i64 %xor358, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %xor362), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not372 = xor i64 %xor362, -1, !dbg !3789
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %not372), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and373 = and i64 %xor346, %not372, !dbg !3790
    #dbg_value(!DIArgList(i64 %xor358, i64 %and373), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor374 = xor i64 %xor358, %and373, !dbg !3791
    #dbg_value(i64 %xor374, !3477, !DIExpression(), !3449)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3792
    #dbg_value(i64 %xor351, !3530, !DIExpression(), !3449)
  %xor354 = call i64 @llvm.fshl.i64(i64 %xor351, i64 %xor351, i64 25), !dbg !3793
    #dbg_value(i64 %xor354, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %xor358), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %xor354), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %xor350), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not369 = xor i64 %xor358, -1, !dbg !3794
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %not369), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and370 = and i64 %xor362, %not369, !dbg !3795
    #dbg_value(!DIArgList(i64 %xor354, i64 %and370), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor371 = xor i64 %xor354, %and370, !dbg !3796
    #dbg_value(i64 %xor371, !3475, !DIExpression(), !3449)
  %not366 = xor i64 %xor354, -1, !dbg !3797
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %not366), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and367 = and i64 %xor358, %not366, !dbg !3798
    #dbg_value(!DIArgList(i64 %xor350, i64 %and367), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor368 = xor i64 %xor350, %and367, !dbg !3799
    #dbg_value(i64 %xor368, !3473, !DIExpression(), !3449)
  %not363 = xor i64 %xor350, -1, !dbg !3800
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %not363), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and364 = and i64 %xor354, %not363, !dbg !3801
    #dbg_value(!DIArgList(i64 %xor346, i64 %and364), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor365 = xor i64 %xor346, %and364, !dbg !3802
    #dbg_value(i64 %xor365, !3471, !DIExpression(), !3449)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3803
    #dbg_value(i64 %xor324, !3539, !DIExpression(), !3449)
  %xor327 = call i64 @llvm.fshl.i64(i64 %xor324, i64 %xor324, i64 61), !dbg !3804
    #dbg_value(i64 %xor327, !3511, !DIExpression(), !3449)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3805
    #dbg_value(i64 %xor312, !3526, !DIExpression(), !3449)
  %xor315 = call i64 @llvm.fshl.i64(i64 %xor312, i64 %xor312, i64 20), !dbg !3806
    #dbg_value(i64 %xor315, !3508, !DIExpression(), !3449)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3807
    #dbg_value(i64 %xor308, !3520, !DIExpression(), !3449)
  %xor311 = call i64 @llvm.fshl.i64(i64 %xor308, i64 %xor308, i64 28), !dbg !3808
    #dbg_value(i64 %xor311, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %xor311), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not340 = xor i64 %xor311, -1, !dbg !3809
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %not340), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and341 = and i64 %xor315, %not340, !dbg !3810
    #dbg_value(!DIArgList(i64 %xor327, i64 %and341), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor342 = xor i64 %xor327, %and341, !dbg !3811
    #dbg_value(i64 %xor342, !3469, !DIExpression(), !3449)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3812
    #dbg_value(i64 %xor320, !3533, !DIExpression(), !3449)
  %xor323 = call i64 @llvm.fshl.i64(i64 %xor320, i64 %xor320, i64 45), !dbg !3813
    #dbg_value(i64 %xor323, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %xor327), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not337 = xor i64 %xor327, -1, !dbg !3814
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %not337), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and338 = and i64 %xor311, %not337, !dbg !3815
    #dbg_value(!DIArgList(i64 %xor323, i64 %and338), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor339 = xor i64 %xor323, %and338, !dbg !3816
    #dbg_value(i64 %xor339, !3467, !DIExpression(), !3449)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3817
    #dbg_value(i64 %xor316, !3527, !DIExpression(), !3449)
  %xor319 = call i64 @llvm.fshl.i64(i64 %xor316, i64 %xor316, i64 3), !dbg !3818
    #dbg_value(i64 %xor319, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %xor323), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %xor319), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %xor315), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not334 = xor i64 %xor323, -1, !dbg !3819
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %not334), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and335 = and i64 %xor327, %not334, !dbg !3820
    #dbg_value(!DIArgList(i64 %xor319, i64 %and335), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor336 = xor i64 %xor319, %and335, !dbg !3821
    #dbg_value(i64 %xor336, !3465, !DIExpression(), !3449)
  %not331 = xor i64 %xor319, -1, !dbg !3822
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %not331), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and332 = and i64 %xor323, %not331, !dbg !3823
    #dbg_value(!DIArgList(i64 %xor315, i64 %and332), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor333 = xor i64 %xor315, %and332, !dbg !3824
    #dbg_value(i64 %xor333, !3463, !DIExpression(), !3449)
  %not328 = xor i64 %xor315, -1, !dbg !3825
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %not328), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and329 = and i64 %xor319, %not328, !dbg !3826
    #dbg_value(!DIArgList(i64 %xor311, i64 %and329), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor330 = xor i64 %xor311, %and329, !dbg !3827
    #dbg_value(i64 %xor330, !3461, !DIExpression(), !3449)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3828
    #dbg_value(i64 %xor287, !3541, !DIExpression(), !3449)
  %xor290 = call i64 @llvm.fshl.i64(i64 %xor287, i64 %xor287, i64 14), !dbg !3829
    #dbg_value(i64 %xor290, !3511, !DIExpression(), !3449)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3830
    #dbg_value(i64 %xor275, !3523, !DIExpression(), !3449)
  %xor278 = call i64 @llvm.fshl.i64(i64 %xor275, i64 %xor275, i64 44), !dbg !3831
    #dbg_value(i64 %xor278, !3508, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor81, i64 %xor257), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3832
    #dbg_value(i64 %xor274, !3517, !DIExpression(), !3449)
    #dbg_value(i64 %xor274, !3507, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor274), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not305 = xor i64 %xor274, -1, !dbg !3833
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %not305), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and306 = and i64 %xor278, %not305, !dbg !3834
    #dbg_value(!DIArgList(i64 %xor290, i64 %and306), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor307 = xor i64 %xor290, %and306, !dbg !3835
    #dbg_value(i64 %xor307, !3459, !DIExpression(), !3449)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3836
    #dbg_value(i64 %xor283, !3535, !DIExpression(), !3449)
  %xor286 = call i64 @llvm.fshl.i64(i64 %xor283, i64 %xor283, i64 21), !dbg !3837
    #dbg_value(i64 %xor286, !3510, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %xor290), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not302 = xor i64 %xor290, -1, !dbg !3838
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %not302), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and303 = and i64 %xor274, %not302, !dbg !3839
    #dbg_value(!DIArgList(i64 %xor286, i64 %and303), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor304 = xor i64 %xor286, %and303, !dbg !3840
    #dbg_value(i64 %xor304, !3457, !DIExpression(), !3449)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3841
    #dbg_value(i64 %xor279, !3529, !DIExpression(), !3449)
  %xor282 = call i64 @llvm.fshl.i64(i64 %xor279, i64 %xor279, i64 43), !dbg !3842
    #dbg_value(i64 %xor282, !3509, !DIExpression(), !3449)
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %xor286), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %xor282), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
    #dbg_value(!DIArgList(i64 %xor274, i64 %xor282, i64 %xor278), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %not299 = xor i64 %xor286, -1, !dbg !3843
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %not299), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and300 = and i64 %xor290, %not299, !dbg !3844
    #dbg_value(!DIArgList(i64 %xor282, i64 %and300), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor301 = xor i64 %xor282, %and300, !dbg !3845
    #dbg_value(i64 %xor301, !3455, !DIExpression(), !3449)
  %not296 = xor i64 %xor282, -1, !dbg !3846
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %not296), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3449)
  %and297 = and i64 %xor286, %not296, !dbg !3847
    #dbg_value(!DIArgList(i64 %xor278, i64 %and297), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %xor298 = xor i64 %xor278, %and297, !dbg !3848
    #dbg_value(i64 %xor298, !3453, !DIExpression(), !3449)
  %add = or disjoint i32 %round.0, 1, !dbg !3849
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3850
  %27 = load i64, ptr %arrayidx294, align 8, !dbg !3850
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %xor278), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %not291 = xor i64 %xor278, -1, !dbg !3851
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %not291), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %and292 = and i64 %xor282, %not291, !dbg !3852
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %and292), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3449)
  %28 = xor i64 %and292, %27, !dbg !3853
  %xor295 = xor i64 %28, %xor274, !dbg !3853
    #dbg_value(i64 %xor295, !3451, !DIExpression(), !3449)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3854
    #dbg_value(i32 %add448, !3500, !DIExpression(), !3449)
  br label %for.cond, !dbg !3855, !llvm.loop !3856

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3449
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3449
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3449
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3449
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3449
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3449
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3449
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3449
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3449
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3449
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3449
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3449
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3449
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3449
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3449
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3449
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3449
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3449
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3449
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3449
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3449
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3449
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3449
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3449
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3449
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3858
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3859
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3860
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3861
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3862
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3863
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3864
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3865
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3866
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3867
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3868
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3869
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3870
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3871
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3872
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3873
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3874
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3875
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3876
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3877
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3878
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3879
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3880
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3881
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3882
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3883
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3884
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3885
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3886
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3887
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3888
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3889
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3890
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3891
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3892
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3893
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3894
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3895
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3896
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3897
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3898
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3899
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3900
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3901
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3902
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3903
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3904
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3905
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3906
  ret void, !dbg !3907
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3908 {
entry:
    #dbg_value(ptr %state, !3909, !DIExpression(), !3910)
  %0 = load ptr, ptr %state, align 4, !dbg !3911
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #7, !dbg !3912
  ret void, !dbg !3913
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3914 {
entry:
    #dbg_value(ptr %s_inc, !3917, !DIExpression(), !3918)
    #dbg_value(i32 %r, !3919, !DIExpression(), !3918)
    #dbg_value(i8 %p, !3920, !DIExpression(), !3918)
  %conv = zext nneg i8 %p to i64, !dbg !3921
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3922
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3922
  %and = shl i64 %0, 3, !dbg !3923
  %mul = and i64 %and, 56, !dbg !3923
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3924
  %shr = lshr i64 %0, 3, !dbg !3925
  %idxprom = trunc i64 %shr to i32, !dbg !3926
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3926
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !3927
  %xor = xor i64 %1, %shl, !dbg !3927
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !3927
  %sub = shl nuw nsw i32 %r, 3, !dbg !3928
  %and3 = add nuw nsw i32 %sub, 56, !dbg !3928
  %mul4 = and i32 %and3, 56, !dbg !3928
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !3929
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !3929
  %sub6 = add nsw i32 %r, -1, !dbg !3930
  %shr7 = lshr i32 %sub6, 3, !dbg !3931
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !3932
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !3933
  %xor9 = xor i64 %2, %shl5, !dbg !3933
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !3933
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3934
  store i64 0, ptr %arrayidx10, align 8, !dbg !3935
  ret void, !dbg !3936
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3937 {
entry:
    #dbg_value(ptr %output, !3940, !DIExpression(), !3941)
    #dbg_value(i32 %outlen, !3942, !DIExpression(), !3941)
    #dbg_value(ptr %state, !3943, !DIExpression(), !3941)
  %0 = load ptr, ptr %state, align 4, !dbg !3944
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #7, !dbg !3945
  ret void, !dbg !3946
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3947 {
entry:
    #dbg_value(ptr %h, !3950, !DIExpression(), !3951)
    #dbg_value(i32 %outlen, !3952, !DIExpression(), !3951)
    #dbg_value(ptr %s_inc, !3953, !DIExpression(), !3951)
    #dbg_value(i32 %r, !3954, !DIExpression(), !3951)
    #dbg_value(i32 0, !3955, !DIExpression(), !3951)
  br label %for.cond, !dbg !3956

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3958
    #dbg_value(i32 %i.0, !3955, !DIExpression(), !3951)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !3959
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !3961

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !3962
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3963
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3963
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !3964
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3965

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !3966
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3968
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !3968
  %sub = sub i64 %conv3, %1, !dbg !3969
  %conv5 = zext i32 %i.0 to i64, !dbg !3970
  %add = add i64 %sub, %conv5, !dbg !3971
  %shr = lshr i64 %add, 3, !dbg !3972
  %idxprom = trunc i64 %shr to i32, !dbg !3973
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3973
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !3973
  %conv7 = zext nneg i32 %r to i64, !dbg !3974
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3975
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3975
  %sub9 = sub i64 %conv7, %3, !dbg !3976
  %conv10 = zext i32 %i.0 to i64, !dbg !3977
  %add11 = add i64 %sub9, %conv10, !dbg !3978
  %and = shl i64 %add11, 3, !dbg !3979
  %mul = and i64 %and, 56, !dbg !3979
  %shr12 = lshr i64 %2, %mul, !dbg !3980
  %conv13 = trunc i64 %shr12 to i8, !dbg !3981
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !3982
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !3983
  %inc = add i32 %i.0, 1, !dbg !3984
    #dbg_value(i32 %inc, !3955, !DIExpression(), !3951)
  br label %for.cond, !dbg !3985, !llvm.loop !3986

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !3958
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !3988
    #dbg_value(ptr %add.ptr, !3950, !DIExpression(), !3951)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !3989
    #dbg_value(i32 %sub15, !3952, !DIExpression(), !3951)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !3990
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3991
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !3992
  %sub18 = sub i64 %4, %conv16, !dbg !3992
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !3992
  br label %while.cond, !dbg !3993

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !3951
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !3951
    #dbg_value(ptr %h.addr.0, !3950, !DIExpression(), !3951)
    #dbg_value(i32 %outlen.addr.0, !3952, !DIExpression(), !3951)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !3994
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !3993

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !3995
    #dbg_value(i32 0, !3955, !DIExpression(), !3951)
  %umin = call i32 @llvm.umin.i32(i32 %outlen.addr.0, i32 %r), !dbg !3997
  br label %for.cond21, !dbg !3997

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !3999
    #dbg_value(i32 %i.1, !3955, !DIExpression(), !3951)
  %exitcond1 = icmp ne i32 %i.1, %umin, !dbg !4000
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4002

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4003
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4005
  %5 = load i64, ptr %arrayidx30, align 8, !dbg !4005
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4006
  %mul32 = and i32 %and31, 56, !dbg !4006
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4007
  %shr33 = lshr i64 %5, %sh_prom, !dbg !4007
  %conv34 = trunc i64 %shr33 to i8, !dbg !4008
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4009
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4010
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4011
    #dbg_value(i32 %inc37, !3955, !DIExpression(), !3951)
  br label %for.cond21, !dbg !4012, !llvm.loop !4013

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !3999
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4015
    #dbg_value(ptr %add.ptr39, !3950, !DIExpression(), !3951)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4016
    #dbg_value(i32 %sub40, !3952, !DIExpression(), !3951)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4017
  %conv42 = zext i32 %sub41 to i64, !dbg !4018
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4019
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4020
  br label %while.cond, !dbg !3993, !llvm.loop !4021

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4023
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4024 {
entry:
    #dbg_value(ptr %dest, !4029, !DIExpression(), !4030)
    #dbg_value(ptr %src, !4031, !DIExpression(), !4030)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4032
  store ptr %call, ptr %dest, align 4, !dbg !4033
  %cmp = icmp eq ptr %call, null, !dbg !4034
  br i1 %cmp, label %if.then, label %if.end, !dbg !4034

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4036
  br label %if.end, !dbg !4038

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4039
  %1 = load ptr, ptr %src, align 4, !dbg !4040
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4041
  ret void, !dbg !4042
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4043 {
entry:
    #dbg_value(ptr %state, !4044, !DIExpression(), !4045)
  %0 = load ptr, ptr %state, align 4, !dbg !4046
  call void @free(ptr noundef %0) #9, !dbg !4047
  ret void, !dbg !4048
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4049 {
entry:
    #dbg_value(ptr %state, !4057, !DIExpression(), !4058)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4059
  store ptr %call, ptr %state, align 4, !dbg !4060
  %cmp = icmp eq ptr %call, null, !dbg !4061
  br i1 %cmp, label %if.then, label %if.end, !dbg !4061

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4063
  br label %if.end, !dbg !4065

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4066
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4067
  ret void, !dbg !4068
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4069 {
entry:
    #dbg_value(ptr %state, !4072, !DIExpression(), !4073)
    #dbg_value(ptr %input, !4074, !DIExpression(), !4073)
    #dbg_value(i32 %inlen, !4075, !DIExpression(), !4073)
  %0 = load ptr, ptr %state, align 4, !dbg !4076
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4077
  ret void, !dbg !4078
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4079 {
entry:
    #dbg_value(ptr %state, !4080, !DIExpression(), !4081)
  %0 = load ptr, ptr %state, align 4, !dbg !4082
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #7, !dbg !4083
  ret void, !dbg !4084
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4085 {
entry:
    #dbg_value(ptr %output, !4088, !DIExpression(), !4089)
    #dbg_value(i32 %outlen, !4090, !DIExpression(), !4089)
    #dbg_value(ptr %state, !4091, !DIExpression(), !4089)
  %0 = load ptr, ptr %state, align 4, !dbg !4092
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #7, !dbg !4093
  ret void, !dbg !4094
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4095 {
entry:
    #dbg_value(ptr %dest, !4100, !DIExpression(), !4101)
    #dbg_value(ptr %src, !4102, !DIExpression(), !4101)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4103
  store ptr %call, ptr %dest, align 4, !dbg !4104
  %cmp = icmp eq ptr %call, null, !dbg !4105
  br i1 %cmp, label %if.then, label %if.end, !dbg !4105

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4107
  br label %if.end, !dbg !4109

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4110
  %1 = load ptr, ptr %src, align 4, !dbg !4111
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4112
  ret void, !dbg !4113
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4114 {
entry:
    #dbg_value(ptr %state, !4115, !DIExpression(), !4116)
  %0 = load ptr, ptr %state, align 4, !dbg !4117
  call void @free(ptr noundef %0) #9, !dbg !4118
  ret void, !dbg !4119
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4120 {
entry:
    #dbg_value(ptr %state, !4128, !DIExpression(), !4129)
    #dbg_value(ptr %input, !4130, !DIExpression(), !4129)
    #dbg_value(i32 %inlen, !4131, !DIExpression(), !4129)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4132
  store ptr %call, ptr %state, align 4, !dbg !4133
  %cmp = icmp eq ptr %call, null, !dbg !4134
  br i1 %cmp, label %if.then, label %if.end, !dbg !4134

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4136
  br label %if.end, !dbg !4138

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4139
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4140
  ret void, !dbg !4141
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4142 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4145, !DIExpression(), !4146)
    #dbg_value(i32 %r, !4147, !DIExpression(), !4146)
    #dbg_value(ptr %m, !4148, !DIExpression(), !4146)
    #dbg_value(i32 %mlen, !4149, !DIExpression(), !4146)
    #dbg_value(i8 %p, !4150, !DIExpression(), !4146)
    #dbg_declare(ptr %t, !4151, !DIExpression(), !4155)
    #dbg_value(i32 0, !4156, !DIExpression(), !4146)
  br label %for.cond, !dbg !4157

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4159
    #dbg_value(i32 %i.0, !4156, !DIExpression(), !4146)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4160
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4162

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4163
  br label %while.cond, !dbg !4163

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4164
  store i64 0, ptr %arrayidx, align 8, !dbg !4166
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4167
    #dbg_value(i32 %inc, !4156, !DIExpression(), !4146)
  br label %for.cond, !dbg !4168, !llvm.loop !4169

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4149, !DIExpression(), !4146)
    #dbg_value(ptr %m.addr.0, !4148, !DIExpression(), !4146)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4171
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4163

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4172

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4175

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4177
    #dbg_value(i32 %i.1, !4156, !DIExpression(), !4146)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4178
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4172

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4180
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4182
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #7, !dbg !4183
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4184
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4185
  %xor = xor i64 %1, %call, !dbg !4185
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4185
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4186
    #dbg_value(i32 %inc7, !4156, !DIExpression(), !4146)
  br label %for.cond2, !dbg !4187, !llvm.loop !4188

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4190
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4191
    #dbg_value(i32 %sub, !4149, !DIExpression(), !4146)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4192
    #dbg_value(ptr %add.ptr9, !4148, !DIExpression(), !4146)
  br label %while.cond, !dbg !4163, !llvm.loop !4193

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4195
    #dbg_value(i32 %i.2, !4156, !DIExpression(), !4146)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4196
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4175

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4198

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4200
  store i8 0, ptr %arrayidx13, align 1, !dbg !4202
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4203
    #dbg_value(i32 %inc15, !4156, !DIExpression(), !4146)
  br label %for.cond10, !dbg !4204, !llvm.loop !4205

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4207
    #dbg_value(i32 %i.3, !4156, !DIExpression(), !4146)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4208
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4198

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4210
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4210
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4212
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4213
  %inc23 = add i32 %i.3, 1, !dbg !4214
    #dbg_value(i32 %inc23, !4156, !DIExpression(), !4146)
  br label %for.cond17, !dbg !4215, !llvm.loop !4216

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4207
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4218
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4219
  %sub26 = add nsw i32 %r, -1, !dbg !4220
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4221
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4222
  %4 = or i8 %3, -128, !dbg !4222
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4222
    #dbg_value(i32 0, !4156, !DIExpression(), !4146)
  br label %for.cond29, !dbg !4223

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4225
    #dbg_value(i32 %i.4, !4156, !DIExpression(), !4146)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4226
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4228

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4229
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4231
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #7, !dbg !4232
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4233
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4234
  %xor38 = xor i64 %5, %call36, !dbg !4234
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4234
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4235
    #dbg_value(i32 %inc40, !4156, !DIExpression(), !4146)
  br label %for.cond29, !dbg !4236, !llvm.loop !4237

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4239
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4240 {
entry:
    #dbg_value(ptr %x, !4243, !DIExpression(), !4244)
    #dbg_value(i64 0, !4245, !DIExpression(), !4244)
    #dbg_value(i32 0, !4246, !DIExpression(), !4248)
  br label %for.cond, !dbg !4249

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4244
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4250
    #dbg_value(i32 %i.0, !4246, !DIExpression(), !4248)
    #dbg_value(i64 %r.0, !4245, !DIExpression(), !4244)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4251
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4253

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4245, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4244)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4254
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4254
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4245, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4244)
  %conv = zext i8 %0 to i64, !dbg !4256
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4245, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4244)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4257
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4245, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4244)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4258
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4245, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4244)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4258
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4245, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4244)
  %or = or i64 %r.0, %shl, !dbg !4259
    #dbg_value(i64 %or, !4245, !DIExpression(), !4244)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4260
    #dbg_value(i32 %inc, !4246, !DIExpression(), !4248)
  br label %for.cond, !dbg !4261, !llvm.loop !4262

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4244
  ret i64 %r.0.lcssa, !dbg !4264
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4265 {
entry:
    #dbg_value(ptr %output, !4268, !DIExpression(), !4269)
    #dbg_value(i32 %nblocks, !4270, !DIExpression(), !4269)
    #dbg_value(ptr %state, !4271, !DIExpression(), !4269)
  %0 = load ptr, ptr %state, align 4, !dbg !4272
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #7, !dbg !4273
  ret void, !dbg !4274
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4275 {
entry:
    #dbg_value(ptr %h, !4276, !DIExpression(), !4277)
    #dbg_value(i32 %nblocks, !4278, !DIExpression(), !4277)
    #dbg_value(ptr %s, !4279, !DIExpression(), !4277)
    #dbg_value(i32 %r, !4280, !DIExpression(), !4277)
  %0 = lshr i32 %r, 3, !dbg !4281
  br label %while.cond, !dbg !4281

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4276, !DIExpression(), !4277)
    #dbg_value(i32 %nblocks.addr.0, !4278, !DIExpression(), !4277)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4282
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4281

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4283
    #dbg_value(i32 0, !4285, !DIExpression(), !4287)
  br label %for.cond, !dbg !4288

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4289
    #dbg_value(i32 %i.0, !4285, !DIExpression(), !4287)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4290
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4292

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4293
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4295
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4296
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4296
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #7, !dbg !4297
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4298
    #dbg_value(i32 %inc, !4285, !DIExpression(), !4287)
  br label %for.cond, !dbg !4299, !llvm.loop !4300

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4302
    #dbg_value(ptr %add.ptr2, !4276, !DIExpression(), !4277)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4303
    #dbg_value(i32 %dec, !4278, !DIExpression(), !4277)
  br label %while.cond, !dbg !4281, !llvm.loop !4304

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4306
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4307 {
entry:
    #dbg_value(ptr %x, !4310, !DIExpression(), !4311)
    #dbg_value(i64 %u, !4312, !DIExpression(), !4311)
    #dbg_value(i32 0, !4313, !DIExpression(), !4315)
  br label %for.cond, !dbg !4316

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4317
    #dbg_value(i32 %i.0, !4313, !DIExpression(), !4315)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4318
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4320

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4321
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4323
  %shr = lshr i64 %u, %sh_prom, !dbg !4323
  %conv = trunc i64 %shr to i8, !dbg !4324
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4325
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4326
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4327
    #dbg_value(i32 %inc, !4313, !DIExpression(), !4315)
  br label %for.cond, !dbg !4328, !llvm.loop !4329

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4331
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4332 {
entry:
    #dbg_value(ptr %dest, !4337, !DIExpression(), !4338)
    #dbg_value(ptr %src, !4339, !DIExpression(), !4338)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4340
  store ptr %call, ptr %dest, align 4, !dbg !4341
  %cmp = icmp eq ptr %call, null, !dbg !4342
  br i1 %cmp, label %if.then, label %if.end, !dbg !4342

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4344
  br label %if.end, !dbg !4346

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4347
  %1 = load ptr, ptr %src, align 4, !dbg !4348
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4349
  ret void, !dbg !4350
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4351 {
entry:
    #dbg_value(ptr %state, !4354, !DIExpression(), !4355)
  %0 = load ptr, ptr %state, align 4, !dbg !4356
  call void @free(ptr noundef %0) #9, !dbg !4357
  ret void, !dbg !4358
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4359 {
entry:
    #dbg_value(ptr %state, !4367, !DIExpression(), !4368)
    #dbg_value(ptr %input, !4369, !DIExpression(), !4368)
    #dbg_value(i32 %inlen, !4370, !DIExpression(), !4368)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4371
  store ptr %call, ptr %state, align 4, !dbg !4372
  %cmp = icmp eq ptr %call, null, !dbg !4373
  br i1 %cmp, label %if.then, label %if.end, !dbg !4373

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4375
  br label %if.end, !dbg !4377

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4378
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4379
  ret void, !dbg !4380
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4381 {
entry:
    #dbg_value(ptr %output, !4384, !DIExpression(), !4385)
    #dbg_value(i32 %nblocks, !4386, !DIExpression(), !4385)
    #dbg_value(ptr %state, !4387, !DIExpression(), !4385)
  %0 = load ptr, ptr %state, align 4, !dbg !4388
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #7, !dbg !4389
  ret void, !dbg !4390
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4391 {
entry:
    #dbg_value(ptr %dest, !4396, !DIExpression(), !4397)
    #dbg_value(ptr %src, !4398, !DIExpression(), !4397)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4399
  store ptr %call, ptr %dest, align 4, !dbg !4400
  %cmp = icmp eq ptr %call, null, !dbg !4401
  br i1 %cmp, label %if.then, label %if.end, !dbg !4401

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4403
  br label %if.end, !dbg !4405

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4406
  %1 = load ptr, ptr %src, align 4, !dbg !4407
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4408
  ret void, !dbg !4409
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4410 {
entry:
    #dbg_value(ptr %state, !4413, !DIExpression(), !4414)
  %0 = load ptr, ptr %state, align 4, !dbg !4415
  call void @free(ptr noundef %0) #9, !dbg !4416
  ret void, !dbg !4417
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4418 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4421, !DIExpression(), !4422)
    #dbg_value(i32 %outlen, !4423, !DIExpression(), !4422)
    #dbg_value(ptr %input, !4424, !DIExpression(), !4422)
    #dbg_value(i32 %inlen, !4425, !DIExpression(), !4422)
  %div = udiv i32 %outlen, 168, !dbg !4426
    #dbg_value(i32 %div, !4427, !DIExpression(), !4422)
    #dbg_declare(ptr %t, !4428, !DIExpression(), !4432)
    #dbg_declare(ptr %s, !4433, !DIExpression(), !4434)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4435
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4436
  %mul = mul nuw i32 %div, 168, !dbg !4437
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4438
    #dbg_value(ptr %add.ptr, !4421, !DIExpression(), !4422)
  %mul1.neg = mul i32 %div, -168, !dbg !4439
  %sub = add i32 %mul1.neg, %outlen, !dbg !4440
    #dbg_value(i32 %sub, !4423, !DIExpression(), !4422)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4441
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4441

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4443
    #dbg_value(i32 0, !4445, !DIExpression(), !4447)
  br label %for.cond, !dbg !4448

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4449
    #dbg_value(i32 %i.0, !4445, !DIExpression(), !4447)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4450
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4452

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4453
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4453
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4455
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4456
  %inc = add i32 %i.0, 1, !dbg !4457
    #dbg_value(i32 %inc, !4445, !DIExpression(), !4447)
  br label %for.cond, !dbg !4458, !llvm.loop !4459

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4461

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #7, !dbg !4461
  ret void, !dbg !4462
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4463 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4464, !DIExpression(), !4465)
    #dbg_value(i32 %outlen, !4466, !DIExpression(), !4465)
    #dbg_value(ptr %input, !4467, !DIExpression(), !4465)
    #dbg_value(i32 %inlen, !4468, !DIExpression(), !4465)
  %div = udiv i32 %outlen, 136, !dbg !4469
    #dbg_value(i32 %div, !4470, !DIExpression(), !4465)
    #dbg_declare(ptr %t, !4471, !DIExpression(), !4475)
    #dbg_declare(ptr %s, !4476, !DIExpression(), !4477)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4478
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4479
  %mul = mul nuw i32 %div, 136, !dbg !4480
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4481
    #dbg_value(ptr %add.ptr, !4464, !DIExpression(), !4465)
  %mul1.neg = mul i32 %div, -136, !dbg !4482
  %sub = add i32 %mul1.neg, %outlen, !dbg !4483
    #dbg_value(i32 %sub, !4466, !DIExpression(), !4465)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4484
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4484

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4486
    #dbg_value(i32 0, !4488, !DIExpression(), !4490)
  br label %for.cond, !dbg !4491

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4492
    #dbg_value(i32 %i.0, !4488, !DIExpression(), !4490)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4493
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4495

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4496
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4496
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4498
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4499
  %inc = add i32 %i.0, 1, !dbg !4500
    #dbg_value(i32 %inc, !4488, !DIExpression(), !4490)
  br label %for.cond, !dbg !4501, !llvm.loop !4502

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4504

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #7, !dbg !4504
  ret void, !dbg !4505
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4506 {
entry:
    #dbg_value(ptr %state, !4514, !DIExpression(), !4515)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4516
  store ptr %call, ptr %state, align 4, !dbg !4517
  %cmp = icmp eq ptr %call, null, !dbg !4518
  br i1 %cmp, label %if.then, label %if.end, !dbg !4518

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4520
  br label %if.end, !dbg !4522

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4523
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4524
  ret void, !dbg !4525
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4526 {
entry:
    #dbg_value(ptr %dest, !4531, !DIExpression(), !4532)
    #dbg_value(ptr %src, !4533, !DIExpression(), !4532)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4534
  store ptr %call, ptr %dest, align 4, !dbg !4535
  %cmp = icmp eq ptr %call, null, !dbg !4536
  br i1 %cmp, label %if.then, label %if.end, !dbg !4536

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4538
  br label %if.end, !dbg !4540

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4541
  %1 = load ptr, ptr %src, align 4, !dbg !4542
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4543
  ret void, !dbg !4544
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4545 {
entry:
    #dbg_value(ptr %state, !4546, !DIExpression(), !4547)
  %0 = load ptr, ptr %state, align 4, !dbg !4548
  call void @free(ptr noundef %0) #9, !dbg !4549
  ret void, !dbg !4550
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4551 {
entry:
    #dbg_value(ptr %state, !4554, !DIExpression(), !4555)
    #dbg_value(ptr %input, !4556, !DIExpression(), !4555)
    #dbg_value(i32 %inlen, !4557, !DIExpression(), !4555)
  %0 = load ptr, ptr %state, align 4, !dbg !4558
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4559
  ret void, !dbg !4560
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4561 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4564, !DIExpression(), !4565)
    #dbg_value(ptr %state, !4566, !DIExpression(), !4565)
    #dbg_declare(ptr %t, !4567, !DIExpression(), !4568)
  %0 = load ptr, ptr %state, align 4, !dbg !4569
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #7, !dbg !4570
  %1 = load ptr, ptr %state, align 4, !dbg !4571
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #7, !dbg !4572
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4573
    #dbg_value(i32 0, !4574, !DIExpression(), !4576)
  br label %for.cond, !dbg !4577

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4578
    #dbg_value(i32 %i.0, !4574, !DIExpression(), !4576)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4579
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4581

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4582
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4582
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4584
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4585
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4586
    #dbg_value(i32 %inc, !4574, !DIExpression(), !4576)
  br label %for.cond, !dbg !4587, !llvm.loop !4588

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4590
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4591 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4594, !DIExpression(), !4595)
    #dbg_value(ptr %input, !4596, !DIExpression(), !4595)
    #dbg_value(i32 %inlen, !4597, !DIExpression(), !4595)
    #dbg_declare(ptr %s, !4598, !DIExpression(), !4602)
    #dbg_declare(ptr %t, !4603, !DIExpression(), !4604)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4605
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #7, !dbg !4606
    #dbg_value(i32 0, !4607, !DIExpression(), !4609)
  br label %for.cond, !dbg !4610

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4611
    #dbg_value(i32 %i.0, !4607, !DIExpression(), !4609)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4612
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4614

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4615
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4615
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4617
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4618
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4619
    #dbg_value(i32 %inc, !4607, !DIExpression(), !4609)
  br label %for.cond, !dbg !4620, !llvm.loop !4621

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4623
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4624 {
entry:
    #dbg_value(ptr %state, !4632, !DIExpression(), !4633)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4634
  store ptr %call, ptr %state, align 4, !dbg !4635
  %cmp = icmp eq ptr %call, null, !dbg !4636
  br i1 %cmp, label %if.then, label %if.end, !dbg !4636

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4638
  br label %if.end, !dbg !4640

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4641
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4642
  ret void, !dbg !4643
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4644 {
entry:
    #dbg_value(ptr %dest, !4649, !DIExpression(), !4650)
    #dbg_value(ptr %src, !4651, !DIExpression(), !4650)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4652
  store ptr %call, ptr %dest, align 4, !dbg !4653
  %cmp = icmp eq ptr %call, null, !dbg !4654
  br i1 %cmp, label %if.then, label %if.end, !dbg !4654

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4656
  br label %if.end, !dbg !4658

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4659
  %1 = load ptr, ptr %src, align 4, !dbg !4660
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4661
  ret void, !dbg !4662
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4663 {
entry:
    #dbg_value(ptr %state, !4666, !DIExpression(), !4667)
    #dbg_value(ptr %input, !4668, !DIExpression(), !4667)
    #dbg_value(i32 %inlen, !4669, !DIExpression(), !4667)
  %0 = load ptr, ptr %state, align 4, !dbg !4670
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4671
  ret void, !dbg !4672
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4673 {
entry:
    #dbg_value(ptr %state, !4674, !DIExpression(), !4675)
  %0 = load ptr, ptr %state, align 4, !dbg !4676
  call void @free(ptr noundef %0) #9, !dbg !4677
  ret void, !dbg !4678
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4679 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4682, !DIExpression(), !4683)
    #dbg_value(ptr %state, !4684, !DIExpression(), !4683)
    #dbg_declare(ptr %t, !4685, !DIExpression(), !4687)
  %0 = load ptr, ptr %state, align 4, !dbg !4688
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #7, !dbg !4689
  %1 = load ptr, ptr %state, align 4, !dbg !4690
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #7, !dbg !4691
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4692
    #dbg_value(i32 0, !4693, !DIExpression(), !4695)
  br label %for.cond, !dbg !4696

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4697
    #dbg_value(i32 %i.0, !4693, !DIExpression(), !4695)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4698
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4700

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4701
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4701
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4703
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4704
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4705
    #dbg_value(i32 %inc, !4693, !DIExpression(), !4695)
  br label %for.cond, !dbg !4706, !llvm.loop !4707

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4709
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4710 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4711, !DIExpression(), !4712)
    #dbg_value(ptr %input, !4713, !DIExpression(), !4712)
    #dbg_value(i32 %inlen, !4714, !DIExpression(), !4712)
    #dbg_declare(ptr %s, !4715, !DIExpression(), !4716)
    #dbg_declare(ptr %t, !4717, !DIExpression(), !4718)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4719
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #7, !dbg !4720
    #dbg_value(i32 0, !4721, !DIExpression(), !4723)
  br label %for.cond, !dbg !4724

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4725
    #dbg_value(i32 %i.0, !4721, !DIExpression(), !4723)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4726
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4728

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4729
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4729
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4731
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4732
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4733
    #dbg_value(i32 %inc, !4721, !DIExpression(), !4723)
  br label %for.cond, !dbg !4734, !llvm.loop !4735

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4737
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4738 {
entry:
    #dbg_value(ptr %state, !4746, !DIExpression(), !4747)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4748
  store ptr %call, ptr %state, align 4, !dbg !4749
  %cmp = icmp eq ptr %call, null, !dbg !4750
  br i1 %cmp, label %if.then, label %if.end, !dbg !4750

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4752
  br label %if.end, !dbg !4754

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4755
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4756
  ret void, !dbg !4757
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4758 {
entry:
    #dbg_value(ptr %dest, !4763, !DIExpression(), !4764)
    #dbg_value(ptr %src, !4765, !DIExpression(), !4764)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4766
  store ptr %call, ptr %dest, align 4, !dbg !4767
  %cmp = icmp eq ptr %call, null, !dbg !4768
  br i1 %cmp, label %if.then, label %if.end, !dbg !4768

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4770
  br label %if.end, !dbg !4772

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4773
  %1 = load ptr, ptr %src, align 4, !dbg !4774
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4775
  ret void, !dbg !4776
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4777 {
entry:
    #dbg_value(ptr %state, !4780, !DIExpression(), !4781)
    #dbg_value(ptr %input, !4782, !DIExpression(), !4781)
    #dbg_value(i32 %inlen, !4783, !DIExpression(), !4781)
  %0 = load ptr, ptr %state, align 4, !dbg !4784
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4785
  ret void, !dbg !4786
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4787 {
entry:
    #dbg_value(ptr %state, !4788, !DIExpression(), !4789)
  %0 = load ptr, ptr %state, align 4, !dbg !4790
  call void @free(ptr noundef %0) #9, !dbg !4791
  ret void, !dbg !4792
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4793 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4796, !DIExpression(), !4797)
    #dbg_value(ptr %state, !4798, !DIExpression(), !4797)
    #dbg_declare(ptr %t, !4799, !DIExpression(), !4803)
  %0 = load ptr, ptr %state, align 4, !dbg !4804
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #7, !dbg !4805
  %1 = load ptr, ptr %state, align 4, !dbg !4806
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #7, !dbg !4807
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4808
    #dbg_value(i32 0, !4809, !DIExpression(), !4811)
  br label %for.cond, !dbg !4812

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4813
    #dbg_value(i32 %i.0, !4809, !DIExpression(), !4811)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4814
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4816

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4817
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4817
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4819
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4820
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4821
    #dbg_value(i32 %inc, !4809, !DIExpression(), !4811)
  br label %for.cond, !dbg !4822, !llvm.loop !4823

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4825
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4826 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4827, !DIExpression(), !4828)
    #dbg_value(ptr %input, !4829, !DIExpression(), !4828)
    #dbg_value(i32 %inlen, !4830, !DIExpression(), !4828)
    #dbg_declare(ptr %s, !4831, !DIExpression(), !4832)
    #dbg_declare(ptr %t, !4833, !DIExpression(), !4834)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4835
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #7, !dbg !4836
    #dbg_value(i32 0, !4837, !DIExpression(), !4839)
  br label %for.cond, !dbg !4840

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4841
    #dbg_value(i32 %i.0, !4837, !DIExpression(), !4839)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4842
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4844

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4845
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4845
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4847
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4848
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4849
    #dbg_value(i32 %inc, !4837, !DIExpression(), !4839)
  br label %for.cond, !dbg !4850, !llvm.loop !4851

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4853
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4854 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4862, !DIExpression(), !4863)
    #dbg_value(ptr %key, !4864, !DIExpression(), !4863)
    #dbg_declare(ptr %skey, !4865, !DIExpression(), !4869)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #10, !dbg !4870
  store ptr %call, ptr %r, align 4, !dbg !4871
  %cmp = icmp eq ptr %call, null, !dbg !4872
  br i1 %cmp, label %if.then, label %if.end, !dbg !4872

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4874
  br label %if.end, !dbg !4876

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #7, !dbg !4877
  %0 = load ptr, ptr %r, align 4, !dbg !4878
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #7, !dbg !4879
  ret void, !dbg !4880
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4881 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4884, !DIExpression(), !4885)
    #dbg_value(ptr %key, !4886, !DIExpression(), !4885)
    #dbg_value(i32 %key_len, !4887, !DIExpression(), !4885)
    #dbg_declare(ptr %skey, !4888, !DIExpression(), !4892)
  %0 = and i32 %key_len, 60, !dbg !4893
    #dbg_value(i32 %key_len, !4894, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4885)
  %shr1 = lshr i32 %key_len, 2, !dbg !4895
    #dbg_value(i32 %shr1, !4896, !DIExpression(), !4885)
  %shl = add nuw nsw i32 %0, 28, !dbg !4893
    #dbg_value(i32 %shl, !4897, !DIExpression(), !4885)
  %shr3 = lshr i32 %key_len, 2, !dbg !4898
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #7, !dbg !4899
  %shr4 = lshr i32 %key_len, 2, !dbg !4900
  %sub5 = add nsw i32 %shr4, -1, !dbg !4901
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4902
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4902
    #dbg_value(i32 %1, !4903, !DIExpression(), !4885)
    #dbg_value(i32 %shr1, !4904, !DIExpression(), !4885)
    #dbg_value(i32 0, !4905, !DIExpression(), !4885)
    #dbg_value(i32 0, !4906, !DIExpression(), !4885)
  br label %for.cond, !dbg !4907

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4909
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4910
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4910
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4885
    #dbg_value(i32 %tmp.0, !4903, !DIExpression(), !4885)
    #dbg_value(i32 %k.0, !4906, !DIExpression(), !4885)
    #dbg_value(i32 %j.0, !4905, !DIExpression(), !4885)
    #dbg_value(i32 %i.0, !4904, !DIExpression(), !4885)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4911
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4913

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4914

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4916
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4916

if.then:                                          ; preds = %for.body
  %or = call i32 @llvm.fshl.i32(i32 %tmp.0, i32 %tmp.0, i32 24), !dbg !4919
    #dbg_value(i32 %or, !4903, !DIExpression(), !4885)
  %call = call fastcc i32 @sub_word(i32 noundef %or) #7, !dbg !4921
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4922
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !4922
  %conv = zext i8 %2 to i32, !dbg !4922
  %xor = xor i32 %call, %conv, !dbg !4923
    #dbg_value(i32 %xor, !4903, !DIExpression(), !4885)
  br label %if.end16, !dbg !4924

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4925
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !4927
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !4927

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #7, !dbg !4928
    #dbg_value(i32 %call15, !4903, !DIExpression(), !4885)
  br label %if.end16, !dbg !4930

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !4931
    #dbg_value(i32 %tmp.2, !4903, !DIExpression(), !4885)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !4932
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !4933
  %3 = load i32, ptr %arrayidx18, align 4, !dbg !4933
  %xor19 = xor i32 %tmp.2, %3, !dbg !4934
    #dbg_value(i32 %xor19, !4903, !DIExpression(), !4885)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !4935
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !4936
  %inc = add i32 %j.0, 1, !dbg !4937
    #dbg_value(i32 %inc, !4905, !DIExpression(), !4885)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !4939
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !4939
  %inc24 = zext i1 %cmp21 to i32, !dbg !4939
  %spec.select1 = add i32 %k.0, %inc24, !dbg !4939
    #dbg_value(i32 %spec.select1, !4906, !DIExpression(), !4885)
    #dbg_value(i32 %spec.select, !4905, !DIExpression(), !4885)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !4940
    #dbg_value(i32 %inc26, !4904, !DIExpression(), !4885)
  br label %for.cond, !dbg !4941, !llvm.loop !4942

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4944
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4944
    #dbg_value(i32 %j.2, !4905, !DIExpression(), !4885)
    #dbg_value(i32 %i.1, !4904, !DIExpression(), !4885)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !4945
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4914

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !4947, !DIExpression(), !4952)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4953
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !4954
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #7, !dbg !4955
  %4 = load i64, ptr %q, align 8, !dbg !4956
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4957
  store i64 %4, ptr %arrayidx35, align 8, !dbg !4958
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4959
  store i64 %4, ptr %arrayidx37, align 8, !dbg !4960
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4961
  store i64 %4, ptr %arrayidx39, align 8, !dbg !4962
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4963
  %5 = load i64, ptr %arrayidx40, align 8, !dbg !4963
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4964
  store i64 %5, ptr %arrayidx41, align 8, !dbg !4965
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !4966
  store i64 %5, ptr %arrayidx43, align 8, !dbg !4967
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !4968
  store i64 %5, ptr %arrayidx45, align 8, !dbg !4969
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !4970
  %6 = load i64, ptr %q, align 8, !dbg !4971
  %and = and i64 %6, 1229782938247303441, !dbg !4972
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4973
  %7 = load i64, ptr %arrayidx48, align 8, !dbg !4973
  %and49 = and i64 %7, 2459565876494606882, !dbg !4974
  %or50 = or disjoint i64 %and, %and49, !dbg !4975
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4976
  %8 = load i64, ptr %arrayidx51, align 8, !dbg !4976
  %and52 = and i64 %8, 4919131752989213764, !dbg !4977
  %or53 = or disjoint i64 %or50, %and52, !dbg !4978
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4979
  %9 = load i64, ptr %arrayidx54, align 8, !dbg !4979
  %and55 = and i64 %9, -8608480567731124088, !dbg !4980
  %or56 = or disjoint i64 %or53, %and55, !dbg !4981
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !4982
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !4983
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4984
  %10 = load i64, ptr %arrayidx59, align 8, !dbg !4984
  %and60 = and i64 %10, 1229782938247303441, !dbg !4985
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4986
  %11 = load i64, ptr %arrayidx61, align 8, !dbg !4986
  %and62 = and i64 %11, 2459565876494606882, !dbg !4987
  %or63 = or disjoint i64 %and60, %and62, !dbg !4988
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !4989
  %12 = load i64, ptr %arrayidx64, align 8, !dbg !4989
  %and65 = and i64 %12, 4919131752989213764, !dbg !4990
  %or66 = or disjoint i64 %or63, %and65, !dbg !4991
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !4992
  %13 = load i64, ptr %arrayidx67, align 8, !dbg !4992
  %and68 = and i64 %13, -8608480567731124088, !dbg !4993
  %or69 = or disjoint i64 %or66, %and68, !dbg !4994
  %add70 = or disjoint i32 %j.2, 1, !dbg !4995
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !4996
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !4997
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !4998
    #dbg_value(i32 %add73, !4904, !DIExpression(), !4885)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !4999
    #dbg_value(i32 %add74, !4905, !DIExpression(), !4885)
  br label %for.cond27, !dbg !5000, !llvm.loop !5001

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5003
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5004 {
entry:
    #dbg_value(ptr %skey, !5007, !DIExpression(), !5008)
    #dbg_value(ptr %comp_skey, !5009, !DIExpression(), !5008)
    #dbg_value(i32 %nrounds, !5010, !DIExpression(), !5008)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5011
  %shl = add nuw nsw i32 %add, 2, !dbg !5011
    #dbg_value(i32 %shl, !5012, !DIExpression(), !5008)
    #dbg_value(i32 0, !5013, !DIExpression(), !5008)
    #dbg_value(i32 0, !5014, !DIExpression(), !5008)
  br label %for.cond, !dbg !5015

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5017
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5017
    #dbg_value(i32 %v.0, !5014, !DIExpression(), !5008)
    #dbg_value(i32 %u.0, !5013, !DIExpression(), !5008)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5018
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5020

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5021
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5021
    #dbg_value(i64 %0, !5023, !DIExpression(), !5024)
    #dbg_value(i64 %0, !5025, !DIExpression(), !5024)
    #dbg_value(i64 %0, !5026, !DIExpression(), !5024)
    #dbg_value(i64 %0, !5027, !DIExpression(), !5024)
  %and = and i64 %0, 1229782938247303441, !dbg !5028
    #dbg_value(i64 %and, !5027, !DIExpression(), !5024)
    #dbg_value(i64 %0, !5026, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5024)
    #dbg_value(i64 %0, !5025, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5024)
    #dbg_value(i64 %0, !5023, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5024)
  %and1 = lshr i64 %0, 1, !dbg !5029
  %shr = and i64 %and1, 1229782938247303441, !dbg !5029
    #dbg_value(i64 %shr, !5026, !DIExpression(), !5024)
  %and2 = lshr i64 %0, 2, !dbg !5030
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5030
    #dbg_value(i64 %shr4, !5025, !DIExpression(), !5024)
  %and3 = lshr i64 %0, 3, !dbg !5031
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5031
    #dbg_value(i64 %shr5, !5023, !DIExpression(), !5024)
  %sub = mul nuw i64 %and, 15, !dbg !5032
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5033
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5034
  %sub10 = mul nuw i64 %shr, 15, !dbg !5035
  %add11 = or disjoint i32 %v.0, 1, !dbg !5036
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5037
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5038
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5039
  %add15 = or disjoint i32 %v.0, 2, !dbg !5040
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5041
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5042
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5043
  %add19 = or disjoint i32 %v.0, 3, !dbg !5044
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5045
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5046
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5047
    #dbg_value(i32 %inc, !5013, !DIExpression(), !5008)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5048
    #dbg_value(i32 %add21, !5014, !DIExpression(), !5008)
  br label %for.cond, !dbg !5049, !llvm.loop !5050

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5052
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5053 {
entry:
    #dbg_value(ptr %v, !5057, !DIExpression(), !5058)
    #dbg_value(i32 %num, !5059, !DIExpression(), !5058)
    #dbg_value(ptr %src, !5060, !DIExpression(), !5058)
  br label %while.cond, !dbg !5061

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5057, !DIExpression(), !5058)
    #dbg_value(i32 %num.addr.0, !5059, !DIExpression(), !5058)
    #dbg_value(ptr %src.addr.0, !5060, !DIExpression(), !5058)
    #dbg_value(i32 %num.addr.0, !5059, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5058)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5062
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5061

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5063
    #dbg_value(i32 %dec, !5059, !DIExpression(), !5058)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #7, !dbg !5064
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5066
    #dbg_value(ptr %incdec.ptr, !5057, !DIExpression(), !5058)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5067
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5068
    #dbg_value(ptr %add.ptr, !5060, !DIExpression(), !5058)
  br label %while.cond, !dbg !5061, !llvm.loop !5069

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5071
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5072 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5075, !DIExpression(), !5076)
    #dbg_declare(ptr %q, !5077, !DIExpression(), !5078)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #9, !dbg !5079
  %conv = zext i32 %x to i64, !dbg !5080
  store i64 %conv, ptr %q, align 8, !dbg !5081
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5082
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5083
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5084
  %0 = load i64, ptr %q, align 8, !dbg !5085
  %conv5 = trunc i64 %0 to i32, !dbg !5086
  ret i32 %conv5, !dbg !5087
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5088 {
entry:
    #dbg_value(ptr %q0, !5093, !DIExpression(), !5094)
    #dbg_value(ptr %q1, !5095, !DIExpression(), !5094)
    #dbg_value(ptr %w, !5096, !DIExpression(), !5094)
  %0 = load i32, ptr %w, align 4, !dbg !5097
  %conv = zext i32 %0 to i64, !dbg !5097
    #dbg_value(i64 %conv, !5098, !DIExpression(), !5094)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5099
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5099
  %conv2 = zext i32 %1 to i64, !dbg !5099
    #dbg_value(i64 %conv2, !5100, !DIExpression(), !5094)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5101
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5101
  %conv4 = zext i32 %2 to i64, !dbg !5101
    #dbg_value(i64 %conv4, !5102, !DIExpression(), !5094)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5103
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5103
  %conv6 = zext i32 %3 to i64, !dbg !5103
    #dbg_value(i64 %conv6, !5104, !DIExpression(), !5094)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5105
  %or = or i64 %shl, %conv, !dbg !5106
    #dbg_value(i64 %or, !5098, !DIExpression(), !5094)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5107
  %or8 = or i64 %shl7, %conv2, !dbg !5108
    #dbg_value(i64 %or8, !5100, !DIExpression(), !5094)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5109
  %or10 = or i64 %shl9, %conv4, !dbg !5110
    #dbg_value(i64 %or10, !5102, !DIExpression(), !5094)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5111
  %or12 = or i64 %shl11, %conv6, !dbg !5112
    #dbg_value(i64 %or12, !5104, !DIExpression(), !5094)
  %and = and i64 %or, 281470681808895, !dbg !5113
    #dbg_value(i64 %and, !5098, !DIExpression(), !5094)
  %and13 = and i64 %or8, 281470681808895, !dbg !5114
    #dbg_value(i64 %and13, !5100, !DIExpression(), !5094)
  %and14 = and i64 %or10, 281470681808895, !dbg !5115
    #dbg_value(i64 %and14, !5102, !DIExpression(), !5094)
  %and15 = and i64 %or12, 281470681808895, !dbg !5116
    #dbg_value(i64 %and15, !5104, !DIExpression(), !5094)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5117
  %or17 = or i64 %and, %shl16, !dbg !5118
    #dbg_value(i64 %or17, !5098, !DIExpression(), !5094)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5119
  %or19 = or i64 %and13, %shl18, !dbg !5120
    #dbg_value(i64 %or19, !5100, !DIExpression(), !5094)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5102, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5094)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5094)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5121
    #dbg_value(i64 %and24, !5098, !DIExpression(), !5094)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5122
    #dbg_value(i64 %and25, !5100, !DIExpression(), !5094)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5102, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5094)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5094)
  %4 = shl nuw i64 %and14, 16, !dbg !5123
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5123
  %and26 = or i64 %4, %5, !dbg !5123
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5123
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5124
  store i64 %or29, ptr %q0, align 8, !dbg !5125
  %6 = shl nuw i64 %and15, 16, !dbg !5126
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5126
  %and27 = or i64 %6, %7, !dbg !5126
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5126
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5127
  store i64 %or31, ptr %q1, align 8, !dbg !5128
  ret void, !dbg !5129
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5130 {
entry:
    #dbg_value(ptr %q, !5131, !DIExpression(), !5132)
  %0 = load i64, ptr %q, align 8, !dbg !5133
    #dbg_value(i64 %0, !5135, !DIExpression(), !5136)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5133
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5133
    #dbg_value(i64 %1, !5137, !DIExpression(), !5136)
  %and = and i64 %0, 6148914691236517205, !dbg !5133
  %and2 = shl i64 %1, 1, !dbg !5133
  %shl = and i64 %and2, -6148914691236517206, !dbg !5133
  %or = or disjoint i64 %and, %shl, !dbg !5133
  store i64 %or, ptr %q, align 8, !dbg !5133
  %and4 = lshr i64 %0, 1, !dbg !5133
  %shr = and i64 %and4, 6148914691236517205, !dbg !5133
  %and5 = and i64 %1, -6148914691236517206, !dbg !5133
  %or6 = or disjoint i64 %shr, %and5, !dbg !5133
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5133
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5133
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5138
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5138
    #dbg_value(i64 %2, !5140, !DIExpression(), !5141)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5138
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5138
    #dbg_value(i64 %3, !5142, !DIExpression(), !5141)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5138
  %and14 = shl i64 %3, 1, !dbg !5138
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5138
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5138
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5138
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5138
  %and18 = lshr i64 %2, 1, !dbg !5138
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5138
  %and20 = and i64 %3, -6148914691236517206, !dbg !5138
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5138
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5138
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5138
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5143
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5143
    #dbg_value(i64 %4, !5145, !DIExpression(), !5146)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5143
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5143
    #dbg_value(i64 %5, !5147, !DIExpression(), !5146)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5143
  %and30 = shl i64 %5, 1, !dbg !5143
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5143
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5143
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5143
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5143
  %and34 = lshr i64 %4, 1, !dbg !5143
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5143
  %and36 = and i64 %5, -6148914691236517206, !dbg !5143
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5143
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5143
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5143
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5148
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5148
    #dbg_value(i64 %6, !5150, !DIExpression(), !5151)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5148
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5148
    #dbg_value(i64 %7, !5152, !DIExpression(), !5151)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5148
  %and46 = shl i64 %7, 1, !dbg !5148
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5148
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5148
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5148
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5148
  %and50 = lshr i64 %6, 1, !dbg !5148
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5148
  %and52 = and i64 %7, -6148914691236517206, !dbg !5148
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5148
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5148
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5148
  %8 = load i64, ptr %q, align 8, !dbg !5153
    #dbg_value(i64 %8, !5155, !DIExpression(), !5156)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5153
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5153
    #dbg_value(i64 %9, !5157, !DIExpression(), !5156)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5153
  %and62 = shl i64 %9, 2, !dbg !5153
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5153
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5153
  store i64 %or64, ptr %q, align 8, !dbg !5153
  %and66 = lshr i64 %8, 2, !dbg !5153
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5153
  %and68 = and i64 %9, -3689348814741910324, !dbg !5153
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5153
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5153
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5153
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5158
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5158
    #dbg_value(i64 %10, !5160, !DIExpression(), !5161)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5158
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5158
    #dbg_value(i64 %11, !5162, !DIExpression(), !5161)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5158
  %and78 = shl i64 %11, 2, !dbg !5158
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5158
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5158
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5158
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5158
  %and82 = lshr i64 %10, 2, !dbg !5158
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5158
  %and84 = and i64 %11, -3689348814741910324, !dbg !5158
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5158
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5158
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5158
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5163
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5163
    #dbg_value(i64 %12, !5165, !DIExpression(), !5166)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5163
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5163
    #dbg_value(i64 %13, !5167, !DIExpression(), !5166)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5163
  %and94 = shl i64 %13, 2, !dbg !5163
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5163
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5163
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5163
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5163
  %and98 = lshr i64 %12, 2, !dbg !5163
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5163
  %and100 = and i64 %13, -3689348814741910324, !dbg !5163
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5163
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5163
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5163
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5168
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5168
    #dbg_value(i64 %14, !5170, !DIExpression(), !5171)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5168
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5168
    #dbg_value(i64 %15, !5172, !DIExpression(), !5171)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5168
  %and110 = shl i64 %15, 2, !dbg !5168
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5168
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5168
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5168
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5168
  %and114 = lshr i64 %14, 2, !dbg !5168
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5168
  %and116 = and i64 %15, -3689348814741910324, !dbg !5168
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5168
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5168
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5168
  %16 = load i64, ptr %q, align 8, !dbg !5173
    #dbg_value(i64 %16, !5175, !DIExpression(), !5176)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5173
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5173
    #dbg_value(i64 %17, !5177, !DIExpression(), !5176)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5173
  %and126 = shl i64 %17, 4, !dbg !5173
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5173
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5173
  store i64 %or128, ptr %q, align 8, !dbg !5173
  %and130 = lshr i64 %16, 4, !dbg !5173
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5173
  %and132 = and i64 %17, -1085102592571150096, !dbg !5173
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5173
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5173
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5173
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5178
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5178
    #dbg_value(i64 %18, !5180, !DIExpression(), !5181)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5178
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5178
    #dbg_value(i64 %19, !5182, !DIExpression(), !5181)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5178
  %and142 = shl i64 %19, 4, !dbg !5178
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5178
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5178
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5178
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5178
  %and146 = lshr i64 %18, 4, !dbg !5178
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5178
  %and148 = and i64 %19, -1085102592571150096, !dbg !5178
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5178
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5178
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5178
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5183
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5183
    #dbg_value(i64 %20, !5185, !DIExpression(), !5186)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5183
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5183
    #dbg_value(i64 %21, !5187, !DIExpression(), !5186)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5183
  %and158 = shl i64 %21, 4, !dbg !5183
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5183
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5183
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5183
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5183
  %and162 = lshr i64 %20, 4, !dbg !5183
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5183
  %and164 = and i64 %21, -1085102592571150096, !dbg !5183
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5183
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5183
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5183
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5188
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5188
    #dbg_value(i64 %22, !5190, !DIExpression(), !5191)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5188
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5188
    #dbg_value(i64 %23, !5192, !DIExpression(), !5191)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5188
  %and174 = shl i64 %23, 4, !dbg !5188
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5188
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5188
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5188
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5188
  %and178 = lshr i64 %22, 4, !dbg !5188
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5188
  %and180 = and i64 %23, -1085102592571150096, !dbg !5188
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5188
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5188
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5188
  ret void, !dbg !5193
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5194 {
entry:
    #dbg_value(ptr %q, !5195, !DIExpression(), !5196)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5197
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5197
    #dbg_value(i64 %0, !5198, !DIExpression(), !5196)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5199
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5199
    #dbg_value(i64 %1, !5200, !DIExpression(), !5196)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5201
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5201
    #dbg_value(i64 %2, !5202, !DIExpression(), !5196)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5203
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5203
    #dbg_value(i64 %3, !5204, !DIExpression(), !5196)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5205
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5205
    #dbg_value(i64 %4, !5206, !DIExpression(), !5196)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5207
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5207
    #dbg_value(i64 %5, !5208, !DIExpression(), !5196)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5209
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5209
    #dbg_value(i64 %6, !5210, !DIExpression(), !5196)
  %7 = load i64, ptr %q, align 8, !dbg !5211
    #dbg_value(i64 %7, !5212, !DIExpression(), !5196)
  %xor = xor i64 %3, %5, !dbg !5213
    #dbg_value(i64 %xor, !5214, !DIExpression(), !5196)
  %xor8 = xor i64 %0, %6, !dbg !5215
    #dbg_value(i64 %xor8, !5216, !DIExpression(), !5196)
  %xor9 = xor i64 %0, %3, !dbg !5217
    #dbg_value(i64 %xor9, !5218, !DIExpression(), !5196)
  %xor10 = xor i64 %0, %5, !dbg !5219
    #dbg_value(i64 %xor10, !5220, !DIExpression(), !5196)
  %xor11 = xor i64 %1, %2, !dbg !5221
    #dbg_value(i64 %xor11, !5222, !DIExpression(), !5196)
  %xor12 = xor i64 %xor11, %7, !dbg !5223
    #dbg_value(i64 %xor12, !5224, !DIExpression(), !5196)
  %xor13 = xor i64 %xor12, %3, !dbg !5225
    #dbg_value(i64 %xor13, !5226, !DIExpression(), !5196)
  %xor14 = xor i64 %xor8, %xor, !dbg !5227
    #dbg_value(i64 %xor14, !5228, !DIExpression(), !5196)
  %xor15 = xor i64 %xor12, %0, !dbg !5229
    #dbg_value(i64 %xor15, !5230, !DIExpression(), !5196)
  %xor16 = xor i64 %xor12, %6, !dbg !5231
    #dbg_value(i64 %xor16, !5232, !DIExpression(), !5196)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5233
    #dbg_value(i64 %xor17, !5234, !DIExpression(), !5196)
  %xor18 = xor i64 %4, %xor14, !dbg !5235
    #dbg_value(i64 %xor18, !5236, !DIExpression(), !5196)
  %xor19 = xor i64 %xor18, %5, !dbg !5237
    #dbg_value(i64 %xor19, !5238, !DIExpression(), !5196)
  %xor20 = xor i64 %xor18, %1, !dbg !5239
    #dbg_value(i64 %xor20, !5240, !DIExpression(), !5196)
  %xor21 = xor i64 %xor19, %7, !dbg !5241
    #dbg_value(i64 %xor21, !5242, !DIExpression(), !5196)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5243
    #dbg_value(i64 %xor22, !5244, !DIExpression(), !5196)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5245
    #dbg_value(i64 %xor23, !5246, !DIExpression(), !5196)
  %xor24 = xor i64 %7, %xor23, !dbg !5247
    #dbg_value(i64 %xor24, !5248, !DIExpression(), !5196)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5249
    #dbg_value(i64 %xor25, !5250, !DIExpression(), !5196)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5251, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5252
    #dbg_value(i64 %xor27, !5253, !DIExpression(), !5196)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5254, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5255, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
  %and = and i64 %xor14, %xor19, !dbg !5256
    #dbg_value(i64 %and, !5257, !DIExpression(), !5196)
  %and30 = and i64 %xor17, %xor21, !dbg !5258
    #dbg_value(i64 %and30, !5259, !DIExpression(), !5196)
  %xor31 = xor i64 %and30, %and, !dbg !5260
    #dbg_value(i64 %xor31, !5261, !DIExpression(), !5196)
  %and32 = and i64 %xor13, %7, !dbg !5262
    #dbg_value(i64 %and32, !5263, !DIExpression(), !5196)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5264, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
  %and34 = and i64 %xor8, %xor27, !dbg !5265
    #dbg_value(i64 %and34, !5266, !DIExpression(), !5196)
  %and35 = and i64 %xor16, %xor12, !dbg !5267
    #dbg_value(i64 %and35, !5268, !DIExpression(), !5196)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5269, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
  %and37 = and i64 %xor15, %xor24, !dbg !5270
    #dbg_value(i64 %and37, !5271, !DIExpression(), !5196)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5272, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
  %and39 = and i64 %xor9, %xor23, !dbg !5273
    #dbg_value(i64 %and39, !5274, !DIExpression(), !5196)
  %and40 = and i64 %xor, %xor25, !dbg !5275
    #dbg_value(i64 %and40, !5276, !DIExpression(), !5196)
  %xor41 = xor i64 %and40, %and39, !dbg !5277
    #dbg_value(i64 %xor41, !5278, !DIExpression(), !5196)
  %and42 = and i64 %xor10, %xor22, !dbg !5279
    #dbg_value(i64 %and42, !5280, !DIExpression(), !5196)
  %xor43 = xor i64 %and42, %and39, !dbg !5281
    #dbg_value(i64 %xor43, !5282, !DIExpression(), !5196)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5283
    #dbg_value(i64 %xor44, !5284, !DIExpression(), !5196)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5285, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5286, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5288
    #dbg_value(i64 %xor48, !5289, !DIExpression(), !5196)
  %8 = xor i64 %xor10, %and32, !dbg !5290
  %9 = xor i64 %8, %xor22, !dbg !5290
  %10 = xor i64 %9, %and, !dbg !5290
  %xor49 = xor i64 %10, %xor43, !dbg !5290
    #dbg_value(i64 %xor49, !5291, !DIExpression(), !5196)
  %11 = xor i64 %xor27, %and35, !dbg !5292
  %12 = xor i64 %11, %xor8, !dbg !5292
  %13 = xor i64 %12, %and34, !dbg !5292
  %xor50 = xor i64 %13, %xor41, !dbg !5292
    #dbg_value(i64 %xor50, !5293, !DIExpression(), !5196)
  %14 = xor i64 %xor27, %and37, !dbg !5294
  %15 = xor i64 %14, %0, !dbg !5294
  %16 = xor i64 %15, %and34, !dbg !5294
  %xor51 = xor i64 %16, %xor43, !dbg !5294
    #dbg_value(i64 %xor51, !5295, !DIExpression(), !5196)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5296
    #dbg_value(i64 %xor52, !5297, !DIExpression(), !5196)
  %and53 = and i64 %xor48, %xor50, !dbg !5298
    #dbg_value(i64 %and53, !5299, !DIExpression(), !5196)
  %xor54 = xor i64 %xor51, %and53, !dbg !5300
    #dbg_value(i64 %xor54, !5301, !DIExpression(), !5196)
  %and55 = and i64 %xor52, %xor54, !dbg !5302
    #dbg_value(i64 %and55, !5303, !DIExpression(), !5196)
  %xor56 = xor i64 %and55, %xor49, !dbg !5304
    #dbg_value(i64 %xor56, !5305, !DIExpression(), !5196)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5306
    #dbg_value(i64 %xor57, !5307, !DIExpression(), !5196)
  %xor58 = xor i64 %xor49, %and53, !dbg !5308
    #dbg_value(i64 %xor58, !5309, !DIExpression(), !5196)
  %and59 = and i64 %xor58, %xor57, !dbg !5310
    #dbg_value(i64 %and59, !5311, !DIExpression(), !5196)
  %xor60 = xor i64 %and59, %xor51, !dbg !5312
    #dbg_value(i64 %xor60, !5313, !DIExpression(), !5196)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5314
    #dbg_value(i64 %xor61, !5315, !DIExpression(), !5196)
  %xor62 = xor i64 %and59, %and53, !dbg !5316
    #dbg_value(i64 %xor62, !5317, !DIExpression(), !5196)
  %and63 = and i64 %xor51, %xor62, !dbg !5318
    #dbg_value(i64 %and63, !5319, !DIExpression(), !5196)
  %xor64 = xor i64 %and63, %xor61, !dbg !5320
    #dbg_value(i64 %xor64, !5321, !DIExpression(), !5196)
  %xor65 = xor i64 %xor54, %and63, !dbg !5322
    #dbg_value(i64 %xor65, !5323, !DIExpression(), !5196)
  %and66 = and i64 %xor56, %xor65, !dbg !5324
    #dbg_value(i64 %and66, !5325, !DIExpression(), !5196)
  %xor67 = xor i64 %xor52, %and66, !dbg !5326
    #dbg_value(i64 %xor67, !5327, !DIExpression(), !5196)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5328
    #dbg_value(i64 %xor68, !5329, !DIExpression(), !5196)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5330
    #dbg_value(i64 %xor69, !5331, !DIExpression(), !5196)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5332
    #dbg_value(i64 %xor70, !5333, !DIExpression(), !5196)
  %xor71 = xor i64 %and63, %xor50, !dbg !5334
    #dbg_value(i64 %xor71, !5335, !DIExpression(), !5196)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5336
    #dbg_value(i64 %xor72, !5337, !DIExpression(), !5196)
  %and73 = and i64 %xor71, %xor19, !dbg !5338
    #dbg_value(i64 %and73, !5339, !DIExpression(), !5196)
  %and74 = and i64 %xor64, %xor21, !dbg !5340
    #dbg_value(i64 %and74, !5341, !DIExpression(), !5196)
  %and75 = and i64 %xor60, %7, !dbg !5342
    #dbg_value(i64 %and75, !5343, !DIExpression(), !5196)
  %and76 = and i64 %xor70, %xor27, !dbg !5344
    #dbg_value(i64 %and76, !5345, !DIExpression(), !5196)
  %and77 = and i64 %xor67, %xor12, !dbg !5346
    #dbg_value(i64 %and77, !5347, !DIExpression(), !5196)
  %and78 = and i64 %xor56, %xor24, !dbg !5348
    #dbg_value(i64 %and78, !5349, !DIExpression(), !5196)
  %and79 = and i64 %xor69, %xor23, !dbg !5350
    #dbg_value(i64 %and79, !5351, !DIExpression(), !5196)
  %and80 = and i64 %xor72, %xor25, !dbg !5352
    #dbg_value(i64 %and80, !5353, !DIExpression(), !5196)
  %and81 = and i64 %xor68, %xor22, !dbg !5354
    #dbg_value(i64 %and81, !5355, !DIExpression(), !5196)
  %and82 = and i64 %xor71, %xor14, !dbg !5356
    #dbg_value(i64 %and82, !5357, !DIExpression(), !5196)
  %and83 = and i64 %xor64, %xor17, !dbg !5358
    #dbg_value(i64 %and83, !5359, !DIExpression(), !5196)
  %and84 = and i64 %xor60, %xor13, !dbg !5360
    #dbg_value(i64 %and84, !5361, !DIExpression(), !5196)
  %and85 = and i64 %xor70, %xor8, !dbg !5362
    #dbg_value(i64 %and85, !5363, !DIExpression(), !5196)
  %and86 = and i64 %xor67, %xor16, !dbg !5364
    #dbg_value(i64 %and86, !5365, !DIExpression(), !5196)
  %and87 = and i64 %xor56, %xor15, !dbg !5366
    #dbg_value(i64 %and87, !5367, !DIExpression(), !5196)
  %and88 = and i64 %xor69, %xor9, !dbg !5368
    #dbg_value(i64 %and88, !5369, !DIExpression(), !5196)
  %and89 = and i64 %xor72, %xor, !dbg !5370
    #dbg_value(i64 %and89, !5371, !DIExpression(), !5196)
  %and90 = and i64 %xor68, %xor10, !dbg !5372
    #dbg_value(i64 %and90, !5373, !DIExpression(), !5196)
  %xor91 = xor i64 %and88, %and89, !dbg !5374
    #dbg_value(i64 %xor91, !5375, !DIExpression(), !5196)
  %xor92 = xor i64 %and83, %and84, !dbg !5376
    #dbg_value(i64 %xor92, !5377, !DIExpression(), !5196)
  %xor93 = xor i64 %and78, %and86, !dbg !5378
    #dbg_value(i64 %xor93, !5379, !DIExpression(), !5196)
  %xor94 = xor i64 %and82, %and83, !dbg !5380
    #dbg_value(i64 %xor94, !5381, !DIExpression(), !5196)
  %xor95 = xor i64 %and75, %and85, !dbg !5382
    #dbg_value(i64 %xor95, !5383, !DIExpression(), !5196)
  %xor96 = xor i64 %and75, %and78, !dbg !5384
    #dbg_value(i64 %xor96, !5385, !DIExpression(), !5196)
  %xor97 = xor i64 %and80, %and81, !dbg !5386
    #dbg_value(i64 %xor97, !5387, !DIExpression(), !5196)
  %xor98 = xor i64 %and73, %and76, !dbg !5388
    #dbg_value(i64 %xor98, !5389, !DIExpression(), !5196)
  %xor99 = xor i64 %and79, %and80, !dbg !5390
    #dbg_value(i64 %xor99, !5391, !DIExpression(), !5196)
  %xor100 = xor i64 %and89, %and90, !dbg !5392
    #dbg_value(i64 %xor100, !5393, !DIExpression(), !5196)
  %xor101 = xor i64 %and85, %xor93, !dbg !5394
    #dbg_value(i64 %xor101, !5395, !DIExpression(), !5196)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5396
    #dbg_value(i64 %xor102, !5397, !DIExpression(), !5196)
  %xor103 = xor i64 %and77, %xor91, !dbg !5398
    #dbg_value(i64 %xor103, !5399, !DIExpression(), !5196)
  %xor104 = xor i64 %and76, %xor99, !dbg !5400
    #dbg_value(i64 %xor104, !5401, !DIExpression(), !5196)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5402
    #dbg_value(i64 %xor105, !5403, !DIExpression(), !5196)
  %xor106 = xor i64 %and87, %xor102, !dbg !5404
    #dbg_value(i64 %xor106, !5405, !DIExpression(), !5196)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5406
    #dbg_value(i64 %xor107, !5407, !DIExpression(), !5196)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5408
    #dbg_value(i64 %xor108, !5409, !DIExpression(), !5196)
  %xor109 = xor i64 %and77, %xor104, !dbg !5410
    #dbg_value(i64 %xor109, !5411, !DIExpression(), !5196)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5412
    #dbg_value(i64 %xor110, !5413, !DIExpression(), !5196)
  %xor111 = xor i64 %and74, %xor108, !dbg !5414
    #dbg_value(i64 %xor111, !5415, !DIExpression(), !5196)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5416
    #dbg_value(i64 %xor112, !5417, !DIExpression(), !5196)
  %17 = xor i64 %xor107, %xor101, !dbg !5418
  %xor113 = xor i64 %17, -1, !dbg !5418
    #dbg_value(i64 %xor113, !5419, !DIExpression(), !5196)
  %18 = xor i64 %xor105, %xor93, !dbg !5420
  %xor115 = xor i64 %18, -1, !dbg !5420
    #dbg_value(i64 %xor115, !5421, !DIExpression(), !5196)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5422, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5196)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5423
    #dbg_value(i64 %xor117, !5424, !DIExpression(), !5196)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5425
    #dbg_value(i64 %xor118, !5426, !DIExpression(), !5196)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5427
    #dbg_value(i64 %xor119, !5428, !DIExpression(), !5196)
  %19 = xor i64 %xor117, %xor109, !dbg !5429
  %xor121 = xor i64 %19, -1, !dbg !5429
    #dbg_value(i64 %xor121, !5430, !DIExpression(), !5196)
  %20 = xor i64 %xor110, %xor100, !dbg !5431
  %21 = xor i64 %20, %xor109, !dbg !5431
  %xor123 = xor i64 %21, -1, !dbg !5431
    #dbg_value(i64 %xor123, !5432, !DIExpression(), !5196)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5433
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5434
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5435
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5436
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5437
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5438
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5439
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5440
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5441
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5442
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5443
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5444
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5445
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5446
  store i64 %xor115, ptr %q, align 8, !dbg !5447
  ret void, !dbg !5448
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5449 {
entry:
    #dbg_value(ptr %src, !5452, !DIExpression(), !5453)
  %0 = load i8, ptr %src, align 1, !dbg !5454
  %conv = zext i8 %0 to i32, !dbg !5455
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5456
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5456
  %conv2 = zext i8 %1 to i32, !dbg !5457
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5458
  %or = or disjoint i32 %shl, %conv, !dbg !5459
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5460
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5460
  %conv4 = zext i8 %2 to i32, !dbg !5461
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5462
  %or6 = or disjoint i32 %or, %shl5, !dbg !5463
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5464
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5464
  %conv8 = zext i8 %3 to i32, !dbg !5465
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5466
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5467
  ret i32 %or10, !dbg !5468
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5469 {
entry:
    #dbg_value(ptr %r, !5470, !DIExpression(), !5471)
    #dbg_value(ptr %key, !5472, !DIExpression(), !5471)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5473
  ret void, !dbg !5474
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5475 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5483, !DIExpression(), !5484)
    #dbg_value(ptr %key, !5485, !DIExpression(), !5484)
    #dbg_declare(ptr %skey, !5486, !DIExpression(), !5490)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #10, !dbg !5491
  store ptr %call, ptr %r, align 4, !dbg !5492
  %cmp = icmp eq ptr %call, null, !dbg !5493
  br i1 %cmp, label %if.then, label %if.end, !dbg !5493

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5495
  br label %if.end, !dbg !5497

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #7, !dbg !5498
  %0 = load ptr, ptr %r, align 4, !dbg !5499
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #7, !dbg !5500
  ret void, !dbg !5501
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5502 {
entry:
    #dbg_value(ptr %r, !5503, !DIExpression(), !5504)
    #dbg_value(ptr %key, !5505, !DIExpression(), !5504)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5506
  ret void, !dbg !5507
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5508 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5516, !DIExpression(), !5517)
    #dbg_value(ptr %key, !5518, !DIExpression(), !5517)
    #dbg_declare(ptr %skey, !5519, !DIExpression(), !5523)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #10, !dbg !5524
  store ptr %call, ptr %r, align 4, !dbg !5525
  %cmp = icmp eq ptr %call, null, !dbg !5526
  br i1 %cmp, label %if.then, label %if.end, !dbg !5526

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5528
  br label %if.end, !dbg !5530

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #7, !dbg !5531
  %0 = load ptr, ptr %r, align 4, !dbg !5532
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #7, !dbg !5533
  ret void, !dbg !5534
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5535 {
entry:
    #dbg_value(ptr %r, !5536, !DIExpression(), !5537)
    #dbg_value(ptr %key, !5538, !DIExpression(), !5537)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5539
  ret void, !dbg !5540
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5541 {
entry:
    #dbg_value(ptr %out, !5546, !DIExpression(), !5547)
    #dbg_value(ptr %in, !5548, !DIExpression(), !5547)
    #dbg_value(i32 %nblocks, !5549, !DIExpression(), !5547)
    #dbg_value(ptr %ctx, !5550, !DIExpression(), !5547)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5551
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #7, !dbg !5552
  ret void, !dbg !5553
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5554 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5557, !DIExpression(), !5558)
    #dbg_value(ptr %in, !5559, !DIExpression(), !5558)
    #dbg_value(i32 %nblocks, !5560, !DIExpression(), !5558)
    #dbg_value(ptr %rkeys, !5561, !DIExpression(), !5558)
    #dbg_value(i32 %nrounds, !5562, !DIExpression(), !5558)
    #dbg_declare(ptr %blocks, !5563, !DIExpression(), !5565)
    #dbg_declare(ptr %t, !5566, !DIExpression(), !5570)
  br label %while.cond, !dbg !5571

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5557, !DIExpression(), !5558)
    #dbg_value(ptr %in.addr.0, !5559, !DIExpression(), !5558)
    #dbg_value(i32 %nblocks.addr.0, !5560, !DIExpression(), !5558)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5572
  br i1 %cmp, label %while.body, label %while.end, !dbg !5571

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #7, !dbg !5573
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5575
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5576
    #dbg_value(i32 %sub, !5560, !DIExpression(), !5558)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5577
    #dbg_value(ptr %add.ptr, !5559, !DIExpression(), !5558)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5578
    #dbg_value(ptr %add.ptr2, !5557, !DIExpression(), !5558)
  br label %while.cond, !dbg !5571, !llvm.loop !5579

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5581
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5581

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5583
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #7, !dbg !5585
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5586
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5587
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #9, !dbg !5588
  br label %if.end, !dbg !5589

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5590
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5591 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5594, !DIExpression(), !5595)
    #dbg_value(ptr %ivw, !5596, !DIExpression(), !5595)
    #dbg_value(ptr %sk_exp, !5597, !DIExpression(), !5595)
    #dbg_value(i32 %nrounds, !5598, !DIExpression(), !5595)
    #dbg_declare(ptr %w, !5599, !DIExpression(), !5600)
    #dbg_declare(ptr %q, !5601, !DIExpression(), !5602)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #9, !dbg !5603
    #dbg_value(i32 0, !5604, !DIExpression(), !5595)
  br label %for.cond, !dbg !5605

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5607
    #dbg_value(i32 %i.0, !5604, !DIExpression(), !5595)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5608
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5610

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5611
  %add = or disjoint i32 %i.0, 4, !dbg !5613
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5614
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5615
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5615
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #7, !dbg !5616
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5617
    #dbg_value(i32 %inc, !5604, !DIExpression(), !5595)
  br label %for.cond, !dbg !5618, !llvm.loop !5619

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5621
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #7, !dbg !5622
    #dbg_value(i32 1, !5604, !DIExpression(), !5595)
  br label %for.cond5, !dbg !5623

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5625
    #dbg_value(i32 %i.1, !5604, !DIExpression(), !5595)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5626
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5628

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5629
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5631
  call fastcc void @mix_columns(ptr noundef nonnull %q) #7, !dbg !5632
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5633
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5633
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #7, !dbg !5634
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5635
    #dbg_value(i32 %inc15, !5604, !DIExpression(), !5595)
  br label %for.cond5, !dbg !5636, !llvm.loop !5637

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5639
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5640
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5641
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5641
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #7, !dbg !5642
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5643
    #dbg_value(i32 0, !5604, !DIExpression(), !5595)
  br label %for.cond22, !dbg !5644

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5646
    #dbg_value(i32 %i.2, !5604, !DIExpression(), !5595)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5647
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5649

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5650
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5650
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5652
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5652
  %add29 = or disjoint i32 %i.2, 4, !dbg !5653
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5654
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5654
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #7, !dbg !5655
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5656
    #dbg_value(i32 %inc32, !5604, !DIExpression(), !5595)
  br label %for.cond22, !dbg !5657, !llvm.loop !5658

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #7, !dbg !5660
  ret void, !dbg !5661
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5662 {
entry:
    #dbg_value(ptr %q, !5665, !DIExpression(), !5666)
    #dbg_value(ptr %sk, !5667, !DIExpression(), !5666)
  %0 = load i64, ptr %sk, align 8, !dbg !5668
  %1 = load i64, ptr %q, align 8, !dbg !5669
  %xor = xor i64 %1, %0, !dbg !5669
  store i64 %xor, ptr %q, align 8, !dbg !5669
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5670
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5670
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5671
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5672
  %xor4 = xor i64 %3, %2, !dbg !5672
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5672
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5673
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5673
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5674
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5675
  %xor7 = xor i64 %5, %4, !dbg !5675
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5675
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5676
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5676
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5677
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5678
  %xor10 = xor i64 %7, %6, !dbg !5678
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5678
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5679
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5679
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5680
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5681
  %xor13 = xor i64 %9, %8, !dbg !5681
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5681
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5682
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5682
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5683
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5684
  %xor16 = xor i64 %11, %10, !dbg !5684
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5684
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5685
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5685
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5686
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5687
  %xor19 = xor i64 %13, %12, !dbg !5687
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5687
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5688
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5688
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5689
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5690
  %xor22 = xor i64 %15, %14, !dbg !5690
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5690
  ret void, !dbg !5691
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5692 {
entry:
    #dbg_value(ptr %q, !5693, !DIExpression(), !5694)
    #dbg_value(i32 0, !5695, !DIExpression(), !5694)
  br label %for.cond, !dbg !5696

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5698
    #dbg_value(i32 %i.0, !5695, !DIExpression(), !5694)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5699
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5701

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5702
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5702
    #dbg_value(i64 %0, !5704, !DIExpression(), !5705)
  %and = and i64 %0, 65535, !dbg !5706
  %and1 = lshr i64 %0, 4, !dbg !5707
  %shr = and i64 %and1, 268369920, !dbg !5707
  %or = or disjoint i64 %and, %shr, !dbg !5708
  %and2 = shl i64 %0, 12, !dbg !5709
  %shl = and i64 %and2, 4026531840, !dbg !5709
  %or3 = or disjoint i64 %or, %shl, !dbg !5710
  %and4 = lshr i64 %0, 8, !dbg !5711
  %shr5 = and i64 %and4, 1095216660480, !dbg !5711
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5712
  %and7 = shl i64 %0, 8, !dbg !5713
  %shl8 = and i64 %and7, 280375465082880, !dbg !5713
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5714
  %and10 = lshr i64 %0, 12, !dbg !5715
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5715
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5716
  %and13 = shl i64 %0, 4, !dbg !5717
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5717
  %or15 = or i64 %or12, %shl14, !dbg !5718
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5719
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5720
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5721
    #dbg_value(i32 %inc, !5695, !DIExpression(), !5694)
  br label %for.cond, !dbg !5722, !llvm.loop !5723

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5725
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5726 {
entry:
    #dbg_value(ptr %q, !5727, !DIExpression(), !5728)
  %0 = load i64, ptr %q, align 8, !dbg !5729
    #dbg_value(i64 %0, !5730, !DIExpression(), !5728)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5731
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5731
    #dbg_value(i64 %1, !5732, !DIExpression(), !5728)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5733
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5733
    #dbg_value(i64 %2, !5734, !DIExpression(), !5728)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5735
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5735
    #dbg_value(i64 %3, !5736, !DIExpression(), !5728)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5737
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5737
    #dbg_value(i64 %4, !5738, !DIExpression(), !5728)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5739
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5739
    #dbg_value(i64 %5, !5740, !DIExpression(), !5728)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5741
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5741
    #dbg_value(i64 %6, !5742, !DIExpression(), !5728)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5743
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5743
    #dbg_value(i64 %7, !5744, !DIExpression(), !5728)
  %or = call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 48), !dbg !5745
    #dbg_value(i64 %or, !5746, !DIExpression(), !5728)
  %or10 = call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 48), !dbg !5747
    #dbg_value(i64 %or10, !5748, !DIExpression(), !5728)
  %or13 = call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 48), !dbg !5749
    #dbg_value(i64 %or13, !5750, !DIExpression(), !5728)
  %or16 = call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 48), !dbg !5751
    #dbg_value(i64 %or16, !5752, !DIExpression(), !5728)
  %or19 = call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 48), !dbg !5753
    #dbg_value(i64 %or19, !5754, !DIExpression(), !5728)
  %or22 = call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 48), !dbg !5755
    #dbg_value(i64 %or22, !5756, !DIExpression(), !5728)
  %or25 = call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 48), !dbg !5757
    #dbg_value(i64 %or25, !5758, !DIExpression(), !5728)
  %or28 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 48), !dbg !5759
    #dbg_value(i64 %or28, !5760, !DIExpression(), !5728)
  %xor30 = xor i64 %0, %or, !dbg !5761
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #7, !dbg !5762
  %8 = xor i64 %or28, %call, !dbg !5763
  %9 = xor i64 %8, %7, !dbg !5763
  %xor31 = xor i64 %9, %or, !dbg !5763
  store i64 %xor31, ptr %q, align 8, !dbg !5764
  %xor37 = xor i64 %1, %or10, !dbg !5765
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #7, !dbg !5766
  %10 = xor i64 %or, %call38, !dbg !5767
  %11 = xor i64 %10, %0, !dbg !5767
  %12 = xor i64 %11, %7, !dbg !5767
  %13 = xor i64 %12, %or28, !dbg !5767
  %xor39 = xor i64 %13, %or10, !dbg !5767
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5768
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5769
  %xor43 = xor i64 %2, %or13, !dbg !5770
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #7, !dbg !5771
  %14 = xor i64 %or10, %call44, !dbg !5772
  %15 = xor i64 %14, %1, !dbg !5772
  %xor45 = xor i64 %15, %or13, !dbg !5772
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5773
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5774
  %xor51 = xor i64 %3, %or16, !dbg !5775
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #7, !dbg !5776
  %16 = xor i64 %or13, %call52, !dbg !5777
  %17 = xor i64 %16, %2, !dbg !5777
  %18 = xor i64 %17, %7, !dbg !5777
  %19 = xor i64 %18, %or28, !dbg !5777
  %xor53 = xor i64 %19, %or16, !dbg !5777
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5778
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5779
  %xor59 = xor i64 %4, %or19, !dbg !5780
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #7, !dbg !5781
  %20 = xor i64 %or16, %call60, !dbg !5782
  %21 = xor i64 %20, %3, !dbg !5782
  %22 = xor i64 %21, %7, !dbg !5782
  %23 = xor i64 %22, %or28, !dbg !5782
  %xor61 = xor i64 %23, %or19, !dbg !5782
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5783
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5784
  %xor65 = xor i64 %5, %or22, !dbg !5785
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #7, !dbg !5786
  %24 = xor i64 %or19, %call66, !dbg !5787
  %25 = xor i64 %24, %4, !dbg !5787
  %xor67 = xor i64 %25, %or22, !dbg !5787
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5788
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5789
  %xor71 = xor i64 %6, %or25, !dbg !5790
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #7, !dbg !5791
  %26 = xor i64 %or22, %call72, !dbg !5792
  %27 = xor i64 %26, %5, !dbg !5792
  %xor73 = xor i64 %27, %or25, !dbg !5792
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5793
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5794
  %xor77 = xor i64 %7, %or28, !dbg !5795
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #7, !dbg !5796
  %28 = xor i64 %or25, %call78, !dbg !5797
  %29 = xor i64 %28, %6, !dbg !5797
  %xor79 = xor i64 %29, %or28, !dbg !5797
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5798
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5799
  ret void, !dbg !5800
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5801 {
entry:
    #dbg_value(ptr %w, !5804, !DIExpression(), !5805)
    #dbg_value(i64 %q0, !5806, !DIExpression(), !5805)
    #dbg_value(i64 %q1, !5807, !DIExpression(), !5805)
  %and = and i64 %q0, 71777214294589695, !dbg !5808
    #dbg_value(i64 %and, !5809, !DIExpression(), !5805)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5810
    #dbg_value(i64 %and1, !5811, !DIExpression(), !5805)
  %shr = lshr i64 %q0, 8, !dbg !5812
  %and2 = and i64 %shr, 71776119077928960, !dbg !5813
    #dbg_value(i64 %shr, !5814, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5805)
  %shr3 = lshr i64 %q1, 8, !dbg !5815
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5816
    #dbg_value(i64 %shr3, !5817, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5805)
  %shr5 = lshr i64 %and, 8, !dbg !5818
  %or = or disjoint i64 %and, %shr5, !dbg !5819
    #dbg_value(i64 %or, !5809, !DIExpression(), !5805)
  %shr6 = lshr i64 %and1, 8, !dbg !5820
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5821
    #dbg_value(i64 %or7, !5811, !DIExpression(), !5805)
  %0 = and i64 %q0, 280375465148160, !dbg !5822
  %1 = or disjoint i64 %and2, %0, !dbg !5822
  %or9 = lshr exact i64 %1, 8, !dbg !5822
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5814, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5805)
  %2 = and i64 %q1, 280375465148160, !dbg !5823
  %3 = or disjoint i64 %and4, %2, !dbg !5823
  %or11 = lshr exact i64 %3, 8, !dbg !5823
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5805)
  %and12 = and i64 %or, 281470681808895, !dbg !5824
    #dbg_value(i64 %and12, !5809, !DIExpression(), !5805)
  %and13 = and i64 %or7, 281470681808895, !dbg !5825
    #dbg_value(i64 %and13, !5811, !DIExpression(), !5805)
    #dbg_value(i64 %or9, !5814, !DIExpression(), !5805)
    #dbg_value(i64 %or11, !5817, !DIExpression(), !5805)
  %shr16 = lshr i64 %and12, 16, !dbg !5826
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5827
  %or18 = trunc i64 %or181 to i32, !dbg !5827
  store i32 %or18, ptr %w, align 4, !dbg !5828
  %shr20 = lshr i64 %and13, 16, !dbg !5829
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5830
  %or22 = trunc i64 %or222 to i32, !dbg !5830
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5831
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5832
  %shr25 = lshr i64 %1, 24, !dbg !5833
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5834
  %or27 = trunc i64 %or273 to i32, !dbg !5834
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5835
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5836
  %shr30 = lshr i64 %3, 24, !dbg !5837
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5838
  %or32 = trunc i64 %or324 to i32, !dbg !5838
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5839
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5840
  ret void, !dbg !5841
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5842 {
entry:
    #dbg_value(ptr %dst, !5845, !DIExpression(), !5846)
    #dbg_value(ptr %v, !5847, !DIExpression(), !5846)
    #dbg_value(i32 16, !5848, !DIExpression(), !5846)
  br label %while.cond, !dbg !5849

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5845, !DIExpression(), !5846)
    #dbg_value(ptr %v.addr.0, !5847, !DIExpression(), !5846)
    #dbg_value(i32 %num.addr.0, !5848, !DIExpression(), !5846)
    #dbg_value(i32 %num.addr.0, !5848, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5846)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5850
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5849

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5851
    #dbg_value(i32 %dec, !5848, !DIExpression(), !5846)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5852
    #dbg_value(ptr %incdec.ptr, !5847, !DIExpression(), !5846)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5854
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #7, !dbg !5855
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5856
    #dbg_value(ptr %add.ptr, !5845, !DIExpression(), !5846)
  br label %while.cond, !dbg !5849, !llvm.loop !5857

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5859
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5860 {
entry:
    #dbg_value(ptr %dst, !5863, !DIExpression(), !5864)
    #dbg_value(i32 %x, !5865, !DIExpression(), !5864)
  %conv = trunc i32 %x to i8, !dbg !5866
  store i8 %conv, ptr %dst, align 1, !dbg !5867
  %shr = lshr i32 %x, 8, !dbg !5868
  %conv1 = trunc i32 %shr to i8, !dbg !5869
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5870
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5871
  %shr3 = lshr i32 %x, 16, !dbg !5872
  %conv4 = trunc i32 %shr3 to i8, !dbg !5873
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5874
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5875
  %shr6 = lshr i32 %x, 24, !dbg !5876
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5877
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5878
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5879
  ret void, !dbg !5880
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5881 {
entry:
    #dbg_value(i64 %x, !5884, !DIExpression(), !5885)
  %or = call i64 @llvm.fshl.i64(i64 %x, i64 %x, i64 32), !dbg !5886
  ret i64 %or, !dbg !5887
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5888 {
entry:
    #dbg_value(ptr %out, !5891, !DIExpression(), !5892)
    #dbg_value(i32 %outlen, !5893, !DIExpression(), !5892)
    #dbg_value(ptr %iv, !5894, !DIExpression(), !5892)
    #dbg_value(ptr %ctx, !5895, !DIExpression(), !5892)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5896
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #7, !dbg !5897
  ret void, !dbg !5898
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5899 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5902, !DIExpression(), !5903)
    #dbg_value(i32 %outlen, !5904, !DIExpression(), !5903)
    #dbg_value(ptr %iv, !5905, !DIExpression(), !5903)
    #dbg_value(ptr %rkeys, !5906, !DIExpression(), !5903)
    #dbg_value(i32 %nrounds, !5907, !DIExpression(), !5903)
    #dbg_declare(ptr %ivw, !5908, !DIExpression(), !5909)
    #dbg_value(i32 0, !5910, !DIExpression(), !5903)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #7, !dbg !5911
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5912
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5913
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5914
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5915
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5916
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5917
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #7, !dbg !5918
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5919
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5920
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #7, !dbg !5921
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5922
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5923
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #7, !dbg !5924
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5925
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !5926
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #7, !dbg !5927
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5928
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !5929
  br label %while.cond, !dbg !5930

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5902, !DIExpression(), !5903)
    #dbg_value(i32 %outlen.addr.0, !5904, !DIExpression(), !5903)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !5931
  br i1 %cmp, label %while.body, label %while.end, !dbg !5930

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5932
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5934
    #dbg_value(ptr %add.ptr21, !5902, !DIExpression(), !5903)
  %sub = add i32 %outlen.addr.0, -64, !dbg !5935
    #dbg_value(i32 %sub, !5904, !DIExpression(), !5903)
  br label %while.cond, !dbg !5930, !llvm.loop !5936

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !5938
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !5938

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !5940, !DIExpression(), !5942)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5943
    #dbg_value(i32 0, !5944, !DIExpression(), !5903)
  br label %for.cond, !dbg !5945

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !5947
    #dbg_value(i32 %i.0, !5944, !DIExpression(), !5903)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !5948
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !5950

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !5951
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !5951
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !5953
  store i8 %0, ptr %arrayidx27, align 1, !dbg !5954
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5955
    #dbg_value(i32 %inc, !5944, !DIExpression(), !5903)
  br label %for.cond, !dbg !5956, !llvm.loop !5957

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5959

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !5959
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !5960 {
entry:
    #dbg_value(i32 %x, !5961, !DIExpression(), !5962)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !5961, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !5962)
  %or4 = call i32 @llvm.bswap.i32(i32 %x), !dbg !5963
  ret i32 %or4, !dbg !5964
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5965 {
entry:
    #dbg_value(ptr %out, !5968, !DIExpression(), !5969)
    #dbg_value(ptr %ivw, !5970, !DIExpression(), !5969)
    #dbg_value(ptr %sk_exp, !5971, !DIExpression(), !5969)
    #dbg_value(i32 %nrounds, !5972, !DIExpression(), !5969)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #7, !dbg !5973
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5974
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #7, !dbg !5975
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5976
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #7, !dbg !5977
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5978
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #7, !dbg !5979
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5980
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #7, !dbg !5981
  ret void, !dbg !5982
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !5983 {
entry:
    #dbg_value(ptr %x, !5986, !DIExpression(), !5987)
  %0 = load i32, ptr %x, align 4, !dbg !5988
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #7, !dbg !5989
  %add = add i32 %call, 4, !dbg !5990
    #dbg_value(i32 %add, !5991, !DIExpression(), !5987)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #7, !dbg !5992
  store i32 %call1, ptr %x, align 4, !dbg !5993
  ret void, !dbg !5994
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5995 {
entry:
    #dbg_value(ptr %out, !6000, !DIExpression(), !6001)
    #dbg_value(ptr %in, !6002, !DIExpression(), !6001)
    #dbg_value(i32 %nblocks, !6003, !DIExpression(), !6001)
    #dbg_value(ptr %ctx, !6004, !DIExpression(), !6001)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6005
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #7, !dbg !6006
  ret void, !dbg !6007
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6008 {
entry:
    #dbg_value(ptr %out, !6011, !DIExpression(), !6012)
    #dbg_value(i32 %outlen, !6013, !DIExpression(), !6012)
    #dbg_value(ptr %iv, !6014, !DIExpression(), !6012)
    #dbg_value(ptr %ctx, !6015, !DIExpression(), !6012)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6016
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #7, !dbg !6017
  ret void, !dbg !6018
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6019 {
entry:
    #dbg_value(ptr %out, !6024, !DIExpression(), !6025)
    #dbg_value(ptr %in, !6026, !DIExpression(), !6025)
    #dbg_value(i32 %nblocks, !6027, !DIExpression(), !6025)
    #dbg_value(ptr %ctx, !6028, !DIExpression(), !6025)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6029
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #7, !dbg !6030
  ret void, !dbg !6031
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6032 {
entry:
    #dbg_value(ptr %out, !6035, !DIExpression(), !6036)
    #dbg_value(i32 %outlen, !6037, !DIExpression(), !6036)
    #dbg_value(ptr %iv, !6038, !DIExpression(), !6036)
    #dbg_value(ptr %ctx, !6039, !DIExpression(), !6036)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6040
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #7, !dbg !6041
  ret void, !dbg !6042
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6043 {
entry:
    #dbg_value(ptr %r, !6046, !DIExpression(), !6047)
  %0 = load ptr, ptr %r, align 4, !dbg !6048
  call void @free(ptr noundef %0) #9, !dbg !6049
  ret void, !dbg !6050
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6051 {
entry:
    #dbg_value(ptr %r, !6054, !DIExpression(), !6055)
  %0 = load ptr, ptr %r, align 4, !dbg !6056
  call void @free(ptr noundef %0) #9, !dbg !6057
  ret void, !dbg !6058
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6059 {
entry:
    #dbg_value(ptr %r, !6062, !DIExpression(), !6063)
  %0 = load ptr, ptr %r, align 4, !dbg !6064
  call void @free(ptr noundef %0) #9, !dbg !6065
  ret void, !dbg !6066
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6067 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6070, !DIExpression(), !6071)
    #dbg_value(i32 %outputByteLen, !6072, !DIExpression(), !6071)
    #dbg_value(ptr %input, !6073, !DIExpression(), !6071)
    #dbg_value(i32 %inputByteLen, !6074, !DIExpression(), !6071)
    #dbg_declare(ptr %ctx, !6075, !DIExpression(), !6076)
    #dbg_declare(ptr %iv, !6077, !DIExpression(), !6078)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %iv, i8 0, i32 16, i1 false), !dbg !6078
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #7, !dbg !6079
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #7, !dbg !6080
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6081
  ret i32 %outputByteLen, !dbg !6082
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6083 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6086, !DIExpression(), !6087)
    #dbg_value(ptr %key, !6088, !DIExpression(), !6087)
    #dbg_value(ptr %output, !6089, !DIExpression(), !6087)
    #dbg_declare(ptr %ctx, !6090, !DIExpression(), !6091)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #7, !dbg !6092
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #7, !dbg !6093
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6094
  ret void, !dbg !6095
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6874560, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 107415)
!146 = !DILocation(line: 32, column: 10, scope: !97)
!147 = !DILocalVariable(name: "esk", scope: !97, file: !92, line: 33, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6843264, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 106926)
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
!191 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !192, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!231 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !192, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!232 = !DILocalVariable(name: "p", arg: 1, scope: !231, file: !25, line: 537, type: !194)
!233 = !DILocation(line: 0, scope: !231)
!234 = !DILocalVariable(name: "cpk", arg: 2, scope: !231, file: !25, line: 537, type: !18)
!235 = !DILocalVariable(name: "csk", arg: 3, scope: !231, file: !25, line: 538, type: !18)
!236 = !DILocalVariable(name: "ret", scope: !231, file: !25, line: 539, type: !45)
!237 = !DILocalVariable(name: "seed_sk", scope: !231, file: !25, line: 540, type: !18)
!238 = !DILocalVariable(name: "S", scope: !231, file: !25, line: 541, type: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6944, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 868)
!242 = !DILocation(line: 541, column: 19, scope: !231)
!243 = !DILocalVariable(name: "P", scope: !231, file: !25, line: 542, type: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6829632, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 106713)
!247 = !DILocation(line: 542, column: 14, scope: !231)
!248 = !DILocalVariable(name: "P3", scope: !231, file: !25, line: 543, type: !249)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 1296)
!252 = !DILocation(line: 543, column: 14, scope: !231)
!253 = !DILocalVariable(name: "O", scope: !231, file: !25, line: 546, type: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 13632, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 1704)
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
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44928, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 702)
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
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 576, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 9)
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
!622 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !623, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!693 = !DILocation(line: 234, column: 84, scope: !691)
!694 = !DILocation(line: 234, column: 127, scope: !691)
!695 = !DILocation(line: 234, column: 137, scope: !691)
!696 = !DILocation(line: 234, column: 108, scope: !691)
!697 = !DILocation(line: 234, column: 17, scope: !691)
!698 = !DILocation(line: 235, column: 47, scope: !691)
!699 = !DILocation(line: 235, column: 88, scope: !691)
!700 = !DILocation(line: 235, column: 84, scope: !691)
!701 = !DILocation(line: 235, column: 127, scope: !691)
!702 = !DILocation(line: 235, column: 137, scope: !691)
!703 = !DILocation(line: 235, column: 108, scope: !691)
!704 = !DILocation(line: 235, column: 17, scope: !691)
!705 = !DILocation(line: 233, column: 44, scope: !689)
!706 = !DILocation(line: 233, column: 13, scope: !689)
!707 = distinct !{!707, !683, !708, !323}
!708 = !DILocation(line: 236, column: 13, scope: !684)
!709 = !DILocation(line: 0, scope: !682)
!710 = !DILocation(line: 228, column: 39, scope: !679)
!711 = !DILocation(line: 228, column: 9, scope: !679)
!712 = distinct !{!712, !672, !713, !323}
!713 = !DILocation(line: 238, column: 9, scope: !673)
!714 = !DILocation(line: 227, column: 35, scope: !670)
!715 = !DILocation(line: 227, column: 5, scope: !670)
!716 = distinct !{!716, !671, !717, !323}
!717 = !DILocation(line: 239, column: 5, scope: !664)
!718 = !DILocation(line: 240, column: 1, scope: !653)
!719 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !720, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!720 = !DISubroutineType(types: !721)
!721 = !{!45, !194, !18, !722, !49, !15, !49}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!723 = !DILocalVariable(name: "p", arg: 1, scope: !719, file: !25, line: 359, type: !194)
!724 = !DILocation(line: 0, scope: !719)
!725 = !DILocalVariable(name: "sig", arg: 2, scope: !719, file: !25, line: 359, type: !18)
!726 = !DILocalVariable(name: "siglen", arg: 3, scope: !719, file: !25, line: 360, type: !722)
!727 = !DILocalVariable(name: "m", arg: 4, scope: !719, file: !25, line: 360, type: !49)
!728 = !DILocalVariable(name: "mlen", arg: 5, scope: !719, file: !25, line: 361, type: !15)
!729 = !DILocalVariable(name: "csk", arg: 6, scope: !719, file: !25, line: 361, type: !49)
!730 = !DILocalVariable(name: "ret", scope: !719, file: !25, line: 362, type: !45)
!731 = !DILocalVariable(name: "tenc", scope: !719, file: !25, line: 363, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 568, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 71)
!735 = !DILocation(line: 363, column: 19, scope: !719)
!736 = !DILocalVariable(name: "t", scope: !719, file: !25, line: 363, type: !737)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1136, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 142)
!740 = !DILocation(line: 363, column: 38, scope: !719)
!741 = !DILocalVariable(name: "y", scope: !719, file: !25, line: 364, type: !737)
!742 = !DILocation(line: 364, column: 19, scope: !719)
!743 = !DILocalVariable(name: "salt", scope: !719, file: !25, line: 365, type: !744)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 40)
!747 = !DILocation(line: 365, column: 19, scope: !719)
!748 = !DILocalVariable(name: "V", scope: !719, file: !25, line: 366, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 7392, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 924)
!752 = !DILocation(line: 366, column: 19, scope: !719)
!753 = !DILocalVariable(name: "Vdec", scope: !719, file: !25, line: 366, type: !254)
!754 = !DILocation(line: 366, column: 57, scope: !719)
!755 = !DILocalVariable(name: "A", scope: !719, file: !25, line: 367, type: !756)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 167040, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 20880)
!759 = !DILocation(line: 367, column: 19, scope: !719)
!760 = !DILocalVariable(name: "x", scope: !719, file: !25, line: 368, type: !761)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 14784, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 1848)
!764 = !DILocation(line: 368, column: 19, scope: !719)
!765 = !DILocalVariable(name: "r", scope: !719, file: !25, line: 369, type: !766)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1160, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 145)
!769 = !DILocation(line: 369, column: 19, scope: !719)
!770 = !DILocalVariable(name: "s", scope: !719, file: !25, line: 370, type: !761)
!771 = !DILocation(line: 370, column: 19, scope: !719)
!772 = !DILocalVariable(name: "sk", scope: !719, file: !25, line: 372, type: !148, align: 256)
!773 = !DILocation(line: 372, column: 22, scope: !719)
!774 = !DILocalVariable(name: "Ox", scope: !719, file: !25, line: 373, type: !737)
!775 = !DILocation(line: 373, column: 19, scope: !719)
!776 = !DILocalVariable(name: "tmp", scope: !719, file: !25, line: 374, type: !766)
!777 = !DILocation(line: 374, column: 19, scope: !719)
!778 = !DILocalVariable(name: "param_m", scope: !719, file: !25, line: 378, type: !259)
!779 = !DILocalVariable(name: "param_n", scope: !719, file: !25, line: 379, type: !259)
!780 = !DILocalVariable(name: "param_o", scope: !719, file: !25, line: 380, type: !259)
!781 = !DILocalVariable(name: "param_k", scope: !719, file: !25, line: 381, type: !259)
!782 = !DILocalVariable(name: "param_v", scope: !719, file: !25, line: 382, type: !259)
!783 = !DILocalVariable(name: "param_m_bytes", scope: !719, file: !25, line: 383, type: !259)
!784 = !DILocalVariable(name: "param_v_bytes", scope: !719, file: !25, line: 384, type: !259)
!785 = !DILocalVariable(name: "param_r_bytes", scope: !719, file: !25, line: 385, type: !259)
!786 = !DILocalVariable(name: "param_sig_bytes", scope: !719, file: !25, line: 386, type: !259)
!787 = !DILocalVariable(name: "param_A_cols", scope: !719, file: !25, line: 387, type: !259)
!788 = !DILocalVariable(name: "param_digest_bytes", scope: !719, file: !25, line: 388, type: !259)
!789 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !719, file: !25, line: 389, type: !259)
!790 = !DILocalVariable(name: "param_salt_bytes", scope: !719, file: !25, line: 390, type: !259)
!791 = !DILocation(line: 392, column: 11, scope: !719)
!792 = !DILocalVariable(name: "seed_sk", scope: !719, file: !25, line: 371, type: !49)
!793 = !DILocation(line: 401, column: 5, scope: !719)
!794 = !DILocalVariable(name: "P1", scope: !719, file: !25, line: 403, type: !5)
!795 = !DILocation(line: 404, column: 23, scope: !719)
!796 = !DILocalVariable(name: "L", scope: !719, file: !25, line: 404, type: !5)
!797 = !DILocalVariable(name: "Mtmp", scope: !719, file: !25, line: 405, type: !249)
!798 = !DILocation(line: 405, column: 14, scope: !719)
!799 = !DILocation(line: 420, column: 25, scope: !800)
!800 = distinct !DILexicalBlock(scope: !719, file: !25, line: 420, column: 9)
!801 = !DILocation(line: 420, column: 9, scope: !800)
!802 = !DILocation(line: 420, column: 65, scope: !800)
!803 = !DILocation(line: 427, column: 37, scope: !719)
!804 = !DILocation(line: 427, column: 5, scope: !719)
!805 = !DILocation(line: 429, column: 5, scope: !719)
!806 = !DILocation(line: 437, column: 16, scope: !719)
!807 = !DILocation(line: 437, column: 5, scope: !719)
!808 = !DILocation(line: 438, column: 59, scope: !719)
!809 = !DILocalVariable(name: "ctrbyte", scope: !719, file: !25, line: 375, type: !18)
!810 = !DILocation(line: 440, column: 5, scope: !719)
!811 = !DILocation(line: 442, column: 5, scope: !719)
!812 = !DILocation(line: 445, column: 18, scope: !719)
!813 = !DILocation(line: 447, column: 9, scope: !719)
!814 = !DILocalVariable(name: "i", scope: !815, file: !25, line: 451, type: !45)
!815 = distinct !DILexicalBlock(scope: !719, file: !25, line: 451, column: 9)
!816 = !DILocation(line: 0, scope: !815)
!817 = !DILocation(line: 451, column: 14, scope: !815)
!818 = !DILocation(line: 451, scope: !815)
!819 = !DILocation(line: 451, column: 27, scope: !820)
!820 = distinct !DILexicalBlock(scope: !815, file: !25, line: 451, column: 9)
!821 = !DILocation(line: 451, column: 9, scope: !815)
!822 = !DILocation(line: 452, column: 26, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !25, line: 451, column: 48)
!824 = !DILocation(line: 452, column: 22, scope: !823)
!825 = !DILocation(line: 452, column: 52, scope: !823)
!826 = !DILocation(line: 452, column: 48, scope: !823)
!827 = !DILocation(line: 452, column: 13, scope: !823)
!828 = !DILocation(line: 451, column: 43, scope: !820)
!829 = !DILocation(line: 451, column: 9, scope: !820)
!830 = distinct !{!830, !821, !831, !323}
!831 = !DILocation(line: 453, column: 9, scope: !815)
!832 = !DILocation(line: 455, column: 9, scope: !719)
!833 = !DILocation(line: 457, column: 9, scope: !719)
!834 = !DILocation(line: 458, column: 9, scope: !719)
!835 = !DILocalVariable(name: "i", scope: !836, file: !25, line: 460, type: !45)
!836 = distinct !DILexicalBlock(scope: !719, file: !25, line: 460, column: 9)
!837 = !DILocation(line: 0, scope: !836)
!838 = !DILocation(line: 460, column: 14, scope: !836)
!839 = !DILocation(line: 460, scope: !836)
!840 = !DILocation(line: 460, column: 27, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !25, line: 460, column: 9)
!842 = !DILocation(line: 460, column: 9, scope: !836)
!843 = !DILocation(line: 462, column: 20, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !25, line: 461, column: 9)
!845 = !DILocation(line: 462, column: 43, scope: !844)
!846 = !DILocation(line: 462, column: 13, scope: !844)
!847 = !DILocation(line: 462, column: 48, scope: !844)
!848 = !DILocation(line: 460, column: 39, scope: !841)
!849 = !DILocation(line: 460, column: 9, scope: !841)
!850 = distinct !{!850, !842, !851, !323}
!851 = !DILocation(line: 463, column: 9, scope: !836)
!852 = !DILocation(line: 465, column: 18, scope: !719)
!853 = !DILocation(line: 465, column: 9, scope: !719)
!854 = !DILocation(line: 469, column: 13, scope: !855)
!855 = distinct !DILexicalBlock(scope: !719, file: !25, line: 469, column: 13)
!856 = !DILocation(line: 472, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !855, file: !25, line: 471, column: 16)
!858 = !DILocation(line: 473, column: 13, scope: !857)
!859 = !DILocalVariable(name: "i", scope: !860, file: !25, line: 477, type: !45)
!860 = distinct !DILexicalBlock(scope: !719, file: !25, line: 477, column: 5)
!861 = !DILocation(line: 0, scope: !860)
!862 = !DILocation(line: 477, column: 10, scope: !860)
!863 = !DILocation(line: 477, scope: !860)
!864 = !DILocation(line: 477, column: 23, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !25, line: 477, column: 5)
!866 = !DILocation(line: 477, column: 5, scope: !860)
!867 = !DILocation(line: 478, column: 23, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !25, line: 477, column: 44)
!869 = !DILocation(line: 478, column: 19, scope: !868)
!870 = !DILocalVariable(name: "vi", scope: !719, file: !25, line: 376, type: !18)
!871 = !DILocation(line: 479, column: 17, scope: !868)
!872 = !DILocation(line: 479, column: 33, scope: !868)
!873 = !DILocation(line: 479, column: 29, scope: !868)
!874 = !DILocation(line: 479, column: 9, scope: !868)
!875 = !DILocation(line: 480, column: 31, scope: !868)
!876 = !DILocation(line: 480, column: 27, scope: !868)
!877 = !DILocation(line: 480, column: 9, scope: !868)
!878 = !DILocation(line: 481, column: 22, scope: !868)
!879 = !DILocation(line: 481, column: 18, scope: !868)
!880 = !DILocation(line: 481, column: 32, scope: !868)
!881 = !DILocation(line: 481, column: 61, scope: !868)
!882 = !DILocation(line: 481, column: 57, scope: !868)
!883 = !DILocation(line: 481, column: 9, scope: !868)
!884 = !DILocation(line: 477, column: 39, scope: !865)
!885 = !DILocation(line: 477, column: 5, scope: !865)
!886 = distinct !{!886, !866, !887, !323}
!887 = !DILocation(line: 482, column: 5, scope: !860)
!888 = !DILocation(line: 483, column: 5, scope: !719)
!889 = !DILocation(line: 485, column: 34, scope: !719)
!890 = !DILocation(line: 485, column: 5, scope: !719)
!891 = !DILocation(line: 486, column: 13, scope: !719)
!892 = !DILocation(line: 486, column: 5, scope: !719)
!893 = !DILabel(scope: !719, name: "err", file: !25, line: 488)
!894 = !DILocation(line: 488, column: 1, scope: !719)
!895 = !DILocation(line: 489, column: 5, scope: !719)
!896 = !DILocation(line: 490, column: 5, scope: !719)
!897 = !DILocation(line: 491, column: 5, scope: !719)
!898 = !DILocation(line: 492, column: 5, scope: !719)
!899 = !DILocation(line: 493, column: 23, scope: !719)
!900 = !DILocation(line: 493, column: 5, scope: !719)
!901 = !DILocation(line: 494, column: 5, scope: !719)
!902 = !DILocation(line: 495, column: 5, scope: !719)
!903 = !DILocation(line: 496, column: 5, scope: !719)
!904 = !DILocation(line: 497, column: 5, scope: !719)
!905 = !DILocation(line: 498, column: 5, scope: !719)
!906 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !343, file: !343, line: 244, type: !907, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !194, !49, !346, !346, !5, !5}
!909 = !DILocalVariable(name: "p", arg: 1, scope: !906, file: !343, line: 244, type: !194)
!910 = !DILocation(line: 0, scope: !906)
!911 = !DILocalVariable(name: "Vdec", arg: 2, scope: !906, file: !343, line: 244, type: !49)
!912 = !DILocalVariable(name: "L", arg: 3, scope: !906, file: !343, line: 244, type: !346)
!913 = !DILocalVariable(name: "P1", arg: 4, scope: !906, file: !343, line: 244, type: !346)
!914 = !DILocalVariable(name: "VL", arg: 5, scope: !906, file: !343, line: 244, type: !5)
!915 = !DILocalVariable(name: "VP1V", arg: 6, scope: !906, file: !343, line: 244, type: !5)
!916 = !DILocalVariable(name: "param_k", scope: !906, file: !343, line: 246, type: !259)
!917 = !DILocalVariable(name: "param_v", scope: !906, file: !343, line: 247, type: !259)
!918 = !DILocalVariable(name: "param_o", scope: !906, file: !343, line: 248, type: !259)
!919 = !DILocation(line: 251, column: 5, scope: !906)
!920 = !DILocalVariable(name: "Pv", scope: !906, file: !343, line: 254, type: !921)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 981504, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 15336)
!924 = !DILocation(line: 254, column: 14, scope: !906)
!925 = !DILocation(line: 255, column: 5, scope: !906)
!926 = !DILocation(line: 256, column: 5, scope: !906)
!927 = !DILocation(line: 257, column: 1, scope: !906)
!928 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !929, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !194, !5, !49, !18}
!931 = !DILocalVariable(name: "p", arg: 1, scope: !928, file: !25, line: 43, type: !194)
!932 = !DILocation(line: 0, scope: !928)
!933 = !DILocalVariable(name: "vPv", arg: 2, scope: !928, file: !25, line: 43, type: !5)
!934 = !DILocalVariable(name: "t", arg: 3, scope: !928, file: !25, line: 43, type: !49)
!935 = !DILocalVariable(name: "y", arg: 4, scope: !928, file: !25, line: 43, type: !18)
!936 = !DILocalVariable(name: "top_pos", scope: !928, file: !25, line: 48, type: !937)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!938 = !DILocalVariable(name: "m_vec_limbs", scope: !928, file: !25, line: 49, type: !937)
!939 = !DILocalVariable(name: "mask", scope: !940, file: !25, line: 53, type: !6)
!940 = distinct !DILexicalBlock(scope: !941, file: !25, line: 52, column: 29)
!941 = distinct !DILexicalBlock(scope: !928, file: !25, line: 52, column: 8)
!942 = !DILocation(line: 0, scope: !940)
!943 = !DILocalVariable(name: "i", scope: !944, file: !25, line: 56, type: !45)
!944 = distinct !DILexicalBlock(scope: !940, file: !25, line: 56, column: 9)
!945 = !DILocation(line: 0, scope: !944)
!946 = !DILocation(line: 56, column: 14, scope: !944)
!947 = !DILocation(line: 56, scope: !944)
!948 = !DILocation(line: 56, column: 27, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !25, line: 56, column: 9)
!950 = !DILocation(line: 56, column: 9, scope: !944)
!951 = !DILocation(line: 58, column: 13, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !25, line: 57, column: 9)
!953 = !DILocation(line: 58, column: 50, scope: !952)
!954 = !DILocation(line: 56, column: 53, scope: !949)
!955 = !DILocation(line: 56, column: 9, scope: !949)
!956 = distinct !{!956, !950, !957, !323}
!957 = !DILocation(line: 59, column: 9, scope: !944)
!958 = !DILocalVariable(name: "temp", scope: !928, file: !25, line: 62, type: !599)
!959 = !DILocation(line: 62, column: 14, scope: !928)
!960 = !DILocalVariable(name: "temp_bytes", scope: !928, file: !25, line: 63, type: !18)
!961 = !DILocalVariable(name: "i", scope: !962, file: !25, line: 64, type: !45)
!962 = distinct !DILexicalBlock(scope: !928, file: !25, line: 64, column: 5)
!963 = !DILocation(line: 0, scope: !962)
!964 = !DILocation(line: 64, column: 10, scope: !962)
!965 = !DILocation(line: 64, scope: !962)
!966 = !DILocation(line: 64, column: 36, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !25, line: 64, column: 5)
!968 = !DILocation(line: 64, column: 5, scope: !962)
!969 = !DILocation(line: 65, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !25, line: 65, column: 9)
!971 = distinct !DILexicalBlock(scope: !967, file: !25, line: 64, column: 48)
!972 = !DILocation(line: 99, column: 5, scope: !973)
!973 = distinct !DILexicalBlock(scope: !928, file: !25, line: 99, column: 5)
!974 = !DILocation(line: 65, scope: !970)
!975 = !DILocalVariable(name: "j", scope: !970, file: !25, line: 65, type: !45)
!976 = !DILocation(line: 0, scope: !970)
!977 = !DILocation(line: 65, column: 27, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !25, line: 65, column: 9)
!979 = !DILocation(line: 67, column: 34, scope: !980)
!980 = distinct !DILexicalBlock(scope: !978, file: !25, line: 65, column: 46)
!981 = !DILocation(line: 67, column: 54, scope: !980)
!982 = !DILocation(line: 67, column: 66, scope: !980)
!983 = !DILocalVariable(name: "top", scope: !980, file: !25, line: 67, type: !14)
!984 = !DILocation(line: 0, scope: !980)
!985 = !DILocation(line: 68, column: 13, scope: !980)
!986 = !DILocation(line: 68, column: 33, scope: !980)
!987 = !DILocalVariable(name: "k", scope: !988, file: !25, line: 69, type: !45)
!988 = distinct !DILexicalBlock(scope: !980, file: !25, line: 69, column: 13)
!989 = !DILocation(line: 0, scope: !988)
!990 = !DILocation(line: 69, column: 17, scope: !988)
!991 = !DILocation(line: 69, scope: !988)
!992 = !DILocation(line: 69, column: 43, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !25, line: 69, column: 13)
!994 = !DILocation(line: 69, column: 13, scope: !988)
!995 = !DILocation(line: 74, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !980, file: !25, line: 74, column: 13)
!997 = !DILocation(line: 70, column: 30, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !25, line: 69, column: 52)
!999 = !DILocation(line: 70, column: 38, scope: !998)
!1000 = !DILocation(line: 70, column: 23, scope: !998)
!1001 = !DILocation(line: 70, column: 17, scope: !998)
!1002 = !DILocation(line: 70, column: 27, scope: !998)
!1003 = !DILocation(line: 71, column: 17, scope: !998)
!1004 = !DILocation(line: 71, column: 25, scope: !998)
!1005 = !DILocation(line: 69, column: 49, scope: !993)
!1006 = !DILocation(line: 69, column: 13, scope: !993)
!1007 = distinct !{!1007, !994, !1008, !323}
!1008 = !DILocation(line: 72, column: 13, scope: !988)
!1009 = !DILocation(line: 74, scope: !996)
!1010 = !DILocalVariable(name: "jj", scope: !996, file: !25, line: 74, type: !45)
!1011 = !DILocation(line: 0, scope: !996)
!1012 = !DILocation(line: 74, column: 33, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !996, file: !25, line: 74, column: 13)
!1014 = !DILocation(line: 92, column: 13, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !980, file: !25, line: 92, column: 13)
!1016 = !DILocation(line: 75, column: 22, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !25, line: 75, column: 20)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !25, line: 74, column: 53)
!1019 = !DILocation(line: 75, column: 25, scope: !1017)
!1020 = !DILocation(line: 79, column: 52, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !25, line: 75, column: 30)
!1022 = !DILocation(line: 79, column: 41, scope: !1021)
!1023 = !DILocation(line: 79, column: 34, scope: !1021)
!1024 = !DILocation(line: 79, column: 21, scope: !1021)
!1025 = !DILocation(line: 79, column: 38, scope: !1021)
!1026 = !DILocation(line: 81, column: 17, scope: !1021)
!1027 = !DILocation(line: 86, column: 52, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1017, file: !25, line: 82, column: 22)
!1029 = !DILocation(line: 86, column: 41, scope: !1028)
!1030 = !DILocation(line: 86, column: 73, scope: !1028)
!1031 = !DILocation(line: 86, column: 34, scope: !1028)
!1032 = !DILocation(line: 86, column: 21, scope: !1028)
!1033 = !DILocation(line: 86, column: 38, scope: !1028)
!1034 = !DILocation(line: 74, column: 49, scope: !1013)
!1035 = !DILocation(line: 74, column: 13, scope: !1013)
!1036 = distinct !{!1036, !995, !1037, !323}
!1037 = !DILocation(line: 89, column: 13, scope: !996)
!1038 = !DILocation(line: 92, scope: !1015)
!1039 = !DILocalVariable(name: "k", scope: !1015, file: !25, line: 92, type: !15)
!1040 = !DILocation(line: 0, scope: !1015)
!1041 = !DILocation(line: 92, column: 31, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1015, file: !25, line: 92, column: 13)
!1043 = !DILocation(line: 93, column: 36, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !25, line: 92, column: 51)
!1045 = !DILocation(line: 93, column: 49, scope: !1044)
!1046 = !DILocation(line: 93, column: 28, scope: !1044)
!1047 = !DILocation(line: 93, column: 78, scope: !1044)
!1048 = !DILocation(line: 93, column: 91, scope: !1044)
!1049 = !DILocation(line: 93, column: 104, scope: !1044)
!1050 = !DILocation(line: 93, column: 83, scope: !1044)
!1051 = !DILocation(line: 93, column: 82, scope: !1044)
!1052 = !DILocation(line: 93, column: 73, scope: !1044)
!1053 = !DILocation(line: 93, column: 17, scope: !1044)
!1054 = !DILocation(line: 93, column: 25, scope: !1044)
!1055 = !DILocation(line: 92, column: 48, scope: !1042)
!1056 = !DILocation(line: 92, column: 13, scope: !1042)
!1057 = distinct !{!1057, !1014, !1058, !323}
!1058 = !DILocation(line: 94, column: 13, scope: !1015)
!1059 = !DILocation(line: 65, column: 42, scope: !978)
!1060 = !DILocation(line: 65, column: 9, scope: !978)
!1061 = distinct !{!1061, !969, !1062, !323}
!1062 = !DILocation(line: 95, column: 9, scope: !970)
!1063 = !DILocation(line: 64, column: 44, scope: !967)
!1064 = !DILocation(line: 64, column: 5, scope: !967)
!1065 = distinct !{!1065, !968, !1066, !323}
!1066 = !DILocation(line: 96, column: 5, scope: !962)
!1067 = !DILocation(line: 99, scope: !973)
!1068 = !DILocalVariable(name: "i", scope: !973, file: !25, line: 99, type: !45)
!1069 = !DILocation(line: 0, scope: !973)
!1070 = !DILocation(line: 99, column: 23, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !973, file: !25, line: 99, column: 5)
!1072 = !DILocation(line: 105, column: 18, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !25, line: 100, column: 5)
!1074 = !DILocation(line: 105, column: 40, scope: !1073)
!1075 = !DILocation(line: 105, column: 28, scope: !1073)
!1076 = !DILocation(line: 105, column: 44, scope: !1073)
!1077 = !DILocation(line: 105, column: 25, scope: !1073)
!1078 = !DILocation(line: 105, column: 9, scope: !1073)
!1079 = !DILocation(line: 105, column: 16, scope: !1073)
!1080 = !DILocation(line: 106, column: 21, scope: !1073)
!1081 = !DILocation(line: 106, column: 18, scope: !1073)
!1082 = !DILocation(line: 106, column: 40, scope: !1073)
!1083 = !DILocation(line: 106, column: 28, scope: !1073)
!1084 = !DILocation(line: 106, column: 44, scope: !1073)
!1085 = !DILocation(line: 106, column: 25, scope: !1073)
!1086 = !DILocation(line: 106, column: 12, scope: !1073)
!1087 = !DILocation(line: 106, column: 9, scope: !1073)
!1088 = !DILocation(line: 106, column: 16, scope: !1073)
!1089 = !DILocation(line: 99, column: 38, scope: !1071)
!1090 = !DILocation(line: 99, column: 5, scope: !1071)
!1091 = distinct !{!1091, !972, !1092, !323}
!1092 = !DILocation(line: 108, column: 5, scope: !973)
!1093 = !DILocation(line: 109, column: 1, scope: !928)
!1094 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1095, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !194, !5, !18}
!1097 = !DILocalVariable(name: "p", arg: 1, scope: !1094, file: !25, line: 154, type: !194)
!1098 = !DILocation(line: 0, scope: !1094)
!1099 = !DILocalVariable(name: "VtL", arg: 2, scope: !1094, file: !25, line: 154, type: !5)
!1100 = !DILocalVariable(name: "A_out", arg: 3, scope: !1094, file: !25, line: 154, type: !18)
!1101 = !DILocalVariable(name: "bits_to_shift", scope: !1094, file: !25, line: 159, type: !45)
!1102 = !DILocalVariable(name: "words_to_shift", scope: !1094, file: !25, line: 160, type: !45)
!1103 = !DILocalVariable(name: "m_vec_limbs", scope: !1094, file: !25, line: 161, type: !259)
!1104 = !DILocalVariable(name: "A", scope: !1094, file: !25, line: 162, type: !1105)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 165888, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 2592)
!1108 = !DILocation(line: 162, column: 14, scope: !1094)
!1109 = !DILocalVariable(name: "A_width", scope: !1094, file: !25, line: 163, type: !15)
!1110 = !DILocalVariable(name: "mask", scope: !1111, file: !25, line: 168, type: !6)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !25, line: 167, column: 29)
!1112 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 167, column: 8)
!1113 = !DILocation(line: 0, scope: !1111)
!1114 = !DILocalVariable(name: "i", scope: !1115, file: !25, line: 171, type: !45)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !25, line: 171, column: 9)
!1116 = !DILocation(line: 0, scope: !1115)
!1117 = !DILocation(line: 171, column: 14, scope: !1115)
!1118 = !DILocation(line: 171, scope: !1115)
!1119 = !DILocation(line: 171, column: 27, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !25, line: 171, column: 9)
!1121 = !DILocation(line: 171, column: 9, scope: !1115)
!1122 = !DILocation(line: 177, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 177, column: 5)
!1124 = !DILocation(line: 173, column: 13, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !25, line: 172, column: 9)
!1126 = !DILocation(line: 173, column: 50, scope: !1125)
!1127 = !DILocation(line: 171, column: 53, scope: !1120)
!1128 = !DILocation(line: 171, column: 9, scope: !1120)
!1129 = distinct !{!1129, !1121, !1130, !323}
!1130 = !DILocation(line: 174, column: 9, scope: !1115)
!1131 = !DILocation(line: 177, scope: !1123)
!1132 = !DILocation(line: 160, column: 9, scope: !1094)
!1133 = !DILocation(line: 159, column: 9, scope: !1094)
!1134 = !DILocalVariable(name: "i", scope: !1123, file: !25, line: 177, type: !45)
!1135 = !DILocation(line: 0, scope: !1123)
!1136 = !DILocation(line: 177, column: 23, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1123, file: !25, line: 177, column: 5)
!1138 = !DILocation(line: 178, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !25, line: 178, column: 9)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 177, column: 47)
!1141 = !DILocation(line: 212, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 212, column: 5)
!1143 = !DILocation(line: 178, scope: !1139)
!1144 = !DILocalVariable(name: "j", scope: !1139, file: !25, line: 178, type: !45)
!1145 = !DILocation(line: 0, scope: !1139)
!1146 = !DILocation(line: 178, column: 40, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !25, line: 178, column: 9)
!1148 = !DILocation(line: 180, column: 22, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1147, file: !25, line: 178, column: 51)
!1150 = !DILocalVariable(name: "Mj", scope: !1094, file: !25, line: 164, type: !346)
!1151 = !DILocalVariable(name: "c", scope: !1152, file: !25, line: 181, type: !45)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 181, column: 13)
!1153 = !DILocation(line: 0, scope: !1152)
!1154 = !DILocation(line: 181, column: 18, scope: !1152)
!1155 = !DILocation(line: 181, scope: !1152)
!1156 = !DILocation(line: 181, column: 31, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !25, line: 181, column: 13)
!1158 = !DILocation(line: 181, column: 13, scope: !1152)
!1159 = !DILocation(line: 182, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !25, line: 182, column: 17)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 181, column: 50)
!1162 = !DILocation(line: 182, scope: !1160)
!1163 = !DILocalVariable(name: "k", scope: !1160, file: !25, line: 182, type: !45)
!1164 = !DILocation(line: 0, scope: !1160)
!1165 = !DILocation(line: 182, column: 35, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1160, file: !25, line: 182, column: 17)
!1167 = !DILocation(line: 184, column: 78, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1166, file: !25, line: 183, column: 17)
!1169 = !DILocation(line: 184, column: 100, scope: !1168)
!1170 = !DILocation(line: 184, column: 35, scope: !1168)
!1171 = !DILocation(line: 184, column: 39, scope: !1168)
!1172 = !DILocation(line: 184, column: 48, scope: !1168)
!1173 = !DILocation(line: 184, column: 65, scope: !1168)
!1174 = !DILocation(line: 184, column: 43, scope: !1168)
!1175 = !DILocation(line: 184, column: 21, scope: !1168)
!1176 = !DILocation(line: 184, column: 75, scope: !1168)
!1177 = !DILocation(line: 185, column: 38, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !25, line: 185, column: 24)
!1179 = !DILocation(line: 186, column: 86, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1178, file: !25, line: 185, column: 42)
!1181 = !DILocation(line: 186, column: 114, scope: !1180)
!1182 = !DILocation(line: 186, column: 108, scope: !1180)
!1183 = !DILocation(line: 186, column: 39, scope: !1180)
!1184 = !DILocation(line: 186, column: 43, scope: !1180)
!1185 = !DILocation(line: 186, column: 52, scope: !1180)
!1186 = !DILocation(line: 186, column: 73, scope: !1180)
!1187 = !DILocation(line: 186, column: 47, scope: !1180)
!1188 = !DILocation(line: 186, column: 25, scope: !1180)
!1189 = !DILocation(line: 186, column: 83, scope: !1180)
!1190 = !DILocation(line: 187, column: 21, scope: !1180)
!1191 = !DILocation(line: 182, column: 51, scope: !1166)
!1192 = !DILocation(line: 182, column: 17, scope: !1166)
!1193 = distinct !{!1193, !1159, !1194, !323}
!1194 = !DILocation(line: 188, column: 17, scope: !1160)
!1195 = !DILocation(line: 181, column: 46, scope: !1157)
!1196 = !DILocation(line: 181, column: 13, scope: !1157)
!1197 = distinct !{!1197, !1158, !1198, !323}
!1198 = !DILocation(line: 189, column: 13, scope: !1152)
!1199 = !DILocation(line: 191, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 191, column: 17)
!1201 = !DILocation(line: 192, column: 26, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !25, line: 191, column: 25)
!1203 = !DILocalVariable(name: "Mi", scope: !1094, file: !25, line: 164, type: !346)
!1204 = !DILocalVariable(name: "c", scope: !1205, file: !25, line: 193, type: !45)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !25, line: 193, column: 17)
!1206 = !DILocation(line: 0, scope: !1205)
!1207 = !DILocation(line: 193, column: 22, scope: !1205)
!1208 = !DILocation(line: 193, scope: !1205)
!1209 = !DILocation(line: 193, column: 35, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !25, line: 193, column: 17)
!1211 = !DILocation(line: 193, column: 17, scope: !1205)
!1212 = !DILocation(line: 194, column: 21, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !25, line: 194, column: 21)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !25, line: 193, column: 54)
!1215 = !DILocation(line: 194, scope: !1213)
!1216 = !DILocalVariable(name: "k", scope: !1213, file: !25, line: 194, type: !45)
!1217 = !DILocation(line: 0, scope: !1213)
!1218 = !DILocation(line: 194, column: 39, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !25, line: 194, column: 21)
!1220 = !DILocation(line: 196, column: 81, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1219, file: !25, line: 195, column: 21)
!1222 = !DILocation(line: 196, column: 103, scope: !1221)
!1223 = !DILocation(line: 196, column: 38, scope: !1221)
!1224 = !DILocation(line: 196, column: 42, scope: !1221)
!1225 = !DILocation(line: 196, column: 51, scope: !1221)
!1226 = !DILocation(line: 196, column: 68, scope: !1221)
!1227 = !DILocation(line: 196, column: 46, scope: !1221)
!1228 = !DILocation(line: 196, column: 25, scope: !1221)
!1229 = !DILocation(line: 196, column: 78, scope: !1221)
!1230 = !DILocation(line: 197, column: 42, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1221, file: !25, line: 197, column: 28)
!1232 = !DILocation(line: 198, column: 89, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !25, line: 197, column: 46)
!1234 = !DILocation(line: 198, column: 117, scope: !1233)
!1235 = !DILocation(line: 198, column: 111, scope: !1233)
!1236 = !DILocation(line: 198, column: 42, scope: !1233)
!1237 = !DILocation(line: 198, column: 46, scope: !1233)
!1238 = !DILocation(line: 198, column: 55, scope: !1233)
!1239 = !DILocation(line: 198, column: 76, scope: !1233)
!1240 = !DILocation(line: 198, column: 50, scope: !1233)
!1241 = !DILocation(line: 198, column: 29, scope: !1233)
!1242 = !DILocation(line: 198, column: 86, scope: !1233)
!1243 = !DILocation(line: 199, column: 25, scope: !1233)
!1244 = !DILocation(line: 194, column: 55, scope: !1219)
!1245 = !DILocation(line: 194, column: 21, scope: !1219)
!1246 = distinct !{!1246, !1212, !1247, !323}
!1247 = !DILocation(line: 200, column: 21, scope: !1213)
!1248 = !DILocation(line: 193, column: 50, scope: !1210)
!1249 = !DILocation(line: 193, column: 17, scope: !1210)
!1250 = distinct !{!1250, !1211, !1251, !323}
!1251 = !DILocation(line: 201, column: 17, scope: !1205)
!1252 = !DILocation(line: 204, column: 27, scope: !1149)
!1253 = !DILocation(line: 205, column: 30, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 205, column: 16)
!1255 = !DILocation(line: 178, column: 46, scope: !1147)
!1256 = !DILocation(line: 178, column: 9, scope: !1147)
!1257 = distinct !{!1257, !1138, !1258, !323}
!1258 = !DILocation(line: 209, column: 9, scope: !1139)
!1259 = !DILocation(line: 177, column: 42, scope: !1137)
!1260 = !DILocation(line: 177, column: 5, scope: !1137)
!1261 = distinct !{!1261, !1122, !1262, !323}
!1262 = !DILocation(line: 210, column: 5, scope: !1123)
!1263 = !DILocation(line: 212, scope: !1142)
!1264 = !DILocalVariable(name: "c", scope: !1142, file: !25, line: 212, type: !15)
!1265 = !DILocation(line: 0, scope: !1142)
!1266 = !DILocation(line: 212, column: 26, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1142, file: !25, line: 212, column: 5)
!1268 = !DILocation(line: 214, column: 35, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1267, file: !25, line: 213, column: 5)
!1270 = !DILocation(line: 214, column: 9, scope: !1269)
!1271 = !DILocation(line: 212, column: 91, scope: !1267)
!1272 = !DILocation(line: 212, column: 5, scope: !1267)
!1273 = distinct !{!1273, !1141, !1274, !323}
!1274 = !DILocation(line: 215, column: 5, scope: !1142)
!1275 = !DILocalVariable(name: "tab", scope: !1094, file: !25, line: 217, type: !1276)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 16)
!1279 = !DILocation(line: 217, column: 19, scope: !1094)
!1280 = !DILocalVariable(name: "i", scope: !1281, file: !25, line: 218, type: !15)
!1281 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 218, column: 5)
!1282 = !DILocation(line: 0, scope: !1281)
!1283 = !DILocation(line: 218, column: 10, scope: !1281)
!1284 = !DILocation(line: 218, scope: !1281)
!1285 = !DILocation(line: 218, column: 26, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !25, line: 218, column: 5)
!1287 = !DILocation(line: 218, column: 5, scope: !1281)
!1288 = !DILocation(line: 228, column: 5, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 228, column: 5)
!1290 = !DILocation(line: 220, column: 28, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !25, line: 219, column: 5)
!1292 = !DILocation(line: 220, column: 22, scope: !1291)
!1293 = !DILocation(line: 220, column: 14, scope: !1291)
!1294 = !DILocation(line: 220, column: 9, scope: !1291)
!1295 = !DILocation(line: 220, column: 20, scope: !1291)
!1296 = !DILocation(line: 221, column: 22, scope: !1291)
!1297 = !DILocation(line: 221, column: 14, scope: !1291)
!1298 = !DILocation(line: 221, column: 16, scope: !1291)
!1299 = !DILocation(line: 221, column: 9, scope: !1291)
!1300 = !DILocation(line: 221, column: 20, scope: !1291)
!1301 = !DILocation(line: 222, column: 28, scope: !1291)
!1302 = !DILocation(line: 222, column: 22, scope: !1291)
!1303 = !DILocation(line: 222, column: 14, scope: !1291)
!1304 = !DILocation(line: 222, column: 16, scope: !1291)
!1305 = !DILocation(line: 222, column: 9, scope: !1291)
!1306 = !DILocation(line: 222, column: 20, scope: !1291)
!1307 = !DILocation(line: 223, column: 28, scope: !1291)
!1308 = !DILocation(line: 223, column: 22, scope: !1291)
!1309 = !DILocation(line: 223, column: 14, scope: !1291)
!1310 = !DILocation(line: 223, column: 16, scope: !1291)
!1311 = !DILocation(line: 223, column: 9, scope: !1291)
!1312 = !DILocation(line: 223, column: 20, scope: !1291)
!1313 = !DILocation(line: 218, column: 41, scope: !1286)
!1314 = !DILocation(line: 218, column: 5, scope: !1286)
!1315 = distinct !{!1315, !1287, !1316, !323}
!1316 = !DILocation(line: 224, column: 5, scope: !1281)
!1317 = !DILocation(line: 228, scope: !1289)
!1318 = !DILocalVariable(name: "c", scope: !1289, file: !25, line: 228, type: !15)
!1319 = !DILocation(line: 0, scope: !1289)
!1320 = !DILocation(line: 228, column: 26, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1289, file: !25, line: 228, column: 5)
!1322 = !DILocation(line: 230, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !25, line: 230, column: 9)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !25, line: 229, column: 5)
!1325 = !DILocation(line: 250, column: 5, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 250, column: 5)
!1327 = !DILocation(line: 230, scope: !1323)
!1328 = !DILocalVariable(name: "r", scope: !1323, file: !25, line: 230, type: !45)
!1329 = !DILocation(line: 0, scope: !1323)
!1330 = !DILocation(line: 230, column: 36, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1323, file: !25, line: 230, column: 9)
!1332 = !DILocation(line: 232, column: 28, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1331, file: !25, line: 231, column: 9)
!1334 = !DILocation(line: 232, column: 32, scope: !1333)
!1335 = !DILocation(line: 232, column: 41, scope: !1333)
!1336 = !DILocation(line: 232, column: 49, scope: !1333)
!1337 = !DILocation(line: 232, column: 45, scope: !1333)
!1338 = !DILocalVariable(name: "pos", scope: !1333, file: !25, line: 232, type: !15)
!1339 = !DILocation(line: 0, scope: !1333)
!1340 = !DILocation(line: 233, column: 28, scope: !1333)
!1341 = !DILocation(line: 233, column: 41, scope: !1333)
!1342 = !DILocalVariable(name: "t0", scope: !1333, file: !25, line: 233, type: !6)
!1343 = !DILocation(line: 234, column: 35, scope: !1333)
!1344 = !DILocation(line: 234, column: 41, scope: !1333)
!1345 = !DILocalVariable(name: "t1", scope: !1333, file: !25, line: 234, type: !6)
!1346 = !DILocation(line: 235, column: 35, scope: !1333)
!1347 = !DILocation(line: 235, column: 41, scope: !1333)
!1348 = !DILocalVariable(name: "t2", scope: !1333, file: !25, line: 235, type: !6)
!1349 = !DILocation(line: 236, column: 28, scope: !1333)
!1350 = !DILocation(line: 236, column: 35, scope: !1333)
!1351 = !DILocation(line: 236, column: 41, scope: !1333)
!1352 = !DILocalVariable(name: "t3", scope: !1333, file: !25, line: 236, type: !6)
!1353 = !DILocalVariable(name: "t", scope: !1354, file: !25, line: 237, type: !15)
!1354 = distinct !DILexicalBlock(scope: !1333, file: !25, line: 237, column: 13)
!1355 = !DILocation(line: 0, scope: !1354)
!1356 = !DILocation(line: 237, column: 18, scope: !1354)
!1357 = !DILocation(line: 237, scope: !1354)
!1358 = !DILocation(line: 237, column: 34, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !25, line: 237, column: 13)
!1360 = !DILocation(line: 237, column: 13, scope: !1354)
!1361 = !DILocation(line: 239, column: 89, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !25, line: 238, column: 13)
!1363 = !DILocation(line: 239, column: 84, scope: !1362)
!1364 = !DILocation(line: 239, column: 83, scope: !1362)
!1365 = !DILocation(line: 239, column: 105, scope: !1362)
!1366 = !DILocation(line: 239, column: 107, scope: !1362)
!1367 = !DILocation(line: 239, column: 100, scope: !1362)
!1368 = !DILocation(line: 239, column: 99, scope: !1362)
!1369 = !DILocation(line: 239, column: 95, scope: !1362)
!1370 = !DILocation(line: 239, column: 121, scope: !1362)
!1371 = !DILocation(line: 239, column: 123, scope: !1362)
!1372 = !DILocation(line: 239, column: 116, scope: !1362)
!1373 = !DILocation(line: 239, column: 115, scope: !1362)
!1374 = !DILocation(line: 239, column: 111, scope: !1362)
!1375 = !DILocation(line: 239, column: 137, scope: !1362)
!1376 = !DILocation(line: 239, column: 139, scope: !1362)
!1377 = !DILocation(line: 239, column: 132, scope: !1362)
!1378 = !DILocation(line: 239, column: 131, scope: !1362)
!1379 = !DILocation(line: 239, column: 127, scope: !1362)
!1380 = !DILocation(line: 239, column: 22, scope: !1362)
!1381 = !DILocation(line: 239, column: 24, scope: !1362)
!1382 = !DILocation(line: 239, column: 36, scope: !1362)
!1383 = !DILocation(line: 239, column: 40, scope: !1362)
!1384 = !DILocation(line: 239, column: 49, scope: !1362)
!1385 = !DILocation(line: 239, column: 58, scope: !1362)
!1386 = !DILocation(line: 239, column: 60, scope: !1362)
!1387 = !DILocation(line: 239, column: 72, scope: !1362)
!1388 = !DILocation(line: 239, column: 53, scope: !1362)
!1389 = !DILocation(line: 239, column: 17, scope: !1362)
!1390 = !DILocation(line: 239, column: 78, scope: !1362)
!1391 = !DILocation(line: 237, column: 49, scope: !1359)
!1392 = !DILocation(line: 237, column: 13, scope: !1359)
!1393 = distinct !{!1393, !1360, !1394, !323}
!1394 = !DILocation(line: 240, column: 13, scope: !1354)
!1395 = !DILocation(line: 230, column: 82, scope: !1331)
!1396 = !DILocation(line: 230, column: 9, scope: !1331)
!1397 = distinct !{!1397, !1322, !1398, !323}
!1398 = !DILocation(line: 241, column: 9, scope: !1323)
!1399 = !DILocation(line: 228, column: 38, scope: !1321)
!1400 = !DILocation(line: 228, column: 5, scope: !1321)
!1401 = distinct !{!1401, !1288, !1402, !323}
!1402 = !DILocation(line: 242, column: 5, scope: !1289)
!1403 = !DILocation(line: 250, scope: !1326)
!1404 = !DILocalVariable(name: "r", scope: !1326, file: !25, line: 250, type: !45)
!1405 = !DILocation(line: 0, scope: !1326)
!1406 = !DILocation(line: 250, column: 23, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1326, file: !25, line: 250, column: 5)
!1408 = !DILocation(line: 252, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !25, line: 252, column: 9)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !25, line: 251, column: 5)
!1411 = !DILocation(line: 252, scope: !1409)
!1412 = !DILocalVariable(name: "c", scope: !1409, file: !25, line: 252, type: !45)
!1413 = !DILocation(line: 0, scope: !1409)
!1414 = !DILocation(line: 252, column: 27, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1409, file: !25, line: 252, column: 9)
!1416 = !DILocation(line: 254, column: 13, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !25, line: 254, column: 13)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !25, line: 253, column: 9)
!1419 = !DILocation(line: 254, scope: !1417)
!1420 = !DILocalVariable(name: "i", scope: !1417, file: !25, line: 254, type: !45)
!1421 = !DILocation(line: 0, scope: !1417)
!1422 = !DILocation(line: 254, column: 35, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1417, file: !25, line: 254, column: 13)
!1424 = !DILocation(line: 256, column: 55, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1423, file: !25, line: 255, column: 13)
!1426 = !DILocation(line: 256, column: 59, scope: !1425)
!1427 = !DILocation(line: 256, column: 63, scope: !1425)
!1428 = !DILocation(line: 256, column: 44, scope: !1425)
!1429 = !DILocation(line: 256, column: 95, scope: !1425)
!1430 = !DILocation(line: 256, column: 92, scope: !1425)
!1431 = !DILocation(line: 256, column: 75, scope: !1425)
!1432 = !DILocation(line: 256, column: 99, scope: !1425)
!1433 = !DILocation(line: 256, column: 104, scope: !1425)
!1434 = !DILocation(line: 256, column: 17, scope: !1425)
!1435 = !DILocation(line: 254, column: 50, scope: !1423)
!1436 = !DILocation(line: 254, column: 13, scope: !1423)
!1437 = distinct !{!1437, !1416, !1438, !323}
!1438 = !DILocation(line: 257, column: 13, scope: !1417)
!1439 = !DILocation(line: 252, column: 50, scope: !1415)
!1440 = !DILocation(line: 252, column: 9, scope: !1415)
!1441 = distinct !{!1441, !1408, !1442, !323}
!1442 = !DILocation(line: 258, column: 9, scope: !1409)
!1443 = !DILocation(line: 250, column: 38, scope: !1407)
!1444 = !DILocation(line: 250, column: 5, scope: !1407)
!1445 = distinct !{!1445, !1325, !1446, !323}
!1446 = !DILocation(line: 259, column: 5, scope: !1326)
!1447 = !DILocation(line: 260, column: 1, scope: !1094)
!1448 = distinct !DISubprogram(name: "mat_mul", scope: !513, file: !513, line: 79, type: !1449, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !49, !49, !18, !45, !45, !45}
!1451 = !DILocalVariable(name: "a", arg: 1, scope: !1448, file: !513, line: 79, type: !49)
!1452 = !DILocation(line: 0, scope: !1448)
!1453 = !DILocalVariable(name: "b", arg: 2, scope: !1448, file: !513, line: 79, type: !49)
!1454 = !DILocalVariable(name: "c", arg: 3, scope: !1448, file: !513, line: 80, type: !18)
!1455 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1448, file: !513, line: 80, type: !45)
!1456 = !DILocalVariable(name: "row_a", arg: 5, scope: !1448, file: !513, line: 80, type: !45)
!1457 = !DILocalVariable(name: "col_b", arg: 6, scope: !1448, file: !513, line: 80, type: !45)
!1458 = !DILocalVariable(name: "i", scope: !1459, file: !513, line: 81, type: !45)
!1459 = distinct !DILexicalBlock(scope: !1448, file: !513, line: 81, column: 5)
!1460 = !DILocation(line: 0, scope: !1459)
!1461 = !DILocation(line: 81, column: 10, scope: !1459)
!1462 = !DILocation(line: 81, scope: !1459)
!1463 = !DILocation(line: 81, column: 23, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !513, line: 81, column: 5)
!1465 = !DILocation(line: 81, column: 5, scope: !1459)
!1466 = !DILocation(line: 82, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !513, line: 82, column: 9)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !513, line: 81, column: 53)
!1469 = !DILocation(line: 82, scope: !1467)
!1470 = !DILocalVariable(name: "j", scope: !1467, file: !513, line: 82, type: !45)
!1471 = !DILocation(line: 0, scope: !1467)
!1472 = !DILocation(line: 83, column: 18, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !513, line: 82, column: 46)
!1474 = distinct !DILexicalBlock(scope: !1467, file: !513, line: 82, column: 9)
!1475 = !DILocation(line: 83, column: 16, scope: !1473)
!1476 = !DILocation(line: 82, column: 41, scope: !1474)
!1477 = !DILocation(line: 82, column: 9, scope: !1474)
!1478 = distinct !{!1478, !1466, !1479, !323}
!1479 = !DILocation(line: 84, column: 9, scope: !1467)
!1480 = !DILocation(line: 81, column: 32, scope: !1464)
!1481 = !DILocation(line: 81, column: 39, scope: !1464)
!1482 = !DILocation(line: 81, column: 5, scope: !1464)
!1483 = distinct !{!1483, !1465, !1484, !323}
!1484 = !DILocation(line: 85, column: 5, scope: !1459)
!1485 = !DILocation(line: 86, column: 1, scope: !1448)
!1486 = distinct !DISubprogram(name: "mat_add", scope: !513, file: !513, line: 88, type: !1487, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !49, !49, !18, !45, !45}
!1489 = !DILocalVariable(name: "a", arg: 1, scope: !1486, file: !513, line: 88, type: !49)
!1490 = !DILocation(line: 0, scope: !1486)
!1491 = !DILocalVariable(name: "b", arg: 2, scope: !1486, file: !513, line: 88, type: !49)
!1492 = !DILocalVariable(name: "c", arg: 3, scope: !1486, file: !513, line: 89, type: !18)
!1493 = !DILocalVariable(name: "m", arg: 4, scope: !1486, file: !513, line: 89, type: !45)
!1494 = !DILocalVariable(name: "n", arg: 5, scope: !1486, file: !513, line: 89, type: !45)
!1495 = !DILocalVariable(name: "i", scope: !1496, file: !513, line: 90, type: !45)
!1496 = distinct !DILexicalBlock(scope: !1486, file: !513, line: 90, column: 5)
!1497 = !DILocation(line: 0, scope: !1496)
!1498 = !DILocation(line: 90, column: 10, scope: !1496)
!1499 = !DILocation(line: 90, scope: !1496)
!1500 = !DILocation(line: 90, column: 23, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !513, line: 90, column: 5)
!1502 = !DILocation(line: 90, column: 5, scope: !1496)
!1503 = !DILocalVariable(name: "j", scope: !1504, file: !513, line: 91, type: !45)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !513, line: 91, column: 9)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !513, line: 90, column: 33)
!1506 = !DILocation(line: 0, scope: !1504)
!1507 = !DILocation(line: 92, column: 42, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !513, line: 91, column: 37)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !513, line: 91, column: 9)
!1510 = !DILocation(line: 92, column: 38, scope: !1508)
!1511 = !DILocation(line: 92, column: 60, scope: !1508)
!1512 = !DILocation(line: 92, column: 56, scope: !1508)
!1513 = !DILocation(line: 92, column: 32, scope: !1508)
!1514 = !DILocation(line: 92, column: 17, scope: !1508)
!1515 = !DILocation(line: 92, column: 30, scope: !1508)
!1516 = !DILocation(line: 90, column: 28, scope: !1501)
!1517 = !DILocation(line: 90, column: 5, scope: !1501)
!1518 = distinct !{!1518, !1502, !1519, !323}
!1519 = !DILocation(line: 94, column: 5, scope: !1496)
!1520 = !DILocation(line: 95, column: 1, scope: !1486)
!1521 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !296, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1522 = !DILocalVariable(name: "m", arg: 1, scope: !1521, file: !25, line: 32, type: !49)
!1523 = !DILocation(line: 0, scope: !1521)
!1524 = !DILocalVariable(name: "menc", arg: 2, scope: !1521, file: !25, line: 32, type: !18)
!1525 = !DILocalVariable(name: "mlen", arg: 3, scope: !1521, file: !25, line: 32, type: !45)
!1526 = !DILocalVariable(name: "i", scope: !1521, file: !25, line: 33, type: !45)
!1527 = !DILocation(line: 34, column: 10, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1521, file: !25, line: 34, column: 5)
!1529 = !DILocation(line: 34, scope: !1528)
!1530 = !DILocation(line: 34, column: 19, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !25, line: 34, column: 5)
!1532 = !DILocation(line: 34, column: 5, scope: !1528)
!1533 = !DILocation(line: 35, column: 20, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !25, line: 34, column: 44)
!1535 = !DILocation(line: 35, column: 31, scope: !1534)
!1536 = !DILocation(line: 35, column: 27, scope: !1534)
!1537 = !DILocation(line: 35, column: 36, scope: !1534)
!1538 = !DILocation(line: 35, column: 24, scope: !1534)
!1539 = !DILocation(line: 35, column: 9, scope: !1534)
!1540 = !DILocation(line: 35, column: 17, scope: !1534)
!1541 = !DILocation(line: 34, column: 31, scope: !1531)
!1542 = !DILocation(line: 34, column: 38, scope: !1531)
!1543 = !DILocation(line: 34, column: 5, scope: !1531)
!1544 = distinct !{!1544, !1532, !1545, !323}
!1545 = !DILocation(line: 36, column: 5, scope: !1528)
!1546 = !DILocation(line: 41, column: 1, scope: !1521)
!1547 = distinct !DISubprogram(name: "add_f", scope: !513, file: !513, line: 43, type: !1548, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!14, !14, !14}
!1550 = !DILocalVariable(name: "a", arg: 1, scope: !1547, file: !513, line: 43, type: !14)
!1551 = !DILocation(line: 0, scope: !1547)
!1552 = !DILocalVariable(name: "b", arg: 2, scope: !1547, file: !513, line: 43, type: !14)
!1553 = !DILocation(line: 44, column: 14, scope: !1547)
!1554 = !DILocation(line: 44, column: 5, scope: !1547)
!1555 = distinct !DISubprogram(name: "lincomb", scope: !513, file: !513, line: 70, type: !1556, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!14, !49, !49, !45, !45}
!1558 = !DILocalVariable(name: "a", arg: 1, scope: !1555, file: !513, line: 70, type: !49)
!1559 = !DILocation(line: 0, scope: !1555)
!1560 = !DILocalVariable(name: "b", arg: 2, scope: !1555, file: !513, line: 71, type: !49)
!1561 = !DILocalVariable(name: "n", arg: 3, scope: !1555, file: !513, line: 71, type: !45)
!1562 = !DILocalVariable(name: "m", arg: 4, scope: !1555, file: !513, line: 71, type: !45)
!1563 = !DILocalVariable(name: "ret", scope: !1555, file: !513, line: 72, type: !14)
!1564 = !DILocalVariable(name: "i", scope: !1565, file: !513, line: 73, type: !45)
!1565 = distinct !DILexicalBlock(scope: !1555, file: !513, line: 73, column: 5)
!1566 = !DILocation(line: 0, scope: !1565)
!1567 = !DILocation(line: 73, column: 10, scope: !1565)
!1568 = !DILocation(line: 73, scope: !1565)
!1569 = !DILocation(line: 73, column: 23, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !513, line: 73, column: 5)
!1571 = !DILocation(line: 73, column: 5, scope: !1565)
!1572 = !DILocation(line: 74, column: 27, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !513, line: 73, column: 41)
!1574 = !DILocation(line: 74, column: 33, scope: !1573)
!1575 = !DILocation(line: 74, column: 21, scope: !1573)
!1576 = !DILocation(line: 74, column: 15, scope: !1573)
!1577 = !DILocation(line: 73, column: 28, scope: !1570)
!1578 = !DILocation(line: 73, column: 35, scope: !1570)
!1579 = !DILocation(line: 73, column: 5, scope: !1570)
!1580 = distinct !{!1580, !1571, !1581, !323}
!1581 = !DILocation(line: 75, column: 5, scope: !1565)
!1582 = !DILocation(line: 76, column: 5, scope: !1555)
!1583 = distinct !DISubprogram(name: "mul_f", scope: !513, file: !513, line: 9, type: !1548, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1584 = !DILocalVariable(name: "a", arg: 1, scope: !1583, file: !513, line: 9, type: !14)
!1585 = !DILocation(line: 0, scope: !1583)
!1586 = !DILocalVariable(name: "b", arg: 2, scope: !1583, file: !513, line: 9, type: !14)
!1587 = !DILocation(line: 14, column: 10, scope: !1583)
!1588 = !DILocation(line: 14, column: 7, scope: !1583)
!1589 = !DILocation(line: 17, column: 17, scope: !1583)
!1590 = !DILocalVariable(name: "p", scope: !1583, file: !513, line: 11, type: !14)
!1591 = !DILocation(line: 18, column: 13, scope: !1583)
!1592 = !DILocation(line: 18, column: 17, scope: !1583)
!1593 = !DILocation(line: 18, column: 7, scope: !1583)
!1594 = !DILocation(line: 19, column: 13, scope: !1583)
!1595 = !DILocation(line: 19, column: 17, scope: !1583)
!1596 = !DILocation(line: 19, column: 7, scope: !1583)
!1597 = !DILocation(line: 20, column: 13, scope: !1583)
!1598 = !DILocation(line: 20, column: 17, scope: !1583)
!1599 = !DILocation(line: 20, column: 7, scope: !1583)
!1600 = !DILocalVariable(name: "top_p", scope: !1583, file: !513, line: 23, type: !14)
!1601 = !DILocation(line: 24, column: 37, scope: !1583)
!1602 = !DILocation(line: 24, column: 52, scope: !1583)
!1603 = !DILocation(line: 24, column: 43, scope: !1583)
!1604 = !DILocation(line: 24, column: 59, scope: !1583)
!1605 = !DILocalVariable(name: "out", scope: !1583, file: !513, line: 24, type: !14)
!1606 = !DILocation(line: 25, column: 5, scope: !1583)
!1607 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1608 = !DILocation(line: 0, scope: !24)
!1609 = !DILocalVariable(name: "i", scope: !1610, file: !25, line: 117, type: !15)
!1610 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1611 = !DILocation(line: 0, scope: !1610)
!1612 = !DILocation(line: 117, column: 10, scope: !1610)
!1613 = !DILocation(line: 117, scope: !1610)
!1614 = !DILocation(line: 117, column: 26, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !25, line: 117, column: 5)
!1616 = !DILocation(line: 117, column: 5, scope: !1610)
!1617 = !DILocation(line: 124, column: 5, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1619 = !DILocation(line: 119, column: 24, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !25, line: 118, column: 5)
!1621 = !DILocation(line: 119, column: 29, scope: !1620)
!1622 = !DILocation(line: 119, column: 41, scope: !1620)
!1623 = !DILocation(line: 119, column: 38, scope: !1620)
!1624 = !DILocation(line: 119, column: 36, scope: !1620)
!1625 = !DILocation(line: 119, column: 46, scope: !1620)
!1626 = !DILocalVariable(name: "t", scope: !1620, file: !25, line: 119, type: !6)
!1627 = !DILocation(line: 0, scope: !1620)
!1628 = !DILocation(line: 120, column: 21, scope: !1620)
!1629 = !DILocation(line: 120, column: 9, scope: !1620)
!1630 = !DILocation(line: 120, column: 16, scope: !1620)
!1631 = !DILocation(line: 121, column: 12, scope: !1620)
!1632 = !DILocation(line: 121, column: 9, scope: !1620)
!1633 = !DILocation(line: 121, column: 16, scope: !1620)
!1634 = !DILocation(line: 117, column: 33, scope: !1615)
!1635 = !DILocation(line: 117, column: 5, scope: !1615)
!1636 = distinct !{!1636, !1616, !1637, !323}
!1637 = !DILocation(line: 122, column: 5, scope: !1610)
!1638 = !DILocation(line: 124, scope: !1618)
!1639 = !DILocalVariable(name: "i", scope: !1618, file: !25, line: 124, type: !15)
!1640 = !DILocation(line: 0, scope: !1618)
!1641 = !DILocation(line: 124, column: 26, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1618, file: !25, line: 124, column: 5)
!1643 = !DILocation(line: 134, column: 5, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1645 = !DILocation(line: 126, column: 25, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !25, line: 125, column: 5)
!1647 = !DILocation(line: 126, column: 32, scope: !1646)
!1648 = !DILocation(line: 126, column: 43, scope: !1646)
!1649 = !DILocation(line: 126, column: 40, scope: !1646)
!1650 = !DILocation(line: 126, column: 38, scope: !1646)
!1651 = !DILocation(line: 126, column: 48, scope: !1646)
!1652 = !DILocalVariable(name: "t0", scope: !1646, file: !25, line: 126, type: !6)
!1653 = !DILocation(line: 0, scope: !1646)
!1654 = !DILocation(line: 127, column: 28, scope: !1646)
!1655 = !DILocation(line: 127, column: 25, scope: !1646)
!1656 = !DILocation(line: 127, column: 32, scope: !1646)
!1657 = !DILocation(line: 127, column: 43, scope: !1646)
!1658 = !DILocation(line: 127, column: 40, scope: !1646)
!1659 = !DILocation(line: 127, column: 38, scope: !1646)
!1660 = !DILocation(line: 127, column: 48, scope: !1646)
!1661 = !DILocalVariable(name: "t1", scope: !1646, file: !25, line: 127, type: !6)
!1662 = !DILocation(line: 128, column: 23, scope: !1646)
!1663 = !DILocation(line: 128, column: 9, scope: !1646)
!1664 = !DILocation(line: 128, column: 16, scope: !1646)
!1665 = !DILocation(line: 129, column: 23, scope: !1646)
!1666 = !DILocation(line: 129, column: 12, scope: !1646)
!1667 = !DILocation(line: 129, column: 9, scope: !1646)
!1668 = !DILocation(line: 129, column: 16, scope: !1646)
!1669 = !DILocation(line: 130, column: 12, scope: !1646)
!1670 = !DILocation(line: 130, column: 9, scope: !1646)
!1671 = !DILocation(line: 130, column: 16, scope: !1646)
!1672 = !DILocation(line: 131, column: 12, scope: !1646)
!1673 = !DILocation(line: 131, column: 9, scope: !1646)
!1674 = !DILocation(line: 131, column: 16, scope: !1646)
!1675 = !DILocation(line: 124, column: 33, scope: !1642)
!1676 = !DILocation(line: 124, column: 5, scope: !1642)
!1677 = distinct !{!1677, !1617, !1678, !323}
!1678 = !DILocation(line: 132, column: 5, scope: !1618)
!1679 = !DILocation(line: 134, scope: !1644)
!1680 = !DILocalVariable(name: "i", scope: !1644, file: !25, line: 134, type: !15)
!1681 = !DILocation(line: 0, scope: !1644)
!1682 = !DILocation(line: 134, column: 26, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1644, file: !25, line: 134, column: 5)
!1684 = !DILocation(line: 145, column: 5, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1686 = !DILocation(line: 136, column: 25, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !25, line: 135, column: 5)
!1688 = !DILocation(line: 136, column: 32, scope: !1687)
!1689 = !DILocation(line: 136, column: 44, scope: !1687)
!1690 = !DILocation(line: 136, column: 41, scope: !1687)
!1691 = !DILocation(line: 136, column: 39, scope: !1687)
!1692 = !DILocation(line: 136, column: 50, scope: !1687)
!1693 = !DILocalVariable(name: "t0", scope: !1687, file: !25, line: 136, type: !6)
!1694 = !DILocation(line: 0, scope: !1687)
!1695 = !DILocation(line: 137, column: 28, scope: !1687)
!1696 = !DILocation(line: 137, column: 25, scope: !1687)
!1697 = !DILocation(line: 137, column: 32, scope: !1687)
!1698 = !DILocation(line: 137, column: 44, scope: !1687)
!1699 = !DILocation(line: 137, column: 41, scope: !1687)
!1700 = !DILocation(line: 137, column: 39, scope: !1687)
!1701 = !DILocation(line: 137, column: 50, scope: !1687)
!1702 = !DILocalVariable(name: "t1", scope: !1687, file: !25, line: 137, type: !6)
!1703 = !DILocation(line: 139, column: 23, scope: !1687)
!1704 = !DILocation(line: 139, column: 9, scope: !1687)
!1705 = !DILocation(line: 139, column: 17, scope: !1687)
!1706 = !DILocation(line: 140, column: 23, scope: !1687)
!1707 = !DILocation(line: 140, column: 12, scope: !1687)
!1708 = !DILocation(line: 140, column: 9, scope: !1687)
!1709 = !DILocation(line: 140, column: 17, scope: !1687)
!1710 = !DILocation(line: 141, column: 12, scope: !1687)
!1711 = !DILocation(line: 141, column: 9, scope: !1687)
!1712 = !DILocation(line: 141, column: 17, scope: !1687)
!1713 = !DILocation(line: 142, column: 12, scope: !1687)
!1714 = !DILocation(line: 142, column: 9, scope: !1687)
!1715 = !DILocation(line: 142, column: 17, scope: !1687)
!1716 = !DILocation(line: 134, column: 32, scope: !1683)
!1717 = !DILocation(line: 134, column: 5, scope: !1683)
!1718 = distinct !{!1718, !1643, !1719, !323}
!1719 = !DILocation(line: 143, column: 5, scope: !1644)
!1720 = !DILocation(line: 145, scope: !1685)
!1721 = !DILocalVariable(name: "i", scope: !1685, file: !25, line: 145, type: !15)
!1722 = !DILocation(line: 0, scope: !1685)
!1723 = !DILocation(line: 145, column: 26, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1685, file: !25, line: 145, column: 5)
!1725 = !DILocation(line: 147, column: 24, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1724, file: !25, line: 146, column: 5)
!1727 = !DILocation(line: 147, column: 28, scope: !1726)
!1728 = !DILocation(line: 147, column: 39, scope: !1726)
!1729 = !DILocation(line: 147, column: 36, scope: !1726)
!1730 = !DILocation(line: 147, column: 44, scope: !1726)
!1731 = !DILocalVariable(name: "t", scope: !1726, file: !25, line: 147, type: !6)
!1732 = !DILocation(line: 0, scope: !1726)
!1733 = !DILocation(line: 148, column: 21, scope: !1726)
!1734 = !DILocation(line: 148, column: 9, scope: !1726)
!1735 = !DILocation(line: 148, column: 16, scope: !1726)
!1736 = !DILocation(line: 149, column: 12, scope: !1726)
!1737 = !DILocation(line: 149, column: 9, scope: !1726)
!1738 = !DILocation(line: 149, column: 16, scope: !1726)
!1739 = !DILocation(line: 145, column: 32, scope: !1724)
!1740 = !DILocation(line: 145, column: 5, scope: !1724)
!1741 = distinct !{!1741, !1684, !1742, !323}
!1742 = !DILocation(line: 150, column: 5, scope: !1685)
!1743 = !DILocation(line: 151, column: 1, scope: !24)
!1744 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !343, file: !343, line: 61, type: !399, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1745 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1744, file: !343, line: 61, type: !259)
!1746 = !DILocation(line: 0, scope: !1744)
!1747 = !DILocalVariable(name: "mat", arg: 2, scope: !1744, file: !343, line: 61, type: !49)
!1748 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1744, file: !343, line: 61, type: !346)
!1749 = !DILocalVariable(name: "acc", arg: 4, scope: !1744, file: !343, line: 61, type: !5)
!1750 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1744, file: !343, line: 62, type: !259)
!1751 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1744, file: !343, line: 62, type: !259)
!1752 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1744, file: !343, line: 62, type: !259)
!1753 = !DILocalVariable(name: "r", scope: !1754, file: !343, line: 64, type: !45)
!1754 = distinct !DILexicalBlock(scope: !1744, file: !343, line: 64, column: 5)
!1755 = !DILocation(line: 0, scope: !1754)
!1756 = !DILocation(line: 64, column: 10, scope: !1754)
!1757 = !DILocation(line: 64, scope: !1754)
!1758 = !DILocation(line: 64, column: 23, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !343, line: 64, column: 5)
!1760 = !DILocation(line: 64, column: 5, scope: !1754)
!1761 = !DILocation(line: 65, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !343, line: 65, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !343, line: 64, column: 40)
!1764 = !DILocation(line: 65, scope: !1762)
!1765 = !DILocalVariable(name: "c", scope: !1762, file: !343, line: 65, type: !45)
!1766 = !DILocation(line: 0, scope: !1762)
!1767 = !DILocation(line: 65, column: 27, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1762, file: !343, line: 65, column: 9)
!1769 = !DILocation(line: 66, column: 13, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !343, line: 66, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !343, line: 65, column: 44)
!1772 = !DILocation(line: 66, scope: !1770)
!1773 = !DILocalVariable(name: "k", scope: !1770, file: !343, line: 66, type: !45)
!1774 = !DILocation(line: 0, scope: !1770)
!1775 = !DILocation(line: 66, column: 31, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1770, file: !343, line: 66, column: 13)
!1777 = !DILocation(line: 67, column: 70, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !343, line: 66, column: 54)
!1779 = !DILocation(line: 67, column: 84, scope: !1778)
!1780 = !DILocation(line: 67, column: 51, scope: !1778)
!1781 = !DILocation(line: 67, column: 96, scope: !1778)
!1782 = !DILocation(line: 67, column: 90, scope: !1778)
!1783 = !DILocation(line: 67, column: 136, scope: !1778)
!1784 = !DILocation(line: 67, column: 150, scope: !1778)
!1785 = !DILocation(line: 67, column: 117, scope: !1778)
!1786 = !DILocation(line: 67, column: 17, scope: !1778)
!1787 = !DILocation(line: 66, column: 48, scope: !1776)
!1788 = !DILocation(line: 66, column: 13, scope: !1776)
!1789 = distinct !{!1789, !1769, !1790, !323}
!1790 = !DILocation(line: 68, column: 13, scope: !1770)
!1791 = !DILocation(line: 65, column: 40, scope: !1768)
!1792 = !DILocation(line: 65, column: 9, scope: !1768)
!1793 = distinct !{!1793, !1761, !1794, !323}
!1794 = !DILocation(line: 69, column: 9, scope: !1762)
!1795 = !DILocation(line: 64, column: 36, scope: !1759)
!1796 = !DILocation(line: 64, column: 5, scope: !1759)
!1797 = distinct !{!1797, !1760, !1798, !323}
!1798 = !DILocation(line: 70, column: 5, scope: !1754)
!1799 = !DILocation(line: 71, column: 1, scope: !1744)
!1800 = distinct !DISubprogram(name: "P1_times_Vt", scope: !343, file: !343, line: 82, type: !389, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1801 = !DILocalVariable(name: "p", arg: 1, scope: !1800, file: !343, line: 82, type: !194)
!1802 = !DILocation(line: 0, scope: !1800)
!1803 = !DILocalVariable(name: "P1", arg: 2, scope: !1800, file: !343, line: 82, type: !346)
!1804 = !DILocalVariable(name: "V", arg: 3, scope: !1800, file: !343, line: 82, type: !49)
!1805 = !DILocalVariable(name: "acc", arg: 4, scope: !1800, file: !343, line: 82, type: !5)
!1806 = !DILocation(line: 86, column: 5, scope: !1800)
!1807 = !DILocation(line: 87, column: 1, scope: !1800)
!1808 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !343, file: !343, line: 32, type: !529, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1809 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1808, file: !343, line: 32, type: !259)
!1810 = !DILocation(line: 0, scope: !1808)
!1811 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1808, file: !343, line: 32, type: !346)
!1812 = !DILocalVariable(name: "mat", arg: 3, scope: !1808, file: !343, line: 32, type: !49)
!1813 = !DILocalVariable(name: "acc", arg: 4, scope: !1808, file: !343, line: 32, type: !5)
!1814 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1808, file: !343, line: 33, type: !259)
!1815 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1808, file: !343, line: 33, type: !259)
!1816 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1808, file: !343, line: 33, type: !259)
!1817 = !DILocalVariable(name: "triangular", arg: 8, scope: !1808, file: !343, line: 33, type: !259)
!1818 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1808, file: !343, line: 34, type: !45)
!1819 = !DILocalVariable(name: "r", scope: !1820, file: !343, line: 35, type: !45)
!1820 = distinct !DILexicalBlock(scope: !1808, file: !343, line: 35, column: 5)
!1821 = !DILocation(line: 0, scope: !1820)
!1822 = !DILocation(line: 35, column: 10, scope: !1820)
!1823 = !DILocation(line: 34, column: 9, scope: !1808)
!1824 = !DILocation(line: 35, scope: !1820)
!1825 = !DILocation(line: 35, column: 23, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !343, line: 35, column: 5)
!1827 = !DILocation(line: 35, column: 5, scope: !1820)
!1828 = !DILocation(line: 36, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !343, line: 36, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !343, line: 35, column: 43)
!1831 = !DILocation(line: 36, scope: !1829)
!1832 = !DILocalVariable(name: "c", scope: !1829, file: !343, line: 36, type: !45)
!1833 = !DILocation(line: 0, scope: !1829)
!1834 = !DILocation(line: 36, column: 40, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1829, file: !343, line: 36, column: 9)
!1836 = !DILocation(line: 37, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !343, line: 37, column: 13)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !343, line: 36, column: 60)
!1839 = !DILocation(line: 37, scope: !1837)
!1840 = !DILocalVariable(name: "k", scope: !1837, file: !343, line: 37, type: !45)
!1841 = !DILocation(line: 0, scope: !1837)
!1842 = !DILocation(line: 37, column: 31, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !343, line: 37, column: 13)
!1844 = !DILocation(line: 38, column: 51, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1843, file: !343, line: 37, column: 51)
!1846 = !DILocation(line: 38, column: 94, scope: !1845)
!1847 = !DILocation(line: 38, column: 88, scope: !1845)
!1848 = !DILocation(line: 38, column: 137, scope: !1845)
!1849 = !DILocation(line: 38, column: 148, scope: !1845)
!1850 = !DILocation(line: 38, column: 118, scope: !1845)
!1851 = !DILocation(line: 38, column: 17, scope: !1845)
!1852 = !DILocation(line: 37, column: 45, scope: !1843)
!1853 = !DILocation(line: 37, column: 13, scope: !1843)
!1854 = distinct !{!1854, !1836, !1855, !323}
!1855 = !DILocation(line: 39, column: 13, scope: !1837)
!1856 = !DILocation(line: 40, column: 33, scope: !1838)
!1857 = !DILocation(line: 36, column: 56, scope: !1835)
!1858 = !DILocation(line: 36, column: 9, scope: !1835)
!1859 = distinct !{!1859, !1828, !1860, !323}
!1860 = !DILocation(line: 41, column: 9, scope: !1829)
!1861 = !DILocation(line: 35, column: 39, scope: !1826)
!1862 = !DILocation(line: 35, column: 5, scope: !1826)
!1863 = distinct !{!1863, !1827, !1864, !323}
!1864 = !DILocation(line: 42, column: 5, scope: !1820)
!1865 = !DILocation(line: 43, column: 1, scope: !1808)
!1866 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !720, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1867 = !DILocalVariable(name: "p", arg: 1, scope: !1866, file: !25, line: 501, type: !194)
!1868 = !DILocation(line: 0, scope: !1866)
!1869 = !DILocalVariable(name: "sm", arg: 2, scope: !1866, file: !25, line: 501, type: !18)
!1870 = !DILocalVariable(name: "smlen", arg: 3, scope: !1866, file: !25, line: 502, type: !722)
!1871 = !DILocalVariable(name: "m", arg: 4, scope: !1866, file: !25, line: 502, type: !49)
!1872 = !DILocalVariable(name: "mlen", arg: 5, scope: !1866, file: !25, line: 503, type: !15)
!1873 = !DILocalVariable(name: "csk", arg: 6, scope: !1866, file: !25, line: 503, type: !49)
!1874 = !DILocalVariable(name: "ret", scope: !1866, file: !25, line: 504, type: !45)
!1875 = !DILocalVariable(name: "param_sig_bytes", scope: !1866, file: !25, line: 505, type: !259)
!1876 = !DILocation(line: 507, column: 16, scope: !1866)
!1877 = !DILocation(line: 507, column: 5, scope: !1866)
!1878 = !DILocation(line: 508, column: 50, scope: !1866)
!1879 = !DILocalVariable(name: "siglen", scope: !1866, file: !25, line: 506, type: !15)
!1880 = !DILocation(line: 508, column: 11, scope: !1866)
!1881 = !DILocation(line: 509, column: 13, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1866, file: !25, line: 509, column: 9)
!1883 = !DILocation(line: 509, column: 24, scope: !1882)
!1884 = !DILocation(line: 510, column: 23, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !25, line: 509, column: 62)
!1886 = !DILocation(line: 510, column: 30, scope: !1885)
!1887 = !DILocation(line: 510, column: 9, scope: !1885)
!1888 = !DILocation(line: 511, column: 9, scope: !1885)
!1889 = !DILocation(line: 514, column: 14, scope: !1866)
!1890 = !DILocation(line: 514, column: 21, scope: !1866)
!1891 = !DILocation(line: 514, column: 12, scope: !1866)
!1892 = !DILocation(line: 514, column: 5, scope: !1866)
!1893 = !DILabel(scope: !1866, name: "err", file: !25, line: 515)
!1894 = !DILocation(line: 515, column: 1, scope: !1866)
!1895 = !DILocation(line: 516, column: 5, scope: !1866)
!1896 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_open", scope: !25, file: !25, line: 519, type: !720, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1897 = !DILocalVariable(name: "p", arg: 1, scope: !1896, file: !25, line: 519, type: !194)
!1898 = !DILocation(line: 0, scope: !1896)
!1899 = !DILocalVariable(name: "m", arg: 2, scope: !1896, file: !25, line: 519, type: !18)
!1900 = !DILocalVariable(name: "mlen", arg: 3, scope: !1896, file: !25, line: 520, type: !722)
!1901 = !DILocalVariable(name: "sm", arg: 4, scope: !1896, file: !25, line: 520, type: !49)
!1902 = !DILocalVariable(name: "smlen", arg: 5, scope: !1896, file: !25, line: 521, type: !15)
!1903 = !DILocalVariable(name: "pk", arg: 6, scope: !1896, file: !25, line: 521, type: !49)
!1904 = !DILocalVariable(name: "param_sig_bytes", scope: !1896, file: !25, line: 522, type: !259)
!1905 = !DILocation(line: 523, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1896, file: !25, line: 523, column: 9)
!1907 = !DILocation(line: 526, column: 36, scope: !1896)
!1908 = !DILocation(line: 526, column: 61, scope: !1896)
!1909 = !DILocation(line: 526, column: 18, scope: !1896)
!1910 = !DILocalVariable(name: "result", scope: !1896, file: !25, line: 526, type: !45)
!1911 = !DILocation(line: 529, column: 16, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1896, file: !25, line: 529, column: 9)
!1913 = !DILocation(line: 530, column: 23, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1912, file: !25, line: 529, column: 28)
!1915 = !DILocation(line: 530, column: 15, scope: !1914)
!1916 = !DILocation(line: 531, column: 23, scope: !1914)
!1917 = !DILocation(line: 531, column: 9, scope: !1914)
!1918 = !DILocation(line: 532, column: 5, scope: !1914)
!1919 = !DILocation(line: 535, column: 1, scope: !1896)
!1920 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1921, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!45, !194, !49, !15, !49, !49}
!1923 = !DILocalVariable(name: "p", arg: 1, scope: !1920, file: !25, line: 616, type: !194)
!1924 = !DILocation(line: 0, scope: !1920)
!1925 = !DILocalVariable(name: "m", arg: 2, scope: !1920, file: !25, line: 616, type: !49)
!1926 = !DILocalVariable(name: "mlen", arg: 3, scope: !1920, file: !25, line: 617, type: !15)
!1927 = !DILocalVariable(name: "sig", arg: 4, scope: !1920, file: !25, line: 617, type: !49)
!1928 = !DILocalVariable(name: "cpk", arg: 5, scope: !1920, file: !25, line: 618, type: !49)
!1929 = !DILocalVariable(name: "tEnc", scope: !1920, file: !25, line: 619, type: !732)
!1930 = !DILocation(line: 619, column: 19, scope: !1920)
!1931 = !DILocalVariable(name: "t", scope: !1920, file: !25, line: 620, type: !737)
!1932 = !DILocation(line: 620, column: 19, scope: !1920)
!1933 = !DILocalVariable(name: "y", scope: !1920, file: !25, line: 621, type: !1934)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2272, elements: !1935)
!1935 = !{!1936}
!1936 = !DISubrange(count: 284)
!1937 = !DILocation(line: 621, column: 19, scope: !1920)
!1938 = !DILocalVariable(name: "s", scope: !1920, file: !25, line: 622, type: !761)
!1939 = !DILocation(line: 622, column: 19, scope: !1920)
!1940 = !DILocalVariable(name: "pk", scope: !1920, file: !25, line: 623, type: !143)
!1941 = !DILocation(line: 623, column: 14, scope: !1920)
!1942 = !DILocalVariable(name: "tmp", scope: !1920, file: !25, line: 624, type: !1943)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 832, elements: !1944)
!1944 = !{!1945}
!1945 = !DISubrange(count: 104)
!1946 = !DILocation(line: 624, column: 19, scope: !1920)
!1947 = !DILocalVariable(name: "param_m", scope: !1920, file: !25, line: 626, type: !259)
!1948 = !DILocalVariable(name: "param_n", scope: !1920, file: !25, line: 627, type: !259)
!1949 = !DILocalVariable(name: "param_k", scope: !1920, file: !25, line: 628, type: !259)
!1950 = !DILocalVariable(name: "param_m_bytes", scope: !1920, file: !25, line: 629, type: !259)
!1951 = !DILocalVariable(name: "param_sig_bytes", scope: !1920, file: !25, line: 630, type: !259)
!1952 = !DILocalVariable(name: "param_digest_bytes", scope: !1920, file: !25, line: 631, type: !259)
!1953 = !DILocalVariable(name: "param_salt_bytes", scope: !1920, file: !25, line: 632, type: !259)
!1954 = !DILocation(line: 634, column: 15, scope: !1920)
!1955 = !DILocalVariable(name: "ret", scope: !1920, file: !25, line: 634, type: !45)
!1956 = !DILocalVariable(name: "P1", scope: !1920, file: !25, line: 639, type: !5)
!1957 = !DILocation(line: 640, column: 23, scope: !1920)
!1958 = !DILocalVariable(name: "P2", scope: !1920, file: !25, line: 640, type: !5)
!1959 = !DILocation(line: 641, column: 23, scope: !1920)
!1960 = !DILocalVariable(name: "P3", scope: !1920, file: !25, line: 641, type: !5)
!1961 = !DILocation(line: 656, column: 5, scope: !1920)
!1962 = !DILocation(line: 659, column: 16, scope: !1920)
!1963 = !DILocation(line: 659, column: 60, scope: !1920)
!1964 = !DILocation(line: 659, column: 5, scope: !1920)
!1965 = !DILocation(line: 661, column: 5, scope: !1920)
!1966 = !DILocation(line: 662, column: 5, scope: !1920)
!1967 = !DILocation(line: 665, column: 5, scope: !1920)
!1968 = !DILocation(line: 667, column: 5, scope: !1920)
!1969 = !DILocation(line: 669, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1920, file: !25, line: 669, column: 9)
!1971 = !DILocation(line: 669, column: 31, scope: !1970)
!1972 = !DILocation(line: 673, column: 1, scope: !1920)
!1973 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !623, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1974 = !DILocalVariable(name: "p", arg: 1, scope: !1973, file: !25, line: 607, type: !194)
!1975 = !DILocation(line: 0, scope: !1973)
!1976 = !DILocalVariable(name: "cpk", arg: 2, scope: !1973, file: !25, line: 607, type: !49)
!1977 = !DILocalVariable(name: "pk", arg: 3, scope: !1973, file: !25, line: 608, type: !5)
!1978 = !DILocation(line: 609, column: 5, scope: !1973)
!1979 = !DILocation(line: 611, column: 23, scope: !1973)
!1980 = !DILocation(line: 611, column: 72, scope: !1973)
!1981 = !DILocation(line: 611, column: 5, scope: !1973)
!1982 = !DILocation(line: 613, column: 5, scope: !1973)
!1983 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1984, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !194, !49, !346, !346, !346, !18}
!1986 = !DILocalVariable(name: "p", arg: 1, scope: !1983, file: !25, line: 288, type: !194)
!1987 = !DILocation(line: 0, scope: !1983)
!1988 = !DILocalVariable(name: "s", arg: 2, scope: !1983, file: !25, line: 288, type: !49)
!1989 = !DILocalVariable(name: "P1", arg: 3, scope: !1983, file: !25, line: 288, type: !346)
!1990 = !DILocalVariable(name: "P2", arg: 4, scope: !1983, file: !25, line: 288, type: !346)
!1991 = !DILocalVariable(name: "P3", arg: 5, scope: !1983, file: !25, line: 288, type: !346)
!1992 = !DILocalVariable(name: "eval", arg: 6, scope: !1983, file: !25, line: 288, type: !18)
!1993 = !DILocalVariable(name: "SPS", scope: !1983, file: !25, line: 289, type: !249)
!1994 = !DILocation(line: 289, column: 14, scope: !1983)
!1995 = !DILocation(line: 291, column: 5, scope: !1983)
!1996 = !DILocalVariable(name: "zero", scope: !1983, file: !25, line: 292, type: !737)
!1997 = !DILocation(line: 292, column: 19, scope: !1983)
!1998 = !DILocation(line: 293, column: 5, scope: !1983)
!1999 = !DILocation(line: 294, column: 1, scope: !1983)
!2000 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !343, file: !343, line: 277, type: !2001, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !194, !346, !346, !346, !49, !5}
!2003 = !DILocalVariable(name: "p", arg: 1, scope: !2000, file: !343, line: 277, type: !194)
!2004 = !DILocation(line: 0, scope: !2000)
!2005 = !DILocalVariable(name: "P1", arg: 2, scope: !2000, file: !343, line: 277, type: !346)
!2006 = !DILocalVariable(name: "P2", arg: 3, scope: !2000, file: !343, line: 277, type: !346)
!2007 = !DILocalVariable(name: "P3", arg: 4, scope: !2000, file: !343, line: 277, type: !346)
!2008 = !DILocalVariable(name: "s", arg: 5, scope: !2000, file: !343, line: 277, type: !49)
!2009 = !DILocalVariable(name: "SPS", arg: 6, scope: !2000, file: !343, line: 278, type: !5)
!2010 = !DILocalVariable(name: "PS", scope: !2000, file: !343, line: 286, type: !2011)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1064448, elements: !2012)
!2012 = !{!2013}
!2013 = !DISubrange(count: 16632)
!2014 = !DILocation(line: 286, column: 14, scope: !2000)
!2015 = !DILocation(line: 287, column: 5, scope: !2000)
!2016 = !DILocation(line: 290, column: 5, scope: !2000)
!2017 = !DILocation(line: 292, column: 1, scope: !2000)
!2018 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !343, file: !343, line: 151, type: !2019, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !346, !346, !346, !49, !259, !259, !259, !259, !5}
!2021 = !DILocalVariable(name: "P1", arg: 1, scope: !2018, file: !343, line: 151, type: !346)
!2022 = !DILocation(line: 0, scope: !2018)
!2023 = !DILocalVariable(name: "P2", arg: 2, scope: !2018, file: !343, line: 151, type: !346)
!2024 = !DILocalVariable(name: "P3", arg: 3, scope: !2018, file: !343, line: 151, type: !346)
!2025 = !DILocalVariable(name: "S", arg: 4, scope: !2018, file: !343, line: 151, type: !49)
!2026 = !DILocalVariable(name: "m", arg: 5, scope: !2018, file: !343, line: 152, type: !259)
!2027 = !DILocalVariable(name: "v", arg: 6, scope: !2018, file: !343, line: 152, type: !259)
!2028 = !DILocalVariable(name: "o", arg: 7, scope: !2018, file: !343, line: 152, type: !259)
!2029 = !DILocalVariable(name: "k", arg: 8, scope: !2018, file: !343, line: 152, type: !259)
!2030 = !DILocalVariable(name: "PS", arg: 9, scope: !2018, file: !343, line: 152, type: !5)
!2031 = !DILocalVariable(name: "n", scope: !2018, file: !343, line: 154, type: !259)
!2032 = !DILocalVariable(name: "m_vec_limbs", scope: !2018, file: !343, line: 155, type: !259)
!2033 = !DILocalVariable(name: "accumulator", scope: !2018, file: !343, line: 157, type: !2034)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17031168, elements: !2035)
!2035 = !{!2036}
!2036 = !DISubrange(count: 266112)
!2037 = !DILocation(line: 157, column: 14, scope: !2018)
!2038 = !DILocalVariable(name: "P1_used", scope: !2018, file: !343, line: 158, type: !45)
!2039 = !DILocalVariable(name: "row", scope: !2040, file: !343, line: 159, type: !45)
!2040 = distinct !DILexicalBlock(scope: !2018, file: !343, line: 159, column: 5)
!2041 = !DILocation(line: 0, scope: !2040)
!2042 = !DILocation(line: 159, column: 10, scope: !2040)
!2043 = !DILocation(line: 158, column: 9, scope: !2018)
!2044 = !DILocation(line: 159, scope: !2040)
!2045 = !DILocation(line: 159, column: 27, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2040, file: !343, line: 159, column: 5)
!2047 = !DILocation(line: 159, column: 5, scope: !2040)
!2048 = !DILocation(line: 160, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !343, line: 160, column: 9)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !343, line: 159, column: 39)
!2051 = !DILocation(line: 175, column: 5, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2018, file: !343, line: 175, column: 5)
!2053 = !DILocation(line: 160, scope: !2049)
!2054 = !DILocalVariable(name: "j", scope: !2049, file: !343, line: 160, type: !45)
!2055 = !DILocation(line: 0, scope: !2049)
!2056 = !DILocation(line: 160, column: 29, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2049, file: !343, line: 160, column: 9)
!2058 = !DILocation(line: 167, column: 9, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !343, line: 167, column: 9)
!2060 = !DILocation(line: 161, column: 13, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !343, line: 161, column: 13)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !343, line: 160, column: 39)
!2063 = !DILocation(line: 161, scope: !2061)
!2064 = !DILocalVariable(name: "col", scope: !2061, file: !343, line: 161, type: !45)
!2065 = !DILocation(line: 0, scope: !2061)
!2066 = !DILocation(line: 161, column: 35, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2061, file: !343, line: 161, column: 13)
!2068 = !DILocation(line: 162, column: 43, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2067, file: !343, line: 161, column: 47)
!2070 = !DILocation(line: 162, column: 91, scope: !2069)
!2071 = !DILocation(line: 162, column: 95, scope: !2069)
!2072 = !DILocation(line: 162, column: 102, scope: !2069)
!2073 = !DILocation(line: 162, column: 115, scope: !2069)
!2074 = !DILocation(line: 162, column: 109, scope: !2069)
!2075 = !DILocation(line: 162, column: 107, scope: !2069)
!2076 = !DILocation(line: 162, column: 82, scope: !2069)
!2077 = !DILocation(line: 162, column: 17, scope: !2069)
!2078 = !DILocation(line: 161, column: 43, scope: !2067)
!2079 = !DILocation(line: 161, column: 13, scope: !2067)
!2080 = distinct !{!2080, !2060, !2081, !323}
!2081 = !DILocation(line: 163, column: 13, scope: !2061)
!2082 = !DILocation(line: 164, column: 21, scope: !2062)
!2083 = !DILocation(line: 160, column: 35, scope: !2057)
!2084 = !DILocation(line: 160, column: 9, scope: !2057)
!2085 = distinct !{!2085, !2048, !2086, !323}
!2086 = !DILocation(line: 165, column: 9, scope: !2049)
!2087 = !DILocation(line: 167, scope: !2059)
!2088 = !DILocalVariable(name: "j", scope: !2059, file: !343, line: 167, type: !45)
!2089 = !DILocation(line: 0, scope: !2059)
!2090 = !DILocation(line: 167, column: 27, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2059, file: !343, line: 167, column: 9)
!2092 = !DILocation(line: 168, column: 13, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !343, line: 168, column: 13)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !343, line: 167, column: 37)
!2095 = !DILocation(line: 168, scope: !2093)
!2096 = !DILocalVariable(name: "col", scope: !2093, file: !343, line: 168, type: !45)
!2097 = !DILocation(line: 0, scope: !2093)
!2098 = !DILocation(line: 168, column: 35, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2093, file: !343, line: 168, column: 13)
!2100 = !DILocation(line: 169, column: 50, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !343, line: 168, column: 47)
!2102 = !DILocation(line: 169, column: 54, scope: !2101)
!2103 = !DILocation(line: 169, column: 43, scope: !2101)
!2104 = !DILocation(line: 169, column: 93, scope: !2101)
!2105 = !DILocation(line: 169, column: 97, scope: !2101)
!2106 = !DILocation(line: 169, column: 104, scope: !2101)
!2107 = !DILocation(line: 169, column: 118, scope: !2101)
!2108 = !DILocation(line: 169, column: 111, scope: !2101)
!2109 = !DILocation(line: 169, column: 109, scope: !2101)
!2110 = !DILocation(line: 169, column: 84, scope: !2101)
!2111 = !DILocation(line: 169, column: 17, scope: !2101)
!2112 = !DILocation(line: 168, column: 43, scope: !2099)
!2113 = !DILocation(line: 168, column: 13, scope: !2099)
!2114 = distinct !{!2114, !2092, !2115, !323}
!2115 = !DILocation(line: 170, column: 13, scope: !2093)
!2116 = !DILocation(line: 167, column: 33, scope: !2091)
!2117 = !DILocation(line: 167, column: 9, scope: !2091)
!2118 = distinct !{!2118, !2058, !2119, !323}
!2119 = !DILocation(line: 171, column: 9, scope: !2059)
!2120 = !DILocation(line: 159, column: 35, scope: !2046)
!2121 = !DILocation(line: 159, column: 5, scope: !2046)
!2122 = distinct !{!2122, !2047, !2123, !323}
!2123 = !DILocation(line: 172, column: 5, scope: !2040)
!2124 = !DILocation(line: 174, column: 9, scope: !2018)
!2125 = !DILocation(line: 175, scope: !2052)
!2126 = !DILocalVariable(name: "row", scope: !2052, file: !343, line: 175, type: !45)
!2127 = !DILocation(line: 0, scope: !2052)
!2128 = !DILocalVariable(name: "P3_used", scope: !2018, file: !343, line: 174, type: !45)
!2129 = !DILocation(line: 175, column: 27, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2052, file: !343, line: 175, column: 5)
!2131 = !DILocation(line: 176, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !343, line: 176, column: 9)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !343, line: 175, column: 39)
!2134 = !DILocation(line: 186, column: 5, scope: !2018)
!2135 = !DILocation(line: 176, scope: !2132)
!2136 = !DILocalVariable(name: "j", scope: !2132, file: !343, line: 176, type: !45)
!2137 = !DILocation(line: 0, scope: !2132)
!2138 = !DILocation(line: 176, column: 29, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2132, file: !343, line: 176, column: 9)
!2140 = !DILocation(line: 177, column: 13, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !343, line: 177, column: 13)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !343, line: 176, column: 39)
!2143 = !DILocation(line: 177, scope: !2141)
!2144 = !DILocalVariable(name: "col", scope: !2141, file: !343, line: 177, type: !45)
!2145 = !DILocation(line: 0, scope: !2141)
!2146 = !DILocation(line: 177, column: 35, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !343, line: 177, column: 13)
!2148 = !DILocation(line: 178, column: 43, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2147, file: !343, line: 177, column: 47)
!2150 = !DILocation(line: 178, column: 89, scope: !2149)
!2151 = !DILocation(line: 178, column: 93, scope: !2149)
!2152 = !DILocation(line: 178, column: 100, scope: !2149)
!2153 = !DILocation(line: 178, column: 113, scope: !2149)
!2154 = !DILocation(line: 178, column: 107, scope: !2149)
!2155 = !DILocation(line: 178, column: 105, scope: !2149)
!2156 = !DILocation(line: 178, column: 80, scope: !2149)
!2157 = !DILocation(line: 178, column: 17, scope: !2149)
!2158 = !DILocation(line: 177, column: 43, scope: !2147)
!2159 = !DILocation(line: 177, column: 13, scope: !2147)
!2160 = distinct !{!2160, !2140, !2161, !323}
!2161 = !DILocation(line: 179, column: 13, scope: !2141)
!2162 = !DILocation(line: 180, column: 21, scope: !2142)
!2163 = !DILocation(line: 176, column: 35, scope: !2139)
!2164 = !DILocation(line: 176, column: 9, scope: !2139)
!2165 = distinct !{!2165, !2131, !2166, !323}
!2166 = !DILocation(line: 181, column: 9, scope: !2132)
!2167 = !DILocation(line: 175, column: 35, scope: !2130)
!2168 = !DILocation(line: 175, column: 5, scope: !2130)
!2169 = distinct !{!2169, !2051, !2170, !323}
!2170 = !DILocation(line: 182, column: 5, scope: !2052)
!2171 = !DILocalVariable(name: "i", scope: !2018, file: !343, line: 185, type: !45)
!2172 = !DILocation(line: 186, column: 14, scope: !2018)
!2173 = !DILocation(line: 187, column: 54, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2018, file: !343, line: 186, column: 23)
!2175 = !DILocation(line: 187, column: 81, scope: !2174)
!2176 = !DILocation(line: 187, column: 9, scope: !2174)
!2177 = !DILocation(line: 188, column: 10, scope: !2174)
!2178 = distinct !{!2178, !2134, !2179, !323}
!2179 = !DILocation(line: 189, column: 5, scope: !2018)
!2180 = !DILocation(line: 191, column: 1, scope: !2018)
!2181 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !343, file: !343, line: 195, type: !2182, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !346, !49, !45, !45, !45, !5}
!2184 = !DILocalVariable(name: "PS", arg: 1, scope: !2181, file: !343, line: 195, type: !346)
!2185 = !DILocation(line: 0, scope: !2181)
!2186 = !DILocalVariable(name: "S", arg: 2, scope: !2181, file: !343, line: 195, type: !49)
!2187 = !DILocalVariable(name: "m", arg: 3, scope: !2181, file: !343, line: 195, type: !45)
!2188 = !DILocalVariable(name: "k", arg: 4, scope: !2181, file: !343, line: 195, type: !45)
!2189 = !DILocalVariable(name: "n", arg: 5, scope: !2181, file: !343, line: 195, type: !45)
!2190 = !DILocalVariable(name: "SPS", arg: 6, scope: !2181, file: !343, line: 195, type: !5)
!2191 = !DILocalVariable(name: "accumulator", scope: !2181, file: !343, line: 196, type: !2192)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: 20736)
!2195 = !DILocation(line: 196, column: 14, scope: !2181)
!2196 = !DILocalVariable(name: "m_vec_limbs", scope: !2181, file: !343, line: 197, type: !259)
!2197 = !DILocalVariable(name: "row", scope: !2198, file: !343, line: 198, type: !45)
!2198 = distinct !DILexicalBlock(scope: !2181, file: !343, line: 198, column: 5)
!2199 = !DILocation(line: 0, scope: !2198)
!2200 = !DILocation(line: 198, column: 10, scope: !2198)
!2201 = !DILocation(line: 198, scope: !2198)
!2202 = !DILocation(line: 198, column: 27, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !343, line: 198, column: 5)
!2204 = !DILocation(line: 198, column: 5, scope: !2198)
!2205 = !DILocation(line: 199, column: 9, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !343, line: 199, column: 9)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !343, line: 198, column: 39)
!2208 = !DILocation(line: 208, column: 5, scope: !2181)
!2209 = !DILocation(line: 199, scope: !2206)
!2210 = !DILocalVariable(name: "j", scope: !2206, file: !343, line: 199, type: !45)
!2211 = !DILocation(line: 0, scope: !2206)
!2212 = !DILocation(line: 199, column: 27, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2206, file: !343, line: 199, column: 9)
!2214 = !DILocation(line: 200, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !343, line: 200, column: 13)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !343, line: 199, column: 37)
!2217 = !DILocation(line: 200, scope: !2215)
!2218 = !DILocalVariable(name: "col", scope: !2215, file: !343, line: 200, type: !45)
!2219 = !DILocation(line: 0, scope: !2215)
!2220 = !DILocation(line: 200, column: 35, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2215, file: !343, line: 200, column: 13)
!2222 = !DILocation(line: 201, column: 52, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2221, file: !343, line: 200, column: 50)
!2224 = !DILocation(line: 201, column: 56, scope: !2223)
!2225 = !DILocation(line: 201, column: 47, scope: !2223)
!2226 = !DILocation(line: 201, column: 99, scope: !2223)
!2227 = !DILocation(line: 201, column: 103, scope: !2223)
!2228 = !DILocation(line: 201, column: 110, scope: !2223)
!2229 = !DILocation(line: 201, column: 123, scope: !2223)
!2230 = !DILocation(line: 201, column: 117, scope: !2223)
!2231 = !DILocation(line: 201, column: 115, scope: !2223)
!2232 = !DILocation(line: 201, column: 90, scope: !2223)
!2233 = !DILocation(line: 201, column: 21, scope: !2223)
!2234 = !DILocation(line: 200, column: 44, scope: !2221)
!2235 = !DILocation(line: 200, column: 13, scope: !2221)
!2236 = distinct !{!2236, !2214, !2237, !323}
!2237 = !DILocation(line: 202, column: 13, scope: !2215)
!2238 = !DILocation(line: 199, column: 33, scope: !2213)
!2239 = !DILocation(line: 199, column: 9, scope: !2213)
!2240 = distinct !{!2240, !2205, !2241, !323}
!2241 = !DILocation(line: 203, column: 9, scope: !2206)
!2242 = !DILocation(line: 198, column: 35, scope: !2203)
!2243 = !DILocation(line: 198, column: 5, scope: !2203)
!2244 = distinct !{!2244, !2204, !2245, !323}
!2245 = !DILocation(line: 204, column: 5, scope: !2198)
!2246 = !DILocalVariable(name: "i", scope: !2181, file: !343, line: 207, type: !45)
!2247 = !DILocation(line: 208, column: 14, scope: !2181)
!2248 = !DILocation(line: 209, column: 54, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2181, file: !343, line: 208, column: 21)
!2250 = !DILocation(line: 209, column: 82, scope: !2249)
!2251 = !DILocation(line: 209, column: 9, scope: !2249)
!2252 = !DILocation(line: 210, column: 10, scope: !2249)
!2253 = distinct !{!2253, !2208, !2254, !323}
!2254 = !DILocation(line: 211, column: 5, scope: !2181)
!2255 = !DILocation(line: 212, column: 1, scope: !2181)
!2256 = distinct !DISubprogram(name: "m_vec_add", scope: !457, file: !457, line: 22, type: !2257, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !45, !346, !5}
!2259 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2256, file: !457, line: 22, type: !45)
!2260 = !DILocation(line: 0, scope: !2256)
!2261 = !DILocalVariable(name: "in", arg: 2, scope: !2256, file: !457, line: 22, type: !346)
!2262 = !DILocalVariable(name: "acc", arg: 3, scope: !2256, file: !457, line: 22, type: !5)
!2263 = !DILocalVariable(name: "i", scope: !2264, file: !457, line: 24, type: !15)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !457, line: 24, column: 5)
!2265 = !DILocation(line: 0, scope: !2264)
!2266 = !DILocation(line: 24, column: 10, scope: !2264)
!2267 = !DILocation(line: 24, scope: !2264)
!2268 = !DILocation(line: 24, column: 26, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !457, line: 24, column: 5)
!2270 = !DILocation(line: 24, column: 5, scope: !2264)
!2271 = !DILocation(line: 26, column: 19, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !457, line: 25, column: 5)
!2273 = !DILocation(line: 26, column: 9, scope: !2272)
!2274 = !DILocation(line: 26, column: 16, scope: !2272)
!2275 = !DILocation(line: 24, column: 46, scope: !2269)
!2276 = !DILocation(line: 24, column: 5, scope: !2269)
!2277 = distinct !{!2277, !2270, !2278, !323}
!2278 = !DILocation(line: 27, column: 5, scope: !2264)
!2279 = !DILocation(line: 28, column: 1, scope: !2256)
!2280 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !457, file: !457, line: 66, type: !2281, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !45, !5, !5}
!2283 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2280, file: !457, line: 66, type: !45)
!2284 = !DILocation(line: 0, scope: !2280)
!2285 = !DILocalVariable(name: "bins", arg: 2, scope: !2280, file: !457, line: 66, type: !5)
!2286 = !DILocalVariable(name: "out", arg: 3, scope: !2280, file: !457, line: 66, type: !5)
!2287 = !DILocation(line: 67, column: 44, scope: !2280)
!2288 = !DILocation(line: 67, column: 73, scope: !2280)
!2289 = !DILocation(line: 67, column: 5, scope: !2280)
!2290 = !DILocation(line: 68, column: 40, scope: !2280)
!2291 = !DILocation(line: 68, column: 69, scope: !2280)
!2292 = !DILocation(line: 68, column: 5, scope: !2280)
!2293 = !DILocation(line: 69, column: 44, scope: !2280)
!2294 = !DILocation(line: 69, column: 74, scope: !2280)
!2295 = !DILocation(line: 69, column: 5, scope: !2280)
!2296 = !DILocation(line: 70, column: 40, scope: !2280)
!2297 = !DILocation(line: 70, column: 69, scope: !2280)
!2298 = !DILocation(line: 70, column: 5, scope: !2280)
!2299 = !DILocation(line: 71, column: 44, scope: !2280)
!2300 = !DILocation(line: 71, column: 73, scope: !2280)
!2301 = !DILocation(line: 71, column: 5, scope: !2280)
!2302 = !DILocation(line: 72, column: 40, scope: !2280)
!2303 = !DILocation(line: 72, column: 69, scope: !2280)
!2304 = !DILocation(line: 72, column: 5, scope: !2280)
!2305 = !DILocation(line: 73, column: 44, scope: !2280)
!2306 = !DILocation(line: 73, column: 74, scope: !2280)
!2307 = !DILocation(line: 73, column: 5, scope: !2280)
!2308 = !DILocation(line: 74, column: 40, scope: !2280)
!2309 = !DILocation(line: 74, column: 69, scope: !2280)
!2310 = !DILocation(line: 74, column: 5, scope: !2280)
!2311 = !DILocation(line: 75, column: 44, scope: !2280)
!2312 = !DILocation(line: 75, column: 74, scope: !2280)
!2313 = !DILocation(line: 75, column: 5, scope: !2280)
!2314 = !DILocation(line: 76, column: 40, scope: !2280)
!2315 = !DILocation(line: 76, column: 69, scope: !2280)
!2316 = !DILocation(line: 76, column: 5, scope: !2280)
!2317 = !DILocation(line: 77, column: 44, scope: !2280)
!2318 = !DILocation(line: 77, column: 74, scope: !2280)
!2319 = !DILocation(line: 77, column: 5, scope: !2280)
!2320 = !DILocation(line: 78, column: 40, scope: !2280)
!2321 = !DILocation(line: 78, column: 69, scope: !2280)
!2322 = !DILocation(line: 78, column: 5, scope: !2280)
!2323 = !DILocation(line: 79, column: 44, scope: !2280)
!2324 = !DILocation(line: 79, column: 74, scope: !2280)
!2325 = !DILocation(line: 79, column: 5, scope: !2280)
!2326 = !DILocation(line: 80, column: 40, scope: !2280)
!2327 = !DILocation(line: 80, column: 69, scope: !2280)
!2328 = !DILocation(line: 80, column: 5, scope: !2280)
!2329 = !DILocation(line: 81, column: 35, scope: !2280)
!2330 = !DILocation(line: 81, column: 5, scope: !2280)
!2331 = !DILocation(line: 82, column: 1, scope: !2280)
!2332 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !457, file: !457, line: 56, type: !2257, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2333 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2332, file: !457, line: 56, type: !45)
!2334 = !DILocation(line: 0, scope: !2332)
!2335 = !DILocalVariable(name: "in", arg: 2, scope: !2332, file: !457, line: 56, type: !346)
!2336 = !DILocalVariable(name: "acc", arg: 3, scope: !2332, file: !457, line: 56, type: !5)
!2337 = !DILocalVariable(name: "mask_lsb", scope: !2332, file: !457, line: 58, type: !6)
!2338 = !DILocalVariable(name: "i", scope: !2339, file: !457, line: 59, type: !45)
!2339 = distinct !DILexicalBlock(scope: !2332, file: !457, line: 59, column: 5)
!2340 = !DILocation(line: 0, scope: !2339)
!2341 = !DILocation(line: 59, column: 9, scope: !2339)
!2342 = !DILocation(line: 59, scope: !2339)
!2343 = !DILocation(line: 59, column: 20, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2339, file: !457, line: 59, column: 5)
!2345 = !DILocation(line: 59, column: 5, scope: !2339)
!2346 = !DILocation(line: 60, column: 22, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !457, line: 59, column: 43)
!2348 = !DILocation(line: 60, column: 28, scope: !2347)
!2349 = !DILocalVariable(name: "t", scope: !2347, file: !457, line: 60, type: !6)
!2350 = !DILocation(line: 0, scope: !2347)
!2351 = !DILocation(line: 61, column: 32, scope: !2347)
!2352 = !DILocation(line: 61, column: 43, scope: !2347)
!2353 = !DILocation(line: 61, column: 38, scope: !2347)
!2354 = !DILocation(line: 61, column: 9, scope: !2347)
!2355 = !DILocation(line: 61, column: 16, scope: !2347)
!2356 = !DILocation(line: 59, column: 40, scope: !2344)
!2357 = !DILocation(line: 59, column: 5, scope: !2344)
!2358 = distinct !{!2358, !2345, !2359, !323}
!2359 = !DILocation(line: 62, column: 5, scope: !2339)
!2360 = !DILocation(line: 63, column: 1, scope: !2332)
!2361 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !457, file: !457, line: 46, type: !2257, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2362 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2361, file: !457, line: 46, type: !45)
!2363 = !DILocation(line: 0, scope: !2361)
!2364 = !DILocalVariable(name: "in", arg: 2, scope: !2361, file: !457, line: 46, type: !346)
!2365 = !DILocalVariable(name: "acc", arg: 3, scope: !2361, file: !457, line: 46, type: !5)
!2366 = !DILocalVariable(name: "mask_msb", scope: !2361, file: !457, line: 48, type: !6)
!2367 = !DILocalVariable(name: "i", scope: !2368, file: !457, line: 49, type: !45)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !457, line: 49, column: 5)
!2369 = !DILocation(line: 0, scope: !2368)
!2370 = !DILocation(line: 49, column: 9, scope: !2368)
!2371 = !DILocation(line: 49, scope: !2368)
!2372 = !DILocation(line: 49, column: 20, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2368, file: !457, line: 49, column: 5)
!2374 = !DILocation(line: 49, column: 5, scope: !2368)
!2375 = !DILocation(line: 50, column: 22, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !457, line: 49, column: 43)
!2377 = !DILocalVariable(name: "t", scope: !2376, file: !457, line: 50, type: !6)
!2378 = !DILocation(line: 0, scope: !2376)
!2379 = !DILocation(line: 51, column: 32, scope: !2376)
!2380 = !DILocation(line: 51, column: 44, scope: !2376)
!2381 = !DILocation(line: 51, column: 50, scope: !2376)
!2382 = !DILocation(line: 51, column: 38, scope: !2376)
!2383 = !DILocation(line: 51, column: 9, scope: !2376)
!2384 = !DILocation(line: 51, column: 16, scope: !2376)
!2385 = !DILocation(line: 49, column: 40, scope: !2373)
!2386 = !DILocation(line: 49, column: 5, scope: !2373)
!2387 = distinct !{!2387, !2374, !2388, !323}
!2388 = !DILocation(line: 52, column: 5, scope: !2368)
!2389 = !DILocation(line: 53, column: 1, scope: !2361)
!2390 = distinct !DISubprogram(name: "m_vec_copy", scope: !457, file: !457, line: 13, type: !2257, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2391 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2390, file: !457, line: 13, type: !45)
!2392 = !DILocation(line: 0, scope: !2390)
!2393 = !DILocalVariable(name: "in", arg: 2, scope: !2390, file: !457, line: 13, type: !346)
!2394 = !DILocalVariable(name: "out", arg: 3, scope: !2390, file: !457, line: 13, type: !5)
!2395 = !DILocalVariable(name: "i", scope: !2396, file: !457, line: 15, type: !15)
!2396 = distinct !DILexicalBlock(scope: !2390, file: !457, line: 15, column: 5)
!2397 = !DILocation(line: 0, scope: !2396)
!2398 = !DILocation(line: 15, column: 10, scope: !2396)
!2399 = !DILocation(line: 15, scope: !2396)
!2400 = !DILocation(line: 15, column: 26, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2396, file: !457, line: 15, column: 5)
!2402 = !DILocation(line: 15, column: 5, scope: !2396)
!2403 = !DILocation(line: 17, column: 18, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !457, line: 16, column: 5)
!2405 = !DILocation(line: 17, column: 9, scope: !2404)
!2406 = !DILocation(line: 17, column: 16, scope: !2404)
!2407 = !DILocation(line: 15, column: 46, scope: !2401)
!2408 = !DILocation(line: 15, column: 5, scope: !2401)
!2409 = distinct !{!2409, !2402, !2410, !323}
!2410 = !DILocation(line: 18, column: 5, scope: !2396)
!2411 = !DILocation(line: 19, column: 1, scope: !2390)
!2412 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_m_upper", scope: !58, file: !58, line: 14, type: !2413, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !2415, !346, !5, !45}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2417)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2418, file: !36, line: 266, baseType: !45, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2418, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2418, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2418, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2418, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2418, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2418, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2418, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2418, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2418, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2418, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2418, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2418, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2418, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2418, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2418, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2418, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2418, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2418, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2418, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2418, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2418, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2418, file: !36, line: 288, baseType: !128, size: 32, offset: 704)
!2443 = !DILocalVariable(name: "p", arg: 1, scope: !2412, file: !58, line: 14, type: !2415)
!2444 = !DILocation(line: 0, scope: !2412)
!2445 = !DILocalVariable(name: "in", arg: 2, scope: !2412, file: !58, line: 14, type: !346)
!2446 = !DILocalVariable(name: "out", arg: 3, scope: !2412, file: !58, line: 14, type: !5)
!2447 = !DILocalVariable(name: "size", arg: 4, scope: !2412, file: !58, line: 14, type: !45)
!2448 = !DILocalVariable(name: "m_vec_limbs", scope: !2412, file: !58, line: 19, type: !259)
!2449 = !DILocalVariable(name: "m_vecs_stored", scope: !2412, file: !58, line: 20, type: !45)
!2450 = !DILocalVariable(name: "r", scope: !2451, file: !58, line: 21, type: !45)
!2451 = distinct !DILexicalBlock(scope: !2412, file: !58, line: 21, column: 5)
!2452 = !DILocation(line: 0, scope: !2451)
!2453 = !DILocation(line: 21, column: 10, scope: !2451)
!2454 = !DILocation(line: 20, column: 9, scope: !2412)
!2455 = !DILocation(line: 21, scope: !2451)
!2456 = !DILocation(line: 21, column: 23, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2451, file: !58, line: 21, column: 5)
!2458 = !DILocation(line: 21, column: 5, scope: !2451)
!2459 = !DILocation(line: 22, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !58, line: 22, column: 9)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !58, line: 21, column: 36)
!2462 = !DILocation(line: 22, scope: !2460)
!2463 = !DILocalVariable(name: "c", scope: !2460, file: !58, line: 22, type: !45)
!2464 = !DILocation(line: 0, scope: !2460)
!2465 = !DILocation(line: 22, column: 27, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2460, file: !58, line: 22, column: 9)
!2467 = !DILocation(line: 23, column: 59, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2466, file: !58, line: 22, column: 40)
!2469 = !DILocation(line: 23, column: 66, scope: !2468)
!2470 = !DILocation(line: 23, column: 40, scope: !2468)
!2471 = !DILocation(line: 23, column: 76, scope: !2468)
!2472 = !DILocation(line: 23, column: 13, scope: !2468)
!2473 = !DILocation(line: 24, column: 19, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2468, file: !58, line: 24, column: 17)
!2475 = !DILocation(line: 25, column: 62, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2474, file: !58, line: 24, column: 25)
!2477 = !DILocation(line: 25, column: 69, scope: !2476)
!2478 = !DILocation(line: 25, column: 43, scope: !2476)
!2479 = !DILocation(line: 25, column: 79, scope: !2476)
!2480 = !DILocation(line: 25, column: 17, scope: !2476)
!2481 = !DILocation(line: 26, column: 13, scope: !2476)
!2482 = !DILocation(line: 27, column: 27, scope: !2468)
!2483 = !DILocation(line: 22, column: 36, scope: !2466)
!2484 = !DILocation(line: 22, column: 9, scope: !2466)
!2485 = distinct !{!2485, !2459, !2486, !323}
!2486 = !DILocation(line: 28, column: 9, scope: !2460)
!2487 = !DILocation(line: 21, column: 32, scope: !2457)
!2488 = !DILocation(line: 21, column: 5, scope: !2457)
!2489 = distinct !{!2489, !2458, !2490, !323}
!2490 = !DILocation(line: 29, column: 5, scope: !2451)
!2491 = !DILocation(line: 30, column: 1, scope: !2412)
!2492 = distinct !DISubprogram(name: "m_vec_copy", scope: !457, file: !457, line: 13, type: !2257, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2493 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2492, file: !457, line: 13, type: !45)
!2494 = !DILocation(line: 0, scope: !2492)
!2495 = !DILocalVariable(name: "in", arg: 2, scope: !2492, file: !457, line: 13, type: !346)
!2496 = !DILocalVariable(name: "out", arg: 3, scope: !2492, file: !457, line: 13, type: !5)
!2497 = !DILocalVariable(name: "i", scope: !2498, file: !457, line: 15, type: !15)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !457, line: 15, column: 5)
!2499 = !DILocation(line: 0, scope: !2498)
!2500 = !DILocation(line: 15, column: 10, scope: !2498)
!2501 = !DILocation(line: 15, scope: !2498)
!2502 = !DILocation(line: 15, column: 26, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2498, file: !457, line: 15, column: 5)
!2504 = !DILocation(line: 15, column: 5, scope: !2498)
!2505 = !DILocation(line: 17, column: 18, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !457, line: 16, column: 5)
!2507 = !DILocation(line: 17, column: 9, scope: !2506)
!2508 = !DILocation(line: 17, column: 16, scope: !2506)
!2509 = !DILocation(line: 15, column: 46, scope: !2503)
!2510 = !DILocation(line: 15, column: 5, scope: !2503)
!2511 = distinct !{!2511, !2504, !2512, !323}
!2512 = !DILocation(line: 18, column: 5, scope: !2498)
!2513 = !DILocation(line: 19, column: 1, scope: !2492)
!2514 = distinct !DISubprogram(name: "m_vec_add", scope: !457, file: !457, line: 22, type: !2257, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2515 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2514, file: !457, line: 22, type: !45)
!2516 = !DILocation(line: 0, scope: !2514)
!2517 = !DILocalVariable(name: "in", arg: 2, scope: !2514, file: !457, line: 22, type: !346)
!2518 = !DILocalVariable(name: "acc", arg: 3, scope: !2514, file: !457, line: 22, type: !5)
!2519 = !DILocalVariable(name: "i", scope: !2520, file: !457, line: 24, type: !15)
!2520 = distinct !DILexicalBlock(scope: !2514, file: !457, line: 24, column: 5)
!2521 = !DILocation(line: 0, scope: !2520)
!2522 = !DILocation(line: 24, column: 10, scope: !2520)
!2523 = !DILocation(line: 24, scope: !2520)
!2524 = !DILocation(line: 24, column: 26, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !457, line: 24, column: 5)
!2526 = !DILocation(line: 24, column: 5, scope: !2520)
!2527 = !DILocation(line: 26, column: 19, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !457, line: 25, column: 5)
!2529 = !DILocation(line: 26, column: 9, scope: !2528)
!2530 = !DILocation(line: 26, column: 16, scope: !2528)
!2531 = !DILocation(line: 24, column: 46, scope: !2525)
!2532 = !DILocation(line: 24, column: 5, scope: !2525)
!2533 = distinct !{!2533, !2526, !2534, !323}
!2534 = !DILocation(line: 27, column: 5, scope: !2520)
!2535 = !DILocation(line: 28, column: 1, scope: !2514)
!2536 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2537, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!45, !2415, !18, !49, !49, !18, !45, !45, !45, !45}
!2539 = !DILocalVariable(name: "p", arg: 1, scope: !2536, file: !58, line: 40, type: !2415)
!2540 = !DILocation(line: 0, scope: !2536)
!2541 = !DILocalVariable(name: "A", arg: 2, scope: !2536, file: !58, line: 40, type: !18)
!2542 = !DILocalVariable(name: "y", arg: 3, scope: !2536, file: !58, line: 41, type: !49)
!2543 = !DILocalVariable(name: "r", arg: 4, scope: !2536, file: !58, line: 41, type: !49)
!2544 = !DILocalVariable(name: "x", arg: 5, scope: !2536, file: !58, line: 42, type: !18)
!2545 = !DILocalVariable(name: "k", arg: 6, scope: !2536, file: !58, line: 42, type: !45)
!2546 = !DILocalVariable(name: "o", arg: 7, scope: !2536, file: !58, line: 42, type: !45)
!2547 = !DILocalVariable(name: "m", arg: 8, scope: !2536, file: !58, line: 42, type: !45)
!2548 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2536, file: !58, line: 42, type: !45)
!2549 = !DILocalVariable(name: "i", scope: !2550, file: !58, line: 51, type: !45)
!2550 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 51, column: 5)
!2551 = !DILocation(line: 0, scope: !2550)
!2552 = !DILocation(line: 51, column: 10, scope: !2550)
!2553 = !DILocation(line: 51, scope: !2550)
!2554 = !DILocation(line: 51, column: 23, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !58, line: 51, column: 5)
!2556 = !DILocation(line: 51, column: 5, scope: !2550)
!2557 = !DILocation(line: 57, column: 5, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 57, column: 5)
!2559 = !DILocation(line: 52, column: 16, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !58, line: 51, column: 37)
!2561 = !DILocation(line: 52, column: 9, scope: !2560)
!2562 = !DILocation(line: 52, column: 14, scope: !2560)
!2563 = !DILocation(line: 51, column: 33, scope: !2555)
!2564 = !DILocation(line: 51, column: 5, scope: !2555)
!2565 = distinct !{!2565, !2556, !2566, !323}
!2566 = !DILocation(line: 53, column: 5, scope: !2550)
!2567 = !DILocation(line: 57, scope: !2558)
!2568 = !DILocalVariable(name: "i", scope: !2558, file: !58, line: 57, type: !45)
!2569 = !DILocation(line: 0, scope: !2558)
!2570 = !DILocation(line: 57, column: 23, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2558, file: !58, line: 57, column: 5)
!2572 = !DILocation(line: 58, column: 13, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2571, file: !58, line: 57, column: 33)
!2574 = !DILocation(line: 58, column: 26, scope: !2573)
!2575 = !DILocation(line: 58, column: 30, scope: !2573)
!2576 = !DILocation(line: 58, column: 21, scope: !2573)
!2577 = !DILocation(line: 58, column: 9, scope: !2573)
!2578 = !DILocation(line: 58, column: 36, scope: !2573)
!2579 = !DILocation(line: 57, column: 29, scope: !2571)
!2580 = !DILocation(line: 57, column: 5, scope: !2571)
!2581 = distinct !{!2581, !2557, !2582, !323}
!2582 = !DILocation(line: 59, column: 5, scope: !2558)
!2583 = !DILocation(line: 60, column: 25, scope: !2536)
!2584 = !DILocation(line: 60, column: 29, scope: !2536)
!2585 = !DILocation(line: 60, column: 5, scope: !2536)
!2586 = !DILocalVariable(name: "i", scope: !2587, file: !58, line: 63, type: !45)
!2587 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 63, column: 5)
!2588 = !DILocation(line: 0, scope: !2587)
!2589 = !DILocation(line: 63, column: 10, scope: !2587)
!2590 = !DILocation(line: 63, scope: !2587)
!2591 = !DILocation(line: 63, column: 23, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !58, line: 63, column: 5)
!2593 = !DILocation(line: 63, column: 5, scope: !2587)
!2594 = !DILocation(line: 64, column: 44, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !58, line: 63, column: 33)
!2596 = !DILocation(line: 64, column: 50, scope: !2595)
!2597 = !DILocation(line: 64, column: 38, scope: !2595)
!2598 = !DILocation(line: 64, column: 13, scope: !2595)
!2599 = !DILocation(line: 64, column: 26, scope: !2595)
!2600 = !DILocation(line: 64, column: 30, scope: !2595)
!2601 = !DILocation(line: 64, column: 21, scope: !2595)
!2602 = !DILocation(line: 64, column: 9, scope: !2595)
!2603 = !DILocation(line: 64, column: 36, scope: !2595)
!2604 = !DILocation(line: 63, column: 29, scope: !2592)
!2605 = !DILocation(line: 63, column: 5, scope: !2592)
!2606 = distinct !{!2606, !2593, !2607, !323}
!2607 = !DILocation(line: 65, column: 5, scope: !2587)
!2608 = !DILocation(line: 67, column: 16, scope: !2536)
!2609 = !DILocation(line: 67, column: 20, scope: !2536)
!2610 = !DILocation(line: 67, column: 5, scope: !2536)
!2611 = !DILocalVariable(name: "full_rank", scope: !2536, file: !58, line: 70, type: !14)
!2612 = !DILocalVariable(name: "i", scope: !2613, file: !58, line: 71, type: !45)
!2613 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 71, column: 5)
!2614 = !DILocation(line: 0, scope: !2613)
!2615 = !DILocation(line: 71, column: 10, scope: !2613)
!2616 = !DILocation(line: 71, scope: !2613)
!2617 = !DILocation(line: 71, column: 23, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !58, line: 71, column: 5)
!2619 = !DILocation(line: 71, column: 5, scope: !2613)
!2620 = !DILocation(line: 72, column: 27, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2618, file: !58, line: 71, column: 42)
!2622 = !DILocation(line: 72, column: 32, scope: !2621)
!2623 = !DILocation(line: 72, column: 22, scope: !2621)
!2624 = !DILocation(line: 72, column: 19, scope: !2621)
!2625 = !DILocation(line: 71, column: 38, scope: !2618)
!2626 = !DILocation(line: 71, column: 5, scope: !2618)
!2627 = distinct !{!2627, !2619, !2628, !323}
!2628 = !DILocation(line: 73, column: 5, scope: !2613)
!2629 = !DILocation(line: 80, column: 19, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 80, column: 9)
!2631 = !DILocation(line: 88, column: 5, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 88, column: 5)
!2633 = distinct !{!2633, !2631, !2634, !323}
!2634 = !DILocation(line: 122, column: 5, scope: !2632)
!2635 = !DILocation(line: 88, scope: !2632)
!2636 = !DILocalVariable(name: "row", scope: !2632, file: !58, line: 88, type: !45)
!2637 = !DILocation(line: 0, scope: !2632)
!2638 = !DILocation(line: 88, column: 31, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2632, file: !58, line: 88, column: 5)
!2640 = !DILocalVariable(name: "finished", scope: !2536, file: !58, line: 46, type: !14)
!2641 = !DILocation(line: 90, column: 27, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2639, file: !58, line: 88, column: 44)
!2643 = !DILocalVariable(name: "col_upper_bound", scope: !2536, file: !58, line: 47, type: !45)
!2644 = !DILocalVariable(name: "col", scope: !2645, file: !58, line: 93, type: !45)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !58, line: 93, column: 9)
!2646 = !DILocation(line: 0, scope: !2645)
!2647 = !DILocation(line: 93, column: 14, scope: !2645)
!2648 = !DILocation(line: 0, scope: !2642)
!2649 = !DILocation(line: 93, scope: !2645)
!2650 = !DILocation(line: 93, column: 33, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2645, file: !58, line: 93, column: 9)
!2652 = !DILocation(line: 93, column: 9, scope: !2645)
!2653 = !DILocation(line: 97, column: 50, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !58, line: 93, column: 60)
!2655 = !DILocation(line: 97, column: 44, scope: !2654)
!2656 = !DILocation(line: 97, column: 30, scope: !2654)
!2657 = !DILocation(line: 97, column: 73, scope: !2654)
!2658 = !DILocalVariable(name: "correct_column", scope: !2536, file: !58, line: 48, type: !14)
!2659 = !DILocation(line: 99, column: 63, scope: !2654)
!2660 = !DILocation(line: 99, column: 48, scope: !2654)
!2661 = !DILocation(line: 99, column: 46, scope: !2654)
!2662 = !DILocalVariable(name: "u", scope: !2654, file: !58, line: 99, type: !14)
!2663 = !DILocation(line: 0, scope: !2654)
!2664 = !DILocation(line: 100, column: 13, scope: !2654)
!2665 = !DILocation(line: 100, column: 20, scope: !2654)
!2666 = !DILocalVariable(name: "i", scope: !2667, file: !58, line: 102, type: !45)
!2667 = distinct !DILexicalBlock(scope: !2654, file: !58, line: 102, column: 13)
!2668 = !DILocation(line: 0, scope: !2667)
!2669 = !DILocation(line: 102, column: 18, scope: !2667)
!2670 = !DILocation(line: 102, scope: !2667)
!2671 = !DILocation(line: 102, column: 31, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !58, line: 102, column: 13)
!2673 = !DILocation(line: 102, column: 13, scope: !2667)
!2674 = !DILocation(line: 103, column: 53, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !58, line: 102, column: 46)
!2676 = !DILocation(line: 103, column: 45, scope: !2675)
!2677 = !DILocation(line: 103, column: 34, scope: !2675)
!2678 = !DILocation(line: 103, column: 95, scope: !2675)
!2679 = !DILocation(line: 103, column: 99, scope: !2675)
!2680 = !DILocation(line: 103, column: 91, scope: !2675)
!2681 = !DILocation(line: 103, column: 80, scope: !2675)
!2682 = !DILocation(line: 103, column: 115, scope: !2675)
!2683 = !DILocation(line: 103, column: 76, scope: !2675)
!2684 = !DILocation(line: 104, column: 49, scope: !2675)
!2685 = !DILocation(line: 104, column: 53, scope: !2675)
!2686 = !DILocation(line: 104, column: 45, scope: !2675)
!2687 = !DILocation(line: 104, column: 34, scope: !2675)
!2688 = !DILocation(line: 104, column: 69, scope: !2675)
!2689 = !DILocation(line: 104, column: 30, scope: !2675)
!2690 = !DILocation(line: 104, column: 95, scope: !2675)
!2691 = !DILocation(line: 104, column: 99, scope: !2675)
!2692 = !DILocation(line: 104, column: 91, scope: !2675)
!2693 = !DILocation(line: 104, column: 80, scope: !2675)
!2694 = !DILocation(line: 104, column: 115, scope: !2675)
!2695 = !DILocation(line: 104, column: 76, scope: !2675)
!2696 = !DILocation(line: 105, column: 49, scope: !2675)
!2697 = !DILocation(line: 105, column: 53, scope: !2675)
!2698 = !DILocation(line: 105, column: 45, scope: !2675)
!2699 = !DILocation(line: 105, column: 34, scope: !2675)
!2700 = !DILocation(line: 105, column: 69, scope: !2675)
!2701 = !DILocation(line: 105, column: 30, scope: !2675)
!2702 = !DILocation(line: 105, column: 95, scope: !2675)
!2703 = !DILocation(line: 105, column: 99, scope: !2675)
!2704 = !DILocation(line: 105, column: 91, scope: !2675)
!2705 = !DILocation(line: 105, column: 80, scope: !2675)
!2706 = !DILocation(line: 105, column: 115, scope: !2675)
!2707 = !DILocation(line: 105, column: 76, scope: !2675)
!2708 = !DILocation(line: 106, column: 49, scope: !2675)
!2709 = !DILocation(line: 106, column: 53, scope: !2675)
!2710 = !DILocation(line: 106, column: 45, scope: !2675)
!2711 = !DILocation(line: 106, column: 34, scope: !2675)
!2712 = !DILocation(line: 106, column: 69, scope: !2675)
!2713 = !DILocation(line: 106, column: 30, scope: !2675)
!2714 = !DILocation(line: 106, column: 95, scope: !2675)
!2715 = !DILocation(line: 106, column: 99, scope: !2675)
!2716 = !DILocation(line: 106, column: 91, scope: !2675)
!2717 = !DILocation(line: 106, column: 80, scope: !2675)
!2718 = !DILocation(line: 106, column: 115, scope: !2675)
!2719 = !DILocation(line: 106, column: 76, scope: !2675)
!2720 = !DILocalVariable(name: "tmp", scope: !2675, file: !58, line: 103, type: !6)
!2721 = !DILocation(line: 0, scope: !2675)
!2722 = !DILocation(line: 108, column: 23, scope: !2675)
!2723 = !DILocation(line: 110, column: 34, scope: !2675)
!2724 = !DILocation(line: 110, column: 17, scope: !2675)
!2725 = !DILocation(line: 110, column: 48, scope: !2675)
!2726 = !DILocation(line: 111, column: 56, scope: !2675)
!2727 = !DILocation(line: 111, column: 34, scope: !2675)
!2728 = !DILocation(line: 111, column: 17, scope: !2675)
!2729 = !DILocation(line: 111, column: 48, scope: !2675)
!2730 = !DILocation(line: 112, column: 56, scope: !2675)
!2731 = !DILocation(line: 112, column: 34, scope: !2675)
!2732 = !DILocation(line: 112, column: 17, scope: !2675)
!2733 = !DILocation(line: 112, column: 48, scope: !2675)
!2734 = !DILocation(line: 113, column: 56, scope: !2675)
!2735 = !DILocation(line: 113, column: 34, scope: !2675)
!2736 = !DILocation(line: 113, column: 17, scope: !2675)
!2737 = !DILocation(line: 113, column: 48, scope: !2675)
!2738 = !DILocation(line: 114, column: 56, scope: !2675)
!2739 = !DILocation(line: 114, column: 34, scope: !2675)
!2740 = !DILocation(line: 114, column: 17, scope: !2675)
!2741 = !DILocation(line: 114, column: 48, scope: !2675)
!2742 = !DILocation(line: 115, column: 56, scope: !2675)
!2743 = !DILocation(line: 115, column: 34, scope: !2675)
!2744 = !DILocation(line: 115, column: 17, scope: !2675)
!2745 = !DILocation(line: 115, column: 48, scope: !2675)
!2746 = !DILocation(line: 116, column: 56, scope: !2675)
!2747 = !DILocation(line: 116, column: 34, scope: !2675)
!2748 = !DILocation(line: 116, column: 17, scope: !2675)
!2749 = !DILocation(line: 116, column: 48, scope: !2675)
!2750 = !DILocation(line: 117, column: 56, scope: !2675)
!2751 = !DILocation(line: 117, column: 34, scope: !2675)
!2752 = !DILocation(line: 117, column: 17, scope: !2675)
!2753 = !DILocation(line: 117, column: 48, scope: !2675)
!2754 = !DILocation(line: 102, column: 40, scope: !2672)
!2755 = !DILocation(line: 102, column: 13, scope: !2672)
!2756 = distinct !{!2756, !2673, !2757, !323}
!2757 = !DILocation(line: 118, column: 13, scope: !2667)
!2758 = !DILocation(line: 120, column: 33, scope: !2654)
!2759 = !DILocation(line: 93, column: 56, scope: !2651)
!2760 = !DILocation(line: 93, column: 9, scope: !2651)
!2761 = distinct !{!2761, !2652, !2762, !323}
!2762 = !DILocation(line: 121, column: 9, scope: !2645)
!2763 = !DILocation(line: 124, column: 1, scope: !2536)
!2764 = distinct !DISubprogram(name: "mat_mul", scope: !513, file: !513, line: 79, type: !1449, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2765 = !DILocalVariable(name: "a", arg: 1, scope: !2764, file: !513, line: 79, type: !49)
!2766 = !DILocation(line: 0, scope: !2764)
!2767 = !DILocalVariable(name: "b", arg: 2, scope: !2764, file: !513, line: 79, type: !49)
!2768 = !DILocalVariable(name: "c", arg: 3, scope: !2764, file: !513, line: 80, type: !18)
!2769 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2764, file: !513, line: 80, type: !45)
!2770 = !DILocalVariable(name: "row_a", arg: 5, scope: !2764, file: !513, line: 80, type: !45)
!2771 = !DILocalVariable(name: "col_b", arg: 6, scope: !2764, file: !513, line: 80, type: !45)
!2772 = !DILocalVariable(name: "i", scope: !2773, file: !513, line: 81, type: !45)
!2773 = distinct !DILexicalBlock(scope: !2764, file: !513, line: 81, column: 5)
!2774 = !DILocation(line: 0, scope: !2773)
!2775 = !DILocation(line: 81, column: 10, scope: !2773)
!2776 = !DILocation(line: 81, scope: !2773)
!2777 = !DILocation(line: 81, column: 23, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !513, line: 81, column: 5)
!2779 = !DILocation(line: 81, column: 5, scope: !2773)
!2780 = !DILocation(line: 82, column: 9, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !513, line: 82, column: 9)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !513, line: 81, column: 53)
!2783 = !DILocation(line: 82, scope: !2781)
!2784 = !DILocalVariable(name: "j", scope: !2781, file: !513, line: 82, type: !45)
!2785 = !DILocation(line: 0, scope: !2781)
!2786 = !DILocation(line: 83, column: 18, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !513, line: 82, column: 46)
!2788 = distinct !DILexicalBlock(scope: !2781, file: !513, line: 82, column: 9)
!2789 = !DILocation(line: 83, column: 16, scope: !2787)
!2790 = !DILocation(line: 82, column: 41, scope: !2788)
!2791 = !DILocation(line: 82, column: 9, scope: !2788)
!2792 = distinct !{!2792, !2780, !2793, !323}
!2793 = !DILocation(line: 84, column: 9, scope: !2781)
!2794 = !DILocation(line: 81, column: 32, scope: !2778)
!2795 = !DILocation(line: 81, column: 39, scope: !2778)
!2796 = !DILocation(line: 81, column: 5, scope: !2778)
!2797 = distinct !{!2797, !2779, !2798, !323}
!2798 = !DILocation(line: 85, column: 5, scope: !2773)
!2799 = !DILocation(line: 86, column: 1, scope: !2764)
!2800 = distinct !DISubprogram(name: "sub_f", scope: !513, file: !513, line: 48, type: !1548, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2801 = !DILocalVariable(name: "a", arg: 1, scope: !2800, file: !513, line: 48, type: !14)
!2802 = !DILocation(line: 0, scope: !2800)
!2803 = !DILocalVariable(name: "b", arg: 2, scope: !2800, file: !513, line: 48, type: !14)
!2804 = !DILocation(line: 49, column: 14, scope: !2800)
!2805 = !DILocation(line: 49, column: 5, scope: !2800)
!2806 = distinct !DISubprogram(name: "EF", scope: !2807, file: !2807, line: 60, type: !2808, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2807 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !18, !45, !45}
!2810 = !DILocalVariable(name: "A", arg: 1, scope: !2806, file: !2807, line: 60, type: !18)
!2811 = !DILocation(line: 0, scope: !2806)
!2812 = !DILocalVariable(name: "nrows", arg: 2, scope: !2806, file: !2807, line: 60, type: !45)
!2813 = !DILocalVariable(name: "ncols", arg: 3, scope: !2806, file: !2807, line: 60, type: !45)
!2814 = !DILocalVariable(name: "_pivot_row", scope: !2806, file: !2807, line: 62, type: !2815, align: 256)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !82)
!2816 = !DILocation(line: 62, column: 27, scope: !2806)
!2817 = !DILocalVariable(name: "_pivot_row2", scope: !2806, file: !2807, line: 63, type: !2815, align: 256)
!2818 = !DILocation(line: 63, column: 27, scope: !2806)
!2819 = !DILocalVariable(name: "packed_A", scope: !2806, file: !2807, line: 64, type: !2820, align: 256)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 90880, elements: !2821)
!2821 = !{!2822}
!2822 = !DISubrange(count: 1420)
!2823 = !DILocation(line: 64, column: 27, scope: !2806)
!2824 = !DILocation(line: 66, column: 26, scope: !2806)
!2825 = !DILocation(line: 66, column: 32, scope: !2806)
!2826 = !DILocalVariable(name: "row_len", scope: !2806, file: !2807, line: 66, type: !45)
!2827 = !DILocalVariable(name: "i", scope: !2828, file: !2807, line: 69, type: !45)
!2828 = distinct !DILexicalBlock(scope: !2806, file: !2807, line: 69, column: 5)
!2829 = !DILocation(line: 0, scope: !2828)
!2830 = !DILocation(line: 69, column: 10, scope: !2828)
!2831 = !DILocation(line: 69, scope: !2828)
!2832 = !DILocation(line: 69, column: 23, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2828, file: !2807, line: 69, column: 5)
!2834 = !DILocation(line: 69, column: 5, scope: !2828)
!2835 = !DILocation(line: 77, column: 5, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2806, file: !2807, line: 77, column: 5)
!2837 = !DILocation(line: 70, column: 29, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2833, file: !2807, line: 69, column: 37)
!2839 = !DILocation(line: 70, column: 25, scope: !2838)
!2840 = !DILocation(line: 70, column: 51, scope: !2838)
!2841 = !DILocation(line: 70, column: 47, scope: !2838)
!2842 = !DILocation(line: 70, column: 9, scope: !2838)
!2843 = !DILocation(line: 69, column: 33, scope: !2833)
!2844 = !DILocation(line: 69, column: 5, scope: !2833)
!2845 = distinct !{!2845, !2834, !2846, !323}
!2846 = !DILocation(line: 71, column: 5, scope: !2828)
!2847 = !DILocation(line: 77, scope: !2836)
!2848 = !DILocalVariable(name: "pivot_row", scope: !2806, file: !2807, line: 76, type: !45)
!2849 = !DILocalVariable(name: "pivot_col", scope: !2836, file: !2807, line: 77, type: !45)
!2850 = !DILocation(line: 0, scope: !2836)
!2851 = !DILocation(line: 77, column: 39, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2836, file: !2807, line: 77, column: 5)
!2853 = !DILocation(line: 138, column: 5, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2806, file: !2807, line: 138, column: 5)
!2855 = !DILocation(line: 79, column: 37, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !2807, line: 77, column: 61)
!2857 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2856, file: !2807, line: 79, type: !45)
!2858 = !DILocation(line: 0, scope: !2856)
!2859 = !DILocation(line: 80, column: 37, scope: !2856)
!2860 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2856, file: !2807, line: 80, type: !45)
!2861 = !DILocalVariable(name: "i", scope: !2862, file: !2807, line: 85, type: !45)
!2862 = distinct !DILexicalBlock(scope: !2856, file: !2807, line: 85, column: 9)
!2863 = !DILocation(line: 0, scope: !2862)
!2864 = !DILocation(line: 85, column: 14, scope: !2862)
!2865 = !DILocation(line: 85, scope: !2862)
!2866 = !DILocation(line: 85, column: 27, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2862, file: !2807, line: 85, column: 9)
!2868 = !DILocation(line: 85, column: 9, scope: !2862)
!2869 = !DILocation(line: 93, column: 9, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2856, file: !2807, line: 93, column: 9)
!2871 = !DILocation(line: 86, column: 13, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2867, file: !2807, line: 85, column: 43)
!2873 = !DILocation(line: 86, column: 27, scope: !2872)
!2874 = !DILocation(line: 87, column: 13, scope: !2872)
!2875 = !DILocation(line: 87, column: 28, scope: !2872)
!2876 = !DILocation(line: 85, column: 39, scope: !2867)
!2877 = !DILocation(line: 85, column: 9, scope: !2867)
!2878 = distinct !{!2878, !2868, !2879, !323}
!2879 = !DILocation(line: 88, column: 9, scope: !2862)
!2880 = !DILocation(line: 0, scope: !2870)
!2881 = !DILocalVariable(name: "row", scope: !2870, file: !2807, line: 93, type: !45)
!2882 = !DILocalVariable(name: "pivot", scope: !2856, file: !2807, line: 91, type: !14)
!2883 = !DILocalVariable(name: "pivot_is_zero", scope: !2856, file: !2807, line: 92, type: !6)
!2884 = !DILocation(line: 94, column: 24, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2870, file: !2807, line: 93, column: 9)
!2886 = !DILocation(line: 94, column: 21, scope: !2885)
!2887 = !DILocation(line: 96, column: 38, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !2807, line: 94, column: 80)
!2889 = !DILocation(line: 96, column: 37, scope: !2888)
!2890 = !DILocalVariable(name: "is_pivot_row", scope: !2888, file: !2807, line: 96, type: !6)
!2891 = !DILocation(line: 0, scope: !2888)
!2892 = !DILocation(line: 97, column: 40, scope: !2888)
!2893 = !DILocalVariable(name: "below_pivot_row", scope: !2888, file: !2807, line: 97, type: !6)
!2894 = !DILocalVariable(name: "j", scope: !2895, file: !2807, line: 99, type: !45)
!2895 = distinct !DILexicalBlock(scope: !2888, file: !2807, line: 99, column: 13)
!2896 = !DILocation(line: 0, scope: !2895)
!2897 = !DILocation(line: 99, column: 18, scope: !2895)
!2898 = !DILocation(line: 99, scope: !2895)
!2899 = !DILocation(line: 99, column: 31, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2895, file: !2807, line: 99, column: 13)
!2901 = !DILocation(line: 99, column: 13, scope: !2895)
!2902 = !DILocation(line: 100, column: 67, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !2807, line: 99, column: 47)
!2904 = !DILocation(line: 100, column: 48, scope: !2903)
!2905 = !DILocation(line: 101, column: 47, scope: !2903)
!2906 = !DILocation(line: 101, column: 57, scope: !2903)
!2907 = !DILocation(line: 101, column: 34, scope: !2903)
!2908 = !DILocation(line: 100, column: 85, scope: !2903)
!2909 = !DILocation(line: 100, column: 17, scope: !2903)
!2910 = !DILocation(line: 100, column: 31, scope: !2903)
!2911 = !DILocation(line: 99, column: 43, scope: !2900)
!2912 = !DILocation(line: 99, column: 13, scope: !2900)
!2913 = distinct !{!2913, !2901, !2914, !323}
!2914 = !DILocation(line: 102, column: 13, scope: !2895)
!2915 = !DILocation(line: 103, column: 21, scope: !2888)
!2916 = !DILocation(line: 104, column: 44, scope: !2888)
!2917 = !DILocation(line: 104, column: 30, scope: !2888)
!2918 = !DILocation(line: 104, column: 29, scope: !2888)
!2919 = !DILocation(line: 94, column: 76, scope: !2885)
!2920 = !DILocation(line: 93, column: 9, scope: !2885)
!2921 = distinct !{!2921, !2869, !2922, !323}
!2922 = !DILocation(line: 105, column: 9, scope: !2870)
!2923 = !DILocation(line: 108, column: 19, scope: !2856)
!2924 = !DILocalVariable(name: "inverse", scope: !2806, file: !2807, line: 75, type: !14)
!2925 = !DILocation(line: 109, column: 9, scope: !2856)
!2926 = !DILocalVariable(name: "row", scope: !2927, file: !2807, line: 113, type: !45)
!2927 = distinct !DILexicalBlock(scope: !2856, file: !2807, line: 113, column: 9)
!2928 = !DILocation(line: 0, scope: !2927)
!2929 = !DILocation(line: 113, column: 14, scope: !2927)
!2930 = !DILocation(line: 113, scope: !2927)
!2931 = !DILocation(line: 113, column: 51, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !2807, line: 113, column: 9)
!2933 = !DILocation(line: 113, column: 9, scope: !2927)
!2934 = !DILocation(line: 124, column: 9, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2856, file: !2807, line: 124, column: 9)
!2936 = !DILocation(line: 114, column: 33, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2932, file: !2807, line: 113, column: 84)
!2938 = !DILocation(line: 114, column: 63, scope: !2937)
!2939 = !DILocalVariable(name: "do_copy", scope: !2937, file: !2807, line: 114, type: !6)
!2940 = !DILocation(line: 0, scope: !2937)
!2941 = !DILocalVariable(name: "do_not_copy", scope: !2937, file: !2807, line: 115, type: !6)
!2942 = !DILocalVariable(name: "col", scope: !2943, file: !2807, line: 116, type: !45)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !2807, line: 116, column: 13)
!2944 = !DILocation(line: 0, scope: !2943)
!2945 = !DILocation(line: 116, column: 18, scope: !2943)
!2946 = !DILocation(line: 116, scope: !2943)
!2947 = !DILocation(line: 116, column: 35, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2943, file: !2807, line: 116, column: 13)
!2949 = !DILocation(line: 116, column: 13, scope: !2943)
!2950 = !DILocation(line: 118, column: 49, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !2807, line: 116, column: 53)
!2952 = !DILocation(line: 118, column: 59, scope: !2951)
!2953 = !DILocation(line: 118, column: 36, scope: !2951)
!2954 = !DILocation(line: 118, column: 34, scope: !2951)
!2955 = !DILocation(line: 119, column: 32, scope: !2951)
!2956 = !DILocation(line: 119, column: 30, scope: !2951)
!2957 = !DILocation(line: 118, column: 67, scope: !2951)
!2958 = !DILocation(line: 117, column: 30, scope: !2951)
!2959 = !DILocation(line: 117, column: 40, scope: !2951)
!2960 = !DILocation(line: 117, column: 17, scope: !2951)
!2961 = !DILocation(line: 117, column: 47, scope: !2951)
!2962 = !DILocation(line: 116, column: 49, scope: !2948)
!2963 = !DILocation(line: 116, column: 13, scope: !2948)
!2964 = distinct !{!2964, !2949, !2965, !323}
!2965 = !DILocation(line: 120, column: 13, scope: !2943)
!2966 = !DILocation(line: 113, column: 80, scope: !2932)
!2967 = !DILocation(line: 113, column: 9, scope: !2932)
!2968 = distinct !{!2968, !2933, !2969, !323}
!2969 = !DILocation(line: 121, column: 9, scope: !2927)
!2970 = !DILocation(line: 124, scope: !2935)
!2971 = !DILocalVariable(name: "row", scope: !2935, file: !2807, line: 124, type: !45)
!2972 = !DILocation(line: 0, scope: !2935)
!2973 = !DILocation(line: 124, column: 51, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2935, file: !2807, line: 124, column: 9)
!2975 = !DILocation(line: 125, column: 46, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2974, file: !2807, line: 124, column: 67)
!2977 = !DILocalVariable(name: "below_pivot", scope: !2976, file: !2807, line: 125, type: !14)
!2978 = !DILocation(line: 0, scope: !2976)
!2979 = !DILocation(line: 126, column: 74, scope: !2976)
!2980 = !DILocation(line: 126, column: 68, scope: !2976)
!2981 = !DILocation(line: 126, column: 41, scope: !2976)
!2982 = !DILocalVariable(name: "elt_to_elim", scope: !2976, file: !2807, line: 126, type: !14)
!2983 = !DILocation(line: 128, column: 63, scope: !2976)
!2984 = !DILocation(line: 129, column: 52, scope: !2976)
!2985 = !DILocation(line: 129, column: 46, scope: !2976)
!2986 = !DILocation(line: 128, column: 13, scope: !2976)
!2987 = !DILocation(line: 124, column: 63, scope: !2974)
!2988 = !DILocation(line: 124, column: 9, scope: !2974)
!2989 = distinct !{!2989, !2934, !2990, !323}
!2990 = !DILocation(line: 130, column: 9, scope: !2935)
!2991 = !DILocation(line: 132, column: 19, scope: !2856)
!2992 = !DILocation(line: 77, column: 57, scope: !2852)
!2993 = !DILocation(line: 77, column: 5, scope: !2852)
!2994 = distinct !{!2994, !2835, !2995, !323}
!2995 = !DILocation(line: 133, column: 5, scope: !2836)
!2996 = !DILocation(line: 138, scope: !2854)
!2997 = !DILocalVariable(name: "i", scope: !2854, file: !2807, line: 138, type: !45)
!2998 = !DILocation(line: 0, scope: !2854)
!2999 = !DILocation(line: 138, column: 23, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2854, file: !2807, line: 138, column: 5)
!3001 = !DILocation(line: 139, column: 47, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3000, file: !2807, line: 138, column: 37)
!3003 = !DILocation(line: 139, column: 43, scope: !3002)
!3004 = !DILocation(line: 139, column: 9, scope: !3002)
!3005 = !DILocalVariable(name: "j", scope: !3006, file: !2807, line: 140, type: !45)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !2807, line: 140, column: 9)
!3007 = !DILocation(line: 0, scope: !3006)
!3008 = !DILocation(line: 140, column: 14, scope: !3006)
!3009 = !DILocation(line: 140, scope: !3006)
!3010 = !DILocation(line: 140, column: 27, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !2807, line: 140, column: 9)
!3012 = !DILocation(line: 140, column: 9, scope: !3006)
!3013 = !DILocation(line: 141, column: 32, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !2807, line: 140, column: 41)
!3015 = !DILocation(line: 141, column: 17, scope: !3014)
!3016 = !DILocation(line: 141, column: 13, scope: !3014)
!3017 = !DILocation(line: 141, column: 30, scope: !3014)
!3018 = !DILocation(line: 140, column: 37, scope: !3011)
!3019 = !DILocation(line: 140, column: 9, scope: !3011)
!3020 = distinct !{!3020, !3012, !3021, !323}
!3021 = !DILocation(line: 142, column: 9, scope: !3006)
!3022 = !DILocation(line: 138, column: 33, scope: !3000)
!3023 = !DILocation(line: 138, column: 5, scope: !3000)
!3024 = distinct !{!3024, !2853, !3025, !323}
!3025 = !DILocation(line: 143, column: 5, scope: !2854)
!3026 = !DILocation(line: 145, column: 5, scope: !2806)
!3027 = !DILocation(line: 146, column: 5, scope: !2806)
!3028 = !DILocation(line: 147, column: 5, scope: !2806)
!3029 = !DILocation(line: 148, column: 5, scope: !2806)
!3030 = !DILocation(line: 149, column: 1, scope: !2806)
!3031 = distinct !DISubprogram(name: "ct_compare_8", scope: !3032, file: !3032, line: 51, type: !1548, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3032 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3033 = !DILocalVariable(name: "a", arg: 1, scope: !3031, file: !3032, line: 51, type: !14)
!3034 = !DILocation(line: 0, scope: !3031)
!3035 = !DILocalVariable(name: "b", arg: 2, scope: !3031, file: !3032, line: 51, type: !14)
!3036 = !DILocation(line: 52, column: 42, scope: !3031)
!3037 = !DILocation(line: 52, column: 13, scope: !3031)
!3038 = !DILocation(line: 52, column: 71, scope: !3031)
!3039 = !DILocation(line: 52, column: 69, scope: !3031)
!3040 = !DILocation(line: 52, column: 5, scope: !3031)
!3041 = distinct !DISubprogram(name: "mul_fx8", scope: !513, file: !513, line: 28, type: !3042, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!6, !14, !6}
!3044 = !DILocalVariable(name: "a", arg: 1, scope: !3041, file: !513, line: 28, type: !14)
!3045 = !DILocation(line: 0, scope: !3041)
!3046 = !DILocalVariable(name: "b", arg: 2, scope: !3041, file: !513, line: 28, type: !6)
!3047 = !DILocation(line: 31, column: 13, scope: !3041)
!3048 = !DILocation(line: 31, column: 10, scope: !3041)
!3049 = !DILocation(line: 31, column: 17, scope: !3041)
!3050 = !DILocalVariable(name: "p", scope: !3041, file: !513, line: 30, type: !6)
!3051 = !DILocation(line: 32, column: 13, scope: !3041)
!3052 = !DILocation(line: 32, column: 10, scope: !3041)
!3053 = !DILocation(line: 32, column: 17, scope: !3041)
!3054 = !DILocation(line: 32, column: 7, scope: !3041)
!3055 = !DILocation(line: 33, column: 13, scope: !3041)
!3056 = !DILocation(line: 33, column: 10, scope: !3041)
!3057 = !DILocation(line: 33, column: 17, scope: !3041)
!3058 = !DILocation(line: 33, column: 7, scope: !3041)
!3059 = !DILocation(line: 34, column: 13, scope: !3041)
!3060 = !DILocation(line: 34, column: 10, scope: !3041)
!3061 = !DILocation(line: 34, column: 17, scope: !3041)
!3062 = !DILocation(line: 34, column: 7, scope: !3041)
!3063 = !DILocalVariable(name: "top_p", scope: !3041, file: !513, line: 37, type: !6)
!3064 = !DILocation(line: 38, column: 32, scope: !3041)
!3065 = !DILocation(line: 38, column: 47, scope: !3041)
!3066 = !DILocation(line: 38, column: 38, scope: !3041)
!3067 = !DILocation(line: 38, column: 54, scope: !3041)
!3068 = !DILocalVariable(name: "out", scope: !3041, file: !513, line: 38, type: !6)
!3069 = !DILocation(line: 39, column: 5, scope: !3041)
!3070 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2807, file: !2807, line: 24, type: !3071, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !49, !5, !45}
!3073 = !DILocalVariable(name: "in", arg: 1, scope: !3070, file: !2807, line: 24, type: !49)
!3074 = !DILocation(line: 0, scope: !3070)
!3075 = !DILocalVariable(name: "out", arg: 2, scope: !3070, file: !2807, line: 24, type: !5)
!3076 = !DILocalVariable(name: "ncols", arg: 3, scope: !3070, file: !2807, line: 24, type: !45)
!3077 = !DILocalVariable(name: "out8", scope: !3070, file: !2807, line: 26, type: !18)
!3078 = !DILocalVariable(name: "i", scope: !3070, file: !2807, line: 25, type: !45)
!3079 = !DILocation(line: 27, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3070, file: !2807, line: 27, column: 5)
!3081 = !DILocation(line: 27, scope: !3080)
!3082 = !DILocation(line: 27, column: 17, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !2807, line: 27, column: 5)
!3084 = !DILocation(line: 27, column: 20, scope: !3083)
!3085 = !DILocation(line: 27, column: 5, scope: !3080)
!3086 = !DILocation(line: 31, column: 23, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !2807, line: 27, column: 36)
!3088 = !DILocation(line: 31, column: 44, scope: !3087)
!3089 = !DILocation(line: 31, column: 40, scope: !3087)
!3090 = !DILocation(line: 31, column: 48, scope: !3087)
!3091 = !DILocation(line: 31, column: 37, scope: !3087)
!3092 = !DILocation(line: 31, column: 15, scope: !3087)
!3093 = !DILocation(line: 31, column: 9, scope: !3087)
!3094 = !DILocation(line: 31, column: 20, scope: !3087)
!3095 = !DILocation(line: 27, column: 31, scope: !3083)
!3096 = !DILocation(line: 27, column: 5, scope: !3083)
!3097 = distinct !{!3097, !3085, !3098, !323}
!3098 = !DILocation(line: 33, column: 5, scope: !3080)
!3099 = !DILocation(line: 34, column: 19, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3070, file: !2807, line: 34, column: 9)
!3101 = !DILocation(line: 38, column: 23, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3100, file: !2807, line: 34, column: 24)
!3103 = !DILocation(line: 38, column: 15, scope: !3102)
!3104 = !DILocation(line: 38, column: 9, scope: !3102)
!3105 = !DILocation(line: 38, column: 20, scope: !3102)
!3106 = !DILocation(line: 40, column: 5, scope: !3102)
!3107 = !DILocation(line: 41, column: 1, scope: !3070)
!3108 = distinct !DISubprogram(name: "ct_compare_64", scope: !3032, file: !3032, line: 46, type: !3109, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!6, !45, !45}
!3111 = !DILocalVariable(name: "a", arg: 1, scope: !3108, file: !3032, line: 46, type: !45)
!3112 = !DILocation(line: 0, scope: !3108)
!3113 = !DILocalVariable(name: "b", arg: 2, scope: !3108, file: !3032, line: 46, type: !45)
!3114 = !DILocation(line: 47, column: 38, scope: !3108)
!3115 = !DILocation(line: 47, column: 44, scope: !3108)
!3116 = !DILocation(line: 47, column: 73, scope: !3108)
!3117 = !DILocation(line: 47, column: 71, scope: !3108)
!3118 = !DILocation(line: 47, column: 5, scope: !3108)
!3119 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3032, file: !3032, line: 35, type: !3109, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3120 = !DILocalVariable(name: "a", arg: 1, scope: !3119, file: !3032, line: 35, type: !45)
!3121 = !DILocation(line: 0, scope: !3119)
!3122 = !DILocalVariable(name: "b", arg: 2, scope: !3119, file: !3032, line: 35, type: !45)
!3123 = !DILocalVariable(name: "diff", scope: !3119, file: !3032, line: 36, type: !46)
!3124 = !DILocation(line: 37, column: 30, scope: !3119)
!3125 = !DILocation(line: 37, column: 59, scope: !3119)
!3126 = !DILocation(line: 37, column: 57, scope: !3119)
!3127 = !DILocation(line: 37, column: 5, scope: !3119)
!3128 = distinct !DISubprogram(name: "m_extract_element", scope: !2807, file: !2807, line: 16, type: !3129, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!14, !346, !45}
!3131 = !DILocalVariable(name: "in", arg: 1, scope: !3128, file: !2807, line: 16, type: !346)
!3132 = !DILocation(line: 0, scope: !3128)
!3133 = !DILocalVariable(name: "index", arg: 2, scope: !3128, file: !2807, line: 16, type: !45)
!3134 = !DILocation(line: 17, column: 27, scope: !3128)
!3135 = !DILocalVariable(name: "leg", scope: !3128, file: !2807, line: 17, type: !259)
!3136 = !DILocation(line: 18, column: 30, scope: !3128)
!3137 = !DILocalVariable(name: "offset", scope: !3128, file: !2807, line: 18, type: !259)
!3138 = !DILocation(line: 20, column: 13, scope: !3128)
!3139 = !DILocation(line: 20, column: 31, scope: !3128)
!3140 = !DILocation(line: 20, column: 21, scope: !3128)
!3141 = !DILocation(line: 20, column: 12, scope: !3128)
!3142 = !DILocation(line: 20, column: 5, scope: !3128)
!3143 = distinct !DISubprogram(name: "inverse_f", scope: !513, file: !513, line: 57, type: !3144, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!14, !14}
!3146 = !DILocalVariable(name: "a", arg: 1, scope: !3143, file: !513, line: 57, type: !14)
!3147 = !DILocation(line: 0, scope: !3143)
!3148 = !DILocation(line: 61, column: 24, scope: !3143)
!3149 = !DILocalVariable(name: "a2", scope: !3143, file: !513, line: 61, type: !14)
!3150 = !DILocation(line: 62, column: 24, scope: !3143)
!3151 = !DILocalVariable(name: "a4", scope: !3143, file: !513, line: 62, type: !14)
!3152 = !DILocation(line: 63, column: 24, scope: !3143)
!3153 = !DILocalVariable(name: "a8", scope: !3143, file: !513, line: 63, type: !14)
!3154 = !DILocation(line: 64, column: 24, scope: !3143)
!3155 = !DILocalVariable(name: "a6", scope: !3143, file: !513, line: 64, type: !14)
!3156 = !DILocation(line: 65, column: 25, scope: !3143)
!3157 = !DILocalVariable(name: "a14", scope: !3143, file: !513, line: 65, type: !14)
!3158 = !DILocation(line: 67, column: 5, scope: !3143)
!3159 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3032, file: !3032, line: 94, type: !3160, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !259, !346, !14, !5}
!3162 = !DILocalVariable(name: "legs", arg: 1, scope: !3159, file: !3032, line: 94, type: !259)
!3163 = !DILocation(line: 0, scope: !3159)
!3164 = !DILocalVariable(name: "in", arg: 2, scope: !3159, file: !3032, line: 94, type: !346)
!3165 = !DILocalVariable(name: "a", arg: 3, scope: !3159, file: !3032, line: 94, type: !14)
!3166 = !DILocalVariable(name: "acc", arg: 4, scope: !3159, file: !3032, line: 94, type: !5)
!3167 = !DILocation(line: 95, column: 20, scope: !3159)
!3168 = !DILocalVariable(name: "tab", scope: !3159, file: !3032, line: 95, type: !19)
!3169 = !DILocalVariable(name: "lsb_ask", scope: !3159, file: !3032, line: 97, type: !6)
!3170 = !DILocalVariable(name: "i", scope: !3171, file: !3032, line: 99, type: !45)
!3171 = distinct !DILexicalBlock(scope: !3159, file: !3032, line: 99, column: 5)
!3172 = !DILocation(line: 0, scope: !3171)
!3173 = !DILocation(line: 99, column: 9, scope: !3171)
!3174 = !DILocation(line: 99, scope: !3171)
!3175 = !DILocation(line: 99, column: 20, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3171, file: !3032, line: 99, column: 5)
!3177 = !DILocation(line: 99, column: 5, scope: !3171)
!3178 = !DILocation(line: 100, column: 21, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !3032, line: 99, column: 32)
!3180 = !DILocation(line: 100, column: 33, scope: !3179)
!3181 = !DILocation(line: 100, column: 51, scope: !3179)
!3182 = !DILocation(line: 100, column: 46, scope: !3179)
!3183 = !DILocation(line: 100, column: 44, scope: !3179)
!3184 = !DILocation(line: 101, column: 27, scope: !3179)
!3185 = !DILocation(line: 101, column: 33, scope: !3179)
!3186 = !DILocation(line: 101, column: 52, scope: !3179)
!3187 = !DILocation(line: 101, column: 59, scope: !3179)
!3188 = !DILocation(line: 101, column: 46, scope: !3179)
!3189 = !DILocation(line: 101, column: 44, scope: !3179)
!3190 = !DILocation(line: 101, column: 17, scope: !3179)
!3191 = !DILocation(line: 102, column: 21, scope: !3179)
!3192 = !DILocation(line: 102, column: 27, scope: !3179)
!3193 = !DILocation(line: 102, column: 33, scope: !3179)
!3194 = !DILocation(line: 102, column: 52, scope: !3179)
!3195 = !DILocation(line: 102, column: 59, scope: !3179)
!3196 = !DILocation(line: 102, column: 46, scope: !3179)
!3197 = !DILocation(line: 102, column: 44, scope: !3179)
!3198 = !DILocation(line: 102, column: 17, scope: !3179)
!3199 = !DILocation(line: 103, column: 21, scope: !3179)
!3200 = !DILocation(line: 103, column: 27, scope: !3179)
!3201 = !DILocation(line: 103, column: 33, scope: !3179)
!3202 = !DILocation(line: 103, column: 52, scope: !3179)
!3203 = !DILocation(line: 103, column: 59, scope: !3179)
!3204 = !DILocation(line: 103, column: 46, scope: !3179)
!3205 = !DILocation(line: 103, column: 44, scope: !3179)
!3206 = !DILocation(line: 103, column: 17, scope: !3179)
!3207 = !DILocation(line: 100, column: 9, scope: !3179)
!3208 = !DILocation(line: 100, column: 16, scope: !3179)
!3209 = !DILocation(line: 99, column: 29, scope: !3176)
!3210 = !DILocation(line: 99, column: 5, scope: !3176)
!3211 = distinct !{!3211, !3177, !3212, !323}
!3212 = !DILocation(line: 104, column: 5, scope: !3171)
!3213 = !DILocation(line: 105, column: 1, scope: !3159)
!3214 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2807, file: !2807, line: 44, type: !3215, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !45, !346, !18}
!3217 = !DILocalVariable(name: "legs", arg: 1, scope: !3214, file: !2807, line: 44, type: !45)
!3218 = !DILocation(line: 0, scope: !3214)
!3219 = !DILocalVariable(name: "in", arg: 2, scope: !3214, file: !2807, line: 44, type: !346)
!3220 = !DILocalVariable(name: "out", arg: 3, scope: !3214, file: !2807, line: 44, type: !18)
!3221 = !DILocalVariable(name: "in8", scope: !3214, file: !2807, line: 45, type: !49)
!3222 = !DILocalVariable(name: "i", scope: !3223, file: !2807, line: 46, type: !45)
!3223 = distinct !DILexicalBlock(scope: !3214, file: !2807, line: 46, column: 5)
!3224 = !DILocation(line: 0, scope: !3223)
!3225 = !DILocation(line: 46, column: 9, scope: !3223)
!3226 = !DILocation(line: 46, scope: !3223)
!3227 = !DILocation(line: 46, column: 29, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3223, file: !2807, line: 46, column: 5)
!3229 = !DILocation(line: 46, column: 22, scope: !3228)
!3230 = !DILocation(line: 46, column: 5, scope: !3223)
!3231 = !DILocation(line: 51, column: 26, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3228, file: !2807, line: 46, column: 42)
!3233 = !DILocation(line: 51, column: 21, scope: !3232)
!3234 = !DILocation(line: 51, column: 31, scope: !3232)
!3235 = !DILocation(line: 51, column: 9, scope: !3232)
!3236 = !DILocation(line: 51, column: 18, scope: !3232)
!3237 = !DILocation(line: 52, column: 26, scope: !3232)
!3238 = !DILocation(line: 52, column: 21, scope: !3232)
!3239 = !DILocation(line: 52, column: 30, scope: !3232)
!3240 = !DILocation(line: 52, column: 14, scope: !3232)
!3241 = !DILocation(line: 52, column: 9, scope: !3232)
!3242 = !DILocation(line: 52, column: 18, scope: !3232)
!3243 = !DILocation(line: 46, column: 37, scope: !3228)
!3244 = !DILocation(line: 46, column: 5, scope: !3228)
!3245 = distinct !{!3245, !3230, !3246, !323}
!3246 = !DILocation(line: 54, column: 5, scope: !3223)
!3247 = !DILocation(line: 55, column: 1, scope: !3214)
!3248 = distinct !DISubprogram(name: "mul_table", scope: !513, file: !513, line: 129, type: !514, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3249 = !DILocalVariable(name: "b", arg: 1, scope: !3248, file: !513, line: 129, type: !12)
!3250 = !DILocation(line: 0, scope: !3248)
!3251 = !DILocation(line: 130, column: 19, scope: !3248)
!3252 = !DILocation(line: 130, column: 33, scope: !3248)
!3253 = !DILocalVariable(name: "x", scope: !3248, file: !513, line: 130, type: !19)
!3254 = !DILocalVariable(name: "high_nibble_mask", scope: !3248, file: !513, line: 132, type: !19)
!3255 = !DILocation(line: 134, column: 28, scope: !3248)
!3256 = !DILocalVariable(name: "high_half", scope: !3248, file: !513, line: 134, type: !19)
!3257 = !DILocation(line: 135, column: 28, scope: !3248)
!3258 = !DILocation(line: 135, column: 47, scope: !3248)
!3259 = !DILocation(line: 135, column: 34, scope: !3248)
!3260 = !DILocation(line: 135, column: 5, scope: !3248)
!3261 = distinct !DISubprogram(name: "mul_f", scope: !513, file: !513, line: 9, type: !1548, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3262 = !DILocalVariable(name: "a", arg: 1, scope: !3261, file: !513, line: 9, type: !14)
!3263 = !DILocation(line: 0, scope: !3261)
!3264 = !DILocalVariable(name: "b", arg: 2, scope: !3261, file: !513, line: 9, type: !14)
!3265 = !DILocation(line: 14, column: 10, scope: !3261)
!3266 = !DILocation(line: 14, column: 7, scope: !3261)
!3267 = !DILocation(line: 17, column: 17, scope: !3261)
!3268 = !DILocalVariable(name: "p", scope: !3261, file: !513, line: 11, type: !14)
!3269 = !DILocation(line: 18, column: 13, scope: !3261)
!3270 = !DILocation(line: 18, column: 17, scope: !3261)
!3271 = !DILocation(line: 18, column: 7, scope: !3261)
!3272 = !DILocation(line: 19, column: 13, scope: !3261)
!3273 = !DILocation(line: 19, column: 17, scope: !3261)
!3274 = !DILocation(line: 19, column: 7, scope: !3261)
!3275 = !DILocation(line: 20, column: 13, scope: !3261)
!3276 = !DILocation(line: 20, column: 17, scope: !3261)
!3277 = !DILocation(line: 20, column: 7, scope: !3261)
!3278 = !DILocalVariable(name: "top_p", scope: !3261, file: !513, line: 23, type: !14)
!3279 = !DILocation(line: 24, column: 37, scope: !3261)
!3280 = !DILocation(line: 24, column: 52, scope: !3261)
!3281 = !DILocation(line: 24, column: 43, scope: !3261)
!3282 = !DILocation(line: 24, column: 59, scope: !3261)
!3283 = !DILocalVariable(name: "out", scope: !3261, file: !513, line: 24, type: !14)
!3284 = !DILocation(line: 25, column: 5, scope: !3261)
!3285 = distinct !DISubprogram(name: "lincomb", scope: !513, file: !513, line: 70, type: !1556, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3286 = !DILocalVariable(name: "a", arg: 1, scope: !3285, file: !513, line: 70, type: !49)
!3287 = !DILocation(line: 0, scope: !3285)
!3288 = !DILocalVariable(name: "b", arg: 2, scope: !3285, file: !513, line: 71, type: !49)
!3289 = !DILocalVariable(name: "n", arg: 3, scope: !3285, file: !513, line: 71, type: !45)
!3290 = !DILocalVariable(name: "m", arg: 4, scope: !3285, file: !513, line: 71, type: !45)
!3291 = !DILocalVariable(name: "ret", scope: !3285, file: !513, line: 72, type: !14)
!3292 = !DILocalVariable(name: "i", scope: !3293, file: !513, line: 73, type: !45)
!3293 = distinct !DILexicalBlock(scope: !3285, file: !513, line: 73, column: 5)
!3294 = !DILocation(line: 0, scope: !3293)
!3295 = !DILocation(line: 73, column: 10, scope: !3293)
!3296 = !DILocation(line: 73, scope: !3293)
!3297 = !DILocation(line: 73, column: 23, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3293, file: !513, line: 73, column: 5)
!3299 = !DILocation(line: 73, column: 5, scope: !3293)
!3300 = !DILocation(line: 74, column: 27, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !513, line: 73, column: 41)
!3302 = !DILocation(line: 74, column: 33, scope: !3301)
!3303 = !DILocation(line: 74, column: 21, scope: !3301)
!3304 = !DILocation(line: 74, column: 15, scope: !3301)
!3305 = !DILocation(line: 73, column: 28, scope: !3298)
!3306 = !DILocation(line: 73, column: 35, scope: !3298)
!3307 = !DILocation(line: 73, column: 5, scope: !3298)
!3308 = distinct !{!3308, !3299, !3309, !323}
!3309 = !DILocation(line: 75, column: 5, scope: !3293)
!3310 = !DILocation(line: 76, column: 5, scope: !3285)
!3311 = distinct !DISubprogram(name: "add_f", scope: !513, file: !513, line: 43, type: !1548, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3312 = !DILocalVariable(name: "a", arg: 1, scope: !3311, file: !513, line: 43, type: !14)
!3313 = !DILocation(line: 0, scope: !3311)
!3314 = !DILocalVariable(name: "b", arg: 2, scope: !3311, file: !513, line: 43, type: !14)
!3315 = !DILocation(line: 44, column: 14, scope: !3311)
!3316 = !DILocation(line: 44, column: 5, scope: !3311)
!3317 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3318, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{null, !3320}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3322)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3323)
!3323 = !{!3324}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3322, file: !71, line: 30, baseType: !5, size: 32)
!3325 = !DILocalVariable(name: "state", arg: 1, scope: !3317, file: !71, line: 688, type: !3320)
!3326 = !DILocation(line: 0, scope: !3317)
!3327 = !DILocation(line: 689, column: 18, scope: !3317)
!3328 = !DILocation(line: 689, column: 16, scope: !3317)
!3329 = !DILocation(line: 690, column: 20, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3317, file: !71, line: 690, column: 9)
!3331 = !DILocation(line: 691, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3330, file: !71, line: 690, column: 29)
!3333 = !DILocation(line: 692, column: 5, scope: !3332)
!3334 = !DILocation(line: 693, column: 28, scope: !3317)
!3335 = !DILocation(line: 693, column: 5, scope: !3317)
!3336 = !DILocation(line: 694, column: 1, scope: !3317)
!3337 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3338 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3337, file: !71, line: 580, type: !5)
!3339 = !DILocation(line: 0, scope: !3337)
!3340 = !DILocalVariable(name: "i", scope: !3337, file: !71, line: 581, type: !15)
!3341 = !DILocation(line: 583, column: 10, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3337, file: !71, line: 583, column: 5)
!3343 = !DILocation(line: 583, scope: !3342)
!3344 = !DILocation(line: 583, column: 19, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !71, line: 583, column: 5)
!3346 = !DILocation(line: 583, column: 5, scope: !3342)
!3347 = !DILocation(line: 584, column: 9, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3345, file: !71, line: 583, column: 30)
!3349 = !DILocation(line: 584, column: 18, scope: !3348)
!3350 = !DILocation(line: 583, column: 25, scope: !3345)
!3351 = !DILocation(line: 583, column: 5, scope: !3345)
!3352 = distinct !{!3352, !3346, !3353, !323}
!3353 = !DILocation(line: 585, column: 5, scope: !3342)
!3354 = !DILocation(line: 586, column: 5, scope: !3337)
!3355 = !DILocation(line: 586, column: 15, scope: !3337)
!3356 = !DILocation(line: 587, column: 1, scope: !3337)
!3357 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3358, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3320, !3360, !15}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!3362 = !DILocalVariable(name: "state", arg: 1, scope: !3357, file: !71, line: 696, type: !3320)
!3363 = !DILocation(line: 0, scope: !3357)
!3364 = !DILocalVariable(name: "input", arg: 2, scope: !3357, file: !71, line: 696, type: !3360)
!3365 = !DILocalVariable(name: "inlen", arg: 3, scope: !3357, file: !71, line: 696, type: !15)
!3366 = !DILocation(line: 697, column: 30, scope: !3357)
!3367 = !DILocation(line: 697, column: 5, scope: !3357)
!3368 = !DILocation(line: 698, column: 1, scope: !3357)
!3369 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3370, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !5, !19, !3360, !15}
!3372 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3369, file: !71, line: 603, type: !5)
!3373 = !DILocation(line: 0, scope: !3369)
!3374 = !DILocalVariable(name: "r", arg: 2, scope: !3369, file: !71, line: 603, type: !19)
!3375 = !DILocalVariable(name: "m", arg: 3, scope: !3369, file: !71, line: 603, type: !3360)
!3376 = !DILocalVariable(name: "mlen", arg: 4, scope: !3369, file: !71, line: 604, type: !15)
!3377 = !DILocation(line: 608, column: 5, scope: !3369)
!3378 = !DILocation(line: 608, column: 12, scope: !3369)
!3379 = !DILocation(line: 608, column: 19, scope: !3369)
!3380 = !DILocation(line: 608, column: 17, scope: !3369)
!3381 = !DILocation(line: 608, column: 32, scope: !3369)
!3382 = !DILocation(line: 608, column: 29, scope: !3369)
!3383 = !DILocation(line: 609, column: 9, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !71, line: 609, column: 9)
!3385 = distinct !DILexicalBlock(scope: !3369, file: !71, line: 608, column: 35)
!3386 = !DILocation(line: 621, column: 5, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3369, file: !71, line: 621, column: 5)
!3388 = !DILocation(line: 609, scope: !3384)
!3389 = !DILocalVariable(name: "i", scope: !3369, file: !71, line: 605, type: !15)
!3390 = !DILocation(line: 609, column: 39, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3384, file: !71, line: 609, column: 9)
!3392 = !DILocation(line: 609, column: 29, scope: !3391)
!3393 = !DILocation(line: 609, column: 27, scope: !3391)
!3394 = !DILocation(line: 609, column: 23, scope: !3391)
!3395 = !DILocation(line: 612, column: 54, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3391, file: !71, line: 609, column: 55)
!3397 = !DILocation(line: 612, column: 44, scope: !3396)
!3398 = !DILocation(line: 612, column: 69, scope: !3396)
!3399 = !DILocation(line: 612, column: 81, scope: !3396)
!3400 = !DILocation(line: 612, column: 79, scope: !3396)
!3401 = !DILocation(line: 612, column: 65, scope: !3396)
!3402 = !DILocation(line: 612, column: 59, scope: !3396)
!3403 = !DILocation(line: 612, column: 20, scope: !3396)
!3404 = !DILocation(line: 612, column: 32, scope: !3396)
!3405 = !DILocation(line: 612, column: 30, scope: !3396)
!3406 = !DILocation(line: 612, column: 35, scope: !3396)
!3407 = !DILocation(line: 612, column: 13, scope: !3396)
!3408 = !DILocation(line: 612, column: 41, scope: !3396)
!3409 = !DILocation(line: 609, column: 51, scope: !3391)
!3410 = !DILocation(line: 609, column: 9, scope: !3391)
!3411 = distinct !{!3411, !3383, !3412, !323}
!3412 = !DILocation(line: 613, column: 9, scope: !3384)
!3413 = !DILocation(line: 614, column: 30, scope: !3385)
!3414 = !DILocation(line: 614, column: 17, scope: !3385)
!3415 = !DILocation(line: 614, column: 14, scope: !3385)
!3416 = !DILocation(line: 615, column: 11, scope: !3385)
!3417 = !DILocation(line: 616, column: 9, scope: !3385)
!3418 = !DILocation(line: 616, column: 19, scope: !3385)
!3419 = !DILocation(line: 618, column: 9, scope: !3385)
!3420 = distinct !{!3420, !3377, !3421, !323}
!3421 = !DILocation(line: 619, column: 5, scope: !3369)
!3422 = !DILocation(line: 621, scope: !3387)
!3423 = !DILocation(line: 621, column: 19, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3387, file: !71, line: 621, column: 5)
!3425 = !DILocation(line: 622, column: 50, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3424, file: !71, line: 621, column: 32)
!3427 = !DILocation(line: 622, column: 40, scope: !3426)
!3428 = !DILocation(line: 622, column: 65, scope: !3426)
!3429 = !DILocation(line: 622, column: 77, scope: !3426)
!3430 = !DILocation(line: 622, column: 75, scope: !3426)
!3431 = !DILocation(line: 622, column: 61, scope: !3426)
!3432 = !DILocation(line: 622, column: 55, scope: !3426)
!3433 = !DILocation(line: 622, column: 16, scope: !3426)
!3434 = !DILocation(line: 622, column: 28, scope: !3426)
!3435 = !DILocation(line: 622, column: 26, scope: !3426)
!3436 = !DILocation(line: 622, column: 31, scope: !3426)
!3437 = !DILocation(line: 622, column: 9, scope: !3426)
!3438 = !DILocation(line: 622, column: 37, scope: !3426)
!3439 = !DILocation(line: 621, column: 28, scope: !3424)
!3440 = !DILocation(line: 621, column: 5, scope: !3424)
!3441 = distinct !{!3441, !3386, !3442, !323}
!3442 = !DILocation(line: 623, column: 5, scope: !3387)
!3443 = !DILocation(line: 624, column: 18, scope: !3369)
!3444 = !DILocation(line: 624, column: 5, scope: !3369)
!3445 = !DILocation(line: 624, column: 15, scope: !3369)
!3446 = !DILocation(line: 625, column: 1, scope: !3369)
!3447 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3448 = !DILocalVariable(name: "state", arg: 1, scope: !3447, file: !71, line: 236, type: !5)
!3449 = !DILocation(line: 0, scope: !3447)
!3450 = !DILocation(line: 253, column: 11, scope: !3447)
!3451 = !DILocalVariable(name: "Aba", scope: !3447, file: !71, line: 239, type: !6)
!3452 = !DILocation(line: 254, column: 11, scope: !3447)
!3453 = !DILocalVariable(name: "Abe", scope: !3447, file: !71, line: 239, type: !6)
!3454 = !DILocation(line: 255, column: 11, scope: !3447)
!3455 = !DILocalVariable(name: "Abi", scope: !3447, file: !71, line: 239, type: !6)
!3456 = !DILocation(line: 256, column: 11, scope: !3447)
!3457 = !DILocalVariable(name: "Abo", scope: !3447, file: !71, line: 239, type: !6)
!3458 = !DILocation(line: 257, column: 11, scope: !3447)
!3459 = !DILocalVariable(name: "Abu", scope: !3447, file: !71, line: 239, type: !6)
!3460 = !DILocation(line: 258, column: 11, scope: !3447)
!3461 = !DILocalVariable(name: "Aga", scope: !3447, file: !71, line: 240, type: !6)
!3462 = !DILocation(line: 259, column: 11, scope: !3447)
!3463 = !DILocalVariable(name: "Age", scope: !3447, file: !71, line: 240, type: !6)
!3464 = !DILocation(line: 260, column: 11, scope: !3447)
!3465 = !DILocalVariable(name: "Agi", scope: !3447, file: !71, line: 240, type: !6)
!3466 = !DILocation(line: 261, column: 11, scope: !3447)
!3467 = !DILocalVariable(name: "Ago", scope: !3447, file: !71, line: 240, type: !6)
!3468 = !DILocation(line: 262, column: 11, scope: !3447)
!3469 = !DILocalVariable(name: "Agu", scope: !3447, file: !71, line: 240, type: !6)
!3470 = !DILocation(line: 263, column: 11, scope: !3447)
!3471 = !DILocalVariable(name: "Aka", scope: !3447, file: !71, line: 241, type: !6)
!3472 = !DILocation(line: 264, column: 11, scope: !3447)
!3473 = !DILocalVariable(name: "Ake", scope: !3447, file: !71, line: 241, type: !6)
!3474 = !DILocation(line: 265, column: 11, scope: !3447)
!3475 = !DILocalVariable(name: "Aki", scope: !3447, file: !71, line: 241, type: !6)
!3476 = !DILocation(line: 266, column: 11, scope: !3447)
!3477 = !DILocalVariable(name: "Ako", scope: !3447, file: !71, line: 241, type: !6)
!3478 = !DILocation(line: 267, column: 11, scope: !3447)
!3479 = !DILocalVariable(name: "Aku", scope: !3447, file: !71, line: 241, type: !6)
!3480 = !DILocation(line: 268, column: 11, scope: !3447)
!3481 = !DILocalVariable(name: "Ama", scope: !3447, file: !71, line: 242, type: !6)
!3482 = !DILocation(line: 269, column: 11, scope: !3447)
!3483 = !DILocalVariable(name: "Ame", scope: !3447, file: !71, line: 242, type: !6)
!3484 = !DILocation(line: 270, column: 11, scope: !3447)
!3485 = !DILocalVariable(name: "Ami", scope: !3447, file: !71, line: 242, type: !6)
!3486 = !DILocation(line: 271, column: 11, scope: !3447)
!3487 = !DILocalVariable(name: "Amo", scope: !3447, file: !71, line: 242, type: !6)
!3488 = !DILocation(line: 272, column: 11, scope: !3447)
!3489 = !DILocalVariable(name: "Amu", scope: !3447, file: !71, line: 242, type: !6)
!3490 = !DILocation(line: 273, column: 11, scope: !3447)
!3491 = !DILocalVariable(name: "Asa", scope: !3447, file: !71, line: 243, type: !6)
!3492 = !DILocation(line: 274, column: 11, scope: !3447)
!3493 = !DILocalVariable(name: "Ase", scope: !3447, file: !71, line: 243, type: !6)
!3494 = !DILocation(line: 275, column: 11, scope: !3447)
!3495 = !DILocalVariable(name: "Asi", scope: !3447, file: !71, line: 243, type: !6)
!3496 = !DILocation(line: 276, column: 11, scope: !3447)
!3497 = !DILocalVariable(name: "Aso", scope: !3447, file: !71, line: 243, type: !6)
!3498 = !DILocation(line: 277, column: 11, scope: !3447)
!3499 = !DILocalVariable(name: "Asu", scope: !3447, file: !71, line: 243, type: !6)
!3500 = !DILocalVariable(name: "round", scope: !3447, file: !71, line: 237, type: !45)
!3501 = !DILocation(line: 279, column: 10, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3447, file: !71, line: 279, column: 5)
!3503 = !DILocation(line: 279, scope: !3502)
!3504 = !DILocation(line: 279, column: 27, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3502, file: !71, line: 279, column: 5)
!3506 = !DILocation(line: 279, column: 5, scope: !3502)
!3507 = !DILocalVariable(name: "BCa", scope: !3447, file: !71, line: 244, type: !6)
!3508 = !DILocalVariable(name: "BCe", scope: !3447, file: !71, line: 244, type: !6)
!3509 = !DILocalVariable(name: "BCi", scope: !3447, file: !71, line: 244, type: !6)
!3510 = !DILocalVariable(name: "BCo", scope: !3447, file: !71, line: 244, type: !6)
!3511 = !DILocalVariable(name: "BCu", scope: !3447, file: !71, line: 244, type: !6)
!3512 = !DILocalVariable(name: "Da", scope: !3447, file: !71, line: 245, type: !6)
!3513 = !DILocalVariable(name: "De", scope: !3447, file: !71, line: 245, type: !6)
!3514 = !DILocalVariable(name: "Di", scope: !3447, file: !71, line: 245, type: !6)
!3515 = !DILocalVariable(name: "Do", scope: !3447, file: !71, line: 245, type: !6)
!3516 = !DILocalVariable(name: "Du", scope: !3447, file: !71, line: 245, type: !6)
!3517 = !DILocalVariable(name: "Eba", scope: !3447, file: !71, line: 246, type: !6)
!3518 = !DILocalVariable(name: "Ebe", scope: !3447, file: !71, line: 246, type: !6)
!3519 = !DILocalVariable(name: "Ebi", scope: !3447, file: !71, line: 246, type: !6)
!3520 = !DILocalVariable(name: "Ebo", scope: !3447, file: !71, line: 246, type: !6)
!3521 = !DILocalVariable(name: "Ebu", scope: !3447, file: !71, line: 246, type: !6)
!3522 = !DILocalVariable(name: "Ega", scope: !3447, file: !71, line: 247, type: !6)
!3523 = !DILocalVariable(name: "Ege", scope: !3447, file: !71, line: 247, type: !6)
!3524 = !DILocalVariable(name: "Egi", scope: !3447, file: !71, line: 247, type: !6)
!3525 = !DILocalVariable(name: "Ego", scope: !3447, file: !71, line: 247, type: !6)
!3526 = !DILocalVariable(name: "Egu", scope: !3447, file: !71, line: 247, type: !6)
!3527 = !DILocalVariable(name: "Eka", scope: !3447, file: !71, line: 248, type: !6)
!3528 = !DILocalVariable(name: "Eke", scope: !3447, file: !71, line: 248, type: !6)
!3529 = !DILocalVariable(name: "Eki", scope: !3447, file: !71, line: 248, type: !6)
!3530 = !DILocalVariable(name: "Eko", scope: !3447, file: !71, line: 248, type: !6)
!3531 = !DILocalVariable(name: "Eku", scope: !3447, file: !71, line: 248, type: !6)
!3532 = !DILocalVariable(name: "Ema", scope: !3447, file: !71, line: 249, type: !6)
!3533 = !DILocalVariable(name: "Eme", scope: !3447, file: !71, line: 249, type: !6)
!3534 = !DILocalVariable(name: "Emi", scope: !3447, file: !71, line: 249, type: !6)
!3535 = !DILocalVariable(name: "Emo", scope: !3447, file: !71, line: 249, type: !6)
!3536 = !DILocalVariable(name: "Emu", scope: !3447, file: !71, line: 249, type: !6)
!3537 = !DILocalVariable(name: "Esa", scope: !3447, file: !71, line: 250, type: !6)
!3538 = !DILocalVariable(name: "Ese", scope: !3447, file: !71, line: 250, type: !6)
!3539 = !DILocalVariable(name: "Esi", scope: !3447, file: !71, line: 250, type: !6)
!3540 = !DILocalVariable(name: "Eso", scope: !3447, file: !71, line: 250, type: !6)
!3541 = !DILocalVariable(name: "Esu", scope: !3447, file: !71, line: 250, type: !6)
!3542 = !DILocation(line: 283, column: 19, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3505, file: !71, line: 279, column: 50)
!3544 = !DILocation(line: 283, column: 25, scope: !3543)
!3545 = !DILocation(line: 283, column: 31, scope: !3543)
!3546 = !DILocation(line: 283, column: 37, scope: !3543)
!3547 = !DILocation(line: 285, column: 19, scope: !3543)
!3548 = !DILocation(line: 285, column: 25, scope: !3543)
!3549 = !DILocation(line: 285, column: 31, scope: !3543)
!3550 = !DILocation(line: 285, column: 37, scope: !3543)
!3551 = !DILocation(line: 291, column: 20, scope: !3543)
!3552 = !DILocation(line: 291, column: 18, scope: !3543)
!3553 = !DILocation(line: 361, column: 13, scope: !3543)
!3554 = !DILocation(line: 362, column: 15, scope: !3543)
!3555 = !DILocation(line: 282, column: 19, scope: !3543)
!3556 = !DILocation(line: 282, column: 25, scope: !3543)
!3557 = !DILocation(line: 282, column: 31, scope: !3543)
!3558 = !DILocation(line: 282, column: 37, scope: !3543)
!3559 = !DILocation(line: 288, column: 20, scope: !3543)
!3560 = !DILocation(line: 288, column: 18, scope: !3543)
!3561 = !DILocation(line: 365, column: 13, scope: !3543)
!3562 = !DILocation(line: 366, column: 15, scope: !3543)
!3563 = !DILocation(line: 284, column: 19, scope: !3543)
!3564 = !DILocation(line: 284, column: 25, scope: !3543)
!3565 = !DILocation(line: 284, column: 31, scope: !3543)
!3566 = !DILocation(line: 284, column: 37, scope: !3543)
!3567 = !DILocation(line: 281, column: 19, scope: !3543)
!3568 = !DILocation(line: 281, column: 25, scope: !3543)
!3569 = !DILocation(line: 281, column: 31, scope: !3543)
!3570 = !DILocation(line: 281, column: 37, scope: !3543)
!3571 = !DILocation(line: 292, column: 20, scope: !3543)
!3572 = !DILocation(line: 292, column: 18, scope: !3543)
!3573 = !DILocation(line: 363, column: 13, scope: !3543)
!3574 = !DILocation(line: 364, column: 15, scope: !3543)
!3575 = !DILocation(line: 370, column: 23, scope: !3543)
!3576 = !DILocation(line: 370, column: 29, scope: !3543)
!3577 = !DILocation(line: 370, column: 19, scope: !3543)
!3578 = !DILocation(line: 290, column: 20, scope: !3543)
!3579 = !DILocation(line: 290, column: 18, scope: !3543)
!3580 = !DILocation(line: 298, column: 13, scope: !3543)
!3581 = !DILocation(line: 299, column: 15, scope: !3543)
!3582 = !DILocation(line: 289, column: 20, scope: !3543)
!3583 = !DILocation(line: 289, column: 18, scope: !3543)
!3584 = !DILocation(line: 296, column: 13, scope: !3543)
!3585 = !DILocation(line: 297, column: 15, scope: !3543)
!3586 = !DILocation(line: 304, column: 23, scope: !3543)
!3587 = !DILocation(line: 304, column: 29, scope: !3543)
!3588 = !DILocation(line: 305, column: 16, scope: !3543)
!3589 = !DILocation(line: 305, column: 13, scope: !3543)
!3590 = !DILocation(line: 294, column: 13, scope: !3543)
!3591 = !DILocation(line: 311, column: 13, scope: !3543)
!3592 = !DILocation(line: 312, column: 15, scope: !3543)
!3593 = !DILocation(line: 315, column: 13, scope: !3543)
!3594 = !DILocation(line: 316, column: 15, scope: !3543)
!3595 = !DILocation(line: 313, column: 13, scope: !3543)
!3596 = !DILocation(line: 314, column: 15, scope: !3543)
!3597 = !DILocation(line: 321, column: 23, scope: !3543)
!3598 = !DILocation(line: 321, column: 29, scope: !3543)
!3599 = !DILocation(line: 321, column: 19, scope: !3543)
!3600 = !DILocation(line: 376, column: 19, scope: !3543)
!3601 = !DILocation(line: 327, column: 13, scope: !3543)
!3602 = !DILocation(line: 328, column: 15, scope: !3543)
!3603 = !DILocation(line: 331, column: 13, scope: !3543)
!3604 = !DILocation(line: 332, column: 15, scope: !3543)
!3605 = !DILocation(line: 329, column: 13, scope: !3543)
!3606 = !DILocation(line: 330, column: 15, scope: !3543)
!3607 = !DILocation(line: 337, column: 23, scope: !3543)
!3608 = !DILocation(line: 337, column: 29, scope: !3543)
!3609 = !DILocation(line: 337, column: 19, scope: !3543)
!3610 = !DILocation(line: 376, column: 25, scope: !3543)
!3611 = !DILocation(line: 343, column: 13, scope: !3543)
!3612 = !DILocation(line: 344, column: 15, scope: !3543)
!3613 = !DILocation(line: 347, column: 13, scope: !3543)
!3614 = !DILocation(line: 348, column: 15, scope: !3543)
!3615 = !DILocation(line: 345, column: 13, scope: !3543)
!3616 = !DILocation(line: 346, column: 15, scope: !3543)
!3617 = !DILocation(line: 353, column: 23, scope: !3543)
!3618 = !DILocation(line: 353, column: 29, scope: !3543)
!3619 = !DILocation(line: 353, column: 19, scope: !3543)
!3620 = !DILocation(line: 376, column: 31, scope: !3543)
!3621 = !DILocation(line: 359, column: 13, scope: !3543)
!3622 = !DILocation(line: 360, column: 15, scope: !3543)
!3623 = !DILocation(line: 369, column: 23, scope: !3543)
!3624 = !DILocation(line: 369, column: 29, scope: !3543)
!3625 = !DILocation(line: 369, column: 19, scope: !3543)
!3626 = !DILocation(line: 376, column: 37, scope: !3543)
!3627 = !DILocation(line: 302, column: 13, scope: !3543)
!3628 = !DILocation(line: 303, column: 15, scope: !3543)
!3629 = !DILocation(line: 300, column: 13, scope: !3543)
!3630 = !DILocation(line: 301, column: 15, scope: !3543)
!3631 = !DILocation(line: 307, column: 23, scope: !3543)
!3632 = !DILocation(line: 307, column: 29, scope: !3543)
!3633 = !DILocation(line: 307, column: 19, scope: !3543)
!3634 = !DILocation(line: 319, column: 13, scope: !3543)
!3635 = !DILocation(line: 320, column: 15, scope: !3543)
!3636 = !DILocation(line: 317, column: 13, scope: !3543)
!3637 = !DILocation(line: 318, column: 15, scope: !3543)
!3638 = !DILocation(line: 323, column: 23, scope: !3543)
!3639 = !DILocation(line: 323, column: 29, scope: !3543)
!3640 = !DILocation(line: 323, column: 19, scope: !3543)
!3641 = !DILocation(line: 378, column: 19, scope: !3543)
!3642 = !DILocation(line: 335, column: 13, scope: !3543)
!3643 = !DILocation(line: 336, column: 15, scope: !3543)
!3644 = !DILocation(line: 333, column: 13, scope: !3543)
!3645 = !DILocation(line: 334, column: 15, scope: !3543)
!3646 = !DILocation(line: 339, column: 23, scope: !3543)
!3647 = !DILocation(line: 339, column: 29, scope: !3543)
!3648 = !DILocation(line: 339, column: 19, scope: !3543)
!3649 = !DILocation(line: 378, column: 25, scope: !3543)
!3650 = !DILocation(line: 351, column: 13, scope: !3543)
!3651 = !DILocation(line: 352, column: 15, scope: !3543)
!3652 = !DILocation(line: 349, column: 13, scope: !3543)
!3653 = !DILocation(line: 350, column: 15, scope: !3543)
!3654 = !DILocation(line: 355, column: 23, scope: !3543)
!3655 = !DILocation(line: 355, column: 29, scope: !3543)
!3656 = !DILocation(line: 355, column: 19, scope: !3543)
!3657 = !DILocation(line: 378, column: 31, scope: !3543)
!3658 = !DILocation(line: 367, column: 13, scope: !3543)
!3659 = !DILocation(line: 368, column: 15, scope: !3543)
!3660 = !DILocation(line: 371, column: 23, scope: !3543)
!3661 = !DILocation(line: 371, column: 29, scope: !3543)
!3662 = !DILocation(line: 371, column: 19, scope: !3543)
!3663 = !DILocation(line: 378, column: 37, scope: !3543)
!3664 = !DILocation(line: 384, column: 20, scope: !3543)
!3665 = !DILocation(line: 384, column: 18, scope: !3543)
!3666 = !DILocation(line: 462, column: 13, scope: !3543)
!3667 = !DILocation(line: 463, column: 15, scope: !3543)
!3668 = !DILocation(line: 324, column: 23, scope: !3543)
!3669 = !DILocation(line: 324, column: 29, scope: !3543)
!3670 = !DILocation(line: 324, column: 19, scope: !3543)
!3671 = !DILocation(line: 309, column: 23, scope: !3543)
!3672 = !DILocation(line: 309, column: 29, scope: !3543)
!3673 = !DILocation(line: 309, column: 19, scope: !3543)
!3674 = !DILocation(line: 325, column: 23, scope: !3543)
!3675 = !DILocation(line: 325, column: 29, scope: !3543)
!3676 = !DILocation(line: 325, column: 19, scope: !3543)
!3677 = !DILocation(line: 380, column: 19, scope: !3543)
!3678 = !DILocation(line: 341, column: 23, scope: !3543)
!3679 = !DILocation(line: 341, column: 29, scope: !3543)
!3680 = !DILocation(line: 341, column: 19, scope: !3543)
!3681 = !DILocation(line: 380, column: 25, scope: !3543)
!3682 = !DILocation(line: 357, column: 23, scope: !3543)
!3683 = !DILocation(line: 357, column: 29, scope: !3543)
!3684 = !DILocation(line: 357, column: 19, scope: !3543)
!3685 = !DILocation(line: 380, column: 31, scope: !3543)
!3686 = !DILocation(line: 373, column: 23, scope: !3543)
!3687 = !DILocation(line: 373, column: 29, scope: !3543)
!3688 = !DILocation(line: 373, column: 19, scope: !3543)
!3689 = !DILocation(line: 380, column: 37, scope: !3543)
!3690 = !DILocation(line: 386, column: 20, scope: !3543)
!3691 = !DILocation(line: 386, column: 18, scope: !3543)
!3692 = !DILocation(line: 456, column: 13, scope: !3543)
!3693 = !DILocation(line: 457, column: 15, scope: !3543)
!3694 = !DILocation(line: 306, column: 23, scope: !3543)
!3695 = !DILocation(line: 306, column: 29, scope: !3543)
!3696 = !DILocation(line: 306, column: 19, scope: !3543)
!3697 = !DILocation(line: 322, column: 23, scope: !3543)
!3698 = !DILocation(line: 322, column: 29, scope: !3543)
!3699 = !DILocation(line: 322, column: 19, scope: !3543)
!3700 = !DILocation(line: 377, column: 19, scope: !3543)
!3701 = !DILocation(line: 338, column: 23, scope: !3543)
!3702 = !DILocation(line: 338, column: 29, scope: !3543)
!3703 = !DILocation(line: 338, column: 19, scope: !3543)
!3704 = !DILocation(line: 377, column: 25, scope: !3543)
!3705 = !DILocation(line: 354, column: 23, scope: !3543)
!3706 = !DILocation(line: 354, column: 29, scope: !3543)
!3707 = !DILocation(line: 354, column: 19, scope: !3543)
!3708 = !DILocation(line: 377, column: 31, scope: !3543)
!3709 = !DILocation(line: 377, column: 37, scope: !3543)
!3710 = !DILocation(line: 308, column: 23, scope: !3543)
!3711 = !DILocation(line: 308, column: 29, scope: !3543)
!3712 = !DILocation(line: 308, column: 19, scope: !3543)
!3713 = !DILocation(line: 379, column: 19, scope: !3543)
!3714 = !DILocation(line: 340, column: 23, scope: !3543)
!3715 = !DILocation(line: 340, column: 29, scope: !3543)
!3716 = !DILocation(line: 340, column: 19, scope: !3543)
!3717 = !DILocation(line: 379, column: 25, scope: !3543)
!3718 = !DILocation(line: 356, column: 23, scope: !3543)
!3719 = !DILocation(line: 356, column: 29, scope: !3543)
!3720 = !DILocation(line: 356, column: 19, scope: !3543)
!3721 = !DILocation(line: 379, column: 31, scope: !3543)
!3722 = !DILocation(line: 372, column: 23, scope: !3543)
!3723 = !DILocation(line: 372, column: 29, scope: !3543)
!3724 = !DILocation(line: 372, column: 19, scope: !3543)
!3725 = !DILocation(line: 379, column: 37, scope: !3543)
!3726 = !DILocation(line: 385, column: 20, scope: !3543)
!3727 = !DILocation(line: 385, column: 18, scope: !3543)
!3728 = !DILocation(line: 454, column: 13, scope: !3543)
!3729 = !DILocation(line: 455, column: 15, scope: !3543)
!3730 = !DILocation(line: 468, column: 23, scope: !3543)
!3731 = !DILocation(line: 468, column: 29, scope: !3543)
!3732 = !DILocation(line: 468, column: 19, scope: !3543)
!3733 = !DILocation(line: 383, column: 20, scope: !3543)
!3734 = !DILocation(line: 383, column: 18, scope: !3543)
!3735 = !DILocation(line: 460, column: 13, scope: !3543)
!3736 = !DILocation(line: 461, column: 15, scope: !3543)
!3737 = !DILocation(line: 467, column: 23, scope: !3543)
!3738 = !DILocation(line: 467, column: 29, scope: !3543)
!3739 = !DILocation(line: 467, column: 19, scope: !3543)
!3740 = !DILocation(line: 387, column: 20, scope: !3543)
!3741 = !DILocation(line: 387, column: 18, scope: !3543)
!3742 = !DILocation(line: 458, column: 13, scope: !3543)
!3743 = !DILocation(line: 459, column: 15, scope: !3543)
!3744 = !DILocation(line: 466, column: 23, scope: !3543)
!3745 = !DILocation(line: 466, column: 29, scope: !3543)
!3746 = !DILocation(line: 466, column: 19, scope: !3543)
!3747 = !DILocation(line: 465, column: 23, scope: !3543)
!3748 = !DILocation(line: 465, column: 29, scope: !3543)
!3749 = !DILocation(line: 465, column: 19, scope: !3543)
!3750 = !DILocation(line: 464, column: 23, scope: !3543)
!3751 = !DILocation(line: 464, column: 29, scope: !3543)
!3752 = !DILocation(line: 464, column: 19, scope: !3543)
!3753 = !DILocation(line: 446, column: 13, scope: !3543)
!3754 = !DILocation(line: 447, column: 15, scope: !3543)
!3755 = !DILocation(line: 440, column: 13, scope: !3543)
!3756 = !DILocation(line: 441, column: 15, scope: !3543)
!3757 = !DILocation(line: 438, column: 13, scope: !3543)
!3758 = !DILocation(line: 439, column: 15, scope: !3543)
!3759 = !DILocation(line: 452, column: 23, scope: !3543)
!3760 = !DILocation(line: 452, column: 29, scope: !3543)
!3761 = !DILocation(line: 452, column: 19, scope: !3543)
!3762 = !DILocation(line: 444, column: 13, scope: !3543)
!3763 = !DILocation(line: 445, column: 15, scope: !3543)
!3764 = !DILocation(line: 451, column: 23, scope: !3543)
!3765 = !DILocation(line: 451, column: 29, scope: !3543)
!3766 = !DILocation(line: 451, column: 19, scope: !3543)
!3767 = !DILocation(line: 442, column: 13, scope: !3543)
!3768 = !DILocation(line: 443, column: 15, scope: !3543)
!3769 = !DILocation(line: 450, column: 23, scope: !3543)
!3770 = !DILocation(line: 450, column: 29, scope: !3543)
!3771 = !DILocation(line: 450, column: 19, scope: !3543)
!3772 = !DILocation(line: 449, column: 23, scope: !3543)
!3773 = !DILocation(line: 449, column: 29, scope: !3543)
!3774 = !DILocation(line: 449, column: 19, scope: !3543)
!3775 = !DILocation(line: 448, column: 23, scope: !3543)
!3776 = !DILocation(line: 448, column: 29, scope: !3543)
!3777 = !DILocation(line: 448, column: 19, scope: !3543)
!3778 = !DILocation(line: 430, column: 13, scope: !3543)
!3779 = !DILocation(line: 431, column: 15, scope: !3543)
!3780 = !DILocation(line: 424, column: 13, scope: !3543)
!3781 = !DILocation(line: 425, column: 15, scope: !3543)
!3782 = !DILocation(line: 422, column: 13, scope: !3543)
!3783 = !DILocation(line: 423, column: 15, scope: !3543)
!3784 = !DILocation(line: 436, column: 23, scope: !3543)
!3785 = !DILocation(line: 436, column: 29, scope: !3543)
!3786 = !DILocation(line: 436, column: 19, scope: !3543)
!3787 = !DILocation(line: 428, column: 13, scope: !3543)
!3788 = !DILocation(line: 429, column: 15, scope: !3543)
!3789 = !DILocation(line: 435, column: 23, scope: !3543)
!3790 = !DILocation(line: 435, column: 29, scope: !3543)
!3791 = !DILocation(line: 435, column: 19, scope: !3543)
!3792 = !DILocation(line: 426, column: 13, scope: !3543)
!3793 = !DILocation(line: 427, column: 15, scope: !3543)
!3794 = !DILocation(line: 434, column: 23, scope: !3543)
!3795 = !DILocation(line: 434, column: 29, scope: !3543)
!3796 = !DILocation(line: 434, column: 19, scope: !3543)
!3797 = !DILocation(line: 433, column: 23, scope: !3543)
!3798 = !DILocation(line: 433, column: 29, scope: !3543)
!3799 = !DILocation(line: 433, column: 19, scope: !3543)
!3800 = !DILocation(line: 432, column: 23, scope: !3543)
!3801 = !DILocation(line: 432, column: 29, scope: !3543)
!3802 = !DILocation(line: 432, column: 19, scope: !3543)
!3803 = !DILocation(line: 414, column: 13, scope: !3543)
!3804 = !DILocation(line: 415, column: 15, scope: !3543)
!3805 = !DILocation(line: 408, column: 13, scope: !3543)
!3806 = !DILocation(line: 409, column: 15, scope: !3543)
!3807 = !DILocation(line: 406, column: 13, scope: !3543)
!3808 = !DILocation(line: 407, column: 15, scope: !3543)
!3809 = !DILocation(line: 420, column: 23, scope: !3543)
!3810 = !DILocation(line: 420, column: 29, scope: !3543)
!3811 = !DILocation(line: 420, column: 19, scope: !3543)
!3812 = !DILocation(line: 412, column: 13, scope: !3543)
!3813 = !DILocation(line: 413, column: 15, scope: !3543)
!3814 = !DILocation(line: 419, column: 23, scope: !3543)
!3815 = !DILocation(line: 419, column: 29, scope: !3543)
!3816 = !DILocation(line: 419, column: 19, scope: !3543)
!3817 = !DILocation(line: 410, column: 13, scope: !3543)
!3818 = !DILocation(line: 411, column: 15, scope: !3543)
!3819 = !DILocation(line: 418, column: 23, scope: !3543)
!3820 = !DILocation(line: 418, column: 29, scope: !3543)
!3821 = !DILocation(line: 418, column: 19, scope: !3543)
!3822 = !DILocation(line: 417, column: 23, scope: !3543)
!3823 = !DILocation(line: 417, column: 29, scope: !3543)
!3824 = !DILocation(line: 417, column: 19, scope: !3543)
!3825 = !DILocation(line: 416, column: 23, scope: !3543)
!3826 = !DILocation(line: 416, column: 29, scope: !3543)
!3827 = !DILocation(line: 416, column: 19, scope: !3543)
!3828 = !DILocation(line: 397, column: 13, scope: !3543)
!3829 = !DILocation(line: 398, column: 15, scope: !3543)
!3830 = !DILocation(line: 391, column: 13, scope: !3543)
!3831 = !DILocation(line: 392, column: 15, scope: !3543)
!3832 = !DILocation(line: 389, column: 13, scope: !3543)
!3833 = !DILocation(line: 404, column: 23, scope: !3543)
!3834 = !DILocation(line: 404, column: 29, scope: !3543)
!3835 = !DILocation(line: 404, column: 19, scope: !3543)
!3836 = !DILocation(line: 395, column: 13, scope: !3543)
!3837 = !DILocation(line: 396, column: 15, scope: !3543)
!3838 = !DILocation(line: 403, column: 23, scope: !3543)
!3839 = !DILocation(line: 403, column: 29, scope: !3543)
!3840 = !DILocation(line: 403, column: 19, scope: !3543)
!3841 = !DILocation(line: 393, column: 13, scope: !3543)
!3842 = !DILocation(line: 394, column: 15, scope: !3543)
!3843 = !DILocation(line: 402, column: 23, scope: !3543)
!3844 = !DILocation(line: 402, column: 29, scope: !3543)
!3845 = !DILocation(line: 402, column: 19, scope: !3543)
!3846 = !DILocation(line: 401, column: 23, scope: !3543)
!3847 = !DILocation(line: 401, column: 29, scope: !3543)
!3848 = !DILocation(line: 401, column: 19, scope: !3543)
!3849 = !DILocation(line: 400, column: 45, scope: !3543)
!3850 = !DILocation(line: 400, column: 16, scope: !3543)
!3851 = !DILocation(line: 399, column: 23, scope: !3543)
!3852 = !DILocation(line: 399, column: 29, scope: !3543)
!3853 = !DILocation(line: 400, column: 13, scope: !3543)
!3854 = !DILocation(line: 279, column: 44, scope: !3505)
!3855 = !DILocation(line: 279, column: 5, scope: !3505)
!3856 = distinct !{!3856, !3506, !3857, !323}
!3857 = !DILocation(line: 469, column: 5, scope: !3502)
!3858 = !DILocation(line: 472, column: 14, scope: !3447)
!3859 = !DILocation(line: 473, column: 5, scope: !3447)
!3860 = !DILocation(line: 473, column: 14, scope: !3447)
!3861 = !DILocation(line: 474, column: 5, scope: !3447)
!3862 = !DILocation(line: 474, column: 14, scope: !3447)
!3863 = !DILocation(line: 475, column: 5, scope: !3447)
!3864 = !DILocation(line: 475, column: 14, scope: !3447)
!3865 = !DILocation(line: 476, column: 5, scope: !3447)
!3866 = !DILocation(line: 476, column: 14, scope: !3447)
!3867 = !DILocation(line: 477, column: 5, scope: !3447)
!3868 = !DILocation(line: 477, column: 14, scope: !3447)
!3869 = !DILocation(line: 478, column: 5, scope: !3447)
!3870 = !DILocation(line: 478, column: 14, scope: !3447)
!3871 = !DILocation(line: 479, column: 5, scope: !3447)
!3872 = !DILocation(line: 479, column: 14, scope: !3447)
!3873 = !DILocation(line: 480, column: 5, scope: !3447)
!3874 = !DILocation(line: 480, column: 14, scope: !3447)
!3875 = !DILocation(line: 481, column: 5, scope: !3447)
!3876 = !DILocation(line: 481, column: 14, scope: !3447)
!3877 = !DILocation(line: 482, column: 5, scope: !3447)
!3878 = !DILocation(line: 482, column: 15, scope: !3447)
!3879 = !DILocation(line: 483, column: 5, scope: !3447)
!3880 = !DILocation(line: 483, column: 15, scope: !3447)
!3881 = !DILocation(line: 484, column: 5, scope: !3447)
!3882 = !DILocation(line: 484, column: 15, scope: !3447)
!3883 = !DILocation(line: 485, column: 5, scope: !3447)
!3884 = !DILocation(line: 485, column: 15, scope: !3447)
!3885 = !DILocation(line: 486, column: 5, scope: !3447)
!3886 = !DILocation(line: 486, column: 15, scope: !3447)
!3887 = !DILocation(line: 487, column: 5, scope: !3447)
!3888 = !DILocation(line: 487, column: 15, scope: !3447)
!3889 = !DILocation(line: 488, column: 5, scope: !3447)
!3890 = !DILocation(line: 488, column: 15, scope: !3447)
!3891 = !DILocation(line: 489, column: 5, scope: !3447)
!3892 = !DILocation(line: 489, column: 15, scope: !3447)
!3893 = !DILocation(line: 490, column: 5, scope: !3447)
!3894 = !DILocation(line: 490, column: 15, scope: !3447)
!3895 = !DILocation(line: 491, column: 5, scope: !3447)
!3896 = !DILocation(line: 491, column: 15, scope: !3447)
!3897 = !DILocation(line: 492, column: 5, scope: !3447)
!3898 = !DILocation(line: 492, column: 15, scope: !3447)
!3899 = !DILocation(line: 493, column: 5, scope: !3447)
!3900 = !DILocation(line: 493, column: 15, scope: !3447)
!3901 = !DILocation(line: 494, column: 5, scope: !3447)
!3902 = !DILocation(line: 494, column: 15, scope: !3447)
!3903 = !DILocation(line: 495, column: 5, scope: !3447)
!3904 = !DILocation(line: 495, column: 15, scope: !3447)
!3905 = !DILocation(line: 496, column: 5, scope: !3447)
!3906 = !DILocation(line: 496, column: 15, scope: !3447)
!3907 = !DILocation(line: 497, column: 1, scope: !3447)
!3908 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3318, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3909 = !DILocalVariable(name: "state", arg: 1, scope: !3908, file: !71, line: 700, type: !3320)
!3910 = !DILocation(line: 0, scope: !3908)
!3911 = !DILocation(line: 701, column: 32, scope: !3908)
!3912 = !DILocation(line: 701, column: 5, scope: !3908)
!3913 = !DILocation(line: 702, column: 1, scope: !3908)
!3914 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3915, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !5, !19, !12}
!3917 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3914, file: !71, line: 640, type: !5)
!3918 = !DILocation(line: 0, scope: !3914)
!3919 = !DILocalVariable(name: "r", arg: 2, scope: !3914, file: !71, line: 640, type: !19)
!3920 = !DILocalVariable(name: "p", arg: 3, scope: !3914, file: !71, line: 640, type: !12)
!3921 = !DILocation(line: 643, column: 30, scope: !3914)
!3922 = !DILocation(line: 643, column: 51, scope: !3914)
!3923 = !DILocation(line: 643, column: 48, scope: !3914)
!3924 = !DILocation(line: 643, column: 42, scope: !3914)
!3925 = !DILocation(line: 643, column: 21, scope: !3914)
!3926 = !DILocation(line: 643, column: 5, scope: !3914)
!3927 = !DILocation(line: 643, column: 27, scope: !3914)
!3928 = !DILocation(line: 644, column: 48, scope: !3914)
!3929 = !DILocation(line: 644, column: 42, scope: !3914)
!3930 = !DILocation(line: 644, column: 14, scope: !3914)
!3931 = !DILocation(line: 644, column: 19, scope: !3914)
!3932 = !DILocation(line: 644, column: 5, scope: !3914)
!3933 = !DILocation(line: 644, column: 25, scope: !3914)
!3934 = !DILocation(line: 645, column: 5, scope: !3914)
!3935 = !DILocation(line: 645, column: 15, scope: !3914)
!3936 = !DILocation(line: 646, column: 1, scope: !3914)
!3937 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !3938, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !11, !15, !3320}
!3940 = !DILocalVariable(name: "output", arg: 1, scope: !3937, file: !71, line: 704, type: !11)
!3941 = !DILocation(line: 0, scope: !3937)
!3942 = !DILocalVariable(name: "outlen", arg: 2, scope: !3937, file: !71, line: 704, type: !15)
!3943 = !DILocalVariable(name: "state", arg: 3, scope: !3937, file: !71, line: 704, type: !3320)
!3944 = !DILocation(line: 705, column: 47, scope: !3937)
!3945 = !DILocation(line: 705, column: 5, scope: !3937)
!3946 = !DILocation(line: 706, column: 1, scope: !3937)
!3947 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !3948, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !11, !15, !5, !19}
!3950 = !DILocalVariable(name: "h", arg: 1, scope: !3947, file: !71, line: 661, type: !11)
!3951 = !DILocation(line: 0, scope: !3947)
!3952 = !DILocalVariable(name: "outlen", arg: 2, scope: !3947, file: !71, line: 661, type: !15)
!3953 = !DILocalVariable(name: "s_inc", arg: 3, scope: !3947, file: !71, line: 662, type: !5)
!3954 = !DILocalVariable(name: "r", arg: 4, scope: !3947, file: !71, line: 662, type: !19)
!3955 = !DILocalVariable(name: "i", scope: !3947, file: !71, line: 663, type: !15)
!3956 = !DILocation(line: 666, column: 10, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3947, file: !71, line: 666, column: 5)
!3958 = !DILocation(line: 666, scope: !3957)
!3959 = !DILocation(line: 666, column: 19, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3957, file: !71, line: 666, column: 5)
!3961 = !DILocation(line: 666, column: 28, scope: !3960)
!3962 = !DILocation(line: 666, column: 31, scope: !3960)
!3963 = !DILocation(line: 666, column: 35, scope: !3960)
!3964 = !DILocation(line: 666, column: 33, scope: !3960)
!3965 = !DILocation(line: 666, column: 5, scope: !3957)
!3966 = !DILocation(line: 669, column: 33, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3960, file: !71, line: 666, column: 51)
!3968 = !DILocation(line: 669, column: 37, scope: !3967)
!3969 = !DILocation(line: 669, column: 35, scope: !3967)
!3970 = !DILocation(line: 669, column: 49, scope: !3967)
!3971 = !DILocation(line: 669, column: 47, scope: !3967)
!3972 = !DILocation(line: 669, column: 52, scope: !3967)
!3973 = !DILocation(line: 669, column: 26, scope: !3967)
!3974 = !DILocation(line: 669, column: 68, scope: !3967)
!3975 = !DILocation(line: 669, column: 72, scope: !3967)
!3976 = !DILocation(line: 669, column: 70, scope: !3967)
!3977 = !DILocation(line: 669, column: 84, scope: !3967)
!3978 = !DILocation(line: 669, column: 82, scope: !3967)
!3979 = !DILocation(line: 669, column: 64, scope: !3967)
!3980 = !DILocation(line: 669, column: 58, scope: !3967)
!3981 = !DILocation(line: 669, column: 16, scope: !3967)
!3982 = !DILocation(line: 669, column: 9, scope: !3967)
!3983 = !DILocation(line: 669, column: 14, scope: !3967)
!3984 = !DILocation(line: 666, column: 47, scope: !3960)
!3985 = !DILocation(line: 666, column: 5, scope: !3960)
!3986 = distinct !{!3986, !3965, !3987, !323}
!3987 = !DILocation(line: 670, column: 5, scope: !3957)
!3988 = !DILocation(line: 671, column: 7, scope: !3947)
!3989 = !DILocation(line: 672, column: 12, scope: !3947)
!3990 = !DILocation(line: 673, column: 18, scope: !3947)
!3991 = !DILocation(line: 673, column: 5, scope: !3947)
!3992 = !DILocation(line: 673, column: 15, scope: !3947)
!3993 = !DILocation(line: 676, column: 5, scope: !3947)
!3994 = !DILocation(line: 676, column: 19, scope: !3947)
!3995 = !DILocation(line: 677, column: 9, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3947, file: !71, line: 676, column: 24)
!3997 = !DILocation(line: 679, column: 14, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3996, file: !71, line: 679, column: 9)
!3999 = !DILocation(line: 679, scope: !3998)
!4000 = !DILocation(line: 679, column: 32, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3998, file: !71, line: 679, column: 9)
!4002 = !DILocation(line: 679, column: 9, scope: !3998)
!4003 = !DILocation(line: 680, column: 38, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4001, file: !71, line: 679, column: 47)
!4005 = !DILocation(line: 680, column: 30, scope: !4004)
!4006 = !DILocation(line: 680, column: 50, scope: !4004)
!4007 = !DILocation(line: 680, column: 44, scope: !4004)
!4008 = !DILocation(line: 680, column: 20, scope: !4004)
!4009 = !DILocation(line: 680, column: 13, scope: !4004)
!4010 = !DILocation(line: 680, column: 18, scope: !4004)
!4011 = !DILocation(line: 679, column: 43, scope: !4001)
!4012 = !DILocation(line: 679, column: 9, scope: !4001)
!4013 = distinct !{!4013, !4002, !4014, !323}
!4014 = !DILocation(line: 681, column: 9, scope: !3998)
!4015 = !DILocation(line: 682, column: 11, scope: !3996)
!4016 = !DILocation(line: 683, column: 16, scope: !3996)
!4017 = !DILocation(line: 684, column: 23, scope: !3996)
!4018 = !DILocation(line: 684, column: 21, scope: !3996)
!4019 = !DILocation(line: 684, column: 9, scope: !3996)
!4020 = !DILocation(line: 684, column: 19, scope: !3996)
!4021 = distinct !{!4021, !3993, !4022, !323}
!4022 = !DILocation(line: 685, column: 5, scope: !3947)
!4023 = !DILocation(line: 686, column: 1, scope: !3947)
!4024 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4025, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !3320, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!4029 = !DILocalVariable(name: "dest", arg: 1, scope: !4024, file: !71, line: 708, type: !3320)
!4030 = !DILocation(line: 0, scope: !4024)
!4031 = !DILocalVariable(name: "src", arg: 2, scope: !4024, file: !71, line: 708, type: !4027)
!4032 = !DILocation(line: 709, column: 17, scope: !4024)
!4033 = !DILocation(line: 709, column: 15, scope: !4024)
!4034 = !DILocation(line: 710, column: 19, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4024, file: !71, line: 710, column: 9)
!4036 = !DILocation(line: 711, column: 9, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4035, file: !71, line: 710, column: 28)
!4038 = !DILocation(line: 712, column: 5, scope: !4037)
!4039 = !DILocation(line: 713, column: 18, scope: !4024)
!4040 = !DILocation(line: 713, column: 28, scope: !4024)
!4041 = !DILocation(line: 713, column: 5, scope: !4024)
!4042 = !DILocation(line: 714, column: 1, scope: !4024)
!4043 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3318, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4044 = !DILocalVariable(name: "state", arg: 1, scope: !4043, file: !71, line: 716, type: !3320)
!4045 = !DILocation(line: 0, scope: !4043)
!4046 = !DILocation(line: 717, column: 17, scope: !4043)
!4047 = !DILocation(line: 717, column: 5, scope: !4043)
!4048 = !DILocation(line: 718, column: 1, scope: !4043)
!4049 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4050, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4054)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4055)
!4055 = !{!4056}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4054, file: !71, line: 40, baseType: !5, size: 32)
!4057 = !DILocalVariable(name: "state", arg: 1, scope: !4049, file: !71, line: 720, type: !4052)
!4058 = !DILocation(line: 0, scope: !4049)
!4059 = !DILocation(line: 721, column: 18, scope: !4049)
!4060 = !DILocation(line: 721, column: 16, scope: !4049)
!4061 = !DILocation(line: 722, column: 20, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4049, file: !71, line: 722, column: 9)
!4063 = !DILocation(line: 723, column: 9, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4062, file: !71, line: 722, column: 29)
!4065 = !DILocation(line: 724, column: 5, scope: !4064)
!4066 = !DILocation(line: 725, column: 28, scope: !4049)
!4067 = !DILocation(line: 725, column: 5, scope: !4049)
!4068 = !DILocation(line: 726, column: 1, scope: !4049)
!4069 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4070, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !4052, !3360, !15}
!4072 = !DILocalVariable(name: "state", arg: 1, scope: !4069, file: !71, line: 728, type: !4052)
!4073 = !DILocation(line: 0, scope: !4069)
!4074 = !DILocalVariable(name: "input", arg: 2, scope: !4069, file: !71, line: 728, type: !3360)
!4075 = !DILocalVariable(name: "inlen", arg: 3, scope: !4069, file: !71, line: 728, type: !15)
!4076 = !DILocation(line: 729, column: 30, scope: !4069)
!4077 = !DILocation(line: 729, column: 5, scope: !4069)
!4078 = !DILocation(line: 730, column: 1, scope: !4069)
!4079 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4050, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4080 = !DILocalVariable(name: "state", arg: 1, scope: !4079, file: !71, line: 732, type: !4052)
!4081 = !DILocation(line: 0, scope: !4079)
!4082 = !DILocation(line: 733, column: 32, scope: !4079)
!4083 = !DILocation(line: 733, column: 5, scope: !4079)
!4084 = !DILocation(line: 734, column: 1, scope: !4079)
!4085 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4086, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !11, !15, !4052}
!4088 = !DILocalVariable(name: "output", arg: 1, scope: !4085, file: !71, line: 736, type: !11)
!4089 = !DILocation(line: 0, scope: !4085)
!4090 = !DILocalVariable(name: "outlen", arg: 2, scope: !4085, file: !71, line: 736, type: !15)
!4091 = !DILocalVariable(name: "state", arg: 3, scope: !4085, file: !71, line: 736, type: !4052)
!4092 = !DILocation(line: 737, column: 47, scope: !4085)
!4093 = !DILocation(line: 737, column: 5, scope: !4085)
!4094 = !DILocation(line: 738, column: 1, scope: !4085)
!4095 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4096, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !4052, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4100 = !DILocalVariable(name: "dest", arg: 1, scope: !4095, file: !71, line: 740, type: !4052)
!4101 = !DILocation(line: 0, scope: !4095)
!4102 = !DILocalVariable(name: "src", arg: 2, scope: !4095, file: !71, line: 740, type: !4098)
!4103 = !DILocation(line: 741, column: 17, scope: !4095)
!4104 = !DILocation(line: 741, column: 15, scope: !4095)
!4105 = !DILocation(line: 742, column: 19, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4095, file: !71, line: 742, column: 9)
!4107 = !DILocation(line: 743, column: 9, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4106, file: !71, line: 742, column: 28)
!4109 = !DILocation(line: 744, column: 5, scope: !4108)
!4110 = !DILocation(line: 745, column: 18, scope: !4095)
!4111 = !DILocation(line: 745, column: 28, scope: !4095)
!4112 = !DILocation(line: 745, column: 5, scope: !4095)
!4113 = !DILocation(line: 746, column: 1, scope: !4095)
!4114 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4050, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4115 = !DILocalVariable(name: "state", arg: 1, scope: !4114, file: !71, line: 748, type: !4052)
!4116 = !DILocation(line: 0, scope: !4114)
!4117 = !DILocation(line: 749, column: 17, scope: !4114)
!4118 = !DILocation(line: 749, column: 5, scope: !4114)
!4119 = !DILocation(line: 750, column: 1, scope: !4114)
!4120 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4121, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !4123, !3360, !15}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4125)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4126)
!4126 = !{!4127}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4125, file: !71, line: 35, baseType: !5, size: 32)
!4128 = !DILocalVariable(name: "state", arg: 1, scope: !4120, file: !71, line: 764, type: !4123)
!4129 = !DILocation(line: 0, scope: !4120)
!4130 = !DILocalVariable(name: "input", arg: 2, scope: !4120, file: !71, line: 764, type: !3360)
!4131 = !DILocalVariable(name: "inlen", arg: 3, scope: !4120, file: !71, line: 764, type: !15)
!4132 = !DILocation(line: 765, column: 18, scope: !4120)
!4133 = !DILocation(line: 765, column: 16, scope: !4120)
!4134 = !DILocation(line: 766, column: 20, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4120, file: !71, line: 766, column: 9)
!4136 = !DILocation(line: 767, column: 9, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4135, file: !71, line: 766, column: 29)
!4138 = !DILocation(line: 768, column: 5, scope: !4137)
!4139 = !DILocation(line: 769, column: 26, scope: !4120)
!4140 = !DILocation(line: 769, column: 5, scope: !4120)
!4141 = !DILocation(line: 770, column: 1, scope: !4120)
!4142 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4143, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !5, !19, !3360, !15, !12}
!4145 = !DILocalVariable(name: "s", arg: 1, scope: !4142, file: !71, line: 512, type: !5)
!4146 = !DILocation(line: 0, scope: !4142)
!4147 = !DILocalVariable(name: "r", arg: 2, scope: !4142, file: !71, line: 512, type: !19)
!4148 = !DILocalVariable(name: "m", arg: 3, scope: !4142, file: !71, line: 512, type: !3360)
!4149 = !DILocalVariable(name: "mlen", arg: 4, scope: !4142, file: !71, line: 513, type: !15)
!4150 = !DILocalVariable(name: "p", arg: 5, scope: !4142, file: !71, line: 513, type: !12)
!4151 = !DILocalVariable(name: "t", scope: !4142, file: !71, line: 515, type: !4152)
!4152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4153)
!4153 = !{!4154}
!4154 = !DISubrange(count: 200)
!4155 = !DILocation(line: 515, column: 13, scope: !4142)
!4156 = !DILocalVariable(name: "i", scope: !4142, file: !71, line: 514, type: !15)
!4157 = !DILocation(line: 518, column: 10, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4142, file: !71, line: 518, column: 5)
!4159 = !DILocation(line: 518, scope: !4158)
!4160 = !DILocation(line: 518, column: 19, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4158, file: !71, line: 518, column: 5)
!4162 = !DILocation(line: 518, column: 5, scope: !4158)
!4163 = !DILocation(line: 522, column: 5, scope: !4142)
!4164 = !DILocation(line: 519, column: 9, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !71, line: 518, column: 30)
!4166 = !DILocation(line: 519, column: 14, scope: !4165)
!4167 = !DILocation(line: 518, column: 25, scope: !4161)
!4168 = !DILocation(line: 518, column: 5, scope: !4161)
!4169 = distinct !{!4169, !4162, !4170, !323}
!4170 = !DILocation(line: 520, column: 5, scope: !4158)
!4171 = !DILocation(line: 522, column: 17, scope: !4142)
!4172 = !DILocation(line: 523, column: 9, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !71, line: 523, column: 9)
!4174 = distinct !DILexicalBlock(scope: !4142, file: !71, line: 522, column: 23)
!4175 = !DILocation(line: 532, column: 5, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4142, file: !71, line: 532, column: 5)
!4177 = !DILocation(line: 523, scope: !4173)
!4178 = !DILocation(line: 523, column: 23, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4173, file: !71, line: 523, column: 9)
!4180 = !DILocation(line: 524, column: 34, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4179, file: !71, line: 523, column: 37)
!4182 = !DILocation(line: 524, column: 30, scope: !4181)
!4183 = !DILocation(line: 524, column: 21, scope: !4181)
!4184 = !DILocation(line: 524, column: 13, scope: !4181)
!4185 = !DILocation(line: 524, column: 18, scope: !4181)
!4186 = !DILocation(line: 523, column: 32, scope: !4179)
!4187 = !DILocation(line: 523, column: 9, scope: !4179)
!4188 = distinct !{!4188, !4172, !4189, !323}
!4189 = !DILocation(line: 525, column: 9, scope: !4173)
!4190 = !DILocation(line: 527, column: 9, scope: !4174)
!4191 = !DILocation(line: 528, column: 14, scope: !4174)
!4192 = !DILocation(line: 529, column: 11, scope: !4174)
!4193 = distinct !{!4193, !4163, !4194, !323}
!4194 = !DILocation(line: 530, column: 5, scope: !4142)
!4195 = !DILocation(line: 532, scope: !4176)
!4196 = !DILocation(line: 532, column: 19, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4176, file: !71, line: 532, column: 5)
!4198 = !DILocation(line: 535, column: 5, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4142, file: !71, line: 535, column: 5)
!4200 = !DILocation(line: 533, column: 9, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !71, line: 532, column: 29)
!4202 = !DILocation(line: 533, column: 14, scope: !4201)
!4203 = !DILocation(line: 532, column: 24, scope: !4197)
!4204 = !DILocation(line: 532, column: 5, scope: !4197)
!4205 = distinct !{!4205, !4175, !4206, !323}
!4206 = !DILocation(line: 534, column: 5, scope: !4176)
!4207 = !DILocation(line: 535, scope: !4199)
!4208 = !DILocation(line: 535, column: 19, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4199, file: !71, line: 535, column: 5)
!4210 = !DILocation(line: 536, column: 16, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4209, file: !71, line: 535, column: 32)
!4212 = !DILocation(line: 536, column: 9, scope: !4211)
!4213 = !DILocation(line: 536, column: 14, scope: !4211)
!4214 = !DILocation(line: 535, column: 27, scope: !4209)
!4215 = !DILocation(line: 535, column: 5, scope: !4209)
!4216 = distinct !{!4216, !4198, !4217, !323}
!4217 = !DILocation(line: 537, column: 5, scope: !4199)
!4218 = !DILocation(line: 538, column: 5, scope: !4142)
!4219 = !DILocation(line: 538, column: 10, scope: !4142)
!4220 = !DILocation(line: 539, column: 9, scope: !4142)
!4221 = !DILocation(line: 539, column: 5, scope: !4142)
!4222 = !DILocation(line: 539, column: 14, scope: !4142)
!4223 = !DILocation(line: 540, column: 10, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4142, file: !71, line: 540, column: 5)
!4225 = !DILocation(line: 540, scope: !4224)
!4226 = !DILocation(line: 540, column: 19, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4224, file: !71, line: 540, column: 5)
!4228 = !DILocation(line: 540, column: 5, scope: !4224)
!4229 = !DILocation(line: 541, column: 30, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4227, file: !71, line: 540, column: 33)
!4231 = !DILocation(line: 541, column: 26, scope: !4230)
!4232 = !DILocation(line: 541, column: 17, scope: !4230)
!4233 = !DILocation(line: 541, column: 9, scope: !4230)
!4234 = !DILocation(line: 541, column: 14, scope: !4230)
!4235 = !DILocation(line: 540, column: 28, scope: !4227)
!4236 = !DILocation(line: 540, column: 5, scope: !4227)
!4237 = distinct !{!4237, !4228, !4238, !323}
!4238 = !DILocation(line: 542, column: 5, scope: !4224)
!4239 = !DILocation(line: 543, column: 1, scope: !4142)
!4240 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4241, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!6, !3360}
!4243 = !DILocalVariable(name: "x", arg: 1, scope: !4240, file: !71, line: 190, type: !3360)
!4244 = !DILocation(line: 0, scope: !4240)
!4245 = !DILocalVariable(name: "r", scope: !4240, file: !71, line: 191, type: !6)
!4246 = !DILocalVariable(name: "i", scope: !4247, file: !71, line: 192, type: !15)
!4247 = distinct !DILexicalBlock(scope: !4240, file: !71, line: 192, column: 5)
!4248 = !DILocation(line: 0, scope: !4247)
!4249 = !DILocation(line: 192, column: 10, scope: !4247)
!4250 = !DILocation(line: 192, scope: !4247)
!4251 = !DILocation(line: 192, column: 26, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4247, file: !71, line: 192, column: 5)
!4253 = !DILocation(line: 192, column: 5, scope: !4247)
!4254 = !DILocation(line: 193, column: 24, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4252, file: !71, line: 192, column: 36)
!4256 = !DILocation(line: 193, column: 14, scope: !4255)
!4257 = !DILocation(line: 193, column: 34, scope: !4255)
!4258 = !DILocation(line: 193, column: 29, scope: !4255)
!4259 = !DILocation(line: 193, column: 11, scope: !4255)
!4260 = !DILocation(line: 192, column: 31, scope: !4252)
!4261 = !DILocation(line: 192, column: 5, scope: !4252)
!4262 = distinct !{!4262, !4253, !4263, !323}
!4263 = !DILocation(line: 194, column: 5, scope: !4247)
!4264 = !DILocation(line: 196, column: 5, scope: !4240)
!4265 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4266, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{null, !11, !15, !4123}
!4268 = !DILocalVariable(name: "output", arg: 1, scope: !4265, file: !71, line: 784, type: !11)
!4269 = !DILocation(line: 0, scope: !4265)
!4270 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4265, file: !71, line: 784, type: !15)
!4271 = !DILocalVariable(name: "state", arg: 3, scope: !4265, file: !71, line: 784, type: !4123)
!4272 = !DILocation(line: 785, column: 50, scope: !4265)
!4273 = !DILocation(line: 785, column: 5, scope: !4265)
!4274 = !DILocation(line: 786, column: 1, scope: !4265)
!4275 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !3948, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4276 = !DILocalVariable(name: "h", arg: 1, scope: !4275, file: !71, line: 558, type: !11)
!4277 = !DILocation(line: 0, scope: !4275)
!4278 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4275, file: !71, line: 558, type: !15)
!4279 = !DILocalVariable(name: "s", arg: 3, scope: !4275, file: !71, line: 559, type: !5)
!4280 = !DILocalVariable(name: "r", arg: 4, scope: !4275, file: !71, line: 559, type: !19)
!4281 = !DILocation(line: 560, column: 5, scope: !4275)
!4282 = !DILocation(line: 560, column: 20, scope: !4275)
!4283 = !DILocation(line: 561, column: 9, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4275, file: !71, line: 560, column: 25)
!4285 = !DILocalVariable(name: "i", scope: !4286, file: !71, line: 562, type: !15)
!4286 = distinct !DILexicalBlock(scope: !4284, file: !71, line: 562, column: 9)
!4287 = !DILocation(line: 0, scope: !4286)
!4288 = !DILocation(line: 562, column: 14, scope: !4286)
!4289 = !DILocation(line: 562, scope: !4286)
!4290 = !DILocation(line: 562, column: 30, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4286, file: !71, line: 562, column: 9)
!4292 = !DILocation(line: 562, column: 9, scope: !4286)
!4293 = !DILocation(line: 563, column: 27, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !71, line: 562, column: 47)
!4295 = !DILocation(line: 563, column: 23, scope: !4294)
!4296 = !DILocation(line: 563, column: 32, scope: !4294)
!4297 = !DILocation(line: 563, column: 13, scope: !4294)
!4298 = !DILocation(line: 562, column: 43, scope: !4291)
!4299 = !DILocation(line: 562, column: 9, scope: !4291)
!4300 = distinct !{!4300, !4292, !4301, !323}
!4301 = !DILocation(line: 564, column: 9, scope: !4286)
!4302 = !DILocation(line: 565, column: 11, scope: !4284)
!4303 = !DILocation(line: 566, column: 16, scope: !4284)
!4304 = distinct !{!4304, !4281, !4305, !323}
!4305 = !DILocation(line: 567, column: 5, scope: !4275)
!4306 = !DILocation(line: 568, column: 1, scope: !4275)
!4307 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4308, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !11, !6}
!4310 = !DILocalVariable(name: "x", arg: 1, scope: !4307, file: !71, line: 207, type: !11)
!4311 = !DILocation(line: 0, scope: !4307)
!4312 = !DILocalVariable(name: "u", arg: 2, scope: !4307, file: !71, line: 207, type: !6)
!4313 = !DILocalVariable(name: "i", scope: !4314, file: !71, line: 208, type: !15)
!4314 = distinct !DILexicalBlock(scope: !4307, file: !71, line: 208, column: 5)
!4315 = !DILocation(line: 0, scope: !4314)
!4316 = !DILocation(line: 208, column: 10, scope: !4314)
!4317 = !DILocation(line: 208, scope: !4314)
!4318 = !DILocation(line: 208, column: 26, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4314, file: !71, line: 208, column: 5)
!4320 = !DILocation(line: 208, column: 5, scope: !4314)
!4321 = !DILocation(line: 209, column: 34, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !71, line: 208, column: 36)
!4323 = !DILocation(line: 209, column: 29, scope: !4322)
!4324 = !DILocation(line: 209, column: 16, scope: !4322)
!4325 = !DILocation(line: 209, column: 9, scope: !4322)
!4326 = !DILocation(line: 209, column: 14, scope: !4322)
!4327 = !DILocation(line: 208, column: 31, scope: !4319)
!4328 = !DILocation(line: 208, column: 5, scope: !4319)
!4329 = distinct !{!4329, !4320, !4330, !323}
!4330 = !DILocation(line: 210, column: 5, scope: !4314)
!4331 = !DILocation(line: 211, column: 1, scope: !4307)
!4332 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4333, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !4123, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4124)
!4337 = !DILocalVariable(name: "dest", arg: 1, scope: !4332, file: !71, line: 788, type: !4123)
!4338 = !DILocation(line: 0, scope: !4332)
!4339 = !DILocalVariable(name: "src", arg: 2, scope: !4332, file: !71, line: 788, type: !4335)
!4340 = !DILocation(line: 789, column: 17, scope: !4332)
!4341 = !DILocation(line: 789, column: 15, scope: !4332)
!4342 = !DILocation(line: 790, column: 19, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4332, file: !71, line: 790, column: 9)
!4344 = !DILocation(line: 791, column: 9, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4343, file: !71, line: 790, column: 28)
!4346 = !DILocation(line: 792, column: 5, scope: !4345)
!4347 = !DILocation(line: 793, column: 18, scope: !4332)
!4348 = !DILocation(line: 793, column: 28, scope: !4332)
!4349 = !DILocation(line: 793, column: 5, scope: !4332)
!4350 = !DILocation(line: 794, column: 1, scope: !4332)
!4351 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4352, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4123}
!4354 = !DILocalVariable(name: "state", arg: 1, scope: !4351, file: !71, line: 797, type: !4123)
!4355 = !DILocation(line: 0, scope: !4351)
!4356 = !DILocation(line: 798, column: 17, scope: !4351)
!4357 = !DILocation(line: 798, column: 5, scope: !4351)
!4358 = !DILocation(line: 799, column: 1, scope: !4351)
!4359 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4360, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4362, !3360, !15}
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4364)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4365)
!4365 = !{!4366}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4364, file: !71, line: 45, baseType: !5, size: 32)
!4367 = !DILocalVariable(name: "state", arg: 1, scope: !4359, file: !71, line: 812, type: !4362)
!4368 = !DILocation(line: 0, scope: !4359)
!4369 = !DILocalVariable(name: "input", arg: 2, scope: !4359, file: !71, line: 812, type: !3360)
!4370 = !DILocalVariable(name: "inlen", arg: 3, scope: !4359, file: !71, line: 812, type: !15)
!4371 = !DILocation(line: 813, column: 18, scope: !4359)
!4372 = !DILocation(line: 813, column: 16, scope: !4359)
!4373 = !DILocation(line: 814, column: 20, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4359, file: !71, line: 814, column: 9)
!4375 = !DILocation(line: 815, column: 9, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4374, file: !71, line: 814, column: 29)
!4377 = !DILocation(line: 816, column: 5, scope: !4376)
!4378 = !DILocation(line: 817, column: 26, scope: !4359)
!4379 = !DILocation(line: 817, column: 5, scope: !4359)
!4380 = !DILocation(line: 818, column: 1, scope: !4359)
!4381 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4382, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !11, !15, !4362}
!4384 = !DILocalVariable(name: "output", arg: 1, scope: !4381, file: !71, line: 832, type: !11)
!4385 = !DILocation(line: 0, scope: !4381)
!4386 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4381, file: !71, line: 832, type: !15)
!4387 = !DILocalVariable(name: "state", arg: 3, scope: !4381, file: !71, line: 832, type: !4362)
!4388 = !DILocation(line: 833, column: 50, scope: !4381)
!4389 = !DILocation(line: 833, column: 5, scope: !4381)
!4390 = !DILocation(line: 834, column: 1, scope: !4381)
!4391 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4392, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{null, !4362, !4394}
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4363)
!4396 = !DILocalVariable(name: "dest", arg: 1, scope: !4391, file: !71, line: 836, type: !4362)
!4397 = !DILocation(line: 0, scope: !4391)
!4398 = !DILocalVariable(name: "src", arg: 2, scope: !4391, file: !71, line: 836, type: !4394)
!4399 = !DILocation(line: 837, column: 17, scope: !4391)
!4400 = !DILocation(line: 837, column: 15, scope: !4391)
!4401 = !DILocation(line: 838, column: 19, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4391, file: !71, line: 838, column: 9)
!4403 = !DILocation(line: 839, column: 9, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4402, file: !71, line: 838, column: 28)
!4405 = !DILocation(line: 840, column: 5, scope: !4404)
!4406 = !DILocation(line: 841, column: 18, scope: !4391)
!4407 = !DILocation(line: 841, column: 28, scope: !4391)
!4408 = !DILocation(line: 841, column: 5, scope: !4391)
!4409 = !DILocation(line: 842, column: 1, scope: !4391)
!4410 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4411, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4362}
!4413 = !DILocalVariable(name: "state", arg: 1, scope: !4410, file: !71, line: 845, type: !4362)
!4414 = !DILocation(line: 0, scope: !4410)
!4415 = !DILocation(line: 846, column: 17, scope: !4410)
!4416 = !DILocation(line: 846, column: 5, scope: !4410)
!4417 = !DILocation(line: 847, column: 1, scope: !4410)
!4418 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4419, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !11, !15, !3360, !15}
!4421 = !DILocalVariable(name: "output", arg: 1, scope: !4418, file: !71, line: 859, type: !11)
!4422 = !DILocation(line: 0, scope: !4418)
!4423 = !DILocalVariable(name: "outlen", arg: 2, scope: !4418, file: !71, line: 859, type: !15)
!4424 = !DILocalVariable(name: "input", arg: 3, scope: !4418, file: !71, line: 860, type: !3360)
!4425 = !DILocalVariable(name: "inlen", arg: 4, scope: !4418, file: !71, line: 860, type: !15)
!4426 = !DILocation(line: 861, column: 29, scope: !4418)
!4427 = !DILocalVariable(name: "nblocks", scope: !4418, file: !71, line: 861, type: !15)
!4428 = !DILocalVariable(name: "t", scope: !4418, file: !71, line: 862, type: !4429)
!4429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4430)
!4430 = !{!4431}
!4431 = !DISubrange(count: 168)
!4432 = !DILocation(line: 862, column: 13, scope: !4418)
!4433 = !DILocalVariable(name: "s", scope: !4418, file: !71, line: 863, type: !4124)
!4434 = !DILocation(line: 863, column: 17, scope: !4418)
!4435 = !DILocation(line: 865, column: 5, scope: !4418)
!4436 = !DILocation(line: 866, column: 5, scope: !4418)
!4437 = !DILocation(line: 868, column: 23, scope: !4418)
!4438 = !DILocation(line: 868, column: 12, scope: !4418)
!4439 = !DILocation(line: 869, column: 23, scope: !4418)
!4440 = !DILocation(line: 869, column: 12, scope: !4418)
!4441 = !DILocation(line: 871, column: 9, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4418, file: !71, line: 871, column: 9)
!4443 = !DILocation(line: 872, column: 9, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4442, file: !71, line: 871, column: 17)
!4445 = !DILocalVariable(name: "i", scope: !4446, file: !71, line: 873, type: !15)
!4446 = distinct !DILexicalBlock(scope: !4444, file: !71, line: 873, column: 9)
!4447 = !DILocation(line: 0, scope: !4446)
!4448 = !DILocation(line: 873, column: 14, scope: !4446)
!4449 = !DILocation(line: 873, scope: !4446)
!4450 = !DILocation(line: 873, column: 30, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4446, file: !71, line: 873, column: 9)
!4452 = !DILocation(line: 873, column: 9, scope: !4446)
!4453 = !DILocation(line: 874, column: 25, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4451, file: !71, line: 873, column: 45)
!4455 = !DILocation(line: 874, column: 13, scope: !4454)
!4456 = !DILocation(line: 874, column: 23, scope: !4454)
!4457 = !DILocation(line: 873, column: 40, scope: !4451)
!4458 = !DILocation(line: 873, column: 9, scope: !4451)
!4459 = distinct !{!4459, !4452, !4460, !323}
!4460 = !DILocation(line: 875, column: 9, scope: !4446)
!4461 = !DILocation(line: 877, column: 5, scope: !4418)
!4462 = !DILocation(line: 878, column: 1, scope: !4418)
!4463 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4419, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4464 = !DILocalVariable(name: "output", arg: 1, scope: !4463, file: !71, line: 890, type: !11)
!4465 = !DILocation(line: 0, scope: !4463)
!4466 = !DILocalVariable(name: "outlen", arg: 2, scope: !4463, file: !71, line: 890, type: !15)
!4467 = !DILocalVariable(name: "input", arg: 3, scope: !4463, file: !71, line: 891, type: !3360)
!4468 = !DILocalVariable(name: "inlen", arg: 4, scope: !4463, file: !71, line: 891, type: !15)
!4469 = !DILocation(line: 892, column: 29, scope: !4463)
!4470 = !DILocalVariable(name: "nblocks", scope: !4463, file: !71, line: 892, type: !15)
!4471 = !DILocalVariable(name: "t", scope: !4463, file: !71, line: 893, type: !4472)
!4472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4473)
!4473 = !{!4474}
!4474 = !DISubrange(count: 136)
!4475 = !DILocation(line: 893, column: 13, scope: !4463)
!4476 = !DILocalVariable(name: "s", scope: !4463, file: !71, line: 894, type: !4363)
!4477 = !DILocation(line: 894, column: 17, scope: !4463)
!4478 = !DILocation(line: 896, column: 5, scope: !4463)
!4479 = !DILocation(line: 897, column: 5, scope: !4463)
!4480 = !DILocation(line: 899, column: 23, scope: !4463)
!4481 = !DILocation(line: 899, column: 12, scope: !4463)
!4482 = !DILocation(line: 900, column: 23, scope: !4463)
!4483 = !DILocation(line: 900, column: 12, scope: !4463)
!4484 = !DILocation(line: 902, column: 9, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4463, file: !71, line: 902, column: 9)
!4486 = !DILocation(line: 903, column: 9, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4485, file: !71, line: 902, column: 17)
!4488 = !DILocalVariable(name: "i", scope: !4489, file: !71, line: 904, type: !15)
!4489 = distinct !DILexicalBlock(scope: !4487, file: !71, line: 904, column: 9)
!4490 = !DILocation(line: 0, scope: !4489)
!4491 = !DILocation(line: 904, column: 14, scope: !4489)
!4492 = !DILocation(line: 904, scope: !4489)
!4493 = !DILocation(line: 904, column: 30, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4489, file: !71, line: 904, column: 9)
!4495 = !DILocation(line: 904, column: 9, scope: !4489)
!4496 = !DILocation(line: 905, column: 25, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4494, file: !71, line: 904, column: 45)
!4498 = !DILocation(line: 905, column: 13, scope: !4497)
!4499 = !DILocation(line: 905, column: 23, scope: !4497)
!4500 = !DILocation(line: 904, column: 40, scope: !4494)
!4501 = !DILocation(line: 904, column: 9, scope: !4494)
!4502 = distinct !{!4502, !4495, !4503, !323}
!4503 = !DILocation(line: 906, column: 9, scope: !4489)
!4504 = !DILocation(line: 908, column: 5, scope: !4463)
!4505 = !DILocation(line: 909, column: 1, scope: !4463)
!4506 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4507, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4509}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4511)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4512)
!4512 = !{!4513}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4511, file: !71, line: 50, baseType: !5, size: 32)
!4514 = !DILocalVariable(name: "state", arg: 1, scope: !4506, file: !71, line: 911, type: !4509)
!4515 = !DILocation(line: 0, scope: !4506)
!4516 = !DILocation(line: 912, column: 18, scope: !4506)
!4517 = !DILocation(line: 912, column: 16, scope: !4506)
!4518 = !DILocation(line: 913, column: 20, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4506, file: !71, line: 913, column: 9)
!4520 = !DILocation(line: 914, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4519, file: !71, line: 913, column: 29)
!4522 = !DILocation(line: 915, column: 5, scope: !4521)
!4523 = !DILocation(line: 916, column: 28, scope: !4506)
!4524 = !DILocation(line: 916, column: 5, scope: !4506)
!4525 = !DILocation(line: 917, column: 1, scope: !4506)
!4526 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4527, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !4509, !4529}
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4510)
!4531 = !DILocalVariable(name: "dest", arg: 1, scope: !4526, file: !71, line: 919, type: !4509)
!4532 = !DILocation(line: 0, scope: !4526)
!4533 = !DILocalVariable(name: "src", arg: 2, scope: !4526, file: !71, line: 919, type: !4529)
!4534 = !DILocation(line: 920, column: 17, scope: !4526)
!4535 = !DILocation(line: 920, column: 15, scope: !4526)
!4536 = !DILocation(line: 921, column: 19, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4526, file: !71, line: 921, column: 9)
!4538 = !DILocation(line: 922, column: 9, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4537, file: !71, line: 921, column: 28)
!4540 = !DILocation(line: 923, column: 5, scope: !4539)
!4541 = !DILocation(line: 924, column: 18, scope: !4526)
!4542 = !DILocation(line: 924, column: 28, scope: !4526)
!4543 = !DILocation(line: 924, column: 5, scope: !4526)
!4544 = !DILocation(line: 925, column: 1, scope: !4526)
!4545 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4507, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4546 = !DILocalVariable(name: "state", arg: 1, scope: !4545, file: !71, line: 927, type: !4509)
!4547 = !DILocation(line: 0, scope: !4545)
!4548 = !DILocation(line: 928, column: 17, scope: !4545)
!4549 = !DILocation(line: 928, column: 5, scope: !4545)
!4550 = !DILocation(line: 929, column: 1, scope: !4545)
!4551 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4552, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{null, !4509, !3360, !15}
!4554 = !DILocalVariable(name: "state", arg: 1, scope: !4551, file: !71, line: 931, type: !4509)
!4555 = !DILocation(line: 0, scope: !4551)
!4556 = !DILocalVariable(name: "input", arg: 2, scope: !4551, file: !71, line: 931, type: !3360)
!4557 = !DILocalVariable(name: "inlen", arg: 3, scope: !4551, file: !71, line: 931, type: !15)
!4558 = !DILocation(line: 932, column: 30, scope: !4551)
!4559 = !DILocation(line: 932, column: 5, scope: !4551)
!4560 = !DILocation(line: 933, column: 1, scope: !4551)
!4561 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4562, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !11, !4509}
!4564 = !DILocalVariable(name: "output", arg: 1, scope: !4561, file: !71, line: 935, type: !11)
!4565 = !DILocation(line: 0, scope: !4561)
!4566 = !DILocalVariable(name: "state", arg: 2, scope: !4561, file: !71, line: 935, type: !4509)
!4567 = !DILocalVariable(name: "t", scope: !4561, file: !71, line: 936, type: !4472)
!4568 = !DILocation(line: 936, column: 13, scope: !4561)
!4569 = !DILocation(line: 937, column: 32, scope: !4561)
!4570 = !DILocation(line: 937, column: 5, scope: !4561)
!4571 = !DILocation(line: 939, column: 39, scope: !4561)
!4572 = !DILocation(line: 939, column: 5, scope: !4561)
!4573 = !DILocation(line: 941, column: 5, scope: !4561)
!4574 = !DILocalVariable(name: "i", scope: !4575, file: !71, line: 943, type: !15)
!4575 = distinct !DILexicalBlock(scope: !4561, file: !71, line: 943, column: 5)
!4576 = !DILocation(line: 0, scope: !4575)
!4577 = !DILocation(line: 943, column: 10, scope: !4575)
!4578 = !DILocation(line: 943, scope: !4575)
!4579 = !DILocation(line: 943, column: 26, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4575, file: !71, line: 943, column: 5)
!4581 = !DILocation(line: 943, column: 5, scope: !4575)
!4582 = !DILocation(line: 944, column: 21, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4580, file: !71, line: 943, column: 37)
!4584 = !DILocation(line: 944, column: 9, scope: !4583)
!4585 = !DILocation(line: 944, column: 19, scope: !4583)
!4586 = !DILocation(line: 943, column: 33, scope: !4580)
!4587 = !DILocation(line: 943, column: 5, scope: !4580)
!4588 = distinct !{!4588, !4581, !4589, !323}
!4589 = !DILocation(line: 945, column: 5, scope: !4575)
!4590 = !DILocation(line: 946, column: 1, scope: !4561)
!4591 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4592, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !11, !3360, !15}
!4594 = !DILocalVariable(name: "output", arg: 1, scope: !4591, file: !71, line: 957, type: !11)
!4595 = !DILocation(line: 0, scope: !4591)
!4596 = !DILocalVariable(name: "input", arg: 2, scope: !4591, file: !71, line: 957, type: !3360)
!4597 = !DILocalVariable(name: "inlen", arg: 3, scope: !4591, file: !71, line: 957, type: !15)
!4598 = !DILocalVariable(name: "s", scope: !4591, file: !71, line: 958, type: !4599)
!4599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4600)
!4600 = !{!4601}
!4601 = !DISubrange(count: 25)
!4602 = !DILocation(line: 958, column: 14, scope: !4591)
!4603 = !DILocalVariable(name: "t", scope: !4591, file: !71, line: 959, type: !4472)
!4604 = !DILocation(line: 959, column: 13, scope: !4591)
!4605 = !DILocation(line: 962, column: 5, scope: !4591)
!4606 = !DILocation(line: 965, column: 5, scope: !4591)
!4607 = !DILocalVariable(name: "i", scope: !4608, file: !71, line: 967, type: !15)
!4608 = distinct !DILexicalBlock(scope: !4591, file: !71, line: 967, column: 5)
!4609 = !DILocation(line: 0, scope: !4608)
!4610 = !DILocation(line: 967, column: 10, scope: !4608)
!4611 = !DILocation(line: 967, scope: !4608)
!4612 = !DILocation(line: 967, column: 26, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4608, file: !71, line: 967, column: 5)
!4614 = !DILocation(line: 967, column: 5, scope: !4608)
!4615 = !DILocation(line: 968, column: 21, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4613, file: !71, line: 967, column: 37)
!4617 = !DILocation(line: 968, column: 9, scope: !4616)
!4618 = !DILocation(line: 968, column: 19, scope: !4616)
!4619 = !DILocation(line: 967, column: 33, scope: !4613)
!4620 = !DILocation(line: 967, column: 5, scope: !4613)
!4621 = distinct !{!4621, !4614, !4622, !323}
!4622 = !DILocation(line: 969, column: 5, scope: !4608)
!4623 = !DILocation(line: 970, column: 1, scope: !4591)
!4624 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4625, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{null, !4627}
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4629)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4630)
!4630 = !{!4631}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4629, file: !71, line: 55, baseType: !5, size: 32)
!4632 = !DILocalVariable(name: "state", arg: 1, scope: !4624, file: !71, line: 972, type: !4627)
!4633 = !DILocation(line: 0, scope: !4624)
!4634 = !DILocation(line: 973, column: 18, scope: !4624)
!4635 = !DILocation(line: 973, column: 16, scope: !4624)
!4636 = !DILocation(line: 974, column: 20, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4624, file: !71, line: 974, column: 9)
!4638 = !DILocation(line: 975, column: 9, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4637, file: !71, line: 974, column: 29)
!4640 = !DILocation(line: 976, column: 5, scope: !4639)
!4641 = !DILocation(line: 977, column: 28, scope: !4624)
!4642 = !DILocation(line: 977, column: 5, scope: !4624)
!4643 = !DILocation(line: 978, column: 1, scope: !4624)
!4644 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4645, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{null, !4627, !4647}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 32)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4628)
!4649 = !DILocalVariable(name: "dest", arg: 1, scope: !4644, file: !71, line: 980, type: !4627)
!4650 = !DILocation(line: 0, scope: !4644)
!4651 = !DILocalVariable(name: "src", arg: 2, scope: !4644, file: !71, line: 980, type: !4647)
!4652 = !DILocation(line: 981, column: 17, scope: !4644)
!4653 = !DILocation(line: 981, column: 15, scope: !4644)
!4654 = !DILocation(line: 982, column: 19, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4644, file: !71, line: 982, column: 9)
!4656 = !DILocation(line: 983, column: 9, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4655, file: !71, line: 982, column: 28)
!4658 = !DILocation(line: 984, column: 5, scope: !4657)
!4659 = !DILocation(line: 985, column: 18, scope: !4644)
!4660 = !DILocation(line: 985, column: 28, scope: !4644)
!4661 = !DILocation(line: 985, column: 5, scope: !4644)
!4662 = !DILocation(line: 986, column: 1, scope: !4644)
!4663 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4664, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !4627, !3360, !15}
!4666 = !DILocalVariable(name: "state", arg: 1, scope: !4663, file: !71, line: 988, type: !4627)
!4667 = !DILocation(line: 0, scope: !4663)
!4668 = !DILocalVariable(name: "input", arg: 2, scope: !4663, file: !71, line: 988, type: !3360)
!4669 = !DILocalVariable(name: "inlen", arg: 3, scope: !4663, file: !71, line: 988, type: !15)
!4670 = !DILocation(line: 989, column: 30, scope: !4663)
!4671 = !DILocation(line: 989, column: 5, scope: !4663)
!4672 = !DILocation(line: 990, column: 1, scope: !4663)
!4673 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4625, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4674 = !DILocalVariable(name: "state", arg: 1, scope: !4673, file: !71, line: 992, type: !4627)
!4675 = !DILocation(line: 0, scope: !4673)
!4676 = !DILocation(line: 993, column: 17, scope: !4673)
!4677 = !DILocation(line: 993, column: 5, scope: !4673)
!4678 = !DILocation(line: 994, column: 1, scope: !4673)
!4679 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4680, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !11, !4627}
!4682 = !DILocalVariable(name: "output", arg: 1, scope: !4679, file: !71, line: 996, type: !11)
!4683 = !DILocation(line: 0, scope: !4679)
!4684 = !DILocalVariable(name: "state", arg: 2, scope: !4679, file: !71, line: 996, type: !4627)
!4685 = !DILocalVariable(name: "t", scope: !4679, file: !71, line: 997, type: !4686)
!4686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !1944)
!4687 = !DILocation(line: 997, column: 13, scope: !4679)
!4688 = !DILocation(line: 998, column: 32, scope: !4679)
!4689 = !DILocation(line: 998, column: 5, scope: !4679)
!4690 = !DILocation(line: 1000, column: 39, scope: !4679)
!4691 = !DILocation(line: 1000, column: 5, scope: !4679)
!4692 = !DILocation(line: 1002, column: 5, scope: !4679)
!4693 = !DILocalVariable(name: "i", scope: !4694, file: !71, line: 1004, type: !15)
!4694 = distinct !DILexicalBlock(scope: !4679, file: !71, line: 1004, column: 5)
!4695 = !DILocation(line: 0, scope: !4694)
!4696 = !DILocation(line: 1004, column: 10, scope: !4694)
!4697 = !DILocation(line: 1004, scope: !4694)
!4698 = !DILocation(line: 1004, column: 26, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4694, file: !71, line: 1004, column: 5)
!4700 = !DILocation(line: 1004, column: 5, scope: !4694)
!4701 = !DILocation(line: 1005, column: 21, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4699, file: !71, line: 1004, column: 37)
!4703 = !DILocation(line: 1005, column: 9, scope: !4702)
!4704 = !DILocation(line: 1005, column: 19, scope: !4702)
!4705 = !DILocation(line: 1004, column: 33, scope: !4699)
!4706 = !DILocation(line: 1004, column: 5, scope: !4699)
!4707 = distinct !{!4707, !4700, !4708, !323}
!4708 = !DILocation(line: 1006, column: 5, scope: !4694)
!4709 = !DILocation(line: 1007, column: 1, scope: !4679)
!4710 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4592, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4711 = !DILocalVariable(name: "output", arg: 1, scope: !4710, file: !71, line: 1018, type: !11)
!4712 = !DILocation(line: 0, scope: !4710)
!4713 = !DILocalVariable(name: "input", arg: 2, scope: !4710, file: !71, line: 1018, type: !3360)
!4714 = !DILocalVariable(name: "inlen", arg: 3, scope: !4710, file: !71, line: 1018, type: !15)
!4715 = !DILocalVariable(name: "s", scope: !4710, file: !71, line: 1019, type: !4599)
!4716 = !DILocation(line: 1019, column: 14, scope: !4710)
!4717 = !DILocalVariable(name: "t", scope: !4710, file: !71, line: 1020, type: !4686)
!4718 = !DILocation(line: 1020, column: 13, scope: !4710)
!4719 = !DILocation(line: 1023, column: 5, scope: !4710)
!4720 = !DILocation(line: 1026, column: 5, scope: !4710)
!4721 = !DILocalVariable(name: "i", scope: !4722, file: !71, line: 1028, type: !15)
!4722 = distinct !DILexicalBlock(scope: !4710, file: !71, line: 1028, column: 5)
!4723 = !DILocation(line: 0, scope: !4722)
!4724 = !DILocation(line: 1028, column: 10, scope: !4722)
!4725 = !DILocation(line: 1028, scope: !4722)
!4726 = !DILocation(line: 1028, column: 26, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4722, file: !71, line: 1028, column: 5)
!4728 = !DILocation(line: 1028, column: 5, scope: !4722)
!4729 = !DILocation(line: 1029, column: 21, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !71, line: 1028, column: 37)
!4731 = !DILocation(line: 1029, column: 9, scope: !4730)
!4732 = !DILocation(line: 1029, column: 19, scope: !4730)
!4733 = !DILocation(line: 1028, column: 33, scope: !4727)
!4734 = !DILocation(line: 1028, column: 5, scope: !4727)
!4735 = distinct !{!4735, !4728, !4736, !323}
!4736 = !DILocation(line: 1030, column: 5, scope: !4722)
!4737 = !DILocation(line: 1031, column: 1, scope: !4710)
!4738 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4739, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{null, !4741}
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 32)
!4742 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4743)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4744)
!4744 = !{!4745}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4743, file: !71, line: 60, baseType: !5, size: 32)
!4746 = !DILocalVariable(name: "state", arg: 1, scope: !4738, file: !71, line: 1033, type: !4741)
!4747 = !DILocation(line: 0, scope: !4738)
!4748 = !DILocation(line: 1034, column: 18, scope: !4738)
!4749 = !DILocation(line: 1034, column: 16, scope: !4738)
!4750 = !DILocation(line: 1035, column: 20, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4738, file: !71, line: 1035, column: 9)
!4752 = !DILocation(line: 1036, column: 9, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4751, file: !71, line: 1035, column: 29)
!4754 = !DILocation(line: 1037, column: 5, scope: !4753)
!4755 = !DILocation(line: 1038, column: 28, scope: !4738)
!4756 = !DILocation(line: 1038, column: 5, scope: !4738)
!4757 = !DILocation(line: 1039, column: 1, scope: !4738)
!4758 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4759, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{null, !4741, !4761}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 32)
!4762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4742)
!4763 = !DILocalVariable(name: "dest", arg: 1, scope: !4758, file: !71, line: 1041, type: !4741)
!4764 = !DILocation(line: 0, scope: !4758)
!4765 = !DILocalVariable(name: "src", arg: 2, scope: !4758, file: !71, line: 1041, type: !4761)
!4766 = !DILocation(line: 1042, column: 17, scope: !4758)
!4767 = !DILocation(line: 1042, column: 15, scope: !4758)
!4768 = !DILocation(line: 1043, column: 19, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4758, file: !71, line: 1043, column: 9)
!4770 = !DILocation(line: 1044, column: 9, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4769, file: !71, line: 1043, column: 28)
!4772 = !DILocation(line: 1045, column: 5, scope: !4771)
!4773 = !DILocation(line: 1046, column: 18, scope: !4758)
!4774 = !DILocation(line: 1046, column: 28, scope: !4758)
!4775 = !DILocation(line: 1046, column: 5, scope: !4758)
!4776 = !DILocation(line: 1047, column: 1, scope: !4758)
!4777 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4778, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !4741, !3360, !15}
!4780 = !DILocalVariable(name: "state", arg: 1, scope: !4777, file: !71, line: 1049, type: !4741)
!4781 = !DILocation(line: 0, scope: !4777)
!4782 = !DILocalVariable(name: "input", arg: 2, scope: !4777, file: !71, line: 1049, type: !3360)
!4783 = !DILocalVariable(name: "inlen", arg: 3, scope: !4777, file: !71, line: 1049, type: !15)
!4784 = !DILocation(line: 1050, column: 30, scope: !4777)
!4785 = !DILocation(line: 1050, column: 5, scope: !4777)
!4786 = !DILocation(line: 1051, column: 1, scope: !4777)
!4787 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4739, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4788 = !DILocalVariable(name: "state", arg: 1, scope: !4787, file: !71, line: 1053, type: !4741)
!4789 = !DILocation(line: 0, scope: !4787)
!4790 = !DILocation(line: 1054, column: 17, scope: !4787)
!4791 = !DILocation(line: 1054, column: 5, scope: !4787)
!4792 = !DILocation(line: 1055, column: 1, scope: !4787)
!4793 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4794, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !11, !4741}
!4796 = !DILocalVariable(name: "output", arg: 1, scope: !4793, file: !71, line: 1057, type: !11)
!4797 = !DILocation(line: 0, scope: !4793)
!4798 = !DILocalVariable(name: "state", arg: 2, scope: !4793, file: !71, line: 1057, type: !4741)
!4799 = !DILocalVariable(name: "t", scope: !4793, file: !71, line: 1058, type: !4800)
!4800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4801)
!4801 = !{!4802}
!4802 = !DISubrange(count: 72)
!4803 = !DILocation(line: 1058, column: 13, scope: !4793)
!4804 = !DILocation(line: 1059, column: 32, scope: !4793)
!4805 = !DILocation(line: 1059, column: 5, scope: !4793)
!4806 = !DILocation(line: 1061, column: 39, scope: !4793)
!4807 = !DILocation(line: 1061, column: 5, scope: !4793)
!4808 = !DILocation(line: 1063, column: 5, scope: !4793)
!4809 = !DILocalVariable(name: "i", scope: !4810, file: !71, line: 1065, type: !15)
!4810 = distinct !DILexicalBlock(scope: !4793, file: !71, line: 1065, column: 5)
!4811 = !DILocation(line: 0, scope: !4810)
!4812 = !DILocation(line: 1065, column: 10, scope: !4810)
!4813 = !DILocation(line: 1065, scope: !4810)
!4814 = !DILocation(line: 1065, column: 26, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !71, line: 1065, column: 5)
!4816 = !DILocation(line: 1065, column: 5, scope: !4810)
!4817 = !DILocation(line: 1066, column: 21, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4815, file: !71, line: 1065, column: 37)
!4819 = !DILocation(line: 1066, column: 9, scope: !4818)
!4820 = !DILocation(line: 1066, column: 19, scope: !4818)
!4821 = !DILocation(line: 1065, column: 33, scope: !4815)
!4822 = !DILocation(line: 1065, column: 5, scope: !4815)
!4823 = distinct !{!4823, !4816, !4824, !323}
!4824 = !DILocation(line: 1067, column: 5, scope: !4810)
!4825 = !DILocation(line: 1068, column: 1, scope: !4793)
!4826 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4592, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4827 = !DILocalVariable(name: "output", arg: 1, scope: !4826, file: !71, line: 1079, type: !11)
!4828 = !DILocation(line: 0, scope: !4826)
!4829 = !DILocalVariable(name: "input", arg: 2, scope: !4826, file: !71, line: 1079, type: !3360)
!4830 = !DILocalVariable(name: "inlen", arg: 3, scope: !4826, file: !71, line: 1079, type: !15)
!4831 = !DILocalVariable(name: "s", scope: !4826, file: !71, line: 1080, type: !4599)
!4832 = !DILocation(line: 1080, column: 14, scope: !4826)
!4833 = !DILocalVariable(name: "t", scope: !4826, file: !71, line: 1081, type: !4800)
!4834 = !DILocation(line: 1081, column: 13, scope: !4826)
!4835 = !DILocation(line: 1084, column: 5, scope: !4826)
!4836 = !DILocation(line: 1087, column: 5, scope: !4826)
!4837 = !DILocalVariable(name: "i", scope: !4838, file: !71, line: 1089, type: !15)
!4838 = distinct !DILexicalBlock(scope: !4826, file: !71, line: 1089, column: 5)
!4839 = !DILocation(line: 0, scope: !4838)
!4840 = !DILocation(line: 1089, column: 10, scope: !4838)
!4841 = !DILocation(line: 1089, scope: !4838)
!4842 = !DILocation(line: 1089, column: 26, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4838, file: !71, line: 1089, column: 5)
!4844 = !DILocation(line: 1089, column: 5, scope: !4838)
!4845 = !DILocation(line: 1090, column: 21, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4843, file: !71, line: 1089, column: 37)
!4847 = !DILocation(line: 1090, column: 9, scope: !4846)
!4848 = !DILocation(line: 1090, column: 19, scope: !4846)
!4849 = !DILocation(line: 1089, column: 33, scope: !4843)
!4850 = !DILocation(line: 1089, column: 5, scope: !4843)
!4851 = distinct !{!4851, !4844, !4852, !323}
!4852 = !DILocation(line: 1091, column: 5, scope: !4838)
!4853 = !DILocation(line: 1092, column: 1, scope: !4826)
!4854 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4855, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{null, !4857, !49}
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4859)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4860)
!4860 = !{!4861}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4859, file: !80, line: 45, baseType: !5, size: 32)
!4862 = !DILocalVariable(name: "r", arg: 1, scope: !4854, file: !80, line: 635, type: !4857)
!4863 = !DILocation(line: 0, scope: !4854)
!4864 = !DILocalVariable(name: "key", arg: 2, scope: !4854, file: !80, line: 635, type: !49)
!4865 = !DILocalVariable(name: "skey", scope: !4854, file: !80, line: 636, type: !4866)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4867)
!4867 = !{!4868}
!4868 = !DISubrange(count: 22)
!4869 = !DILocation(line: 636, column: 14, scope: !4854)
!4870 = !DILocation(line: 638, column: 17, scope: !4854)
!4871 = !DILocation(line: 638, column: 15, scope: !4854)
!4872 = !DILocation(line: 639, column: 19, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4854, file: !80, line: 639, column: 9)
!4874 = !DILocation(line: 640, column: 9, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4873, file: !80, line: 639, column: 28)
!4876 = !DILocation(line: 641, column: 5, scope: !4875)
!4877 = !DILocation(line: 643, column: 5, scope: !4854)
!4878 = !DILocation(line: 644, column: 32, scope: !4854)
!4879 = !DILocation(line: 644, column: 5, scope: !4854)
!4880 = !DILocation(line: 645, column: 1, scope: !4854)
!4881 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4882, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{null, !5, !49, !17}
!4884 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4881, file: !80, line: 403, type: !5)
!4885 = !DILocation(line: 0, scope: !4881)
!4886 = !DILocalVariable(name: "key", arg: 2, scope: !4881, file: !80, line: 403, type: !49)
!4887 = !DILocalVariable(name: "key_len", arg: 3, scope: !4881, file: !80, line: 403, type: !17)
!4888 = !DILocalVariable(name: "skey", scope: !4881, file: !80, line: 406, type: !4889)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4890)
!4890 = !{!4891}
!4891 = !DISubrange(count: 60)
!4892 = !DILocation(line: 406, column: 14, scope: !4881)
!4893 = !DILocation(line: 410, column: 26, scope: !4881)
!4894 = !DILocalVariable(name: "nrounds", scope: !4881, file: !80, line: 407, type: !17)
!4895 = !DILocation(line: 409, column: 19, scope: !4881)
!4896 = !DILocalVariable(name: "nk", scope: !4881, file: !80, line: 404, type: !17)
!4897 = !DILocalVariable(name: "nkf", scope: !4881, file: !80, line: 404, type: !17)
!4898 = !DILocation(line: 411, column: 37, scope: !4881)
!4899 = !DILocation(line: 411, column: 5, scope: !4881)
!4900 = !DILocation(line: 412, column: 25, scope: !4881)
!4901 = !DILocation(line: 412, column: 31, scope: !4881)
!4902 = !DILocation(line: 412, column: 11, scope: !4881)
!4903 = !DILocalVariable(name: "tmp", scope: !4881, file: !80, line: 405, type: !19)
!4904 = !DILocalVariable(name: "i", scope: !4881, file: !80, line: 404, type: !17)
!4905 = !DILocalVariable(name: "j", scope: !4881, file: !80, line: 404, type: !17)
!4906 = !DILocalVariable(name: "k", scope: !4881, file: !80, line: 404, type: !17)
!4907 = !DILocation(line: 413, column: 10, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4881, file: !80, line: 413, column: 5)
!4909 = !DILocation(line: 413, scope: !4908)
!4910 = !DILocation(line: 0, scope: !4908)
!4911 = !DILocation(line: 413, column: 34, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4908, file: !80, line: 413, column: 5)
!4913 = !DILocation(line: 413, column: 5, scope: !4908)
!4914 = !DILocation(line: 428, column: 5, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4881, file: !80, line: 428, column: 5)
!4916 = !DILocation(line: 414, column: 15, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !80, line: 414, column: 13)
!4918 = distinct !DILexicalBlock(scope: !4912, file: !80, line: 413, column: 47)
!4919 = !DILocation(line: 415, column: 31, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4917, file: !80, line: 414, column: 21)
!4921 = !DILocation(line: 416, column: 19, scope: !4920)
!4922 = !DILocation(line: 416, column: 35, scope: !4920)
!4923 = !DILocation(line: 416, column: 33, scope: !4920)
!4924 = !DILocation(line: 417, column: 9, scope: !4920)
!4925 = !DILocation(line: 417, column: 23, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4917, file: !80, line: 417, column: 20)
!4927 = !DILocation(line: 417, column: 27, scope: !4926)
!4928 = !DILocation(line: 418, column: 19, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !80, line: 417, column: 38)
!4930 = !DILocation(line: 419, column: 9, scope: !4929)
!4931 = !DILocation(line: 0, scope: !4917)
!4932 = !DILocation(line: 420, column: 23, scope: !4918)
!4933 = !DILocation(line: 420, column: 16, scope: !4918)
!4934 = !DILocation(line: 420, column: 13, scope: !4918)
!4935 = !DILocation(line: 421, column: 9, scope: !4918)
!4936 = !DILocation(line: 421, column: 17, scope: !4918)
!4937 = !DILocation(line: 422, column: 13, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4918, file: !80, line: 422, column: 13)
!4939 = !DILocation(line: 422, column: 18, scope: !4938)
!4940 = !DILocation(line: 413, column: 43, scope: !4912)
!4941 = !DILocation(line: 413, column: 5, scope: !4912)
!4942 = distinct !{!4942, !4913, !4943, !323}
!4943 = !DILocation(line: 426, column: 5, scope: !4908)
!4944 = !DILocation(line: 428, scope: !4915)
!4945 = !DILocation(line: 428, column: 26, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4915, file: !80, line: 428, column: 5)
!4947 = !DILocalVariable(name: "q", scope: !4948, file: !80, line: 429, type: !4949)
!4948 = distinct !DILexicalBlock(scope: !4946, file: !80, line: 428, column: 49)
!4949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !4950)
!4950 = !{!4951}
!4951 = !DISubrange(count: 8)
!4952 = !DILocation(line: 429, column: 18, scope: !4948)
!4953 = !DILocation(line: 431, column: 43, scope: !4948)
!4954 = !DILocation(line: 431, column: 54, scope: !4948)
!4955 = !DILocation(line: 431, column: 9, scope: !4948)
!4956 = !DILocation(line: 432, column: 16, scope: !4948)
!4957 = !DILocation(line: 432, column: 9, scope: !4948)
!4958 = !DILocation(line: 432, column: 14, scope: !4948)
!4959 = !DILocation(line: 433, column: 9, scope: !4948)
!4960 = !DILocation(line: 433, column: 14, scope: !4948)
!4961 = !DILocation(line: 434, column: 9, scope: !4948)
!4962 = !DILocation(line: 434, column: 14, scope: !4948)
!4963 = !DILocation(line: 435, column: 16, scope: !4948)
!4964 = !DILocation(line: 435, column: 9, scope: !4948)
!4965 = !DILocation(line: 435, column: 14, scope: !4948)
!4966 = !DILocation(line: 436, column: 9, scope: !4948)
!4967 = !DILocation(line: 436, column: 14, scope: !4948)
!4968 = !DILocation(line: 437, column: 9, scope: !4948)
!4969 = !DILocation(line: 437, column: 14, scope: !4948)
!4970 = !DILocation(line: 438, column: 9, scope: !4948)
!4971 = !DILocation(line: 440, column: 14, scope: !4948)
!4972 = !DILocation(line: 440, column: 19, scope: !4948)
!4973 = !DILocation(line: 441, column: 16, scope: !4948)
!4974 = !DILocation(line: 441, column: 21, scope: !4948)
!4975 = !DILocation(line: 441, column: 13, scope: !4948)
!4976 = !DILocation(line: 442, column: 16, scope: !4948)
!4977 = !DILocation(line: 442, column: 21, scope: !4948)
!4978 = !DILocation(line: 442, column: 13, scope: !4948)
!4979 = !DILocation(line: 443, column: 16, scope: !4948)
!4980 = !DILocation(line: 443, column: 21, scope: !4948)
!4981 = !DILocation(line: 443, column: 13, scope: !4948)
!4982 = !DILocation(line: 439, column: 9, scope: !4948)
!4983 = !DILocation(line: 439, column: 26, scope: !4948)
!4984 = !DILocation(line: 445, column: 14, scope: !4948)
!4985 = !DILocation(line: 445, column: 19, scope: !4948)
!4986 = !DILocation(line: 446, column: 16, scope: !4948)
!4987 = !DILocation(line: 446, column: 21, scope: !4948)
!4988 = !DILocation(line: 446, column: 13, scope: !4948)
!4989 = !DILocation(line: 447, column: 16, scope: !4948)
!4990 = !DILocation(line: 447, column: 21, scope: !4948)
!4991 = !DILocation(line: 447, column: 13, scope: !4948)
!4992 = !DILocation(line: 448, column: 16, scope: !4948)
!4993 = !DILocation(line: 448, column: 21, scope: !4948)
!4994 = !DILocation(line: 448, column: 13, scope: !4948)
!4995 = !DILocation(line: 444, column: 21, scope: !4948)
!4996 = !DILocation(line: 444, column: 9, scope: !4948)
!4997 = !DILocation(line: 444, column: 26, scope: !4948)
!4998 = !DILocation(line: 428, column: 35, scope: !4946)
!4999 = !DILocation(line: 428, column: 43, scope: !4946)
!5000 = !DILocation(line: 428, column: 5, scope: !4946)
!5001 = distinct !{!5001, !4914, !5002, !323}
!5002 = !DILocation(line: 449, column: 5, scope: !4915)
!5003 = !DILocation(line: 450, column: 1, scope: !4881)
!5004 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5005, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !5, !346, !17}
!5007 = !DILocalVariable(name: "skey", arg: 1, scope: !5004, file: !80, line: 452, type: !5)
!5008 = !DILocation(line: 0, scope: !5004)
!5009 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5004, file: !80, line: 452, type: !346)
!5010 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5004, file: !80, line: 452, type: !17)
!5011 = !DILocation(line: 455, column: 23, scope: !5004)
!5012 = !DILocalVariable(name: "n", scope: !5004, file: !80, line: 453, type: !17)
!5013 = !DILocalVariable(name: "u", scope: !5004, file: !80, line: 453, type: !17)
!5014 = !DILocalVariable(name: "v", scope: !5004, file: !80, line: 453, type: !17)
!5015 = !DILocation(line: 456, column: 10, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5004, file: !80, line: 456, column: 5)
!5017 = !DILocation(line: 456, scope: !5016)
!5018 = !DILocation(line: 456, column: 26, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !80, line: 456, column: 5)
!5020 = !DILocation(line: 456, column: 5, scope: !5016)
!5021 = !DILocation(line: 459, column: 29, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5019, file: !80, line: 456, column: 45)
!5023 = !DILocalVariable(name: "x3", scope: !5022, file: !80, line: 457, type: !6)
!5024 = !DILocation(line: 0, scope: !5022)
!5025 = !DILocalVariable(name: "x2", scope: !5022, file: !80, line: 457, type: !6)
!5026 = !DILocalVariable(name: "x1", scope: !5022, file: !80, line: 457, type: !6)
!5027 = !DILocalVariable(name: "x0", scope: !5022, file: !80, line: 457, type: !6)
!5028 = !DILocation(line: 460, column: 12, scope: !5022)
!5029 = !DILocation(line: 464, column: 12, scope: !5022)
!5030 = !DILocation(line: 465, column: 12, scope: !5022)
!5031 = !DILocation(line: 466, column: 12, scope: !5022)
!5032 = !DILocation(line: 467, column: 33, scope: !5022)
!5033 = !DILocation(line: 467, column: 9, scope: !5022)
!5034 = !DILocation(line: 467, column: 21, scope: !5022)
!5035 = !DILocation(line: 468, column: 33, scope: !5022)
!5036 = !DILocation(line: 468, column: 16, scope: !5022)
!5037 = !DILocation(line: 468, column: 9, scope: !5022)
!5038 = !DILocation(line: 468, column: 21, scope: !5022)
!5039 = !DILocation(line: 469, column: 33, scope: !5022)
!5040 = !DILocation(line: 469, column: 16, scope: !5022)
!5041 = !DILocation(line: 469, column: 9, scope: !5022)
!5042 = !DILocation(line: 469, column: 21, scope: !5022)
!5043 = !DILocation(line: 470, column: 33, scope: !5022)
!5044 = !DILocation(line: 470, column: 16, scope: !5022)
!5045 = !DILocation(line: 470, column: 9, scope: !5022)
!5046 = !DILocation(line: 470, column: 21, scope: !5022)
!5047 = !DILocation(line: 456, column: 33, scope: !5019)
!5048 = !DILocation(line: 456, column: 39, scope: !5019)
!5049 = !DILocation(line: 456, column: 5, scope: !5019)
!5050 = distinct !{!5050, !5020, !5051, !323}
!5051 = !DILocation(line: 471, column: 5, scope: !5016)
!5052 = !DILocation(line: 472, column: 1, scope: !5004)
!5053 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5054, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !5056, !15, !49}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5057 = !DILocalVariable(name: "v", arg: 1, scope: !5053, file: !80, line: 104, type: !5056)
!5058 = !DILocation(line: 0, scope: !5053)
!5059 = !DILocalVariable(name: "num", arg: 2, scope: !5053, file: !80, line: 104, type: !15)
!5060 = !DILocalVariable(name: "src", arg: 3, scope: !5053, file: !80, line: 104, type: !49)
!5061 = !DILocation(line: 105, column: 5, scope: !5053)
!5062 = !DILocation(line: 105, column: 18, scope: !5053)
!5063 = !DILocation(line: 105, column: 15, scope: !5053)
!5064 = !DILocation(line: 106, column: 17, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5053, file: !80, line: 105, column: 23)
!5066 = !DILocation(line: 106, column: 12, scope: !5065)
!5067 = !DILocation(line: 106, column: 15, scope: !5065)
!5068 = !DILocation(line: 107, column: 13, scope: !5065)
!5069 = distinct !{!5069, !5061, !5070, !323}
!5070 = !DILocation(line: 108, column: 5, scope: !5053)
!5071 = !DILocation(line: 109, column: 1, scope: !5053)
!5072 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5073, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!19, !19}
!5075 = !DILocalVariable(name: "x", arg: 1, scope: !5072, file: !80, line: 392, type: !19)
!5076 = !DILocation(line: 0, scope: !5072)
!5077 = !DILocalVariable(name: "q", scope: !5072, file: !80, line: 393, type: !4949)
!5078 = !DILocation(line: 393, column: 14, scope: !5072)
!5079 = !DILocation(line: 395, column: 5, scope: !5072)
!5080 = !DILocation(line: 396, column: 12, scope: !5072)
!5081 = !DILocation(line: 396, column: 10, scope: !5072)
!5082 = !DILocation(line: 397, column: 5, scope: !5072)
!5083 = !DILocation(line: 398, column: 5, scope: !5072)
!5084 = !DILocation(line: 399, column: 5, scope: !5072)
!5085 = !DILocation(line: 400, column: 22, scope: !5072)
!5086 = !DILocation(line: 400, column: 12, scope: !5072)
!5087 = !DILocation(line: 400, column: 5, scope: !5072)
!5088 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5089, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !5, !5, !5091}
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 32)
!5092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5093 = !DILocalVariable(name: "q0", arg: 1, scope: !5088, file: !80, line: 339, type: !5)
!5094 = !DILocation(line: 0, scope: !5088)
!5095 = !DILocalVariable(name: "q1", arg: 2, scope: !5088, file: !80, line: 339, type: !5)
!5096 = !DILocalVariable(name: "w", arg: 3, scope: !5088, file: !80, line: 339, type: !5091)
!5097 = !DILocation(line: 342, column: 10, scope: !5088)
!5098 = !DILocalVariable(name: "x0", scope: !5088, file: !80, line: 340, type: !6)
!5099 = !DILocation(line: 343, column: 10, scope: !5088)
!5100 = !DILocalVariable(name: "x1", scope: !5088, file: !80, line: 340, type: !6)
!5101 = !DILocation(line: 344, column: 10, scope: !5088)
!5102 = !DILocalVariable(name: "x2", scope: !5088, file: !80, line: 340, type: !6)
!5103 = !DILocation(line: 345, column: 10, scope: !5088)
!5104 = !DILocalVariable(name: "x3", scope: !5088, file: !80, line: 340, type: !6)
!5105 = !DILocation(line: 346, column: 15, scope: !5088)
!5106 = !DILocation(line: 346, column: 8, scope: !5088)
!5107 = !DILocation(line: 347, column: 15, scope: !5088)
!5108 = !DILocation(line: 347, column: 8, scope: !5088)
!5109 = !DILocation(line: 348, column: 15, scope: !5088)
!5110 = !DILocation(line: 348, column: 8, scope: !5088)
!5111 = !DILocation(line: 349, column: 15, scope: !5088)
!5112 = !DILocation(line: 349, column: 8, scope: !5088)
!5113 = !DILocation(line: 350, column: 8, scope: !5088)
!5114 = !DILocation(line: 351, column: 8, scope: !5088)
!5115 = !DILocation(line: 352, column: 8, scope: !5088)
!5116 = !DILocation(line: 353, column: 8, scope: !5088)
!5117 = !DILocation(line: 354, column: 15, scope: !5088)
!5118 = !DILocation(line: 354, column: 8, scope: !5088)
!5119 = !DILocation(line: 355, column: 15, scope: !5088)
!5120 = !DILocation(line: 355, column: 8, scope: !5088)
!5121 = !DILocation(line: 358, column: 8, scope: !5088)
!5122 = !DILocation(line: 359, column: 8, scope: !5088)
!5123 = !DILocation(line: 362, column: 20, scope: !5088)
!5124 = !DILocation(line: 362, column: 14, scope: !5088)
!5125 = !DILocation(line: 362, column: 9, scope: !5088)
!5126 = !DILocation(line: 363, column: 20, scope: !5088)
!5127 = !DILocation(line: 363, column: 14, scope: !5088)
!5128 = !DILocation(line: 363, column: 9, scope: !5088)
!5129 = !DILocation(line: 364, column: 1, scope: !5088)
!5130 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5131 = !DILocalVariable(name: "q", arg: 1, scope: !5130, file: !80, line: 309, type: !5)
!5132 = !DILocation(line: 0, scope: !5130)
!5133 = !DILocation(line: 322, column: 5, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 322, column: 5)
!5135 = !DILocalVariable(name: "a", scope: !5134, file: !80, line: 322, type: !6)
!5136 = !DILocation(line: 0, scope: !5134)
!5137 = !DILocalVariable(name: "b", scope: !5134, file: !80, line: 322, type: !6)
!5138 = !DILocation(line: 323, column: 5, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 323, column: 5)
!5140 = !DILocalVariable(name: "a", scope: !5139, file: !80, line: 323, type: !6)
!5141 = !DILocation(line: 0, scope: !5139)
!5142 = !DILocalVariable(name: "b", scope: !5139, file: !80, line: 323, type: !6)
!5143 = !DILocation(line: 324, column: 5, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 324, column: 5)
!5145 = !DILocalVariable(name: "a", scope: !5144, file: !80, line: 324, type: !6)
!5146 = !DILocation(line: 0, scope: !5144)
!5147 = !DILocalVariable(name: "b", scope: !5144, file: !80, line: 324, type: !6)
!5148 = !DILocation(line: 325, column: 5, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 325, column: 5)
!5150 = !DILocalVariable(name: "a", scope: !5149, file: !80, line: 325, type: !6)
!5151 = !DILocation(line: 0, scope: !5149)
!5152 = !DILocalVariable(name: "b", scope: !5149, file: !80, line: 325, type: !6)
!5153 = !DILocation(line: 327, column: 5, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 327, column: 5)
!5155 = !DILocalVariable(name: "a", scope: !5154, file: !80, line: 327, type: !6)
!5156 = !DILocation(line: 0, scope: !5154)
!5157 = !DILocalVariable(name: "b", scope: !5154, file: !80, line: 327, type: !6)
!5158 = !DILocation(line: 328, column: 5, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 328, column: 5)
!5160 = !DILocalVariable(name: "a", scope: !5159, file: !80, line: 328, type: !6)
!5161 = !DILocation(line: 0, scope: !5159)
!5162 = !DILocalVariable(name: "b", scope: !5159, file: !80, line: 328, type: !6)
!5163 = !DILocation(line: 329, column: 5, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 329, column: 5)
!5165 = !DILocalVariable(name: "a", scope: !5164, file: !80, line: 329, type: !6)
!5166 = !DILocation(line: 0, scope: !5164)
!5167 = !DILocalVariable(name: "b", scope: !5164, file: !80, line: 329, type: !6)
!5168 = !DILocation(line: 330, column: 5, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 330, column: 5)
!5170 = !DILocalVariable(name: "a", scope: !5169, file: !80, line: 330, type: !6)
!5171 = !DILocation(line: 0, scope: !5169)
!5172 = !DILocalVariable(name: "b", scope: !5169, file: !80, line: 330, type: !6)
!5173 = !DILocation(line: 332, column: 5, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 332, column: 5)
!5175 = !DILocalVariable(name: "a", scope: !5174, file: !80, line: 332, type: !6)
!5176 = !DILocation(line: 0, scope: !5174)
!5177 = !DILocalVariable(name: "b", scope: !5174, file: !80, line: 332, type: !6)
!5178 = !DILocation(line: 333, column: 5, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 333, column: 5)
!5180 = !DILocalVariable(name: "a", scope: !5179, file: !80, line: 333, type: !6)
!5181 = !DILocation(line: 0, scope: !5179)
!5182 = !DILocalVariable(name: "b", scope: !5179, file: !80, line: 333, type: !6)
!5183 = !DILocation(line: 334, column: 5, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 334, column: 5)
!5185 = !DILocalVariable(name: "a", scope: !5184, file: !80, line: 334, type: !6)
!5186 = !DILocation(line: 0, scope: !5184)
!5187 = !DILocalVariable(name: "b", scope: !5184, file: !80, line: 334, type: !6)
!5188 = !DILocation(line: 335, column: 5, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5130, file: !80, line: 335, column: 5)
!5190 = !DILocalVariable(name: "a", scope: !5189, file: !80, line: 335, type: !6)
!5191 = !DILocation(line: 0, scope: !5189)
!5192 = !DILocalVariable(name: "b", scope: !5189, file: !80, line: 335, type: !6)
!5193 = !DILocation(line: 336, column: 1, scope: !5130)
!5194 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5195 = !DILocalVariable(name: "q", arg: 1, scope: !5194, file: !80, line: 135, type: !5)
!5196 = !DILocation(line: 0, scope: !5194)
!5197 = !DILocation(line: 161, column: 10, scope: !5194)
!5198 = !DILocalVariable(name: "x0", scope: !5194, file: !80, line: 146, type: !6)
!5199 = !DILocation(line: 162, column: 10, scope: !5194)
!5200 = !DILocalVariable(name: "x1", scope: !5194, file: !80, line: 146, type: !6)
!5201 = !DILocation(line: 163, column: 10, scope: !5194)
!5202 = !DILocalVariable(name: "x2", scope: !5194, file: !80, line: 146, type: !6)
!5203 = !DILocation(line: 164, column: 10, scope: !5194)
!5204 = !DILocalVariable(name: "x3", scope: !5194, file: !80, line: 146, type: !6)
!5205 = !DILocation(line: 165, column: 10, scope: !5194)
!5206 = !DILocalVariable(name: "x4", scope: !5194, file: !80, line: 146, type: !6)
!5207 = !DILocation(line: 166, column: 10, scope: !5194)
!5208 = !DILocalVariable(name: "x5", scope: !5194, file: !80, line: 146, type: !6)
!5209 = !DILocation(line: 167, column: 10, scope: !5194)
!5210 = !DILocalVariable(name: "x6", scope: !5194, file: !80, line: 146, type: !6)
!5211 = !DILocation(line: 168, column: 10, scope: !5194)
!5212 = !DILocalVariable(name: "x7", scope: !5194, file: !80, line: 146, type: !6)
!5213 = !DILocation(line: 173, column: 14, scope: !5194)
!5214 = !DILocalVariable(name: "y14", scope: !5194, file: !80, line: 148, type: !6)
!5215 = !DILocation(line: 174, column: 14, scope: !5194)
!5216 = !DILocalVariable(name: "y13", scope: !5194, file: !80, line: 148, type: !6)
!5217 = !DILocation(line: 175, column: 13, scope: !5194)
!5218 = !DILocalVariable(name: "y9", scope: !5194, file: !80, line: 147, type: !6)
!5219 = !DILocation(line: 176, column: 13, scope: !5194)
!5220 = !DILocalVariable(name: "y8", scope: !5194, file: !80, line: 147, type: !6)
!5221 = !DILocation(line: 177, column: 13, scope: !5194)
!5222 = !DILocalVariable(name: "t0", scope: !5194, file: !80, line: 152, type: !6)
!5223 = !DILocation(line: 178, column: 13, scope: !5194)
!5224 = !DILocalVariable(name: "y1", scope: !5194, file: !80, line: 147, type: !6)
!5225 = !DILocation(line: 179, column: 13, scope: !5194)
!5226 = !DILocalVariable(name: "y4", scope: !5194, file: !80, line: 147, type: !6)
!5227 = !DILocation(line: 180, column: 15, scope: !5194)
!5228 = !DILocalVariable(name: "y12", scope: !5194, file: !80, line: 148, type: !6)
!5229 = !DILocation(line: 181, column: 13, scope: !5194)
!5230 = !DILocalVariable(name: "y2", scope: !5194, file: !80, line: 147, type: !6)
!5231 = !DILocation(line: 182, column: 13, scope: !5194)
!5232 = !DILocalVariable(name: "y5", scope: !5194, file: !80, line: 147, type: !6)
!5233 = !DILocation(line: 183, column: 13, scope: !5194)
!5234 = !DILocalVariable(name: "y3", scope: !5194, file: !80, line: 147, type: !6)
!5235 = !DILocation(line: 184, column: 13, scope: !5194)
!5236 = !DILocalVariable(name: "t1", scope: !5194, file: !80, line: 152, type: !6)
!5237 = !DILocation(line: 185, column: 14, scope: !5194)
!5238 = !DILocalVariable(name: "y15", scope: !5194, file: !80, line: 148, type: !6)
!5239 = !DILocation(line: 186, column: 14, scope: !5194)
!5240 = !DILocalVariable(name: "y20", scope: !5194, file: !80, line: 149, type: !6)
!5241 = !DILocation(line: 187, column: 14, scope: !5194)
!5242 = !DILocalVariable(name: "y6", scope: !5194, file: !80, line: 147, type: !6)
!5243 = !DILocation(line: 188, column: 15, scope: !5194)
!5244 = !DILocalVariable(name: "y10", scope: !5194, file: !80, line: 148, type: !6)
!5245 = !DILocation(line: 189, column: 15, scope: !5194)
!5246 = !DILocalVariable(name: "y11", scope: !5194, file: !80, line: 148, type: !6)
!5247 = !DILocation(line: 190, column: 13, scope: !5194)
!5248 = !DILocalVariable(name: "y7", scope: !5194, file: !80, line: 147, type: !6)
!5249 = !DILocation(line: 191, column: 15, scope: !5194)
!5250 = !DILocalVariable(name: "y17", scope: !5194, file: !80, line: 148, type: !6)
!5251 = !DILocalVariable(name: "y19", scope: !5194, file: !80, line: 148, type: !6)
!5252 = !DILocation(line: 193, column: 14, scope: !5194)
!5253 = !DILocalVariable(name: "y16", scope: !5194, file: !80, line: 148, type: !6)
!5254 = !DILocalVariable(name: "y21", scope: !5194, file: !80, line: 149, type: !6)
!5255 = !DILocalVariable(name: "y18", scope: !5194, file: !80, line: 148, type: !6)
!5256 = !DILocation(line: 200, column: 14, scope: !5194)
!5257 = !DILocalVariable(name: "t2", scope: !5194, file: !80, line: 152, type: !6)
!5258 = !DILocation(line: 201, column: 13, scope: !5194)
!5259 = !DILocalVariable(name: "t3", scope: !5194, file: !80, line: 152, type: !6)
!5260 = !DILocation(line: 202, column: 13, scope: !5194)
!5261 = !DILocalVariable(name: "t4", scope: !5194, file: !80, line: 152, type: !6)
!5262 = !DILocation(line: 203, column: 13, scope: !5194)
!5263 = !DILocalVariable(name: "t5", scope: !5194, file: !80, line: 152, type: !6)
!5264 = !DILocalVariable(name: "t6", scope: !5194, file: !80, line: 152, type: !6)
!5265 = !DILocation(line: 205, column: 14, scope: !5194)
!5266 = !DILocalVariable(name: "t7", scope: !5194, file: !80, line: 152, type: !6)
!5267 = !DILocation(line: 206, column: 13, scope: !5194)
!5268 = !DILocalVariable(name: "t8", scope: !5194, file: !80, line: 152, type: !6)
!5269 = !DILocalVariable(name: "t9", scope: !5194, file: !80, line: 152, type: !6)
!5270 = !DILocation(line: 208, column: 14, scope: !5194)
!5271 = !DILocalVariable(name: "t10", scope: !5194, file: !80, line: 153, type: !6)
!5272 = !DILocalVariable(name: "t11", scope: !5194, file: !80, line: 153, type: !6)
!5273 = !DILocation(line: 210, column: 14, scope: !5194)
!5274 = !DILocalVariable(name: "t12", scope: !5194, file: !80, line: 153, type: !6)
!5275 = !DILocation(line: 211, column: 15, scope: !5194)
!5276 = !DILocalVariable(name: "t13", scope: !5194, file: !80, line: 153, type: !6)
!5277 = !DILocation(line: 212, column: 15, scope: !5194)
!5278 = !DILocalVariable(name: "t14", scope: !5194, file: !80, line: 153, type: !6)
!5279 = !DILocation(line: 213, column: 14, scope: !5194)
!5280 = !DILocalVariable(name: "t15", scope: !5194, file: !80, line: 153, type: !6)
!5281 = !DILocation(line: 214, column: 15, scope: !5194)
!5282 = !DILocalVariable(name: "t16", scope: !5194, file: !80, line: 153, type: !6)
!5283 = !DILocation(line: 215, column: 14, scope: !5194)
!5284 = !DILocalVariable(name: "t17", scope: !5194, file: !80, line: 153, type: !6)
!5285 = !DILocalVariable(name: "t18", scope: !5194, file: !80, line: 153, type: !6)
!5286 = !DILocalVariable(name: "t19", scope: !5194, file: !80, line: 153, type: !6)
!5287 = !DILocalVariable(name: "t20", scope: !5194, file: !80, line: 154, type: !6)
!5288 = !DILocation(line: 219, column: 15, scope: !5194)
!5289 = !DILocalVariable(name: "t21", scope: !5194, file: !80, line: 154, type: !6)
!5290 = !DILocation(line: 220, column: 15, scope: !5194)
!5291 = !DILocalVariable(name: "t22", scope: !5194, file: !80, line: 154, type: !6)
!5292 = !DILocation(line: 221, column: 15, scope: !5194)
!5293 = !DILocalVariable(name: "t23", scope: !5194, file: !80, line: 154, type: !6)
!5294 = !DILocation(line: 222, column: 15, scope: !5194)
!5295 = !DILocalVariable(name: "t24", scope: !5194, file: !80, line: 154, type: !6)
!5296 = !DILocation(line: 224, column: 15, scope: !5194)
!5297 = !DILocalVariable(name: "t25", scope: !5194, file: !80, line: 154, type: !6)
!5298 = !DILocation(line: 225, column: 15, scope: !5194)
!5299 = !DILocalVariable(name: "t26", scope: !5194, file: !80, line: 154, type: !6)
!5300 = !DILocation(line: 226, column: 15, scope: !5194)
!5301 = !DILocalVariable(name: "t27", scope: !5194, file: !80, line: 154, type: !6)
!5302 = !DILocation(line: 227, column: 15, scope: !5194)
!5303 = !DILocalVariable(name: "t28", scope: !5194, file: !80, line: 154, type: !6)
!5304 = !DILocation(line: 228, column: 15, scope: !5194)
!5305 = !DILocalVariable(name: "t29", scope: !5194, file: !80, line: 154, type: !6)
!5306 = !DILocation(line: 229, column: 15, scope: !5194)
!5307 = !DILocalVariable(name: "t30", scope: !5194, file: !80, line: 155, type: !6)
!5308 = !DILocation(line: 230, column: 15, scope: !5194)
!5309 = !DILocalVariable(name: "t31", scope: !5194, file: !80, line: 155, type: !6)
!5310 = !DILocation(line: 231, column: 15, scope: !5194)
!5311 = !DILocalVariable(name: "t32", scope: !5194, file: !80, line: 155, type: !6)
!5312 = !DILocation(line: 232, column: 15, scope: !5194)
!5313 = !DILocalVariable(name: "t33", scope: !5194, file: !80, line: 155, type: !6)
!5314 = !DILocation(line: 233, column: 15, scope: !5194)
!5315 = !DILocalVariable(name: "t34", scope: !5194, file: !80, line: 155, type: !6)
!5316 = !DILocation(line: 234, column: 15, scope: !5194)
!5317 = !DILocalVariable(name: "t35", scope: !5194, file: !80, line: 155, type: !6)
!5318 = !DILocation(line: 235, column: 15, scope: !5194)
!5319 = !DILocalVariable(name: "t36", scope: !5194, file: !80, line: 155, type: !6)
!5320 = !DILocation(line: 236, column: 15, scope: !5194)
!5321 = !DILocalVariable(name: "t37", scope: !5194, file: !80, line: 155, type: !6)
!5322 = !DILocation(line: 237, column: 15, scope: !5194)
!5323 = !DILocalVariable(name: "t38", scope: !5194, file: !80, line: 155, type: !6)
!5324 = !DILocation(line: 238, column: 15, scope: !5194)
!5325 = !DILocalVariable(name: "t39", scope: !5194, file: !80, line: 155, type: !6)
!5326 = !DILocation(line: 239, column: 15, scope: !5194)
!5327 = !DILocalVariable(name: "t40", scope: !5194, file: !80, line: 156, type: !6)
!5328 = !DILocation(line: 241, column: 15, scope: !5194)
!5329 = !DILocalVariable(name: "t41", scope: !5194, file: !80, line: 156, type: !6)
!5330 = !DILocation(line: 242, column: 15, scope: !5194)
!5331 = !DILocalVariable(name: "t42", scope: !5194, file: !80, line: 156, type: !6)
!5332 = !DILocation(line: 243, column: 15, scope: !5194)
!5333 = !DILocalVariable(name: "t43", scope: !5194, file: !80, line: 156, type: !6)
!5334 = !DILocation(line: 244, column: 15, scope: !5194)
!5335 = !DILocalVariable(name: "t44", scope: !5194, file: !80, line: 156, type: !6)
!5336 = !DILocation(line: 245, column: 15, scope: !5194)
!5337 = !DILocalVariable(name: "t45", scope: !5194, file: !80, line: 156, type: !6)
!5338 = !DILocation(line: 246, column: 14, scope: !5194)
!5339 = !DILocalVariable(name: "z0", scope: !5194, file: !80, line: 150, type: !6)
!5340 = !DILocation(line: 247, column: 14, scope: !5194)
!5341 = !DILocalVariable(name: "z1", scope: !5194, file: !80, line: 150, type: !6)
!5342 = !DILocation(line: 248, column: 14, scope: !5194)
!5343 = !DILocalVariable(name: "z2", scope: !5194, file: !80, line: 150, type: !6)
!5344 = !DILocation(line: 249, column: 14, scope: !5194)
!5345 = !DILocalVariable(name: "z3", scope: !5194, file: !80, line: 150, type: !6)
!5346 = !DILocation(line: 250, column: 14, scope: !5194)
!5347 = !DILocalVariable(name: "z4", scope: !5194, file: !80, line: 150, type: !6)
!5348 = !DILocation(line: 251, column: 14, scope: !5194)
!5349 = !DILocalVariable(name: "z5", scope: !5194, file: !80, line: 150, type: !6)
!5350 = !DILocation(line: 252, column: 14, scope: !5194)
!5351 = !DILocalVariable(name: "z6", scope: !5194, file: !80, line: 150, type: !6)
!5352 = !DILocation(line: 253, column: 14, scope: !5194)
!5353 = !DILocalVariable(name: "z7", scope: !5194, file: !80, line: 150, type: !6)
!5354 = !DILocation(line: 254, column: 14, scope: !5194)
!5355 = !DILocalVariable(name: "z8", scope: !5194, file: !80, line: 150, type: !6)
!5356 = !DILocation(line: 255, column: 14, scope: !5194)
!5357 = !DILocalVariable(name: "z9", scope: !5194, file: !80, line: 150, type: !6)
!5358 = !DILocation(line: 256, column: 15, scope: !5194)
!5359 = !DILocalVariable(name: "z10", scope: !5194, file: !80, line: 151, type: !6)
!5360 = !DILocation(line: 257, column: 15, scope: !5194)
!5361 = !DILocalVariable(name: "z11", scope: !5194, file: !80, line: 151, type: !6)
!5362 = !DILocation(line: 258, column: 15, scope: !5194)
!5363 = !DILocalVariable(name: "z12", scope: !5194, file: !80, line: 151, type: !6)
!5364 = !DILocation(line: 259, column: 15, scope: !5194)
!5365 = !DILocalVariable(name: "z13", scope: !5194, file: !80, line: 151, type: !6)
!5366 = !DILocation(line: 260, column: 15, scope: !5194)
!5367 = !DILocalVariable(name: "z14", scope: !5194, file: !80, line: 151, type: !6)
!5368 = !DILocation(line: 261, column: 15, scope: !5194)
!5369 = !DILocalVariable(name: "z15", scope: !5194, file: !80, line: 151, type: !6)
!5370 = !DILocation(line: 262, column: 15, scope: !5194)
!5371 = !DILocalVariable(name: "z16", scope: !5194, file: !80, line: 151, type: !6)
!5372 = !DILocation(line: 263, column: 15, scope: !5194)
!5373 = !DILocalVariable(name: "z17", scope: !5194, file: !80, line: 151, type: !6)
!5374 = !DILocation(line: 268, column: 15, scope: !5194)
!5375 = !DILocalVariable(name: "t46", scope: !5194, file: !80, line: 156, type: !6)
!5376 = !DILocation(line: 269, column: 15, scope: !5194)
!5377 = !DILocalVariable(name: "t47", scope: !5194, file: !80, line: 156, type: !6)
!5378 = !DILocation(line: 270, column: 14, scope: !5194)
!5379 = !DILocalVariable(name: "t48", scope: !5194, file: !80, line: 156, type: !6)
!5380 = !DILocation(line: 271, column: 14, scope: !5194)
!5381 = !DILocalVariable(name: "t49", scope: !5194, file: !80, line: 156, type: !6)
!5382 = !DILocation(line: 272, column: 14, scope: !5194)
!5383 = !DILocalVariable(name: "t50", scope: !5194, file: !80, line: 157, type: !6)
!5384 = !DILocation(line: 273, column: 14, scope: !5194)
!5385 = !DILocalVariable(name: "t51", scope: !5194, file: !80, line: 157, type: !6)
!5386 = !DILocation(line: 274, column: 14, scope: !5194)
!5387 = !DILocalVariable(name: "t52", scope: !5194, file: !80, line: 157, type: !6)
!5388 = !DILocation(line: 275, column: 14, scope: !5194)
!5389 = !DILocalVariable(name: "t53", scope: !5194, file: !80, line: 157, type: !6)
!5390 = !DILocation(line: 276, column: 14, scope: !5194)
!5391 = !DILocalVariable(name: "t54", scope: !5194, file: !80, line: 157, type: !6)
!5392 = !DILocation(line: 277, column: 15, scope: !5194)
!5393 = !DILocalVariable(name: "t55", scope: !5194, file: !80, line: 157, type: !6)
!5394 = !DILocation(line: 278, column: 15, scope: !5194)
!5395 = !DILocalVariable(name: "t56", scope: !5194, file: !80, line: 157, type: !6)
!5396 = !DILocation(line: 279, column: 15, scope: !5194)
!5397 = !DILocalVariable(name: "t57", scope: !5194, file: !80, line: 157, type: !6)
!5398 = !DILocation(line: 280, column: 14, scope: !5194)
!5399 = !DILocalVariable(name: "t58", scope: !5194, file: !80, line: 157, type: !6)
!5400 = !DILocation(line: 281, column: 14, scope: !5194)
!5401 = !DILocalVariable(name: "t59", scope: !5194, file: !80, line: 157, type: !6)
!5402 = !DILocation(line: 282, column: 15, scope: !5194)
!5403 = !DILocalVariable(name: "t60", scope: !5194, file: !80, line: 158, type: !6)
!5404 = !DILocation(line: 283, column: 15, scope: !5194)
!5405 = !DILocalVariable(name: "t61", scope: !5194, file: !80, line: 158, type: !6)
!5406 = !DILocation(line: 284, column: 15, scope: !5194)
!5407 = !DILocalVariable(name: "t62", scope: !5194, file: !80, line: 158, type: !6)
!5408 = !DILocation(line: 285, column: 15, scope: !5194)
!5409 = !DILocalVariable(name: "t63", scope: !5194, file: !80, line: 158, type: !6)
!5410 = !DILocation(line: 286, column: 14, scope: !5194)
!5411 = !DILocalVariable(name: "t64", scope: !5194, file: !80, line: 158, type: !6)
!5412 = !DILocation(line: 287, column: 15, scope: !5194)
!5413 = !DILocalVariable(name: "t65", scope: !5194, file: !80, line: 158, type: !6)
!5414 = !DILocation(line: 288, column: 14, scope: !5194)
!5415 = !DILocalVariable(name: "t66", scope: !5194, file: !80, line: 158, type: !6)
!5416 = !DILocation(line: 289, column: 14, scope: !5194)
!5417 = !DILocalVariable(name: "s0", scope: !5194, file: !80, line: 159, type: !6)
!5418 = !DILocation(line: 290, column: 14, scope: !5194)
!5419 = !DILocalVariable(name: "s6", scope: !5194, file: !80, line: 159, type: !6)
!5420 = !DILocation(line: 291, column: 14, scope: !5194)
!5421 = !DILocalVariable(name: "s7", scope: !5194, file: !80, line: 159, type: !6)
!5422 = !DILocalVariable(name: "t67", scope: !5194, file: !80, line: 158, type: !6)
!5423 = !DILocation(line: 293, column: 14, scope: !5194)
!5424 = !DILocalVariable(name: "s3", scope: !5194, file: !80, line: 159, type: !6)
!5425 = !DILocation(line: 294, column: 14, scope: !5194)
!5426 = !DILocalVariable(name: "s4", scope: !5194, file: !80, line: 159, type: !6)
!5427 = !DILocation(line: 295, column: 14, scope: !5194)
!5428 = !DILocalVariable(name: "s5", scope: !5194, file: !80, line: 159, type: !6)
!5429 = !DILocation(line: 296, column: 14, scope: !5194)
!5430 = !DILocalVariable(name: "s1", scope: !5194, file: !80, line: 159, type: !6)
!5431 = !DILocation(line: 297, column: 14, scope: !5194)
!5432 = !DILocalVariable(name: "s2", scope: !5194, file: !80, line: 159, type: !6)
!5433 = !DILocation(line: 299, column: 5, scope: !5194)
!5434 = !DILocation(line: 299, column: 10, scope: !5194)
!5435 = !DILocation(line: 300, column: 5, scope: !5194)
!5436 = !DILocation(line: 300, column: 10, scope: !5194)
!5437 = !DILocation(line: 301, column: 5, scope: !5194)
!5438 = !DILocation(line: 301, column: 10, scope: !5194)
!5439 = !DILocation(line: 302, column: 5, scope: !5194)
!5440 = !DILocation(line: 302, column: 10, scope: !5194)
!5441 = !DILocation(line: 303, column: 5, scope: !5194)
!5442 = !DILocation(line: 303, column: 10, scope: !5194)
!5443 = !DILocation(line: 304, column: 5, scope: !5194)
!5444 = !DILocation(line: 304, column: 10, scope: !5194)
!5445 = !DILocation(line: 305, column: 5, scope: !5194)
!5446 = !DILocation(line: 305, column: 10, scope: !5194)
!5447 = !DILocation(line: 306, column: 10, scope: !5194)
!5448 = !DILocation(line: 307, column: 1, scope: !5194)
!5449 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5450, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!19, !49}
!5452 = !DILocalVariable(name: "src", arg: 1, scope: !5449, file: !80, line: 96, type: !49)
!5453 = !DILocation(line: 0, scope: !5449)
!5454 = !DILocation(line: 97, column: 22, scope: !5449)
!5455 = !DILocation(line: 97, column: 12, scope: !5449)
!5456 = !DILocation(line: 98, column: 25, scope: !5449)
!5457 = !DILocation(line: 98, column: 15, scope: !5449)
!5458 = !DILocation(line: 98, column: 32, scope: !5449)
!5459 = !DILocation(line: 98, column: 12, scope: !5449)
!5460 = !DILocation(line: 99, column: 25, scope: !5449)
!5461 = !DILocation(line: 99, column: 15, scope: !5449)
!5462 = !DILocation(line: 99, column: 32, scope: !5449)
!5463 = !DILocation(line: 99, column: 12, scope: !5449)
!5464 = !DILocation(line: 100, column: 25, scope: !5449)
!5465 = !DILocation(line: 100, column: 15, scope: !5449)
!5466 = !DILocation(line: 100, column: 32, scope: !5449)
!5467 = !DILocation(line: 100, column: 12, scope: !5449)
!5468 = !DILocation(line: 97, column: 5, scope: !5449)
!5469 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4855, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5470 = !DILocalVariable(name: "r", arg: 1, scope: !5469, file: !80, line: 647, type: !4857)
!5471 = !DILocation(line: 0, scope: !5469)
!5472 = !DILocalVariable(name: "key", arg: 2, scope: !5469, file: !80, line: 647, type: !49)
!5473 = !DILocation(line: 648, column: 5, scope: !5469)
!5474 = !DILocation(line: 649, column: 1, scope: !5469)
!5475 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5476, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !5478, !49}
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 32)
!5479 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5480)
!5480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5481)
!5481 = !{!5482}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5480, file: !80, line: 50, baseType: !5, size: 32)
!5483 = !DILocalVariable(name: "r", arg: 1, scope: !5475, file: !80, line: 652, type: !5478)
!5484 = !DILocation(line: 0, scope: !5475)
!5485 = !DILocalVariable(name: "key", arg: 2, scope: !5475, file: !80, line: 652, type: !49)
!5486 = !DILocalVariable(name: "skey", scope: !5475, file: !80, line: 653, type: !5487)
!5487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5488)
!5488 = !{!5489}
!5489 = !DISubrange(count: 26)
!5490 = !DILocation(line: 653, column: 14, scope: !5475)
!5491 = !DILocation(line: 654, column: 17, scope: !5475)
!5492 = !DILocation(line: 654, column: 15, scope: !5475)
!5493 = !DILocation(line: 655, column: 19, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5475, file: !80, line: 655, column: 9)
!5495 = !DILocation(line: 656, column: 9, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5494, file: !80, line: 655, column: 28)
!5497 = !DILocation(line: 657, column: 5, scope: !5496)
!5498 = !DILocation(line: 659, column: 5, scope: !5475)
!5499 = !DILocation(line: 660, column: 32, scope: !5475)
!5500 = !DILocation(line: 660, column: 5, scope: !5475)
!5501 = !DILocation(line: 661, column: 1, scope: !5475)
!5502 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5476, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5503 = !DILocalVariable(name: "r", arg: 1, scope: !5502, file: !80, line: 664, type: !5478)
!5504 = !DILocation(line: 0, scope: !5502)
!5505 = !DILocalVariable(name: "key", arg: 2, scope: !5502, file: !80, line: 664, type: !49)
!5506 = !DILocation(line: 665, column: 5, scope: !5502)
!5507 = !DILocation(line: 666, column: 1, scope: !5502)
!5508 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5509, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{null, !5511, !49}
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 32)
!5512 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5513)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5514)
!5514 = !{!5515}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5513, file: !80, line: 55, baseType: !5, size: 32)
!5516 = !DILocalVariable(name: "r", arg: 1, scope: !5508, file: !80, line: 669, type: !5511)
!5517 = !DILocation(line: 0, scope: !5508)
!5518 = !DILocalVariable(name: "key", arg: 2, scope: !5508, file: !80, line: 669, type: !49)
!5519 = !DILocalVariable(name: "skey", scope: !5508, file: !80, line: 670, type: !5520)
!5520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5521)
!5521 = !{!5522}
!5522 = !DISubrange(count: 30)
!5523 = !DILocation(line: 670, column: 14, scope: !5508)
!5524 = !DILocation(line: 671, column: 17, scope: !5508)
!5525 = !DILocation(line: 671, column: 15, scope: !5508)
!5526 = !DILocation(line: 672, column: 19, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5508, file: !80, line: 672, column: 9)
!5528 = !DILocation(line: 673, column: 9, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5527, file: !80, line: 672, column: 28)
!5530 = !DILocation(line: 674, column: 5, scope: !5529)
!5531 = !DILocation(line: 676, column: 5, scope: !5508)
!5532 = !DILocation(line: 677, column: 32, scope: !5508)
!5533 = !DILocation(line: 677, column: 5, scope: !5508)
!5534 = !DILocation(line: 678, column: 1, scope: !5508)
!5535 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5509, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5536 = !DILocalVariable(name: "r", arg: 1, scope: !5535, file: !80, line: 681, type: !5511)
!5537 = !DILocation(line: 0, scope: !5535)
!5538 = !DILocalVariable(name: "key", arg: 2, scope: !5535, file: !80, line: 681, type: !49)
!5539 = !DILocation(line: 682, column: 5, scope: !5535)
!5540 = !DILocation(line: 683, column: 1, scope: !5535)
!5541 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5542, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{null, !18, !49, !15, !5544}
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 32)
!5545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4858)
!5546 = !DILocalVariable(name: "out", arg: 1, scope: !5541, file: !80, line: 686, type: !18)
!5547 = !DILocation(line: 0, scope: !5541)
!5548 = !DILocalVariable(name: "in", arg: 2, scope: !5541, file: !80, line: 686, type: !49)
!5549 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5541, file: !80, line: 686, type: !15)
!5550 = !DILocalVariable(name: "ctx", arg: 4, scope: !5541, file: !80, line: 686, type: !5544)
!5551 = !DILocation(line: 687, column: 36, scope: !5541)
!5552 = !DILocation(line: 687, column: 5, scope: !5541)
!5553 = !DILocation(line: 688, column: 1, scope: !5541)
!5554 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5555, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !18, !49, !15, !346, !17}
!5557 = !DILocalVariable(name: "out", arg: 1, scope: !5554, file: !80, line: 587, type: !18)
!5558 = !DILocation(line: 0, scope: !5554)
!5559 = !DILocalVariable(name: "in", arg: 2, scope: !5554, file: !80, line: 587, type: !49)
!5560 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5554, file: !80, line: 587, type: !15)
!5561 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5554, file: !80, line: 587, type: !346)
!5562 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5554, file: !80, line: 587, type: !17)
!5563 = !DILocalVariable(name: "blocks", scope: !5554, file: !80, line: 588, type: !5564)
!5564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !1277)
!5565 = !DILocation(line: 588, column: 14, scope: !5554)
!5566 = !DILocalVariable(name: "t", scope: !5554, file: !80, line: 589, type: !5567)
!5567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5568)
!5568 = !{!5569}
!5569 = !DISubrange(count: 64)
!5570 = !DILocation(line: 589, column: 19, scope: !5554)
!5571 = !DILocation(line: 591, column: 5, scope: !5554)
!5572 = !DILocation(line: 591, column: 20, scope: !5554)
!5573 = !DILocation(line: 592, column: 9, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5554, file: !80, line: 591, column: 26)
!5575 = !DILocation(line: 593, column: 9, scope: !5574)
!5576 = !DILocation(line: 594, column: 17, scope: !5574)
!5577 = !DILocation(line: 595, column: 12, scope: !5574)
!5578 = !DILocation(line: 596, column: 13, scope: !5574)
!5579 = distinct !{!5579, !5571, !5580, !323}
!5580 = !DILocation(line: 597, column: 5, scope: !5554)
!5581 = !DILocation(line: 599, column: 9, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5554, file: !80, line: 599, column: 9)
!5583 = !DILocation(line: 600, column: 42, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5582, file: !80, line: 599, column: 18)
!5585 = !DILocation(line: 600, column: 9, scope: !5584)
!5586 = !DILocation(line: 601, column: 9, scope: !5584)
!5587 = !DILocation(line: 602, column: 32, scope: !5584)
!5588 = !DILocation(line: 602, column: 9, scope: !5584)
!5589 = !DILocation(line: 603, column: 5, scope: !5584)
!5590 = !DILocation(line: 604, column: 1, scope: !5554)
!5591 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5592, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !18, !5091, !346, !17}
!5594 = !DILocalVariable(name: "out", arg: 1, scope: !5591, file: !80, line: 545, type: !18)
!5595 = !DILocation(line: 0, scope: !5591)
!5596 = !DILocalVariable(name: "ivw", arg: 2, scope: !5591, file: !80, line: 545, type: !5091)
!5597 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5591, file: !80, line: 545, type: !346)
!5598 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5591, file: !80, line: 545, type: !17)
!5599 = !DILocalVariable(name: "w", scope: !5591, file: !80, line: 546, type: !5564)
!5600 = !DILocation(line: 546, column: 14, scope: !5591)
!5601 = !DILocalVariable(name: "q", scope: !5591, file: !80, line: 547, type: !4949)
!5602 = !DILocation(line: 547, column: 14, scope: !5591)
!5603 = !DILocation(line: 550, column: 5, scope: !5591)
!5604 = !DILocalVariable(name: "i", scope: !5591, file: !80, line: 548, type: !17)
!5605 = !DILocation(line: 551, column: 10, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5591, file: !80, line: 551, column: 5)
!5607 = !DILocation(line: 551, scope: !5606)
!5608 = !DILocation(line: 551, column: 19, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5606, file: !80, line: 551, column: 5)
!5610 = !DILocation(line: 551, column: 5, scope: !5606)
!5611 = !DILocation(line: 552, column: 36, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5609, file: !80, line: 551, column: 29)
!5613 = !DILocation(line: 552, column: 47, scope: !5612)
!5614 = !DILocation(line: 552, column: 43, scope: !5612)
!5615 = !DILocation(line: 552, column: 55, scope: !5612)
!5616 = !DILocation(line: 552, column: 9, scope: !5612)
!5617 = !DILocation(line: 551, column: 25, scope: !5609)
!5618 = !DILocation(line: 551, column: 5, scope: !5609)
!5619 = distinct !{!5619, !5610, !5620, !323}
!5620 = !DILocation(line: 553, column: 5, scope: !5606)
!5621 = !DILocation(line: 554, column: 5, scope: !5591)
!5622 = !DILocation(line: 557, column: 5, scope: !5591)
!5623 = !DILocation(line: 558, column: 10, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5591, file: !80, line: 558, column: 5)
!5625 = !DILocation(line: 558, scope: !5624)
!5626 = !DILocation(line: 558, column: 19, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5624, file: !80, line: 558, column: 5)
!5628 = !DILocation(line: 558, column: 5, scope: !5624)
!5629 = !DILocation(line: 559, column: 9, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5627, file: !80, line: 558, column: 35)
!5631 = !DILocation(line: 560, column: 9, scope: !5630)
!5632 = !DILocation(line: 561, column: 9, scope: !5630)
!5633 = !DILocation(line: 562, column: 33, scope: !5630)
!5634 = !DILocation(line: 562, column: 9, scope: !5630)
!5635 = !DILocation(line: 558, column: 31, scope: !5627)
!5636 = !DILocation(line: 558, column: 5, scope: !5627)
!5637 = distinct !{!5637, !5628, !5638, !323}
!5638 = !DILocation(line: 563, column: 5, scope: !5624)
!5639 = !DILocation(line: 564, column: 5, scope: !5591)
!5640 = !DILocation(line: 565, column: 5, scope: !5591)
!5641 = !DILocation(line: 566, column: 29, scope: !5591)
!5642 = !DILocation(line: 566, column: 5, scope: !5591)
!5643 = !DILocation(line: 568, column: 5, scope: !5591)
!5644 = !DILocation(line: 569, column: 10, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5591, file: !80, line: 569, column: 5)
!5646 = !DILocation(line: 569, scope: !5645)
!5647 = !DILocation(line: 569, column: 19, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5645, file: !80, line: 569, column: 5)
!5649 = !DILocation(line: 569, column: 5, scope: !5645)
!5650 = !DILocation(line: 570, column: 38, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !80, line: 569, column: 30)
!5652 = !DILocation(line: 570, column: 50, scope: !5651)
!5653 = !DILocation(line: 570, column: 60, scope: !5651)
!5654 = !DILocation(line: 570, column: 56, scope: !5651)
!5655 = !DILocation(line: 570, column: 9, scope: !5651)
!5656 = !DILocation(line: 569, column: 26, scope: !5648)
!5657 = !DILocation(line: 569, column: 5, scope: !5648)
!5658 = distinct !{!5658, !5649, !5659, !323}
!5659 = !DILocation(line: 571, column: 5, scope: !5645)
!5660 = !DILocation(line: 572, column: 5, scope: !5591)
!5661 = !DILocation(line: 573, column: 1, scope: !5591)
!5662 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5663, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{null, !5, !346}
!5665 = !DILocalVariable(name: "q", arg: 1, scope: !5662, file: !80, line: 475, type: !5)
!5666 = !DILocation(line: 0, scope: !5662)
!5667 = !DILocalVariable(name: "sk", arg: 2, scope: !5662, file: !80, line: 475, type: !346)
!5668 = !DILocation(line: 476, column: 13, scope: !5662)
!5669 = !DILocation(line: 476, column: 10, scope: !5662)
!5670 = !DILocation(line: 477, column: 13, scope: !5662)
!5671 = !DILocation(line: 477, column: 5, scope: !5662)
!5672 = !DILocation(line: 477, column: 10, scope: !5662)
!5673 = !DILocation(line: 478, column: 13, scope: !5662)
!5674 = !DILocation(line: 478, column: 5, scope: !5662)
!5675 = !DILocation(line: 478, column: 10, scope: !5662)
!5676 = !DILocation(line: 479, column: 13, scope: !5662)
!5677 = !DILocation(line: 479, column: 5, scope: !5662)
!5678 = !DILocation(line: 479, column: 10, scope: !5662)
!5679 = !DILocation(line: 480, column: 13, scope: !5662)
!5680 = !DILocation(line: 480, column: 5, scope: !5662)
!5681 = !DILocation(line: 480, column: 10, scope: !5662)
!5682 = !DILocation(line: 481, column: 13, scope: !5662)
!5683 = !DILocation(line: 481, column: 5, scope: !5662)
!5684 = !DILocation(line: 481, column: 10, scope: !5662)
!5685 = !DILocation(line: 482, column: 13, scope: !5662)
!5686 = !DILocation(line: 482, column: 5, scope: !5662)
!5687 = !DILocation(line: 482, column: 10, scope: !5662)
!5688 = !DILocation(line: 483, column: 13, scope: !5662)
!5689 = !DILocation(line: 483, column: 5, scope: !5662)
!5690 = !DILocation(line: 483, column: 10, scope: !5662)
!5691 = !DILocation(line: 484, column: 1, scope: !5662)
!5692 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5693 = !DILocalVariable(name: "q", arg: 1, scope: !5692, file: !80, line: 486, type: !5)
!5694 = !DILocation(line: 0, scope: !5692)
!5695 = !DILocalVariable(name: "i", scope: !5692, file: !80, line: 487, type: !45)
!5696 = !DILocation(line: 489, column: 10, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5692, file: !80, line: 489, column: 5)
!5698 = !DILocation(line: 489, scope: !5697)
!5699 = !DILocation(line: 489, column: 19, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5697, file: !80, line: 489, column: 5)
!5701 = !DILocation(line: 489, column: 5, scope: !5697)
!5702 = !DILocation(line: 492, column: 13, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5700, file: !80, line: 489, column: 30)
!5704 = !DILocalVariable(name: "x", scope: !5703, file: !80, line: 490, type: !6)
!5705 = !DILocation(line: 0, scope: !5703)
!5706 = !DILocation(line: 493, column: 19, scope: !5703)
!5707 = !DILocation(line: 494, column: 54, scope: !5703)
!5708 = !DILocation(line: 494, column: 16, scope: !5703)
!5709 = !DILocation(line: 495, column: 54, scope: !5703)
!5710 = !DILocation(line: 495, column: 16, scope: !5703)
!5711 = !DILocation(line: 496, column: 54, scope: !5703)
!5712 = !DILocation(line: 496, column: 16, scope: !5703)
!5713 = !DILocation(line: 497, column: 54, scope: !5703)
!5714 = !DILocation(line: 497, column: 16, scope: !5703)
!5715 = !DILocation(line: 498, column: 54, scope: !5703)
!5716 = !DILocation(line: 498, column: 16, scope: !5703)
!5717 = !DILocation(line: 499, column: 54, scope: !5703)
!5718 = !DILocation(line: 499, column: 16, scope: !5703)
!5719 = !DILocation(line: 493, column: 9, scope: !5703)
!5720 = !DILocation(line: 493, column: 14, scope: !5703)
!5721 = !DILocation(line: 489, column: 26, scope: !5700)
!5722 = !DILocation(line: 489, column: 5, scope: !5700)
!5723 = distinct !{!5723, !5701, !5724, !323}
!5724 = !DILocation(line: 500, column: 5, scope: !5697)
!5725 = !DILocation(line: 501, column: 1, scope: !5692)
!5726 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5727 = !DILocalVariable(name: "q", arg: 1, scope: !5726, file: !80, line: 507, type: !5)
!5728 = !DILocation(line: 0, scope: !5726)
!5729 = !DILocation(line: 511, column: 10, scope: !5726)
!5730 = !DILocalVariable(name: "q0", scope: !5726, file: !80, line: 508, type: !6)
!5731 = !DILocation(line: 512, column: 10, scope: !5726)
!5732 = !DILocalVariable(name: "q1", scope: !5726, file: !80, line: 508, type: !6)
!5733 = !DILocation(line: 513, column: 10, scope: !5726)
!5734 = !DILocalVariable(name: "q2", scope: !5726, file: !80, line: 508, type: !6)
!5735 = !DILocation(line: 514, column: 10, scope: !5726)
!5736 = !DILocalVariable(name: "q3", scope: !5726, file: !80, line: 508, type: !6)
!5737 = !DILocation(line: 515, column: 10, scope: !5726)
!5738 = !DILocalVariable(name: "q4", scope: !5726, file: !80, line: 508, type: !6)
!5739 = !DILocation(line: 516, column: 10, scope: !5726)
!5740 = !DILocalVariable(name: "q5", scope: !5726, file: !80, line: 508, type: !6)
!5741 = !DILocation(line: 517, column: 10, scope: !5726)
!5742 = !DILocalVariable(name: "q6", scope: !5726, file: !80, line: 508, type: !6)
!5743 = !DILocation(line: 518, column: 10, scope: !5726)
!5744 = !DILocalVariable(name: "q7", scope: !5726, file: !80, line: 508, type: !6)
!5745 = !DILocation(line: 519, column: 21, scope: !5726)
!5746 = !DILocalVariable(name: "r0", scope: !5726, file: !80, line: 509, type: !6)
!5747 = !DILocation(line: 520, column: 21, scope: !5726)
!5748 = !DILocalVariable(name: "r1", scope: !5726, file: !80, line: 509, type: !6)
!5749 = !DILocation(line: 521, column: 21, scope: !5726)
!5750 = !DILocalVariable(name: "r2", scope: !5726, file: !80, line: 509, type: !6)
!5751 = !DILocation(line: 522, column: 21, scope: !5726)
!5752 = !DILocalVariable(name: "r3", scope: !5726, file: !80, line: 509, type: !6)
!5753 = !DILocation(line: 523, column: 21, scope: !5726)
!5754 = !DILocalVariable(name: "r4", scope: !5726, file: !80, line: 509, type: !6)
!5755 = !DILocation(line: 524, column: 21, scope: !5726)
!5756 = !DILocalVariable(name: "r5", scope: !5726, file: !80, line: 509, type: !6)
!5757 = !DILocation(line: 525, column: 21, scope: !5726)
!5758 = !DILocalVariable(name: "r6", scope: !5726, file: !80, line: 509, type: !6)
!5759 = !DILocation(line: 526, column: 21, scope: !5726)
!5760 = !DILocalVariable(name: "r7", scope: !5726, file: !80, line: 509, type: !6)
!5761 = !DILocation(line: 528, column: 37, scope: !5726)
!5762 = !DILocation(line: 528, column: 27, scope: !5726)
!5763 = !DILocation(line: 528, column: 25, scope: !5726)
!5764 = !DILocation(line: 528, column: 10, scope: !5726)
!5765 = !DILocation(line: 529, column: 47, scope: !5726)
!5766 = !DILocation(line: 529, column: 37, scope: !5726)
!5767 = !DILocation(line: 529, column: 35, scope: !5726)
!5768 = !DILocation(line: 529, column: 5, scope: !5726)
!5769 = !DILocation(line: 529, column: 10, scope: !5726)
!5770 = !DILocation(line: 530, column: 37, scope: !5726)
!5771 = !DILocation(line: 530, column: 27, scope: !5726)
!5772 = !DILocation(line: 530, column: 25, scope: !5726)
!5773 = !DILocation(line: 530, column: 5, scope: !5726)
!5774 = !DILocation(line: 530, column: 10, scope: !5726)
!5775 = !DILocation(line: 531, column: 47, scope: !5726)
!5776 = !DILocation(line: 531, column: 37, scope: !5726)
!5777 = !DILocation(line: 531, column: 35, scope: !5726)
!5778 = !DILocation(line: 531, column: 5, scope: !5726)
!5779 = !DILocation(line: 531, column: 10, scope: !5726)
!5780 = !DILocation(line: 532, column: 47, scope: !5726)
!5781 = !DILocation(line: 532, column: 37, scope: !5726)
!5782 = !DILocation(line: 532, column: 35, scope: !5726)
!5783 = !DILocation(line: 532, column: 5, scope: !5726)
!5784 = !DILocation(line: 532, column: 10, scope: !5726)
!5785 = !DILocation(line: 533, column: 37, scope: !5726)
!5786 = !DILocation(line: 533, column: 27, scope: !5726)
!5787 = !DILocation(line: 533, column: 25, scope: !5726)
!5788 = !DILocation(line: 533, column: 5, scope: !5726)
!5789 = !DILocation(line: 533, column: 10, scope: !5726)
!5790 = !DILocation(line: 534, column: 37, scope: !5726)
!5791 = !DILocation(line: 534, column: 27, scope: !5726)
!5792 = !DILocation(line: 534, column: 25, scope: !5726)
!5793 = !DILocation(line: 534, column: 5, scope: !5726)
!5794 = !DILocation(line: 534, column: 10, scope: !5726)
!5795 = !DILocation(line: 535, column: 37, scope: !5726)
!5796 = !DILocation(line: 535, column: 27, scope: !5726)
!5797 = !DILocation(line: 535, column: 25, scope: !5726)
!5798 = !DILocation(line: 535, column: 5, scope: !5726)
!5799 = !DILocation(line: 535, column: 10, scope: !5726)
!5800 = !DILocation(line: 536, column: 1, scope: !5726)
!5801 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5802, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{null, !5056, !6, !6}
!5804 = !DILocalVariable(name: "w", arg: 1, scope: !5801, file: !80, line: 367, type: !5056)
!5805 = !DILocation(line: 0, scope: !5801)
!5806 = !DILocalVariable(name: "q0", arg: 2, scope: !5801, file: !80, line: 367, type: !6)
!5807 = !DILocalVariable(name: "q1", arg: 3, scope: !5801, file: !80, line: 367, type: !6)
!5808 = !DILocation(line: 370, column: 13, scope: !5801)
!5809 = !DILocalVariable(name: "x0", scope: !5801, file: !80, line: 368, type: !6)
!5810 = !DILocation(line: 371, column: 13, scope: !5801)
!5811 = !DILocalVariable(name: "x1", scope: !5801, file: !80, line: 368, type: !6)
!5812 = !DILocation(line: 372, column: 14, scope: !5801)
!5813 = !DILocation(line: 372, column: 20, scope: !5801)
!5814 = !DILocalVariable(name: "x2", scope: !5801, file: !80, line: 368, type: !6)
!5815 = !DILocation(line: 373, column: 14, scope: !5801)
!5816 = !DILocation(line: 373, column: 20, scope: !5801)
!5817 = !DILocalVariable(name: "x3", scope: !5801, file: !80, line: 368, type: !6)
!5818 = !DILocation(line: 374, column: 15, scope: !5801)
!5819 = !DILocation(line: 374, column: 8, scope: !5801)
!5820 = !DILocation(line: 375, column: 15, scope: !5801)
!5821 = !DILocation(line: 375, column: 8, scope: !5801)
!5822 = !DILocation(line: 376, column: 8, scope: !5801)
!5823 = !DILocation(line: 377, column: 8, scope: !5801)
!5824 = !DILocation(line: 378, column: 8, scope: !5801)
!5825 = !DILocation(line: 379, column: 8, scope: !5801)
!5826 = !DILocation(line: 382, column: 41, scope: !5801)
!5827 = !DILocation(line: 382, column: 25, scope: !5801)
!5828 = !DILocation(line: 382, column: 10, scope: !5801)
!5829 = !DILocation(line: 383, column: 41, scope: !5801)
!5830 = !DILocation(line: 383, column: 25, scope: !5801)
!5831 = !DILocation(line: 383, column: 5, scope: !5801)
!5832 = !DILocation(line: 383, column: 10, scope: !5801)
!5833 = !DILocation(line: 384, column: 41, scope: !5801)
!5834 = !DILocation(line: 384, column: 25, scope: !5801)
!5835 = !DILocation(line: 384, column: 5, scope: !5801)
!5836 = !DILocation(line: 384, column: 10, scope: !5801)
!5837 = !DILocation(line: 385, column: 41, scope: !5801)
!5838 = !DILocation(line: 385, column: 25, scope: !5801)
!5839 = !DILocation(line: 385, column: 5, scope: !5801)
!5840 = !DILocation(line: 385, column: 10, scope: !5801)
!5841 = !DILocation(line: 386, column: 1, scope: !5801)
!5842 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5843, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{null, !18, !5091, !15}
!5845 = !DILocalVariable(name: "dst", arg: 1, scope: !5842, file: !80, line: 127, type: !18)
!5846 = !DILocation(line: 0, scope: !5842)
!5847 = !DILocalVariable(name: "v", arg: 2, scope: !5842, file: !80, line: 127, type: !5091)
!5848 = !DILocalVariable(name: "num", arg: 3, scope: !5842, file: !80, line: 127, type: !15)
!5849 = !DILocation(line: 128, column: 5, scope: !5842)
!5850 = !DILocation(line: 128, column: 18, scope: !5842)
!5851 = !DILocation(line: 128, column: 15, scope: !5842)
!5852 = !DILocation(line: 129, column: 28, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5842, file: !80, line: 128, column: 23)
!5854 = !DILocation(line: 129, column: 25, scope: !5853)
!5855 = !DILocation(line: 129, column: 9, scope: !5853)
!5856 = !DILocation(line: 130, column: 13, scope: !5853)
!5857 = distinct !{!5857, !5849, !5858, !323}
!5858 = !DILocation(line: 131, column: 5, scope: !5842)
!5859 = !DILocation(line: 132, column: 1, scope: !5842)
!5860 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5861, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{null, !18, !19}
!5863 = !DILocalVariable(name: "dst", arg: 1, scope: !5860, file: !80, line: 119, type: !18)
!5864 = !DILocation(line: 0, scope: !5860)
!5865 = !DILocalVariable(name: "x", arg: 2, scope: !5860, file: !80, line: 119, type: !19)
!5866 = !DILocation(line: 120, column: 14, scope: !5860)
!5867 = !DILocation(line: 120, column: 12, scope: !5860)
!5868 = !DILocation(line: 121, column: 32, scope: !5860)
!5869 = !DILocation(line: 121, column: 14, scope: !5860)
!5870 = !DILocation(line: 121, column: 5, scope: !5860)
!5871 = !DILocation(line: 121, column: 12, scope: !5860)
!5872 = !DILocation(line: 122, column: 32, scope: !5860)
!5873 = !DILocation(line: 122, column: 14, scope: !5860)
!5874 = !DILocation(line: 122, column: 5, scope: !5860)
!5875 = !DILocation(line: 122, column: 12, scope: !5860)
!5876 = !DILocation(line: 123, column: 32, scope: !5860)
!5877 = !DILocation(line: 123, column: 14, scope: !5860)
!5878 = !DILocation(line: 123, column: 5, scope: !5860)
!5879 = !DILocation(line: 123, column: 12, scope: !5860)
!5880 = !DILocation(line: 124, column: 1, scope: !5860)
!5881 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5882, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!6, !6}
!5884 = !DILocalVariable(name: "x", arg: 1, scope: !5881, file: !80, line: 503, type: !6)
!5885 = !DILocation(line: 0, scope: !5881)
!5886 = !DILocation(line: 504, column: 22, scope: !5881)
!5887 = !DILocation(line: 504, column: 5, scope: !5881)
!5888 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5889, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{null, !18, !15, !49, !5544}
!5891 = !DILocalVariable(name: "out", arg: 1, scope: !5888, file: !80, line: 690, type: !18)
!5892 = !DILocation(line: 0, scope: !5888)
!5893 = !DILocalVariable(name: "outlen", arg: 2, scope: !5888, file: !80, line: 690, type: !15)
!5894 = !DILocalVariable(name: "iv", arg: 3, scope: !5888, file: !80, line: 690, type: !49)
!5895 = !DILocalVariable(name: "ctx", arg: 4, scope: !5888, file: !80, line: 690, type: !5544)
!5896 = !DILocation(line: 691, column: 35, scope: !5888)
!5897 = !DILocation(line: 691, column: 5, scope: !5888)
!5898 = !DILocation(line: 692, column: 1, scope: !5888)
!5899 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5900, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{null, !18, !15, !49, !346, !17}
!5902 = !DILocalVariable(name: "out", arg: 1, scope: !5899, file: !80, line: 607, type: !18)
!5903 = !DILocation(line: 0, scope: !5899)
!5904 = !DILocalVariable(name: "outlen", arg: 2, scope: !5899, file: !80, line: 607, type: !15)
!5905 = !DILocalVariable(name: "iv", arg: 3, scope: !5899, file: !80, line: 607, type: !49)
!5906 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5899, file: !80, line: 607, type: !346)
!5907 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5899, file: !80, line: 607, type: !17)
!5908 = !DILocalVariable(name: "ivw", scope: !5899, file: !80, line: 608, type: !5564)
!5909 = !DILocation(line: 608, column: 14, scope: !5899)
!5910 = !DILocalVariable(name: "cc", scope: !5899, file: !80, line: 610, type: !19)
!5911 = !DILocation(line: 612, column: 5, scope: !5899)
!5912 = !DILocation(line: 613, column: 16, scope: !5899)
!5913 = !DILocation(line: 613, column: 5, scope: !5899)
!5914 = !DILocation(line: 614, column: 16, scope: !5899)
!5915 = !DILocation(line: 614, column: 5, scope: !5899)
!5916 = !DILocation(line: 615, column: 16, scope: !5899)
!5917 = !DILocation(line: 615, column: 5, scope: !5899)
!5918 = !DILocation(line: 616, column: 15, scope: !5899)
!5919 = !DILocation(line: 616, column: 5, scope: !5899)
!5920 = !DILocation(line: 616, column: 13, scope: !5899)
!5921 = !DILocation(line: 617, column: 15, scope: !5899)
!5922 = !DILocation(line: 617, column: 5, scope: !5899)
!5923 = !DILocation(line: 617, column: 13, scope: !5899)
!5924 = !DILocation(line: 618, column: 15, scope: !5899)
!5925 = !DILocation(line: 618, column: 5, scope: !5899)
!5926 = !DILocation(line: 618, column: 13, scope: !5899)
!5927 = !DILocation(line: 619, column: 15, scope: !5899)
!5928 = !DILocation(line: 619, column: 5, scope: !5899)
!5929 = !DILocation(line: 619, column: 13, scope: !5899)
!5930 = !DILocation(line: 621, column: 5, scope: !5899)
!5931 = !DILocation(line: 621, column: 19, scope: !5899)
!5932 = !DILocation(line: 622, column: 9, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5899, file: !80, line: 621, column: 25)
!5934 = !DILocation(line: 623, column: 13, scope: !5933)
!5935 = !DILocation(line: 624, column: 16, scope: !5933)
!5936 = distinct !{!5936, !5930, !5937, !323}
!5937 = !DILocation(line: 625, column: 5, scope: !5899)
!5938 = !DILocation(line: 626, column: 16, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5899, file: !80, line: 626, column: 9)
!5940 = !DILocalVariable(name: "tmp", scope: !5941, file: !80, line: 627, type: !5567)
!5941 = distinct !DILexicalBlock(scope: !5939, file: !80, line: 626, column: 21)
!5942 = !DILocation(line: 627, column: 23, scope: !5941)
!5943 = !DILocation(line: 628, column: 9, scope: !5941)
!5944 = !DILocalVariable(name: "i", scope: !5899, file: !80, line: 609, type: !15)
!5945 = !DILocation(line: 629, column: 14, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5941, file: !80, line: 629, column: 9)
!5947 = !DILocation(line: 629, scope: !5946)
!5948 = !DILocation(line: 629, column: 23, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5946, file: !80, line: 629, column: 9)
!5950 = !DILocation(line: 629, column: 9, scope: !5946)
!5951 = !DILocation(line: 630, column: 22, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !80, line: 629, column: 38)
!5953 = !DILocation(line: 630, column: 13, scope: !5952)
!5954 = !DILocation(line: 630, column: 20, scope: !5952)
!5955 = !DILocation(line: 629, column: 34, scope: !5949)
!5956 = !DILocation(line: 629, column: 9, scope: !5949)
!5957 = distinct !{!5957, !5950, !5958, !323}
!5958 = !DILocation(line: 631, column: 9, scope: !5946)
!5959 = !DILocation(line: 633, column: 1, scope: !5899)
!5960 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5073, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5961 = !DILocalVariable(name: "x", arg: 1, scope: !5960, file: !80, line: 112, type: !19)
!5962 = !DILocation(line: 0, scope: !5960)
!5963 = !DILocation(line: 115, column: 22, scope: !5960)
!5964 = !DILocation(line: 115, column: 5, scope: !5960)
!5965 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !5966, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{null, !18, !5056, !346, !17}
!5968 = !DILocalVariable(name: "out", arg: 1, scope: !5965, file: !80, line: 576, type: !18)
!5969 = !DILocation(line: 0, scope: !5965)
!5970 = !DILocalVariable(name: "ivw", arg: 2, scope: !5965, file: !80, line: 576, type: !5056)
!5971 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5965, file: !80, line: 576, type: !346)
!5972 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5965, file: !80, line: 576, type: !17)
!5973 = !DILocation(line: 577, column: 5, scope: !5965)
!5974 = !DILocation(line: 580, column: 17, scope: !5965)
!5975 = !DILocation(line: 580, column: 5, scope: !5965)
!5976 = !DILocation(line: 581, column: 17, scope: !5965)
!5977 = !DILocation(line: 581, column: 5, scope: !5965)
!5978 = !DILocation(line: 582, column: 17, scope: !5965)
!5979 = !DILocation(line: 582, column: 5, scope: !5965)
!5980 = !DILocation(line: 583, column: 17, scope: !5965)
!5981 = !DILocation(line: 583, column: 5, scope: !5965)
!5982 = !DILocation(line: 584, column: 1, scope: !5965)
!5983 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !5984, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{null, !5056}
!5986 = !DILocalVariable(name: "x", arg: 1, scope: !5983, file: !80, line: 539, type: !5056)
!5987 = !DILocation(line: 0, scope: !5983)
!5988 = !DILocation(line: 540, column: 28, scope: !5983)
!5989 = !DILocation(line: 540, column: 18, scope: !5983)
!5990 = !DILocation(line: 540, column: 32, scope: !5983)
!5991 = !DILocalVariable(name: "t", scope: !5983, file: !80, line: 540, type: !19)
!5992 = !DILocation(line: 541, column: 10, scope: !5983)
!5993 = !DILocation(line: 541, column: 8, scope: !5983)
!5994 = !DILocation(line: 542, column: 1, scope: !5983)
!5995 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !5996, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{null, !18, !49, !15, !5998}
!5998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5999, size: 32)
!5999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5479)
!6000 = !DILocalVariable(name: "out", arg: 1, scope: !5995, file: !80, line: 694, type: !18)
!6001 = !DILocation(line: 0, scope: !5995)
!6002 = !DILocalVariable(name: "in", arg: 2, scope: !5995, file: !80, line: 694, type: !49)
!6003 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5995, file: !80, line: 694, type: !15)
!6004 = !DILocalVariable(name: "ctx", arg: 4, scope: !5995, file: !80, line: 694, type: !5998)
!6005 = !DILocation(line: 695, column: 36, scope: !5995)
!6006 = !DILocation(line: 695, column: 5, scope: !5995)
!6007 = !DILocation(line: 696, column: 1, scope: !5995)
!6008 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6009, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !18, !15, !49, !5998}
!6011 = !DILocalVariable(name: "out", arg: 1, scope: !6008, file: !80, line: 698, type: !18)
!6012 = !DILocation(line: 0, scope: !6008)
!6013 = !DILocalVariable(name: "outlen", arg: 2, scope: !6008, file: !80, line: 698, type: !15)
!6014 = !DILocalVariable(name: "iv", arg: 3, scope: !6008, file: !80, line: 698, type: !49)
!6015 = !DILocalVariable(name: "ctx", arg: 4, scope: !6008, file: !80, line: 698, type: !5998)
!6016 = !DILocation(line: 699, column: 35, scope: !6008)
!6017 = !DILocation(line: 699, column: 5, scope: !6008)
!6018 = !DILocation(line: 700, column: 1, scope: !6008)
!6019 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6020, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{null, !18, !49, !15, !6022}
!6022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6023, size: 32)
!6023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5512)
!6024 = !DILocalVariable(name: "out", arg: 1, scope: !6019, file: !80, line: 702, type: !18)
!6025 = !DILocation(line: 0, scope: !6019)
!6026 = !DILocalVariable(name: "in", arg: 2, scope: !6019, file: !80, line: 702, type: !49)
!6027 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6019, file: !80, line: 702, type: !15)
!6028 = !DILocalVariable(name: "ctx", arg: 4, scope: !6019, file: !80, line: 702, type: !6022)
!6029 = !DILocation(line: 703, column: 36, scope: !6019)
!6030 = !DILocation(line: 703, column: 5, scope: !6019)
!6031 = !DILocation(line: 704, column: 1, scope: !6019)
!6032 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6033, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{null, !18, !15, !49, !6022}
!6035 = !DILocalVariable(name: "out", arg: 1, scope: !6032, file: !80, line: 706, type: !18)
!6036 = !DILocation(line: 0, scope: !6032)
!6037 = !DILocalVariable(name: "outlen", arg: 2, scope: !6032, file: !80, line: 706, type: !15)
!6038 = !DILocalVariable(name: "iv", arg: 3, scope: !6032, file: !80, line: 706, type: !49)
!6039 = !DILocalVariable(name: "ctx", arg: 4, scope: !6032, file: !80, line: 706, type: !6022)
!6040 = !DILocation(line: 707, column: 35, scope: !6032)
!6041 = !DILocation(line: 707, column: 5, scope: !6032)
!6042 = !DILocation(line: 708, column: 1, scope: !6032)
!6043 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6044, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{null, !4857}
!6046 = !DILocalVariable(name: "r", arg: 1, scope: !6043, file: !80, line: 710, type: !4857)
!6047 = !DILocation(line: 0, scope: !6043)
!6048 = !DILocation(line: 711, column: 13, scope: !6043)
!6049 = !DILocation(line: 711, column: 5, scope: !6043)
!6050 = !DILocation(line: 712, column: 1, scope: !6043)
!6051 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6052, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !5478}
!6054 = !DILocalVariable(name: "r", arg: 1, scope: !6051, file: !80, line: 714, type: !5478)
!6055 = !DILocation(line: 0, scope: !6051)
!6056 = !DILocation(line: 715, column: 13, scope: !6051)
!6057 = !DILocation(line: 715, column: 5, scope: !6051)
!6058 = !DILocation(line: 716, column: 1, scope: !6051)
!6059 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6060, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{null, !5511}
!6062 = !DILocalVariable(name: "r", arg: 1, scope: !6059, file: !80, line: 718, type: !5511)
!6063 = !DILocation(line: 0, scope: !6059)
!6064 = !DILocation(line: 719, column: 13, scope: !6059)
!6065 = !DILocation(line: 719, column: 5, scope: !6059)
!6066 = !DILocation(line: 720, column: 1, scope: !6059)
!6067 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6068, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{!45, !18, !15, !49, !15}
!6070 = !DILocalVariable(name: "output", arg: 1, scope: !6067, file: !80, line: 722, type: !18)
!6071 = !DILocation(line: 0, scope: !6067)
!6072 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6067, file: !80, line: 722, type: !15)
!6073 = !DILocalVariable(name: "input", arg: 3, scope: !6067, file: !80, line: 723, type: !49)
!6074 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6067, file: !80, line: 723, type: !15)
!6075 = !DILocalVariable(name: "ctx", scope: !6067, file: !80, line: 724, type: !4858)
!6076 = !DILocation(line: 724, column: 15, scope: !6067)
!6077 = !DILocalVariable(name: "iv", scope: !6067, file: !80, line: 725, type: !1276)
!6078 = !DILocation(line: 725, column: 19, scope: !6067)
!6079 = !DILocation(line: 727, column: 5, scope: !6067)
!6080 = !DILocation(line: 728, column: 5, scope: !6067)
!6081 = !DILocation(line: 729, column: 5, scope: !6067)
!6082 = !DILocation(line: 731, column: 5, scope: !6067)
!6083 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6084, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{null, !3360, !49, !18}
!6086 = !DILocalVariable(name: "input", arg: 1, scope: !6083, file: !80, line: 734, type: !3360)
!6087 = !DILocation(line: 0, scope: !6083)
!6088 = !DILocalVariable(name: "key", arg: 2, scope: !6083, file: !80, line: 734, type: !49)
!6089 = !DILocalVariable(name: "output", arg: 3, scope: !6083, file: !80, line: 734, type: !18)
!6090 = !DILocalVariable(name: "ctx", scope: !6083, file: !80, line: 735, type: !5512)
!6091 = !DILocation(line: 735, column: 15, scope: !6083)
!6092 = !DILocation(line: 737, column: 5, scope: !6083)
!6093 = !DILocation(line: 738, column: 5, scope: !6083)
!6094 = !DILocation(line: 739, column: 5, scope: !6083)
!6095 = !DILocation(line: 740, column: 1, scope: !6083)
