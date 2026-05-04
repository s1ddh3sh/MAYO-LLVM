; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\02\08", align 1, !dbg !0
@pqmayo_MAYO_2_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_2_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_2_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
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
  %epk = alloca [13284 x i64], align 8
  %esk = alloca [12808 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !131, !DIExpression(), !132)
    #dbg_value(i32 32, !133, !DIExpression(), !132)
  store i32 32, ptr %msglen, align 4, !dbg !134
    #dbg_value(i32 32, !133, !DIExpression(), !132)
    #dbg_value(i32 218, !135, !DIExpression(), !132)
  store i32 218, ptr %smlen, align 4, !dbg !136
  %call = call dereferenceable_or_null(4912) ptr @calloc(i32 noundef 4912, i32 noundef 1) #8, !dbg !137
    #dbg_value(ptr %call, !138, !DIExpression(), !132)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #8, !dbg !139
    #dbg_value(ptr %call1, !140, !DIExpression(), !132)
    #dbg_declare(ptr %epk, !141, !DIExpression(), !146)
    #dbg_declare(ptr %esk, !147, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !153
    #dbg_value(i32 %0, !133, !DIExpression(), !132)
  %add2 = add i32 %0, 186, !dbg !154
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #8, !dbg !155
    #dbg_value(ptr %call3, !156, !DIExpression(), !132)
    #dbg_declare(ptr %msg, !157, !DIExpression(), !161)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !161
    #dbg_declare(ptr %msg2, !162, !DIExpression(), !163)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !163
  %call4 = call i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #7, !dbg !164
    #dbg_value(i32 %call4, !165, !DIExpression(), !132)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !166
  br i1 %cmp.not, label %if.end, label %err, !dbg !166

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #7, !dbg !168
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %call11 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #7, !dbg !169
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %1 = load i32, ptr %msglen, align 4, !dbg !170
    #dbg_value(i32 %1, !133, !DIExpression(), !132)
    #dbg_value(ptr %smlen, !135, !DIExpression(DW_OP_deref), !132)
  %call17 = call i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #7, !dbg !171
    #dbg_value(i32 %call17, !165, !DIExpression(), !132)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !172
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !172

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !174
    #dbg_value(i32 %2, !135, !DIExpression(), !132)
    #dbg_value(ptr %msglen, !133, !DIExpression(DW_OP_deref), !132)
  %call23 = call i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #7, !dbg !175
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
  %call32 = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #7, !dbg !182
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !191 {
entry:
    #dbg_value(ptr %p, !222, !DIExpression(), !223)
    #dbg_value(ptr %pk, !224, !DIExpression(), !223)
    #dbg_value(ptr %sk, !225, !DIExpression(), !223)
    #dbg_value(i32 0, !226, !DIExpression(), !223)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #7, !dbg !227
    #dbg_value(i32 %call, !226, !DIExpression(), !223)
    #dbg_label(!228, !229)
  ret i32 %call, !dbg !230
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !231 {
entry:
  %S = alloca [560 x i8], align 1
  %P = alloca [12672 x i64], align 8
  %P3 = alloca [1156 x i64], align 8
  %O = alloca [1088 x i8], align 1
  %P3_upper = alloca [612 x i64], align 8
    #dbg_value(ptr %p, !232, !DIExpression(), !233)
    #dbg_value(ptr %cpk, !234, !DIExpression(), !233)
    #dbg_value(ptr %csk, !235, !DIExpression(), !233)
    #dbg_value(i32 0, !236, !DIExpression(), !233)
    #dbg_value(ptr %csk, !237, !DIExpression(), !233)
    #dbg_declare(ptr %S, !238, !DIExpression(), !242)
    #dbg_declare(ptr %P, !243, !DIExpression(), !247)
    #dbg_declare(ptr %P3, !248, !DIExpression(), !252)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(9248) %P3, i8 0, i32 9248, i1 false), !dbg !252
    #dbg_declare(ptr %O, !253, !DIExpression(), !257)
    #dbg_value(i32 4, !258, !DIExpression(), !233)
    #dbg_value(i32 64, !260, !DIExpression(), !233)
    #dbg_value(i32 64, !261, !DIExpression(), !233)
    #dbg_value(i32 17, !262, !DIExpression(), !233)
    #dbg_value(i32 544, !263, !DIExpression(), !233)
    #dbg_value(i32 8320, !264, !DIExpression(), !233)
    #dbg_value(i32 612, !265, !DIExpression(), !233)
    #dbg_value(i32 16, !266, !DIExpression(), !233)
    #dbg_value(i32 24, !267, !DIExpression(), !233)
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 66560, !dbg !269
    #dbg_value(ptr %add.ptr, !270, !DIExpression(), !233)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #9, !dbg !271
  %cmp.not = icmp eq i32 %call, 0, !dbg !273
  br i1 %cmp.not, label %if.end, label %err, !dbg !273

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #7, !dbg !274
    #dbg_value(ptr %S, !275, !DIExpression(), !233)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !276
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1088) #7, !dbg !277
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #7, !dbg !278
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #7, !dbg !279
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #9, !dbg !280
    #dbg_declare(ptr %P3_upper, !281, !DIExpression(), !285)
  call void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 17) #7, !dbg !286
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !287
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 153, i32 noundef 64) #7, !dbg !288
  br label %err, !dbg !288

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !233
    #dbg_value(i32 %ret.0, !236, !DIExpression(), !233)
    #dbg_label(!289, !290)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1088) #9, !dbg !291
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 34816) #9, !dbg !292
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 9248) #9, !dbg !293
  ret i32 %ret.0, !dbg !294
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483579, -2147483648) %mdeclen) unnamed_addr #0 !dbg !295 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 101376, ptr noundef %seed_pk, i32 noundef 16) #7, !dbg !339
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3168, i32 noundef 64) #7, !dbg !340
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
    #dbg_value(i32 4, !353, !DIExpression(), !348)
    #dbg_value(i32 64, !354, !DIExpression(), !348)
    #dbg_value(i32 17, !355, !DIExpression(), !348)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #7, !dbg !356
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 4, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 64, i32 noundef 17, i32 noundef 17) #7, !dbg !357
  ret void, !dbg !358
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !359 {
entry:
    #dbg_value(ptr %in, !362, !DIExpression(), !363)
    #dbg_value(ptr %out, !364, !DIExpression(), !363)
    #dbg_value(i32 153, !365, !DIExpression(), !363)
    #dbg_value(i32 64, !366, !DIExpression(), !363)
    #dbg_value(i32 4, !367, !DIExpression(), !363)
    #dbg_value(ptr %in, !368, !DIExpression(), !363)
    #dbg_value(i32 0, !369, !DIExpression(), !371)
  br label %for.cond, !dbg !372

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !373
    #dbg_value(i32 %i.0, !369, !DIExpression(), !371)
  %exitcond = icmp ne i32 %i.0, 153, !dbg !374
  br i1 %exitcond, label %for.body, label %for.end, !dbg !376

for.body:                                         ; preds = %for.cond
  %div1 = shl nuw nsw i32 %i.0, 5, !dbg !377
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !379
  %mul2 = shl nuw nsw i32 %i.0, 5, !dbg !380
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul2, !dbg !381
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 32) #9, !dbg !382
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 4, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 1) #7, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !398 {
entry:
    #dbg_value(i32 4, !401, !DIExpression(), !402)
    #dbg_value(ptr %mat, !403, !DIExpression(), !402)
    #dbg_value(ptr %bs_mat, !404, !DIExpression(), !402)
    #dbg_value(ptr %acc, !405, !DIExpression(), !402)
    #dbg_value(i32 64, !406, !DIExpression(), !402)
    #dbg_value(i32 17, !407, !DIExpression(), !402)
    #dbg_value(i32 17, !408, !DIExpression(), !402)
    #dbg_value(i32 0, !409, !DIExpression(), !411)
  br label %for.cond, !dbg !412

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !413
    #dbg_value(i32 %r.0, !409, !DIExpression(), !411)
  %exitcond2 = icmp ne i32 %r.0, 17, !dbg !414
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !416

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !417

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !420
    #dbg_value(i32 %c.0, !421, !DIExpression(), !422)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !423
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !417

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !425

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !428
    #dbg_value(i32 %k.0, !429, !DIExpression(), !430)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !431
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !425

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 17, !dbg !433
  %add = add nuw nsw i32 %mul, %k.0, !dbg !435
  %add.ptr.idx = shl nuw nsw i32 %add, 5, !dbg !436
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !436
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !437
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !438
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !438
  %1 = load i8, ptr %arrayidx, align 1, !dbg !438
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !439
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !440
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !441
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !441
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !442
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
  %exitcond = icmp ne i32 %i.0, 4, !dbg !473
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
    #dbg_value(i32 4, !531, !DIExpression(), !532)
    #dbg_value(ptr %bs_mat, !533, !DIExpression(), !532)
    #dbg_value(ptr %mat, !534, !DIExpression(), !532)
    #dbg_value(ptr %acc, !535, !DIExpression(), !532)
    #dbg_value(i32 64, !536, !DIExpression(), !532)
    #dbg_value(i32 64, !537, !DIExpression(), !532)
    #dbg_value(i32 17, !538, !DIExpression(), !532)
    #dbg_value(i32 1, !539, !DIExpression(), !532)
    #dbg_value(i32 0, !540, !DIExpression(), !532)
    #dbg_value(i32 0, !541, !DIExpression(), !543)
  br label %for.cond, !dbg !544

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !545
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !545
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !546
    #dbg_value(i32 %r.0, !541, !DIExpression(), !543)
    #dbg_value(i32 %bs_mat_entries_used.0, !540, !DIExpression(), !532)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !547
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
  %exitcond = icmp ne i32 %k.0, 17, !dbg !564
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !558

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !566
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !566
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !568
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !569
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !569
  %2 = load i8, ptr %arrayidx, align 1, !dbg !569
  %mul9 = mul nuw nsw i32 %r.0, 17, !dbg !570
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !571
  %add.ptr12.idx = shl nuw nsw i32 %add10, 5, !dbg !572
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !572
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !573
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 153, 3169) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !588 {
entry:
  %tmp = alloca [4 x i64], align 8
    #dbg_value(ptr %in, !591, !DIExpression(), !592)
    #dbg_value(ptr %out, !593, !DIExpression(), !592)
    #dbg_value(i32 %vecs, !594, !DIExpression(), !592)
    #dbg_value(i32 64, !595, !DIExpression(), !592)
    #dbg_value(i32 4, !596, !DIExpression(), !592)
    #dbg_value(ptr %out, !597, !DIExpression(), !592)
    #dbg_declare(ptr %tmp, !598, !DIExpression(), !600)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %tmp, i8 0, i32 32, i1 false), !dbg !600
    #dbg_value(i32 %vecs, !601, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !603)
  br label %for.cond, !dbg !604

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !601, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !603)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !605
  br i1 %cmp, label %for.body, label %for.end, !dbg !607

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !608
    #dbg_value(i32 %i.0, !601, !DIExpression(), !603)
  %div1 = shl nsw i32 %i.0, 5, !dbg !609
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !611
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 32) #9, !dbg !612
  %mul3 = shl i32 %i.0, 5, !dbg !613
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul3, !dbg !614
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 32) #9, !dbg !615
    #dbg_value(i32 %i.0, !601, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !603)
  br label %for.cond, !dbg !616, !llvm.loop !617

for.end:                                          ; preds = %for.cond
  ret void, !dbg !619
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !620 {
entry:
  %S = alloca [560 x i8], align 1
    #dbg_value(ptr %p, !623, !DIExpression(), !624)
    #dbg_value(ptr %csk, !625, !DIExpression(), !624)
    #dbg_value(ptr %sk, !626, !DIExpression(), !624)
    #dbg_value(i32 0, !627, !DIExpression(), !624)
    #dbg_declare(ptr %S, !628, !DIExpression(), !629)
    #dbg_value(ptr %sk, !630, !DIExpression(), !624)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !631
    #dbg_value(ptr %add.ptr1, !632, !DIExpression(), !624)
    #dbg_value(i32 17, !633, !DIExpression(), !624)
    #dbg_value(i32 64, !634, !DIExpression(), !624)
    #dbg_value(i32 544, !635, !DIExpression(), !624)
    #dbg_value(i32 16, !636, !DIExpression(), !624)
    #dbg_value(i32 24, !637, !DIExpression(), !624)
    #dbg_value(ptr %csk, !638, !DIExpression(), !624)
    #dbg_value(ptr %S, !639, !DIExpression(), !624)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #7, !dbg !640
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !641
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1088) #7, !dbg !642
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #7, !dbg !643
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !644
    #dbg_value(ptr %add.ptr5, !645, !DIExpression(), !624)
    #dbg_value(ptr %sk, !646, !DIExpression(), !624)
    #dbg_value(ptr %add.ptr5, !647, !DIExpression(), !624)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #7, !dbg !648
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 560) #9, !dbg !649
  ret i32 0, !dbg !650
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !651 {
entry:
    #dbg_value(ptr %p, !652, !DIExpression(), !653)
    #dbg_value(ptr %P1, !654, !DIExpression(), !653)
    #dbg_value(ptr %O, !655, !DIExpression(), !653)
    #dbg_value(ptr %acc, !656, !DIExpression(), !653)
    #dbg_value(i32 17, !657, !DIExpression(), !653)
    #dbg_value(i32 64, !658, !DIExpression(), !653)
    #dbg_value(i32 4, !659, !DIExpression(), !653)
    #dbg_value(i32 0, !660, !DIExpression(), !653)
    #dbg_value(i32 0, !661, !DIExpression(), !663)
  br label %for.cond, !dbg !664

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 64, %entry ], !dbg !665
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !665
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !666
    #dbg_value(i32 %r.0, !661, !DIExpression(), !663)
    #dbg_value(i32 %bs_mat_entries_used.0, !660, !DIExpression(), !653)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !667
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !669

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !670
  br label %for.cond1, !dbg !670

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !653
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !673
    #dbg_value(i32 %c.0, !674, !DIExpression(), !675)
    #dbg_value(i32 %bs_mat_entries_used.1, !660, !DIExpression(), !653)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !676
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !670

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !678
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !678

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !681

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !683
    #dbg_value(i32 %k.0, !684, !DIExpression(), !685)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !686
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !681

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !688
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !688
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !690
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !691
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !691
  %2 = load i8, ptr %arrayidx, align 1, !dbg !691
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !692
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !693
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !694
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !694
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #7, !dbg !695
  %add.ptr15.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !696
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !696
  %mul16 = mul nuw nsw i32 %r.0, 17, !dbg !697
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !698
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !698
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !698
  %mul19 = mul nuw nsw i32 %c.0, 17, !dbg !699
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !700
  %add.ptr22.idx = shl nuw nsw i32 %add20, 5, !dbg !701
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !701
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #7, !dbg !702
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !703
    #dbg_value(i32 %add23, !684, !DIExpression(), !685)
  br label %for.cond5, !dbg !704, !llvm.loop !705

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !707

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !707
    #dbg_value(i32 %bs_mat_entries_used.2, !660, !DIExpression(), !653)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !708
    #dbg_value(i32 %inc, !674, !DIExpression(), !675)
  br label %for.cond1, !dbg !709, !llvm.loop !710

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !653
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !712
    #dbg_value(i32 %inc28, !661, !DIExpression(), !663)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !713
  br label %for.cond, !dbg !713, !llvm.loop !714

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !716
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !717 {
entry:
  %tenc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [64 x i8], align 1
  %salt = alloca [24 x i8], align 1
  %V = alloca [162 x i8], align 1
  %Vdec = alloca [256 x i8], align 1
  %A = alloca [4416 x i8], align 1
  %x = alloca [324 x i8], align 1
  %r = alloca [69 x i8], align 1
  %s = alloca [324 x i8], align 1
  %sk = alloca [12808 x i64], align 32
  %Ox = alloca [64 x i8], align 1
  %tmp = alloca [81 x i8], align 1
  %Mtmp = alloca [272 x i64], align 8
    #dbg_value(ptr %p, !721, !DIExpression(), !722)
    #dbg_value(ptr %sig, !723, !DIExpression(), !722)
    #dbg_value(ptr %siglen, !724, !DIExpression(), !722)
    #dbg_value(ptr %m, !725, !DIExpression(), !722)
    #dbg_value(i32 %mlen, !726, !DIExpression(), !722)
    #dbg_value(ptr %csk, !727, !DIExpression(), !722)
    #dbg_value(i32 0, !728, !DIExpression(), !722)
    #dbg_declare(ptr %tenc, !729, !DIExpression(), !730)
    #dbg_declare(ptr %t, !731, !DIExpression(), !735)
    #dbg_declare(ptr %y, !736, !DIExpression(), !737)
    #dbg_declare(ptr %salt, !738, !DIExpression(), !740)
    #dbg_declare(ptr %V, !741, !DIExpression(), !745)
    #dbg_declare(ptr %Vdec, !746, !DIExpression(), !750)
    #dbg_declare(ptr %A, !751, !DIExpression(), !755)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(4416) %A, i8 0, i32 4416, i1 false), !dbg !755
    #dbg_declare(ptr %x, !756, !DIExpression(), !760)
    #dbg_declare(ptr %r, !761, !DIExpression(), !765)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(69) %r, i8 0, i32 69, i1 false), !dbg !765
    #dbg_declare(ptr %s, !766, !DIExpression(), !767)
    #dbg_declare(ptr %sk, !768, !DIExpression(), !769)
    #dbg_declare(ptr %Ox, !770, !DIExpression(), !771)
    #dbg_declare(ptr %tmp, !772, !DIExpression(), !776)
    #dbg_value(i32 64, !777, !DIExpression(), !722)
    #dbg_value(i32 81, !778, !DIExpression(), !722)
    #dbg_value(i32 17, !779, !DIExpression(), !722)
    #dbg_value(i32 4, !780, !DIExpression(), !722)
    #dbg_value(i32 64, !781, !DIExpression(), !722)
    #dbg_value(i32 32, !782, !DIExpression(), !722)
    #dbg_value(i32 32, !783, !DIExpression(), !722)
    #dbg_value(i32 34, !784, !DIExpression(), !722)
    #dbg_value(i32 186, !785, !DIExpression(), !722)
    #dbg_value(i32 69, !786, !DIExpression(), !722)
    #dbg_value(i32 32, !787, !DIExpression(), !722)
    #dbg_value(i32 24, !788, !DIExpression(), !722)
    #dbg_value(i32 24, !789, !DIExpression(), !722)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #7, !dbg !790
    #dbg_value(i32 0, !728, !DIExpression(), !722)
    #dbg_value(ptr %csk, !791, !DIExpression(), !722)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #7, !dbg !792
    #dbg_value(ptr %sk, !793, !DIExpression(), !722)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !794
    #dbg_value(ptr %add.ptr, !795, !DIExpression(), !722)
    #dbg_declare(ptr %Mtmp, !796, !DIExpression(), !800)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2176) %Mtmp, i8 0, i32 2176, i1 false), !dbg !800
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !801
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #9, !dbg !803
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !804
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !804

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !805
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #9, !dbg !806
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #7, !dbg !807
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !808
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #9, !dbg !809
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !810
    #dbg_value(ptr %add.ptr24, !811, !DIExpression(), !722)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #7, !dbg !812
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 64) #7, !dbg !813
  store i8 0, ptr %add.ptr24, align 1, !dbg !814
  call void @shake256(ptr noundef nonnull %V, i32 noundef 162, ptr noundef nonnull %tmp, i32 noundef 81) #7, !dbg !815
    #dbg_value(i32 0, !816, !DIExpression(), !818)
  br label %for.cond, !dbg !819

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !820
    #dbg_value(i32 %i.0, !816, !DIExpression(), !818)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !821
  br i1 %exitcond, label %for.body, label %for.end, !dbg !823

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 5, !dbg !824
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !826
  %mul37 = shl nuw nsw i32 %i.0, 6, !dbg !827
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !828
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 64) #7, !dbg !829
  %inc = add nuw nsw i32 %i.0, 1, !dbg !830
    #dbg_value(i32 %inc, !816, !DIExpression(), !818)
  br label %for.cond, !dbg !831, !llvm.loop !832

for.end:                                          ; preds = %for.cond
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #7, !dbg !834
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #7, !dbg !835
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #7, !dbg !836
    #dbg_value(i32 0, !837, !DIExpression(), !839)
  br label %for.cond48, !dbg !840

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !841
    #dbg_value(i32 %i47.0, !837, !DIExpression(), !839)
  %exitcond1 = icmp ne i32 %i47.0, 64, !dbg !842
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !844

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 69, !dbg !845
  %sub = add nuw nsw i32 %0, 68, !dbg !847
  %arrayidx = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub, !dbg !848
  store i8 0, ptr %arrayidx, align 1, !dbg !849
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !850
    #dbg_value(i32 %inc53, !837, !DIExpression(), !839)
  br label %for.cond48, !dbg !851, !llvm.loop !852

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 128, !dbg !854
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 68) #7, !dbg !855
  %call62 = call i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 4, i32 noundef 17, i32 noundef 64, i32 noundef 69) #7, !dbg !856
  %tobool.not = icmp eq i32 %call62, 0, !dbg !856
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !856

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 2176) #9, !dbg !858
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 4416) #9, !dbg !860
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !861, !DIExpression(), !863)
  br label %for.cond70, !dbg !864

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !865
    #dbg_value(i32 %i69.0, !861, !DIExpression(), !863)
  %exitcond2 = icmp ne i32 %i69.0, 4, !dbg !866
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !868

for.body72:                                       ; preds = %for.cond70
  %mul74 = shl nuw nsw i32 %i69.0, 6, !dbg !869
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !871
    #dbg_value(ptr %add.ptr75, !872, !DIExpression(), !722)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !873
  %mul80 = mul nuw nsw i32 %i69.0, 17, !dbg !874
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !875
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 17, i32 noundef 64, i32 noundef 1) #7, !dbg !876
  %mul85 = mul nuw nsw i32 %i69.0, 81, !dbg !877
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !878
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 64, i32 noundef 1) #7, !dbg !879
  %mul88 = mul nuw nsw i32 %i69.0, 81, !dbg !880
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !881
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 64, !dbg !882
  %mul92 = mul nuw nsw i32 %i69.0, 17, !dbg !883
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !884
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 17) #9, !dbg !885
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !886
    #dbg_value(i32 %inc96, !861, !DIExpression(), !863)
  br label %for.cond70, !dbg !887, !llvm.loop !888

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 324) #7, !dbg !890
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !891
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 24) #9, !dbg !892
  store i32 186, ptr %siglen, align 4, !dbg !893
  br label %err, !dbg !894

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !722
    #dbg_value(i32 %ret.0, !728, !DIExpression(), !722)
    #dbg_label(!895, !896)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 162) #9, !dbg !897
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 256) #9, !dbg !898
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 4416) #9, !dbg !899
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 69) #9, !dbg !900
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1088) #9, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 102464) #9, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 64) #9, !dbg !904
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #9, !dbg !905
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 2176) #9, !dbg !906
  ret i32 %ret.0, !dbg !907
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !908 {
entry:
  %Pv = alloca [1024 x i64], align 8
    #dbg_value(ptr %p, !911, !DIExpression(), !912)
    #dbg_value(ptr %Vdec, !913, !DIExpression(), !912)
    #dbg_value(ptr %L, !914, !DIExpression(), !912)
    #dbg_value(ptr %P1, !915, !DIExpression(), !912)
    #dbg_value(ptr %VL, !916, !DIExpression(), !912)
    #dbg_value(ptr %VP1V, !917, !DIExpression(), !912)
    #dbg_value(i32 4, !918, !DIExpression(), !912)
    #dbg_value(i32 64, !919, !DIExpression(), !912)
    #dbg_value(i32 17, !920, !DIExpression(), !912)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 4, i32 noundef 64, i32 noundef 17) #7, !dbg !921
    #dbg_declare(ptr %Pv, !922, !DIExpression(), !926)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %Pv, i8 0, i32 8192, i1 false), !dbg !926
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #7, !dbg !927
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 4, i32 noundef 64, i32 noundef 4) #7, !dbg !928
  ret void, !dbg !929
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !930 {
entry:
  %temp = alloca [4 x i64], align 8
    #dbg_value(ptr %p, !933, !DIExpression(), !934)
    #dbg_value(ptr %vPv, !935, !DIExpression(), !934)
    #dbg_value(ptr %t, !936, !DIExpression(), !934)
    #dbg_value(ptr %y, !937, !DIExpression(), !934)
    #dbg_value(i32 60, !938, !DIExpression(), !934)
    #dbg_value(i32 4, !940, !DIExpression(), !934)
    #dbg_declare(ptr %temp, !941, !DIExpression(), !942)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %temp, i8 0, i32 32, i1 false), !dbg !942
    #dbg_value(ptr %temp, !943, !DIExpression(), !934)
    #dbg_value(i32 3, !944, !DIExpression(), !946)
  br label %for.cond, !dbg !947

for.cond:                                         ; preds = %for.inc65, %entry
  %i.0 = phi i32 [ 3, %entry ], [ %dec66, %for.inc65 ], !dbg !948
    #dbg_value(i32 %i.0, !944, !DIExpression(), !946)
  %cmp = icmp sgt i32 %i.0, -1, !dbg !949
  br i1 %cmp, label %for.cond1.preheader, label %for.cond69.preheader, !dbg !951

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !952

for.cond69.preheader:                             ; preds = %for.cond
  br label %for.cond69, !dbg !955

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc62
  %j.0 = phi i32 [ %inc63, %for.inc62 ], [ %i.0, %for.cond1.preheader ], !dbg !957
    #dbg_value(i32 %j.0, !958, !DIExpression(), !959)
  %exitcond6 = icmp ne i32 %j.0, 4, !dbg !960
  br i1 %exitcond6, label %for.body3, label %for.inc65, !dbg !952

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !962
  %0 = load i64, ptr %arrayidx, align 8, !dbg !962
  %shr = lshr i64 %0, 60, !dbg !964
    #dbg_value(i8 %conv, !965, !DIExpression(), !966)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !967
  %shl = shl i64 %0, 4, !dbg !968
  store i64 %shl, ptr %arrayidx4, align 8, !dbg !968
    #dbg_value(i32 2, !969, !DIExpression(), !971)
  br label %for.cond5, !dbg !972

for.cond5:                                        ; preds = %for.body8, %for.body3
  %k.0 = phi i32 [ 2, %for.body3 ], [ %dec, %for.body8 ], !dbg !973
    #dbg_value(i32 %k.0, !969, !DIExpression(), !971)
  %cmp6 = icmp sgt i32 %k.0, -1, !dbg !974
  br i1 %cmp6, label %for.body8, label %for.cond14.preheader, !dbg !976

for.cond14.preheader:                             ; preds = %for.cond5
  %conv = trunc nuw nsw i64 %shr to i8, !dbg !977
  br label %for.cond14, !dbg !978

for.body8:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !980
  %1 = load i64, ptr %arrayidx9, align 8, !dbg !980
  %shr10 = lshr i64 %1, 60, !dbg !982
  %add = add nuw nsw i32 %k.0, 1, !dbg !983
  %arrayidx11 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %add, !dbg !984
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !985
  %xor = xor i64 %2, %shr10, !dbg !985
  store i64 %xor, ptr %arrayidx11, align 8, !dbg !985
  %arrayidx12 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !986
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !987
  %shl13 = shl i64 %3, 4, !dbg !987
  store i64 %shl13, ptr %arrayidx12, align 8, !dbg !987
  %dec = add nsw i32 %k.0, -1, !dbg !988
    #dbg_value(i32 %dec, !969, !DIExpression(), !971)
  br label %for.cond5, !dbg !989, !llvm.loop !990

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc36
  %jj.0 = phi i32 [ %inc, %for.inc36 ], [ 0, %for.cond14.preheader ], !dbg !992
    #dbg_value(i32 %jj.0, !993, !DIExpression(), !994)
  %exitcond = icmp ne i32 %jj.0, 4, !dbg !995
  br i1 %exitcond, label %for.body17, label %for.cond39.preheader, !dbg !978

for.cond39.preheader:                             ; preds = %for.cond14
  br label %for.cond39, !dbg !997

for.body17:                                       ; preds = %for.cond14
  %rem18 = and i32 %jj.0, 1, !dbg !999
  %cmp19 = icmp eq i32 %rem18, 0, !dbg !1002
  br i1 %cmp19, label %if.then, label %if.else, !dbg !1002

if.then:                                          ; preds = %for.body17
  %arrayidx21 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1003
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !1003
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %4) #7, !dbg !1005
  %div = lshr exact i32 %jj.0, 1, !dbg !1006
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1007
  %5 = load i8, ptr %arrayidx23, align 1, !dbg !1008
  %xor254 = xor i8 %5, %call, !dbg !1008
  store i8 %xor254, ptr %arrayidx23, align 1, !dbg !1008
  br label %for.inc36, !dbg !1009

if.else:                                          ; preds = %for.body17
  %arrayidx27 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1010
  %6 = load i8, ptr %arrayidx27, align 1, !dbg !1010
  %call28 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %6) #7, !dbg !1012
  %shl30 = shl nuw i8 %call28, 4, !dbg !1013
  %div313 = lshr i32 %jj.0, 1, !dbg !1014
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %temp, i32 %div313, !dbg !1015
  %7 = load i8, ptr %arrayidx32, align 1, !dbg !1016
  %xor34 = xor i8 %shl30, %7, !dbg !1016
  store i8 %xor34, ptr %arrayidx32, align 1, !dbg !1016
  br label %for.inc36

for.inc36:                                        ; preds = %if.then, %if.else
  %inc = add nuw nsw i32 %jj.0, 1, !dbg !1017
    #dbg_value(i32 %inc, !993, !DIExpression(), !994)
  br label %for.cond14, !dbg !1018, !llvm.loop !1019

for.cond39:                                       ; preds = %for.cond39.preheader, %for.body42
  %k38.0 = phi i32 [ %inc60, %for.body42 ], [ 0, %for.cond39.preheader ], !dbg !1021
    #dbg_value(i32 %k38.0, !1022, !DIExpression(), !1023)
  %exitcond5 = icmp ne i32 %k38.0, 4, !dbg !1024
  br i1 %exitcond5, label %for.body42, label %for.inc62, !dbg !997

for.body42:                                       ; preds = %for.cond39
  %8 = shl i32 %i.0, 4, !dbg !1026
  %9 = shl i32 %j.0, 2, !dbg !1026
  %mul44 = add nsw i32 %8, %9, !dbg !1026
  %add45 = or disjoint i32 %mul44, %k38.0, !dbg !1028
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45, !dbg !1029
  %10 = load i64, ptr %arrayidx46, align 8, !dbg !1029
  %cmp47.not = icmp eq i32 %i.0, %j.0, !dbg !1030
  %11 = shl i32 %j.0, 4, !dbg !1031
  %12 = shl i32 %i.0, 2, !dbg !1031
  %mul52 = add nsw i32 %11, %12, !dbg !1031
  %add53 = or disjoint i32 %mul52, %k38.0, !dbg !1032
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53, !dbg !1033
  %13 = load i64, ptr %arrayidx54, align 8, !dbg !1033
  %mul55 = select i1 %cmp47.not, i64 0, i64 %13, !dbg !1034
  %xor56 = xor i64 %10, %mul55, !dbg !1035
  %arrayidx57 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k38.0, !dbg !1036
  %14 = load i64, ptr %arrayidx57, align 8, !dbg !1037
  %xor58 = xor i64 %14, %xor56, !dbg !1037
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1037
  %inc60 = add nuw nsw i32 %k38.0, 1, !dbg !1038
    #dbg_value(i32 %inc60, !1022, !DIExpression(), !1023)
  br label %for.cond39, !dbg !1039, !llvm.loop !1040

for.inc62:                                        ; preds = %for.cond39
  %inc63 = add nuw nsw i32 %j.0, 1, !dbg !1042
    #dbg_value(i32 %inc63, !958, !DIExpression(), !959)
  br label %for.cond1, !dbg !1043, !llvm.loop !1044

for.inc65:                                        ; preds = %for.cond1
  %dec66 = add nsw i32 %i.0, -1, !dbg !1046
    #dbg_value(i32 %dec66, !944, !DIExpression(), !946)
  br label %for.cond, !dbg !1047, !llvm.loop !1048

for.cond69:                                       ; preds = %for.cond69.preheader, %for.body72
  %i68.0 = phi i32 [ %add93, %for.body72 ], [ 0, %for.cond69.preheader ], !dbg !1050
    #dbg_value(i32 %i68.0, !1051, !DIExpression(), !1052)
  %cmp70 = icmp samesign ult i32 %i68.0, 64, !dbg !1053
  br i1 %cmp70, label %for.body72, label %for.end94, !dbg !955

for.body72:                                       ; preds = %for.cond69
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %t, i32 %i68.0, !dbg !1055
  %15 = load i8, ptr %arrayidx73, align 1, !dbg !1055
  %div75 = lshr exact i32 %i68.0, 1, !dbg !1057
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75, !dbg !1058
  %16 = load i8, ptr %arrayidx76, align 1, !dbg !1058
  %17 = and i8 %16, 15, !dbg !1059
  %xor781 = xor i8 %15, %17, !dbg !1060
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %y, i32 %i68.0, !dbg !1061
  store i8 %xor781, ptr %arrayidx80, align 1, !dbg !1062
  %add81 = or disjoint i32 %i68.0, 1, !dbg !1063
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %t, i32 %add81, !dbg !1064
  %18 = load i8, ptr %arrayidx82, align 1, !dbg !1064
  %div84 = lshr exact i32 %i68.0, 1, !dbg !1065
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %temp, i32 %div84, !dbg !1066
  %19 = load i8, ptr %arrayidx85, align 1, !dbg !1066
  %20 = lshr i8 %19, 4, !dbg !1067
  %xor882 = xor i8 %18, %20, !dbg !1068
  %add90 = or disjoint i32 %i68.0, 1, !dbg !1069
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %y, i32 %add90, !dbg !1070
  store i8 %xor882, ptr %arrayidx91, align 1, !dbg !1071
  %add93 = add nuw nsw i32 %i68.0, 2, !dbg !1072
    #dbg_value(i32 %add93, !1051, !DIExpression(), !1052)
  br label %for.cond69, !dbg !1073, !llvm.loop !1074

for.end94:                                        ; preds = %for.cond69
  ret void, !dbg !1076
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1077 {
entry:
  %A = alloca [640 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1080, !DIExpression(), !1081)
    #dbg_value(ptr %VtL, !1082, !DIExpression(), !1081)
    #dbg_value(ptr %A_out, !1083, !DIExpression(), !1081)
    #dbg_value(i32 0, !1084, !DIExpression(), !1081)
    #dbg_value(i32 0, !1085, !DIExpression(), !1081)
    #dbg_value(i32 4, !1086, !DIExpression(), !1081)
    #dbg_declare(ptr %A, !1087, !DIExpression(), !1091)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5120) %A, i8 0, i32 5120, i1 false), !dbg !1091
    #dbg_value(i32 80, !1092, !DIExpression(), !1081)
    #dbg_value(i32 0, !1093, !DIExpression(), !1095)
  br label %for.cond, !dbg !1096

for.cond:                                         ; preds = %for.inc90, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc91, %for.inc90 ], !dbg !1097
  %words_to_shift.0 = phi i32 [ 0, %entry ], [ %words_to_shift.1.lcssa, %for.inc90 ], !dbg !1098
  %bits_to_shift.0 = phi i32 [ 0, %entry ], [ %bits_to_shift.1.lcssa, %for.inc90 ], !dbg !1099
    #dbg_value(i32 %bits_to_shift.0, !1084, !DIExpression(), !1081)
    #dbg_value(i32 %words_to_shift.0, !1085, !DIExpression(), !1081)
    #dbg_value(i32 %i.0, !1093, !DIExpression(), !1095)
  %exitcond7 = icmp ne i32 %i.0, 4, !dbg !1100
  br i1 %exitcond7, label %for.cond1.preheader, label %for.cond94.preheader, !dbg !1102

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1103

for.cond94.preheader:                             ; preds = %for.cond
  br label %for.cond94, !dbg !1106

for.cond1:                                        ; preds = %for.cond1.preheader, %if.end82
  %j.0 = phi i32 [ %dec, %if.end82 ], [ 3, %for.cond1.preheader ], !dbg !1108
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end82 ], [ %words_to_shift.0, %for.cond1.preheader ], !dbg !1081
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end82 ], [ %bits_to_shift.0, %for.cond1.preheader ], !dbg !1081
    #dbg_value(i32 %bits_to_shift.1, !1084, !DIExpression(), !1081)
    #dbg_value(i32 %words_to_shift.1, !1085, !DIExpression(), !1081)
    #dbg_value(i32 %j.0, !1109, !DIExpression(), !1110)
  %cmp2.not = icmp slt i32 %j.0, %i.0, !dbg !1111
  br i1 %cmp2.not, label %for.inc90, label %for.body3, !dbg !1103

for.body3:                                        ; preds = %for.cond1
  %add.ptr.idx = mul nsw i32 %j.0, 544, !dbg !1113
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1113
    #dbg_value(ptr %add.ptr, !1115, !DIExpression(), !1081)
    #dbg_value(i32 0, !1116, !DIExpression(), !1118)
  br label %for.cond5, !dbg !1119

for.cond5:                                        ; preds = %for.inc31, %for.body3
  %c.0 = phi i32 [ 0, %for.body3 ], [ %inc32, %for.inc31 ], !dbg !1120
    #dbg_value(i32 %c.0, !1116, !DIExpression(), !1118)
  %exitcond4 = icmp ne i32 %c.0, 17, !dbg !1121
  br i1 %exitcond4, label %for.cond8.preheader, label %for.end33, !dbg !1123

for.cond8.preheader:                              ; preds = %for.cond5
  br label %for.cond8, !dbg !1124

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc
  %k.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond8.preheader ], !dbg !1127
    #dbg_value(i32 %k.0, !1128, !DIExpression(), !1129)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1130
  br i1 %exitcond, label %for.body10, label %for.inc31, !dbg !1124

for.body10:                                       ; preds = %for.cond8
  %mul11 = shl nuw nsw i32 %c.0, 2, !dbg !1132
  %add = or disjoint i32 %k.0, %mul11, !dbg !1134
  %arrayidx = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add, !dbg !1135
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1135
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1136
  %shl = shl i64 %0, %sh_prom, !dbg !1136
  %mul12 = mul nuw nsw i32 %i.0, 17, !dbg !1137
  %add13 = add nuw nsw i32 %mul12, %c.0, !dbg !1138
  %add14 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1139
  %mul15 = mul i32 %add14, 80, !dbg !1140
  %add16 = add i32 %add13, %mul15, !dbg !1141
  %arrayidx17 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16, !dbg !1142
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !1143
  %xor = xor i64 %1, %shl, !dbg !1143
  store i64 %xor, ptr %arrayidx17, align 8, !dbg !1143
  %cmp18 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp18, label %if.then, label %for.inc, !dbg !1144

if.then:                                          ; preds = %for.body10
  %mul19 = shl nuw nsw i32 %c.0, 2, !dbg !1146
  %add20 = or disjoint i32 %k.0, %mul19, !dbg !1148
  %arrayidx21 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20, !dbg !1149
  %2 = load i64, ptr %arrayidx21, align 8, !dbg !1149
  %sub = sub nsw i32 64, %bits_to_shift.1, !dbg !1150
  %sh_prom22 = zext nneg i32 %sub to i64, !dbg !1151
  %shr = lshr i64 %2, %sh_prom22, !dbg !1151
  %mul23 = mul nuw nsw i32 %i.0, 17, !dbg !1152
  %add24 = add nuw nsw i32 %mul23, %c.0, !dbg !1153
  %add25 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1154
  %3 = mul i32 %add25, 80, !dbg !1155
  %mul27 = add i32 %3, 80, !dbg !1155
  %add28 = add i32 %add24, %mul27, !dbg !1156
  %arrayidx29 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28, !dbg !1157
  %4 = load i64, ptr %arrayidx29, align 8, !dbg !1158
  %xor30 = xor i64 %4, %shr, !dbg !1158
  store i64 %xor30, ptr %arrayidx29, align 8, !dbg !1158
  br label %for.inc, !dbg !1159

for.inc:                                          ; preds = %for.body10, %if.then
  %inc = add nuw nsw i32 %k.0, 1, !dbg !1160
    #dbg_value(i32 %inc, !1128, !DIExpression(), !1129)
  br label %for.cond8, !dbg !1161, !llvm.loop !1162

for.inc31:                                        ; preds = %for.cond8
  %inc32 = add nuw nsw i32 %c.0, 1, !dbg !1164
    #dbg_value(i32 %inc32, !1116, !DIExpression(), !1118)
  br label %for.cond5, !dbg !1165, !llvm.loop !1166

for.end33:                                        ; preds = %for.cond5
  %cmp34.not = icmp eq i32 %i.0, %j.0, !dbg !1168
  br i1 %cmp34.not, label %if.end82, label %if.then35, !dbg !1168

if.then35:                                        ; preds = %for.end33
  %add.ptr38.idx = mul nuw nsw i32 %i.0, 544, !dbg !1170
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr38.idx, !dbg !1170
    #dbg_value(ptr %add.ptr38, !1172, !DIExpression(), !1081)
    #dbg_value(i32 0, !1173, !DIExpression(), !1175)
  br label %for.cond40, !dbg !1176

for.cond40:                                       ; preds = %for.inc79, %if.then35
  %c39.0 = phi i32 [ 0, %if.then35 ], [ %inc80, %for.inc79 ], !dbg !1177
    #dbg_value(i32 %c39.0, !1173, !DIExpression(), !1175)
  %exitcond6 = icmp ne i32 %c39.0, 17, !dbg !1178
  br i1 %exitcond6, label %for.cond44.preheader, label %if.end82.loopexit, !dbg !1180

for.cond44.preheader:                             ; preds = %for.cond40
  br label %for.cond44, !dbg !1181

for.cond44:                                       ; preds = %for.cond44.preheader, %for.inc76
  %k43.0 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.cond44.preheader ], !dbg !1184
    #dbg_value(i32 %k43.0, !1185, !DIExpression(), !1186)
  %exitcond5 = icmp ne i32 %k43.0, 4, !dbg !1187
  br i1 %exitcond5, label %for.body46, label %for.inc79, !dbg !1181

for.body46:                                       ; preds = %for.cond44
  %mul47 = shl nuw nsw i32 %c39.0, 2, !dbg !1189
  %add48 = or disjoint i32 %k43.0, %mul47, !dbg !1191
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48, !dbg !1192
  %5 = load i64, ptr %arrayidx49, align 8, !dbg !1192
  %sh_prom50 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1193
  %shl51 = shl i64 %5, %sh_prom50, !dbg !1193
  %mul52 = mul nsw i32 %j.0, 17, !dbg !1194
  %add53 = add nsw i32 %mul52, %c39.0, !dbg !1195
  %add54 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1196
  %mul55 = mul i32 %add54, 80, !dbg !1197
  %add56 = add i32 %add53, %mul55, !dbg !1198
  %arrayidx57 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56, !dbg !1199
  %6 = load i64, ptr %arrayidx57, align 8, !dbg !1200
  %xor58 = xor i64 %6, %shl51, !dbg !1200
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1200
  %cmp59 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1201
  br i1 %cmp59, label %if.then60, label %for.inc76, !dbg !1201

if.then60:                                        ; preds = %for.body46
  %mul61 = shl nuw nsw i32 %c39.0, 2, !dbg !1203
  %add62 = or disjoint i32 %k43.0, %mul61, !dbg !1205
  %arrayidx63 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62, !dbg !1206
  %7 = load i64, ptr %arrayidx63, align 8, !dbg !1206
  %sub64 = sub nsw i32 64, %bits_to_shift.1, !dbg !1207
  %sh_prom65 = zext nneg i32 %sub64 to i64, !dbg !1208
  %shr66 = lshr i64 %7, %sh_prom65, !dbg !1208
  %mul67 = mul nsw i32 %j.0, 17, !dbg !1209
  %add68 = add nsw i32 %mul67, %c39.0, !dbg !1210
  %add69 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1211
  %8 = mul i32 %add69, 80, !dbg !1212
  %mul71 = add i32 %8, 80, !dbg !1212
  %add72 = add i32 %add68, %mul71, !dbg !1213
  %arrayidx73 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72, !dbg !1214
  %9 = load i64, ptr %arrayidx73, align 8, !dbg !1215
  %xor74 = xor i64 %9, %shr66, !dbg !1215
  store i64 %xor74, ptr %arrayidx73, align 8, !dbg !1215
  br label %for.inc76, !dbg !1216

for.inc76:                                        ; preds = %for.body46, %if.then60
  %inc77 = add nuw nsw i32 %k43.0, 1, !dbg !1217
    #dbg_value(i32 %inc77, !1185, !DIExpression(), !1186)
  br label %for.cond44, !dbg !1218, !llvm.loop !1219

for.inc79:                                        ; preds = %for.cond44
  %inc80 = add nuw nsw i32 %c39.0, 1, !dbg !1221
    #dbg_value(i32 %inc80, !1173, !DIExpression(), !1175)
  br label %for.cond40, !dbg !1222, !llvm.loop !1223

if.end82.loopexit:                                ; preds = %for.cond40
  br label %if.end82, !dbg !1225

if.end82:                                         ; preds = %if.end82.loopexit, %for.end33
  %add83 = add nsw i32 %bits_to_shift.1, 4, !dbg !1225
    #dbg_value(i32 %add83, !1084, !DIExpression(), !1081)
  %cmp84 = icmp eq i32 %add83, 64, !dbg !1226
  %inc86 = zext i1 %cmp84 to i32, !dbg !1226
  %spec.select = add nsw i32 %words_to_shift.1, %inc86, !dbg !1226
  %spec.select3 = select i1 %cmp84, i32 0, i32 %add83, !dbg !1226
    #dbg_value(i32 %spec.select3, !1084, !DIExpression(), !1081)
    #dbg_value(i32 %spec.select, !1085, !DIExpression(), !1081)
  %dec = add nsw i32 %j.0, -1, !dbg !1228
    #dbg_value(i32 %dec, !1109, !DIExpression(), !1110)
  br label %for.cond1, !dbg !1229, !llvm.loop !1230

for.inc90:                                        ; preds = %for.cond1
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond1 ], !dbg !1081
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond1 ], !dbg !1081
  %inc91 = add nuw nsw i32 %i.0, 1, !dbg !1232
    #dbg_value(i32 %inc91, !1093, !DIExpression(), !1095)
  br label %for.cond, !dbg !1233, !llvm.loop !1234

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %c93.0 = phi i32 [ %add100, %for.body97 ], [ 0, %for.cond94.preheader ], !dbg !1236
    #dbg_value(i32 %c93.0, !1237, !DIExpression(), !1238)
  %cmp96 = icmp samesign ult i32 %c93.0, 400, !dbg !1239
  br i1 %cmp96, label %for.body97, label %for.end101, !dbg !1106

for.body97:                                       ; preds = %for.cond94
  %add.ptr98 = getelementptr inbounds nuw i64, ptr %A, i32 %c93.0, !dbg !1241
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr98) #7, !dbg !1243
  %add100 = add nuw nsw i32 %c93.0, 16, !dbg !1244
    #dbg_value(i32 %add100, !1237, !DIExpression(), !1238)
  br label %for.cond94, !dbg !1245, !llvm.loop !1246

for.end101:                                       ; preds = %for.cond94
    #dbg_declare(ptr %tab, !1248, !DIExpression(), !1252)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1252
    #dbg_value(i32 0, !1253, !DIExpression(), !1255)
  br label %for.cond103, !dbg !1256

for.cond103:                                      ; preds = %for.body105, %for.end101
  %i102.0 = phi i32 [ 0, %for.end101 ], [ %inc125, %for.body105 ], !dbg !1257
    #dbg_value(i32 %i102.0, !1253, !DIExpression(), !1255)
  %exitcond8 = icmp ne i32 %i102.0, 4, !dbg !1258
  br i1 %exitcond8, label %for.body105, label %for.cond128.preheader, !dbg !1260

for.cond128.preheader:                            ; preds = %for.cond103
  br label %for.cond128, !dbg !1261

for.body105:                                      ; preds = %for.cond103
  %arrayidx106 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1263
  %10 = load i8, ptr %arrayidx106, align 1, !dbg !1263
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 1) #7, !dbg !1265
  %mul107 = shl nuw nsw i32 %i102.0, 2, !dbg !1266
  %arrayidx108 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107, !dbg !1267
  store i8 %call, ptr %arrayidx108, align 1, !dbg !1268
  %call110 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 2) #7, !dbg !1269
  %mul111 = shl nuw nsw i32 %i102.0, 2, !dbg !1270
  %add112 = or disjoint i32 %mul111, 1, !dbg !1271
  %arrayidx113 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112, !dbg !1272
  store i8 %call110, ptr %arrayidx113, align 1, !dbg !1273
  %arrayidx114 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1274
  %11 = load i8, ptr %arrayidx114, align 1, !dbg !1274
  %call115 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %11, i8 noundef zeroext 4) #7, !dbg !1275
  %mul116 = shl nuw nsw i32 %i102.0, 2, !dbg !1276
  %add117 = or disjoint i32 %mul116, 2, !dbg !1277
  %arrayidx118 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117, !dbg !1278
  store i8 %call115, ptr %arrayidx118, align 1, !dbg !1279
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1280
  %12 = load i8, ptr %arrayidx119, align 1, !dbg !1280
  %call120 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %12, i8 noundef zeroext 8) #7, !dbg !1281
  %mul121 = shl nuw nsw i32 %i102.0, 2, !dbg !1282
  %add122 = or disjoint i32 %mul121, 3, !dbg !1283
  %arrayidx123 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122, !dbg !1284
  store i8 %call120, ptr %arrayidx123, align 1, !dbg !1285
  %inc125 = add nuw nsw i32 %i102.0, 1, !dbg !1286
    #dbg_value(i32 %inc125, !1253, !DIExpression(), !1255)
  br label %for.cond103, !dbg !1287, !llvm.loop !1288

for.cond128:                                      ; preds = %for.cond128.preheader, %for.inc189
  %c127.0 = phi i32 [ %add190, %for.inc189 ], [ 0, %for.cond128.preheader ], !dbg !1290
    #dbg_value(i32 %c127.0, !1291, !DIExpression(), !1292)
  %cmp129 = icmp samesign ult i32 %c127.0, 80, !dbg !1293
  br i1 %cmp129, label %for.cond131.preheader, label %for.cond193.preheader, !dbg !1261

for.cond131.preheader:                            ; preds = %for.cond128
  br label %for.cond131, !dbg !1295

for.cond193.preheader:                            ; preds = %for.cond128
  br label %for.cond193, !dbg !1298

for.cond131:                                      ; preds = %for.cond131.preheader, %for.inc186
  %r.0 = phi i32 [ %inc187, %for.inc186 ], [ 64, %for.cond131.preheader ], !dbg !1300
    #dbg_value(i32 %r.0, !1301, !DIExpression(), !1302)
  %exitcond10 = icmp ne i32 %r.0, 74, !dbg !1303
  br i1 %exitcond10, label %for.body133, label %for.inc189, !dbg !1295

for.body133:                                      ; preds = %for.cond131
  %div1 = lshr i32 %r.0, 4, !dbg !1305
  %mul134 = mul nuw nsw i32 %div1, 80, !dbg !1307
  %add135 = add nuw nsw i32 %mul134, %c127.0, !dbg !1308
  %rem = and i32 %r.0, 15, !dbg !1309
  %add136 = or disjoint i32 %add135, %rem, !dbg !1310
    #dbg_value(i32 %add136, !1311, !DIExpression(), !1312)
  %arrayidx137 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1313
  %13 = load i64, ptr %arrayidx137, align 8, !dbg !1313
  %and = and i64 %13, 1229782938247303441, !dbg !1314
    #dbg_value(i64 %and, !1315, !DIExpression(), !1312)
  %shr139 = lshr i64 %13, 1, !dbg !1316
  %and140 = and i64 %shr139, 1229782938247303441, !dbg !1317
    #dbg_value(i64 %and140, !1318, !DIExpression(), !1312)
  %shr142 = lshr i64 %13, 2, !dbg !1319
  %and143 = and i64 %shr142, 1229782938247303441, !dbg !1320
    #dbg_value(i64 %and143, !1321, !DIExpression(), !1312)
  %arrayidx144 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1322
  %14 = load i64, ptr %arrayidx144, align 8, !dbg !1322
  %shr145 = lshr i64 %14, 3, !dbg !1323
  %and146 = and i64 %shr145, 1229782938247303441, !dbg !1324
    #dbg_value(i64 %and146, !1325, !DIExpression(), !1312)
    #dbg_value(i32 0, !1326, !DIExpression(), !1328)
  br label %for.cond147, !dbg !1329

for.cond147:                                      ; preds = %for.body149, %for.body133
  %t.0 = phi i32 [ 0, %for.body133 ], [ %inc184, %for.body149 ], !dbg !1330
    #dbg_value(i32 %t.0, !1326, !DIExpression(), !1328)
  %exitcond9 = icmp ne i32 %t.0, 4, !dbg !1331
  br i1 %exitcond9, label %for.body149, label %for.inc186, !dbg !1333

for.body149:                                      ; preds = %for.cond147
  %mul150 = shl nuw nsw i32 %t.0, 2, !dbg !1334
  %arrayidx152 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul150, !dbg !1336
  %15 = load i8, ptr %arrayidx152, align 1, !dbg !1336
  %conv = zext i8 %15 to i64, !dbg !1336
  %mul153 = mul i64 %and, %conv, !dbg !1337
  %mul154 = shl nuw nsw i32 %t.0, 2, !dbg !1338
  %add155 = or disjoint i32 %mul154, 1, !dbg !1339
  %arrayidx156 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add155, !dbg !1340
  %16 = load i8, ptr %arrayidx156, align 1, !dbg !1340
  %conv157 = zext i8 %16 to i64, !dbg !1340
  %mul158 = mul i64 %and140, %conv157, !dbg !1341
  %xor159 = xor i64 %mul153, %mul158, !dbg !1342
  %mul160 = shl nuw nsw i32 %t.0, 2, !dbg !1343
  %add161 = or disjoint i32 %mul160, 2, !dbg !1344
  %arrayidx162 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add161, !dbg !1345
  %17 = load i8, ptr %arrayidx162, align 1, !dbg !1345
  %conv163 = zext i8 %17 to i64, !dbg !1345
  %mul164 = mul i64 %and143, %conv163, !dbg !1346
  %xor165 = xor i64 %xor159, %mul164, !dbg !1347
  %mul166 = shl nuw nsw i32 %t.0, 2, !dbg !1348
  %add167 = or disjoint i32 %mul166, 3, !dbg !1349
  %arrayidx168 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add167, !dbg !1350
  %18 = load i8, ptr %arrayidx168, align 1, !dbg !1350
  %conv169 = zext i8 %18 to i64, !dbg !1350
  %mul170 = mul i64 %and146, %conv169, !dbg !1351
  %xor171 = xor i64 %xor165, %mul170, !dbg !1352
  %add172 = add nuw nsw i32 %r.0, %t.0, !dbg !1353
  %sub173 = add nsw i32 %add172, -64, !dbg !1354
  %div1742 = lshr i32 %sub173, 4, !dbg !1355
  %mul175 = mul i32 %div1742, 80, !dbg !1356
  %add176 = add i32 %mul175, %c127.0, !dbg !1357
  %add177 = add nuw nsw i32 %r.0, %t.0, !dbg !1358
  %rem179 = and i32 %add177, 15, !dbg !1359
  %add180 = or disjoint i32 %add176, %rem179, !dbg !1360
  %arrayidx181 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180, !dbg !1361
  %19 = load i64, ptr %arrayidx181, align 8, !dbg !1362
  %xor182 = xor i64 %19, %xor171, !dbg !1362
  store i64 %xor182, ptr %arrayidx181, align 8, !dbg !1362
  %inc184 = add nuw nsw i32 %t.0, 1, !dbg !1363
    #dbg_value(i32 %inc184, !1326, !DIExpression(), !1328)
  br label %for.cond147, !dbg !1364, !llvm.loop !1365

for.inc186:                                       ; preds = %for.cond147
  %inc187 = add nuw nsw i32 %r.0, 1, !dbg !1367
    #dbg_value(i32 %inc187, !1301, !DIExpression(), !1302)
  br label %for.cond131, !dbg !1368, !llvm.loop !1369

for.inc189:                                       ; preds = %for.cond131
  %add190 = add nuw nsw i32 %c127.0, 16, !dbg !1371
    #dbg_value(i32 %add190, !1291, !DIExpression(), !1292)
  br label %for.cond128, !dbg !1372, !llvm.loop !1373

for.cond193:                                      ; preds = %for.cond193.preheader, %for.inc227
  %indvars.iv = phi i32 [ 64, %for.cond193.preheader ], [ %indvars.iv.next, %for.inc227 ], !dbg !1375
  %r192.0 = phi i32 [ %add228, %for.inc227 ], [ 0, %for.cond193.preheader ], !dbg !1375
    #dbg_value(i32 %r192.0, !1376, !DIExpression(), !1377)
  %cmp194 = icmp samesign ult i32 %r192.0, 64, !dbg !1378
  br i1 %cmp194, label %for.cond198.preheader, label %for.end229, !dbg !1298

for.cond198.preheader:                            ; preds = %for.cond193
  br label %for.cond198, !dbg !1380

for.cond198:                                      ; preds = %for.cond198.preheader, %for.inc224
  %c197.0 = phi i32 [ %add225, %for.inc224 ], [ 0, %for.cond198.preheader ], !dbg !1383
    #dbg_value(i32 %c197.0, !1384, !DIExpression(), !1385)
  %cmp199 = icmp samesign ult i32 %c197.0, 68, !dbg !1386
  br i1 %cmp199, label %for.cond203.preheader, label %for.inc227, !dbg !1380

for.cond203.preheader:                            ; preds = %for.cond198
  br label %for.cond203, !dbg !1388

for.cond203:                                      ; preds = %for.cond203.preheader, %for.body207
  %i202.0 = phi i32 [ %inc222, %for.body207 ], [ 0, %for.cond203.preheader ], !dbg !1391
    #dbg_value(i32 %i202.0, !1392, !DIExpression(), !1393)
  %exitcond11 = icmp ne i32 %i202.0, %indvars.iv, !dbg !1394
  br i1 %exitcond11, label %for.body207, label %for.inc224, !dbg !1388

for.body207:                                      ; preds = %for.cond203
  %div209 = mul nuw nsw i32 %r192.0, 5, !dbg !1396
  %add210 = add nuw nsw i32 %div209, %c197.0, !dbg !1398
  %add211 = add nuw nsw i32 %add210, %i202.0, !dbg !1399
  %arrayidx212 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211, !dbg !1400
  %add213 = add nuw nsw i32 %r192.0, %i202.0, !dbg !1401
  %mul214 = mul nuw nsw i32 %add213, 69, !dbg !1402
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214, !dbg !1403
  %add.ptr216 = getelementptr inbounds nuw i8, ptr %add.ptr215, i32 %c197.0, !dbg !1404
  %cmp218 = icmp samesign ult i32 %c197.0, 52, !dbg !1405
  %sub220 = sub nsw i32 68, %c197.0, !dbg !1405
  %cond = select i1 %cmp218, i32 16, i32 %sub220, !dbg !1405
  call fastcc void @decode(ptr noundef nonnull %arrayidx212, ptr noundef nonnull %add.ptr216, i32 noundef %cond) #7, !dbg !1406
  %inc222 = add nuw nsw i32 %i202.0, 1, !dbg !1407
    #dbg_value(i32 %inc222, !1392, !DIExpression(), !1393)
  br label %for.cond203, !dbg !1408, !llvm.loop !1409

for.inc224:                                       ; preds = %for.cond203
  %add225 = add nuw nsw i32 %c197.0, 16, !dbg !1411
    #dbg_value(i32 %add225, !1384, !DIExpression(), !1385)
  br label %for.cond198, !dbg !1412, !llvm.loop !1413

for.inc227:                                       ; preds = %for.cond198
  %add228 = add nuw nsw i32 %r192.0, 16, !dbg !1415
    #dbg_value(i32 %add228, !1376, !DIExpression(), !1377)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1416
  br label %for.cond193, !dbg !1416, !llvm.loop !1417

for.end229:                                       ; preds = %for.cond193
  ret void, !dbg !1419
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1420 {
entry:
    #dbg_value(ptr %a, !1423, !DIExpression(), !1424)
    #dbg_value(ptr %b, !1425, !DIExpression(), !1424)
    #dbg_value(ptr %c, !1426, !DIExpression(), !1424)
    #dbg_value(i32 17, !1427, !DIExpression(), !1424)
    #dbg_value(i32 64, !1428, !DIExpression(), !1424)
    #dbg_value(i32 1, !1429, !DIExpression(), !1424)
    #dbg_value(i32 0, !1430, !DIExpression(), !1432)
  br label %for.cond, !dbg !1433

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1434
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1423, !DIExpression(), !1424)
    #dbg_value(ptr %c.addr.0, !1426, !DIExpression(), !1424)
    #dbg_value(i32 %i.0, !1430, !DIExpression(), !1432)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1435
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1437

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1438

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1441
    #dbg_value(i32 poison, !1442, !DIExpression(), !1443)
    #dbg_value(ptr %c.addr.1, !1426, !DIExpression(), !1424)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1438

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 17, i32 noundef 1) #7, !dbg !1444
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1447
    #dbg_value(i32 1, !1442, !DIExpression(), !1443)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1448
    #dbg_value(ptr %incdec.ptr, !1426, !DIExpression(), !1424)
  br label %for.cond1, !dbg !1449, !llvm.loop !1450

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1452
    #dbg_value(i32 %inc5, !1430, !DIExpression(), !1432)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 17, !dbg !1453
    #dbg_value(ptr %add.ptr6, !1423, !DIExpression(), !1424)
  br label %for.cond, !dbg !1454, !llvm.loop !1455

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1457
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1458 {
entry:
    #dbg_value(ptr %a, !1461, !DIExpression(), !1462)
    #dbg_value(ptr %b, !1463, !DIExpression(), !1462)
    #dbg_value(ptr %c, !1464, !DIExpression(), !1462)
    #dbg_value(i32 64, !1465, !DIExpression(), !1462)
    #dbg_value(i32 1, !1466, !DIExpression(), !1462)
    #dbg_value(i32 0, !1467, !DIExpression(), !1469)
  br label %for.cond, !dbg !1470

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1471
    #dbg_value(i32 %i.0, !1467, !DIExpression(), !1469)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1472
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1474

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1475, !DIExpression(), !1478)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1479
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1482
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1483
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1484
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !1485
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1486
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1487
    #dbg_value(i32 1, !1475, !DIExpression(), !1478)
    #dbg_value(i32 poison, !1475, !DIExpression(), !1478)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1488
    #dbg_value(i32 %inc12, !1467, !DIExpression(), !1469)
  br label %for.cond, !dbg !1489, !llvm.loop !1490

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1492
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1493 {
entry:
    #dbg_value(ptr %m, !1494, !DIExpression(), !1495)
    #dbg_value(ptr %menc, !1496, !DIExpression(), !1495)
    #dbg_value(i32 324, !1497, !DIExpression(), !1495)
    #dbg_value(i32 0, !1498, !DIExpression(), !1495)
  br label %for.cond, !dbg !1499

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1501
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1494, !DIExpression(), !1495)
    #dbg_value(i32 %i.0, !1498, !DIExpression(), !1495)
  %exitcond = icmp ne i32 %i.0, 162, !dbg !1502
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1504

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1505
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1507
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1508
  %shl = shl i8 %1, 4, !dbg !1509
  %or = or i8 %shl, %0, !dbg !1510
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1511
  store i8 %or, ptr %arrayidx, align 1, !dbg !1512
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1513
    #dbg_value(i32 %inc, !1498, !DIExpression(), !1495)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1514
    #dbg_value(ptr %add.ptr3, !1494, !DIExpression(), !1495)
  br label %for.cond, !dbg !1515, !llvm.loop !1516

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1518
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1519 {
entry:
    #dbg_value(i8 %a, !1522, !DIExpression(), !1523)
    #dbg_value(i8 %b, !1524, !DIExpression(), !1523)
  %xor1 = xor i8 %a, %b, !dbg !1525
  ret i8 %xor1, !dbg !1526
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1527 {
entry:
    #dbg_value(ptr %a, !1530, !DIExpression(), !1531)
    #dbg_value(ptr %b, !1532, !DIExpression(), !1531)
    #dbg_value(i32 17, !1533, !DIExpression(), !1531)
    #dbg_value(i32 1, !1534, !DIExpression(), !1531)
    #dbg_value(i8 0, !1535, !DIExpression(), !1531)
    #dbg_value(i32 0, !1536, !DIExpression(), !1538)
  br label %for.cond, !dbg !1539

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1531
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1540
    #dbg_value(i32 %i.0, !1536, !DIExpression(), !1538)
    #dbg_value(ptr %b.addr.0, !1532, !DIExpression(), !1531)
    #dbg_value(i8 %ret.0, !1535, !DIExpression(), !1531)
  %exitcond = icmp ne i32 %i.0, 17, !dbg !1541
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1543

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1544
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1544
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1546
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !1547
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #7, !dbg !1548
    #dbg_value(i8 %call1, !1535, !DIExpression(), !1531)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1549
    #dbg_value(i32 %inc, !1536, !DIExpression(), !1538)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1550
    #dbg_value(ptr %add.ptr, !1532, !DIExpression(), !1531)
  br label %for.cond, !dbg !1551, !llvm.loop !1552

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1531
  ret i8 %ret.0.lcssa, !dbg !1554
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1555 {
entry:
    #dbg_value(i8 %a, !1556, !DIExpression(), !1557)
    #dbg_value(i8 %b, !1558, !DIExpression(), !1557)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !1559
  %xor1 = xor i8 %a, %0, !dbg !1560
    #dbg_value(i8 %xor1, !1556, !DIExpression(), !1557)
  %1 = trunc i8 %xor1 to i1, !dbg !1561
    #dbg_value(i8 poison, !1562, !DIExpression(), !1557)
  %2 = and i8 %xor1, 2, !dbg !1563
  %mul9 = mul i8 %2, %b, !dbg !1564
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1561
  %xor11 = xor i8 %conv10, %mul9, !dbg !1565
    #dbg_value(i8 %xor11, !1562, !DIExpression(), !1557)
  %3 = and i8 %xor1, 4, !dbg !1566
  %mul16 = mul i8 %3, %b, !dbg !1567
  %xor18 = xor i8 %mul16, %xor11, !dbg !1568
    #dbg_value(i8 %xor18, !1562, !DIExpression(), !1557)
  %4 = and i8 %xor1, 8, !dbg !1569
  %mul23 = mul i8 %4, %b, !dbg !1570
  %xor25 = xor i8 %mul23, %xor18, !dbg !1571
    #dbg_value(i8 %xor25, !1562, !DIExpression(), !1557)
    #dbg_value(i8 %xor25, !1572, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1557)
  %5 = lshr i8 %xor25, 4, !dbg !1573
  %6 = lshr i8 %xor25, 3, !dbg !1574
  %7 = and i8 %6, 14, !dbg !1574
  %8 = xor i8 %5, %7, !dbg !1575
  %xor25.masked = and i8 %xor25, 15, !dbg !1576
  %9 = xor i8 %8, %xor25.masked, !dbg !1576
    #dbg_value(i8 %9, !1577, !DIExpression(), !1557)
  ret i8 %9, !dbg !1578
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1579, !DIExpression(), !1580)
    #dbg_value(i32 0, !1581, !DIExpression(), !1583)
  br label %for.cond, !dbg !1584

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1585
    #dbg_value(i32 %i.0, !1581, !DIExpression(), !1583)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1586
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1588

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1589

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1591
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1591
  %shr = lshr i64 %0, 4, !dbg !1593
  %add = or disjoint i32 %i.0, 1, !dbg !1594
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1595
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1595
  %xor = xor i64 %shr, %1, !dbg !1596
  %and = and i64 %xor, 1085102592571150095, !dbg !1597
    #dbg_value(i64 %and, !1598, !DIExpression(), !1599)
  %shl = shl nuw i64 %and, 4, !dbg !1600
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1601
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1602
  %xor3 = xor i64 %2, %shl, !dbg !1602
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1602
  %add4 = or disjoint i32 %i.0, 1, !dbg !1603
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1604
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1605
  %xor6 = xor i64 %3, %and, !dbg !1605
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1605
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1606
    #dbg_value(i32 %add7, !1581, !DIExpression(), !1583)
  br label %for.cond, !dbg !1607, !llvm.loop !1608

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1610
    #dbg_value(i32 %i8.0, !1611, !DIExpression(), !1612)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1613
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1589

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1615

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1617
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1617
  %shr13 = lshr i64 %4, 8, !dbg !1619
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1620
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1621
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1621
  %xor16 = xor i64 %shr13, %5, !dbg !1622
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1623
    #dbg_value(i64 %and17, !1624, !DIExpression(), !1625)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1626
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1627
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1627
  %shr20 = lshr i64 %6, 8, !dbg !1628
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1629
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1630
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1630
  %xor23 = xor i64 %shr20, %7, !dbg !1631
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1632
    #dbg_value(i64 %and24, !1633, !DIExpression(), !1625)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1634
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1635
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1636
  %xor27 = xor i64 %8, %shl25, !dbg !1636
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1636
  %shl28 = shl nuw i64 %and24, 8, !dbg !1637
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1638
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1639
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1640
  %xor31 = xor i64 %9, %shl28, !dbg !1640
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1640
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1641
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1642
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1643
  %xor34 = xor i64 %10, %and17, !dbg !1643
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1643
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1644
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1645
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1646
  %xor37 = xor i64 %11, %and24, !dbg !1646
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1646
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1647
    #dbg_value(i32 %add39, !1611, !DIExpression(), !1612)
  br label %for.cond9, !dbg !1648, !llvm.loop !1649

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1651
    #dbg_value(i32 %i41.0, !1652, !DIExpression(), !1653)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1654
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1615

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1656

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1658
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1658
  %shr47 = lshr i64 %12, 16, !dbg !1660
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1661
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1662
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1662
  %xor50 = xor i64 %shr47, %13, !dbg !1663
  %and51 = and i64 %xor50, 281470681808895, !dbg !1664
    #dbg_value(i64 %and51, !1665, !DIExpression(), !1666)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1667
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1668
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1668
  %shr55 = lshr i64 %14, 16, !dbg !1669
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1670
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1671
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1671
  %xor58 = xor i64 %shr55, %15, !dbg !1672
  %and59 = and i64 %xor58, 281470681808895, !dbg !1673
    #dbg_value(i64 %and59, !1674, !DIExpression(), !1666)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1675
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1676
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1677
  %xor62 = xor i64 %16, %shl60, !dbg !1677
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1677
  %shl63 = shl nuw i64 %and59, 16, !dbg !1678
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1679
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1680
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1681
  %xor66 = xor i64 %17, %shl63, !dbg !1681
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1681
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1682
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1683
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1684
  %xor69 = xor i64 %18, %and51, !dbg !1684
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1684
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1685
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1686
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1687
  %xor72 = xor i64 %19, %and59, !dbg !1687
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1687
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1688
    #dbg_value(i32 %inc, !1652, !DIExpression(), !1653)
  br label %for.cond42, !dbg !1689, !llvm.loop !1690

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1692
    #dbg_value(i32 %i75.0, !1693, !DIExpression(), !1694)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1695
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1656

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1697
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1697
  %shr81 = lshr i64 %20, 32, !dbg !1699
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1700
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1701
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1701
  %.masked = and i64 %21, 4294967295, !dbg !1702
  %and85 = xor i64 %shr81, %.masked, !dbg !1702
    #dbg_value(i64 %and85, !1703, !DIExpression(), !1704)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1705
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1706
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1707
  %xor88 = xor i64 %22, %shl86, !dbg !1707
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1707
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1708
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1709
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1710
  %xor91 = xor i64 %23, %and85, !dbg !1710
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1710
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1711
    #dbg_value(i32 %inc93, !1693, !DIExpression(), !1694)
  br label %for.cond76, !dbg !1712, !llvm.loop !1713

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1715
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 4, 18) %bs_mat_cols) unnamed_addr #0 !dbg !1716 {
entry:
    #dbg_value(i32 4, !1717, !DIExpression(), !1718)
    #dbg_value(ptr %mat, !1719, !DIExpression(), !1718)
    #dbg_value(ptr %bs_mat, !1720, !DIExpression(), !1718)
    #dbg_value(ptr %acc, !1721, !DIExpression(), !1718)
    #dbg_value(i32 4, !1722, !DIExpression(), !1718)
    #dbg_value(i32 64, !1723, !DIExpression(), !1718)
    #dbg_value(i32 %bs_mat_cols, !1724, !DIExpression(), !1718)
    #dbg_value(i32 0, !1725, !DIExpression(), !1727)
  br label %for.cond, !dbg !1728

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1729
    #dbg_value(i32 %r.0, !1725, !DIExpression(), !1727)
  %exitcond2 = icmp ne i32 %r.0, 4, !dbg !1730
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1732

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1733

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1736
    #dbg_value(i32 %c.0, !1737, !DIExpression(), !1738)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !1739
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1733

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1741

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1744
    #dbg_value(i32 %k.0, !1745, !DIExpression(), !1746)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1747
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1741

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1749
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1751
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !1752
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1752
  %mul8 = shl nuw nsw i32 %r.0, 6, !dbg !1753
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1754
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1754
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1754
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1755
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1756
  %add.ptr13.idx = shl nsw i32 %add11, 5, !dbg !1757
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1757
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !1758
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1759
    #dbg_value(i32 %add14, !1745, !DIExpression(), !1746)
  br label %for.cond4, !dbg !1760, !llvm.loop !1761

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1763
    #dbg_value(i32 %inc, !1737, !DIExpression(), !1738)
  br label %for.cond1, !dbg !1764, !llvm.loop !1765

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1767
    #dbg_value(i32 %inc18, !1725, !DIExpression(), !1727)
  br label %for.cond, !dbg !1768, !llvm.loop !1769

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1771
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1772 {
entry:
    #dbg_value(ptr %p, !1773, !DIExpression(), !1774)
    #dbg_value(ptr %P1, !1775, !DIExpression(), !1774)
    #dbg_value(ptr %V, !1776, !DIExpression(), !1774)
    #dbg_value(ptr %acc, !1777, !DIExpression(), !1774)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 4, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 4, i32 noundef 1) #7, !dbg !1778
  ret void, !dbg !1779
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1780 {
entry:
    #dbg_value(i32 4, !1781, !DIExpression(), !1782)
    #dbg_value(ptr %bs_mat, !1783, !DIExpression(), !1782)
    #dbg_value(ptr %mat, !1784, !DIExpression(), !1782)
    #dbg_value(ptr %acc, !1785, !DIExpression(), !1782)
    #dbg_value(i32 64, !1786, !DIExpression(), !1782)
    #dbg_value(i32 64, !1787, !DIExpression(), !1782)
    #dbg_value(i32 4, !1788, !DIExpression(), !1782)
    #dbg_value(i32 1, !1789, !DIExpression(), !1782)
    #dbg_value(i32 0, !1790, !DIExpression(), !1782)
    #dbg_value(i32 0, !1791, !DIExpression(), !1793)
  br label %for.cond, !dbg !1794

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !1795
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1795
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1796
    #dbg_value(i32 %r.0, !1791, !DIExpression(), !1793)
    #dbg_value(i32 %bs_mat_entries_used.0, !1790, !DIExpression(), !1782)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !1797
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1799

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1800
  br label %for.cond1, !dbg !1800

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1782
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1803
    #dbg_value(i32 %c.0, !1804, !DIExpression(), !1805)
    #dbg_value(i32 %bs_mat_entries_used.1, !1790, !DIExpression(), !1782)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1806
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1800

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1808

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1811
    #dbg_value(i32 %k.0, !1812, !DIExpression(), !1813)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1814
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1808

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !1816
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1816
  %mul8 = shl nuw nsw i32 %k.0, 6, !dbg !1818
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1819
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1819
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1819
  %3 = shl nuw nsw i32 %r.0, 4, !dbg !1820
  %4 = shl nuw nsw i32 %k.0, 2, !dbg !1820
  %mul11 = or disjoint i32 %3, %4, !dbg !1820
  %add.ptr12 = getelementptr inbounds nuw i64, ptr %acc, i32 %mul11, !dbg !1821
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !1822
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1823
    #dbg_value(i32 %add13, !1812, !DIExpression(), !1813)
  br label %for.cond4, !dbg !1824, !llvm.loop !1825

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1790, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1782)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1827
    #dbg_value(i32 %add14, !1790, !DIExpression(), !1782)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1828
    #dbg_value(i32 %inc, !1804, !DIExpression(), !1805)
  br label %for.cond1, !dbg !1829, !llvm.loop !1830

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1782
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1832
    #dbg_value(i32 %inc18, !1791, !DIExpression(), !1793)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1833
  br label %for.cond, !dbg !1833, !llvm.loop !1834

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1836
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1837 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1838, !DIExpression(), !1839)
    #dbg_value(ptr %sm, !1840, !DIExpression(), !1839)
    #dbg_value(ptr %smlen, !1841, !DIExpression(), !1839)
    #dbg_value(ptr %m, !1842, !DIExpression(), !1839)
    #dbg_value(i32 %mlen, !1843, !DIExpression(), !1839)
    #dbg_value(ptr %csk, !1844, !DIExpression(), !1839)
    #dbg_value(i32 0, !1845, !DIExpression(), !1839)
    #dbg_value(i32 186, !1846, !DIExpression(), !1839)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1847
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #9, !dbg !1848
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1849
    #dbg_value(ptr %siglen, !1850, !DIExpression(DW_OP_deref), !1839)
  %call2 = call i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #7, !dbg !1851
    #dbg_value(i32 %call2, !1845, !DIExpression(), !1839)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1852
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1850, !DIExpression(), !1839)
  %cmp3.not = icmp eq i32 %0, 186
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1854
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1854

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1855
    #dbg_value(i32 %1, !1850, !DIExpression(), !1839)
  %add = add i32 %1, %mlen, !dbg !1857
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #9, !dbg !1858
  br label %err, !dbg !1859

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1860
    #dbg_value(i32 %2, !1850, !DIExpression(), !1839)
  %add5 = add i32 %2, %mlen, !dbg !1861
  store i32 %add5, ptr %smlen, align 4, !dbg !1862
  br label %err, !dbg !1863

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1864, !1865)
  ret i32 %call2, !dbg !1866
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1867 {
entry:
    #dbg_value(ptr %p, !1868, !DIExpression(), !1869)
    #dbg_value(ptr %m, !1870, !DIExpression(), !1869)
    #dbg_value(ptr %mlen, !1871, !DIExpression(), !1869)
    #dbg_value(ptr %sm, !1872, !DIExpression(), !1869)
    #dbg_value(i32 %smlen, !1873, !DIExpression(), !1869)
    #dbg_value(ptr %pk, !1874, !DIExpression(), !1869)
    #dbg_value(i32 186, !1875, !DIExpression(), !1869)
  %cmp = icmp ult i32 %smlen, 186, !dbg !1876
  br i1 %cmp, label %return, label %if.end, !dbg !1876

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1878
  %sub = add i32 %smlen, -186, !dbg !1879
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #7, !dbg !1880
    #dbg_value(i32 %call, !1881, !DIExpression(), !1869)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1882
  br i1 %cmp1, label %if.then2, label %return, !dbg !1882

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -186, !dbg !1884
  store i32 %sub3, ptr %mlen, align 4, !dbg !1886
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1887
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #9, !dbg !1888
  br label %return, !dbg !1889

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1869
  ret i32 %retval.0, !dbg !1890
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1891 {
entry:
  %tEnc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [128 x i8], align 1
  %s = alloca [324 x i8], align 1
  %pk = alloca [13284 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1894, !DIExpression(), !1895)
    #dbg_value(ptr %m, !1896, !DIExpression(), !1895)
    #dbg_value(i32 %mlen, !1897, !DIExpression(), !1895)
    #dbg_value(ptr %sig, !1898, !DIExpression(), !1895)
    #dbg_value(ptr %cpk, !1899, !DIExpression(), !1895)
    #dbg_declare(ptr %tEnc, !1900, !DIExpression(), !1901)
    #dbg_declare(ptr %t, !1902, !DIExpression(), !1903)
    #dbg_declare(ptr %y, !1904, !DIExpression(), !1908)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %y, i8 0, i32 128, i1 false), !dbg !1908
    #dbg_declare(ptr %s, !1909, !DIExpression(), !1910)
    #dbg_declare(ptr %pk, !1911, !DIExpression(), !1912)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(106272) %pk, i8 0, i32 106272, i1 false), !dbg !1912
    #dbg_declare(ptr %tmp, !1913, !DIExpression(), !1917)
    #dbg_value(i32 64, !1918, !DIExpression(), !1895)
    #dbg_value(i32 81, !1919, !DIExpression(), !1895)
    #dbg_value(i32 4, !1920, !DIExpression(), !1895)
    #dbg_value(i32 32, !1921, !DIExpression(), !1895)
    #dbg_value(i32 186, !1922, !DIExpression(), !1895)
    #dbg_value(i32 32, !1923, !DIExpression(), !1895)
    #dbg_value(i32 24, !1924, !DIExpression(), !1895)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #7, !dbg !1925
    #dbg_value(i32 0, !1926, !DIExpression(), !1895)
    #dbg_value(ptr %pk, !1927, !DIExpression(), !1895)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 66560, !dbg !1928
    #dbg_value(ptr %add.ptr, !1929, !DIExpression(), !1895)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1930
    #dbg_value(ptr %add.ptr2, !1931, !DIExpression(), !1895)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #7, !dbg !1932
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1933
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !1934
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #9, !dbg !1935
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #7, !dbg !1936
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 64) #7, !dbg !1937
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 324) #7, !dbg !1938
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #7, !dbg !1939
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 64) #9, !dbg !1940
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1942
  %. = zext i1 %cmp21 to i32, !dbg !1895
  ret i32 %., !dbg !1943
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1944 {
entry:
    #dbg_value(ptr %p, !1945, !DIExpression(), !1946)
    #dbg_value(ptr %cpk, !1947, !DIExpression(), !1946)
    #dbg_value(ptr %pk, !1948, !DIExpression(), !1946)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #7, !dbg !1949
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1950
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1951
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 153, i32 noundef 64) #7, !dbg !1952
  ret i32 0, !dbg !1953
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1954 {
entry:
  %SPS = alloca [64 x i64], align 8
  %zero = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !1957, !DIExpression(), !1958)
    #dbg_value(ptr %s, !1959, !DIExpression(), !1958)
    #dbg_value(ptr %P1, !1960, !DIExpression(), !1958)
    #dbg_value(ptr %P2, !1961, !DIExpression(), !1958)
    #dbg_value(ptr %P3, !1962, !DIExpression(), !1958)
    #dbg_value(ptr %eval, !1963, !DIExpression(), !1958)
    #dbg_declare(ptr %SPS, !1964, !DIExpression(), !1966)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %SPS, i8 0, i32 512, i1 false), !dbg !1966
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #7, !dbg !1967
    #dbg_declare(ptr %zero, !1968, !DIExpression(), !1969)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %zero, i8 0, i32 64, i1 false), !dbg !1969
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #7, !dbg !1970
  ret void, !dbg !1971
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !1972 {
entry:
  %PS = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !1975, !DIExpression(), !1976)
    #dbg_value(ptr %P1, !1977, !DIExpression(), !1976)
    #dbg_value(ptr %P2, !1978, !DIExpression(), !1976)
    #dbg_value(ptr %P3, !1979, !DIExpression(), !1976)
    #dbg_value(ptr %s, !1980, !DIExpression(), !1976)
    #dbg_value(ptr %SPS, !1981, !DIExpression(), !1976)
    #dbg_declare(ptr %PS, !1982, !DIExpression(), !1986)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %PS, i8 0, i32 10368, i1 false), !dbg !1986
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %PS) #7, !dbg !1987
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 64, i32 noundef 4, i32 noundef 81, ptr noundef %SPS) #7, !dbg !1988
  ret void, !dbg !1989
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !1990 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %P1, !1993, !DIExpression(), !1994)
    #dbg_value(ptr %P2, !1995, !DIExpression(), !1994)
    #dbg_value(ptr %P3, !1996, !DIExpression(), !1994)
    #dbg_value(ptr %S, !1997, !DIExpression(), !1994)
    #dbg_value(i32 64, !1998, !DIExpression(), !1994)
    #dbg_value(i32 64, !1999, !DIExpression(), !1994)
    #dbg_value(i32 17, !2000, !DIExpression(), !1994)
    #dbg_value(i32 4, !2001, !DIExpression(), !1994)
    #dbg_value(ptr %PS, !2002, !DIExpression(), !1994)
    #dbg_value(i32 81, !2003, !DIExpression(), !1994)
    #dbg_value(i32 4, !2004, !DIExpression(), !1994)
    #dbg_declare(ptr %accumulator, !2005, !DIExpression(), !2009)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2009
    #dbg_value(i32 0, !2010, !DIExpression(), !1994)
    #dbg_value(i32 0, !2011, !DIExpression(), !2013)
  br label %for.cond, !dbg !2014

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 64, %entry ], !dbg !2015
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2015
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2016
    #dbg_value(i32 %row.0, !2011, !DIExpression(), !2013)
    #dbg_value(i32 %P1_used.0, !2010, !DIExpression(), !1994)
  %exitcond4 = icmp ne i32 %row.0, 64, !dbg !2017
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2019

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2020
  br label %for.cond2, !dbg !2020

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2023

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !1994
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2025
    #dbg_value(i32 %j.0, !2026, !DIExpression(), !2027)
    #dbg_value(i32 %P1_used.1, !2010, !DIExpression(), !1994)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2028
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2020

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !1994
  br label %for.cond21, !dbg !2030

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2032

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2035
    #dbg_value(i32 %col.0, !2036, !DIExpression(), !2037)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2038
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2032

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %P1_used.1, 5, !dbg !2040
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2040
  %1 = shl nuw nsw i32 %row.0, 6, !dbg !2042
  %2 = shl nuw nsw i32 %col.0, 4, !dbg !2042
  %mul10 = or disjoint i32 %1, %2, !dbg !2042
  %mul11 = mul nuw nsw i32 %col.0, 81, !dbg !2043
  %3 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2044
  %arrayidx = getelementptr i8, ptr %3, i32 %j.0, !dbg !2044
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2044
  %conv = zext i8 %4 to i32, !dbg !2044
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2045
  %add.ptr15.idx = shl nuw nsw i32 %add13, 5, !dbg !2046
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2046
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #7, !dbg !2047
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2048
    #dbg_value(i32 %inc, !2036, !DIExpression(), !2037)
  br label %for.cond5, !dbg !2049, !llvm.loop !2050

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2010, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1994)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2052
    #dbg_value(i32 %inc16, !2010, !DIExpression(), !1994)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2053
    #dbg_value(i32 %inc18, !2026, !DIExpression(), !2027)
  br label %for.cond2, !dbg !2054, !llvm.loop !2055

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2057
    #dbg_value(i32 %j20.0, !2058, !DIExpression(), !2059)
  %exitcond3 = icmp ne i32 %j20.0, 17, !dbg !2060
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2030

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2062

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2065
    #dbg_value(i32 %col25.0, !2066, !DIExpression(), !2067)
  %exitcond2 = icmp ne i32 %col25.0, 4, !dbg !2068
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2062

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 17, !dbg !2070
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2072
  %add.ptr33.idx = shl nuw nsw i32 %add31, 5, !dbg !2073
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2073
  %5 = shl nuw nsw i32 %row.0, 6, !dbg !2074
  %6 = shl nuw nsw i32 %col25.0, 4, !dbg !2074
  %mul37 = or disjoint i32 %5, %6, !dbg !2074
  %mul38 = mul nuw nsw i32 %col25.0, 81, !dbg !2075
  %7 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2076
  %8 = getelementptr i8, ptr %7, i32 %j20.0, !dbg !2076
  %arrayidx41 = getelementptr i8, ptr %8, i32 64, !dbg !2076
  %9 = load i8, ptr %arrayidx41, align 1, !dbg !2076
  %conv42 = zext i8 %9 to i32, !dbg !2076
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2077
  %add.ptr45.idx = shl nuw nsw i32 %add43, 5, !dbg !2078
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2078
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #7, !dbg !2079
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2080
    #dbg_value(i32 %inc47, !2066, !DIExpression(), !2067)
  br label %for.cond26, !dbg !2081, !llvm.loop !2082

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2084
    #dbg_value(i32 %inc50, !2058, !DIExpression(), !2059)
  br label %for.cond21, !dbg !2085, !llvm.loop !2086

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2088
    #dbg_value(i32 %inc53, !2011, !DIExpression(), !2013)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2089
  br label %for.cond, !dbg !2089, !llvm.loop !2090

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 17, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2092
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2092
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 64, %for.cond56.preheader ], !dbg !2093
    #dbg_value(i32 %row55.0, !2094, !DIExpression(), !2095)
    #dbg_value(i32 %P3_used.0, !2096, !DIExpression(), !1994)
  %exitcond9 = icmp ne i32 %row55.0, 81, !dbg !2097
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2023

for.cond61.preheader:                             ; preds = %for.cond56
  %10 = add i32 %P3_used.0, %indvars.iv6, !dbg !2099
  br label %for.cond61, !dbg !2099

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2102

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !1994
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2103
    #dbg_value(i32 %j60.0, !2104, !DIExpression(), !2105)
    #dbg_value(i32 %P3_used.1, !2096, !DIExpression(), !1994)
  %exitcond8 = icmp ne i32 %P3_used.1, %10, !dbg !2106
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2099

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2108

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2111
    #dbg_value(i32 %col65.0, !2112, !DIExpression(), !2113)
  %exitcond5 = icmp ne i32 %col65.0, 4, !dbg !2114
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2108

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = shl nsw i32 %P3_used.1, 5, !dbg !2116
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2116
  %11 = shl nuw nsw i32 %row55.0, 6, !dbg !2118
  %12 = shl nuw nsw i32 %col65.0, 4, !dbg !2118
  %mul75 = or disjoint i32 %11, %12, !dbg !2118
  %mul76 = mul nuw nsw i32 %col65.0, 81, !dbg !2119
  %13 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2120
  %arrayidx78 = getelementptr i8, ptr %13, i32 %j60.0, !dbg !2120
  %14 = load i8, ptr %arrayidx78, align 1, !dbg !2120
  %conv79 = zext i8 %14 to i32, !dbg !2120
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2121
  %add.ptr82.idx = shl nuw nsw i32 %add80, 5, !dbg !2122
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2122
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #7, !dbg !2123
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2124
    #dbg_value(i32 %inc84, !2112, !DIExpression(), !2113)
  br label %for.cond66, !dbg !2125, !llvm.loop !2126

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2096, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1994)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2128
    #dbg_value(i32 %inc86, !2096, !DIExpression(), !1994)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2129
    #dbg_value(i32 %inc88, !2104, !DIExpression(), !2105)
  br label %for.cond61, !dbg !2130, !llvm.loop !2131

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !1994
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2133
    #dbg_value(i32 %inc91, !2094, !DIExpression(), !2095)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2134
  br label %for.cond56, !dbg !2134, !llvm.loop !2135

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !1994
    #dbg_value(i32 %i.0, !2137, !DIExpression(), !1994)
  %exitcond10 = icmp ne i32 %i.0, 324, !dbg !2138
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2102

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = shl nuw nsw i32 %i.0, 9, !dbg !2139
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2139
  %add.ptr101.idx = shl nuw nsw i32 %i.0, 5, !dbg !2141
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2141
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #7, !dbg !2142
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2143
    #dbg_value(i32 %inc102, !2137, !DIExpression(), !1994)
  br label %while.cond, !dbg !2102, !llvm.loop !2144

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2146
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2147 {
entry:
  %accumulator = alloca [1024 x i64], align 8
    #dbg_value(ptr %PS, !2150, !DIExpression(), !2151)
    #dbg_value(ptr %S, !2152, !DIExpression(), !2151)
    #dbg_value(i32 64, !2153, !DIExpression(), !2151)
    #dbg_value(i32 4, !2154, !DIExpression(), !2151)
    #dbg_value(i32 81, !2155, !DIExpression(), !2151)
    #dbg_value(ptr %SPS, !2156, !DIExpression(), !2151)
    #dbg_declare(ptr %accumulator, !2157, !DIExpression(), !2158)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %accumulator, i8 0, i32 8192, i1 false), !dbg !2158
    #dbg_value(i32 4, !2159, !DIExpression(), !2151)
    #dbg_value(i32 0, !2160, !DIExpression(), !2162)
  br label %for.cond, !dbg !2163

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2164
    #dbg_value(i32 %row.0, !2160, !DIExpression(), !2162)
  %exitcond2 = icmp ne i32 %row.0, 4, !dbg !2165
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2167

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2168

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2171

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2172
    #dbg_value(i32 %j.0, !2173, !DIExpression(), !2174)
  %exitcond1 = icmp ne i32 %j.0, 81, !dbg !2175
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2168

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2177

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2180
    #dbg_value(i32 %col.0, !2181, !DIExpression(), !2182)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2183
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2177

for.body6:                                        ; preds = %for.cond4
  %0 = shl nuw nsw i32 %j.0, 4, !dbg !2185
  %1 = shl nuw nsw i32 %col.0, 2, !dbg !2185
  %mul8 = or disjoint i32 %0, %1, !dbg !2185
  %add.ptr = getelementptr inbounds nuw i64, ptr %PS, i32 %mul8, !dbg !2187
  %2 = shl nuw nsw i32 %row.0, 6, !dbg !2188
  %3 = shl nuw nsw i32 %col.0, 4, !dbg !2188
  %mul11 = or disjoint i32 %2, %3, !dbg !2188
  %mul12 = mul nuw nsw i32 %row.0, 81, !dbg !2189
  %4 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2190
  %arrayidx = getelementptr i8, ptr %4, i32 %j.0, !dbg !2190
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2190
  %conv = zext i8 %5 to i32, !dbg !2190
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2191
  %add.ptr16.idx = shl nuw nsw i32 %add14, 5, !dbg !2192
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2192
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #7, !dbg !2193
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2194
    #dbg_value(i32 %add17, !2181, !DIExpression(), !2182)
  br label %for.cond4, !dbg !2195, !llvm.loop !2196

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2198
    #dbg_value(i32 %inc, !2173, !DIExpression(), !2174)
  br label %for.cond1, !dbg !2199, !llvm.loop !2200

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2202
    #dbg_value(i32 %inc21, !2160, !DIExpression(), !2162)
  br label %for.cond, !dbg !2203, !llvm.loop !2204

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2151
    #dbg_value(i32 %i.0, !2206, !DIExpression(), !2151)
  %exitcond3 = icmp ne i32 %i.0, 16, !dbg !2207
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2171

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = shl nuw nsw i32 %i.0, 9, !dbg !2208
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2208
  %add.ptr31.idx = shl nuw nsw i32 %i.0, 5, !dbg !2210
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2210
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #7, !dbg !2211
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2212
    #dbg_value(i32 %inc32, !2206, !DIExpression(), !2151)
  br label %while.cond, !dbg !2171, !llvm.loop !2213

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2215
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2216 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2219, !DIExpression(), !2220)
    #dbg_value(ptr %in, !2221, !DIExpression(), !2220)
    #dbg_value(ptr %acc, !2222, !DIExpression(), !2220)
    #dbg_value(i32 0, !2223, !DIExpression(), !2225)
  br label %for.cond, !dbg !2226

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2227
    #dbg_value(i32 %i.0, !2223, !DIExpression(), !2225)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2228
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2230

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2231
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2231
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2233
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2234
  %xor = xor i64 %1, %0, !dbg !2234
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2234
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2235
    #dbg_value(i32 %inc, !2223, !DIExpression(), !2225)
  br label %for.cond, !dbg !2236, !llvm.loop !2237

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2239
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2240 {
entry:
    #dbg_value(i32 4, !2243, !DIExpression(), !2244)
    #dbg_value(ptr %bins, !2245, !DIExpression(), !2244)
    #dbg_value(ptr %out, !2246, !DIExpression(), !2244)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2247
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2248
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #7, !dbg !2249
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 352, !dbg !2250
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2251
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #7, !dbg !2252
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2253
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2254
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #7, !dbg !2255
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2256
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2257
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #7, !dbg !2258
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2259
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2260
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #7, !dbg !2261
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2262
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2263
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #7, !dbg !2264
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2265
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2266
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #7, !dbg !2267
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2268
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2269
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #7, !dbg !2270
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2271
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2272
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #7, !dbg !2273
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2274
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2275
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #7, !dbg !2276
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2277
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2278
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #7, !dbg !2279
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2280
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2281
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #7, !dbg !2282
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2283
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2284
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #7, !dbg !2285
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2286
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2287
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #7, !dbg !2288
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2289
  call fastcc void @m_vec_copy(i32 noundef 4, ptr noundef nonnull %add.ptr28, ptr noundef %out) #7, !dbg !2290
  ret void, !dbg !2291
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2292 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2293, !DIExpression(), !2294)
    #dbg_value(ptr %in, !2295, !DIExpression(), !2294)
    #dbg_value(ptr %acc, !2296, !DIExpression(), !2294)
    #dbg_value(i64 1229782938247303441, !2297, !DIExpression(), !2294)
    #dbg_value(i32 0, !2298, !DIExpression(), !2300)
  br label %for.cond, !dbg !2301

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2302
    #dbg_value(i32 %i.0, !2298, !DIExpression(), !2300)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2303
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2305

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2306
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2306
  %and = and i64 %0, 1229782938247303441, !dbg !2308
    #dbg_value(i64 %and, !2309, !DIExpression(), !2310)
  %xor = lshr i64 %0, 1, !dbg !2311
  %shr = and i64 %xor, 8608480567731124087, !dbg !2311
  %mul = mul nuw i64 %and, 9, !dbg !2312
  %xor2 = xor i64 %shr, %mul, !dbg !2313
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2314
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2315
  %xor4 = xor i64 %1, %xor2, !dbg !2315
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2315
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2316
    #dbg_value(i32 %inc, !2298, !DIExpression(), !2300)
  br label %for.cond, !dbg !2317, !llvm.loop !2318

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2320
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2321 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2322, !DIExpression(), !2323)
    #dbg_value(ptr %in, !2324, !DIExpression(), !2323)
    #dbg_value(ptr %acc, !2325, !DIExpression(), !2323)
    #dbg_value(i64 -8608480567731124088, !2326, !DIExpression(), !2323)
    #dbg_value(i32 0, !2327, !DIExpression(), !2329)
  br label %for.cond, !dbg !2330

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2331
    #dbg_value(i32 %i.0, !2327, !DIExpression(), !2329)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2332
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2334

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2335
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2335
    #dbg_value(i64 %0, !2337, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2338)
  %xor = shl i64 %0, 1, !dbg !2339
  %shl = and i64 %xor, -1229782938247303442, !dbg !2339
  %and = lshr i64 %0, 3, !dbg !2340
  %shr = and i64 %and, 1229782938247303441, !dbg !2340
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2341
  %xor2 = xor i64 %shl, %mul, !dbg !2342
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2343
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2344
  %xor4 = xor i64 %1, %xor2, !dbg !2344
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2344
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2345
    #dbg_value(i32 %inc, !2327, !DIExpression(), !2329)
  br label %for.cond, !dbg !2346, !llvm.loop !2347

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2349
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2350 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2351, !DIExpression(), !2352)
    #dbg_value(ptr %in, !2353, !DIExpression(), !2352)
    #dbg_value(ptr %out, !2354, !DIExpression(), !2352)
    #dbg_value(i32 0, !2355, !DIExpression(), !2357)
  br label %for.cond, !dbg !2358

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2359
    #dbg_value(i32 %i.0, !2355, !DIExpression(), !2357)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2360
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2362

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2363
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2363
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2365
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2366
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2367
    #dbg_value(i32 %inc, !2355, !DIExpression(), !2357)
  br label %for.cond, !dbg !2368, !llvm.loop !2369

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2371
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2372 {
entry:
    #dbg_value(ptr %p, !2403, !DIExpression(), !2404)
    #dbg_value(ptr %in, !2405, !DIExpression(), !2404)
    #dbg_value(ptr %out, !2406, !DIExpression(), !2404)
    #dbg_value(i32 %size, !2407, !DIExpression(), !2404)
    #dbg_value(i32 4, !2408, !DIExpression(), !2404)
    #dbg_value(i32 0, !2409, !DIExpression(), !2404)
    #dbg_value(i32 0, !2410, !DIExpression(), !2412)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2413
  br label %for.cond, !dbg !2413

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2414
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2414
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2415
    #dbg_value(i32 %r.0, !2410, !DIExpression(), !2412)
    #dbg_value(i32 %m_vecs_stored.0, !2409, !DIExpression(), !2404)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2416
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2418

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2419
  br label %for.cond1, !dbg !2419

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2404
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2422
    #dbg_value(i32 %c.0, !2423, !DIExpression(), !2424)
    #dbg_value(i32 %m_vecs_stored.1, !2409, !DIExpression(), !2404)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2425
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2419

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2427
  %add = add nsw i32 %mul, %c.0, !dbg !2429
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !2430
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2430
  %add.ptr6.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2431
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2431
  call fastcc void @m_vec_copy.17(i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr6) #7, !dbg !2432
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2433
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2433

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2435
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2437
  %add.ptr11.idx = shl nsw i32 %add9, 5, !dbg !2438
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2438
  %add.ptr13.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2439
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2439
  call fastcc void @m_vec_add.18(i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #7, !dbg !2440
  br label %for.inc, !dbg !2441

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2409, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2404)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2442
    #dbg_value(i32 %inc, !2409, !DIExpression(), !2404)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2443
    #dbg_value(i32 %inc14, !2423, !DIExpression(), !2424)
  br label %for.cond1, !dbg !2444, !llvm.loop !2445

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2404
  %inc16 = add nuw i32 %r.0, 1, !dbg !2447
    #dbg_value(i32 %inc16, !2410, !DIExpression(), !2412)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2448
  br label %for.cond, !dbg !2448, !llvm.loop !2449

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2451
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2452 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2453, !DIExpression(), !2454)
    #dbg_value(ptr %in, !2455, !DIExpression(), !2454)
    #dbg_value(ptr %out, !2456, !DIExpression(), !2454)
    #dbg_value(i32 0, !2457, !DIExpression(), !2459)
  br label %for.cond, !dbg !2460

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2461
    #dbg_value(i32 %i.0, !2457, !DIExpression(), !2459)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2462
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2464

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2465
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2465
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2467
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2468
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2469
    #dbg_value(i32 %inc, !2457, !DIExpression(), !2459)
  br label %for.cond, !dbg !2470, !llvm.loop !2471

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2473
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2474 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2475, !DIExpression(), !2476)
    #dbg_value(ptr %in, !2477, !DIExpression(), !2476)
    #dbg_value(ptr %acc, !2478, !DIExpression(), !2476)
    #dbg_value(i32 0, !2479, !DIExpression(), !2481)
  br label %for.cond, !dbg !2482

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2483
    #dbg_value(i32 %i.0, !2479, !DIExpression(), !2481)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2484
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2486

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2487
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2487
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2489
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2490
  %xor = xor i64 %1, %0, !dbg !2490
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2490
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2491
    #dbg_value(i32 %inc, !2479, !DIExpression(), !2481)
  br label %for.cond, !dbg !2492, !llvm.loop !2493

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2495
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2496 {
entry:
  %Ar = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2499, !DIExpression(), !2500)
    #dbg_value(ptr %A, !2501, !DIExpression(), !2500)
    #dbg_value(ptr %y, !2502, !DIExpression(), !2500)
    #dbg_value(ptr %r, !2503, !DIExpression(), !2500)
    #dbg_value(ptr %x, !2504, !DIExpression(), !2500)
    #dbg_value(i32 %k, !2505, !DIExpression(), !2500)
    #dbg_value(i32 %o, !2506, !DIExpression(), !2500)
    #dbg_value(i32 %m, !2507, !DIExpression(), !2500)
    #dbg_value(i32 %A_cols, !2508, !DIExpression(), !2500)
    #dbg_value(i32 0, !2509, !DIExpression(), !2511)
  %0 = mul nsw i32 %o, %k, !dbg !2512
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2512
  br label %for.cond, !dbg !2512

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2513
    #dbg_value(i32 %i.0, !2509, !DIExpression(), !2511)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2514
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2516

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2517
  br label %for.cond3, !dbg !2517

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2519
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2519
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2521
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2522
  %inc = add nuw i32 %i.0, 1, !dbg !2523
    #dbg_value(i32 %inc, !2509, !DIExpression(), !2511)
  br label %for.cond, !dbg !2524, !llvm.loop !2525

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2527
    #dbg_value(i32 %i2.0, !2528, !DIExpression(), !2529)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2530
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2517

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2532
  %mul7 = mul nsw i32 %k, %o, !dbg !2534
  %add = add nsw i32 %mul7, 1, !dbg !2535
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2536
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2537
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2537
  store i8 0, ptr %arrayidx10, align 1, !dbg !2538
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2539
    #dbg_value(i32 %inc12, !2528, !DIExpression(), !2529)
  br label %for.cond3, !dbg !2540, !llvm.loop !2541

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2543
  %add15 = add nsw i32 %mul14, 1, !dbg !2544
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #7, !dbg !2545
    #dbg_value(i32 0, !2546, !DIExpression(), !2548)
  br label %for.cond17, !dbg !2549

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2550
    #dbg_value(i32 %i16.0, !2546, !DIExpression(), !2548)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2551
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2553

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2554
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2554
  %arrayidx21 = getelementptr inbounds nuw [64 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2556
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2556
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #7, !dbg !2557
  %mul22 = mul nsw i32 %k, %o, !dbg !2558
  %mul23 = mul nsw i32 %k, %o, !dbg !2559
  %add24 = add nsw i32 %mul23, 1, !dbg !2560
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2561
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2562
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2562
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2563
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2564
    #dbg_value(i32 %inc29, !2546, !DIExpression(), !2548)
  br label %for.cond17, !dbg !2565, !llvm.loop !2566

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2568
  %add32 = add nsw i32 %mul31, 1, !dbg !2569
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #7, !dbg !2570
    #dbg_value(i8 0, !2571, !DIExpression(), !2500)
    #dbg_value(i32 0, !2572, !DIExpression(), !2574)
  %6 = add i32 %A_cols, -1, !dbg !2575
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2575
  br label %for.cond34, !dbg !2575

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2500
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2576
    #dbg_value(i32 %i33.0, !2572, !DIExpression(), !2574)
    #dbg_value(i8 %full_rank.0, !2571, !DIExpression(), !2500)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2577
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2579

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2500)
  %sub37 = add nsw i32 %m, -1, !dbg !2580
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2582
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2583
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2583
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2583
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2500)
  %or12 = or i8 %full_rank.0, %8, !dbg !2584
    #dbg_value(i8 %or12, !2571, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2500)
    #dbg_value(i8 %or12, !2571, !DIExpression(), !2500)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2585
    #dbg_value(i32 %inc44, !2572, !DIExpression(), !2574)
  br label %for.cond34, !dbg !2586, !llvm.loop !2587

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2500
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2589
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2589

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2591

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2591, !llvm.loop !2593

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2595
    #dbg_value(i32 %row.0, !2596, !DIExpression(), !2597)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2598
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2591

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2600, !DIExpression(), !2500)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2601
  %div = sdiv i32 32, %sub54, !dbg !2601
  %add55 = add nsw i32 %row.0, %div, !dbg !2601
  %mul56 = mul nsw i32 %k, %o, !dbg !2601
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2601
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2601

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2601
  %div60 = sdiv i32 32, %sub59, !dbg !2601
  %add61 = add nsw i32 %row.0, %div60, !dbg !2601
  br label %cond.end, !dbg !2601

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2601
  br label %cond.end, !dbg !2601

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2601
    #dbg_value(i32 %cond, !2603, !DIExpression(), !2500)
    #dbg_value(i32 %row.0, !2604, !DIExpression(), !2606)
  br label %for.cond63, !dbg !2607

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2608
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2609
    #dbg_value(i32 %col.0, !2604, !DIExpression(), !2606)
    #dbg_value(i8 %finished.0, !2600, !DIExpression(), !2500)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2610
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2612

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2613
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2615
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2615
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2615
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #7, !dbg !2616
  %not = xor i8 %finished.0, -1, !dbg !2617
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2500)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2619
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2620
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2620
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2620
  %13 = and i8 %12, %not, !dbg !2621
  %and801 = and i8 %13, %call70, !dbg !2621
    #dbg_value(i8 %and801, !2622, !DIExpression(), !2623)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2624
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2625
  %xor2 = xor i8 %14, %and801, !dbg !2625
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2625
    #dbg_value(i32 0, !2626, !DIExpression(), !2628)
  br label %for.cond87, !dbg !2629

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2630
    #dbg_value(i32 %i86.0, !2626, !DIExpression(), !2628)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2631
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2633

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2634
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2636
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2636
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2636
  %conv94 = zext i8 %16 to i64, !dbg !2637
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2638
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2639
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2640
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2640
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2640
  %conv99 = zext i8 %18 to i64, !dbg !2641
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2642
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2643
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2644
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2645
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2646
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2646
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2646
  %conv106 = zext i8 %20 to i64, !dbg !2647
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2648
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2649
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2650
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2651
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2652
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2652
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2652
  %conv113 = zext i8 %22 to i64, !dbg !2653
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2654
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2655
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2656
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2657
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2658
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2658
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2658
  %conv120 = zext i8 %24 to i64, !dbg !2659
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2660
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2661
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2662
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2663
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2664
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2664
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2664
  %conv127 = zext i8 %26 to i64, !dbg !2665
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2666
  %xor129 = xor i64 %xor122, %shl128, !dbg !2667
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2668
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2669
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2670
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2670
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2670
  %conv134 = zext i8 %28 to i64, !dbg !2671
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2672
  %xor136 = xor i64 %xor129, %shl135, !dbg !2673
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2674
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2675
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2676
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2676
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2676
  %conv141 = zext i8 %30 to i64, !dbg !2677
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2678
  %xor143 = xor i64 %xor136, %shl142, !dbg !2679
    #dbg_value(i64 %xor143, !2680, !DIExpression(), !2681)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #7, !dbg !2682
    #dbg_value(i64 %call144, !2680, !DIExpression(), !2681)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2683
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2683
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2684
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2684
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2685
  %33 = trunc i64 %call144 to i8, !dbg !2685
  %34 = and i8 %33, 15, !dbg !2685
  %conv152 = xor i8 %34, %32, !dbg !2685
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2685
  %shr = lshr i64 %call144, 8, !dbg !2686
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2687
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2687
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2688
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2688
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2689
  %37 = trunc i64 %shr to i8, !dbg !2689
  %38 = and i8 %37, 15, !dbg !2689
  %conv161 = xor i8 %38, %36, !dbg !2689
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2689
  %shr162 = lshr i64 %call144, 16, !dbg !2690
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2691
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2691
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2692
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2692
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2693
  %41 = trunc i64 %shr162 to i8, !dbg !2693
  %42 = and i8 %41, 15, !dbg !2693
  %conv171 = xor i8 %42, %40, !dbg !2693
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2693
  %shr172 = lshr i64 %call144, 24, !dbg !2694
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2695
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2695
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2696
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2696
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2697
  %45 = trunc i64 %shr172 to i8, !dbg !2697
  %46 = and i8 %45, 15, !dbg !2697
  %conv181 = xor i8 %46, %44, !dbg !2697
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2697
  %shr182 = lshr i64 %call144, 32, !dbg !2698
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2699
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2699
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2700
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2700
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2701
  %49 = trunc i64 %shr182 to i8, !dbg !2701
  %50 = and i8 %49, 15, !dbg !2701
  %conv191 = xor i8 %50, %48, !dbg !2701
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2701
  %shr192 = lshr i64 %call144, 40, !dbg !2702
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2703
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2703
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2704
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2704
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2705
  %53 = trunc i64 %shr192 to i8, !dbg !2705
  %54 = and i8 %53, 15, !dbg !2705
  %conv201 = xor i8 %54, %52, !dbg !2705
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2705
  %shr202 = lshr i64 %call144, 48, !dbg !2706
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2707
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2707
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2708
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2708
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2709
  %57 = trunc i64 %shr202 to i8, !dbg !2709
  %58 = and i8 %57, 15, !dbg !2709
  %conv211 = xor i8 %58, %56, !dbg !2709
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2709
  %shr212 = lshr i64 %call144, 56, !dbg !2710
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2711
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2711
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2712
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2712
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2713
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2713
  %conv221 = xor i8 %60, %61, !dbg !2713
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2713
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2714
    #dbg_value(i32 %add223, !2626, !DIExpression(), !2628)
  br label %for.cond87, !dbg !2715, !llvm.loop !2716

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2500)
  %or2273 = or i8 %finished.0, %call70, !dbg !2718
    #dbg_value(i8 %or2273, !2600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2500)
    #dbg_value(i8 %or2273, !2600, !DIExpression(), !2500)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2719
    #dbg_value(i32 %inc230, !2604, !DIExpression(), !2606)
  br label %for.cond63, !dbg !2720, !llvm.loop !2721

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2723

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2500
  ret i32 %retval.0, !dbg !2723
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2724 {
entry:
    #dbg_value(ptr %a, !2725, !DIExpression(), !2726)
    #dbg_value(ptr %b, !2727, !DIExpression(), !2726)
    #dbg_value(ptr %c, !2728, !DIExpression(), !2726)
    #dbg_value(i32 %colrow_ab, !2729, !DIExpression(), !2726)
    #dbg_value(i32 %row_a, !2730, !DIExpression(), !2726)
    #dbg_value(i32 1, !2731, !DIExpression(), !2726)
    #dbg_value(i32 0, !2732, !DIExpression(), !2734)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2735
  br label %for.cond, !dbg !2735

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2736
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2725, !DIExpression(), !2726)
    #dbg_value(ptr %c.addr.0, !2728, !DIExpression(), !2726)
    #dbg_value(i32 %i.0, !2732, !DIExpression(), !2734)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2737
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2739

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2740

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2743
    #dbg_value(i32 poison, !2744, !DIExpression(), !2745)
    #dbg_value(ptr %c.addr.1, !2728, !DIExpression(), !2726)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2740

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #7, !dbg !2746
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2749
    #dbg_value(i32 1, !2744, !DIExpression(), !2745)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2750
    #dbg_value(ptr %incdec.ptr, !2728, !DIExpression(), !2726)
  br label %for.cond1, !dbg !2751, !llvm.loop !2752

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2754
    #dbg_value(i32 %inc5, !2732, !DIExpression(), !2734)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2755
    #dbg_value(ptr %add.ptr6, !2725, !DIExpression(), !2726)
  br label %for.cond, !dbg !2756, !llvm.loop !2757

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2759
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2760 {
entry:
    #dbg_value(i8 %a, !2761, !DIExpression(), !2762)
    #dbg_value(i8 %b, !2763, !DIExpression(), !2762)
  %xor1 = xor i8 %a, %b, !dbg !2764
  ret i8 %xor1, !dbg !2765
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2766 {
entry:
  %_pivot_row = alloca [5 x i64], align 32
  %_pivot_row2 = alloca [5 x i64], align 32
  %packed_A = alloca [320 x i64], align 32
  %temp = alloca [84 x i8], align 1
    #dbg_value(ptr %A, !2770, !DIExpression(), !2771)
    #dbg_value(i32 %nrows, !2772, !DIExpression(), !2771)
    #dbg_value(i32 %ncols, !2773, !DIExpression(), !2771)
    #dbg_declare(ptr %_pivot_row, !2774, !DIExpression(), !2778)
    #dbg_declare(ptr %_pivot_row2, !2779, !DIExpression(), !2780)
    #dbg_declare(ptr %packed_A, !2781, !DIExpression(), !2785)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(2560) %packed_A, i8 0, i32 2560, i1 false), !dbg !2785
  %add = add nsw i32 %ncols, 15, !dbg !2786
  %div = sdiv i32 %add, 16, !dbg !2787
    #dbg_value(i32 %div, !2788, !DIExpression(), !2771)
    #dbg_value(i32 0, !2789, !DIExpression(), !2791)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2792
  br label %for.cond, !dbg !2792

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2793
    #dbg_value(i32 %i.0, !2789, !DIExpression(), !2791)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2794
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2796

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2797
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2797
  br label %for.cond3, !dbg !2797

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2799
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2801
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2802
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2803
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #7, !dbg !2804
  %inc = add nuw i32 %i.0, 1, !dbg !2805
    #dbg_value(i32 %inc, !2789, !DIExpression(), !2791)
  br label %for.cond, !dbg !2806, !llvm.loop !2807

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2809
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2771
    #dbg_value(i32 %pivot_row.0, !2810, !DIExpression(), !2771)
    #dbg_value(i32 %pivot_col.0, !2811, !DIExpression(), !2812)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2813
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2797

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2815

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2817
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2817
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2817
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2817
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2817
    #dbg_value(i32 %cond, !2819, !DIExpression(), !2820)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2821
    #dbg_value(i32 %cond16, !2822, !DIExpression(), !2820)
    #dbg_value(i32 0, !2823, !DIExpression(), !2825)
  br label %for.cond18, !dbg !2826

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2827
    #dbg_value(i32 %i17.0, !2823, !DIExpression(), !2825)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2828
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2830

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2821
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2821
  br label %for.cond25, !dbg !2831

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2833
  store i64 0, ptr %arrayidx, align 8, !dbg !2835
  %arrayidx21 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2836
  store i64 0, ptr %arrayidx21, align 8, !dbg !2837
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2838
    #dbg_value(i32 %inc23, !2823, !DIExpression(), !2825)
  br label %for.cond18, !dbg !2839, !llvm.loop !2840

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2820
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2820
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2842
    #dbg_value(i32 %row.0, !2843, !DIExpression(), !2842)
    #dbg_value(i8 %pivot.0, !2844, !DIExpression(), !2820)
    #dbg_value(i64 %pivot_is_zero.0, !2845, !DIExpression(), !2820)
  %add27 = add nsw i32 %cond16, 32, !dbg !2846
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2846
  %sub30 = add nsw i32 %nrows, -1, !dbg !2846
  %add32 = add nsw i32 %cond16, 32, !dbg !2846
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2846
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2848
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2831

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2849
  %not = xor i64 %call, -1, !dbg !2851
    #dbg_value(i64 %not, !2852, !DIExpression(), !2853)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2854
    #dbg_value(i64 %call37, !2855, !DIExpression(), !2853)
    #dbg_value(i32 0, !2856, !DIExpression(), !2858)
  br label %for.cond38, !dbg !2859

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2860
    #dbg_value(i32 %j.0, !2856, !DIExpression(), !2858)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2861
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2863

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2864
  %or = or i64 %and, %not, !dbg !2866
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2867
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2868
  %arrayidx43 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2869
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2869
  %and44 = and i64 %or, %0, !dbg !2870
  %arrayidx45 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2871
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2872
  %xor = xor i64 %1, %and44, !dbg !2872
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2872
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2873
    #dbg_value(i32 %inc47, !2856, !DIExpression(), !2858)
  br label %for.cond38, !dbg !2874, !llvm.loop !2875

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #7, !dbg !2877
    #dbg_value(i8 %call50, !2844, !DIExpression(), !2820)
  %conv = zext nneg i8 %call50 to i32, !dbg !2878
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #7, !dbg !2879
    #dbg_value(i64 %call51, !2845, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2820)
  %not52 = xor i64 %call51, -1, !dbg !2880
    #dbg_value(i64 %not52, !2845, !DIExpression(), !2820)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2881
    #dbg_value(i32 %inc54, !2843, !DIExpression(), !2842)
  br label %for.cond25, !dbg !2882, !llvm.loop !2883

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2820
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2820
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #7, !dbg !2885
    #dbg_value(i8 %call56, !2886, !DIExpression(), !2771)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #7, !dbg !2887
    #dbg_value(i32 %cond, !2888, !DIExpression(), !2890)
  br label %for.cond60, !dbg !2891

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2892
    #dbg_value(i32 %row59.0, !2888, !DIExpression(), !2890)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2893
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2895

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2896

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #7, !dbg !2898
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2900
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2900
    #dbg_value(i64 %and67, !2901, !DIExpression(), !2902)
    #dbg_value(i64 %and67.demorgan, !2903, !DIExpression(), !2902)
    #dbg_value(i32 0, !2904, !DIExpression(), !2906)
  br label %for.cond69, !dbg !2907

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2908
    #dbg_value(i32 %col.0, !2904, !DIExpression(), !2906)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2909
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2911

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2912
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2914
  %arrayidx75 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2915
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2915
  %and76 = and i64 %and67.demorgan, %2, !dbg !2916
  %arrayidx77 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2917
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2917
  %and78 = and i64 %3, %and67, !dbg !2918
  %add79 = add i64 %and76, %and78, !dbg !2919
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2920
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2921
  %arrayidx82 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2922
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2923
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2924
    #dbg_value(i32 %inc84, !2904, !DIExpression(), !2906)
  br label %for.cond69, !dbg !2925, !llvm.loop !2926

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2928
    #dbg_value(i32 %inc87, !2888, !DIExpression(), !2890)
  br label %for.cond60, !dbg !2929, !llvm.loop !2930

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2932
    #dbg_value(i32 %row89.0, !2933, !DIExpression(), !2934)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2935
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2896

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2937
    #dbg_value(i1 %cmp94, !2939, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2940)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2941
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2942
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #7, !dbg !2943
    #dbg_value(i8 %call100, !2944, !DIExpression(), !2940)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2945
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2946
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2947
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #7, !dbg !2948
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2949
    #dbg_value(i32 %inc110, !2933, !DIExpression(), !2934)
  br label %for.cond90, !dbg !2950, !llvm.loop !2951

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2771)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2953
  %5 = add i32 %4, 1, !dbg !2953
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2953
    #dbg_value(i32 %conv116, !2810, !DIExpression(), !2771)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2954
    #dbg_value(i32 %inc118, !2811, !DIExpression(), !2812)
  br label %for.cond3, !dbg !2955, !llvm.loop !2956

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2958
    #dbg_value(i32 %i120.0, !2959, !DIExpression(), !2960)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2961
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2815

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2963
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2965
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #7, !dbg !2966
    #dbg_value(i32 0, !2967, !DIExpression(), !2969)
  br label %for.cond130, !dbg !2970

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2971
    #dbg_value(i32 %j129.0, !2967, !DIExpression(), !2969)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !2972
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !2974

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [84 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2975
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2975
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2977
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2978
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2978
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2979
  %inc139 = add nuw i32 %j129.0, 1, !dbg !2980
    #dbg_value(i32 %inc139, !2967, !DIExpression(), !2969)
  br label %for.cond130, !dbg !2981, !llvm.loop !2982

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !2984
    #dbg_value(i32 %inc142, !2959, !DIExpression(), !2960)
  br label %for.cond121, !dbg !2985, !llvm.loop !2986

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 84) #9, !dbg !2988
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 40) #9, !dbg !2989
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 40) #9, !dbg !2990
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 2560) #9, !dbg !2991
  ret void, !dbg !2992
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2993 {
entry:
    #dbg_value(i8 %a, !2995, !DIExpression(), !2996)
    #dbg_value(i8 0, !2997, !DIExpression(), !2996)
  %0 = icmp ne i8 %a, 0, !dbg !2998
  %conv3 = sext i1 %0 to i8, !dbg !2999
  %1 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3000
  %xor5 = xor i8 %1, %conv3, !dbg !3001
  ret i8 %xor5, !dbg !3002
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3003 {
entry:
    #dbg_value(i8 %a, !3006, !DIExpression(), !3007)
    #dbg_value(i64 %b, !3008, !DIExpression(), !3007)
  %0 = and i8 %a, 1, !dbg !3009
  %conv1 = zext nneg i8 %0 to i64, !dbg !3010
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3011
    #dbg_value(i64 %mul, !3012, !DIExpression(), !3007)
  %1 = and i8 %a, 2, !dbg !3013
  %conv4 = zext nneg i8 %1 to i64, !dbg !3014
  %mul5 = mul i64 %b, %conv4, !dbg !3015
  %xor = xor i64 %mul, %mul5, !dbg !3016
    #dbg_value(i64 %xor, !3012, !DIExpression(), !3007)
  %2 = and i8 %a, 4, !dbg !3017
  %conv8 = zext nneg i8 %2 to i64, !dbg !3018
  %mul9 = mul i64 %b, %conv8, !dbg !3019
  %xor10 = xor i64 %xor, %mul9, !dbg !3020
    #dbg_value(i64 %xor10, !3012, !DIExpression(), !3007)
  %3 = and i8 %a, 8, !dbg !3021
  %conv13 = zext nneg i8 %3 to i64, !dbg !3022
  %mul14 = mul i64 %b, %conv13, !dbg !3023
  %xor15 = xor i64 %xor10, %mul14, !dbg !3024
    #dbg_value(i64 %xor15, !3012, !DIExpression(), !3007)
    #dbg_value(i64 %xor15, !3025, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3007)
  %shr = lshr i64 %xor15, 4, !dbg !3026
  %and16 = lshr i64 %xor15, 3, !dbg !3027
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3027
  %4 = xor i64 %shr, %shr18, !dbg !3028
  %xor19 = xor i64 %4, %xor15, !dbg !3028
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3029
    #dbg_value(i64 %and20, !3030, !DIExpression(), !3007)
  ret i64 %and20, !dbg !3031
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3032 {
entry:
    #dbg_value(ptr %in, !3035, !DIExpression(), !3036)
    #dbg_value(ptr %out, !3037, !DIExpression(), !3036)
    #dbg_value(i32 %ncols, !3038, !DIExpression(), !3036)
    #dbg_value(ptr %out, !3039, !DIExpression(), !3036)
    #dbg_value(i32 0, !3040, !DIExpression(), !3036)
  br label %for.cond, !dbg !3041

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3043
    #dbg_value(i32 %i.0, !3040, !DIExpression(), !3036)
  %add = or disjoint i32 %i.0, 1, !dbg !3044
  %cmp = icmp slt i32 %add, %ncols, !dbg !3046
  br i1 %cmp, label %for.body, label %for.end, !dbg !3047

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3048
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3048
  %add2 = or disjoint i32 %i.0, 1, !dbg !3050
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3051
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3051
  %shl5 = shl i8 %1, 4, !dbg !3052
  %or = or i8 %shl5, %0, !dbg !3053
  %div = lshr exact i32 %i.0, 1, !dbg !3054
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3055
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3056
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3057
    #dbg_value(i32 %add8, !3040, !DIExpression(), !3036)
  br label %for.cond, !dbg !3058, !llvm.loop !3059

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3043
  %2 = and i32 %ncols, -2147483647, !dbg !3061
  %cmp9 = icmp eq i32 %2, 1, !dbg !3061
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3061

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3063
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3063
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3065
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3066
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3067
  br label %if.end, !dbg !3068

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3069
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3070 {
entry:
    #dbg_value(i32 %a, !3073, !DIExpression(), !3074)
    #dbg_value(i32 %b, !3075, !DIExpression(), !3074)
  %xor = xor i32 %a, %b, !dbg !3076
  %0 = icmp sgt i32 %xor, 0, !dbg !3077
  %shr = sext i1 %0 to i64, !dbg !3077
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3078
  %xor1 = xor i64 %1, %shr, !dbg !3079
  ret i64 %xor1, !dbg !3080
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3081 {
entry:
    #dbg_value(i32 %a, !3082, !DIExpression(), !3083)
    #dbg_value(i32 %b, !3084, !DIExpression(), !3083)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3085, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3083)
  %0 = icmp slt i32 %b, %a, !dbg !3086
  %shr = sext i1 %0 to i64, !dbg !3086
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3087
  %xor = xor i64 %1, %shr, !dbg !3088
  ret i64 %xor, !dbg !3089
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3090 {
entry:
    #dbg_value(ptr %in, !3093, !DIExpression(), !3094)
    #dbg_value(i32 %index, !3095, !DIExpression(), !3094)
  %div = sdiv i32 %index, 16, !dbg !3096
    #dbg_value(i32 %div, !3097, !DIExpression(), !3094)
  %rem = srem i32 %index, 16, !dbg !3098
    #dbg_value(i32 %rem, !3099, !DIExpression(), !3094)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3100
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3100
  %mul = shl nsw i32 %rem, 2, !dbg !3101
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3102
  %shr = lshr i64 %0, %sh_prom, !dbg !3102
  %1 = trunc i64 %shr to i8, !dbg !3103
  %conv = and i8 %1, 15, !dbg !3103
  ret i8 %conv, !dbg !3104
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3105 {
entry:
    #dbg_value(i8 %a, !3108, !DIExpression(), !3109)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #7, !dbg !3110
    #dbg_value(i8 %call, !3111, !DIExpression(), !3109)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #7, !dbg !3112
    #dbg_value(i8 %call1, !3113, !DIExpression(), !3109)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #7, !dbg !3114
    #dbg_value(i8 %call2, !3115, !DIExpression(), !3109)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #7, !dbg !3116
    #dbg_value(i8 %call3, !3117, !DIExpression(), !3109)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #7, !dbg !3118
    #dbg_value(i8 %call4, !3119, !DIExpression(), !3109)
  ret i8 %call4, !dbg !3120
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3121 {
entry:
    #dbg_value(i32 %legs, !3124, !DIExpression(), !3125)
    #dbg_value(ptr %in, !3126, !DIExpression(), !3125)
    #dbg_value(i8 %a, !3127, !DIExpression(), !3125)
    #dbg_value(ptr %acc, !3128, !DIExpression(), !3125)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #7, !dbg !3129
    #dbg_value(i32 %call, !3130, !DIExpression(), !3125)
    #dbg_value(i64 1229782938247303441, !3131, !DIExpression(), !3125)
    #dbg_value(i32 0, !3132, !DIExpression(), !3134)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3135
  br label %for.cond, !dbg !3135

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3136
    #dbg_value(i32 %i.0, !3132, !DIExpression(), !3134)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3137
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3139

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3140
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3140
  %and = and i64 %0, 1229782938247303441, !dbg !3142
  %and1 = and i32 %call, 255, !dbg !3143
  %conv = zext nneg i32 %and1 to i64, !dbg !3144
  %mul = mul i64 %and, %conv, !dbg !3145
  %shr = lshr i64 %0, 1, !dbg !3146
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3147
  %shr4 = lshr i32 %call, 8, !dbg !3148
  %and5 = and i32 %shr4, 15, !dbg !3149
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3150
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3151
  %xor = xor i64 %mul, %mul7, !dbg !3152
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3153
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3153
  %shr9 = lshr i64 %1, 2, !dbg !3154
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3155
  %shr11 = lshr i32 %call, 16, !dbg !3156
  %and12 = and i32 %shr11, 15, !dbg !3157
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3158
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3159
  %xor15 = xor i64 %xor, %mul14, !dbg !3160
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3161
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3161
  %shr17 = lshr i64 %2, 3, !dbg !3162
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3163
  %shr19 = lshr i32 %call, 24, !dbg !3164
  %and20 = and i32 %shr19, 15, !dbg !3165
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3166
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3167
  %xor23 = xor i64 %xor15, %mul22, !dbg !3168
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3169
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3170
  %xor25 = xor i64 %3, %xor23, !dbg !3170
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3170
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3171
    #dbg_value(i32 %inc, !3132, !DIExpression(), !3134)
  br label %for.cond, !dbg !3172, !llvm.loop !3173

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3175
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3176 {
entry:
    #dbg_value(i32 %legs, !3179, !DIExpression(), !3180)
    #dbg_value(ptr %in, !3181, !DIExpression(), !3180)
    #dbg_value(ptr %out, !3182, !DIExpression(), !3180)
    #dbg_value(ptr %in, !3183, !DIExpression(), !3180)
    #dbg_value(i32 0, !3184, !DIExpression(), !3186)
  br label %for.cond, !dbg !3187

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3188
    #dbg_value(i32 %i.0, !3184, !DIExpression(), !3186)
  %mul = shl nsw i32 %legs, 4, !dbg !3189
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3191
  br i1 %cmp, label %for.body, label %for.end, !dbg !3192

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3193
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3195
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3195
  %1 = and i8 %0, 15, !dbg !3196
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3197
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3198
  %div3 = lshr exact i32 %i.0, 1, !dbg !3199
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3200
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3200
  %3 = lshr i8 %2, 4, !dbg !3201
  %add = or disjoint i32 %i.0, 1, !dbg !3202
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3203
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3204
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3205
    #dbg_value(i32 %add8, !3184, !DIExpression(), !3186)
  br label %for.cond, !dbg !3206, !llvm.loop !3207

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3209
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3210 {
entry:
    #dbg_value(i8 %b, !3211, !DIExpression(), !3212)
  %conv = zext nneg i8 %b to i32, !dbg !3213
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3214
    #dbg_value(i32 %mul, !3215, !DIExpression(), !3212)
    #dbg_value(i32 -252645136, !3216, !DIExpression(), !3212)
  %and = and i32 %mul, 1894838512, !dbg !3217
    #dbg_value(i32 %and, !3218, !DIExpression(), !3212)
  %shr = lshr exact i32 %and, 4, !dbg !3219
  %shr1 = lshr exact i32 %and, 3, !dbg !3220
  %0 = xor i32 %shr, %shr1, !dbg !3221
  %xor2 = xor i32 %0, %mul, !dbg !3221
  ret i32 %xor2, !dbg !3222
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3223 {
entry:
    #dbg_value(i8 %a, !3224, !DIExpression(), !3225)
    #dbg_value(i8 %b, !3226, !DIExpression(), !3225)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3227
  %xor1 = xor i8 %a, %0, !dbg !3228
    #dbg_value(i8 %xor1, !3224, !DIExpression(), !3225)
  %1 = trunc i8 %xor1 to i1, !dbg !3229
    #dbg_value(i8 poison, !3230, !DIExpression(), !3225)
  %2 = and i8 %xor1, 2, !dbg !3231
  %mul9 = mul i8 %2, %b, !dbg !3232
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3229
  %xor11 = xor i8 %conv10, %mul9, !dbg !3233
    #dbg_value(i8 %xor11, !3230, !DIExpression(), !3225)
  %3 = and i8 %xor1, 4, !dbg !3234
  %mul16 = mul i8 %3, %b, !dbg !3235
  %xor18 = xor i8 %mul16, %xor11, !dbg !3236
    #dbg_value(i8 %xor18, !3230, !DIExpression(), !3225)
  %4 = and i8 %xor1, 8, !dbg !3237
  %mul23 = mul i8 %4, %b, !dbg !3238
  %xor25 = xor i8 %mul23, %xor18, !dbg !3239
    #dbg_value(i8 %xor25, !3230, !DIExpression(), !3225)
    #dbg_value(i8 %xor25, !3240, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3225)
  %5 = lshr i8 %xor25, 4, !dbg !3241
  %6 = lshr i8 %xor25, 3, !dbg !3242
  %7 = and i8 %6, 14, !dbg !3242
  %8 = xor i8 %5, %7, !dbg !3243
  %xor25.masked = and i8 %xor25, 15, !dbg !3244
  %9 = xor i8 %8, %xor25.masked, !dbg !3244
    #dbg_value(i8 %9, !3245, !DIExpression(), !3225)
  ret i8 %9, !dbg !3246
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3247 {
entry:
    #dbg_value(ptr %a, !3248, !DIExpression(), !3249)
    #dbg_value(ptr %b, !3250, !DIExpression(), !3249)
    #dbg_value(i32 %n, !3251, !DIExpression(), !3249)
    #dbg_value(i32 1, !3252, !DIExpression(), !3249)
    #dbg_value(i8 0, !3253, !DIExpression(), !3249)
    #dbg_value(i32 0, !3254, !DIExpression(), !3256)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3257
  br label %for.cond, !dbg !3257

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3249
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3258
    #dbg_value(i32 %i.0, !3254, !DIExpression(), !3256)
    #dbg_value(ptr %b.addr.0, !3250, !DIExpression(), !3249)
    #dbg_value(i8 %ret.0, !3253, !DIExpression(), !3249)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3259
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3261

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3262
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3262
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3264
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !3265
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #7, !dbg !3266
    #dbg_value(i8 %call1, !3253, !DIExpression(), !3249)
  %inc = add nuw i32 %i.0, 1, !dbg !3267
    #dbg_value(i32 %inc, !3254, !DIExpression(), !3256)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3268
    #dbg_value(ptr %add.ptr, !3250, !DIExpression(), !3249)
  br label %for.cond, !dbg !3269, !llvm.loop !3270

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3249
  ret i8 %ret.0.lcssa, !dbg !3272
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3273 {
entry:
    #dbg_value(i8 %a, !3274, !DIExpression(), !3275)
    #dbg_value(i8 %b, !3276, !DIExpression(), !3275)
  %xor1 = xor i8 %a, %b, !dbg !3277
  ret i8 %xor1, !dbg !3278
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3279 {
entry:
    #dbg_value(ptr %state, !3287, !DIExpression(), !3288)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !3289
  store ptr %call, ptr %state, align 4, !dbg !3290
  %cmp = icmp eq ptr %call, null, !dbg !3291
  br i1 %cmp, label %if.then, label %if.end, !dbg !3291

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !3293
  br label %if.end, !dbg !3295

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3296
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !3297
  ret void, !dbg !3298
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #5

declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3299 {
entry:
    #dbg_value(ptr %s_inc, !3300, !DIExpression(), !3301)
    #dbg_value(i32 0, !3302, !DIExpression(), !3301)
  br label %for.cond, !dbg !3303

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3305
    #dbg_value(i32 %i.0, !3302, !DIExpression(), !3301)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3306
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3308

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3309
  store i64 0, ptr %arrayidx, align 8, !dbg !3311
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3312
    #dbg_value(i32 %inc, !3302, !DIExpression(), !3301)
  br label %for.cond, !dbg !3313, !llvm.loop !3314

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3316
  store i64 0, ptr %arrayidx1, align 8, !dbg !3317
  ret void, !dbg !3318
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3319 {
entry:
    #dbg_value(ptr %state, !3324, !DIExpression(), !3325)
    #dbg_value(ptr %input, !3326, !DIExpression(), !3325)
    #dbg_value(i32 %inlen, !3327, !DIExpression(), !3325)
  %0 = load ptr, ptr %state, align 4, !dbg !3328
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #7, !dbg !3329
  ret void, !dbg !3330
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3331 {
entry:
    #dbg_value(ptr %s_inc, !3334, !DIExpression(), !3335)
    #dbg_value(i32 %r, !3336, !DIExpression(), !3335)
    #dbg_value(ptr %m, !3337, !DIExpression(), !3335)
    #dbg_value(i32 %mlen, !3338, !DIExpression(), !3335)
  br label %while.cond, !dbg !3339

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3338, !DIExpression(), !3335)
    #dbg_value(ptr %m.addr.0, !3337, !DIExpression(), !3335)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3340
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3341
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3341
  %add = add i64 %0, %conv, !dbg !3342
  %conv1 = zext nneg i32 %r to i64, !dbg !3343
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3344
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3339

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3345

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3348

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3350
    #dbg_value(i32 %i.0, !3351, !DIExpression(), !3335)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3352
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3352
  %conv4 = trunc i64 %1 to i32, !dbg !3354
  %sub = sub i32 %r, %conv4, !dbg !3355
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3356
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3345

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3357
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3357
  %conv8 = zext i8 %2 to i64, !dbg !3359
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3360
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3360
  %conv10 = zext i32 %i.0 to i64, !dbg !3361
  %add11 = add i64 %3, %conv10, !dbg !3362
  %and = shl i64 %add11, 3, !dbg !3363
  %mul = and i64 %and, 56, !dbg !3363
  %shl = shl nuw i64 %conv8, %mul, !dbg !3364
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3365
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3365
  %conv13 = zext i32 %i.0 to i64, !dbg !3366
  %add14 = add i64 %4, %conv13, !dbg !3367
  %shr = lshr i64 %add14, 3, !dbg !3368
  %idxprom = trunc i64 %shr to i32, !dbg !3369
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3369
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3370
  %xor = xor i64 %5, %shl, !dbg !3370
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3370
  %inc = add nuw i32 %i.0, 1, !dbg !3371
    #dbg_value(i32 %inc, !3351, !DIExpression(), !3335)
  br label %for.cond, !dbg !3372, !llvm.loop !3373

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3375
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3375
  %7 = trunc i64 %6 to i32, !dbg !3376
  %conv19.neg = sub i32 %7, %r, !dbg !3376
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3377
    #dbg_value(i32 %sub20, !3338, !DIExpression(), !3335)
  %8 = trunc i64 %6 to i32, !dbg !3378
  %idx.ext = sub i32 %r, %8, !dbg !3378
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3378
    #dbg_value(ptr %add.ptr, !3337, !DIExpression(), !3335)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3379
  store i64 0, ptr %arrayidx24, align 8, !dbg !3380
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !3381
  br label %while.cond, !dbg !3339, !llvm.loop !3382

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3384
    #dbg_value(i32 %i.1, !3351, !DIExpression(), !3335)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3385
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3348

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3387
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3387
  %conv30 = zext i8 %9 to i64, !dbg !3389
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3390
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3390
  %conv32 = zext i32 %i.1 to i64, !dbg !3391
  %add33 = add i64 %10, %conv32, !dbg !3392
  %and34 = shl i64 %add33, 3, !dbg !3393
  %mul35 = and i64 %and34, 56, !dbg !3393
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3394
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3395
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3395
  %conv38 = zext i32 %i.1 to i64, !dbg !3396
  %add39 = add i64 %11, %conv38, !dbg !3397
  %shr40 = lshr i64 %add39, 3, !dbg !3398
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3399
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3399
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3400
  %xor43 = xor i64 %12, %shl36, !dbg !3400
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3400
  %inc45 = add i32 %i.1, 1, !dbg !3401
    #dbg_value(i32 %inc45, !3351, !DIExpression(), !3335)
  br label %for.cond25, !dbg !3402, !llvm.loop !3403

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3405
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3406
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3407
  %add49 = add i64 %13, %conv47, !dbg !3407
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3407
  ret void, !dbg !3408
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3409 {
entry:
    #dbg_value(ptr %state, !3410, !DIExpression(), !3411)
  %0 = load i64, ptr %state, align 8, !dbg !3412
    #dbg_value(i64 %0, !3413, !DIExpression(), !3411)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3414
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3414
    #dbg_value(i64 %1, !3415, !DIExpression(), !3411)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3416
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3416
    #dbg_value(i64 %2, !3417, !DIExpression(), !3411)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3418
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3418
    #dbg_value(i64 %3, !3419, !DIExpression(), !3411)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3420
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3420
    #dbg_value(i64 %4, !3421, !DIExpression(), !3411)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3422
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3422
    #dbg_value(i64 %5, !3423, !DIExpression(), !3411)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3424
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3424
    #dbg_value(i64 %6, !3425, !DIExpression(), !3411)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3426
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3426
    #dbg_value(i64 %7, !3427, !DIExpression(), !3411)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3428
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3428
    #dbg_value(i64 %8, !3429, !DIExpression(), !3411)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3430
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3430
    #dbg_value(i64 %9, !3431, !DIExpression(), !3411)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3432
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3432
    #dbg_value(i64 %10, !3433, !DIExpression(), !3411)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3434
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3434
    #dbg_value(i64 %11, !3435, !DIExpression(), !3411)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3436
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3436
    #dbg_value(i64 %12, !3437, !DIExpression(), !3411)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3438
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3438
    #dbg_value(i64 %13, !3439, !DIExpression(), !3411)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3440
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3440
    #dbg_value(i64 %14, !3441, !DIExpression(), !3411)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3442
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3442
    #dbg_value(i64 %15, !3443, !DIExpression(), !3411)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3444
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3444
    #dbg_value(i64 %16, !3445, !DIExpression(), !3411)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3446
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3446
    #dbg_value(i64 %17, !3447, !DIExpression(), !3411)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3448
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3448
    #dbg_value(i64 %18, !3449, !DIExpression(), !3411)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3450
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3450
    #dbg_value(i64 %19, !3451, !DIExpression(), !3411)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3452
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3452
    #dbg_value(i64 %20, !3453, !DIExpression(), !3411)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3454
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3454
    #dbg_value(i64 %21, !3455, !DIExpression(), !3411)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3456
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3456
    #dbg_value(i64 %22, !3457, !DIExpression(), !3411)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3458
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3458
    #dbg_value(i64 %23, !3459, !DIExpression(), !3411)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3460
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3460
    #dbg_value(i64 %24, !3461, !DIExpression(), !3411)
    #dbg_value(i32 0, !3462, !DIExpression(), !3411)
  br label %for.cond, !dbg !3463

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3411
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3411
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3411
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3411
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3411
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3411
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3411
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3411
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3411
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3411
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3411
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3411
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3411
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3411
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3411
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3411
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3411
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3411
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3411
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3411
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3411
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3411
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3411
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3411
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3465
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3411
    #dbg_value(i64 %Asu.0, !3461, !DIExpression(), !3411)
    #dbg_value(i32 %round.0, !3462, !DIExpression(), !3411)
    #dbg_value(i64 %Aba.0, !3413, !DIExpression(), !3411)
    #dbg_value(i64 %Abe.0, !3415, !DIExpression(), !3411)
    #dbg_value(i64 %Abi.0, !3417, !DIExpression(), !3411)
    #dbg_value(i64 %Abo.0, !3419, !DIExpression(), !3411)
    #dbg_value(i64 %Abu.0, !3421, !DIExpression(), !3411)
    #dbg_value(i64 %Aga.0, !3423, !DIExpression(), !3411)
    #dbg_value(i64 %Age.0, !3425, !DIExpression(), !3411)
    #dbg_value(i64 %Agi.0, !3427, !DIExpression(), !3411)
    #dbg_value(i64 %Ago.0, !3429, !DIExpression(), !3411)
    #dbg_value(i64 %Agu.0, !3431, !DIExpression(), !3411)
    #dbg_value(i64 %Aka.0, !3433, !DIExpression(), !3411)
    #dbg_value(i64 %Ake.0, !3435, !DIExpression(), !3411)
    #dbg_value(i64 %Aki.0, !3437, !DIExpression(), !3411)
    #dbg_value(i64 %Ako.0, !3439, !DIExpression(), !3411)
    #dbg_value(i64 %Aku.0, !3441, !DIExpression(), !3411)
    #dbg_value(i64 %Ama.0, !3443, !DIExpression(), !3411)
    #dbg_value(i64 %Ame.0, !3445, !DIExpression(), !3411)
    #dbg_value(i64 %Ami.0, !3447, !DIExpression(), !3411)
    #dbg_value(i64 %Amo.0, !3449, !DIExpression(), !3411)
    #dbg_value(i64 %Amu.0, !3451, !DIExpression(), !3411)
    #dbg_value(i64 %Asa.0, !3453, !DIExpression(), !3411)
    #dbg_value(i64 %Ase.0, !3455, !DIExpression(), !3411)
    #dbg_value(i64 %Asi.0, !3457, !DIExpression(), !3411)
    #dbg_value(i64 %Aso.0, !3459, !DIExpression(), !3411)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3466
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3468

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3449, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3433, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3427, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3423, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3447, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3417, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3429, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3441, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3417, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3423, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3427, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3429, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3433, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3441, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3447, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3449, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 poison, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3504
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3506
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3507
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3508
    #dbg_value(i64 %xor35, !3471, !DIExpression(), !3411)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3509
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3510
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3511
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3512
    #dbg_value(i64 %xor43, !3473, !DIExpression(), !3411)
  %xor56 = call i64 @llvm.fshl.i64(i64 %xor43, i64 %xor43, i64 1), !dbg !3513
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %xor56), !3429, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %xor56), !3419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %xor56), !3439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %xor56), !3449, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %xor56), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor35, i64 %xor56), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor57 = xor i64 %xor35, %xor56, !dbg !3514
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3429, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3449, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 %xor57, !3477, !DIExpression(), !3411)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3515
    #dbg_value(i64 %xor203, !3429, !DIExpression(), !3411)
  %xor206 = call i64 @llvm.fshl.i64(i64 %xor203, i64 %xor203, i64 55), !dbg !3516
    #dbg_value(i64 %xor206, !3470, !DIExpression(), !3411)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3517
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3518
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3519
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3520
    #dbg_value(i64 %xor31, !3470, !DIExpression(), !3411)
  %xor44 = call i64 @llvm.fshl.i64(i64 %xor31, i64 %xor31, i64 1), !dbg !3521
    #dbg_value(!DIArgList(i64 %xor43, i64 %xor44), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %xor44), !3433, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %xor44), !3423, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %xor44), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %xor44), !3443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor45 = xor i64 %xor43, %xor44, !dbg !3522
    #dbg_value(i64 %xor45, !3474, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3433, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3423, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3523
    #dbg_value(i64 %xor211, !3443, !DIExpression(), !3411)
  %xor214 = call i64 @llvm.fshl.i64(i64 %xor211, i64 %xor211, i64 41), !dbg !3524
    #dbg_value(i64 %xor214, !3472, !DIExpression(), !3411)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3525
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3526
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3527
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3528
    #dbg_value(i64 %xor39, !3472, !DIExpression(), !3411)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3529
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3530
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3531
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3532
    #dbg_value(i64 %xor27, !3469, !DIExpression(), !3411)
  %xor60 = call i64 @llvm.fshl.i64(i64 %xor27, i64 %xor27, i64 1), !dbg !3533
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %xor60), !3431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %xor60), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %xor60), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %xor60), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor39, i64 %xor60), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %xor60), !3441, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor61 = xor i64 %xor39, %xor60, !dbg !3534
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 %xor61, !3478, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3441, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3535
    #dbg_value(i64 %xor207, !3441, !DIExpression(), !3411)
  %xor210 = call i64 @llvm.fshl.i64(i64 %xor207, i64 %xor207, i64 39), !dbg !3536
    #dbg_value(i64 %xor210, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %xor210), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not222 = xor i64 %xor210, -1, !dbg !3537
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %not222), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and223 = and i64 %xor214, %not222, !dbg !3538
    #dbg_value(!DIArgList(i64 %xor206, i64 %and223), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor224 = xor i64 %xor206, %and223, !dbg !3539
    #dbg_value(i64 %xor224, !3500, !DIExpression(), !3411)
  %xor52 = call i64 @llvm.fshl.i64(i64 %xor39, i64 %xor39, i64 1), !dbg !3540
    #dbg_value(!DIArgList(i64 %xor31, i64 %xor52), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %xor52), !3437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %xor52), !3427, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %xor52), !3417, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %xor52), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %xor52), !3447, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor53 = xor i64 %xor31, %xor52, !dbg !3541
    #dbg_value(i64 %xor53, !3476, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3427, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3417, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3447, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3542
    #dbg_value(i64 %xor67, !3437, !DIExpression(), !3411)
  %xor70 = call i64 @llvm.fshl.i64(i64 %xor67, i64 %xor67, i64 43), !dbg !3543
    #dbg_value(i64 %xor70, !3471, !DIExpression(), !3411)
  %xor48 = call i64 @llvm.fshl.i64(i64 %xor35, i64 %xor35, i64 1), !dbg !3544
    #dbg_value(!DIArgList(i64 %xor27, i64 %xor48), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %xor48), !3425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %xor48), !3415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %xor48), !3435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %xor48), !3445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %xor48), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor49 = xor i64 %xor27, %xor48, !dbg !3545
    #dbg_value(i64 %xor49, !3475, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3546
    #dbg_value(i64 %xor63, !3425, !DIExpression(), !3411)
  %xor66 = call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 44), !dbg !3547
    #dbg_value(i64 %xor66, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %xor66), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not = xor i64 %xor66, -1, !dbg !3548
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %not), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and = and i64 %xor70, %not, !dbg !3549
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3550
  %25 = load i64, ptr %arrayidx80, align 8, !dbg !3550
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %25), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %26 = xor i64 %and, %25, !dbg !3551
    #dbg_value(!DIArgList(i64 %26, i64 %Aba.0, i64 %xor45), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3552
    #dbg_value(i64 %xor62, !3413, !DIExpression(), !3411)
    #dbg_value(i64 %xor62, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %26, i64 %xor62), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor81 = xor i64 %26, %xor62, !dbg !3551
    #dbg_value(i64 %xor81, !3479, !DIExpression(), !3411)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3553
    #dbg_value(i64 %xor94, !3419, !DIExpression(), !3411)
  %xor97 = call i64 @llvm.fshl.i64(i64 %xor94, i64 %xor94, i64 28), !dbg !3554
    #dbg_value(i64 %xor97, !3469, !DIExpression(), !3411)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3555
    #dbg_value(i64 %xor102, !3433, !DIExpression(), !3411)
  %xor105 = call i64 @llvm.fshl.i64(i64 %xor102, i64 %xor102, i64 3), !dbg !3556
    #dbg_value(i64 %xor105, !3471, !DIExpression(), !3411)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3557
    #dbg_value(i64 %xor98, !3431, !DIExpression(), !3411)
  %xor101 = call i64 @llvm.fshl.i64(i64 %xor98, i64 %xor98, i64 20), !dbg !3558
    #dbg_value(i64 %xor101, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %xor101), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not114 = xor i64 %xor101, -1, !dbg !3559
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %not114), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and115 = and i64 %xor105, %not114, !dbg !3560
    #dbg_value(!DIArgList(i64 %xor97, i64 %and115), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor116 = xor i64 %xor97, %and115, !dbg !3561
    #dbg_value(i64 %xor116, !3484, !DIExpression(), !3411)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3562
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3563
    #dbg_value(i64 %xor129, !3415, !DIExpression(), !3411)
  %xor132 = call i64 @llvm.fshl.i64(i64 %xor129, i64 %xor129, i64 1), !dbg !3564
    #dbg_value(i64 %xor132, !3469, !DIExpression(), !3411)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3565
    #dbg_value(i64 %xor137, !3439, !DIExpression(), !3411)
  %xor140 = call i64 @llvm.fshl.i64(i64 %xor137, i64 %xor137, i64 25), !dbg !3566
    #dbg_value(i64 %xor140, !3471, !DIExpression(), !3411)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3567
    #dbg_value(i64 %xor133, !3427, !DIExpression(), !3411)
  %xor136 = call i64 @llvm.fshl.i64(i64 %xor133, i64 %xor133, i64 6), !dbg !3568
    #dbg_value(i64 %xor136, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %xor136), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not149 = xor i64 %xor136, -1, !dbg !3569
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %not149), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and150 = and i64 %xor140, %not149, !dbg !3570
    #dbg_value(!DIArgList(i64 %xor132, i64 %and150), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor151 = xor i64 %xor132, %and150, !dbg !3571
    #dbg_value(i64 %xor151, !3489, !DIExpression(), !3411)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3572
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3573
    #dbg_value(i64 %xor164, !3421, !DIExpression(), !3411)
  %xor167 = call i64 @llvm.fshl.i64(i64 %xor164, i64 %xor164, i64 27), !dbg !3574
    #dbg_value(i64 %xor167, !3469, !DIExpression(), !3411)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3575
    #dbg_value(i64 %xor172, !3435, !DIExpression(), !3411)
  %xor175 = call i64 @llvm.fshl.i64(i64 %xor172, i64 %xor172, i64 10), !dbg !3576
    #dbg_value(i64 %xor175, !3471, !DIExpression(), !3411)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3577
    #dbg_value(i64 %xor168, !3423, !DIExpression(), !3411)
  %xor171 = call i64 @llvm.fshl.i64(i64 %xor168, i64 %xor168, i64 36), !dbg !3578
    #dbg_value(i64 %xor171, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %xor171), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not184 = xor i64 %xor171, -1, !dbg !3579
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %not184), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and185 = and i64 %xor175, %not184, !dbg !3580
    #dbg_value(!DIArgList(i64 %xor167, i64 %and185), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor186 = xor i64 %xor167, %and185, !dbg !3581
    #dbg_value(i64 %xor186, !3494, !DIExpression(), !3411)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3582
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3583
    #dbg_value(i64 %xor199, !3417, !DIExpression(), !3411)
  %xor202 = call i64 @llvm.fshl.i64(i64 %xor199, i64 %xor199, i64 62), !dbg !3584
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %xor206), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %xor206), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not219 = xor i64 %xor206, -1, !dbg !3585
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %not219), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %not219), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and220 = and i64 %xor210, %not219, !dbg !3586
    #dbg_value(!DIArgList(i64 %xor202, i64 %and220), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %and220), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor221 = xor i64 %xor202, %and220, !dbg !3587
    #dbg_value(i64 %xor221, !3499, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3588
    #dbg_value(i64 %xor237, !3469, !DIExpression(), !3411)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3589
    #dbg_value(i64 %xor75, !3461, !DIExpression(), !3411)
  %xor78 = call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 14), !dbg !3590
    #dbg_value(i64 %xor78, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %xor62), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3591
    #dbg_value(i64 %xor71, !3449, !DIExpression(), !3411)
  %xor74 = call i64 @llvm.fshl.i64(i64 %xor71, i64 %xor71, i64 21), !dbg !3592
    #dbg_value(i64 %xor74, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %xor74), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor74, i64 %xor70), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor62, i64 %xor78), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not85 = xor i64 %xor74, -1, !dbg !3593
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %not85), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and86 = and i64 %xor78, %not85, !dbg !3594
    #dbg_value(!DIArgList(i64 %xor70, i64 %and86), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor87 = xor i64 %xor70, %and86, !dbg !3595
    #dbg_value(i64 %xor87, !3481, !DIExpression(), !3411)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3596
    #dbg_value(i64 %xor110, !3457, !DIExpression(), !3411)
  %xor113 = call i64 @llvm.fshl.i64(i64 %xor110, i64 %xor110, i64 61), !dbg !3597
    #dbg_value(i64 %xor113, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %xor97), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3598
    #dbg_value(i64 %xor106, !3445, !DIExpression(), !3411)
  %xor109 = call i64 @llvm.fshl.i64(i64 %xor106, i64 %xor106, i64 45), !dbg !3599
    #dbg_value(i64 %xor109, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %xor109), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %xor113), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor109, i64 %xor105), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not120 = xor i64 %xor109, -1, !dbg !3600
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %not120), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and121 = and i64 %xor113, %not120, !dbg !3601
    #dbg_value(!DIArgList(i64 %xor105, i64 %and121), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor122 = xor i64 %xor105, %and121, !dbg !3602
    #dbg_value(i64 %xor122, !3486, !DIExpression(), !3411)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3603
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3604
    #dbg_value(i64 %xor145, !3453, !DIExpression(), !3411)
  %xor148 = call i64 @llvm.fshl.i64(i64 %xor145, i64 %xor145, i64 18), !dbg !3605
    #dbg_value(i64 %xor148, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %xor132), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3606
    #dbg_value(i64 %xor141, !3451, !DIExpression(), !3411)
  %xor144 = call i64 @llvm.fshl.i64(i64 %xor141, i64 %xor141, i64 8), !dbg !3607
    #dbg_value(i64 %xor144, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %xor144), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor144, i64 %xor140), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor132, i64 %xor148), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not155 = xor i64 %xor144, -1, !dbg !3608
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %not155), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and156 = and i64 %xor148, %not155, !dbg !3609
    #dbg_value(!DIArgList(i64 %xor140, i64 %and156), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor157 = xor i64 %xor140, %and156, !dbg !3610
    #dbg_value(i64 %xor157, !3491, !DIExpression(), !3411)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3611
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3612
    #dbg_value(i64 %xor180, !3459, !DIExpression(), !3411)
  %xor183 = call i64 @llvm.fshl.i64(i64 %xor180, i64 %xor180, i64 56), !dbg !3613
    #dbg_value(i64 %xor183, !3473, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %xor167), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3614
    #dbg_value(i64 %xor176, !3447, !DIExpression(), !3411)
  %xor179 = call i64 @llvm.fshl.i64(i64 %xor176, i64 %xor176, i64 15), !dbg !3615
    #dbg_value(i64 %xor179, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %xor179), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor179, i64 %xor175), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor167, i64 %xor183), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %xor70), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %not190 = xor i64 %xor179, -1, !dbg !3616
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %not190), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and191 = and i64 %xor183, %not190, !dbg !3617
    #dbg_value(!DIArgList(i64 %xor175, i64 %and191), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor192 = xor i64 %xor175, %and191, !dbg !3618
    #dbg_value(i64 %xor192, !3496, !DIExpression(), !3411)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3619
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3620
    #dbg_value(i64 %xor215, !3455, !DIExpression(), !3411)
  %xor218 = call i64 @llvm.fshl.i64(i64 %xor215, i64 %xor215, i64 2), !dbg !3621
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %xor214), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %xor202), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor202, i64 %xor218), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %xor214), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %xor113), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %xor62), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not225 = xor i64 %xor214, -1, !dbg !3622
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %not225), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %not225), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and226 = and i64 %xor218, %not225, !dbg !3623
    #dbg_value(!DIArgList(i64 %xor210, i64 %and226), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %and226), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor227 = xor i64 %xor210, %and226, !dbg !3624
    #dbg_value(i64 %xor227, !3501, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3625
    #dbg_value(i64 %xor245, !3471, !DIExpression(), !3411)
  %xor260 = call i64 @llvm.fshl.i64(i64 %xor245, i64 %xor245, i64 1), !dbg !3626
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %xor260), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor237, i64 %xor74, i64 %xor70, i64 %xor260), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor237, i64 %xor109, i64 %xor105, i64 %xor260), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor237, i64 %xor144, i64 %xor140, i64 %xor260), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor237, i64 %xor179, i64 %xor175, i64 %xor260), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor237, i64 %xor260), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor261 = xor i64 %xor237, %xor260, !dbg !3627
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %xor70), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %xor105), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %xor140), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %xor175), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 %xor261, !3475, !DIExpression(), !3411)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3628
    #dbg_value(i64 %xor429, !3500, !DIExpression(), !3411)
  %xor432 = call i64 @llvm.fshl.i64(i64 %xor429, i64 %xor429, i64 2), !dbg !3629
    #dbg_value(i64 %xor432, !3473, !DIExpression(), !3411)
  %not123 = xor i64 %xor113, -1, !dbg !3630
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %not123), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %not123), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and124 = and i64 %xor97, %not123, !dbg !3631
    #dbg_value(!DIArgList(i64 %xor109, i64 %and124), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %and124), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor125 = xor i64 %xor109, %and124, !dbg !3632
    #dbg_value(i64 %xor125, !3487, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %xor78), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not91 = xor i64 %xor62, -1, !dbg !3633
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %not91), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %not91), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and92 = and i64 %xor66, %not91, !dbg !3634
    #dbg_value(!DIArgList(i64 %xor78, i64 %and92), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %and92), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor93 = xor i64 %xor78, %and92, !dbg !3635
    #dbg_value(i64 %xor93, !3483, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not126 = xor i64 %xor97, -1, !dbg !3636
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %not126), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %not126), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and127 = and i64 %xor101, %not126, !dbg !3637
    #dbg_value(!DIArgList(i64 %xor113, i64 %and127), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %and127), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor128 = xor i64 %xor113, %and127, !dbg !3638
    #dbg_value(i64 %xor128, !3488, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor128), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3639
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not161 = xor i64 %xor132, -1, !dbg !3640
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %not161), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %not161), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and162 = and i64 %xor136, %not161, !dbg !3641
    #dbg_value(!DIArgList(i64 %xor148, i64 %and162), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %and162), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor163 = xor i64 %xor148, %and162, !dbg !3642
    #dbg_value(i64 %xor163, !3493, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor163), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3643
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not196 = xor i64 %xor167, -1, !dbg !3644
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %not196), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %not196), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and197 = and i64 %xor171, %not196, !dbg !3645
    #dbg_value(!DIArgList(i64 %xor183, i64 %and197), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %and197), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor198 = xor i64 %xor183, %and197, !dbg !3646
    #dbg_value(i64 %xor198, !3498, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor198), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3647
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %xor202), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not231 = xor i64 %xor202, -1, !dbg !3648
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %not231), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %not231), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %and232 = and i64 %xor206, %not231, !dbg !3649
    #dbg_value(!DIArgList(i64 %xor218, i64 %and232), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %and232), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor233 = xor i64 %xor218, %and232, !dbg !3650
    #dbg_value(i64 %xor233, !3503, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3651
    #dbg_value(i64 %xor253, !3473, !DIExpression(), !3411)
  %xor268 = call i64 @llvm.fshl.i64(i64 %xor253, i64 %xor253, i64 1), !dbg !3652
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %xor268), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor245, i64 %xor62, i64 %xor78, i64 %xor268), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor245, i64 %xor132, i64 %xor148, i64 %xor268), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor245, i64 %xor167, i64 %xor183, i64 %xor268), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor245, i64 %xor202, i64 %xor218, i64 %xor268), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor245, i64 %xor268), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor269 = xor i64 %xor245, %xor268, !dbg !3653
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %xor78), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %xor148), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %xor183), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %xor218), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 %xor269, !3477, !DIExpression(), !3411)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3654
    #dbg_value(i64 %xor417, !3487, !DIExpression(), !3411)
  %xor420 = call i64 @llvm.fshl.i64(i64 %xor417, i64 %xor417, i64 55), !dbg !3655
    #dbg_value(i64 %xor420, !3470, !DIExpression(), !3411)
  %not82 = xor i64 %xor70, -1, !dbg !3656
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %not82), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %not82), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and83 = and i64 %xor74, %not82, !dbg !3657
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %and83), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %and83), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor84 = xor i64 %xor66, %and83, !dbg !3658
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %not117 = xor i64 %xor105, -1, !dbg !3659
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %not117), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %not117), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and118 = and i64 %xor109, %not117, !dbg !3660
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %and118), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %and118), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor119 = xor i64 %xor101, %and118, !dbg !3661
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor119), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3662
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %not152 = xor i64 %xor140, -1, !dbg !3663
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %not152), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %not152), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and153 = and i64 %xor144, %not152, !dbg !3664
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %and153), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %and153), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor154 = xor i64 %xor136, %and153, !dbg !3665
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor154), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3666
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %not187 = xor i64 %xor175, -1, !dbg !3667
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %not187), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %not187), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and188 = and i64 %xor179, %not187, !dbg !3668
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %and188), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %and188), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor189 = xor i64 %xor171, %and188, !dbg !3669
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3670
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3470, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3671
    #dbg_value(i64 %xor241, !3470, !DIExpression(), !3411)
  %not88 = xor i64 %xor78, -1, !dbg !3672
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %not88), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %not88), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and89 = and i64 %xor62, %not88, !dbg !3673
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %and89), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %and89), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor90 = xor i64 %xor74, %and89, !dbg !3674
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3675
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not158 = xor i64 %xor148, -1, !dbg !3676
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %not158), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %not158), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and159 = and i64 %xor132, %not158, !dbg !3677
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %and159), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %and159), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor160 = xor i64 %xor144, %and159, !dbg !3678
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor160), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3492, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3679
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not193 = xor i64 %xor183, -1, !dbg !3680
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %not193), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %not193), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and194 = and i64 %xor167, %not193, !dbg !3681
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %and194), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %and194), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor195 = xor i64 %xor179, %and194, !dbg !3682
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor195), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3683
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %xor218), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %not228 = xor i64 %xor218, -1, !dbg !3684
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %not228), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %not228), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and229 = and i64 %xor202, %not228, !dbg !3685
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %and229), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %and229), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor230 = xor i64 %xor214, %and229, !dbg !3686
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3687
    #dbg_value(i64 %xor249, !3472, !DIExpression(), !3411)
  %xor264 = call i64 @llvm.fshl.i64(i64 %xor249, i64 %xor249, i64 1), !dbg !3688
    #dbg_value(!DIArgList(i64 %xor241, i64 %xor264), !3476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %xor264), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %xor264), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %xor264), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %xor264), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %xor264), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor265 = xor i64 %xor241, %xor264, !dbg !3689
    #dbg_value(i64 %xor265, !3476, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3486, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3690
    #dbg_value(i64 %xor413, !3481, !DIExpression(), !3411)
  %xor416 = call i64 @llvm.fshl.i64(i64 %xor413, i64 %xor413, i64 62), !dbg !3691
    #dbg_value(i64 %xor416, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %xor416), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not445 = xor i64 %xor416, -1, !dbg !3692
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %not445), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and446 = and i64 %xor420, %not445, !dbg !3693
    #dbg_value(!DIArgList(i64 %xor432, i64 %and446), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor447 = xor i64 %xor432, %and446, !dbg !3694
    #dbg_value(i64 %xor447, !3461, !DIExpression(), !3411)
  %xor256 = call i64 @llvm.fshl.i64(i64 %xor241, i64 %xor241, i64 1), !dbg !3695
    #dbg_value(!DIArgList(i64 %xor253, i64 %xor256), !3474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %xor256), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %xor256), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %xor256), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %xor256), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor257 = xor i64 %xor253, %xor256, !dbg !3696
    #dbg_value(i64 %xor257, !3474, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3697
    #dbg_value(i64 %xor425, !3494, !DIExpression(), !3411)
  %xor428 = call i64 @llvm.fshl.i64(i64 %xor425, i64 %xor425, i64 41), !dbg !3698
    #dbg_value(i64 %xor428, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %xor432), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not442 = xor i64 %xor432, -1, !dbg !3699
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %not442), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and443 = and i64 %xor416, %not442, !dbg !3700
    #dbg_value(!DIArgList(i64 %xor428, i64 %and443), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor444 = xor i64 %xor428, %and443, !dbg !3701
    #dbg_value(i64 %xor444, !3459, !DIExpression(), !3411)
  %xor272 = call i64 @llvm.fshl.i64(i64 %xor237, i64 %xor237, i64 1), !dbg !3702
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %xor272), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %xor272), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %xor272), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %xor272), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor249, i64 %xor272), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %xor272), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor273 = xor i64 %xor249, %xor272, !dbg !3703
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(i64 %xor273, !3478, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3704
    #dbg_value(i64 %xor421, !3493, !DIExpression(), !3411)
  %xor424 = call i64 @llvm.fshl.i64(i64 %xor421, i64 %xor421, i64 39), !dbg !3705
    #dbg_value(i64 %xor424, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %xor428), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %xor424), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %xor420), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not439 = xor i64 %xor428, -1, !dbg !3706
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %not439), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and440 = and i64 %xor432, %not439, !dbg !3707
    #dbg_value(!DIArgList(i64 %xor424, i64 %and440), !3457, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor441 = xor i64 %xor424, %and440, !dbg !3708
    #dbg_value(i64 %xor441, !3457, !DIExpression(), !3411)
  %not436 = xor i64 %xor424, -1, !dbg !3709
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %not436), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and437 = and i64 %xor428, %not436, !dbg !3710
    #dbg_value(!DIArgList(i64 %xor420, i64 %and437), !3455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor438 = xor i64 %xor420, %and437, !dbg !3711
    #dbg_value(i64 %xor438, !3455, !DIExpression(), !3411)
  %not433 = xor i64 %xor420, -1, !dbg !3712
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %not433), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and434 = and i64 %xor424, %not433, !dbg !3713
    #dbg_value(!DIArgList(i64 %xor416, i64 %and434), !3453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor435 = xor i64 %xor416, %and434, !dbg !3714
    #dbg_value(i64 %xor435, !3453, !DIExpression(), !3411)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3715
    #dbg_value(i64 %xor394, !3502, !DIExpression(), !3411)
  %xor397 = call i64 @llvm.fshl.i64(i64 %xor394, i64 %xor394, i64 56), !dbg !3716
    #dbg_value(i64 %xor397, !3473, !DIExpression(), !3411)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3717
    #dbg_value(i64 %xor382, !3484, !DIExpression(), !3411)
  %xor385 = call i64 @llvm.fshl.i64(i64 %xor382, i64 %xor382, i64 36), !dbg !3718
    #dbg_value(i64 %xor385, !3470, !DIExpression(), !3411)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3719
    #dbg_value(i64 %xor378, !3483, !DIExpression(), !3411)
  %xor381 = call i64 @llvm.fshl.i64(i64 %xor378, i64 %xor378, i64 27), !dbg !3720
    #dbg_value(i64 %xor381, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %xor381), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not410 = xor i64 %xor381, -1, !dbg !3721
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %not410), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and411 = and i64 %xor385, %not410, !dbg !3722
    #dbg_value(!DIArgList(i64 %xor397, i64 %and411), !3451, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor412 = xor i64 %xor397, %and411, !dbg !3723
    #dbg_value(i64 %xor412, !3451, !DIExpression(), !3411)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3724
    #dbg_value(i64 %xor390, !3496, !DIExpression(), !3411)
  %xor393 = call i64 @llvm.fshl.i64(i64 %xor390, i64 %xor390, i64 15), !dbg !3725
    #dbg_value(i64 %xor393, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %xor397), !3449, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not407 = xor i64 %xor397, -1, !dbg !3726
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %not407), !3449, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and408 = and i64 %xor381, %not407, !dbg !3727
    #dbg_value(!DIArgList(i64 %xor393, i64 %and408), !3449, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor409 = xor i64 %xor393, %and408, !dbg !3728
    #dbg_value(i64 %xor409, !3449, !DIExpression(), !3411)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3729
    #dbg_value(i64 %xor386, !3490, !DIExpression(), !3411)
  %xor389 = call i64 @llvm.fshl.i64(i64 %xor386, i64 %xor386, i64 10), !dbg !3730
    #dbg_value(i64 %xor389, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %xor393), !3447, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %xor389), !3445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %xor385), !3443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not404 = xor i64 %xor393, -1, !dbg !3731
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %not404), !3447, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and405 = and i64 %xor397, %not404, !dbg !3732
    #dbg_value(!DIArgList(i64 %xor389, i64 %and405), !3447, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor406 = xor i64 %xor389, %and405, !dbg !3733
    #dbg_value(i64 %xor406, !3447, !DIExpression(), !3411)
  %not401 = xor i64 %xor389, -1, !dbg !3734
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %not401), !3445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and402 = and i64 %xor393, %not401, !dbg !3735
    #dbg_value(!DIArgList(i64 %xor385, i64 %and402), !3445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor403 = xor i64 %xor385, %and402, !dbg !3736
    #dbg_value(i64 %xor403, !3445, !DIExpression(), !3411)
  %not398 = xor i64 %xor385, -1, !dbg !3737
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %not398), !3443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and399 = and i64 %xor389, %not398, !dbg !3738
    #dbg_value(!DIArgList(i64 %xor381, i64 %and399), !3443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor400 = xor i64 %xor381, %and399, !dbg !3739
    #dbg_value(i64 %xor400, !3443, !DIExpression(), !3411)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3740
    #dbg_value(i64 %xor359, !3499, !DIExpression(), !3411)
  %xor362 = call i64 @llvm.fshl.i64(i64 %xor359, i64 %xor359, i64 18), !dbg !3741
    #dbg_value(i64 %xor362, !3473, !DIExpression(), !3411)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3742
    #dbg_value(i64 %xor347, !3486, !DIExpression(), !3411)
  %xor350 = call i64 @llvm.fshl.i64(i64 %xor347, i64 %xor347, i64 6), !dbg !3743
    #dbg_value(i64 %xor350, !3470, !DIExpression(), !3411)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3744
    #dbg_value(i64 %xor343, !3480, !DIExpression(), !3411)
  %xor346 = call i64 @llvm.fshl.i64(i64 %xor343, i64 %xor343, i64 1), !dbg !3745
    #dbg_value(i64 %xor346, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %xor346), !3441, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not375 = xor i64 %xor346, -1, !dbg !3746
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %not375), !3441, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and376 = and i64 %xor350, %not375, !dbg !3747
    #dbg_value(!DIArgList(i64 %xor362, i64 %and376), !3441, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor377 = xor i64 %xor362, %and376, !dbg !3748
    #dbg_value(i64 %xor377, !3441, !DIExpression(), !3411)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3749
    #dbg_value(i64 %xor355, !3498, !DIExpression(), !3411)
  %xor358 = call i64 @llvm.fshl.i64(i64 %xor355, i64 %xor355, i64 8), !dbg !3750
    #dbg_value(i64 %xor358, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %xor362), !3439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not372 = xor i64 %xor362, -1, !dbg !3751
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %not372), !3439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and373 = and i64 %xor346, %not372, !dbg !3752
    #dbg_value(!DIArgList(i64 %xor358, i64 %and373), !3439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor374 = xor i64 %xor358, %and373, !dbg !3753
    #dbg_value(i64 %xor374, !3439, !DIExpression(), !3411)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3754
    #dbg_value(i64 %xor351, !3492, !DIExpression(), !3411)
  %xor354 = call i64 @llvm.fshl.i64(i64 %xor351, i64 %xor351, i64 25), !dbg !3755
    #dbg_value(i64 %xor354, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %xor358), !3437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %xor354), !3435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %xor350), !3433, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not369 = xor i64 %xor358, -1, !dbg !3756
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %not369), !3437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and370 = and i64 %xor362, %not369, !dbg !3757
    #dbg_value(!DIArgList(i64 %xor354, i64 %and370), !3437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor371 = xor i64 %xor354, %and370, !dbg !3758
    #dbg_value(i64 %xor371, !3437, !DIExpression(), !3411)
  %not366 = xor i64 %xor354, -1, !dbg !3759
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %not366), !3435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and367 = and i64 %xor358, %not366, !dbg !3760
    #dbg_value(!DIArgList(i64 %xor350, i64 %and367), !3435, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor368 = xor i64 %xor350, %and367, !dbg !3761
    #dbg_value(i64 %xor368, !3435, !DIExpression(), !3411)
  %not363 = xor i64 %xor350, -1, !dbg !3762
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %not363), !3433, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and364 = and i64 %xor354, %not363, !dbg !3763
    #dbg_value(!DIArgList(i64 %xor346, i64 %and364), !3433, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor365 = xor i64 %xor346, %and364, !dbg !3764
    #dbg_value(i64 %xor365, !3433, !DIExpression(), !3411)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3765
    #dbg_value(i64 %xor324, !3501, !DIExpression(), !3411)
  %xor327 = call i64 @llvm.fshl.i64(i64 %xor324, i64 %xor324, i64 61), !dbg !3766
    #dbg_value(i64 %xor327, !3473, !DIExpression(), !3411)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3767
    #dbg_value(i64 %xor312, !3488, !DIExpression(), !3411)
  %xor315 = call i64 @llvm.fshl.i64(i64 %xor312, i64 %xor312, i64 20), !dbg !3768
    #dbg_value(i64 %xor315, !3470, !DIExpression(), !3411)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3769
    #dbg_value(i64 %xor308, !3482, !DIExpression(), !3411)
  %xor311 = call i64 @llvm.fshl.i64(i64 %xor308, i64 %xor308, i64 28), !dbg !3770
    #dbg_value(i64 %xor311, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %xor311), !3431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not340 = xor i64 %xor311, -1, !dbg !3771
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %not340), !3431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and341 = and i64 %xor315, %not340, !dbg !3772
    #dbg_value(!DIArgList(i64 %xor327, i64 %and341), !3431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor342 = xor i64 %xor327, %and341, !dbg !3773
    #dbg_value(i64 %xor342, !3431, !DIExpression(), !3411)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3774
    #dbg_value(i64 %xor320, !3495, !DIExpression(), !3411)
  %xor323 = call i64 @llvm.fshl.i64(i64 %xor320, i64 %xor320, i64 45), !dbg !3775
    #dbg_value(i64 %xor323, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %xor327), !3429, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not337 = xor i64 %xor327, -1, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %not337), !3429, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and338 = and i64 %xor311, %not337, !dbg !3777
    #dbg_value(!DIArgList(i64 %xor323, i64 %and338), !3429, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor339 = xor i64 %xor323, %and338, !dbg !3778
    #dbg_value(i64 %xor339, !3429, !DIExpression(), !3411)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3779
    #dbg_value(i64 %xor316, !3489, !DIExpression(), !3411)
  %xor319 = call i64 @llvm.fshl.i64(i64 %xor316, i64 %xor316, i64 3), !dbg !3780
    #dbg_value(i64 %xor319, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %xor323), !3427, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %xor319), !3425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %xor315), !3423, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not334 = xor i64 %xor323, -1, !dbg !3781
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %not334), !3427, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and335 = and i64 %xor327, %not334, !dbg !3782
    #dbg_value(!DIArgList(i64 %xor319, i64 %and335), !3427, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor336 = xor i64 %xor319, %and335, !dbg !3783
    #dbg_value(i64 %xor336, !3427, !DIExpression(), !3411)
  %not331 = xor i64 %xor319, -1, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %not331), !3425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and332 = and i64 %xor323, %not331, !dbg !3785
    #dbg_value(!DIArgList(i64 %xor315, i64 %and332), !3425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor333 = xor i64 %xor315, %and332, !dbg !3786
    #dbg_value(i64 %xor333, !3425, !DIExpression(), !3411)
  %not328 = xor i64 %xor315, -1, !dbg !3787
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %not328), !3423, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and329 = and i64 %xor319, %not328, !dbg !3788
    #dbg_value(!DIArgList(i64 %xor311, i64 %and329), !3423, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor330 = xor i64 %xor311, %and329, !dbg !3789
    #dbg_value(i64 %xor330, !3423, !DIExpression(), !3411)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3790
    #dbg_value(i64 %xor287, !3503, !DIExpression(), !3411)
  %xor290 = call i64 @llvm.fshl.i64(i64 %xor287, i64 %xor287, i64 14), !dbg !3791
    #dbg_value(i64 %xor290, !3473, !DIExpression(), !3411)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3792
    #dbg_value(i64 %xor275, !3485, !DIExpression(), !3411)
  %xor278 = call i64 @llvm.fshl.i64(i64 %xor275, i64 %xor275, i64 44), !dbg !3793
    #dbg_value(i64 %xor278, !3470, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor81, i64 %xor257), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3794
    #dbg_value(i64 %xor274, !3479, !DIExpression(), !3411)
    #dbg_value(i64 %xor274, !3469, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor274), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not305 = xor i64 %xor274, -1, !dbg !3795
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %not305), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and306 = and i64 %xor278, %not305, !dbg !3796
    #dbg_value(!DIArgList(i64 %xor290, i64 %and306), !3421, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor307 = xor i64 %xor290, %and306, !dbg !3797
    #dbg_value(i64 %xor307, !3421, !DIExpression(), !3411)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3798
    #dbg_value(i64 %xor283, !3497, !DIExpression(), !3411)
  %xor286 = call i64 @llvm.fshl.i64(i64 %xor283, i64 %xor283, i64 21), !dbg !3799
    #dbg_value(i64 %xor286, !3472, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %xor290), !3419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not302 = xor i64 %xor290, -1, !dbg !3800
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %not302), !3419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and303 = and i64 %xor274, %not302, !dbg !3801
    #dbg_value(!DIArgList(i64 %xor286, i64 %and303), !3419, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor304 = xor i64 %xor286, %and303, !dbg !3802
    #dbg_value(i64 %xor304, !3419, !DIExpression(), !3411)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3803
    #dbg_value(i64 %xor279, !3491, !DIExpression(), !3411)
  %xor282 = call i64 @llvm.fshl.i64(i64 %xor279, i64 %xor279, i64 43), !dbg !3804
    #dbg_value(i64 %xor282, !3471, !DIExpression(), !3411)
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %xor286), !3417, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %xor282), !3415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
    #dbg_value(!DIArgList(i64 %xor274, i64 %xor282, i64 %xor278), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %not299 = xor i64 %xor286, -1, !dbg !3805
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %not299), !3417, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and300 = and i64 %xor290, %not299, !dbg !3806
    #dbg_value(!DIArgList(i64 %xor282, i64 %and300), !3417, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor301 = xor i64 %xor282, %and300, !dbg !3807
    #dbg_value(i64 %xor301, !3417, !DIExpression(), !3411)
  %not296 = xor i64 %xor282, -1, !dbg !3808
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %not296), !3415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3411)
  %and297 = and i64 %xor286, %not296, !dbg !3809
    #dbg_value(!DIArgList(i64 %xor278, i64 %and297), !3415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %xor298 = xor i64 %xor278, %and297, !dbg !3810
    #dbg_value(i64 %xor298, !3415, !DIExpression(), !3411)
  %add = or disjoint i32 %round.0, 1, !dbg !3811
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3812
  %27 = load i64, ptr %arrayidx294, align 8, !dbg !3812
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %xor278), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %not291 = xor i64 %xor278, -1, !dbg !3813
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %not291), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %and292 = and i64 %xor282, %not291, !dbg !3814
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %and292), !3413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3411)
  %28 = xor i64 %and292, %27, !dbg !3815
  %xor295 = xor i64 %28, %xor274, !dbg !3815
    #dbg_value(i64 %xor295, !3413, !DIExpression(), !3411)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3816
    #dbg_value(i32 %add448, !3462, !DIExpression(), !3411)
  br label %for.cond, !dbg !3817, !llvm.loop !3818

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3411
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3411
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3411
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3411
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3411
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3411
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3411
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3411
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3411
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3411
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3411
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3411
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3411
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3411
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3411
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3411
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3411
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3411
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3411
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3411
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3411
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3411
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3411
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3411
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3411
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3820
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3821
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3822
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3823
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3824
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3825
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3826
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3827
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3828
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3829
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3830
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3831
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3832
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3833
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3834
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3835
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3836
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3837
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3838
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3839
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3840
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3841
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3842
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3843
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3844
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3845
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3846
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3847
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3848
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3849
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3850
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3851
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3852
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3853
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3854
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3855
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3856
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3857
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3858
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3859
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3860
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3861
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3862
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3863
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3864
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3865
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3866
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3867
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3868
  ret void, !dbg !3869
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3870 {
entry:
    #dbg_value(ptr %state, !3871, !DIExpression(), !3872)
  %0 = load ptr, ptr %state, align 4, !dbg !3873
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #7, !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3876 {
entry:
    #dbg_value(ptr %s_inc, !3879, !DIExpression(), !3880)
    #dbg_value(i32 %r, !3881, !DIExpression(), !3880)
    #dbg_value(i8 %p, !3882, !DIExpression(), !3880)
  %conv = zext nneg i8 %p to i64, !dbg !3883
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3884
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3884
  %and = shl i64 %0, 3, !dbg !3885
  %mul = and i64 %and, 56, !dbg !3885
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3886
  %shr = lshr i64 %0, 3, !dbg !3887
  %idxprom = trunc i64 %shr to i32, !dbg !3888
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3888
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !3889
  %xor = xor i64 %1, %shl, !dbg !3889
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !3889
  %sub = shl nuw nsw i32 %r, 3, !dbg !3890
  %and3 = add nuw nsw i32 %sub, 56, !dbg !3890
  %mul4 = and i32 %and3, 56, !dbg !3890
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !3891
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !3891
  %sub6 = add nsw i32 %r, -1, !dbg !3892
  %shr7 = lshr i32 %sub6, 3, !dbg !3893
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !3894
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !3895
  %xor9 = xor i64 %2, %shl5, !dbg !3895
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !3895
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3896
  store i64 0, ptr %arrayidx10, align 8, !dbg !3897
  ret void, !dbg !3898
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3899 {
entry:
    #dbg_value(ptr %output, !3902, !DIExpression(), !3903)
    #dbg_value(i32 %outlen, !3904, !DIExpression(), !3903)
    #dbg_value(ptr %state, !3905, !DIExpression(), !3903)
  %0 = load ptr, ptr %state, align 4, !dbg !3906
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #7, !dbg !3907
  ret void, !dbg !3908
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3909 {
entry:
    #dbg_value(ptr %h, !3912, !DIExpression(), !3913)
    #dbg_value(i32 %outlen, !3914, !DIExpression(), !3913)
    #dbg_value(ptr %s_inc, !3915, !DIExpression(), !3913)
    #dbg_value(i32 %r, !3916, !DIExpression(), !3913)
    #dbg_value(i32 0, !3917, !DIExpression(), !3913)
  br label %for.cond, !dbg !3918

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3920
    #dbg_value(i32 %i.0, !3917, !DIExpression(), !3913)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !3921
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !3923

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !3924
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3925
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3925
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !3926
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3927

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !3928
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3930
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !3930
  %sub = sub i64 %conv3, %1, !dbg !3931
  %conv5 = zext i32 %i.0 to i64, !dbg !3932
  %add = add i64 %sub, %conv5, !dbg !3933
  %shr = lshr i64 %add, 3, !dbg !3934
  %idxprom = trunc i64 %shr to i32, !dbg !3935
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3935
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !3935
  %conv7 = zext nneg i32 %r to i64, !dbg !3936
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3937
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3937
  %sub9 = sub i64 %conv7, %3, !dbg !3938
  %conv10 = zext i32 %i.0 to i64, !dbg !3939
  %add11 = add i64 %sub9, %conv10, !dbg !3940
  %and = shl i64 %add11, 3, !dbg !3941
  %mul = and i64 %and, 56, !dbg !3941
  %shr12 = lshr i64 %2, %mul, !dbg !3942
  %conv13 = trunc i64 %shr12 to i8, !dbg !3943
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !3944
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !3945
  %inc = add i32 %i.0, 1, !dbg !3946
    #dbg_value(i32 %inc, !3917, !DIExpression(), !3913)
  br label %for.cond, !dbg !3947, !llvm.loop !3948

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !3920
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !3950
    #dbg_value(ptr %add.ptr, !3912, !DIExpression(), !3913)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !3951
    #dbg_value(i32 %sub15, !3914, !DIExpression(), !3913)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !3952
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3953
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !3954
  %sub18 = sub i64 %4, %conv16, !dbg !3954
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !3954
  br label %while.cond, !dbg !3955

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !3913
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !3913
    #dbg_value(ptr %h.addr.0, !3912, !DIExpression(), !3913)
    #dbg_value(i32 %outlen.addr.0, !3914, !DIExpression(), !3913)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !3956
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !3955

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !3957
    #dbg_value(i32 0, !3917, !DIExpression(), !3913)
  %umin = call i32 @llvm.umin.i32(i32 %outlen.addr.0, i32 %r), !dbg !3959
  br label %for.cond21, !dbg !3959

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !3961
    #dbg_value(i32 %i.1, !3917, !DIExpression(), !3913)
  %exitcond1 = icmp ne i32 %i.1, %umin, !dbg !3962
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !3964

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !3965
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !3967
  %5 = load i64, ptr %arrayidx30, align 8, !dbg !3967
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !3968
  %mul32 = and i32 %and31, 56, !dbg !3968
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !3969
  %shr33 = lshr i64 %5, %sh_prom, !dbg !3969
  %conv34 = trunc i64 %shr33 to i8, !dbg !3970
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !3971
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !3972
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !3973
    #dbg_value(i32 %inc37, !3917, !DIExpression(), !3913)
  br label %for.cond21, !dbg !3974, !llvm.loop !3975

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !3961
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !3977
    #dbg_value(ptr %add.ptr39, !3912, !DIExpression(), !3913)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !3978
    #dbg_value(i32 %sub40, !3914, !DIExpression(), !3913)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !3979
  %conv42 = zext i32 %sub41 to i64, !dbg !3980
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3981
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !3982
  br label %while.cond, !dbg !3955, !llvm.loop !3983

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3985
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !3986 {
entry:
    #dbg_value(ptr %dest, !3991, !DIExpression(), !3992)
    #dbg_value(ptr %src, !3993, !DIExpression(), !3992)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !3994
  store ptr %call, ptr %dest, align 4, !dbg !3995
  %cmp = icmp eq ptr %call, null, !dbg !3996
  br i1 %cmp, label %if.then, label %if.end, !dbg !3996

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !3998
  br label %if.end, !dbg !4000

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4001
  %1 = load ptr, ptr %src, align 4, !dbg !4002
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4003
  ret void, !dbg !4004
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4005 {
entry:
    #dbg_value(ptr %state, !4006, !DIExpression(), !4007)
  %0 = load ptr, ptr %state, align 4, !dbg !4008
  call void @free(ptr noundef %0) #9, !dbg !4009
  ret void, !dbg !4010
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4011 {
entry:
    #dbg_value(ptr %state, !4019, !DIExpression(), !4020)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4021
  store ptr %call, ptr %state, align 4, !dbg !4022
  %cmp = icmp eq ptr %call, null, !dbg !4023
  br i1 %cmp, label %if.then, label %if.end, !dbg !4023

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4025
  br label %if.end, !dbg !4027

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4028
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4029
  ret void, !dbg !4030
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4031 {
entry:
    #dbg_value(ptr %state, !4034, !DIExpression(), !4035)
    #dbg_value(ptr %input, !4036, !DIExpression(), !4035)
    #dbg_value(i32 %inlen, !4037, !DIExpression(), !4035)
  %0 = load ptr, ptr %state, align 4, !dbg !4038
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4039
  ret void, !dbg !4040
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4041 {
entry:
    #dbg_value(ptr %state, !4042, !DIExpression(), !4043)
  %0 = load ptr, ptr %state, align 4, !dbg !4044
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #7, !dbg !4045
  ret void, !dbg !4046
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4047 {
entry:
    #dbg_value(ptr %output, !4050, !DIExpression(), !4051)
    #dbg_value(i32 %outlen, !4052, !DIExpression(), !4051)
    #dbg_value(ptr %state, !4053, !DIExpression(), !4051)
  %0 = load ptr, ptr %state, align 4, !dbg !4054
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #7, !dbg !4055
  ret void, !dbg !4056
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4057 {
entry:
    #dbg_value(ptr %dest, !4062, !DIExpression(), !4063)
    #dbg_value(ptr %src, !4064, !DIExpression(), !4063)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4065
  store ptr %call, ptr %dest, align 4, !dbg !4066
  %cmp = icmp eq ptr %call, null, !dbg !4067
  br i1 %cmp, label %if.then, label %if.end, !dbg !4067

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4069
  br label %if.end, !dbg !4071

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4072
  %1 = load ptr, ptr %src, align 4, !dbg !4073
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4074
  ret void, !dbg !4075
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4076 {
entry:
    #dbg_value(ptr %state, !4077, !DIExpression(), !4078)
  %0 = load ptr, ptr %state, align 4, !dbg !4079
  call void @free(ptr noundef %0) #9, !dbg !4080
  ret void, !dbg !4081
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4082 {
entry:
    #dbg_value(ptr %state, !4090, !DIExpression(), !4091)
    #dbg_value(ptr %input, !4092, !DIExpression(), !4091)
    #dbg_value(i32 %inlen, !4093, !DIExpression(), !4091)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4094
  store ptr %call, ptr %state, align 4, !dbg !4095
  %cmp = icmp eq ptr %call, null, !dbg !4096
  br i1 %cmp, label %if.then, label %if.end, !dbg !4096

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4098
  br label %if.end, !dbg !4100

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4101
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4102
  ret void, !dbg !4103
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4104 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4107, !DIExpression(), !4108)
    #dbg_value(i32 %r, !4109, !DIExpression(), !4108)
    #dbg_value(ptr %m, !4110, !DIExpression(), !4108)
    #dbg_value(i32 %mlen, !4111, !DIExpression(), !4108)
    #dbg_value(i8 %p, !4112, !DIExpression(), !4108)
    #dbg_declare(ptr %t, !4113, !DIExpression(), !4117)
    #dbg_value(i32 0, !4118, !DIExpression(), !4108)
  br label %for.cond, !dbg !4119

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4121
    #dbg_value(i32 %i.0, !4118, !DIExpression(), !4108)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4122
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4124

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4125
  br label %while.cond, !dbg !4125

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4126
  store i64 0, ptr %arrayidx, align 8, !dbg !4128
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4129
    #dbg_value(i32 %inc, !4118, !DIExpression(), !4108)
  br label %for.cond, !dbg !4130, !llvm.loop !4131

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4111, !DIExpression(), !4108)
    #dbg_value(ptr %m.addr.0, !4110, !DIExpression(), !4108)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4133
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4125

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4134

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4137

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4139
    #dbg_value(i32 %i.1, !4118, !DIExpression(), !4108)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4140
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4134

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4142
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4144
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #7, !dbg !4145
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4146
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4147
  %xor = xor i64 %1, %call, !dbg !4147
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4147
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4148
    #dbg_value(i32 %inc7, !4118, !DIExpression(), !4108)
  br label %for.cond2, !dbg !4149, !llvm.loop !4150

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4152
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4153
    #dbg_value(i32 %sub, !4111, !DIExpression(), !4108)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4154
    #dbg_value(ptr %add.ptr9, !4110, !DIExpression(), !4108)
  br label %while.cond, !dbg !4125, !llvm.loop !4155

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4157
    #dbg_value(i32 %i.2, !4118, !DIExpression(), !4108)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4158
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4137

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4160

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4162
  store i8 0, ptr %arrayidx13, align 1, !dbg !4164
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4165
    #dbg_value(i32 %inc15, !4118, !DIExpression(), !4108)
  br label %for.cond10, !dbg !4166, !llvm.loop !4167

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4169
    #dbg_value(i32 %i.3, !4118, !DIExpression(), !4108)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4170
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4160

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4172
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4172
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4174
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4175
  %inc23 = add i32 %i.3, 1, !dbg !4176
    #dbg_value(i32 %inc23, !4118, !DIExpression(), !4108)
  br label %for.cond17, !dbg !4177, !llvm.loop !4178

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4169
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4180
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4181
  %sub26 = add nsw i32 %r, -1, !dbg !4182
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4183
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4184
  %4 = or i8 %3, -128, !dbg !4184
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4184
    #dbg_value(i32 0, !4118, !DIExpression(), !4108)
  br label %for.cond29, !dbg !4185

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4187
    #dbg_value(i32 %i.4, !4118, !DIExpression(), !4108)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4188
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4190

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4191
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4193
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #7, !dbg !4194
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4195
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4196
  %xor38 = xor i64 %5, %call36, !dbg !4196
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4196
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4197
    #dbg_value(i32 %inc40, !4118, !DIExpression(), !4108)
  br label %for.cond29, !dbg !4198, !llvm.loop !4199

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4201
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4202 {
entry:
    #dbg_value(ptr %x, !4205, !DIExpression(), !4206)
    #dbg_value(i64 0, !4207, !DIExpression(), !4206)
    #dbg_value(i32 0, !4208, !DIExpression(), !4210)
  br label %for.cond, !dbg !4211

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4206
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4212
    #dbg_value(i32 %i.0, !4208, !DIExpression(), !4210)
    #dbg_value(i64 %r.0, !4207, !DIExpression(), !4206)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4213
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4215

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4206)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4216
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4216
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4206)
  %conv = zext i8 %0 to i64, !dbg !4218
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4206)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4219
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4206)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4220
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4206)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4220
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4206)
  %or = or i64 %r.0, %shl, !dbg !4221
    #dbg_value(i64 %or, !4207, !DIExpression(), !4206)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4222
    #dbg_value(i32 %inc, !4208, !DIExpression(), !4210)
  br label %for.cond, !dbg !4223, !llvm.loop !4224

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4206
  ret i64 %r.0.lcssa, !dbg !4226
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4227 {
entry:
    #dbg_value(ptr %output, !4230, !DIExpression(), !4231)
    #dbg_value(i32 %nblocks, !4232, !DIExpression(), !4231)
    #dbg_value(ptr %state, !4233, !DIExpression(), !4231)
  %0 = load ptr, ptr %state, align 4, !dbg !4234
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #7, !dbg !4235
  ret void, !dbg !4236
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4237 {
entry:
    #dbg_value(ptr %h, !4238, !DIExpression(), !4239)
    #dbg_value(i32 %nblocks, !4240, !DIExpression(), !4239)
    #dbg_value(ptr %s, !4241, !DIExpression(), !4239)
    #dbg_value(i32 %r, !4242, !DIExpression(), !4239)
  %0 = lshr i32 %r, 3, !dbg !4243
  br label %while.cond, !dbg !4243

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4238, !DIExpression(), !4239)
    #dbg_value(i32 %nblocks.addr.0, !4240, !DIExpression(), !4239)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4244
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4243

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4245
    #dbg_value(i32 0, !4247, !DIExpression(), !4249)
  br label %for.cond, !dbg !4250

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4251
    #dbg_value(i32 %i.0, !4247, !DIExpression(), !4249)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4252
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4254

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4255
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4257
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4258
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4258
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #7, !dbg !4259
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4260
    #dbg_value(i32 %inc, !4247, !DIExpression(), !4249)
  br label %for.cond, !dbg !4261, !llvm.loop !4262

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4264
    #dbg_value(ptr %add.ptr2, !4238, !DIExpression(), !4239)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4265
    #dbg_value(i32 %dec, !4240, !DIExpression(), !4239)
  br label %while.cond, !dbg !4243, !llvm.loop !4266

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4268
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4269 {
entry:
    #dbg_value(ptr %x, !4272, !DIExpression(), !4273)
    #dbg_value(i64 %u, !4274, !DIExpression(), !4273)
    #dbg_value(i32 0, !4275, !DIExpression(), !4277)
  br label %for.cond, !dbg !4278

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4279
    #dbg_value(i32 %i.0, !4275, !DIExpression(), !4277)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4280
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4282

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4283
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4285
  %shr = lshr i64 %u, %sh_prom, !dbg !4285
  %conv = trunc i64 %shr to i8, !dbg !4286
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4287
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4288
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4289
    #dbg_value(i32 %inc, !4275, !DIExpression(), !4277)
  br label %for.cond, !dbg !4290, !llvm.loop !4291

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4293
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4294 {
entry:
    #dbg_value(ptr %dest, !4299, !DIExpression(), !4300)
    #dbg_value(ptr %src, !4301, !DIExpression(), !4300)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4302
  store ptr %call, ptr %dest, align 4, !dbg !4303
  %cmp = icmp eq ptr %call, null, !dbg !4304
  br i1 %cmp, label %if.then, label %if.end, !dbg !4304

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4306
  br label %if.end, !dbg !4308

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4309
  %1 = load ptr, ptr %src, align 4, !dbg !4310
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4311
  ret void, !dbg !4312
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4313 {
entry:
    #dbg_value(ptr %state, !4316, !DIExpression(), !4317)
  %0 = load ptr, ptr %state, align 4, !dbg !4318
  call void @free(ptr noundef %0) #9, !dbg !4319
  ret void, !dbg !4320
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4321 {
entry:
    #dbg_value(ptr %state, !4329, !DIExpression(), !4330)
    #dbg_value(ptr %input, !4331, !DIExpression(), !4330)
    #dbg_value(i32 %inlen, !4332, !DIExpression(), !4330)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4333
  store ptr %call, ptr %state, align 4, !dbg !4334
  %cmp = icmp eq ptr %call, null, !dbg !4335
  br i1 %cmp, label %if.then, label %if.end, !dbg !4335

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4337
  br label %if.end, !dbg !4339

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4340
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4341
  ret void, !dbg !4342
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4343 {
entry:
    #dbg_value(ptr %output, !4346, !DIExpression(), !4347)
    #dbg_value(i32 %nblocks, !4348, !DIExpression(), !4347)
    #dbg_value(ptr %state, !4349, !DIExpression(), !4347)
  %0 = load ptr, ptr %state, align 4, !dbg !4350
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #7, !dbg !4351
  ret void, !dbg !4352
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4353 {
entry:
    #dbg_value(ptr %dest, !4358, !DIExpression(), !4359)
    #dbg_value(ptr %src, !4360, !DIExpression(), !4359)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4361
  store ptr %call, ptr %dest, align 4, !dbg !4362
  %cmp = icmp eq ptr %call, null, !dbg !4363
  br i1 %cmp, label %if.then, label %if.end, !dbg !4363

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4365
  br label %if.end, !dbg !4367

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4368
  %1 = load ptr, ptr %src, align 4, !dbg !4369
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4370
  ret void, !dbg !4371
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4372 {
entry:
    #dbg_value(ptr %state, !4375, !DIExpression(), !4376)
  %0 = load ptr, ptr %state, align 4, !dbg !4377
  call void @free(ptr noundef %0) #9, !dbg !4378
  ret void, !dbg !4379
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4380 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4383, !DIExpression(), !4384)
    #dbg_value(i32 %outlen, !4385, !DIExpression(), !4384)
    #dbg_value(ptr %input, !4386, !DIExpression(), !4384)
    #dbg_value(i32 %inlen, !4387, !DIExpression(), !4384)
  %div = udiv i32 %outlen, 168, !dbg !4388
    #dbg_value(i32 %div, !4389, !DIExpression(), !4384)
    #dbg_declare(ptr %t, !4390, !DIExpression(), !4394)
    #dbg_declare(ptr %s, !4395, !DIExpression(), !4396)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4397
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4398
  %mul = mul nuw i32 %div, 168, !dbg !4399
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4400
    #dbg_value(ptr %add.ptr, !4383, !DIExpression(), !4384)
  %mul1.neg = mul i32 %div, -168, !dbg !4401
  %sub = add i32 %mul1.neg, %outlen, !dbg !4402
    #dbg_value(i32 %sub, !4385, !DIExpression(), !4384)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4403
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4403

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4405
    #dbg_value(i32 0, !4407, !DIExpression(), !4409)
  br label %for.cond, !dbg !4410

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4411
    #dbg_value(i32 %i.0, !4407, !DIExpression(), !4409)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4412
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4414

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4415
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4415
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4417
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4418
  %inc = add i32 %i.0, 1, !dbg !4419
    #dbg_value(i32 %inc, !4407, !DIExpression(), !4409)
  br label %for.cond, !dbg !4420, !llvm.loop !4421

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4423

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #7, !dbg !4423
  ret void, !dbg !4424
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4425 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4426, !DIExpression(), !4427)
    #dbg_value(i32 %outlen, !4428, !DIExpression(), !4427)
    #dbg_value(ptr %input, !4429, !DIExpression(), !4427)
    #dbg_value(i32 %inlen, !4430, !DIExpression(), !4427)
  %div = udiv i32 %outlen, 136, !dbg !4431
    #dbg_value(i32 %div, !4432, !DIExpression(), !4427)
    #dbg_declare(ptr %t, !4433, !DIExpression(), !4437)
    #dbg_declare(ptr %s, !4438, !DIExpression(), !4439)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4440
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4441
  %mul = mul nuw i32 %div, 136, !dbg !4442
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4443
    #dbg_value(ptr %add.ptr, !4426, !DIExpression(), !4427)
  %mul1.neg = mul i32 %div, -136, !dbg !4444
  %sub = add i32 %mul1.neg, %outlen, !dbg !4445
    #dbg_value(i32 %sub, !4428, !DIExpression(), !4427)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4446
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4446

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4448
    #dbg_value(i32 0, !4450, !DIExpression(), !4452)
  br label %for.cond, !dbg !4453

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4454
    #dbg_value(i32 %i.0, !4450, !DIExpression(), !4452)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4455
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4457

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4458
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4458
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4460
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4461
  %inc = add i32 %i.0, 1, !dbg !4462
    #dbg_value(i32 %inc, !4450, !DIExpression(), !4452)
  br label %for.cond, !dbg !4463, !llvm.loop !4464

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4466

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #7, !dbg !4466
  ret void, !dbg !4467
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4468 {
entry:
    #dbg_value(ptr %state, !4476, !DIExpression(), !4477)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4478
  store ptr %call, ptr %state, align 4, !dbg !4479
  %cmp = icmp eq ptr %call, null, !dbg !4480
  br i1 %cmp, label %if.then, label %if.end, !dbg !4480

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4482
  br label %if.end, !dbg !4484

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4485
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4486
  ret void, !dbg !4487
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4488 {
entry:
    #dbg_value(ptr %dest, !4493, !DIExpression(), !4494)
    #dbg_value(ptr %src, !4495, !DIExpression(), !4494)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4496
  store ptr %call, ptr %dest, align 4, !dbg !4497
  %cmp = icmp eq ptr %call, null, !dbg !4498
  br i1 %cmp, label %if.then, label %if.end, !dbg !4498

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4500
  br label %if.end, !dbg !4502

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4503
  %1 = load ptr, ptr %src, align 4, !dbg !4504
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4505
  ret void, !dbg !4506
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4507 {
entry:
    #dbg_value(ptr %state, !4508, !DIExpression(), !4509)
  %0 = load ptr, ptr %state, align 4, !dbg !4510
  call void @free(ptr noundef %0) #9, !dbg !4511
  ret void, !dbg !4512
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4513 {
entry:
    #dbg_value(ptr %state, !4516, !DIExpression(), !4517)
    #dbg_value(ptr %input, !4518, !DIExpression(), !4517)
    #dbg_value(i32 %inlen, !4519, !DIExpression(), !4517)
  %0 = load ptr, ptr %state, align 4, !dbg !4520
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4521
  ret void, !dbg !4522
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4523 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4526, !DIExpression(), !4527)
    #dbg_value(ptr %state, !4528, !DIExpression(), !4527)
    #dbg_declare(ptr %t, !4529, !DIExpression(), !4530)
  %0 = load ptr, ptr %state, align 4, !dbg !4531
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #7, !dbg !4532
  %1 = load ptr, ptr %state, align 4, !dbg !4533
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #7, !dbg !4534
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4535
    #dbg_value(i32 0, !4536, !DIExpression(), !4538)
  br label %for.cond, !dbg !4539

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4540
    #dbg_value(i32 %i.0, !4536, !DIExpression(), !4538)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4541
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4543

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4544
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4544
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4546
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4547
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4548
    #dbg_value(i32 %inc, !4536, !DIExpression(), !4538)
  br label %for.cond, !dbg !4549, !llvm.loop !4550

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4552
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4553 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4556, !DIExpression(), !4557)
    #dbg_value(ptr %input, !4558, !DIExpression(), !4557)
    #dbg_value(i32 %inlen, !4559, !DIExpression(), !4557)
    #dbg_declare(ptr %s, !4560, !DIExpression(), !4564)
    #dbg_declare(ptr %t, !4565, !DIExpression(), !4566)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4567
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #7, !dbg !4568
    #dbg_value(i32 0, !4569, !DIExpression(), !4571)
  br label %for.cond, !dbg !4572

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4573
    #dbg_value(i32 %i.0, !4569, !DIExpression(), !4571)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4574
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4576

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4577
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4577
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4579
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4580
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4581
    #dbg_value(i32 %inc, !4569, !DIExpression(), !4571)
  br label %for.cond, !dbg !4582, !llvm.loop !4583

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4585
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4586 {
entry:
    #dbg_value(ptr %state, !4594, !DIExpression(), !4595)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4596
  store ptr %call, ptr %state, align 4, !dbg !4597
  %cmp = icmp eq ptr %call, null, !dbg !4598
  br i1 %cmp, label %if.then, label %if.end, !dbg !4598

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4600
  br label %if.end, !dbg !4602

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4603
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4604
  ret void, !dbg !4605
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4606 {
entry:
    #dbg_value(ptr %dest, !4611, !DIExpression(), !4612)
    #dbg_value(ptr %src, !4613, !DIExpression(), !4612)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4614
  store ptr %call, ptr %dest, align 4, !dbg !4615
  %cmp = icmp eq ptr %call, null, !dbg !4616
  br i1 %cmp, label %if.then, label %if.end, !dbg !4616

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4618
  br label %if.end, !dbg !4620

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4621
  %1 = load ptr, ptr %src, align 4, !dbg !4622
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4623
  ret void, !dbg !4624
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4625 {
entry:
    #dbg_value(ptr %state, !4628, !DIExpression(), !4629)
    #dbg_value(ptr %input, !4630, !DIExpression(), !4629)
    #dbg_value(i32 %inlen, !4631, !DIExpression(), !4629)
  %0 = load ptr, ptr %state, align 4, !dbg !4632
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4633
  ret void, !dbg !4634
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4635 {
entry:
    #dbg_value(ptr %state, !4636, !DIExpression(), !4637)
  %0 = load ptr, ptr %state, align 4, !dbg !4638
  call void @free(ptr noundef %0) #9, !dbg !4639
  ret void, !dbg !4640
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4641 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4644, !DIExpression(), !4645)
    #dbg_value(ptr %state, !4646, !DIExpression(), !4645)
    #dbg_declare(ptr %t, !4647, !DIExpression(), !4651)
  %0 = load ptr, ptr %state, align 4, !dbg !4652
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #7, !dbg !4653
  %1 = load ptr, ptr %state, align 4, !dbg !4654
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #7, !dbg !4655
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4656
    #dbg_value(i32 0, !4657, !DIExpression(), !4659)
  br label %for.cond, !dbg !4660

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4661
    #dbg_value(i32 %i.0, !4657, !DIExpression(), !4659)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4662
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4664

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4665
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4665
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4667
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4668
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4669
    #dbg_value(i32 %inc, !4657, !DIExpression(), !4659)
  br label %for.cond, !dbg !4670, !llvm.loop !4671

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4673
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4674 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4675, !DIExpression(), !4676)
    #dbg_value(ptr %input, !4677, !DIExpression(), !4676)
    #dbg_value(i32 %inlen, !4678, !DIExpression(), !4676)
    #dbg_declare(ptr %s, !4679, !DIExpression(), !4680)
    #dbg_declare(ptr %t, !4681, !DIExpression(), !4682)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4683
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #7, !dbg !4684
    #dbg_value(i32 0, !4685, !DIExpression(), !4687)
  br label %for.cond, !dbg !4688

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4689
    #dbg_value(i32 %i.0, !4685, !DIExpression(), !4687)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4690
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4692

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4693
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4693
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4695
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4696
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4697
    #dbg_value(i32 %inc, !4685, !DIExpression(), !4687)
  br label %for.cond, !dbg !4698, !llvm.loop !4699

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4701
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4702 {
entry:
    #dbg_value(ptr %state, !4710, !DIExpression(), !4711)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4712
  store ptr %call, ptr %state, align 4, !dbg !4713
  %cmp = icmp eq ptr %call, null, !dbg !4714
  br i1 %cmp, label %if.then, label %if.end, !dbg !4714

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4716
  br label %if.end, !dbg !4718

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4719
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4720
  ret void, !dbg !4721
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4722 {
entry:
    #dbg_value(ptr %dest, !4727, !DIExpression(), !4728)
    #dbg_value(ptr %src, !4729, !DIExpression(), !4728)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4730
  store ptr %call, ptr %dest, align 4, !dbg !4731
  %cmp = icmp eq ptr %call, null, !dbg !4732
  br i1 %cmp, label %if.then, label %if.end, !dbg !4732

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4734
  br label %if.end, !dbg !4736

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4737
  %1 = load ptr, ptr %src, align 4, !dbg !4738
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4739
  ret void, !dbg !4740
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4741 {
entry:
    #dbg_value(ptr %state, !4744, !DIExpression(), !4745)
    #dbg_value(ptr %input, !4746, !DIExpression(), !4745)
    #dbg_value(i32 %inlen, !4747, !DIExpression(), !4745)
  %0 = load ptr, ptr %state, align 4, !dbg !4748
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4749
  ret void, !dbg !4750
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4751 {
entry:
    #dbg_value(ptr %state, !4752, !DIExpression(), !4753)
  %0 = load ptr, ptr %state, align 4, !dbg !4754
  call void @free(ptr noundef %0) #9, !dbg !4755
  ret void, !dbg !4756
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4757 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4760, !DIExpression(), !4761)
    #dbg_value(ptr %state, !4762, !DIExpression(), !4761)
    #dbg_declare(ptr %t, !4763, !DIExpression(), !4767)
  %0 = load ptr, ptr %state, align 4, !dbg !4768
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #7, !dbg !4769
  %1 = load ptr, ptr %state, align 4, !dbg !4770
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #7, !dbg !4771
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4772
    #dbg_value(i32 0, !4773, !DIExpression(), !4775)
  br label %for.cond, !dbg !4776

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4777
    #dbg_value(i32 %i.0, !4773, !DIExpression(), !4775)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4778
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4780

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4781
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4781
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4783
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4784
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4785
    #dbg_value(i32 %inc, !4773, !DIExpression(), !4775)
  br label %for.cond, !dbg !4786, !llvm.loop !4787

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4789
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4790 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4791, !DIExpression(), !4792)
    #dbg_value(ptr %input, !4793, !DIExpression(), !4792)
    #dbg_value(i32 %inlen, !4794, !DIExpression(), !4792)
    #dbg_declare(ptr %s, !4795, !DIExpression(), !4796)
    #dbg_declare(ptr %t, !4797, !DIExpression(), !4798)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4799
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #7, !dbg !4800
    #dbg_value(i32 0, !4801, !DIExpression(), !4803)
  br label %for.cond, !dbg !4804

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4805
    #dbg_value(i32 %i.0, !4801, !DIExpression(), !4803)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4806
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4808

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4809
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4809
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4811
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4812
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4813
    #dbg_value(i32 %inc, !4801, !DIExpression(), !4803)
  br label %for.cond, !dbg !4814, !llvm.loop !4815

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4817
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4818 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4826, !DIExpression(), !4827)
    #dbg_value(ptr %key, !4828, !DIExpression(), !4827)
    #dbg_declare(ptr %skey, !4829, !DIExpression(), !4833)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #10, !dbg !4834
  store ptr %call, ptr %r, align 4, !dbg !4835
  %cmp = icmp eq ptr %call, null, !dbg !4836
  br i1 %cmp, label %if.then, label %if.end, !dbg !4836

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4838
  br label %if.end, !dbg !4840

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #7, !dbg !4841
  %0 = load ptr, ptr %r, align 4, !dbg !4842
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #7, !dbg !4843
  ret void, !dbg !4844
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4845 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4848, !DIExpression(), !4849)
    #dbg_value(ptr %key, !4850, !DIExpression(), !4849)
    #dbg_value(i32 %key_len, !4851, !DIExpression(), !4849)
    #dbg_declare(ptr %skey, !4852, !DIExpression(), !4856)
  %0 = and i32 %key_len, 60, !dbg !4857
    #dbg_value(i32 %key_len, !4858, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4849)
  %shr1 = lshr i32 %key_len, 2, !dbg !4859
    #dbg_value(i32 %shr1, !4860, !DIExpression(), !4849)
  %shl = add nuw nsw i32 %0, 28, !dbg !4857
    #dbg_value(i32 %shl, !4861, !DIExpression(), !4849)
  %shr3 = lshr i32 %key_len, 2, !dbg !4862
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #7, !dbg !4863
  %shr4 = lshr i32 %key_len, 2, !dbg !4864
  %sub5 = add nsw i32 %shr4, -1, !dbg !4865
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4866
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4866
    #dbg_value(i32 %1, !4867, !DIExpression(), !4849)
    #dbg_value(i32 %shr1, !4868, !DIExpression(), !4849)
    #dbg_value(i32 0, !4869, !DIExpression(), !4849)
    #dbg_value(i32 0, !4870, !DIExpression(), !4849)
  br label %for.cond, !dbg !4871

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4873
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4874
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4874
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4849
    #dbg_value(i32 %tmp.0, !4867, !DIExpression(), !4849)
    #dbg_value(i32 %k.0, !4870, !DIExpression(), !4849)
    #dbg_value(i32 %j.0, !4869, !DIExpression(), !4849)
    #dbg_value(i32 %i.0, !4868, !DIExpression(), !4849)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4875
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4877

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4878

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4880
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4880

if.then:                                          ; preds = %for.body
  %or = call i32 @llvm.fshl.i32(i32 %tmp.0, i32 %tmp.0, i32 24), !dbg !4883
    #dbg_value(i32 %or, !4867, !DIExpression(), !4849)
  %call = call fastcc i32 @sub_word(i32 noundef %or) #7, !dbg !4885
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4886
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !4886
  %conv = zext i8 %2 to i32, !dbg !4886
  %xor = xor i32 %call, %conv, !dbg !4887
    #dbg_value(i32 %xor, !4867, !DIExpression(), !4849)
  br label %if.end16, !dbg !4888

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4889
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !4891
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !4891

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #7, !dbg !4892
    #dbg_value(i32 %call15, !4867, !DIExpression(), !4849)
  br label %if.end16, !dbg !4894

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !4895
    #dbg_value(i32 %tmp.2, !4867, !DIExpression(), !4849)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !4896
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !4897
  %3 = load i32, ptr %arrayidx18, align 4, !dbg !4897
  %xor19 = xor i32 %tmp.2, %3, !dbg !4898
    #dbg_value(i32 %xor19, !4867, !DIExpression(), !4849)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !4899
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !4900
  %inc = add i32 %j.0, 1, !dbg !4901
    #dbg_value(i32 %inc, !4869, !DIExpression(), !4849)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !4903
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !4903
  %inc24 = zext i1 %cmp21 to i32, !dbg !4903
  %spec.select1 = add i32 %k.0, %inc24, !dbg !4903
    #dbg_value(i32 %spec.select1, !4870, !DIExpression(), !4849)
    #dbg_value(i32 %spec.select, !4869, !DIExpression(), !4849)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !4904
    #dbg_value(i32 %inc26, !4868, !DIExpression(), !4849)
  br label %for.cond, !dbg !4905, !llvm.loop !4906

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4908
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4908
    #dbg_value(i32 %j.2, !4869, !DIExpression(), !4849)
    #dbg_value(i32 %i.1, !4868, !DIExpression(), !4849)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !4909
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4878

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !4911, !DIExpression(), !4916)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4917
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !4918
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #7, !dbg !4919
  %4 = load i64, ptr %q, align 8, !dbg !4920
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4921
  store i64 %4, ptr %arrayidx35, align 8, !dbg !4922
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4923
  store i64 %4, ptr %arrayidx37, align 8, !dbg !4924
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4925
  store i64 %4, ptr %arrayidx39, align 8, !dbg !4926
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4927
  %5 = load i64, ptr %arrayidx40, align 8, !dbg !4927
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4928
  store i64 %5, ptr %arrayidx41, align 8, !dbg !4929
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !4930
  store i64 %5, ptr %arrayidx43, align 8, !dbg !4931
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !4932
  store i64 %5, ptr %arrayidx45, align 8, !dbg !4933
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !4934
  %6 = load i64, ptr %q, align 8, !dbg !4935
  %and = and i64 %6, 1229782938247303441, !dbg !4936
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4937
  %7 = load i64, ptr %arrayidx48, align 8, !dbg !4937
  %and49 = and i64 %7, 2459565876494606882, !dbg !4938
  %or50 = or disjoint i64 %and, %and49, !dbg !4939
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4940
  %8 = load i64, ptr %arrayidx51, align 8, !dbg !4940
  %and52 = and i64 %8, 4919131752989213764, !dbg !4941
  %or53 = or disjoint i64 %or50, %and52, !dbg !4942
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4943
  %9 = load i64, ptr %arrayidx54, align 8, !dbg !4943
  %and55 = and i64 %9, -8608480567731124088, !dbg !4944
  %or56 = or disjoint i64 %or53, %and55, !dbg !4945
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !4946
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !4947
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4948
  %10 = load i64, ptr %arrayidx59, align 8, !dbg !4948
  %and60 = and i64 %10, 1229782938247303441, !dbg !4949
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4950
  %11 = load i64, ptr %arrayidx61, align 8, !dbg !4950
  %and62 = and i64 %11, 2459565876494606882, !dbg !4951
  %or63 = or disjoint i64 %and60, %and62, !dbg !4952
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !4953
  %12 = load i64, ptr %arrayidx64, align 8, !dbg !4953
  %and65 = and i64 %12, 4919131752989213764, !dbg !4954
  %or66 = or disjoint i64 %or63, %and65, !dbg !4955
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !4956
  %13 = load i64, ptr %arrayidx67, align 8, !dbg !4956
  %and68 = and i64 %13, -8608480567731124088, !dbg !4957
  %or69 = or disjoint i64 %or66, %and68, !dbg !4958
  %add70 = or disjoint i32 %j.2, 1, !dbg !4959
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !4960
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !4961
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !4962
    #dbg_value(i32 %add73, !4868, !DIExpression(), !4849)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !4963
    #dbg_value(i32 %add74, !4869, !DIExpression(), !4849)
  br label %for.cond27, !dbg !4964, !llvm.loop !4965

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !4967
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !4968 {
entry:
    #dbg_value(ptr %skey, !4971, !DIExpression(), !4972)
    #dbg_value(ptr %comp_skey, !4973, !DIExpression(), !4972)
    #dbg_value(i32 %nrounds, !4974, !DIExpression(), !4972)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !4975
  %shl = add nuw nsw i32 %add, 2, !dbg !4975
    #dbg_value(i32 %shl, !4976, !DIExpression(), !4972)
    #dbg_value(i32 0, !4977, !DIExpression(), !4972)
    #dbg_value(i32 0, !4978, !DIExpression(), !4972)
  br label %for.cond, !dbg !4979

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4981
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !4981
    #dbg_value(i32 %v.0, !4978, !DIExpression(), !4972)
    #dbg_value(i32 %u.0, !4977, !DIExpression(), !4972)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !4982
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4984

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !4985
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4985
    #dbg_value(i64 %0, !4987, !DIExpression(), !4988)
    #dbg_value(i64 %0, !4989, !DIExpression(), !4988)
    #dbg_value(i64 %0, !4990, !DIExpression(), !4988)
    #dbg_value(i64 %0, !4991, !DIExpression(), !4988)
  %and = and i64 %0, 1229782938247303441, !dbg !4992
    #dbg_value(i64 %and, !4991, !DIExpression(), !4988)
    #dbg_value(i64 %0, !4990, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !4988)
    #dbg_value(i64 %0, !4989, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !4988)
    #dbg_value(i64 %0, !4987, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !4988)
  %and1 = lshr i64 %0, 1, !dbg !4993
  %shr = and i64 %and1, 1229782938247303441, !dbg !4993
    #dbg_value(i64 %shr, !4990, !DIExpression(), !4988)
  %and2 = lshr i64 %0, 2, !dbg !4994
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !4994
    #dbg_value(i64 %shr4, !4989, !DIExpression(), !4988)
  %and3 = lshr i64 %0, 3, !dbg !4995
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !4995
    #dbg_value(i64 %shr5, !4987, !DIExpression(), !4988)
  %sub = mul nuw i64 %and, 15, !dbg !4996
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !4997
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !4998
  %sub10 = mul nuw i64 %shr, 15, !dbg !4999
  %add11 = or disjoint i32 %v.0, 1, !dbg !5000
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5001
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5002
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5003
  %add15 = or disjoint i32 %v.0, 2, !dbg !5004
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5005
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5006
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5007
  %add19 = or disjoint i32 %v.0, 3, !dbg !5008
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5009
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5010
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5011
    #dbg_value(i32 %inc, !4977, !DIExpression(), !4972)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5012
    #dbg_value(i32 %add21, !4978, !DIExpression(), !4972)
  br label %for.cond, !dbg !5013, !llvm.loop !5014

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5016
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5017 {
entry:
    #dbg_value(ptr %v, !5021, !DIExpression(), !5022)
    #dbg_value(i32 %num, !5023, !DIExpression(), !5022)
    #dbg_value(ptr %src, !5024, !DIExpression(), !5022)
  br label %while.cond, !dbg !5025

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5021, !DIExpression(), !5022)
    #dbg_value(i32 %num.addr.0, !5023, !DIExpression(), !5022)
    #dbg_value(ptr %src.addr.0, !5024, !DIExpression(), !5022)
    #dbg_value(i32 %num.addr.0, !5023, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5022)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5026
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5025

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5027
    #dbg_value(i32 %dec, !5023, !DIExpression(), !5022)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #7, !dbg !5028
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5030
    #dbg_value(ptr %incdec.ptr, !5021, !DIExpression(), !5022)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5031
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5032
    #dbg_value(ptr %add.ptr, !5024, !DIExpression(), !5022)
  br label %while.cond, !dbg !5025, !llvm.loop !5033

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5035
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5036 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5039, !DIExpression(), !5040)
    #dbg_declare(ptr %q, !5041, !DIExpression(), !5042)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #9, !dbg !5043
  %conv = zext i32 %x to i64, !dbg !5044
  store i64 %conv, ptr %q, align 8, !dbg !5045
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5046
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5047
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5048
  %0 = load i64, ptr %q, align 8, !dbg !5049
  %conv5 = trunc i64 %0 to i32, !dbg !5050
  ret i32 %conv5, !dbg !5051
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5052 {
entry:
    #dbg_value(ptr %q0, !5057, !DIExpression(), !5058)
    #dbg_value(ptr %q1, !5059, !DIExpression(), !5058)
    #dbg_value(ptr %w, !5060, !DIExpression(), !5058)
  %0 = load i32, ptr %w, align 4, !dbg !5061
  %conv = zext i32 %0 to i64, !dbg !5061
    #dbg_value(i64 %conv, !5062, !DIExpression(), !5058)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5063
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5063
  %conv2 = zext i32 %1 to i64, !dbg !5063
    #dbg_value(i64 %conv2, !5064, !DIExpression(), !5058)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5065
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5065
  %conv4 = zext i32 %2 to i64, !dbg !5065
    #dbg_value(i64 %conv4, !5066, !DIExpression(), !5058)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5067
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5067
  %conv6 = zext i32 %3 to i64, !dbg !5067
    #dbg_value(i64 %conv6, !5068, !DIExpression(), !5058)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5069
  %or = or i64 %shl, %conv, !dbg !5070
    #dbg_value(i64 %or, !5062, !DIExpression(), !5058)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5071
  %or8 = or i64 %shl7, %conv2, !dbg !5072
    #dbg_value(i64 %or8, !5064, !DIExpression(), !5058)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5073
  %or10 = or i64 %shl9, %conv4, !dbg !5074
    #dbg_value(i64 %or10, !5066, !DIExpression(), !5058)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5075
  %or12 = or i64 %shl11, %conv6, !dbg !5076
    #dbg_value(i64 %or12, !5068, !DIExpression(), !5058)
  %and = and i64 %or, 281470681808895, !dbg !5077
    #dbg_value(i64 %and, !5062, !DIExpression(), !5058)
  %and13 = and i64 %or8, 281470681808895, !dbg !5078
    #dbg_value(i64 %and13, !5064, !DIExpression(), !5058)
  %and14 = and i64 %or10, 281470681808895, !dbg !5079
    #dbg_value(i64 %and14, !5066, !DIExpression(), !5058)
  %and15 = and i64 %or12, 281470681808895, !dbg !5080
    #dbg_value(i64 %and15, !5068, !DIExpression(), !5058)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5081
  %or17 = or i64 %and, %shl16, !dbg !5082
    #dbg_value(i64 %or17, !5062, !DIExpression(), !5058)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5083
  %or19 = or i64 %and13, %shl18, !dbg !5084
    #dbg_value(i64 %or19, !5064, !DIExpression(), !5058)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5066, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5058)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5068, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5058)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5085
    #dbg_value(i64 %and24, !5062, !DIExpression(), !5058)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5086
    #dbg_value(i64 %and25, !5064, !DIExpression(), !5058)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5066, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5058)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5068, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5058)
  %4 = shl nuw i64 %and14, 16, !dbg !5087
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5087
  %and26 = or i64 %4, %5, !dbg !5087
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5087
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5088
  store i64 %or29, ptr %q0, align 8, !dbg !5089
  %6 = shl nuw i64 %and15, 16, !dbg !5090
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5090
  %and27 = or i64 %6, %7, !dbg !5090
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5090
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5091
  store i64 %or31, ptr %q1, align 8, !dbg !5092
  ret void, !dbg !5093
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5094 {
entry:
    #dbg_value(ptr %q, !5095, !DIExpression(), !5096)
  %0 = load i64, ptr %q, align 8, !dbg !5097
    #dbg_value(i64 %0, !5099, !DIExpression(), !5100)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5097
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5097
    #dbg_value(i64 %1, !5101, !DIExpression(), !5100)
  %and = and i64 %0, 6148914691236517205, !dbg !5097
  %and2 = shl i64 %1, 1, !dbg !5097
  %shl = and i64 %and2, -6148914691236517206, !dbg !5097
  %or = or disjoint i64 %and, %shl, !dbg !5097
  store i64 %or, ptr %q, align 8, !dbg !5097
  %and4 = lshr i64 %0, 1, !dbg !5097
  %shr = and i64 %and4, 6148914691236517205, !dbg !5097
  %and5 = and i64 %1, -6148914691236517206, !dbg !5097
  %or6 = or disjoint i64 %shr, %and5, !dbg !5097
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5097
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5097
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5102
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5102
    #dbg_value(i64 %2, !5104, !DIExpression(), !5105)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5102
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5102
    #dbg_value(i64 %3, !5106, !DIExpression(), !5105)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5102
  %and14 = shl i64 %3, 1, !dbg !5102
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5102
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5102
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5102
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5102
  %and18 = lshr i64 %2, 1, !dbg !5102
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5102
  %and20 = and i64 %3, -6148914691236517206, !dbg !5102
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5102
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5102
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5102
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5107
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5107
    #dbg_value(i64 %4, !5109, !DIExpression(), !5110)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5107
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5107
    #dbg_value(i64 %5, !5111, !DIExpression(), !5110)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5107
  %and30 = shl i64 %5, 1, !dbg !5107
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5107
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5107
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5107
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5107
  %and34 = lshr i64 %4, 1, !dbg !5107
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5107
  %and36 = and i64 %5, -6148914691236517206, !dbg !5107
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5107
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5107
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5107
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5112
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5112
    #dbg_value(i64 %6, !5114, !DIExpression(), !5115)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5112
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5112
    #dbg_value(i64 %7, !5116, !DIExpression(), !5115)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5112
  %and46 = shl i64 %7, 1, !dbg !5112
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5112
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5112
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5112
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5112
  %and50 = lshr i64 %6, 1, !dbg !5112
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5112
  %and52 = and i64 %7, -6148914691236517206, !dbg !5112
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5112
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5112
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5112
  %8 = load i64, ptr %q, align 8, !dbg !5117
    #dbg_value(i64 %8, !5119, !DIExpression(), !5120)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5117
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5117
    #dbg_value(i64 %9, !5121, !DIExpression(), !5120)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5117
  %and62 = shl i64 %9, 2, !dbg !5117
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5117
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5117
  store i64 %or64, ptr %q, align 8, !dbg !5117
  %and66 = lshr i64 %8, 2, !dbg !5117
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5117
  %and68 = and i64 %9, -3689348814741910324, !dbg !5117
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5117
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5117
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5117
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5122
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5122
    #dbg_value(i64 %10, !5124, !DIExpression(), !5125)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5122
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5122
    #dbg_value(i64 %11, !5126, !DIExpression(), !5125)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5122
  %and78 = shl i64 %11, 2, !dbg !5122
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5122
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5122
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5122
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5122
  %and82 = lshr i64 %10, 2, !dbg !5122
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5122
  %and84 = and i64 %11, -3689348814741910324, !dbg !5122
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5122
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5122
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5122
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5127
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5127
    #dbg_value(i64 %12, !5129, !DIExpression(), !5130)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5127
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5127
    #dbg_value(i64 %13, !5131, !DIExpression(), !5130)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5127
  %and94 = shl i64 %13, 2, !dbg !5127
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5127
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5127
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5127
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5127
  %and98 = lshr i64 %12, 2, !dbg !5127
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5127
  %and100 = and i64 %13, -3689348814741910324, !dbg !5127
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5127
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5127
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5127
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5132
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5132
    #dbg_value(i64 %14, !5134, !DIExpression(), !5135)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5132
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5132
    #dbg_value(i64 %15, !5136, !DIExpression(), !5135)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5132
  %and110 = shl i64 %15, 2, !dbg !5132
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5132
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5132
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5132
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5132
  %and114 = lshr i64 %14, 2, !dbg !5132
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5132
  %and116 = and i64 %15, -3689348814741910324, !dbg !5132
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5132
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5132
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5132
  %16 = load i64, ptr %q, align 8, !dbg !5137
    #dbg_value(i64 %16, !5139, !DIExpression(), !5140)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5137
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5137
    #dbg_value(i64 %17, !5141, !DIExpression(), !5140)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5137
  %and126 = shl i64 %17, 4, !dbg !5137
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5137
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5137
  store i64 %or128, ptr %q, align 8, !dbg !5137
  %and130 = lshr i64 %16, 4, !dbg !5137
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5137
  %and132 = and i64 %17, -1085102592571150096, !dbg !5137
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5137
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5137
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5137
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5142
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5142
    #dbg_value(i64 %18, !5144, !DIExpression(), !5145)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5142
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5142
    #dbg_value(i64 %19, !5146, !DIExpression(), !5145)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5142
  %and142 = shl i64 %19, 4, !dbg !5142
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5142
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5142
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5142
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5142
  %and146 = lshr i64 %18, 4, !dbg !5142
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5142
  %and148 = and i64 %19, -1085102592571150096, !dbg !5142
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5142
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5142
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5142
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5147
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5147
    #dbg_value(i64 %20, !5149, !DIExpression(), !5150)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5147
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5147
    #dbg_value(i64 %21, !5151, !DIExpression(), !5150)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5147
  %and158 = shl i64 %21, 4, !dbg !5147
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5147
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5147
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5147
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5147
  %and162 = lshr i64 %20, 4, !dbg !5147
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5147
  %and164 = and i64 %21, -1085102592571150096, !dbg !5147
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5147
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5147
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5147
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5152
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5152
    #dbg_value(i64 %22, !5154, !DIExpression(), !5155)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5152
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5152
    #dbg_value(i64 %23, !5156, !DIExpression(), !5155)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5152
  %and174 = shl i64 %23, 4, !dbg !5152
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5152
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5152
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5152
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5152
  %and178 = lshr i64 %22, 4, !dbg !5152
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5152
  %and180 = and i64 %23, -1085102592571150096, !dbg !5152
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5152
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5152
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5152
  ret void, !dbg !5157
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5158 {
entry:
    #dbg_value(ptr %q, !5159, !DIExpression(), !5160)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5161
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5161
    #dbg_value(i64 %0, !5162, !DIExpression(), !5160)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5163
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5163
    #dbg_value(i64 %1, !5164, !DIExpression(), !5160)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5165
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5165
    #dbg_value(i64 %2, !5166, !DIExpression(), !5160)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5167
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5167
    #dbg_value(i64 %3, !5168, !DIExpression(), !5160)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5169
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5169
    #dbg_value(i64 %4, !5170, !DIExpression(), !5160)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5171
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5171
    #dbg_value(i64 %5, !5172, !DIExpression(), !5160)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5173
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5173
    #dbg_value(i64 %6, !5174, !DIExpression(), !5160)
  %7 = load i64, ptr %q, align 8, !dbg !5175
    #dbg_value(i64 %7, !5176, !DIExpression(), !5160)
  %xor = xor i64 %3, %5, !dbg !5177
    #dbg_value(i64 %xor, !5178, !DIExpression(), !5160)
  %xor8 = xor i64 %0, %6, !dbg !5179
    #dbg_value(i64 %xor8, !5180, !DIExpression(), !5160)
  %xor9 = xor i64 %0, %3, !dbg !5181
    #dbg_value(i64 %xor9, !5182, !DIExpression(), !5160)
  %xor10 = xor i64 %0, %5, !dbg !5183
    #dbg_value(i64 %xor10, !5184, !DIExpression(), !5160)
  %xor11 = xor i64 %1, %2, !dbg !5185
    #dbg_value(i64 %xor11, !5186, !DIExpression(), !5160)
  %xor12 = xor i64 %xor11, %7, !dbg !5187
    #dbg_value(i64 %xor12, !5188, !DIExpression(), !5160)
  %xor13 = xor i64 %xor12, %3, !dbg !5189
    #dbg_value(i64 %xor13, !5190, !DIExpression(), !5160)
  %xor14 = xor i64 %xor8, %xor, !dbg !5191
    #dbg_value(i64 %xor14, !5192, !DIExpression(), !5160)
  %xor15 = xor i64 %xor12, %0, !dbg !5193
    #dbg_value(i64 %xor15, !5194, !DIExpression(), !5160)
  %xor16 = xor i64 %xor12, %6, !dbg !5195
    #dbg_value(i64 %xor16, !5196, !DIExpression(), !5160)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5197
    #dbg_value(i64 %xor17, !5198, !DIExpression(), !5160)
  %xor18 = xor i64 %4, %xor14, !dbg !5199
    #dbg_value(i64 %xor18, !5200, !DIExpression(), !5160)
  %xor19 = xor i64 %xor18, %5, !dbg !5201
    #dbg_value(i64 %xor19, !5202, !DIExpression(), !5160)
  %xor20 = xor i64 %xor18, %1, !dbg !5203
    #dbg_value(i64 %xor20, !5204, !DIExpression(), !5160)
  %xor21 = xor i64 %xor19, %7, !dbg !5205
    #dbg_value(i64 %xor21, !5206, !DIExpression(), !5160)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5207
    #dbg_value(i64 %xor22, !5208, !DIExpression(), !5160)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5209
    #dbg_value(i64 %xor23, !5210, !DIExpression(), !5160)
  %xor24 = xor i64 %7, %xor23, !dbg !5211
    #dbg_value(i64 %xor24, !5212, !DIExpression(), !5160)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5213
    #dbg_value(i64 %xor25, !5214, !DIExpression(), !5160)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5215, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5216
    #dbg_value(i64 %xor27, !5217, !DIExpression(), !5160)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5218, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5219, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
  %and = and i64 %xor14, %xor19, !dbg !5220
    #dbg_value(i64 %and, !5221, !DIExpression(), !5160)
  %and30 = and i64 %xor17, %xor21, !dbg !5222
    #dbg_value(i64 %and30, !5223, !DIExpression(), !5160)
  %xor31 = xor i64 %and30, %and, !dbg !5224
    #dbg_value(i64 %xor31, !5225, !DIExpression(), !5160)
  %and32 = and i64 %xor13, %7, !dbg !5226
    #dbg_value(i64 %and32, !5227, !DIExpression(), !5160)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5228, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
  %and34 = and i64 %xor8, %xor27, !dbg !5229
    #dbg_value(i64 %and34, !5230, !DIExpression(), !5160)
  %and35 = and i64 %xor16, %xor12, !dbg !5231
    #dbg_value(i64 %and35, !5232, !DIExpression(), !5160)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5233, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
  %and37 = and i64 %xor15, %xor24, !dbg !5234
    #dbg_value(i64 %and37, !5235, !DIExpression(), !5160)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5236, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
  %and39 = and i64 %xor9, %xor23, !dbg !5237
    #dbg_value(i64 %and39, !5238, !DIExpression(), !5160)
  %and40 = and i64 %xor, %xor25, !dbg !5239
    #dbg_value(i64 %and40, !5240, !DIExpression(), !5160)
  %xor41 = xor i64 %and40, %and39, !dbg !5241
    #dbg_value(i64 %xor41, !5242, !DIExpression(), !5160)
  %and42 = and i64 %xor10, %xor22, !dbg !5243
    #dbg_value(i64 %and42, !5244, !DIExpression(), !5160)
  %xor43 = xor i64 %and42, %and39, !dbg !5245
    #dbg_value(i64 %xor43, !5246, !DIExpression(), !5160)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5247
    #dbg_value(i64 %xor44, !5248, !DIExpression(), !5160)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5249, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5250, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5251, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5252
    #dbg_value(i64 %xor48, !5253, !DIExpression(), !5160)
  %8 = xor i64 %xor10, %and32, !dbg !5254
  %9 = xor i64 %8, %xor22, !dbg !5254
  %10 = xor i64 %9, %and, !dbg !5254
  %xor49 = xor i64 %10, %xor43, !dbg !5254
    #dbg_value(i64 %xor49, !5255, !DIExpression(), !5160)
  %11 = xor i64 %xor27, %and35, !dbg !5256
  %12 = xor i64 %11, %xor8, !dbg !5256
  %13 = xor i64 %12, %and34, !dbg !5256
  %xor50 = xor i64 %13, %xor41, !dbg !5256
    #dbg_value(i64 %xor50, !5257, !DIExpression(), !5160)
  %14 = xor i64 %xor27, %and37, !dbg !5258
  %15 = xor i64 %14, %0, !dbg !5258
  %16 = xor i64 %15, %and34, !dbg !5258
  %xor51 = xor i64 %16, %xor43, !dbg !5258
    #dbg_value(i64 %xor51, !5259, !DIExpression(), !5160)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5260
    #dbg_value(i64 %xor52, !5261, !DIExpression(), !5160)
  %and53 = and i64 %xor48, %xor50, !dbg !5262
    #dbg_value(i64 %and53, !5263, !DIExpression(), !5160)
  %xor54 = xor i64 %xor51, %and53, !dbg !5264
    #dbg_value(i64 %xor54, !5265, !DIExpression(), !5160)
  %and55 = and i64 %xor52, %xor54, !dbg !5266
    #dbg_value(i64 %and55, !5267, !DIExpression(), !5160)
  %xor56 = xor i64 %and55, %xor49, !dbg !5268
    #dbg_value(i64 %xor56, !5269, !DIExpression(), !5160)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5270
    #dbg_value(i64 %xor57, !5271, !DIExpression(), !5160)
  %xor58 = xor i64 %xor49, %and53, !dbg !5272
    #dbg_value(i64 %xor58, !5273, !DIExpression(), !5160)
  %and59 = and i64 %xor58, %xor57, !dbg !5274
    #dbg_value(i64 %and59, !5275, !DIExpression(), !5160)
  %xor60 = xor i64 %and59, %xor51, !dbg !5276
    #dbg_value(i64 %xor60, !5277, !DIExpression(), !5160)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5278
    #dbg_value(i64 %xor61, !5279, !DIExpression(), !5160)
  %xor62 = xor i64 %and59, %and53, !dbg !5280
    #dbg_value(i64 %xor62, !5281, !DIExpression(), !5160)
  %and63 = and i64 %xor51, %xor62, !dbg !5282
    #dbg_value(i64 %and63, !5283, !DIExpression(), !5160)
  %xor64 = xor i64 %and63, %xor61, !dbg !5284
    #dbg_value(i64 %xor64, !5285, !DIExpression(), !5160)
  %xor65 = xor i64 %xor54, %and63, !dbg !5286
    #dbg_value(i64 %xor65, !5287, !DIExpression(), !5160)
  %and66 = and i64 %xor56, %xor65, !dbg !5288
    #dbg_value(i64 %and66, !5289, !DIExpression(), !5160)
  %xor67 = xor i64 %xor52, %and66, !dbg !5290
    #dbg_value(i64 %xor67, !5291, !DIExpression(), !5160)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5292
    #dbg_value(i64 %xor68, !5293, !DIExpression(), !5160)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5294
    #dbg_value(i64 %xor69, !5295, !DIExpression(), !5160)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5296
    #dbg_value(i64 %xor70, !5297, !DIExpression(), !5160)
  %xor71 = xor i64 %and63, %xor50, !dbg !5298
    #dbg_value(i64 %xor71, !5299, !DIExpression(), !5160)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5300
    #dbg_value(i64 %xor72, !5301, !DIExpression(), !5160)
  %and73 = and i64 %xor71, %xor19, !dbg !5302
    #dbg_value(i64 %and73, !5303, !DIExpression(), !5160)
  %and74 = and i64 %xor64, %xor21, !dbg !5304
    #dbg_value(i64 %and74, !5305, !DIExpression(), !5160)
  %and75 = and i64 %xor60, %7, !dbg !5306
    #dbg_value(i64 %and75, !5307, !DIExpression(), !5160)
  %and76 = and i64 %xor70, %xor27, !dbg !5308
    #dbg_value(i64 %and76, !5309, !DIExpression(), !5160)
  %and77 = and i64 %xor67, %xor12, !dbg !5310
    #dbg_value(i64 %and77, !5311, !DIExpression(), !5160)
  %and78 = and i64 %xor56, %xor24, !dbg !5312
    #dbg_value(i64 %and78, !5313, !DIExpression(), !5160)
  %and79 = and i64 %xor69, %xor23, !dbg !5314
    #dbg_value(i64 %and79, !5315, !DIExpression(), !5160)
  %and80 = and i64 %xor72, %xor25, !dbg !5316
    #dbg_value(i64 %and80, !5317, !DIExpression(), !5160)
  %and81 = and i64 %xor68, %xor22, !dbg !5318
    #dbg_value(i64 %and81, !5319, !DIExpression(), !5160)
  %and82 = and i64 %xor71, %xor14, !dbg !5320
    #dbg_value(i64 %and82, !5321, !DIExpression(), !5160)
  %and83 = and i64 %xor64, %xor17, !dbg !5322
    #dbg_value(i64 %and83, !5323, !DIExpression(), !5160)
  %and84 = and i64 %xor60, %xor13, !dbg !5324
    #dbg_value(i64 %and84, !5325, !DIExpression(), !5160)
  %and85 = and i64 %xor70, %xor8, !dbg !5326
    #dbg_value(i64 %and85, !5327, !DIExpression(), !5160)
  %and86 = and i64 %xor67, %xor16, !dbg !5328
    #dbg_value(i64 %and86, !5329, !DIExpression(), !5160)
  %and87 = and i64 %xor56, %xor15, !dbg !5330
    #dbg_value(i64 %and87, !5331, !DIExpression(), !5160)
  %and88 = and i64 %xor69, %xor9, !dbg !5332
    #dbg_value(i64 %and88, !5333, !DIExpression(), !5160)
  %and89 = and i64 %xor72, %xor, !dbg !5334
    #dbg_value(i64 %and89, !5335, !DIExpression(), !5160)
  %and90 = and i64 %xor68, %xor10, !dbg !5336
    #dbg_value(i64 %and90, !5337, !DIExpression(), !5160)
  %xor91 = xor i64 %and88, %and89, !dbg !5338
    #dbg_value(i64 %xor91, !5339, !DIExpression(), !5160)
  %xor92 = xor i64 %and83, %and84, !dbg !5340
    #dbg_value(i64 %xor92, !5341, !DIExpression(), !5160)
  %xor93 = xor i64 %and78, %and86, !dbg !5342
    #dbg_value(i64 %xor93, !5343, !DIExpression(), !5160)
  %xor94 = xor i64 %and82, %and83, !dbg !5344
    #dbg_value(i64 %xor94, !5345, !DIExpression(), !5160)
  %xor95 = xor i64 %and75, %and85, !dbg !5346
    #dbg_value(i64 %xor95, !5347, !DIExpression(), !5160)
  %xor96 = xor i64 %and75, %and78, !dbg !5348
    #dbg_value(i64 %xor96, !5349, !DIExpression(), !5160)
  %xor97 = xor i64 %and80, %and81, !dbg !5350
    #dbg_value(i64 %xor97, !5351, !DIExpression(), !5160)
  %xor98 = xor i64 %and73, %and76, !dbg !5352
    #dbg_value(i64 %xor98, !5353, !DIExpression(), !5160)
  %xor99 = xor i64 %and79, %and80, !dbg !5354
    #dbg_value(i64 %xor99, !5355, !DIExpression(), !5160)
  %xor100 = xor i64 %and89, %and90, !dbg !5356
    #dbg_value(i64 %xor100, !5357, !DIExpression(), !5160)
  %xor101 = xor i64 %and85, %xor93, !dbg !5358
    #dbg_value(i64 %xor101, !5359, !DIExpression(), !5160)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5360
    #dbg_value(i64 %xor102, !5361, !DIExpression(), !5160)
  %xor103 = xor i64 %and77, %xor91, !dbg !5362
    #dbg_value(i64 %xor103, !5363, !DIExpression(), !5160)
  %xor104 = xor i64 %and76, %xor99, !dbg !5364
    #dbg_value(i64 %xor104, !5365, !DIExpression(), !5160)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5366
    #dbg_value(i64 %xor105, !5367, !DIExpression(), !5160)
  %xor106 = xor i64 %and87, %xor102, !dbg !5368
    #dbg_value(i64 %xor106, !5369, !DIExpression(), !5160)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5370
    #dbg_value(i64 %xor107, !5371, !DIExpression(), !5160)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5372
    #dbg_value(i64 %xor108, !5373, !DIExpression(), !5160)
  %xor109 = xor i64 %and77, %xor104, !dbg !5374
    #dbg_value(i64 %xor109, !5375, !DIExpression(), !5160)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5376
    #dbg_value(i64 %xor110, !5377, !DIExpression(), !5160)
  %xor111 = xor i64 %and74, %xor108, !dbg !5378
    #dbg_value(i64 %xor111, !5379, !DIExpression(), !5160)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5380
    #dbg_value(i64 %xor112, !5381, !DIExpression(), !5160)
  %17 = xor i64 %xor107, %xor101, !dbg !5382
  %xor113 = xor i64 %17, -1, !dbg !5382
    #dbg_value(i64 %xor113, !5383, !DIExpression(), !5160)
  %18 = xor i64 %xor105, %xor93, !dbg !5384
  %xor115 = xor i64 %18, -1, !dbg !5384
    #dbg_value(i64 %xor115, !5385, !DIExpression(), !5160)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5386, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5160)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5387
    #dbg_value(i64 %xor117, !5388, !DIExpression(), !5160)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5389
    #dbg_value(i64 %xor118, !5390, !DIExpression(), !5160)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5391
    #dbg_value(i64 %xor119, !5392, !DIExpression(), !5160)
  %19 = xor i64 %xor117, %xor109, !dbg !5393
  %xor121 = xor i64 %19, -1, !dbg !5393
    #dbg_value(i64 %xor121, !5394, !DIExpression(), !5160)
  %20 = xor i64 %xor110, %xor100, !dbg !5395
  %21 = xor i64 %20, %xor109, !dbg !5395
  %xor123 = xor i64 %21, -1, !dbg !5395
    #dbg_value(i64 %xor123, !5396, !DIExpression(), !5160)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5397
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5398
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5399
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5400
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5401
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5402
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5403
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5404
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5405
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5406
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5407
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5408
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5409
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5410
  store i64 %xor115, ptr %q, align 8, !dbg !5411
  ret void, !dbg !5412
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5413 {
entry:
    #dbg_value(ptr %src, !5416, !DIExpression(), !5417)
  %0 = load i8, ptr %src, align 1, !dbg !5418
  %conv = zext i8 %0 to i32, !dbg !5419
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5420
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5420
  %conv2 = zext i8 %1 to i32, !dbg !5421
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5422
  %or = or disjoint i32 %shl, %conv, !dbg !5423
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5424
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5424
  %conv4 = zext i8 %2 to i32, !dbg !5425
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5426
  %or6 = or disjoint i32 %or, %shl5, !dbg !5427
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5428
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5428
  %conv8 = zext i8 %3 to i32, !dbg !5429
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5430
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5431
  ret i32 %or10, !dbg !5432
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5433 {
entry:
    #dbg_value(ptr %r, !5434, !DIExpression(), !5435)
    #dbg_value(ptr %key, !5436, !DIExpression(), !5435)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5437
  ret void, !dbg !5438
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5439 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5447, !DIExpression(), !5448)
    #dbg_value(ptr %key, !5449, !DIExpression(), !5448)
    #dbg_declare(ptr %skey, !5450, !DIExpression(), !5454)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #10, !dbg !5455
  store ptr %call, ptr %r, align 4, !dbg !5456
  %cmp = icmp eq ptr %call, null, !dbg !5457
  br i1 %cmp, label %if.then, label %if.end, !dbg !5457

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5459
  br label %if.end, !dbg !5461

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #7, !dbg !5462
  %0 = load ptr, ptr %r, align 4, !dbg !5463
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #7, !dbg !5464
  ret void, !dbg !5465
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5466 {
entry:
    #dbg_value(ptr %r, !5467, !DIExpression(), !5468)
    #dbg_value(ptr %key, !5469, !DIExpression(), !5468)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5470
  ret void, !dbg !5471
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5472 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5480, !DIExpression(), !5481)
    #dbg_value(ptr %key, !5482, !DIExpression(), !5481)
    #dbg_declare(ptr %skey, !5483, !DIExpression(), !5487)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #10, !dbg !5488
  store ptr %call, ptr %r, align 4, !dbg !5489
  %cmp = icmp eq ptr %call, null, !dbg !5490
  br i1 %cmp, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5492
  br label %if.end, !dbg !5494

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #7, !dbg !5495
  %0 = load ptr, ptr %r, align 4, !dbg !5496
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #7, !dbg !5497
  ret void, !dbg !5498
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5499 {
entry:
    #dbg_value(ptr %r, !5500, !DIExpression(), !5501)
    #dbg_value(ptr %key, !5502, !DIExpression(), !5501)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5503
  ret void, !dbg !5504
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5505 {
entry:
    #dbg_value(ptr %out, !5510, !DIExpression(), !5511)
    #dbg_value(ptr %in, !5512, !DIExpression(), !5511)
    #dbg_value(i32 %nblocks, !5513, !DIExpression(), !5511)
    #dbg_value(ptr %ctx, !5514, !DIExpression(), !5511)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5515
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #7, !dbg !5516
  ret void, !dbg !5517
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5518 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5521, !DIExpression(), !5522)
    #dbg_value(ptr %in, !5523, !DIExpression(), !5522)
    #dbg_value(i32 %nblocks, !5524, !DIExpression(), !5522)
    #dbg_value(ptr %rkeys, !5525, !DIExpression(), !5522)
    #dbg_value(i32 %nrounds, !5526, !DIExpression(), !5522)
    #dbg_declare(ptr %blocks, !5527, !DIExpression(), !5529)
    #dbg_declare(ptr %t, !5530, !DIExpression(), !5531)
  br label %while.cond, !dbg !5532

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5521, !DIExpression(), !5522)
    #dbg_value(ptr %in.addr.0, !5523, !DIExpression(), !5522)
    #dbg_value(i32 %nblocks.addr.0, !5524, !DIExpression(), !5522)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5533
  br i1 %cmp, label %while.body, label %while.end, !dbg !5532

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #7, !dbg !5534
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5536
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5537
    #dbg_value(i32 %sub, !5524, !DIExpression(), !5522)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5538
    #dbg_value(ptr %add.ptr, !5523, !DIExpression(), !5522)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5539
    #dbg_value(ptr %add.ptr2, !5521, !DIExpression(), !5522)
  br label %while.cond, !dbg !5532, !llvm.loop !5540

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5542
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5542

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5544
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #7, !dbg !5546
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5547
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5548
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #9, !dbg !5549
  br label %if.end, !dbg !5550

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5551
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5552 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5555, !DIExpression(), !5556)
    #dbg_value(ptr %ivw, !5557, !DIExpression(), !5556)
    #dbg_value(ptr %sk_exp, !5558, !DIExpression(), !5556)
    #dbg_value(i32 %nrounds, !5559, !DIExpression(), !5556)
    #dbg_declare(ptr %w, !5560, !DIExpression(), !5561)
    #dbg_declare(ptr %q, !5562, !DIExpression(), !5563)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #9, !dbg !5564
    #dbg_value(i32 0, !5565, !DIExpression(), !5556)
  br label %for.cond, !dbg !5566

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5568
    #dbg_value(i32 %i.0, !5565, !DIExpression(), !5556)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5569
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5571

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5572
  %add = or disjoint i32 %i.0, 4, !dbg !5574
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5575
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5576
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5576
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #7, !dbg !5577
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5578
    #dbg_value(i32 %inc, !5565, !DIExpression(), !5556)
  br label %for.cond, !dbg !5579, !llvm.loop !5580

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5582
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #7, !dbg !5583
    #dbg_value(i32 1, !5565, !DIExpression(), !5556)
  br label %for.cond5, !dbg !5584

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5586
    #dbg_value(i32 %i.1, !5565, !DIExpression(), !5556)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5587
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5589

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5590
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5592
  call fastcc void @mix_columns(ptr noundef nonnull %q) #7, !dbg !5593
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5594
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5594
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #7, !dbg !5595
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5596
    #dbg_value(i32 %inc15, !5565, !DIExpression(), !5556)
  br label %for.cond5, !dbg !5597, !llvm.loop !5598

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5600
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5601
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5602
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5602
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #7, !dbg !5603
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5604
    #dbg_value(i32 0, !5565, !DIExpression(), !5556)
  br label %for.cond22, !dbg !5605

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5607
    #dbg_value(i32 %i.2, !5565, !DIExpression(), !5556)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5608
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5610

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5611
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5611
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5613
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5613
  %add29 = or disjoint i32 %i.2, 4, !dbg !5614
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5615
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5615
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #7, !dbg !5616
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5617
    #dbg_value(i32 %inc32, !5565, !DIExpression(), !5556)
  br label %for.cond22, !dbg !5618, !llvm.loop !5619

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #7, !dbg !5621
  ret void, !dbg !5622
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5623 {
entry:
    #dbg_value(ptr %q, !5626, !DIExpression(), !5627)
    #dbg_value(ptr %sk, !5628, !DIExpression(), !5627)
  %0 = load i64, ptr %sk, align 8, !dbg !5629
  %1 = load i64, ptr %q, align 8, !dbg !5630
  %xor = xor i64 %1, %0, !dbg !5630
  store i64 %xor, ptr %q, align 8, !dbg !5630
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5631
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5631
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5632
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5633
  %xor4 = xor i64 %3, %2, !dbg !5633
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5633
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5634
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5634
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5635
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5636
  %xor7 = xor i64 %5, %4, !dbg !5636
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5636
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5637
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5637
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5638
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5639
  %xor10 = xor i64 %7, %6, !dbg !5639
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5639
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5640
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5640
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5641
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5642
  %xor13 = xor i64 %9, %8, !dbg !5642
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5642
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5643
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5643
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5644
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5645
  %xor16 = xor i64 %11, %10, !dbg !5645
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5645
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5646
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5646
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5647
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5648
  %xor19 = xor i64 %13, %12, !dbg !5648
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5648
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5649
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5649
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5650
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5651
  %xor22 = xor i64 %15, %14, !dbg !5651
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5651
  ret void, !dbg !5652
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5653 {
entry:
    #dbg_value(ptr %q, !5654, !DIExpression(), !5655)
    #dbg_value(i32 0, !5656, !DIExpression(), !5655)
  br label %for.cond, !dbg !5657

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5659
    #dbg_value(i32 %i.0, !5656, !DIExpression(), !5655)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5660
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5662

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5663
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5663
    #dbg_value(i64 %0, !5665, !DIExpression(), !5666)
  %and = and i64 %0, 65535, !dbg !5667
  %and1 = lshr i64 %0, 4, !dbg !5668
  %shr = and i64 %and1, 268369920, !dbg !5668
  %or = or disjoint i64 %and, %shr, !dbg !5669
  %and2 = shl i64 %0, 12, !dbg !5670
  %shl = and i64 %and2, 4026531840, !dbg !5670
  %or3 = or disjoint i64 %or, %shl, !dbg !5671
  %and4 = lshr i64 %0, 8, !dbg !5672
  %shr5 = and i64 %and4, 1095216660480, !dbg !5672
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5673
  %and7 = shl i64 %0, 8, !dbg !5674
  %shl8 = and i64 %and7, 280375465082880, !dbg !5674
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5675
  %and10 = lshr i64 %0, 12, !dbg !5676
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5676
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5677
  %and13 = shl i64 %0, 4, !dbg !5678
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5678
  %or15 = or i64 %or12, %shl14, !dbg !5679
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5680
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5681
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5682
    #dbg_value(i32 %inc, !5656, !DIExpression(), !5655)
  br label %for.cond, !dbg !5683, !llvm.loop !5684

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5686
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5687 {
entry:
    #dbg_value(ptr %q, !5688, !DIExpression(), !5689)
  %0 = load i64, ptr %q, align 8, !dbg !5690
    #dbg_value(i64 %0, !5691, !DIExpression(), !5689)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5692
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5692
    #dbg_value(i64 %1, !5693, !DIExpression(), !5689)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5694
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5694
    #dbg_value(i64 %2, !5695, !DIExpression(), !5689)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5696
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5696
    #dbg_value(i64 %3, !5697, !DIExpression(), !5689)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5698
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5698
    #dbg_value(i64 %4, !5699, !DIExpression(), !5689)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5700
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5700
    #dbg_value(i64 %5, !5701, !DIExpression(), !5689)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5702
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5702
    #dbg_value(i64 %6, !5703, !DIExpression(), !5689)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5704
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5704
    #dbg_value(i64 %7, !5705, !DIExpression(), !5689)
  %or = call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 48), !dbg !5706
    #dbg_value(i64 %or, !5707, !DIExpression(), !5689)
  %or10 = call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 48), !dbg !5708
    #dbg_value(i64 %or10, !5709, !DIExpression(), !5689)
  %or13 = call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 48), !dbg !5710
    #dbg_value(i64 %or13, !5711, !DIExpression(), !5689)
  %or16 = call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 48), !dbg !5712
    #dbg_value(i64 %or16, !5713, !DIExpression(), !5689)
  %or19 = call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 48), !dbg !5714
    #dbg_value(i64 %or19, !5715, !DIExpression(), !5689)
  %or22 = call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 48), !dbg !5716
    #dbg_value(i64 %or22, !5717, !DIExpression(), !5689)
  %or25 = call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 48), !dbg !5718
    #dbg_value(i64 %or25, !5719, !DIExpression(), !5689)
  %or28 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 48), !dbg !5720
    #dbg_value(i64 %or28, !5721, !DIExpression(), !5689)
  %xor30 = xor i64 %0, %or, !dbg !5722
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #7, !dbg !5723
  %8 = xor i64 %or28, %call, !dbg !5724
  %9 = xor i64 %8, %7, !dbg !5724
  %xor31 = xor i64 %9, %or, !dbg !5724
  store i64 %xor31, ptr %q, align 8, !dbg !5725
  %xor37 = xor i64 %1, %or10, !dbg !5726
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #7, !dbg !5727
  %10 = xor i64 %or, %call38, !dbg !5728
  %11 = xor i64 %10, %0, !dbg !5728
  %12 = xor i64 %11, %7, !dbg !5728
  %13 = xor i64 %12, %or28, !dbg !5728
  %xor39 = xor i64 %13, %or10, !dbg !5728
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5729
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5730
  %xor43 = xor i64 %2, %or13, !dbg !5731
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #7, !dbg !5732
  %14 = xor i64 %or10, %call44, !dbg !5733
  %15 = xor i64 %14, %1, !dbg !5733
  %xor45 = xor i64 %15, %or13, !dbg !5733
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5734
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5735
  %xor51 = xor i64 %3, %or16, !dbg !5736
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #7, !dbg !5737
  %16 = xor i64 %or13, %call52, !dbg !5738
  %17 = xor i64 %16, %2, !dbg !5738
  %18 = xor i64 %17, %7, !dbg !5738
  %19 = xor i64 %18, %or28, !dbg !5738
  %xor53 = xor i64 %19, %or16, !dbg !5738
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5739
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5740
  %xor59 = xor i64 %4, %or19, !dbg !5741
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #7, !dbg !5742
  %20 = xor i64 %or16, %call60, !dbg !5743
  %21 = xor i64 %20, %3, !dbg !5743
  %22 = xor i64 %21, %7, !dbg !5743
  %23 = xor i64 %22, %or28, !dbg !5743
  %xor61 = xor i64 %23, %or19, !dbg !5743
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5744
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5745
  %xor65 = xor i64 %5, %or22, !dbg !5746
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #7, !dbg !5747
  %24 = xor i64 %or19, %call66, !dbg !5748
  %25 = xor i64 %24, %4, !dbg !5748
  %xor67 = xor i64 %25, %or22, !dbg !5748
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5749
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5750
  %xor71 = xor i64 %6, %or25, !dbg !5751
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #7, !dbg !5752
  %26 = xor i64 %or22, %call72, !dbg !5753
  %27 = xor i64 %26, %5, !dbg !5753
  %xor73 = xor i64 %27, %or25, !dbg !5753
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5754
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5755
  %xor77 = xor i64 %7, %or28, !dbg !5756
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #7, !dbg !5757
  %28 = xor i64 %or25, %call78, !dbg !5758
  %29 = xor i64 %28, %6, !dbg !5758
  %xor79 = xor i64 %29, %or28, !dbg !5758
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5759
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5760
  ret void, !dbg !5761
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5762 {
entry:
    #dbg_value(ptr %w, !5765, !DIExpression(), !5766)
    #dbg_value(i64 %q0, !5767, !DIExpression(), !5766)
    #dbg_value(i64 %q1, !5768, !DIExpression(), !5766)
  %and = and i64 %q0, 71777214294589695, !dbg !5769
    #dbg_value(i64 %and, !5770, !DIExpression(), !5766)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5771
    #dbg_value(i64 %and1, !5772, !DIExpression(), !5766)
  %shr = lshr i64 %q0, 8, !dbg !5773
  %and2 = and i64 %shr, 71776119077928960, !dbg !5774
    #dbg_value(i64 %shr, !5775, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5766)
  %shr3 = lshr i64 %q1, 8, !dbg !5776
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5777
    #dbg_value(i64 %shr3, !5778, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5766)
  %shr5 = lshr i64 %and, 8, !dbg !5779
  %or = or disjoint i64 %and, %shr5, !dbg !5780
    #dbg_value(i64 %or, !5770, !DIExpression(), !5766)
  %shr6 = lshr i64 %and1, 8, !dbg !5781
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5782
    #dbg_value(i64 %or7, !5772, !DIExpression(), !5766)
  %0 = and i64 %q0, 280375465148160, !dbg !5783
  %1 = or disjoint i64 %and2, %0, !dbg !5783
  %or9 = lshr exact i64 %1, 8, !dbg !5783
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5775, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5766)
  %2 = and i64 %q1, 280375465148160, !dbg !5784
  %3 = or disjoint i64 %and4, %2, !dbg !5784
  %or11 = lshr exact i64 %3, 8, !dbg !5784
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5766)
  %and12 = and i64 %or, 281470681808895, !dbg !5785
    #dbg_value(i64 %and12, !5770, !DIExpression(), !5766)
  %and13 = and i64 %or7, 281470681808895, !dbg !5786
    #dbg_value(i64 %and13, !5772, !DIExpression(), !5766)
    #dbg_value(i64 %or9, !5775, !DIExpression(), !5766)
    #dbg_value(i64 %or11, !5778, !DIExpression(), !5766)
  %shr16 = lshr i64 %and12, 16, !dbg !5787
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5788
  %or18 = trunc i64 %or181 to i32, !dbg !5788
  store i32 %or18, ptr %w, align 4, !dbg !5789
  %shr20 = lshr i64 %and13, 16, !dbg !5790
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5791
  %or22 = trunc i64 %or222 to i32, !dbg !5791
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5792
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5793
  %shr25 = lshr i64 %1, 24, !dbg !5794
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5795
  %or27 = trunc i64 %or273 to i32, !dbg !5795
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5796
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5797
  %shr30 = lshr i64 %3, 24, !dbg !5798
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5799
  %or32 = trunc i64 %or324 to i32, !dbg !5799
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5800
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5801
  ret void, !dbg !5802
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5803 {
entry:
    #dbg_value(ptr %dst, !5806, !DIExpression(), !5807)
    #dbg_value(ptr %v, !5808, !DIExpression(), !5807)
    #dbg_value(i32 16, !5809, !DIExpression(), !5807)
  br label %while.cond, !dbg !5810

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5806, !DIExpression(), !5807)
    #dbg_value(ptr %v.addr.0, !5808, !DIExpression(), !5807)
    #dbg_value(i32 %num.addr.0, !5809, !DIExpression(), !5807)
    #dbg_value(i32 %num.addr.0, !5809, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5807)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5811
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5810

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5812
    #dbg_value(i32 %dec, !5809, !DIExpression(), !5807)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5813
    #dbg_value(ptr %incdec.ptr, !5808, !DIExpression(), !5807)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5815
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #7, !dbg !5816
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5817
    #dbg_value(ptr %add.ptr, !5806, !DIExpression(), !5807)
  br label %while.cond, !dbg !5810, !llvm.loop !5818

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5820
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5821 {
entry:
    #dbg_value(ptr %dst, !5824, !DIExpression(), !5825)
    #dbg_value(i32 %x, !5826, !DIExpression(), !5825)
  %conv = trunc i32 %x to i8, !dbg !5827
  store i8 %conv, ptr %dst, align 1, !dbg !5828
  %shr = lshr i32 %x, 8, !dbg !5829
  %conv1 = trunc i32 %shr to i8, !dbg !5830
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5831
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5832
  %shr3 = lshr i32 %x, 16, !dbg !5833
  %conv4 = trunc i32 %shr3 to i8, !dbg !5834
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5835
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5836
  %shr6 = lshr i32 %x, 24, !dbg !5837
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5838
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5839
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5840
  ret void, !dbg !5841
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5842 {
entry:
    #dbg_value(i64 %x, !5845, !DIExpression(), !5846)
  %or = call i64 @llvm.fshl.i64(i64 %x, i64 %x, i64 32), !dbg !5847
  ret i64 %or, !dbg !5848
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5849 {
entry:
    #dbg_value(ptr %out, !5852, !DIExpression(), !5853)
    #dbg_value(i32 %outlen, !5854, !DIExpression(), !5853)
    #dbg_value(ptr %iv, !5855, !DIExpression(), !5853)
    #dbg_value(ptr %ctx, !5856, !DIExpression(), !5853)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5857
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #7, !dbg !5858
  ret void, !dbg !5859
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5860 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5863, !DIExpression(), !5864)
    #dbg_value(i32 %outlen, !5865, !DIExpression(), !5864)
    #dbg_value(ptr %iv, !5866, !DIExpression(), !5864)
    #dbg_value(ptr %rkeys, !5867, !DIExpression(), !5864)
    #dbg_value(i32 %nrounds, !5868, !DIExpression(), !5864)
    #dbg_declare(ptr %ivw, !5869, !DIExpression(), !5870)
    #dbg_value(i32 0, !5871, !DIExpression(), !5864)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #7, !dbg !5872
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5873
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5874
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5875
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5876
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5877
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5878
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #7, !dbg !5879
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5880
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5881
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #7, !dbg !5882
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5883
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5884
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #7, !dbg !5885
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5886
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !5887
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #7, !dbg !5888
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5889
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !5890
  br label %while.cond, !dbg !5891

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5863, !DIExpression(), !5864)
    #dbg_value(i32 %outlen.addr.0, !5865, !DIExpression(), !5864)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !5892
  br i1 %cmp, label %while.body, label %while.end, !dbg !5891

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5893
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5895
    #dbg_value(ptr %add.ptr21, !5863, !DIExpression(), !5864)
  %sub = add i32 %outlen.addr.0, -64, !dbg !5896
    #dbg_value(i32 %sub, !5865, !DIExpression(), !5864)
  br label %while.cond, !dbg !5891, !llvm.loop !5897

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !5899
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !5899

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !5901, !DIExpression(), !5903)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5904
    #dbg_value(i32 0, !5905, !DIExpression(), !5864)
  br label %for.cond, !dbg !5906

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !5908
    #dbg_value(i32 %i.0, !5905, !DIExpression(), !5864)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !5909
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !5911

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !5912
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !5912
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !5914
  store i8 %0, ptr %arrayidx27, align 1, !dbg !5915
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5916
    #dbg_value(i32 %inc, !5905, !DIExpression(), !5864)
  br label %for.cond, !dbg !5917, !llvm.loop !5918

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5920

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !5920
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !5921 {
entry:
    #dbg_value(i32 %x, !5922, !DIExpression(), !5923)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !5922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !5923)
  %or4 = call i32 @llvm.bswap.i32(i32 %x), !dbg !5924
  ret i32 %or4, !dbg !5925
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5926 {
entry:
    #dbg_value(ptr %out, !5929, !DIExpression(), !5930)
    #dbg_value(ptr %ivw, !5931, !DIExpression(), !5930)
    #dbg_value(ptr %sk_exp, !5932, !DIExpression(), !5930)
    #dbg_value(i32 %nrounds, !5933, !DIExpression(), !5930)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #7, !dbg !5934
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5935
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #7, !dbg !5936
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5937
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #7, !dbg !5938
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5939
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #7, !dbg !5940
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5941
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #7, !dbg !5942
  ret void, !dbg !5943
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !5944 {
entry:
    #dbg_value(ptr %x, !5947, !DIExpression(), !5948)
  %0 = load i32, ptr %x, align 4, !dbg !5949
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #7, !dbg !5950
  %add = add i32 %call, 4, !dbg !5951
    #dbg_value(i32 %add, !5952, !DIExpression(), !5948)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #7, !dbg !5953
  store i32 %call1, ptr %x, align 4, !dbg !5954
  ret void, !dbg !5955
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5956 {
entry:
    #dbg_value(ptr %out, !5961, !DIExpression(), !5962)
    #dbg_value(ptr %in, !5963, !DIExpression(), !5962)
    #dbg_value(i32 %nblocks, !5964, !DIExpression(), !5962)
    #dbg_value(ptr %ctx, !5965, !DIExpression(), !5962)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5966
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #7, !dbg !5967
  ret void, !dbg !5968
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5969 {
entry:
    #dbg_value(ptr %out, !5972, !DIExpression(), !5973)
    #dbg_value(i32 %outlen, !5974, !DIExpression(), !5973)
    #dbg_value(ptr %iv, !5975, !DIExpression(), !5973)
    #dbg_value(ptr %ctx, !5976, !DIExpression(), !5973)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5977
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #7, !dbg !5978
  ret void, !dbg !5979
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5980 {
entry:
    #dbg_value(ptr %out, !5985, !DIExpression(), !5986)
    #dbg_value(ptr %in, !5987, !DIExpression(), !5986)
    #dbg_value(i32 %nblocks, !5988, !DIExpression(), !5986)
    #dbg_value(ptr %ctx, !5989, !DIExpression(), !5986)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5990
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #7, !dbg !5991
  ret void, !dbg !5992
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5993 {
entry:
    #dbg_value(ptr %out, !5996, !DIExpression(), !5997)
    #dbg_value(i32 %outlen, !5998, !DIExpression(), !5997)
    #dbg_value(ptr %iv, !5999, !DIExpression(), !5997)
    #dbg_value(ptr %ctx, !6000, !DIExpression(), !5997)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6001
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #7, !dbg !6002
  ret void, !dbg !6003
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6004 {
entry:
    #dbg_value(ptr %r, !6007, !DIExpression(), !6008)
  %0 = load ptr, ptr %r, align 4, !dbg !6009
  call void @free(ptr noundef %0) #9, !dbg !6010
  ret void, !dbg !6011
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6012 {
entry:
    #dbg_value(ptr %r, !6015, !DIExpression(), !6016)
  %0 = load ptr, ptr %r, align 4, !dbg !6017
  call void @free(ptr noundef %0) #9, !dbg !6018
  ret void, !dbg !6019
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6020 {
entry:
    #dbg_value(ptr %r, !6023, !DIExpression(), !6024)
  %0 = load ptr, ptr %r, align 4, !dbg !6025
  call void @free(ptr noundef %0) #9, !dbg !6026
  ret void, !dbg !6027
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6028 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6031, !DIExpression(), !6032)
    #dbg_value(i32 %outputByteLen, !6033, !DIExpression(), !6032)
    #dbg_value(ptr %input, !6034, !DIExpression(), !6032)
    #dbg_value(i32 %inputByteLen, !6035, !DIExpression(), !6032)
    #dbg_declare(ptr %ctx, !6036, !DIExpression(), !6037)
    #dbg_declare(ptr %iv, !6038, !DIExpression(), !6039)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %iv, i8 0, i32 16, i1 false), !dbg !6039
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #7, !dbg !6040
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #7, !dbg !6041
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6042
  ret i32 %outputByteLen, !dbg !6043
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6044 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6047, !DIExpression(), !6048)
    #dbg_value(ptr %key, !6049, !DIExpression(), !6048)
    #dbg_value(ptr %output, !6050, !DIExpression(), !6048)
    #dbg_declare(ptr %ctx, !6051, !DIExpression(), !6052)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #7, !dbg !6053
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #7, !dbg !6054
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6055
  ret void, !dbg !6056
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 850176, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 13284)
!146 = !DILocation(line: 32, column: 10, scope: !97)
!147 = !DILocalVariable(name: "esk", scope: !97, file: !92, line: 33, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 819712, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 12808)
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
!191 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !192, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!231 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !192, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!232 = !DILocalVariable(name: "p", arg: 1, scope: !231, file: !25, line: 537, type: !194)
!233 = !DILocation(line: 0, scope: !231)
!234 = !DILocalVariable(name: "cpk", arg: 2, scope: !231, file: !25, line: 537, type: !18)
!235 = !DILocalVariable(name: "csk", arg: 3, scope: !231, file: !25, line: 538, type: !18)
!236 = !DILocalVariable(name: "ret", scope: !231, file: !25, line: 539, type: !45)
!237 = !DILocalVariable(name: "seed_sk", scope: !231, file: !25, line: 540, type: !18)
!238 = !DILocalVariable(name: "S", scope: !231, file: !25, line: 541, type: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4480, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 560)
!242 = !DILocation(line: 541, column: 19, scope: !231)
!243 = !DILocalVariable(name: "P", scope: !231, file: !25, line: 542, type: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 811008, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 12672)
!247 = !DILocation(line: 542, column: 14, scope: !231)
!248 = !DILocalVariable(name: "P3", scope: !231, file: !25, line: 543, type: !249)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 73984, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 1156)
!252 = !DILocation(line: 543, column: 14, scope: !231)
!253 = !DILocalVariable(name: "O", scope: !231, file: !25, line: 546, type: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8704, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 1088)
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
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 39168, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 612)
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
!380 = !DILocation(line: 277, column: 39, scope: !378)
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
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !39)
!600 = !DILocation(line: 265, column: 14, scope: !588)
!601 = !DILocalVariable(name: "i", scope: !602, file: !25, line: 266, type: !45)
!602 = distinct !DILexicalBlock(scope: !588, file: !25, line: 266, column: 5)
!603 = !DILocation(line: 0, scope: !602)
!604 = !DILocation(line: 266, column: 10, scope: !602)
!605 = !DILocation(line: 266, column: 28, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !25, line: 266, column: 5)
!607 = !DILocation(line: 266, column: 5, scope: !602)
!608 = !DILocation(line: 266, scope: !602)
!609 = !DILocation(line: 268, column: 29, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !25, line: 267, column: 5)
!611 = !DILocation(line: 268, column: 24, scope: !610)
!612 = !DILocation(line: 268, column: 9, scope: !610)
!613 = !DILocation(line: 269, column: 24, scope: !610)
!614 = !DILocation(line: 269, column: 21, scope: !610)
!615 = !DILocation(line: 269, column: 9, scope: !610)
!616 = !DILocation(line: 266, column: 5, scope: !606)
!617 = distinct !{!617, !607, !618, !323}
!618 = !DILocation(line: 270, column: 5, scope: !602)
!619 = !DILocation(line: 271, column: 1, scope: !588)
!620 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !621, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!621 = !DISubroutineType(types: !622)
!622 = !{!45, !194, !49, !5}
!623 = !DILocalVariable(name: "p", arg: 1, scope: !620, file: !25, line: 310, type: !194)
!624 = !DILocation(line: 0, scope: !620)
!625 = !DILocalVariable(name: "csk", arg: 2, scope: !620, file: !25, line: 310, type: !49)
!626 = !DILocalVariable(name: "sk", arg: 3, scope: !620, file: !25, line: 311, type: !5)
!627 = !DILocalVariable(name: "ret", scope: !620, file: !25, line: 312, type: !45)
!628 = !DILocalVariable(name: "S", scope: !620, file: !25, line: 313, type: !239)
!629 = !DILocation(line: 313, column: 19, scope: !620)
!630 = !DILocalVariable(name: "P", scope: !620, file: !25, line: 314, type: !5)
!631 = !DILocation(line: 315, column: 24, scope: !620)
!632 = !DILocalVariable(name: "O", scope: !620, file: !25, line: 315, type: !18)
!633 = !DILocalVariable(name: "param_o", scope: !620, file: !25, line: 317, type: !259)
!634 = !DILocalVariable(name: "param_v", scope: !620, file: !25, line: 318, type: !259)
!635 = !DILocalVariable(name: "param_O_bytes", scope: !620, file: !25, line: 319, type: !259)
!636 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !620, file: !25, line: 320, type: !259)
!637 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !620, file: !25, line: 321, type: !259)
!638 = !DILocalVariable(name: "seed_sk", scope: !620, file: !25, line: 323, type: !49)
!639 = !DILocalVariable(name: "seed_pk", scope: !620, file: !25, line: 324, type: !18)
!640 = !DILocation(line: 326, column: 5, scope: !620)
!641 = !DILocation(line: 328, column: 14, scope: !620)
!642 = !DILocation(line: 328, column: 5, scope: !620)
!643 = !DILocation(line: 334, column: 5, scope: !620)
!644 = !DILocation(line: 341, column: 22, scope: !620)
!645 = !DILocalVariable(name: "P2", scope: !620, file: !25, line: 341, type: !5)
!646 = !DILocalVariable(name: "P1", scope: !620, file: !25, line: 343, type: !5)
!647 = !DILocalVariable(name: "L", scope: !620, file: !25, line: 346, type: !5)
!648 = !DILocation(line: 347, column: 5, scope: !620)
!649 = !DILocation(line: 355, column: 5, scope: !620)
!650 = !DILocation(line: 356, column: 5, scope: !620)
!651 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !343, file: !343, line: 218, type: !389, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!652 = !DILocalVariable(name: "p", arg: 1, scope: !651, file: !343, line: 218, type: !194)
!653 = !DILocation(line: 0, scope: !651)
!654 = !DILocalVariable(name: "P1", arg: 2, scope: !651, file: !343, line: 218, type: !346)
!655 = !DILocalVariable(name: "O", arg: 3, scope: !651, file: !343, line: 218, type: !49)
!656 = !DILocalVariable(name: "acc", arg: 4, scope: !651, file: !343, line: 218, type: !5)
!657 = !DILocalVariable(name: "param_o", scope: !651, file: !343, line: 222, type: !259)
!658 = !DILocalVariable(name: "param_v", scope: !651, file: !343, line: 223, type: !259)
!659 = !DILocalVariable(name: "m_vec_limbs", scope: !651, file: !343, line: 224, type: !259)
!660 = !DILocalVariable(name: "bs_mat_entries_used", scope: !651, file: !343, line: 226, type: !45)
!661 = !DILocalVariable(name: "r", scope: !662, file: !343, line: 227, type: !45)
!662 = distinct !DILexicalBlock(scope: !651, file: !343, line: 227, column: 5)
!663 = !DILocation(line: 0, scope: !662)
!664 = !DILocation(line: 227, column: 10, scope: !662)
!665 = !DILocation(line: 226, column: 9, scope: !651)
!666 = !DILocation(line: 227, scope: !662)
!667 = !DILocation(line: 227, column: 23, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !343, line: 227, column: 5)
!669 = !DILocation(line: 227, column: 5, scope: !662)
!670 = !DILocation(line: 228, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !343, line: 228, column: 9)
!672 = distinct !DILexicalBlock(scope: !668, file: !343, line: 227, column: 39)
!673 = !DILocation(line: 228, scope: !671)
!674 = !DILocalVariable(name: "c", scope: !671, file: !343, line: 228, type: !45)
!675 = !DILocation(line: 0, scope: !671)
!676 = !DILocation(line: 228, column: 27, scope: !677)
!677 = distinct !DILexicalBlock(scope: !671, file: !343, line: 228, column: 9)
!678 = !DILocation(line: 229, column: 17, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !343, line: 229, column: 16)
!680 = distinct !DILexicalBlock(scope: !677, file: !343, line: 228, column: 43)
!681 = !DILocation(line: 233, column: 13, scope: !682)
!682 = distinct !DILexicalBlock(scope: !680, file: !343, line: 233, column: 13)
!683 = !DILocation(line: 233, scope: !682)
!684 = !DILocalVariable(name: "k", scope: !682, file: !343, line: 233, type: !45)
!685 = !DILocation(line: 0, scope: !682)
!686 = !DILocation(line: 233, column: 31, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !343, line: 233, column: 13)
!688 = !DILocation(line: 234, column: 47, scope: !689)
!689 = distinct !DILexicalBlock(scope: !687, file: !343, line: 233, column: 50)
!690 = !DILocation(line: 234, column: 88, scope: !689)
!691 = !DILocation(line: 234, column: 84, scope: !689)
!692 = !DILocation(line: 234, column: 127, scope: !689)
!693 = !DILocation(line: 234, column: 137, scope: !689)
!694 = !DILocation(line: 234, column: 108, scope: !689)
!695 = !DILocation(line: 234, column: 17, scope: !689)
!696 = !DILocation(line: 235, column: 47, scope: !689)
!697 = !DILocation(line: 235, column: 88, scope: !689)
!698 = !DILocation(line: 235, column: 84, scope: !689)
!699 = !DILocation(line: 235, column: 127, scope: !689)
!700 = !DILocation(line: 235, column: 137, scope: !689)
!701 = !DILocation(line: 235, column: 108, scope: !689)
!702 = !DILocation(line: 235, column: 17, scope: !689)
!703 = !DILocation(line: 233, column: 44, scope: !687)
!704 = !DILocation(line: 233, column: 13, scope: !687)
!705 = distinct !{!705, !681, !706, !323}
!706 = !DILocation(line: 236, column: 13, scope: !682)
!707 = !DILocation(line: 0, scope: !680)
!708 = !DILocation(line: 228, column: 39, scope: !677)
!709 = !DILocation(line: 228, column: 9, scope: !677)
!710 = distinct !{!710, !670, !711, !323}
!711 = !DILocation(line: 238, column: 9, scope: !671)
!712 = !DILocation(line: 227, column: 35, scope: !668)
!713 = !DILocation(line: 227, column: 5, scope: !668)
!714 = distinct !{!714, !669, !715, !323}
!715 = !DILocation(line: 239, column: 5, scope: !662)
!716 = !DILocation(line: 240, column: 1, scope: !651)
!717 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !718, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!718 = !DISubroutineType(types: !719)
!719 = !{!45, !194, !18, !720, !49, !15, !49}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!721 = !DILocalVariable(name: "p", arg: 1, scope: !717, file: !25, line: 359, type: !194)
!722 = !DILocation(line: 0, scope: !717)
!723 = !DILocalVariable(name: "sig", arg: 2, scope: !717, file: !25, line: 359, type: !18)
!724 = !DILocalVariable(name: "siglen", arg: 3, scope: !717, file: !25, line: 360, type: !720)
!725 = !DILocalVariable(name: "m", arg: 4, scope: !717, file: !25, line: 360, type: !49)
!726 = !DILocalVariable(name: "mlen", arg: 5, scope: !717, file: !25, line: 361, type: !15)
!727 = !DILocalVariable(name: "csk", arg: 6, scope: !717, file: !25, line: 361, type: !49)
!728 = !DILocalVariable(name: "ret", scope: !717, file: !25, line: 362, type: !45)
!729 = !DILocalVariable(name: "tenc", scope: !717, file: !25, line: 363, type: !158)
!730 = !DILocation(line: 363, column: 19, scope: !717)
!731 = !DILocalVariable(name: "t", scope: !717, file: !25, line: 363, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 64)
!735 = !DILocation(line: 363, column: 38, scope: !717)
!736 = !DILocalVariable(name: "y", scope: !717, file: !25, line: 364, type: !732)
!737 = !DILocation(line: 364, column: 19, scope: !717)
!738 = !DILocalVariable(name: "salt", scope: !717, file: !25, line: 365, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !73)
!740 = !DILocation(line: 365, column: 19, scope: !717)
!741 = !DILocalVariable(name: "V", scope: !717, file: !25, line: 366, type: !742)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1296, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 162)
!745 = !DILocation(line: 366, column: 19, scope: !717)
!746 = !DILocalVariable(name: "Vdec", scope: !717, file: !25, line: 366, type: !747)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 256)
!750 = !DILocation(line: 366, column: 57, scope: !717)
!751 = !DILocalVariable(name: "A", scope: !717, file: !25, line: 367, type: !752)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 35328, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 4416)
!755 = !DILocation(line: 367, column: 19, scope: !717)
!756 = !DILocalVariable(name: "x", scope: !717, file: !25, line: 368, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2592, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 324)
!760 = !DILocation(line: 368, column: 19, scope: !717)
!761 = !DILocalVariable(name: "r", scope: !717, file: !25, line: 369, type: !762)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 552, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 69)
!765 = !DILocation(line: 369, column: 19, scope: !717)
!766 = !DILocalVariable(name: "s", scope: !717, file: !25, line: 370, type: !757)
!767 = !DILocation(line: 370, column: 19, scope: !717)
!768 = !DILocalVariable(name: "sk", scope: !717, file: !25, line: 372, type: !148, align: 256)
!769 = !DILocation(line: 372, column: 22, scope: !717)
!770 = !DILocalVariable(name: "Ox", scope: !717, file: !25, line: 373, type: !732)
!771 = !DILocation(line: 373, column: 19, scope: !717)
!772 = !DILocalVariable(name: "tmp", scope: !717, file: !25, line: 374, type: !773)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 81)
!776 = !DILocation(line: 374, column: 19, scope: !717)
!777 = !DILocalVariable(name: "param_m", scope: !717, file: !25, line: 378, type: !259)
!778 = !DILocalVariable(name: "param_n", scope: !717, file: !25, line: 379, type: !259)
!779 = !DILocalVariable(name: "param_o", scope: !717, file: !25, line: 380, type: !259)
!780 = !DILocalVariable(name: "param_k", scope: !717, file: !25, line: 381, type: !259)
!781 = !DILocalVariable(name: "param_v", scope: !717, file: !25, line: 382, type: !259)
!782 = !DILocalVariable(name: "param_m_bytes", scope: !717, file: !25, line: 383, type: !259)
!783 = !DILocalVariable(name: "param_v_bytes", scope: !717, file: !25, line: 384, type: !259)
!784 = !DILocalVariable(name: "param_r_bytes", scope: !717, file: !25, line: 385, type: !259)
!785 = !DILocalVariable(name: "param_sig_bytes", scope: !717, file: !25, line: 386, type: !259)
!786 = !DILocalVariable(name: "param_A_cols", scope: !717, file: !25, line: 387, type: !259)
!787 = !DILocalVariable(name: "param_digest_bytes", scope: !717, file: !25, line: 388, type: !259)
!788 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !717, file: !25, line: 389, type: !259)
!789 = !DILocalVariable(name: "param_salt_bytes", scope: !717, file: !25, line: 390, type: !259)
!790 = !DILocation(line: 392, column: 11, scope: !717)
!791 = !DILocalVariable(name: "seed_sk", scope: !717, file: !25, line: 371, type: !49)
!792 = !DILocation(line: 401, column: 5, scope: !717)
!793 = !DILocalVariable(name: "P1", scope: !717, file: !25, line: 403, type: !5)
!794 = !DILocation(line: 404, column: 23, scope: !717)
!795 = !DILocalVariable(name: "L", scope: !717, file: !25, line: 404, type: !5)
!796 = !DILocalVariable(name: "Mtmp", scope: !717, file: !25, line: 405, type: !797)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17408, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 272)
!800 = !DILocation(line: 405, column: 14, scope: !717)
!801 = !DILocation(line: 420, column: 25, scope: !802)
!802 = distinct !DILexicalBlock(scope: !717, file: !25, line: 420, column: 9)
!803 = !DILocation(line: 420, column: 9, scope: !802)
!804 = !DILocation(line: 420, column: 65, scope: !802)
!805 = !DILocation(line: 427, column: 37, scope: !717)
!806 = !DILocation(line: 427, column: 5, scope: !717)
!807 = !DILocation(line: 429, column: 5, scope: !717)
!808 = !DILocation(line: 437, column: 16, scope: !717)
!809 = !DILocation(line: 437, column: 5, scope: !717)
!810 = !DILocation(line: 438, column: 59, scope: !717)
!811 = !DILocalVariable(name: "ctrbyte", scope: !717, file: !25, line: 375, type: !18)
!812 = !DILocation(line: 440, column: 5, scope: !717)
!813 = !DILocation(line: 442, column: 5, scope: !717)
!814 = !DILocation(line: 445, column: 18, scope: !717)
!815 = !DILocation(line: 447, column: 9, scope: !717)
!816 = !DILocalVariable(name: "i", scope: !817, file: !25, line: 451, type: !45)
!817 = distinct !DILexicalBlock(scope: !717, file: !25, line: 451, column: 9)
!818 = !DILocation(line: 0, scope: !817)
!819 = !DILocation(line: 451, column: 14, scope: !817)
!820 = !DILocation(line: 451, scope: !817)
!821 = !DILocation(line: 451, column: 27, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !25, line: 451, column: 9)
!823 = !DILocation(line: 451, column: 9, scope: !817)
!824 = !DILocation(line: 452, column: 26, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !25, line: 451, column: 48)
!826 = !DILocation(line: 452, column: 22, scope: !825)
!827 = !DILocation(line: 452, column: 52, scope: !825)
!828 = !DILocation(line: 452, column: 48, scope: !825)
!829 = !DILocation(line: 452, column: 13, scope: !825)
!830 = !DILocation(line: 451, column: 43, scope: !822)
!831 = !DILocation(line: 451, column: 9, scope: !822)
!832 = distinct !{!832, !823, !833, !323}
!833 = !DILocation(line: 453, column: 9, scope: !817)
!834 = !DILocation(line: 455, column: 9, scope: !717)
!835 = !DILocation(line: 457, column: 9, scope: !717)
!836 = !DILocation(line: 458, column: 9, scope: !717)
!837 = !DILocalVariable(name: "i", scope: !838, file: !25, line: 460, type: !45)
!838 = distinct !DILexicalBlock(scope: !717, file: !25, line: 460, column: 9)
!839 = !DILocation(line: 0, scope: !838)
!840 = !DILocation(line: 460, column: 14, scope: !838)
!841 = !DILocation(line: 460, scope: !838)
!842 = !DILocation(line: 460, column: 27, scope: !843)
!843 = distinct !DILexicalBlock(scope: !838, file: !25, line: 460, column: 9)
!844 = !DILocation(line: 460, column: 9, scope: !838)
!845 = !DILocation(line: 462, column: 20, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !25, line: 461, column: 9)
!847 = !DILocation(line: 462, column: 43, scope: !846)
!848 = !DILocation(line: 462, column: 13, scope: !846)
!849 = !DILocation(line: 462, column: 48, scope: !846)
!850 = !DILocation(line: 460, column: 39, scope: !843)
!851 = !DILocation(line: 460, column: 9, scope: !843)
!852 = distinct !{!852, !844, !853, !323}
!853 = !DILocation(line: 463, column: 9, scope: !838)
!854 = !DILocation(line: 465, column: 18, scope: !717)
!855 = !DILocation(line: 465, column: 9, scope: !717)
!856 = !DILocation(line: 469, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !717, file: !25, line: 469, column: 13)
!858 = !DILocation(line: 472, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !857, file: !25, line: 471, column: 16)
!860 = !DILocation(line: 473, column: 13, scope: !859)
!861 = !DILocalVariable(name: "i", scope: !862, file: !25, line: 477, type: !45)
!862 = distinct !DILexicalBlock(scope: !717, file: !25, line: 477, column: 5)
!863 = !DILocation(line: 0, scope: !862)
!864 = !DILocation(line: 477, column: 10, scope: !862)
!865 = !DILocation(line: 477, scope: !862)
!866 = !DILocation(line: 477, column: 23, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !25, line: 477, column: 5)
!868 = !DILocation(line: 477, column: 5, scope: !862)
!869 = !DILocation(line: 478, column: 23, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !25, line: 477, column: 44)
!871 = !DILocation(line: 478, column: 19, scope: !870)
!872 = !DILocalVariable(name: "vi", scope: !717, file: !25, line: 376, type: !18)
!873 = !DILocation(line: 479, column: 17, scope: !870)
!874 = !DILocation(line: 479, column: 33, scope: !870)
!875 = !DILocation(line: 479, column: 29, scope: !870)
!876 = !DILocation(line: 479, column: 9, scope: !870)
!877 = !DILocation(line: 480, column: 31, scope: !870)
!878 = !DILocation(line: 480, column: 27, scope: !870)
!879 = !DILocation(line: 480, column: 9, scope: !870)
!880 = !DILocation(line: 481, column: 22, scope: !870)
!881 = !DILocation(line: 481, column: 18, scope: !870)
!882 = !DILocation(line: 481, column: 32, scope: !870)
!883 = !DILocation(line: 481, column: 61, scope: !870)
!884 = !DILocation(line: 481, column: 57, scope: !870)
!885 = !DILocation(line: 481, column: 9, scope: !870)
!886 = !DILocation(line: 477, column: 39, scope: !867)
!887 = !DILocation(line: 477, column: 5, scope: !867)
!888 = distinct !{!888, !868, !889, !323}
!889 = !DILocation(line: 482, column: 5, scope: !862)
!890 = !DILocation(line: 483, column: 5, scope: !717)
!891 = !DILocation(line: 485, column: 34, scope: !717)
!892 = !DILocation(line: 485, column: 5, scope: !717)
!893 = !DILocation(line: 486, column: 13, scope: !717)
!894 = !DILocation(line: 486, column: 5, scope: !717)
!895 = !DILabel(scope: !717, name: "err", file: !25, line: 488)
!896 = !DILocation(line: 488, column: 1, scope: !717)
!897 = !DILocation(line: 489, column: 5, scope: !717)
!898 = !DILocation(line: 490, column: 5, scope: !717)
!899 = !DILocation(line: 491, column: 5, scope: !717)
!900 = !DILocation(line: 492, column: 5, scope: !717)
!901 = !DILocation(line: 493, column: 23, scope: !717)
!902 = !DILocation(line: 493, column: 5, scope: !717)
!903 = !DILocation(line: 494, column: 5, scope: !717)
!904 = !DILocation(line: 495, column: 5, scope: !717)
!905 = !DILocation(line: 496, column: 5, scope: !717)
!906 = !DILocation(line: 497, column: 5, scope: !717)
!907 = !DILocation(line: 498, column: 5, scope: !717)
!908 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !343, file: !343, line: 244, type: !909, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !194, !49, !346, !346, !5, !5}
!911 = !DILocalVariable(name: "p", arg: 1, scope: !908, file: !343, line: 244, type: !194)
!912 = !DILocation(line: 0, scope: !908)
!913 = !DILocalVariable(name: "Vdec", arg: 2, scope: !908, file: !343, line: 244, type: !49)
!914 = !DILocalVariable(name: "L", arg: 3, scope: !908, file: !343, line: 244, type: !346)
!915 = !DILocalVariable(name: "P1", arg: 4, scope: !908, file: !343, line: 244, type: !346)
!916 = !DILocalVariable(name: "VL", arg: 5, scope: !908, file: !343, line: 244, type: !5)
!917 = !DILocalVariable(name: "VP1V", arg: 6, scope: !908, file: !343, line: 244, type: !5)
!918 = !DILocalVariable(name: "param_k", scope: !908, file: !343, line: 246, type: !259)
!919 = !DILocalVariable(name: "param_v", scope: !908, file: !343, line: 247, type: !259)
!920 = !DILocalVariable(name: "param_o", scope: !908, file: !343, line: 248, type: !259)
!921 = !DILocation(line: 251, column: 5, scope: !908)
!922 = !DILocalVariable(name: "Pv", scope: !908, file: !343, line: 254, type: !923)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 65536, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 1024)
!926 = !DILocation(line: 254, column: 14, scope: !908)
!927 = !DILocation(line: 255, column: 5, scope: !908)
!928 = !DILocation(line: 256, column: 5, scope: !908)
!929 = !DILocation(line: 257, column: 1, scope: !908)
!930 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !931, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !194, !5, !49, !18}
!933 = !DILocalVariable(name: "p", arg: 1, scope: !930, file: !25, line: 43, type: !194)
!934 = !DILocation(line: 0, scope: !930)
!935 = !DILocalVariable(name: "vPv", arg: 2, scope: !930, file: !25, line: 43, type: !5)
!936 = !DILocalVariable(name: "t", arg: 3, scope: !930, file: !25, line: 43, type: !49)
!937 = !DILocalVariable(name: "y", arg: 4, scope: !930, file: !25, line: 43, type: !18)
!938 = !DILocalVariable(name: "top_pos", scope: !930, file: !25, line: 48, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!940 = !DILocalVariable(name: "m_vec_limbs", scope: !930, file: !25, line: 49, type: !939)
!941 = !DILocalVariable(name: "temp", scope: !930, file: !25, line: 62, type: !599)
!942 = !DILocation(line: 62, column: 14, scope: !930)
!943 = !DILocalVariable(name: "temp_bytes", scope: !930, file: !25, line: 63, type: !18)
!944 = !DILocalVariable(name: "i", scope: !945, file: !25, line: 64, type: !45)
!945 = distinct !DILexicalBlock(scope: !930, file: !25, line: 64, column: 5)
!946 = !DILocation(line: 0, scope: !945)
!947 = !DILocation(line: 64, column: 10, scope: !945)
!948 = !DILocation(line: 64, scope: !945)
!949 = !DILocation(line: 64, column: 36, scope: !950)
!950 = distinct !DILexicalBlock(scope: !945, file: !25, line: 64, column: 5)
!951 = !DILocation(line: 64, column: 5, scope: !945)
!952 = !DILocation(line: 65, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !25, line: 65, column: 9)
!954 = distinct !DILexicalBlock(scope: !950, file: !25, line: 64, column: 48)
!955 = !DILocation(line: 99, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !930, file: !25, line: 99, column: 5)
!957 = !DILocation(line: 65, scope: !953)
!958 = !DILocalVariable(name: "j", scope: !953, file: !25, line: 65, type: !45)
!959 = !DILocation(line: 0, scope: !953)
!960 = !DILocation(line: 65, column: 27, scope: !961)
!961 = distinct !DILexicalBlock(scope: !953, file: !25, line: 65, column: 9)
!962 = !DILocation(line: 67, column: 34, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !25, line: 65, column: 46)
!964 = !DILocation(line: 67, column: 54, scope: !963)
!965 = !DILocalVariable(name: "top", scope: !963, file: !25, line: 67, type: !14)
!966 = !DILocation(line: 0, scope: !963)
!967 = !DILocation(line: 68, column: 13, scope: !963)
!968 = !DILocation(line: 68, column: 33, scope: !963)
!969 = !DILocalVariable(name: "k", scope: !970, file: !25, line: 69, type: !45)
!970 = distinct !DILexicalBlock(scope: !963, file: !25, line: 69, column: 13)
!971 = !DILocation(line: 0, scope: !970)
!972 = !DILocation(line: 69, column: 17, scope: !970)
!973 = !DILocation(line: 69, scope: !970)
!974 = !DILocation(line: 69, column: 43, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !25, line: 69, column: 13)
!976 = !DILocation(line: 69, column: 13, scope: !970)
!977 = !DILocation(line: 67, column: 33, scope: !963)
!978 = !DILocation(line: 74, column: 13, scope: !979)
!979 = distinct !DILexicalBlock(scope: !963, file: !25, line: 74, column: 13)
!980 = !DILocation(line: 70, column: 30, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !25, line: 69, column: 52)
!982 = !DILocation(line: 70, column: 38, scope: !981)
!983 = !DILocation(line: 70, column: 23, scope: !981)
!984 = !DILocation(line: 70, column: 17, scope: !981)
!985 = !DILocation(line: 70, column: 27, scope: !981)
!986 = !DILocation(line: 71, column: 17, scope: !981)
!987 = !DILocation(line: 71, column: 25, scope: !981)
!988 = !DILocation(line: 69, column: 49, scope: !975)
!989 = !DILocation(line: 69, column: 13, scope: !975)
!990 = distinct !{!990, !976, !991, !323}
!991 = !DILocation(line: 72, column: 13, scope: !970)
!992 = !DILocation(line: 74, scope: !979)
!993 = !DILocalVariable(name: "jj", scope: !979, file: !25, line: 74, type: !45)
!994 = !DILocation(line: 0, scope: !979)
!995 = !DILocation(line: 74, column: 33, scope: !996)
!996 = distinct !DILexicalBlock(scope: !979, file: !25, line: 74, column: 13)
!997 = !DILocation(line: 92, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !963, file: !25, line: 92, column: 13)
!999 = !DILocation(line: 75, column: 22, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !25, line: 75, column: 20)
!1001 = distinct !DILexicalBlock(scope: !996, file: !25, line: 74, column: 53)
!1002 = !DILocation(line: 75, column: 25, scope: !1000)
!1003 = !DILocation(line: 79, column: 52, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !25, line: 75, column: 30)
!1005 = !DILocation(line: 79, column: 41, scope: !1004)
!1006 = !DILocation(line: 79, column: 34, scope: !1004)
!1007 = !DILocation(line: 79, column: 21, scope: !1004)
!1008 = !DILocation(line: 79, column: 38, scope: !1004)
!1009 = !DILocation(line: 81, column: 17, scope: !1004)
!1010 = !DILocation(line: 86, column: 52, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1000, file: !25, line: 82, column: 22)
!1012 = !DILocation(line: 86, column: 41, scope: !1011)
!1013 = !DILocation(line: 86, column: 73, scope: !1011)
!1014 = !DILocation(line: 86, column: 34, scope: !1011)
!1015 = !DILocation(line: 86, column: 21, scope: !1011)
!1016 = !DILocation(line: 86, column: 38, scope: !1011)
!1017 = !DILocation(line: 74, column: 49, scope: !996)
!1018 = !DILocation(line: 74, column: 13, scope: !996)
!1019 = distinct !{!1019, !978, !1020, !323}
!1020 = !DILocation(line: 89, column: 13, scope: !979)
!1021 = !DILocation(line: 92, scope: !998)
!1022 = !DILocalVariable(name: "k", scope: !998, file: !25, line: 92, type: !15)
!1023 = !DILocation(line: 0, scope: !998)
!1024 = !DILocation(line: 92, column: 31, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !998, file: !25, line: 92, column: 13)
!1026 = !DILocation(line: 93, column: 54, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1025, file: !25, line: 92, column: 51)
!1028 = !DILocation(line: 93, column: 68, scope: !1027)
!1029 = !DILocation(line: 93, column: 28, scope: !1027)
!1030 = !DILocation(line: 93, column: 78, scope: !1027)
!1031 = !DILocation(line: 93, column: 109, scope: !1027)
!1032 = !DILocation(line: 93, column: 123, scope: !1027)
!1033 = !DILocation(line: 93, column: 83, scope: !1027)
!1034 = !DILocation(line: 93, column: 82, scope: !1027)
!1035 = !DILocation(line: 93, column: 73, scope: !1027)
!1036 = !DILocation(line: 93, column: 17, scope: !1027)
!1037 = !DILocation(line: 93, column: 25, scope: !1027)
!1038 = !DILocation(line: 92, column: 48, scope: !1025)
!1039 = !DILocation(line: 92, column: 13, scope: !1025)
!1040 = distinct !{!1040, !997, !1041, !323}
!1041 = !DILocation(line: 94, column: 13, scope: !998)
!1042 = !DILocation(line: 65, column: 42, scope: !961)
!1043 = !DILocation(line: 65, column: 9, scope: !961)
!1044 = distinct !{!1044, !952, !1045, !323}
!1045 = !DILocation(line: 95, column: 9, scope: !953)
!1046 = !DILocation(line: 64, column: 44, scope: !950)
!1047 = !DILocation(line: 64, column: 5, scope: !950)
!1048 = distinct !{!1048, !951, !1049, !323}
!1049 = !DILocation(line: 96, column: 5, scope: !945)
!1050 = !DILocation(line: 99, scope: !956)
!1051 = !DILocalVariable(name: "i", scope: !956, file: !25, line: 99, type: !45)
!1052 = !DILocation(line: 0, scope: !956)
!1053 = !DILocation(line: 99, column: 23, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !956, file: !25, line: 99, column: 5)
!1055 = !DILocation(line: 105, column: 18, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1054, file: !25, line: 100, column: 5)
!1057 = !DILocation(line: 105, column: 40, scope: !1056)
!1058 = !DILocation(line: 105, column: 28, scope: !1056)
!1059 = !DILocation(line: 105, column: 44, scope: !1056)
!1060 = !DILocation(line: 105, column: 25, scope: !1056)
!1061 = !DILocation(line: 105, column: 9, scope: !1056)
!1062 = !DILocation(line: 105, column: 16, scope: !1056)
!1063 = !DILocation(line: 106, column: 21, scope: !1056)
!1064 = !DILocation(line: 106, column: 18, scope: !1056)
!1065 = !DILocation(line: 106, column: 40, scope: !1056)
!1066 = !DILocation(line: 106, column: 28, scope: !1056)
!1067 = !DILocation(line: 106, column: 44, scope: !1056)
!1068 = !DILocation(line: 106, column: 25, scope: !1056)
!1069 = !DILocation(line: 106, column: 12, scope: !1056)
!1070 = !DILocation(line: 106, column: 9, scope: !1056)
!1071 = !DILocation(line: 106, column: 16, scope: !1056)
!1072 = !DILocation(line: 99, column: 38, scope: !1054)
!1073 = !DILocation(line: 99, column: 5, scope: !1054)
!1074 = distinct !{!1074, !955, !1075, !323}
!1075 = !DILocation(line: 108, column: 5, scope: !956)
!1076 = !DILocation(line: 109, column: 1, scope: !930)
!1077 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1078, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !194, !5, !18}
!1080 = !DILocalVariable(name: "p", arg: 1, scope: !1077, file: !25, line: 154, type: !194)
!1081 = !DILocation(line: 0, scope: !1077)
!1082 = !DILocalVariable(name: "VtL", arg: 2, scope: !1077, file: !25, line: 154, type: !5)
!1083 = !DILocalVariable(name: "A_out", arg: 3, scope: !1077, file: !25, line: 154, type: !18)
!1084 = !DILocalVariable(name: "bits_to_shift", scope: !1077, file: !25, line: 159, type: !45)
!1085 = !DILocalVariable(name: "words_to_shift", scope: !1077, file: !25, line: 160, type: !45)
!1086 = !DILocalVariable(name: "m_vec_limbs", scope: !1077, file: !25, line: 161, type: !259)
!1087 = !DILocalVariable(name: "A", scope: !1077, file: !25, line: 162, type: !1088)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40960, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 640)
!1091 = !DILocation(line: 162, column: 14, scope: !1077)
!1092 = !DILocalVariable(name: "A_width", scope: !1077, file: !25, line: 163, type: !15)
!1093 = !DILocalVariable(name: "i", scope: !1094, file: !25, line: 177, type: !45)
!1094 = distinct !DILexicalBlock(scope: !1077, file: !25, line: 177, column: 5)
!1095 = !DILocation(line: 0, scope: !1094)
!1096 = !DILocation(line: 177, column: 10, scope: !1094)
!1097 = !DILocation(line: 177, scope: !1094)
!1098 = !DILocation(line: 160, column: 9, scope: !1077)
!1099 = !DILocation(line: 159, column: 9, scope: !1077)
!1100 = !DILocation(line: 177, column: 23, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 177, column: 5)
!1102 = !DILocation(line: 177, column: 5, scope: !1094)
!1103 = !DILocation(line: 178, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !25, line: 178, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !25, line: 177, column: 47)
!1106 = !DILocation(line: 212, column: 5, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1077, file: !25, line: 212, column: 5)
!1108 = !DILocation(line: 178, scope: !1104)
!1109 = !DILocalVariable(name: "j", scope: !1104, file: !25, line: 178, type: !45)
!1110 = !DILocation(line: 0, scope: !1104)
!1111 = !DILocation(line: 178, column: 40, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1104, file: !25, line: 178, column: 9)
!1113 = !DILocation(line: 180, column: 22, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1112, file: !25, line: 178, column: 51)
!1115 = !DILocalVariable(name: "Mj", scope: !1077, file: !25, line: 164, type: !346)
!1116 = !DILocalVariable(name: "c", scope: !1117, file: !25, line: 181, type: !45)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !25, line: 181, column: 13)
!1118 = !DILocation(line: 0, scope: !1117)
!1119 = !DILocation(line: 181, column: 18, scope: !1117)
!1120 = !DILocation(line: 181, scope: !1117)
!1121 = !DILocation(line: 181, column: 31, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !25, line: 181, column: 13)
!1123 = !DILocation(line: 181, column: 13, scope: !1117)
!1124 = !DILocation(line: 182, column: 17, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !25, line: 182, column: 17)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 181, column: 50)
!1127 = !DILocation(line: 182, scope: !1125)
!1128 = !DILocalVariable(name: "k", scope: !1125, file: !25, line: 182, type: !45)
!1129 = !DILocation(line: 0, scope: !1125)
!1130 = !DILocation(line: 182, column: 35, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1125, file: !25, line: 182, column: 17)
!1132 = !DILocation(line: 184, column: 86, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1131, file: !25, line: 183, column: 17)
!1134 = !DILocation(line: 184, column: 83, scope: !1133)
!1135 = !DILocation(line: 184, column: 78, scope: !1133)
!1136 = !DILocation(line: 184, column: 100, scope: !1133)
!1137 = !DILocation(line: 184, column: 35, scope: !1133)
!1138 = !DILocation(line: 184, column: 39, scope: !1133)
!1139 = !DILocation(line: 184, column: 48, scope: !1133)
!1140 = !DILocation(line: 184, column: 65, scope: !1133)
!1141 = !DILocation(line: 184, column: 43, scope: !1133)
!1142 = !DILocation(line: 184, column: 21, scope: !1133)
!1143 = !DILocation(line: 184, column: 75, scope: !1133)
!1144 = !DILocation(line: 185, column: 38, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !25, line: 185, column: 24)
!1146 = !DILocation(line: 186, column: 94, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 185, column: 42)
!1148 = !DILocation(line: 186, column: 91, scope: !1147)
!1149 = !DILocation(line: 186, column: 86, scope: !1147)
!1150 = !DILocation(line: 186, column: 114, scope: !1147)
!1151 = !DILocation(line: 186, column: 108, scope: !1147)
!1152 = !DILocation(line: 186, column: 39, scope: !1147)
!1153 = !DILocation(line: 186, column: 43, scope: !1147)
!1154 = !DILocation(line: 186, column: 52, scope: !1147)
!1155 = !DILocation(line: 186, column: 73, scope: !1147)
!1156 = !DILocation(line: 186, column: 47, scope: !1147)
!1157 = !DILocation(line: 186, column: 25, scope: !1147)
!1158 = !DILocation(line: 186, column: 83, scope: !1147)
!1159 = !DILocation(line: 187, column: 21, scope: !1147)
!1160 = !DILocation(line: 182, column: 51, scope: !1131)
!1161 = !DILocation(line: 182, column: 17, scope: !1131)
!1162 = distinct !{!1162, !1124, !1163, !323}
!1163 = !DILocation(line: 188, column: 17, scope: !1125)
!1164 = !DILocation(line: 181, column: 46, scope: !1122)
!1165 = !DILocation(line: 181, column: 13, scope: !1122)
!1166 = distinct !{!1166, !1123, !1167, !323}
!1167 = !DILocation(line: 189, column: 13, scope: !1117)
!1168 = !DILocation(line: 191, column: 19, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1114, file: !25, line: 191, column: 17)
!1170 = !DILocation(line: 192, column: 26, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1169, file: !25, line: 191, column: 25)
!1172 = !DILocalVariable(name: "Mi", scope: !1077, file: !25, line: 164, type: !346)
!1173 = !DILocalVariable(name: "c", scope: !1174, file: !25, line: 193, type: !45)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !25, line: 193, column: 17)
!1175 = !DILocation(line: 0, scope: !1174)
!1176 = !DILocation(line: 193, column: 22, scope: !1174)
!1177 = !DILocation(line: 193, scope: !1174)
!1178 = !DILocation(line: 193, column: 35, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 193, column: 17)
!1180 = !DILocation(line: 193, column: 17, scope: !1174)
!1181 = !DILocation(line: 194, column: 21, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !25, line: 194, column: 21)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !25, line: 193, column: 54)
!1184 = !DILocation(line: 194, scope: !1182)
!1185 = !DILocalVariable(name: "k", scope: !1182, file: !25, line: 194, type: !45)
!1186 = !DILocation(line: 0, scope: !1182)
!1187 = !DILocation(line: 194, column: 39, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !25, line: 194, column: 21)
!1189 = !DILocation(line: 196, column: 89, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1188, file: !25, line: 195, column: 21)
!1191 = !DILocation(line: 196, column: 86, scope: !1190)
!1192 = !DILocation(line: 196, column: 81, scope: !1190)
!1193 = !DILocation(line: 196, column: 103, scope: !1190)
!1194 = !DILocation(line: 196, column: 38, scope: !1190)
!1195 = !DILocation(line: 196, column: 42, scope: !1190)
!1196 = !DILocation(line: 196, column: 51, scope: !1190)
!1197 = !DILocation(line: 196, column: 68, scope: !1190)
!1198 = !DILocation(line: 196, column: 46, scope: !1190)
!1199 = !DILocation(line: 196, column: 25, scope: !1190)
!1200 = !DILocation(line: 196, column: 78, scope: !1190)
!1201 = !DILocation(line: 197, column: 42, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1190, file: !25, line: 197, column: 28)
!1203 = !DILocation(line: 198, column: 97, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !25, line: 197, column: 46)
!1205 = !DILocation(line: 198, column: 94, scope: !1204)
!1206 = !DILocation(line: 198, column: 89, scope: !1204)
!1207 = !DILocation(line: 198, column: 117, scope: !1204)
!1208 = !DILocation(line: 198, column: 111, scope: !1204)
!1209 = !DILocation(line: 198, column: 42, scope: !1204)
!1210 = !DILocation(line: 198, column: 46, scope: !1204)
!1211 = !DILocation(line: 198, column: 55, scope: !1204)
!1212 = !DILocation(line: 198, column: 76, scope: !1204)
!1213 = !DILocation(line: 198, column: 50, scope: !1204)
!1214 = !DILocation(line: 198, column: 29, scope: !1204)
!1215 = !DILocation(line: 198, column: 86, scope: !1204)
!1216 = !DILocation(line: 199, column: 25, scope: !1204)
!1217 = !DILocation(line: 194, column: 55, scope: !1188)
!1218 = !DILocation(line: 194, column: 21, scope: !1188)
!1219 = distinct !{!1219, !1181, !1220, !323}
!1220 = !DILocation(line: 200, column: 21, scope: !1182)
!1221 = !DILocation(line: 193, column: 50, scope: !1179)
!1222 = !DILocation(line: 193, column: 17, scope: !1179)
!1223 = distinct !{!1223, !1180, !1224, !323}
!1224 = !DILocation(line: 201, column: 17, scope: !1174)
!1225 = !DILocation(line: 204, column: 27, scope: !1114)
!1226 = !DILocation(line: 205, column: 30, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1114, file: !25, line: 205, column: 16)
!1228 = !DILocation(line: 178, column: 46, scope: !1112)
!1229 = !DILocation(line: 178, column: 9, scope: !1112)
!1230 = distinct !{!1230, !1103, !1231, !323}
!1231 = !DILocation(line: 209, column: 9, scope: !1104)
!1232 = !DILocation(line: 177, column: 42, scope: !1101)
!1233 = !DILocation(line: 177, column: 5, scope: !1101)
!1234 = distinct !{!1234, !1102, !1235, !323}
!1235 = !DILocation(line: 210, column: 5, scope: !1094)
!1236 = !DILocation(line: 212, scope: !1107)
!1237 = !DILocalVariable(name: "c", scope: !1107, file: !25, line: 212, type: !15)
!1238 = !DILocation(line: 0, scope: !1107)
!1239 = !DILocation(line: 212, column: 26, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1107, file: !25, line: 212, column: 5)
!1241 = !DILocation(line: 214, column: 35, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1240, file: !25, line: 213, column: 5)
!1243 = !DILocation(line: 214, column: 9, scope: !1242)
!1244 = !DILocation(line: 212, column: 91, scope: !1240)
!1245 = !DILocation(line: 212, column: 5, scope: !1240)
!1246 = distinct !{!1246, !1106, !1247, !323}
!1247 = !DILocation(line: 215, column: 5, scope: !1107)
!1248 = !DILocalVariable(name: "tab", scope: !1077, file: !25, line: 217, type: !1249)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 16)
!1252 = !DILocation(line: 217, column: 19, scope: !1077)
!1253 = !DILocalVariable(name: "i", scope: !1254, file: !25, line: 218, type: !15)
!1254 = distinct !DILexicalBlock(scope: !1077, file: !25, line: 218, column: 5)
!1255 = !DILocation(line: 0, scope: !1254)
!1256 = !DILocation(line: 218, column: 10, scope: !1254)
!1257 = !DILocation(line: 218, scope: !1254)
!1258 = !DILocation(line: 218, column: 26, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !25, line: 218, column: 5)
!1260 = !DILocation(line: 218, column: 5, scope: !1254)
!1261 = !DILocation(line: 228, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1077, file: !25, line: 228, column: 5)
!1263 = !DILocation(line: 220, column: 28, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !25, line: 219, column: 5)
!1265 = !DILocation(line: 220, column: 22, scope: !1264)
!1266 = !DILocation(line: 220, column: 14, scope: !1264)
!1267 = !DILocation(line: 220, column: 9, scope: !1264)
!1268 = !DILocation(line: 220, column: 20, scope: !1264)
!1269 = !DILocation(line: 221, column: 22, scope: !1264)
!1270 = !DILocation(line: 221, column: 14, scope: !1264)
!1271 = !DILocation(line: 221, column: 16, scope: !1264)
!1272 = !DILocation(line: 221, column: 9, scope: !1264)
!1273 = !DILocation(line: 221, column: 20, scope: !1264)
!1274 = !DILocation(line: 222, column: 28, scope: !1264)
!1275 = !DILocation(line: 222, column: 22, scope: !1264)
!1276 = !DILocation(line: 222, column: 14, scope: !1264)
!1277 = !DILocation(line: 222, column: 16, scope: !1264)
!1278 = !DILocation(line: 222, column: 9, scope: !1264)
!1279 = !DILocation(line: 222, column: 20, scope: !1264)
!1280 = !DILocation(line: 223, column: 28, scope: !1264)
!1281 = !DILocation(line: 223, column: 22, scope: !1264)
!1282 = !DILocation(line: 223, column: 14, scope: !1264)
!1283 = !DILocation(line: 223, column: 16, scope: !1264)
!1284 = !DILocation(line: 223, column: 9, scope: !1264)
!1285 = !DILocation(line: 223, column: 20, scope: !1264)
!1286 = !DILocation(line: 218, column: 41, scope: !1259)
!1287 = !DILocation(line: 218, column: 5, scope: !1259)
!1288 = distinct !{!1288, !1260, !1289, !323}
!1289 = !DILocation(line: 224, column: 5, scope: !1254)
!1290 = !DILocation(line: 228, scope: !1262)
!1291 = !DILocalVariable(name: "c", scope: !1262, file: !25, line: 228, type: !15)
!1292 = !DILocation(line: 0, scope: !1262)
!1293 = !DILocation(line: 228, column: 26, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1262, file: !25, line: 228, column: 5)
!1295 = !DILocation(line: 230, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !25, line: 230, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !25, line: 229, column: 5)
!1298 = !DILocation(line: 250, column: 5, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1077, file: !25, line: 250, column: 5)
!1300 = !DILocation(line: 230, scope: !1296)
!1301 = !DILocalVariable(name: "r", scope: !1296, file: !25, line: 230, type: !45)
!1302 = !DILocation(line: 0, scope: !1296)
!1303 = !DILocation(line: 230, column: 36, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !25, line: 230, column: 9)
!1305 = !DILocation(line: 232, column: 28, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1304, file: !25, line: 231, column: 9)
!1307 = !DILocation(line: 232, column: 32, scope: !1306)
!1308 = !DILocation(line: 232, column: 41, scope: !1306)
!1309 = !DILocation(line: 232, column: 49, scope: !1306)
!1310 = !DILocation(line: 232, column: 45, scope: !1306)
!1311 = !DILocalVariable(name: "pos", scope: !1306, file: !25, line: 232, type: !15)
!1312 = !DILocation(line: 0, scope: !1306)
!1313 = !DILocation(line: 233, column: 28, scope: !1306)
!1314 = !DILocation(line: 233, column: 41, scope: !1306)
!1315 = !DILocalVariable(name: "t0", scope: !1306, file: !25, line: 233, type: !6)
!1316 = !DILocation(line: 234, column: 35, scope: !1306)
!1317 = !DILocation(line: 234, column: 41, scope: !1306)
!1318 = !DILocalVariable(name: "t1", scope: !1306, file: !25, line: 234, type: !6)
!1319 = !DILocation(line: 235, column: 35, scope: !1306)
!1320 = !DILocation(line: 235, column: 41, scope: !1306)
!1321 = !DILocalVariable(name: "t2", scope: !1306, file: !25, line: 235, type: !6)
!1322 = !DILocation(line: 236, column: 28, scope: !1306)
!1323 = !DILocation(line: 236, column: 35, scope: !1306)
!1324 = !DILocation(line: 236, column: 41, scope: !1306)
!1325 = !DILocalVariable(name: "t3", scope: !1306, file: !25, line: 236, type: !6)
!1326 = !DILocalVariable(name: "t", scope: !1327, file: !25, line: 237, type: !15)
!1327 = distinct !DILexicalBlock(scope: !1306, file: !25, line: 237, column: 13)
!1328 = !DILocation(line: 0, scope: !1327)
!1329 = !DILocation(line: 237, column: 18, scope: !1327)
!1330 = !DILocation(line: 237, scope: !1327)
!1331 = !DILocation(line: 237, column: 34, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !25, line: 237, column: 13)
!1333 = !DILocation(line: 237, column: 13, scope: !1327)
!1334 = !DILocation(line: 239, column: 89, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !25, line: 238, column: 13)
!1336 = !DILocation(line: 239, column: 84, scope: !1335)
!1337 = !DILocation(line: 239, column: 83, scope: !1335)
!1338 = !DILocation(line: 239, column: 105, scope: !1335)
!1339 = !DILocation(line: 239, column: 107, scope: !1335)
!1340 = !DILocation(line: 239, column: 100, scope: !1335)
!1341 = !DILocation(line: 239, column: 99, scope: !1335)
!1342 = !DILocation(line: 239, column: 95, scope: !1335)
!1343 = !DILocation(line: 239, column: 121, scope: !1335)
!1344 = !DILocation(line: 239, column: 123, scope: !1335)
!1345 = !DILocation(line: 239, column: 116, scope: !1335)
!1346 = !DILocation(line: 239, column: 115, scope: !1335)
!1347 = !DILocation(line: 239, column: 111, scope: !1335)
!1348 = !DILocation(line: 239, column: 137, scope: !1335)
!1349 = !DILocation(line: 239, column: 139, scope: !1335)
!1350 = !DILocation(line: 239, column: 132, scope: !1335)
!1351 = !DILocation(line: 239, column: 131, scope: !1335)
!1352 = !DILocation(line: 239, column: 127, scope: !1335)
!1353 = !DILocation(line: 239, column: 22, scope: !1335)
!1354 = !DILocation(line: 239, column: 24, scope: !1335)
!1355 = !DILocation(line: 239, column: 36, scope: !1335)
!1356 = !DILocation(line: 239, column: 40, scope: !1335)
!1357 = !DILocation(line: 239, column: 49, scope: !1335)
!1358 = !DILocation(line: 239, column: 58, scope: !1335)
!1359 = !DILocation(line: 239, column: 72, scope: !1335)
!1360 = !DILocation(line: 239, column: 53, scope: !1335)
!1361 = !DILocation(line: 239, column: 17, scope: !1335)
!1362 = !DILocation(line: 239, column: 78, scope: !1335)
!1363 = !DILocation(line: 237, column: 49, scope: !1332)
!1364 = !DILocation(line: 237, column: 13, scope: !1332)
!1365 = distinct !{!1365, !1333, !1366, !323}
!1366 = !DILocation(line: 240, column: 13, scope: !1327)
!1367 = !DILocation(line: 230, column: 82, scope: !1304)
!1368 = !DILocation(line: 230, column: 9, scope: !1304)
!1369 = distinct !{!1369, !1295, !1370, !323}
!1370 = !DILocation(line: 241, column: 9, scope: !1296)
!1371 = !DILocation(line: 228, column: 38, scope: !1294)
!1372 = !DILocation(line: 228, column: 5, scope: !1294)
!1373 = distinct !{!1373, !1261, !1374, !323}
!1374 = !DILocation(line: 242, column: 5, scope: !1262)
!1375 = !DILocation(line: 250, scope: !1299)
!1376 = !DILocalVariable(name: "r", scope: !1299, file: !25, line: 250, type: !45)
!1377 = !DILocation(line: 0, scope: !1299)
!1378 = !DILocation(line: 250, column: 23, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1299, file: !25, line: 250, column: 5)
!1380 = !DILocation(line: 252, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !25, line: 252, column: 9)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !25, line: 251, column: 5)
!1383 = !DILocation(line: 252, scope: !1381)
!1384 = !DILocalVariable(name: "c", scope: !1381, file: !25, line: 252, type: !45)
!1385 = !DILocation(line: 0, scope: !1381)
!1386 = !DILocation(line: 252, column: 27, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !25, line: 252, column: 9)
!1388 = !DILocation(line: 254, column: 13, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !25, line: 254, column: 13)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !25, line: 253, column: 9)
!1391 = !DILocation(line: 254, scope: !1389)
!1392 = !DILocalVariable(name: "i", scope: !1389, file: !25, line: 254, type: !45)
!1393 = !DILocation(line: 0, scope: !1389)
!1394 = !DILocation(line: 254, column: 35, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !25, line: 254, column: 13)
!1396 = !DILocation(line: 256, column: 55, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1395, file: !25, line: 255, column: 13)
!1398 = !DILocation(line: 256, column: 59, scope: !1397)
!1399 = !DILocation(line: 256, column: 63, scope: !1397)
!1400 = !DILocation(line: 256, column: 44, scope: !1397)
!1401 = !DILocation(line: 256, column: 95, scope: !1397)
!1402 = !DILocation(line: 256, column: 92, scope: !1397)
!1403 = !DILocation(line: 256, column: 75, scope: !1397)
!1404 = !DILocation(line: 256, column: 99, scope: !1397)
!1405 = !DILocation(line: 256, column: 104, scope: !1397)
!1406 = !DILocation(line: 256, column: 17, scope: !1397)
!1407 = !DILocation(line: 254, column: 50, scope: !1395)
!1408 = !DILocation(line: 254, column: 13, scope: !1395)
!1409 = distinct !{!1409, !1388, !1410, !323}
!1410 = !DILocation(line: 257, column: 13, scope: !1389)
!1411 = !DILocation(line: 252, column: 50, scope: !1387)
!1412 = !DILocation(line: 252, column: 9, scope: !1387)
!1413 = distinct !{!1413, !1380, !1414, !323}
!1414 = !DILocation(line: 258, column: 9, scope: !1381)
!1415 = !DILocation(line: 250, column: 38, scope: !1379)
!1416 = !DILocation(line: 250, column: 5, scope: !1379)
!1417 = distinct !{!1417, !1298, !1418, !323}
!1418 = !DILocation(line: 259, column: 5, scope: !1299)
!1419 = !DILocation(line: 260, column: 1, scope: !1077)
!1420 = distinct !DISubprogram(name: "mat_mul", scope: !513, file: !513, line: 79, type: !1421, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !49, !49, !18, !45, !45, !45}
!1423 = !DILocalVariable(name: "a", arg: 1, scope: !1420, file: !513, line: 79, type: !49)
!1424 = !DILocation(line: 0, scope: !1420)
!1425 = !DILocalVariable(name: "b", arg: 2, scope: !1420, file: !513, line: 79, type: !49)
!1426 = !DILocalVariable(name: "c", arg: 3, scope: !1420, file: !513, line: 80, type: !18)
!1427 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1420, file: !513, line: 80, type: !45)
!1428 = !DILocalVariable(name: "row_a", arg: 5, scope: !1420, file: !513, line: 80, type: !45)
!1429 = !DILocalVariable(name: "col_b", arg: 6, scope: !1420, file: !513, line: 80, type: !45)
!1430 = !DILocalVariable(name: "i", scope: !1431, file: !513, line: 81, type: !45)
!1431 = distinct !DILexicalBlock(scope: !1420, file: !513, line: 81, column: 5)
!1432 = !DILocation(line: 0, scope: !1431)
!1433 = !DILocation(line: 81, column: 10, scope: !1431)
!1434 = !DILocation(line: 81, scope: !1431)
!1435 = !DILocation(line: 81, column: 23, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !513, line: 81, column: 5)
!1437 = !DILocation(line: 81, column: 5, scope: !1431)
!1438 = !DILocation(line: 82, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !513, line: 82, column: 9)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !513, line: 81, column: 53)
!1441 = !DILocation(line: 82, scope: !1439)
!1442 = !DILocalVariable(name: "j", scope: !1439, file: !513, line: 82, type: !45)
!1443 = !DILocation(line: 0, scope: !1439)
!1444 = !DILocation(line: 83, column: 18, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !513, line: 82, column: 46)
!1446 = distinct !DILexicalBlock(scope: !1439, file: !513, line: 82, column: 9)
!1447 = !DILocation(line: 83, column: 16, scope: !1445)
!1448 = !DILocation(line: 82, column: 41, scope: !1446)
!1449 = !DILocation(line: 82, column: 9, scope: !1446)
!1450 = distinct !{!1450, !1438, !1451, !323}
!1451 = !DILocation(line: 84, column: 9, scope: !1439)
!1452 = !DILocation(line: 81, column: 32, scope: !1436)
!1453 = !DILocation(line: 81, column: 39, scope: !1436)
!1454 = !DILocation(line: 81, column: 5, scope: !1436)
!1455 = distinct !{!1455, !1437, !1456, !323}
!1456 = !DILocation(line: 85, column: 5, scope: !1431)
!1457 = !DILocation(line: 86, column: 1, scope: !1420)
!1458 = distinct !DISubprogram(name: "mat_add", scope: !513, file: !513, line: 88, type: !1459, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !49, !49, !18, !45, !45}
!1461 = !DILocalVariable(name: "a", arg: 1, scope: !1458, file: !513, line: 88, type: !49)
!1462 = !DILocation(line: 0, scope: !1458)
!1463 = !DILocalVariable(name: "b", arg: 2, scope: !1458, file: !513, line: 88, type: !49)
!1464 = !DILocalVariable(name: "c", arg: 3, scope: !1458, file: !513, line: 89, type: !18)
!1465 = !DILocalVariable(name: "m", arg: 4, scope: !1458, file: !513, line: 89, type: !45)
!1466 = !DILocalVariable(name: "n", arg: 5, scope: !1458, file: !513, line: 89, type: !45)
!1467 = !DILocalVariable(name: "i", scope: !1468, file: !513, line: 90, type: !45)
!1468 = distinct !DILexicalBlock(scope: !1458, file: !513, line: 90, column: 5)
!1469 = !DILocation(line: 0, scope: !1468)
!1470 = !DILocation(line: 90, column: 10, scope: !1468)
!1471 = !DILocation(line: 90, scope: !1468)
!1472 = !DILocation(line: 90, column: 23, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !513, line: 90, column: 5)
!1474 = !DILocation(line: 90, column: 5, scope: !1468)
!1475 = !DILocalVariable(name: "j", scope: !1476, file: !513, line: 91, type: !45)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !513, line: 91, column: 9)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !513, line: 90, column: 33)
!1478 = !DILocation(line: 0, scope: !1476)
!1479 = !DILocation(line: 92, column: 42, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !513, line: 91, column: 37)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !513, line: 91, column: 9)
!1482 = !DILocation(line: 92, column: 38, scope: !1480)
!1483 = !DILocation(line: 92, column: 60, scope: !1480)
!1484 = !DILocation(line: 92, column: 56, scope: !1480)
!1485 = !DILocation(line: 92, column: 32, scope: !1480)
!1486 = !DILocation(line: 92, column: 17, scope: !1480)
!1487 = !DILocation(line: 92, column: 30, scope: !1480)
!1488 = !DILocation(line: 90, column: 28, scope: !1473)
!1489 = !DILocation(line: 90, column: 5, scope: !1473)
!1490 = distinct !{!1490, !1474, !1491, !323}
!1491 = !DILocation(line: 94, column: 5, scope: !1468)
!1492 = !DILocation(line: 95, column: 1, scope: !1458)
!1493 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !296, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1494 = !DILocalVariable(name: "m", arg: 1, scope: !1493, file: !25, line: 32, type: !49)
!1495 = !DILocation(line: 0, scope: !1493)
!1496 = !DILocalVariable(name: "menc", arg: 2, scope: !1493, file: !25, line: 32, type: !18)
!1497 = !DILocalVariable(name: "mlen", arg: 3, scope: !1493, file: !25, line: 32, type: !45)
!1498 = !DILocalVariable(name: "i", scope: !1493, file: !25, line: 33, type: !45)
!1499 = !DILocation(line: 34, column: 10, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1493, file: !25, line: 34, column: 5)
!1501 = !DILocation(line: 34, scope: !1500)
!1502 = !DILocation(line: 34, column: 19, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !25, line: 34, column: 5)
!1504 = !DILocation(line: 34, column: 5, scope: !1500)
!1505 = !DILocation(line: 35, column: 20, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !25, line: 34, column: 44)
!1507 = !DILocation(line: 35, column: 31, scope: !1506)
!1508 = !DILocation(line: 35, column: 27, scope: !1506)
!1509 = !DILocation(line: 35, column: 36, scope: !1506)
!1510 = !DILocation(line: 35, column: 24, scope: !1506)
!1511 = !DILocation(line: 35, column: 9, scope: !1506)
!1512 = !DILocation(line: 35, column: 17, scope: !1506)
!1513 = !DILocation(line: 34, column: 31, scope: !1503)
!1514 = !DILocation(line: 34, column: 38, scope: !1503)
!1515 = !DILocation(line: 34, column: 5, scope: !1503)
!1516 = distinct !{!1516, !1504, !1517, !323}
!1517 = !DILocation(line: 36, column: 5, scope: !1500)
!1518 = !DILocation(line: 41, column: 1, scope: !1493)
!1519 = distinct !DISubprogram(name: "add_f", scope: !513, file: !513, line: 43, type: !1520, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!14, !14, !14}
!1522 = !DILocalVariable(name: "a", arg: 1, scope: !1519, file: !513, line: 43, type: !14)
!1523 = !DILocation(line: 0, scope: !1519)
!1524 = !DILocalVariable(name: "b", arg: 2, scope: !1519, file: !513, line: 43, type: !14)
!1525 = !DILocation(line: 44, column: 14, scope: !1519)
!1526 = !DILocation(line: 44, column: 5, scope: !1519)
!1527 = distinct !DISubprogram(name: "lincomb", scope: !513, file: !513, line: 70, type: !1528, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!14, !49, !49, !45, !45}
!1530 = !DILocalVariable(name: "a", arg: 1, scope: !1527, file: !513, line: 70, type: !49)
!1531 = !DILocation(line: 0, scope: !1527)
!1532 = !DILocalVariable(name: "b", arg: 2, scope: !1527, file: !513, line: 71, type: !49)
!1533 = !DILocalVariable(name: "n", arg: 3, scope: !1527, file: !513, line: 71, type: !45)
!1534 = !DILocalVariable(name: "m", arg: 4, scope: !1527, file: !513, line: 71, type: !45)
!1535 = !DILocalVariable(name: "ret", scope: !1527, file: !513, line: 72, type: !14)
!1536 = !DILocalVariable(name: "i", scope: !1537, file: !513, line: 73, type: !45)
!1537 = distinct !DILexicalBlock(scope: !1527, file: !513, line: 73, column: 5)
!1538 = !DILocation(line: 0, scope: !1537)
!1539 = !DILocation(line: 73, column: 10, scope: !1537)
!1540 = !DILocation(line: 73, scope: !1537)
!1541 = !DILocation(line: 73, column: 23, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !513, line: 73, column: 5)
!1543 = !DILocation(line: 73, column: 5, scope: !1537)
!1544 = !DILocation(line: 74, column: 27, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !513, line: 73, column: 41)
!1546 = !DILocation(line: 74, column: 33, scope: !1545)
!1547 = !DILocation(line: 74, column: 21, scope: !1545)
!1548 = !DILocation(line: 74, column: 15, scope: !1545)
!1549 = !DILocation(line: 73, column: 28, scope: !1542)
!1550 = !DILocation(line: 73, column: 35, scope: !1542)
!1551 = !DILocation(line: 73, column: 5, scope: !1542)
!1552 = distinct !{!1552, !1543, !1553, !323}
!1553 = !DILocation(line: 75, column: 5, scope: !1537)
!1554 = !DILocation(line: 76, column: 5, scope: !1527)
!1555 = distinct !DISubprogram(name: "mul_f", scope: !513, file: !513, line: 9, type: !1520, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1556 = !DILocalVariable(name: "a", arg: 1, scope: !1555, file: !513, line: 9, type: !14)
!1557 = !DILocation(line: 0, scope: !1555)
!1558 = !DILocalVariable(name: "b", arg: 2, scope: !1555, file: !513, line: 9, type: !14)
!1559 = !DILocation(line: 14, column: 10, scope: !1555)
!1560 = !DILocation(line: 14, column: 7, scope: !1555)
!1561 = !DILocation(line: 17, column: 17, scope: !1555)
!1562 = !DILocalVariable(name: "p", scope: !1555, file: !513, line: 11, type: !14)
!1563 = !DILocation(line: 18, column: 13, scope: !1555)
!1564 = !DILocation(line: 18, column: 17, scope: !1555)
!1565 = !DILocation(line: 18, column: 7, scope: !1555)
!1566 = !DILocation(line: 19, column: 13, scope: !1555)
!1567 = !DILocation(line: 19, column: 17, scope: !1555)
!1568 = !DILocation(line: 19, column: 7, scope: !1555)
!1569 = !DILocation(line: 20, column: 13, scope: !1555)
!1570 = !DILocation(line: 20, column: 17, scope: !1555)
!1571 = !DILocation(line: 20, column: 7, scope: !1555)
!1572 = !DILocalVariable(name: "top_p", scope: !1555, file: !513, line: 23, type: !14)
!1573 = !DILocation(line: 24, column: 37, scope: !1555)
!1574 = !DILocation(line: 24, column: 52, scope: !1555)
!1575 = !DILocation(line: 24, column: 43, scope: !1555)
!1576 = !DILocation(line: 24, column: 59, scope: !1555)
!1577 = !DILocalVariable(name: "out", scope: !1555, file: !513, line: 24, type: !14)
!1578 = !DILocation(line: 25, column: 5, scope: !1555)
!1579 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1580 = !DILocation(line: 0, scope: !24)
!1581 = !DILocalVariable(name: "i", scope: !1582, file: !25, line: 117, type: !15)
!1582 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1583 = !DILocation(line: 0, scope: !1582)
!1584 = !DILocation(line: 117, column: 10, scope: !1582)
!1585 = !DILocation(line: 117, scope: !1582)
!1586 = !DILocation(line: 117, column: 26, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !25, line: 117, column: 5)
!1588 = !DILocation(line: 117, column: 5, scope: !1582)
!1589 = !DILocation(line: 124, column: 5, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1591 = !DILocation(line: 119, column: 24, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !25, line: 118, column: 5)
!1593 = !DILocation(line: 119, column: 29, scope: !1592)
!1594 = !DILocation(line: 119, column: 41, scope: !1592)
!1595 = !DILocation(line: 119, column: 38, scope: !1592)
!1596 = !DILocation(line: 119, column: 36, scope: !1592)
!1597 = !DILocation(line: 119, column: 46, scope: !1592)
!1598 = !DILocalVariable(name: "t", scope: !1592, file: !25, line: 119, type: !6)
!1599 = !DILocation(line: 0, scope: !1592)
!1600 = !DILocation(line: 120, column: 21, scope: !1592)
!1601 = !DILocation(line: 120, column: 9, scope: !1592)
!1602 = !DILocation(line: 120, column: 16, scope: !1592)
!1603 = !DILocation(line: 121, column: 12, scope: !1592)
!1604 = !DILocation(line: 121, column: 9, scope: !1592)
!1605 = !DILocation(line: 121, column: 16, scope: !1592)
!1606 = !DILocation(line: 117, column: 33, scope: !1587)
!1607 = !DILocation(line: 117, column: 5, scope: !1587)
!1608 = distinct !{!1608, !1588, !1609, !323}
!1609 = !DILocation(line: 122, column: 5, scope: !1582)
!1610 = !DILocation(line: 124, scope: !1590)
!1611 = !DILocalVariable(name: "i", scope: !1590, file: !25, line: 124, type: !15)
!1612 = !DILocation(line: 0, scope: !1590)
!1613 = !DILocation(line: 124, column: 26, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1590, file: !25, line: 124, column: 5)
!1615 = !DILocation(line: 134, column: 5, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1617 = !DILocation(line: 126, column: 25, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !25, line: 125, column: 5)
!1619 = !DILocation(line: 126, column: 32, scope: !1618)
!1620 = !DILocation(line: 126, column: 43, scope: !1618)
!1621 = !DILocation(line: 126, column: 40, scope: !1618)
!1622 = !DILocation(line: 126, column: 38, scope: !1618)
!1623 = !DILocation(line: 126, column: 48, scope: !1618)
!1624 = !DILocalVariable(name: "t0", scope: !1618, file: !25, line: 126, type: !6)
!1625 = !DILocation(line: 0, scope: !1618)
!1626 = !DILocation(line: 127, column: 28, scope: !1618)
!1627 = !DILocation(line: 127, column: 25, scope: !1618)
!1628 = !DILocation(line: 127, column: 32, scope: !1618)
!1629 = !DILocation(line: 127, column: 43, scope: !1618)
!1630 = !DILocation(line: 127, column: 40, scope: !1618)
!1631 = !DILocation(line: 127, column: 38, scope: !1618)
!1632 = !DILocation(line: 127, column: 48, scope: !1618)
!1633 = !DILocalVariable(name: "t1", scope: !1618, file: !25, line: 127, type: !6)
!1634 = !DILocation(line: 128, column: 23, scope: !1618)
!1635 = !DILocation(line: 128, column: 9, scope: !1618)
!1636 = !DILocation(line: 128, column: 16, scope: !1618)
!1637 = !DILocation(line: 129, column: 23, scope: !1618)
!1638 = !DILocation(line: 129, column: 12, scope: !1618)
!1639 = !DILocation(line: 129, column: 9, scope: !1618)
!1640 = !DILocation(line: 129, column: 16, scope: !1618)
!1641 = !DILocation(line: 130, column: 12, scope: !1618)
!1642 = !DILocation(line: 130, column: 9, scope: !1618)
!1643 = !DILocation(line: 130, column: 16, scope: !1618)
!1644 = !DILocation(line: 131, column: 12, scope: !1618)
!1645 = !DILocation(line: 131, column: 9, scope: !1618)
!1646 = !DILocation(line: 131, column: 16, scope: !1618)
!1647 = !DILocation(line: 124, column: 33, scope: !1614)
!1648 = !DILocation(line: 124, column: 5, scope: !1614)
!1649 = distinct !{!1649, !1589, !1650, !323}
!1650 = !DILocation(line: 132, column: 5, scope: !1590)
!1651 = !DILocation(line: 134, scope: !1616)
!1652 = !DILocalVariable(name: "i", scope: !1616, file: !25, line: 134, type: !15)
!1653 = !DILocation(line: 0, scope: !1616)
!1654 = !DILocation(line: 134, column: 26, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1616, file: !25, line: 134, column: 5)
!1656 = !DILocation(line: 145, column: 5, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1658 = !DILocation(line: 136, column: 25, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !25, line: 135, column: 5)
!1660 = !DILocation(line: 136, column: 32, scope: !1659)
!1661 = !DILocation(line: 136, column: 44, scope: !1659)
!1662 = !DILocation(line: 136, column: 41, scope: !1659)
!1663 = !DILocation(line: 136, column: 39, scope: !1659)
!1664 = !DILocation(line: 136, column: 50, scope: !1659)
!1665 = !DILocalVariable(name: "t0", scope: !1659, file: !25, line: 136, type: !6)
!1666 = !DILocation(line: 0, scope: !1659)
!1667 = !DILocation(line: 137, column: 28, scope: !1659)
!1668 = !DILocation(line: 137, column: 25, scope: !1659)
!1669 = !DILocation(line: 137, column: 32, scope: !1659)
!1670 = !DILocation(line: 137, column: 44, scope: !1659)
!1671 = !DILocation(line: 137, column: 41, scope: !1659)
!1672 = !DILocation(line: 137, column: 39, scope: !1659)
!1673 = !DILocation(line: 137, column: 50, scope: !1659)
!1674 = !DILocalVariable(name: "t1", scope: !1659, file: !25, line: 137, type: !6)
!1675 = !DILocation(line: 139, column: 23, scope: !1659)
!1676 = !DILocation(line: 139, column: 9, scope: !1659)
!1677 = !DILocation(line: 139, column: 17, scope: !1659)
!1678 = !DILocation(line: 140, column: 23, scope: !1659)
!1679 = !DILocation(line: 140, column: 12, scope: !1659)
!1680 = !DILocation(line: 140, column: 9, scope: !1659)
!1681 = !DILocation(line: 140, column: 17, scope: !1659)
!1682 = !DILocation(line: 141, column: 12, scope: !1659)
!1683 = !DILocation(line: 141, column: 9, scope: !1659)
!1684 = !DILocation(line: 141, column: 17, scope: !1659)
!1685 = !DILocation(line: 142, column: 12, scope: !1659)
!1686 = !DILocation(line: 142, column: 9, scope: !1659)
!1687 = !DILocation(line: 142, column: 17, scope: !1659)
!1688 = !DILocation(line: 134, column: 32, scope: !1655)
!1689 = !DILocation(line: 134, column: 5, scope: !1655)
!1690 = distinct !{!1690, !1615, !1691, !323}
!1691 = !DILocation(line: 143, column: 5, scope: !1616)
!1692 = !DILocation(line: 145, scope: !1657)
!1693 = !DILocalVariable(name: "i", scope: !1657, file: !25, line: 145, type: !15)
!1694 = !DILocation(line: 0, scope: !1657)
!1695 = !DILocation(line: 145, column: 26, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1657, file: !25, line: 145, column: 5)
!1697 = !DILocation(line: 147, column: 24, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1696, file: !25, line: 146, column: 5)
!1699 = !DILocation(line: 147, column: 28, scope: !1698)
!1700 = !DILocation(line: 147, column: 39, scope: !1698)
!1701 = !DILocation(line: 147, column: 36, scope: !1698)
!1702 = !DILocation(line: 147, column: 44, scope: !1698)
!1703 = !DILocalVariable(name: "t", scope: !1698, file: !25, line: 147, type: !6)
!1704 = !DILocation(line: 0, scope: !1698)
!1705 = !DILocation(line: 148, column: 21, scope: !1698)
!1706 = !DILocation(line: 148, column: 9, scope: !1698)
!1707 = !DILocation(line: 148, column: 16, scope: !1698)
!1708 = !DILocation(line: 149, column: 12, scope: !1698)
!1709 = !DILocation(line: 149, column: 9, scope: !1698)
!1710 = !DILocation(line: 149, column: 16, scope: !1698)
!1711 = !DILocation(line: 145, column: 32, scope: !1696)
!1712 = !DILocation(line: 145, column: 5, scope: !1696)
!1713 = distinct !{!1713, !1656, !1714, !323}
!1714 = !DILocation(line: 150, column: 5, scope: !1657)
!1715 = !DILocation(line: 151, column: 1, scope: !24)
!1716 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !343, file: !343, line: 61, type: !399, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1717 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1716, file: !343, line: 61, type: !259)
!1718 = !DILocation(line: 0, scope: !1716)
!1719 = !DILocalVariable(name: "mat", arg: 2, scope: !1716, file: !343, line: 61, type: !49)
!1720 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1716, file: !343, line: 61, type: !346)
!1721 = !DILocalVariable(name: "acc", arg: 4, scope: !1716, file: !343, line: 61, type: !5)
!1722 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1716, file: !343, line: 62, type: !259)
!1723 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1716, file: !343, line: 62, type: !259)
!1724 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1716, file: !343, line: 62, type: !259)
!1725 = !DILocalVariable(name: "r", scope: !1726, file: !343, line: 64, type: !45)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !343, line: 64, column: 5)
!1727 = !DILocation(line: 0, scope: !1726)
!1728 = !DILocation(line: 64, column: 10, scope: !1726)
!1729 = !DILocation(line: 64, scope: !1726)
!1730 = !DILocation(line: 64, column: 23, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !343, line: 64, column: 5)
!1732 = !DILocation(line: 64, column: 5, scope: !1726)
!1733 = !DILocation(line: 65, column: 9, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !343, line: 65, column: 9)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !343, line: 64, column: 40)
!1736 = !DILocation(line: 65, scope: !1734)
!1737 = !DILocalVariable(name: "c", scope: !1734, file: !343, line: 65, type: !45)
!1738 = !DILocation(line: 0, scope: !1734)
!1739 = !DILocation(line: 65, column: 27, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !343, line: 65, column: 9)
!1741 = !DILocation(line: 66, column: 13, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !343, line: 66, column: 13)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !343, line: 65, column: 44)
!1744 = !DILocation(line: 66, scope: !1742)
!1745 = !DILocalVariable(name: "k", scope: !1742, file: !343, line: 66, type: !45)
!1746 = !DILocation(line: 0, scope: !1742)
!1747 = !DILocation(line: 66, column: 31, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !343, line: 66, column: 13)
!1749 = !DILocation(line: 67, column: 70, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1748, file: !343, line: 66, column: 54)
!1751 = !DILocation(line: 67, column: 84, scope: !1750)
!1752 = !DILocation(line: 67, column: 51, scope: !1750)
!1753 = !DILocation(line: 67, column: 96, scope: !1750)
!1754 = !DILocation(line: 67, column: 90, scope: !1750)
!1755 = !DILocation(line: 67, column: 136, scope: !1750)
!1756 = !DILocation(line: 67, column: 150, scope: !1750)
!1757 = !DILocation(line: 67, column: 117, scope: !1750)
!1758 = !DILocation(line: 67, column: 17, scope: !1750)
!1759 = !DILocation(line: 66, column: 48, scope: !1748)
!1760 = !DILocation(line: 66, column: 13, scope: !1748)
!1761 = distinct !{!1761, !1741, !1762, !323}
!1762 = !DILocation(line: 68, column: 13, scope: !1742)
!1763 = !DILocation(line: 65, column: 40, scope: !1740)
!1764 = !DILocation(line: 65, column: 9, scope: !1740)
!1765 = distinct !{!1765, !1733, !1766, !323}
!1766 = !DILocation(line: 69, column: 9, scope: !1734)
!1767 = !DILocation(line: 64, column: 36, scope: !1731)
!1768 = !DILocation(line: 64, column: 5, scope: !1731)
!1769 = distinct !{!1769, !1732, !1770, !323}
!1770 = !DILocation(line: 70, column: 5, scope: !1726)
!1771 = !DILocation(line: 71, column: 1, scope: !1716)
!1772 = distinct !DISubprogram(name: "P1_times_Vt", scope: !343, file: !343, line: 82, type: !389, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1773 = !DILocalVariable(name: "p", arg: 1, scope: !1772, file: !343, line: 82, type: !194)
!1774 = !DILocation(line: 0, scope: !1772)
!1775 = !DILocalVariable(name: "P1", arg: 2, scope: !1772, file: !343, line: 82, type: !346)
!1776 = !DILocalVariable(name: "V", arg: 3, scope: !1772, file: !343, line: 82, type: !49)
!1777 = !DILocalVariable(name: "acc", arg: 4, scope: !1772, file: !343, line: 82, type: !5)
!1778 = !DILocation(line: 86, column: 5, scope: !1772)
!1779 = !DILocation(line: 87, column: 1, scope: !1772)
!1780 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !343, file: !343, line: 32, type: !529, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1781 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1780, file: !343, line: 32, type: !259)
!1782 = !DILocation(line: 0, scope: !1780)
!1783 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1780, file: !343, line: 32, type: !346)
!1784 = !DILocalVariable(name: "mat", arg: 3, scope: !1780, file: !343, line: 32, type: !49)
!1785 = !DILocalVariable(name: "acc", arg: 4, scope: !1780, file: !343, line: 32, type: !5)
!1786 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1780, file: !343, line: 33, type: !259)
!1787 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1780, file: !343, line: 33, type: !259)
!1788 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1780, file: !343, line: 33, type: !259)
!1789 = !DILocalVariable(name: "triangular", arg: 8, scope: !1780, file: !343, line: 33, type: !259)
!1790 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1780, file: !343, line: 34, type: !45)
!1791 = !DILocalVariable(name: "r", scope: !1792, file: !343, line: 35, type: !45)
!1792 = distinct !DILexicalBlock(scope: !1780, file: !343, line: 35, column: 5)
!1793 = !DILocation(line: 0, scope: !1792)
!1794 = !DILocation(line: 35, column: 10, scope: !1792)
!1795 = !DILocation(line: 34, column: 9, scope: !1780)
!1796 = !DILocation(line: 35, scope: !1792)
!1797 = !DILocation(line: 35, column: 23, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1792, file: !343, line: 35, column: 5)
!1799 = !DILocation(line: 35, column: 5, scope: !1792)
!1800 = !DILocation(line: 36, column: 9, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !343, line: 36, column: 9)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !343, line: 35, column: 43)
!1803 = !DILocation(line: 36, scope: !1801)
!1804 = !DILocalVariable(name: "c", scope: !1801, file: !343, line: 36, type: !45)
!1805 = !DILocation(line: 0, scope: !1801)
!1806 = !DILocation(line: 36, column: 40, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1801, file: !343, line: 36, column: 9)
!1808 = !DILocation(line: 37, column: 13, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !343, line: 37, column: 13)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !343, line: 36, column: 60)
!1811 = !DILocation(line: 37, scope: !1809)
!1812 = !DILocalVariable(name: "k", scope: !1809, file: !343, line: 37, type: !45)
!1813 = !DILocation(line: 0, scope: !1809)
!1814 = !DILocation(line: 37, column: 31, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !343, line: 37, column: 13)
!1816 = !DILocation(line: 38, column: 51, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1815, file: !343, line: 37, column: 51)
!1818 = !DILocation(line: 38, column: 94, scope: !1817)
!1819 = !DILocation(line: 38, column: 88, scope: !1817)
!1820 = !DILocation(line: 38, column: 132, scope: !1817)
!1821 = !DILocation(line: 38, column: 118, scope: !1817)
!1822 = !DILocation(line: 38, column: 17, scope: !1817)
!1823 = !DILocation(line: 37, column: 45, scope: !1815)
!1824 = !DILocation(line: 37, column: 13, scope: !1815)
!1825 = distinct !{!1825, !1808, !1826, !323}
!1826 = !DILocation(line: 39, column: 13, scope: !1809)
!1827 = !DILocation(line: 40, column: 33, scope: !1810)
!1828 = !DILocation(line: 36, column: 56, scope: !1807)
!1829 = !DILocation(line: 36, column: 9, scope: !1807)
!1830 = distinct !{!1830, !1800, !1831, !323}
!1831 = !DILocation(line: 41, column: 9, scope: !1801)
!1832 = !DILocation(line: 35, column: 39, scope: !1798)
!1833 = !DILocation(line: 35, column: 5, scope: !1798)
!1834 = distinct !{!1834, !1799, !1835, !323}
!1835 = !DILocation(line: 42, column: 5, scope: !1792)
!1836 = !DILocation(line: 43, column: 1, scope: !1780)
!1837 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !718, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1838 = !DILocalVariable(name: "p", arg: 1, scope: !1837, file: !25, line: 501, type: !194)
!1839 = !DILocation(line: 0, scope: !1837)
!1840 = !DILocalVariable(name: "sm", arg: 2, scope: !1837, file: !25, line: 501, type: !18)
!1841 = !DILocalVariable(name: "smlen", arg: 3, scope: !1837, file: !25, line: 502, type: !720)
!1842 = !DILocalVariable(name: "m", arg: 4, scope: !1837, file: !25, line: 502, type: !49)
!1843 = !DILocalVariable(name: "mlen", arg: 5, scope: !1837, file: !25, line: 503, type: !15)
!1844 = !DILocalVariable(name: "csk", arg: 6, scope: !1837, file: !25, line: 503, type: !49)
!1845 = !DILocalVariable(name: "ret", scope: !1837, file: !25, line: 504, type: !45)
!1846 = !DILocalVariable(name: "param_sig_bytes", scope: !1837, file: !25, line: 505, type: !259)
!1847 = !DILocation(line: 507, column: 16, scope: !1837)
!1848 = !DILocation(line: 507, column: 5, scope: !1837)
!1849 = !DILocation(line: 508, column: 50, scope: !1837)
!1850 = !DILocalVariable(name: "siglen", scope: !1837, file: !25, line: 506, type: !15)
!1851 = !DILocation(line: 508, column: 11, scope: !1837)
!1852 = !DILocation(line: 509, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1837, file: !25, line: 509, column: 9)
!1854 = !DILocation(line: 509, column: 24, scope: !1853)
!1855 = !DILocation(line: 510, column: 23, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !25, line: 509, column: 62)
!1857 = !DILocation(line: 510, column: 30, scope: !1856)
!1858 = !DILocation(line: 510, column: 9, scope: !1856)
!1859 = !DILocation(line: 511, column: 9, scope: !1856)
!1860 = !DILocation(line: 514, column: 14, scope: !1837)
!1861 = !DILocation(line: 514, column: 21, scope: !1837)
!1862 = !DILocation(line: 514, column: 12, scope: !1837)
!1863 = !DILocation(line: 514, column: 5, scope: !1837)
!1864 = !DILabel(scope: !1837, name: "err", file: !25, line: 515)
!1865 = !DILocation(line: 515, column: 1, scope: !1837)
!1866 = !DILocation(line: 516, column: 5, scope: !1837)
!1867 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_open", scope: !25, file: !25, line: 519, type: !718, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1868 = !DILocalVariable(name: "p", arg: 1, scope: !1867, file: !25, line: 519, type: !194)
!1869 = !DILocation(line: 0, scope: !1867)
!1870 = !DILocalVariable(name: "m", arg: 2, scope: !1867, file: !25, line: 519, type: !18)
!1871 = !DILocalVariable(name: "mlen", arg: 3, scope: !1867, file: !25, line: 520, type: !720)
!1872 = !DILocalVariable(name: "sm", arg: 4, scope: !1867, file: !25, line: 520, type: !49)
!1873 = !DILocalVariable(name: "smlen", arg: 5, scope: !1867, file: !25, line: 521, type: !15)
!1874 = !DILocalVariable(name: "pk", arg: 6, scope: !1867, file: !25, line: 521, type: !49)
!1875 = !DILocalVariable(name: "param_sig_bytes", scope: !1867, file: !25, line: 522, type: !259)
!1876 = !DILocation(line: 523, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1867, file: !25, line: 523, column: 9)
!1878 = !DILocation(line: 526, column: 36, scope: !1867)
!1879 = !DILocation(line: 526, column: 61, scope: !1867)
!1880 = !DILocation(line: 526, column: 18, scope: !1867)
!1881 = !DILocalVariable(name: "result", scope: !1867, file: !25, line: 526, type: !45)
!1882 = !DILocation(line: 529, column: 16, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1867, file: !25, line: 529, column: 9)
!1884 = !DILocation(line: 530, column: 23, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1883, file: !25, line: 529, column: 28)
!1886 = !DILocation(line: 530, column: 15, scope: !1885)
!1887 = !DILocation(line: 531, column: 23, scope: !1885)
!1888 = !DILocation(line: 531, column: 9, scope: !1885)
!1889 = !DILocation(line: 532, column: 5, scope: !1885)
!1890 = !DILocation(line: 535, column: 1, scope: !1867)
!1891 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1892, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!45, !194, !49, !15, !49, !49}
!1894 = !DILocalVariable(name: "p", arg: 1, scope: !1891, file: !25, line: 616, type: !194)
!1895 = !DILocation(line: 0, scope: !1891)
!1896 = !DILocalVariable(name: "m", arg: 2, scope: !1891, file: !25, line: 616, type: !49)
!1897 = !DILocalVariable(name: "mlen", arg: 3, scope: !1891, file: !25, line: 617, type: !15)
!1898 = !DILocalVariable(name: "sig", arg: 4, scope: !1891, file: !25, line: 617, type: !49)
!1899 = !DILocalVariable(name: "cpk", arg: 5, scope: !1891, file: !25, line: 618, type: !49)
!1900 = !DILocalVariable(name: "tEnc", scope: !1891, file: !25, line: 619, type: !158)
!1901 = !DILocation(line: 619, column: 19, scope: !1891)
!1902 = !DILocalVariable(name: "t", scope: !1891, file: !25, line: 620, type: !732)
!1903 = !DILocation(line: 620, column: 19, scope: !1891)
!1904 = !DILocalVariable(name: "y", scope: !1891, file: !25, line: 621, type: !1905)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !1906)
!1906 = !{!1907}
!1907 = !DISubrange(count: 128)
!1908 = !DILocation(line: 621, column: 19, scope: !1891)
!1909 = !DILocalVariable(name: "s", scope: !1891, file: !25, line: 622, type: !757)
!1910 = !DILocation(line: 622, column: 19, scope: !1891)
!1911 = !DILocalVariable(name: "pk", scope: !1891, file: !25, line: 623, type: !143)
!1912 = !DILocation(line: 623, column: 14, scope: !1891)
!1913 = !DILocalVariable(name: "tmp", scope: !1891, file: !25, line: 624, type: !1914)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1915)
!1915 = !{!1916}
!1916 = !DISubrange(count: 56)
!1917 = !DILocation(line: 624, column: 19, scope: !1891)
!1918 = !DILocalVariable(name: "param_m", scope: !1891, file: !25, line: 626, type: !259)
!1919 = !DILocalVariable(name: "param_n", scope: !1891, file: !25, line: 627, type: !259)
!1920 = !DILocalVariable(name: "param_k", scope: !1891, file: !25, line: 628, type: !259)
!1921 = !DILocalVariable(name: "param_m_bytes", scope: !1891, file: !25, line: 629, type: !259)
!1922 = !DILocalVariable(name: "param_sig_bytes", scope: !1891, file: !25, line: 630, type: !259)
!1923 = !DILocalVariable(name: "param_digest_bytes", scope: !1891, file: !25, line: 631, type: !259)
!1924 = !DILocalVariable(name: "param_salt_bytes", scope: !1891, file: !25, line: 632, type: !259)
!1925 = !DILocation(line: 634, column: 15, scope: !1891)
!1926 = !DILocalVariable(name: "ret", scope: !1891, file: !25, line: 634, type: !45)
!1927 = !DILocalVariable(name: "P1", scope: !1891, file: !25, line: 639, type: !5)
!1928 = !DILocation(line: 640, column: 23, scope: !1891)
!1929 = !DILocalVariable(name: "P2", scope: !1891, file: !25, line: 640, type: !5)
!1930 = !DILocation(line: 641, column: 23, scope: !1891)
!1931 = !DILocalVariable(name: "P3", scope: !1891, file: !25, line: 641, type: !5)
!1932 = !DILocation(line: 656, column: 5, scope: !1891)
!1933 = !DILocation(line: 659, column: 16, scope: !1891)
!1934 = !DILocation(line: 659, column: 60, scope: !1891)
!1935 = !DILocation(line: 659, column: 5, scope: !1891)
!1936 = !DILocation(line: 661, column: 5, scope: !1891)
!1937 = !DILocation(line: 662, column: 5, scope: !1891)
!1938 = !DILocation(line: 665, column: 5, scope: !1891)
!1939 = !DILocation(line: 667, column: 5, scope: !1891)
!1940 = !DILocation(line: 669, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1891, file: !25, line: 669, column: 9)
!1942 = !DILocation(line: 669, column: 31, scope: !1941)
!1943 = !DILocation(line: 673, column: 1, scope: !1891)
!1944 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !621, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1945 = !DILocalVariable(name: "p", arg: 1, scope: !1944, file: !25, line: 607, type: !194)
!1946 = !DILocation(line: 0, scope: !1944)
!1947 = !DILocalVariable(name: "cpk", arg: 2, scope: !1944, file: !25, line: 607, type: !49)
!1948 = !DILocalVariable(name: "pk", arg: 3, scope: !1944, file: !25, line: 608, type: !5)
!1949 = !DILocation(line: 609, column: 5, scope: !1944)
!1950 = !DILocation(line: 611, column: 23, scope: !1944)
!1951 = !DILocation(line: 611, column: 72, scope: !1944)
!1952 = !DILocation(line: 611, column: 5, scope: !1944)
!1953 = !DILocation(line: 613, column: 5, scope: !1944)
!1954 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1955, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !194, !49, !346, !346, !346, !18}
!1957 = !DILocalVariable(name: "p", arg: 1, scope: !1954, file: !25, line: 288, type: !194)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocalVariable(name: "s", arg: 2, scope: !1954, file: !25, line: 288, type: !49)
!1960 = !DILocalVariable(name: "P1", arg: 3, scope: !1954, file: !25, line: 288, type: !346)
!1961 = !DILocalVariable(name: "P2", arg: 4, scope: !1954, file: !25, line: 288, type: !346)
!1962 = !DILocalVariable(name: "P3", arg: 5, scope: !1954, file: !25, line: 288, type: !346)
!1963 = !DILocalVariable(name: "eval", arg: 6, scope: !1954, file: !25, line: 288, type: !18)
!1964 = !DILocalVariable(name: "SPS", scope: !1954, file: !25, line: 289, type: !1965)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, elements: !733)
!1966 = !DILocation(line: 289, column: 14, scope: !1954)
!1967 = !DILocation(line: 291, column: 5, scope: !1954)
!1968 = !DILocalVariable(name: "zero", scope: !1954, file: !25, line: 292, type: !732)
!1969 = !DILocation(line: 292, column: 19, scope: !1954)
!1970 = !DILocation(line: 293, column: 5, scope: !1954)
!1971 = !DILocation(line: 294, column: 1, scope: !1954)
!1972 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !343, file: !343, line: 277, type: !1973, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !194, !346, !346, !346, !49, !5}
!1975 = !DILocalVariable(name: "p", arg: 1, scope: !1972, file: !343, line: 277, type: !194)
!1976 = !DILocation(line: 0, scope: !1972)
!1977 = !DILocalVariable(name: "P1", arg: 2, scope: !1972, file: !343, line: 277, type: !346)
!1978 = !DILocalVariable(name: "P2", arg: 3, scope: !1972, file: !343, line: 277, type: !346)
!1979 = !DILocalVariable(name: "P3", arg: 4, scope: !1972, file: !343, line: 277, type: !346)
!1980 = !DILocalVariable(name: "s", arg: 5, scope: !1972, file: !343, line: 277, type: !49)
!1981 = !DILocalVariable(name: "SPS", arg: 6, scope: !1972, file: !343, line: 278, type: !5)
!1982 = !DILocalVariable(name: "PS", scope: !1972, file: !343, line: 286, type: !1983)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !1984)
!1984 = !{!1985}
!1985 = !DISubrange(count: 1296)
!1986 = !DILocation(line: 286, column: 14, scope: !1972)
!1987 = !DILocation(line: 287, column: 5, scope: !1972)
!1988 = !DILocation(line: 290, column: 5, scope: !1972)
!1989 = !DILocation(line: 292, column: 1, scope: !1972)
!1990 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !343, file: !343, line: 151, type: !1991, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !346, !346, !346, !49, !259, !259, !259, !259, !5}
!1993 = !DILocalVariable(name: "P1", arg: 1, scope: !1990, file: !343, line: 151, type: !346)
!1994 = !DILocation(line: 0, scope: !1990)
!1995 = !DILocalVariable(name: "P2", arg: 2, scope: !1990, file: !343, line: 151, type: !346)
!1996 = !DILocalVariable(name: "P3", arg: 3, scope: !1990, file: !343, line: 151, type: !346)
!1997 = !DILocalVariable(name: "S", arg: 4, scope: !1990, file: !343, line: 151, type: !49)
!1998 = !DILocalVariable(name: "m", arg: 5, scope: !1990, file: !343, line: 152, type: !259)
!1999 = !DILocalVariable(name: "v", arg: 6, scope: !1990, file: !343, line: 152, type: !259)
!2000 = !DILocalVariable(name: "o", arg: 7, scope: !1990, file: !343, line: 152, type: !259)
!2001 = !DILocalVariable(name: "k", arg: 8, scope: !1990, file: !343, line: 152, type: !259)
!2002 = !DILocalVariable(name: "PS", arg: 9, scope: !1990, file: !343, line: 152, type: !5)
!2003 = !DILocalVariable(name: "n", scope: !1990, file: !343, line: 154, type: !259)
!2004 = !DILocalVariable(name: "m_vec_limbs", scope: !1990, file: !343, line: 155, type: !259)
!2005 = !DILocalVariable(name: "accumulator", scope: !1990, file: !343, line: 157, type: !2006)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2007)
!2007 = !{!2008}
!2008 = !DISubrange(count: 20736)
!2009 = !DILocation(line: 157, column: 14, scope: !1990)
!2010 = !DILocalVariable(name: "P1_used", scope: !1990, file: !343, line: 158, type: !45)
!2011 = !DILocalVariable(name: "row", scope: !2012, file: !343, line: 159, type: !45)
!2012 = distinct !DILexicalBlock(scope: !1990, file: !343, line: 159, column: 5)
!2013 = !DILocation(line: 0, scope: !2012)
!2014 = !DILocation(line: 159, column: 10, scope: !2012)
!2015 = !DILocation(line: 158, column: 9, scope: !1990)
!2016 = !DILocation(line: 159, scope: !2012)
!2017 = !DILocation(line: 159, column: 27, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2012, file: !343, line: 159, column: 5)
!2019 = !DILocation(line: 159, column: 5, scope: !2012)
!2020 = !DILocation(line: 160, column: 9, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !343, line: 160, column: 9)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !343, line: 159, column: 39)
!2023 = !DILocation(line: 175, column: 5, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1990, file: !343, line: 175, column: 5)
!2025 = !DILocation(line: 160, scope: !2021)
!2026 = !DILocalVariable(name: "j", scope: !2021, file: !343, line: 160, type: !45)
!2027 = !DILocation(line: 0, scope: !2021)
!2028 = !DILocation(line: 160, column: 29, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2021, file: !343, line: 160, column: 9)
!2030 = !DILocation(line: 167, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !343, line: 167, column: 9)
!2032 = !DILocation(line: 161, column: 13, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !343, line: 161, column: 13)
!2034 = distinct !DILexicalBlock(scope: !2029, file: !343, line: 160, column: 39)
!2035 = !DILocation(line: 161, scope: !2033)
!2036 = !DILocalVariable(name: "col", scope: !2033, file: !343, line: 161, type: !45)
!2037 = !DILocation(line: 0, scope: !2033)
!2038 = !DILocation(line: 161, column: 35, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2033, file: !343, line: 161, column: 13)
!2040 = !DILocation(line: 162, column: 43, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2039, file: !343, line: 161, column: 47)
!2042 = !DILocation(line: 162, column: 102, scope: !2041)
!2043 = !DILocation(line: 162, column: 115, scope: !2041)
!2044 = !DILocation(line: 162, column: 109, scope: !2041)
!2045 = !DILocation(line: 162, column: 107, scope: !2041)
!2046 = !DILocation(line: 162, column: 82, scope: !2041)
!2047 = !DILocation(line: 162, column: 17, scope: !2041)
!2048 = !DILocation(line: 161, column: 43, scope: !2039)
!2049 = !DILocation(line: 161, column: 13, scope: !2039)
!2050 = distinct !{!2050, !2032, !2051, !323}
!2051 = !DILocation(line: 163, column: 13, scope: !2033)
!2052 = !DILocation(line: 164, column: 21, scope: !2034)
!2053 = !DILocation(line: 160, column: 35, scope: !2029)
!2054 = !DILocation(line: 160, column: 9, scope: !2029)
!2055 = distinct !{!2055, !2020, !2056, !323}
!2056 = !DILocation(line: 165, column: 9, scope: !2021)
!2057 = !DILocation(line: 167, scope: !2031)
!2058 = !DILocalVariable(name: "j", scope: !2031, file: !343, line: 167, type: !45)
!2059 = !DILocation(line: 0, scope: !2031)
!2060 = !DILocation(line: 167, column: 27, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2031, file: !343, line: 167, column: 9)
!2062 = !DILocation(line: 168, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !343, line: 168, column: 13)
!2064 = distinct !DILexicalBlock(scope: !2061, file: !343, line: 167, column: 37)
!2065 = !DILocation(line: 168, scope: !2063)
!2066 = !DILocalVariable(name: "col", scope: !2063, file: !343, line: 168, type: !45)
!2067 = !DILocation(line: 0, scope: !2063)
!2068 = !DILocation(line: 168, column: 35, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2063, file: !343, line: 168, column: 13)
!2070 = !DILocation(line: 169, column: 50, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !343, line: 168, column: 47)
!2072 = !DILocation(line: 169, column: 54, scope: !2071)
!2073 = !DILocation(line: 169, column: 43, scope: !2071)
!2074 = !DILocation(line: 169, column: 104, scope: !2071)
!2075 = !DILocation(line: 169, column: 118, scope: !2071)
!2076 = !DILocation(line: 169, column: 111, scope: !2071)
!2077 = !DILocation(line: 169, column: 109, scope: !2071)
!2078 = !DILocation(line: 169, column: 84, scope: !2071)
!2079 = !DILocation(line: 169, column: 17, scope: !2071)
!2080 = !DILocation(line: 168, column: 43, scope: !2069)
!2081 = !DILocation(line: 168, column: 13, scope: !2069)
!2082 = distinct !{!2082, !2062, !2083, !323}
!2083 = !DILocation(line: 170, column: 13, scope: !2063)
!2084 = !DILocation(line: 167, column: 33, scope: !2061)
!2085 = !DILocation(line: 167, column: 9, scope: !2061)
!2086 = distinct !{!2086, !2030, !2087, !323}
!2087 = !DILocation(line: 171, column: 9, scope: !2031)
!2088 = !DILocation(line: 159, column: 35, scope: !2018)
!2089 = !DILocation(line: 159, column: 5, scope: !2018)
!2090 = distinct !{!2090, !2019, !2091, !323}
!2091 = !DILocation(line: 172, column: 5, scope: !2012)
!2092 = !DILocation(line: 174, column: 9, scope: !1990)
!2093 = !DILocation(line: 175, scope: !2024)
!2094 = !DILocalVariable(name: "row", scope: !2024, file: !343, line: 175, type: !45)
!2095 = !DILocation(line: 0, scope: !2024)
!2096 = !DILocalVariable(name: "P3_used", scope: !1990, file: !343, line: 174, type: !45)
!2097 = !DILocation(line: 175, column: 27, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2024, file: !343, line: 175, column: 5)
!2099 = !DILocation(line: 176, column: 9, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !343, line: 176, column: 9)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !343, line: 175, column: 39)
!2102 = !DILocation(line: 186, column: 5, scope: !1990)
!2103 = !DILocation(line: 176, scope: !2100)
!2104 = !DILocalVariable(name: "j", scope: !2100, file: !343, line: 176, type: !45)
!2105 = !DILocation(line: 0, scope: !2100)
!2106 = !DILocation(line: 176, column: 29, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2100, file: !343, line: 176, column: 9)
!2108 = !DILocation(line: 177, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !343, line: 177, column: 13)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !343, line: 176, column: 39)
!2111 = !DILocation(line: 177, scope: !2109)
!2112 = !DILocalVariable(name: "col", scope: !2109, file: !343, line: 177, type: !45)
!2113 = !DILocation(line: 0, scope: !2109)
!2114 = !DILocation(line: 177, column: 35, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !343, line: 177, column: 13)
!2116 = !DILocation(line: 178, column: 43, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2115, file: !343, line: 177, column: 47)
!2118 = !DILocation(line: 178, column: 100, scope: !2117)
!2119 = !DILocation(line: 178, column: 113, scope: !2117)
!2120 = !DILocation(line: 178, column: 107, scope: !2117)
!2121 = !DILocation(line: 178, column: 105, scope: !2117)
!2122 = !DILocation(line: 178, column: 80, scope: !2117)
!2123 = !DILocation(line: 178, column: 17, scope: !2117)
!2124 = !DILocation(line: 177, column: 43, scope: !2115)
!2125 = !DILocation(line: 177, column: 13, scope: !2115)
!2126 = distinct !{!2126, !2108, !2127, !323}
!2127 = !DILocation(line: 179, column: 13, scope: !2109)
!2128 = !DILocation(line: 180, column: 21, scope: !2110)
!2129 = !DILocation(line: 176, column: 35, scope: !2107)
!2130 = !DILocation(line: 176, column: 9, scope: !2107)
!2131 = distinct !{!2131, !2099, !2132, !323}
!2132 = !DILocation(line: 181, column: 9, scope: !2100)
!2133 = !DILocation(line: 175, column: 35, scope: !2098)
!2134 = !DILocation(line: 175, column: 5, scope: !2098)
!2135 = distinct !{!2135, !2023, !2136, !323}
!2136 = !DILocation(line: 182, column: 5, scope: !2024)
!2137 = !DILocalVariable(name: "i", scope: !1990, file: !343, line: 185, type: !45)
!2138 = !DILocation(line: 186, column: 14, scope: !1990)
!2139 = !DILocation(line: 187, column: 54, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1990, file: !343, line: 186, column: 23)
!2141 = !DILocation(line: 187, column: 81, scope: !2140)
!2142 = !DILocation(line: 187, column: 9, scope: !2140)
!2143 = !DILocation(line: 188, column: 10, scope: !2140)
!2144 = distinct !{!2144, !2102, !2145, !323}
!2145 = !DILocation(line: 189, column: 5, scope: !1990)
!2146 = !DILocation(line: 191, column: 1, scope: !1990)
!2147 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !343, file: !343, line: 195, type: !2148, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !346, !49, !45, !45, !45, !5}
!2150 = !DILocalVariable(name: "PS", arg: 1, scope: !2147, file: !343, line: 195, type: !346)
!2151 = !DILocation(line: 0, scope: !2147)
!2152 = !DILocalVariable(name: "S", arg: 2, scope: !2147, file: !343, line: 195, type: !49)
!2153 = !DILocalVariable(name: "m", arg: 3, scope: !2147, file: !343, line: 195, type: !45)
!2154 = !DILocalVariable(name: "k", arg: 4, scope: !2147, file: !343, line: 195, type: !45)
!2155 = !DILocalVariable(name: "n", arg: 5, scope: !2147, file: !343, line: 195, type: !45)
!2156 = !DILocalVariable(name: "SPS", arg: 6, scope: !2147, file: !343, line: 195, type: !5)
!2157 = !DILocalVariable(name: "accumulator", scope: !2147, file: !343, line: 196, type: !923)
!2158 = !DILocation(line: 196, column: 14, scope: !2147)
!2159 = !DILocalVariable(name: "m_vec_limbs", scope: !2147, file: !343, line: 197, type: !259)
!2160 = !DILocalVariable(name: "row", scope: !2161, file: !343, line: 198, type: !45)
!2161 = distinct !DILexicalBlock(scope: !2147, file: !343, line: 198, column: 5)
!2162 = !DILocation(line: 0, scope: !2161)
!2163 = !DILocation(line: 198, column: 10, scope: !2161)
!2164 = !DILocation(line: 198, scope: !2161)
!2165 = !DILocation(line: 198, column: 27, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2161, file: !343, line: 198, column: 5)
!2167 = !DILocation(line: 198, column: 5, scope: !2161)
!2168 = !DILocation(line: 199, column: 9, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !343, line: 199, column: 9)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !343, line: 198, column: 39)
!2171 = !DILocation(line: 208, column: 5, scope: !2147)
!2172 = !DILocation(line: 199, scope: !2169)
!2173 = !DILocalVariable(name: "j", scope: !2169, file: !343, line: 199, type: !45)
!2174 = !DILocation(line: 0, scope: !2169)
!2175 = !DILocation(line: 199, column: 27, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2169, file: !343, line: 199, column: 9)
!2177 = !DILocation(line: 200, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !343, line: 200, column: 13)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !343, line: 199, column: 37)
!2180 = !DILocation(line: 200, scope: !2178)
!2181 = !DILocalVariable(name: "col", scope: !2178, file: !343, line: 200, type: !45)
!2182 = !DILocation(line: 0, scope: !2178)
!2183 = !DILocation(line: 200, column: 35, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2178, file: !343, line: 200, column: 13)
!2185 = !DILocation(line: 201, column: 63, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2184, file: !343, line: 200, column: 50)
!2187 = !DILocation(line: 201, column: 47, scope: !2186)
!2188 = !DILocation(line: 201, column: 110, scope: !2186)
!2189 = !DILocation(line: 201, column: 123, scope: !2186)
!2190 = !DILocation(line: 201, column: 117, scope: !2186)
!2191 = !DILocation(line: 201, column: 115, scope: !2186)
!2192 = !DILocation(line: 201, column: 90, scope: !2186)
!2193 = !DILocation(line: 201, column: 21, scope: !2186)
!2194 = !DILocation(line: 200, column: 44, scope: !2184)
!2195 = !DILocation(line: 200, column: 13, scope: !2184)
!2196 = distinct !{!2196, !2177, !2197, !323}
!2197 = !DILocation(line: 202, column: 13, scope: !2178)
!2198 = !DILocation(line: 199, column: 33, scope: !2176)
!2199 = !DILocation(line: 199, column: 9, scope: !2176)
!2200 = distinct !{!2200, !2168, !2201, !323}
!2201 = !DILocation(line: 203, column: 9, scope: !2169)
!2202 = !DILocation(line: 198, column: 35, scope: !2166)
!2203 = !DILocation(line: 198, column: 5, scope: !2166)
!2204 = distinct !{!2204, !2167, !2205, !323}
!2205 = !DILocation(line: 204, column: 5, scope: !2161)
!2206 = !DILocalVariable(name: "i", scope: !2147, file: !343, line: 207, type: !45)
!2207 = !DILocation(line: 208, column: 14, scope: !2147)
!2208 = !DILocation(line: 209, column: 54, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2147, file: !343, line: 208, column: 21)
!2210 = !DILocation(line: 209, column: 82, scope: !2209)
!2211 = !DILocation(line: 209, column: 9, scope: !2209)
!2212 = !DILocation(line: 210, column: 10, scope: !2209)
!2213 = distinct !{!2213, !2171, !2214, !323}
!2214 = !DILocation(line: 211, column: 5, scope: !2147)
!2215 = !DILocation(line: 212, column: 1, scope: !2147)
!2216 = distinct !DISubprogram(name: "m_vec_add", scope: !457, file: !457, line: 22, type: !2217, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !45, !346, !5}
!2219 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2216, file: !457, line: 22, type: !45)
!2220 = !DILocation(line: 0, scope: !2216)
!2221 = !DILocalVariable(name: "in", arg: 2, scope: !2216, file: !457, line: 22, type: !346)
!2222 = !DILocalVariable(name: "acc", arg: 3, scope: !2216, file: !457, line: 22, type: !5)
!2223 = !DILocalVariable(name: "i", scope: !2224, file: !457, line: 24, type: !15)
!2224 = distinct !DILexicalBlock(scope: !2216, file: !457, line: 24, column: 5)
!2225 = !DILocation(line: 0, scope: !2224)
!2226 = !DILocation(line: 24, column: 10, scope: !2224)
!2227 = !DILocation(line: 24, scope: !2224)
!2228 = !DILocation(line: 24, column: 26, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2224, file: !457, line: 24, column: 5)
!2230 = !DILocation(line: 24, column: 5, scope: !2224)
!2231 = !DILocation(line: 26, column: 19, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !457, line: 25, column: 5)
!2233 = !DILocation(line: 26, column: 9, scope: !2232)
!2234 = !DILocation(line: 26, column: 16, scope: !2232)
!2235 = !DILocation(line: 24, column: 46, scope: !2229)
!2236 = !DILocation(line: 24, column: 5, scope: !2229)
!2237 = distinct !{!2237, !2230, !2238, !323}
!2238 = !DILocation(line: 27, column: 5, scope: !2224)
!2239 = !DILocation(line: 28, column: 1, scope: !2216)
!2240 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !457, file: !457, line: 66, type: !2241, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !45, !5, !5}
!2243 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2240, file: !457, line: 66, type: !45)
!2244 = !DILocation(line: 0, scope: !2240)
!2245 = !DILocalVariable(name: "bins", arg: 2, scope: !2240, file: !457, line: 66, type: !5)
!2246 = !DILocalVariable(name: "out", arg: 3, scope: !2240, file: !457, line: 66, type: !5)
!2247 = !DILocation(line: 67, column: 44, scope: !2240)
!2248 = !DILocation(line: 67, column: 73, scope: !2240)
!2249 = !DILocation(line: 67, column: 5, scope: !2240)
!2250 = !DILocation(line: 68, column: 40, scope: !2240)
!2251 = !DILocation(line: 68, column: 69, scope: !2240)
!2252 = !DILocation(line: 68, column: 5, scope: !2240)
!2253 = !DILocation(line: 69, column: 44, scope: !2240)
!2254 = !DILocation(line: 69, column: 74, scope: !2240)
!2255 = !DILocation(line: 69, column: 5, scope: !2240)
!2256 = !DILocation(line: 70, column: 40, scope: !2240)
!2257 = !DILocation(line: 70, column: 69, scope: !2240)
!2258 = !DILocation(line: 70, column: 5, scope: !2240)
!2259 = !DILocation(line: 71, column: 44, scope: !2240)
!2260 = !DILocation(line: 71, column: 73, scope: !2240)
!2261 = !DILocation(line: 71, column: 5, scope: !2240)
!2262 = !DILocation(line: 72, column: 40, scope: !2240)
!2263 = !DILocation(line: 72, column: 69, scope: !2240)
!2264 = !DILocation(line: 72, column: 5, scope: !2240)
!2265 = !DILocation(line: 73, column: 44, scope: !2240)
!2266 = !DILocation(line: 73, column: 74, scope: !2240)
!2267 = !DILocation(line: 73, column: 5, scope: !2240)
!2268 = !DILocation(line: 74, column: 40, scope: !2240)
!2269 = !DILocation(line: 74, column: 69, scope: !2240)
!2270 = !DILocation(line: 74, column: 5, scope: !2240)
!2271 = !DILocation(line: 75, column: 44, scope: !2240)
!2272 = !DILocation(line: 75, column: 74, scope: !2240)
!2273 = !DILocation(line: 75, column: 5, scope: !2240)
!2274 = !DILocation(line: 76, column: 40, scope: !2240)
!2275 = !DILocation(line: 76, column: 69, scope: !2240)
!2276 = !DILocation(line: 76, column: 5, scope: !2240)
!2277 = !DILocation(line: 77, column: 44, scope: !2240)
!2278 = !DILocation(line: 77, column: 74, scope: !2240)
!2279 = !DILocation(line: 77, column: 5, scope: !2240)
!2280 = !DILocation(line: 78, column: 40, scope: !2240)
!2281 = !DILocation(line: 78, column: 69, scope: !2240)
!2282 = !DILocation(line: 78, column: 5, scope: !2240)
!2283 = !DILocation(line: 79, column: 44, scope: !2240)
!2284 = !DILocation(line: 79, column: 74, scope: !2240)
!2285 = !DILocation(line: 79, column: 5, scope: !2240)
!2286 = !DILocation(line: 80, column: 40, scope: !2240)
!2287 = !DILocation(line: 80, column: 69, scope: !2240)
!2288 = !DILocation(line: 80, column: 5, scope: !2240)
!2289 = !DILocation(line: 81, column: 35, scope: !2240)
!2290 = !DILocation(line: 81, column: 5, scope: !2240)
!2291 = !DILocation(line: 82, column: 1, scope: !2240)
!2292 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !457, file: !457, line: 56, type: !2217, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2293 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2292, file: !457, line: 56, type: !45)
!2294 = !DILocation(line: 0, scope: !2292)
!2295 = !DILocalVariable(name: "in", arg: 2, scope: !2292, file: !457, line: 56, type: !346)
!2296 = !DILocalVariable(name: "acc", arg: 3, scope: !2292, file: !457, line: 56, type: !5)
!2297 = !DILocalVariable(name: "mask_lsb", scope: !2292, file: !457, line: 58, type: !6)
!2298 = !DILocalVariable(name: "i", scope: !2299, file: !457, line: 59, type: !45)
!2299 = distinct !DILexicalBlock(scope: !2292, file: !457, line: 59, column: 5)
!2300 = !DILocation(line: 0, scope: !2299)
!2301 = !DILocation(line: 59, column: 9, scope: !2299)
!2302 = !DILocation(line: 59, scope: !2299)
!2303 = !DILocation(line: 59, column: 20, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !457, line: 59, column: 5)
!2305 = !DILocation(line: 59, column: 5, scope: !2299)
!2306 = !DILocation(line: 60, column: 22, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !457, line: 59, column: 43)
!2308 = !DILocation(line: 60, column: 28, scope: !2307)
!2309 = !DILocalVariable(name: "t", scope: !2307, file: !457, line: 60, type: !6)
!2310 = !DILocation(line: 0, scope: !2307)
!2311 = !DILocation(line: 61, column: 32, scope: !2307)
!2312 = !DILocation(line: 61, column: 43, scope: !2307)
!2313 = !DILocation(line: 61, column: 38, scope: !2307)
!2314 = !DILocation(line: 61, column: 9, scope: !2307)
!2315 = !DILocation(line: 61, column: 16, scope: !2307)
!2316 = !DILocation(line: 59, column: 40, scope: !2304)
!2317 = !DILocation(line: 59, column: 5, scope: !2304)
!2318 = distinct !{!2318, !2305, !2319, !323}
!2319 = !DILocation(line: 62, column: 5, scope: !2299)
!2320 = !DILocation(line: 63, column: 1, scope: !2292)
!2321 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !457, file: !457, line: 46, type: !2217, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2322 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2321, file: !457, line: 46, type: !45)
!2323 = !DILocation(line: 0, scope: !2321)
!2324 = !DILocalVariable(name: "in", arg: 2, scope: !2321, file: !457, line: 46, type: !346)
!2325 = !DILocalVariable(name: "acc", arg: 3, scope: !2321, file: !457, line: 46, type: !5)
!2326 = !DILocalVariable(name: "mask_msb", scope: !2321, file: !457, line: 48, type: !6)
!2327 = !DILocalVariable(name: "i", scope: !2328, file: !457, line: 49, type: !45)
!2328 = distinct !DILexicalBlock(scope: !2321, file: !457, line: 49, column: 5)
!2329 = !DILocation(line: 0, scope: !2328)
!2330 = !DILocation(line: 49, column: 9, scope: !2328)
!2331 = !DILocation(line: 49, scope: !2328)
!2332 = !DILocation(line: 49, column: 20, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2328, file: !457, line: 49, column: 5)
!2334 = !DILocation(line: 49, column: 5, scope: !2328)
!2335 = !DILocation(line: 50, column: 22, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !457, line: 49, column: 43)
!2337 = !DILocalVariable(name: "t", scope: !2336, file: !457, line: 50, type: !6)
!2338 = !DILocation(line: 0, scope: !2336)
!2339 = !DILocation(line: 51, column: 32, scope: !2336)
!2340 = !DILocation(line: 51, column: 44, scope: !2336)
!2341 = !DILocation(line: 51, column: 50, scope: !2336)
!2342 = !DILocation(line: 51, column: 38, scope: !2336)
!2343 = !DILocation(line: 51, column: 9, scope: !2336)
!2344 = !DILocation(line: 51, column: 16, scope: !2336)
!2345 = !DILocation(line: 49, column: 40, scope: !2333)
!2346 = !DILocation(line: 49, column: 5, scope: !2333)
!2347 = distinct !{!2347, !2334, !2348, !323}
!2348 = !DILocation(line: 52, column: 5, scope: !2328)
!2349 = !DILocation(line: 53, column: 1, scope: !2321)
!2350 = distinct !DISubprogram(name: "m_vec_copy", scope: !457, file: !457, line: 13, type: !2217, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2351 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2350, file: !457, line: 13, type: !45)
!2352 = !DILocation(line: 0, scope: !2350)
!2353 = !DILocalVariable(name: "in", arg: 2, scope: !2350, file: !457, line: 13, type: !346)
!2354 = !DILocalVariable(name: "out", arg: 3, scope: !2350, file: !457, line: 13, type: !5)
!2355 = !DILocalVariable(name: "i", scope: !2356, file: !457, line: 15, type: !15)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !457, line: 15, column: 5)
!2357 = !DILocation(line: 0, scope: !2356)
!2358 = !DILocation(line: 15, column: 10, scope: !2356)
!2359 = !DILocation(line: 15, scope: !2356)
!2360 = !DILocation(line: 15, column: 26, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !457, line: 15, column: 5)
!2362 = !DILocation(line: 15, column: 5, scope: !2356)
!2363 = !DILocation(line: 17, column: 18, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !457, line: 16, column: 5)
!2365 = !DILocation(line: 17, column: 9, scope: !2364)
!2366 = !DILocation(line: 17, column: 16, scope: !2364)
!2367 = !DILocation(line: 15, column: 46, scope: !2361)
!2368 = !DILocation(line: 15, column: 5, scope: !2361)
!2369 = distinct !{!2369, !2362, !2370, !323}
!2370 = !DILocation(line: 18, column: 5, scope: !2356)
!2371 = !DILocation(line: 19, column: 1, scope: !2350)
!2372 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_m_upper", scope: !58, file: !58, line: 14, type: !2373, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2375, !346, !5, !45}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2378)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2378, file: !36, line: 266, baseType: !45, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2378, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2378, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2378, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2378, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2378, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2378, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2378, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2378, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2378, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2378, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2378, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2378, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2378, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2378, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2378, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2378, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2378, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2378, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2378, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2378, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2378, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2378, file: !36, line: 288, baseType: !128, size: 32, offset: 704)
!2403 = !DILocalVariable(name: "p", arg: 1, scope: !2372, file: !58, line: 14, type: !2375)
!2404 = !DILocation(line: 0, scope: !2372)
!2405 = !DILocalVariable(name: "in", arg: 2, scope: !2372, file: !58, line: 14, type: !346)
!2406 = !DILocalVariable(name: "out", arg: 3, scope: !2372, file: !58, line: 14, type: !5)
!2407 = !DILocalVariable(name: "size", arg: 4, scope: !2372, file: !58, line: 14, type: !45)
!2408 = !DILocalVariable(name: "m_vec_limbs", scope: !2372, file: !58, line: 19, type: !259)
!2409 = !DILocalVariable(name: "m_vecs_stored", scope: !2372, file: !58, line: 20, type: !45)
!2410 = !DILocalVariable(name: "r", scope: !2411, file: !58, line: 21, type: !45)
!2411 = distinct !DILexicalBlock(scope: !2372, file: !58, line: 21, column: 5)
!2412 = !DILocation(line: 0, scope: !2411)
!2413 = !DILocation(line: 21, column: 10, scope: !2411)
!2414 = !DILocation(line: 20, column: 9, scope: !2372)
!2415 = !DILocation(line: 21, scope: !2411)
!2416 = !DILocation(line: 21, column: 23, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2411, file: !58, line: 21, column: 5)
!2418 = !DILocation(line: 21, column: 5, scope: !2411)
!2419 = !DILocation(line: 22, column: 9, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !58, line: 22, column: 9)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !58, line: 21, column: 36)
!2422 = !DILocation(line: 22, scope: !2420)
!2423 = !DILocalVariable(name: "c", scope: !2420, file: !58, line: 22, type: !45)
!2424 = !DILocation(line: 0, scope: !2420)
!2425 = !DILocation(line: 22, column: 27, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2420, file: !58, line: 22, column: 9)
!2427 = !DILocation(line: 23, column: 59, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2426, file: !58, line: 22, column: 40)
!2429 = !DILocation(line: 23, column: 66, scope: !2428)
!2430 = !DILocation(line: 23, column: 40, scope: !2428)
!2431 = !DILocation(line: 23, column: 76, scope: !2428)
!2432 = !DILocation(line: 23, column: 13, scope: !2428)
!2433 = !DILocation(line: 24, column: 19, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2428, file: !58, line: 24, column: 17)
!2435 = !DILocation(line: 25, column: 62, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2434, file: !58, line: 24, column: 25)
!2437 = !DILocation(line: 25, column: 69, scope: !2436)
!2438 = !DILocation(line: 25, column: 43, scope: !2436)
!2439 = !DILocation(line: 25, column: 79, scope: !2436)
!2440 = !DILocation(line: 25, column: 17, scope: !2436)
!2441 = !DILocation(line: 26, column: 13, scope: !2436)
!2442 = !DILocation(line: 27, column: 27, scope: !2428)
!2443 = !DILocation(line: 22, column: 36, scope: !2426)
!2444 = !DILocation(line: 22, column: 9, scope: !2426)
!2445 = distinct !{!2445, !2419, !2446, !323}
!2446 = !DILocation(line: 28, column: 9, scope: !2420)
!2447 = !DILocation(line: 21, column: 32, scope: !2417)
!2448 = !DILocation(line: 21, column: 5, scope: !2417)
!2449 = distinct !{!2449, !2418, !2450, !323}
!2450 = !DILocation(line: 29, column: 5, scope: !2411)
!2451 = !DILocation(line: 30, column: 1, scope: !2372)
!2452 = distinct !DISubprogram(name: "m_vec_copy", scope: !457, file: !457, line: 13, type: !2217, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2453 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2452, file: !457, line: 13, type: !45)
!2454 = !DILocation(line: 0, scope: !2452)
!2455 = !DILocalVariable(name: "in", arg: 2, scope: !2452, file: !457, line: 13, type: !346)
!2456 = !DILocalVariable(name: "out", arg: 3, scope: !2452, file: !457, line: 13, type: !5)
!2457 = !DILocalVariable(name: "i", scope: !2458, file: !457, line: 15, type: !15)
!2458 = distinct !DILexicalBlock(scope: !2452, file: !457, line: 15, column: 5)
!2459 = !DILocation(line: 0, scope: !2458)
!2460 = !DILocation(line: 15, column: 10, scope: !2458)
!2461 = !DILocation(line: 15, scope: !2458)
!2462 = !DILocation(line: 15, column: 26, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2458, file: !457, line: 15, column: 5)
!2464 = !DILocation(line: 15, column: 5, scope: !2458)
!2465 = !DILocation(line: 17, column: 18, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2463, file: !457, line: 16, column: 5)
!2467 = !DILocation(line: 17, column: 9, scope: !2466)
!2468 = !DILocation(line: 17, column: 16, scope: !2466)
!2469 = !DILocation(line: 15, column: 46, scope: !2463)
!2470 = !DILocation(line: 15, column: 5, scope: !2463)
!2471 = distinct !{!2471, !2464, !2472, !323}
!2472 = !DILocation(line: 18, column: 5, scope: !2458)
!2473 = !DILocation(line: 19, column: 1, scope: !2452)
!2474 = distinct !DISubprogram(name: "m_vec_add", scope: !457, file: !457, line: 22, type: !2217, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2475 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2474, file: !457, line: 22, type: !45)
!2476 = !DILocation(line: 0, scope: !2474)
!2477 = !DILocalVariable(name: "in", arg: 2, scope: !2474, file: !457, line: 22, type: !346)
!2478 = !DILocalVariable(name: "acc", arg: 3, scope: !2474, file: !457, line: 22, type: !5)
!2479 = !DILocalVariable(name: "i", scope: !2480, file: !457, line: 24, type: !15)
!2480 = distinct !DILexicalBlock(scope: !2474, file: !457, line: 24, column: 5)
!2481 = !DILocation(line: 0, scope: !2480)
!2482 = !DILocation(line: 24, column: 10, scope: !2480)
!2483 = !DILocation(line: 24, scope: !2480)
!2484 = !DILocation(line: 24, column: 26, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !457, line: 24, column: 5)
!2486 = !DILocation(line: 24, column: 5, scope: !2480)
!2487 = !DILocation(line: 26, column: 19, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !457, line: 25, column: 5)
!2489 = !DILocation(line: 26, column: 9, scope: !2488)
!2490 = !DILocation(line: 26, column: 16, scope: !2488)
!2491 = !DILocation(line: 24, column: 46, scope: !2485)
!2492 = !DILocation(line: 24, column: 5, scope: !2485)
!2493 = distinct !{!2493, !2486, !2494, !323}
!2494 = !DILocation(line: 27, column: 5, scope: !2480)
!2495 = !DILocation(line: 28, column: 1, scope: !2474)
!2496 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2497, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!45, !2375, !18, !49, !49, !18, !45, !45, !45, !45}
!2499 = !DILocalVariable(name: "p", arg: 1, scope: !2496, file: !58, line: 40, type: !2375)
!2500 = !DILocation(line: 0, scope: !2496)
!2501 = !DILocalVariable(name: "A", arg: 2, scope: !2496, file: !58, line: 40, type: !18)
!2502 = !DILocalVariable(name: "y", arg: 3, scope: !2496, file: !58, line: 41, type: !49)
!2503 = !DILocalVariable(name: "r", arg: 4, scope: !2496, file: !58, line: 41, type: !49)
!2504 = !DILocalVariable(name: "x", arg: 5, scope: !2496, file: !58, line: 42, type: !18)
!2505 = !DILocalVariable(name: "k", arg: 6, scope: !2496, file: !58, line: 42, type: !45)
!2506 = !DILocalVariable(name: "o", arg: 7, scope: !2496, file: !58, line: 42, type: !45)
!2507 = !DILocalVariable(name: "m", arg: 8, scope: !2496, file: !58, line: 42, type: !45)
!2508 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2496, file: !58, line: 42, type: !45)
!2509 = !DILocalVariable(name: "i", scope: !2510, file: !58, line: 51, type: !45)
!2510 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 51, column: 5)
!2511 = !DILocation(line: 0, scope: !2510)
!2512 = !DILocation(line: 51, column: 10, scope: !2510)
!2513 = !DILocation(line: 51, scope: !2510)
!2514 = !DILocation(line: 51, column: 23, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !58, line: 51, column: 5)
!2516 = !DILocation(line: 51, column: 5, scope: !2510)
!2517 = !DILocation(line: 57, column: 5, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 57, column: 5)
!2519 = !DILocation(line: 52, column: 16, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !58, line: 51, column: 37)
!2521 = !DILocation(line: 52, column: 9, scope: !2520)
!2522 = !DILocation(line: 52, column: 14, scope: !2520)
!2523 = !DILocation(line: 51, column: 33, scope: !2515)
!2524 = !DILocation(line: 51, column: 5, scope: !2515)
!2525 = distinct !{!2525, !2516, !2526, !323}
!2526 = !DILocation(line: 53, column: 5, scope: !2510)
!2527 = !DILocation(line: 57, scope: !2518)
!2528 = !DILocalVariable(name: "i", scope: !2518, file: !58, line: 57, type: !45)
!2529 = !DILocation(line: 0, scope: !2518)
!2530 = !DILocation(line: 57, column: 23, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2518, file: !58, line: 57, column: 5)
!2532 = !DILocation(line: 58, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2531, file: !58, line: 57, column: 33)
!2534 = !DILocation(line: 58, column: 26, scope: !2533)
!2535 = !DILocation(line: 58, column: 30, scope: !2533)
!2536 = !DILocation(line: 58, column: 21, scope: !2533)
!2537 = !DILocation(line: 58, column: 9, scope: !2533)
!2538 = !DILocation(line: 58, column: 36, scope: !2533)
!2539 = !DILocation(line: 57, column: 29, scope: !2531)
!2540 = !DILocation(line: 57, column: 5, scope: !2531)
!2541 = distinct !{!2541, !2517, !2542, !323}
!2542 = !DILocation(line: 59, column: 5, scope: !2518)
!2543 = !DILocation(line: 60, column: 25, scope: !2496)
!2544 = !DILocation(line: 60, column: 29, scope: !2496)
!2545 = !DILocation(line: 60, column: 5, scope: !2496)
!2546 = !DILocalVariable(name: "i", scope: !2547, file: !58, line: 63, type: !45)
!2547 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 63, column: 5)
!2548 = !DILocation(line: 0, scope: !2547)
!2549 = !DILocation(line: 63, column: 10, scope: !2547)
!2550 = !DILocation(line: 63, scope: !2547)
!2551 = !DILocation(line: 63, column: 23, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !58, line: 63, column: 5)
!2553 = !DILocation(line: 63, column: 5, scope: !2547)
!2554 = !DILocation(line: 64, column: 44, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !58, line: 63, column: 33)
!2556 = !DILocation(line: 64, column: 50, scope: !2555)
!2557 = !DILocation(line: 64, column: 38, scope: !2555)
!2558 = !DILocation(line: 64, column: 13, scope: !2555)
!2559 = !DILocation(line: 64, column: 26, scope: !2555)
!2560 = !DILocation(line: 64, column: 30, scope: !2555)
!2561 = !DILocation(line: 64, column: 21, scope: !2555)
!2562 = !DILocation(line: 64, column: 9, scope: !2555)
!2563 = !DILocation(line: 64, column: 36, scope: !2555)
!2564 = !DILocation(line: 63, column: 29, scope: !2552)
!2565 = !DILocation(line: 63, column: 5, scope: !2552)
!2566 = distinct !{!2566, !2553, !2567, !323}
!2567 = !DILocation(line: 65, column: 5, scope: !2547)
!2568 = !DILocation(line: 67, column: 16, scope: !2496)
!2569 = !DILocation(line: 67, column: 20, scope: !2496)
!2570 = !DILocation(line: 67, column: 5, scope: !2496)
!2571 = !DILocalVariable(name: "full_rank", scope: !2496, file: !58, line: 70, type: !14)
!2572 = !DILocalVariable(name: "i", scope: !2573, file: !58, line: 71, type: !45)
!2573 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 71, column: 5)
!2574 = !DILocation(line: 0, scope: !2573)
!2575 = !DILocation(line: 71, column: 10, scope: !2573)
!2576 = !DILocation(line: 71, scope: !2573)
!2577 = !DILocation(line: 71, column: 23, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !58, line: 71, column: 5)
!2579 = !DILocation(line: 71, column: 5, scope: !2573)
!2580 = !DILocation(line: 72, column: 27, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !58, line: 71, column: 42)
!2582 = !DILocation(line: 72, column: 32, scope: !2581)
!2583 = !DILocation(line: 72, column: 22, scope: !2581)
!2584 = !DILocation(line: 72, column: 19, scope: !2581)
!2585 = !DILocation(line: 71, column: 38, scope: !2578)
!2586 = !DILocation(line: 71, column: 5, scope: !2578)
!2587 = distinct !{!2587, !2579, !2588, !323}
!2588 = !DILocation(line: 73, column: 5, scope: !2573)
!2589 = !DILocation(line: 80, column: 19, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 80, column: 9)
!2591 = !DILocation(line: 88, column: 5, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 88, column: 5)
!2593 = distinct !{!2593, !2591, !2594, !323}
!2594 = !DILocation(line: 122, column: 5, scope: !2592)
!2595 = !DILocation(line: 88, scope: !2592)
!2596 = !DILocalVariable(name: "row", scope: !2592, file: !58, line: 88, type: !45)
!2597 = !DILocation(line: 0, scope: !2592)
!2598 = !DILocation(line: 88, column: 31, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2592, file: !58, line: 88, column: 5)
!2600 = !DILocalVariable(name: "finished", scope: !2496, file: !58, line: 46, type: !14)
!2601 = !DILocation(line: 90, column: 27, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2599, file: !58, line: 88, column: 44)
!2603 = !DILocalVariable(name: "col_upper_bound", scope: !2496, file: !58, line: 47, type: !45)
!2604 = !DILocalVariable(name: "col", scope: !2605, file: !58, line: 93, type: !45)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !58, line: 93, column: 9)
!2606 = !DILocation(line: 0, scope: !2605)
!2607 = !DILocation(line: 93, column: 14, scope: !2605)
!2608 = !DILocation(line: 0, scope: !2602)
!2609 = !DILocation(line: 93, scope: !2605)
!2610 = !DILocation(line: 93, column: 33, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2605, file: !58, line: 93, column: 9)
!2612 = !DILocation(line: 93, column: 9, scope: !2605)
!2613 = !DILocation(line: 97, column: 50, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !58, line: 93, column: 60)
!2615 = !DILocation(line: 97, column: 44, scope: !2614)
!2616 = !DILocation(line: 97, column: 30, scope: !2614)
!2617 = !DILocation(line: 97, column: 73, scope: !2614)
!2618 = !DILocalVariable(name: "correct_column", scope: !2496, file: !58, line: 48, type: !14)
!2619 = !DILocation(line: 99, column: 63, scope: !2614)
!2620 = !DILocation(line: 99, column: 48, scope: !2614)
!2621 = !DILocation(line: 99, column: 46, scope: !2614)
!2622 = !DILocalVariable(name: "u", scope: !2614, file: !58, line: 99, type: !14)
!2623 = !DILocation(line: 0, scope: !2614)
!2624 = !DILocation(line: 100, column: 13, scope: !2614)
!2625 = !DILocation(line: 100, column: 20, scope: !2614)
!2626 = !DILocalVariable(name: "i", scope: !2627, file: !58, line: 102, type: !45)
!2627 = distinct !DILexicalBlock(scope: !2614, file: !58, line: 102, column: 13)
!2628 = !DILocation(line: 0, scope: !2627)
!2629 = !DILocation(line: 102, column: 18, scope: !2627)
!2630 = !DILocation(line: 102, scope: !2627)
!2631 = !DILocation(line: 102, column: 31, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2627, file: !58, line: 102, column: 13)
!2633 = !DILocation(line: 102, column: 13, scope: !2627)
!2634 = !DILocation(line: 103, column: 53, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !58, line: 102, column: 46)
!2636 = !DILocation(line: 103, column: 45, scope: !2635)
!2637 = !DILocation(line: 103, column: 34, scope: !2635)
!2638 = !DILocation(line: 103, column: 95, scope: !2635)
!2639 = !DILocation(line: 103, column: 99, scope: !2635)
!2640 = !DILocation(line: 103, column: 91, scope: !2635)
!2641 = !DILocation(line: 103, column: 80, scope: !2635)
!2642 = !DILocation(line: 103, column: 115, scope: !2635)
!2643 = !DILocation(line: 103, column: 76, scope: !2635)
!2644 = !DILocation(line: 104, column: 49, scope: !2635)
!2645 = !DILocation(line: 104, column: 53, scope: !2635)
!2646 = !DILocation(line: 104, column: 45, scope: !2635)
!2647 = !DILocation(line: 104, column: 34, scope: !2635)
!2648 = !DILocation(line: 104, column: 69, scope: !2635)
!2649 = !DILocation(line: 104, column: 30, scope: !2635)
!2650 = !DILocation(line: 104, column: 95, scope: !2635)
!2651 = !DILocation(line: 104, column: 99, scope: !2635)
!2652 = !DILocation(line: 104, column: 91, scope: !2635)
!2653 = !DILocation(line: 104, column: 80, scope: !2635)
!2654 = !DILocation(line: 104, column: 115, scope: !2635)
!2655 = !DILocation(line: 104, column: 76, scope: !2635)
!2656 = !DILocation(line: 105, column: 49, scope: !2635)
!2657 = !DILocation(line: 105, column: 53, scope: !2635)
!2658 = !DILocation(line: 105, column: 45, scope: !2635)
!2659 = !DILocation(line: 105, column: 34, scope: !2635)
!2660 = !DILocation(line: 105, column: 69, scope: !2635)
!2661 = !DILocation(line: 105, column: 30, scope: !2635)
!2662 = !DILocation(line: 105, column: 95, scope: !2635)
!2663 = !DILocation(line: 105, column: 99, scope: !2635)
!2664 = !DILocation(line: 105, column: 91, scope: !2635)
!2665 = !DILocation(line: 105, column: 80, scope: !2635)
!2666 = !DILocation(line: 105, column: 115, scope: !2635)
!2667 = !DILocation(line: 105, column: 76, scope: !2635)
!2668 = !DILocation(line: 106, column: 49, scope: !2635)
!2669 = !DILocation(line: 106, column: 53, scope: !2635)
!2670 = !DILocation(line: 106, column: 45, scope: !2635)
!2671 = !DILocation(line: 106, column: 34, scope: !2635)
!2672 = !DILocation(line: 106, column: 69, scope: !2635)
!2673 = !DILocation(line: 106, column: 30, scope: !2635)
!2674 = !DILocation(line: 106, column: 95, scope: !2635)
!2675 = !DILocation(line: 106, column: 99, scope: !2635)
!2676 = !DILocation(line: 106, column: 91, scope: !2635)
!2677 = !DILocation(line: 106, column: 80, scope: !2635)
!2678 = !DILocation(line: 106, column: 115, scope: !2635)
!2679 = !DILocation(line: 106, column: 76, scope: !2635)
!2680 = !DILocalVariable(name: "tmp", scope: !2635, file: !58, line: 103, type: !6)
!2681 = !DILocation(line: 0, scope: !2635)
!2682 = !DILocation(line: 108, column: 23, scope: !2635)
!2683 = !DILocation(line: 110, column: 34, scope: !2635)
!2684 = !DILocation(line: 110, column: 17, scope: !2635)
!2685 = !DILocation(line: 110, column: 48, scope: !2635)
!2686 = !DILocation(line: 111, column: 56, scope: !2635)
!2687 = !DILocation(line: 111, column: 34, scope: !2635)
!2688 = !DILocation(line: 111, column: 17, scope: !2635)
!2689 = !DILocation(line: 111, column: 48, scope: !2635)
!2690 = !DILocation(line: 112, column: 56, scope: !2635)
!2691 = !DILocation(line: 112, column: 34, scope: !2635)
!2692 = !DILocation(line: 112, column: 17, scope: !2635)
!2693 = !DILocation(line: 112, column: 48, scope: !2635)
!2694 = !DILocation(line: 113, column: 56, scope: !2635)
!2695 = !DILocation(line: 113, column: 34, scope: !2635)
!2696 = !DILocation(line: 113, column: 17, scope: !2635)
!2697 = !DILocation(line: 113, column: 48, scope: !2635)
!2698 = !DILocation(line: 114, column: 56, scope: !2635)
!2699 = !DILocation(line: 114, column: 34, scope: !2635)
!2700 = !DILocation(line: 114, column: 17, scope: !2635)
!2701 = !DILocation(line: 114, column: 48, scope: !2635)
!2702 = !DILocation(line: 115, column: 56, scope: !2635)
!2703 = !DILocation(line: 115, column: 34, scope: !2635)
!2704 = !DILocation(line: 115, column: 17, scope: !2635)
!2705 = !DILocation(line: 115, column: 48, scope: !2635)
!2706 = !DILocation(line: 116, column: 56, scope: !2635)
!2707 = !DILocation(line: 116, column: 34, scope: !2635)
!2708 = !DILocation(line: 116, column: 17, scope: !2635)
!2709 = !DILocation(line: 116, column: 48, scope: !2635)
!2710 = !DILocation(line: 117, column: 56, scope: !2635)
!2711 = !DILocation(line: 117, column: 34, scope: !2635)
!2712 = !DILocation(line: 117, column: 17, scope: !2635)
!2713 = !DILocation(line: 117, column: 48, scope: !2635)
!2714 = !DILocation(line: 102, column: 40, scope: !2632)
!2715 = !DILocation(line: 102, column: 13, scope: !2632)
!2716 = distinct !{!2716, !2633, !2717, !323}
!2717 = !DILocation(line: 118, column: 13, scope: !2627)
!2718 = !DILocation(line: 120, column: 33, scope: !2614)
!2719 = !DILocation(line: 93, column: 56, scope: !2611)
!2720 = !DILocation(line: 93, column: 9, scope: !2611)
!2721 = distinct !{!2721, !2612, !2722, !323}
!2722 = !DILocation(line: 121, column: 9, scope: !2605)
!2723 = !DILocation(line: 124, column: 1, scope: !2496)
!2724 = distinct !DISubprogram(name: "mat_mul", scope: !513, file: !513, line: 79, type: !1421, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2725 = !DILocalVariable(name: "a", arg: 1, scope: !2724, file: !513, line: 79, type: !49)
!2726 = !DILocation(line: 0, scope: !2724)
!2727 = !DILocalVariable(name: "b", arg: 2, scope: !2724, file: !513, line: 79, type: !49)
!2728 = !DILocalVariable(name: "c", arg: 3, scope: !2724, file: !513, line: 80, type: !18)
!2729 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2724, file: !513, line: 80, type: !45)
!2730 = !DILocalVariable(name: "row_a", arg: 5, scope: !2724, file: !513, line: 80, type: !45)
!2731 = !DILocalVariable(name: "col_b", arg: 6, scope: !2724, file: !513, line: 80, type: !45)
!2732 = !DILocalVariable(name: "i", scope: !2733, file: !513, line: 81, type: !45)
!2733 = distinct !DILexicalBlock(scope: !2724, file: !513, line: 81, column: 5)
!2734 = !DILocation(line: 0, scope: !2733)
!2735 = !DILocation(line: 81, column: 10, scope: !2733)
!2736 = !DILocation(line: 81, scope: !2733)
!2737 = !DILocation(line: 81, column: 23, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2733, file: !513, line: 81, column: 5)
!2739 = !DILocation(line: 81, column: 5, scope: !2733)
!2740 = !DILocation(line: 82, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !513, line: 82, column: 9)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !513, line: 81, column: 53)
!2743 = !DILocation(line: 82, scope: !2741)
!2744 = !DILocalVariable(name: "j", scope: !2741, file: !513, line: 82, type: !45)
!2745 = !DILocation(line: 0, scope: !2741)
!2746 = !DILocation(line: 83, column: 18, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !513, line: 82, column: 46)
!2748 = distinct !DILexicalBlock(scope: !2741, file: !513, line: 82, column: 9)
!2749 = !DILocation(line: 83, column: 16, scope: !2747)
!2750 = !DILocation(line: 82, column: 41, scope: !2748)
!2751 = !DILocation(line: 82, column: 9, scope: !2748)
!2752 = distinct !{!2752, !2740, !2753, !323}
!2753 = !DILocation(line: 84, column: 9, scope: !2741)
!2754 = !DILocation(line: 81, column: 32, scope: !2738)
!2755 = !DILocation(line: 81, column: 39, scope: !2738)
!2756 = !DILocation(line: 81, column: 5, scope: !2738)
!2757 = distinct !{!2757, !2739, !2758, !323}
!2758 = !DILocation(line: 85, column: 5, scope: !2733)
!2759 = !DILocation(line: 86, column: 1, scope: !2724)
!2760 = distinct !DISubprogram(name: "sub_f", scope: !513, file: !513, line: 48, type: !1520, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2761 = !DILocalVariable(name: "a", arg: 1, scope: !2760, file: !513, line: 48, type: !14)
!2762 = !DILocation(line: 0, scope: !2760)
!2763 = !DILocalVariable(name: "b", arg: 2, scope: !2760, file: !513, line: 48, type: !14)
!2764 = !DILocation(line: 49, column: 14, scope: !2760)
!2765 = !DILocation(line: 49, column: 5, scope: !2760)
!2766 = distinct !DISubprogram(name: "EF", scope: !2767, file: !2767, line: 60, type: !2768, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2767 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !18, !45, !45}
!2770 = !DILocalVariable(name: "A", arg: 1, scope: !2766, file: !2767, line: 60, type: !18)
!2771 = !DILocation(line: 0, scope: !2766)
!2772 = !DILocalVariable(name: "nrows", arg: 2, scope: !2766, file: !2767, line: 60, type: !45)
!2773 = !DILocalVariable(name: "ncols", arg: 3, scope: !2766, file: !2767, line: 60, type: !45)
!2774 = !DILocalVariable(name: "_pivot_row", scope: !2766, file: !2767, line: 62, type: !2775, align: 256)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !2776)
!2776 = !{!2777}
!2777 = !DISubrange(count: 5)
!2778 = !DILocation(line: 62, column: 27, scope: !2766)
!2779 = !DILocalVariable(name: "_pivot_row2", scope: !2766, file: !2767, line: 63, type: !2775, align: 256)
!2780 = !DILocation(line: 63, column: 27, scope: !2766)
!2781 = !DILocalVariable(name: "packed_A", scope: !2766, file: !2767, line: 64, type: !2782, align: 256)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !2783)
!2783 = !{!2784}
!2784 = !DISubrange(count: 320)
!2785 = !DILocation(line: 64, column: 27, scope: !2766)
!2786 = !DILocation(line: 66, column: 26, scope: !2766)
!2787 = !DILocation(line: 66, column: 32, scope: !2766)
!2788 = !DILocalVariable(name: "row_len", scope: !2766, file: !2767, line: 66, type: !45)
!2789 = !DILocalVariable(name: "i", scope: !2790, file: !2767, line: 69, type: !45)
!2790 = distinct !DILexicalBlock(scope: !2766, file: !2767, line: 69, column: 5)
!2791 = !DILocation(line: 0, scope: !2790)
!2792 = !DILocation(line: 69, column: 10, scope: !2790)
!2793 = !DILocation(line: 69, scope: !2790)
!2794 = !DILocation(line: 69, column: 23, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2790, file: !2767, line: 69, column: 5)
!2796 = !DILocation(line: 69, column: 5, scope: !2790)
!2797 = !DILocation(line: 77, column: 5, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2766, file: !2767, line: 77, column: 5)
!2799 = !DILocation(line: 70, column: 29, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2795, file: !2767, line: 69, column: 37)
!2801 = !DILocation(line: 70, column: 25, scope: !2800)
!2802 = !DILocation(line: 70, column: 51, scope: !2800)
!2803 = !DILocation(line: 70, column: 47, scope: !2800)
!2804 = !DILocation(line: 70, column: 9, scope: !2800)
!2805 = !DILocation(line: 69, column: 33, scope: !2795)
!2806 = !DILocation(line: 69, column: 5, scope: !2795)
!2807 = distinct !{!2807, !2796, !2808, !323}
!2808 = !DILocation(line: 71, column: 5, scope: !2790)
!2809 = !DILocation(line: 77, scope: !2798)
!2810 = !DILocalVariable(name: "pivot_row", scope: !2766, file: !2767, line: 76, type: !45)
!2811 = !DILocalVariable(name: "pivot_col", scope: !2798, file: !2767, line: 77, type: !45)
!2812 = !DILocation(line: 0, scope: !2798)
!2813 = !DILocation(line: 77, column: 39, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2798, file: !2767, line: 77, column: 5)
!2815 = !DILocation(line: 138, column: 5, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2766, file: !2767, line: 138, column: 5)
!2817 = !DILocation(line: 79, column: 37, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !2767, line: 77, column: 61)
!2819 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2818, file: !2767, line: 79, type: !45)
!2820 = !DILocation(line: 0, scope: !2818)
!2821 = !DILocation(line: 80, column: 37, scope: !2818)
!2822 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2818, file: !2767, line: 80, type: !45)
!2823 = !DILocalVariable(name: "i", scope: !2824, file: !2767, line: 85, type: !45)
!2824 = distinct !DILexicalBlock(scope: !2818, file: !2767, line: 85, column: 9)
!2825 = !DILocation(line: 0, scope: !2824)
!2826 = !DILocation(line: 85, column: 14, scope: !2824)
!2827 = !DILocation(line: 85, scope: !2824)
!2828 = !DILocation(line: 85, column: 27, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !2767, line: 85, column: 9)
!2830 = !DILocation(line: 85, column: 9, scope: !2824)
!2831 = !DILocation(line: 93, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2818, file: !2767, line: 93, column: 9)
!2833 = !DILocation(line: 86, column: 13, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !2767, line: 85, column: 43)
!2835 = !DILocation(line: 86, column: 27, scope: !2834)
!2836 = !DILocation(line: 87, column: 13, scope: !2834)
!2837 = !DILocation(line: 87, column: 28, scope: !2834)
!2838 = !DILocation(line: 85, column: 39, scope: !2829)
!2839 = !DILocation(line: 85, column: 9, scope: !2829)
!2840 = distinct !{!2840, !2830, !2841, !323}
!2841 = !DILocation(line: 88, column: 9, scope: !2824)
!2842 = !DILocation(line: 0, scope: !2832)
!2843 = !DILocalVariable(name: "row", scope: !2832, file: !2767, line: 93, type: !45)
!2844 = !DILocalVariable(name: "pivot", scope: !2818, file: !2767, line: 91, type: !14)
!2845 = !DILocalVariable(name: "pivot_is_zero", scope: !2818, file: !2767, line: 92, type: !6)
!2846 = !DILocation(line: 94, column: 24, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2832, file: !2767, line: 93, column: 9)
!2848 = !DILocation(line: 94, column: 21, scope: !2847)
!2849 = !DILocation(line: 96, column: 38, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !2767, line: 94, column: 80)
!2851 = !DILocation(line: 96, column: 37, scope: !2850)
!2852 = !DILocalVariable(name: "is_pivot_row", scope: !2850, file: !2767, line: 96, type: !6)
!2853 = !DILocation(line: 0, scope: !2850)
!2854 = !DILocation(line: 97, column: 40, scope: !2850)
!2855 = !DILocalVariable(name: "below_pivot_row", scope: !2850, file: !2767, line: 97, type: !6)
!2856 = !DILocalVariable(name: "j", scope: !2857, file: !2767, line: 99, type: !45)
!2857 = distinct !DILexicalBlock(scope: !2850, file: !2767, line: 99, column: 13)
!2858 = !DILocation(line: 0, scope: !2857)
!2859 = !DILocation(line: 99, column: 18, scope: !2857)
!2860 = !DILocation(line: 99, scope: !2857)
!2861 = !DILocation(line: 99, column: 31, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2857, file: !2767, line: 99, column: 13)
!2863 = !DILocation(line: 99, column: 13, scope: !2857)
!2864 = !DILocation(line: 100, column: 67, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !2767, line: 99, column: 47)
!2866 = !DILocation(line: 100, column: 48, scope: !2865)
!2867 = !DILocation(line: 101, column: 47, scope: !2865)
!2868 = !DILocation(line: 101, column: 57, scope: !2865)
!2869 = !DILocation(line: 101, column: 34, scope: !2865)
!2870 = !DILocation(line: 100, column: 85, scope: !2865)
!2871 = !DILocation(line: 100, column: 17, scope: !2865)
!2872 = !DILocation(line: 100, column: 31, scope: !2865)
!2873 = !DILocation(line: 99, column: 43, scope: !2862)
!2874 = !DILocation(line: 99, column: 13, scope: !2862)
!2875 = distinct !{!2875, !2863, !2876, !323}
!2876 = !DILocation(line: 102, column: 13, scope: !2857)
!2877 = !DILocation(line: 103, column: 21, scope: !2850)
!2878 = !DILocation(line: 104, column: 44, scope: !2850)
!2879 = !DILocation(line: 104, column: 30, scope: !2850)
!2880 = !DILocation(line: 104, column: 29, scope: !2850)
!2881 = !DILocation(line: 94, column: 76, scope: !2847)
!2882 = !DILocation(line: 93, column: 9, scope: !2847)
!2883 = distinct !{!2883, !2831, !2884, !323}
!2884 = !DILocation(line: 105, column: 9, scope: !2832)
!2885 = !DILocation(line: 108, column: 19, scope: !2818)
!2886 = !DILocalVariable(name: "inverse", scope: !2766, file: !2767, line: 75, type: !14)
!2887 = !DILocation(line: 109, column: 9, scope: !2818)
!2888 = !DILocalVariable(name: "row", scope: !2889, file: !2767, line: 113, type: !45)
!2889 = distinct !DILexicalBlock(scope: !2818, file: !2767, line: 113, column: 9)
!2890 = !DILocation(line: 0, scope: !2889)
!2891 = !DILocation(line: 113, column: 14, scope: !2889)
!2892 = !DILocation(line: 113, scope: !2889)
!2893 = !DILocation(line: 113, column: 51, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2889, file: !2767, line: 113, column: 9)
!2895 = !DILocation(line: 113, column: 9, scope: !2889)
!2896 = !DILocation(line: 124, column: 9, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2818, file: !2767, line: 124, column: 9)
!2898 = !DILocation(line: 114, column: 33, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !2767, line: 113, column: 84)
!2900 = !DILocation(line: 114, column: 63, scope: !2899)
!2901 = !DILocalVariable(name: "do_copy", scope: !2899, file: !2767, line: 114, type: !6)
!2902 = !DILocation(line: 0, scope: !2899)
!2903 = !DILocalVariable(name: "do_not_copy", scope: !2899, file: !2767, line: 115, type: !6)
!2904 = !DILocalVariable(name: "col", scope: !2905, file: !2767, line: 116, type: !45)
!2905 = distinct !DILexicalBlock(scope: !2899, file: !2767, line: 116, column: 13)
!2906 = !DILocation(line: 0, scope: !2905)
!2907 = !DILocation(line: 116, column: 18, scope: !2905)
!2908 = !DILocation(line: 116, scope: !2905)
!2909 = !DILocation(line: 116, column: 35, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2905, file: !2767, line: 116, column: 13)
!2911 = !DILocation(line: 116, column: 13, scope: !2905)
!2912 = !DILocation(line: 118, column: 49, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !2767, line: 116, column: 53)
!2914 = !DILocation(line: 118, column: 59, scope: !2913)
!2915 = !DILocation(line: 118, column: 36, scope: !2913)
!2916 = !DILocation(line: 118, column: 34, scope: !2913)
!2917 = !DILocation(line: 119, column: 32, scope: !2913)
!2918 = !DILocation(line: 119, column: 30, scope: !2913)
!2919 = !DILocation(line: 118, column: 67, scope: !2913)
!2920 = !DILocation(line: 117, column: 30, scope: !2913)
!2921 = !DILocation(line: 117, column: 40, scope: !2913)
!2922 = !DILocation(line: 117, column: 17, scope: !2913)
!2923 = !DILocation(line: 117, column: 47, scope: !2913)
!2924 = !DILocation(line: 116, column: 49, scope: !2910)
!2925 = !DILocation(line: 116, column: 13, scope: !2910)
!2926 = distinct !{!2926, !2911, !2927, !323}
!2927 = !DILocation(line: 120, column: 13, scope: !2905)
!2928 = !DILocation(line: 113, column: 80, scope: !2894)
!2929 = !DILocation(line: 113, column: 9, scope: !2894)
!2930 = distinct !{!2930, !2895, !2931, !323}
!2931 = !DILocation(line: 121, column: 9, scope: !2889)
!2932 = !DILocation(line: 124, scope: !2897)
!2933 = !DILocalVariable(name: "row", scope: !2897, file: !2767, line: 124, type: !45)
!2934 = !DILocation(line: 0, scope: !2897)
!2935 = !DILocation(line: 124, column: 51, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2897, file: !2767, line: 124, column: 9)
!2937 = !DILocation(line: 125, column: 46, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2936, file: !2767, line: 124, column: 67)
!2939 = !DILocalVariable(name: "below_pivot", scope: !2938, file: !2767, line: 125, type: !14)
!2940 = !DILocation(line: 0, scope: !2938)
!2941 = !DILocation(line: 126, column: 74, scope: !2938)
!2942 = !DILocation(line: 126, column: 68, scope: !2938)
!2943 = !DILocation(line: 126, column: 41, scope: !2938)
!2944 = !DILocalVariable(name: "elt_to_elim", scope: !2938, file: !2767, line: 126, type: !14)
!2945 = !DILocation(line: 128, column: 63, scope: !2938)
!2946 = !DILocation(line: 129, column: 52, scope: !2938)
!2947 = !DILocation(line: 129, column: 46, scope: !2938)
!2948 = !DILocation(line: 128, column: 13, scope: !2938)
!2949 = !DILocation(line: 124, column: 63, scope: !2936)
!2950 = !DILocation(line: 124, column: 9, scope: !2936)
!2951 = distinct !{!2951, !2896, !2952, !323}
!2952 = !DILocation(line: 130, column: 9, scope: !2897)
!2953 = !DILocation(line: 132, column: 19, scope: !2818)
!2954 = !DILocation(line: 77, column: 57, scope: !2814)
!2955 = !DILocation(line: 77, column: 5, scope: !2814)
!2956 = distinct !{!2956, !2797, !2957, !323}
!2957 = !DILocation(line: 133, column: 5, scope: !2798)
!2958 = !DILocation(line: 138, scope: !2816)
!2959 = !DILocalVariable(name: "i", scope: !2816, file: !2767, line: 138, type: !45)
!2960 = !DILocation(line: 0, scope: !2816)
!2961 = !DILocation(line: 138, column: 23, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2816, file: !2767, line: 138, column: 5)
!2963 = !DILocation(line: 139, column: 47, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2962, file: !2767, line: 138, column: 37)
!2965 = !DILocation(line: 139, column: 43, scope: !2964)
!2966 = !DILocation(line: 139, column: 9, scope: !2964)
!2967 = !DILocalVariable(name: "j", scope: !2968, file: !2767, line: 140, type: !45)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !2767, line: 140, column: 9)
!2969 = !DILocation(line: 0, scope: !2968)
!2970 = !DILocation(line: 140, column: 14, scope: !2968)
!2971 = !DILocation(line: 140, scope: !2968)
!2972 = !DILocation(line: 140, column: 27, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !2767, line: 140, column: 9)
!2974 = !DILocation(line: 140, column: 9, scope: !2968)
!2975 = !DILocation(line: 141, column: 32, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2973, file: !2767, line: 140, column: 41)
!2977 = !DILocation(line: 141, column: 17, scope: !2976)
!2978 = !DILocation(line: 141, column: 13, scope: !2976)
!2979 = !DILocation(line: 141, column: 30, scope: !2976)
!2980 = !DILocation(line: 140, column: 37, scope: !2973)
!2981 = !DILocation(line: 140, column: 9, scope: !2973)
!2982 = distinct !{!2982, !2974, !2983, !323}
!2983 = !DILocation(line: 142, column: 9, scope: !2968)
!2984 = !DILocation(line: 138, column: 33, scope: !2962)
!2985 = !DILocation(line: 138, column: 5, scope: !2962)
!2986 = distinct !{!2986, !2815, !2987, !323}
!2987 = !DILocation(line: 143, column: 5, scope: !2816)
!2988 = !DILocation(line: 145, column: 5, scope: !2766)
!2989 = !DILocation(line: 146, column: 5, scope: !2766)
!2990 = !DILocation(line: 147, column: 5, scope: !2766)
!2991 = !DILocation(line: 148, column: 5, scope: !2766)
!2992 = !DILocation(line: 149, column: 1, scope: !2766)
!2993 = distinct !DISubprogram(name: "ct_compare_8", scope: !2994, file: !2994, line: 51, type: !1520, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2994 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2995 = !DILocalVariable(name: "a", arg: 1, scope: !2993, file: !2994, line: 51, type: !14)
!2996 = !DILocation(line: 0, scope: !2993)
!2997 = !DILocalVariable(name: "b", arg: 2, scope: !2993, file: !2994, line: 51, type: !14)
!2998 = !DILocation(line: 52, column: 42, scope: !2993)
!2999 = !DILocation(line: 52, column: 13, scope: !2993)
!3000 = !DILocation(line: 52, column: 71, scope: !2993)
!3001 = !DILocation(line: 52, column: 69, scope: !2993)
!3002 = !DILocation(line: 52, column: 5, scope: !2993)
!3003 = distinct !DISubprogram(name: "mul_fx8", scope: !513, file: !513, line: 28, type: !3004, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!6, !14, !6}
!3006 = !DILocalVariable(name: "a", arg: 1, scope: !3003, file: !513, line: 28, type: !14)
!3007 = !DILocation(line: 0, scope: !3003)
!3008 = !DILocalVariable(name: "b", arg: 2, scope: !3003, file: !513, line: 28, type: !6)
!3009 = !DILocation(line: 31, column: 13, scope: !3003)
!3010 = !DILocation(line: 31, column: 10, scope: !3003)
!3011 = !DILocation(line: 31, column: 17, scope: !3003)
!3012 = !DILocalVariable(name: "p", scope: !3003, file: !513, line: 30, type: !6)
!3013 = !DILocation(line: 32, column: 13, scope: !3003)
!3014 = !DILocation(line: 32, column: 10, scope: !3003)
!3015 = !DILocation(line: 32, column: 17, scope: !3003)
!3016 = !DILocation(line: 32, column: 7, scope: !3003)
!3017 = !DILocation(line: 33, column: 13, scope: !3003)
!3018 = !DILocation(line: 33, column: 10, scope: !3003)
!3019 = !DILocation(line: 33, column: 17, scope: !3003)
!3020 = !DILocation(line: 33, column: 7, scope: !3003)
!3021 = !DILocation(line: 34, column: 13, scope: !3003)
!3022 = !DILocation(line: 34, column: 10, scope: !3003)
!3023 = !DILocation(line: 34, column: 17, scope: !3003)
!3024 = !DILocation(line: 34, column: 7, scope: !3003)
!3025 = !DILocalVariable(name: "top_p", scope: !3003, file: !513, line: 37, type: !6)
!3026 = !DILocation(line: 38, column: 32, scope: !3003)
!3027 = !DILocation(line: 38, column: 47, scope: !3003)
!3028 = !DILocation(line: 38, column: 38, scope: !3003)
!3029 = !DILocation(line: 38, column: 54, scope: !3003)
!3030 = !DILocalVariable(name: "out", scope: !3003, file: !513, line: 38, type: !6)
!3031 = !DILocation(line: 39, column: 5, scope: !3003)
!3032 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2767, file: !2767, line: 24, type: !3033, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !49, !5, !45}
!3035 = !DILocalVariable(name: "in", arg: 1, scope: !3032, file: !2767, line: 24, type: !49)
!3036 = !DILocation(line: 0, scope: !3032)
!3037 = !DILocalVariable(name: "out", arg: 2, scope: !3032, file: !2767, line: 24, type: !5)
!3038 = !DILocalVariable(name: "ncols", arg: 3, scope: !3032, file: !2767, line: 24, type: !45)
!3039 = !DILocalVariable(name: "out8", scope: !3032, file: !2767, line: 26, type: !18)
!3040 = !DILocalVariable(name: "i", scope: !3032, file: !2767, line: 25, type: !45)
!3041 = !DILocation(line: 27, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3032, file: !2767, line: 27, column: 5)
!3043 = !DILocation(line: 27, scope: !3042)
!3044 = !DILocation(line: 27, column: 17, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3042, file: !2767, line: 27, column: 5)
!3046 = !DILocation(line: 27, column: 20, scope: !3045)
!3047 = !DILocation(line: 27, column: 5, scope: !3042)
!3048 = !DILocation(line: 31, column: 23, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !2767, line: 27, column: 36)
!3050 = !DILocation(line: 31, column: 44, scope: !3049)
!3051 = !DILocation(line: 31, column: 40, scope: !3049)
!3052 = !DILocation(line: 31, column: 48, scope: !3049)
!3053 = !DILocation(line: 31, column: 37, scope: !3049)
!3054 = !DILocation(line: 31, column: 15, scope: !3049)
!3055 = !DILocation(line: 31, column: 9, scope: !3049)
!3056 = !DILocation(line: 31, column: 20, scope: !3049)
!3057 = !DILocation(line: 27, column: 31, scope: !3045)
!3058 = !DILocation(line: 27, column: 5, scope: !3045)
!3059 = distinct !{!3059, !3047, !3060, !323}
!3060 = !DILocation(line: 33, column: 5, scope: !3042)
!3061 = !DILocation(line: 34, column: 19, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3032, file: !2767, line: 34, column: 9)
!3063 = !DILocation(line: 38, column: 23, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3062, file: !2767, line: 34, column: 24)
!3065 = !DILocation(line: 38, column: 15, scope: !3064)
!3066 = !DILocation(line: 38, column: 9, scope: !3064)
!3067 = !DILocation(line: 38, column: 20, scope: !3064)
!3068 = !DILocation(line: 40, column: 5, scope: !3064)
!3069 = !DILocation(line: 41, column: 1, scope: !3032)
!3070 = distinct !DISubprogram(name: "ct_compare_64", scope: !2994, file: !2994, line: 46, type: !3071, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!6, !45, !45}
!3073 = !DILocalVariable(name: "a", arg: 1, scope: !3070, file: !2994, line: 46, type: !45)
!3074 = !DILocation(line: 0, scope: !3070)
!3075 = !DILocalVariable(name: "b", arg: 2, scope: !3070, file: !2994, line: 46, type: !45)
!3076 = !DILocation(line: 47, column: 38, scope: !3070)
!3077 = !DILocation(line: 47, column: 44, scope: !3070)
!3078 = !DILocation(line: 47, column: 73, scope: !3070)
!3079 = !DILocation(line: 47, column: 71, scope: !3070)
!3080 = !DILocation(line: 47, column: 5, scope: !3070)
!3081 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !2994, file: !2994, line: 35, type: !3071, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3082 = !DILocalVariable(name: "a", arg: 1, scope: !3081, file: !2994, line: 35, type: !45)
!3083 = !DILocation(line: 0, scope: !3081)
!3084 = !DILocalVariable(name: "b", arg: 2, scope: !3081, file: !2994, line: 35, type: !45)
!3085 = !DILocalVariable(name: "diff", scope: !3081, file: !2994, line: 36, type: !46)
!3086 = !DILocation(line: 37, column: 30, scope: !3081)
!3087 = !DILocation(line: 37, column: 59, scope: !3081)
!3088 = !DILocation(line: 37, column: 57, scope: !3081)
!3089 = !DILocation(line: 37, column: 5, scope: !3081)
!3090 = distinct !DISubprogram(name: "m_extract_element", scope: !2767, file: !2767, line: 16, type: !3091, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!14, !346, !45}
!3093 = !DILocalVariable(name: "in", arg: 1, scope: !3090, file: !2767, line: 16, type: !346)
!3094 = !DILocation(line: 0, scope: !3090)
!3095 = !DILocalVariable(name: "index", arg: 2, scope: !3090, file: !2767, line: 16, type: !45)
!3096 = !DILocation(line: 17, column: 27, scope: !3090)
!3097 = !DILocalVariable(name: "leg", scope: !3090, file: !2767, line: 17, type: !259)
!3098 = !DILocation(line: 18, column: 30, scope: !3090)
!3099 = !DILocalVariable(name: "offset", scope: !3090, file: !2767, line: 18, type: !259)
!3100 = !DILocation(line: 20, column: 13, scope: !3090)
!3101 = !DILocation(line: 20, column: 31, scope: !3090)
!3102 = !DILocation(line: 20, column: 21, scope: !3090)
!3103 = !DILocation(line: 20, column: 12, scope: !3090)
!3104 = !DILocation(line: 20, column: 5, scope: !3090)
!3105 = distinct !DISubprogram(name: "inverse_f", scope: !513, file: !513, line: 57, type: !3106, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!14, !14}
!3108 = !DILocalVariable(name: "a", arg: 1, scope: !3105, file: !513, line: 57, type: !14)
!3109 = !DILocation(line: 0, scope: !3105)
!3110 = !DILocation(line: 61, column: 24, scope: !3105)
!3111 = !DILocalVariable(name: "a2", scope: !3105, file: !513, line: 61, type: !14)
!3112 = !DILocation(line: 62, column: 24, scope: !3105)
!3113 = !DILocalVariable(name: "a4", scope: !3105, file: !513, line: 62, type: !14)
!3114 = !DILocation(line: 63, column: 24, scope: !3105)
!3115 = !DILocalVariable(name: "a8", scope: !3105, file: !513, line: 63, type: !14)
!3116 = !DILocation(line: 64, column: 24, scope: !3105)
!3117 = !DILocalVariable(name: "a6", scope: !3105, file: !513, line: 64, type: !14)
!3118 = !DILocation(line: 65, column: 25, scope: !3105)
!3119 = !DILocalVariable(name: "a14", scope: !3105, file: !513, line: 65, type: !14)
!3120 = !DILocation(line: 67, column: 5, scope: !3105)
!3121 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !2994, file: !2994, line: 94, type: !3122, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !259, !346, !14, !5}
!3124 = !DILocalVariable(name: "legs", arg: 1, scope: !3121, file: !2994, line: 94, type: !259)
!3125 = !DILocation(line: 0, scope: !3121)
!3126 = !DILocalVariable(name: "in", arg: 2, scope: !3121, file: !2994, line: 94, type: !346)
!3127 = !DILocalVariable(name: "a", arg: 3, scope: !3121, file: !2994, line: 94, type: !14)
!3128 = !DILocalVariable(name: "acc", arg: 4, scope: !3121, file: !2994, line: 94, type: !5)
!3129 = !DILocation(line: 95, column: 20, scope: !3121)
!3130 = !DILocalVariable(name: "tab", scope: !3121, file: !2994, line: 95, type: !19)
!3131 = !DILocalVariable(name: "lsb_ask", scope: !3121, file: !2994, line: 97, type: !6)
!3132 = !DILocalVariable(name: "i", scope: !3133, file: !2994, line: 99, type: !45)
!3133 = distinct !DILexicalBlock(scope: !3121, file: !2994, line: 99, column: 5)
!3134 = !DILocation(line: 0, scope: !3133)
!3135 = !DILocation(line: 99, column: 9, scope: !3133)
!3136 = !DILocation(line: 99, scope: !3133)
!3137 = !DILocation(line: 99, column: 20, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !2994, line: 99, column: 5)
!3139 = !DILocation(line: 99, column: 5, scope: !3133)
!3140 = !DILocation(line: 100, column: 21, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !2994, line: 99, column: 32)
!3142 = !DILocation(line: 100, column: 33, scope: !3141)
!3143 = !DILocation(line: 100, column: 51, scope: !3141)
!3144 = !DILocation(line: 100, column: 46, scope: !3141)
!3145 = !DILocation(line: 100, column: 44, scope: !3141)
!3146 = !DILocation(line: 101, column: 27, scope: !3141)
!3147 = !DILocation(line: 101, column: 33, scope: !3141)
!3148 = !DILocation(line: 101, column: 52, scope: !3141)
!3149 = !DILocation(line: 101, column: 59, scope: !3141)
!3150 = !DILocation(line: 101, column: 46, scope: !3141)
!3151 = !DILocation(line: 101, column: 44, scope: !3141)
!3152 = !DILocation(line: 101, column: 17, scope: !3141)
!3153 = !DILocation(line: 102, column: 21, scope: !3141)
!3154 = !DILocation(line: 102, column: 27, scope: !3141)
!3155 = !DILocation(line: 102, column: 33, scope: !3141)
!3156 = !DILocation(line: 102, column: 52, scope: !3141)
!3157 = !DILocation(line: 102, column: 59, scope: !3141)
!3158 = !DILocation(line: 102, column: 46, scope: !3141)
!3159 = !DILocation(line: 102, column: 44, scope: !3141)
!3160 = !DILocation(line: 102, column: 17, scope: !3141)
!3161 = !DILocation(line: 103, column: 21, scope: !3141)
!3162 = !DILocation(line: 103, column: 27, scope: !3141)
!3163 = !DILocation(line: 103, column: 33, scope: !3141)
!3164 = !DILocation(line: 103, column: 52, scope: !3141)
!3165 = !DILocation(line: 103, column: 59, scope: !3141)
!3166 = !DILocation(line: 103, column: 46, scope: !3141)
!3167 = !DILocation(line: 103, column: 44, scope: !3141)
!3168 = !DILocation(line: 103, column: 17, scope: !3141)
!3169 = !DILocation(line: 100, column: 9, scope: !3141)
!3170 = !DILocation(line: 100, column: 16, scope: !3141)
!3171 = !DILocation(line: 99, column: 29, scope: !3138)
!3172 = !DILocation(line: 99, column: 5, scope: !3138)
!3173 = distinct !{!3173, !3139, !3174, !323}
!3174 = !DILocation(line: 104, column: 5, scope: !3133)
!3175 = !DILocation(line: 105, column: 1, scope: !3121)
!3176 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2767, file: !2767, line: 44, type: !3177, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !45, !346, !18}
!3179 = !DILocalVariable(name: "legs", arg: 1, scope: !3176, file: !2767, line: 44, type: !45)
!3180 = !DILocation(line: 0, scope: !3176)
!3181 = !DILocalVariable(name: "in", arg: 2, scope: !3176, file: !2767, line: 44, type: !346)
!3182 = !DILocalVariable(name: "out", arg: 3, scope: !3176, file: !2767, line: 44, type: !18)
!3183 = !DILocalVariable(name: "in8", scope: !3176, file: !2767, line: 45, type: !49)
!3184 = !DILocalVariable(name: "i", scope: !3185, file: !2767, line: 46, type: !45)
!3185 = distinct !DILexicalBlock(scope: !3176, file: !2767, line: 46, column: 5)
!3186 = !DILocation(line: 0, scope: !3185)
!3187 = !DILocation(line: 46, column: 9, scope: !3185)
!3188 = !DILocation(line: 46, scope: !3185)
!3189 = !DILocation(line: 46, column: 29, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3185, file: !2767, line: 46, column: 5)
!3191 = !DILocation(line: 46, column: 22, scope: !3190)
!3192 = !DILocation(line: 46, column: 5, scope: !3185)
!3193 = !DILocation(line: 51, column: 26, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !2767, line: 46, column: 42)
!3195 = !DILocation(line: 51, column: 21, scope: !3194)
!3196 = !DILocation(line: 51, column: 31, scope: !3194)
!3197 = !DILocation(line: 51, column: 9, scope: !3194)
!3198 = !DILocation(line: 51, column: 18, scope: !3194)
!3199 = !DILocation(line: 52, column: 26, scope: !3194)
!3200 = !DILocation(line: 52, column: 21, scope: !3194)
!3201 = !DILocation(line: 52, column: 30, scope: !3194)
!3202 = !DILocation(line: 52, column: 14, scope: !3194)
!3203 = !DILocation(line: 52, column: 9, scope: !3194)
!3204 = !DILocation(line: 52, column: 18, scope: !3194)
!3205 = !DILocation(line: 46, column: 37, scope: !3190)
!3206 = !DILocation(line: 46, column: 5, scope: !3190)
!3207 = distinct !{!3207, !3192, !3208, !323}
!3208 = !DILocation(line: 54, column: 5, scope: !3185)
!3209 = !DILocation(line: 55, column: 1, scope: !3176)
!3210 = distinct !DISubprogram(name: "mul_table", scope: !513, file: !513, line: 129, type: !514, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3211 = !DILocalVariable(name: "b", arg: 1, scope: !3210, file: !513, line: 129, type: !12)
!3212 = !DILocation(line: 0, scope: !3210)
!3213 = !DILocation(line: 130, column: 19, scope: !3210)
!3214 = !DILocation(line: 130, column: 33, scope: !3210)
!3215 = !DILocalVariable(name: "x", scope: !3210, file: !513, line: 130, type: !19)
!3216 = !DILocalVariable(name: "high_nibble_mask", scope: !3210, file: !513, line: 132, type: !19)
!3217 = !DILocation(line: 134, column: 28, scope: !3210)
!3218 = !DILocalVariable(name: "high_half", scope: !3210, file: !513, line: 134, type: !19)
!3219 = !DILocation(line: 135, column: 28, scope: !3210)
!3220 = !DILocation(line: 135, column: 47, scope: !3210)
!3221 = !DILocation(line: 135, column: 34, scope: !3210)
!3222 = !DILocation(line: 135, column: 5, scope: !3210)
!3223 = distinct !DISubprogram(name: "mul_f", scope: !513, file: !513, line: 9, type: !1520, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3224 = !DILocalVariable(name: "a", arg: 1, scope: !3223, file: !513, line: 9, type: !14)
!3225 = !DILocation(line: 0, scope: !3223)
!3226 = !DILocalVariable(name: "b", arg: 2, scope: !3223, file: !513, line: 9, type: !14)
!3227 = !DILocation(line: 14, column: 10, scope: !3223)
!3228 = !DILocation(line: 14, column: 7, scope: !3223)
!3229 = !DILocation(line: 17, column: 17, scope: !3223)
!3230 = !DILocalVariable(name: "p", scope: !3223, file: !513, line: 11, type: !14)
!3231 = !DILocation(line: 18, column: 13, scope: !3223)
!3232 = !DILocation(line: 18, column: 17, scope: !3223)
!3233 = !DILocation(line: 18, column: 7, scope: !3223)
!3234 = !DILocation(line: 19, column: 13, scope: !3223)
!3235 = !DILocation(line: 19, column: 17, scope: !3223)
!3236 = !DILocation(line: 19, column: 7, scope: !3223)
!3237 = !DILocation(line: 20, column: 13, scope: !3223)
!3238 = !DILocation(line: 20, column: 17, scope: !3223)
!3239 = !DILocation(line: 20, column: 7, scope: !3223)
!3240 = !DILocalVariable(name: "top_p", scope: !3223, file: !513, line: 23, type: !14)
!3241 = !DILocation(line: 24, column: 37, scope: !3223)
!3242 = !DILocation(line: 24, column: 52, scope: !3223)
!3243 = !DILocation(line: 24, column: 43, scope: !3223)
!3244 = !DILocation(line: 24, column: 59, scope: !3223)
!3245 = !DILocalVariable(name: "out", scope: !3223, file: !513, line: 24, type: !14)
!3246 = !DILocation(line: 25, column: 5, scope: !3223)
!3247 = distinct !DISubprogram(name: "lincomb", scope: !513, file: !513, line: 70, type: !1528, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3248 = !DILocalVariable(name: "a", arg: 1, scope: !3247, file: !513, line: 70, type: !49)
!3249 = !DILocation(line: 0, scope: !3247)
!3250 = !DILocalVariable(name: "b", arg: 2, scope: !3247, file: !513, line: 71, type: !49)
!3251 = !DILocalVariable(name: "n", arg: 3, scope: !3247, file: !513, line: 71, type: !45)
!3252 = !DILocalVariable(name: "m", arg: 4, scope: !3247, file: !513, line: 71, type: !45)
!3253 = !DILocalVariable(name: "ret", scope: !3247, file: !513, line: 72, type: !14)
!3254 = !DILocalVariable(name: "i", scope: !3255, file: !513, line: 73, type: !45)
!3255 = distinct !DILexicalBlock(scope: !3247, file: !513, line: 73, column: 5)
!3256 = !DILocation(line: 0, scope: !3255)
!3257 = !DILocation(line: 73, column: 10, scope: !3255)
!3258 = !DILocation(line: 73, scope: !3255)
!3259 = !DILocation(line: 73, column: 23, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !513, line: 73, column: 5)
!3261 = !DILocation(line: 73, column: 5, scope: !3255)
!3262 = !DILocation(line: 74, column: 27, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !513, line: 73, column: 41)
!3264 = !DILocation(line: 74, column: 33, scope: !3263)
!3265 = !DILocation(line: 74, column: 21, scope: !3263)
!3266 = !DILocation(line: 74, column: 15, scope: !3263)
!3267 = !DILocation(line: 73, column: 28, scope: !3260)
!3268 = !DILocation(line: 73, column: 35, scope: !3260)
!3269 = !DILocation(line: 73, column: 5, scope: !3260)
!3270 = distinct !{!3270, !3261, !3271, !323}
!3271 = !DILocation(line: 75, column: 5, scope: !3255)
!3272 = !DILocation(line: 76, column: 5, scope: !3247)
!3273 = distinct !DISubprogram(name: "add_f", scope: !513, file: !513, line: 43, type: !1520, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3274 = !DILocalVariable(name: "a", arg: 1, scope: !3273, file: !513, line: 43, type: !14)
!3275 = !DILocation(line: 0, scope: !3273)
!3276 = !DILocalVariable(name: "b", arg: 2, scope: !3273, file: !513, line: 43, type: !14)
!3277 = !DILocation(line: 44, column: 14, scope: !3273)
!3278 = !DILocation(line: 44, column: 5, scope: !3273)
!3279 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3280, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3284)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3285)
!3285 = !{!3286}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3284, file: !71, line: 30, baseType: !5, size: 32)
!3287 = !DILocalVariable(name: "state", arg: 1, scope: !3279, file: !71, line: 688, type: !3282)
!3288 = !DILocation(line: 0, scope: !3279)
!3289 = !DILocation(line: 689, column: 18, scope: !3279)
!3290 = !DILocation(line: 689, column: 16, scope: !3279)
!3291 = !DILocation(line: 690, column: 20, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3279, file: !71, line: 690, column: 9)
!3293 = !DILocation(line: 691, column: 9, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3292, file: !71, line: 690, column: 29)
!3295 = !DILocation(line: 692, column: 5, scope: !3294)
!3296 = !DILocation(line: 693, column: 28, scope: !3279)
!3297 = !DILocation(line: 693, column: 5, scope: !3279)
!3298 = !DILocation(line: 694, column: 1, scope: !3279)
!3299 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3300 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3299, file: !71, line: 580, type: !5)
!3301 = !DILocation(line: 0, scope: !3299)
!3302 = !DILocalVariable(name: "i", scope: !3299, file: !71, line: 581, type: !15)
!3303 = !DILocation(line: 583, column: 10, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3299, file: !71, line: 583, column: 5)
!3305 = !DILocation(line: 583, scope: !3304)
!3306 = !DILocation(line: 583, column: 19, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3304, file: !71, line: 583, column: 5)
!3308 = !DILocation(line: 583, column: 5, scope: !3304)
!3309 = !DILocation(line: 584, column: 9, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3307, file: !71, line: 583, column: 30)
!3311 = !DILocation(line: 584, column: 18, scope: !3310)
!3312 = !DILocation(line: 583, column: 25, scope: !3307)
!3313 = !DILocation(line: 583, column: 5, scope: !3307)
!3314 = distinct !{!3314, !3308, !3315, !323}
!3315 = !DILocation(line: 585, column: 5, scope: !3304)
!3316 = !DILocation(line: 586, column: 5, scope: !3299)
!3317 = !DILocation(line: 586, column: 15, scope: !3299)
!3318 = !DILocation(line: 587, column: 1, scope: !3299)
!3319 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3320, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3282, !3322, !15}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!3324 = !DILocalVariable(name: "state", arg: 1, scope: !3319, file: !71, line: 696, type: !3282)
!3325 = !DILocation(line: 0, scope: !3319)
!3326 = !DILocalVariable(name: "input", arg: 2, scope: !3319, file: !71, line: 696, type: !3322)
!3327 = !DILocalVariable(name: "inlen", arg: 3, scope: !3319, file: !71, line: 696, type: !15)
!3328 = !DILocation(line: 697, column: 30, scope: !3319)
!3329 = !DILocation(line: 697, column: 5, scope: !3319)
!3330 = !DILocation(line: 698, column: 1, scope: !3319)
!3331 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3332, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !5, !19, !3322, !15}
!3334 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3331, file: !71, line: 603, type: !5)
!3335 = !DILocation(line: 0, scope: !3331)
!3336 = !DILocalVariable(name: "r", arg: 2, scope: !3331, file: !71, line: 603, type: !19)
!3337 = !DILocalVariable(name: "m", arg: 3, scope: !3331, file: !71, line: 603, type: !3322)
!3338 = !DILocalVariable(name: "mlen", arg: 4, scope: !3331, file: !71, line: 604, type: !15)
!3339 = !DILocation(line: 608, column: 5, scope: !3331)
!3340 = !DILocation(line: 608, column: 12, scope: !3331)
!3341 = !DILocation(line: 608, column: 19, scope: !3331)
!3342 = !DILocation(line: 608, column: 17, scope: !3331)
!3343 = !DILocation(line: 608, column: 32, scope: !3331)
!3344 = !DILocation(line: 608, column: 29, scope: !3331)
!3345 = !DILocation(line: 609, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !71, line: 609, column: 9)
!3347 = distinct !DILexicalBlock(scope: !3331, file: !71, line: 608, column: 35)
!3348 = !DILocation(line: 621, column: 5, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3331, file: !71, line: 621, column: 5)
!3350 = !DILocation(line: 609, scope: !3346)
!3351 = !DILocalVariable(name: "i", scope: !3331, file: !71, line: 605, type: !15)
!3352 = !DILocation(line: 609, column: 39, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3346, file: !71, line: 609, column: 9)
!3354 = !DILocation(line: 609, column: 29, scope: !3353)
!3355 = !DILocation(line: 609, column: 27, scope: !3353)
!3356 = !DILocation(line: 609, column: 23, scope: !3353)
!3357 = !DILocation(line: 612, column: 54, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3353, file: !71, line: 609, column: 55)
!3359 = !DILocation(line: 612, column: 44, scope: !3358)
!3360 = !DILocation(line: 612, column: 69, scope: !3358)
!3361 = !DILocation(line: 612, column: 81, scope: !3358)
!3362 = !DILocation(line: 612, column: 79, scope: !3358)
!3363 = !DILocation(line: 612, column: 65, scope: !3358)
!3364 = !DILocation(line: 612, column: 59, scope: !3358)
!3365 = !DILocation(line: 612, column: 20, scope: !3358)
!3366 = !DILocation(line: 612, column: 32, scope: !3358)
!3367 = !DILocation(line: 612, column: 30, scope: !3358)
!3368 = !DILocation(line: 612, column: 35, scope: !3358)
!3369 = !DILocation(line: 612, column: 13, scope: !3358)
!3370 = !DILocation(line: 612, column: 41, scope: !3358)
!3371 = !DILocation(line: 609, column: 51, scope: !3353)
!3372 = !DILocation(line: 609, column: 9, scope: !3353)
!3373 = distinct !{!3373, !3345, !3374, !323}
!3374 = !DILocation(line: 613, column: 9, scope: !3346)
!3375 = !DILocation(line: 614, column: 30, scope: !3347)
!3376 = !DILocation(line: 614, column: 17, scope: !3347)
!3377 = !DILocation(line: 614, column: 14, scope: !3347)
!3378 = !DILocation(line: 615, column: 11, scope: !3347)
!3379 = !DILocation(line: 616, column: 9, scope: !3347)
!3380 = !DILocation(line: 616, column: 19, scope: !3347)
!3381 = !DILocation(line: 618, column: 9, scope: !3347)
!3382 = distinct !{!3382, !3339, !3383, !323}
!3383 = !DILocation(line: 619, column: 5, scope: !3331)
!3384 = !DILocation(line: 621, scope: !3349)
!3385 = !DILocation(line: 621, column: 19, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3349, file: !71, line: 621, column: 5)
!3387 = !DILocation(line: 622, column: 50, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3386, file: !71, line: 621, column: 32)
!3389 = !DILocation(line: 622, column: 40, scope: !3388)
!3390 = !DILocation(line: 622, column: 65, scope: !3388)
!3391 = !DILocation(line: 622, column: 77, scope: !3388)
!3392 = !DILocation(line: 622, column: 75, scope: !3388)
!3393 = !DILocation(line: 622, column: 61, scope: !3388)
!3394 = !DILocation(line: 622, column: 55, scope: !3388)
!3395 = !DILocation(line: 622, column: 16, scope: !3388)
!3396 = !DILocation(line: 622, column: 28, scope: !3388)
!3397 = !DILocation(line: 622, column: 26, scope: !3388)
!3398 = !DILocation(line: 622, column: 31, scope: !3388)
!3399 = !DILocation(line: 622, column: 9, scope: !3388)
!3400 = !DILocation(line: 622, column: 37, scope: !3388)
!3401 = !DILocation(line: 621, column: 28, scope: !3386)
!3402 = !DILocation(line: 621, column: 5, scope: !3386)
!3403 = distinct !{!3403, !3348, !3404, !323}
!3404 = !DILocation(line: 623, column: 5, scope: !3349)
!3405 = !DILocation(line: 624, column: 18, scope: !3331)
!3406 = !DILocation(line: 624, column: 5, scope: !3331)
!3407 = !DILocation(line: 624, column: 15, scope: !3331)
!3408 = !DILocation(line: 625, column: 1, scope: !3331)
!3409 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3410 = !DILocalVariable(name: "state", arg: 1, scope: !3409, file: !71, line: 236, type: !5)
!3411 = !DILocation(line: 0, scope: !3409)
!3412 = !DILocation(line: 253, column: 11, scope: !3409)
!3413 = !DILocalVariable(name: "Aba", scope: !3409, file: !71, line: 239, type: !6)
!3414 = !DILocation(line: 254, column: 11, scope: !3409)
!3415 = !DILocalVariable(name: "Abe", scope: !3409, file: !71, line: 239, type: !6)
!3416 = !DILocation(line: 255, column: 11, scope: !3409)
!3417 = !DILocalVariable(name: "Abi", scope: !3409, file: !71, line: 239, type: !6)
!3418 = !DILocation(line: 256, column: 11, scope: !3409)
!3419 = !DILocalVariable(name: "Abo", scope: !3409, file: !71, line: 239, type: !6)
!3420 = !DILocation(line: 257, column: 11, scope: !3409)
!3421 = !DILocalVariable(name: "Abu", scope: !3409, file: !71, line: 239, type: !6)
!3422 = !DILocation(line: 258, column: 11, scope: !3409)
!3423 = !DILocalVariable(name: "Aga", scope: !3409, file: !71, line: 240, type: !6)
!3424 = !DILocation(line: 259, column: 11, scope: !3409)
!3425 = !DILocalVariable(name: "Age", scope: !3409, file: !71, line: 240, type: !6)
!3426 = !DILocation(line: 260, column: 11, scope: !3409)
!3427 = !DILocalVariable(name: "Agi", scope: !3409, file: !71, line: 240, type: !6)
!3428 = !DILocation(line: 261, column: 11, scope: !3409)
!3429 = !DILocalVariable(name: "Ago", scope: !3409, file: !71, line: 240, type: !6)
!3430 = !DILocation(line: 262, column: 11, scope: !3409)
!3431 = !DILocalVariable(name: "Agu", scope: !3409, file: !71, line: 240, type: !6)
!3432 = !DILocation(line: 263, column: 11, scope: !3409)
!3433 = !DILocalVariable(name: "Aka", scope: !3409, file: !71, line: 241, type: !6)
!3434 = !DILocation(line: 264, column: 11, scope: !3409)
!3435 = !DILocalVariable(name: "Ake", scope: !3409, file: !71, line: 241, type: !6)
!3436 = !DILocation(line: 265, column: 11, scope: !3409)
!3437 = !DILocalVariable(name: "Aki", scope: !3409, file: !71, line: 241, type: !6)
!3438 = !DILocation(line: 266, column: 11, scope: !3409)
!3439 = !DILocalVariable(name: "Ako", scope: !3409, file: !71, line: 241, type: !6)
!3440 = !DILocation(line: 267, column: 11, scope: !3409)
!3441 = !DILocalVariable(name: "Aku", scope: !3409, file: !71, line: 241, type: !6)
!3442 = !DILocation(line: 268, column: 11, scope: !3409)
!3443 = !DILocalVariable(name: "Ama", scope: !3409, file: !71, line: 242, type: !6)
!3444 = !DILocation(line: 269, column: 11, scope: !3409)
!3445 = !DILocalVariable(name: "Ame", scope: !3409, file: !71, line: 242, type: !6)
!3446 = !DILocation(line: 270, column: 11, scope: !3409)
!3447 = !DILocalVariable(name: "Ami", scope: !3409, file: !71, line: 242, type: !6)
!3448 = !DILocation(line: 271, column: 11, scope: !3409)
!3449 = !DILocalVariable(name: "Amo", scope: !3409, file: !71, line: 242, type: !6)
!3450 = !DILocation(line: 272, column: 11, scope: !3409)
!3451 = !DILocalVariable(name: "Amu", scope: !3409, file: !71, line: 242, type: !6)
!3452 = !DILocation(line: 273, column: 11, scope: !3409)
!3453 = !DILocalVariable(name: "Asa", scope: !3409, file: !71, line: 243, type: !6)
!3454 = !DILocation(line: 274, column: 11, scope: !3409)
!3455 = !DILocalVariable(name: "Ase", scope: !3409, file: !71, line: 243, type: !6)
!3456 = !DILocation(line: 275, column: 11, scope: !3409)
!3457 = !DILocalVariable(name: "Asi", scope: !3409, file: !71, line: 243, type: !6)
!3458 = !DILocation(line: 276, column: 11, scope: !3409)
!3459 = !DILocalVariable(name: "Aso", scope: !3409, file: !71, line: 243, type: !6)
!3460 = !DILocation(line: 277, column: 11, scope: !3409)
!3461 = !DILocalVariable(name: "Asu", scope: !3409, file: !71, line: 243, type: !6)
!3462 = !DILocalVariable(name: "round", scope: !3409, file: !71, line: 237, type: !45)
!3463 = !DILocation(line: 279, column: 10, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3409, file: !71, line: 279, column: 5)
!3465 = !DILocation(line: 279, scope: !3464)
!3466 = !DILocation(line: 279, column: 27, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3464, file: !71, line: 279, column: 5)
!3468 = !DILocation(line: 279, column: 5, scope: !3464)
!3469 = !DILocalVariable(name: "BCa", scope: !3409, file: !71, line: 244, type: !6)
!3470 = !DILocalVariable(name: "BCe", scope: !3409, file: !71, line: 244, type: !6)
!3471 = !DILocalVariable(name: "BCi", scope: !3409, file: !71, line: 244, type: !6)
!3472 = !DILocalVariable(name: "BCo", scope: !3409, file: !71, line: 244, type: !6)
!3473 = !DILocalVariable(name: "BCu", scope: !3409, file: !71, line: 244, type: !6)
!3474 = !DILocalVariable(name: "Da", scope: !3409, file: !71, line: 245, type: !6)
!3475 = !DILocalVariable(name: "De", scope: !3409, file: !71, line: 245, type: !6)
!3476 = !DILocalVariable(name: "Di", scope: !3409, file: !71, line: 245, type: !6)
!3477 = !DILocalVariable(name: "Do", scope: !3409, file: !71, line: 245, type: !6)
!3478 = !DILocalVariable(name: "Du", scope: !3409, file: !71, line: 245, type: !6)
!3479 = !DILocalVariable(name: "Eba", scope: !3409, file: !71, line: 246, type: !6)
!3480 = !DILocalVariable(name: "Ebe", scope: !3409, file: !71, line: 246, type: !6)
!3481 = !DILocalVariable(name: "Ebi", scope: !3409, file: !71, line: 246, type: !6)
!3482 = !DILocalVariable(name: "Ebo", scope: !3409, file: !71, line: 246, type: !6)
!3483 = !DILocalVariable(name: "Ebu", scope: !3409, file: !71, line: 246, type: !6)
!3484 = !DILocalVariable(name: "Ega", scope: !3409, file: !71, line: 247, type: !6)
!3485 = !DILocalVariable(name: "Ege", scope: !3409, file: !71, line: 247, type: !6)
!3486 = !DILocalVariable(name: "Egi", scope: !3409, file: !71, line: 247, type: !6)
!3487 = !DILocalVariable(name: "Ego", scope: !3409, file: !71, line: 247, type: !6)
!3488 = !DILocalVariable(name: "Egu", scope: !3409, file: !71, line: 247, type: !6)
!3489 = !DILocalVariable(name: "Eka", scope: !3409, file: !71, line: 248, type: !6)
!3490 = !DILocalVariable(name: "Eke", scope: !3409, file: !71, line: 248, type: !6)
!3491 = !DILocalVariable(name: "Eki", scope: !3409, file: !71, line: 248, type: !6)
!3492 = !DILocalVariable(name: "Eko", scope: !3409, file: !71, line: 248, type: !6)
!3493 = !DILocalVariable(name: "Eku", scope: !3409, file: !71, line: 248, type: !6)
!3494 = !DILocalVariable(name: "Ema", scope: !3409, file: !71, line: 249, type: !6)
!3495 = !DILocalVariable(name: "Eme", scope: !3409, file: !71, line: 249, type: !6)
!3496 = !DILocalVariable(name: "Emi", scope: !3409, file: !71, line: 249, type: !6)
!3497 = !DILocalVariable(name: "Emo", scope: !3409, file: !71, line: 249, type: !6)
!3498 = !DILocalVariable(name: "Emu", scope: !3409, file: !71, line: 249, type: !6)
!3499 = !DILocalVariable(name: "Esa", scope: !3409, file: !71, line: 250, type: !6)
!3500 = !DILocalVariable(name: "Ese", scope: !3409, file: !71, line: 250, type: !6)
!3501 = !DILocalVariable(name: "Esi", scope: !3409, file: !71, line: 250, type: !6)
!3502 = !DILocalVariable(name: "Eso", scope: !3409, file: !71, line: 250, type: !6)
!3503 = !DILocalVariable(name: "Esu", scope: !3409, file: !71, line: 250, type: !6)
!3504 = !DILocation(line: 283, column: 19, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3467, file: !71, line: 279, column: 50)
!3506 = !DILocation(line: 283, column: 25, scope: !3505)
!3507 = !DILocation(line: 283, column: 31, scope: !3505)
!3508 = !DILocation(line: 283, column: 37, scope: !3505)
!3509 = !DILocation(line: 285, column: 19, scope: !3505)
!3510 = !DILocation(line: 285, column: 25, scope: !3505)
!3511 = !DILocation(line: 285, column: 31, scope: !3505)
!3512 = !DILocation(line: 285, column: 37, scope: !3505)
!3513 = !DILocation(line: 291, column: 20, scope: !3505)
!3514 = !DILocation(line: 291, column: 18, scope: !3505)
!3515 = !DILocation(line: 361, column: 13, scope: !3505)
!3516 = !DILocation(line: 362, column: 15, scope: !3505)
!3517 = !DILocation(line: 282, column: 19, scope: !3505)
!3518 = !DILocation(line: 282, column: 25, scope: !3505)
!3519 = !DILocation(line: 282, column: 31, scope: !3505)
!3520 = !DILocation(line: 282, column: 37, scope: !3505)
!3521 = !DILocation(line: 288, column: 20, scope: !3505)
!3522 = !DILocation(line: 288, column: 18, scope: !3505)
!3523 = !DILocation(line: 365, column: 13, scope: !3505)
!3524 = !DILocation(line: 366, column: 15, scope: !3505)
!3525 = !DILocation(line: 284, column: 19, scope: !3505)
!3526 = !DILocation(line: 284, column: 25, scope: !3505)
!3527 = !DILocation(line: 284, column: 31, scope: !3505)
!3528 = !DILocation(line: 284, column: 37, scope: !3505)
!3529 = !DILocation(line: 281, column: 19, scope: !3505)
!3530 = !DILocation(line: 281, column: 25, scope: !3505)
!3531 = !DILocation(line: 281, column: 31, scope: !3505)
!3532 = !DILocation(line: 281, column: 37, scope: !3505)
!3533 = !DILocation(line: 292, column: 20, scope: !3505)
!3534 = !DILocation(line: 292, column: 18, scope: !3505)
!3535 = !DILocation(line: 363, column: 13, scope: !3505)
!3536 = !DILocation(line: 364, column: 15, scope: !3505)
!3537 = !DILocation(line: 370, column: 23, scope: !3505)
!3538 = !DILocation(line: 370, column: 29, scope: !3505)
!3539 = !DILocation(line: 370, column: 19, scope: !3505)
!3540 = !DILocation(line: 290, column: 20, scope: !3505)
!3541 = !DILocation(line: 290, column: 18, scope: !3505)
!3542 = !DILocation(line: 298, column: 13, scope: !3505)
!3543 = !DILocation(line: 299, column: 15, scope: !3505)
!3544 = !DILocation(line: 289, column: 20, scope: !3505)
!3545 = !DILocation(line: 289, column: 18, scope: !3505)
!3546 = !DILocation(line: 296, column: 13, scope: !3505)
!3547 = !DILocation(line: 297, column: 15, scope: !3505)
!3548 = !DILocation(line: 304, column: 23, scope: !3505)
!3549 = !DILocation(line: 304, column: 29, scope: !3505)
!3550 = !DILocation(line: 305, column: 16, scope: !3505)
!3551 = !DILocation(line: 305, column: 13, scope: !3505)
!3552 = !DILocation(line: 294, column: 13, scope: !3505)
!3553 = !DILocation(line: 311, column: 13, scope: !3505)
!3554 = !DILocation(line: 312, column: 15, scope: !3505)
!3555 = !DILocation(line: 315, column: 13, scope: !3505)
!3556 = !DILocation(line: 316, column: 15, scope: !3505)
!3557 = !DILocation(line: 313, column: 13, scope: !3505)
!3558 = !DILocation(line: 314, column: 15, scope: !3505)
!3559 = !DILocation(line: 321, column: 23, scope: !3505)
!3560 = !DILocation(line: 321, column: 29, scope: !3505)
!3561 = !DILocation(line: 321, column: 19, scope: !3505)
!3562 = !DILocation(line: 376, column: 19, scope: !3505)
!3563 = !DILocation(line: 327, column: 13, scope: !3505)
!3564 = !DILocation(line: 328, column: 15, scope: !3505)
!3565 = !DILocation(line: 331, column: 13, scope: !3505)
!3566 = !DILocation(line: 332, column: 15, scope: !3505)
!3567 = !DILocation(line: 329, column: 13, scope: !3505)
!3568 = !DILocation(line: 330, column: 15, scope: !3505)
!3569 = !DILocation(line: 337, column: 23, scope: !3505)
!3570 = !DILocation(line: 337, column: 29, scope: !3505)
!3571 = !DILocation(line: 337, column: 19, scope: !3505)
!3572 = !DILocation(line: 376, column: 25, scope: !3505)
!3573 = !DILocation(line: 343, column: 13, scope: !3505)
!3574 = !DILocation(line: 344, column: 15, scope: !3505)
!3575 = !DILocation(line: 347, column: 13, scope: !3505)
!3576 = !DILocation(line: 348, column: 15, scope: !3505)
!3577 = !DILocation(line: 345, column: 13, scope: !3505)
!3578 = !DILocation(line: 346, column: 15, scope: !3505)
!3579 = !DILocation(line: 353, column: 23, scope: !3505)
!3580 = !DILocation(line: 353, column: 29, scope: !3505)
!3581 = !DILocation(line: 353, column: 19, scope: !3505)
!3582 = !DILocation(line: 376, column: 31, scope: !3505)
!3583 = !DILocation(line: 359, column: 13, scope: !3505)
!3584 = !DILocation(line: 360, column: 15, scope: !3505)
!3585 = !DILocation(line: 369, column: 23, scope: !3505)
!3586 = !DILocation(line: 369, column: 29, scope: !3505)
!3587 = !DILocation(line: 369, column: 19, scope: !3505)
!3588 = !DILocation(line: 376, column: 37, scope: !3505)
!3589 = !DILocation(line: 302, column: 13, scope: !3505)
!3590 = !DILocation(line: 303, column: 15, scope: !3505)
!3591 = !DILocation(line: 300, column: 13, scope: !3505)
!3592 = !DILocation(line: 301, column: 15, scope: !3505)
!3593 = !DILocation(line: 307, column: 23, scope: !3505)
!3594 = !DILocation(line: 307, column: 29, scope: !3505)
!3595 = !DILocation(line: 307, column: 19, scope: !3505)
!3596 = !DILocation(line: 319, column: 13, scope: !3505)
!3597 = !DILocation(line: 320, column: 15, scope: !3505)
!3598 = !DILocation(line: 317, column: 13, scope: !3505)
!3599 = !DILocation(line: 318, column: 15, scope: !3505)
!3600 = !DILocation(line: 323, column: 23, scope: !3505)
!3601 = !DILocation(line: 323, column: 29, scope: !3505)
!3602 = !DILocation(line: 323, column: 19, scope: !3505)
!3603 = !DILocation(line: 378, column: 19, scope: !3505)
!3604 = !DILocation(line: 335, column: 13, scope: !3505)
!3605 = !DILocation(line: 336, column: 15, scope: !3505)
!3606 = !DILocation(line: 333, column: 13, scope: !3505)
!3607 = !DILocation(line: 334, column: 15, scope: !3505)
!3608 = !DILocation(line: 339, column: 23, scope: !3505)
!3609 = !DILocation(line: 339, column: 29, scope: !3505)
!3610 = !DILocation(line: 339, column: 19, scope: !3505)
!3611 = !DILocation(line: 378, column: 25, scope: !3505)
!3612 = !DILocation(line: 351, column: 13, scope: !3505)
!3613 = !DILocation(line: 352, column: 15, scope: !3505)
!3614 = !DILocation(line: 349, column: 13, scope: !3505)
!3615 = !DILocation(line: 350, column: 15, scope: !3505)
!3616 = !DILocation(line: 355, column: 23, scope: !3505)
!3617 = !DILocation(line: 355, column: 29, scope: !3505)
!3618 = !DILocation(line: 355, column: 19, scope: !3505)
!3619 = !DILocation(line: 378, column: 31, scope: !3505)
!3620 = !DILocation(line: 367, column: 13, scope: !3505)
!3621 = !DILocation(line: 368, column: 15, scope: !3505)
!3622 = !DILocation(line: 371, column: 23, scope: !3505)
!3623 = !DILocation(line: 371, column: 29, scope: !3505)
!3624 = !DILocation(line: 371, column: 19, scope: !3505)
!3625 = !DILocation(line: 378, column: 37, scope: !3505)
!3626 = !DILocation(line: 384, column: 20, scope: !3505)
!3627 = !DILocation(line: 384, column: 18, scope: !3505)
!3628 = !DILocation(line: 462, column: 13, scope: !3505)
!3629 = !DILocation(line: 463, column: 15, scope: !3505)
!3630 = !DILocation(line: 324, column: 23, scope: !3505)
!3631 = !DILocation(line: 324, column: 29, scope: !3505)
!3632 = !DILocation(line: 324, column: 19, scope: !3505)
!3633 = !DILocation(line: 309, column: 23, scope: !3505)
!3634 = !DILocation(line: 309, column: 29, scope: !3505)
!3635 = !DILocation(line: 309, column: 19, scope: !3505)
!3636 = !DILocation(line: 325, column: 23, scope: !3505)
!3637 = !DILocation(line: 325, column: 29, scope: !3505)
!3638 = !DILocation(line: 325, column: 19, scope: !3505)
!3639 = !DILocation(line: 380, column: 19, scope: !3505)
!3640 = !DILocation(line: 341, column: 23, scope: !3505)
!3641 = !DILocation(line: 341, column: 29, scope: !3505)
!3642 = !DILocation(line: 341, column: 19, scope: !3505)
!3643 = !DILocation(line: 380, column: 25, scope: !3505)
!3644 = !DILocation(line: 357, column: 23, scope: !3505)
!3645 = !DILocation(line: 357, column: 29, scope: !3505)
!3646 = !DILocation(line: 357, column: 19, scope: !3505)
!3647 = !DILocation(line: 380, column: 31, scope: !3505)
!3648 = !DILocation(line: 373, column: 23, scope: !3505)
!3649 = !DILocation(line: 373, column: 29, scope: !3505)
!3650 = !DILocation(line: 373, column: 19, scope: !3505)
!3651 = !DILocation(line: 380, column: 37, scope: !3505)
!3652 = !DILocation(line: 386, column: 20, scope: !3505)
!3653 = !DILocation(line: 386, column: 18, scope: !3505)
!3654 = !DILocation(line: 456, column: 13, scope: !3505)
!3655 = !DILocation(line: 457, column: 15, scope: !3505)
!3656 = !DILocation(line: 306, column: 23, scope: !3505)
!3657 = !DILocation(line: 306, column: 29, scope: !3505)
!3658 = !DILocation(line: 306, column: 19, scope: !3505)
!3659 = !DILocation(line: 322, column: 23, scope: !3505)
!3660 = !DILocation(line: 322, column: 29, scope: !3505)
!3661 = !DILocation(line: 322, column: 19, scope: !3505)
!3662 = !DILocation(line: 377, column: 19, scope: !3505)
!3663 = !DILocation(line: 338, column: 23, scope: !3505)
!3664 = !DILocation(line: 338, column: 29, scope: !3505)
!3665 = !DILocation(line: 338, column: 19, scope: !3505)
!3666 = !DILocation(line: 377, column: 25, scope: !3505)
!3667 = !DILocation(line: 354, column: 23, scope: !3505)
!3668 = !DILocation(line: 354, column: 29, scope: !3505)
!3669 = !DILocation(line: 354, column: 19, scope: !3505)
!3670 = !DILocation(line: 377, column: 31, scope: !3505)
!3671 = !DILocation(line: 377, column: 37, scope: !3505)
!3672 = !DILocation(line: 308, column: 23, scope: !3505)
!3673 = !DILocation(line: 308, column: 29, scope: !3505)
!3674 = !DILocation(line: 308, column: 19, scope: !3505)
!3675 = !DILocation(line: 379, column: 19, scope: !3505)
!3676 = !DILocation(line: 340, column: 23, scope: !3505)
!3677 = !DILocation(line: 340, column: 29, scope: !3505)
!3678 = !DILocation(line: 340, column: 19, scope: !3505)
!3679 = !DILocation(line: 379, column: 25, scope: !3505)
!3680 = !DILocation(line: 356, column: 23, scope: !3505)
!3681 = !DILocation(line: 356, column: 29, scope: !3505)
!3682 = !DILocation(line: 356, column: 19, scope: !3505)
!3683 = !DILocation(line: 379, column: 31, scope: !3505)
!3684 = !DILocation(line: 372, column: 23, scope: !3505)
!3685 = !DILocation(line: 372, column: 29, scope: !3505)
!3686 = !DILocation(line: 372, column: 19, scope: !3505)
!3687 = !DILocation(line: 379, column: 37, scope: !3505)
!3688 = !DILocation(line: 385, column: 20, scope: !3505)
!3689 = !DILocation(line: 385, column: 18, scope: !3505)
!3690 = !DILocation(line: 454, column: 13, scope: !3505)
!3691 = !DILocation(line: 455, column: 15, scope: !3505)
!3692 = !DILocation(line: 468, column: 23, scope: !3505)
!3693 = !DILocation(line: 468, column: 29, scope: !3505)
!3694 = !DILocation(line: 468, column: 19, scope: !3505)
!3695 = !DILocation(line: 383, column: 20, scope: !3505)
!3696 = !DILocation(line: 383, column: 18, scope: !3505)
!3697 = !DILocation(line: 460, column: 13, scope: !3505)
!3698 = !DILocation(line: 461, column: 15, scope: !3505)
!3699 = !DILocation(line: 467, column: 23, scope: !3505)
!3700 = !DILocation(line: 467, column: 29, scope: !3505)
!3701 = !DILocation(line: 467, column: 19, scope: !3505)
!3702 = !DILocation(line: 387, column: 20, scope: !3505)
!3703 = !DILocation(line: 387, column: 18, scope: !3505)
!3704 = !DILocation(line: 458, column: 13, scope: !3505)
!3705 = !DILocation(line: 459, column: 15, scope: !3505)
!3706 = !DILocation(line: 466, column: 23, scope: !3505)
!3707 = !DILocation(line: 466, column: 29, scope: !3505)
!3708 = !DILocation(line: 466, column: 19, scope: !3505)
!3709 = !DILocation(line: 465, column: 23, scope: !3505)
!3710 = !DILocation(line: 465, column: 29, scope: !3505)
!3711 = !DILocation(line: 465, column: 19, scope: !3505)
!3712 = !DILocation(line: 464, column: 23, scope: !3505)
!3713 = !DILocation(line: 464, column: 29, scope: !3505)
!3714 = !DILocation(line: 464, column: 19, scope: !3505)
!3715 = !DILocation(line: 446, column: 13, scope: !3505)
!3716 = !DILocation(line: 447, column: 15, scope: !3505)
!3717 = !DILocation(line: 440, column: 13, scope: !3505)
!3718 = !DILocation(line: 441, column: 15, scope: !3505)
!3719 = !DILocation(line: 438, column: 13, scope: !3505)
!3720 = !DILocation(line: 439, column: 15, scope: !3505)
!3721 = !DILocation(line: 452, column: 23, scope: !3505)
!3722 = !DILocation(line: 452, column: 29, scope: !3505)
!3723 = !DILocation(line: 452, column: 19, scope: !3505)
!3724 = !DILocation(line: 444, column: 13, scope: !3505)
!3725 = !DILocation(line: 445, column: 15, scope: !3505)
!3726 = !DILocation(line: 451, column: 23, scope: !3505)
!3727 = !DILocation(line: 451, column: 29, scope: !3505)
!3728 = !DILocation(line: 451, column: 19, scope: !3505)
!3729 = !DILocation(line: 442, column: 13, scope: !3505)
!3730 = !DILocation(line: 443, column: 15, scope: !3505)
!3731 = !DILocation(line: 450, column: 23, scope: !3505)
!3732 = !DILocation(line: 450, column: 29, scope: !3505)
!3733 = !DILocation(line: 450, column: 19, scope: !3505)
!3734 = !DILocation(line: 449, column: 23, scope: !3505)
!3735 = !DILocation(line: 449, column: 29, scope: !3505)
!3736 = !DILocation(line: 449, column: 19, scope: !3505)
!3737 = !DILocation(line: 448, column: 23, scope: !3505)
!3738 = !DILocation(line: 448, column: 29, scope: !3505)
!3739 = !DILocation(line: 448, column: 19, scope: !3505)
!3740 = !DILocation(line: 430, column: 13, scope: !3505)
!3741 = !DILocation(line: 431, column: 15, scope: !3505)
!3742 = !DILocation(line: 424, column: 13, scope: !3505)
!3743 = !DILocation(line: 425, column: 15, scope: !3505)
!3744 = !DILocation(line: 422, column: 13, scope: !3505)
!3745 = !DILocation(line: 423, column: 15, scope: !3505)
!3746 = !DILocation(line: 436, column: 23, scope: !3505)
!3747 = !DILocation(line: 436, column: 29, scope: !3505)
!3748 = !DILocation(line: 436, column: 19, scope: !3505)
!3749 = !DILocation(line: 428, column: 13, scope: !3505)
!3750 = !DILocation(line: 429, column: 15, scope: !3505)
!3751 = !DILocation(line: 435, column: 23, scope: !3505)
!3752 = !DILocation(line: 435, column: 29, scope: !3505)
!3753 = !DILocation(line: 435, column: 19, scope: !3505)
!3754 = !DILocation(line: 426, column: 13, scope: !3505)
!3755 = !DILocation(line: 427, column: 15, scope: !3505)
!3756 = !DILocation(line: 434, column: 23, scope: !3505)
!3757 = !DILocation(line: 434, column: 29, scope: !3505)
!3758 = !DILocation(line: 434, column: 19, scope: !3505)
!3759 = !DILocation(line: 433, column: 23, scope: !3505)
!3760 = !DILocation(line: 433, column: 29, scope: !3505)
!3761 = !DILocation(line: 433, column: 19, scope: !3505)
!3762 = !DILocation(line: 432, column: 23, scope: !3505)
!3763 = !DILocation(line: 432, column: 29, scope: !3505)
!3764 = !DILocation(line: 432, column: 19, scope: !3505)
!3765 = !DILocation(line: 414, column: 13, scope: !3505)
!3766 = !DILocation(line: 415, column: 15, scope: !3505)
!3767 = !DILocation(line: 408, column: 13, scope: !3505)
!3768 = !DILocation(line: 409, column: 15, scope: !3505)
!3769 = !DILocation(line: 406, column: 13, scope: !3505)
!3770 = !DILocation(line: 407, column: 15, scope: !3505)
!3771 = !DILocation(line: 420, column: 23, scope: !3505)
!3772 = !DILocation(line: 420, column: 29, scope: !3505)
!3773 = !DILocation(line: 420, column: 19, scope: !3505)
!3774 = !DILocation(line: 412, column: 13, scope: !3505)
!3775 = !DILocation(line: 413, column: 15, scope: !3505)
!3776 = !DILocation(line: 419, column: 23, scope: !3505)
!3777 = !DILocation(line: 419, column: 29, scope: !3505)
!3778 = !DILocation(line: 419, column: 19, scope: !3505)
!3779 = !DILocation(line: 410, column: 13, scope: !3505)
!3780 = !DILocation(line: 411, column: 15, scope: !3505)
!3781 = !DILocation(line: 418, column: 23, scope: !3505)
!3782 = !DILocation(line: 418, column: 29, scope: !3505)
!3783 = !DILocation(line: 418, column: 19, scope: !3505)
!3784 = !DILocation(line: 417, column: 23, scope: !3505)
!3785 = !DILocation(line: 417, column: 29, scope: !3505)
!3786 = !DILocation(line: 417, column: 19, scope: !3505)
!3787 = !DILocation(line: 416, column: 23, scope: !3505)
!3788 = !DILocation(line: 416, column: 29, scope: !3505)
!3789 = !DILocation(line: 416, column: 19, scope: !3505)
!3790 = !DILocation(line: 397, column: 13, scope: !3505)
!3791 = !DILocation(line: 398, column: 15, scope: !3505)
!3792 = !DILocation(line: 391, column: 13, scope: !3505)
!3793 = !DILocation(line: 392, column: 15, scope: !3505)
!3794 = !DILocation(line: 389, column: 13, scope: !3505)
!3795 = !DILocation(line: 404, column: 23, scope: !3505)
!3796 = !DILocation(line: 404, column: 29, scope: !3505)
!3797 = !DILocation(line: 404, column: 19, scope: !3505)
!3798 = !DILocation(line: 395, column: 13, scope: !3505)
!3799 = !DILocation(line: 396, column: 15, scope: !3505)
!3800 = !DILocation(line: 403, column: 23, scope: !3505)
!3801 = !DILocation(line: 403, column: 29, scope: !3505)
!3802 = !DILocation(line: 403, column: 19, scope: !3505)
!3803 = !DILocation(line: 393, column: 13, scope: !3505)
!3804 = !DILocation(line: 394, column: 15, scope: !3505)
!3805 = !DILocation(line: 402, column: 23, scope: !3505)
!3806 = !DILocation(line: 402, column: 29, scope: !3505)
!3807 = !DILocation(line: 402, column: 19, scope: !3505)
!3808 = !DILocation(line: 401, column: 23, scope: !3505)
!3809 = !DILocation(line: 401, column: 29, scope: !3505)
!3810 = !DILocation(line: 401, column: 19, scope: !3505)
!3811 = !DILocation(line: 400, column: 45, scope: !3505)
!3812 = !DILocation(line: 400, column: 16, scope: !3505)
!3813 = !DILocation(line: 399, column: 23, scope: !3505)
!3814 = !DILocation(line: 399, column: 29, scope: !3505)
!3815 = !DILocation(line: 400, column: 13, scope: !3505)
!3816 = !DILocation(line: 279, column: 44, scope: !3467)
!3817 = !DILocation(line: 279, column: 5, scope: !3467)
!3818 = distinct !{!3818, !3468, !3819, !323}
!3819 = !DILocation(line: 469, column: 5, scope: !3464)
!3820 = !DILocation(line: 472, column: 14, scope: !3409)
!3821 = !DILocation(line: 473, column: 5, scope: !3409)
!3822 = !DILocation(line: 473, column: 14, scope: !3409)
!3823 = !DILocation(line: 474, column: 5, scope: !3409)
!3824 = !DILocation(line: 474, column: 14, scope: !3409)
!3825 = !DILocation(line: 475, column: 5, scope: !3409)
!3826 = !DILocation(line: 475, column: 14, scope: !3409)
!3827 = !DILocation(line: 476, column: 5, scope: !3409)
!3828 = !DILocation(line: 476, column: 14, scope: !3409)
!3829 = !DILocation(line: 477, column: 5, scope: !3409)
!3830 = !DILocation(line: 477, column: 14, scope: !3409)
!3831 = !DILocation(line: 478, column: 5, scope: !3409)
!3832 = !DILocation(line: 478, column: 14, scope: !3409)
!3833 = !DILocation(line: 479, column: 5, scope: !3409)
!3834 = !DILocation(line: 479, column: 14, scope: !3409)
!3835 = !DILocation(line: 480, column: 5, scope: !3409)
!3836 = !DILocation(line: 480, column: 14, scope: !3409)
!3837 = !DILocation(line: 481, column: 5, scope: !3409)
!3838 = !DILocation(line: 481, column: 14, scope: !3409)
!3839 = !DILocation(line: 482, column: 5, scope: !3409)
!3840 = !DILocation(line: 482, column: 15, scope: !3409)
!3841 = !DILocation(line: 483, column: 5, scope: !3409)
!3842 = !DILocation(line: 483, column: 15, scope: !3409)
!3843 = !DILocation(line: 484, column: 5, scope: !3409)
!3844 = !DILocation(line: 484, column: 15, scope: !3409)
!3845 = !DILocation(line: 485, column: 5, scope: !3409)
!3846 = !DILocation(line: 485, column: 15, scope: !3409)
!3847 = !DILocation(line: 486, column: 5, scope: !3409)
!3848 = !DILocation(line: 486, column: 15, scope: !3409)
!3849 = !DILocation(line: 487, column: 5, scope: !3409)
!3850 = !DILocation(line: 487, column: 15, scope: !3409)
!3851 = !DILocation(line: 488, column: 5, scope: !3409)
!3852 = !DILocation(line: 488, column: 15, scope: !3409)
!3853 = !DILocation(line: 489, column: 5, scope: !3409)
!3854 = !DILocation(line: 489, column: 15, scope: !3409)
!3855 = !DILocation(line: 490, column: 5, scope: !3409)
!3856 = !DILocation(line: 490, column: 15, scope: !3409)
!3857 = !DILocation(line: 491, column: 5, scope: !3409)
!3858 = !DILocation(line: 491, column: 15, scope: !3409)
!3859 = !DILocation(line: 492, column: 5, scope: !3409)
!3860 = !DILocation(line: 492, column: 15, scope: !3409)
!3861 = !DILocation(line: 493, column: 5, scope: !3409)
!3862 = !DILocation(line: 493, column: 15, scope: !3409)
!3863 = !DILocation(line: 494, column: 5, scope: !3409)
!3864 = !DILocation(line: 494, column: 15, scope: !3409)
!3865 = !DILocation(line: 495, column: 5, scope: !3409)
!3866 = !DILocation(line: 495, column: 15, scope: !3409)
!3867 = !DILocation(line: 496, column: 5, scope: !3409)
!3868 = !DILocation(line: 496, column: 15, scope: !3409)
!3869 = !DILocation(line: 497, column: 1, scope: !3409)
!3870 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3280, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3871 = !DILocalVariable(name: "state", arg: 1, scope: !3870, file: !71, line: 700, type: !3282)
!3872 = !DILocation(line: 0, scope: !3870)
!3873 = !DILocation(line: 701, column: 32, scope: !3870)
!3874 = !DILocation(line: 701, column: 5, scope: !3870)
!3875 = !DILocation(line: 702, column: 1, scope: !3870)
!3876 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3877, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !5, !19, !12}
!3879 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3876, file: !71, line: 640, type: !5)
!3880 = !DILocation(line: 0, scope: !3876)
!3881 = !DILocalVariable(name: "r", arg: 2, scope: !3876, file: !71, line: 640, type: !19)
!3882 = !DILocalVariable(name: "p", arg: 3, scope: !3876, file: !71, line: 640, type: !12)
!3883 = !DILocation(line: 643, column: 30, scope: !3876)
!3884 = !DILocation(line: 643, column: 51, scope: !3876)
!3885 = !DILocation(line: 643, column: 48, scope: !3876)
!3886 = !DILocation(line: 643, column: 42, scope: !3876)
!3887 = !DILocation(line: 643, column: 21, scope: !3876)
!3888 = !DILocation(line: 643, column: 5, scope: !3876)
!3889 = !DILocation(line: 643, column: 27, scope: !3876)
!3890 = !DILocation(line: 644, column: 48, scope: !3876)
!3891 = !DILocation(line: 644, column: 42, scope: !3876)
!3892 = !DILocation(line: 644, column: 14, scope: !3876)
!3893 = !DILocation(line: 644, column: 19, scope: !3876)
!3894 = !DILocation(line: 644, column: 5, scope: !3876)
!3895 = !DILocation(line: 644, column: 25, scope: !3876)
!3896 = !DILocation(line: 645, column: 5, scope: !3876)
!3897 = !DILocation(line: 645, column: 15, scope: !3876)
!3898 = !DILocation(line: 646, column: 1, scope: !3876)
!3899 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !3900, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !11, !15, !3282}
!3902 = !DILocalVariable(name: "output", arg: 1, scope: !3899, file: !71, line: 704, type: !11)
!3903 = !DILocation(line: 0, scope: !3899)
!3904 = !DILocalVariable(name: "outlen", arg: 2, scope: !3899, file: !71, line: 704, type: !15)
!3905 = !DILocalVariable(name: "state", arg: 3, scope: !3899, file: !71, line: 704, type: !3282)
!3906 = !DILocation(line: 705, column: 47, scope: !3899)
!3907 = !DILocation(line: 705, column: 5, scope: !3899)
!3908 = !DILocation(line: 706, column: 1, scope: !3899)
!3909 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !3910, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !11, !15, !5, !19}
!3912 = !DILocalVariable(name: "h", arg: 1, scope: !3909, file: !71, line: 661, type: !11)
!3913 = !DILocation(line: 0, scope: !3909)
!3914 = !DILocalVariable(name: "outlen", arg: 2, scope: !3909, file: !71, line: 661, type: !15)
!3915 = !DILocalVariable(name: "s_inc", arg: 3, scope: !3909, file: !71, line: 662, type: !5)
!3916 = !DILocalVariable(name: "r", arg: 4, scope: !3909, file: !71, line: 662, type: !19)
!3917 = !DILocalVariable(name: "i", scope: !3909, file: !71, line: 663, type: !15)
!3918 = !DILocation(line: 666, column: 10, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3909, file: !71, line: 666, column: 5)
!3920 = !DILocation(line: 666, scope: !3919)
!3921 = !DILocation(line: 666, column: 19, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3919, file: !71, line: 666, column: 5)
!3923 = !DILocation(line: 666, column: 28, scope: !3922)
!3924 = !DILocation(line: 666, column: 31, scope: !3922)
!3925 = !DILocation(line: 666, column: 35, scope: !3922)
!3926 = !DILocation(line: 666, column: 33, scope: !3922)
!3927 = !DILocation(line: 666, column: 5, scope: !3919)
!3928 = !DILocation(line: 669, column: 33, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3922, file: !71, line: 666, column: 51)
!3930 = !DILocation(line: 669, column: 37, scope: !3929)
!3931 = !DILocation(line: 669, column: 35, scope: !3929)
!3932 = !DILocation(line: 669, column: 49, scope: !3929)
!3933 = !DILocation(line: 669, column: 47, scope: !3929)
!3934 = !DILocation(line: 669, column: 52, scope: !3929)
!3935 = !DILocation(line: 669, column: 26, scope: !3929)
!3936 = !DILocation(line: 669, column: 68, scope: !3929)
!3937 = !DILocation(line: 669, column: 72, scope: !3929)
!3938 = !DILocation(line: 669, column: 70, scope: !3929)
!3939 = !DILocation(line: 669, column: 84, scope: !3929)
!3940 = !DILocation(line: 669, column: 82, scope: !3929)
!3941 = !DILocation(line: 669, column: 64, scope: !3929)
!3942 = !DILocation(line: 669, column: 58, scope: !3929)
!3943 = !DILocation(line: 669, column: 16, scope: !3929)
!3944 = !DILocation(line: 669, column: 9, scope: !3929)
!3945 = !DILocation(line: 669, column: 14, scope: !3929)
!3946 = !DILocation(line: 666, column: 47, scope: !3922)
!3947 = !DILocation(line: 666, column: 5, scope: !3922)
!3948 = distinct !{!3948, !3927, !3949, !323}
!3949 = !DILocation(line: 670, column: 5, scope: !3919)
!3950 = !DILocation(line: 671, column: 7, scope: !3909)
!3951 = !DILocation(line: 672, column: 12, scope: !3909)
!3952 = !DILocation(line: 673, column: 18, scope: !3909)
!3953 = !DILocation(line: 673, column: 5, scope: !3909)
!3954 = !DILocation(line: 673, column: 15, scope: !3909)
!3955 = !DILocation(line: 676, column: 5, scope: !3909)
!3956 = !DILocation(line: 676, column: 19, scope: !3909)
!3957 = !DILocation(line: 677, column: 9, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3909, file: !71, line: 676, column: 24)
!3959 = !DILocation(line: 679, column: 14, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3958, file: !71, line: 679, column: 9)
!3961 = !DILocation(line: 679, scope: !3960)
!3962 = !DILocation(line: 679, column: 32, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3960, file: !71, line: 679, column: 9)
!3964 = !DILocation(line: 679, column: 9, scope: !3960)
!3965 = !DILocation(line: 680, column: 38, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !71, line: 679, column: 47)
!3967 = !DILocation(line: 680, column: 30, scope: !3966)
!3968 = !DILocation(line: 680, column: 50, scope: !3966)
!3969 = !DILocation(line: 680, column: 44, scope: !3966)
!3970 = !DILocation(line: 680, column: 20, scope: !3966)
!3971 = !DILocation(line: 680, column: 13, scope: !3966)
!3972 = !DILocation(line: 680, column: 18, scope: !3966)
!3973 = !DILocation(line: 679, column: 43, scope: !3963)
!3974 = !DILocation(line: 679, column: 9, scope: !3963)
!3975 = distinct !{!3975, !3964, !3976, !323}
!3976 = !DILocation(line: 681, column: 9, scope: !3960)
!3977 = !DILocation(line: 682, column: 11, scope: !3958)
!3978 = !DILocation(line: 683, column: 16, scope: !3958)
!3979 = !DILocation(line: 684, column: 23, scope: !3958)
!3980 = !DILocation(line: 684, column: 21, scope: !3958)
!3981 = !DILocation(line: 684, column: 9, scope: !3958)
!3982 = !DILocation(line: 684, column: 19, scope: !3958)
!3983 = distinct !{!3983, !3955, !3984, !323}
!3984 = !DILocation(line: 685, column: 5, scope: !3909)
!3985 = !DILocation(line: 686, column: 1, scope: !3909)
!3986 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !3987, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3282, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 32)
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3283)
!3991 = !DILocalVariable(name: "dest", arg: 1, scope: !3986, file: !71, line: 708, type: !3282)
!3992 = !DILocation(line: 0, scope: !3986)
!3993 = !DILocalVariable(name: "src", arg: 2, scope: !3986, file: !71, line: 708, type: !3989)
!3994 = !DILocation(line: 709, column: 17, scope: !3986)
!3995 = !DILocation(line: 709, column: 15, scope: !3986)
!3996 = !DILocation(line: 710, column: 19, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3986, file: !71, line: 710, column: 9)
!3998 = !DILocation(line: 711, column: 9, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3997, file: !71, line: 710, column: 28)
!4000 = !DILocation(line: 712, column: 5, scope: !3999)
!4001 = !DILocation(line: 713, column: 18, scope: !3986)
!4002 = !DILocation(line: 713, column: 28, scope: !3986)
!4003 = !DILocation(line: 713, column: 5, scope: !3986)
!4004 = !DILocation(line: 714, column: 1, scope: !3986)
!4005 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3280, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4006 = !DILocalVariable(name: "state", arg: 1, scope: !4005, file: !71, line: 716, type: !3282)
!4007 = !DILocation(line: 0, scope: !4005)
!4008 = !DILocation(line: 717, column: 17, scope: !4005)
!4009 = !DILocation(line: 717, column: 5, scope: !4005)
!4010 = !DILocation(line: 718, column: 1, scope: !4005)
!4011 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4012, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 32)
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4016)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4017)
!4017 = !{!4018}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4016, file: !71, line: 40, baseType: !5, size: 32)
!4019 = !DILocalVariable(name: "state", arg: 1, scope: !4011, file: !71, line: 720, type: !4014)
!4020 = !DILocation(line: 0, scope: !4011)
!4021 = !DILocation(line: 721, column: 18, scope: !4011)
!4022 = !DILocation(line: 721, column: 16, scope: !4011)
!4023 = !DILocation(line: 722, column: 20, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4011, file: !71, line: 722, column: 9)
!4025 = !DILocation(line: 723, column: 9, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4024, file: !71, line: 722, column: 29)
!4027 = !DILocation(line: 724, column: 5, scope: !4026)
!4028 = !DILocation(line: 725, column: 28, scope: !4011)
!4029 = !DILocation(line: 725, column: 5, scope: !4011)
!4030 = !DILocation(line: 726, column: 1, scope: !4011)
!4031 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4032, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{null, !4014, !3322, !15}
!4034 = !DILocalVariable(name: "state", arg: 1, scope: !4031, file: !71, line: 728, type: !4014)
!4035 = !DILocation(line: 0, scope: !4031)
!4036 = !DILocalVariable(name: "input", arg: 2, scope: !4031, file: !71, line: 728, type: !3322)
!4037 = !DILocalVariable(name: "inlen", arg: 3, scope: !4031, file: !71, line: 728, type: !15)
!4038 = !DILocation(line: 729, column: 30, scope: !4031)
!4039 = !DILocation(line: 729, column: 5, scope: !4031)
!4040 = !DILocation(line: 730, column: 1, scope: !4031)
!4041 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4012, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4042 = !DILocalVariable(name: "state", arg: 1, scope: !4041, file: !71, line: 732, type: !4014)
!4043 = !DILocation(line: 0, scope: !4041)
!4044 = !DILocation(line: 733, column: 32, scope: !4041)
!4045 = !DILocation(line: 733, column: 5, scope: !4041)
!4046 = !DILocation(line: 734, column: 1, scope: !4041)
!4047 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4048, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !11, !15, !4014}
!4050 = !DILocalVariable(name: "output", arg: 1, scope: !4047, file: !71, line: 736, type: !11)
!4051 = !DILocation(line: 0, scope: !4047)
!4052 = !DILocalVariable(name: "outlen", arg: 2, scope: !4047, file: !71, line: 736, type: !15)
!4053 = !DILocalVariable(name: "state", arg: 3, scope: !4047, file: !71, line: 736, type: !4014)
!4054 = !DILocation(line: 737, column: 47, scope: !4047)
!4055 = !DILocation(line: 737, column: 5, scope: !4047)
!4056 = !DILocation(line: 738, column: 1, scope: !4047)
!4057 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4058, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !4014, !4060}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 32)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4062 = !DILocalVariable(name: "dest", arg: 1, scope: !4057, file: !71, line: 740, type: !4014)
!4063 = !DILocation(line: 0, scope: !4057)
!4064 = !DILocalVariable(name: "src", arg: 2, scope: !4057, file: !71, line: 740, type: !4060)
!4065 = !DILocation(line: 741, column: 17, scope: !4057)
!4066 = !DILocation(line: 741, column: 15, scope: !4057)
!4067 = !DILocation(line: 742, column: 19, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4057, file: !71, line: 742, column: 9)
!4069 = !DILocation(line: 743, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4068, file: !71, line: 742, column: 28)
!4071 = !DILocation(line: 744, column: 5, scope: !4070)
!4072 = !DILocation(line: 745, column: 18, scope: !4057)
!4073 = !DILocation(line: 745, column: 28, scope: !4057)
!4074 = !DILocation(line: 745, column: 5, scope: !4057)
!4075 = !DILocation(line: 746, column: 1, scope: !4057)
!4076 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4012, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4077 = !DILocalVariable(name: "state", arg: 1, scope: !4076, file: !71, line: 748, type: !4014)
!4078 = !DILocation(line: 0, scope: !4076)
!4079 = !DILocation(line: 749, column: 17, scope: !4076)
!4080 = !DILocation(line: 749, column: 5, scope: !4076)
!4081 = !DILocation(line: 750, column: 1, scope: !4076)
!4082 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4083, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !4085, !3322, !15}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4088)
!4088 = !{!4089}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4087, file: !71, line: 35, baseType: !5, size: 32)
!4090 = !DILocalVariable(name: "state", arg: 1, scope: !4082, file: !71, line: 764, type: !4085)
!4091 = !DILocation(line: 0, scope: !4082)
!4092 = !DILocalVariable(name: "input", arg: 2, scope: !4082, file: !71, line: 764, type: !3322)
!4093 = !DILocalVariable(name: "inlen", arg: 3, scope: !4082, file: !71, line: 764, type: !15)
!4094 = !DILocation(line: 765, column: 18, scope: !4082)
!4095 = !DILocation(line: 765, column: 16, scope: !4082)
!4096 = !DILocation(line: 766, column: 20, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4082, file: !71, line: 766, column: 9)
!4098 = !DILocation(line: 767, column: 9, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !71, line: 766, column: 29)
!4100 = !DILocation(line: 768, column: 5, scope: !4099)
!4101 = !DILocation(line: 769, column: 26, scope: !4082)
!4102 = !DILocation(line: 769, column: 5, scope: !4082)
!4103 = !DILocation(line: 770, column: 1, scope: !4082)
!4104 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4105, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !5, !19, !3322, !15, !12}
!4107 = !DILocalVariable(name: "s", arg: 1, scope: !4104, file: !71, line: 512, type: !5)
!4108 = !DILocation(line: 0, scope: !4104)
!4109 = !DILocalVariable(name: "r", arg: 2, scope: !4104, file: !71, line: 512, type: !19)
!4110 = !DILocalVariable(name: "m", arg: 3, scope: !4104, file: !71, line: 512, type: !3322)
!4111 = !DILocalVariable(name: "mlen", arg: 4, scope: !4104, file: !71, line: 513, type: !15)
!4112 = !DILocalVariable(name: "p", arg: 5, scope: !4104, file: !71, line: 513, type: !12)
!4113 = !DILocalVariable(name: "t", scope: !4104, file: !71, line: 515, type: !4114)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4115)
!4115 = !{!4116}
!4116 = !DISubrange(count: 200)
!4117 = !DILocation(line: 515, column: 13, scope: !4104)
!4118 = !DILocalVariable(name: "i", scope: !4104, file: !71, line: 514, type: !15)
!4119 = !DILocation(line: 518, column: 10, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4104, file: !71, line: 518, column: 5)
!4121 = !DILocation(line: 518, scope: !4120)
!4122 = !DILocation(line: 518, column: 19, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4120, file: !71, line: 518, column: 5)
!4124 = !DILocation(line: 518, column: 5, scope: !4120)
!4125 = !DILocation(line: 522, column: 5, scope: !4104)
!4126 = !DILocation(line: 519, column: 9, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4123, file: !71, line: 518, column: 30)
!4128 = !DILocation(line: 519, column: 14, scope: !4127)
!4129 = !DILocation(line: 518, column: 25, scope: !4123)
!4130 = !DILocation(line: 518, column: 5, scope: !4123)
!4131 = distinct !{!4131, !4124, !4132, !323}
!4132 = !DILocation(line: 520, column: 5, scope: !4120)
!4133 = !DILocation(line: 522, column: 17, scope: !4104)
!4134 = !DILocation(line: 523, column: 9, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !71, line: 523, column: 9)
!4136 = distinct !DILexicalBlock(scope: !4104, file: !71, line: 522, column: 23)
!4137 = !DILocation(line: 532, column: 5, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4104, file: !71, line: 532, column: 5)
!4139 = !DILocation(line: 523, scope: !4135)
!4140 = !DILocation(line: 523, column: 23, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4135, file: !71, line: 523, column: 9)
!4142 = !DILocation(line: 524, column: 34, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4141, file: !71, line: 523, column: 37)
!4144 = !DILocation(line: 524, column: 30, scope: !4143)
!4145 = !DILocation(line: 524, column: 21, scope: !4143)
!4146 = !DILocation(line: 524, column: 13, scope: !4143)
!4147 = !DILocation(line: 524, column: 18, scope: !4143)
!4148 = !DILocation(line: 523, column: 32, scope: !4141)
!4149 = !DILocation(line: 523, column: 9, scope: !4141)
!4150 = distinct !{!4150, !4134, !4151, !323}
!4151 = !DILocation(line: 525, column: 9, scope: !4135)
!4152 = !DILocation(line: 527, column: 9, scope: !4136)
!4153 = !DILocation(line: 528, column: 14, scope: !4136)
!4154 = !DILocation(line: 529, column: 11, scope: !4136)
!4155 = distinct !{!4155, !4125, !4156, !323}
!4156 = !DILocation(line: 530, column: 5, scope: !4104)
!4157 = !DILocation(line: 532, scope: !4138)
!4158 = !DILocation(line: 532, column: 19, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4138, file: !71, line: 532, column: 5)
!4160 = !DILocation(line: 535, column: 5, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4104, file: !71, line: 535, column: 5)
!4162 = !DILocation(line: 533, column: 9, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4159, file: !71, line: 532, column: 29)
!4164 = !DILocation(line: 533, column: 14, scope: !4163)
!4165 = !DILocation(line: 532, column: 24, scope: !4159)
!4166 = !DILocation(line: 532, column: 5, scope: !4159)
!4167 = distinct !{!4167, !4137, !4168, !323}
!4168 = !DILocation(line: 534, column: 5, scope: !4138)
!4169 = !DILocation(line: 535, scope: !4161)
!4170 = !DILocation(line: 535, column: 19, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4161, file: !71, line: 535, column: 5)
!4172 = !DILocation(line: 536, column: 16, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4171, file: !71, line: 535, column: 32)
!4174 = !DILocation(line: 536, column: 9, scope: !4173)
!4175 = !DILocation(line: 536, column: 14, scope: !4173)
!4176 = !DILocation(line: 535, column: 27, scope: !4171)
!4177 = !DILocation(line: 535, column: 5, scope: !4171)
!4178 = distinct !{!4178, !4160, !4179, !323}
!4179 = !DILocation(line: 537, column: 5, scope: !4161)
!4180 = !DILocation(line: 538, column: 5, scope: !4104)
!4181 = !DILocation(line: 538, column: 10, scope: !4104)
!4182 = !DILocation(line: 539, column: 9, scope: !4104)
!4183 = !DILocation(line: 539, column: 5, scope: !4104)
!4184 = !DILocation(line: 539, column: 14, scope: !4104)
!4185 = !DILocation(line: 540, column: 10, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4104, file: !71, line: 540, column: 5)
!4187 = !DILocation(line: 540, scope: !4186)
!4188 = !DILocation(line: 540, column: 19, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4186, file: !71, line: 540, column: 5)
!4190 = !DILocation(line: 540, column: 5, scope: !4186)
!4191 = !DILocation(line: 541, column: 30, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4189, file: !71, line: 540, column: 33)
!4193 = !DILocation(line: 541, column: 26, scope: !4192)
!4194 = !DILocation(line: 541, column: 17, scope: !4192)
!4195 = !DILocation(line: 541, column: 9, scope: !4192)
!4196 = !DILocation(line: 541, column: 14, scope: !4192)
!4197 = !DILocation(line: 540, column: 28, scope: !4189)
!4198 = !DILocation(line: 540, column: 5, scope: !4189)
!4199 = distinct !{!4199, !4190, !4200, !323}
!4200 = !DILocation(line: 542, column: 5, scope: !4186)
!4201 = !DILocation(line: 543, column: 1, scope: !4104)
!4202 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4203, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!6, !3322}
!4205 = !DILocalVariable(name: "x", arg: 1, scope: !4202, file: !71, line: 190, type: !3322)
!4206 = !DILocation(line: 0, scope: !4202)
!4207 = !DILocalVariable(name: "r", scope: !4202, file: !71, line: 191, type: !6)
!4208 = !DILocalVariable(name: "i", scope: !4209, file: !71, line: 192, type: !15)
!4209 = distinct !DILexicalBlock(scope: !4202, file: !71, line: 192, column: 5)
!4210 = !DILocation(line: 0, scope: !4209)
!4211 = !DILocation(line: 192, column: 10, scope: !4209)
!4212 = !DILocation(line: 192, scope: !4209)
!4213 = !DILocation(line: 192, column: 26, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4209, file: !71, line: 192, column: 5)
!4215 = !DILocation(line: 192, column: 5, scope: !4209)
!4216 = !DILocation(line: 193, column: 24, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !71, line: 192, column: 36)
!4218 = !DILocation(line: 193, column: 14, scope: !4217)
!4219 = !DILocation(line: 193, column: 34, scope: !4217)
!4220 = !DILocation(line: 193, column: 29, scope: !4217)
!4221 = !DILocation(line: 193, column: 11, scope: !4217)
!4222 = !DILocation(line: 192, column: 31, scope: !4214)
!4223 = !DILocation(line: 192, column: 5, scope: !4214)
!4224 = distinct !{!4224, !4215, !4225, !323}
!4225 = !DILocation(line: 194, column: 5, scope: !4209)
!4226 = !DILocation(line: 196, column: 5, scope: !4202)
!4227 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4228, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{null, !11, !15, !4085}
!4230 = !DILocalVariable(name: "output", arg: 1, scope: !4227, file: !71, line: 784, type: !11)
!4231 = !DILocation(line: 0, scope: !4227)
!4232 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4227, file: !71, line: 784, type: !15)
!4233 = !DILocalVariable(name: "state", arg: 3, scope: !4227, file: !71, line: 784, type: !4085)
!4234 = !DILocation(line: 785, column: 50, scope: !4227)
!4235 = !DILocation(line: 785, column: 5, scope: !4227)
!4236 = !DILocation(line: 786, column: 1, scope: !4227)
!4237 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !3910, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4238 = !DILocalVariable(name: "h", arg: 1, scope: !4237, file: !71, line: 558, type: !11)
!4239 = !DILocation(line: 0, scope: !4237)
!4240 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4237, file: !71, line: 558, type: !15)
!4241 = !DILocalVariable(name: "s", arg: 3, scope: !4237, file: !71, line: 559, type: !5)
!4242 = !DILocalVariable(name: "r", arg: 4, scope: !4237, file: !71, line: 559, type: !19)
!4243 = !DILocation(line: 560, column: 5, scope: !4237)
!4244 = !DILocation(line: 560, column: 20, scope: !4237)
!4245 = !DILocation(line: 561, column: 9, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4237, file: !71, line: 560, column: 25)
!4247 = !DILocalVariable(name: "i", scope: !4248, file: !71, line: 562, type: !15)
!4248 = distinct !DILexicalBlock(scope: !4246, file: !71, line: 562, column: 9)
!4249 = !DILocation(line: 0, scope: !4248)
!4250 = !DILocation(line: 562, column: 14, scope: !4248)
!4251 = !DILocation(line: 562, scope: !4248)
!4252 = !DILocation(line: 562, column: 30, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4248, file: !71, line: 562, column: 9)
!4254 = !DILocation(line: 562, column: 9, scope: !4248)
!4255 = !DILocation(line: 563, column: 27, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4253, file: !71, line: 562, column: 47)
!4257 = !DILocation(line: 563, column: 23, scope: !4256)
!4258 = !DILocation(line: 563, column: 32, scope: !4256)
!4259 = !DILocation(line: 563, column: 13, scope: !4256)
!4260 = !DILocation(line: 562, column: 43, scope: !4253)
!4261 = !DILocation(line: 562, column: 9, scope: !4253)
!4262 = distinct !{!4262, !4254, !4263, !323}
!4263 = !DILocation(line: 564, column: 9, scope: !4248)
!4264 = !DILocation(line: 565, column: 11, scope: !4246)
!4265 = !DILocation(line: 566, column: 16, scope: !4246)
!4266 = distinct !{!4266, !4243, !4267, !323}
!4267 = !DILocation(line: 567, column: 5, scope: !4237)
!4268 = !DILocation(line: 568, column: 1, scope: !4237)
!4269 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4270, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !11, !6}
!4272 = !DILocalVariable(name: "x", arg: 1, scope: !4269, file: !71, line: 207, type: !11)
!4273 = !DILocation(line: 0, scope: !4269)
!4274 = !DILocalVariable(name: "u", arg: 2, scope: !4269, file: !71, line: 207, type: !6)
!4275 = !DILocalVariable(name: "i", scope: !4276, file: !71, line: 208, type: !15)
!4276 = distinct !DILexicalBlock(scope: !4269, file: !71, line: 208, column: 5)
!4277 = !DILocation(line: 0, scope: !4276)
!4278 = !DILocation(line: 208, column: 10, scope: !4276)
!4279 = !DILocation(line: 208, scope: !4276)
!4280 = !DILocation(line: 208, column: 26, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4276, file: !71, line: 208, column: 5)
!4282 = !DILocation(line: 208, column: 5, scope: !4276)
!4283 = !DILocation(line: 209, column: 34, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4281, file: !71, line: 208, column: 36)
!4285 = !DILocation(line: 209, column: 29, scope: !4284)
!4286 = !DILocation(line: 209, column: 16, scope: !4284)
!4287 = !DILocation(line: 209, column: 9, scope: !4284)
!4288 = !DILocation(line: 209, column: 14, scope: !4284)
!4289 = !DILocation(line: 208, column: 31, scope: !4281)
!4290 = !DILocation(line: 208, column: 5, scope: !4281)
!4291 = distinct !{!4291, !4282, !4292, !323}
!4292 = !DILocation(line: 210, column: 5, scope: !4276)
!4293 = !DILocation(line: 211, column: 1, scope: !4269)
!4294 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4295, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !4085, !4297}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4299 = !DILocalVariable(name: "dest", arg: 1, scope: !4294, file: !71, line: 788, type: !4085)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocalVariable(name: "src", arg: 2, scope: !4294, file: !71, line: 788, type: !4297)
!4302 = !DILocation(line: 789, column: 17, scope: !4294)
!4303 = !DILocation(line: 789, column: 15, scope: !4294)
!4304 = !DILocation(line: 790, column: 19, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4294, file: !71, line: 790, column: 9)
!4306 = !DILocation(line: 791, column: 9, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4305, file: !71, line: 790, column: 28)
!4308 = !DILocation(line: 792, column: 5, scope: !4307)
!4309 = !DILocation(line: 793, column: 18, scope: !4294)
!4310 = !DILocation(line: 793, column: 28, scope: !4294)
!4311 = !DILocation(line: 793, column: 5, scope: !4294)
!4312 = !DILocation(line: 794, column: 1, scope: !4294)
!4313 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4314, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !4085}
!4316 = !DILocalVariable(name: "state", arg: 1, scope: !4313, file: !71, line: 797, type: !4085)
!4317 = !DILocation(line: 0, scope: !4313)
!4318 = !DILocation(line: 798, column: 17, scope: !4313)
!4319 = !DILocation(line: 798, column: 5, scope: !4313)
!4320 = !DILocation(line: 799, column: 1, scope: !4313)
!4321 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4322, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !4324, !3322, !15}
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4326)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4327)
!4327 = !{!4328}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4326, file: !71, line: 45, baseType: !5, size: 32)
!4329 = !DILocalVariable(name: "state", arg: 1, scope: !4321, file: !71, line: 812, type: !4324)
!4330 = !DILocation(line: 0, scope: !4321)
!4331 = !DILocalVariable(name: "input", arg: 2, scope: !4321, file: !71, line: 812, type: !3322)
!4332 = !DILocalVariable(name: "inlen", arg: 3, scope: !4321, file: !71, line: 812, type: !15)
!4333 = !DILocation(line: 813, column: 18, scope: !4321)
!4334 = !DILocation(line: 813, column: 16, scope: !4321)
!4335 = !DILocation(line: 814, column: 20, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4321, file: !71, line: 814, column: 9)
!4337 = !DILocation(line: 815, column: 9, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4336, file: !71, line: 814, column: 29)
!4339 = !DILocation(line: 816, column: 5, scope: !4338)
!4340 = !DILocation(line: 817, column: 26, scope: !4321)
!4341 = !DILocation(line: 817, column: 5, scope: !4321)
!4342 = !DILocation(line: 818, column: 1, scope: !4321)
!4343 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4344, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !11, !15, !4324}
!4346 = !DILocalVariable(name: "output", arg: 1, scope: !4343, file: !71, line: 832, type: !11)
!4347 = !DILocation(line: 0, scope: !4343)
!4348 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4343, file: !71, line: 832, type: !15)
!4349 = !DILocalVariable(name: "state", arg: 3, scope: !4343, file: !71, line: 832, type: !4324)
!4350 = !DILocation(line: 833, column: 50, scope: !4343)
!4351 = !DILocation(line: 833, column: 5, scope: !4343)
!4352 = !DILocation(line: 834, column: 1, scope: !4343)
!4353 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4354, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{null, !4324, !4356}
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4325)
!4358 = !DILocalVariable(name: "dest", arg: 1, scope: !4353, file: !71, line: 836, type: !4324)
!4359 = !DILocation(line: 0, scope: !4353)
!4360 = !DILocalVariable(name: "src", arg: 2, scope: !4353, file: !71, line: 836, type: !4356)
!4361 = !DILocation(line: 837, column: 17, scope: !4353)
!4362 = !DILocation(line: 837, column: 15, scope: !4353)
!4363 = !DILocation(line: 838, column: 19, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4353, file: !71, line: 838, column: 9)
!4365 = !DILocation(line: 839, column: 9, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4364, file: !71, line: 838, column: 28)
!4367 = !DILocation(line: 840, column: 5, scope: !4366)
!4368 = !DILocation(line: 841, column: 18, scope: !4353)
!4369 = !DILocation(line: 841, column: 28, scope: !4353)
!4370 = !DILocation(line: 841, column: 5, scope: !4353)
!4371 = !DILocation(line: 842, column: 1, scope: !4353)
!4372 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4373, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{null, !4324}
!4375 = !DILocalVariable(name: "state", arg: 1, scope: !4372, file: !71, line: 845, type: !4324)
!4376 = !DILocation(line: 0, scope: !4372)
!4377 = !DILocation(line: 846, column: 17, scope: !4372)
!4378 = !DILocation(line: 846, column: 5, scope: !4372)
!4379 = !DILocation(line: 847, column: 1, scope: !4372)
!4380 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4381, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !11, !15, !3322, !15}
!4383 = !DILocalVariable(name: "output", arg: 1, scope: !4380, file: !71, line: 859, type: !11)
!4384 = !DILocation(line: 0, scope: !4380)
!4385 = !DILocalVariable(name: "outlen", arg: 2, scope: !4380, file: !71, line: 859, type: !15)
!4386 = !DILocalVariable(name: "input", arg: 3, scope: !4380, file: !71, line: 860, type: !3322)
!4387 = !DILocalVariable(name: "inlen", arg: 4, scope: !4380, file: !71, line: 860, type: !15)
!4388 = !DILocation(line: 861, column: 29, scope: !4380)
!4389 = !DILocalVariable(name: "nblocks", scope: !4380, file: !71, line: 861, type: !15)
!4390 = !DILocalVariable(name: "t", scope: !4380, file: !71, line: 862, type: !4391)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4392)
!4392 = !{!4393}
!4393 = !DISubrange(count: 168)
!4394 = !DILocation(line: 862, column: 13, scope: !4380)
!4395 = !DILocalVariable(name: "s", scope: !4380, file: !71, line: 863, type: !4086)
!4396 = !DILocation(line: 863, column: 17, scope: !4380)
!4397 = !DILocation(line: 865, column: 5, scope: !4380)
!4398 = !DILocation(line: 866, column: 5, scope: !4380)
!4399 = !DILocation(line: 868, column: 23, scope: !4380)
!4400 = !DILocation(line: 868, column: 12, scope: !4380)
!4401 = !DILocation(line: 869, column: 23, scope: !4380)
!4402 = !DILocation(line: 869, column: 12, scope: !4380)
!4403 = !DILocation(line: 871, column: 9, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4380, file: !71, line: 871, column: 9)
!4405 = !DILocation(line: 872, column: 9, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4404, file: !71, line: 871, column: 17)
!4407 = !DILocalVariable(name: "i", scope: !4408, file: !71, line: 873, type: !15)
!4408 = distinct !DILexicalBlock(scope: !4406, file: !71, line: 873, column: 9)
!4409 = !DILocation(line: 0, scope: !4408)
!4410 = !DILocation(line: 873, column: 14, scope: !4408)
!4411 = !DILocation(line: 873, scope: !4408)
!4412 = !DILocation(line: 873, column: 30, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4408, file: !71, line: 873, column: 9)
!4414 = !DILocation(line: 873, column: 9, scope: !4408)
!4415 = !DILocation(line: 874, column: 25, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4413, file: !71, line: 873, column: 45)
!4417 = !DILocation(line: 874, column: 13, scope: !4416)
!4418 = !DILocation(line: 874, column: 23, scope: !4416)
!4419 = !DILocation(line: 873, column: 40, scope: !4413)
!4420 = !DILocation(line: 873, column: 9, scope: !4413)
!4421 = distinct !{!4421, !4414, !4422, !323}
!4422 = !DILocation(line: 875, column: 9, scope: !4408)
!4423 = !DILocation(line: 877, column: 5, scope: !4380)
!4424 = !DILocation(line: 878, column: 1, scope: !4380)
!4425 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4381, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4426 = !DILocalVariable(name: "output", arg: 1, scope: !4425, file: !71, line: 890, type: !11)
!4427 = !DILocation(line: 0, scope: !4425)
!4428 = !DILocalVariable(name: "outlen", arg: 2, scope: !4425, file: !71, line: 890, type: !15)
!4429 = !DILocalVariable(name: "input", arg: 3, scope: !4425, file: !71, line: 891, type: !3322)
!4430 = !DILocalVariable(name: "inlen", arg: 4, scope: !4425, file: !71, line: 891, type: !15)
!4431 = !DILocation(line: 892, column: 29, scope: !4425)
!4432 = !DILocalVariable(name: "nblocks", scope: !4425, file: !71, line: 892, type: !15)
!4433 = !DILocalVariable(name: "t", scope: !4425, file: !71, line: 893, type: !4434)
!4434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4435)
!4435 = !{!4436}
!4436 = !DISubrange(count: 136)
!4437 = !DILocation(line: 893, column: 13, scope: !4425)
!4438 = !DILocalVariable(name: "s", scope: !4425, file: !71, line: 894, type: !4325)
!4439 = !DILocation(line: 894, column: 17, scope: !4425)
!4440 = !DILocation(line: 896, column: 5, scope: !4425)
!4441 = !DILocation(line: 897, column: 5, scope: !4425)
!4442 = !DILocation(line: 899, column: 23, scope: !4425)
!4443 = !DILocation(line: 899, column: 12, scope: !4425)
!4444 = !DILocation(line: 900, column: 23, scope: !4425)
!4445 = !DILocation(line: 900, column: 12, scope: !4425)
!4446 = !DILocation(line: 902, column: 9, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4425, file: !71, line: 902, column: 9)
!4448 = !DILocation(line: 903, column: 9, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4447, file: !71, line: 902, column: 17)
!4450 = !DILocalVariable(name: "i", scope: !4451, file: !71, line: 904, type: !15)
!4451 = distinct !DILexicalBlock(scope: !4449, file: !71, line: 904, column: 9)
!4452 = !DILocation(line: 0, scope: !4451)
!4453 = !DILocation(line: 904, column: 14, scope: !4451)
!4454 = !DILocation(line: 904, scope: !4451)
!4455 = !DILocation(line: 904, column: 30, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4451, file: !71, line: 904, column: 9)
!4457 = !DILocation(line: 904, column: 9, scope: !4451)
!4458 = !DILocation(line: 905, column: 25, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4456, file: !71, line: 904, column: 45)
!4460 = !DILocation(line: 905, column: 13, scope: !4459)
!4461 = !DILocation(line: 905, column: 23, scope: !4459)
!4462 = !DILocation(line: 904, column: 40, scope: !4456)
!4463 = !DILocation(line: 904, column: 9, scope: !4456)
!4464 = distinct !{!4464, !4457, !4465, !323}
!4465 = !DILocation(line: 906, column: 9, scope: !4451)
!4466 = !DILocation(line: 908, column: 5, scope: !4425)
!4467 = !DILocation(line: 909, column: 1, scope: !4425)
!4468 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4469, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !4471}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4473)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4474)
!4474 = !{!4475}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4473, file: !71, line: 50, baseType: !5, size: 32)
!4476 = !DILocalVariable(name: "state", arg: 1, scope: !4468, file: !71, line: 911, type: !4471)
!4477 = !DILocation(line: 0, scope: !4468)
!4478 = !DILocation(line: 912, column: 18, scope: !4468)
!4479 = !DILocation(line: 912, column: 16, scope: !4468)
!4480 = !DILocation(line: 913, column: 20, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4468, file: !71, line: 913, column: 9)
!4482 = !DILocation(line: 914, column: 9, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4481, file: !71, line: 913, column: 29)
!4484 = !DILocation(line: 915, column: 5, scope: !4483)
!4485 = !DILocation(line: 916, column: 28, scope: !4468)
!4486 = !DILocation(line: 916, column: 5, scope: !4468)
!4487 = !DILocation(line: 917, column: 1, scope: !4468)
!4488 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4489, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !4471, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 32)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4472)
!4493 = !DILocalVariable(name: "dest", arg: 1, scope: !4488, file: !71, line: 919, type: !4471)
!4494 = !DILocation(line: 0, scope: !4488)
!4495 = !DILocalVariable(name: "src", arg: 2, scope: !4488, file: !71, line: 919, type: !4491)
!4496 = !DILocation(line: 920, column: 17, scope: !4488)
!4497 = !DILocation(line: 920, column: 15, scope: !4488)
!4498 = !DILocation(line: 921, column: 19, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4488, file: !71, line: 921, column: 9)
!4500 = !DILocation(line: 922, column: 9, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4499, file: !71, line: 921, column: 28)
!4502 = !DILocation(line: 923, column: 5, scope: !4501)
!4503 = !DILocation(line: 924, column: 18, scope: !4488)
!4504 = !DILocation(line: 924, column: 28, scope: !4488)
!4505 = !DILocation(line: 924, column: 5, scope: !4488)
!4506 = !DILocation(line: 925, column: 1, scope: !4488)
!4507 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4469, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4508 = !DILocalVariable(name: "state", arg: 1, scope: !4507, file: !71, line: 927, type: !4471)
!4509 = !DILocation(line: 0, scope: !4507)
!4510 = !DILocation(line: 928, column: 17, scope: !4507)
!4511 = !DILocation(line: 928, column: 5, scope: !4507)
!4512 = !DILocation(line: 929, column: 1, scope: !4507)
!4513 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4514, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{null, !4471, !3322, !15}
!4516 = !DILocalVariable(name: "state", arg: 1, scope: !4513, file: !71, line: 931, type: !4471)
!4517 = !DILocation(line: 0, scope: !4513)
!4518 = !DILocalVariable(name: "input", arg: 2, scope: !4513, file: !71, line: 931, type: !3322)
!4519 = !DILocalVariable(name: "inlen", arg: 3, scope: !4513, file: !71, line: 931, type: !15)
!4520 = !DILocation(line: 932, column: 30, scope: !4513)
!4521 = !DILocation(line: 932, column: 5, scope: !4513)
!4522 = !DILocation(line: 933, column: 1, scope: !4513)
!4523 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4524, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !11, !4471}
!4526 = !DILocalVariable(name: "output", arg: 1, scope: !4523, file: !71, line: 935, type: !11)
!4527 = !DILocation(line: 0, scope: !4523)
!4528 = !DILocalVariable(name: "state", arg: 2, scope: !4523, file: !71, line: 935, type: !4471)
!4529 = !DILocalVariable(name: "t", scope: !4523, file: !71, line: 936, type: !4434)
!4530 = !DILocation(line: 936, column: 13, scope: !4523)
!4531 = !DILocation(line: 937, column: 32, scope: !4523)
!4532 = !DILocation(line: 937, column: 5, scope: !4523)
!4533 = !DILocation(line: 939, column: 39, scope: !4523)
!4534 = !DILocation(line: 939, column: 5, scope: !4523)
!4535 = !DILocation(line: 941, column: 5, scope: !4523)
!4536 = !DILocalVariable(name: "i", scope: !4537, file: !71, line: 943, type: !15)
!4537 = distinct !DILexicalBlock(scope: !4523, file: !71, line: 943, column: 5)
!4538 = !DILocation(line: 0, scope: !4537)
!4539 = !DILocation(line: 943, column: 10, scope: !4537)
!4540 = !DILocation(line: 943, scope: !4537)
!4541 = !DILocation(line: 943, column: 26, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4537, file: !71, line: 943, column: 5)
!4543 = !DILocation(line: 943, column: 5, scope: !4537)
!4544 = !DILocation(line: 944, column: 21, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4542, file: !71, line: 943, column: 37)
!4546 = !DILocation(line: 944, column: 9, scope: !4545)
!4547 = !DILocation(line: 944, column: 19, scope: !4545)
!4548 = !DILocation(line: 943, column: 33, scope: !4542)
!4549 = !DILocation(line: 943, column: 5, scope: !4542)
!4550 = distinct !{!4550, !4543, !4551, !323}
!4551 = !DILocation(line: 945, column: 5, scope: !4537)
!4552 = !DILocation(line: 946, column: 1, scope: !4523)
!4553 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4554, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !11, !3322, !15}
!4556 = !DILocalVariable(name: "output", arg: 1, scope: !4553, file: !71, line: 957, type: !11)
!4557 = !DILocation(line: 0, scope: !4553)
!4558 = !DILocalVariable(name: "input", arg: 2, scope: !4553, file: !71, line: 957, type: !3322)
!4559 = !DILocalVariable(name: "inlen", arg: 3, scope: !4553, file: !71, line: 957, type: !15)
!4560 = !DILocalVariable(name: "s", scope: !4553, file: !71, line: 958, type: !4561)
!4561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4562)
!4562 = !{!4563}
!4563 = !DISubrange(count: 25)
!4564 = !DILocation(line: 958, column: 14, scope: !4553)
!4565 = !DILocalVariable(name: "t", scope: !4553, file: !71, line: 959, type: !4434)
!4566 = !DILocation(line: 959, column: 13, scope: !4553)
!4567 = !DILocation(line: 962, column: 5, scope: !4553)
!4568 = !DILocation(line: 965, column: 5, scope: !4553)
!4569 = !DILocalVariable(name: "i", scope: !4570, file: !71, line: 967, type: !15)
!4570 = distinct !DILexicalBlock(scope: !4553, file: !71, line: 967, column: 5)
!4571 = !DILocation(line: 0, scope: !4570)
!4572 = !DILocation(line: 967, column: 10, scope: !4570)
!4573 = !DILocation(line: 967, scope: !4570)
!4574 = !DILocation(line: 967, column: 26, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4570, file: !71, line: 967, column: 5)
!4576 = !DILocation(line: 967, column: 5, scope: !4570)
!4577 = !DILocation(line: 968, column: 21, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4575, file: !71, line: 967, column: 37)
!4579 = !DILocation(line: 968, column: 9, scope: !4578)
!4580 = !DILocation(line: 968, column: 19, scope: !4578)
!4581 = !DILocation(line: 967, column: 33, scope: !4575)
!4582 = !DILocation(line: 967, column: 5, scope: !4575)
!4583 = distinct !{!4583, !4576, !4584, !323}
!4584 = !DILocation(line: 969, column: 5, scope: !4570)
!4585 = !DILocation(line: 970, column: 1, scope: !4553)
!4586 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4587, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !4589}
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4591)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4592)
!4592 = !{!4593}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4591, file: !71, line: 55, baseType: !5, size: 32)
!4594 = !DILocalVariable(name: "state", arg: 1, scope: !4586, file: !71, line: 972, type: !4589)
!4595 = !DILocation(line: 0, scope: !4586)
!4596 = !DILocation(line: 973, column: 18, scope: !4586)
!4597 = !DILocation(line: 973, column: 16, scope: !4586)
!4598 = !DILocation(line: 974, column: 20, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4586, file: !71, line: 974, column: 9)
!4600 = !DILocation(line: 975, column: 9, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4599, file: !71, line: 974, column: 29)
!4602 = !DILocation(line: 976, column: 5, scope: !4601)
!4603 = !DILocation(line: 977, column: 28, scope: !4586)
!4604 = !DILocation(line: 977, column: 5, scope: !4586)
!4605 = !DILocation(line: 978, column: 1, scope: !4586)
!4606 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4607, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4589, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4611 = !DILocalVariable(name: "dest", arg: 1, scope: !4606, file: !71, line: 980, type: !4589)
!4612 = !DILocation(line: 0, scope: !4606)
!4613 = !DILocalVariable(name: "src", arg: 2, scope: !4606, file: !71, line: 980, type: !4609)
!4614 = !DILocation(line: 981, column: 17, scope: !4606)
!4615 = !DILocation(line: 981, column: 15, scope: !4606)
!4616 = !DILocation(line: 982, column: 19, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4606, file: !71, line: 982, column: 9)
!4618 = !DILocation(line: 983, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4617, file: !71, line: 982, column: 28)
!4620 = !DILocation(line: 984, column: 5, scope: !4619)
!4621 = !DILocation(line: 985, column: 18, scope: !4606)
!4622 = !DILocation(line: 985, column: 28, scope: !4606)
!4623 = !DILocation(line: 985, column: 5, scope: !4606)
!4624 = !DILocation(line: 986, column: 1, scope: !4606)
!4625 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4626, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !4589, !3322, !15}
!4628 = !DILocalVariable(name: "state", arg: 1, scope: !4625, file: !71, line: 988, type: !4589)
!4629 = !DILocation(line: 0, scope: !4625)
!4630 = !DILocalVariable(name: "input", arg: 2, scope: !4625, file: !71, line: 988, type: !3322)
!4631 = !DILocalVariable(name: "inlen", arg: 3, scope: !4625, file: !71, line: 988, type: !15)
!4632 = !DILocation(line: 989, column: 30, scope: !4625)
!4633 = !DILocation(line: 989, column: 5, scope: !4625)
!4634 = !DILocation(line: 990, column: 1, scope: !4625)
!4635 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4587, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4636 = !DILocalVariable(name: "state", arg: 1, scope: !4635, file: !71, line: 992, type: !4589)
!4637 = !DILocation(line: 0, scope: !4635)
!4638 = !DILocation(line: 993, column: 17, scope: !4635)
!4639 = !DILocation(line: 993, column: 5, scope: !4635)
!4640 = !DILocation(line: 994, column: 1, scope: !4635)
!4641 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4642, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !11, !4589}
!4644 = !DILocalVariable(name: "output", arg: 1, scope: !4641, file: !71, line: 996, type: !11)
!4645 = !DILocation(line: 0, scope: !4641)
!4646 = !DILocalVariable(name: "state", arg: 2, scope: !4641, file: !71, line: 996, type: !4589)
!4647 = !DILocalVariable(name: "t", scope: !4641, file: !71, line: 997, type: !4648)
!4648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4649)
!4649 = !{!4650}
!4650 = !DISubrange(count: 104)
!4651 = !DILocation(line: 997, column: 13, scope: !4641)
!4652 = !DILocation(line: 998, column: 32, scope: !4641)
!4653 = !DILocation(line: 998, column: 5, scope: !4641)
!4654 = !DILocation(line: 1000, column: 39, scope: !4641)
!4655 = !DILocation(line: 1000, column: 5, scope: !4641)
!4656 = !DILocation(line: 1002, column: 5, scope: !4641)
!4657 = !DILocalVariable(name: "i", scope: !4658, file: !71, line: 1004, type: !15)
!4658 = distinct !DILexicalBlock(scope: !4641, file: !71, line: 1004, column: 5)
!4659 = !DILocation(line: 0, scope: !4658)
!4660 = !DILocation(line: 1004, column: 10, scope: !4658)
!4661 = !DILocation(line: 1004, scope: !4658)
!4662 = !DILocation(line: 1004, column: 26, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4658, file: !71, line: 1004, column: 5)
!4664 = !DILocation(line: 1004, column: 5, scope: !4658)
!4665 = !DILocation(line: 1005, column: 21, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4663, file: !71, line: 1004, column: 37)
!4667 = !DILocation(line: 1005, column: 9, scope: !4666)
!4668 = !DILocation(line: 1005, column: 19, scope: !4666)
!4669 = !DILocation(line: 1004, column: 33, scope: !4663)
!4670 = !DILocation(line: 1004, column: 5, scope: !4663)
!4671 = distinct !{!4671, !4664, !4672, !323}
!4672 = !DILocation(line: 1006, column: 5, scope: !4658)
!4673 = !DILocation(line: 1007, column: 1, scope: !4641)
!4674 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4554, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4675 = !DILocalVariable(name: "output", arg: 1, scope: !4674, file: !71, line: 1018, type: !11)
!4676 = !DILocation(line: 0, scope: !4674)
!4677 = !DILocalVariable(name: "input", arg: 2, scope: !4674, file: !71, line: 1018, type: !3322)
!4678 = !DILocalVariable(name: "inlen", arg: 3, scope: !4674, file: !71, line: 1018, type: !15)
!4679 = !DILocalVariable(name: "s", scope: !4674, file: !71, line: 1019, type: !4561)
!4680 = !DILocation(line: 1019, column: 14, scope: !4674)
!4681 = !DILocalVariable(name: "t", scope: !4674, file: !71, line: 1020, type: !4648)
!4682 = !DILocation(line: 1020, column: 13, scope: !4674)
!4683 = !DILocation(line: 1023, column: 5, scope: !4674)
!4684 = !DILocation(line: 1026, column: 5, scope: !4674)
!4685 = !DILocalVariable(name: "i", scope: !4686, file: !71, line: 1028, type: !15)
!4686 = distinct !DILexicalBlock(scope: !4674, file: !71, line: 1028, column: 5)
!4687 = !DILocation(line: 0, scope: !4686)
!4688 = !DILocation(line: 1028, column: 10, scope: !4686)
!4689 = !DILocation(line: 1028, scope: !4686)
!4690 = !DILocation(line: 1028, column: 26, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4686, file: !71, line: 1028, column: 5)
!4692 = !DILocation(line: 1028, column: 5, scope: !4686)
!4693 = !DILocation(line: 1029, column: 21, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4691, file: !71, line: 1028, column: 37)
!4695 = !DILocation(line: 1029, column: 9, scope: !4694)
!4696 = !DILocation(line: 1029, column: 19, scope: !4694)
!4697 = !DILocation(line: 1028, column: 33, scope: !4691)
!4698 = !DILocation(line: 1028, column: 5, scope: !4691)
!4699 = distinct !{!4699, !4692, !4700, !323}
!4700 = !DILocation(line: 1030, column: 5, scope: !4686)
!4701 = !DILocation(line: 1031, column: 1, scope: !4674)
!4702 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4703, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{null, !4705}
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4707)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4708)
!4708 = !{!4709}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4707, file: !71, line: 60, baseType: !5, size: 32)
!4710 = !DILocalVariable(name: "state", arg: 1, scope: !4702, file: !71, line: 1033, type: !4705)
!4711 = !DILocation(line: 0, scope: !4702)
!4712 = !DILocation(line: 1034, column: 18, scope: !4702)
!4713 = !DILocation(line: 1034, column: 16, scope: !4702)
!4714 = !DILocation(line: 1035, column: 20, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4702, file: !71, line: 1035, column: 9)
!4716 = !DILocation(line: 1036, column: 9, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4715, file: !71, line: 1035, column: 29)
!4718 = !DILocation(line: 1037, column: 5, scope: !4717)
!4719 = !DILocation(line: 1038, column: 28, scope: !4702)
!4720 = !DILocation(line: 1038, column: 5, scope: !4702)
!4721 = !DILocation(line: 1039, column: 1, scope: !4702)
!4722 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4723, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{null, !4705, !4725}
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4706)
!4727 = !DILocalVariable(name: "dest", arg: 1, scope: !4722, file: !71, line: 1041, type: !4705)
!4728 = !DILocation(line: 0, scope: !4722)
!4729 = !DILocalVariable(name: "src", arg: 2, scope: !4722, file: !71, line: 1041, type: !4725)
!4730 = !DILocation(line: 1042, column: 17, scope: !4722)
!4731 = !DILocation(line: 1042, column: 15, scope: !4722)
!4732 = !DILocation(line: 1043, column: 19, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4722, file: !71, line: 1043, column: 9)
!4734 = !DILocation(line: 1044, column: 9, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4733, file: !71, line: 1043, column: 28)
!4736 = !DILocation(line: 1045, column: 5, scope: !4735)
!4737 = !DILocation(line: 1046, column: 18, scope: !4722)
!4738 = !DILocation(line: 1046, column: 28, scope: !4722)
!4739 = !DILocation(line: 1046, column: 5, scope: !4722)
!4740 = !DILocation(line: 1047, column: 1, scope: !4722)
!4741 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4742, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{null, !4705, !3322, !15}
!4744 = !DILocalVariable(name: "state", arg: 1, scope: !4741, file: !71, line: 1049, type: !4705)
!4745 = !DILocation(line: 0, scope: !4741)
!4746 = !DILocalVariable(name: "input", arg: 2, scope: !4741, file: !71, line: 1049, type: !3322)
!4747 = !DILocalVariable(name: "inlen", arg: 3, scope: !4741, file: !71, line: 1049, type: !15)
!4748 = !DILocation(line: 1050, column: 30, scope: !4741)
!4749 = !DILocation(line: 1050, column: 5, scope: !4741)
!4750 = !DILocation(line: 1051, column: 1, scope: !4741)
!4751 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4703, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4752 = !DILocalVariable(name: "state", arg: 1, scope: !4751, file: !71, line: 1053, type: !4705)
!4753 = !DILocation(line: 0, scope: !4751)
!4754 = !DILocation(line: 1054, column: 17, scope: !4751)
!4755 = !DILocation(line: 1054, column: 5, scope: !4751)
!4756 = !DILocation(line: 1055, column: 1, scope: !4751)
!4757 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4758, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !11, !4705}
!4760 = !DILocalVariable(name: "output", arg: 1, scope: !4757, file: !71, line: 1057, type: !11)
!4761 = !DILocation(line: 0, scope: !4757)
!4762 = !DILocalVariable(name: "state", arg: 2, scope: !4757, file: !71, line: 1057, type: !4705)
!4763 = !DILocalVariable(name: "t", scope: !4757, file: !71, line: 1058, type: !4764)
!4764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4765)
!4765 = !{!4766}
!4766 = !DISubrange(count: 72)
!4767 = !DILocation(line: 1058, column: 13, scope: !4757)
!4768 = !DILocation(line: 1059, column: 32, scope: !4757)
!4769 = !DILocation(line: 1059, column: 5, scope: !4757)
!4770 = !DILocation(line: 1061, column: 39, scope: !4757)
!4771 = !DILocation(line: 1061, column: 5, scope: !4757)
!4772 = !DILocation(line: 1063, column: 5, scope: !4757)
!4773 = !DILocalVariable(name: "i", scope: !4774, file: !71, line: 1065, type: !15)
!4774 = distinct !DILexicalBlock(scope: !4757, file: !71, line: 1065, column: 5)
!4775 = !DILocation(line: 0, scope: !4774)
!4776 = !DILocation(line: 1065, column: 10, scope: !4774)
!4777 = !DILocation(line: 1065, scope: !4774)
!4778 = !DILocation(line: 1065, column: 26, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4774, file: !71, line: 1065, column: 5)
!4780 = !DILocation(line: 1065, column: 5, scope: !4774)
!4781 = !DILocation(line: 1066, column: 21, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4779, file: !71, line: 1065, column: 37)
!4783 = !DILocation(line: 1066, column: 9, scope: !4782)
!4784 = !DILocation(line: 1066, column: 19, scope: !4782)
!4785 = !DILocation(line: 1065, column: 33, scope: !4779)
!4786 = !DILocation(line: 1065, column: 5, scope: !4779)
!4787 = distinct !{!4787, !4780, !4788, !323}
!4788 = !DILocation(line: 1067, column: 5, scope: !4774)
!4789 = !DILocation(line: 1068, column: 1, scope: !4757)
!4790 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4554, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4791 = !DILocalVariable(name: "output", arg: 1, scope: !4790, file: !71, line: 1079, type: !11)
!4792 = !DILocation(line: 0, scope: !4790)
!4793 = !DILocalVariable(name: "input", arg: 2, scope: !4790, file: !71, line: 1079, type: !3322)
!4794 = !DILocalVariable(name: "inlen", arg: 3, scope: !4790, file: !71, line: 1079, type: !15)
!4795 = !DILocalVariable(name: "s", scope: !4790, file: !71, line: 1080, type: !4561)
!4796 = !DILocation(line: 1080, column: 14, scope: !4790)
!4797 = !DILocalVariable(name: "t", scope: !4790, file: !71, line: 1081, type: !4764)
!4798 = !DILocation(line: 1081, column: 13, scope: !4790)
!4799 = !DILocation(line: 1084, column: 5, scope: !4790)
!4800 = !DILocation(line: 1087, column: 5, scope: !4790)
!4801 = !DILocalVariable(name: "i", scope: !4802, file: !71, line: 1089, type: !15)
!4802 = distinct !DILexicalBlock(scope: !4790, file: !71, line: 1089, column: 5)
!4803 = !DILocation(line: 0, scope: !4802)
!4804 = !DILocation(line: 1089, column: 10, scope: !4802)
!4805 = !DILocation(line: 1089, scope: !4802)
!4806 = !DILocation(line: 1089, column: 26, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4802, file: !71, line: 1089, column: 5)
!4808 = !DILocation(line: 1089, column: 5, scope: !4802)
!4809 = !DILocation(line: 1090, column: 21, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4807, file: !71, line: 1089, column: 37)
!4811 = !DILocation(line: 1090, column: 9, scope: !4810)
!4812 = !DILocation(line: 1090, column: 19, scope: !4810)
!4813 = !DILocation(line: 1089, column: 33, scope: !4807)
!4814 = !DILocation(line: 1089, column: 5, scope: !4807)
!4815 = distinct !{!4815, !4808, !4816, !323}
!4816 = !DILocation(line: 1091, column: 5, scope: !4802)
!4817 = !DILocation(line: 1092, column: 1, scope: !4790)
!4818 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4819, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{null, !4821, !49}
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 32)
!4822 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4823)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4824)
!4824 = !{!4825}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4823, file: !80, line: 45, baseType: !5, size: 32)
!4826 = !DILocalVariable(name: "r", arg: 1, scope: !4818, file: !80, line: 635, type: !4821)
!4827 = !DILocation(line: 0, scope: !4818)
!4828 = !DILocalVariable(name: "key", arg: 2, scope: !4818, file: !80, line: 635, type: !49)
!4829 = !DILocalVariable(name: "skey", scope: !4818, file: !80, line: 636, type: !4830)
!4830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4831)
!4831 = !{!4832}
!4832 = !DISubrange(count: 22)
!4833 = !DILocation(line: 636, column: 14, scope: !4818)
!4834 = !DILocation(line: 638, column: 17, scope: !4818)
!4835 = !DILocation(line: 638, column: 15, scope: !4818)
!4836 = !DILocation(line: 639, column: 19, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4818, file: !80, line: 639, column: 9)
!4838 = !DILocation(line: 640, column: 9, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4837, file: !80, line: 639, column: 28)
!4840 = !DILocation(line: 641, column: 5, scope: !4839)
!4841 = !DILocation(line: 643, column: 5, scope: !4818)
!4842 = !DILocation(line: 644, column: 32, scope: !4818)
!4843 = !DILocation(line: 644, column: 5, scope: !4818)
!4844 = !DILocation(line: 645, column: 1, scope: !4818)
!4845 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4846, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{null, !5, !49, !17}
!4848 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4845, file: !80, line: 403, type: !5)
!4849 = !DILocation(line: 0, scope: !4845)
!4850 = !DILocalVariable(name: "key", arg: 2, scope: !4845, file: !80, line: 403, type: !49)
!4851 = !DILocalVariable(name: "key_len", arg: 3, scope: !4845, file: !80, line: 403, type: !17)
!4852 = !DILocalVariable(name: "skey", scope: !4845, file: !80, line: 406, type: !4853)
!4853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4854)
!4854 = !{!4855}
!4855 = !DISubrange(count: 60)
!4856 = !DILocation(line: 406, column: 14, scope: !4845)
!4857 = !DILocation(line: 410, column: 26, scope: !4845)
!4858 = !DILocalVariable(name: "nrounds", scope: !4845, file: !80, line: 407, type: !17)
!4859 = !DILocation(line: 409, column: 19, scope: !4845)
!4860 = !DILocalVariable(name: "nk", scope: !4845, file: !80, line: 404, type: !17)
!4861 = !DILocalVariable(name: "nkf", scope: !4845, file: !80, line: 404, type: !17)
!4862 = !DILocation(line: 411, column: 37, scope: !4845)
!4863 = !DILocation(line: 411, column: 5, scope: !4845)
!4864 = !DILocation(line: 412, column: 25, scope: !4845)
!4865 = !DILocation(line: 412, column: 31, scope: !4845)
!4866 = !DILocation(line: 412, column: 11, scope: !4845)
!4867 = !DILocalVariable(name: "tmp", scope: !4845, file: !80, line: 405, type: !19)
!4868 = !DILocalVariable(name: "i", scope: !4845, file: !80, line: 404, type: !17)
!4869 = !DILocalVariable(name: "j", scope: !4845, file: !80, line: 404, type: !17)
!4870 = !DILocalVariable(name: "k", scope: !4845, file: !80, line: 404, type: !17)
!4871 = !DILocation(line: 413, column: 10, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4845, file: !80, line: 413, column: 5)
!4873 = !DILocation(line: 413, scope: !4872)
!4874 = !DILocation(line: 0, scope: !4872)
!4875 = !DILocation(line: 413, column: 34, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4872, file: !80, line: 413, column: 5)
!4877 = !DILocation(line: 413, column: 5, scope: !4872)
!4878 = !DILocation(line: 428, column: 5, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4845, file: !80, line: 428, column: 5)
!4880 = !DILocation(line: 414, column: 15, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !80, line: 414, column: 13)
!4882 = distinct !DILexicalBlock(scope: !4876, file: !80, line: 413, column: 47)
!4883 = !DILocation(line: 415, column: 31, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4881, file: !80, line: 414, column: 21)
!4885 = !DILocation(line: 416, column: 19, scope: !4884)
!4886 = !DILocation(line: 416, column: 35, scope: !4884)
!4887 = !DILocation(line: 416, column: 33, scope: !4884)
!4888 = !DILocation(line: 417, column: 9, scope: !4884)
!4889 = !DILocation(line: 417, column: 23, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4881, file: !80, line: 417, column: 20)
!4891 = !DILocation(line: 417, column: 27, scope: !4890)
!4892 = !DILocation(line: 418, column: 19, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4890, file: !80, line: 417, column: 38)
!4894 = !DILocation(line: 419, column: 9, scope: !4893)
!4895 = !DILocation(line: 0, scope: !4881)
!4896 = !DILocation(line: 420, column: 23, scope: !4882)
!4897 = !DILocation(line: 420, column: 16, scope: !4882)
!4898 = !DILocation(line: 420, column: 13, scope: !4882)
!4899 = !DILocation(line: 421, column: 9, scope: !4882)
!4900 = !DILocation(line: 421, column: 17, scope: !4882)
!4901 = !DILocation(line: 422, column: 13, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4882, file: !80, line: 422, column: 13)
!4903 = !DILocation(line: 422, column: 18, scope: !4902)
!4904 = !DILocation(line: 413, column: 43, scope: !4876)
!4905 = !DILocation(line: 413, column: 5, scope: !4876)
!4906 = distinct !{!4906, !4877, !4907, !323}
!4907 = !DILocation(line: 426, column: 5, scope: !4872)
!4908 = !DILocation(line: 428, scope: !4879)
!4909 = !DILocation(line: 428, column: 26, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4879, file: !80, line: 428, column: 5)
!4911 = !DILocalVariable(name: "q", scope: !4912, file: !80, line: 429, type: !4913)
!4912 = distinct !DILexicalBlock(scope: !4910, file: !80, line: 428, column: 49)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !4914)
!4914 = !{!4915}
!4915 = !DISubrange(count: 8)
!4916 = !DILocation(line: 429, column: 18, scope: !4912)
!4917 = !DILocation(line: 431, column: 43, scope: !4912)
!4918 = !DILocation(line: 431, column: 54, scope: !4912)
!4919 = !DILocation(line: 431, column: 9, scope: !4912)
!4920 = !DILocation(line: 432, column: 16, scope: !4912)
!4921 = !DILocation(line: 432, column: 9, scope: !4912)
!4922 = !DILocation(line: 432, column: 14, scope: !4912)
!4923 = !DILocation(line: 433, column: 9, scope: !4912)
!4924 = !DILocation(line: 433, column: 14, scope: !4912)
!4925 = !DILocation(line: 434, column: 9, scope: !4912)
!4926 = !DILocation(line: 434, column: 14, scope: !4912)
!4927 = !DILocation(line: 435, column: 16, scope: !4912)
!4928 = !DILocation(line: 435, column: 9, scope: !4912)
!4929 = !DILocation(line: 435, column: 14, scope: !4912)
!4930 = !DILocation(line: 436, column: 9, scope: !4912)
!4931 = !DILocation(line: 436, column: 14, scope: !4912)
!4932 = !DILocation(line: 437, column: 9, scope: !4912)
!4933 = !DILocation(line: 437, column: 14, scope: !4912)
!4934 = !DILocation(line: 438, column: 9, scope: !4912)
!4935 = !DILocation(line: 440, column: 14, scope: !4912)
!4936 = !DILocation(line: 440, column: 19, scope: !4912)
!4937 = !DILocation(line: 441, column: 16, scope: !4912)
!4938 = !DILocation(line: 441, column: 21, scope: !4912)
!4939 = !DILocation(line: 441, column: 13, scope: !4912)
!4940 = !DILocation(line: 442, column: 16, scope: !4912)
!4941 = !DILocation(line: 442, column: 21, scope: !4912)
!4942 = !DILocation(line: 442, column: 13, scope: !4912)
!4943 = !DILocation(line: 443, column: 16, scope: !4912)
!4944 = !DILocation(line: 443, column: 21, scope: !4912)
!4945 = !DILocation(line: 443, column: 13, scope: !4912)
!4946 = !DILocation(line: 439, column: 9, scope: !4912)
!4947 = !DILocation(line: 439, column: 26, scope: !4912)
!4948 = !DILocation(line: 445, column: 14, scope: !4912)
!4949 = !DILocation(line: 445, column: 19, scope: !4912)
!4950 = !DILocation(line: 446, column: 16, scope: !4912)
!4951 = !DILocation(line: 446, column: 21, scope: !4912)
!4952 = !DILocation(line: 446, column: 13, scope: !4912)
!4953 = !DILocation(line: 447, column: 16, scope: !4912)
!4954 = !DILocation(line: 447, column: 21, scope: !4912)
!4955 = !DILocation(line: 447, column: 13, scope: !4912)
!4956 = !DILocation(line: 448, column: 16, scope: !4912)
!4957 = !DILocation(line: 448, column: 21, scope: !4912)
!4958 = !DILocation(line: 448, column: 13, scope: !4912)
!4959 = !DILocation(line: 444, column: 21, scope: !4912)
!4960 = !DILocation(line: 444, column: 9, scope: !4912)
!4961 = !DILocation(line: 444, column: 26, scope: !4912)
!4962 = !DILocation(line: 428, column: 35, scope: !4910)
!4963 = !DILocation(line: 428, column: 43, scope: !4910)
!4964 = !DILocation(line: 428, column: 5, scope: !4910)
!4965 = distinct !{!4965, !4878, !4966, !323}
!4966 = !DILocation(line: 449, column: 5, scope: !4879)
!4967 = !DILocation(line: 450, column: 1, scope: !4845)
!4968 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !4969, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{null, !5, !346, !17}
!4971 = !DILocalVariable(name: "skey", arg: 1, scope: !4968, file: !80, line: 452, type: !5)
!4972 = !DILocation(line: 0, scope: !4968)
!4973 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !4968, file: !80, line: 452, type: !346)
!4974 = !DILocalVariable(name: "nrounds", arg: 3, scope: !4968, file: !80, line: 452, type: !17)
!4975 = !DILocation(line: 455, column: 23, scope: !4968)
!4976 = !DILocalVariable(name: "n", scope: !4968, file: !80, line: 453, type: !17)
!4977 = !DILocalVariable(name: "u", scope: !4968, file: !80, line: 453, type: !17)
!4978 = !DILocalVariable(name: "v", scope: !4968, file: !80, line: 453, type: !17)
!4979 = !DILocation(line: 456, column: 10, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4968, file: !80, line: 456, column: 5)
!4981 = !DILocation(line: 456, scope: !4980)
!4982 = !DILocation(line: 456, column: 26, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4980, file: !80, line: 456, column: 5)
!4984 = !DILocation(line: 456, column: 5, scope: !4980)
!4985 = !DILocation(line: 459, column: 29, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4983, file: !80, line: 456, column: 45)
!4987 = !DILocalVariable(name: "x3", scope: !4986, file: !80, line: 457, type: !6)
!4988 = !DILocation(line: 0, scope: !4986)
!4989 = !DILocalVariable(name: "x2", scope: !4986, file: !80, line: 457, type: !6)
!4990 = !DILocalVariable(name: "x1", scope: !4986, file: !80, line: 457, type: !6)
!4991 = !DILocalVariable(name: "x0", scope: !4986, file: !80, line: 457, type: !6)
!4992 = !DILocation(line: 460, column: 12, scope: !4986)
!4993 = !DILocation(line: 464, column: 12, scope: !4986)
!4994 = !DILocation(line: 465, column: 12, scope: !4986)
!4995 = !DILocation(line: 466, column: 12, scope: !4986)
!4996 = !DILocation(line: 467, column: 33, scope: !4986)
!4997 = !DILocation(line: 467, column: 9, scope: !4986)
!4998 = !DILocation(line: 467, column: 21, scope: !4986)
!4999 = !DILocation(line: 468, column: 33, scope: !4986)
!5000 = !DILocation(line: 468, column: 16, scope: !4986)
!5001 = !DILocation(line: 468, column: 9, scope: !4986)
!5002 = !DILocation(line: 468, column: 21, scope: !4986)
!5003 = !DILocation(line: 469, column: 33, scope: !4986)
!5004 = !DILocation(line: 469, column: 16, scope: !4986)
!5005 = !DILocation(line: 469, column: 9, scope: !4986)
!5006 = !DILocation(line: 469, column: 21, scope: !4986)
!5007 = !DILocation(line: 470, column: 33, scope: !4986)
!5008 = !DILocation(line: 470, column: 16, scope: !4986)
!5009 = !DILocation(line: 470, column: 9, scope: !4986)
!5010 = !DILocation(line: 470, column: 21, scope: !4986)
!5011 = !DILocation(line: 456, column: 33, scope: !4983)
!5012 = !DILocation(line: 456, column: 39, scope: !4983)
!5013 = !DILocation(line: 456, column: 5, scope: !4983)
!5014 = distinct !{!5014, !4984, !5015, !323}
!5015 = !DILocation(line: 471, column: 5, scope: !4980)
!5016 = !DILocation(line: 472, column: 1, scope: !4968)
!5017 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5018, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !5020, !15, !49}
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5021 = !DILocalVariable(name: "v", arg: 1, scope: !5017, file: !80, line: 104, type: !5020)
!5022 = !DILocation(line: 0, scope: !5017)
!5023 = !DILocalVariable(name: "num", arg: 2, scope: !5017, file: !80, line: 104, type: !15)
!5024 = !DILocalVariable(name: "src", arg: 3, scope: !5017, file: !80, line: 104, type: !49)
!5025 = !DILocation(line: 105, column: 5, scope: !5017)
!5026 = !DILocation(line: 105, column: 18, scope: !5017)
!5027 = !DILocation(line: 105, column: 15, scope: !5017)
!5028 = !DILocation(line: 106, column: 17, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5017, file: !80, line: 105, column: 23)
!5030 = !DILocation(line: 106, column: 12, scope: !5029)
!5031 = !DILocation(line: 106, column: 15, scope: !5029)
!5032 = !DILocation(line: 107, column: 13, scope: !5029)
!5033 = distinct !{!5033, !5025, !5034, !323}
!5034 = !DILocation(line: 108, column: 5, scope: !5017)
!5035 = !DILocation(line: 109, column: 1, scope: !5017)
!5036 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5037, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!19, !19}
!5039 = !DILocalVariable(name: "x", arg: 1, scope: !5036, file: !80, line: 392, type: !19)
!5040 = !DILocation(line: 0, scope: !5036)
!5041 = !DILocalVariable(name: "q", scope: !5036, file: !80, line: 393, type: !4913)
!5042 = !DILocation(line: 393, column: 14, scope: !5036)
!5043 = !DILocation(line: 395, column: 5, scope: !5036)
!5044 = !DILocation(line: 396, column: 12, scope: !5036)
!5045 = !DILocation(line: 396, column: 10, scope: !5036)
!5046 = !DILocation(line: 397, column: 5, scope: !5036)
!5047 = !DILocation(line: 398, column: 5, scope: !5036)
!5048 = !DILocation(line: 399, column: 5, scope: !5036)
!5049 = !DILocation(line: 400, column: 22, scope: !5036)
!5050 = !DILocation(line: 400, column: 12, scope: !5036)
!5051 = !DILocation(line: 400, column: 5, scope: !5036)
!5052 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5053, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !5, !5, !5055}
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 32)
!5056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5057 = !DILocalVariable(name: "q0", arg: 1, scope: !5052, file: !80, line: 339, type: !5)
!5058 = !DILocation(line: 0, scope: !5052)
!5059 = !DILocalVariable(name: "q1", arg: 2, scope: !5052, file: !80, line: 339, type: !5)
!5060 = !DILocalVariable(name: "w", arg: 3, scope: !5052, file: !80, line: 339, type: !5055)
!5061 = !DILocation(line: 342, column: 10, scope: !5052)
!5062 = !DILocalVariable(name: "x0", scope: !5052, file: !80, line: 340, type: !6)
!5063 = !DILocation(line: 343, column: 10, scope: !5052)
!5064 = !DILocalVariable(name: "x1", scope: !5052, file: !80, line: 340, type: !6)
!5065 = !DILocation(line: 344, column: 10, scope: !5052)
!5066 = !DILocalVariable(name: "x2", scope: !5052, file: !80, line: 340, type: !6)
!5067 = !DILocation(line: 345, column: 10, scope: !5052)
!5068 = !DILocalVariable(name: "x3", scope: !5052, file: !80, line: 340, type: !6)
!5069 = !DILocation(line: 346, column: 15, scope: !5052)
!5070 = !DILocation(line: 346, column: 8, scope: !5052)
!5071 = !DILocation(line: 347, column: 15, scope: !5052)
!5072 = !DILocation(line: 347, column: 8, scope: !5052)
!5073 = !DILocation(line: 348, column: 15, scope: !5052)
!5074 = !DILocation(line: 348, column: 8, scope: !5052)
!5075 = !DILocation(line: 349, column: 15, scope: !5052)
!5076 = !DILocation(line: 349, column: 8, scope: !5052)
!5077 = !DILocation(line: 350, column: 8, scope: !5052)
!5078 = !DILocation(line: 351, column: 8, scope: !5052)
!5079 = !DILocation(line: 352, column: 8, scope: !5052)
!5080 = !DILocation(line: 353, column: 8, scope: !5052)
!5081 = !DILocation(line: 354, column: 15, scope: !5052)
!5082 = !DILocation(line: 354, column: 8, scope: !5052)
!5083 = !DILocation(line: 355, column: 15, scope: !5052)
!5084 = !DILocation(line: 355, column: 8, scope: !5052)
!5085 = !DILocation(line: 358, column: 8, scope: !5052)
!5086 = !DILocation(line: 359, column: 8, scope: !5052)
!5087 = !DILocation(line: 362, column: 20, scope: !5052)
!5088 = !DILocation(line: 362, column: 14, scope: !5052)
!5089 = !DILocation(line: 362, column: 9, scope: !5052)
!5090 = !DILocation(line: 363, column: 20, scope: !5052)
!5091 = !DILocation(line: 363, column: 14, scope: !5052)
!5092 = !DILocation(line: 363, column: 9, scope: !5052)
!5093 = !DILocation(line: 364, column: 1, scope: !5052)
!5094 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5095 = !DILocalVariable(name: "q", arg: 1, scope: !5094, file: !80, line: 309, type: !5)
!5096 = !DILocation(line: 0, scope: !5094)
!5097 = !DILocation(line: 322, column: 5, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 322, column: 5)
!5099 = !DILocalVariable(name: "a", scope: !5098, file: !80, line: 322, type: !6)
!5100 = !DILocation(line: 0, scope: !5098)
!5101 = !DILocalVariable(name: "b", scope: !5098, file: !80, line: 322, type: !6)
!5102 = !DILocation(line: 323, column: 5, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 323, column: 5)
!5104 = !DILocalVariable(name: "a", scope: !5103, file: !80, line: 323, type: !6)
!5105 = !DILocation(line: 0, scope: !5103)
!5106 = !DILocalVariable(name: "b", scope: !5103, file: !80, line: 323, type: !6)
!5107 = !DILocation(line: 324, column: 5, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 324, column: 5)
!5109 = !DILocalVariable(name: "a", scope: !5108, file: !80, line: 324, type: !6)
!5110 = !DILocation(line: 0, scope: !5108)
!5111 = !DILocalVariable(name: "b", scope: !5108, file: !80, line: 324, type: !6)
!5112 = !DILocation(line: 325, column: 5, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 325, column: 5)
!5114 = !DILocalVariable(name: "a", scope: !5113, file: !80, line: 325, type: !6)
!5115 = !DILocation(line: 0, scope: !5113)
!5116 = !DILocalVariable(name: "b", scope: !5113, file: !80, line: 325, type: !6)
!5117 = !DILocation(line: 327, column: 5, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 327, column: 5)
!5119 = !DILocalVariable(name: "a", scope: !5118, file: !80, line: 327, type: !6)
!5120 = !DILocation(line: 0, scope: !5118)
!5121 = !DILocalVariable(name: "b", scope: !5118, file: !80, line: 327, type: !6)
!5122 = !DILocation(line: 328, column: 5, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 328, column: 5)
!5124 = !DILocalVariable(name: "a", scope: !5123, file: !80, line: 328, type: !6)
!5125 = !DILocation(line: 0, scope: !5123)
!5126 = !DILocalVariable(name: "b", scope: !5123, file: !80, line: 328, type: !6)
!5127 = !DILocation(line: 329, column: 5, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 329, column: 5)
!5129 = !DILocalVariable(name: "a", scope: !5128, file: !80, line: 329, type: !6)
!5130 = !DILocation(line: 0, scope: !5128)
!5131 = !DILocalVariable(name: "b", scope: !5128, file: !80, line: 329, type: !6)
!5132 = !DILocation(line: 330, column: 5, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 330, column: 5)
!5134 = !DILocalVariable(name: "a", scope: !5133, file: !80, line: 330, type: !6)
!5135 = !DILocation(line: 0, scope: !5133)
!5136 = !DILocalVariable(name: "b", scope: !5133, file: !80, line: 330, type: !6)
!5137 = !DILocation(line: 332, column: 5, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 332, column: 5)
!5139 = !DILocalVariable(name: "a", scope: !5138, file: !80, line: 332, type: !6)
!5140 = !DILocation(line: 0, scope: !5138)
!5141 = !DILocalVariable(name: "b", scope: !5138, file: !80, line: 332, type: !6)
!5142 = !DILocation(line: 333, column: 5, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 333, column: 5)
!5144 = !DILocalVariable(name: "a", scope: !5143, file: !80, line: 333, type: !6)
!5145 = !DILocation(line: 0, scope: !5143)
!5146 = !DILocalVariable(name: "b", scope: !5143, file: !80, line: 333, type: !6)
!5147 = !DILocation(line: 334, column: 5, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 334, column: 5)
!5149 = !DILocalVariable(name: "a", scope: !5148, file: !80, line: 334, type: !6)
!5150 = !DILocation(line: 0, scope: !5148)
!5151 = !DILocalVariable(name: "b", scope: !5148, file: !80, line: 334, type: !6)
!5152 = !DILocation(line: 335, column: 5, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5094, file: !80, line: 335, column: 5)
!5154 = !DILocalVariable(name: "a", scope: !5153, file: !80, line: 335, type: !6)
!5155 = !DILocation(line: 0, scope: !5153)
!5156 = !DILocalVariable(name: "b", scope: !5153, file: !80, line: 335, type: !6)
!5157 = !DILocation(line: 336, column: 1, scope: !5094)
!5158 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5159 = !DILocalVariable(name: "q", arg: 1, scope: !5158, file: !80, line: 135, type: !5)
!5160 = !DILocation(line: 0, scope: !5158)
!5161 = !DILocation(line: 161, column: 10, scope: !5158)
!5162 = !DILocalVariable(name: "x0", scope: !5158, file: !80, line: 146, type: !6)
!5163 = !DILocation(line: 162, column: 10, scope: !5158)
!5164 = !DILocalVariable(name: "x1", scope: !5158, file: !80, line: 146, type: !6)
!5165 = !DILocation(line: 163, column: 10, scope: !5158)
!5166 = !DILocalVariable(name: "x2", scope: !5158, file: !80, line: 146, type: !6)
!5167 = !DILocation(line: 164, column: 10, scope: !5158)
!5168 = !DILocalVariable(name: "x3", scope: !5158, file: !80, line: 146, type: !6)
!5169 = !DILocation(line: 165, column: 10, scope: !5158)
!5170 = !DILocalVariable(name: "x4", scope: !5158, file: !80, line: 146, type: !6)
!5171 = !DILocation(line: 166, column: 10, scope: !5158)
!5172 = !DILocalVariable(name: "x5", scope: !5158, file: !80, line: 146, type: !6)
!5173 = !DILocation(line: 167, column: 10, scope: !5158)
!5174 = !DILocalVariable(name: "x6", scope: !5158, file: !80, line: 146, type: !6)
!5175 = !DILocation(line: 168, column: 10, scope: !5158)
!5176 = !DILocalVariable(name: "x7", scope: !5158, file: !80, line: 146, type: !6)
!5177 = !DILocation(line: 173, column: 14, scope: !5158)
!5178 = !DILocalVariable(name: "y14", scope: !5158, file: !80, line: 148, type: !6)
!5179 = !DILocation(line: 174, column: 14, scope: !5158)
!5180 = !DILocalVariable(name: "y13", scope: !5158, file: !80, line: 148, type: !6)
!5181 = !DILocation(line: 175, column: 13, scope: !5158)
!5182 = !DILocalVariable(name: "y9", scope: !5158, file: !80, line: 147, type: !6)
!5183 = !DILocation(line: 176, column: 13, scope: !5158)
!5184 = !DILocalVariable(name: "y8", scope: !5158, file: !80, line: 147, type: !6)
!5185 = !DILocation(line: 177, column: 13, scope: !5158)
!5186 = !DILocalVariable(name: "t0", scope: !5158, file: !80, line: 152, type: !6)
!5187 = !DILocation(line: 178, column: 13, scope: !5158)
!5188 = !DILocalVariable(name: "y1", scope: !5158, file: !80, line: 147, type: !6)
!5189 = !DILocation(line: 179, column: 13, scope: !5158)
!5190 = !DILocalVariable(name: "y4", scope: !5158, file: !80, line: 147, type: !6)
!5191 = !DILocation(line: 180, column: 15, scope: !5158)
!5192 = !DILocalVariable(name: "y12", scope: !5158, file: !80, line: 148, type: !6)
!5193 = !DILocation(line: 181, column: 13, scope: !5158)
!5194 = !DILocalVariable(name: "y2", scope: !5158, file: !80, line: 147, type: !6)
!5195 = !DILocation(line: 182, column: 13, scope: !5158)
!5196 = !DILocalVariable(name: "y5", scope: !5158, file: !80, line: 147, type: !6)
!5197 = !DILocation(line: 183, column: 13, scope: !5158)
!5198 = !DILocalVariable(name: "y3", scope: !5158, file: !80, line: 147, type: !6)
!5199 = !DILocation(line: 184, column: 13, scope: !5158)
!5200 = !DILocalVariable(name: "t1", scope: !5158, file: !80, line: 152, type: !6)
!5201 = !DILocation(line: 185, column: 14, scope: !5158)
!5202 = !DILocalVariable(name: "y15", scope: !5158, file: !80, line: 148, type: !6)
!5203 = !DILocation(line: 186, column: 14, scope: !5158)
!5204 = !DILocalVariable(name: "y20", scope: !5158, file: !80, line: 149, type: !6)
!5205 = !DILocation(line: 187, column: 14, scope: !5158)
!5206 = !DILocalVariable(name: "y6", scope: !5158, file: !80, line: 147, type: !6)
!5207 = !DILocation(line: 188, column: 15, scope: !5158)
!5208 = !DILocalVariable(name: "y10", scope: !5158, file: !80, line: 148, type: !6)
!5209 = !DILocation(line: 189, column: 15, scope: !5158)
!5210 = !DILocalVariable(name: "y11", scope: !5158, file: !80, line: 148, type: !6)
!5211 = !DILocation(line: 190, column: 13, scope: !5158)
!5212 = !DILocalVariable(name: "y7", scope: !5158, file: !80, line: 147, type: !6)
!5213 = !DILocation(line: 191, column: 15, scope: !5158)
!5214 = !DILocalVariable(name: "y17", scope: !5158, file: !80, line: 148, type: !6)
!5215 = !DILocalVariable(name: "y19", scope: !5158, file: !80, line: 148, type: !6)
!5216 = !DILocation(line: 193, column: 14, scope: !5158)
!5217 = !DILocalVariable(name: "y16", scope: !5158, file: !80, line: 148, type: !6)
!5218 = !DILocalVariable(name: "y21", scope: !5158, file: !80, line: 149, type: !6)
!5219 = !DILocalVariable(name: "y18", scope: !5158, file: !80, line: 148, type: !6)
!5220 = !DILocation(line: 200, column: 14, scope: !5158)
!5221 = !DILocalVariable(name: "t2", scope: !5158, file: !80, line: 152, type: !6)
!5222 = !DILocation(line: 201, column: 13, scope: !5158)
!5223 = !DILocalVariable(name: "t3", scope: !5158, file: !80, line: 152, type: !6)
!5224 = !DILocation(line: 202, column: 13, scope: !5158)
!5225 = !DILocalVariable(name: "t4", scope: !5158, file: !80, line: 152, type: !6)
!5226 = !DILocation(line: 203, column: 13, scope: !5158)
!5227 = !DILocalVariable(name: "t5", scope: !5158, file: !80, line: 152, type: !6)
!5228 = !DILocalVariable(name: "t6", scope: !5158, file: !80, line: 152, type: !6)
!5229 = !DILocation(line: 205, column: 14, scope: !5158)
!5230 = !DILocalVariable(name: "t7", scope: !5158, file: !80, line: 152, type: !6)
!5231 = !DILocation(line: 206, column: 13, scope: !5158)
!5232 = !DILocalVariable(name: "t8", scope: !5158, file: !80, line: 152, type: !6)
!5233 = !DILocalVariable(name: "t9", scope: !5158, file: !80, line: 152, type: !6)
!5234 = !DILocation(line: 208, column: 14, scope: !5158)
!5235 = !DILocalVariable(name: "t10", scope: !5158, file: !80, line: 153, type: !6)
!5236 = !DILocalVariable(name: "t11", scope: !5158, file: !80, line: 153, type: !6)
!5237 = !DILocation(line: 210, column: 14, scope: !5158)
!5238 = !DILocalVariable(name: "t12", scope: !5158, file: !80, line: 153, type: !6)
!5239 = !DILocation(line: 211, column: 15, scope: !5158)
!5240 = !DILocalVariable(name: "t13", scope: !5158, file: !80, line: 153, type: !6)
!5241 = !DILocation(line: 212, column: 15, scope: !5158)
!5242 = !DILocalVariable(name: "t14", scope: !5158, file: !80, line: 153, type: !6)
!5243 = !DILocation(line: 213, column: 14, scope: !5158)
!5244 = !DILocalVariable(name: "t15", scope: !5158, file: !80, line: 153, type: !6)
!5245 = !DILocation(line: 214, column: 15, scope: !5158)
!5246 = !DILocalVariable(name: "t16", scope: !5158, file: !80, line: 153, type: !6)
!5247 = !DILocation(line: 215, column: 14, scope: !5158)
!5248 = !DILocalVariable(name: "t17", scope: !5158, file: !80, line: 153, type: !6)
!5249 = !DILocalVariable(name: "t18", scope: !5158, file: !80, line: 153, type: !6)
!5250 = !DILocalVariable(name: "t19", scope: !5158, file: !80, line: 153, type: !6)
!5251 = !DILocalVariable(name: "t20", scope: !5158, file: !80, line: 154, type: !6)
!5252 = !DILocation(line: 219, column: 15, scope: !5158)
!5253 = !DILocalVariable(name: "t21", scope: !5158, file: !80, line: 154, type: !6)
!5254 = !DILocation(line: 220, column: 15, scope: !5158)
!5255 = !DILocalVariable(name: "t22", scope: !5158, file: !80, line: 154, type: !6)
!5256 = !DILocation(line: 221, column: 15, scope: !5158)
!5257 = !DILocalVariable(name: "t23", scope: !5158, file: !80, line: 154, type: !6)
!5258 = !DILocation(line: 222, column: 15, scope: !5158)
!5259 = !DILocalVariable(name: "t24", scope: !5158, file: !80, line: 154, type: !6)
!5260 = !DILocation(line: 224, column: 15, scope: !5158)
!5261 = !DILocalVariable(name: "t25", scope: !5158, file: !80, line: 154, type: !6)
!5262 = !DILocation(line: 225, column: 15, scope: !5158)
!5263 = !DILocalVariable(name: "t26", scope: !5158, file: !80, line: 154, type: !6)
!5264 = !DILocation(line: 226, column: 15, scope: !5158)
!5265 = !DILocalVariable(name: "t27", scope: !5158, file: !80, line: 154, type: !6)
!5266 = !DILocation(line: 227, column: 15, scope: !5158)
!5267 = !DILocalVariable(name: "t28", scope: !5158, file: !80, line: 154, type: !6)
!5268 = !DILocation(line: 228, column: 15, scope: !5158)
!5269 = !DILocalVariable(name: "t29", scope: !5158, file: !80, line: 154, type: !6)
!5270 = !DILocation(line: 229, column: 15, scope: !5158)
!5271 = !DILocalVariable(name: "t30", scope: !5158, file: !80, line: 155, type: !6)
!5272 = !DILocation(line: 230, column: 15, scope: !5158)
!5273 = !DILocalVariable(name: "t31", scope: !5158, file: !80, line: 155, type: !6)
!5274 = !DILocation(line: 231, column: 15, scope: !5158)
!5275 = !DILocalVariable(name: "t32", scope: !5158, file: !80, line: 155, type: !6)
!5276 = !DILocation(line: 232, column: 15, scope: !5158)
!5277 = !DILocalVariable(name: "t33", scope: !5158, file: !80, line: 155, type: !6)
!5278 = !DILocation(line: 233, column: 15, scope: !5158)
!5279 = !DILocalVariable(name: "t34", scope: !5158, file: !80, line: 155, type: !6)
!5280 = !DILocation(line: 234, column: 15, scope: !5158)
!5281 = !DILocalVariable(name: "t35", scope: !5158, file: !80, line: 155, type: !6)
!5282 = !DILocation(line: 235, column: 15, scope: !5158)
!5283 = !DILocalVariable(name: "t36", scope: !5158, file: !80, line: 155, type: !6)
!5284 = !DILocation(line: 236, column: 15, scope: !5158)
!5285 = !DILocalVariable(name: "t37", scope: !5158, file: !80, line: 155, type: !6)
!5286 = !DILocation(line: 237, column: 15, scope: !5158)
!5287 = !DILocalVariable(name: "t38", scope: !5158, file: !80, line: 155, type: !6)
!5288 = !DILocation(line: 238, column: 15, scope: !5158)
!5289 = !DILocalVariable(name: "t39", scope: !5158, file: !80, line: 155, type: !6)
!5290 = !DILocation(line: 239, column: 15, scope: !5158)
!5291 = !DILocalVariable(name: "t40", scope: !5158, file: !80, line: 156, type: !6)
!5292 = !DILocation(line: 241, column: 15, scope: !5158)
!5293 = !DILocalVariable(name: "t41", scope: !5158, file: !80, line: 156, type: !6)
!5294 = !DILocation(line: 242, column: 15, scope: !5158)
!5295 = !DILocalVariable(name: "t42", scope: !5158, file: !80, line: 156, type: !6)
!5296 = !DILocation(line: 243, column: 15, scope: !5158)
!5297 = !DILocalVariable(name: "t43", scope: !5158, file: !80, line: 156, type: !6)
!5298 = !DILocation(line: 244, column: 15, scope: !5158)
!5299 = !DILocalVariable(name: "t44", scope: !5158, file: !80, line: 156, type: !6)
!5300 = !DILocation(line: 245, column: 15, scope: !5158)
!5301 = !DILocalVariable(name: "t45", scope: !5158, file: !80, line: 156, type: !6)
!5302 = !DILocation(line: 246, column: 14, scope: !5158)
!5303 = !DILocalVariable(name: "z0", scope: !5158, file: !80, line: 150, type: !6)
!5304 = !DILocation(line: 247, column: 14, scope: !5158)
!5305 = !DILocalVariable(name: "z1", scope: !5158, file: !80, line: 150, type: !6)
!5306 = !DILocation(line: 248, column: 14, scope: !5158)
!5307 = !DILocalVariable(name: "z2", scope: !5158, file: !80, line: 150, type: !6)
!5308 = !DILocation(line: 249, column: 14, scope: !5158)
!5309 = !DILocalVariable(name: "z3", scope: !5158, file: !80, line: 150, type: !6)
!5310 = !DILocation(line: 250, column: 14, scope: !5158)
!5311 = !DILocalVariable(name: "z4", scope: !5158, file: !80, line: 150, type: !6)
!5312 = !DILocation(line: 251, column: 14, scope: !5158)
!5313 = !DILocalVariable(name: "z5", scope: !5158, file: !80, line: 150, type: !6)
!5314 = !DILocation(line: 252, column: 14, scope: !5158)
!5315 = !DILocalVariable(name: "z6", scope: !5158, file: !80, line: 150, type: !6)
!5316 = !DILocation(line: 253, column: 14, scope: !5158)
!5317 = !DILocalVariable(name: "z7", scope: !5158, file: !80, line: 150, type: !6)
!5318 = !DILocation(line: 254, column: 14, scope: !5158)
!5319 = !DILocalVariable(name: "z8", scope: !5158, file: !80, line: 150, type: !6)
!5320 = !DILocation(line: 255, column: 14, scope: !5158)
!5321 = !DILocalVariable(name: "z9", scope: !5158, file: !80, line: 150, type: !6)
!5322 = !DILocation(line: 256, column: 15, scope: !5158)
!5323 = !DILocalVariable(name: "z10", scope: !5158, file: !80, line: 151, type: !6)
!5324 = !DILocation(line: 257, column: 15, scope: !5158)
!5325 = !DILocalVariable(name: "z11", scope: !5158, file: !80, line: 151, type: !6)
!5326 = !DILocation(line: 258, column: 15, scope: !5158)
!5327 = !DILocalVariable(name: "z12", scope: !5158, file: !80, line: 151, type: !6)
!5328 = !DILocation(line: 259, column: 15, scope: !5158)
!5329 = !DILocalVariable(name: "z13", scope: !5158, file: !80, line: 151, type: !6)
!5330 = !DILocation(line: 260, column: 15, scope: !5158)
!5331 = !DILocalVariable(name: "z14", scope: !5158, file: !80, line: 151, type: !6)
!5332 = !DILocation(line: 261, column: 15, scope: !5158)
!5333 = !DILocalVariable(name: "z15", scope: !5158, file: !80, line: 151, type: !6)
!5334 = !DILocation(line: 262, column: 15, scope: !5158)
!5335 = !DILocalVariable(name: "z16", scope: !5158, file: !80, line: 151, type: !6)
!5336 = !DILocation(line: 263, column: 15, scope: !5158)
!5337 = !DILocalVariable(name: "z17", scope: !5158, file: !80, line: 151, type: !6)
!5338 = !DILocation(line: 268, column: 15, scope: !5158)
!5339 = !DILocalVariable(name: "t46", scope: !5158, file: !80, line: 156, type: !6)
!5340 = !DILocation(line: 269, column: 15, scope: !5158)
!5341 = !DILocalVariable(name: "t47", scope: !5158, file: !80, line: 156, type: !6)
!5342 = !DILocation(line: 270, column: 14, scope: !5158)
!5343 = !DILocalVariable(name: "t48", scope: !5158, file: !80, line: 156, type: !6)
!5344 = !DILocation(line: 271, column: 14, scope: !5158)
!5345 = !DILocalVariable(name: "t49", scope: !5158, file: !80, line: 156, type: !6)
!5346 = !DILocation(line: 272, column: 14, scope: !5158)
!5347 = !DILocalVariable(name: "t50", scope: !5158, file: !80, line: 157, type: !6)
!5348 = !DILocation(line: 273, column: 14, scope: !5158)
!5349 = !DILocalVariable(name: "t51", scope: !5158, file: !80, line: 157, type: !6)
!5350 = !DILocation(line: 274, column: 14, scope: !5158)
!5351 = !DILocalVariable(name: "t52", scope: !5158, file: !80, line: 157, type: !6)
!5352 = !DILocation(line: 275, column: 14, scope: !5158)
!5353 = !DILocalVariable(name: "t53", scope: !5158, file: !80, line: 157, type: !6)
!5354 = !DILocation(line: 276, column: 14, scope: !5158)
!5355 = !DILocalVariable(name: "t54", scope: !5158, file: !80, line: 157, type: !6)
!5356 = !DILocation(line: 277, column: 15, scope: !5158)
!5357 = !DILocalVariable(name: "t55", scope: !5158, file: !80, line: 157, type: !6)
!5358 = !DILocation(line: 278, column: 15, scope: !5158)
!5359 = !DILocalVariable(name: "t56", scope: !5158, file: !80, line: 157, type: !6)
!5360 = !DILocation(line: 279, column: 15, scope: !5158)
!5361 = !DILocalVariable(name: "t57", scope: !5158, file: !80, line: 157, type: !6)
!5362 = !DILocation(line: 280, column: 14, scope: !5158)
!5363 = !DILocalVariable(name: "t58", scope: !5158, file: !80, line: 157, type: !6)
!5364 = !DILocation(line: 281, column: 14, scope: !5158)
!5365 = !DILocalVariable(name: "t59", scope: !5158, file: !80, line: 157, type: !6)
!5366 = !DILocation(line: 282, column: 15, scope: !5158)
!5367 = !DILocalVariable(name: "t60", scope: !5158, file: !80, line: 158, type: !6)
!5368 = !DILocation(line: 283, column: 15, scope: !5158)
!5369 = !DILocalVariable(name: "t61", scope: !5158, file: !80, line: 158, type: !6)
!5370 = !DILocation(line: 284, column: 15, scope: !5158)
!5371 = !DILocalVariable(name: "t62", scope: !5158, file: !80, line: 158, type: !6)
!5372 = !DILocation(line: 285, column: 15, scope: !5158)
!5373 = !DILocalVariable(name: "t63", scope: !5158, file: !80, line: 158, type: !6)
!5374 = !DILocation(line: 286, column: 14, scope: !5158)
!5375 = !DILocalVariable(name: "t64", scope: !5158, file: !80, line: 158, type: !6)
!5376 = !DILocation(line: 287, column: 15, scope: !5158)
!5377 = !DILocalVariable(name: "t65", scope: !5158, file: !80, line: 158, type: !6)
!5378 = !DILocation(line: 288, column: 14, scope: !5158)
!5379 = !DILocalVariable(name: "t66", scope: !5158, file: !80, line: 158, type: !6)
!5380 = !DILocation(line: 289, column: 14, scope: !5158)
!5381 = !DILocalVariable(name: "s0", scope: !5158, file: !80, line: 159, type: !6)
!5382 = !DILocation(line: 290, column: 14, scope: !5158)
!5383 = !DILocalVariable(name: "s6", scope: !5158, file: !80, line: 159, type: !6)
!5384 = !DILocation(line: 291, column: 14, scope: !5158)
!5385 = !DILocalVariable(name: "s7", scope: !5158, file: !80, line: 159, type: !6)
!5386 = !DILocalVariable(name: "t67", scope: !5158, file: !80, line: 158, type: !6)
!5387 = !DILocation(line: 293, column: 14, scope: !5158)
!5388 = !DILocalVariable(name: "s3", scope: !5158, file: !80, line: 159, type: !6)
!5389 = !DILocation(line: 294, column: 14, scope: !5158)
!5390 = !DILocalVariable(name: "s4", scope: !5158, file: !80, line: 159, type: !6)
!5391 = !DILocation(line: 295, column: 14, scope: !5158)
!5392 = !DILocalVariable(name: "s5", scope: !5158, file: !80, line: 159, type: !6)
!5393 = !DILocation(line: 296, column: 14, scope: !5158)
!5394 = !DILocalVariable(name: "s1", scope: !5158, file: !80, line: 159, type: !6)
!5395 = !DILocation(line: 297, column: 14, scope: !5158)
!5396 = !DILocalVariable(name: "s2", scope: !5158, file: !80, line: 159, type: !6)
!5397 = !DILocation(line: 299, column: 5, scope: !5158)
!5398 = !DILocation(line: 299, column: 10, scope: !5158)
!5399 = !DILocation(line: 300, column: 5, scope: !5158)
!5400 = !DILocation(line: 300, column: 10, scope: !5158)
!5401 = !DILocation(line: 301, column: 5, scope: !5158)
!5402 = !DILocation(line: 301, column: 10, scope: !5158)
!5403 = !DILocation(line: 302, column: 5, scope: !5158)
!5404 = !DILocation(line: 302, column: 10, scope: !5158)
!5405 = !DILocation(line: 303, column: 5, scope: !5158)
!5406 = !DILocation(line: 303, column: 10, scope: !5158)
!5407 = !DILocation(line: 304, column: 5, scope: !5158)
!5408 = !DILocation(line: 304, column: 10, scope: !5158)
!5409 = !DILocation(line: 305, column: 5, scope: !5158)
!5410 = !DILocation(line: 305, column: 10, scope: !5158)
!5411 = !DILocation(line: 306, column: 10, scope: !5158)
!5412 = !DILocation(line: 307, column: 1, scope: !5158)
!5413 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5414, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!19, !49}
!5416 = !DILocalVariable(name: "src", arg: 1, scope: !5413, file: !80, line: 96, type: !49)
!5417 = !DILocation(line: 0, scope: !5413)
!5418 = !DILocation(line: 97, column: 22, scope: !5413)
!5419 = !DILocation(line: 97, column: 12, scope: !5413)
!5420 = !DILocation(line: 98, column: 25, scope: !5413)
!5421 = !DILocation(line: 98, column: 15, scope: !5413)
!5422 = !DILocation(line: 98, column: 32, scope: !5413)
!5423 = !DILocation(line: 98, column: 12, scope: !5413)
!5424 = !DILocation(line: 99, column: 25, scope: !5413)
!5425 = !DILocation(line: 99, column: 15, scope: !5413)
!5426 = !DILocation(line: 99, column: 32, scope: !5413)
!5427 = !DILocation(line: 99, column: 12, scope: !5413)
!5428 = !DILocation(line: 100, column: 25, scope: !5413)
!5429 = !DILocation(line: 100, column: 15, scope: !5413)
!5430 = !DILocation(line: 100, column: 32, scope: !5413)
!5431 = !DILocation(line: 100, column: 12, scope: !5413)
!5432 = !DILocation(line: 97, column: 5, scope: !5413)
!5433 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4819, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5434 = !DILocalVariable(name: "r", arg: 1, scope: !5433, file: !80, line: 647, type: !4821)
!5435 = !DILocation(line: 0, scope: !5433)
!5436 = !DILocalVariable(name: "key", arg: 2, scope: !5433, file: !80, line: 647, type: !49)
!5437 = !DILocation(line: 648, column: 5, scope: !5433)
!5438 = !DILocation(line: 649, column: 1, scope: !5433)
!5439 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5440, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{null, !5442, !49}
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 32)
!5443 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5444)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5445)
!5445 = !{!5446}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5444, file: !80, line: 50, baseType: !5, size: 32)
!5447 = !DILocalVariable(name: "r", arg: 1, scope: !5439, file: !80, line: 652, type: !5442)
!5448 = !DILocation(line: 0, scope: !5439)
!5449 = !DILocalVariable(name: "key", arg: 2, scope: !5439, file: !80, line: 652, type: !49)
!5450 = !DILocalVariable(name: "skey", scope: !5439, file: !80, line: 653, type: !5451)
!5451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5452)
!5452 = !{!5453}
!5453 = !DISubrange(count: 26)
!5454 = !DILocation(line: 653, column: 14, scope: !5439)
!5455 = !DILocation(line: 654, column: 17, scope: !5439)
!5456 = !DILocation(line: 654, column: 15, scope: !5439)
!5457 = !DILocation(line: 655, column: 19, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5439, file: !80, line: 655, column: 9)
!5459 = !DILocation(line: 656, column: 9, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5458, file: !80, line: 655, column: 28)
!5461 = !DILocation(line: 657, column: 5, scope: !5460)
!5462 = !DILocation(line: 659, column: 5, scope: !5439)
!5463 = !DILocation(line: 660, column: 32, scope: !5439)
!5464 = !DILocation(line: 660, column: 5, scope: !5439)
!5465 = !DILocation(line: 661, column: 1, scope: !5439)
!5466 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5440, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5467 = !DILocalVariable(name: "r", arg: 1, scope: !5466, file: !80, line: 664, type: !5442)
!5468 = !DILocation(line: 0, scope: !5466)
!5469 = !DILocalVariable(name: "key", arg: 2, scope: !5466, file: !80, line: 664, type: !49)
!5470 = !DILocation(line: 665, column: 5, scope: !5466)
!5471 = !DILocation(line: 666, column: 1, scope: !5466)
!5472 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5473, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{null, !5475, !49}
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 32)
!5476 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5477)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5478)
!5478 = !{!5479}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5477, file: !80, line: 55, baseType: !5, size: 32)
!5480 = !DILocalVariable(name: "r", arg: 1, scope: !5472, file: !80, line: 669, type: !5475)
!5481 = !DILocation(line: 0, scope: !5472)
!5482 = !DILocalVariable(name: "key", arg: 2, scope: !5472, file: !80, line: 669, type: !49)
!5483 = !DILocalVariable(name: "skey", scope: !5472, file: !80, line: 670, type: !5484)
!5484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5485)
!5485 = !{!5486}
!5486 = !DISubrange(count: 30)
!5487 = !DILocation(line: 670, column: 14, scope: !5472)
!5488 = !DILocation(line: 671, column: 17, scope: !5472)
!5489 = !DILocation(line: 671, column: 15, scope: !5472)
!5490 = !DILocation(line: 672, column: 19, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5472, file: !80, line: 672, column: 9)
!5492 = !DILocation(line: 673, column: 9, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5491, file: !80, line: 672, column: 28)
!5494 = !DILocation(line: 674, column: 5, scope: !5493)
!5495 = !DILocation(line: 676, column: 5, scope: !5472)
!5496 = !DILocation(line: 677, column: 32, scope: !5472)
!5497 = !DILocation(line: 677, column: 5, scope: !5472)
!5498 = !DILocation(line: 678, column: 1, scope: !5472)
!5499 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5473, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5500 = !DILocalVariable(name: "r", arg: 1, scope: !5499, file: !80, line: 681, type: !5475)
!5501 = !DILocation(line: 0, scope: !5499)
!5502 = !DILocalVariable(name: "key", arg: 2, scope: !5499, file: !80, line: 681, type: !49)
!5503 = !DILocation(line: 682, column: 5, scope: !5499)
!5504 = !DILocation(line: 683, column: 1, scope: !5499)
!5505 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5506, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{null, !18, !49, !15, !5508}
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 32)
!5509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4822)
!5510 = !DILocalVariable(name: "out", arg: 1, scope: !5505, file: !80, line: 686, type: !18)
!5511 = !DILocation(line: 0, scope: !5505)
!5512 = !DILocalVariable(name: "in", arg: 2, scope: !5505, file: !80, line: 686, type: !49)
!5513 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5505, file: !80, line: 686, type: !15)
!5514 = !DILocalVariable(name: "ctx", arg: 4, scope: !5505, file: !80, line: 686, type: !5508)
!5515 = !DILocation(line: 687, column: 36, scope: !5505)
!5516 = !DILocation(line: 687, column: 5, scope: !5505)
!5517 = !DILocation(line: 688, column: 1, scope: !5505)
!5518 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5519, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{null, !18, !49, !15, !346, !17}
!5521 = !DILocalVariable(name: "out", arg: 1, scope: !5518, file: !80, line: 587, type: !18)
!5522 = !DILocation(line: 0, scope: !5518)
!5523 = !DILocalVariable(name: "in", arg: 2, scope: !5518, file: !80, line: 587, type: !49)
!5524 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5518, file: !80, line: 587, type: !15)
!5525 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5518, file: !80, line: 587, type: !346)
!5526 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5518, file: !80, line: 587, type: !17)
!5527 = !DILocalVariable(name: "blocks", scope: !5518, file: !80, line: 588, type: !5528)
!5528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !1250)
!5529 = !DILocation(line: 588, column: 14, scope: !5518)
!5530 = !DILocalVariable(name: "t", scope: !5518, file: !80, line: 589, type: !732)
!5531 = !DILocation(line: 589, column: 19, scope: !5518)
!5532 = !DILocation(line: 591, column: 5, scope: !5518)
!5533 = !DILocation(line: 591, column: 20, scope: !5518)
!5534 = !DILocation(line: 592, column: 9, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5518, file: !80, line: 591, column: 26)
!5536 = !DILocation(line: 593, column: 9, scope: !5535)
!5537 = !DILocation(line: 594, column: 17, scope: !5535)
!5538 = !DILocation(line: 595, column: 12, scope: !5535)
!5539 = !DILocation(line: 596, column: 13, scope: !5535)
!5540 = distinct !{!5540, !5532, !5541, !323}
!5541 = !DILocation(line: 597, column: 5, scope: !5518)
!5542 = !DILocation(line: 599, column: 9, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5518, file: !80, line: 599, column: 9)
!5544 = !DILocation(line: 600, column: 42, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5543, file: !80, line: 599, column: 18)
!5546 = !DILocation(line: 600, column: 9, scope: !5545)
!5547 = !DILocation(line: 601, column: 9, scope: !5545)
!5548 = !DILocation(line: 602, column: 32, scope: !5545)
!5549 = !DILocation(line: 602, column: 9, scope: !5545)
!5550 = !DILocation(line: 603, column: 5, scope: !5545)
!5551 = !DILocation(line: 604, column: 1, scope: !5518)
!5552 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5553, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !18, !5055, !346, !17}
!5555 = !DILocalVariable(name: "out", arg: 1, scope: !5552, file: !80, line: 545, type: !18)
!5556 = !DILocation(line: 0, scope: !5552)
!5557 = !DILocalVariable(name: "ivw", arg: 2, scope: !5552, file: !80, line: 545, type: !5055)
!5558 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5552, file: !80, line: 545, type: !346)
!5559 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5552, file: !80, line: 545, type: !17)
!5560 = !DILocalVariable(name: "w", scope: !5552, file: !80, line: 546, type: !5528)
!5561 = !DILocation(line: 546, column: 14, scope: !5552)
!5562 = !DILocalVariable(name: "q", scope: !5552, file: !80, line: 547, type: !4913)
!5563 = !DILocation(line: 547, column: 14, scope: !5552)
!5564 = !DILocation(line: 550, column: 5, scope: !5552)
!5565 = !DILocalVariable(name: "i", scope: !5552, file: !80, line: 548, type: !17)
!5566 = !DILocation(line: 551, column: 10, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5552, file: !80, line: 551, column: 5)
!5568 = !DILocation(line: 551, scope: !5567)
!5569 = !DILocation(line: 551, column: 19, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5567, file: !80, line: 551, column: 5)
!5571 = !DILocation(line: 551, column: 5, scope: !5567)
!5572 = !DILocation(line: 552, column: 36, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5570, file: !80, line: 551, column: 29)
!5574 = !DILocation(line: 552, column: 47, scope: !5573)
!5575 = !DILocation(line: 552, column: 43, scope: !5573)
!5576 = !DILocation(line: 552, column: 55, scope: !5573)
!5577 = !DILocation(line: 552, column: 9, scope: !5573)
!5578 = !DILocation(line: 551, column: 25, scope: !5570)
!5579 = !DILocation(line: 551, column: 5, scope: !5570)
!5580 = distinct !{!5580, !5571, !5581, !323}
!5581 = !DILocation(line: 553, column: 5, scope: !5567)
!5582 = !DILocation(line: 554, column: 5, scope: !5552)
!5583 = !DILocation(line: 557, column: 5, scope: !5552)
!5584 = !DILocation(line: 558, column: 10, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5552, file: !80, line: 558, column: 5)
!5586 = !DILocation(line: 558, scope: !5585)
!5587 = !DILocation(line: 558, column: 19, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5585, file: !80, line: 558, column: 5)
!5589 = !DILocation(line: 558, column: 5, scope: !5585)
!5590 = !DILocation(line: 559, column: 9, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5588, file: !80, line: 558, column: 35)
!5592 = !DILocation(line: 560, column: 9, scope: !5591)
!5593 = !DILocation(line: 561, column: 9, scope: !5591)
!5594 = !DILocation(line: 562, column: 33, scope: !5591)
!5595 = !DILocation(line: 562, column: 9, scope: !5591)
!5596 = !DILocation(line: 558, column: 31, scope: !5588)
!5597 = !DILocation(line: 558, column: 5, scope: !5588)
!5598 = distinct !{!5598, !5589, !5599, !323}
!5599 = !DILocation(line: 563, column: 5, scope: !5585)
!5600 = !DILocation(line: 564, column: 5, scope: !5552)
!5601 = !DILocation(line: 565, column: 5, scope: !5552)
!5602 = !DILocation(line: 566, column: 29, scope: !5552)
!5603 = !DILocation(line: 566, column: 5, scope: !5552)
!5604 = !DILocation(line: 568, column: 5, scope: !5552)
!5605 = !DILocation(line: 569, column: 10, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5552, file: !80, line: 569, column: 5)
!5607 = !DILocation(line: 569, scope: !5606)
!5608 = !DILocation(line: 569, column: 19, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5606, file: !80, line: 569, column: 5)
!5610 = !DILocation(line: 569, column: 5, scope: !5606)
!5611 = !DILocation(line: 570, column: 38, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5609, file: !80, line: 569, column: 30)
!5613 = !DILocation(line: 570, column: 50, scope: !5612)
!5614 = !DILocation(line: 570, column: 60, scope: !5612)
!5615 = !DILocation(line: 570, column: 56, scope: !5612)
!5616 = !DILocation(line: 570, column: 9, scope: !5612)
!5617 = !DILocation(line: 569, column: 26, scope: !5609)
!5618 = !DILocation(line: 569, column: 5, scope: !5609)
!5619 = distinct !{!5619, !5610, !5620, !323}
!5620 = !DILocation(line: 571, column: 5, scope: !5606)
!5621 = !DILocation(line: 572, column: 5, scope: !5552)
!5622 = !DILocation(line: 573, column: 1, scope: !5552)
!5623 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5624, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !5, !346}
!5626 = !DILocalVariable(name: "q", arg: 1, scope: !5623, file: !80, line: 475, type: !5)
!5627 = !DILocation(line: 0, scope: !5623)
!5628 = !DILocalVariable(name: "sk", arg: 2, scope: !5623, file: !80, line: 475, type: !346)
!5629 = !DILocation(line: 476, column: 13, scope: !5623)
!5630 = !DILocation(line: 476, column: 10, scope: !5623)
!5631 = !DILocation(line: 477, column: 13, scope: !5623)
!5632 = !DILocation(line: 477, column: 5, scope: !5623)
!5633 = !DILocation(line: 477, column: 10, scope: !5623)
!5634 = !DILocation(line: 478, column: 13, scope: !5623)
!5635 = !DILocation(line: 478, column: 5, scope: !5623)
!5636 = !DILocation(line: 478, column: 10, scope: !5623)
!5637 = !DILocation(line: 479, column: 13, scope: !5623)
!5638 = !DILocation(line: 479, column: 5, scope: !5623)
!5639 = !DILocation(line: 479, column: 10, scope: !5623)
!5640 = !DILocation(line: 480, column: 13, scope: !5623)
!5641 = !DILocation(line: 480, column: 5, scope: !5623)
!5642 = !DILocation(line: 480, column: 10, scope: !5623)
!5643 = !DILocation(line: 481, column: 13, scope: !5623)
!5644 = !DILocation(line: 481, column: 5, scope: !5623)
!5645 = !DILocation(line: 481, column: 10, scope: !5623)
!5646 = !DILocation(line: 482, column: 13, scope: !5623)
!5647 = !DILocation(line: 482, column: 5, scope: !5623)
!5648 = !DILocation(line: 482, column: 10, scope: !5623)
!5649 = !DILocation(line: 483, column: 13, scope: !5623)
!5650 = !DILocation(line: 483, column: 5, scope: !5623)
!5651 = !DILocation(line: 483, column: 10, scope: !5623)
!5652 = !DILocation(line: 484, column: 1, scope: !5623)
!5653 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5654 = !DILocalVariable(name: "q", arg: 1, scope: !5653, file: !80, line: 486, type: !5)
!5655 = !DILocation(line: 0, scope: !5653)
!5656 = !DILocalVariable(name: "i", scope: !5653, file: !80, line: 487, type: !45)
!5657 = !DILocation(line: 489, column: 10, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5653, file: !80, line: 489, column: 5)
!5659 = !DILocation(line: 489, scope: !5658)
!5660 = !DILocation(line: 489, column: 19, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5658, file: !80, line: 489, column: 5)
!5662 = !DILocation(line: 489, column: 5, scope: !5658)
!5663 = !DILocation(line: 492, column: 13, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5661, file: !80, line: 489, column: 30)
!5665 = !DILocalVariable(name: "x", scope: !5664, file: !80, line: 490, type: !6)
!5666 = !DILocation(line: 0, scope: !5664)
!5667 = !DILocation(line: 493, column: 19, scope: !5664)
!5668 = !DILocation(line: 494, column: 54, scope: !5664)
!5669 = !DILocation(line: 494, column: 16, scope: !5664)
!5670 = !DILocation(line: 495, column: 54, scope: !5664)
!5671 = !DILocation(line: 495, column: 16, scope: !5664)
!5672 = !DILocation(line: 496, column: 54, scope: !5664)
!5673 = !DILocation(line: 496, column: 16, scope: !5664)
!5674 = !DILocation(line: 497, column: 54, scope: !5664)
!5675 = !DILocation(line: 497, column: 16, scope: !5664)
!5676 = !DILocation(line: 498, column: 54, scope: !5664)
!5677 = !DILocation(line: 498, column: 16, scope: !5664)
!5678 = !DILocation(line: 499, column: 54, scope: !5664)
!5679 = !DILocation(line: 499, column: 16, scope: !5664)
!5680 = !DILocation(line: 493, column: 9, scope: !5664)
!5681 = !DILocation(line: 493, column: 14, scope: !5664)
!5682 = !DILocation(line: 489, column: 26, scope: !5661)
!5683 = !DILocation(line: 489, column: 5, scope: !5661)
!5684 = distinct !{!5684, !5662, !5685, !323}
!5685 = !DILocation(line: 500, column: 5, scope: !5658)
!5686 = !DILocation(line: 501, column: 1, scope: !5653)
!5687 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5688 = !DILocalVariable(name: "q", arg: 1, scope: !5687, file: !80, line: 507, type: !5)
!5689 = !DILocation(line: 0, scope: !5687)
!5690 = !DILocation(line: 511, column: 10, scope: !5687)
!5691 = !DILocalVariable(name: "q0", scope: !5687, file: !80, line: 508, type: !6)
!5692 = !DILocation(line: 512, column: 10, scope: !5687)
!5693 = !DILocalVariable(name: "q1", scope: !5687, file: !80, line: 508, type: !6)
!5694 = !DILocation(line: 513, column: 10, scope: !5687)
!5695 = !DILocalVariable(name: "q2", scope: !5687, file: !80, line: 508, type: !6)
!5696 = !DILocation(line: 514, column: 10, scope: !5687)
!5697 = !DILocalVariable(name: "q3", scope: !5687, file: !80, line: 508, type: !6)
!5698 = !DILocation(line: 515, column: 10, scope: !5687)
!5699 = !DILocalVariable(name: "q4", scope: !5687, file: !80, line: 508, type: !6)
!5700 = !DILocation(line: 516, column: 10, scope: !5687)
!5701 = !DILocalVariable(name: "q5", scope: !5687, file: !80, line: 508, type: !6)
!5702 = !DILocation(line: 517, column: 10, scope: !5687)
!5703 = !DILocalVariable(name: "q6", scope: !5687, file: !80, line: 508, type: !6)
!5704 = !DILocation(line: 518, column: 10, scope: !5687)
!5705 = !DILocalVariable(name: "q7", scope: !5687, file: !80, line: 508, type: !6)
!5706 = !DILocation(line: 519, column: 21, scope: !5687)
!5707 = !DILocalVariable(name: "r0", scope: !5687, file: !80, line: 509, type: !6)
!5708 = !DILocation(line: 520, column: 21, scope: !5687)
!5709 = !DILocalVariable(name: "r1", scope: !5687, file: !80, line: 509, type: !6)
!5710 = !DILocation(line: 521, column: 21, scope: !5687)
!5711 = !DILocalVariable(name: "r2", scope: !5687, file: !80, line: 509, type: !6)
!5712 = !DILocation(line: 522, column: 21, scope: !5687)
!5713 = !DILocalVariable(name: "r3", scope: !5687, file: !80, line: 509, type: !6)
!5714 = !DILocation(line: 523, column: 21, scope: !5687)
!5715 = !DILocalVariable(name: "r4", scope: !5687, file: !80, line: 509, type: !6)
!5716 = !DILocation(line: 524, column: 21, scope: !5687)
!5717 = !DILocalVariable(name: "r5", scope: !5687, file: !80, line: 509, type: !6)
!5718 = !DILocation(line: 525, column: 21, scope: !5687)
!5719 = !DILocalVariable(name: "r6", scope: !5687, file: !80, line: 509, type: !6)
!5720 = !DILocation(line: 526, column: 21, scope: !5687)
!5721 = !DILocalVariable(name: "r7", scope: !5687, file: !80, line: 509, type: !6)
!5722 = !DILocation(line: 528, column: 37, scope: !5687)
!5723 = !DILocation(line: 528, column: 27, scope: !5687)
!5724 = !DILocation(line: 528, column: 25, scope: !5687)
!5725 = !DILocation(line: 528, column: 10, scope: !5687)
!5726 = !DILocation(line: 529, column: 47, scope: !5687)
!5727 = !DILocation(line: 529, column: 37, scope: !5687)
!5728 = !DILocation(line: 529, column: 35, scope: !5687)
!5729 = !DILocation(line: 529, column: 5, scope: !5687)
!5730 = !DILocation(line: 529, column: 10, scope: !5687)
!5731 = !DILocation(line: 530, column: 37, scope: !5687)
!5732 = !DILocation(line: 530, column: 27, scope: !5687)
!5733 = !DILocation(line: 530, column: 25, scope: !5687)
!5734 = !DILocation(line: 530, column: 5, scope: !5687)
!5735 = !DILocation(line: 530, column: 10, scope: !5687)
!5736 = !DILocation(line: 531, column: 47, scope: !5687)
!5737 = !DILocation(line: 531, column: 37, scope: !5687)
!5738 = !DILocation(line: 531, column: 35, scope: !5687)
!5739 = !DILocation(line: 531, column: 5, scope: !5687)
!5740 = !DILocation(line: 531, column: 10, scope: !5687)
!5741 = !DILocation(line: 532, column: 47, scope: !5687)
!5742 = !DILocation(line: 532, column: 37, scope: !5687)
!5743 = !DILocation(line: 532, column: 35, scope: !5687)
!5744 = !DILocation(line: 532, column: 5, scope: !5687)
!5745 = !DILocation(line: 532, column: 10, scope: !5687)
!5746 = !DILocation(line: 533, column: 37, scope: !5687)
!5747 = !DILocation(line: 533, column: 27, scope: !5687)
!5748 = !DILocation(line: 533, column: 25, scope: !5687)
!5749 = !DILocation(line: 533, column: 5, scope: !5687)
!5750 = !DILocation(line: 533, column: 10, scope: !5687)
!5751 = !DILocation(line: 534, column: 37, scope: !5687)
!5752 = !DILocation(line: 534, column: 27, scope: !5687)
!5753 = !DILocation(line: 534, column: 25, scope: !5687)
!5754 = !DILocation(line: 534, column: 5, scope: !5687)
!5755 = !DILocation(line: 534, column: 10, scope: !5687)
!5756 = !DILocation(line: 535, column: 37, scope: !5687)
!5757 = !DILocation(line: 535, column: 27, scope: !5687)
!5758 = !DILocation(line: 535, column: 25, scope: !5687)
!5759 = !DILocation(line: 535, column: 5, scope: !5687)
!5760 = !DILocation(line: 535, column: 10, scope: !5687)
!5761 = !DILocation(line: 536, column: 1, scope: !5687)
!5762 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5763, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{null, !5020, !6, !6}
!5765 = !DILocalVariable(name: "w", arg: 1, scope: !5762, file: !80, line: 367, type: !5020)
!5766 = !DILocation(line: 0, scope: !5762)
!5767 = !DILocalVariable(name: "q0", arg: 2, scope: !5762, file: !80, line: 367, type: !6)
!5768 = !DILocalVariable(name: "q1", arg: 3, scope: !5762, file: !80, line: 367, type: !6)
!5769 = !DILocation(line: 370, column: 13, scope: !5762)
!5770 = !DILocalVariable(name: "x0", scope: !5762, file: !80, line: 368, type: !6)
!5771 = !DILocation(line: 371, column: 13, scope: !5762)
!5772 = !DILocalVariable(name: "x1", scope: !5762, file: !80, line: 368, type: !6)
!5773 = !DILocation(line: 372, column: 14, scope: !5762)
!5774 = !DILocation(line: 372, column: 20, scope: !5762)
!5775 = !DILocalVariable(name: "x2", scope: !5762, file: !80, line: 368, type: !6)
!5776 = !DILocation(line: 373, column: 14, scope: !5762)
!5777 = !DILocation(line: 373, column: 20, scope: !5762)
!5778 = !DILocalVariable(name: "x3", scope: !5762, file: !80, line: 368, type: !6)
!5779 = !DILocation(line: 374, column: 15, scope: !5762)
!5780 = !DILocation(line: 374, column: 8, scope: !5762)
!5781 = !DILocation(line: 375, column: 15, scope: !5762)
!5782 = !DILocation(line: 375, column: 8, scope: !5762)
!5783 = !DILocation(line: 376, column: 8, scope: !5762)
!5784 = !DILocation(line: 377, column: 8, scope: !5762)
!5785 = !DILocation(line: 378, column: 8, scope: !5762)
!5786 = !DILocation(line: 379, column: 8, scope: !5762)
!5787 = !DILocation(line: 382, column: 41, scope: !5762)
!5788 = !DILocation(line: 382, column: 25, scope: !5762)
!5789 = !DILocation(line: 382, column: 10, scope: !5762)
!5790 = !DILocation(line: 383, column: 41, scope: !5762)
!5791 = !DILocation(line: 383, column: 25, scope: !5762)
!5792 = !DILocation(line: 383, column: 5, scope: !5762)
!5793 = !DILocation(line: 383, column: 10, scope: !5762)
!5794 = !DILocation(line: 384, column: 41, scope: !5762)
!5795 = !DILocation(line: 384, column: 25, scope: !5762)
!5796 = !DILocation(line: 384, column: 5, scope: !5762)
!5797 = !DILocation(line: 384, column: 10, scope: !5762)
!5798 = !DILocation(line: 385, column: 41, scope: !5762)
!5799 = !DILocation(line: 385, column: 25, scope: !5762)
!5800 = !DILocation(line: 385, column: 5, scope: !5762)
!5801 = !DILocation(line: 385, column: 10, scope: !5762)
!5802 = !DILocation(line: 386, column: 1, scope: !5762)
!5803 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5804, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{null, !18, !5055, !15}
!5806 = !DILocalVariable(name: "dst", arg: 1, scope: !5803, file: !80, line: 127, type: !18)
!5807 = !DILocation(line: 0, scope: !5803)
!5808 = !DILocalVariable(name: "v", arg: 2, scope: !5803, file: !80, line: 127, type: !5055)
!5809 = !DILocalVariable(name: "num", arg: 3, scope: !5803, file: !80, line: 127, type: !15)
!5810 = !DILocation(line: 128, column: 5, scope: !5803)
!5811 = !DILocation(line: 128, column: 18, scope: !5803)
!5812 = !DILocation(line: 128, column: 15, scope: !5803)
!5813 = !DILocation(line: 129, column: 28, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5803, file: !80, line: 128, column: 23)
!5815 = !DILocation(line: 129, column: 25, scope: !5814)
!5816 = !DILocation(line: 129, column: 9, scope: !5814)
!5817 = !DILocation(line: 130, column: 13, scope: !5814)
!5818 = distinct !{!5818, !5810, !5819, !323}
!5819 = !DILocation(line: 131, column: 5, scope: !5803)
!5820 = !DILocation(line: 132, column: 1, scope: !5803)
!5821 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5822, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{null, !18, !19}
!5824 = !DILocalVariable(name: "dst", arg: 1, scope: !5821, file: !80, line: 119, type: !18)
!5825 = !DILocation(line: 0, scope: !5821)
!5826 = !DILocalVariable(name: "x", arg: 2, scope: !5821, file: !80, line: 119, type: !19)
!5827 = !DILocation(line: 120, column: 14, scope: !5821)
!5828 = !DILocation(line: 120, column: 12, scope: !5821)
!5829 = !DILocation(line: 121, column: 32, scope: !5821)
!5830 = !DILocation(line: 121, column: 14, scope: !5821)
!5831 = !DILocation(line: 121, column: 5, scope: !5821)
!5832 = !DILocation(line: 121, column: 12, scope: !5821)
!5833 = !DILocation(line: 122, column: 32, scope: !5821)
!5834 = !DILocation(line: 122, column: 14, scope: !5821)
!5835 = !DILocation(line: 122, column: 5, scope: !5821)
!5836 = !DILocation(line: 122, column: 12, scope: !5821)
!5837 = !DILocation(line: 123, column: 32, scope: !5821)
!5838 = !DILocation(line: 123, column: 14, scope: !5821)
!5839 = !DILocation(line: 123, column: 5, scope: !5821)
!5840 = !DILocation(line: 123, column: 12, scope: !5821)
!5841 = !DILocation(line: 124, column: 1, scope: !5821)
!5842 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5843, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!6, !6}
!5845 = !DILocalVariable(name: "x", arg: 1, scope: !5842, file: !80, line: 503, type: !6)
!5846 = !DILocation(line: 0, scope: !5842)
!5847 = !DILocation(line: 504, column: 22, scope: !5842)
!5848 = !DILocation(line: 504, column: 5, scope: !5842)
!5849 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5850, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{null, !18, !15, !49, !5508}
!5852 = !DILocalVariable(name: "out", arg: 1, scope: !5849, file: !80, line: 690, type: !18)
!5853 = !DILocation(line: 0, scope: !5849)
!5854 = !DILocalVariable(name: "outlen", arg: 2, scope: !5849, file: !80, line: 690, type: !15)
!5855 = !DILocalVariable(name: "iv", arg: 3, scope: !5849, file: !80, line: 690, type: !49)
!5856 = !DILocalVariable(name: "ctx", arg: 4, scope: !5849, file: !80, line: 690, type: !5508)
!5857 = !DILocation(line: 691, column: 35, scope: !5849)
!5858 = !DILocation(line: 691, column: 5, scope: !5849)
!5859 = !DILocation(line: 692, column: 1, scope: !5849)
!5860 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5861, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{null, !18, !15, !49, !346, !17}
!5863 = !DILocalVariable(name: "out", arg: 1, scope: !5860, file: !80, line: 607, type: !18)
!5864 = !DILocation(line: 0, scope: !5860)
!5865 = !DILocalVariable(name: "outlen", arg: 2, scope: !5860, file: !80, line: 607, type: !15)
!5866 = !DILocalVariable(name: "iv", arg: 3, scope: !5860, file: !80, line: 607, type: !49)
!5867 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5860, file: !80, line: 607, type: !346)
!5868 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5860, file: !80, line: 607, type: !17)
!5869 = !DILocalVariable(name: "ivw", scope: !5860, file: !80, line: 608, type: !5528)
!5870 = !DILocation(line: 608, column: 14, scope: !5860)
!5871 = !DILocalVariable(name: "cc", scope: !5860, file: !80, line: 610, type: !19)
!5872 = !DILocation(line: 612, column: 5, scope: !5860)
!5873 = !DILocation(line: 613, column: 16, scope: !5860)
!5874 = !DILocation(line: 613, column: 5, scope: !5860)
!5875 = !DILocation(line: 614, column: 16, scope: !5860)
!5876 = !DILocation(line: 614, column: 5, scope: !5860)
!5877 = !DILocation(line: 615, column: 16, scope: !5860)
!5878 = !DILocation(line: 615, column: 5, scope: !5860)
!5879 = !DILocation(line: 616, column: 15, scope: !5860)
!5880 = !DILocation(line: 616, column: 5, scope: !5860)
!5881 = !DILocation(line: 616, column: 13, scope: !5860)
!5882 = !DILocation(line: 617, column: 15, scope: !5860)
!5883 = !DILocation(line: 617, column: 5, scope: !5860)
!5884 = !DILocation(line: 617, column: 13, scope: !5860)
!5885 = !DILocation(line: 618, column: 15, scope: !5860)
!5886 = !DILocation(line: 618, column: 5, scope: !5860)
!5887 = !DILocation(line: 618, column: 13, scope: !5860)
!5888 = !DILocation(line: 619, column: 15, scope: !5860)
!5889 = !DILocation(line: 619, column: 5, scope: !5860)
!5890 = !DILocation(line: 619, column: 13, scope: !5860)
!5891 = !DILocation(line: 621, column: 5, scope: !5860)
!5892 = !DILocation(line: 621, column: 19, scope: !5860)
!5893 = !DILocation(line: 622, column: 9, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5860, file: !80, line: 621, column: 25)
!5895 = !DILocation(line: 623, column: 13, scope: !5894)
!5896 = !DILocation(line: 624, column: 16, scope: !5894)
!5897 = distinct !{!5897, !5891, !5898, !323}
!5898 = !DILocation(line: 625, column: 5, scope: !5860)
!5899 = !DILocation(line: 626, column: 16, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5860, file: !80, line: 626, column: 9)
!5901 = !DILocalVariable(name: "tmp", scope: !5902, file: !80, line: 627, type: !732)
!5902 = distinct !DILexicalBlock(scope: !5900, file: !80, line: 626, column: 21)
!5903 = !DILocation(line: 627, column: 23, scope: !5902)
!5904 = !DILocation(line: 628, column: 9, scope: !5902)
!5905 = !DILocalVariable(name: "i", scope: !5860, file: !80, line: 609, type: !15)
!5906 = !DILocation(line: 629, column: 14, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5902, file: !80, line: 629, column: 9)
!5908 = !DILocation(line: 629, scope: !5907)
!5909 = !DILocation(line: 629, column: 23, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5907, file: !80, line: 629, column: 9)
!5911 = !DILocation(line: 629, column: 9, scope: !5907)
!5912 = !DILocation(line: 630, column: 22, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5910, file: !80, line: 629, column: 38)
!5914 = !DILocation(line: 630, column: 13, scope: !5913)
!5915 = !DILocation(line: 630, column: 20, scope: !5913)
!5916 = !DILocation(line: 629, column: 34, scope: !5910)
!5917 = !DILocation(line: 629, column: 9, scope: !5910)
!5918 = distinct !{!5918, !5911, !5919, !323}
!5919 = !DILocation(line: 631, column: 9, scope: !5907)
!5920 = !DILocation(line: 633, column: 1, scope: !5860)
!5921 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5037, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5922 = !DILocalVariable(name: "x", arg: 1, scope: !5921, file: !80, line: 112, type: !19)
!5923 = !DILocation(line: 0, scope: !5921)
!5924 = !DILocation(line: 115, column: 22, scope: !5921)
!5925 = !DILocation(line: 115, column: 5, scope: !5921)
!5926 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !5927, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{null, !18, !5020, !346, !17}
!5929 = !DILocalVariable(name: "out", arg: 1, scope: !5926, file: !80, line: 576, type: !18)
!5930 = !DILocation(line: 0, scope: !5926)
!5931 = !DILocalVariable(name: "ivw", arg: 2, scope: !5926, file: !80, line: 576, type: !5020)
!5932 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5926, file: !80, line: 576, type: !346)
!5933 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5926, file: !80, line: 576, type: !17)
!5934 = !DILocation(line: 577, column: 5, scope: !5926)
!5935 = !DILocation(line: 580, column: 17, scope: !5926)
!5936 = !DILocation(line: 580, column: 5, scope: !5926)
!5937 = !DILocation(line: 581, column: 17, scope: !5926)
!5938 = !DILocation(line: 581, column: 5, scope: !5926)
!5939 = !DILocation(line: 582, column: 17, scope: !5926)
!5940 = !DILocation(line: 582, column: 5, scope: !5926)
!5941 = !DILocation(line: 583, column: 17, scope: !5926)
!5942 = !DILocation(line: 583, column: 5, scope: !5926)
!5943 = !DILocation(line: 584, column: 1, scope: !5926)
!5944 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !5945, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{null, !5020}
!5947 = !DILocalVariable(name: "x", arg: 1, scope: !5944, file: !80, line: 539, type: !5020)
!5948 = !DILocation(line: 0, scope: !5944)
!5949 = !DILocation(line: 540, column: 28, scope: !5944)
!5950 = !DILocation(line: 540, column: 18, scope: !5944)
!5951 = !DILocation(line: 540, column: 32, scope: !5944)
!5952 = !DILocalVariable(name: "t", scope: !5944, file: !80, line: 540, type: !19)
!5953 = !DILocation(line: 541, column: 10, scope: !5944)
!5954 = !DILocation(line: 541, column: 8, scope: !5944)
!5955 = !DILocation(line: 542, column: 1, scope: !5944)
!5956 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !5957, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{null, !18, !49, !15, !5959}
!5959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5960, size: 32)
!5960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5443)
!5961 = !DILocalVariable(name: "out", arg: 1, scope: !5956, file: !80, line: 694, type: !18)
!5962 = !DILocation(line: 0, scope: !5956)
!5963 = !DILocalVariable(name: "in", arg: 2, scope: !5956, file: !80, line: 694, type: !49)
!5964 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5956, file: !80, line: 694, type: !15)
!5965 = !DILocalVariable(name: "ctx", arg: 4, scope: !5956, file: !80, line: 694, type: !5959)
!5966 = !DILocation(line: 695, column: 36, scope: !5956)
!5967 = !DILocation(line: 695, column: 5, scope: !5956)
!5968 = !DILocation(line: 696, column: 1, scope: !5956)
!5969 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !5970, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{null, !18, !15, !49, !5959}
!5972 = !DILocalVariable(name: "out", arg: 1, scope: !5969, file: !80, line: 698, type: !18)
!5973 = !DILocation(line: 0, scope: !5969)
!5974 = !DILocalVariable(name: "outlen", arg: 2, scope: !5969, file: !80, line: 698, type: !15)
!5975 = !DILocalVariable(name: "iv", arg: 3, scope: !5969, file: !80, line: 698, type: !49)
!5976 = !DILocalVariable(name: "ctx", arg: 4, scope: !5969, file: !80, line: 698, type: !5959)
!5977 = !DILocation(line: 699, column: 35, scope: !5969)
!5978 = !DILocation(line: 699, column: 5, scope: !5969)
!5979 = !DILocation(line: 700, column: 1, scope: !5969)
!5980 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !5981, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{null, !18, !49, !15, !5983}
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5984, size: 32)
!5984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5476)
!5985 = !DILocalVariable(name: "out", arg: 1, scope: !5980, file: !80, line: 702, type: !18)
!5986 = !DILocation(line: 0, scope: !5980)
!5987 = !DILocalVariable(name: "in", arg: 2, scope: !5980, file: !80, line: 702, type: !49)
!5988 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5980, file: !80, line: 702, type: !15)
!5989 = !DILocalVariable(name: "ctx", arg: 4, scope: !5980, file: !80, line: 702, type: !5983)
!5990 = !DILocation(line: 703, column: 36, scope: !5980)
!5991 = !DILocation(line: 703, column: 5, scope: !5980)
!5992 = !DILocation(line: 704, column: 1, scope: !5980)
!5993 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !5994, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{null, !18, !15, !49, !5983}
!5996 = !DILocalVariable(name: "out", arg: 1, scope: !5993, file: !80, line: 706, type: !18)
!5997 = !DILocation(line: 0, scope: !5993)
!5998 = !DILocalVariable(name: "outlen", arg: 2, scope: !5993, file: !80, line: 706, type: !15)
!5999 = !DILocalVariable(name: "iv", arg: 3, scope: !5993, file: !80, line: 706, type: !49)
!6000 = !DILocalVariable(name: "ctx", arg: 4, scope: !5993, file: !80, line: 706, type: !5983)
!6001 = !DILocation(line: 707, column: 35, scope: !5993)
!6002 = !DILocation(line: 707, column: 5, scope: !5993)
!6003 = !DILocation(line: 708, column: 1, scope: !5993)
!6004 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6005, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !4821}
!6007 = !DILocalVariable(name: "r", arg: 1, scope: !6004, file: !80, line: 710, type: !4821)
!6008 = !DILocation(line: 0, scope: !6004)
!6009 = !DILocation(line: 711, column: 13, scope: !6004)
!6010 = !DILocation(line: 711, column: 5, scope: !6004)
!6011 = !DILocation(line: 712, column: 1, scope: !6004)
!6012 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6013, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{null, !5442}
!6015 = !DILocalVariable(name: "r", arg: 1, scope: !6012, file: !80, line: 714, type: !5442)
!6016 = !DILocation(line: 0, scope: !6012)
!6017 = !DILocation(line: 715, column: 13, scope: !6012)
!6018 = !DILocation(line: 715, column: 5, scope: !6012)
!6019 = !DILocation(line: 716, column: 1, scope: !6012)
!6020 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6021, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{null, !5475}
!6023 = !DILocalVariable(name: "r", arg: 1, scope: !6020, file: !80, line: 718, type: !5475)
!6024 = !DILocation(line: 0, scope: !6020)
!6025 = !DILocation(line: 719, column: 13, scope: !6020)
!6026 = !DILocation(line: 719, column: 5, scope: !6020)
!6027 = !DILocation(line: 720, column: 1, scope: !6020)
!6028 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6029, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{!45, !18, !15, !49, !15}
!6031 = !DILocalVariable(name: "output", arg: 1, scope: !6028, file: !80, line: 722, type: !18)
!6032 = !DILocation(line: 0, scope: !6028)
!6033 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6028, file: !80, line: 722, type: !15)
!6034 = !DILocalVariable(name: "input", arg: 3, scope: !6028, file: !80, line: 723, type: !49)
!6035 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6028, file: !80, line: 723, type: !15)
!6036 = !DILocalVariable(name: "ctx", scope: !6028, file: !80, line: 724, type: !4822)
!6037 = !DILocation(line: 724, column: 15, scope: !6028)
!6038 = !DILocalVariable(name: "iv", scope: !6028, file: !80, line: 725, type: !1249)
!6039 = !DILocation(line: 725, column: 19, scope: !6028)
!6040 = !DILocation(line: 727, column: 5, scope: !6028)
!6041 = !DILocation(line: 728, column: 5, scope: !6028)
!6042 = !DILocation(line: 729, column: 5, scope: !6028)
!6043 = !DILocation(line: 731, column: 5, scope: !6028)
!6044 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6045, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{null, !3322, !49, !18}
!6047 = !DILocalVariable(name: "input", arg: 1, scope: !6044, file: !80, line: 734, type: !3322)
!6048 = !DILocation(line: 0, scope: !6044)
!6049 = !DILocalVariable(name: "key", arg: 2, scope: !6044, file: !80, line: 734, type: !49)
!6050 = !DILocalVariable(name: "output", arg: 3, scope: !6044, file: !80, line: 734, type: !18)
!6051 = !DILocalVariable(name: "ctx", scope: !6044, file: !80, line: 735, type: !5476)
!6052 = !DILocation(line: 735, column: 15, scope: !6044)
!6053 = !DILocation(line: 737, column: 5, scope: !6044)
!6054 = !DILocation(line: 738, column: 5, scope: !6044)
!6055 = !DILocation(line: 739, column: 5, scope: !6044)
!6056 = !DILocation(line: 740, column: 1, scope: !6044)
