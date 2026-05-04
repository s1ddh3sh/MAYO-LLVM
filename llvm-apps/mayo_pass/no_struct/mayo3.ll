; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\01\07", align 1, !dbg !0
@pqmayo_MAYO_3_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_3_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_3_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
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
  %epk = alloca [49147 x i64], align 8
  %esk = alloca [48897 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !131, !DIExpression(), !132)
    #dbg_value(i32 32, !133, !DIExpression(), !132)
  store i32 32, ptr %msglen, align 4, !dbg !134
    #dbg_value(i32 32, !133, !DIExpression(), !132)
    #dbg_value(i32 713, !135, !DIExpression(), !132)
  store i32 713, ptr %smlen, align 4, !dbg !136
  %call = call dereferenceable_or_null(2986) ptr @calloc(i32 noundef 2986, i32 noundef 1) #8, !dbg !137
    #dbg_value(ptr %call, !138, !DIExpression(), !132)
  %call1 = call dereferenceable_or_null(32) ptr @calloc(i32 noundef 32, i32 noundef 1) #8, !dbg !139
    #dbg_value(ptr %call1, !140, !DIExpression(), !132)
    #dbg_declare(ptr %epk, !141, !DIExpression(), !146)
    #dbg_declare(ptr %esk, !147, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !153
    #dbg_value(i32 %0, !133, !DIExpression(), !132)
  %add2 = add i32 %0, 681, !dbg !154
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #8, !dbg !155
    #dbg_value(ptr %call3, !156, !DIExpression(), !132)
    #dbg_declare(ptr %msg, !157, !DIExpression(), !161)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !161
    #dbg_declare(ptr %msg2, !162, !DIExpression(), !163)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !163
  %call4 = call i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #7, !dbg !164
    #dbg_value(i32 %call4, !165, !DIExpression(), !132)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !166
  br i1 %cmp.not, label %if.end, label %err, !dbg !166

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #7, !dbg !168
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %call11 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #7, !dbg !169
    #dbg_value(i32 0, !165, !DIExpression(), !132)
  %1 = load i32, ptr %msglen, align 4, !dbg !170
    #dbg_value(i32 %1, !133, !DIExpression(), !132)
    #dbg_value(ptr %smlen, !135, !DIExpression(DW_OP_deref), !132)
  %call17 = call i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #7, !dbg !171
    #dbg_value(i32 %call17, !165, !DIExpression(), !132)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !172
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !172

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !174
    #dbg_value(i32 %2, !135, !DIExpression(), !132)
    #dbg_value(ptr %msglen, !133, !DIExpression(DW_OP_deref), !132)
  %call23 = call i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #7, !dbg !175
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
  %call32 = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #7, !dbg !182
    #dbg_value(i32 %call32, !165, !DIExpression(), !132)
  %sext = sub nsw i32 0, %call32, !dbg !183
  br label %err, !dbg !183

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !132
    #dbg_value(i32 %res.0, !165, !DIExpression(), !132)
    #dbg_label(!185, !186)
  call void @free(ptr noundef %call) #9, !dbg !187
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 32) #9, !dbg !188
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !191 {
entry:
    #dbg_value(ptr %p, !222, !DIExpression(), !223)
    #dbg_value(ptr %pk, !224, !DIExpression(), !223)
    #dbg_value(ptr %sk, !225, !DIExpression(), !223)
    #dbg_value(i32 0, !226, !DIExpression(), !223)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #7, !dbg !227
    #dbg_value(i32 %call, !226, !DIExpression(), !223)
    #dbg_label(!228, !229)
  ret i32 %call, !dbg !230
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !231 {
entry:
  %S = alloca [556 x i8], align 1
  %P = alloca [48762 x i64], align 8
  %P3 = alloca [700 x i64], align 8
  %O = alloca [1080 x i8], align 1
  %P3_upper = alloca [385 x i64], align 8
    #dbg_value(ptr %p, !232, !DIExpression(), !233)
    #dbg_value(ptr %cpk, !234, !DIExpression(), !233)
    #dbg_value(ptr %csk, !235, !DIExpression(), !233)
    #dbg_value(i32 0, !236, !DIExpression(), !233)
    #dbg_value(ptr %csk, !237, !DIExpression(), !233)
    #dbg_declare(ptr %S, !238, !DIExpression(), !242)
    #dbg_declare(ptr %P, !243, !DIExpression(), !247)
    #dbg_declare(ptr %P3, !248, !DIExpression(), !252)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5600) %P3, i8 0, i32 5600, i1 false), !dbg !252
    #dbg_declare(ptr %O, !253, !DIExpression(), !257)
    #dbg_value(i32 7, !258, !DIExpression(), !233)
    #dbg_value(i32 108, !260, !DIExpression(), !233)
    #dbg_value(i32 108, !261, !DIExpression(), !233)
    #dbg_value(i32 10, !262, !DIExpression(), !233)
    #dbg_value(i32 540, !263, !DIExpression(), !233)
    #dbg_value(i32 41202, !264, !DIExpression(), !233)
    #dbg_value(i32 385, !265, !DIExpression(), !233)
    #dbg_value(i32 16, !266, !DIExpression(), !233)
    #dbg_value(i32 32, !267, !DIExpression(), !233)
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 329616, !dbg !269
    #dbg_value(ptr %add.ptr, !270, !DIExpression(), !233)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 32) #9, !dbg !271
  %cmp.not = icmp eq i32 %call, 0, !dbg !273
  br i1 %cmp.not, label %if.end, label %err, !dbg !273

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !268, !DIExpression(), !233)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #7, !dbg !274
    #dbg_value(ptr %S, !275, !DIExpression(), !233)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !276
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1080) #7, !dbg !277
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #7, !dbg !278
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #7, !dbg !279
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #9, !dbg !280
    #dbg_declare(ptr %P3_upper, !281, !DIExpression(), !285)
  call void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 10) #7, !dbg !286
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !287
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 55, i32 noundef 108) #7, !dbg !288
  br label %err, !dbg !288

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !233
    #dbg_value(i32 %ret.0, !236, !DIExpression(), !233)
    #dbg_label(!289, !290)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1080) #9, !dbg !291
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 60480) #9, !dbg !292
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 5600) #9, !dbg !293
  ret i32 %ret.0, !dbg !294
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483537, -2147483648) %mdeclen) unnamed_addr #0 !dbg !295 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 376164, ptr noundef %seed_pk, i32 noundef 16) #7, !dbg !339
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 6966, i32 noundef 108) #7, !dbg !340
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
    #dbg_value(i32 7, !353, !DIExpression(), !348)
    #dbg_value(i32 108, !354, !DIExpression(), !348)
    #dbg_value(i32 10, !355, !DIExpression(), !348)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #7, !dbg !356
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 7, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 108, i32 noundef 10, i32 noundef 10) #7, !dbg !357
  ret void, !dbg !358
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !359 {
entry:
    #dbg_value(ptr %in, !362, !DIExpression(), !363)
    #dbg_value(ptr %out, !364, !DIExpression(), !363)
    #dbg_value(i32 55, !365, !DIExpression(), !363)
    #dbg_value(i32 108, !366, !DIExpression(), !363)
    #dbg_value(i32 7, !367, !DIExpression(), !363)
    #dbg_value(ptr %in, !368, !DIExpression(), !363)
    #dbg_value(i32 0, !369, !DIExpression(), !371)
  br label %for.cond, !dbg !372

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !373
    #dbg_value(i32 %i.0, !369, !DIExpression(), !371)
  %exitcond = icmp ne i32 %i.0, 55, !dbg !374
  br i1 %exitcond, label %for.body, label %for.end, !dbg !376

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 54, !dbg !377
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !379
  %mul3 = mul nuw nsw i32 %i.0, 56, !dbg !380
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !381
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 54) #9, !dbg !382
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 7, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 1) #7, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !398 {
entry:
    #dbg_value(i32 7, !401, !DIExpression(), !402)
    #dbg_value(ptr %mat, !403, !DIExpression(), !402)
    #dbg_value(ptr %bs_mat, !404, !DIExpression(), !402)
    #dbg_value(ptr %acc, !405, !DIExpression(), !402)
    #dbg_value(i32 108, !406, !DIExpression(), !402)
    #dbg_value(i32 10, !407, !DIExpression(), !402)
    #dbg_value(i32 10, !408, !DIExpression(), !402)
    #dbg_value(i32 0, !409, !DIExpression(), !411)
  br label %for.cond, !dbg !412

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !413
    #dbg_value(i32 %r.0, !409, !DIExpression(), !411)
  %exitcond2 = icmp ne i32 %r.0, 10, !dbg !414
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !416

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !417

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !420
    #dbg_value(i32 %c.0, !421, !DIExpression(), !422)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !423
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !417

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !425

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !428
    #dbg_value(i32 %k.0, !429, !DIExpression(), !430)
  %exitcond = icmp ne i32 %k.0, 10, !dbg !431
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !425

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 10, !dbg !433
  %add = add nuw nsw i32 %mul, %k.0, !dbg !435
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !436
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !436
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !437
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !438
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !438
  %1 = load i8, ptr %arrayidx, align 1, !dbg !438
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !439
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !440
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !441
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !441
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !442
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !473
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
    #dbg_value(i32 7, !531, !DIExpression(), !532)
    #dbg_value(ptr %bs_mat, !533, !DIExpression(), !532)
    #dbg_value(ptr %mat, !534, !DIExpression(), !532)
    #dbg_value(ptr %acc, !535, !DIExpression(), !532)
    #dbg_value(i32 108, !536, !DIExpression(), !532)
    #dbg_value(i32 108, !537, !DIExpression(), !532)
    #dbg_value(i32 10, !538, !DIExpression(), !532)
    #dbg_value(i32 1, !539, !DIExpression(), !532)
    #dbg_value(i32 0, !540, !DIExpression(), !532)
    #dbg_value(i32 0, !541, !DIExpression(), !543)
  br label %for.cond, !dbg !544

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !545
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !545
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !546
    #dbg_value(i32 %r.0, !541, !DIExpression(), !543)
    #dbg_value(i32 %bs_mat_entries_used.0, !540, !DIExpression(), !532)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !547
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
  %exitcond = icmp ne i32 %k.0, 10, !dbg !564
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !558

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !566
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !566
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !568
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !569
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !569
  %2 = load i8, ptr %arrayidx, align 1, !dbg !569
  %mul9 = mul nuw nsw i32 %r.0, 10, !dbg !570
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !571
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !572
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !572
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !573
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 55, 6967) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !588 {
entry:
  %tmp = alloca [7 x i64], align 8
    #dbg_value(ptr %in, !591, !DIExpression(), !592)
    #dbg_value(ptr %out, !593, !DIExpression(), !592)
    #dbg_value(i32 %vecs, !594, !DIExpression(), !592)
    #dbg_value(i32 108, !595, !DIExpression(), !592)
    #dbg_value(i32 7, !596, !DIExpression(), !592)
    #dbg_value(ptr %out, !597, !DIExpression(), !592)
    #dbg_declare(ptr %tmp, !598, !DIExpression(), !602)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %tmp, i8 0, i32 56, i1 false), !dbg !602
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
  %div1 = mul nsw i32 %i.0, 54, !dbg !611
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !613
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 54) #9, !dbg !614
  %mul4 = mul nsw i32 %i.0, 56, !dbg !615
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !616
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 56) #9, !dbg !617
    #dbg_value(i32 %i.0, !603, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !605)
  br label %for.cond, !dbg !618, !llvm.loop !619

for.end:                                          ; preds = %for.cond
  ret void, !dbg !621
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !622 {
entry:
  %S = alloca [556 x i8], align 1
    #dbg_value(ptr %p, !625, !DIExpression(), !626)
    #dbg_value(ptr %csk, !627, !DIExpression(), !626)
    #dbg_value(ptr %sk, !628, !DIExpression(), !626)
    #dbg_value(i32 0, !629, !DIExpression(), !626)
    #dbg_declare(ptr %S, !630, !DIExpression(), !631)
    #dbg_value(ptr %sk, !632, !DIExpression(), !626)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !633
    #dbg_value(ptr %add.ptr1, !634, !DIExpression(), !626)
    #dbg_value(i32 10, !635, !DIExpression(), !626)
    #dbg_value(i32 108, !636, !DIExpression(), !626)
    #dbg_value(i32 540, !637, !DIExpression(), !626)
    #dbg_value(i32 16, !638, !DIExpression(), !626)
    #dbg_value(i32 32, !639, !DIExpression(), !626)
    #dbg_value(ptr %csk, !640, !DIExpression(), !626)
    #dbg_value(ptr %S, !641, !DIExpression(), !626)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #7, !dbg !642
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !643
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1080) #7, !dbg !644
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #7, !dbg !645
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !646
    #dbg_value(ptr %add.ptr5, !647, !DIExpression(), !626)
    #dbg_value(ptr %sk, !648, !DIExpression(), !626)
    #dbg_value(ptr %add.ptr5, !649, !DIExpression(), !626)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #7, !dbg !650
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 556) #9, !dbg !651
  ret i32 0, !dbg !652
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !653 {
entry:
    #dbg_value(ptr %p, !654, !DIExpression(), !655)
    #dbg_value(ptr %P1, !656, !DIExpression(), !655)
    #dbg_value(ptr %O, !657, !DIExpression(), !655)
    #dbg_value(ptr %acc, !658, !DIExpression(), !655)
    #dbg_value(i32 10, !659, !DIExpression(), !655)
    #dbg_value(i32 108, !660, !DIExpression(), !655)
    #dbg_value(i32 7, !661, !DIExpression(), !655)
    #dbg_value(i32 0, !662, !DIExpression(), !655)
    #dbg_value(i32 0, !663, !DIExpression(), !665)
  br label %for.cond, !dbg !666

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 108, %entry ], !dbg !667
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !667
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !668
    #dbg_value(i32 %r.0, !663, !DIExpression(), !665)
    #dbg_value(i32 %bs_mat_entries_used.0, !662, !DIExpression(), !655)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !669
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
  %exitcond = icmp ne i32 %k.0, 10, !dbg !688
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !683

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !690
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !690
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !692
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !693
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !693
  %2 = load i8, ptr %arrayidx, align 1, !dbg !693
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !694
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !695
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !696
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !696
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #7, !dbg !697
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !698
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !698
  %mul16 = mul nuw nsw i32 %r.0, 10, !dbg !699
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !700
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !700
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !700
  %mul19 = mul nuw nsw i32 %c.0, 10, !dbg !701
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !702
  %add.ptr22.idx = mul nuw nsw i32 %add20, 56, !dbg !703
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !703
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #7, !dbg !704
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !719 {
entry:
  %tenc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [108 x i8], align 1
  %salt = alloca [32 x i8], align 1
  %V = alloca [649 x i8], align 1
  %Vdec = alloca [1188 x i8], align 1
  %A = alloca [12432 x i8], align 1
  %x = alloca [1298 x i8], align 1
  %r = alloca [111 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %sk = alloca [48897 x i64], align 32
  %Ox = alloca [108 x i8], align 1
  %tmp = alloca [113 x i8], align 1
  %Mtmp = alloca [770 x i64], align 8
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
    #dbg_declare(ptr %salt, !743, !DIExpression(), !744)
    #dbg_declare(ptr %V, !745, !DIExpression(), !749)
    #dbg_declare(ptr %Vdec, !750, !DIExpression(), !754)
    #dbg_declare(ptr %A, !755, !DIExpression(), !759)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12432) %A, i8 0, i32 12432, i1 false), !dbg !759
    #dbg_declare(ptr %x, !760, !DIExpression(), !764)
    #dbg_declare(ptr %r, !765, !DIExpression(), !769)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(111) %r, i8 0, i32 111, i1 false), !dbg !769
    #dbg_declare(ptr %s, !770, !DIExpression(), !771)
    #dbg_declare(ptr %sk, !772, !DIExpression(), !773)
    #dbg_declare(ptr %Ox, !774, !DIExpression(), !775)
    #dbg_declare(ptr %tmp, !776, !DIExpression(), !780)
    #dbg_value(i32 108, !781, !DIExpression(), !724)
    #dbg_value(i32 118, !782, !DIExpression(), !724)
    #dbg_value(i32 10, !783, !DIExpression(), !724)
    #dbg_value(i32 11, !784, !DIExpression(), !724)
    #dbg_value(i32 108, !785, !DIExpression(), !724)
    #dbg_value(i32 54, !786, !DIExpression(), !724)
    #dbg_value(i32 54, !787, !DIExpression(), !724)
    #dbg_value(i32 55, !788, !DIExpression(), !724)
    #dbg_value(i32 681, !789, !DIExpression(), !724)
    #dbg_value(i32 111, !790, !DIExpression(), !724)
    #dbg_value(i32 48, !791, !DIExpression(), !724)
    #dbg_value(i32 32, !792, !DIExpression(), !724)
    #dbg_value(i32 32, !793, !DIExpression(), !724)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #7, !dbg !794
    #dbg_value(i32 0, !730, !DIExpression(), !724)
    #dbg_value(ptr %csk, !795, !DIExpression(), !724)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #7, !dbg !796
    #dbg_value(ptr %sk, !797, !DIExpression(), !724)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !798
    #dbg_value(ptr %add.ptr, !799, !DIExpression(), !724)
    #dbg_declare(ptr %Mtmp, !800, !DIExpression(), !804)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6160) %Mtmp, i8 0, i32 6160, i1 false), !dbg !804
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !805
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 32) #9, !dbg !807
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !808
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !808

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !809
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 32) #9, !dbg !810
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 112) #7, !dbg !811
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !812
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 32) #9, !dbg !813
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 112, !dbg !814
    #dbg_value(ptr %add.ptr24, !815, !DIExpression(), !724)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #7, !dbg !816
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 108) #7, !dbg !817
  store i8 0, ptr %add.ptr24, align 1, !dbg !818
  call void @shake256(ptr noundef nonnull %V, i32 noundef 649, ptr noundef nonnull %tmp, i32 noundef 113) #7, !dbg !819
    #dbg_value(i32 0, !820, !DIExpression(), !822)
  br label %for.cond, !dbg !823

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !824
    #dbg_value(i32 %i.0, !820, !DIExpression(), !822)
  %exitcond = icmp ne i32 %i.0, 11, !dbg !825
  br i1 %exitcond, label %for.body, label %for.end, !dbg !827

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 54, !dbg !828
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !830
  %mul37 = mul nuw nsw i32 %i.0, 108, !dbg !831
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !832
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 108) #7, !dbg !833
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
  %exitcond1 = icmp ne i32 %i47.0, 108, !dbg !846
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !848

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 111, !dbg !849
  %sub = add nuw nsw i32 %0, 110, !dbg !851
  %arrayidx = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub, !dbg !852
  store i8 0, ptr %arrayidx, align 1, !dbg !853
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !854
    #dbg_value(i32 %inc53, !841, !DIExpression(), !843)
  br label %for.cond48, !dbg !855, !llvm.loop !856

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 594, !dbg !858
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 110) #7, !dbg !859
  %call62 = call i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 11, i32 noundef 10, i32 noundef 108, i32 noundef 111) #7, !dbg !860
  %tobool.not = icmp eq i32 %call62, 0, !dbg !860
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !860

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 6160) #9, !dbg !862
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 12432) #9, !dbg !864
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !865, !DIExpression(), !867)
  br label %for.cond70, !dbg !868

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !869
    #dbg_value(i32 %i69.0, !865, !DIExpression(), !867)
  %exitcond2 = icmp ne i32 %i69.0, 11, !dbg !870
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !872

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 108, !dbg !873
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !875
    #dbg_value(ptr %add.ptr75, !876, !DIExpression(), !724)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !877
  %mul80 = mul nuw nsw i32 %i69.0, 10, !dbg !878
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !879
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 10, i32 noundef 108, i32 noundef 1) #7, !dbg !880
  %mul85 = mul nuw nsw i32 %i69.0, 118, !dbg !881
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !882
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 108, i32 noundef 1) #7, !dbg !883
  %mul88 = mul nuw nsw i32 %i69.0, 118, !dbg !884
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !885
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 108, !dbg !886
  %mul92 = mul nuw nsw i32 %i69.0, 10, !dbg !887
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !888
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 10) #9, !dbg !889
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !890
    #dbg_value(i32 %inc96, !865, !DIExpression(), !867)
  br label %for.cond70, !dbg !891, !llvm.loop !892

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1298) #7, !dbg !894
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !895
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 32) #9, !dbg !896
  store i32 681, ptr %siglen, align 4, !dbg !897
  br label %err, !dbg !898

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !724
    #dbg_value(i32 %ret.0, !730, !DIExpression(), !724)
    #dbg_label(!899, !900)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 649) #9, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1188) #9, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 12432) #9, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 111) #9, !dbg !904
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !905
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1080) #9, !dbg !906
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 391176) #9, !dbg !907
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 108) #9, !dbg !908
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 113) #9, !dbg !909
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 6160) #9, !dbg !910
  ret i32 %ret.0, !dbg !911
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !912 {
entry:
  %Pv = alloca [8316 x i64], align 8
    #dbg_value(ptr %p, !915, !DIExpression(), !916)
    #dbg_value(ptr %Vdec, !917, !DIExpression(), !916)
    #dbg_value(ptr %L, !918, !DIExpression(), !916)
    #dbg_value(ptr %P1, !919, !DIExpression(), !916)
    #dbg_value(ptr %VL, !920, !DIExpression(), !916)
    #dbg_value(ptr %VP1V, !921, !DIExpression(), !916)
    #dbg_value(i32 11, !922, !DIExpression(), !916)
    #dbg_value(i32 108, !923, !DIExpression(), !916)
    #dbg_value(i32 10, !924, !DIExpression(), !916)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 11, i32 noundef 108, i32 noundef 10) #7, !dbg !925
    #dbg_declare(ptr %Pv, !926, !DIExpression(), !930)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(66528) %Pv, i8 0, i32 66528, i1 false), !dbg !930
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #7, !dbg !931
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 11, i32 noundef 108, i32 noundef 11) #7, !dbg !932
  ret void, !dbg !933
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !934 {
entry:
  %temp = alloca [7 x i64], align 8
    #dbg_value(ptr %p, !937, !DIExpression(), !938)
    #dbg_value(ptr %vPv, !939, !DIExpression(), !938)
    #dbg_value(ptr %t, !940, !DIExpression(), !938)
    #dbg_value(ptr %y, !941, !DIExpression(), !938)
    #dbg_value(i32 44, !942, !DIExpression(), !938)
    #dbg_value(i32 7, !944, !DIExpression(), !938)
    #dbg_value(i64 1, !945, !DIExpression(), !948)
    #dbg_value(i64 281474976710656, !945, !DIExpression(), !948)
    #dbg_value(i64 281474976710655, !945, !DIExpression(), !948)
    #dbg_value(i32 0, !949, !DIExpression(), !951)
  br label %for.cond, !dbg !952

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !953
    #dbg_value(i32 %i.0, !949, !DIExpression(), !951)
  %exitcond = icmp ne i32 %i.0, 121, !dbg !954
  br i1 %exitcond, label %for.body, label %for.end, !dbg !956

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 56, !dbg !957
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !957
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !957
  %1 = load i64, ptr %arrayidx, align 8, !dbg !959
  %and = and i64 %1, 281474976710655, !dbg !959
  store i64 %and, ptr %arrayidx, align 8, !dbg !959
  %inc = add nuw nsw i32 %i.0, 1, !dbg !960
    #dbg_value(i32 %inc, !949, !DIExpression(), !951)
  br label %for.cond, !dbg !961, !llvm.loop !962

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !964, !DIExpression(), !965)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %temp, i8 0, i32 56, i1 false), !dbg !965
    #dbg_value(ptr %temp, !966, !DIExpression(), !938)
    #dbg_value(i32 10, !967, !DIExpression(), !969)
  br label %for.cond3, !dbg !970

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 10, %for.end ], [ %dec78, %for.inc77 ], !dbg !971
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
  %exitcond10 = icmp ne i32 %j.0, 11, !dbg !983
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !975

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !985
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !985
  %shr = lshr i64 %2, 44, !dbg !987
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !988
    #dbg_value(i8 %rem1, !989, !DIExpression(), !990)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !991
  %shl11 = shl i64 %2, 4, !dbg !992
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !992
    #dbg_value(i32 5, !993, !DIExpression(), !995)
  br label %for.cond12, !dbg !996

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 5, %for.body8 ], [ %dec, %for.body15 ], !dbg !997
    #dbg_value(i32 %k.0, !993, !DIExpression(), !995)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !998
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1000

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !988
  br label %for.cond24, !dbg !1001

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1003
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !1003
  %shr17 = lshr i64 %3, 60, !dbg !1005
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1006
  %arrayidx19 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1007
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1008
  %xor = xor i64 %4, %shr17, !dbg !1008
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1008
  %arrayidx20 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1009
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
  %exitcond9 = icmp ne i32 %k49.0, 7, !dbg !1047
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1020

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 11, !dbg !1049
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1051
  %.idx = mul nsw i32 %add55, 56, !dbg !1052
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1052
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1052
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1052
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1053
  %mul62 = mul nuw nsw i32 %j.0, 11, !dbg !1054
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1055
  %.idx4 = mul nsw i32 %add63, 56, !dbg !1056
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1056
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1056
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1056
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1057
  %xor68 = xor i64 %11, %mul67, !dbg !1058
  %arrayidx69 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1059
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
  %cmp82 = icmp samesign ult i32 %i80.0, 108, !dbg !1076
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
  %A = alloca [1568 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1103, !DIExpression(), !1104)
    #dbg_value(ptr %VtL, !1105, !DIExpression(), !1104)
    #dbg_value(ptr %A_out, !1106, !DIExpression(), !1104)
    #dbg_value(i32 0, !1107, !DIExpression(), !1104)
    #dbg_value(i32 0, !1108, !DIExpression(), !1104)
    #dbg_value(i32 7, !1109, !DIExpression(), !1104)
    #dbg_declare(ptr %A, !1110, !DIExpression(), !1114)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12544) %A, i8 0, i32 12544, i1 false), !dbg !1114
    #dbg_value(i32 112, !1115, !DIExpression(), !1104)
    #dbg_value(i64 1, !1116, !DIExpression(), !1119)
    #dbg_value(i64 281474976710656, !1116, !DIExpression(), !1119)
    #dbg_value(i64 281474976710655, !1116, !DIExpression(), !1119)
    #dbg_value(i32 0, !1120, !DIExpression(), !1122)
  br label %for.cond, !dbg !1123

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1124
    #dbg_value(i32 %i.0, !1120, !DIExpression(), !1122)
  %exitcond = icmp ne i32 %i.0, 110, !dbg !1125
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1127

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1128

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 56, !dbg !1130
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1130
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1130
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1132
  %and = and i64 %1, 281474976710655, !dbg !1132
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
  %exitcond8 = icmp ne i32 %i2.0, 11, !dbg !1142
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1128

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1144

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1147

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 10, %for.cond6.preheader ], !dbg !1149
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1104
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1104
    #dbg_value(i32 %bits_to_shift.1, !1107, !DIExpression(), !1104)
    #dbg_value(i32 %words_to_shift.1, !1108, !DIExpression(), !1104)
    #dbg_value(i32 %j.0, !1150, !DIExpression(), !1151)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1152
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1144

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 560, !dbg !1154
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1154
    #dbg_value(ptr %add.ptr, !1156, !DIExpression(), !1104)
    #dbg_value(i32 0, !1157, !DIExpression(), !1159)
  br label %for.cond11, !dbg !1160

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1161
    #dbg_value(i32 %c.0, !1157, !DIExpression(), !1159)
  %exitcond5 = icmp ne i32 %c.0, 10, !dbg !1162
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1164

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1165

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1168
    #dbg_value(i32 %k.0, !1169, !DIExpression(), !1170)
  %exitcond4 = icmp ne i32 %k.0, 7, !dbg !1171
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1165

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1173
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 56, !dbg !1173
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1173
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1173
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1175
  %shl20 = shl i64 %3, %sh_prom, !dbg !1175
  %mul21 = mul nuw nsw i32 %i2.0, 10, !dbg !1176
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1177
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1178
  %mul24 = mul i32 %add23, 112, !dbg !1179
  %add25 = add i32 %add22, %mul24, !dbg !1180
  %arrayidx26 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25, !dbg !1181
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1182
  %xor = xor i64 %4, %shl20, !dbg !1182
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1182
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1183
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1183

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1185
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 56, !dbg !1185
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1185
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1185
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1187
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1188
  %shr = lshr i64 %6, %sh_prom32, !dbg !1188
  %mul33 = mul nuw nsw i32 %i2.0, 10, !dbg !1189
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1190
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1191
  %7 = mul i32 %add35, 112, !dbg !1192
  %mul37 = add i32 %7, 112, !dbg !1192
  %add38 = add i32 %add34, %mul37, !dbg !1193
  %arrayidx39 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38, !dbg !1194
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
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 560, !dbg !1207
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1207
    #dbg_value(ptr %add.ptr51, !1209, !DIExpression(), !1104)
    #dbg_value(i32 0, !1210, !DIExpression(), !1212)
  br label %for.cond53, !dbg !1213

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1214
    #dbg_value(i32 %c52.0, !1210, !DIExpression(), !1212)
  %exitcond7 = icmp ne i32 %c52.0, 10, !dbg !1215
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1217

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1218

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1221
    #dbg_value(i32 %k56.0, !1222, !DIExpression(), !1223)
  %exitcond6 = icmp ne i32 %k56.0, 7, !dbg !1224
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1218

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1226
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1226
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1226
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1226
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1228
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1228
  %mul65 = mul nsw i32 %j.0, 10, !dbg !1229
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1230
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1231
  %mul68 = mul i32 %add67, 112, !dbg !1232
  %add69 = add i32 %add66, %mul68, !dbg !1233
  %arrayidx70 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69, !dbg !1234
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1235
  %xor71 = xor i64 %11, %shl64, !dbg !1235
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1235
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1236
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1236

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1238
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1238
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1238
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1238
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1240
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1241
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1241
  %mul80 = mul nsw i32 %j.0, 10, !dbg !1242
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1243
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1244
  %14 = mul i32 %add82, 112, !dbg !1245
  %mul84 = add i32 %14, 112, !dbg !1245
  %add85 = add i32 %add81, %mul84, !dbg !1246
  %arrayidx86 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85, !dbg !1247
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
  %cmp109 = icmp samesign ult i32 %c106.0, 1232, !dbg !1272
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
  %cmp142 = icmp samesign ult i32 %c140.0, 112, !dbg !1326
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1294

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1328

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1331

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 108, %for.cond144.preheader ], !dbg !1333
    #dbg_value(i32 %r.0, !1334, !DIExpression(), !1335)
  %exitcond11 = icmp ne i32 %r.0, 174, !dbg !1336
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1328

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1338
  %mul147 = mul nuw nsw i32 %div1, 112, !dbg !1340
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1341
  %rem = and i32 %r.0, 15, !dbg !1342
  %add149 = or disjoint i32 %add148, %rem, !dbg !1343
    #dbg_value(i32 %add149, !1344, !DIExpression(), !1345)
  %arrayidx150 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1346
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1346
  %and151 = and i64 %19, 1229782938247303441, !dbg !1347
    #dbg_value(i64 %and151, !1348, !DIExpression(), !1345)
  %shr153 = lshr i64 %19, 1, !dbg !1349
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1350
    #dbg_value(i64 %and154, !1351, !DIExpression(), !1345)
  %shr156 = lshr i64 %19, 2, !dbg !1352
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1353
    #dbg_value(i64 %and157, !1354, !DIExpression(), !1345)
  %arrayidx158 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1355
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
  %sub187 = add nsw i32 %add186, -108, !dbg !1387
  %div1882 = lshr i32 %sub187, 4, !dbg !1388
  %mul189 = mul i32 %div1882, 112, !dbg !1389
  %add190 = add i32 %mul189, %c140.0, !dbg !1390
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1391
  %sub192 = add nuw nsw i32 %add191, 4, !dbg !1392
  %rem193 = and i32 %sub192, 15, !dbg !1393
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1394
  %arrayidx195 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194, !dbg !1395
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
  %indvars.iv = phi i32 [ 108, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1409
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1409
    #dbg_value(i32 %r206.0, !1410, !DIExpression(), !1411)
  %cmp208 = icmp samesign ult i32 %r206.0, 108, !dbg !1412
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1331

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1414

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1417
    #dbg_value(i32 %c211.0, !1418, !DIExpression(), !1419)
  %cmp213 = icmp samesign ult i32 %c211.0, 110, !dbg !1420
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1414

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1422

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1425
    #dbg_value(i32 %i216.0, !1426, !DIExpression(), !1427)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1428
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1422

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 7, !dbg !1430
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1432
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1433
  %arrayidx226 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225, !dbg !1434
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1435
  %mul228 = mul nuw nsw i32 %add227, 111, !dbg !1436
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1437
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1438
  %cmp232 = icmp samesign ult i32 %c211.0, 94, !dbg !1439
  %sub234 = sub nsw i32 110, %c211.0, !dbg !1439
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
    #dbg_value(i32 10, !1461, !DIExpression(), !1458)
    #dbg_value(i32 108, !1462, !DIExpression(), !1458)
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
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1469
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
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 10, i32 noundef 1) #7, !dbg !1478
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1481
    #dbg_value(i32 1, !1476, !DIExpression(), !1477)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1482
    #dbg_value(ptr %incdec.ptr, !1460, !DIExpression(), !1458)
  br label %for.cond1, !dbg !1483, !llvm.loop !1484

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1486
    #dbg_value(i32 %inc5, !1464, !DIExpression(), !1466)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 10, !dbg !1487
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
    #dbg_value(i32 108, !1499, !DIExpression(), !1496)
    #dbg_value(i32 1, !1500, !DIExpression(), !1496)
    #dbg_value(i32 0, !1501, !DIExpression(), !1503)
  br label %for.cond, !dbg !1504

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1505
    #dbg_value(i32 %i.0, !1501, !DIExpression(), !1503)
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1506
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
    #dbg_value(i32 1298, !1531, !DIExpression(), !1529)
    #dbg_value(i32 0, !1532, !DIExpression(), !1529)
  br label %for.cond, !dbg !1533

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1535
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1528, !DIExpression(), !1529)
    #dbg_value(i32 %i.0, !1532, !DIExpression(), !1529)
  %exitcond = icmp ne i32 %i.0, 649, !dbg !1536
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
    #dbg_value(i32 10, !1567, !DIExpression(), !1565)
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
  %exitcond = icmp ne i32 %i.0, 10, !dbg !1575
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
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !1593
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
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 10, 12) %bs_mat_cols) unnamed_addr #0 !dbg !1750 {
entry:
    #dbg_value(i32 7, !1751, !DIExpression(), !1752)
    #dbg_value(ptr %mat, !1753, !DIExpression(), !1752)
    #dbg_value(ptr %bs_mat, !1754, !DIExpression(), !1752)
    #dbg_value(ptr %acc, !1755, !DIExpression(), !1752)
    #dbg_value(i32 11, !1756, !DIExpression(), !1752)
    #dbg_value(i32 108, !1757, !DIExpression(), !1752)
    #dbg_value(i32 %bs_mat_cols, !1758, !DIExpression(), !1752)
    #dbg_value(i32 0, !1759, !DIExpression(), !1761)
  br label %for.cond, !dbg !1762

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1763
    #dbg_value(i32 %r.0, !1759, !DIExpression(), !1761)
  %exitcond2 = icmp ne i32 %r.0, 11, !dbg !1764
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1766

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1767

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1770
    #dbg_value(i32 %c.0, !1771, !DIExpression(), !1772)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !1773
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
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !1786
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1786
  %mul8 = mul nuw nsw i32 %r.0, 108, !dbg !1787
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1788
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1788
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1788
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1789
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1790
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !1791
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1791
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #7, !dbg !1792
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 7, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 11, i32 noundef 1) #7, !dbg !1812
  ret void, !dbg !1813
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1814 {
entry:
    #dbg_value(i32 7, !1815, !DIExpression(), !1816)
    #dbg_value(ptr %bs_mat, !1817, !DIExpression(), !1816)
    #dbg_value(ptr %mat, !1818, !DIExpression(), !1816)
    #dbg_value(ptr %acc, !1819, !DIExpression(), !1816)
    #dbg_value(i32 108, !1820, !DIExpression(), !1816)
    #dbg_value(i32 108, !1821, !DIExpression(), !1816)
    #dbg_value(i32 11, !1822, !DIExpression(), !1816)
    #dbg_value(i32 1, !1823, !DIExpression(), !1816)
    #dbg_value(i32 0, !1824, !DIExpression(), !1816)
    #dbg_value(i32 0, !1825, !DIExpression(), !1827)
  br label %for.cond, !dbg !1828

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !1829
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1829
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1830
    #dbg_value(i32 %r.0, !1825, !DIExpression(), !1827)
    #dbg_value(i32 %bs_mat_entries_used.0, !1824, !DIExpression(), !1816)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !1831
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
  %exitcond = icmp ne i32 %k.0, 11, !dbg !1848
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1842

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !1850
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1850
  %mul8 = mul nuw nsw i32 %k.0, 108, !dbg !1852
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1853
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1853
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1853
  %mul9 = mul nuw nsw i32 %r.0, 11, !dbg !1854
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1855
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !1856
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1856
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #7, !dbg !1857
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1872 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1873, !DIExpression(), !1874)
    #dbg_value(ptr %sm, !1875, !DIExpression(), !1874)
    #dbg_value(ptr %smlen, !1876, !DIExpression(), !1874)
    #dbg_value(ptr %m, !1877, !DIExpression(), !1874)
    #dbg_value(i32 %mlen, !1878, !DIExpression(), !1874)
    #dbg_value(ptr %csk, !1879, !DIExpression(), !1874)
    #dbg_value(i32 0, !1880, !DIExpression(), !1874)
    #dbg_value(i32 681, !1881, !DIExpression(), !1874)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1882
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #9, !dbg !1883
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1884
    #dbg_value(ptr %siglen, !1885, !DIExpression(DW_OP_deref), !1874)
  %call2 = call i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #7, !dbg !1886
    #dbg_value(i32 %call2, !1880, !DIExpression(), !1874)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1887
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1885, !DIExpression(), !1874)
  %cmp3.not = icmp eq i32 %0, 681
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1902 {
entry:
    #dbg_value(ptr %p, !1903, !DIExpression(), !1904)
    #dbg_value(ptr %m, !1905, !DIExpression(), !1904)
    #dbg_value(ptr %mlen, !1906, !DIExpression(), !1904)
    #dbg_value(ptr %sm, !1907, !DIExpression(), !1904)
    #dbg_value(i32 %smlen, !1908, !DIExpression(), !1904)
    #dbg_value(ptr %pk, !1909, !DIExpression(), !1904)
    #dbg_value(i32 681, !1910, !DIExpression(), !1904)
  %cmp = icmp ult i32 %smlen, 681, !dbg !1911
  br i1 %cmp, label %return, label %if.end, !dbg !1911

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1913
  %sub = add i32 %smlen, -681, !dbg !1914
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #7, !dbg !1915
    #dbg_value(i32 %call, !1916, !DIExpression(), !1904)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1917
  br i1 %cmp1, label %if.then2, label %return, !dbg !1917

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -681, !dbg !1919
  store i32 %sub3, ptr %mlen, align 4, !dbg !1921
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1922
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #9, !dbg !1923
  br label %return, !dbg !1924

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1904
  ret i32 %retval.0, !dbg !1925
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1926 {
entry:
  %tEnc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [216 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %pk = alloca [49147 x i64], align 8
  %tmp = alloca [80 x i8], align 1
    #dbg_value(ptr %p, !1929, !DIExpression(), !1930)
    #dbg_value(ptr %m, !1931, !DIExpression(), !1930)
    #dbg_value(i32 %mlen, !1932, !DIExpression(), !1930)
    #dbg_value(ptr %sig, !1933, !DIExpression(), !1930)
    #dbg_value(ptr %cpk, !1934, !DIExpression(), !1930)
    #dbg_declare(ptr %tEnc, !1935, !DIExpression(), !1936)
    #dbg_declare(ptr %t, !1937, !DIExpression(), !1938)
    #dbg_declare(ptr %y, !1939, !DIExpression(), !1943)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(216) %y, i8 0, i32 216, i1 false), !dbg !1943
    #dbg_declare(ptr %s, !1944, !DIExpression(), !1945)
    #dbg_declare(ptr %pk, !1946, !DIExpression(), !1947)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(393176) %pk, i8 0, i32 393176, i1 false), !dbg !1947
    #dbg_declare(ptr %tmp, !1948, !DIExpression(), !1952)
    #dbg_value(i32 108, !1953, !DIExpression(), !1930)
    #dbg_value(i32 118, !1954, !DIExpression(), !1930)
    #dbg_value(i32 11, !1955, !DIExpression(), !1930)
    #dbg_value(i32 54, !1956, !DIExpression(), !1930)
    #dbg_value(i32 681, !1957, !DIExpression(), !1930)
    #dbg_value(i32 48, !1958, !DIExpression(), !1930)
    #dbg_value(i32 32, !1959, !DIExpression(), !1930)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #7, !dbg !1960
    #dbg_value(i32 0, !1961, !DIExpression(), !1930)
    #dbg_value(ptr %pk, !1962, !DIExpression(), !1930)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 329616, !dbg !1963
    #dbg_value(ptr %add.ptr, !1964, !DIExpression(), !1930)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1965
    #dbg_value(ptr %add.ptr2, !1966, !DIExpression(), !1930)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #7, !dbg !1967
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !1968
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !1969
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 32) #9, !dbg !1970
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #7, !dbg !1971
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 108) #7, !dbg !1972
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1298) #7, !dbg !1973
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #7, !dbg !1974
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 108) #9, !dbg !1975
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1977
  %. = zext i1 %cmp21 to i32, !dbg !1930
  ret i32 %., !dbg !1978
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1979 {
entry:
    #dbg_value(ptr %p, !1980, !DIExpression(), !1981)
    #dbg_value(ptr %cpk, !1982, !DIExpression(), !1981)
    #dbg_value(ptr %pk, !1983, !DIExpression(), !1981)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #7, !dbg !1984
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1985
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1986
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 55, i32 noundef 108) #7, !dbg !1987
  ret i32 0, !dbg !1988
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1989 {
entry:
  %SPS = alloca [847 x i64], align 8
  %zero = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !1992, !DIExpression(), !1993)
    #dbg_value(ptr %s, !1994, !DIExpression(), !1993)
    #dbg_value(ptr %P1, !1995, !DIExpression(), !1993)
    #dbg_value(ptr %P2, !1996, !DIExpression(), !1993)
    #dbg_value(ptr %P3, !1997, !DIExpression(), !1993)
    #dbg_value(ptr %eval, !1998, !DIExpression(), !1993)
    #dbg_declare(ptr %SPS, !1999, !DIExpression(), !2003)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6776) %SPS, i8 0, i32 6776, i1 false), !dbg !2003
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #7, !dbg !2004
    #dbg_declare(ptr %zero, !2005, !DIExpression(), !2006)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(108) %zero, i8 0, i32 108, i1 false), !dbg !2006
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #7, !dbg !2007
  ret void, !dbg !2008
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2009 {
entry:
  %PS = alloca [9086 x i64], align 8
    #dbg_value(ptr %p, !2012, !DIExpression(), !2013)
    #dbg_value(ptr %P1, !2014, !DIExpression(), !2013)
    #dbg_value(ptr %P2, !2015, !DIExpression(), !2013)
    #dbg_value(ptr %P3, !2016, !DIExpression(), !2013)
    #dbg_value(ptr %s, !2017, !DIExpression(), !2013)
    #dbg_value(ptr %SPS, !2018, !DIExpression(), !2013)
    #dbg_declare(ptr %PS, !2019, !DIExpression(), !2023)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72688) %PS, i8 0, i32 72688, i1 false), !dbg !2023
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 11, ptr noundef nonnull %PS) #7, !dbg !2024
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 108, i32 noundef 11, i32 noundef 118, ptr noundef %SPS) #7, !dbg !2025
  ret void, !dbg !2026
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2027 {
entry:
  %accumulator = alloca [145376 x i64], align 8
    #dbg_value(ptr %P1, !2030, !DIExpression(), !2031)
    #dbg_value(ptr %P2, !2032, !DIExpression(), !2031)
    #dbg_value(ptr %P3, !2033, !DIExpression(), !2031)
    #dbg_value(ptr %S, !2034, !DIExpression(), !2031)
    #dbg_value(i32 108, !2035, !DIExpression(), !2031)
    #dbg_value(i32 108, !2036, !DIExpression(), !2031)
    #dbg_value(i32 10, !2037, !DIExpression(), !2031)
    #dbg_value(i32 11, !2038, !DIExpression(), !2031)
    #dbg_value(ptr %PS, !2039, !DIExpression(), !2031)
    #dbg_value(i32 118, !2040, !DIExpression(), !2031)
    #dbg_value(i32 7, !2041, !DIExpression(), !2031)
    #dbg_declare(ptr %accumulator, !2042, !DIExpression(), !2046)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(1163008) %accumulator, i8 0, i32 1163008, i1 false), !dbg !2046
    #dbg_value(i32 0, !2047, !DIExpression(), !2031)
    #dbg_value(i32 0, !2048, !DIExpression(), !2050)
  br label %for.cond, !dbg !2051

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 108, %entry ], !dbg !2052
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2052
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2053
    #dbg_value(i32 %row.0, !2048, !DIExpression(), !2050)
    #dbg_value(i32 %P1_used.0, !2047, !DIExpression(), !2031)
  %exitcond4 = icmp ne i32 %row.0, 108, !dbg !2054
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
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2075
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2069

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 56, !dbg !2077
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2077
  %mul8 = mul nuw nsw i32 %row.0, 11, !dbg !2079
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2080
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2081
  %mul11 = mul nuw nsw i32 %col.0, 118, !dbg !2082
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2083
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2083
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2083
  %conv = zext i8 %2 to i32, !dbg !2083
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2084
  %add.ptr15.idx = mul nuw nsw i32 %add13, 56, !dbg !2085
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2085
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #7, !dbg !2086
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
  %exitcond3 = icmp ne i32 %j20.0, 10, !dbg !2099
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2067

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2101

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2104
    #dbg_value(i32 %col25.0, !2105, !DIExpression(), !2106)
  %exitcond2 = icmp ne i32 %col25.0, 11, !dbg !2107
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2101

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 10, !dbg !2109
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2111
  %add.ptr33.idx = mul nuw nsw i32 %add31, 56, !dbg !2112
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2112
  %mul35 = mul nuw nsw i32 %row.0, 11, !dbg !2113
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2114
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2115
  %mul38 = mul nuw nsw i32 %col25.0, 118, !dbg !2116
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2117
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2117
  %arrayidx41 = getelementptr i8, ptr %4, i32 108, !dbg !2117
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2117
  %conv42 = zext i8 %5 to i32, !dbg !2117
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2118
  %add.ptr45.idx = mul nuw nsw i32 %add43, 56, !dbg !2119
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2119
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #7, !dbg !2120
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
  %indvars.iv6 = phi i32 [ 10, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2133
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2133
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 108, %for.cond56.preheader ], !dbg !2134
    #dbg_value(i32 %row55.0, !2135, !DIExpression(), !2136)
    #dbg_value(i32 %P3_used.0, !2137, !DIExpression(), !2031)
  %exitcond9 = icmp ne i32 %row55.0, 118, !dbg !2138
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
  %exitcond5 = icmp ne i32 %col65.0, 11, !dbg !2155
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2149

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 56, !dbg !2157
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2157
  %mul73 = mul nuw nsw i32 %row55.0, 11, !dbg !2159
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2160
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2161
  %mul76 = mul nuw nsw i32 %col65.0, 118, !dbg !2162
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2163
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2163
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2163
  %conv79 = zext i8 %8 to i32, !dbg !2163
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2164
  %add.ptr82.idx = mul nuw nsw i32 %add80, 56, !dbg !2165
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2165
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #7, !dbg !2166
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
  %exitcond10 = icmp ne i32 %i.0, 1298, !dbg !2181
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2143

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 896, !dbg !2182
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2182
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 56, !dbg !2184
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2184
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #7, !dbg !2185
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2186
    #dbg_value(i32 %inc102, !2180, !DIExpression(), !2031)
  br label %while.cond, !dbg !2143, !llvm.loop !2187

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2189
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2190 {
entry:
  %accumulator = alloca [13552 x i64], align 8
    #dbg_value(ptr %PS, !2193, !DIExpression(), !2194)
    #dbg_value(ptr %S, !2195, !DIExpression(), !2194)
    #dbg_value(i32 108, !2196, !DIExpression(), !2194)
    #dbg_value(i32 11, !2197, !DIExpression(), !2194)
    #dbg_value(i32 118, !2198, !DIExpression(), !2194)
    #dbg_value(ptr %SPS, !2199, !DIExpression(), !2194)
    #dbg_declare(ptr %accumulator, !2200, !DIExpression(), !2204)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(108416) %accumulator, i8 0, i32 108416, i1 false), !dbg !2204
    #dbg_value(i32 7, !2205, !DIExpression(), !2194)
    #dbg_value(i32 0, !2206, !DIExpression(), !2208)
  br label %for.cond, !dbg !2209

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2210
    #dbg_value(i32 %row.0, !2206, !DIExpression(), !2208)
  %exitcond2 = icmp ne i32 %row.0, 11, !dbg !2211
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2213

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2214

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2217

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2218
    #dbg_value(i32 %j.0, !2219, !DIExpression(), !2220)
  %exitcond1 = icmp ne i32 %j.0, 118, !dbg !2221
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2214

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2223

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2226
    #dbg_value(i32 %col.0, !2227, !DIExpression(), !2228)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2229
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2223

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 11, !dbg !2231
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2233
  %add.ptr.idx = mul nuw nsw i32 %add7, 56, !dbg !2234
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2234
  %mul9 = mul nuw nsw i32 %row.0, 11, !dbg !2235
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2236
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2237
  %mul12 = mul nuw nsw i32 %row.0, 118, !dbg !2238
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2239
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2239
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2239
  %conv = zext i8 %1 to i32, !dbg !2239
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2240
  %add.ptr16.idx = mul nuw nsw i32 %add14, 56, !dbg !2241
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2241
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #7, !dbg !2242
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
  %exitcond3 = icmp ne i32 %i.0, 121, !dbg !2256
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2217

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 896, !dbg !2257
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2257
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 56, !dbg !2259
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2259
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #7, !dbg !2260
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2277
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
    #dbg_value(i32 7, !2292, !DIExpression(), !2293)
    #dbg_value(ptr %bins, !2294, !DIExpression(), !2293)
    #dbg_value(ptr %out, !2295, !DIExpression(), !2293)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2296
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2297
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #7, !dbg !2298
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 616, !dbg !2299
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2300
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #7, !dbg !2301
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2302
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2303
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #7, !dbg !2304
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2305
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2306
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #7, !dbg !2307
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2308
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2309
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #7, !dbg !2310
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2311
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2312
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #7, !dbg !2313
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2314
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2315
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #7, !dbg !2316
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2317
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2318
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #7, !dbg !2319
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2320
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2321
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #7, !dbg !2322
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2323
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2324
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #7, !dbg !2325
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2326
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2327
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #7, !dbg !2328
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2329
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2330
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #7, !dbg !2331
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2332
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2333
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #7, !dbg !2334
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2335
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2336
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #7, !dbg !2337
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2338
  call fastcc void @m_vec_copy(i32 noundef 7, ptr noundef nonnull %add.ptr28, ptr noundef %out) #7, !dbg !2339
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2352
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2381
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2409
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
define dso_local void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2421 {
entry:
    #dbg_value(ptr %p, !2452, !DIExpression(), !2453)
    #dbg_value(ptr %in, !2454, !DIExpression(), !2453)
    #dbg_value(ptr %out, !2455, !DIExpression(), !2453)
    #dbg_value(i32 %size, !2456, !DIExpression(), !2453)
    #dbg_value(i32 7, !2457, !DIExpression(), !2453)
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
  %add.ptr.idx = mul nsw i32 %add, 56, !dbg !2479
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2479
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2480
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2480
  call fastcc void @m_vec_copy.17(i32 noundef 7, ptr noundef %add.ptr, ptr noundef %add.ptr6) #7, !dbg !2481
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2482
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2482

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2484
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2486
  %add.ptr11.idx = mul nsw i32 %add9, 56, !dbg !2487
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2487
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2488
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2488
  call fastcc void @m_vec_add.18(i32 noundef 7, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #7, !dbg !2489
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2511
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2533
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2545 {
entry:
  %Ar = alloca [108 x i8], align 1
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
  %arrayidx21 = getelementptr inbounds nuw [108 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2605
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
  %_pivot_row = alloca [7 x i64], align 32
  %_pivot_row2 = alloca [7 x i64], align 32
  %packed_A = alloca [756 x i64], align 32
  %temp = alloca [126 x i8], align 1
    #dbg_value(ptr %A, !2819, !DIExpression(), !2820)
    #dbg_value(i32 %nrows, !2821, !DIExpression(), !2820)
    #dbg_value(i32 %ncols, !2822, !DIExpression(), !2820)
    #dbg_declare(ptr %_pivot_row, !2823, !DIExpression(), !2824)
    #dbg_declare(ptr %_pivot_row2, !2825, !DIExpression(), !2826)
    #dbg_declare(ptr %packed_A, !2827, !DIExpression(), !2831)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(6048) %packed_A, i8 0, i32 6048, i1 false), !dbg !2831
  %add = add nsw i32 %ncols, 15, !dbg !2832
  %div = sdiv i32 %add, 16, !dbg !2833
    #dbg_value(i32 %div, !2834, !DIExpression(), !2820)
    #dbg_value(i32 0, !2835, !DIExpression(), !2837)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2838
  br label %for.cond, !dbg !2838

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2839
    #dbg_value(i32 %i.0, !2835, !DIExpression(), !2837)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2840
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2842

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2843
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2843
  br label %for.cond3, !dbg !2843

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2845
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2847
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2848
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2849
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #7, !dbg !2850
  %inc = add nuw i32 %i.0, 1, !dbg !2851
    #dbg_value(i32 %inc, !2835, !DIExpression(), !2837)
  br label %for.cond, !dbg !2852, !llvm.loop !2853

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2855
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2820
    #dbg_value(i32 %pivot_row.0, !2856, !DIExpression(), !2820)
    #dbg_value(i32 %pivot_col.0, !2857, !DIExpression(), !2858)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2859
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2843

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2861

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2863
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2863
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2863
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2863
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2863
    #dbg_value(i32 %cond, !2865, !DIExpression(), !2866)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2867
    #dbg_value(i32 %cond16, !2868, !DIExpression(), !2866)
    #dbg_value(i32 0, !2869, !DIExpression(), !2871)
  br label %for.cond18, !dbg !2872

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2873
    #dbg_value(i32 %i17.0, !2869, !DIExpression(), !2871)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2874
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2876

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2867
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2867
  br label %for.cond25, !dbg !2877

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2879
  store i64 0, ptr %arrayidx, align 8, !dbg !2881
  %arrayidx21 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2882
  store i64 0, ptr %arrayidx21, align 8, !dbg !2883
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2884
    #dbg_value(i32 %inc23, !2869, !DIExpression(), !2871)
  br label %for.cond18, !dbg !2885, !llvm.loop !2886

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2866
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2866
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2888
    #dbg_value(i32 %row.0, !2889, !DIExpression(), !2888)
    #dbg_value(i8 %pivot.0, !2890, !DIExpression(), !2866)
    #dbg_value(i64 %pivot_is_zero.0, !2891, !DIExpression(), !2866)
  %add27 = add nsw i32 %cond16, 32, !dbg !2892
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2892
  %sub30 = add nsw i32 %nrows, -1, !dbg !2892
  %add32 = add nsw i32 %cond16, 32, !dbg !2892
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2892
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2894
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2877

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2895
  %not = xor i64 %call, -1, !dbg !2897
    #dbg_value(i64 %not, !2898, !DIExpression(), !2899)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #7, !dbg !2900
    #dbg_value(i64 %call37, !2901, !DIExpression(), !2899)
    #dbg_value(i32 0, !2902, !DIExpression(), !2904)
  br label %for.cond38, !dbg !2905

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2906
    #dbg_value(i32 %j.0, !2902, !DIExpression(), !2904)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2907
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2909

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2910
  %or = or i64 %and, %not, !dbg !2912
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2913
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2914
  %arrayidx43 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2915
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2915
  %and44 = and i64 %or, %0, !dbg !2916
  %arrayidx45 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2917
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2918
  %xor = xor i64 %1, %and44, !dbg !2918
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2918
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2919
    #dbg_value(i32 %inc47, !2902, !DIExpression(), !2904)
  br label %for.cond38, !dbg !2920, !llvm.loop !2921

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #7, !dbg !2923
    #dbg_value(i8 %call50, !2890, !DIExpression(), !2866)
  %conv = zext nneg i8 %call50 to i32, !dbg !2924
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #7, !dbg !2925
    #dbg_value(i64 %call51, !2891, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2866)
  %not52 = xor i64 %call51, -1, !dbg !2926
    #dbg_value(i64 %not52, !2891, !DIExpression(), !2866)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2927
    #dbg_value(i32 %inc54, !2889, !DIExpression(), !2888)
  br label %for.cond25, !dbg !2928, !llvm.loop !2929

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2866
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2866
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #7, !dbg !2931
    #dbg_value(i8 %call56, !2932, !DIExpression(), !2820)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #7, !dbg !2933
    #dbg_value(i32 %cond, !2934, !DIExpression(), !2936)
  br label %for.cond60, !dbg !2937

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2938
    #dbg_value(i32 %row59.0, !2934, !DIExpression(), !2936)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2939
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2941

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2942

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #7, !dbg !2944
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2946
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2946
    #dbg_value(i64 %and67, !2947, !DIExpression(), !2948)
    #dbg_value(i64 %and67.demorgan, !2949, !DIExpression(), !2948)
    #dbg_value(i32 0, !2950, !DIExpression(), !2952)
  br label %for.cond69, !dbg !2953

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2954
    #dbg_value(i32 %col.0, !2950, !DIExpression(), !2952)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2955
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2957

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2958
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2960
  %arrayidx75 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2961
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2961
  %and76 = and i64 %and67.demorgan, %2, !dbg !2962
  %arrayidx77 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2963
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2963
  %and78 = and i64 %3, %and67, !dbg !2964
  %add79 = add i64 %and76, %and78, !dbg !2965
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2966
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2967
  %arrayidx82 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2968
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2969
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2970
    #dbg_value(i32 %inc84, !2950, !DIExpression(), !2952)
  br label %for.cond69, !dbg !2971, !llvm.loop !2972

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2974
    #dbg_value(i32 %inc87, !2934, !DIExpression(), !2936)
  br label %for.cond60, !dbg !2975, !llvm.loop !2976

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2978
    #dbg_value(i32 %row89.0, !2979, !DIExpression(), !2980)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2981
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2942

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2983
    #dbg_value(i1 %cmp94, !2985, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2986)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2987
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2988
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #7, !dbg !2989
    #dbg_value(i8 %call100, !2990, !DIExpression(), !2986)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2991
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2992
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2993
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #7, !dbg !2994
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2995
    #dbg_value(i32 %inc110, !2979, !DIExpression(), !2980)
  br label %for.cond90, !dbg !2996, !llvm.loop !2997

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2820)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2999
  %5 = add i32 %4, 1, !dbg !2999
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2999
    #dbg_value(i32 %conv116, !2856, !DIExpression(), !2820)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3000
    #dbg_value(i32 %inc118, !2857, !DIExpression(), !2858)
  br label %for.cond3, !dbg !3001, !llvm.loop !3002

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3004
    #dbg_value(i32 %i120.0, !3005, !DIExpression(), !3006)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3007
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2861

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3009
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3011
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #7, !dbg !3012
    #dbg_value(i32 0, !3013, !DIExpression(), !3015)
  br label %for.cond130, !dbg !3016

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3017
    #dbg_value(i32 %j129.0, !3013, !DIExpression(), !3015)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3018
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3020

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [126 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3021
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3021
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3023
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3024
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3024
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3025
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3026
    #dbg_value(i32 %inc139, !3013, !DIExpression(), !3015)
  br label %for.cond130, !dbg !3027, !llvm.loop !3028

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3030
    #dbg_value(i32 %inc142, !3005, !DIExpression(), !3006)
  br label %for.cond121, !dbg !3031, !llvm.loop !3032

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 126) #9, !dbg !3034
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 56) #9, !dbg !3035
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 56) #9, !dbg !3036
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 6048) #9, !dbg !3037
  ret void, !dbg !3038
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3039 {
entry:
    #dbg_value(i8 %a, !3041, !DIExpression(), !3042)
    #dbg_value(i8 0, !3043, !DIExpression(), !3042)
  %0 = icmp ne i8 %a, 0, !dbg !3044
  %conv3 = sext i1 %0 to i8, !dbg !3045
  %1 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3046
  %xor5 = xor i8 %1, %conv3, !dbg !3047
  ret i8 %xor5, !dbg !3048
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3049 {
entry:
    #dbg_value(i8 %a, !3052, !DIExpression(), !3053)
    #dbg_value(i64 %b, !3054, !DIExpression(), !3053)
  %0 = and i8 %a, 1, !dbg !3055
  %conv1 = zext nneg i8 %0 to i64, !dbg !3056
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3057
    #dbg_value(i64 %mul, !3058, !DIExpression(), !3053)
  %1 = and i8 %a, 2, !dbg !3059
  %conv4 = zext nneg i8 %1 to i64, !dbg !3060
  %mul5 = mul i64 %b, %conv4, !dbg !3061
  %xor = xor i64 %mul, %mul5, !dbg !3062
    #dbg_value(i64 %xor, !3058, !DIExpression(), !3053)
  %2 = and i8 %a, 4, !dbg !3063
  %conv8 = zext nneg i8 %2 to i64, !dbg !3064
  %mul9 = mul i64 %b, %conv8, !dbg !3065
  %xor10 = xor i64 %xor, %mul9, !dbg !3066
    #dbg_value(i64 %xor10, !3058, !DIExpression(), !3053)
  %3 = and i8 %a, 8, !dbg !3067
  %conv13 = zext nneg i8 %3 to i64, !dbg !3068
  %mul14 = mul i64 %b, %conv13, !dbg !3069
  %xor15 = xor i64 %xor10, %mul14, !dbg !3070
    #dbg_value(i64 %xor15, !3058, !DIExpression(), !3053)
    #dbg_value(i64 %xor15, !3071, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3053)
  %shr = lshr i64 %xor15, 4, !dbg !3072
  %and16 = lshr i64 %xor15, 3, !dbg !3073
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3073
  %4 = xor i64 %shr, %shr18, !dbg !3074
  %xor19 = xor i64 %4, %xor15, !dbg !3074
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3075
    #dbg_value(i64 %and20, !3076, !DIExpression(), !3053)
  ret i64 %and20, !dbg !3077
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3078 {
entry:
    #dbg_value(ptr %in, !3081, !DIExpression(), !3082)
    #dbg_value(ptr %out, !3083, !DIExpression(), !3082)
    #dbg_value(i32 %ncols, !3084, !DIExpression(), !3082)
    #dbg_value(ptr %out, !3085, !DIExpression(), !3082)
    #dbg_value(i32 0, !3086, !DIExpression(), !3082)
  br label %for.cond, !dbg !3087

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3089
    #dbg_value(i32 %i.0, !3086, !DIExpression(), !3082)
  %add = or disjoint i32 %i.0, 1, !dbg !3090
  %cmp = icmp slt i32 %add, %ncols, !dbg !3092
  br i1 %cmp, label %for.body, label %for.end, !dbg !3093

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3094
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3094
  %add2 = or disjoint i32 %i.0, 1, !dbg !3096
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3097
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3097
  %shl5 = shl i8 %1, 4, !dbg !3098
  %or = or i8 %shl5, %0, !dbg !3099
  %div = lshr exact i32 %i.0, 1, !dbg !3100
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3101
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3102
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3103
    #dbg_value(i32 %add8, !3086, !DIExpression(), !3082)
  br label %for.cond, !dbg !3104, !llvm.loop !3105

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3089
  %2 = and i32 %ncols, -2147483647, !dbg !3107
  %cmp9 = icmp eq i32 %2, 1, !dbg !3107
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3107

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3109
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3109
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3111
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3112
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3113
  br label %if.end, !dbg !3114

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3115
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3116 {
entry:
    #dbg_value(i32 %a, !3119, !DIExpression(), !3120)
    #dbg_value(i32 %b, !3121, !DIExpression(), !3120)
  %xor = xor i32 %a, %b, !dbg !3122
  %0 = icmp sgt i32 %xor, 0, !dbg !3123
  %shr = sext i1 %0 to i64, !dbg !3123
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3124
  %xor1 = xor i64 %1, %shr, !dbg !3125
  ret i64 %xor1, !dbg !3126
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3127 {
entry:
    #dbg_value(i32 %a, !3128, !DIExpression(), !3129)
    #dbg_value(i32 %b, !3130, !DIExpression(), !3129)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3129)
  %0 = icmp slt i32 %b, %a, !dbg !3132
  %shr = sext i1 %0 to i64, !dbg !3132
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3133
  %xor = xor i64 %1, %shr, !dbg !3134
  ret i64 %xor, !dbg !3135
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3136 {
entry:
    #dbg_value(ptr %in, !3139, !DIExpression(), !3140)
    #dbg_value(i32 %index, !3141, !DIExpression(), !3140)
  %div = sdiv i32 %index, 16, !dbg !3142
    #dbg_value(i32 %div, !3143, !DIExpression(), !3140)
  %rem = srem i32 %index, 16, !dbg !3144
    #dbg_value(i32 %rem, !3145, !DIExpression(), !3140)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3146
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3146
  %mul = shl nsw i32 %rem, 2, !dbg !3147
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3148
  %shr = lshr i64 %0, %sh_prom, !dbg !3148
  %1 = trunc i64 %shr to i8, !dbg !3149
  %conv = and i8 %1, 15, !dbg !3149
  ret i8 %conv, !dbg !3150
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3151 {
entry:
    #dbg_value(i8 %a, !3154, !DIExpression(), !3155)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #7, !dbg !3156
    #dbg_value(i8 %call, !3157, !DIExpression(), !3155)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #7, !dbg !3158
    #dbg_value(i8 %call1, !3159, !DIExpression(), !3155)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #7, !dbg !3160
    #dbg_value(i8 %call2, !3161, !DIExpression(), !3155)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #7, !dbg !3162
    #dbg_value(i8 %call3, !3163, !DIExpression(), !3155)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #7, !dbg !3164
    #dbg_value(i8 %call4, !3165, !DIExpression(), !3155)
  ret i8 %call4, !dbg !3166
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3167 {
entry:
    #dbg_value(i32 %legs, !3170, !DIExpression(), !3171)
    #dbg_value(ptr %in, !3172, !DIExpression(), !3171)
    #dbg_value(i8 %a, !3173, !DIExpression(), !3171)
    #dbg_value(ptr %acc, !3174, !DIExpression(), !3171)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #7, !dbg !3175
    #dbg_value(i32 %call, !3176, !DIExpression(), !3171)
    #dbg_value(i64 1229782938247303441, !3177, !DIExpression(), !3171)
    #dbg_value(i32 0, !3178, !DIExpression(), !3180)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3181
  br label %for.cond, !dbg !3181

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3182
    #dbg_value(i32 %i.0, !3178, !DIExpression(), !3180)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3183
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3185

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3186
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3186
  %and = and i64 %0, 1229782938247303441, !dbg !3188
  %and1 = and i32 %call, 255, !dbg !3189
  %conv = zext nneg i32 %and1 to i64, !dbg !3190
  %mul = mul i64 %and, %conv, !dbg !3191
  %shr = lshr i64 %0, 1, !dbg !3192
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3193
  %shr4 = lshr i32 %call, 8, !dbg !3194
  %and5 = and i32 %shr4, 15, !dbg !3195
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3196
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3197
  %xor = xor i64 %mul, %mul7, !dbg !3198
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3199
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3199
  %shr9 = lshr i64 %1, 2, !dbg !3200
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3201
  %shr11 = lshr i32 %call, 16, !dbg !3202
  %and12 = and i32 %shr11, 15, !dbg !3203
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3204
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3205
  %xor15 = xor i64 %xor, %mul14, !dbg !3206
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3207
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3207
  %shr17 = lshr i64 %2, 3, !dbg !3208
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3209
  %shr19 = lshr i32 %call, 24, !dbg !3210
  %and20 = and i32 %shr19, 15, !dbg !3211
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3212
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3213
  %xor23 = xor i64 %xor15, %mul22, !dbg !3214
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3215
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3216
  %xor25 = xor i64 %3, %xor23, !dbg !3216
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3216
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3217
    #dbg_value(i32 %inc, !3178, !DIExpression(), !3180)
  br label %for.cond, !dbg !3218, !llvm.loop !3219

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3221
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3222 {
entry:
    #dbg_value(i32 %legs, !3225, !DIExpression(), !3226)
    #dbg_value(ptr %in, !3227, !DIExpression(), !3226)
    #dbg_value(ptr %out, !3228, !DIExpression(), !3226)
    #dbg_value(ptr %in, !3229, !DIExpression(), !3226)
    #dbg_value(i32 0, !3230, !DIExpression(), !3232)
  br label %for.cond, !dbg !3233

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3234
    #dbg_value(i32 %i.0, !3230, !DIExpression(), !3232)
  %mul = shl nsw i32 %legs, 4, !dbg !3235
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3237
  br i1 %cmp, label %for.body, label %for.end, !dbg !3238

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3239
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3241
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3241
  %1 = and i8 %0, 15, !dbg !3242
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3243
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3244
  %div3 = lshr exact i32 %i.0, 1, !dbg !3245
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3246
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3246
  %3 = lshr i8 %2, 4, !dbg !3247
  %add = or disjoint i32 %i.0, 1, !dbg !3248
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3249
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3250
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3251
    #dbg_value(i32 %add8, !3230, !DIExpression(), !3232)
  br label %for.cond, !dbg !3252, !llvm.loop !3253

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3255
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3256 {
entry:
    #dbg_value(i8 %b, !3257, !DIExpression(), !3258)
  %conv = zext nneg i8 %b to i32, !dbg !3259
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3260
    #dbg_value(i32 %mul, !3261, !DIExpression(), !3258)
    #dbg_value(i32 -252645136, !3262, !DIExpression(), !3258)
  %and = and i32 %mul, 1894838512, !dbg !3263
    #dbg_value(i32 %and, !3264, !DIExpression(), !3258)
  %shr = lshr exact i32 %and, 4, !dbg !3265
  %shr1 = lshr exact i32 %and, 3, !dbg !3266
  %0 = xor i32 %shr, %shr1, !dbg !3267
  %xor2 = xor i32 %0, %mul, !dbg !3267
  ret i32 %xor2, !dbg !3268
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3269 {
entry:
    #dbg_value(i8 %a, !3270, !DIExpression(), !3271)
    #dbg_value(i8 %b, !3272, !DIExpression(), !3271)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3273
  %xor1 = xor i8 %a, %0, !dbg !3274
    #dbg_value(i8 %xor1, !3270, !DIExpression(), !3271)
  %1 = trunc i8 %xor1 to i1, !dbg !3275
    #dbg_value(i8 poison, !3276, !DIExpression(), !3271)
  %2 = and i8 %xor1, 2, !dbg !3277
  %mul9 = mul i8 %2, %b, !dbg !3278
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3275
  %xor11 = xor i8 %conv10, %mul9, !dbg !3279
    #dbg_value(i8 %xor11, !3276, !DIExpression(), !3271)
  %3 = and i8 %xor1, 4, !dbg !3280
  %mul16 = mul i8 %3, %b, !dbg !3281
  %xor18 = xor i8 %mul16, %xor11, !dbg !3282
    #dbg_value(i8 %xor18, !3276, !DIExpression(), !3271)
  %4 = and i8 %xor1, 8, !dbg !3283
  %mul23 = mul i8 %4, %b, !dbg !3284
  %xor25 = xor i8 %mul23, %xor18, !dbg !3285
    #dbg_value(i8 %xor25, !3276, !DIExpression(), !3271)
    #dbg_value(i8 %xor25, !3286, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3271)
  %5 = lshr i8 %xor25, 4, !dbg !3287
  %6 = lshr i8 %xor25, 3, !dbg !3288
  %7 = and i8 %6, 14, !dbg !3288
  %8 = xor i8 %5, %7, !dbg !3289
  %xor25.masked = and i8 %xor25, 15, !dbg !3290
  %9 = xor i8 %8, %xor25.masked, !dbg !3290
    #dbg_value(i8 %9, !3291, !DIExpression(), !3271)
  ret i8 %9, !dbg !3292
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3293 {
entry:
    #dbg_value(ptr %a, !3294, !DIExpression(), !3295)
    #dbg_value(ptr %b, !3296, !DIExpression(), !3295)
    #dbg_value(i32 %n, !3297, !DIExpression(), !3295)
    #dbg_value(i32 1, !3298, !DIExpression(), !3295)
    #dbg_value(i8 0, !3299, !DIExpression(), !3295)
    #dbg_value(i32 0, !3300, !DIExpression(), !3302)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3303
  br label %for.cond, !dbg !3303

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3295
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3304
    #dbg_value(i32 %i.0, !3300, !DIExpression(), !3302)
    #dbg_value(ptr %b.addr.0, !3296, !DIExpression(), !3295)
    #dbg_value(i8 %ret.0, !3299, !DIExpression(), !3295)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3305
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3307

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3308
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3308
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3310
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #7, !dbg !3311
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #7, !dbg !3312
    #dbg_value(i8 %call1, !3299, !DIExpression(), !3295)
  %inc = add nuw i32 %i.0, 1, !dbg !3313
    #dbg_value(i32 %inc, !3300, !DIExpression(), !3302)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3314
    #dbg_value(ptr %add.ptr, !3296, !DIExpression(), !3295)
  br label %for.cond, !dbg !3315, !llvm.loop !3316

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3295
  ret i8 %ret.0.lcssa, !dbg !3318
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3319 {
entry:
    #dbg_value(i8 %a, !3320, !DIExpression(), !3321)
    #dbg_value(i8 %b, !3322, !DIExpression(), !3321)
  %xor1 = xor i8 %a, %b, !dbg !3323
  ret i8 %xor1, !dbg !3324
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3325 {
entry:
    #dbg_value(ptr %state, !3333, !DIExpression(), !3334)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !3335
  store ptr %call, ptr %state, align 4, !dbg !3336
  %cmp = icmp eq ptr %call, null, !dbg !3337
  br i1 %cmp, label %if.then, label %if.end, !dbg !3337

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !3339
  br label %if.end, !dbg !3341

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3342
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !3343
  ret void, !dbg !3344
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #5

declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3345 {
entry:
    #dbg_value(ptr %s_inc, !3346, !DIExpression(), !3347)
    #dbg_value(i32 0, !3348, !DIExpression(), !3347)
  br label %for.cond, !dbg !3349

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3351
    #dbg_value(i32 %i.0, !3348, !DIExpression(), !3347)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3352
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3354

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3355
  store i64 0, ptr %arrayidx, align 8, !dbg !3357
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3358
    #dbg_value(i32 %inc, !3348, !DIExpression(), !3347)
  br label %for.cond, !dbg !3359, !llvm.loop !3360

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3362
  store i64 0, ptr %arrayidx1, align 8, !dbg !3363
  ret void, !dbg !3364
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3365 {
entry:
    #dbg_value(ptr %state, !3370, !DIExpression(), !3371)
    #dbg_value(ptr %input, !3372, !DIExpression(), !3371)
    #dbg_value(i32 %inlen, !3373, !DIExpression(), !3371)
  %0 = load ptr, ptr %state, align 4, !dbg !3374
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #7, !dbg !3375
  ret void, !dbg !3376
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3377 {
entry:
    #dbg_value(ptr %s_inc, !3380, !DIExpression(), !3381)
    #dbg_value(i32 %r, !3382, !DIExpression(), !3381)
    #dbg_value(ptr %m, !3383, !DIExpression(), !3381)
    #dbg_value(i32 %mlen, !3384, !DIExpression(), !3381)
  br label %while.cond, !dbg !3385

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3384, !DIExpression(), !3381)
    #dbg_value(ptr %m.addr.0, !3383, !DIExpression(), !3381)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3386
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3387
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3387
  %add = add i64 %0, %conv, !dbg !3388
  %conv1 = zext nneg i32 %r to i64, !dbg !3389
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3390
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3385

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3391

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3394

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3396
    #dbg_value(i32 %i.0, !3397, !DIExpression(), !3381)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3398
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3398
  %conv4 = trunc i64 %1 to i32, !dbg !3400
  %sub = sub i32 %r, %conv4, !dbg !3401
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3402
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3391

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3403
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3403
  %conv8 = zext i8 %2 to i64, !dbg !3405
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3406
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3406
  %conv10 = zext i32 %i.0 to i64, !dbg !3407
  %add11 = add i64 %3, %conv10, !dbg !3408
  %and = shl i64 %add11, 3, !dbg !3409
  %mul = and i64 %and, 56, !dbg !3409
  %shl = shl nuw i64 %conv8, %mul, !dbg !3410
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3411
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3411
  %conv13 = zext i32 %i.0 to i64, !dbg !3412
  %add14 = add i64 %4, %conv13, !dbg !3413
  %shr = lshr i64 %add14, 3, !dbg !3414
  %idxprom = trunc i64 %shr to i32, !dbg !3415
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3415
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3416
  %xor = xor i64 %5, %shl, !dbg !3416
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3416
  %inc = add nuw i32 %i.0, 1, !dbg !3417
    #dbg_value(i32 %inc, !3397, !DIExpression(), !3381)
  br label %for.cond, !dbg !3418, !llvm.loop !3419

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3421
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3421
  %7 = trunc i64 %6 to i32, !dbg !3422
  %conv19.neg = sub i32 %7, %r, !dbg !3422
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3423
    #dbg_value(i32 %sub20, !3384, !DIExpression(), !3381)
  %8 = trunc i64 %6 to i32, !dbg !3424
  %idx.ext = sub i32 %r, %8, !dbg !3424
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3424
    #dbg_value(ptr %add.ptr, !3383, !DIExpression(), !3381)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3425
  store i64 0, ptr %arrayidx24, align 8, !dbg !3426
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !3427
  br label %while.cond, !dbg !3385, !llvm.loop !3428

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3430
    #dbg_value(i32 %i.1, !3397, !DIExpression(), !3381)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3431
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3394

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3433
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3433
  %conv30 = zext i8 %9 to i64, !dbg !3435
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3436
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3436
  %conv32 = zext i32 %i.1 to i64, !dbg !3437
  %add33 = add i64 %10, %conv32, !dbg !3438
  %and34 = shl i64 %add33, 3, !dbg !3439
  %mul35 = and i64 %and34, 56, !dbg !3439
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3440
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3441
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3441
  %conv38 = zext i32 %i.1 to i64, !dbg !3442
  %add39 = add i64 %11, %conv38, !dbg !3443
  %shr40 = lshr i64 %add39, 3, !dbg !3444
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3445
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3445
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3446
  %xor43 = xor i64 %12, %shl36, !dbg !3446
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3446
  %inc45 = add i32 %i.1, 1, !dbg !3447
    #dbg_value(i32 %inc45, !3397, !DIExpression(), !3381)
  br label %for.cond25, !dbg !3448, !llvm.loop !3449

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3451
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3452
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3453
  %add49 = add i64 %13, %conv47, !dbg !3453
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3453
  ret void, !dbg !3454
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3455 {
entry:
    #dbg_value(ptr %state, !3456, !DIExpression(), !3457)
  %0 = load i64, ptr %state, align 8, !dbg !3458
    #dbg_value(i64 %0, !3459, !DIExpression(), !3457)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3460
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3460
    #dbg_value(i64 %1, !3461, !DIExpression(), !3457)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3462
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3462
    #dbg_value(i64 %2, !3463, !DIExpression(), !3457)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3464
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3464
    #dbg_value(i64 %3, !3465, !DIExpression(), !3457)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3466
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3466
    #dbg_value(i64 %4, !3467, !DIExpression(), !3457)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3468
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3468
    #dbg_value(i64 %5, !3469, !DIExpression(), !3457)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3470
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3470
    #dbg_value(i64 %6, !3471, !DIExpression(), !3457)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3472
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3472
    #dbg_value(i64 %7, !3473, !DIExpression(), !3457)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3474
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3474
    #dbg_value(i64 %8, !3475, !DIExpression(), !3457)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3476
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3476
    #dbg_value(i64 %9, !3477, !DIExpression(), !3457)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3478
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3478
    #dbg_value(i64 %10, !3479, !DIExpression(), !3457)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3480
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3480
    #dbg_value(i64 %11, !3481, !DIExpression(), !3457)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3482
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3482
    #dbg_value(i64 %12, !3483, !DIExpression(), !3457)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3484
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3484
    #dbg_value(i64 %13, !3485, !DIExpression(), !3457)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3486
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3486
    #dbg_value(i64 %14, !3487, !DIExpression(), !3457)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3488
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3488
    #dbg_value(i64 %15, !3489, !DIExpression(), !3457)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3490
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3490
    #dbg_value(i64 %16, !3491, !DIExpression(), !3457)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3492
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3492
    #dbg_value(i64 %17, !3493, !DIExpression(), !3457)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3494
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3494
    #dbg_value(i64 %18, !3495, !DIExpression(), !3457)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3496
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3496
    #dbg_value(i64 %19, !3497, !DIExpression(), !3457)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3498
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3498
    #dbg_value(i64 %20, !3499, !DIExpression(), !3457)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3500
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3500
    #dbg_value(i64 %21, !3501, !DIExpression(), !3457)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3502
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3502
    #dbg_value(i64 %22, !3503, !DIExpression(), !3457)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3504
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3504
    #dbg_value(i64 %23, !3505, !DIExpression(), !3457)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3506
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3506
    #dbg_value(i64 %24, !3507, !DIExpression(), !3457)
    #dbg_value(i32 0, !3508, !DIExpression(), !3457)
  br label %for.cond, !dbg !3509

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3457
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3457
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3457
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3457
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3457
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3457
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3457
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3457
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3457
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3457
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3457
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3457
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3457
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3457
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3457
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3457
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3457
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3457
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3457
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3457
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3457
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3457
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3457
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3457
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3511
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3457
    #dbg_value(i64 %Asu.0, !3507, !DIExpression(), !3457)
    #dbg_value(i32 %round.0, !3508, !DIExpression(), !3457)
    #dbg_value(i64 %Aba.0, !3459, !DIExpression(), !3457)
    #dbg_value(i64 %Abe.0, !3461, !DIExpression(), !3457)
    #dbg_value(i64 %Abi.0, !3463, !DIExpression(), !3457)
    #dbg_value(i64 %Abo.0, !3465, !DIExpression(), !3457)
    #dbg_value(i64 %Abu.0, !3467, !DIExpression(), !3457)
    #dbg_value(i64 %Aga.0, !3469, !DIExpression(), !3457)
    #dbg_value(i64 %Age.0, !3471, !DIExpression(), !3457)
    #dbg_value(i64 %Agi.0, !3473, !DIExpression(), !3457)
    #dbg_value(i64 %Ago.0, !3475, !DIExpression(), !3457)
    #dbg_value(i64 %Agu.0, !3477, !DIExpression(), !3457)
    #dbg_value(i64 %Aka.0, !3479, !DIExpression(), !3457)
    #dbg_value(i64 %Ake.0, !3481, !DIExpression(), !3457)
    #dbg_value(i64 %Aki.0, !3483, !DIExpression(), !3457)
    #dbg_value(i64 %Ako.0, !3485, !DIExpression(), !3457)
    #dbg_value(i64 %Aku.0, !3487, !DIExpression(), !3457)
    #dbg_value(i64 %Ama.0, !3489, !DIExpression(), !3457)
    #dbg_value(i64 %Ame.0, !3491, !DIExpression(), !3457)
    #dbg_value(i64 %Ami.0, !3493, !DIExpression(), !3457)
    #dbg_value(i64 %Amo.0, !3495, !DIExpression(), !3457)
    #dbg_value(i64 %Amu.0, !3497, !DIExpression(), !3457)
    #dbg_value(i64 %Asa.0, !3499, !DIExpression(), !3457)
    #dbg_value(i64 %Ase.0, !3501, !DIExpression(), !3457)
    #dbg_value(i64 %Asi.0, !3503, !DIExpression(), !3457)
    #dbg_value(i64 %Aso.0, !3505, !DIExpression(), !3457)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3512
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3514

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 poison, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3550
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3552
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3553
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3554
    #dbg_value(i64 %xor35, !3517, !DIExpression(), !3457)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3555
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3556
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3557
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3558
    #dbg_value(i64 %xor43, !3519, !DIExpression(), !3457)
  %xor56 = call i64 @llvm.fshl.i64(i64 %xor43, i64 %xor43, i64 1), !dbg !3559
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %xor56), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %xor56), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %xor56), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %xor56), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %xor56), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor35, i64 %xor56), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor57 = xor i64 %xor35, %xor56, !dbg !3560
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 %xor57, !3523, !DIExpression(), !3457)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3561
    #dbg_value(i64 %xor203, !3475, !DIExpression(), !3457)
  %xor206 = call i64 @llvm.fshl.i64(i64 %xor203, i64 %xor203, i64 55), !dbg !3562
    #dbg_value(i64 %xor206, !3516, !DIExpression(), !3457)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3563
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3564
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3565
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3566
    #dbg_value(i64 %xor31, !3516, !DIExpression(), !3457)
  %xor44 = call i64 @llvm.fshl.i64(i64 %xor31, i64 %xor31, i64 1), !dbg !3567
    #dbg_value(!DIArgList(i64 %xor43, i64 %xor44), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %xor44), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %xor44), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %xor44), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %xor44), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %xor44), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor45 = xor i64 %xor43, %xor44, !dbg !3568
    #dbg_value(i64 %xor45, !3520, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3569
    #dbg_value(i64 %xor211, !3489, !DIExpression(), !3457)
  %xor214 = call i64 @llvm.fshl.i64(i64 %xor211, i64 %xor211, i64 41), !dbg !3570
    #dbg_value(i64 %xor214, !3518, !DIExpression(), !3457)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3571
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3572
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3573
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3574
    #dbg_value(i64 %xor39, !3518, !DIExpression(), !3457)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3575
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3576
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3577
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3578
    #dbg_value(i64 %xor27, !3515, !DIExpression(), !3457)
  %xor60 = call i64 @llvm.fshl.i64(i64 %xor27, i64 %xor27, i64 1), !dbg !3579
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %xor60), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %xor60), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %xor60), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %xor60), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor39, i64 %xor60), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %xor60), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor61 = xor i64 %xor39, %xor60, !dbg !3580
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 %xor61, !3524, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3581
    #dbg_value(i64 %xor207, !3487, !DIExpression(), !3457)
  %xor210 = call i64 @llvm.fshl.i64(i64 %xor207, i64 %xor207, i64 39), !dbg !3582
    #dbg_value(i64 %xor210, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %xor210), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not222 = xor i64 %xor210, -1, !dbg !3583
    #dbg_value(!DIArgList(i64 %xor206, i64 %xor214, i64 %not222), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and223 = and i64 %xor214, %not222, !dbg !3584
    #dbg_value(!DIArgList(i64 %xor206, i64 %and223), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor224 = xor i64 %xor206, %and223, !dbg !3585
    #dbg_value(i64 %xor224, !3546, !DIExpression(), !3457)
  %xor52 = call i64 @llvm.fshl.i64(i64 %xor39, i64 %xor39, i64 1), !dbg !3586
    #dbg_value(!DIArgList(i64 %xor31, i64 %xor52), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %xor52), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %xor52), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %xor52), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %xor52), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %xor52), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor53 = xor i64 %xor31, %xor52, !dbg !3587
    #dbg_value(i64 %xor53, !3522, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3588
    #dbg_value(i64 %xor67, !3483, !DIExpression(), !3457)
  %xor70 = call i64 @llvm.fshl.i64(i64 %xor67, i64 %xor67, i64 43), !dbg !3589
    #dbg_value(i64 %xor70, !3517, !DIExpression(), !3457)
  %xor48 = call i64 @llvm.fshl.i64(i64 %xor35, i64 %xor35, i64 1), !dbg !3590
    #dbg_value(!DIArgList(i64 %xor27, i64 %xor48), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %xor48), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %xor48), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %xor48), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %xor48), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %xor48), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor49 = xor i64 %xor27, %xor48, !dbg !3591
    #dbg_value(i64 %xor49, !3521, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3592
    #dbg_value(i64 %xor63, !3471, !DIExpression(), !3457)
  %xor66 = call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 44), !dbg !3593
    #dbg_value(i64 %xor66, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %xor66), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not = xor i64 %xor66, -1, !dbg !3594
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor70, i64 %xor45, i64 %not), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and = and i64 %xor70, %not, !dbg !3595
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3596
  %25 = load i64, ptr %arrayidx80, align 8, !dbg !3596
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %25), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %26 = xor i64 %and, %25, !dbg !3597
    #dbg_value(!DIArgList(i64 %26, i64 %Aba.0, i64 %xor45), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3598
    #dbg_value(i64 %xor62, !3459, !DIExpression(), !3457)
    #dbg_value(i64 %xor62, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %26, i64 %xor62), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor81 = xor i64 %26, %xor62, !dbg !3597
    #dbg_value(i64 %xor81, !3525, !DIExpression(), !3457)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3599
    #dbg_value(i64 %xor94, !3465, !DIExpression(), !3457)
  %xor97 = call i64 @llvm.fshl.i64(i64 %xor94, i64 %xor94, i64 28), !dbg !3600
    #dbg_value(i64 %xor97, !3515, !DIExpression(), !3457)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3601
    #dbg_value(i64 %xor102, !3479, !DIExpression(), !3457)
  %xor105 = call i64 @llvm.fshl.i64(i64 %xor102, i64 %xor102, i64 3), !dbg !3602
    #dbg_value(i64 %xor105, !3517, !DIExpression(), !3457)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3603
    #dbg_value(i64 %xor98, !3477, !DIExpression(), !3457)
  %xor101 = call i64 @llvm.fshl.i64(i64 %xor98, i64 %xor98, i64 20), !dbg !3604
    #dbg_value(i64 %xor101, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %xor101), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not114 = xor i64 %xor101, -1, !dbg !3605
    #dbg_value(!DIArgList(i64 %xor97, i64 %xor105, i64 %not114), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and115 = and i64 %xor105, %not114, !dbg !3606
    #dbg_value(!DIArgList(i64 %xor97, i64 %and115), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor116 = xor i64 %xor97, %and115, !dbg !3607
    #dbg_value(i64 %xor116, !3530, !DIExpression(), !3457)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3608
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3609
    #dbg_value(i64 %xor129, !3461, !DIExpression(), !3457)
  %xor132 = call i64 @llvm.fshl.i64(i64 %xor129, i64 %xor129, i64 1), !dbg !3610
    #dbg_value(i64 %xor132, !3515, !DIExpression(), !3457)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3611
    #dbg_value(i64 %xor137, !3485, !DIExpression(), !3457)
  %xor140 = call i64 @llvm.fshl.i64(i64 %xor137, i64 %xor137, i64 25), !dbg !3612
    #dbg_value(i64 %xor140, !3517, !DIExpression(), !3457)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3613
    #dbg_value(i64 %xor133, !3473, !DIExpression(), !3457)
  %xor136 = call i64 @llvm.fshl.i64(i64 %xor133, i64 %xor133, i64 6), !dbg !3614
    #dbg_value(i64 %xor136, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %xor136), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not149 = xor i64 %xor136, -1, !dbg !3615
    #dbg_value(!DIArgList(i64 %xor132, i64 %xor140, i64 %not149), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and150 = and i64 %xor140, %not149, !dbg !3616
    #dbg_value(!DIArgList(i64 %xor132, i64 %and150), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor151 = xor i64 %xor132, %and150, !dbg !3617
    #dbg_value(i64 %xor151, !3535, !DIExpression(), !3457)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3618
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3619
    #dbg_value(i64 %xor164, !3467, !DIExpression(), !3457)
  %xor167 = call i64 @llvm.fshl.i64(i64 %xor164, i64 %xor164, i64 27), !dbg !3620
    #dbg_value(i64 %xor167, !3515, !DIExpression(), !3457)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3621
    #dbg_value(i64 %xor172, !3481, !DIExpression(), !3457)
  %xor175 = call i64 @llvm.fshl.i64(i64 %xor172, i64 %xor172, i64 10), !dbg !3622
    #dbg_value(i64 %xor175, !3517, !DIExpression(), !3457)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3623
    #dbg_value(i64 %xor168, !3469, !DIExpression(), !3457)
  %xor171 = call i64 @llvm.fshl.i64(i64 %xor168, i64 %xor168, i64 36), !dbg !3624
    #dbg_value(i64 %xor171, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %xor171), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not184 = xor i64 %xor171, -1, !dbg !3625
    #dbg_value(!DIArgList(i64 %xor167, i64 %xor175, i64 %not184), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and185 = and i64 %xor175, %not184, !dbg !3626
    #dbg_value(!DIArgList(i64 %xor167, i64 %and185), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor186 = xor i64 %xor167, %and185, !dbg !3627
    #dbg_value(i64 %xor186, !3540, !DIExpression(), !3457)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3628
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3629
    #dbg_value(i64 %xor199, !3463, !DIExpression(), !3457)
  %xor202 = call i64 @llvm.fshl.i64(i64 %xor199, i64 %xor199, i64 62), !dbg !3630
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %xor206), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %xor206), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not219 = xor i64 %xor206, -1, !dbg !3631
    #dbg_value(!DIArgList(i64 %xor202, i64 %xor210, i64 %not219), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %xor210, i64 %not219), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and220 = and i64 %xor210, %not219, !dbg !3632
    #dbg_value(!DIArgList(i64 %xor202, i64 %and220), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor202, i64 %and220), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor221 = xor i64 %xor202, %and220, !dbg !3633
    #dbg_value(i64 %xor221, !3545, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3634
    #dbg_value(i64 %xor237, !3515, !DIExpression(), !3457)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3635
    #dbg_value(i64 %xor75, !3507, !DIExpression(), !3457)
  %xor78 = call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 14), !dbg !3636
    #dbg_value(i64 %xor78, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %xor62), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3637
    #dbg_value(i64 %xor71, !3495, !DIExpression(), !3457)
  %xor74 = call i64 @llvm.fshl.i64(i64 %xor71, i64 %xor71, i64 21), !dbg !3638
    #dbg_value(i64 %xor74, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %xor74), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor74, i64 %xor70), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor62, i64 %xor78), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not85 = xor i64 %xor74, -1, !dbg !3639
    #dbg_value(!DIArgList(i64 %xor70, i64 %xor78, i64 %not85), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and86 = and i64 %xor78, %not85, !dbg !3640
    #dbg_value(!DIArgList(i64 %xor70, i64 %and86), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor87 = xor i64 %xor70, %and86, !dbg !3641
    #dbg_value(i64 %xor87, !3527, !DIExpression(), !3457)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3642
    #dbg_value(i64 %xor110, !3503, !DIExpression(), !3457)
  %xor113 = call i64 @llvm.fshl.i64(i64 %xor110, i64 %xor110, i64 61), !dbg !3643
    #dbg_value(i64 %xor113, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %xor97), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3644
    #dbg_value(i64 %xor106, !3491, !DIExpression(), !3457)
  %xor109 = call i64 @llvm.fshl.i64(i64 %xor106, i64 %xor106, i64 45), !dbg !3645
    #dbg_value(i64 %xor109, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %xor109), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %xor113), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor109, i64 %xor105), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not120 = xor i64 %xor109, -1, !dbg !3646
    #dbg_value(!DIArgList(i64 %xor105, i64 %xor113, i64 %not120), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and121 = and i64 %xor113, %not120, !dbg !3647
    #dbg_value(!DIArgList(i64 %xor105, i64 %and121), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor122 = xor i64 %xor105, %and121, !dbg !3648
    #dbg_value(i64 %xor122, !3532, !DIExpression(), !3457)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3649
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3650
    #dbg_value(i64 %xor145, !3499, !DIExpression(), !3457)
  %xor148 = call i64 @llvm.fshl.i64(i64 %xor145, i64 %xor145, i64 18), !dbg !3651
    #dbg_value(i64 %xor148, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %xor132), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3652
    #dbg_value(i64 %xor141, !3497, !DIExpression(), !3457)
  %xor144 = call i64 @llvm.fshl.i64(i64 %xor141, i64 %xor141, i64 8), !dbg !3653
    #dbg_value(i64 %xor144, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %xor144), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor144, i64 %xor140), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor132, i64 %xor148), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not155 = xor i64 %xor144, -1, !dbg !3654
    #dbg_value(!DIArgList(i64 %xor140, i64 %xor148, i64 %not155), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and156 = and i64 %xor148, %not155, !dbg !3655
    #dbg_value(!DIArgList(i64 %xor140, i64 %and156), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor157 = xor i64 %xor140, %and156, !dbg !3656
    #dbg_value(i64 %xor157, !3537, !DIExpression(), !3457)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3657
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3658
    #dbg_value(i64 %xor180, !3505, !DIExpression(), !3457)
  %xor183 = call i64 @llvm.fshl.i64(i64 %xor180, i64 %xor180, i64 56), !dbg !3659
    #dbg_value(i64 %xor183, !3519, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %xor167), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3660
    #dbg_value(i64 %xor176, !3493, !DIExpression(), !3457)
  %xor179 = call i64 @llvm.fshl.i64(i64 %xor176, i64 %xor176, i64 15), !dbg !3661
    #dbg_value(i64 %xor179, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %xor179), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor179, i64 %xor175), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor167, i64 %xor183), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %xor70), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %not190 = xor i64 %xor179, -1, !dbg !3662
    #dbg_value(!DIArgList(i64 %xor175, i64 %xor183, i64 %not190), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and191 = and i64 %xor183, %not190, !dbg !3663
    #dbg_value(!DIArgList(i64 %xor175, i64 %and191), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor192 = xor i64 %xor175, %and191, !dbg !3664
    #dbg_value(i64 %xor192, !3542, !DIExpression(), !3457)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3665
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3666
    #dbg_value(i64 %xor215, !3501, !DIExpression(), !3457)
  %xor218 = call i64 @llvm.fshl.i64(i64 %xor215, i64 %xor215, i64 2), !dbg !3667
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %xor214), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %xor202), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor202, i64 %xor218), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %xor214), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %xor113), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %xor62), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not225 = xor i64 %xor214, -1, !dbg !3668
    #dbg_value(!DIArgList(i64 %xor210, i64 %xor218, i64 %not225), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %xor218, i64 %not225), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and226 = and i64 %xor218, %not225, !dbg !3669
    #dbg_value(!DIArgList(i64 %xor210, i64 %and226), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor210, i64 %and226), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor227 = xor i64 %xor210, %and226, !dbg !3670
    #dbg_value(i64 %xor227, !3547, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3671
    #dbg_value(i64 %xor245, !3517, !DIExpression(), !3457)
  %xor260 = call i64 @llvm.fshl.i64(i64 %xor245, i64 %xor245, i64 1), !dbg !3672
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %xor260), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor237, i64 %xor74, i64 %xor70, i64 %xor260), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor237, i64 %xor109, i64 %xor105, i64 %xor260), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor237, i64 %xor144, i64 %xor140, i64 %xor260), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor237, i64 %xor179, i64 %xor175, i64 %xor260), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor237, i64 %xor260), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor261 = xor i64 %xor237, %xor260, !dbg !3673
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %xor70), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %xor105), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %xor140), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %xor175), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 %xor261, !3521, !DIExpression(), !3457)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3674
    #dbg_value(i64 %xor429, !3546, !DIExpression(), !3457)
  %xor432 = call i64 @llvm.fshl.i64(i64 %xor429, i64 %xor429, i64 2), !dbg !3675
    #dbg_value(i64 %xor432, !3519, !DIExpression(), !3457)
  %not123 = xor i64 %xor113, -1, !dbg !3676
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor97, i64 %not123), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %xor97, i64 %not123), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and124 = and i64 %xor97, %not123, !dbg !3677
    #dbg_value(!DIArgList(i64 %xor109, i64 %and124), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor109, i64 %xor62, i64 %xor78, i64 %and124), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor125 = xor i64 %xor109, %and124, !dbg !3678
    #dbg_value(i64 %xor125, !3533, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %xor78), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not91 = xor i64 %xor62, -1, !dbg !3679
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor66, i64 %not91), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %xor66, i64 %not91), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and92 = and i64 %xor66, %not91, !dbg !3680
    #dbg_value(!DIArgList(i64 %xor78, i64 %and92), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor78, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97, i64 %and92), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor93 = xor i64 %xor78, %and92, !dbg !3681
    #dbg_value(i64 %xor93, !3529, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %xor97), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not126 = xor i64 %xor97, -1, !dbg !3682
    #dbg_value(!DIArgList(i64 %xor113, i64 %xor101, i64 %not126), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %xor101, i64 %not126), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and127 = and i64 %xor101, %not126, !dbg !3683
    #dbg_value(!DIArgList(i64 %xor113, i64 %and127), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor113, i64 %and127), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor128 = xor i64 %xor113, %and127, !dbg !3684
    #dbg_value(i64 %xor128, !3534, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132, i64 %xor128), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3685
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %xor132), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not161 = xor i64 %xor132, -1, !dbg !3686
    #dbg_value(!DIArgList(i64 %xor148, i64 %xor136, i64 %not161), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %xor136, i64 %not161), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and162 = and i64 %xor136, %not161, !dbg !3687
    #dbg_value(!DIArgList(i64 %xor148, i64 %and162), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor148, i64 %and162), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor163 = xor i64 %xor148, %and162, !dbg !3688
    #dbg_value(i64 %xor163, !3539, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor250, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167, i64 %xor163), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3689
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %xor167), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not196 = xor i64 %xor167, -1, !dbg !3690
    #dbg_value(!DIArgList(i64 %xor183, i64 %xor171, i64 %not196), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %xor171, i64 %not196), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and197 = and i64 %xor171, %not196, !dbg !3691
    #dbg_value(!DIArgList(i64 %xor183, i64 %and197), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor183, i64 %and197), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor198 = xor i64 %xor183, %and197, !dbg !3692
    #dbg_value(i64 %xor198, !3544, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor251, i64 %xor218, i64 %xor206, i64 %xor202, i64 %xor198), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3693
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %xor202), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not231 = xor i64 %xor202, -1, !dbg !3694
    #dbg_value(!DIArgList(i64 %xor218, i64 %xor206, i64 %not231), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %xor206, i64 %not231), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %and232 = and i64 %xor206, %not231, !dbg !3695
    #dbg_value(!DIArgList(i64 %xor218, i64 %and232), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor218, i64 %and232), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor233 = xor i64 %xor218, %and232, !dbg !3696
    #dbg_value(i64 %xor233, !3549, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3697
    #dbg_value(i64 %xor253, !3519, !DIExpression(), !3457)
  %xor268 = call i64 @llvm.fshl.i64(i64 %xor253, i64 %xor253, i64 1), !dbg !3698
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %xor268), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor245, i64 %xor62, i64 %xor78, i64 %xor268), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor245, i64 %xor132, i64 %xor148, i64 %xor268), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor245, i64 %xor167, i64 %xor183, i64 %xor268), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor245, i64 %xor202, i64 %xor218, i64 %xor268), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor245, i64 %xor268), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor269 = xor i64 %xor245, %xor268, !dbg !3699
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %xor78), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %xor148), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %xor183), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %xor218), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 %xor269, !3523, !DIExpression(), !3457)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3700
    #dbg_value(i64 %xor417, !3533, !DIExpression(), !3457)
  %xor420 = call i64 @llvm.fshl.i64(i64 %xor417, i64 %xor417, i64 55), !dbg !3701
    #dbg_value(i64 %xor420, !3516, !DIExpression(), !3457)
  %not82 = xor i64 %xor70, -1, !dbg !3702
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %xor74, i64 %not82), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %xor74, i64 %not82), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and83 = and i64 %xor74, %not82, !dbg !3703
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105, i64 %and83), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor66, i64 %xor261, i64 %and83), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor84 = xor i64 %xor66, %and83, !dbg !3704
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %xor105), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3526, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %not117 = xor i64 %xor105, -1, !dbg !3705
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %xor109, i64 %not117), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %xor109, i64 %not117), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and118 = and i64 %xor109, %not117, !dbg !3706
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor101, i64 %and118), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor101, i64 %xor261, i64 %and118), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor119 = xor i64 %xor101, %and118, !dbg !3707
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140, i64 %xor119), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3708
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %xor140), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %not152 = xor i64 %xor140, -1, !dbg !3709
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %xor144, i64 %not152), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %xor144, i64 %not152), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and153 = and i64 %xor144, %not152, !dbg !3710
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor136, i64 %and153), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor136, i64 %xor261, i64 %and153), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor154 = xor i64 %xor136, %and153, !dbg !3711
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175, i64 %xor154), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3712
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %xor175), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %not187 = xor i64 %xor175, -1, !dbg !3713
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %xor179, i64 %not187), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %xor179, i64 %not187), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and188 = and i64 %xor179, %not187, !dbg !3714
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor171, i64 %and188), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor171, i64 %xor261, i64 %and188), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor189 = xor i64 %xor171, %and188, !dbg !3715
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3716
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3717
    #dbg_value(i64 %xor241, !3516, !DIExpression(), !3457)
  %not88 = xor i64 %xor78, -1, !dbg !3718
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %xor62, i64 %not88), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %xor62, i64 %not88), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and89 = and i64 %xor62, %not88, !dbg !3719
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125, i64 %and89), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor74, i64 %xor269, i64 %and89), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor90 = xor i64 %xor74, %and89, !dbg !3720
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148, i64 %xor125), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3721
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %xor148), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not158 = xor i64 %xor148, -1, !dbg !3722
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %xor132, i64 %not158), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %xor132, i64 %not158), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and159 = and i64 %xor132, %not158, !dbg !3723
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor144, i64 %and159), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor144, i64 %xor269, i64 %and159), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor160 = xor i64 %xor144, %and159, !dbg !3724
    #dbg_value(!DIArgList(i64 %xor246, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183, i64 %xor160), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3725
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %xor183), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not193 = xor i64 %xor183, -1, !dbg !3726
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %xor167, i64 %not193), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %xor167, i64 %not193), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and194 = and i64 %xor167, %not193, !dbg !3727
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor179, i64 %and194), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor179, i64 %xor269, i64 %and194), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor195 = xor i64 %xor179, %and194, !dbg !3728
    #dbg_value(!DIArgList(i64 %xor247, i64 %xor214, i64 %xor202, i64 %xor218, i64 %xor195), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3729
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %xor218), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %not228 = xor i64 %xor218, -1, !dbg !3730
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %xor202, i64 %not228), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %xor202, i64 %not228), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and229 = and i64 %xor202, %not228, !dbg !3731
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor214, i64 %and229), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor214, i64 %xor269, i64 %and229), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor230 = xor i64 %xor214, %and229, !dbg !3732
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3518, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3733
    #dbg_value(i64 %xor249, !3518, !DIExpression(), !3457)
  %xor264 = call i64 @llvm.fshl.i64(i64 %xor249, i64 %xor249, i64 1), !dbg !3734
    #dbg_value(!DIArgList(i64 %xor241, i64 %xor264), !3522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %xor264), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %xor264), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %xor264), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %xor264), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %xor264), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor265 = xor i64 %xor241, %xor264, !dbg !3735
    #dbg_value(i64 %xor265, !3522, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3736
    #dbg_value(i64 %xor413, !3527, !DIExpression(), !3457)
  %xor416 = call i64 @llvm.fshl.i64(i64 %xor413, i64 %xor413, i64 62), !dbg !3737
    #dbg_value(i64 %xor416, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %xor416), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not445 = xor i64 %xor416, -1, !dbg !3738
    #dbg_value(!DIArgList(i64 %xor432, i64 %xor420, i64 %not445), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and446 = and i64 %xor420, %not445, !dbg !3739
    #dbg_value(!DIArgList(i64 %xor432, i64 %and446), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor447 = xor i64 %xor432, %and446, !dbg !3740
    #dbg_value(i64 %xor447, !3507, !DIExpression(), !3457)
  %xor256 = call i64 @llvm.fshl.i64(i64 %xor241, i64 %xor241, i64 1), !dbg !3741
    #dbg_value(!DIArgList(i64 %xor253, i64 %xor256), !3520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %xor256), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %xor256), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %xor256), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %xor256), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %xor256), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor257 = xor i64 %xor253, %xor256, !dbg !3742
    #dbg_value(i64 %xor257, !3520, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3530, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3743
    #dbg_value(i64 %xor425, !3540, !DIExpression(), !3457)
  %xor428 = call i64 @llvm.fshl.i64(i64 %xor425, i64 %xor425, i64 41), !dbg !3744
    #dbg_value(i64 %xor428, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %xor432), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not442 = xor i64 %xor432, -1, !dbg !3745
    #dbg_value(!DIArgList(i64 %xor428, i64 %xor416, i64 %not442), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and443 = and i64 %xor416, %not442, !dbg !3746
    #dbg_value(!DIArgList(i64 %xor428, i64 %and443), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor444 = xor i64 %xor428, %and443, !dbg !3747
    #dbg_value(i64 %xor444, !3505, !DIExpression(), !3457)
  %xor272 = call i64 @llvm.fshl.i64(i64 %xor237, i64 %xor237, i64 1), !dbg !3748
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %xor272), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %xor272), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %xor272), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %xor272), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor249, i64 %xor272), !3524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %xor272), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor273 = xor i64 %xor249, %xor272, !dbg !3749
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(i64 %xor273, !3524, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3750
    #dbg_value(i64 %xor421, !3539, !DIExpression(), !3457)
  %xor424 = call i64 @llvm.fshl.i64(i64 %xor421, i64 %xor421, i64 39), !dbg !3751
    #dbg_value(i64 %xor424, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %xor428), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %xor424), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %xor420), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not439 = xor i64 %xor428, -1, !dbg !3752
    #dbg_value(!DIArgList(i64 %xor424, i64 %xor432, i64 %not439), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and440 = and i64 %xor432, %not439, !dbg !3753
    #dbg_value(!DIArgList(i64 %xor424, i64 %and440), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor441 = xor i64 %xor424, %and440, !dbg !3754
    #dbg_value(i64 %xor441, !3503, !DIExpression(), !3457)
  %not436 = xor i64 %xor424, -1, !dbg !3755
    #dbg_value(!DIArgList(i64 %xor420, i64 %xor428, i64 %not436), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and437 = and i64 %xor428, %not436, !dbg !3756
    #dbg_value(!DIArgList(i64 %xor420, i64 %and437), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor438 = xor i64 %xor420, %and437, !dbg !3757
    #dbg_value(i64 %xor438, !3501, !DIExpression(), !3457)
  %not433 = xor i64 %xor420, -1, !dbg !3758
    #dbg_value(!DIArgList(i64 %xor416, i64 %xor424, i64 %not433), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and434 = and i64 %xor424, %not433, !dbg !3759
    #dbg_value(!DIArgList(i64 %xor416, i64 %and434), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor435 = xor i64 %xor416, %and434, !dbg !3760
    #dbg_value(i64 %xor435, !3499, !DIExpression(), !3457)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3761
    #dbg_value(i64 %xor394, !3548, !DIExpression(), !3457)
  %xor397 = call i64 @llvm.fshl.i64(i64 %xor394, i64 %xor394, i64 56), !dbg !3762
    #dbg_value(i64 %xor397, !3519, !DIExpression(), !3457)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3763
    #dbg_value(i64 %xor382, !3530, !DIExpression(), !3457)
  %xor385 = call i64 @llvm.fshl.i64(i64 %xor382, i64 %xor382, i64 36), !dbg !3764
    #dbg_value(i64 %xor385, !3516, !DIExpression(), !3457)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3765
    #dbg_value(i64 %xor378, !3529, !DIExpression(), !3457)
  %xor381 = call i64 @llvm.fshl.i64(i64 %xor378, i64 %xor378, i64 27), !dbg !3766
    #dbg_value(i64 %xor381, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %xor381), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not410 = xor i64 %xor381, -1, !dbg !3767
    #dbg_value(!DIArgList(i64 %xor397, i64 %xor385, i64 %not410), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and411 = and i64 %xor385, %not410, !dbg !3768
    #dbg_value(!DIArgList(i64 %xor397, i64 %and411), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor412 = xor i64 %xor397, %and411, !dbg !3769
    #dbg_value(i64 %xor412, !3497, !DIExpression(), !3457)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3770
    #dbg_value(i64 %xor390, !3542, !DIExpression(), !3457)
  %xor393 = call i64 @llvm.fshl.i64(i64 %xor390, i64 %xor390, i64 15), !dbg !3771
    #dbg_value(i64 %xor393, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %xor397), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not407 = xor i64 %xor397, -1, !dbg !3772
    #dbg_value(!DIArgList(i64 %xor393, i64 %xor381, i64 %not407), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and408 = and i64 %xor381, %not407, !dbg !3773
    #dbg_value(!DIArgList(i64 %xor393, i64 %and408), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor409 = xor i64 %xor393, %and408, !dbg !3774
    #dbg_value(i64 %xor409, !3495, !DIExpression(), !3457)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3775
    #dbg_value(i64 %xor386, !3536, !DIExpression(), !3457)
  %xor389 = call i64 @llvm.fshl.i64(i64 %xor386, i64 %xor386, i64 10), !dbg !3776
    #dbg_value(i64 %xor389, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %xor393), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %xor389), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %xor385), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not404 = xor i64 %xor393, -1, !dbg !3777
    #dbg_value(!DIArgList(i64 %xor389, i64 %xor397, i64 %not404), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and405 = and i64 %xor397, %not404, !dbg !3778
    #dbg_value(!DIArgList(i64 %xor389, i64 %and405), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor406 = xor i64 %xor389, %and405, !dbg !3779
    #dbg_value(i64 %xor406, !3493, !DIExpression(), !3457)
  %not401 = xor i64 %xor389, -1, !dbg !3780
    #dbg_value(!DIArgList(i64 %xor385, i64 %xor393, i64 %not401), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and402 = and i64 %xor393, %not401, !dbg !3781
    #dbg_value(!DIArgList(i64 %xor385, i64 %and402), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor403 = xor i64 %xor385, %and402, !dbg !3782
    #dbg_value(i64 %xor403, !3491, !DIExpression(), !3457)
  %not398 = xor i64 %xor385, -1, !dbg !3783
    #dbg_value(!DIArgList(i64 %xor381, i64 %xor389, i64 %not398), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and399 = and i64 %xor389, %not398, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor381, i64 %and399), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor400 = xor i64 %xor381, %and399, !dbg !3785
    #dbg_value(i64 %xor400, !3489, !DIExpression(), !3457)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3786
    #dbg_value(i64 %xor359, !3545, !DIExpression(), !3457)
  %xor362 = call i64 @llvm.fshl.i64(i64 %xor359, i64 %xor359, i64 18), !dbg !3787
    #dbg_value(i64 %xor362, !3519, !DIExpression(), !3457)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3788
    #dbg_value(i64 %xor347, !3532, !DIExpression(), !3457)
  %xor350 = call i64 @llvm.fshl.i64(i64 %xor347, i64 %xor347, i64 6), !dbg !3789
    #dbg_value(i64 %xor350, !3516, !DIExpression(), !3457)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3790
    #dbg_value(i64 %xor343, !3526, !DIExpression(), !3457)
  %xor346 = call i64 @llvm.fshl.i64(i64 %xor343, i64 %xor343, i64 1), !dbg !3791
    #dbg_value(i64 %xor346, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %xor346), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not375 = xor i64 %xor346, -1, !dbg !3792
    #dbg_value(!DIArgList(i64 %xor362, i64 %xor350, i64 %not375), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and376 = and i64 %xor350, %not375, !dbg !3793
    #dbg_value(!DIArgList(i64 %xor362, i64 %and376), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor377 = xor i64 %xor362, %and376, !dbg !3794
    #dbg_value(i64 %xor377, !3487, !DIExpression(), !3457)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3795
    #dbg_value(i64 %xor355, !3544, !DIExpression(), !3457)
  %xor358 = call i64 @llvm.fshl.i64(i64 %xor355, i64 %xor355, i64 8), !dbg !3796
    #dbg_value(i64 %xor358, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %xor362), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not372 = xor i64 %xor362, -1, !dbg !3797
    #dbg_value(!DIArgList(i64 %xor358, i64 %xor346, i64 %not372), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and373 = and i64 %xor346, %not372, !dbg !3798
    #dbg_value(!DIArgList(i64 %xor358, i64 %and373), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor374 = xor i64 %xor358, %and373, !dbg !3799
    #dbg_value(i64 %xor374, !3485, !DIExpression(), !3457)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3800
    #dbg_value(i64 %xor351, !3538, !DIExpression(), !3457)
  %xor354 = call i64 @llvm.fshl.i64(i64 %xor351, i64 %xor351, i64 25), !dbg !3801
    #dbg_value(i64 %xor354, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %xor358), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %xor354), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %xor350), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not369 = xor i64 %xor358, -1, !dbg !3802
    #dbg_value(!DIArgList(i64 %xor354, i64 %xor362, i64 %not369), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and370 = and i64 %xor362, %not369, !dbg !3803
    #dbg_value(!DIArgList(i64 %xor354, i64 %and370), !3483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor371 = xor i64 %xor354, %and370, !dbg !3804
    #dbg_value(i64 %xor371, !3483, !DIExpression(), !3457)
  %not366 = xor i64 %xor354, -1, !dbg !3805
    #dbg_value(!DIArgList(i64 %xor350, i64 %xor358, i64 %not366), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and367 = and i64 %xor358, %not366, !dbg !3806
    #dbg_value(!DIArgList(i64 %xor350, i64 %and367), !3481, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor368 = xor i64 %xor350, %and367, !dbg !3807
    #dbg_value(i64 %xor368, !3481, !DIExpression(), !3457)
  %not363 = xor i64 %xor350, -1, !dbg !3808
    #dbg_value(!DIArgList(i64 %xor346, i64 %xor354, i64 %not363), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and364 = and i64 %xor354, %not363, !dbg !3809
    #dbg_value(!DIArgList(i64 %xor346, i64 %and364), !3479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor365 = xor i64 %xor346, %and364, !dbg !3810
    #dbg_value(i64 %xor365, !3479, !DIExpression(), !3457)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3811
    #dbg_value(i64 %xor324, !3547, !DIExpression(), !3457)
  %xor327 = call i64 @llvm.fshl.i64(i64 %xor324, i64 %xor324, i64 61), !dbg !3812
    #dbg_value(i64 %xor327, !3519, !DIExpression(), !3457)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3813
    #dbg_value(i64 %xor312, !3534, !DIExpression(), !3457)
  %xor315 = call i64 @llvm.fshl.i64(i64 %xor312, i64 %xor312, i64 20), !dbg !3814
    #dbg_value(i64 %xor315, !3516, !DIExpression(), !3457)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3815
    #dbg_value(i64 %xor308, !3528, !DIExpression(), !3457)
  %xor311 = call i64 @llvm.fshl.i64(i64 %xor308, i64 %xor308, i64 28), !dbg !3816
    #dbg_value(i64 %xor311, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %xor311), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not340 = xor i64 %xor311, -1, !dbg !3817
    #dbg_value(!DIArgList(i64 %xor327, i64 %xor315, i64 %not340), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and341 = and i64 %xor315, %not340, !dbg !3818
    #dbg_value(!DIArgList(i64 %xor327, i64 %and341), !3477, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor342 = xor i64 %xor327, %and341, !dbg !3819
    #dbg_value(i64 %xor342, !3477, !DIExpression(), !3457)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3820
    #dbg_value(i64 %xor320, !3541, !DIExpression(), !3457)
  %xor323 = call i64 @llvm.fshl.i64(i64 %xor320, i64 %xor320, i64 45), !dbg !3821
    #dbg_value(i64 %xor323, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %xor327), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not337 = xor i64 %xor327, -1, !dbg !3822
    #dbg_value(!DIArgList(i64 %xor323, i64 %xor311, i64 %not337), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and338 = and i64 %xor311, %not337, !dbg !3823
    #dbg_value(!DIArgList(i64 %xor323, i64 %and338), !3475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor339 = xor i64 %xor323, %and338, !dbg !3824
    #dbg_value(i64 %xor339, !3475, !DIExpression(), !3457)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3825
    #dbg_value(i64 %xor316, !3535, !DIExpression(), !3457)
  %xor319 = call i64 @llvm.fshl.i64(i64 %xor316, i64 %xor316, i64 3), !dbg !3826
    #dbg_value(i64 %xor319, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %xor323), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %xor319), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %xor315), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not334 = xor i64 %xor323, -1, !dbg !3827
    #dbg_value(!DIArgList(i64 %xor319, i64 %xor327, i64 %not334), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and335 = and i64 %xor327, %not334, !dbg !3828
    #dbg_value(!DIArgList(i64 %xor319, i64 %and335), !3473, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor336 = xor i64 %xor319, %and335, !dbg !3829
    #dbg_value(i64 %xor336, !3473, !DIExpression(), !3457)
  %not331 = xor i64 %xor319, -1, !dbg !3830
    #dbg_value(!DIArgList(i64 %xor315, i64 %xor323, i64 %not331), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and332 = and i64 %xor323, %not331, !dbg !3831
    #dbg_value(!DIArgList(i64 %xor315, i64 %and332), !3471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor333 = xor i64 %xor315, %and332, !dbg !3832
    #dbg_value(i64 %xor333, !3471, !DIExpression(), !3457)
  %not328 = xor i64 %xor315, -1, !dbg !3833
    #dbg_value(!DIArgList(i64 %xor311, i64 %xor319, i64 %not328), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and329 = and i64 %xor319, %not328, !dbg !3834
    #dbg_value(!DIArgList(i64 %xor311, i64 %and329), !3469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor330 = xor i64 %xor311, %and329, !dbg !3835
    #dbg_value(i64 %xor330, !3469, !DIExpression(), !3457)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3836
    #dbg_value(i64 %xor287, !3549, !DIExpression(), !3457)
  %xor290 = call i64 @llvm.fshl.i64(i64 %xor287, i64 %xor287, i64 14), !dbg !3837
    #dbg_value(i64 %xor290, !3519, !DIExpression(), !3457)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3838
    #dbg_value(i64 %xor275, !3531, !DIExpression(), !3457)
  %xor278 = call i64 @llvm.fshl.i64(i64 %xor275, i64 %xor275, i64 44), !dbg !3839
    #dbg_value(i64 %xor278, !3516, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor81, i64 %xor257), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3840
    #dbg_value(i64 %xor274, !3525, !DIExpression(), !3457)
    #dbg_value(i64 %xor274, !3515, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %xor274), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not305 = xor i64 %xor274, -1, !dbg !3841
    #dbg_value(!DIArgList(i64 %xor290, i64 %xor278, i64 %not305), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and306 = and i64 %xor278, %not305, !dbg !3842
    #dbg_value(!DIArgList(i64 %xor290, i64 %and306), !3467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor307 = xor i64 %xor290, %and306, !dbg !3843
    #dbg_value(i64 %xor307, !3467, !DIExpression(), !3457)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3844
    #dbg_value(i64 %xor283, !3543, !DIExpression(), !3457)
  %xor286 = call i64 @llvm.fshl.i64(i64 %xor283, i64 %xor283, i64 21), !dbg !3845
    #dbg_value(i64 %xor286, !3518, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %xor290), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not302 = xor i64 %xor290, -1, !dbg !3846
    #dbg_value(!DIArgList(i64 %xor286, i64 %xor274, i64 %not302), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and303 = and i64 %xor274, %not302, !dbg !3847
    #dbg_value(!DIArgList(i64 %xor286, i64 %and303), !3465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor304 = xor i64 %xor286, %and303, !dbg !3848
    #dbg_value(i64 %xor304, !3465, !DIExpression(), !3457)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3849
    #dbg_value(i64 %xor279, !3537, !DIExpression(), !3457)
  %xor282 = call i64 @llvm.fshl.i64(i64 %xor279, i64 %xor279, i64 43), !dbg !3850
    #dbg_value(i64 %xor282, !3517, !DIExpression(), !3457)
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %xor286), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %xor282), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
    #dbg_value(!DIArgList(i64 %xor274, i64 %xor282, i64 %xor278), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %not299 = xor i64 %xor286, -1, !dbg !3851
    #dbg_value(!DIArgList(i64 %xor282, i64 %xor290, i64 %not299), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and300 = and i64 %xor290, %not299, !dbg !3852
    #dbg_value(!DIArgList(i64 %xor282, i64 %and300), !3463, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor301 = xor i64 %xor282, %and300, !dbg !3853
    #dbg_value(i64 %xor301, !3463, !DIExpression(), !3457)
  %not296 = xor i64 %xor282, -1, !dbg !3854
    #dbg_value(!DIArgList(i64 %xor278, i64 %xor286, i64 %not296), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3457)
  %and297 = and i64 %xor286, %not296, !dbg !3855
    #dbg_value(!DIArgList(i64 %xor278, i64 %and297), !3461, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %xor298 = xor i64 %xor278, %and297, !dbg !3856
    #dbg_value(i64 %xor298, !3461, !DIExpression(), !3457)
  %add = or disjoint i32 %round.0, 1, !dbg !3857
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3858
  %27 = load i64, ptr %arrayidx294, align 8, !dbg !3858
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %xor278), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %not291 = xor i64 %xor278, -1, !dbg !3859
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %xor282, i64 %not291), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %and292 = and i64 %xor282, %not291, !dbg !3860
    #dbg_value(!DIArgList(i64 %xor274, i64 %27, i64 %and292), !3459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3457)
  %28 = xor i64 %and292, %27, !dbg !3861
  %xor295 = xor i64 %28, %xor274, !dbg !3861
    #dbg_value(i64 %xor295, !3459, !DIExpression(), !3457)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3862
    #dbg_value(i32 %add448, !3508, !DIExpression(), !3457)
  br label %for.cond, !dbg !3863, !llvm.loop !3864

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3457
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3457
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3457
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3457
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3457
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3457
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3457
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3457
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3457
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3457
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3457
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3457
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3457
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3457
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3457
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3457
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3457
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3457
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3457
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3457
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3457
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3457
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3457
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3457
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3457
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3866
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3867
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3868
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3869
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3870
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3871
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3872
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3873
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3874
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3875
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3876
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3877
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3878
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3879
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3880
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3881
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3882
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3883
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3884
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3885
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3886
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3887
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3888
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3889
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3890
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3891
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3892
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3893
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3894
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3895
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3896
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3897
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3898
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3899
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3900
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3901
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3902
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3903
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3904
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3905
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3906
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3907
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3908
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3909
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3910
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3911
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3912
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3913
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3914
  ret void, !dbg !3915
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3916 {
entry:
    #dbg_value(ptr %state, !3917, !DIExpression(), !3918)
  %0 = load ptr, ptr %state, align 4, !dbg !3919
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #7, !dbg !3920
  ret void, !dbg !3921
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3922 {
entry:
    #dbg_value(ptr %s_inc, !3925, !DIExpression(), !3926)
    #dbg_value(i32 %r, !3927, !DIExpression(), !3926)
    #dbg_value(i8 %p, !3928, !DIExpression(), !3926)
  %conv = zext nneg i8 %p to i64, !dbg !3929
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3930
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3930
  %and = shl i64 %0, 3, !dbg !3931
  %mul = and i64 %and, 56, !dbg !3931
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3932
  %shr = lshr i64 %0, 3, !dbg !3933
  %idxprom = trunc i64 %shr to i32, !dbg !3934
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3934
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !3935
  %xor = xor i64 %1, %shl, !dbg !3935
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !3935
  %sub = shl nuw nsw i32 %r, 3, !dbg !3936
  %and3 = add nuw nsw i32 %sub, 56, !dbg !3936
  %mul4 = and i32 %and3, 56, !dbg !3936
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !3937
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !3937
  %sub6 = add nsw i32 %r, -1, !dbg !3938
  %shr7 = lshr i32 %sub6, 3, !dbg !3939
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !3940
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !3941
  %xor9 = xor i64 %2, %shl5, !dbg !3941
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !3941
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3942
  store i64 0, ptr %arrayidx10, align 8, !dbg !3943
  ret void, !dbg !3944
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3945 {
entry:
    #dbg_value(ptr %output, !3948, !DIExpression(), !3949)
    #dbg_value(i32 %outlen, !3950, !DIExpression(), !3949)
    #dbg_value(ptr %state, !3951, !DIExpression(), !3949)
  %0 = load ptr, ptr %state, align 4, !dbg !3952
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #7, !dbg !3953
  ret void, !dbg !3954
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3955 {
entry:
    #dbg_value(ptr %h, !3958, !DIExpression(), !3959)
    #dbg_value(i32 %outlen, !3960, !DIExpression(), !3959)
    #dbg_value(ptr %s_inc, !3961, !DIExpression(), !3959)
    #dbg_value(i32 %r, !3962, !DIExpression(), !3959)
    #dbg_value(i32 0, !3963, !DIExpression(), !3959)
  br label %for.cond, !dbg !3964

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3966
    #dbg_value(i32 %i.0, !3963, !DIExpression(), !3959)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !3967
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !3969

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !3970
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3971
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3971
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !3972
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3973

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !3974
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3976
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !3976
  %sub = sub i64 %conv3, %1, !dbg !3977
  %conv5 = zext i32 %i.0 to i64, !dbg !3978
  %add = add i64 %sub, %conv5, !dbg !3979
  %shr = lshr i64 %add, 3, !dbg !3980
  %idxprom = trunc i64 %shr to i32, !dbg !3981
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3981
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !3981
  %conv7 = zext nneg i32 %r to i64, !dbg !3982
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3983
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3983
  %sub9 = sub i64 %conv7, %3, !dbg !3984
  %conv10 = zext i32 %i.0 to i64, !dbg !3985
  %add11 = add i64 %sub9, %conv10, !dbg !3986
  %and = shl i64 %add11, 3, !dbg !3987
  %mul = and i64 %and, 56, !dbg !3987
  %shr12 = lshr i64 %2, %mul, !dbg !3988
  %conv13 = trunc i64 %shr12 to i8, !dbg !3989
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !3990
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !3991
  %inc = add i32 %i.0, 1, !dbg !3992
    #dbg_value(i32 %inc, !3963, !DIExpression(), !3959)
  br label %for.cond, !dbg !3993, !llvm.loop !3994

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !3966
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !3996
    #dbg_value(ptr %add.ptr, !3958, !DIExpression(), !3959)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !3997
    #dbg_value(i32 %sub15, !3960, !DIExpression(), !3959)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !3998
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3999
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4000
  %sub18 = sub i64 %4, %conv16, !dbg !4000
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4000
  br label %while.cond, !dbg !4001

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !3959
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !3959
    #dbg_value(ptr %h.addr.0, !3958, !DIExpression(), !3959)
    #dbg_value(i32 %outlen.addr.0, !3960, !DIExpression(), !3959)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4002
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4001

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #7, !dbg !4003
    #dbg_value(i32 0, !3963, !DIExpression(), !3959)
  %umin = call i32 @llvm.umin.i32(i32 %outlen.addr.0, i32 %r), !dbg !4005
  br label %for.cond21, !dbg !4005

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4007
    #dbg_value(i32 %i.1, !3963, !DIExpression(), !3959)
  %exitcond1 = icmp ne i32 %i.1, %umin, !dbg !4008
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4010

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4011
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4013
  %5 = load i64, ptr %arrayidx30, align 8, !dbg !4013
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4014
  %mul32 = and i32 %and31, 56, !dbg !4014
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4015
  %shr33 = lshr i64 %5, %sh_prom, !dbg !4015
  %conv34 = trunc i64 %shr33 to i8, !dbg !4016
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4017
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4018
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4019
    #dbg_value(i32 %inc37, !3963, !DIExpression(), !3959)
  br label %for.cond21, !dbg !4020, !llvm.loop !4021

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4007
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4023
    #dbg_value(ptr %add.ptr39, !3958, !DIExpression(), !3959)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4024
    #dbg_value(i32 %sub40, !3960, !DIExpression(), !3959)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4025
  %conv42 = zext i32 %sub41 to i64, !dbg !4026
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4027
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4028
  br label %while.cond, !dbg !4001, !llvm.loop !4029

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4031
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4032 {
entry:
    #dbg_value(ptr %dest, !4037, !DIExpression(), !4038)
    #dbg_value(ptr %src, !4039, !DIExpression(), !4038)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4040
  store ptr %call, ptr %dest, align 4, !dbg !4041
  %cmp = icmp eq ptr %call, null, !dbg !4042
  br i1 %cmp, label %if.then, label %if.end, !dbg !4042

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4044
  br label %if.end, !dbg !4046

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4047
  %1 = load ptr, ptr %src, align 4, !dbg !4048
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4049
  ret void, !dbg !4050
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4051 {
entry:
    #dbg_value(ptr %state, !4052, !DIExpression(), !4053)
  %0 = load ptr, ptr %state, align 4, !dbg !4054
  call void @free(ptr noundef %0) #9, !dbg !4055
  ret void, !dbg !4056
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4057 {
entry:
    #dbg_value(ptr %state, !4065, !DIExpression(), !4066)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4067
  store ptr %call, ptr %state, align 4, !dbg !4068
  %cmp = icmp eq ptr %call, null, !dbg !4069
  br i1 %cmp, label %if.then, label %if.end, !dbg !4069

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4071
  br label %if.end, !dbg !4073

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4074
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4075
  ret void, !dbg !4076
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4077 {
entry:
    #dbg_value(ptr %state, !4080, !DIExpression(), !4081)
    #dbg_value(ptr %input, !4082, !DIExpression(), !4081)
    #dbg_value(i32 %inlen, !4083, !DIExpression(), !4081)
  %0 = load ptr, ptr %state, align 4, !dbg !4084
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4085
  ret void, !dbg !4086
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4087 {
entry:
    #dbg_value(ptr %state, !4088, !DIExpression(), !4089)
  %0 = load ptr, ptr %state, align 4, !dbg !4090
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #7, !dbg !4091
  ret void, !dbg !4092
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4093 {
entry:
    #dbg_value(ptr %output, !4096, !DIExpression(), !4097)
    #dbg_value(i32 %outlen, !4098, !DIExpression(), !4097)
    #dbg_value(ptr %state, !4099, !DIExpression(), !4097)
  %0 = load ptr, ptr %state, align 4, !dbg !4100
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #7, !dbg !4101
  ret void, !dbg !4102
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4103 {
entry:
    #dbg_value(ptr %dest, !4108, !DIExpression(), !4109)
    #dbg_value(ptr %src, !4110, !DIExpression(), !4109)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4111
  store ptr %call, ptr %dest, align 4, !dbg !4112
  %cmp = icmp eq ptr %call, null, !dbg !4113
  br i1 %cmp, label %if.then, label %if.end, !dbg !4113

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4115
  br label %if.end, !dbg !4117

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4118
  %1 = load ptr, ptr %src, align 4, !dbg !4119
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4120
  ret void, !dbg !4121
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4122 {
entry:
    #dbg_value(ptr %state, !4123, !DIExpression(), !4124)
  %0 = load ptr, ptr %state, align 4, !dbg !4125
  call void @free(ptr noundef %0) #9, !dbg !4126
  ret void, !dbg !4127
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4128 {
entry:
    #dbg_value(ptr %state, !4136, !DIExpression(), !4137)
    #dbg_value(ptr %input, !4138, !DIExpression(), !4137)
    #dbg_value(i32 %inlen, !4139, !DIExpression(), !4137)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4140
  store ptr %call, ptr %state, align 4, !dbg !4141
  %cmp = icmp eq ptr %call, null, !dbg !4142
  br i1 %cmp, label %if.then, label %if.end, !dbg !4142

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4144
  br label %if.end, !dbg !4146

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4147
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4148
  ret void, !dbg !4149
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4150 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4153, !DIExpression(), !4154)
    #dbg_value(i32 %r, !4155, !DIExpression(), !4154)
    #dbg_value(ptr %m, !4156, !DIExpression(), !4154)
    #dbg_value(i32 %mlen, !4157, !DIExpression(), !4154)
    #dbg_value(i8 %p, !4158, !DIExpression(), !4154)
    #dbg_declare(ptr %t, !4159, !DIExpression(), !4163)
    #dbg_value(i32 0, !4164, !DIExpression(), !4154)
  br label %for.cond, !dbg !4165

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4167
    #dbg_value(i32 %i.0, !4164, !DIExpression(), !4154)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4168
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4170

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4171
  br label %while.cond, !dbg !4171

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4172
  store i64 0, ptr %arrayidx, align 8, !dbg !4174
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4175
    #dbg_value(i32 %inc, !4164, !DIExpression(), !4154)
  br label %for.cond, !dbg !4176, !llvm.loop !4177

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4157, !DIExpression(), !4154)
    #dbg_value(ptr %m.addr.0, !4156, !DIExpression(), !4154)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4179
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4171

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4180

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4183

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4185
    #dbg_value(i32 %i.1, !4164, !DIExpression(), !4154)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4186
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4180

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4188
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4190
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #7, !dbg !4191
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4192
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4193
  %xor = xor i64 %1, %call, !dbg !4193
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4193
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4194
    #dbg_value(i32 %inc7, !4164, !DIExpression(), !4154)
  br label %for.cond2, !dbg !4195, !llvm.loop !4196

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4198
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4199
    #dbg_value(i32 %sub, !4157, !DIExpression(), !4154)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4200
    #dbg_value(ptr %add.ptr9, !4156, !DIExpression(), !4154)
  br label %while.cond, !dbg !4171, !llvm.loop !4201

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4203
    #dbg_value(i32 %i.2, !4164, !DIExpression(), !4154)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4204
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4183

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4206

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4208
  store i8 0, ptr %arrayidx13, align 1, !dbg !4210
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4211
    #dbg_value(i32 %inc15, !4164, !DIExpression(), !4154)
  br label %for.cond10, !dbg !4212, !llvm.loop !4213

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4215
    #dbg_value(i32 %i.3, !4164, !DIExpression(), !4154)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4216
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4206

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4218
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4218
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4220
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4221
  %inc23 = add i32 %i.3, 1, !dbg !4222
    #dbg_value(i32 %inc23, !4164, !DIExpression(), !4154)
  br label %for.cond17, !dbg !4223, !llvm.loop !4224

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4215
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4226
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4227
  %sub26 = add nsw i32 %r, -1, !dbg !4228
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4229
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4230
  %4 = or i8 %3, -128, !dbg !4230
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4230
    #dbg_value(i32 0, !4164, !DIExpression(), !4154)
  br label %for.cond29, !dbg !4231

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4233
    #dbg_value(i32 %i.4, !4164, !DIExpression(), !4154)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4234
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4236

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4237
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4239
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #7, !dbg !4240
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4241
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4242
  %xor38 = xor i64 %5, %call36, !dbg !4242
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4242
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4243
    #dbg_value(i32 %inc40, !4164, !DIExpression(), !4154)
  br label %for.cond29, !dbg !4244, !llvm.loop !4245

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4247
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4248 {
entry:
    #dbg_value(ptr %x, !4251, !DIExpression(), !4252)
    #dbg_value(i64 0, !4253, !DIExpression(), !4252)
    #dbg_value(i32 0, !4254, !DIExpression(), !4256)
  br label %for.cond, !dbg !4257

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4252
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4258
    #dbg_value(i32 %i.0, !4254, !DIExpression(), !4256)
    #dbg_value(i64 %r.0, !4253, !DIExpression(), !4252)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4259
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4261

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4252)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4262
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4262
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4252)
  %conv = zext i8 %0 to i64, !dbg !4264
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4252)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4265
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4252)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4266
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4252)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4266
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4252)
  %or = or i64 %r.0, %shl, !dbg !4267
    #dbg_value(i64 %or, !4253, !DIExpression(), !4252)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4268
    #dbg_value(i32 %inc, !4254, !DIExpression(), !4256)
  br label %for.cond, !dbg !4269, !llvm.loop !4270

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4252
  ret i64 %r.0.lcssa, !dbg !4272
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4273 {
entry:
    #dbg_value(ptr %output, !4276, !DIExpression(), !4277)
    #dbg_value(i32 %nblocks, !4278, !DIExpression(), !4277)
    #dbg_value(ptr %state, !4279, !DIExpression(), !4277)
  %0 = load ptr, ptr %state, align 4, !dbg !4280
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #7, !dbg !4281
  ret void, !dbg !4282
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4283 {
entry:
    #dbg_value(ptr %h, !4284, !DIExpression(), !4285)
    #dbg_value(i32 %nblocks, !4286, !DIExpression(), !4285)
    #dbg_value(ptr %s, !4287, !DIExpression(), !4285)
    #dbg_value(i32 %r, !4288, !DIExpression(), !4285)
  %0 = lshr i32 %r, 3, !dbg !4289
  br label %while.cond, !dbg !4289

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4284, !DIExpression(), !4285)
    #dbg_value(i32 %nblocks.addr.0, !4286, !DIExpression(), !4285)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4290
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4289

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #7, !dbg !4291
    #dbg_value(i32 0, !4293, !DIExpression(), !4295)
  br label %for.cond, !dbg !4296

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4297
    #dbg_value(i32 %i.0, !4293, !DIExpression(), !4295)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4298
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4300

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4301
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4303
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4304
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4304
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #7, !dbg !4305
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4306
    #dbg_value(i32 %inc, !4293, !DIExpression(), !4295)
  br label %for.cond, !dbg !4307, !llvm.loop !4308

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4310
    #dbg_value(ptr %add.ptr2, !4284, !DIExpression(), !4285)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4311
    #dbg_value(i32 %dec, !4286, !DIExpression(), !4285)
  br label %while.cond, !dbg !4289, !llvm.loop !4312

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4314
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4315 {
entry:
    #dbg_value(ptr %x, !4318, !DIExpression(), !4319)
    #dbg_value(i64 %u, !4320, !DIExpression(), !4319)
    #dbg_value(i32 0, !4321, !DIExpression(), !4323)
  br label %for.cond, !dbg !4324

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4325
    #dbg_value(i32 %i.0, !4321, !DIExpression(), !4323)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4326
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4328

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4329
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4331
  %shr = lshr i64 %u, %sh_prom, !dbg !4331
  %conv = trunc i64 %shr to i8, !dbg !4332
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4333
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4334
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4335
    #dbg_value(i32 %inc, !4321, !DIExpression(), !4323)
  br label %for.cond, !dbg !4336, !llvm.loop !4337

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4339
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4340 {
entry:
    #dbg_value(ptr %dest, !4345, !DIExpression(), !4346)
    #dbg_value(ptr %src, !4347, !DIExpression(), !4346)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4348
  store ptr %call, ptr %dest, align 4, !dbg !4349
  %cmp = icmp eq ptr %call, null, !dbg !4350
  br i1 %cmp, label %if.then, label %if.end, !dbg !4350

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4352
  br label %if.end, !dbg !4354

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4355
  %1 = load ptr, ptr %src, align 4, !dbg !4356
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4357
  ret void, !dbg !4358
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4359 {
entry:
    #dbg_value(ptr %state, !4362, !DIExpression(), !4363)
  %0 = load ptr, ptr %state, align 4, !dbg !4364
  call void @free(ptr noundef %0) #9, !dbg !4365
  ret void, !dbg !4366
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4367 {
entry:
    #dbg_value(ptr %state, !4375, !DIExpression(), !4376)
    #dbg_value(ptr %input, !4377, !DIExpression(), !4376)
    #dbg_value(i32 %inlen, !4378, !DIExpression(), !4376)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4379
  store ptr %call, ptr %state, align 4, !dbg !4380
  %cmp = icmp eq ptr %call, null, !dbg !4381
  br i1 %cmp, label %if.then, label %if.end, !dbg !4381

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4383
  br label %if.end, !dbg !4385

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4386
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #7, !dbg !4387
  ret void, !dbg !4388
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4389 {
entry:
    #dbg_value(ptr %output, !4392, !DIExpression(), !4393)
    #dbg_value(i32 %nblocks, !4394, !DIExpression(), !4393)
    #dbg_value(ptr %state, !4395, !DIExpression(), !4393)
  %0 = load ptr, ptr %state, align 4, !dbg !4396
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #7, !dbg !4397
  ret void, !dbg !4398
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4399 {
entry:
    #dbg_value(ptr %dest, !4404, !DIExpression(), !4405)
    #dbg_value(ptr %src, !4406, !DIExpression(), !4405)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #10, !dbg !4407
  store ptr %call, ptr %dest, align 4, !dbg !4408
  %cmp = icmp eq ptr %call, null, !dbg !4409
  br i1 %cmp, label %if.then, label %if.end, !dbg !4409

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4411
  br label %if.end, !dbg !4413

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4414
  %1 = load ptr, ptr %src, align 4, !dbg !4415
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #9, !dbg !4416
  ret void, !dbg !4417
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4418 {
entry:
    #dbg_value(ptr %state, !4421, !DIExpression(), !4422)
  %0 = load ptr, ptr %state, align 4, !dbg !4423
  call void @free(ptr noundef %0) #9, !dbg !4424
  ret void, !dbg !4425
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4426 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4429, !DIExpression(), !4430)
    #dbg_value(i32 %outlen, !4431, !DIExpression(), !4430)
    #dbg_value(ptr %input, !4432, !DIExpression(), !4430)
    #dbg_value(i32 %inlen, !4433, !DIExpression(), !4430)
  %div = udiv i32 %outlen, 168, !dbg !4434
    #dbg_value(i32 %div, !4435, !DIExpression(), !4430)
    #dbg_declare(ptr %t, !4436, !DIExpression(), !4440)
    #dbg_declare(ptr %s, !4441, !DIExpression(), !4442)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4443
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4444
  %mul = mul nuw i32 %div, 168, !dbg !4445
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4446
    #dbg_value(ptr %add.ptr, !4429, !DIExpression(), !4430)
  %mul1.neg = mul i32 %div, -168, !dbg !4447
  %sub = add i32 %mul1.neg, %outlen, !dbg !4448
    #dbg_value(i32 %sub, !4431, !DIExpression(), !4430)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4449
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4449

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4451
    #dbg_value(i32 0, !4453, !DIExpression(), !4455)
  br label %for.cond, !dbg !4456

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4457
    #dbg_value(i32 %i.0, !4453, !DIExpression(), !4455)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4458
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4460

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4461
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4461
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4463
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4464
  %inc = add i32 %i.0, 1, !dbg !4465
    #dbg_value(i32 %inc, !4453, !DIExpression(), !4455)
  br label %for.cond, !dbg !4466, !llvm.loop !4467

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4469

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #7, !dbg !4469
  ret void, !dbg !4470
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4471 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4472, !DIExpression(), !4473)
    #dbg_value(i32 %outlen, !4474, !DIExpression(), !4473)
    #dbg_value(ptr %input, !4475, !DIExpression(), !4473)
    #dbg_value(i32 %inlen, !4476, !DIExpression(), !4473)
  %div = udiv i32 %outlen, 136, !dbg !4477
    #dbg_value(i32 %div, !4478, !DIExpression(), !4473)
    #dbg_declare(ptr %t, !4479, !DIExpression(), !4483)
    #dbg_declare(ptr %s, !4484, !DIExpression(), !4485)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4486
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #7, !dbg !4487
  %mul = mul nuw i32 %div, 136, !dbg !4488
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4489
    #dbg_value(ptr %add.ptr, !4472, !DIExpression(), !4473)
  %mul1.neg = mul i32 %div, -136, !dbg !4490
  %sub = add i32 %mul1.neg, %outlen, !dbg !4491
    #dbg_value(i32 %sub, !4474, !DIExpression(), !4473)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4492
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4492

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #7, !dbg !4494
    #dbg_value(i32 0, !4496, !DIExpression(), !4498)
  br label %for.cond, !dbg !4499

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4500
    #dbg_value(i32 %i.0, !4496, !DIExpression(), !4498)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4501
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4503

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4504
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4504
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4506
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4507
  %inc = add i32 %i.0, 1, !dbg !4508
    #dbg_value(i32 %inc, !4496, !DIExpression(), !4498)
  br label %for.cond, !dbg !4509, !llvm.loop !4510

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4512

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #7, !dbg !4512
  ret void, !dbg !4513
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4514 {
entry:
    #dbg_value(ptr %state, !4522, !DIExpression(), !4523)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4524
  store ptr %call, ptr %state, align 4, !dbg !4525
  %cmp = icmp eq ptr %call, null, !dbg !4526
  br i1 %cmp, label %if.then, label %if.end, !dbg !4526

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4528
  br label %if.end, !dbg !4530

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4531
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4532
  ret void, !dbg !4533
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4534 {
entry:
    #dbg_value(ptr %dest, !4539, !DIExpression(), !4540)
    #dbg_value(ptr %src, !4541, !DIExpression(), !4540)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4542
  store ptr %call, ptr %dest, align 4, !dbg !4543
  %cmp = icmp eq ptr %call, null, !dbg !4544
  br i1 %cmp, label %if.then, label %if.end, !dbg !4544

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4546
  br label %if.end, !dbg !4548

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4549
  %1 = load ptr, ptr %src, align 4, !dbg !4550
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4551
  ret void, !dbg !4552
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4553 {
entry:
    #dbg_value(ptr %state, !4554, !DIExpression(), !4555)
  %0 = load ptr, ptr %state, align 4, !dbg !4556
  call void @free(ptr noundef %0) #9, !dbg !4557
  ret void, !dbg !4558
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4559 {
entry:
    #dbg_value(ptr %state, !4562, !DIExpression(), !4563)
    #dbg_value(ptr %input, !4564, !DIExpression(), !4563)
    #dbg_value(i32 %inlen, !4565, !DIExpression(), !4563)
  %0 = load ptr, ptr %state, align 4, !dbg !4566
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4567
  ret void, !dbg !4568
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4569 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4572, !DIExpression(), !4573)
    #dbg_value(ptr %state, !4574, !DIExpression(), !4573)
    #dbg_declare(ptr %t, !4575, !DIExpression(), !4576)
  %0 = load ptr, ptr %state, align 4, !dbg !4577
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #7, !dbg !4578
  %1 = load ptr, ptr %state, align 4, !dbg !4579
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #7, !dbg !4580
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4581
    #dbg_value(i32 0, !4582, !DIExpression(), !4584)
  br label %for.cond, !dbg !4585

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4586
    #dbg_value(i32 %i.0, !4582, !DIExpression(), !4584)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4587
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4589

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4590
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4590
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4592
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4593
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4594
    #dbg_value(i32 %inc, !4582, !DIExpression(), !4584)
  br label %for.cond, !dbg !4595, !llvm.loop !4596

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4598
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4599 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4602, !DIExpression(), !4603)
    #dbg_value(ptr %input, !4604, !DIExpression(), !4603)
    #dbg_value(i32 %inlen, !4605, !DIExpression(), !4603)
    #dbg_declare(ptr %s, !4606, !DIExpression(), !4610)
    #dbg_declare(ptr %t, !4611, !DIExpression(), !4612)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4613
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #7, !dbg !4614
    #dbg_value(i32 0, !4615, !DIExpression(), !4617)
  br label %for.cond, !dbg !4618

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4619
    #dbg_value(i32 %i.0, !4615, !DIExpression(), !4617)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4620
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4622

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4623
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4623
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4625
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4626
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4627
    #dbg_value(i32 %inc, !4615, !DIExpression(), !4617)
  br label %for.cond, !dbg !4628, !llvm.loop !4629

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4631
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4632 {
entry:
    #dbg_value(ptr %state, !4640, !DIExpression(), !4641)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4642
  store ptr %call, ptr %state, align 4, !dbg !4643
  %cmp = icmp eq ptr %call, null, !dbg !4644
  br i1 %cmp, label %if.then, label %if.end, !dbg !4644

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4646
  br label %if.end, !dbg !4648

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4649
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4650
  ret void, !dbg !4651
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4652 {
entry:
    #dbg_value(ptr %dest, !4657, !DIExpression(), !4658)
    #dbg_value(ptr %src, !4659, !DIExpression(), !4658)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4660
  store ptr %call, ptr %dest, align 4, !dbg !4661
  %cmp = icmp eq ptr %call, null, !dbg !4662
  br i1 %cmp, label %if.then, label %if.end, !dbg !4662

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4664
  br label %if.end, !dbg !4666

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4667
  %1 = load ptr, ptr %src, align 4, !dbg !4668
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4669
  ret void, !dbg !4670
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4671 {
entry:
    #dbg_value(ptr %state, !4674, !DIExpression(), !4675)
    #dbg_value(ptr %input, !4676, !DIExpression(), !4675)
    #dbg_value(i32 %inlen, !4677, !DIExpression(), !4675)
  %0 = load ptr, ptr %state, align 4, !dbg !4678
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4679
  ret void, !dbg !4680
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4681 {
entry:
    #dbg_value(ptr %state, !4682, !DIExpression(), !4683)
  %0 = load ptr, ptr %state, align 4, !dbg !4684
  call void @free(ptr noundef %0) #9, !dbg !4685
  ret void, !dbg !4686
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4687 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4690, !DIExpression(), !4691)
    #dbg_value(ptr %state, !4692, !DIExpression(), !4691)
    #dbg_declare(ptr %t, !4693, !DIExpression(), !4697)
  %0 = load ptr, ptr %state, align 4, !dbg !4698
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #7, !dbg !4699
  %1 = load ptr, ptr %state, align 4, !dbg !4700
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #7, !dbg !4701
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4702
    #dbg_value(i32 0, !4703, !DIExpression(), !4705)
  br label %for.cond, !dbg !4706

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4707
    #dbg_value(i32 %i.0, !4703, !DIExpression(), !4705)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4708
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4710

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4711
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4711
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4713
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4714
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4715
    #dbg_value(i32 %inc, !4703, !DIExpression(), !4705)
  br label %for.cond, !dbg !4716, !llvm.loop !4717

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4719
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4720 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4721, !DIExpression(), !4722)
    #dbg_value(ptr %input, !4723, !DIExpression(), !4722)
    #dbg_value(i32 %inlen, !4724, !DIExpression(), !4722)
    #dbg_declare(ptr %s, !4725, !DIExpression(), !4726)
    #dbg_declare(ptr %t, !4727, !DIExpression(), !4728)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4729
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #7, !dbg !4730
    #dbg_value(i32 0, !4731, !DIExpression(), !4733)
  br label %for.cond, !dbg !4734

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4735
    #dbg_value(i32 %i.0, !4731, !DIExpression(), !4733)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4736
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4738

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4739
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4739
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4741
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4742
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4743
    #dbg_value(i32 %inc, !4731, !DIExpression(), !4733)
  br label %for.cond, !dbg !4744, !llvm.loop !4745

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4747
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4748 {
entry:
    #dbg_value(ptr %state, !4756, !DIExpression(), !4757)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4758
  store ptr %call, ptr %state, align 4, !dbg !4759
  %cmp = icmp eq ptr %call, null, !dbg !4760
  br i1 %cmp, label %if.then, label %if.end, !dbg !4760

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4762
  br label %if.end, !dbg !4764

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4765
  call fastcc void @keccak_inc_init(ptr noundef %0) #7, !dbg !4766
  ret void, !dbg !4767
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4768 {
entry:
    #dbg_value(ptr %dest, !4773, !DIExpression(), !4774)
    #dbg_value(ptr %src, !4775, !DIExpression(), !4774)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #10, !dbg !4776
  store ptr %call, ptr %dest, align 4, !dbg !4777
  %cmp = icmp eq ptr %call, null, !dbg !4778
  br i1 %cmp, label %if.then, label %if.end, !dbg !4778

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4780
  br label %if.end, !dbg !4782

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4783
  %1 = load ptr, ptr %src, align 4, !dbg !4784
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #9, !dbg !4785
  ret void, !dbg !4786
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4787 {
entry:
    #dbg_value(ptr %state, !4790, !DIExpression(), !4791)
    #dbg_value(ptr %input, !4792, !DIExpression(), !4791)
    #dbg_value(i32 %inlen, !4793, !DIExpression(), !4791)
  %0 = load ptr, ptr %state, align 4, !dbg !4794
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #7, !dbg !4795
  ret void, !dbg !4796
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4797 {
entry:
    #dbg_value(ptr %state, !4798, !DIExpression(), !4799)
  %0 = load ptr, ptr %state, align 4, !dbg !4800
  call void @free(ptr noundef %0) #9, !dbg !4801
  ret void, !dbg !4802
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4803 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4806, !DIExpression(), !4807)
    #dbg_value(ptr %state, !4808, !DIExpression(), !4807)
    #dbg_declare(ptr %t, !4809, !DIExpression(), !4813)
  %0 = load ptr, ptr %state, align 4, !dbg !4814
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #7, !dbg !4815
  %1 = load ptr, ptr %state, align 4, !dbg !4816
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #7, !dbg !4817
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #7, !dbg !4818
    #dbg_value(i32 0, !4819, !DIExpression(), !4821)
  br label %for.cond, !dbg !4822

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4823
    #dbg_value(i32 %i.0, !4819, !DIExpression(), !4821)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4824
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4826

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4827
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4827
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4829
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4830
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4831
    #dbg_value(i32 %inc, !4819, !DIExpression(), !4821)
  br label %for.cond, !dbg !4832, !llvm.loop !4833

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4835
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4836 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4837, !DIExpression(), !4838)
    #dbg_value(ptr %input, !4839, !DIExpression(), !4838)
    #dbg_value(i32 %inlen, !4840, !DIExpression(), !4838)
    #dbg_declare(ptr %s, !4841, !DIExpression(), !4842)
    #dbg_declare(ptr %t, !4843, !DIExpression(), !4844)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #7, !dbg !4845
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #7, !dbg !4846
    #dbg_value(i32 0, !4847, !DIExpression(), !4849)
  br label %for.cond, !dbg !4850

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4851
    #dbg_value(i32 %i.0, !4847, !DIExpression(), !4849)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4852
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4854

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4855
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4855
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4857
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4858
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4859
    #dbg_value(i32 %inc, !4847, !DIExpression(), !4849)
  br label %for.cond, !dbg !4860, !llvm.loop !4861

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4863
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4864 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4872, !DIExpression(), !4873)
    #dbg_value(ptr %key, !4874, !DIExpression(), !4873)
    #dbg_declare(ptr %skey, !4875, !DIExpression(), !4879)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #10, !dbg !4880
  store ptr %call, ptr %r, align 4, !dbg !4881
  %cmp = icmp eq ptr %call, null, !dbg !4882
  br i1 %cmp, label %if.then, label %if.end, !dbg !4882

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !4884
  br label %if.end, !dbg !4886

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #7, !dbg !4887
  %0 = load ptr, ptr %r, align 4, !dbg !4888
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #7, !dbg !4889
  ret void, !dbg !4890
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4891 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4894, !DIExpression(), !4895)
    #dbg_value(ptr %key, !4896, !DIExpression(), !4895)
    #dbg_value(i32 %key_len, !4897, !DIExpression(), !4895)
    #dbg_declare(ptr %skey, !4898, !DIExpression(), !4902)
  %0 = and i32 %key_len, 60, !dbg !4903
    #dbg_value(i32 %key_len, !4904, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4895)
  %shr1 = lshr i32 %key_len, 2, !dbg !4905
    #dbg_value(i32 %shr1, !4906, !DIExpression(), !4895)
  %shl = add nuw nsw i32 %0, 28, !dbg !4903
    #dbg_value(i32 %shl, !4907, !DIExpression(), !4895)
  %shr3 = lshr i32 %key_len, 2, !dbg !4908
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #7, !dbg !4909
  %shr4 = lshr i32 %key_len, 2, !dbg !4910
  %sub5 = add nsw i32 %shr4, -1, !dbg !4911
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4912
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4912
    #dbg_value(i32 %1, !4913, !DIExpression(), !4895)
    #dbg_value(i32 %shr1, !4914, !DIExpression(), !4895)
    #dbg_value(i32 0, !4915, !DIExpression(), !4895)
    #dbg_value(i32 0, !4916, !DIExpression(), !4895)
  br label %for.cond, !dbg !4917

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4919
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4920
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4920
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4895
    #dbg_value(i32 %tmp.0, !4913, !DIExpression(), !4895)
    #dbg_value(i32 %k.0, !4916, !DIExpression(), !4895)
    #dbg_value(i32 %j.0, !4915, !DIExpression(), !4895)
    #dbg_value(i32 %i.0, !4914, !DIExpression(), !4895)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4921
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4923

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4924

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4926
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4926

if.then:                                          ; preds = %for.body
  %or = call i32 @llvm.fshl.i32(i32 %tmp.0, i32 %tmp.0, i32 24), !dbg !4929
    #dbg_value(i32 %or, !4913, !DIExpression(), !4895)
  %call = call fastcc i32 @sub_word(i32 noundef %or) #7, !dbg !4931
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4932
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !4932
  %conv = zext i8 %2 to i32, !dbg !4932
  %xor = xor i32 %call, %conv, !dbg !4933
    #dbg_value(i32 %xor, !4913, !DIExpression(), !4895)
  br label %if.end16, !dbg !4934

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4935
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !4937
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !4937

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #7, !dbg !4938
    #dbg_value(i32 %call15, !4913, !DIExpression(), !4895)
  br label %if.end16, !dbg !4940

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !4941
    #dbg_value(i32 %tmp.2, !4913, !DIExpression(), !4895)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !4942
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !4943
  %3 = load i32, ptr %arrayidx18, align 4, !dbg !4943
  %xor19 = xor i32 %tmp.2, %3, !dbg !4944
    #dbg_value(i32 %xor19, !4913, !DIExpression(), !4895)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !4945
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !4946
  %inc = add i32 %j.0, 1, !dbg !4947
    #dbg_value(i32 %inc, !4915, !DIExpression(), !4895)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !4949
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !4949
  %inc24 = zext i1 %cmp21 to i32, !dbg !4949
  %spec.select1 = add i32 %k.0, %inc24, !dbg !4949
    #dbg_value(i32 %spec.select1, !4916, !DIExpression(), !4895)
    #dbg_value(i32 %spec.select, !4915, !DIExpression(), !4895)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !4950
    #dbg_value(i32 %inc26, !4914, !DIExpression(), !4895)
  br label %for.cond, !dbg !4951, !llvm.loop !4952

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4954
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4954
    #dbg_value(i32 %j.2, !4915, !DIExpression(), !4895)
    #dbg_value(i32 %i.1, !4914, !DIExpression(), !4895)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !4955
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4924

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !4957, !DIExpression(), !4962)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4963
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !4964
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #7, !dbg !4965
  %4 = load i64, ptr %q, align 8, !dbg !4966
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4967
  store i64 %4, ptr %arrayidx35, align 8, !dbg !4968
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4969
  store i64 %4, ptr %arrayidx37, align 8, !dbg !4970
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4971
  store i64 %4, ptr %arrayidx39, align 8, !dbg !4972
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4973
  %5 = load i64, ptr %arrayidx40, align 8, !dbg !4973
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4974
  store i64 %5, ptr %arrayidx41, align 8, !dbg !4975
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !4976
  store i64 %5, ptr %arrayidx43, align 8, !dbg !4977
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !4978
  store i64 %5, ptr %arrayidx45, align 8, !dbg !4979
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !4980
  %6 = load i64, ptr %q, align 8, !dbg !4981
  %and = and i64 %6, 1229782938247303441, !dbg !4982
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4983
  %7 = load i64, ptr %arrayidx48, align 8, !dbg !4983
  %and49 = and i64 %7, 2459565876494606882, !dbg !4984
  %or50 = or disjoint i64 %and, %and49, !dbg !4985
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4986
  %8 = load i64, ptr %arrayidx51, align 8, !dbg !4986
  %and52 = and i64 %8, 4919131752989213764, !dbg !4987
  %or53 = or disjoint i64 %or50, %and52, !dbg !4988
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4989
  %9 = load i64, ptr %arrayidx54, align 8, !dbg !4989
  %and55 = and i64 %9, -8608480567731124088, !dbg !4990
  %or56 = or disjoint i64 %or53, %and55, !dbg !4991
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !4992
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !4993
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4994
  %10 = load i64, ptr %arrayidx59, align 8, !dbg !4994
  %and60 = and i64 %10, 1229782938247303441, !dbg !4995
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !4996
  %11 = load i64, ptr %arrayidx61, align 8, !dbg !4996
  %and62 = and i64 %11, 2459565876494606882, !dbg !4997
  %or63 = or disjoint i64 %and60, %and62, !dbg !4998
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !4999
  %12 = load i64, ptr %arrayidx64, align 8, !dbg !4999
  %and65 = and i64 %12, 4919131752989213764, !dbg !5000
  %or66 = or disjoint i64 %or63, %and65, !dbg !5001
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5002
  %13 = load i64, ptr %arrayidx67, align 8, !dbg !5002
  %and68 = and i64 %13, -8608480567731124088, !dbg !5003
  %or69 = or disjoint i64 %or66, %and68, !dbg !5004
  %add70 = or disjoint i32 %j.2, 1, !dbg !5005
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5006
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5007
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5008
    #dbg_value(i32 %add73, !4914, !DIExpression(), !4895)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5009
    #dbg_value(i32 %add74, !4915, !DIExpression(), !4895)
  br label %for.cond27, !dbg !5010, !llvm.loop !5011

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5013
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5014 {
entry:
    #dbg_value(ptr %skey, !5017, !DIExpression(), !5018)
    #dbg_value(ptr %comp_skey, !5019, !DIExpression(), !5018)
    #dbg_value(i32 %nrounds, !5020, !DIExpression(), !5018)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5021
  %shl = add nuw nsw i32 %add, 2, !dbg !5021
    #dbg_value(i32 %shl, !5022, !DIExpression(), !5018)
    #dbg_value(i32 0, !5023, !DIExpression(), !5018)
    #dbg_value(i32 0, !5024, !DIExpression(), !5018)
  br label %for.cond, !dbg !5025

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5027
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5027
    #dbg_value(i32 %v.0, !5024, !DIExpression(), !5018)
    #dbg_value(i32 %u.0, !5023, !DIExpression(), !5018)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5028
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5030

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5031
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5031
    #dbg_value(i64 %0, !5033, !DIExpression(), !5034)
    #dbg_value(i64 %0, !5035, !DIExpression(), !5034)
    #dbg_value(i64 %0, !5036, !DIExpression(), !5034)
    #dbg_value(i64 %0, !5037, !DIExpression(), !5034)
  %and = and i64 %0, 1229782938247303441, !dbg !5038
    #dbg_value(i64 %and, !5037, !DIExpression(), !5034)
    #dbg_value(i64 %0, !5036, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5034)
    #dbg_value(i64 %0, !5035, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5034)
    #dbg_value(i64 %0, !5033, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5034)
  %and1 = lshr i64 %0, 1, !dbg !5039
  %shr = and i64 %and1, 1229782938247303441, !dbg !5039
    #dbg_value(i64 %shr, !5036, !DIExpression(), !5034)
  %and2 = lshr i64 %0, 2, !dbg !5040
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5040
    #dbg_value(i64 %shr4, !5035, !DIExpression(), !5034)
  %and3 = lshr i64 %0, 3, !dbg !5041
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5041
    #dbg_value(i64 %shr5, !5033, !DIExpression(), !5034)
  %sub = mul nuw i64 %and, 15, !dbg !5042
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5043
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5044
  %sub10 = mul nuw i64 %shr, 15, !dbg !5045
  %add11 = or disjoint i32 %v.0, 1, !dbg !5046
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5047
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5048
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5049
  %add15 = or disjoint i32 %v.0, 2, !dbg !5050
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5051
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5052
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5053
  %add19 = or disjoint i32 %v.0, 3, !dbg !5054
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5055
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5056
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5057
    #dbg_value(i32 %inc, !5023, !DIExpression(), !5018)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5058
    #dbg_value(i32 %add21, !5024, !DIExpression(), !5018)
  br label %for.cond, !dbg !5059, !llvm.loop !5060

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5062
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5063 {
entry:
    #dbg_value(ptr %v, !5067, !DIExpression(), !5068)
    #dbg_value(i32 %num, !5069, !DIExpression(), !5068)
    #dbg_value(ptr %src, !5070, !DIExpression(), !5068)
  br label %while.cond, !dbg !5071

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5067, !DIExpression(), !5068)
    #dbg_value(i32 %num.addr.0, !5069, !DIExpression(), !5068)
    #dbg_value(ptr %src.addr.0, !5070, !DIExpression(), !5068)
    #dbg_value(i32 %num.addr.0, !5069, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5068)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5072
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5071

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5073
    #dbg_value(i32 %dec, !5069, !DIExpression(), !5068)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #7, !dbg !5074
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5076
    #dbg_value(ptr %incdec.ptr, !5067, !DIExpression(), !5068)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5077
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5078
    #dbg_value(ptr %add.ptr, !5070, !DIExpression(), !5068)
  br label %while.cond, !dbg !5071, !llvm.loop !5079

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5081
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5082 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5085, !DIExpression(), !5086)
    #dbg_declare(ptr %q, !5087, !DIExpression(), !5088)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #9, !dbg !5089
  %conv = zext i32 %x to i64, !dbg !5090
  store i64 %conv, ptr %q, align 8, !dbg !5091
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5092
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5093
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5094
  %0 = load i64, ptr %q, align 8, !dbg !5095
  %conv5 = trunc i64 %0 to i32, !dbg !5096
  ret i32 %conv5, !dbg !5097
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5098 {
entry:
    #dbg_value(ptr %q0, !5103, !DIExpression(), !5104)
    #dbg_value(ptr %q1, !5105, !DIExpression(), !5104)
    #dbg_value(ptr %w, !5106, !DIExpression(), !5104)
  %0 = load i32, ptr %w, align 4, !dbg !5107
  %conv = zext i32 %0 to i64, !dbg !5107
    #dbg_value(i64 %conv, !5108, !DIExpression(), !5104)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5109
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5109
  %conv2 = zext i32 %1 to i64, !dbg !5109
    #dbg_value(i64 %conv2, !5110, !DIExpression(), !5104)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5111
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5111
  %conv4 = zext i32 %2 to i64, !dbg !5111
    #dbg_value(i64 %conv4, !5112, !DIExpression(), !5104)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5113
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5113
  %conv6 = zext i32 %3 to i64, !dbg !5113
    #dbg_value(i64 %conv6, !5114, !DIExpression(), !5104)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5115
  %or = or i64 %shl, %conv, !dbg !5116
    #dbg_value(i64 %or, !5108, !DIExpression(), !5104)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5117
  %or8 = or i64 %shl7, %conv2, !dbg !5118
    #dbg_value(i64 %or8, !5110, !DIExpression(), !5104)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5119
  %or10 = or i64 %shl9, %conv4, !dbg !5120
    #dbg_value(i64 %or10, !5112, !DIExpression(), !5104)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5121
  %or12 = or i64 %shl11, %conv6, !dbg !5122
    #dbg_value(i64 %or12, !5114, !DIExpression(), !5104)
  %and = and i64 %or, 281470681808895, !dbg !5123
    #dbg_value(i64 %and, !5108, !DIExpression(), !5104)
  %and13 = and i64 %or8, 281470681808895, !dbg !5124
    #dbg_value(i64 %and13, !5110, !DIExpression(), !5104)
  %and14 = and i64 %or10, 281470681808895, !dbg !5125
    #dbg_value(i64 %and14, !5112, !DIExpression(), !5104)
  %and15 = and i64 %or12, 281470681808895, !dbg !5126
    #dbg_value(i64 %and15, !5114, !DIExpression(), !5104)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5127
  %or17 = or i64 %and, %shl16, !dbg !5128
    #dbg_value(i64 %or17, !5108, !DIExpression(), !5104)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5129
  %or19 = or i64 %and13, %shl18, !dbg !5130
    #dbg_value(i64 %or19, !5110, !DIExpression(), !5104)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5112, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5104)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5104)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5131
    #dbg_value(i64 %and24, !5108, !DIExpression(), !5104)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5132
    #dbg_value(i64 %and25, !5110, !DIExpression(), !5104)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5112, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5104)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5104)
  %4 = shl nuw i64 %and14, 16, !dbg !5133
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5133
  %and26 = or i64 %4, %5, !dbg !5133
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5133
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5134
  store i64 %or29, ptr %q0, align 8, !dbg !5135
  %6 = shl nuw i64 %and15, 16, !dbg !5136
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5136
  %and27 = or i64 %6, %7, !dbg !5136
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5136
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5137
  store i64 %or31, ptr %q1, align 8, !dbg !5138
  ret void, !dbg !5139
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5140 {
entry:
    #dbg_value(ptr %q, !5141, !DIExpression(), !5142)
  %0 = load i64, ptr %q, align 8, !dbg !5143
    #dbg_value(i64 %0, !5145, !DIExpression(), !5146)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5143
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5143
    #dbg_value(i64 %1, !5147, !DIExpression(), !5146)
  %and = and i64 %0, 6148914691236517205, !dbg !5143
  %and2 = shl i64 %1, 1, !dbg !5143
  %shl = and i64 %and2, -6148914691236517206, !dbg !5143
  %or = or disjoint i64 %and, %shl, !dbg !5143
  store i64 %or, ptr %q, align 8, !dbg !5143
  %and4 = lshr i64 %0, 1, !dbg !5143
  %shr = and i64 %and4, 6148914691236517205, !dbg !5143
  %and5 = and i64 %1, -6148914691236517206, !dbg !5143
  %or6 = or disjoint i64 %shr, %and5, !dbg !5143
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5143
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5143
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5148
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5148
    #dbg_value(i64 %2, !5150, !DIExpression(), !5151)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5148
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5148
    #dbg_value(i64 %3, !5152, !DIExpression(), !5151)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5148
  %and14 = shl i64 %3, 1, !dbg !5148
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5148
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5148
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5148
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5148
  %and18 = lshr i64 %2, 1, !dbg !5148
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5148
  %and20 = and i64 %3, -6148914691236517206, !dbg !5148
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5148
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5148
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5148
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5153
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5153
    #dbg_value(i64 %4, !5155, !DIExpression(), !5156)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5153
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5153
    #dbg_value(i64 %5, !5157, !DIExpression(), !5156)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5153
  %and30 = shl i64 %5, 1, !dbg !5153
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5153
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5153
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5153
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5153
  %and34 = lshr i64 %4, 1, !dbg !5153
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5153
  %and36 = and i64 %5, -6148914691236517206, !dbg !5153
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5153
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5153
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5153
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5158
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5158
    #dbg_value(i64 %6, !5160, !DIExpression(), !5161)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5158
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5158
    #dbg_value(i64 %7, !5162, !DIExpression(), !5161)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5158
  %and46 = shl i64 %7, 1, !dbg !5158
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5158
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5158
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5158
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5158
  %and50 = lshr i64 %6, 1, !dbg !5158
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5158
  %and52 = and i64 %7, -6148914691236517206, !dbg !5158
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5158
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5158
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5158
  %8 = load i64, ptr %q, align 8, !dbg !5163
    #dbg_value(i64 %8, !5165, !DIExpression(), !5166)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5163
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5163
    #dbg_value(i64 %9, !5167, !DIExpression(), !5166)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5163
  %and62 = shl i64 %9, 2, !dbg !5163
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5163
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5163
  store i64 %or64, ptr %q, align 8, !dbg !5163
  %and66 = lshr i64 %8, 2, !dbg !5163
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5163
  %and68 = and i64 %9, -3689348814741910324, !dbg !5163
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5163
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5163
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5163
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5168
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5168
    #dbg_value(i64 %10, !5170, !DIExpression(), !5171)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5168
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5168
    #dbg_value(i64 %11, !5172, !DIExpression(), !5171)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5168
  %and78 = shl i64 %11, 2, !dbg !5168
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5168
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5168
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5168
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5168
  %and82 = lshr i64 %10, 2, !dbg !5168
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5168
  %and84 = and i64 %11, -3689348814741910324, !dbg !5168
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5168
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5168
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5168
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5173
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5173
    #dbg_value(i64 %12, !5175, !DIExpression(), !5176)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5173
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5173
    #dbg_value(i64 %13, !5177, !DIExpression(), !5176)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5173
  %and94 = shl i64 %13, 2, !dbg !5173
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5173
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5173
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5173
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5173
  %and98 = lshr i64 %12, 2, !dbg !5173
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5173
  %and100 = and i64 %13, -3689348814741910324, !dbg !5173
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5173
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5173
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5173
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5178
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5178
    #dbg_value(i64 %14, !5180, !DIExpression(), !5181)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5178
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5178
    #dbg_value(i64 %15, !5182, !DIExpression(), !5181)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5178
  %and110 = shl i64 %15, 2, !dbg !5178
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5178
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5178
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5178
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5178
  %and114 = lshr i64 %14, 2, !dbg !5178
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5178
  %and116 = and i64 %15, -3689348814741910324, !dbg !5178
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5178
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5178
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5178
  %16 = load i64, ptr %q, align 8, !dbg !5183
    #dbg_value(i64 %16, !5185, !DIExpression(), !5186)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5183
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5183
    #dbg_value(i64 %17, !5187, !DIExpression(), !5186)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5183
  %and126 = shl i64 %17, 4, !dbg !5183
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5183
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5183
  store i64 %or128, ptr %q, align 8, !dbg !5183
  %and130 = lshr i64 %16, 4, !dbg !5183
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5183
  %and132 = and i64 %17, -1085102592571150096, !dbg !5183
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5183
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5183
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5183
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5188
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5188
    #dbg_value(i64 %18, !5190, !DIExpression(), !5191)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5188
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5188
    #dbg_value(i64 %19, !5192, !DIExpression(), !5191)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5188
  %and142 = shl i64 %19, 4, !dbg !5188
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5188
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5188
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5188
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5188
  %and146 = lshr i64 %18, 4, !dbg !5188
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5188
  %and148 = and i64 %19, -1085102592571150096, !dbg !5188
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5188
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5188
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5188
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5193
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5193
    #dbg_value(i64 %20, !5195, !DIExpression(), !5196)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5193
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5193
    #dbg_value(i64 %21, !5197, !DIExpression(), !5196)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5193
  %and158 = shl i64 %21, 4, !dbg !5193
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5193
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5193
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5193
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5193
  %and162 = lshr i64 %20, 4, !dbg !5193
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5193
  %and164 = and i64 %21, -1085102592571150096, !dbg !5193
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5193
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5193
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5193
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5198
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5198
    #dbg_value(i64 %22, !5200, !DIExpression(), !5201)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5198
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5198
    #dbg_value(i64 %23, !5202, !DIExpression(), !5201)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5198
  %and174 = shl i64 %23, 4, !dbg !5198
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5198
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5198
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5198
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5198
  %and178 = lshr i64 %22, 4, !dbg !5198
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5198
  %and180 = and i64 %23, -1085102592571150096, !dbg !5198
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5198
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5198
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5198
  ret void, !dbg !5203
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5204 {
entry:
    #dbg_value(ptr %q, !5205, !DIExpression(), !5206)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5207
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5207
    #dbg_value(i64 %0, !5208, !DIExpression(), !5206)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5209
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5209
    #dbg_value(i64 %1, !5210, !DIExpression(), !5206)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5211
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5211
    #dbg_value(i64 %2, !5212, !DIExpression(), !5206)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5213
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5213
    #dbg_value(i64 %3, !5214, !DIExpression(), !5206)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5215
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5215
    #dbg_value(i64 %4, !5216, !DIExpression(), !5206)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5217
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5217
    #dbg_value(i64 %5, !5218, !DIExpression(), !5206)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5219
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5219
    #dbg_value(i64 %6, !5220, !DIExpression(), !5206)
  %7 = load i64, ptr %q, align 8, !dbg !5221
    #dbg_value(i64 %7, !5222, !DIExpression(), !5206)
  %xor = xor i64 %3, %5, !dbg !5223
    #dbg_value(i64 %xor, !5224, !DIExpression(), !5206)
  %xor8 = xor i64 %0, %6, !dbg !5225
    #dbg_value(i64 %xor8, !5226, !DIExpression(), !5206)
  %xor9 = xor i64 %0, %3, !dbg !5227
    #dbg_value(i64 %xor9, !5228, !DIExpression(), !5206)
  %xor10 = xor i64 %0, %5, !dbg !5229
    #dbg_value(i64 %xor10, !5230, !DIExpression(), !5206)
  %xor11 = xor i64 %1, %2, !dbg !5231
    #dbg_value(i64 %xor11, !5232, !DIExpression(), !5206)
  %xor12 = xor i64 %xor11, %7, !dbg !5233
    #dbg_value(i64 %xor12, !5234, !DIExpression(), !5206)
  %xor13 = xor i64 %xor12, %3, !dbg !5235
    #dbg_value(i64 %xor13, !5236, !DIExpression(), !5206)
  %xor14 = xor i64 %xor8, %xor, !dbg !5237
    #dbg_value(i64 %xor14, !5238, !DIExpression(), !5206)
  %xor15 = xor i64 %xor12, %0, !dbg !5239
    #dbg_value(i64 %xor15, !5240, !DIExpression(), !5206)
  %xor16 = xor i64 %xor12, %6, !dbg !5241
    #dbg_value(i64 %xor16, !5242, !DIExpression(), !5206)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5243
    #dbg_value(i64 %xor17, !5244, !DIExpression(), !5206)
  %xor18 = xor i64 %4, %xor14, !dbg !5245
    #dbg_value(i64 %xor18, !5246, !DIExpression(), !5206)
  %xor19 = xor i64 %xor18, %5, !dbg !5247
    #dbg_value(i64 %xor19, !5248, !DIExpression(), !5206)
  %xor20 = xor i64 %xor18, %1, !dbg !5249
    #dbg_value(i64 %xor20, !5250, !DIExpression(), !5206)
  %xor21 = xor i64 %xor19, %7, !dbg !5251
    #dbg_value(i64 %xor21, !5252, !DIExpression(), !5206)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5253
    #dbg_value(i64 %xor22, !5254, !DIExpression(), !5206)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5255
    #dbg_value(i64 %xor23, !5256, !DIExpression(), !5206)
  %xor24 = xor i64 %7, %xor23, !dbg !5257
    #dbg_value(i64 %xor24, !5258, !DIExpression(), !5206)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5259
    #dbg_value(i64 %xor25, !5260, !DIExpression(), !5206)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5261, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5262
    #dbg_value(i64 %xor27, !5263, !DIExpression(), !5206)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5264, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5265, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
  %and = and i64 %xor14, %xor19, !dbg !5266
    #dbg_value(i64 %and, !5267, !DIExpression(), !5206)
  %and30 = and i64 %xor17, %xor21, !dbg !5268
    #dbg_value(i64 %and30, !5269, !DIExpression(), !5206)
  %xor31 = xor i64 %and30, %and, !dbg !5270
    #dbg_value(i64 %xor31, !5271, !DIExpression(), !5206)
  %and32 = and i64 %xor13, %7, !dbg !5272
    #dbg_value(i64 %and32, !5273, !DIExpression(), !5206)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
  %and34 = and i64 %xor8, %xor27, !dbg !5275
    #dbg_value(i64 %and34, !5276, !DIExpression(), !5206)
  %and35 = and i64 %xor16, %xor12, !dbg !5277
    #dbg_value(i64 %and35, !5278, !DIExpression(), !5206)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5279, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
  %and37 = and i64 %xor15, %xor24, !dbg !5280
    #dbg_value(i64 %and37, !5281, !DIExpression(), !5206)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5282, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
  %and39 = and i64 %xor9, %xor23, !dbg !5283
    #dbg_value(i64 %and39, !5284, !DIExpression(), !5206)
  %and40 = and i64 %xor, %xor25, !dbg !5285
    #dbg_value(i64 %and40, !5286, !DIExpression(), !5206)
  %xor41 = xor i64 %and40, %and39, !dbg !5287
    #dbg_value(i64 %xor41, !5288, !DIExpression(), !5206)
  %and42 = and i64 %xor10, %xor22, !dbg !5289
    #dbg_value(i64 %and42, !5290, !DIExpression(), !5206)
  %xor43 = xor i64 %and42, %and39, !dbg !5291
    #dbg_value(i64 %xor43, !5292, !DIExpression(), !5206)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5293
    #dbg_value(i64 %xor44, !5294, !DIExpression(), !5206)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5295, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5296, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5298
    #dbg_value(i64 %xor48, !5299, !DIExpression(), !5206)
  %8 = xor i64 %xor10, %and32, !dbg !5300
  %9 = xor i64 %8, %xor22, !dbg !5300
  %10 = xor i64 %9, %and, !dbg !5300
  %xor49 = xor i64 %10, %xor43, !dbg !5300
    #dbg_value(i64 %xor49, !5301, !DIExpression(), !5206)
  %11 = xor i64 %xor27, %and35, !dbg !5302
  %12 = xor i64 %11, %xor8, !dbg !5302
  %13 = xor i64 %12, %and34, !dbg !5302
  %xor50 = xor i64 %13, %xor41, !dbg !5302
    #dbg_value(i64 %xor50, !5303, !DIExpression(), !5206)
  %14 = xor i64 %xor27, %and37, !dbg !5304
  %15 = xor i64 %14, %0, !dbg !5304
  %16 = xor i64 %15, %and34, !dbg !5304
  %xor51 = xor i64 %16, %xor43, !dbg !5304
    #dbg_value(i64 %xor51, !5305, !DIExpression(), !5206)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5306
    #dbg_value(i64 %xor52, !5307, !DIExpression(), !5206)
  %and53 = and i64 %xor48, %xor50, !dbg !5308
    #dbg_value(i64 %and53, !5309, !DIExpression(), !5206)
  %xor54 = xor i64 %xor51, %and53, !dbg !5310
    #dbg_value(i64 %xor54, !5311, !DIExpression(), !5206)
  %and55 = and i64 %xor52, %xor54, !dbg !5312
    #dbg_value(i64 %and55, !5313, !DIExpression(), !5206)
  %xor56 = xor i64 %and55, %xor49, !dbg !5314
    #dbg_value(i64 %xor56, !5315, !DIExpression(), !5206)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5316
    #dbg_value(i64 %xor57, !5317, !DIExpression(), !5206)
  %xor58 = xor i64 %xor49, %and53, !dbg !5318
    #dbg_value(i64 %xor58, !5319, !DIExpression(), !5206)
  %and59 = and i64 %xor58, %xor57, !dbg !5320
    #dbg_value(i64 %and59, !5321, !DIExpression(), !5206)
  %xor60 = xor i64 %and59, %xor51, !dbg !5322
    #dbg_value(i64 %xor60, !5323, !DIExpression(), !5206)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5324
    #dbg_value(i64 %xor61, !5325, !DIExpression(), !5206)
  %xor62 = xor i64 %and59, %and53, !dbg !5326
    #dbg_value(i64 %xor62, !5327, !DIExpression(), !5206)
  %and63 = and i64 %xor51, %xor62, !dbg !5328
    #dbg_value(i64 %and63, !5329, !DIExpression(), !5206)
  %xor64 = xor i64 %and63, %xor61, !dbg !5330
    #dbg_value(i64 %xor64, !5331, !DIExpression(), !5206)
  %xor65 = xor i64 %xor54, %and63, !dbg !5332
    #dbg_value(i64 %xor65, !5333, !DIExpression(), !5206)
  %and66 = and i64 %xor56, %xor65, !dbg !5334
    #dbg_value(i64 %and66, !5335, !DIExpression(), !5206)
  %xor67 = xor i64 %xor52, %and66, !dbg !5336
    #dbg_value(i64 %xor67, !5337, !DIExpression(), !5206)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5338
    #dbg_value(i64 %xor68, !5339, !DIExpression(), !5206)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5340
    #dbg_value(i64 %xor69, !5341, !DIExpression(), !5206)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5342
    #dbg_value(i64 %xor70, !5343, !DIExpression(), !5206)
  %xor71 = xor i64 %and63, %xor50, !dbg !5344
    #dbg_value(i64 %xor71, !5345, !DIExpression(), !5206)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5346
    #dbg_value(i64 %xor72, !5347, !DIExpression(), !5206)
  %and73 = and i64 %xor71, %xor19, !dbg !5348
    #dbg_value(i64 %and73, !5349, !DIExpression(), !5206)
  %and74 = and i64 %xor64, %xor21, !dbg !5350
    #dbg_value(i64 %and74, !5351, !DIExpression(), !5206)
  %and75 = and i64 %xor60, %7, !dbg !5352
    #dbg_value(i64 %and75, !5353, !DIExpression(), !5206)
  %and76 = and i64 %xor70, %xor27, !dbg !5354
    #dbg_value(i64 %and76, !5355, !DIExpression(), !5206)
  %and77 = and i64 %xor67, %xor12, !dbg !5356
    #dbg_value(i64 %and77, !5357, !DIExpression(), !5206)
  %and78 = and i64 %xor56, %xor24, !dbg !5358
    #dbg_value(i64 %and78, !5359, !DIExpression(), !5206)
  %and79 = and i64 %xor69, %xor23, !dbg !5360
    #dbg_value(i64 %and79, !5361, !DIExpression(), !5206)
  %and80 = and i64 %xor72, %xor25, !dbg !5362
    #dbg_value(i64 %and80, !5363, !DIExpression(), !5206)
  %and81 = and i64 %xor68, %xor22, !dbg !5364
    #dbg_value(i64 %and81, !5365, !DIExpression(), !5206)
  %and82 = and i64 %xor71, %xor14, !dbg !5366
    #dbg_value(i64 %and82, !5367, !DIExpression(), !5206)
  %and83 = and i64 %xor64, %xor17, !dbg !5368
    #dbg_value(i64 %and83, !5369, !DIExpression(), !5206)
  %and84 = and i64 %xor60, %xor13, !dbg !5370
    #dbg_value(i64 %and84, !5371, !DIExpression(), !5206)
  %and85 = and i64 %xor70, %xor8, !dbg !5372
    #dbg_value(i64 %and85, !5373, !DIExpression(), !5206)
  %and86 = and i64 %xor67, %xor16, !dbg !5374
    #dbg_value(i64 %and86, !5375, !DIExpression(), !5206)
  %and87 = and i64 %xor56, %xor15, !dbg !5376
    #dbg_value(i64 %and87, !5377, !DIExpression(), !5206)
  %and88 = and i64 %xor69, %xor9, !dbg !5378
    #dbg_value(i64 %and88, !5379, !DIExpression(), !5206)
  %and89 = and i64 %xor72, %xor, !dbg !5380
    #dbg_value(i64 %and89, !5381, !DIExpression(), !5206)
  %and90 = and i64 %xor68, %xor10, !dbg !5382
    #dbg_value(i64 %and90, !5383, !DIExpression(), !5206)
  %xor91 = xor i64 %and88, %and89, !dbg !5384
    #dbg_value(i64 %xor91, !5385, !DIExpression(), !5206)
  %xor92 = xor i64 %and83, %and84, !dbg !5386
    #dbg_value(i64 %xor92, !5387, !DIExpression(), !5206)
  %xor93 = xor i64 %and78, %and86, !dbg !5388
    #dbg_value(i64 %xor93, !5389, !DIExpression(), !5206)
  %xor94 = xor i64 %and82, %and83, !dbg !5390
    #dbg_value(i64 %xor94, !5391, !DIExpression(), !5206)
  %xor95 = xor i64 %and75, %and85, !dbg !5392
    #dbg_value(i64 %xor95, !5393, !DIExpression(), !5206)
  %xor96 = xor i64 %and75, %and78, !dbg !5394
    #dbg_value(i64 %xor96, !5395, !DIExpression(), !5206)
  %xor97 = xor i64 %and80, %and81, !dbg !5396
    #dbg_value(i64 %xor97, !5397, !DIExpression(), !5206)
  %xor98 = xor i64 %and73, %and76, !dbg !5398
    #dbg_value(i64 %xor98, !5399, !DIExpression(), !5206)
  %xor99 = xor i64 %and79, %and80, !dbg !5400
    #dbg_value(i64 %xor99, !5401, !DIExpression(), !5206)
  %xor100 = xor i64 %and89, %and90, !dbg !5402
    #dbg_value(i64 %xor100, !5403, !DIExpression(), !5206)
  %xor101 = xor i64 %and85, %xor93, !dbg !5404
    #dbg_value(i64 %xor101, !5405, !DIExpression(), !5206)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5406
    #dbg_value(i64 %xor102, !5407, !DIExpression(), !5206)
  %xor103 = xor i64 %and77, %xor91, !dbg !5408
    #dbg_value(i64 %xor103, !5409, !DIExpression(), !5206)
  %xor104 = xor i64 %and76, %xor99, !dbg !5410
    #dbg_value(i64 %xor104, !5411, !DIExpression(), !5206)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5412
    #dbg_value(i64 %xor105, !5413, !DIExpression(), !5206)
  %xor106 = xor i64 %and87, %xor102, !dbg !5414
    #dbg_value(i64 %xor106, !5415, !DIExpression(), !5206)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5416
    #dbg_value(i64 %xor107, !5417, !DIExpression(), !5206)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5418
    #dbg_value(i64 %xor108, !5419, !DIExpression(), !5206)
  %xor109 = xor i64 %and77, %xor104, !dbg !5420
    #dbg_value(i64 %xor109, !5421, !DIExpression(), !5206)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5422
    #dbg_value(i64 %xor110, !5423, !DIExpression(), !5206)
  %xor111 = xor i64 %and74, %xor108, !dbg !5424
    #dbg_value(i64 %xor111, !5425, !DIExpression(), !5206)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5426
    #dbg_value(i64 %xor112, !5427, !DIExpression(), !5206)
  %17 = xor i64 %xor107, %xor101, !dbg !5428
  %xor113 = xor i64 %17, -1, !dbg !5428
    #dbg_value(i64 %xor113, !5429, !DIExpression(), !5206)
  %18 = xor i64 %xor105, %xor93, !dbg !5430
  %xor115 = xor i64 %18, -1, !dbg !5430
    #dbg_value(i64 %xor115, !5431, !DIExpression(), !5206)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5206)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5433
    #dbg_value(i64 %xor117, !5434, !DIExpression(), !5206)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5435
    #dbg_value(i64 %xor118, !5436, !DIExpression(), !5206)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5437
    #dbg_value(i64 %xor119, !5438, !DIExpression(), !5206)
  %19 = xor i64 %xor117, %xor109, !dbg !5439
  %xor121 = xor i64 %19, -1, !dbg !5439
    #dbg_value(i64 %xor121, !5440, !DIExpression(), !5206)
  %20 = xor i64 %xor110, %xor100, !dbg !5441
  %21 = xor i64 %20, %xor109, !dbg !5441
  %xor123 = xor i64 %21, -1, !dbg !5441
    #dbg_value(i64 %xor123, !5442, !DIExpression(), !5206)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5443
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5444
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5445
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5446
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5447
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5448
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5449
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5450
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5451
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5452
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5453
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5454
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5455
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5456
  store i64 %xor115, ptr %q, align 8, !dbg !5457
  ret void, !dbg !5458
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5459 {
entry:
    #dbg_value(ptr %src, !5462, !DIExpression(), !5463)
  %0 = load i8, ptr %src, align 1, !dbg !5464
  %conv = zext i8 %0 to i32, !dbg !5465
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5466
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5466
  %conv2 = zext i8 %1 to i32, !dbg !5467
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5468
  %or = or disjoint i32 %shl, %conv, !dbg !5469
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5470
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5470
  %conv4 = zext i8 %2 to i32, !dbg !5471
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5472
  %or6 = or disjoint i32 %or, %shl5, !dbg !5473
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5474
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5474
  %conv8 = zext i8 %3 to i32, !dbg !5475
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5476
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5477
  ret i32 %or10, !dbg !5478
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5479 {
entry:
    #dbg_value(ptr %r, !5480, !DIExpression(), !5481)
    #dbg_value(ptr %key, !5482, !DIExpression(), !5481)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5483
  ret void, !dbg !5484
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5485 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5493, !DIExpression(), !5494)
    #dbg_value(ptr %key, !5495, !DIExpression(), !5494)
    #dbg_declare(ptr %skey, !5496, !DIExpression(), !5500)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #10, !dbg !5501
  store ptr %call, ptr %r, align 4, !dbg !5502
  %cmp = icmp eq ptr %call, null, !dbg !5503
  br i1 %cmp, label %if.then, label %if.end, !dbg !5503

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5505
  br label %if.end, !dbg !5507

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #7, !dbg !5508
  %0 = load ptr, ptr %r, align 4, !dbg !5509
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #7, !dbg !5510
  ret void, !dbg !5511
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5512 {
entry:
    #dbg_value(ptr %r, !5513, !DIExpression(), !5514)
    #dbg_value(ptr %key, !5515, !DIExpression(), !5514)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5516
  ret void, !dbg !5517
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5518 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5526, !DIExpression(), !5527)
    #dbg_value(ptr %key, !5528, !DIExpression(), !5527)
    #dbg_declare(ptr %skey, !5529, !DIExpression(), !5533)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #10, !dbg !5534
  store ptr %call, ptr %r, align 4, !dbg !5535
  %cmp = icmp eq ptr %call, null, !dbg !5536
  br i1 %cmp, label %if.then, label %if.end, !dbg !5536

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #9, !dbg !5538
  br label %if.end, !dbg !5540

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #7, !dbg !5541
  %0 = load ptr, ptr %r, align 4, !dbg !5542
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #7, !dbg !5543
  ret void, !dbg !5544
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5545 {
entry:
    #dbg_value(ptr %r, !5546, !DIExpression(), !5547)
    #dbg_value(ptr %key, !5548, !DIExpression(), !5547)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #7, !dbg !5549
  ret void, !dbg !5550
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5551 {
entry:
    #dbg_value(ptr %out, !5556, !DIExpression(), !5557)
    #dbg_value(ptr %in, !5558, !DIExpression(), !5557)
    #dbg_value(i32 %nblocks, !5559, !DIExpression(), !5557)
    #dbg_value(ptr %ctx, !5560, !DIExpression(), !5557)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5561
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #7, !dbg !5562
  ret void, !dbg !5563
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5564 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5567, !DIExpression(), !5568)
    #dbg_value(ptr %in, !5569, !DIExpression(), !5568)
    #dbg_value(i32 %nblocks, !5570, !DIExpression(), !5568)
    #dbg_value(ptr %rkeys, !5571, !DIExpression(), !5568)
    #dbg_value(i32 %nrounds, !5572, !DIExpression(), !5568)
    #dbg_declare(ptr %blocks, !5573, !DIExpression(), !5575)
    #dbg_declare(ptr %t, !5576, !DIExpression(), !5580)
  br label %while.cond, !dbg !5581

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5567, !DIExpression(), !5568)
    #dbg_value(ptr %in.addr.0, !5569, !DIExpression(), !5568)
    #dbg_value(i32 %nblocks.addr.0, !5570, !DIExpression(), !5568)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5582
  br i1 %cmp, label %while.body, label %while.end, !dbg !5581

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #7, !dbg !5583
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5585
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5586
    #dbg_value(i32 %sub, !5570, !DIExpression(), !5568)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5587
    #dbg_value(ptr %add.ptr, !5569, !DIExpression(), !5568)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5588
    #dbg_value(ptr %add.ptr2, !5567, !DIExpression(), !5568)
  br label %while.cond, !dbg !5581, !llvm.loop !5589

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5591
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5591

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5593
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #7, !dbg !5595
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5596
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5597
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #9, !dbg !5598
  br label %if.end, !dbg !5599

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5600
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5601 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5604, !DIExpression(), !5605)
    #dbg_value(ptr %ivw, !5606, !DIExpression(), !5605)
    #dbg_value(ptr %sk_exp, !5607, !DIExpression(), !5605)
    #dbg_value(i32 %nrounds, !5608, !DIExpression(), !5605)
    #dbg_declare(ptr %w, !5609, !DIExpression(), !5610)
    #dbg_declare(ptr %q, !5611, !DIExpression(), !5612)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #9, !dbg !5613
    #dbg_value(i32 0, !5614, !DIExpression(), !5605)
  br label %for.cond, !dbg !5615

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5617
    #dbg_value(i32 %i.0, !5614, !DIExpression(), !5605)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5618
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5620

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5621
  %add = or disjoint i32 %i.0, 4, !dbg !5623
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5624
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5625
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5625
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #7, !dbg !5626
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5627
    #dbg_value(i32 %inc, !5614, !DIExpression(), !5605)
  br label %for.cond, !dbg !5628, !llvm.loop !5629

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5631
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #7, !dbg !5632
    #dbg_value(i32 1, !5614, !DIExpression(), !5605)
  br label %for.cond5, !dbg !5633

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5635
    #dbg_value(i32 %i.1, !5614, !DIExpression(), !5605)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5636
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5638

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5639
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5641
  call fastcc void @mix_columns(ptr noundef nonnull %q) #7, !dbg !5642
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5643
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5643
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #7, !dbg !5644
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5645
    #dbg_value(i32 %inc15, !5614, !DIExpression(), !5605)
  br label %for.cond5, !dbg !5646, !llvm.loop !5647

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #7, !dbg !5649
  call fastcc void @shift_rows(ptr noundef nonnull %q) #7, !dbg !5650
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5651
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5651
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #7, !dbg !5652
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #7, !dbg !5653
    #dbg_value(i32 0, !5614, !DIExpression(), !5605)
  br label %for.cond22, !dbg !5654

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5656
    #dbg_value(i32 %i.2, !5614, !DIExpression(), !5605)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5657
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5659

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5660
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5660
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5662
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5662
  %add29 = or disjoint i32 %i.2, 4, !dbg !5663
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5664
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5664
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #7, !dbg !5665
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5666
    #dbg_value(i32 %inc32, !5614, !DIExpression(), !5605)
  br label %for.cond22, !dbg !5667, !llvm.loop !5668

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #7, !dbg !5670
  ret void, !dbg !5671
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5672 {
entry:
    #dbg_value(ptr %q, !5675, !DIExpression(), !5676)
    #dbg_value(ptr %sk, !5677, !DIExpression(), !5676)
  %0 = load i64, ptr %sk, align 8, !dbg !5678
  %1 = load i64, ptr %q, align 8, !dbg !5679
  %xor = xor i64 %1, %0, !dbg !5679
  store i64 %xor, ptr %q, align 8, !dbg !5679
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5680
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5680
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5681
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5682
  %xor4 = xor i64 %3, %2, !dbg !5682
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5682
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5683
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5683
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5684
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5685
  %xor7 = xor i64 %5, %4, !dbg !5685
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5685
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5686
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5686
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5687
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5688
  %xor10 = xor i64 %7, %6, !dbg !5688
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5688
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5689
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5689
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5690
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5691
  %xor13 = xor i64 %9, %8, !dbg !5691
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5691
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5692
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5692
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5693
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5694
  %xor16 = xor i64 %11, %10, !dbg !5694
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5694
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5695
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5695
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5696
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5697
  %xor19 = xor i64 %13, %12, !dbg !5697
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5697
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5698
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5698
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5699
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5700
  %xor22 = xor i64 %15, %14, !dbg !5700
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5700
  ret void, !dbg !5701
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5702 {
entry:
    #dbg_value(ptr %q, !5703, !DIExpression(), !5704)
    #dbg_value(i32 0, !5705, !DIExpression(), !5704)
  br label %for.cond, !dbg !5706

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5708
    #dbg_value(i32 %i.0, !5705, !DIExpression(), !5704)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5709
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5711

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5712
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5712
    #dbg_value(i64 %0, !5714, !DIExpression(), !5715)
  %and = and i64 %0, 65535, !dbg !5716
  %and1 = lshr i64 %0, 4, !dbg !5717
  %shr = and i64 %and1, 268369920, !dbg !5717
  %or = or disjoint i64 %and, %shr, !dbg !5718
  %and2 = shl i64 %0, 12, !dbg !5719
  %shl = and i64 %and2, 4026531840, !dbg !5719
  %or3 = or disjoint i64 %or, %shl, !dbg !5720
  %and4 = lshr i64 %0, 8, !dbg !5721
  %shr5 = and i64 %and4, 1095216660480, !dbg !5721
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5722
  %and7 = shl i64 %0, 8, !dbg !5723
  %shl8 = and i64 %and7, 280375465082880, !dbg !5723
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5724
  %and10 = lshr i64 %0, 12, !dbg !5725
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5725
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5726
  %and13 = shl i64 %0, 4, !dbg !5727
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5727
  %or15 = or i64 %or12, %shl14, !dbg !5728
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5729
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5730
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5731
    #dbg_value(i32 %inc, !5705, !DIExpression(), !5704)
  br label %for.cond, !dbg !5732, !llvm.loop !5733

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5735
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5736 {
entry:
    #dbg_value(ptr %q, !5737, !DIExpression(), !5738)
  %0 = load i64, ptr %q, align 8, !dbg !5739
    #dbg_value(i64 %0, !5740, !DIExpression(), !5738)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5741
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5741
    #dbg_value(i64 %1, !5742, !DIExpression(), !5738)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5743
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5743
    #dbg_value(i64 %2, !5744, !DIExpression(), !5738)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5745
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5745
    #dbg_value(i64 %3, !5746, !DIExpression(), !5738)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5747
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5747
    #dbg_value(i64 %4, !5748, !DIExpression(), !5738)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5749
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5749
    #dbg_value(i64 %5, !5750, !DIExpression(), !5738)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5751
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5751
    #dbg_value(i64 %6, !5752, !DIExpression(), !5738)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5753
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5753
    #dbg_value(i64 %7, !5754, !DIExpression(), !5738)
  %or = call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 48), !dbg !5755
    #dbg_value(i64 %or, !5756, !DIExpression(), !5738)
  %or10 = call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 48), !dbg !5757
    #dbg_value(i64 %or10, !5758, !DIExpression(), !5738)
  %or13 = call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 48), !dbg !5759
    #dbg_value(i64 %or13, !5760, !DIExpression(), !5738)
  %or16 = call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 48), !dbg !5761
    #dbg_value(i64 %or16, !5762, !DIExpression(), !5738)
  %or19 = call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 48), !dbg !5763
    #dbg_value(i64 %or19, !5764, !DIExpression(), !5738)
  %or22 = call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 48), !dbg !5765
    #dbg_value(i64 %or22, !5766, !DIExpression(), !5738)
  %or25 = call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 48), !dbg !5767
    #dbg_value(i64 %or25, !5768, !DIExpression(), !5738)
  %or28 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 48), !dbg !5769
    #dbg_value(i64 %or28, !5770, !DIExpression(), !5738)
  %xor30 = xor i64 %0, %or, !dbg !5771
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #7, !dbg !5772
  %8 = xor i64 %or28, %call, !dbg !5773
  %9 = xor i64 %8, %7, !dbg !5773
  %xor31 = xor i64 %9, %or, !dbg !5773
  store i64 %xor31, ptr %q, align 8, !dbg !5774
  %xor37 = xor i64 %1, %or10, !dbg !5775
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #7, !dbg !5776
  %10 = xor i64 %or, %call38, !dbg !5777
  %11 = xor i64 %10, %0, !dbg !5777
  %12 = xor i64 %11, %7, !dbg !5777
  %13 = xor i64 %12, %or28, !dbg !5777
  %xor39 = xor i64 %13, %or10, !dbg !5777
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5778
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5779
  %xor43 = xor i64 %2, %or13, !dbg !5780
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #7, !dbg !5781
  %14 = xor i64 %or10, %call44, !dbg !5782
  %15 = xor i64 %14, %1, !dbg !5782
  %xor45 = xor i64 %15, %or13, !dbg !5782
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5783
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5784
  %xor51 = xor i64 %3, %or16, !dbg !5785
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #7, !dbg !5786
  %16 = xor i64 %or13, %call52, !dbg !5787
  %17 = xor i64 %16, %2, !dbg !5787
  %18 = xor i64 %17, %7, !dbg !5787
  %19 = xor i64 %18, %or28, !dbg !5787
  %xor53 = xor i64 %19, %or16, !dbg !5787
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5788
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5789
  %xor59 = xor i64 %4, %or19, !dbg !5790
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #7, !dbg !5791
  %20 = xor i64 %or16, %call60, !dbg !5792
  %21 = xor i64 %20, %3, !dbg !5792
  %22 = xor i64 %21, %7, !dbg !5792
  %23 = xor i64 %22, %or28, !dbg !5792
  %xor61 = xor i64 %23, %or19, !dbg !5792
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5793
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5794
  %xor65 = xor i64 %5, %or22, !dbg !5795
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #7, !dbg !5796
  %24 = xor i64 %or19, %call66, !dbg !5797
  %25 = xor i64 %24, %4, !dbg !5797
  %xor67 = xor i64 %25, %or22, !dbg !5797
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5798
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5799
  %xor71 = xor i64 %6, %or25, !dbg !5800
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #7, !dbg !5801
  %26 = xor i64 %or22, %call72, !dbg !5802
  %27 = xor i64 %26, %5, !dbg !5802
  %xor73 = xor i64 %27, %or25, !dbg !5802
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5803
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5804
  %xor77 = xor i64 %7, %or28, !dbg !5805
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #7, !dbg !5806
  %28 = xor i64 %or25, %call78, !dbg !5807
  %29 = xor i64 %28, %6, !dbg !5807
  %xor79 = xor i64 %29, %or28, !dbg !5807
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5808
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5809
  ret void, !dbg !5810
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5811 {
entry:
    #dbg_value(ptr %w, !5814, !DIExpression(), !5815)
    #dbg_value(i64 %q0, !5816, !DIExpression(), !5815)
    #dbg_value(i64 %q1, !5817, !DIExpression(), !5815)
  %and = and i64 %q0, 71777214294589695, !dbg !5818
    #dbg_value(i64 %and, !5819, !DIExpression(), !5815)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5820
    #dbg_value(i64 %and1, !5821, !DIExpression(), !5815)
  %shr = lshr i64 %q0, 8, !dbg !5822
  %and2 = and i64 %shr, 71776119077928960, !dbg !5823
    #dbg_value(i64 %shr, !5824, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5815)
  %shr3 = lshr i64 %q1, 8, !dbg !5825
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5826
    #dbg_value(i64 %shr3, !5827, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5815)
  %shr5 = lshr i64 %and, 8, !dbg !5828
  %or = or disjoint i64 %and, %shr5, !dbg !5829
    #dbg_value(i64 %or, !5819, !DIExpression(), !5815)
  %shr6 = lshr i64 %and1, 8, !dbg !5830
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5831
    #dbg_value(i64 %or7, !5821, !DIExpression(), !5815)
  %0 = and i64 %q0, 280375465148160, !dbg !5832
  %1 = or disjoint i64 %and2, %0, !dbg !5832
  %or9 = lshr exact i64 %1, 8, !dbg !5832
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5815)
  %2 = and i64 %q1, 280375465148160, !dbg !5833
  %3 = or disjoint i64 %and4, %2, !dbg !5833
  %or11 = lshr exact i64 %3, 8, !dbg !5833
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5827, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5815)
  %and12 = and i64 %or, 281470681808895, !dbg !5834
    #dbg_value(i64 %and12, !5819, !DIExpression(), !5815)
  %and13 = and i64 %or7, 281470681808895, !dbg !5835
    #dbg_value(i64 %and13, !5821, !DIExpression(), !5815)
    #dbg_value(i64 %or9, !5824, !DIExpression(), !5815)
    #dbg_value(i64 %or11, !5827, !DIExpression(), !5815)
  %shr16 = lshr i64 %and12, 16, !dbg !5836
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5837
  %or18 = trunc i64 %or181 to i32, !dbg !5837
  store i32 %or18, ptr %w, align 4, !dbg !5838
  %shr20 = lshr i64 %and13, 16, !dbg !5839
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5840
  %or22 = trunc i64 %or222 to i32, !dbg !5840
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5841
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5842
  %shr25 = lshr i64 %1, 24, !dbg !5843
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5844
  %or27 = trunc i64 %or273 to i32, !dbg !5844
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5845
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5846
  %shr30 = lshr i64 %3, 24, !dbg !5847
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5848
  %or32 = trunc i64 %or324 to i32, !dbg !5848
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5849
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5850
  ret void, !dbg !5851
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5852 {
entry:
    #dbg_value(ptr %dst, !5855, !DIExpression(), !5856)
    #dbg_value(ptr %v, !5857, !DIExpression(), !5856)
    #dbg_value(i32 16, !5858, !DIExpression(), !5856)
  br label %while.cond, !dbg !5859

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5855, !DIExpression(), !5856)
    #dbg_value(ptr %v.addr.0, !5857, !DIExpression(), !5856)
    #dbg_value(i32 %num.addr.0, !5858, !DIExpression(), !5856)
    #dbg_value(i32 %num.addr.0, !5858, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5856)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5860
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5859

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5861
    #dbg_value(i32 %dec, !5858, !DIExpression(), !5856)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5862
    #dbg_value(ptr %incdec.ptr, !5857, !DIExpression(), !5856)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5864
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #7, !dbg !5865
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5866
    #dbg_value(ptr %add.ptr, !5855, !DIExpression(), !5856)
  br label %while.cond, !dbg !5859, !llvm.loop !5867

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5869
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5870 {
entry:
    #dbg_value(ptr %dst, !5873, !DIExpression(), !5874)
    #dbg_value(i32 %x, !5875, !DIExpression(), !5874)
  %conv = trunc i32 %x to i8, !dbg !5876
  store i8 %conv, ptr %dst, align 1, !dbg !5877
  %shr = lshr i32 %x, 8, !dbg !5878
  %conv1 = trunc i32 %shr to i8, !dbg !5879
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5880
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5881
  %shr3 = lshr i32 %x, 16, !dbg !5882
  %conv4 = trunc i32 %shr3 to i8, !dbg !5883
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5884
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5885
  %shr6 = lshr i32 %x, 24, !dbg !5886
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5887
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5888
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5889
  ret void, !dbg !5890
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5891 {
entry:
    #dbg_value(i64 %x, !5894, !DIExpression(), !5895)
  %or = call i64 @llvm.fshl.i64(i64 %x, i64 %x, i64 32), !dbg !5896
  ret i64 %or, !dbg !5897
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5898 {
entry:
    #dbg_value(ptr %out, !5901, !DIExpression(), !5902)
    #dbg_value(i32 %outlen, !5903, !DIExpression(), !5902)
    #dbg_value(ptr %iv, !5904, !DIExpression(), !5902)
    #dbg_value(ptr %ctx, !5905, !DIExpression(), !5902)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5906
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #7, !dbg !5907
  ret void, !dbg !5908
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5909 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5912, !DIExpression(), !5913)
    #dbg_value(i32 %outlen, !5914, !DIExpression(), !5913)
    #dbg_value(ptr %iv, !5915, !DIExpression(), !5913)
    #dbg_value(ptr %rkeys, !5916, !DIExpression(), !5913)
    #dbg_value(i32 %nrounds, !5917, !DIExpression(), !5913)
    #dbg_declare(ptr %ivw, !5918, !DIExpression(), !5919)
    #dbg_value(i32 0, !5920, !DIExpression(), !5913)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #7, !dbg !5921
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5922
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5923
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5924
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5925
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5926
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #9, !dbg !5927
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #7, !dbg !5928
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5929
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5930
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #7, !dbg !5931
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5932
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5933
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #7, !dbg !5934
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5935
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !5936
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #7, !dbg !5937
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5938
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !5939
  br label %while.cond, !dbg !5940

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5912, !DIExpression(), !5913)
    #dbg_value(i32 %outlen.addr.0, !5914, !DIExpression(), !5913)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !5941
  br i1 %cmp, label %while.body, label %while.end, !dbg !5940

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5942
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5944
    #dbg_value(ptr %add.ptr21, !5912, !DIExpression(), !5913)
  %sub = add i32 %outlen.addr.0, -64, !dbg !5945
    #dbg_value(i32 %sub, !5914, !DIExpression(), !5913)
  br label %while.cond, !dbg !5940, !llvm.loop !5946

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !5948
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !5948

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !5950, !DIExpression(), !5952)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #7, !dbg !5953
    #dbg_value(i32 0, !5954, !DIExpression(), !5913)
  br label %for.cond, !dbg !5955

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !5957
    #dbg_value(i32 %i.0, !5954, !DIExpression(), !5913)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !5958
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !5960

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !5961
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !5961
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !5963
  store i8 %0, ptr %arrayidx27, align 1, !dbg !5964
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5965
    #dbg_value(i32 %inc, !5954, !DIExpression(), !5913)
  br label %for.cond, !dbg !5966, !llvm.loop !5967

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5969

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !5969
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !5970 {
entry:
    #dbg_value(i32 %x, !5971, !DIExpression(), !5972)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !5971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !5972)
  %or4 = call i32 @llvm.bswap.i32(i32 %x), !dbg !5973
  ret i32 %or4, !dbg !5974
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5975 {
entry:
    #dbg_value(ptr %out, !5978, !DIExpression(), !5979)
    #dbg_value(ptr %ivw, !5980, !DIExpression(), !5979)
    #dbg_value(ptr %sk_exp, !5981, !DIExpression(), !5979)
    #dbg_value(i32 %nrounds, !5982, !DIExpression(), !5979)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #7, !dbg !5983
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5984
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #7, !dbg !5985
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5986
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #7, !dbg !5987
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5988
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #7, !dbg !5989
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5990
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #7, !dbg !5991
  ret void, !dbg !5992
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !5993 {
entry:
    #dbg_value(ptr %x, !5996, !DIExpression(), !5997)
  %0 = load i32, ptr %x, align 4, !dbg !5998
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #7, !dbg !5999
  %add = add i32 %call, 4, !dbg !6000
    #dbg_value(i32 %add, !6001, !DIExpression(), !5997)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #7, !dbg !6002
  store i32 %call1, ptr %x, align 4, !dbg !6003
  ret void, !dbg !6004
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6005 {
entry:
    #dbg_value(ptr %out, !6010, !DIExpression(), !6011)
    #dbg_value(ptr %in, !6012, !DIExpression(), !6011)
    #dbg_value(i32 %nblocks, !6013, !DIExpression(), !6011)
    #dbg_value(ptr %ctx, !6014, !DIExpression(), !6011)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6015
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #7, !dbg !6016
  ret void, !dbg !6017
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6018 {
entry:
    #dbg_value(ptr %out, !6021, !DIExpression(), !6022)
    #dbg_value(i32 %outlen, !6023, !DIExpression(), !6022)
    #dbg_value(ptr %iv, !6024, !DIExpression(), !6022)
    #dbg_value(ptr %ctx, !6025, !DIExpression(), !6022)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6026
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #7, !dbg !6027
  ret void, !dbg !6028
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6029 {
entry:
    #dbg_value(ptr %out, !6034, !DIExpression(), !6035)
    #dbg_value(ptr %in, !6036, !DIExpression(), !6035)
    #dbg_value(i32 %nblocks, !6037, !DIExpression(), !6035)
    #dbg_value(ptr %ctx, !6038, !DIExpression(), !6035)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6039
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #7, !dbg !6040
  ret void, !dbg !6041
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6042 {
entry:
    #dbg_value(ptr %out, !6045, !DIExpression(), !6046)
    #dbg_value(i32 %outlen, !6047, !DIExpression(), !6046)
    #dbg_value(ptr %iv, !6048, !DIExpression(), !6046)
    #dbg_value(ptr %ctx, !6049, !DIExpression(), !6046)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6050
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #7, !dbg !6051
  ret void, !dbg !6052
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6053 {
entry:
    #dbg_value(ptr %r, !6056, !DIExpression(), !6057)
  %0 = load ptr, ptr %r, align 4, !dbg !6058
  call void @free(ptr noundef %0) #9, !dbg !6059
  ret void, !dbg !6060
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6061 {
entry:
    #dbg_value(ptr %r, !6064, !DIExpression(), !6065)
  %0 = load ptr, ptr %r, align 4, !dbg !6066
  call void @free(ptr noundef %0) #9, !dbg !6067
  ret void, !dbg !6068
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6069 {
entry:
    #dbg_value(ptr %r, !6072, !DIExpression(), !6073)
  %0 = load ptr, ptr %r, align 4, !dbg !6074
  call void @free(ptr noundef %0) #9, !dbg !6075
  ret void, !dbg !6076
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6077 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6080, !DIExpression(), !6081)
    #dbg_value(i32 %outputByteLen, !6082, !DIExpression(), !6081)
    #dbg_value(ptr %input, !6083, !DIExpression(), !6081)
    #dbg_value(i32 %inputByteLen, !6084, !DIExpression(), !6081)
    #dbg_declare(ptr %ctx, !6085, !DIExpression(), !6086)
    #dbg_declare(ptr %iv, !6087, !DIExpression(), !6088)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %iv, i8 0, i32 16, i1 false), !dbg !6088
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #7, !dbg !6089
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #7, !dbg !6090
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6091
  ret i32 %outputByteLen, !dbg !6092
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6093 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6096, !DIExpression(), !6097)
    #dbg_value(ptr %key, !6098, !DIExpression(), !6097)
    #dbg_value(ptr %output, !6099, !DIExpression(), !6097)
    #dbg_declare(ptr %ctx, !6100, !DIExpression(), !6101)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #7, !dbg !6102
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #7, !dbg !6103
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #7, !dbg !6104
  ret void, !dbg !6105
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3145408, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 49147)
!146 = !DILocation(line: 32, column: 10, scope: !97)
!147 = !DILocalVariable(name: "esk", scope: !97, file: !92, line: 33, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3129408, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 48897)
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
!191 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !192, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!231 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !192, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!232 = !DILocalVariable(name: "p", arg: 1, scope: !231, file: !25, line: 537, type: !194)
!233 = !DILocation(line: 0, scope: !231)
!234 = !DILocalVariable(name: "cpk", arg: 2, scope: !231, file: !25, line: 537, type: !18)
!235 = !DILocalVariable(name: "csk", arg: 3, scope: !231, file: !25, line: 538, type: !18)
!236 = !DILocalVariable(name: "ret", scope: !231, file: !25, line: 539, type: !45)
!237 = !DILocalVariable(name: "seed_sk", scope: !231, file: !25, line: 540, type: !18)
!238 = !DILocalVariable(name: "S", scope: !231, file: !25, line: 541, type: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4448, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 556)
!242 = !DILocation(line: 541, column: 19, scope: !231)
!243 = !DILocalVariable(name: "P", scope: !231, file: !25, line: 542, type: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3120768, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 48762)
!247 = !DILocation(line: 542, column: 14, scope: !231)
!248 = !DILocalVariable(name: "P3", scope: !231, file: !25, line: 543, type: !249)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44800, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 700)
!252 = !DILocation(line: 543, column: 14, scope: !231)
!253 = !DILocalVariable(name: "O", scope: !231, file: !25, line: 546, type: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8640, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 1080)
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
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24640, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 385)
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
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 448, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 7)
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
!622 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !623, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!719 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !720, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 432, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 54)
!735 = !DILocation(line: 363, column: 19, scope: !719)
!736 = !DILocalVariable(name: "t", scope: !719, file: !25, line: 363, type: !737)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 864, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 108)
!740 = !DILocation(line: 363, column: 38, scope: !719)
!741 = !DILocalVariable(name: "y", scope: !719, file: !25, line: 364, type: !737)
!742 = !DILocation(line: 364, column: 19, scope: !719)
!743 = !DILocalVariable(name: "salt", scope: !719, file: !25, line: 365, type: !158)
!744 = !DILocation(line: 365, column: 19, scope: !719)
!745 = !DILocalVariable(name: "V", scope: !719, file: !25, line: 366, type: !746)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5192, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 649)
!749 = !DILocation(line: 366, column: 19, scope: !719)
!750 = !DILocalVariable(name: "Vdec", scope: !719, file: !25, line: 366, type: !751)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 9504, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 1188)
!754 = !DILocation(line: 366, column: 57, scope: !719)
!755 = !DILocalVariable(name: "A", scope: !719, file: !25, line: 367, type: !756)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 99456, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 12432)
!759 = !DILocation(line: 367, column: 19, scope: !719)
!760 = !DILocalVariable(name: "x", scope: !719, file: !25, line: 368, type: !761)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 10384, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 1298)
!764 = !DILocation(line: 368, column: 19, scope: !719)
!765 = !DILocalVariable(name: "r", scope: !719, file: !25, line: 369, type: !766)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 888, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 111)
!769 = !DILocation(line: 369, column: 19, scope: !719)
!770 = !DILocalVariable(name: "s", scope: !719, file: !25, line: 370, type: !761)
!771 = !DILocation(line: 370, column: 19, scope: !719)
!772 = !DILocalVariable(name: "sk", scope: !719, file: !25, line: 372, type: !148, align: 256)
!773 = !DILocation(line: 372, column: 22, scope: !719)
!774 = !DILocalVariable(name: "Ox", scope: !719, file: !25, line: 373, type: !737)
!775 = !DILocation(line: 373, column: 19, scope: !719)
!776 = !DILocalVariable(name: "tmp", scope: !719, file: !25, line: 374, type: !777)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 904, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 113)
!780 = !DILocation(line: 374, column: 19, scope: !719)
!781 = !DILocalVariable(name: "param_m", scope: !719, file: !25, line: 378, type: !259)
!782 = !DILocalVariable(name: "param_n", scope: !719, file: !25, line: 379, type: !259)
!783 = !DILocalVariable(name: "param_o", scope: !719, file: !25, line: 380, type: !259)
!784 = !DILocalVariable(name: "param_k", scope: !719, file: !25, line: 381, type: !259)
!785 = !DILocalVariable(name: "param_v", scope: !719, file: !25, line: 382, type: !259)
!786 = !DILocalVariable(name: "param_m_bytes", scope: !719, file: !25, line: 383, type: !259)
!787 = !DILocalVariable(name: "param_v_bytes", scope: !719, file: !25, line: 384, type: !259)
!788 = !DILocalVariable(name: "param_r_bytes", scope: !719, file: !25, line: 385, type: !259)
!789 = !DILocalVariable(name: "param_sig_bytes", scope: !719, file: !25, line: 386, type: !259)
!790 = !DILocalVariable(name: "param_A_cols", scope: !719, file: !25, line: 387, type: !259)
!791 = !DILocalVariable(name: "param_digest_bytes", scope: !719, file: !25, line: 388, type: !259)
!792 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !719, file: !25, line: 389, type: !259)
!793 = !DILocalVariable(name: "param_salt_bytes", scope: !719, file: !25, line: 390, type: !259)
!794 = !DILocation(line: 392, column: 11, scope: !719)
!795 = !DILocalVariable(name: "seed_sk", scope: !719, file: !25, line: 371, type: !49)
!796 = !DILocation(line: 401, column: 5, scope: !719)
!797 = !DILocalVariable(name: "P1", scope: !719, file: !25, line: 403, type: !5)
!798 = !DILocation(line: 404, column: 23, scope: !719)
!799 = !DILocalVariable(name: "L", scope: !719, file: !25, line: 404, type: !5)
!800 = !DILocalVariable(name: "Mtmp", scope: !719, file: !25, line: 405, type: !801)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 49280, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 770)
!804 = !DILocation(line: 405, column: 14, scope: !719)
!805 = !DILocation(line: 420, column: 25, scope: !806)
!806 = distinct !DILexicalBlock(scope: !719, file: !25, line: 420, column: 9)
!807 = !DILocation(line: 420, column: 9, scope: !806)
!808 = !DILocation(line: 420, column: 65, scope: !806)
!809 = !DILocation(line: 427, column: 37, scope: !719)
!810 = !DILocation(line: 427, column: 5, scope: !719)
!811 = !DILocation(line: 429, column: 5, scope: !719)
!812 = !DILocation(line: 437, column: 16, scope: !719)
!813 = !DILocation(line: 437, column: 5, scope: !719)
!814 = !DILocation(line: 438, column: 59, scope: !719)
!815 = !DILocalVariable(name: "ctrbyte", scope: !719, file: !25, line: 375, type: !18)
!816 = !DILocation(line: 440, column: 5, scope: !719)
!817 = !DILocation(line: 442, column: 5, scope: !719)
!818 = !DILocation(line: 445, column: 18, scope: !719)
!819 = !DILocation(line: 447, column: 9, scope: !719)
!820 = !DILocalVariable(name: "i", scope: !821, file: !25, line: 451, type: !45)
!821 = distinct !DILexicalBlock(scope: !719, file: !25, line: 451, column: 9)
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
!838 = !DILocation(line: 455, column: 9, scope: !719)
!839 = !DILocation(line: 457, column: 9, scope: !719)
!840 = !DILocation(line: 458, column: 9, scope: !719)
!841 = !DILocalVariable(name: "i", scope: !842, file: !25, line: 460, type: !45)
!842 = distinct !DILexicalBlock(scope: !719, file: !25, line: 460, column: 9)
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
!858 = !DILocation(line: 465, column: 18, scope: !719)
!859 = !DILocation(line: 465, column: 9, scope: !719)
!860 = !DILocation(line: 469, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !719, file: !25, line: 469, column: 13)
!862 = !DILocation(line: 472, column: 13, scope: !863)
!863 = distinct !DILexicalBlock(scope: !861, file: !25, line: 471, column: 16)
!864 = !DILocation(line: 473, column: 13, scope: !863)
!865 = !DILocalVariable(name: "i", scope: !866, file: !25, line: 477, type: !45)
!866 = distinct !DILexicalBlock(scope: !719, file: !25, line: 477, column: 5)
!867 = !DILocation(line: 0, scope: !866)
!868 = !DILocation(line: 477, column: 10, scope: !866)
!869 = !DILocation(line: 477, scope: !866)
!870 = !DILocation(line: 477, column: 23, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !25, line: 477, column: 5)
!872 = !DILocation(line: 477, column: 5, scope: !866)
!873 = !DILocation(line: 478, column: 23, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !25, line: 477, column: 44)
!875 = !DILocation(line: 478, column: 19, scope: !874)
!876 = !DILocalVariable(name: "vi", scope: !719, file: !25, line: 376, type: !18)
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
!894 = !DILocation(line: 483, column: 5, scope: !719)
!895 = !DILocation(line: 485, column: 34, scope: !719)
!896 = !DILocation(line: 485, column: 5, scope: !719)
!897 = !DILocation(line: 486, column: 13, scope: !719)
!898 = !DILocation(line: 486, column: 5, scope: !719)
!899 = !DILabel(scope: !719, name: "err", file: !25, line: 488)
!900 = !DILocation(line: 488, column: 1, scope: !719)
!901 = !DILocation(line: 489, column: 5, scope: !719)
!902 = !DILocation(line: 490, column: 5, scope: !719)
!903 = !DILocation(line: 491, column: 5, scope: !719)
!904 = !DILocation(line: 492, column: 5, scope: !719)
!905 = !DILocation(line: 493, column: 23, scope: !719)
!906 = !DILocation(line: 493, column: 5, scope: !719)
!907 = !DILocation(line: 494, column: 5, scope: !719)
!908 = !DILocation(line: 495, column: 5, scope: !719)
!909 = !DILocation(line: 496, column: 5, scope: !719)
!910 = !DILocation(line: 497, column: 5, scope: !719)
!911 = !DILocation(line: 498, column: 5, scope: !719)
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
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 532224, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 8316)
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
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 100352, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 1568)
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
!1872 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !720, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1873 = !DILocalVariable(name: "p", arg: 1, scope: !1872, file: !25, line: 501, type: !194)
!1874 = !DILocation(line: 0, scope: !1872)
!1875 = !DILocalVariable(name: "sm", arg: 2, scope: !1872, file: !25, line: 501, type: !18)
!1876 = !DILocalVariable(name: "smlen", arg: 3, scope: !1872, file: !25, line: 502, type: !722)
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
!1902 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_open", scope: !25, file: !25, line: 519, type: !720, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1903 = !DILocalVariable(name: "p", arg: 1, scope: !1902, file: !25, line: 519, type: !194)
!1904 = !DILocation(line: 0, scope: !1902)
!1905 = !DILocalVariable(name: "m", arg: 2, scope: !1902, file: !25, line: 519, type: !18)
!1906 = !DILocalVariable(name: "mlen", arg: 3, scope: !1902, file: !25, line: 520, type: !722)
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
!1926 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1927, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!45, !194, !49, !15, !49, !49}
!1929 = !DILocalVariable(name: "p", arg: 1, scope: !1926, file: !25, line: 616, type: !194)
!1930 = !DILocation(line: 0, scope: !1926)
!1931 = !DILocalVariable(name: "m", arg: 2, scope: !1926, file: !25, line: 616, type: !49)
!1932 = !DILocalVariable(name: "mlen", arg: 3, scope: !1926, file: !25, line: 617, type: !15)
!1933 = !DILocalVariable(name: "sig", arg: 4, scope: !1926, file: !25, line: 617, type: !49)
!1934 = !DILocalVariable(name: "cpk", arg: 5, scope: !1926, file: !25, line: 618, type: !49)
!1935 = !DILocalVariable(name: "tEnc", scope: !1926, file: !25, line: 619, type: !732)
!1936 = !DILocation(line: 619, column: 19, scope: !1926)
!1937 = !DILocalVariable(name: "t", scope: !1926, file: !25, line: 620, type: !737)
!1938 = !DILocation(line: 620, column: 19, scope: !1926)
!1939 = !DILocalVariable(name: "y", scope: !1926, file: !25, line: 621, type: !1940)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1728, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 216)
!1943 = !DILocation(line: 621, column: 19, scope: !1926)
!1944 = !DILocalVariable(name: "s", scope: !1926, file: !25, line: 622, type: !761)
!1945 = !DILocation(line: 622, column: 19, scope: !1926)
!1946 = !DILocalVariable(name: "pk", scope: !1926, file: !25, line: 623, type: !143)
!1947 = !DILocation(line: 623, column: 14, scope: !1926)
!1948 = !DILocalVariable(name: "tmp", scope: !1926, file: !25, line: 624, type: !1949)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 80)
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
!1979 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !623, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 54208, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 847)
!2003 = !DILocation(line: 289, column: 14, scope: !1989)
!2004 = !DILocation(line: 291, column: 5, scope: !1989)
!2005 = !DILocalVariable(name: "zero", scope: !1989, file: !25, line: 292, type: !737)
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
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 581504, elements: !2021)
!2021 = !{!2022}
!2022 = !DISubrange(count: 9086)
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
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 9304064, elements: !2044)
!2044 = !{!2045}
!2045 = !DISubrange(count: 145376)
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
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 867328, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 13552)
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
!2421 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_m_upper", scope: !58, file: !58, line: 14, type: !2422, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
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
!2545 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2546, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
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
!2823 = !DILocalVariable(name: "_pivot_row", scope: !2815, file: !2816, line: 62, type: !599, align: 256)
!2824 = !DILocation(line: 62, column: 27, scope: !2815)
!2825 = !DILocalVariable(name: "_pivot_row2", scope: !2815, file: !2816, line: 63, type: !599, align: 256)
!2826 = !DILocation(line: 63, column: 27, scope: !2815)
!2827 = !DILocalVariable(name: "packed_A", scope: !2815, file: !2816, line: 64, type: !2828, align: 256)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 48384, elements: !2829)
!2829 = !{!2830}
!2830 = !DISubrange(count: 756)
!2831 = !DILocation(line: 64, column: 27, scope: !2815)
!2832 = !DILocation(line: 66, column: 26, scope: !2815)
!2833 = !DILocation(line: 66, column: 32, scope: !2815)
!2834 = !DILocalVariable(name: "row_len", scope: !2815, file: !2816, line: 66, type: !45)
!2835 = !DILocalVariable(name: "i", scope: !2836, file: !2816, line: 69, type: !45)
!2836 = distinct !DILexicalBlock(scope: !2815, file: !2816, line: 69, column: 5)
!2837 = !DILocation(line: 0, scope: !2836)
!2838 = !DILocation(line: 69, column: 10, scope: !2836)
!2839 = !DILocation(line: 69, scope: !2836)
!2840 = !DILocation(line: 69, column: 23, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2836, file: !2816, line: 69, column: 5)
!2842 = !DILocation(line: 69, column: 5, scope: !2836)
!2843 = !DILocation(line: 77, column: 5, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2815, file: !2816, line: 77, column: 5)
!2845 = !DILocation(line: 70, column: 29, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2841, file: !2816, line: 69, column: 37)
!2847 = !DILocation(line: 70, column: 25, scope: !2846)
!2848 = !DILocation(line: 70, column: 51, scope: !2846)
!2849 = !DILocation(line: 70, column: 47, scope: !2846)
!2850 = !DILocation(line: 70, column: 9, scope: !2846)
!2851 = !DILocation(line: 69, column: 33, scope: !2841)
!2852 = !DILocation(line: 69, column: 5, scope: !2841)
!2853 = distinct !{!2853, !2842, !2854, !323}
!2854 = !DILocation(line: 71, column: 5, scope: !2836)
!2855 = !DILocation(line: 77, scope: !2844)
!2856 = !DILocalVariable(name: "pivot_row", scope: !2815, file: !2816, line: 76, type: !45)
!2857 = !DILocalVariable(name: "pivot_col", scope: !2844, file: !2816, line: 77, type: !45)
!2858 = !DILocation(line: 0, scope: !2844)
!2859 = !DILocation(line: 77, column: 39, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2844, file: !2816, line: 77, column: 5)
!2861 = !DILocation(line: 138, column: 5, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2815, file: !2816, line: 138, column: 5)
!2863 = !DILocation(line: 79, column: 37, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !2816, line: 77, column: 61)
!2865 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2864, file: !2816, line: 79, type: !45)
!2866 = !DILocation(line: 0, scope: !2864)
!2867 = !DILocation(line: 80, column: 37, scope: !2864)
!2868 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2864, file: !2816, line: 80, type: !45)
!2869 = !DILocalVariable(name: "i", scope: !2870, file: !2816, line: 85, type: !45)
!2870 = distinct !DILexicalBlock(scope: !2864, file: !2816, line: 85, column: 9)
!2871 = !DILocation(line: 0, scope: !2870)
!2872 = !DILocation(line: 85, column: 14, scope: !2870)
!2873 = !DILocation(line: 85, scope: !2870)
!2874 = !DILocation(line: 85, column: 27, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !2816, line: 85, column: 9)
!2876 = !DILocation(line: 85, column: 9, scope: !2870)
!2877 = !DILocation(line: 93, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2864, file: !2816, line: 93, column: 9)
!2879 = !DILocation(line: 86, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2875, file: !2816, line: 85, column: 43)
!2881 = !DILocation(line: 86, column: 27, scope: !2880)
!2882 = !DILocation(line: 87, column: 13, scope: !2880)
!2883 = !DILocation(line: 87, column: 28, scope: !2880)
!2884 = !DILocation(line: 85, column: 39, scope: !2875)
!2885 = !DILocation(line: 85, column: 9, scope: !2875)
!2886 = distinct !{!2886, !2876, !2887, !323}
!2887 = !DILocation(line: 88, column: 9, scope: !2870)
!2888 = !DILocation(line: 0, scope: !2878)
!2889 = !DILocalVariable(name: "row", scope: !2878, file: !2816, line: 93, type: !45)
!2890 = !DILocalVariable(name: "pivot", scope: !2864, file: !2816, line: 91, type: !14)
!2891 = !DILocalVariable(name: "pivot_is_zero", scope: !2864, file: !2816, line: 92, type: !6)
!2892 = !DILocation(line: 94, column: 24, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2878, file: !2816, line: 93, column: 9)
!2894 = !DILocation(line: 94, column: 21, scope: !2893)
!2895 = !DILocation(line: 96, column: 38, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !2816, line: 94, column: 80)
!2897 = !DILocation(line: 96, column: 37, scope: !2896)
!2898 = !DILocalVariable(name: "is_pivot_row", scope: !2896, file: !2816, line: 96, type: !6)
!2899 = !DILocation(line: 0, scope: !2896)
!2900 = !DILocation(line: 97, column: 40, scope: !2896)
!2901 = !DILocalVariable(name: "below_pivot_row", scope: !2896, file: !2816, line: 97, type: !6)
!2902 = !DILocalVariable(name: "j", scope: !2903, file: !2816, line: 99, type: !45)
!2903 = distinct !DILexicalBlock(scope: !2896, file: !2816, line: 99, column: 13)
!2904 = !DILocation(line: 0, scope: !2903)
!2905 = !DILocation(line: 99, column: 18, scope: !2903)
!2906 = !DILocation(line: 99, scope: !2903)
!2907 = !DILocation(line: 99, column: 31, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !2816, line: 99, column: 13)
!2909 = !DILocation(line: 99, column: 13, scope: !2903)
!2910 = !DILocation(line: 100, column: 67, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2908, file: !2816, line: 99, column: 47)
!2912 = !DILocation(line: 100, column: 48, scope: !2911)
!2913 = !DILocation(line: 101, column: 47, scope: !2911)
!2914 = !DILocation(line: 101, column: 57, scope: !2911)
!2915 = !DILocation(line: 101, column: 34, scope: !2911)
!2916 = !DILocation(line: 100, column: 85, scope: !2911)
!2917 = !DILocation(line: 100, column: 17, scope: !2911)
!2918 = !DILocation(line: 100, column: 31, scope: !2911)
!2919 = !DILocation(line: 99, column: 43, scope: !2908)
!2920 = !DILocation(line: 99, column: 13, scope: !2908)
!2921 = distinct !{!2921, !2909, !2922, !323}
!2922 = !DILocation(line: 102, column: 13, scope: !2903)
!2923 = !DILocation(line: 103, column: 21, scope: !2896)
!2924 = !DILocation(line: 104, column: 44, scope: !2896)
!2925 = !DILocation(line: 104, column: 30, scope: !2896)
!2926 = !DILocation(line: 104, column: 29, scope: !2896)
!2927 = !DILocation(line: 94, column: 76, scope: !2893)
!2928 = !DILocation(line: 93, column: 9, scope: !2893)
!2929 = distinct !{!2929, !2877, !2930, !323}
!2930 = !DILocation(line: 105, column: 9, scope: !2878)
!2931 = !DILocation(line: 108, column: 19, scope: !2864)
!2932 = !DILocalVariable(name: "inverse", scope: !2815, file: !2816, line: 75, type: !14)
!2933 = !DILocation(line: 109, column: 9, scope: !2864)
!2934 = !DILocalVariable(name: "row", scope: !2935, file: !2816, line: 113, type: !45)
!2935 = distinct !DILexicalBlock(scope: !2864, file: !2816, line: 113, column: 9)
!2936 = !DILocation(line: 0, scope: !2935)
!2937 = !DILocation(line: 113, column: 14, scope: !2935)
!2938 = !DILocation(line: 113, scope: !2935)
!2939 = !DILocation(line: 113, column: 51, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2935, file: !2816, line: 113, column: 9)
!2941 = !DILocation(line: 113, column: 9, scope: !2935)
!2942 = !DILocation(line: 124, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2864, file: !2816, line: 124, column: 9)
!2944 = !DILocation(line: 114, column: 33, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !2816, line: 113, column: 84)
!2946 = !DILocation(line: 114, column: 63, scope: !2945)
!2947 = !DILocalVariable(name: "do_copy", scope: !2945, file: !2816, line: 114, type: !6)
!2948 = !DILocation(line: 0, scope: !2945)
!2949 = !DILocalVariable(name: "do_not_copy", scope: !2945, file: !2816, line: 115, type: !6)
!2950 = !DILocalVariable(name: "col", scope: !2951, file: !2816, line: 116, type: !45)
!2951 = distinct !DILexicalBlock(scope: !2945, file: !2816, line: 116, column: 13)
!2952 = !DILocation(line: 0, scope: !2951)
!2953 = !DILocation(line: 116, column: 18, scope: !2951)
!2954 = !DILocation(line: 116, scope: !2951)
!2955 = !DILocation(line: 116, column: 35, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !2816, line: 116, column: 13)
!2957 = !DILocation(line: 116, column: 13, scope: !2951)
!2958 = !DILocation(line: 118, column: 49, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !2816, line: 116, column: 53)
!2960 = !DILocation(line: 118, column: 59, scope: !2959)
!2961 = !DILocation(line: 118, column: 36, scope: !2959)
!2962 = !DILocation(line: 118, column: 34, scope: !2959)
!2963 = !DILocation(line: 119, column: 32, scope: !2959)
!2964 = !DILocation(line: 119, column: 30, scope: !2959)
!2965 = !DILocation(line: 118, column: 67, scope: !2959)
!2966 = !DILocation(line: 117, column: 30, scope: !2959)
!2967 = !DILocation(line: 117, column: 40, scope: !2959)
!2968 = !DILocation(line: 117, column: 17, scope: !2959)
!2969 = !DILocation(line: 117, column: 47, scope: !2959)
!2970 = !DILocation(line: 116, column: 49, scope: !2956)
!2971 = !DILocation(line: 116, column: 13, scope: !2956)
!2972 = distinct !{!2972, !2957, !2973, !323}
!2973 = !DILocation(line: 120, column: 13, scope: !2951)
!2974 = !DILocation(line: 113, column: 80, scope: !2940)
!2975 = !DILocation(line: 113, column: 9, scope: !2940)
!2976 = distinct !{!2976, !2941, !2977, !323}
!2977 = !DILocation(line: 121, column: 9, scope: !2935)
!2978 = !DILocation(line: 124, scope: !2943)
!2979 = !DILocalVariable(name: "row", scope: !2943, file: !2816, line: 124, type: !45)
!2980 = !DILocation(line: 0, scope: !2943)
!2981 = !DILocation(line: 124, column: 51, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2943, file: !2816, line: 124, column: 9)
!2983 = !DILocation(line: 125, column: 46, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2982, file: !2816, line: 124, column: 67)
!2985 = !DILocalVariable(name: "below_pivot", scope: !2984, file: !2816, line: 125, type: !14)
!2986 = !DILocation(line: 0, scope: !2984)
!2987 = !DILocation(line: 126, column: 74, scope: !2984)
!2988 = !DILocation(line: 126, column: 68, scope: !2984)
!2989 = !DILocation(line: 126, column: 41, scope: !2984)
!2990 = !DILocalVariable(name: "elt_to_elim", scope: !2984, file: !2816, line: 126, type: !14)
!2991 = !DILocation(line: 128, column: 63, scope: !2984)
!2992 = !DILocation(line: 129, column: 52, scope: !2984)
!2993 = !DILocation(line: 129, column: 46, scope: !2984)
!2994 = !DILocation(line: 128, column: 13, scope: !2984)
!2995 = !DILocation(line: 124, column: 63, scope: !2982)
!2996 = !DILocation(line: 124, column: 9, scope: !2982)
!2997 = distinct !{!2997, !2942, !2998, !323}
!2998 = !DILocation(line: 130, column: 9, scope: !2943)
!2999 = !DILocation(line: 132, column: 19, scope: !2864)
!3000 = !DILocation(line: 77, column: 57, scope: !2860)
!3001 = !DILocation(line: 77, column: 5, scope: !2860)
!3002 = distinct !{!3002, !2843, !3003, !323}
!3003 = !DILocation(line: 133, column: 5, scope: !2844)
!3004 = !DILocation(line: 138, scope: !2862)
!3005 = !DILocalVariable(name: "i", scope: !2862, file: !2816, line: 138, type: !45)
!3006 = !DILocation(line: 0, scope: !2862)
!3007 = !DILocation(line: 138, column: 23, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2862, file: !2816, line: 138, column: 5)
!3009 = !DILocation(line: 139, column: 47, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3008, file: !2816, line: 138, column: 37)
!3011 = !DILocation(line: 139, column: 43, scope: !3010)
!3012 = !DILocation(line: 139, column: 9, scope: !3010)
!3013 = !DILocalVariable(name: "j", scope: !3014, file: !2816, line: 140, type: !45)
!3014 = distinct !DILexicalBlock(scope: !3010, file: !2816, line: 140, column: 9)
!3015 = !DILocation(line: 0, scope: !3014)
!3016 = !DILocation(line: 140, column: 14, scope: !3014)
!3017 = !DILocation(line: 140, scope: !3014)
!3018 = !DILocation(line: 140, column: 27, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3014, file: !2816, line: 140, column: 9)
!3020 = !DILocation(line: 140, column: 9, scope: !3014)
!3021 = !DILocation(line: 141, column: 32, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !2816, line: 140, column: 41)
!3023 = !DILocation(line: 141, column: 17, scope: !3022)
!3024 = !DILocation(line: 141, column: 13, scope: !3022)
!3025 = !DILocation(line: 141, column: 30, scope: !3022)
!3026 = !DILocation(line: 140, column: 37, scope: !3019)
!3027 = !DILocation(line: 140, column: 9, scope: !3019)
!3028 = distinct !{!3028, !3020, !3029, !323}
!3029 = !DILocation(line: 142, column: 9, scope: !3014)
!3030 = !DILocation(line: 138, column: 33, scope: !3008)
!3031 = !DILocation(line: 138, column: 5, scope: !3008)
!3032 = distinct !{!3032, !2861, !3033, !323}
!3033 = !DILocation(line: 143, column: 5, scope: !2862)
!3034 = !DILocation(line: 145, column: 5, scope: !2815)
!3035 = !DILocation(line: 146, column: 5, scope: !2815)
!3036 = !DILocation(line: 147, column: 5, scope: !2815)
!3037 = !DILocation(line: 148, column: 5, scope: !2815)
!3038 = !DILocation(line: 149, column: 1, scope: !2815)
!3039 = distinct !DISubprogram(name: "ct_compare_8", scope: !3040, file: !3040, line: 51, type: !1554, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3040 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3041 = !DILocalVariable(name: "a", arg: 1, scope: !3039, file: !3040, line: 51, type: !14)
!3042 = !DILocation(line: 0, scope: !3039)
!3043 = !DILocalVariable(name: "b", arg: 2, scope: !3039, file: !3040, line: 51, type: !14)
!3044 = !DILocation(line: 52, column: 42, scope: !3039)
!3045 = !DILocation(line: 52, column: 13, scope: !3039)
!3046 = !DILocation(line: 52, column: 71, scope: !3039)
!3047 = !DILocation(line: 52, column: 69, scope: !3039)
!3048 = !DILocation(line: 52, column: 5, scope: !3039)
!3049 = distinct !DISubprogram(name: "mul_fx8", scope: !513, file: !513, line: 28, type: !3050, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!6, !14, !6}
!3052 = !DILocalVariable(name: "a", arg: 1, scope: !3049, file: !513, line: 28, type: !14)
!3053 = !DILocation(line: 0, scope: !3049)
!3054 = !DILocalVariable(name: "b", arg: 2, scope: !3049, file: !513, line: 28, type: !6)
!3055 = !DILocation(line: 31, column: 13, scope: !3049)
!3056 = !DILocation(line: 31, column: 10, scope: !3049)
!3057 = !DILocation(line: 31, column: 17, scope: !3049)
!3058 = !DILocalVariable(name: "p", scope: !3049, file: !513, line: 30, type: !6)
!3059 = !DILocation(line: 32, column: 13, scope: !3049)
!3060 = !DILocation(line: 32, column: 10, scope: !3049)
!3061 = !DILocation(line: 32, column: 17, scope: !3049)
!3062 = !DILocation(line: 32, column: 7, scope: !3049)
!3063 = !DILocation(line: 33, column: 13, scope: !3049)
!3064 = !DILocation(line: 33, column: 10, scope: !3049)
!3065 = !DILocation(line: 33, column: 17, scope: !3049)
!3066 = !DILocation(line: 33, column: 7, scope: !3049)
!3067 = !DILocation(line: 34, column: 13, scope: !3049)
!3068 = !DILocation(line: 34, column: 10, scope: !3049)
!3069 = !DILocation(line: 34, column: 17, scope: !3049)
!3070 = !DILocation(line: 34, column: 7, scope: !3049)
!3071 = !DILocalVariable(name: "top_p", scope: !3049, file: !513, line: 37, type: !6)
!3072 = !DILocation(line: 38, column: 32, scope: !3049)
!3073 = !DILocation(line: 38, column: 47, scope: !3049)
!3074 = !DILocation(line: 38, column: 38, scope: !3049)
!3075 = !DILocation(line: 38, column: 54, scope: !3049)
!3076 = !DILocalVariable(name: "out", scope: !3049, file: !513, line: 38, type: !6)
!3077 = !DILocation(line: 39, column: 5, scope: !3049)
!3078 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2816, file: !2816, line: 24, type: !3079, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !49, !5, !45}
!3081 = !DILocalVariable(name: "in", arg: 1, scope: !3078, file: !2816, line: 24, type: !49)
!3082 = !DILocation(line: 0, scope: !3078)
!3083 = !DILocalVariable(name: "out", arg: 2, scope: !3078, file: !2816, line: 24, type: !5)
!3084 = !DILocalVariable(name: "ncols", arg: 3, scope: !3078, file: !2816, line: 24, type: !45)
!3085 = !DILocalVariable(name: "out8", scope: !3078, file: !2816, line: 26, type: !18)
!3086 = !DILocalVariable(name: "i", scope: !3078, file: !2816, line: 25, type: !45)
!3087 = !DILocation(line: 27, column: 9, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3078, file: !2816, line: 27, column: 5)
!3089 = !DILocation(line: 27, scope: !3088)
!3090 = !DILocation(line: 27, column: 17, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !2816, line: 27, column: 5)
!3092 = !DILocation(line: 27, column: 20, scope: !3091)
!3093 = !DILocation(line: 27, column: 5, scope: !3088)
!3094 = !DILocation(line: 31, column: 23, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !2816, line: 27, column: 36)
!3096 = !DILocation(line: 31, column: 44, scope: !3095)
!3097 = !DILocation(line: 31, column: 40, scope: !3095)
!3098 = !DILocation(line: 31, column: 48, scope: !3095)
!3099 = !DILocation(line: 31, column: 37, scope: !3095)
!3100 = !DILocation(line: 31, column: 15, scope: !3095)
!3101 = !DILocation(line: 31, column: 9, scope: !3095)
!3102 = !DILocation(line: 31, column: 20, scope: !3095)
!3103 = !DILocation(line: 27, column: 31, scope: !3091)
!3104 = !DILocation(line: 27, column: 5, scope: !3091)
!3105 = distinct !{!3105, !3093, !3106, !323}
!3106 = !DILocation(line: 33, column: 5, scope: !3088)
!3107 = !DILocation(line: 34, column: 19, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3078, file: !2816, line: 34, column: 9)
!3109 = !DILocation(line: 38, column: 23, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3108, file: !2816, line: 34, column: 24)
!3111 = !DILocation(line: 38, column: 15, scope: !3110)
!3112 = !DILocation(line: 38, column: 9, scope: !3110)
!3113 = !DILocation(line: 38, column: 20, scope: !3110)
!3114 = !DILocation(line: 40, column: 5, scope: !3110)
!3115 = !DILocation(line: 41, column: 1, scope: !3078)
!3116 = distinct !DISubprogram(name: "ct_compare_64", scope: !3040, file: !3040, line: 46, type: !3117, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!6, !45, !45}
!3119 = !DILocalVariable(name: "a", arg: 1, scope: !3116, file: !3040, line: 46, type: !45)
!3120 = !DILocation(line: 0, scope: !3116)
!3121 = !DILocalVariable(name: "b", arg: 2, scope: !3116, file: !3040, line: 46, type: !45)
!3122 = !DILocation(line: 47, column: 38, scope: !3116)
!3123 = !DILocation(line: 47, column: 44, scope: !3116)
!3124 = !DILocation(line: 47, column: 73, scope: !3116)
!3125 = !DILocation(line: 47, column: 71, scope: !3116)
!3126 = !DILocation(line: 47, column: 5, scope: !3116)
!3127 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3040, file: !3040, line: 35, type: !3117, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3128 = !DILocalVariable(name: "a", arg: 1, scope: !3127, file: !3040, line: 35, type: !45)
!3129 = !DILocation(line: 0, scope: !3127)
!3130 = !DILocalVariable(name: "b", arg: 2, scope: !3127, file: !3040, line: 35, type: !45)
!3131 = !DILocalVariable(name: "diff", scope: !3127, file: !3040, line: 36, type: !46)
!3132 = !DILocation(line: 37, column: 30, scope: !3127)
!3133 = !DILocation(line: 37, column: 59, scope: !3127)
!3134 = !DILocation(line: 37, column: 57, scope: !3127)
!3135 = !DILocation(line: 37, column: 5, scope: !3127)
!3136 = distinct !DISubprogram(name: "m_extract_element", scope: !2816, file: !2816, line: 16, type: !3137, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!14, !346, !45}
!3139 = !DILocalVariable(name: "in", arg: 1, scope: !3136, file: !2816, line: 16, type: !346)
!3140 = !DILocation(line: 0, scope: !3136)
!3141 = !DILocalVariable(name: "index", arg: 2, scope: !3136, file: !2816, line: 16, type: !45)
!3142 = !DILocation(line: 17, column: 27, scope: !3136)
!3143 = !DILocalVariable(name: "leg", scope: !3136, file: !2816, line: 17, type: !259)
!3144 = !DILocation(line: 18, column: 30, scope: !3136)
!3145 = !DILocalVariable(name: "offset", scope: !3136, file: !2816, line: 18, type: !259)
!3146 = !DILocation(line: 20, column: 13, scope: !3136)
!3147 = !DILocation(line: 20, column: 31, scope: !3136)
!3148 = !DILocation(line: 20, column: 21, scope: !3136)
!3149 = !DILocation(line: 20, column: 12, scope: !3136)
!3150 = !DILocation(line: 20, column: 5, scope: !3136)
!3151 = distinct !DISubprogram(name: "inverse_f", scope: !513, file: !513, line: 57, type: !3152, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!14, !14}
!3154 = !DILocalVariable(name: "a", arg: 1, scope: !3151, file: !513, line: 57, type: !14)
!3155 = !DILocation(line: 0, scope: !3151)
!3156 = !DILocation(line: 61, column: 24, scope: !3151)
!3157 = !DILocalVariable(name: "a2", scope: !3151, file: !513, line: 61, type: !14)
!3158 = !DILocation(line: 62, column: 24, scope: !3151)
!3159 = !DILocalVariable(name: "a4", scope: !3151, file: !513, line: 62, type: !14)
!3160 = !DILocation(line: 63, column: 24, scope: !3151)
!3161 = !DILocalVariable(name: "a8", scope: !3151, file: !513, line: 63, type: !14)
!3162 = !DILocation(line: 64, column: 24, scope: !3151)
!3163 = !DILocalVariable(name: "a6", scope: !3151, file: !513, line: 64, type: !14)
!3164 = !DILocation(line: 65, column: 25, scope: !3151)
!3165 = !DILocalVariable(name: "a14", scope: !3151, file: !513, line: 65, type: !14)
!3166 = !DILocation(line: 67, column: 5, scope: !3151)
!3167 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3040, file: !3040, line: 94, type: !3168, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !259, !346, !14, !5}
!3170 = !DILocalVariable(name: "legs", arg: 1, scope: !3167, file: !3040, line: 94, type: !259)
!3171 = !DILocation(line: 0, scope: !3167)
!3172 = !DILocalVariable(name: "in", arg: 2, scope: !3167, file: !3040, line: 94, type: !346)
!3173 = !DILocalVariable(name: "a", arg: 3, scope: !3167, file: !3040, line: 94, type: !14)
!3174 = !DILocalVariable(name: "acc", arg: 4, scope: !3167, file: !3040, line: 94, type: !5)
!3175 = !DILocation(line: 95, column: 20, scope: !3167)
!3176 = !DILocalVariable(name: "tab", scope: !3167, file: !3040, line: 95, type: !19)
!3177 = !DILocalVariable(name: "lsb_ask", scope: !3167, file: !3040, line: 97, type: !6)
!3178 = !DILocalVariable(name: "i", scope: !3179, file: !3040, line: 99, type: !45)
!3179 = distinct !DILexicalBlock(scope: !3167, file: !3040, line: 99, column: 5)
!3180 = !DILocation(line: 0, scope: !3179)
!3181 = !DILocation(line: 99, column: 9, scope: !3179)
!3182 = !DILocation(line: 99, scope: !3179)
!3183 = !DILocation(line: 99, column: 20, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3179, file: !3040, line: 99, column: 5)
!3185 = !DILocation(line: 99, column: 5, scope: !3179)
!3186 = !DILocation(line: 100, column: 21, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !3040, line: 99, column: 32)
!3188 = !DILocation(line: 100, column: 33, scope: !3187)
!3189 = !DILocation(line: 100, column: 51, scope: !3187)
!3190 = !DILocation(line: 100, column: 46, scope: !3187)
!3191 = !DILocation(line: 100, column: 44, scope: !3187)
!3192 = !DILocation(line: 101, column: 27, scope: !3187)
!3193 = !DILocation(line: 101, column: 33, scope: !3187)
!3194 = !DILocation(line: 101, column: 52, scope: !3187)
!3195 = !DILocation(line: 101, column: 59, scope: !3187)
!3196 = !DILocation(line: 101, column: 46, scope: !3187)
!3197 = !DILocation(line: 101, column: 44, scope: !3187)
!3198 = !DILocation(line: 101, column: 17, scope: !3187)
!3199 = !DILocation(line: 102, column: 21, scope: !3187)
!3200 = !DILocation(line: 102, column: 27, scope: !3187)
!3201 = !DILocation(line: 102, column: 33, scope: !3187)
!3202 = !DILocation(line: 102, column: 52, scope: !3187)
!3203 = !DILocation(line: 102, column: 59, scope: !3187)
!3204 = !DILocation(line: 102, column: 46, scope: !3187)
!3205 = !DILocation(line: 102, column: 44, scope: !3187)
!3206 = !DILocation(line: 102, column: 17, scope: !3187)
!3207 = !DILocation(line: 103, column: 21, scope: !3187)
!3208 = !DILocation(line: 103, column: 27, scope: !3187)
!3209 = !DILocation(line: 103, column: 33, scope: !3187)
!3210 = !DILocation(line: 103, column: 52, scope: !3187)
!3211 = !DILocation(line: 103, column: 59, scope: !3187)
!3212 = !DILocation(line: 103, column: 46, scope: !3187)
!3213 = !DILocation(line: 103, column: 44, scope: !3187)
!3214 = !DILocation(line: 103, column: 17, scope: !3187)
!3215 = !DILocation(line: 100, column: 9, scope: !3187)
!3216 = !DILocation(line: 100, column: 16, scope: !3187)
!3217 = !DILocation(line: 99, column: 29, scope: !3184)
!3218 = !DILocation(line: 99, column: 5, scope: !3184)
!3219 = distinct !{!3219, !3185, !3220, !323}
!3220 = !DILocation(line: 104, column: 5, scope: !3179)
!3221 = !DILocation(line: 105, column: 1, scope: !3167)
!3222 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2816, file: !2816, line: 44, type: !3223, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !45, !346, !18}
!3225 = !DILocalVariable(name: "legs", arg: 1, scope: !3222, file: !2816, line: 44, type: !45)
!3226 = !DILocation(line: 0, scope: !3222)
!3227 = !DILocalVariable(name: "in", arg: 2, scope: !3222, file: !2816, line: 44, type: !346)
!3228 = !DILocalVariable(name: "out", arg: 3, scope: !3222, file: !2816, line: 44, type: !18)
!3229 = !DILocalVariable(name: "in8", scope: !3222, file: !2816, line: 45, type: !49)
!3230 = !DILocalVariable(name: "i", scope: !3231, file: !2816, line: 46, type: !45)
!3231 = distinct !DILexicalBlock(scope: !3222, file: !2816, line: 46, column: 5)
!3232 = !DILocation(line: 0, scope: !3231)
!3233 = !DILocation(line: 46, column: 9, scope: !3231)
!3234 = !DILocation(line: 46, scope: !3231)
!3235 = !DILocation(line: 46, column: 29, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3231, file: !2816, line: 46, column: 5)
!3237 = !DILocation(line: 46, column: 22, scope: !3236)
!3238 = !DILocation(line: 46, column: 5, scope: !3231)
!3239 = !DILocation(line: 51, column: 26, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3236, file: !2816, line: 46, column: 42)
!3241 = !DILocation(line: 51, column: 21, scope: !3240)
!3242 = !DILocation(line: 51, column: 31, scope: !3240)
!3243 = !DILocation(line: 51, column: 9, scope: !3240)
!3244 = !DILocation(line: 51, column: 18, scope: !3240)
!3245 = !DILocation(line: 52, column: 26, scope: !3240)
!3246 = !DILocation(line: 52, column: 21, scope: !3240)
!3247 = !DILocation(line: 52, column: 30, scope: !3240)
!3248 = !DILocation(line: 52, column: 14, scope: !3240)
!3249 = !DILocation(line: 52, column: 9, scope: !3240)
!3250 = !DILocation(line: 52, column: 18, scope: !3240)
!3251 = !DILocation(line: 46, column: 37, scope: !3236)
!3252 = !DILocation(line: 46, column: 5, scope: !3236)
!3253 = distinct !{!3253, !3238, !3254, !323}
!3254 = !DILocation(line: 54, column: 5, scope: !3231)
!3255 = !DILocation(line: 55, column: 1, scope: !3222)
!3256 = distinct !DISubprogram(name: "mul_table", scope: !513, file: !513, line: 129, type: !514, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3257 = !DILocalVariable(name: "b", arg: 1, scope: !3256, file: !513, line: 129, type: !12)
!3258 = !DILocation(line: 0, scope: !3256)
!3259 = !DILocation(line: 130, column: 19, scope: !3256)
!3260 = !DILocation(line: 130, column: 33, scope: !3256)
!3261 = !DILocalVariable(name: "x", scope: !3256, file: !513, line: 130, type: !19)
!3262 = !DILocalVariable(name: "high_nibble_mask", scope: !3256, file: !513, line: 132, type: !19)
!3263 = !DILocation(line: 134, column: 28, scope: !3256)
!3264 = !DILocalVariable(name: "high_half", scope: !3256, file: !513, line: 134, type: !19)
!3265 = !DILocation(line: 135, column: 28, scope: !3256)
!3266 = !DILocation(line: 135, column: 47, scope: !3256)
!3267 = !DILocation(line: 135, column: 34, scope: !3256)
!3268 = !DILocation(line: 135, column: 5, scope: !3256)
!3269 = distinct !DISubprogram(name: "mul_f", scope: !513, file: !513, line: 9, type: !1554, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3270 = !DILocalVariable(name: "a", arg: 1, scope: !3269, file: !513, line: 9, type: !14)
!3271 = !DILocation(line: 0, scope: !3269)
!3272 = !DILocalVariable(name: "b", arg: 2, scope: !3269, file: !513, line: 9, type: !14)
!3273 = !DILocation(line: 14, column: 10, scope: !3269)
!3274 = !DILocation(line: 14, column: 7, scope: !3269)
!3275 = !DILocation(line: 17, column: 17, scope: !3269)
!3276 = !DILocalVariable(name: "p", scope: !3269, file: !513, line: 11, type: !14)
!3277 = !DILocation(line: 18, column: 13, scope: !3269)
!3278 = !DILocation(line: 18, column: 17, scope: !3269)
!3279 = !DILocation(line: 18, column: 7, scope: !3269)
!3280 = !DILocation(line: 19, column: 13, scope: !3269)
!3281 = !DILocation(line: 19, column: 17, scope: !3269)
!3282 = !DILocation(line: 19, column: 7, scope: !3269)
!3283 = !DILocation(line: 20, column: 13, scope: !3269)
!3284 = !DILocation(line: 20, column: 17, scope: !3269)
!3285 = !DILocation(line: 20, column: 7, scope: !3269)
!3286 = !DILocalVariable(name: "top_p", scope: !3269, file: !513, line: 23, type: !14)
!3287 = !DILocation(line: 24, column: 37, scope: !3269)
!3288 = !DILocation(line: 24, column: 52, scope: !3269)
!3289 = !DILocation(line: 24, column: 43, scope: !3269)
!3290 = !DILocation(line: 24, column: 59, scope: !3269)
!3291 = !DILocalVariable(name: "out", scope: !3269, file: !513, line: 24, type: !14)
!3292 = !DILocation(line: 25, column: 5, scope: !3269)
!3293 = distinct !DISubprogram(name: "lincomb", scope: !513, file: !513, line: 70, type: !1562, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3294 = !DILocalVariable(name: "a", arg: 1, scope: !3293, file: !513, line: 70, type: !49)
!3295 = !DILocation(line: 0, scope: !3293)
!3296 = !DILocalVariable(name: "b", arg: 2, scope: !3293, file: !513, line: 71, type: !49)
!3297 = !DILocalVariable(name: "n", arg: 3, scope: !3293, file: !513, line: 71, type: !45)
!3298 = !DILocalVariable(name: "m", arg: 4, scope: !3293, file: !513, line: 71, type: !45)
!3299 = !DILocalVariable(name: "ret", scope: !3293, file: !513, line: 72, type: !14)
!3300 = !DILocalVariable(name: "i", scope: !3301, file: !513, line: 73, type: !45)
!3301 = distinct !DILexicalBlock(scope: !3293, file: !513, line: 73, column: 5)
!3302 = !DILocation(line: 0, scope: !3301)
!3303 = !DILocation(line: 73, column: 10, scope: !3301)
!3304 = !DILocation(line: 73, scope: !3301)
!3305 = !DILocation(line: 73, column: 23, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3301, file: !513, line: 73, column: 5)
!3307 = !DILocation(line: 73, column: 5, scope: !3301)
!3308 = !DILocation(line: 74, column: 27, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3306, file: !513, line: 73, column: 41)
!3310 = !DILocation(line: 74, column: 33, scope: !3309)
!3311 = !DILocation(line: 74, column: 21, scope: !3309)
!3312 = !DILocation(line: 74, column: 15, scope: !3309)
!3313 = !DILocation(line: 73, column: 28, scope: !3306)
!3314 = !DILocation(line: 73, column: 35, scope: !3306)
!3315 = !DILocation(line: 73, column: 5, scope: !3306)
!3316 = distinct !{!3316, !3307, !3317, !323}
!3317 = !DILocation(line: 75, column: 5, scope: !3301)
!3318 = !DILocation(line: 76, column: 5, scope: !3293)
!3319 = distinct !DISubprogram(name: "add_f", scope: !513, file: !513, line: 43, type: !1554, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3320 = !DILocalVariable(name: "a", arg: 1, scope: !3319, file: !513, line: 43, type: !14)
!3321 = !DILocation(line: 0, scope: !3319)
!3322 = !DILocalVariable(name: "b", arg: 2, scope: !3319, file: !513, line: 43, type: !14)
!3323 = !DILocation(line: 44, column: 14, scope: !3319)
!3324 = !DILocation(line: 44, column: 5, scope: !3319)
!3325 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3326, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !3328}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3330)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3331)
!3331 = !{!3332}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3330, file: !71, line: 30, baseType: !5, size: 32)
!3333 = !DILocalVariable(name: "state", arg: 1, scope: !3325, file: !71, line: 688, type: !3328)
!3334 = !DILocation(line: 0, scope: !3325)
!3335 = !DILocation(line: 689, column: 18, scope: !3325)
!3336 = !DILocation(line: 689, column: 16, scope: !3325)
!3337 = !DILocation(line: 690, column: 20, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3325, file: !71, line: 690, column: 9)
!3339 = !DILocation(line: 691, column: 9, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !71, line: 690, column: 29)
!3341 = !DILocation(line: 692, column: 5, scope: !3340)
!3342 = !DILocation(line: 693, column: 28, scope: !3325)
!3343 = !DILocation(line: 693, column: 5, scope: !3325)
!3344 = !DILocation(line: 694, column: 1, scope: !3325)
!3345 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3346 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3345, file: !71, line: 580, type: !5)
!3347 = !DILocation(line: 0, scope: !3345)
!3348 = !DILocalVariable(name: "i", scope: !3345, file: !71, line: 581, type: !15)
!3349 = !DILocation(line: 583, column: 10, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3345, file: !71, line: 583, column: 5)
!3351 = !DILocation(line: 583, scope: !3350)
!3352 = !DILocation(line: 583, column: 19, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !71, line: 583, column: 5)
!3354 = !DILocation(line: 583, column: 5, scope: !3350)
!3355 = !DILocation(line: 584, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3353, file: !71, line: 583, column: 30)
!3357 = !DILocation(line: 584, column: 18, scope: !3356)
!3358 = !DILocation(line: 583, column: 25, scope: !3353)
!3359 = !DILocation(line: 583, column: 5, scope: !3353)
!3360 = distinct !{!3360, !3354, !3361, !323}
!3361 = !DILocation(line: 585, column: 5, scope: !3350)
!3362 = !DILocation(line: 586, column: 5, scope: !3345)
!3363 = !DILocation(line: 586, column: 15, scope: !3345)
!3364 = !DILocation(line: 587, column: 1, scope: !3345)
!3365 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3366, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{null, !3328, !3368, !15}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!3370 = !DILocalVariable(name: "state", arg: 1, scope: !3365, file: !71, line: 696, type: !3328)
!3371 = !DILocation(line: 0, scope: !3365)
!3372 = !DILocalVariable(name: "input", arg: 2, scope: !3365, file: !71, line: 696, type: !3368)
!3373 = !DILocalVariable(name: "inlen", arg: 3, scope: !3365, file: !71, line: 696, type: !15)
!3374 = !DILocation(line: 697, column: 30, scope: !3365)
!3375 = !DILocation(line: 697, column: 5, scope: !3365)
!3376 = !DILocation(line: 698, column: 1, scope: !3365)
!3377 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3378, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !5, !19, !3368, !15}
!3380 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3377, file: !71, line: 603, type: !5)
!3381 = !DILocation(line: 0, scope: !3377)
!3382 = !DILocalVariable(name: "r", arg: 2, scope: !3377, file: !71, line: 603, type: !19)
!3383 = !DILocalVariable(name: "m", arg: 3, scope: !3377, file: !71, line: 603, type: !3368)
!3384 = !DILocalVariable(name: "mlen", arg: 4, scope: !3377, file: !71, line: 604, type: !15)
!3385 = !DILocation(line: 608, column: 5, scope: !3377)
!3386 = !DILocation(line: 608, column: 12, scope: !3377)
!3387 = !DILocation(line: 608, column: 19, scope: !3377)
!3388 = !DILocation(line: 608, column: 17, scope: !3377)
!3389 = !DILocation(line: 608, column: 32, scope: !3377)
!3390 = !DILocation(line: 608, column: 29, scope: !3377)
!3391 = !DILocation(line: 609, column: 9, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !71, line: 609, column: 9)
!3393 = distinct !DILexicalBlock(scope: !3377, file: !71, line: 608, column: 35)
!3394 = !DILocation(line: 621, column: 5, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3377, file: !71, line: 621, column: 5)
!3396 = !DILocation(line: 609, scope: !3392)
!3397 = !DILocalVariable(name: "i", scope: !3377, file: !71, line: 605, type: !15)
!3398 = !DILocation(line: 609, column: 39, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3392, file: !71, line: 609, column: 9)
!3400 = !DILocation(line: 609, column: 29, scope: !3399)
!3401 = !DILocation(line: 609, column: 27, scope: !3399)
!3402 = !DILocation(line: 609, column: 23, scope: !3399)
!3403 = !DILocation(line: 612, column: 54, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3399, file: !71, line: 609, column: 55)
!3405 = !DILocation(line: 612, column: 44, scope: !3404)
!3406 = !DILocation(line: 612, column: 69, scope: !3404)
!3407 = !DILocation(line: 612, column: 81, scope: !3404)
!3408 = !DILocation(line: 612, column: 79, scope: !3404)
!3409 = !DILocation(line: 612, column: 65, scope: !3404)
!3410 = !DILocation(line: 612, column: 59, scope: !3404)
!3411 = !DILocation(line: 612, column: 20, scope: !3404)
!3412 = !DILocation(line: 612, column: 32, scope: !3404)
!3413 = !DILocation(line: 612, column: 30, scope: !3404)
!3414 = !DILocation(line: 612, column: 35, scope: !3404)
!3415 = !DILocation(line: 612, column: 13, scope: !3404)
!3416 = !DILocation(line: 612, column: 41, scope: !3404)
!3417 = !DILocation(line: 609, column: 51, scope: !3399)
!3418 = !DILocation(line: 609, column: 9, scope: !3399)
!3419 = distinct !{!3419, !3391, !3420, !323}
!3420 = !DILocation(line: 613, column: 9, scope: !3392)
!3421 = !DILocation(line: 614, column: 30, scope: !3393)
!3422 = !DILocation(line: 614, column: 17, scope: !3393)
!3423 = !DILocation(line: 614, column: 14, scope: !3393)
!3424 = !DILocation(line: 615, column: 11, scope: !3393)
!3425 = !DILocation(line: 616, column: 9, scope: !3393)
!3426 = !DILocation(line: 616, column: 19, scope: !3393)
!3427 = !DILocation(line: 618, column: 9, scope: !3393)
!3428 = distinct !{!3428, !3385, !3429, !323}
!3429 = !DILocation(line: 619, column: 5, scope: !3377)
!3430 = !DILocation(line: 621, scope: !3395)
!3431 = !DILocation(line: 621, column: 19, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3395, file: !71, line: 621, column: 5)
!3433 = !DILocation(line: 622, column: 50, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3432, file: !71, line: 621, column: 32)
!3435 = !DILocation(line: 622, column: 40, scope: !3434)
!3436 = !DILocation(line: 622, column: 65, scope: !3434)
!3437 = !DILocation(line: 622, column: 77, scope: !3434)
!3438 = !DILocation(line: 622, column: 75, scope: !3434)
!3439 = !DILocation(line: 622, column: 61, scope: !3434)
!3440 = !DILocation(line: 622, column: 55, scope: !3434)
!3441 = !DILocation(line: 622, column: 16, scope: !3434)
!3442 = !DILocation(line: 622, column: 28, scope: !3434)
!3443 = !DILocation(line: 622, column: 26, scope: !3434)
!3444 = !DILocation(line: 622, column: 31, scope: !3434)
!3445 = !DILocation(line: 622, column: 9, scope: !3434)
!3446 = !DILocation(line: 622, column: 37, scope: !3434)
!3447 = !DILocation(line: 621, column: 28, scope: !3432)
!3448 = !DILocation(line: 621, column: 5, scope: !3432)
!3449 = distinct !{!3449, !3394, !3450, !323}
!3450 = !DILocation(line: 623, column: 5, scope: !3395)
!3451 = !DILocation(line: 624, column: 18, scope: !3377)
!3452 = !DILocation(line: 624, column: 5, scope: !3377)
!3453 = !DILocation(line: 624, column: 15, scope: !3377)
!3454 = !DILocation(line: 625, column: 1, scope: !3377)
!3455 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3456 = !DILocalVariable(name: "state", arg: 1, scope: !3455, file: !71, line: 236, type: !5)
!3457 = !DILocation(line: 0, scope: !3455)
!3458 = !DILocation(line: 253, column: 11, scope: !3455)
!3459 = !DILocalVariable(name: "Aba", scope: !3455, file: !71, line: 239, type: !6)
!3460 = !DILocation(line: 254, column: 11, scope: !3455)
!3461 = !DILocalVariable(name: "Abe", scope: !3455, file: !71, line: 239, type: !6)
!3462 = !DILocation(line: 255, column: 11, scope: !3455)
!3463 = !DILocalVariable(name: "Abi", scope: !3455, file: !71, line: 239, type: !6)
!3464 = !DILocation(line: 256, column: 11, scope: !3455)
!3465 = !DILocalVariable(name: "Abo", scope: !3455, file: !71, line: 239, type: !6)
!3466 = !DILocation(line: 257, column: 11, scope: !3455)
!3467 = !DILocalVariable(name: "Abu", scope: !3455, file: !71, line: 239, type: !6)
!3468 = !DILocation(line: 258, column: 11, scope: !3455)
!3469 = !DILocalVariable(name: "Aga", scope: !3455, file: !71, line: 240, type: !6)
!3470 = !DILocation(line: 259, column: 11, scope: !3455)
!3471 = !DILocalVariable(name: "Age", scope: !3455, file: !71, line: 240, type: !6)
!3472 = !DILocation(line: 260, column: 11, scope: !3455)
!3473 = !DILocalVariable(name: "Agi", scope: !3455, file: !71, line: 240, type: !6)
!3474 = !DILocation(line: 261, column: 11, scope: !3455)
!3475 = !DILocalVariable(name: "Ago", scope: !3455, file: !71, line: 240, type: !6)
!3476 = !DILocation(line: 262, column: 11, scope: !3455)
!3477 = !DILocalVariable(name: "Agu", scope: !3455, file: !71, line: 240, type: !6)
!3478 = !DILocation(line: 263, column: 11, scope: !3455)
!3479 = !DILocalVariable(name: "Aka", scope: !3455, file: !71, line: 241, type: !6)
!3480 = !DILocation(line: 264, column: 11, scope: !3455)
!3481 = !DILocalVariable(name: "Ake", scope: !3455, file: !71, line: 241, type: !6)
!3482 = !DILocation(line: 265, column: 11, scope: !3455)
!3483 = !DILocalVariable(name: "Aki", scope: !3455, file: !71, line: 241, type: !6)
!3484 = !DILocation(line: 266, column: 11, scope: !3455)
!3485 = !DILocalVariable(name: "Ako", scope: !3455, file: !71, line: 241, type: !6)
!3486 = !DILocation(line: 267, column: 11, scope: !3455)
!3487 = !DILocalVariable(name: "Aku", scope: !3455, file: !71, line: 241, type: !6)
!3488 = !DILocation(line: 268, column: 11, scope: !3455)
!3489 = !DILocalVariable(name: "Ama", scope: !3455, file: !71, line: 242, type: !6)
!3490 = !DILocation(line: 269, column: 11, scope: !3455)
!3491 = !DILocalVariable(name: "Ame", scope: !3455, file: !71, line: 242, type: !6)
!3492 = !DILocation(line: 270, column: 11, scope: !3455)
!3493 = !DILocalVariable(name: "Ami", scope: !3455, file: !71, line: 242, type: !6)
!3494 = !DILocation(line: 271, column: 11, scope: !3455)
!3495 = !DILocalVariable(name: "Amo", scope: !3455, file: !71, line: 242, type: !6)
!3496 = !DILocation(line: 272, column: 11, scope: !3455)
!3497 = !DILocalVariable(name: "Amu", scope: !3455, file: !71, line: 242, type: !6)
!3498 = !DILocation(line: 273, column: 11, scope: !3455)
!3499 = !DILocalVariable(name: "Asa", scope: !3455, file: !71, line: 243, type: !6)
!3500 = !DILocation(line: 274, column: 11, scope: !3455)
!3501 = !DILocalVariable(name: "Ase", scope: !3455, file: !71, line: 243, type: !6)
!3502 = !DILocation(line: 275, column: 11, scope: !3455)
!3503 = !DILocalVariable(name: "Asi", scope: !3455, file: !71, line: 243, type: !6)
!3504 = !DILocation(line: 276, column: 11, scope: !3455)
!3505 = !DILocalVariable(name: "Aso", scope: !3455, file: !71, line: 243, type: !6)
!3506 = !DILocation(line: 277, column: 11, scope: !3455)
!3507 = !DILocalVariable(name: "Asu", scope: !3455, file: !71, line: 243, type: !6)
!3508 = !DILocalVariable(name: "round", scope: !3455, file: !71, line: 237, type: !45)
!3509 = !DILocation(line: 279, column: 10, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3455, file: !71, line: 279, column: 5)
!3511 = !DILocation(line: 279, scope: !3510)
!3512 = !DILocation(line: 279, column: 27, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !71, line: 279, column: 5)
!3514 = !DILocation(line: 279, column: 5, scope: !3510)
!3515 = !DILocalVariable(name: "BCa", scope: !3455, file: !71, line: 244, type: !6)
!3516 = !DILocalVariable(name: "BCe", scope: !3455, file: !71, line: 244, type: !6)
!3517 = !DILocalVariable(name: "BCi", scope: !3455, file: !71, line: 244, type: !6)
!3518 = !DILocalVariable(name: "BCo", scope: !3455, file: !71, line: 244, type: !6)
!3519 = !DILocalVariable(name: "BCu", scope: !3455, file: !71, line: 244, type: !6)
!3520 = !DILocalVariable(name: "Da", scope: !3455, file: !71, line: 245, type: !6)
!3521 = !DILocalVariable(name: "De", scope: !3455, file: !71, line: 245, type: !6)
!3522 = !DILocalVariable(name: "Di", scope: !3455, file: !71, line: 245, type: !6)
!3523 = !DILocalVariable(name: "Do", scope: !3455, file: !71, line: 245, type: !6)
!3524 = !DILocalVariable(name: "Du", scope: !3455, file: !71, line: 245, type: !6)
!3525 = !DILocalVariable(name: "Eba", scope: !3455, file: !71, line: 246, type: !6)
!3526 = !DILocalVariable(name: "Ebe", scope: !3455, file: !71, line: 246, type: !6)
!3527 = !DILocalVariable(name: "Ebi", scope: !3455, file: !71, line: 246, type: !6)
!3528 = !DILocalVariable(name: "Ebo", scope: !3455, file: !71, line: 246, type: !6)
!3529 = !DILocalVariable(name: "Ebu", scope: !3455, file: !71, line: 246, type: !6)
!3530 = !DILocalVariable(name: "Ega", scope: !3455, file: !71, line: 247, type: !6)
!3531 = !DILocalVariable(name: "Ege", scope: !3455, file: !71, line: 247, type: !6)
!3532 = !DILocalVariable(name: "Egi", scope: !3455, file: !71, line: 247, type: !6)
!3533 = !DILocalVariable(name: "Ego", scope: !3455, file: !71, line: 247, type: !6)
!3534 = !DILocalVariable(name: "Egu", scope: !3455, file: !71, line: 247, type: !6)
!3535 = !DILocalVariable(name: "Eka", scope: !3455, file: !71, line: 248, type: !6)
!3536 = !DILocalVariable(name: "Eke", scope: !3455, file: !71, line: 248, type: !6)
!3537 = !DILocalVariable(name: "Eki", scope: !3455, file: !71, line: 248, type: !6)
!3538 = !DILocalVariable(name: "Eko", scope: !3455, file: !71, line: 248, type: !6)
!3539 = !DILocalVariable(name: "Eku", scope: !3455, file: !71, line: 248, type: !6)
!3540 = !DILocalVariable(name: "Ema", scope: !3455, file: !71, line: 249, type: !6)
!3541 = !DILocalVariable(name: "Eme", scope: !3455, file: !71, line: 249, type: !6)
!3542 = !DILocalVariable(name: "Emi", scope: !3455, file: !71, line: 249, type: !6)
!3543 = !DILocalVariable(name: "Emo", scope: !3455, file: !71, line: 249, type: !6)
!3544 = !DILocalVariable(name: "Emu", scope: !3455, file: !71, line: 249, type: !6)
!3545 = !DILocalVariable(name: "Esa", scope: !3455, file: !71, line: 250, type: !6)
!3546 = !DILocalVariable(name: "Ese", scope: !3455, file: !71, line: 250, type: !6)
!3547 = !DILocalVariable(name: "Esi", scope: !3455, file: !71, line: 250, type: !6)
!3548 = !DILocalVariable(name: "Eso", scope: !3455, file: !71, line: 250, type: !6)
!3549 = !DILocalVariable(name: "Esu", scope: !3455, file: !71, line: 250, type: !6)
!3550 = !DILocation(line: 283, column: 19, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3513, file: !71, line: 279, column: 50)
!3552 = !DILocation(line: 283, column: 25, scope: !3551)
!3553 = !DILocation(line: 283, column: 31, scope: !3551)
!3554 = !DILocation(line: 283, column: 37, scope: !3551)
!3555 = !DILocation(line: 285, column: 19, scope: !3551)
!3556 = !DILocation(line: 285, column: 25, scope: !3551)
!3557 = !DILocation(line: 285, column: 31, scope: !3551)
!3558 = !DILocation(line: 285, column: 37, scope: !3551)
!3559 = !DILocation(line: 291, column: 20, scope: !3551)
!3560 = !DILocation(line: 291, column: 18, scope: !3551)
!3561 = !DILocation(line: 361, column: 13, scope: !3551)
!3562 = !DILocation(line: 362, column: 15, scope: !3551)
!3563 = !DILocation(line: 282, column: 19, scope: !3551)
!3564 = !DILocation(line: 282, column: 25, scope: !3551)
!3565 = !DILocation(line: 282, column: 31, scope: !3551)
!3566 = !DILocation(line: 282, column: 37, scope: !3551)
!3567 = !DILocation(line: 288, column: 20, scope: !3551)
!3568 = !DILocation(line: 288, column: 18, scope: !3551)
!3569 = !DILocation(line: 365, column: 13, scope: !3551)
!3570 = !DILocation(line: 366, column: 15, scope: !3551)
!3571 = !DILocation(line: 284, column: 19, scope: !3551)
!3572 = !DILocation(line: 284, column: 25, scope: !3551)
!3573 = !DILocation(line: 284, column: 31, scope: !3551)
!3574 = !DILocation(line: 284, column: 37, scope: !3551)
!3575 = !DILocation(line: 281, column: 19, scope: !3551)
!3576 = !DILocation(line: 281, column: 25, scope: !3551)
!3577 = !DILocation(line: 281, column: 31, scope: !3551)
!3578 = !DILocation(line: 281, column: 37, scope: !3551)
!3579 = !DILocation(line: 292, column: 20, scope: !3551)
!3580 = !DILocation(line: 292, column: 18, scope: !3551)
!3581 = !DILocation(line: 363, column: 13, scope: !3551)
!3582 = !DILocation(line: 364, column: 15, scope: !3551)
!3583 = !DILocation(line: 370, column: 23, scope: !3551)
!3584 = !DILocation(line: 370, column: 29, scope: !3551)
!3585 = !DILocation(line: 370, column: 19, scope: !3551)
!3586 = !DILocation(line: 290, column: 20, scope: !3551)
!3587 = !DILocation(line: 290, column: 18, scope: !3551)
!3588 = !DILocation(line: 298, column: 13, scope: !3551)
!3589 = !DILocation(line: 299, column: 15, scope: !3551)
!3590 = !DILocation(line: 289, column: 20, scope: !3551)
!3591 = !DILocation(line: 289, column: 18, scope: !3551)
!3592 = !DILocation(line: 296, column: 13, scope: !3551)
!3593 = !DILocation(line: 297, column: 15, scope: !3551)
!3594 = !DILocation(line: 304, column: 23, scope: !3551)
!3595 = !DILocation(line: 304, column: 29, scope: !3551)
!3596 = !DILocation(line: 305, column: 16, scope: !3551)
!3597 = !DILocation(line: 305, column: 13, scope: !3551)
!3598 = !DILocation(line: 294, column: 13, scope: !3551)
!3599 = !DILocation(line: 311, column: 13, scope: !3551)
!3600 = !DILocation(line: 312, column: 15, scope: !3551)
!3601 = !DILocation(line: 315, column: 13, scope: !3551)
!3602 = !DILocation(line: 316, column: 15, scope: !3551)
!3603 = !DILocation(line: 313, column: 13, scope: !3551)
!3604 = !DILocation(line: 314, column: 15, scope: !3551)
!3605 = !DILocation(line: 321, column: 23, scope: !3551)
!3606 = !DILocation(line: 321, column: 29, scope: !3551)
!3607 = !DILocation(line: 321, column: 19, scope: !3551)
!3608 = !DILocation(line: 376, column: 19, scope: !3551)
!3609 = !DILocation(line: 327, column: 13, scope: !3551)
!3610 = !DILocation(line: 328, column: 15, scope: !3551)
!3611 = !DILocation(line: 331, column: 13, scope: !3551)
!3612 = !DILocation(line: 332, column: 15, scope: !3551)
!3613 = !DILocation(line: 329, column: 13, scope: !3551)
!3614 = !DILocation(line: 330, column: 15, scope: !3551)
!3615 = !DILocation(line: 337, column: 23, scope: !3551)
!3616 = !DILocation(line: 337, column: 29, scope: !3551)
!3617 = !DILocation(line: 337, column: 19, scope: !3551)
!3618 = !DILocation(line: 376, column: 25, scope: !3551)
!3619 = !DILocation(line: 343, column: 13, scope: !3551)
!3620 = !DILocation(line: 344, column: 15, scope: !3551)
!3621 = !DILocation(line: 347, column: 13, scope: !3551)
!3622 = !DILocation(line: 348, column: 15, scope: !3551)
!3623 = !DILocation(line: 345, column: 13, scope: !3551)
!3624 = !DILocation(line: 346, column: 15, scope: !3551)
!3625 = !DILocation(line: 353, column: 23, scope: !3551)
!3626 = !DILocation(line: 353, column: 29, scope: !3551)
!3627 = !DILocation(line: 353, column: 19, scope: !3551)
!3628 = !DILocation(line: 376, column: 31, scope: !3551)
!3629 = !DILocation(line: 359, column: 13, scope: !3551)
!3630 = !DILocation(line: 360, column: 15, scope: !3551)
!3631 = !DILocation(line: 369, column: 23, scope: !3551)
!3632 = !DILocation(line: 369, column: 29, scope: !3551)
!3633 = !DILocation(line: 369, column: 19, scope: !3551)
!3634 = !DILocation(line: 376, column: 37, scope: !3551)
!3635 = !DILocation(line: 302, column: 13, scope: !3551)
!3636 = !DILocation(line: 303, column: 15, scope: !3551)
!3637 = !DILocation(line: 300, column: 13, scope: !3551)
!3638 = !DILocation(line: 301, column: 15, scope: !3551)
!3639 = !DILocation(line: 307, column: 23, scope: !3551)
!3640 = !DILocation(line: 307, column: 29, scope: !3551)
!3641 = !DILocation(line: 307, column: 19, scope: !3551)
!3642 = !DILocation(line: 319, column: 13, scope: !3551)
!3643 = !DILocation(line: 320, column: 15, scope: !3551)
!3644 = !DILocation(line: 317, column: 13, scope: !3551)
!3645 = !DILocation(line: 318, column: 15, scope: !3551)
!3646 = !DILocation(line: 323, column: 23, scope: !3551)
!3647 = !DILocation(line: 323, column: 29, scope: !3551)
!3648 = !DILocation(line: 323, column: 19, scope: !3551)
!3649 = !DILocation(line: 378, column: 19, scope: !3551)
!3650 = !DILocation(line: 335, column: 13, scope: !3551)
!3651 = !DILocation(line: 336, column: 15, scope: !3551)
!3652 = !DILocation(line: 333, column: 13, scope: !3551)
!3653 = !DILocation(line: 334, column: 15, scope: !3551)
!3654 = !DILocation(line: 339, column: 23, scope: !3551)
!3655 = !DILocation(line: 339, column: 29, scope: !3551)
!3656 = !DILocation(line: 339, column: 19, scope: !3551)
!3657 = !DILocation(line: 378, column: 25, scope: !3551)
!3658 = !DILocation(line: 351, column: 13, scope: !3551)
!3659 = !DILocation(line: 352, column: 15, scope: !3551)
!3660 = !DILocation(line: 349, column: 13, scope: !3551)
!3661 = !DILocation(line: 350, column: 15, scope: !3551)
!3662 = !DILocation(line: 355, column: 23, scope: !3551)
!3663 = !DILocation(line: 355, column: 29, scope: !3551)
!3664 = !DILocation(line: 355, column: 19, scope: !3551)
!3665 = !DILocation(line: 378, column: 31, scope: !3551)
!3666 = !DILocation(line: 367, column: 13, scope: !3551)
!3667 = !DILocation(line: 368, column: 15, scope: !3551)
!3668 = !DILocation(line: 371, column: 23, scope: !3551)
!3669 = !DILocation(line: 371, column: 29, scope: !3551)
!3670 = !DILocation(line: 371, column: 19, scope: !3551)
!3671 = !DILocation(line: 378, column: 37, scope: !3551)
!3672 = !DILocation(line: 384, column: 20, scope: !3551)
!3673 = !DILocation(line: 384, column: 18, scope: !3551)
!3674 = !DILocation(line: 462, column: 13, scope: !3551)
!3675 = !DILocation(line: 463, column: 15, scope: !3551)
!3676 = !DILocation(line: 324, column: 23, scope: !3551)
!3677 = !DILocation(line: 324, column: 29, scope: !3551)
!3678 = !DILocation(line: 324, column: 19, scope: !3551)
!3679 = !DILocation(line: 309, column: 23, scope: !3551)
!3680 = !DILocation(line: 309, column: 29, scope: !3551)
!3681 = !DILocation(line: 309, column: 19, scope: !3551)
!3682 = !DILocation(line: 325, column: 23, scope: !3551)
!3683 = !DILocation(line: 325, column: 29, scope: !3551)
!3684 = !DILocation(line: 325, column: 19, scope: !3551)
!3685 = !DILocation(line: 380, column: 19, scope: !3551)
!3686 = !DILocation(line: 341, column: 23, scope: !3551)
!3687 = !DILocation(line: 341, column: 29, scope: !3551)
!3688 = !DILocation(line: 341, column: 19, scope: !3551)
!3689 = !DILocation(line: 380, column: 25, scope: !3551)
!3690 = !DILocation(line: 357, column: 23, scope: !3551)
!3691 = !DILocation(line: 357, column: 29, scope: !3551)
!3692 = !DILocation(line: 357, column: 19, scope: !3551)
!3693 = !DILocation(line: 380, column: 31, scope: !3551)
!3694 = !DILocation(line: 373, column: 23, scope: !3551)
!3695 = !DILocation(line: 373, column: 29, scope: !3551)
!3696 = !DILocation(line: 373, column: 19, scope: !3551)
!3697 = !DILocation(line: 380, column: 37, scope: !3551)
!3698 = !DILocation(line: 386, column: 20, scope: !3551)
!3699 = !DILocation(line: 386, column: 18, scope: !3551)
!3700 = !DILocation(line: 456, column: 13, scope: !3551)
!3701 = !DILocation(line: 457, column: 15, scope: !3551)
!3702 = !DILocation(line: 306, column: 23, scope: !3551)
!3703 = !DILocation(line: 306, column: 29, scope: !3551)
!3704 = !DILocation(line: 306, column: 19, scope: !3551)
!3705 = !DILocation(line: 322, column: 23, scope: !3551)
!3706 = !DILocation(line: 322, column: 29, scope: !3551)
!3707 = !DILocation(line: 322, column: 19, scope: !3551)
!3708 = !DILocation(line: 377, column: 19, scope: !3551)
!3709 = !DILocation(line: 338, column: 23, scope: !3551)
!3710 = !DILocation(line: 338, column: 29, scope: !3551)
!3711 = !DILocation(line: 338, column: 19, scope: !3551)
!3712 = !DILocation(line: 377, column: 25, scope: !3551)
!3713 = !DILocation(line: 354, column: 23, scope: !3551)
!3714 = !DILocation(line: 354, column: 29, scope: !3551)
!3715 = !DILocation(line: 354, column: 19, scope: !3551)
!3716 = !DILocation(line: 377, column: 31, scope: !3551)
!3717 = !DILocation(line: 377, column: 37, scope: !3551)
!3718 = !DILocation(line: 308, column: 23, scope: !3551)
!3719 = !DILocation(line: 308, column: 29, scope: !3551)
!3720 = !DILocation(line: 308, column: 19, scope: !3551)
!3721 = !DILocation(line: 379, column: 19, scope: !3551)
!3722 = !DILocation(line: 340, column: 23, scope: !3551)
!3723 = !DILocation(line: 340, column: 29, scope: !3551)
!3724 = !DILocation(line: 340, column: 19, scope: !3551)
!3725 = !DILocation(line: 379, column: 25, scope: !3551)
!3726 = !DILocation(line: 356, column: 23, scope: !3551)
!3727 = !DILocation(line: 356, column: 29, scope: !3551)
!3728 = !DILocation(line: 356, column: 19, scope: !3551)
!3729 = !DILocation(line: 379, column: 31, scope: !3551)
!3730 = !DILocation(line: 372, column: 23, scope: !3551)
!3731 = !DILocation(line: 372, column: 29, scope: !3551)
!3732 = !DILocation(line: 372, column: 19, scope: !3551)
!3733 = !DILocation(line: 379, column: 37, scope: !3551)
!3734 = !DILocation(line: 385, column: 20, scope: !3551)
!3735 = !DILocation(line: 385, column: 18, scope: !3551)
!3736 = !DILocation(line: 454, column: 13, scope: !3551)
!3737 = !DILocation(line: 455, column: 15, scope: !3551)
!3738 = !DILocation(line: 468, column: 23, scope: !3551)
!3739 = !DILocation(line: 468, column: 29, scope: !3551)
!3740 = !DILocation(line: 468, column: 19, scope: !3551)
!3741 = !DILocation(line: 383, column: 20, scope: !3551)
!3742 = !DILocation(line: 383, column: 18, scope: !3551)
!3743 = !DILocation(line: 460, column: 13, scope: !3551)
!3744 = !DILocation(line: 461, column: 15, scope: !3551)
!3745 = !DILocation(line: 467, column: 23, scope: !3551)
!3746 = !DILocation(line: 467, column: 29, scope: !3551)
!3747 = !DILocation(line: 467, column: 19, scope: !3551)
!3748 = !DILocation(line: 387, column: 20, scope: !3551)
!3749 = !DILocation(line: 387, column: 18, scope: !3551)
!3750 = !DILocation(line: 458, column: 13, scope: !3551)
!3751 = !DILocation(line: 459, column: 15, scope: !3551)
!3752 = !DILocation(line: 466, column: 23, scope: !3551)
!3753 = !DILocation(line: 466, column: 29, scope: !3551)
!3754 = !DILocation(line: 466, column: 19, scope: !3551)
!3755 = !DILocation(line: 465, column: 23, scope: !3551)
!3756 = !DILocation(line: 465, column: 29, scope: !3551)
!3757 = !DILocation(line: 465, column: 19, scope: !3551)
!3758 = !DILocation(line: 464, column: 23, scope: !3551)
!3759 = !DILocation(line: 464, column: 29, scope: !3551)
!3760 = !DILocation(line: 464, column: 19, scope: !3551)
!3761 = !DILocation(line: 446, column: 13, scope: !3551)
!3762 = !DILocation(line: 447, column: 15, scope: !3551)
!3763 = !DILocation(line: 440, column: 13, scope: !3551)
!3764 = !DILocation(line: 441, column: 15, scope: !3551)
!3765 = !DILocation(line: 438, column: 13, scope: !3551)
!3766 = !DILocation(line: 439, column: 15, scope: !3551)
!3767 = !DILocation(line: 452, column: 23, scope: !3551)
!3768 = !DILocation(line: 452, column: 29, scope: !3551)
!3769 = !DILocation(line: 452, column: 19, scope: !3551)
!3770 = !DILocation(line: 444, column: 13, scope: !3551)
!3771 = !DILocation(line: 445, column: 15, scope: !3551)
!3772 = !DILocation(line: 451, column: 23, scope: !3551)
!3773 = !DILocation(line: 451, column: 29, scope: !3551)
!3774 = !DILocation(line: 451, column: 19, scope: !3551)
!3775 = !DILocation(line: 442, column: 13, scope: !3551)
!3776 = !DILocation(line: 443, column: 15, scope: !3551)
!3777 = !DILocation(line: 450, column: 23, scope: !3551)
!3778 = !DILocation(line: 450, column: 29, scope: !3551)
!3779 = !DILocation(line: 450, column: 19, scope: !3551)
!3780 = !DILocation(line: 449, column: 23, scope: !3551)
!3781 = !DILocation(line: 449, column: 29, scope: !3551)
!3782 = !DILocation(line: 449, column: 19, scope: !3551)
!3783 = !DILocation(line: 448, column: 23, scope: !3551)
!3784 = !DILocation(line: 448, column: 29, scope: !3551)
!3785 = !DILocation(line: 448, column: 19, scope: !3551)
!3786 = !DILocation(line: 430, column: 13, scope: !3551)
!3787 = !DILocation(line: 431, column: 15, scope: !3551)
!3788 = !DILocation(line: 424, column: 13, scope: !3551)
!3789 = !DILocation(line: 425, column: 15, scope: !3551)
!3790 = !DILocation(line: 422, column: 13, scope: !3551)
!3791 = !DILocation(line: 423, column: 15, scope: !3551)
!3792 = !DILocation(line: 436, column: 23, scope: !3551)
!3793 = !DILocation(line: 436, column: 29, scope: !3551)
!3794 = !DILocation(line: 436, column: 19, scope: !3551)
!3795 = !DILocation(line: 428, column: 13, scope: !3551)
!3796 = !DILocation(line: 429, column: 15, scope: !3551)
!3797 = !DILocation(line: 435, column: 23, scope: !3551)
!3798 = !DILocation(line: 435, column: 29, scope: !3551)
!3799 = !DILocation(line: 435, column: 19, scope: !3551)
!3800 = !DILocation(line: 426, column: 13, scope: !3551)
!3801 = !DILocation(line: 427, column: 15, scope: !3551)
!3802 = !DILocation(line: 434, column: 23, scope: !3551)
!3803 = !DILocation(line: 434, column: 29, scope: !3551)
!3804 = !DILocation(line: 434, column: 19, scope: !3551)
!3805 = !DILocation(line: 433, column: 23, scope: !3551)
!3806 = !DILocation(line: 433, column: 29, scope: !3551)
!3807 = !DILocation(line: 433, column: 19, scope: !3551)
!3808 = !DILocation(line: 432, column: 23, scope: !3551)
!3809 = !DILocation(line: 432, column: 29, scope: !3551)
!3810 = !DILocation(line: 432, column: 19, scope: !3551)
!3811 = !DILocation(line: 414, column: 13, scope: !3551)
!3812 = !DILocation(line: 415, column: 15, scope: !3551)
!3813 = !DILocation(line: 408, column: 13, scope: !3551)
!3814 = !DILocation(line: 409, column: 15, scope: !3551)
!3815 = !DILocation(line: 406, column: 13, scope: !3551)
!3816 = !DILocation(line: 407, column: 15, scope: !3551)
!3817 = !DILocation(line: 420, column: 23, scope: !3551)
!3818 = !DILocation(line: 420, column: 29, scope: !3551)
!3819 = !DILocation(line: 420, column: 19, scope: !3551)
!3820 = !DILocation(line: 412, column: 13, scope: !3551)
!3821 = !DILocation(line: 413, column: 15, scope: !3551)
!3822 = !DILocation(line: 419, column: 23, scope: !3551)
!3823 = !DILocation(line: 419, column: 29, scope: !3551)
!3824 = !DILocation(line: 419, column: 19, scope: !3551)
!3825 = !DILocation(line: 410, column: 13, scope: !3551)
!3826 = !DILocation(line: 411, column: 15, scope: !3551)
!3827 = !DILocation(line: 418, column: 23, scope: !3551)
!3828 = !DILocation(line: 418, column: 29, scope: !3551)
!3829 = !DILocation(line: 418, column: 19, scope: !3551)
!3830 = !DILocation(line: 417, column: 23, scope: !3551)
!3831 = !DILocation(line: 417, column: 29, scope: !3551)
!3832 = !DILocation(line: 417, column: 19, scope: !3551)
!3833 = !DILocation(line: 416, column: 23, scope: !3551)
!3834 = !DILocation(line: 416, column: 29, scope: !3551)
!3835 = !DILocation(line: 416, column: 19, scope: !3551)
!3836 = !DILocation(line: 397, column: 13, scope: !3551)
!3837 = !DILocation(line: 398, column: 15, scope: !3551)
!3838 = !DILocation(line: 391, column: 13, scope: !3551)
!3839 = !DILocation(line: 392, column: 15, scope: !3551)
!3840 = !DILocation(line: 389, column: 13, scope: !3551)
!3841 = !DILocation(line: 404, column: 23, scope: !3551)
!3842 = !DILocation(line: 404, column: 29, scope: !3551)
!3843 = !DILocation(line: 404, column: 19, scope: !3551)
!3844 = !DILocation(line: 395, column: 13, scope: !3551)
!3845 = !DILocation(line: 396, column: 15, scope: !3551)
!3846 = !DILocation(line: 403, column: 23, scope: !3551)
!3847 = !DILocation(line: 403, column: 29, scope: !3551)
!3848 = !DILocation(line: 403, column: 19, scope: !3551)
!3849 = !DILocation(line: 393, column: 13, scope: !3551)
!3850 = !DILocation(line: 394, column: 15, scope: !3551)
!3851 = !DILocation(line: 402, column: 23, scope: !3551)
!3852 = !DILocation(line: 402, column: 29, scope: !3551)
!3853 = !DILocation(line: 402, column: 19, scope: !3551)
!3854 = !DILocation(line: 401, column: 23, scope: !3551)
!3855 = !DILocation(line: 401, column: 29, scope: !3551)
!3856 = !DILocation(line: 401, column: 19, scope: !3551)
!3857 = !DILocation(line: 400, column: 45, scope: !3551)
!3858 = !DILocation(line: 400, column: 16, scope: !3551)
!3859 = !DILocation(line: 399, column: 23, scope: !3551)
!3860 = !DILocation(line: 399, column: 29, scope: !3551)
!3861 = !DILocation(line: 400, column: 13, scope: !3551)
!3862 = !DILocation(line: 279, column: 44, scope: !3513)
!3863 = !DILocation(line: 279, column: 5, scope: !3513)
!3864 = distinct !{!3864, !3514, !3865, !323}
!3865 = !DILocation(line: 469, column: 5, scope: !3510)
!3866 = !DILocation(line: 472, column: 14, scope: !3455)
!3867 = !DILocation(line: 473, column: 5, scope: !3455)
!3868 = !DILocation(line: 473, column: 14, scope: !3455)
!3869 = !DILocation(line: 474, column: 5, scope: !3455)
!3870 = !DILocation(line: 474, column: 14, scope: !3455)
!3871 = !DILocation(line: 475, column: 5, scope: !3455)
!3872 = !DILocation(line: 475, column: 14, scope: !3455)
!3873 = !DILocation(line: 476, column: 5, scope: !3455)
!3874 = !DILocation(line: 476, column: 14, scope: !3455)
!3875 = !DILocation(line: 477, column: 5, scope: !3455)
!3876 = !DILocation(line: 477, column: 14, scope: !3455)
!3877 = !DILocation(line: 478, column: 5, scope: !3455)
!3878 = !DILocation(line: 478, column: 14, scope: !3455)
!3879 = !DILocation(line: 479, column: 5, scope: !3455)
!3880 = !DILocation(line: 479, column: 14, scope: !3455)
!3881 = !DILocation(line: 480, column: 5, scope: !3455)
!3882 = !DILocation(line: 480, column: 14, scope: !3455)
!3883 = !DILocation(line: 481, column: 5, scope: !3455)
!3884 = !DILocation(line: 481, column: 14, scope: !3455)
!3885 = !DILocation(line: 482, column: 5, scope: !3455)
!3886 = !DILocation(line: 482, column: 15, scope: !3455)
!3887 = !DILocation(line: 483, column: 5, scope: !3455)
!3888 = !DILocation(line: 483, column: 15, scope: !3455)
!3889 = !DILocation(line: 484, column: 5, scope: !3455)
!3890 = !DILocation(line: 484, column: 15, scope: !3455)
!3891 = !DILocation(line: 485, column: 5, scope: !3455)
!3892 = !DILocation(line: 485, column: 15, scope: !3455)
!3893 = !DILocation(line: 486, column: 5, scope: !3455)
!3894 = !DILocation(line: 486, column: 15, scope: !3455)
!3895 = !DILocation(line: 487, column: 5, scope: !3455)
!3896 = !DILocation(line: 487, column: 15, scope: !3455)
!3897 = !DILocation(line: 488, column: 5, scope: !3455)
!3898 = !DILocation(line: 488, column: 15, scope: !3455)
!3899 = !DILocation(line: 489, column: 5, scope: !3455)
!3900 = !DILocation(line: 489, column: 15, scope: !3455)
!3901 = !DILocation(line: 490, column: 5, scope: !3455)
!3902 = !DILocation(line: 490, column: 15, scope: !3455)
!3903 = !DILocation(line: 491, column: 5, scope: !3455)
!3904 = !DILocation(line: 491, column: 15, scope: !3455)
!3905 = !DILocation(line: 492, column: 5, scope: !3455)
!3906 = !DILocation(line: 492, column: 15, scope: !3455)
!3907 = !DILocation(line: 493, column: 5, scope: !3455)
!3908 = !DILocation(line: 493, column: 15, scope: !3455)
!3909 = !DILocation(line: 494, column: 5, scope: !3455)
!3910 = !DILocation(line: 494, column: 15, scope: !3455)
!3911 = !DILocation(line: 495, column: 5, scope: !3455)
!3912 = !DILocation(line: 495, column: 15, scope: !3455)
!3913 = !DILocation(line: 496, column: 5, scope: !3455)
!3914 = !DILocation(line: 496, column: 15, scope: !3455)
!3915 = !DILocation(line: 497, column: 1, scope: !3455)
!3916 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3326, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3917 = !DILocalVariable(name: "state", arg: 1, scope: !3916, file: !71, line: 700, type: !3328)
!3918 = !DILocation(line: 0, scope: !3916)
!3919 = !DILocation(line: 701, column: 32, scope: !3916)
!3920 = !DILocation(line: 701, column: 5, scope: !3916)
!3921 = !DILocation(line: 702, column: 1, scope: !3916)
!3922 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3923, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !5, !19, !12}
!3925 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3922, file: !71, line: 640, type: !5)
!3926 = !DILocation(line: 0, scope: !3922)
!3927 = !DILocalVariable(name: "r", arg: 2, scope: !3922, file: !71, line: 640, type: !19)
!3928 = !DILocalVariable(name: "p", arg: 3, scope: !3922, file: !71, line: 640, type: !12)
!3929 = !DILocation(line: 643, column: 30, scope: !3922)
!3930 = !DILocation(line: 643, column: 51, scope: !3922)
!3931 = !DILocation(line: 643, column: 48, scope: !3922)
!3932 = !DILocation(line: 643, column: 42, scope: !3922)
!3933 = !DILocation(line: 643, column: 21, scope: !3922)
!3934 = !DILocation(line: 643, column: 5, scope: !3922)
!3935 = !DILocation(line: 643, column: 27, scope: !3922)
!3936 = !DILocation(line: 644, column: 48, scope: !3922)
!3937 = !DILocation(line: 644, column: 42, scope: !3922)
!3938 = !DILocation(line: 644, column: 14, scope: !3922)
!3939 = !DILocation(line: 644, column: 19, scope: !3922)
!3940 = !DILocation(line: 644, column: 5, scope: !3922)
!3941 = !DILocation(line: 644, column: 25, scope: !3922)
!3942 = !DILocation(line: 645, column: 5, scope: !3922)
!3943 = !DILocation(line: 645, column: 15, scope: !3922)
!3944 = !DILocation(line: 646, column: 1, scope: !3922)
!3945 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !3946, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !11, !15, !3328}
!3948 = !DILocalVariable(name: "output", arg: 1, scope: !3945, file: !71, line: 704, type: !11)
!3949 = !DILocation(line: 0, scope: !3945)
!3950 = !DILocalVariable(name: "outlen", arg: 2, scope: !3945, file: !71, line: 704, type: !15)
!3951 = !DILocalVariable(name: "state", arg: 3, scope: !3945, file: !71, line: 704, type: !3328)
!3952 = !DILocation(line: 705, column: 47, scope: !3945)
!3953 = !DILocation(line: 705, column: 5, scope: !3945)
!3954 = !DILocation(line: 706, column: 1, scope: !3945)
!3955 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !3956, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !11, !15, !5, !19}
!3958 = !DILocalVariable(name: "h", arg: 1, scope: !3955, file: !71, line: 661, type: !11)
!3959 = !DILocation(line: 0, scope: !3955)
!3960 = !DILocalVariable(name: "outlen", arg: 2, scope: !3955, file: !71, line: 661, type: !15)
!3961 = !DILocalVariable(name: "s_inc", arg: 3, scope: !3955, file: !71, line: 662, type: !5)
!3962 = !DILocalVariable(name: "r", arg: 4, scope: !3955, file: !71, line: 662, type: !19)
!3963 = !DILocalVariable(name: "i", scope: !3955, file: !71, line: 663, type: !15)
!3964 = !DILocation(line: 666, column: 10, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3955, file: !71, line: 666, column: 5)
!3966 = !DILocation(line: 666, scope: !3965)
!3967 = !DILocation(line: 666, column: 19, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3965, file: !71, line: 666, column: 5)
!3969 = !DILocation(line: 666, column: 28, scope: !3968)
!3970 = !DILocation(line: 666, column: 31, scope: !3968)
!3971 = !DILocation(line: 666, column: 35, scope: !3968)
!3972 = !DILocation(line: 666, column: 33, scope: !3968)
!3973 = !DILocation(line: 666, column: 5, scope: !3965)
!3974 = !DILocation(line: 669, column: 33, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !71, line: 666, column: 51)
!3976 = !DILocation(line: 669, column: 37, scope: !3975)
!3977 = !DILocation(line: 669, column: 35, scope: !3975)
!3978 = !DILocation(line: 669, column: 49, scope: !3975)
!3979 = !DILocation(line: 669, column: 47, scope: !3975)
!3980 = !DILocation(line: 669, column: 52, scope: !3975)
!3981 = !DILocation(line: 669, column: 26, scope: !3975)
!3982 = !DILocation(line: 669, column: 68, scope: !3975)
!3983 = !DILocation(line: 669, column: 72, scope: !3975)
!3984 = !DILocation(line: 669, column: 70, scope: !3975)
!3985 = !DILocation(line: 669, column: 84, scope: !3975)
!3986 = !DILocation(line: 669, column: 82, scope: !3975)
!3987 = !DILocation(line: 669, column: 64, scope: !3975)
!3988 = !DILocation(line: 669, column: 58, scope: !3975)
!3989 = !DILocation(line: 669, column: 16, scope: !3975)
!3990 = !DILocation(line: 669, column: 9, scope: !3975)
!3991 = !DILocation(line: 669, column: 14, scope: !3975)
!3992 = !DILocation(line: 666, column: 47, scope: !3968)
!3993 = !DILocation(line: 666, column: 5, scope: !3968)
!3994 = distinct !{!3994, !3973, !3995, !323}
!3995 = !DILocation(line: 670, column: 5, scope: !3965)
!3996 = !DILocation(line: 671, column: 7, scope: !3955)
!3997 = !DILocation(line: 672, column: 12, scope: !3955)
!3998 = !DILocation(line: 673, column: 18, scope: !3955)
!3999 = !DILocation(line: 673, column: 5, scope: !3955)
!4000 = !DILocation(line: 673, column: 15, scope: !3955)
!4001 = !DILocation(line: 676, column: 5, scope: !3955)
!4002 = !DILocation(line: 676, column: 19, scope: !3955)
!4003 = !DILocation(line: 677, column: 9, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3955, file: !71, line: 676, column: 24)
!4005 = !DILocation(line: 679, column: 14, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4004, file: !71, line: 679, column: 9)
!4007 = !DILocation(line: 679, scope: !4006)
!4008 = !DILocation(line: 679, column: 32, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4006, file: !71, line: 679, column: 9)
!4010 = !DILocation(line: 679, column: 9, scope: !4006)
!4011 = !DILocation(line: 680, column: 38, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4009, file: !71, line: 679, column: 47)
!4013 = !DILocation(line: 680, column: 30, scope: !4012)
!4014 = !DILocation(line: 680, column: 50, scope: !4012)
!4015 = !DILocation(line: 680, column: 44, scope: !4012)
!4016 = !DILocation(line: 680, column: 20, scope: !4012)
!4017 = !DILocation(line: 680, column: 13, scope: !4012)
!4018 = !DILocation(line: 680, column: 18, scope: !4012)
!4019 = !DILocation(line: 679, column: 43, scope: !4009)
!4020 = !DILocation(line: 679, column: 9, scope: !4009)
!4021 = distinct !{!4021, !4010, !4022, !323}
!4022 = !DILocation(line: 681, column: 9, scope: !4006)
!4023 = !DILocation(line: 682, column: 11, scope: !4004)
!4024 = !DILocation(line: 683, column: 16, scope: !4004)
!4025 = !DILocation(line: 684, column: 23, scope: !4004)
!4026 = !DILocation(line: 684, column: 21, scope: !4004)
!4027 = !DILocation(line: 684, column: 9, scope: !4004)
!4028 = !DILocation(line: 684, column: 19, scope: !4004)
!4029 = distinct !{!4029, !4001, !4030, !323}
!4030 = !DILocation(line: 685, column: 5, scope: !3955)
!4031 = !DILocation(line: 686, column: 1, scope: !3955)
!4032 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4033, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !3328, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3329)
!4037 = !DILocalVariable(name: "dest", arg: 1, scope: !4032, file: !71, line: 708, type: !3328)
!4038 = !DILocation(line: 0, scope: !4032)
!4039 = !DILocalVariable(name: "src", arg: 2, scope: !4032, file: !71, line: 708, type: !4035)
!4040 = !DILocation(line: 709, column: 17, scope: !4032)
!4041 = !DILocation(line: 709, column: 15, scope: !4032)
!4042 = !DILocation(line: 710, column: 19, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4032, file: !71, line: 710, column: 9)
!4044 = !DILocation(line: 711, column: 9, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4043, file: !71, line: 710, column: 28)
!4046 = !DILocation(line: 712, column: 5, scope: !4045)
!4047 = !DILocation(line: 713, column: 18, scope: !4032)
!4048 = !DILocation(line: 713, column: 28, scope: !4032)
!4049 = !DILocation(line: 713, column: 5, scope: !4032)
!4050 = !DILocation(line: 714, column: 1, scope: !4032)
!4051 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3326, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4052 = !DILocalVariable(name: "state", arg: 1, scope: !4051, file: !71, line: 716, type: !3328)
!4053 = !DILocation(line: 0, scope: !4051)
!4054 = !DILocation(line: 717, column: 17, scope: !4051)
!4055 = !DILocation(line: 717, column: 5, scope: !4051)
!4056 = !DILocation(line: 718, column: 1, scope: !4051)
!4057 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4058, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !4060}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 32)
!4061 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4063)
!4063 = !{!4064}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4062, file: !71, line: 40, baseType: !5, size: 32)
!4065 = !DILocalVariable(name: "state", arg: 1, scope: !4057, file: !71, line: 720, type: !4060)
!4066 = !DILocation(line: 0, scope: !4057)
!4067 = !DILocation(line: 721, column: 18, scope: !4057)
!4068 = !DILocation(line: 721, column: 16, scope: !4057)
!4069 = !DILocation(line: 722, column: 20, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4057, file: !71, line: 722, column: 9)
!4071 = !DILocation(line: 723, column: 9, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4070, file: !71, line: 722, column: 29)
!4073 = !DILocation(line: 724, column: 5, scope: !4072)
!4074 = !DILocation(line: 725, column: 28, scope: !4057)
!4075 = !DILocation(line: 725, column: 5, scope: !4057)
!4076 = !DILocation(line: 726, column: 1, scope: !4057)
!4077 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4078, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !4060, !3368, !15}
!4080 = !DILocalVariable(name: "state", arg: 1, scope: !4077, file: !71, line: 728, type: !4060)
!4081 = !DILocation(line: 0, scope: !4077)
!4082 = !DILocalVariable(name: "input", arg: 2, scope: !4077, file: !71, line: 728, type: !3368)
!4083 = !DILocalVariable(name: "inlen", arg: 3, scope: !4077, file: !71, line: 728, type: !15)
!4084 = !DILocation(line: 729, column: 30, scope: !4077)
!4085 = !DILocation(line: 729, column: 5, scope: !4077)
!4086 = !DILocation(line: 730, column: 1, scope: !4077)
!4087 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4058, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4088 = !DILocalVariable(name: "state", arg: 1, scope: !4087, file: !71, line: 732, type: !4060)
!4089 = !DILocation(line: 0, scope: !4087)
!4090 = !DILocation(line: 733, column: 32, scope: !4087)
!4091 = !DILocation(line: 733, column: 5, scope: !4087)
!4092 = !DILocation(line: 734, column: 1, scope: !4087)
!4093 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4094, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !11, !15, !4060}
!4096 = !DILocalVariable(name: "output", arg: 1, scope: !4093, file: !71, line: 736, type: !11)
!4097 = !DILocation(line: 0, scope: !4093)
!4098 = !DILocalVariable(name: "outlen", arg: 2, scope: !4093, file: !71, line: 736, type: !15)
!4099 = !DILocalVariable(name: "state", arg: 3, scope: !4093, file: !71, line: 736, type: !4060)
!4100 = !DILocation(line: 737, column: 47, scope: !4093)
!4101 = !DILocation(line: 737, column: 5, scope: !4093)
!4102 = !DILocation(line: 738, column: 1, scope: !4093)
!4103 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4104, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !4060, !4106}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4061)
!4108 = !DILocalVariable(name: "dest", arg: 1, scope: !4103, file: !71, line: 740, type: !4060)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocalVariable(name: "src", arg: 2, scope: !4103, file: !71, line: 740, type: !4106)
!4111 = !DILocation(line: 741, column: 17, scope: !4103)
!4112 = !DILocation(line: 741, column: 15, scope: !4103)
!4113 = !DILocation(line: 742, column: 19, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4103, file: !71, line: 742, column: 9)
!4115 = !DILocation(line: 743, column: 9, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4114, file: !71, line: 742, column: 28)
!4117 = !DILocation(line: 744, column: 5, scope: !4116)
!4118 = !DILocation(line: 745, column: 18, scope: !4103)
!4119 = !DILocation(line: 745, column: 28, scope: !4103)
!4120 = !DILocation(line: 745, column: 5, scope: !4103)
!4121 = !DILocation(line: 746, column: 1, scope: !4103)
!4122 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4058, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4123 = !DILocalVariable(name: "state", arg: 1, scope: !4122, file: !71, line: 748, type: !4060)
!4124 = !DILocation(line: 0, scope: !4122)
!4125 = !DILocation(line: 749, column: 17, scope: !4122)
!4126 = !DILocation(line: 749, column: 5, scope: !4122)
!4127 = !DILocation(line: 750, column: 1, scope: !4122)
!4128 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4129, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !4131, !3368, !15}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4133)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4134)
!4134 = !{!4135}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4133, file: !71, line: 35, baseType: !5, size: 32)
!4136 = !DILocalVariable(name: "state", arg: 1, scope: !4128, file: !71, line: 764, type: !4131)
!4137 = !DILocation(line: 0, scope: !4128)
!4138 = !DILocalVariable(name: "input", arg: 2, scope: !4128, file: !71, line: 764, type: !3368)
!4139 = !DILocalVariable(name: "inlen", arg: 3, scope: !4128, file: !71, line: 764, type: !15)
!4140 = !DILocation(line: 765, column: 18, scope: !4128)
!4141 = !DILocation(line: 765, column: 16, scope: !4128)
!4142 = !DILocation(line: 766, column: 20, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4128, file: !71, line: 766, column: 9)
!4144 = !DILocation(line: 767, column: 9, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4143, file: !71, line: 766, column: 29)
!4146 = !DILocation(line: 768, column: 5, scope: !4145)
!4147 = !DILocation(line: 769, column: 26, scope: !4128)
!4148 = !DILocation(line: 769, column: 5, scope: !4128)
!4149 = !DILocation(line: 770, column: 1, scope: !4128)
!4150 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4151, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !5, !19, !3368, !15, !12}
!4153 = !DILocalVariable(name: "s", arg: 1, scope: !4150, file: !71, line: 512, type: !5)
!4154 = !DILocation(line: 0, scope: !4150)
!4155 = !DILocalVariable(name: "r", arg: 2, scope: !4150, file: !71, line: 512, type: !19)
!4156 = !DILocalVariable(name: "m", arg: 3, scope: !4150, file: !71, line: 512, type: !3368)
!4157 = !DILocalVariable(name: "mlen", arg: 4, scope: !4150, file: !71, line: 513, type: !15)
!4158 = !DILocalVariable(name: "p", arg: 5, scope: !4150, file: !71, line: 513, type: !12)
!4159 = !DILocalVariable(name: "t", scope: !4150, file: !71, line: 515, type: !4160)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4161)
!4161 = !{!4162}
!4162 = !DISubrange(count: 200)
!4163 = !DILocation(line: 515, column: 13, scope: !4150)
!4164 = !DILocalVariable(name: "i", scope: !4150, file: !71, line: 514, type: !15)
!4165 = !DILocation(line: 518, column: 10, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4150, file: !71, line: 518, column: 5)
!4167 = !DILocation(line: 518, scope: !4166)
!4168 = !DILocation(line: 518, column: 19, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4166, file: !71, line: 518, column: 5)
!4170 = !DILocation(line: 518, column: 5, scope: !4166)
!4171 = !DILocation(line: 522, column: 5, scope: !4150)
!4172 = !DILocation(line: 519, column: 9, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4169, file: !71, line: 518, column: 30)
!4174 = !DILocation(line: 519, column: 14, scope: !4173)
!4175 = !DILocation(line: 518, column: 25, scope: !4169)
!4176 = !DILocation(line: 518, column: 5, scope: !4169)
!4177 = distinct !{!4177, !4170, !4178, !323}
!4178 = !DILocation(line: 520, column: 5, scope: !4166)
!4179 = !DILocation(line: 522, column: 17, scope: !4150)
!4180 = !DILocation(line: 523, column: 9, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !71, line: 523, column: 9)
!4182 = distinct !DILexicalBlock(scope: !4150, file: !71, line: 522, column: 23)
!4183 = !DILocation(line: 532, column: 5, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4150, file: !71, line: 532, column: 5)
!4185 = !DILocation(line: 523, scope: !4181)
!4186 = !DILocation(line: 523, column: 23, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4181, file: !71, line: 523, column: 9)
!4188 = !DILocation(line: 524, column: 34, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4187, file: !71, line: 523, column: 37)
!4190 = !DILocation(line: 524, column: 30, scope: !4189)
!4191 = !DILocation(line: 524, column: 21, scope: !4189)
!4192 = !DILocation(line: 524, column: 13, scope: !4189)
!4193 = !DILocation(line: 524, column: 18, scope: !4189)
!4194 = !DILocation(line: 523, column: 32, scope: !4187)
!4195 = !DILocation(line: 523, column: 9, scope: !4187)
!4196 = distinct !{!4196, !4180, !4197, !323}
!4197 = !DILocation(line: 525, column: 9, scope: !4181)
!4198 = !DILocation(line: 527, column: 9, scope: !4182)
!4199 = !DILocation(line: 528, column: 14, scope: !4182)
!4200 = !DILocation(line: 529, column: 11, scope: !4182)
!4201 = distinct !{!4201, !4171, !4202, !323}
!4202 = !DILocation(line: 530, column: 5, scope: !4150)
!4203 = !DILocation(line: 532, scope: !4184)
!4204 = !DILocation(line: 532, column: 19, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4184, file: !71, line: 532, column: 5)
!4206 = !DILocation(line: 535, column: 5, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4150, file: !71, line: 535, column: 5)
!4208 = !DILocation(line: 533, column: 9, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4205, file: !71, line: 532, column: 29)
!4210 = !DILocation(line: 533, column: 14, scope: !4209)
!4211 = !DILocation(line: 532, column: 24, scope: !4205)
!4212 = !DILocation(line: 532, column: 5, scope: !4205)
!4213 = distinct !{!4213, !4183, !4214, !323}
!4214 = !DILocation(line: 534, column: 5, scope: !4184)
!4215 = !DILocation(line: 535, scope: !4207)
!4216 = !DILocation(line: 535, column: 19, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4207, file: !71, line: 535, column: 5)
!4218 = !DILocation(line: 536, column: 16, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4217, file: !71, line: 535, column: 32)
!4220 = !DILocation(line: 536, column: 9, scope: !4219)
!4221 = !DILocation(line: 536, column: 14, scope: !4219)
!4222 = !DILocation(line: 535, column: 27, scope: !4217)
!4223 = !DILocation(line: 535, column: 5, scope: !4217)
!4224 = distinct !{!4224, !4206, !4225, !323}
!4225 = !DILocation(line: 537, column: 5, scope: !4207)
!4226 = !DILocation(line: 538, column: 5, scope: !4150)
!4227 = !DILocation(line: 538, column: 10, scope: !4150)
!4228 = !DILocation(line: 539, column: 9, scope: !4150)
!4229 = !DILocation(line: 539, column: 5, scope: !4150)
!4230 = !DILocation(line: 539, column: 14, scope: !4150)
!4231 = !DILocation(line: 540, column: 10, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4150, file: !71, line: 540, column: 5)
!4233 = !DILocation(line: 540, scope: !4232)
!4234 = !DILocation(line: 540, column: 19, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !71, line: 540, column: 5)
!4236 = !DILocation(line: 540, column: 5, scope: !4232)
!4237 = !DILocation(line: 541, column: 30, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4235, file: !71, line: 540, column: 33)
!4239 = !DILocation(line: 541, column: 26, scope: !4238)
!4240 = !DILocation(line: 541, column: 17, scope: !4238)
!4241 = !DILocation(line: 541, column: 9, scope: !4238)
!4242 = !DILocation(line: 541, column: 14, scope: !4238)
!4243 = !DILocation(line: 540, column: 28, scope: !4235)
!4244 = !DILocation(line: 540, column: 5, scope: !4235)
!4245 = distinct !{!4245, !4236, !4246, !323}
!4246 = !DILocation(line: 542, column: 5, scope: !4232)
!4247 = !DILocation(line: 543, column: 1, scope: !4150)
!4248 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4249, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!6, !3368}
!4251 = !DILocalVariable(name: "x", arg: 1, scope: !4248, file: !71, line: 190, type: !3368)
!4252 = !DILocation(line: 0, scope: !4248)
!4253 = !DILocalVariable(name: "r", scope: !4248, file: !71, line: 191, type: !6)
!4254 = !DILocalVariable(name: "i", scope: !4255, file: !71, line: 192, type: !15)
!4255 = distinct !DILexicalBlock(scope: !4248, file: !71, line: 192, column: 5)
!4256 = !DILocation(line: 0, scope: !4255)
!4257 = !DILocation(line: 192, column: 10, scope: !4255)
!4258 = !DILocation(line: 192, scope: !4255)
!4259 = !DILocation(line: 192, column: 26, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4255, file: !71, line: 192, column: 5)
!4261 = !DILocation(line: 192, column: 5, scope: !4255)
!4262 = !DILocation(line: 193, column: 24, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4260, file: !71, line: 192, column: 36)
!4264 = !DILocation(line: 193, column: 14, scope: !4263)
!4265 = !DILocation(line: 193, column: 34, scope: !4263)
!4266 = !DILocation(line: 193, column: 29, scope: !4263)
!4267 = !DILocation(line: 193, column: 11, scope: !4263)
!4268 = !DILocation(line: 192, column: 31, scope: !4260)
!4269 = !DILocation(line: 192, column: 5, scope: !4260)
!4270 = distinct !{!4270, !4261, !4271, !323}
!4271 = !DILocation(line: 194, column: 5, scope: !4255)
!4272 = !DILocation(line: 196, column: 5, scope: !4248)
!4273 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4274, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !11, !15, !4131}
!4276 = !DILocalVariable(name: "output", arg: 1, scope: !4273, file: !71, line: 784, type: !11)
!4277 = !DILocation(line: 0, scope: !4273)
!4278 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4273, file: !71, line: 784, type: !15)
!4279 = !DILocalVariable(name: "state", arg: 3, scope: !4273, file: !71, line: 784, type: !4131)
!4280 = !DILocation(line: 785, column: 50, scope: !4273)
!4281 = !DILocation(line: 785, column: 5, scope: !4273)
!4282 = !DILocation(line: 786, column: 1, scope: !4273)
!4283 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !3956, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4284 = !DILocalVariable(name: "h", arg: 1, scope: !4283, file: !71, line: 558, type: !11)
!4285 = !DILocation(line: 0, scope: !4283)
!4286 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4283, file: !71, line: 558, type: !15)
!4287 = !DILocalVariable(name: "s", arg: 3, scope: !4283, file: !71, line: 559, type: !5)
!4288 = !DILocalVariable(name: "r", arg: 4, scope: !4283, file: !71, line: 559, type: !19)
!4289 = !DILocation(line: 560, column: 5, scope: !4283)
!4290 = !DILocation(line: 560, column: 20, scope: !4283)
!4291 = !DILocation(line: 561, column: 9, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4283, file: !71, line: 560, column: 25)
!4293 = !DILocalVariable(name: "i", scope: !4294, file: !71, line: 562, type: !15)
!4294 = distinct !DILexicalBlock(scope: !4292, file: !71, line: 562, column: 9)
!4295 = !DILocation(line: 0, scope: !4294)
!4296 = !DILocation(line: 562, column: 14, scope: !4294)
!4297 = !DILocation(line: 562, scope: !4294)
!4298 = !DILocation(line: 562, column: 30, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !71, line: 562, column: 9)
!4300 = !DILocation(line: 562, column: 9, scope: !4294)
!4301 = !DILocation(line: 563, column: 27, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4299, file: !71, line: 562, column: 47)
!4303 = !DILocation(line: 563, column: 23, scope: !4302)
!4304 = !DILocation(line: 563, column: 32, scope: !4302)
!4305 = !DILocation(line: 563, column: 13, scope: !4302)
!4306 = !DILocation(line: 562, column: 43, scope: !4299)
!4307 = !DILocation(line: 562, column: 9, scope: !4299)
!4308 = distinct !{!4308, !4300, !4309, !323}
!4309 = !DILocation(line: 564, column: 9, scope: !4294)
!4310 = !DILocation(line: 565, column: 11, scope: !4292)
!4311 = !DILocation(line: 566, column: 16, scope: !4292)
!4312 = distinct !{!4312, !4289, !4313, !323}
!4313 = !DILocation(line: 567, column: 5, scope: !4283)
!4314 = !DILocation(line: 568, column: 1, scope: !4283)
!4315 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4316, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !11, !6}
!4318 = !DILocalVariable(name: "x", arg: 1, scope: !4315, file: !71, line: 207, type: !11)
!4319 = !DILocation(line: 0, scope: !4315)
!4320 = !DILocalVariable(name: "u", arg: 2, scope: !4315, file: !71, line: 207, type: !6)
!4321 = !DILocalVariable(name: "i", scope: !4322, file: !71, line: 208, type: !15)
!4322 = distinct !DILexicalBlock(scope: !4315, file: !71, line: 208, column: 5)
!4323 = !DILocation(line: 0, scope: !4322)
!4324 = !DILocation(line: 208, column: 10, scope: !4322)
!4325 = !DILocation(line: 208, scope: !4322)
!4326 = !DILocation(line: 208, column: 26, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4322, file: !71, line: 208, column: 5)
!4328 = !DILocation(line: 208, column: 5, scope: !4322)
!4329 = !DILocation(line: 209, column: 34, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !71, line: 208, column: 36)
!4331 = !DILocation(line: 209, column: 29, scope: !4330)
!4332 = !DILocation(line: 209, column: 16, scope: !4330)
!4333 = !DILocation(line: 209, column: 9, scope: !4330)
!4334 = !DILocation(line: 209, column: 14, scope: !4330)
!4335 = !DILocation(line: 208, column: 31, scope: !4327)
!4336 = !DILocation(line: 208, column: 5, scope: !4327)
!4337 = distinct !{!4337, !4328, !4338, !323}
!4338 = !DILocation(line: 210, column: 5, scope: !4322)
!4339 = !DILocation(line: 211, column: 1, scope: !4315)
!4340 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4341, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{null, !4131, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4132)
!4345 = !DILocalVariable(name: "dest", arg: 1, scope: !4340, file: !71, line: 788, type: !4131)
!4346 = !DILocation(line: 0, scope: !4340)
!4347 = !DILocalVariable(name: "src", arg: 2, scope: !4340, file: !71, line: 788, type: !4343)
!4348 = !DILocation(line: 789, column: 17, scope: !4340)
!4349 = !DILocation(line: 789, column: 15, scope: !4340)
!4350 = !DILocation(line: 790, column: 19, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4340, file: !71, line: 790, column: 9)
!4352 = !DILocation(line: 791, column: 9, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4351, file: !71, line: 790, column: 28)
!4354 = !DILocation(line: 792, column: 5, scope: !4353)
!4355 = !DILocation(line: 793, column: 18, scope: !4340)
!4356 = !DILocation(line: 793, column: 28, scope: !4340)
!4357 = !DILocation(line: 793, column: 5, scope: !4340)
!4358 = !DILocation(line: 794, column: 1, scope: !4340)
!4359 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4360, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4131}
!4362 = !DILocalVariable(name: "state", arg: 1, scope: !4359, file: !71, line: 797, type: !4131)
!4363 = !DILocation(line: 0, scope: !4359)
!4364 = !DILocation(line: 798, column: 17, scope: !4359)
!4365 = !DILocation(line: 798, column: 5, scope: !4359)
!4366 = !DILocation(line: 799, column: 1, scope: !4359)
!4367 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4368, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4370, !3368, !15}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4372)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4373)
!4373 = !{!4374}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4372, file: !71, line: 45, baseType: !5, size: 32)
!4375 = !DILocalVariable(name: "state", arg: 1, scope: !4367, file: !71, line: 812, type: !4370)
!4376 = !DILocation(line: 0, scope: !4367)
!4377 = !DILocalVariable(name: "input", arg: 2, scope: !4367, file: !71, line: 812, type: !3368)
!4378 = !DILocalVariable(name: "inlen", arg: 3, scope: !4367, file: !71, line: 812, type: !15)
!4379 = !DILocation(line: 813, column: 18, scope: !4367)
!4380 = !DILocation(line: 813, column: 16, scope: !4367)
!4381 = !DILocation(line: 814, column: 20, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4367, file: !71, line: 814, column: 9)
!4383 = !DILocation(line: 815, column: 9, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4382, file: !71, line: 814, column: 29)
!4385 = !DILocation(line: 816, column: 5, scope: !4384)
!4386 = !DILocation(line: 817, column: 26, scope: !4367)
!4387 = !DILocation(line: 817, column: 5, scope: !4367)
!4388 = !DILocation(line: 818, column: 1, scope: !4367)
!4389 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4390, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !11, !15, !4370}
!4392 = !DILocalVariable(name: "output", arg: 1, scope: !4389, file: !71, line: 832, type: !11)
!4393 = !DILocation(line: 0, scope: !4389)
!4394 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4389, file: !71, line: 832, type: !15)
!4395 = !DILocalVariable(name: "state", arg: 3, scope: !4389, file: !71, line: 832, type: !4370)
!4396 = !DILocation(line: 833, column: 50, scope: !4389)
!4397 = !DILocation(line: 833, column: 5, scope: !4389)
!4398 = !DILocation(line: 834, column: 1, scope: !4389)
!4399 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4400, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !4370, !4402}
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4371)
!4404 = !DILocalVariable(name: "dest", arg: 1, scope: !4399, file: !71, line: 836, type: !4370)
!4405 = !DILocation(line: 0, scope: !4399)
!4406 = !DILocalVariable(name: "src", arg: 2, scope: !4399, file: !71, line: 836, type: !4402)
!4407 = !DILocation(line: 837, column: 17, scope: !4399)
!4408 = !DILocation(line: 837, column: 15, scope: !4399)
!4409 = !DILocation(line: 838, column: 19, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4399, file: !71, line: 838, column: 9)
!4411 = !DILocation(line: 839, column: 9, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4410, file: !71, line: 838, column: 28)
!4413 = !DILocation(line: 840, column: 5, scope: !4412)
!4414 = !DILocation(line: 841, column: 18, scope: !4399)
!4415 = !DILocation(line: 841, column: 28, scope: !4399)
!4416 = !DILocation(line: 841, column: 5, scope: !4399)
!4417 = !DILocation(line: 842, column: 1, scope: !4399)
!4418 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4419, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !4370}
!4421 = !DILocalVariable(name: "state", arg: 1, scope: !4418, file: !71, line: 845, type: !4370)
!4422 = !DILocation(line: 0, scope: !4418)
!4423 = !DILocation(line: 846, column: 17, scope: !4418)
!4424 = !DILocation(line: 846, column: 5, scope: !4418)
!4425 = !DILocation(line: 847, column: 1, scope: !4418)
!4426 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4427, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !11, !15, !3368, !15}
!4429 = !DILocalVariable(name: "output", arg: 1, scope: !4426, file: !71, line: 859, type: !11)
!4430 = !DILocation(line: 0, scope: !4426)
!4431 = !DILocalVariable(name: "outlen", arg: 2, scope: !4426, file: !71, line: 859, type: !15)
!4432 = !DILocalVariable(name: "input", arg: 3, scope: !4426, file: !71, line: 860, type: !3368)
!4433 = !DILocalVariable(name: "inlen", arg: 4, scope: !4426, file: !71, line: 860, type: !15)
!4434 = !DILocation(line: 861, column: 29, scope: !4426)
!4435 = !DILocalVariable(name: "nblocks", scope: !4426, file: !71, line: 861, type: !15)
!4436 = !DILocalVariable(name: "t", scope: !4426, file: !71, line: 862, type: !4437)
!4437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4438)
!4438 = !{!4439}
!4439 = !DISubrange(count: 168)
!4440 = !DILocation(line: 862, column: 13, scope: !4426)
!4441 = !DILocalVariable(name: "s", scope: !4426, file: !71, line: 863, type: !4132)
!4442 = !DILocation(line: 863, column: 17, scope: !4426)
!4443 = !DILocation(line: 865, column: 5, scope: !4426)
!4444 = !DILocation(line: 866, column: 5, scope: !4426)
!4445 = !DILocation(line: 868, column: 23, scope: !4426)
!4446 = !DILocation(line: 868, column: 12, scope: !4426)
!4447 = !DILocation(line: 869, column: 23, scope: !4426)
!4448 = !DILocation(line: 869, column: 12, scope: !4426)
!4449 = !DILocation(line: 871, column: 9, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4426, file: !71, line: 871, column: 9)
!4451 = !DILocation(line: 872, column: 9, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4450, file: !71, line: 871, column: 17)
!4453 = !DILocalVariable(name: "i", scope: !4454, file: !71, line: 873, type: !15)
!4454 = distinct !DILexicalBlock(scope: !4452, file: !71, line: 873, column: 9)
!4455 = !DILocation(line: 0, scope: !4454)
!4456 = !DILocation(line: 873, column: 14, scope: !4454)
!4457 = !DILocation(line: 873, scope: !4454)
!4458 = !DILocation(line: 873, column: 30, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4454, file: !71, line: 873, column: 9)
!4460 = !DILocation(line: 873, column: 9, scope: !4454)
!4461 = !DILocation(line: 874, column: 25, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4459, file: !71, line: 873, column: 45)
!4463 = !DILocation(line: 874, column: 13, scope: !4462)
!4464 = !DILocation(line: 874, column: 23, scope: !4462)
!4465 = !DILocation(line: 873, column: 40, scope: !4459)
!4466 = !DILocation(line: 873, column: 9, scope: !4459)
!4467 = distinct !{!4467, !4460, !4468, !323}
!4468 = !DILocation(line: 875, column: 9, scope: !4454)
!4469 = !DILocation(line: 877, column: 5, scope: !4426)
!4470 = !DILocation(line: 878, column: 1, scope: !4426)
!4471 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4427, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4472 = !DILocalVariable(name: "output", arg: 1, scope: !4471, file: !71, line: 890, type: !11)
!4473 = !DILocation(line: 0, scope: !4471)
!4474 = !DILocalVariable(name: "outlen", arg: 2, scope: !4471, file: !71, line: 890, type: !15)
!4475 = !DILocalVariable(name: "input", arg: 3, scope: !4471, file: !71, line: 891, type: !3368)
!4476 = !DILocalVariable(name: "inlen", arg: 4, scope: !4471, file: !71, line: 891, type: !15)
!4477 = !DILocation(line: 892, column: 29, scope: !4471)
!4478 = !DILocalVariable(name: "nblocks", scope: !4471, file: !71, line: 892, type: !15)
!4479 = !DILocalVariable(name: "t", scope: !4471, file: !71, line: 893, type: !4480)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4481)
!4481 = !{!4482}
!4482 = !DISubrange(count: 136)
!4483 = !DILocation(line: 893, column: 13, scope: !4471)
!4484 = !DILocalVariable(name: "s", scope: !4471, file: !71, line: 894, type: !4371)
!4485 = !DILocation(line: 894, column: 17, scope: !4471)
!4486 = !DILocation(line: 896, column: 5, scope: !4471)
!4487 = !DILocation(line: 897, column: 5, scope: !4471)
!4488 = !DILocation(line: 899, column: 23, scope: !4471)
!4489 = !DILocation(line: 899, column: 12, scope: !4471)
!4490 = !DILocation(line: 900, column: 23, scope: !4471)
!4491 = !DILocation(line: 900, column: 12, scope: !4471)
!4492 = !DILocation(line: 902, column: 9, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4471, file: !71, line: 902, column: 9)
!4494 = !DILocation(line: 903, column: 9, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4493, file: !71, line: 902, column: 17)
!4496 = !DILocalVariable(name: "i", scope: !4497, file: !71, line: 904, type: !15)
!4497 = distinct !DILexicalBlock(scope: !4495, file: !71, line: 904, column: 9)
!4498 = !DILocation(line: 0, scope: !4497)
!4499 = !DILocation(line: 904, column: 14, scope: !4497)
!4500 = !DILocation(line: 904, scope: !4497)
!4501 = !DILocation(line: 904, column: 30, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4497, file: !71, line: 904, column: 9)
!4503 = !DILocation(line: 904, column: 9, scope: !4497)
!4504 = !DILocation(line: 905, column: 25, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !71, line: 904, column: 45)
!4506 = !DILocation(line: 905, column: 13, scope: !4505)
!4507 = !DILocation(line: 905, column: 23, scope: !4505)
!4508 = !DILocation(line: 904, column: 40, scope: !4502)
!4509 = !DILocation(line: 904, column: 9, scope: !4502)
!4510 = distinct !{!4510, !4503, !4511, !323}
!4511 = !DILocation(line: 906, column: 9, scope: !4497)
!4512 = !DILocation(line: 908, column: 5, scope: !4471)
!4513 = !DILocation(line: 909, column: 1, scope: !4471)
!4514 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4515, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{null, !4517}
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4519)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4520)
!4520 = !{!4521}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4519, file: !71, line: 50, baseType: !5, size: 32)
!4522 = !DILocalVariable(name: "state", arg: 1, scope: !4514, file: !71, line: 911, type: !4517)
!4523 = !DILocation(line: 0, scope: !4514)
!4524 = !DILocation(line: 912, column: 18, scope: !4514)
!4525 = !DILocation(line: 912, column: 16, scope: !4514)
!4526 = !DILocation(line: 913, column: 20, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4514, file: !71, line: 913, column: 9)
!4528 = !DILocation(line: 914, column: 9, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4527, file: !71, line: 913, column: 29)
!4530 = !DILocation(line: 915, column: 5, scope: !4529)
!4531 = !DILocation(line: 916, column: 28, scope: !4514)
!4532 = !DILocation(line: 916, column: 5, scope: !4514)
!4533 = !DILocation(line: 917, column: 1, scope: !4514)
!4534 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4535, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !4517, !4537}
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4518)
!4539 = !DILocalVariable(name: "dest", arg: 1, scope: !4534, file: !71, line: 919, type: !4517)
!4540 = !DILocation(line: 0, scope: !4534)
!4541 = !DILocalVariable(name: "src", arg: 2, scope: !4534, file: !71, line: 919, type: !4537)
!4542 = !DILocation(line: 920, column: 17, scope: !4534)
!4543 = !DILocation(line: 920, column: 15, scope: !4534)
!4544 = !DILocation(line: 921, column: 19, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4534, file: !71, line: 921, column: 9)
!4546 = !DILocation(line: 922, column: 9, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4545, file: !71, line: 921, column: 28)
!4548 = !DILocation(line: 923, column: 5, scope: !4547)
!4549 = !DILocation(line: 924, column: 18, scope: !4534)
!4550 = !DILocation(line: 924, column: 28, scope: !4534)
!4551 = !DILocation(line: 924, column: 5, scope: !4534)
!4552 = !DILocation(line: 925, column: 1, scope: !4534)
!4553 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4515, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4554 = !DILocalVariable(name: "state", arg: 1, scope: !4553, file: !71, line: 927, type: !4517)
!4555 = !DILocation(line: 0, scope: !4553)
!4556 = !DILocation(line: 928, column: 17, scope: !4553)
!4557 = !DILocation(line: 928, column: 5, scope: !4553)
!4558 = !DILocation(line: 929, column: 1, scope: !4553)
!4559 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4560, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{null, !4517, !3368, !15}
!4562 = !DILocalVariable(name: "state", arg: 1, scope: !4559, file: !71, line: 931, type: !4517)
!4563 = !DILocation(line: 0, scope: !4559)
!4564 = !DILocalVariable(name: "input", arg: 2, scope: !4559, file: !71, line: 931, type: !3368)
!4565 = !DILocalVariable(name: "inlen", arg: 3, scope: !4559, file: !71, line: 931, type: !15)
!4566 = !DILocation(line: 932, column: 30, scope: !4559)
!4567 = !DILocation(line: 932, column: 5, scope: !4559)
!4568 = !DILocation(line: 933, column: 1, scope: !4559)
!4569 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4570, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{null, !11, !4517}
!4572 = !DILocalVariable(name: "output", arg: 1, scope: !4569, file: !71, line: 935, type: !11)
!4573 = !DILocation(line: 0, scope: !4569)
!4574 = !DILocalVariable(name: "state", arg: 2, scope: !4569, file: !71, line: 935, type: !4517)
!4575 = !DILocalVariable(name: "t", scope: !4569, file: !71, line: 936, type: !4480)
!4576 = !DILocation(line: 936, column: 13, scope: !4569)
!4577 = !DILocation(line: 937, column: 32, scope: !4569)
!4578 = !DILocation(line: 937, column: 5, scope: !4569)
!4579 = !DILocation(line: 939, column: 39, scope: !4569)
!4580 = !DILocation(line: 939, column: 5, scope: !4569)
!4581 = !DILocation(line: 941, column: 5, scope: !4569)
!4582 = !DILocalVariable(name: "i", scope: !4583, file: !71, line: 943, type: !15)
!4583 = distinct !DILexicalBlock(scope: !4569, file: !71, line: 943, column: 5)
!4584 = !DILocation(line: 0, scope: !4583)
!4585 = !DILocation(line: 943, column: 10, scope: !4583)
!4586 = !DILocation(line: 943, scope: !4583)
!4587 = !DILocation(line: 943, column: 26, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4583, file: !71, line: 943, column: 5)
!4589 = !DILocation(line: 943, column: 5, scope: !4583)
!4590 = !DILocation(line: 944, column: 21, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !71, line: 943, column: 37)
!4592 = !DILocation(line: 944, column: 9, scope: !4591)
!4593 = !DILocation(line: 944, column: 19, scope: !4591)
!4594 = !DILocation(line: 943, column: 33, scope: !4588)
!4595 = !DILocation(line: 943, column: 5, scope: !4588)
!4596 = distinct !{!4596, !4589, !4597, !323}
!4597 = !DILocation(line: 945, column: 5, scope: !4583)
!4598 = !DILocation(line: 946, column: 1, scope: !4569)
!4599 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4600, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{null, !11, !3368, !15}
!4602 = !DILocalVariable(name: "output", arg: 1, scope: !4599, file: !71, line: 957, type: !11)
!4603 = !DILocation(line: 0, scope: !4599)
!4604 = !DILocalVariable(name: "input", arg: 2, scope: !4599, file: !71, line: 957, type: !3368)
!4605 = !DILocalVariable(name: "inlen", arg: 3, scope: !4599, file: !71, line: 957, type: !15)
!4606 = !DILocalVariable(name: "s", scope: !4599, file: !71, line: 958, type: !4607)
!4607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4608)
!4608 = !{!4609}
!4609 = !DISubrange(count: 25)
!4610 = !DILocation(line: 958, column: 14, scope: !4599)
!4611 = !DILocalVariable(name: "t", scope: !4599, file: !71, line: 959, type: !4480)
!4612 = !DILocation(line: 959, column: 13, scope: !4599)
!4613 = !DILocation(line: 962, column: 5, scope: !4599)
!4614 = !DILocation(line: 965, column: 5, scope: !4599)
!4615 = !DILocalVariable(name: "i", scope: !4616, file: !71, line: 967, type: !15)
!4616 = distinct !DILexicalBlock(scope: !4599, file: !71, line: 967, column: 5)
!4617 = !DILocation(line: 0, scope: !4616)
!4618 = !DILocation(line: 967, column: 10, scope: !4616)
!4619 = !DILocation(line: 967, scope: !4616)
!4620 = !DILocation(line: 967, column: 26, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4616, file: !71, line: 967, column: 5)
!4622 = !DILocation(line: 967, column: 5, scope: !4616)
!4623 = !DILocation(line: 968, column: 21, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !71, line: 967, column: 37)
!4625 = !DILocation(line: 968, column: 9, scope: !4624)
!4626 = !DILocation(line: 968, column: 19, scope: !4624)
!4627 = !DILocation(line: 967, column: 33, scope: !4621)
!4628 = !DILocation(line: 967, column: 5, scope: !4621)
!4629 = distinct !{!4629, !4622, !4630, !323}
!4630 = !DILocation(line: 969, column: 5, scope: !4616)
!4631 = !DILocation(line: 970, column: 1, scope: !4599)
!4632 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4633, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4637)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4638)
!4638 = !{!4639}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4637, file: !71, line: 55, baseType: !5, size: 32)
!4640 = !DILocalVariable(name: "state", arg: 1, scope: !4632, file: !71, line: 972, type: !4635)
!4641 = !DILocation(line: 0, scope: !4632)
!4642 = !DILocation(line: 973, column: 18, scope: !4632)
!4643 = !DILocation(line: 973, column: 16, scope: !4632)
!4644 = !DILocation(line: 974, column: 20, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4632, file: !71, line: 974, column: 9)
!4646 = !DILocation(line: 975, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4645, file: !71, line: 974, column: 29)
!4648 = !DILocation(line: 976, column: 5, scope: !4647)
!4649 = !DILocation(line: 977, column: 28, scope: !4632)
!4650 = !DILocation(line: 977, column: 5, scope: !4632)
!4651 = !DILocation(line: 978, column: 1, scope: !4632)
!4652 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4653, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4635, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4636)
!4657 = !DILocalVariable(name: "dest", arg: 1, scope: !4652, file: !71, line: 980, type: !4635)
!4658 = !DILocation(line: 0, scope: !4652)
!4659 = !DILocalVariable(name: "src", arg: 2, scope: !4652, file: !71, line: 980, type: !4655)
!4660 = !DILocation(line: 981, column: 17, scope: !4652)
!4661 = !DILocation(line: 981, column: 15, scope: !4652)
!4662 = !DILocation(line: 982, column: 19, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4652, file: !71, line: 982, column: 9)
!4664 = !DILocation(line: 983, column: 9, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4663, file: !71, line: 982, column: 28)
!4666 = !DILocation(line: 984, column: 5, scope: !4665)
!4667 = !DILocation(line: 985, column: 18, scope: !4652)
!4668 = !DILocation(line: 985, column: 28, scope: !4652)
!4669 = !DILocation(line: 985, column: 5, scope: !4652)
!4670 = !DILocation(line: 986, column: 1, scope: !4652)
!4671 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4672, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !4635, !3368, !15}
!4674 = !DILocalVariable(name: "state", arg: 1, scope: !4671, file: !71, line: 988, type: !4635)
!4675 = !DILocation(line: 0, scope: !4671)
!4676 = !DILocalVariable(name: "input", arg: 2, scope: !4671, file: !71, line: 988, type: !3368)
!4677 = !DILocalVariable(name: "inlen", arg: 3, scope: !4671, file: !71, line: 988, type: !15)
!4678 = !DILocation(line: 989, column: 30, scope: !4671)
!4679 = !DILocation(line: 989, column: 5, scope: !4671)
!4680 = !DILocation(line: 990, column: 1, scope: !4671)
!4681 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4633, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4682 = !DILocalVariable(name: "state", arg: 1, scope: !4681, file: !71, line: 992, type: !4635)
!4683 = !DILocation(line: 0, scope: !4681)
!4684 = !DILocation(line: 993, column: 17, scope: !4681)
!4685 = !DILocation(line: 993, column: 5, scope: !4681)
!4686 = !DILocation(line: 994, column: 1, scope: !4681)
!4687 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4688, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{null, !11, !4635}
!4690 = !DILocalVariable(name: "output", arg: 1, scope: !4687, file: !71, line: 996, type: !11)
!4691 = !DILocation(line: 0, scope: !4687)
!4692 = !DILocalVariable(name: "state", arg: 2, scope: !4687, file: !71, line: 996, type: !4635)
!4693 = !DILocalVariable(name: "t", scope: !4687, file: !71, line: 997, type: !4694)
!4694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4695)
!4695 = !{!4696}
!4696 = !DISubrange(count: 104)
!4697 = !DILocation(line: 997, column: 13, scope: !4687)
!4698 = !DILocation(line: 998, column: 32, scope: !4687)
!4699 = !DILocation(line: 998, column: 5, scope: !4687)
!4700 = !DILocation(line: 1000, column: 39, scope: !4687)
!4701 = !DILocation(line: 1000, column: 5, scope: !4687)
!4702 = !DILocation(line: 1002, column: 5, scope: !4687)
!4703 = !DILocalVariable(name: "i", scope: !4704, file: !71, line: 1004, type: !15)
!4704 = distinct !DILexicalBlock(scope: !4687, file: !71, line: 1004, column: 5)
!4705 = !DILocation(line: 0, scope: !4704)
!4706 = !DILocation(line: 1004, column: 10, scope: !4704)
!4707 = !DILocation(line: 1004, scope: !4704)
!4708 = !DILocation(line: 1004, column: 26, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4704, file: !71, line: 1004, column: 5)
!4710 = !DILocation(line: 1004, column: 5, scope: !4704)
!4711 = !DILocation(line: 1005, column: 21, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4709, file: !71, line: 1004, column: 37)
!4713 = !DILocation(line: 1005, column: 9, scope: !4712)
!4714 = !DILocation(line: 1005, column: 19, scope: !4712)
!4715 = !DILocation(line: 1004, column: 33, scope: !4709)
!4716 = !DILocation(line: 1004, column: 5, scope: !4709)
!4717 = distinct !{!4717, !4710, !4718, !323}
!4718 = !DILocation(line: 1006, column: 5, scope: !4704)
!4719 = !DILocation(line: 1007, column: 1, scope: !4687)
!4720 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4600, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4721 = !DILocalVariable(name: "output", arg: 1, scope: !4720, file: !71, line: 1018, type: !11)
!4722 = !DILocation(line: 0, scope: !4720)
!4723 = !DILocalVariable(name: "input", arg: 2, scope: !4720, file: !71, line: 1018, type: !3368)
!4724 = !DILocalVariable(name: "inlen", arg: 3, scope: !4720, file: !71, line: 1018, type: !15)
!4725 = !DILocalVariable(name: "s", scope: !4720, file: !71, line: 1019, type: !4607)
!4726 = !DILocation(line: 1019, column: 14, scope: !4720)
!4727 = !DILocalVariable(name: "t", scope: !4720, file: !71, line: 1020, type: !4694)
!4728 = !DILocation(line: 1020, column: 13, scope: !4720)
!4729 = !DILocation(line: 1023, column: 5, scope: !4720)
!4730 = !DILocation(line: 1026, column: 5, scope: !4720)
!4731 = !DILocalVariable(name: "i", scope: !4732, file: !71, line: 1028, type: !15)
!4732 = distinct !DILexicalBlock(scope: !4720, file: !71, line: 1028, column: 5)
!4733 = !DILocation(line: 0, scope: !4732)
!4734 = !DILocation(line: 1028, column: 10, scope: !4732)
!4735 = !DILocation(line: 1028, scope: !4732)
!4736 = !DILocation(line: 1028, column: 26, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4732, file: !71, line: 1028, column: 5)
!4738 = !DILocation(line: 1028, column: 5, scope: !4732)
!4739 = !DILocation(line: 1029, column: 21, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4737, file: !71, line: 1028, column: 37)
!4741 = !DILocation(line: 1029, column: 9, scope: !4740)
!4742 = !DILocation(line: 1029, column: 19, scope: !4740)
!4743 = !DILocation(line: 1028, column: 33, scope: !4737)
!4744 = !DILocation(line: 1028, column: 5, scope: !4737)
!4745 = distinct !{!4745, !4738, !4746, !323}
!4746 = !DILocation(line: 1030, column: 5, scope: !4732)
!4747 = !DILocation(line: 1031, column: 1, scope: !4720)
!4748 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4749, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !4751}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4754)
!4754 = !{!4755}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4753, file: !71, line: 60, baseType: !5, size: 32)
!4756 = !DILocalVariable(name: "state", arg: 1, scope: !4748, file: !71, line: 1033, type: !4751)
!4757 = !DILocation(line: 0, scope: !4748)
!4758 = !DILocation(line: 1034, column: 18, scope: !4748)
!4759 = !DILocation(line: 1034, column: 16, scope: !4748)
!4760 = !DILocation(line: 1035, column: 20, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4748, file: !71, line: 1035, column: 9)
!4762 = !DILocation(line: 1036, column: 9, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4761, file: !71, line: 1035, column: 29)
!4764 = !DILocation(line: 1037, column: 5, scope: !4763)
!4765 = !DILocation(line: 1038, column: 28, scope: !4748)
!4766 = !DILocation(line: 1038, column: 5, scope: !4748)
!4767 = !DILocation(line: 1039, column: 1, scope: !4748)
!4768 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4769, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !4751, !4771}
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4752)
!4773 = !DILocalVariable(name: "dest", arg: 1, scope: !4768, file: !71, line: 1041, type: !4751)
!4774 = !DILocation(line: 0, scope: !4768)
!4775 = !DILocalVariable(name: "src", arg: 2, scope: !4768, file: !71, line: 1041, type: !4771)
!4776 = !DILocation(line: 1042, column: 17, scope: !4768)
!4777 = !DILocation(line: 1042, column: 15, scope: !4768)
!4778 = !DILocation(line: 1043, column: 19, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4768, file: !71, line: 1043, column: 9)
!4780 = !DILocation(line: 1044, column: 9, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4779, file: !71, line: 1043, column: 28)
!4782 = !DILocation(line: 1045, column: 5, scope: !4781)
!4783 = !DILocation(line: 1046, column: 18, scope: !4768)
!4784 = !DILocation(line: 1046, column: 28, scope: !4768)
!4785 = !DILocation(line: 1046, column: 5, scope: !4768)
!4786 = !DILocation(line: 1047, column: 1, scope: !4768)
!4787 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4788, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{null, !4751, !3368, !15}
!4790 = !DILocalVariable(name: "state", arg: 1, scope: !4787, file: !71, line: 1049, type: !4751)
!4791 = !DILocation(line: 0, scope: !4787)
!4792 = !DILocalVariable(name: "input", arg: 2, scope: !4787, file: !71, line: 1049, type: !3368)
!4793 = !DILocalVariable(name: "inlen", arg: 3, scope: !4787, file: !71, line: 1049, type: !15)
!4794 = !DILocation(line: 1050, column: 30, scope: !4787)
!4795 = !DILocation(line: 1050, column: 5, scope: !4787)
!4796 = !DILocation(line: 1051, column: 1, scope: !4787)
!4797 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4749, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4798 = !DILocalVariable(name: "state", arg: 1, scope: !4797, file: !71, line: 1053, type: !4751)
!4799 = !DILocation(line: 0, scope: !4797)
!4800 = !DILocation(line: 1054, column: 17, scope: !4797)
!4801 = !DILocation(line: 1054, column: 5, scope: !4797)
!4802 = !DILocation(line: 1055, column: 1, scope: !4797)
!4803 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4804, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{null, !11, !4751}
!4806 = !DILocalVariable(name: "output", arg: 1, scope: !4803, file: !71, line: 1057, type: !11)
!4807 = !DILocation(line: 0, scope: !4803)
!4808 = !DILocalVariable(name: "state", arg: 2, scope: !4803, file: !71, line: 1057, type: !4751)
!4809 = !DILocalVariable(name: "t", scope: !4803, file: !71, line: 1058, type: !4810)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4811)
!4811 = !{!4812}
!4812 = !DISubrange(count: 72)
!4813 = !DILocation(line: 1058, column: 13, scope: !4803)
!4814 = !DILocation(line: 1059, column: 32, scope: !4803)
!4815 = !DILocation(line: 1059, column: 5, scope: !4803)
!4816 = !DILocation(line: 1061, column: 39, scope: !4803)
!4817 = !DILocation(line: 1061, column: 5, scope: !4803)
!4818 = !DILocation(line: 1063, column: 5, scope: !4803)
!4819 = !DILocalVariable(name: "i", scope: !4820, file: !71, line: 1065, type: !15)
!4820 = distinct !DILexicalBlock(scope: !4803, file: !71, line: 1065, column: 5)
!4821 = !DILocation(line: 0, scope: !4820)
!4822 = !DILocation(line: 1065, column: 10, scope: !4820)
!4823 = !DILocation(line: 1065, scope: !4820)
!4824 = !DILocation(line: 1065, column: 26, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4820, file: !71, line: 1065, column: 5)
!4826 = !DILocation(line: 1065, column: 5, scope: !4820)
!4827 = !DILocation(line: 1066, column: 21, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4825, file: !71, line: 1065, column: 37)
!4829 = !DILocation(line: 1066, column: 9, scope: !4828)
!4830 = !DILocation(line: 1066, column: 19, scope: !4828)
!4831 = !DILocation(line: 1065, column: 33, scope: !4825)
!4832 = !DILocation(line: 1065, column: 5, scope: !4825)
!4833 = distinct !{!4833, !4826, !4834, !323}
!4834 = !DILocation(line: 1067, column: 5, scope: !4820)
!4835 = !DILocation(line: 1068, column: 1, scope: !4803)
!4836 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4600, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4837 = !DILocalVariable(name: "output", arg: 1, scope: !4836, file: !71, line: 1079, type: !11)
!4838 = !DILocation(line: 0, scope: !4836)
!4839 = !DILocalVariable(name: "input", arg: 2, scope: !4836, file: !71, line: 1079, type: !3368)
!4840 = !DILocalVariable(name: "inlen", arg: 3, scope: !4836, file: !71, line: 1079, type: !15)
!4841 = !DILocalVariable(name: "s", scope: !4836, file: !71, line: 1080, type: !4607)
!4842 = !DILocation(line: 1080, column: 14, scope: !4836)
!4843 = !DILocalVariable(name: "t", scope: !4836, file: !71, line: 1081, type: !4810)
!4844 = !DILocation(line: 1081, column: 13, scope: !4836)
!4845 = !DILocation(line: 1084, column: 5, scope: !4836)
!4846 = !DILocation(line: 1087, column: 5, scope: !4836)
!4847 = !DILocalVariable(name: "i", scope: !4848, file: !71, line: 1089, type: !15)
!4848 = distinct !DILexicalBlock(scope: !4836, file: !71, line: 1089, column: 5)
!4849 = !DILocation(line: 0, scope: !4848)
!4850 = !DILocation(line: 1089, column: 10, scope: !4848)
!4851 = !DILocation(line: 1089, scope: !4848)
!4852 = !DILocation(line: 1089, column: 26, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4848, file: !71, line: 1089, column: 5)
!4854 = !DILocation(line: 1089, column: 5, scope: !4848)
!4855 = !DILocation(line: 1090, column: 21, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !71, line: 1089, column: 37)
!4857 = !DILocation(line: 1090, column: 9, scope: !4856)
!4858 = !DILocation(line: 1090, column: 19, scope: !4856)
!4859 = !DILocation(line: 1089, column: 33, scope: !4853)
!4860 = !DILocation(line: 1089, column: 5, scope: !4853)
!4861 = distinct !{!4861, !4854, !4862, !323}
!4862 = !DILocation(line: 1091, column: 5, scope: !4848)
!4863 = !DILocation(line: 1092, column: 1, scope: !4836)
!4864 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4865, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{null, !4867, !49}
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4869)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4870)
!4870 = !{!4871}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4869, file: !80, line: 45, baseType: !5, size: 32)
!4872 = !DILocalVariable(name: "r", arg: 1, scope: !4864, file: !80, line: 635, type: !4867)
!4873 = !DILocation(line: 0, scope: !4864)
!4874 = !DILocalVariable(name: "key", arg: 2, scope: !4864, file: !80, line: 635, type: !49)
!4875 = !DILocalVariable(name: "skey", scope: !4864, file: !80, line: 636, type: !4876)
!4876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4877)
!4877 = !{!4878}
!4878 = !DISubrange(count: 22)
!4879 = !DILocation(line: 636, column: 14, scope: !4864)
!4880 = !DILocation(line: 638, column: 17, scope: !4864)
!4881 = !DILocation(line: 638, column: 15, scope: !4864)
!4882 = !DILocation(line: 639, column: 19, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4864, file: !80, line: 639, column: 9)
!4884 = !DILocation(line: 640, column: 9, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4883, file: !80, line: 639, column: 28)
!4886 = !DILocation(line: 641, column: 5, scope: !4885)
!4887 = !DILocation(line: 643, column: 5, scope: !4864)
!4888 = !DILocation(line: 644, column: 32, scope: !4864)
!4889 = !DILocation(line: 644, column: 5, scope: !4864)
!4890 = !DILocation(line: 645, column: 1, scope: !4864)
!4891 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4892, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{null, !5, !49, !17}
!4894 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4891, file: !80, line: 403, type: !5)
!4895 = !DILocation(line: 0, scope: !4891)
!4896 = !DILocalVariable(name: "key", arg: 2, scope: !4891, file: !80, line: 403, type: !49)
!4897 = !DILocalVariable(name: "key_len", arg: 3, scope: !4891, file: !80, line: 403, type: !17)
!4898 = !DILocalVariable(name: "skey", scope: !4891, file: !80, line: 406, type: !4899)
!4899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4900)
!4900 = !{!4901}
!4901 = !DISubrange(count: 60)
!4902 = !DILocation(line: 406, column: 14, scope: !4891)
!4903 = !DILocation(line: 410, column: 26, scope: !4891)
!4904 = !DILocalVariable(name: "nrounds", scope: !4891, file: !80, line: 407, type: !17)
!4905 = !DILocation(line: 409, column: 19, scope: !4891)
!4906 = !DILocalVariable(name: "nk", scope: !4891, file: !80, line: 404, type: !17)
!4907 = !DILocalVariable(name: "nkf", scope: !4891, file: !80, line: 404, type: !17)
!4908 = !DILocation(line: 411, column: 37, scope: !4891)
!4909 = !DILocation(line: 411, column: 5, scope: !4891)
!4910 = !DILocation(line: 412, column: 25, scope: !4891)
!4911 = !DILocation(line: 412, column: 31, scope: !4891)
!4912 = !DILocation(line: 412, column: 11, scope: !4891)
!4913 = !DILocalVariable(name: "tmp", scope: !4891, file: !80, line: 405, type: !19)
!4914 = !DILocalVariable(name: "i", scope: !4891, file: !80, line: 404, type: !17)
!4915 = !DILocalVariable(name: "j", scope: !4891, file: !80, line: 404, type: !17)
!4916 = !DILocalVariable(name: "k", scope: !4891, file: !80, line: 404, type: !17)
!4917 = !DILocation(line: 413, column: 10, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4891, file: !80, line: 413, column: 5)
!4919 = !DILocation(line: 413, scope: !4918)
!4920 = !DILocation(line: 0, scope: !4918)
!4921 = !DILocation(line: 413, column: 34, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4918, file: !80, line: 413, column: 5)
!4923 = !DILocation(line: 413, column: 5, scope: !4918)
!4924 = !DILocation(line: 428, column: 5, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4891, file: !80, line: 428, column: 5)
!4926 = !DILocation(line: 414, column: 15, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !80, line: 414, column: 13)
!4928 = distinct !DILexicalBlock(scope: !4922, file: !80, line: 413, column: 47)
!4929 = !DILocation(line: 415, column: 31, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4927, file: !80, line: 414, column: 21)
!4931 = !DILocation(line: 416, column: 19, scope: !4930)
!4932 = !DILocation(line: 416, column: 35, scope: !4930)
!4933 = !DILocation(line: 416, column: 33, scope: !4930)
!4934 = !DILocation(line: 417, column: 9, scope: !4930)
!4935 = !DILocation(line: 417, column: 23, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4927, file: !80, line: 417, column: 20)
!4937 = !DILocation(line: 417, column: 27, scope: !4936)
!4938 = !DILocation(line: 418, column: 19, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4936, file: !80, line: 417, column: 38)
!4940 = !DILocation(line: 419, column: 9, scope: !4939)
!4941 = !DILocation(line: 0, scope: !4927)
!4942 = !DILocation(line: 420, column: 23, scope: !4928)
!4943 = !DILocation(line: 420, column: 16, scope: !4928)
!4944 = !DILocation(line: 420, column: 13, scope: !4928)
!4945 = !DILocation(line: 421, column: 9, scope: !4928)
!4946 = !DILocation(line: 421, column: 17, scope: !4928)
!4947 = !DILocation(line: 422, column: 13, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4928, file: !80, line: 422, column: 13)
!4949 = !DILocation(line: 422, column: 18, scope: !4948)
!4950 = !DILocation(line: 413, column: 43, scope: !4922)
!4951 = !DILocation(line: 413, column: 5, scope: !4922)
!4952 = distinct !{!4952, !4923, !4953, !323}
!4953 = !DILocation(line: 426, column: 5, scope: !4918)
!4954 = !DILocation(line: 428, scope: !4925)
!4955 = !DILocation(line: 428, column: 26, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4925, file: !80, line: 428, column: 5)
!4957 = !DILocalVariable(name: "q", scope: !4958, file: !80, line: 429, type: !4959)
!4958 = distinct !DILexicalBlock(scope: !4956, file: !80, line: 428, column: 49)
!4959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !4960)
!4960 = !{!4961}
!4961 = !DISubrange(count: 8)
!4962 = !DILocation(line: 429, column: 18, scope: !4958)
!4963 = !DILocation(line: 431, column: 43, scope: !4958)
!4964 = !DILocation(line: 431, column: 54, scope: !4958)
!4965 = !DILocation(line: 431, column: 9, scope: !4958)
!4966 = !DILocation(line: 432, column: 16, scope: !4958)
!4967 = !DILocation(line: 432, column: 9, scope: !4958)
!4968 = !DILocation(line: 432, column: 14, scope: !4958)
!4969 = !DILocation(line: 433, column: 9, scope: !4958)
!4970 = !DILocation(line: 433, column: 14, scope: !4958)
!4971 = !DILocation(line: 434, column: 9, scope: !4958)
!4972 = !DILocation(line: 434, column: 14, scope: !4958)
!4973 = !DILocation(line: 435, column: 16, scope: !4958)
!4974 = !DILocation(line: 435, column: 9, scope: !4958)
!4975 = !DILocation(line: 435, column: 14, scope: !4958)
!4976 = !DILocation(line: 436, column: 9, scope: !4958)
!4977 = !DILocation(line: 436, column: 14, scope: !4958)
!4978 = !DILocation(line: 437, column: 9, scope: !4958)
!4979 = !DILocation(line: 437, column: 14, scope: !4958)
!4980 = !DILocation(line: 438, column: 9, scope: !4958)
!4981 = !DILocation(line: 440, column: 14, scope: !4958)
!4982 = !DILocation(line: 440, column: 19, scope: !4958)
!4983 = !DILocation(line: 441, column: 16, scope: !4958)
!4984 = !DILocation(line: 441, column: 21, scope: !4958)
!4985 = !DILocation(line: 441, column: 13, scope: !4958)
!4986 = !DILocation(line: 442, column: 16, scope: !4958)
!4987 = !DILocation(line: 442, column: 21, scope: !4958)
!4988 = !DILocation(line: 442, column: 13, scope: !4958)
!4989 = !DILocation(line: 443, column: 16, scope: !4958)
!4990 = !DILocation(line: 443, column: 21, scope: !4958)
!4991 = !DILocation(line: 443, column: 13, scope: !4958)
!4992 = !DILocation(line: 439, column: 9, scope: !4958)
!4993 = !DILocation(line: 439, column: 26, scope: !4958)
!4994 = !DILocation(line: 445, column: 14, scope: !4958)
!4995 = !DILocation(line: 445, column: 19, scope: !4958)
!4996 = !DILocation(line: 446, column: 16, scope: !4958)
!4997 = !DILocation(line: 446, column: 21, scope: !4958)
!4998 = !DILocation(line: 446, column: 13, scope: !4958)
!4999 = !DILocation(line: 447, column: 16, scope: !4958)
!5000 = !DILocation(line: 447, column: 21, scope: !4958)
!5001 = !DILocation(line: 447, column: 13, scope: !4958)
!5002 = !DILocation(line: 448, column: 16, scope: !4958)
!5003 = !DILocation(line: 448, column: 21, scope: !4958)
!5004 = !DILocation(line: 448, column: 13, scope: !4958)
!5005 = !DILocation(line: 444, column: 21, scope: !4958)
!5006 = !DILocation(line: 444, column: 9, scope: !4958)
!5007 = !DILocation(line: 444, column: 26, scope: !4958)
!5008 = !DILocation(line: 428, column: 35, scope: !4956)
!5009 = !DILocation(line: 428, column: 43, scope: !4956)
!5010 = !DILocation(line: 428, column: 5, scope: !4956)
!5011 = distinct !{!5011, !4924, !5012, !323}
!5012 = !DILocation(line: 449, column: 5, scope: !4925)
!5013 = !DILocation(line: 450, column: 1, scope: !4891)
!5014 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5015, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{null, !5, !346, !17}
!5017 = !DILocalVariable(name: "skey", arg: 1, scope: !5014, file: !80, line: 452, type: !5)
!5018 = !DILocation(line: 0, scope: !5014)
!5019 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5014, file: !80, line: 452, type: !346)
!5020 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5014, file: !80, line: 452, type: !17)
!5021 = !DILocation(line: 455, column: 23, scope: !5014)
!5022 = !DILocalVariable(name: "n", scope: !5014, file: !80, line: 453, type: !17)
!5023 = !DILocalVariable(name: "u", scope: !5014, file: !80, line: 453, type: !17)
!5024 = !DILocalVariable(name: "v", scope: !5014, file: !80, line: 453, type: !17)
!5025 = !DILocation(line: 456, column: 10, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5014, file: !80, line: 456, column: 5)
!5027 = !DILocation(line: 456, scope: !5026)
!5028 = !DILocation(line: 456, column: 26, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !80, line: 456, column: 5)
!5030 = !DILocation(line: 456, column: 5, scope: !5026)
!5031 = !DILocation(line: 459, column: 29, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5029, file: !80, line: 456, column: 45)
!5033 = !DILocalVariable(name: "x3", scope: !5032, file: !80, line: 457, type: !6)
!5034 = !DILocation(line: 0, scope: !5032)
!5035 = !DILocalVariable(name: "x2", scope: !5032, file: !80, line: 457, type: !6)
!5036 = !DILocalVariable(name: "x1", scope: !5032, file: !80, line: 457, type: !6)
!5037 = !DILocalVariable(name: "x0", scope: !5032, file: !80, line: 457, type: !6)
!5038 = !DILocation(line: 460, column: 12, scope: !5032)
!5039 = !DILocation(line: 464, column: 12, scope: !5032)
!5040 = !DILocation(line: 465, column: 12, scope: !5032)
!5041 = !DILocation(line: 466, column: 12, scope: !5032)
!5042 = !DILocation(line: 467, column: 33, scope: !5032)
!5043 = !DILocation(line: 467, column: 9, scope: !5032)
!5044 = !DILocation(line: 467, column: 21, scope: !5032)
!5045 = !DILocation(line: 468, column: 33, scope: !5032)
!5046 = !DILocation(line: 468, column: 16, scope: !5032)
!5047 = !DILocation(line: 468, column: 9, scope: !5032)
!5048 = !DILocation(line: 468, column: 21, scope: !5032)
!5049 = !DILocation(line: 469, column: 33, scope: !5032)
!5050 = !DILocation(line: 469, column: 16, scope: !5032)
!5051 = !DILocation(line: 469, column: 9, scope: !5032)
!5052 = !DILocation(line: 469, column: 21, scope: !5032)
!5053 = !DILocation(line: 470, column: 33, scope: !5032)
!5054 = !DILocation(line: 470, column: 16, scope: !5032)
!5055 = !DILocation(line: 470, column: 9, scope: !5032)
!5056 = !DILocation(line: 470, column: 21, scope: !5032)
!5057 = !DILocation(line: 456, column: 33, scope: !5029)
!5058 = !DILocation(line: 456, column: 39, scope: !5029)
!5059 = !DILocation(line: 456, column: 5, scope: !5029)
!5060 = distinct !{!5060, !5030, !5061, !323}
!5061 = !DILocation(line: 471, column: 5, scope: !5026)
!5062 = !DILocation(line: 472, column: 1, scope: !5014)
!5063 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5064, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{null, !5066, !15, !49}
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5067 = !DILocalVariable(name: "v", arg: 1, scope: !5063, file: !80, line: 104, type: !5066)
!5068 = !DILocation(line: 0, scope: !5063)
!5069 = !DILocalVariable(name: "num", arg: 2, scope: !5063, file: !80, line: 104, type: !15)
!5070 = !DILocalVariable(name: "src", arg: 3, scope: !5063, file: !80, line: 104, type: !49)
!5071 = !DILocation(line: 105, column: 5, scope: !5063)
!5072 = !DILocation(line: 105, column: 18, scope: !5063)
!5073 = !DILocation(line: 105, column: 15, scope: !5063)
!5074 = !DILocation(line: 106, column: 17, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5063, file: !80, line: 105, column: 23)
!5076 = !DILocation(line: 106, column: 12, scope: !5075)
!5077 = !DILocation(line: 106, column: 15, scope: !5075)
!5078 = !DILocation(line: 107, column: 13, scope: !5075)
!5079 = distinct !{!5079, !5071, !5080, !323}
!5080 = !DILocation(line: 108, column: 5, scope: !5063)
!5081 = !DILocation(line: 109, column: 1, scope: !5063)
!5082 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5083, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!19, !19}
!5085 = !DILocalVariable(name: "x", arg: 1, scope: !5082, file: !80, line: 392, type: !19)
!5086 = !DILocation(line: 0, scope: !5082)
!5087 = !DILocalVariable(name: "q", scope: !5082, file: !80, line: 393, type: !4959)
!5088 = !DILocation(line: 393, column: 14, scope: !5082)
!5089 = !DILocation(line: 395, column: 5, scope: !5082)
!5090 = !DILocation(line: 396, column: 12, scope: !5082)
!5091 = !DILocation(line: 396, column: 10, scope: !5082)
!5092 = !DILocation(line: 397, column: 5, scope: !5082)
!5093 = !DILocation(line: 398, column: 5, scope: !5082)
!5094 = !DILocation(line: 399, column: 5, scope: !5082)
!5095 = !DILocation(line: 400, column: 22, scope: !5082)
!5096 = !DILocation(line: 400, column: 12, scope: !5082)
!5097 = !DILocation(line: 400, column: 5, scope: !5082)
!5098 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5099, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{null, !5, !5, !5101}
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5103 = !DILocalVariable(name: "q0", arg: 1, scope: !5098, file: !80, line: 339, type: !5)
!5104 = !DILocation(line: 0, scope: !5098)
!5105 = !DILocalVariable(name: "q1", arg: 2, scope: !5098, file: !80, line: 339, type: !5)
!5106 = !DILocalVariable(name: "w", arg: 3, scope: !5098, file: !80, line: 339, type: !5101)
!5107 = !DILocation(line: 342, column: 10, scope: !5098)
!5108 = !DILocalVariable(name: "x0", scope: !5098, file: !80, line: 340, type: !6)
!5109 = !DILocation(line: 343, column: 10, scope: !5098)
!5110 = !DILocalVariable(name: "x1", scope: !5098, file: !80, line: 340, type: !6)
!5111 = !DILocation(line: 344, column: 10, scope: !5098)
!5112 = !DILocalVariable(name: "x2", scope: !5098, file: !80, line: 340, type: !6)
!5113 = !DILocation(line: 345, column: 10, scope: !5098)
!5114 = !DILocalVariable(name: "x3", scope: !5098, file: !80, line: 340, type: !6)
!5115 = !DILocation(line: 346, column: 15, scope: !5098)
!5116 = !DILocation(line: 346, column: 8, scope: !5098)
!5117 = !DILocation(line: 347, column: 15, scope: !5098)
!5118 = !DILocation(line: 347, column: 8, scope: !5098)
!5119 = !DILocation(line: 348, column: 15, scope: !5098)
!5120 = !DILocation(line: 348, column: 8, scope: !5098)
!5121 = !DILocation(line: 349, column: 15, scope: !5098)
!5122 = !DILocation(line: 349, column: 8, scope: !5098)
!5123 = !DILocation(line: 350, column: 8, scope: !5098)
!5124 = !DILocation(line: 351, column: 8, scope: !5098)
!5125 = !DILocation(line: 352, column: 8, scope: !5098)
!5126 = !DILocation(line: 353, column: 8, scope: !5098)
!5127 = !DILocation(line: 354, column: 15, scope: !5098)
!5128 = !DILocation(line: 354, column: 8, scope: !5098)
!5129 = !DILocation(line: 355, column: 15, scope: !5098)
!5130 = !DILocation(line: 355, column: 8, scope: !5098)
!5131 = !DILocation(line: 358, column: 8, scope: !5098)
!5132 = !DILocation(line: 359, column: 8, scope: !5098)
!5133 = !DILocation(line: 362, column: 20, scope: !5098)
!5134 = !DILocation(line: 362, column: 14, scope: !5098)
!5135 = !DILocation(line: 362, column: 9, scope: !5098)
!5136 = !DILocation(line: 363, column: 20, scope: !5098)
!5137 = !DILocation(line: 363, column: 14, scope: !5098)
!5138 = !DILocation(line: 363, column: 9, scope: !5098)
!5139 = !DILocation(line: 364, column: 1, scope: !5098)
!5140 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5141 = !DILocalVariable(name: "q", arg: 1, scope: !5140, file: !80, line: 309, type: !5)
!5142 = !DILocation(line: 0, scope: !5140)
!5143 = !DILocation(line: 322, column: 5, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 322, column: 5)
!5145 = !DILocalVariable(name: "a", scope: !5144, file: !80, line: 322, type: !6)
!5146 = !DILocation(line: 0, scope: !5144)
!5147 = !DILocalVariable(name: "b", scope: !5144, file: !80, line: 322, type: !6)
!5148 = !DILocation(line: 323, column: 5, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 323, column: 5)
!5150 = !DILocalVariable(name: "a", scope: !5149, file: !80, line: 323, type: !6)
!5151 = !DILocation(line: 0, scope: !5149)
!5152 = !DILocalVariable(name: "b", scope: !5149, file: !80, line: 323, type: !6)
!5153 = !DILocation(line: 324, column: 5, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 324, column: 5)
!5155 = !DILocalVariable(name: "a", scope: !5154, file: !80, line: 324, type: !6)
!5156 = !DILocation(line: 0, scope: !5154)
!5157 = !DILocalVariable(name: "b", scope: !5154, file: !80, line: 324, type: !6)
!5158 = !DILocation(line: 325, column: 5, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 325, column: 5)
!5160 = !DILocalVariable(name: "a", scope: !5159, file: !80, line: 325, type: !6)
!5161 = !DILocation(line: 0, scope: !5159)
!5162 = !DILocalVariable(name: "b", scope: !5159, file: !80, line: 325, type: !6)
!5163 = !DILocation(line: 327, column: 5, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 327, column: 5)
!5165 = !DILocalVariable(name: "a", scope: !5164, file: !80, line: 327, type: !6)
!5166 = !DILocation(line: 0, scope: !5164)
!5167 = !DILocalVariable(name: "b", scope: !5164, file: !80, line: 327, type: !6)
!5168 = !DILocation(line: 328, column: 5, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 328, column: 5)
!5170 = !DILocalVariable(name: "a", scope: !5169, file: !80, line: 328, type: !6)
!5171 = !DILocation(line: 0, scope: !5169)
!5172 = !DILocalVariable(name: "b", scope: !5169, file: !80, line: 328, type: !6)
!5173 = !DILocation(line: 329, column: 5, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 329, column: 5)
!5175 = !DILocalVariable(name: "a", scope: !5174, file: !80, line: 329, type: !6)
!5176 = !DILocation(line: 0, scope: !5174)
!5177 = !DILocalVariable(name: "b", scope: !5174, file: !80, line: 329, type: !6)
!5178 = !DILocation(line: 330, column: 5, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 330, column: 5)
!5180 = !DILocalVariable(name: "a", scope: !5179, file: !80, line: 330, type: !6)
!5181 = !DILocation(line: 0, scope: !5179)
!5182 = !DILocalVariable(name: "b", scope: !5179, file: !80, line: 330, type: !6)
!5183 = !DILocation(line: 332, column: 5, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 332, column: 5)
!5185 = !DILocalVariable(name: "a", scope: !5184, file: !80, line: 332, type: !6)
!5186 = !DILocation(line: 0, scope: !5184)
!5187 = !DILocalVariable(name: "b", scope: !5184, file: !80, line: 332, type: !6)
!5188 = !DILocation(line: 333, column: 5, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 333, column: 5)
!5190 = !DILocalVariable(name: "a", scope: !5189, file: !80, line: 333, type: !6)
!5191 = !DILocation(line: 0, scope: !5189)
!5192 = !DILocalVariable(name: "b", scope: !5189, file: !80, line: 333, type: !6)
!5193 = !DILocation(line: 334, column: 5, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 334, column: 5)
!5195 = !DILocalVariable(name: "a", scope: !5194, file: !80, line: 334, type: !6)
!5196 = !DILocation(line: 0, scope: !5194)
!5197 = !DILocalVariable(name: "b", scope: !5194, file: !80, line: 334, type: !6)
!5198 = !DILocation(line: 335, column: 5, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 335, column: 5)
!5200 = !DILocalVariable(name: "a", scope: !5199, file: !80, line: 335, type: !6)
!5201 = !DILocation(line: 0, scope: !5199)
!5202 = !DILocalVariable(name: "b", scope: !5199, file: !80, line: 335, type: !6)
!5203 = !DILocation(line: 336, column: 1, scope: !5140)
!5204 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5205 = !DILocalVariable(name: "q", arg: 1, scope: !5204, file: !80, line: 135, type: !5)
!5206 = !DILocation(line: 0, scope: !5204)
!5207 = !DILocation(line: 161, column: 10, scope: !5204)
!5208 = !DILocalVariable(name: "x0", scope: !5204, file: !80, line: 146, type: !6)
!5209 = !DILocation(line: 162, column: 10, scope: !5204)
!5210 = !DILocalVariable(name: "x1", scope: !5204, file: !80, line: 146, type: !6)
!5211 = !DILocation(line: 163, column: 10, scope: !5204)
!5212 = !DILocalVariable(name: "x2", scope: !5204, file: !80, line: 146, type: !6)
!5213 = !DILocation(line: 164, column: 10, scope: !5204)
!5214 = !DILocalVariable(name: "x3", scope: !5204, file: !80, line: 146, type: !6)
!5215 = !DILocation(line: 165, column: 10, scope: !5204)
!5216 = !DILocalVariable(name: "x4", scope: !5204, file: !80, line: 146, type: !6)
!5217 = !DILocation(line: 166, column: 10, scope: !5204)
!5218 = !DILocalVariable(name: "x5", scope: !5204, file: !80, line: 146, type: !6)
!5219 = !DILocation(line: 167, column: 10, scope: !5204)
!5220 = !DILocalVariable(name: "x6", scope: !5204, file: !80, line: 146, type: !6)
!5221 = !DILocation(line: 168, column: 10, scope: !5204)
!5222 = !DILocalVariable(name: "x7", scope: !5204, file: !80, line: 146, type: !6)
!5223 = !DILocation(line: 173, column: 14, scope: !5204)
!5224 = !DILocalVariable(name: "y14", scope: !5204, file: !80, line: 148, type: !6)
!5225 = !DILocation(line: 174, column: 14, scope: !5204)
!5226 = !DILocalVariable(name: "y13", scope: !5204, file: !80, line: 148, type: !6)
!5227 = !DILocation(line: 175, column: 13, scope: !5204)
!5228 = !DILocalVariable(name: "y9", scope: !5204, file: !80, line: 147, type: !6)
!5229 = !DILocation(line: 176, column: 13, scope: !5204)
!5230 = !DILocalVariable(name: "y8", scope: !5204, file: !80, line: 147, type: !6)
!5231 = !DILocation(line: 177, column: 13, scope: !5204)
!5232 = !DILocalVariable(name: "t0", scope: !5204, file: !80, line: 152, type: !6)
!5233 = !DILocation(line: 178, column: 13, scope: !5204)
!5234 = !DILocalVariable(name: "y1", scope: !5204, file: !80, line: 147, type: !6)
!5235 = !DILocation(line: 179, column: 13, scope: !5204)
!5236 = !DILocalVariable(name: "y4", scope: !5204, file: !80, line: 147, type: !6)
!5237 = !DILocation(line: 180, column: 15, scope: !5204)
!5238 = !DILocalVariable(name: "y12", scope: !5204, file: !80, line: 148, type: !6)
!5239 = !DILocation(line: 181, column: 13, scope: !5204)
!5240 = !DILocalVariable(name: "y2", scope: !5204, file: !80, line: 147, type: !6)
!5241 = !DILocation(line: 182, column: 13, scope: !5204)
!5242 = !DILocalVariable(name: "y5", scope: !5204, file: !80, line: 147, type: !6)
!5243 = !DILocation(line: 183, column: 13, scope: !5204)
!5244 = !DILocalVariable(name: "y3", scope: !5204, file: !80, line: 147, type: !6)
!5245 = !DILocation(line: 184, column: 13, scope: !5204)
!5246 = !DILocalVariable(name: "t1", scope: !5204, file: !80, line: 152, type: !6)
!5247 = !DILocation(line: 185, column: 14, scope: !5204)
!5248 = !DILocalVariable(name: "y15", scope: !5204, file: !80, line: 148, type: !6)
!5249 = !DILocation(line: 186, column: 14, scope: !5204)
!5250 = !DILocalVariable(name: "y20", scope: !5204, file: !80, line: 149, type: !6)
!5251 = !DILocation(line: 187, column: 14, scope: !5204)
!5252 = !DILocalVariable(name: "y6", scope: !5204, file: !80, line: 147, type: !6)
!5253 = !DILocation(line: 188, column: 15, scope: !5204)
!5254 = !DILocalVariable(name: "y10", scope: !5204, file: !80, line: 148, type: !6)
!5255 = !DILocation(line: 189, column: 15, scope: !5204)
!5256 = !DILocalVariable(name: "y11", scope: !5204, file: !80, line: 148, type: !6)
!5257 = !DILocation(line: 190, column: 13, scope: !5204)
!5258 = !DILocalVariable(name: "y7", scope: !5204, file: !80, line: 147, type: !6)
!5259 = !DILocation(line: 191, column: 15, scope: !5204)
!5260 = !DILocalVariable(name: "y17", scope: !5204, file: !80, line: 148, type: !6)
!5261 = !DILocalVariable(name: "y19", scope: !5204, file: !80, line: 148, type: !6)
!5262 = !DILocation(line: 193, column: 14, scope: !5204)
!5263 = !DILocalVariable(name: "y16", scope: !5204, file: !80, line: 148, type: !6)
!5264 = !DILocalVariable(name: "y21", scope: !5204, file: !80, line: 149, type: !6)
!5265 = !DILocalVariable(name: "y18", scope: !5204, file: !80, line: 148, type: !6)
!5266 = !DILocation(line: 200, column: 14, scope: !5204)
!5267 = !DILocalVariable(name: "t2", scope: !5204, file: !80, line: 152, type: !6)
!5268 = !DILocation(line: 201, column: 13, scope: !5204)
!5269 = !DILocalVariable(name: "t3", scope: !5204, file: !80, line: 152, type: !6)
!5270 = !DILocation(line: 202, column: 13, scope: !5204)
!5271 = !DILocalVariable(name: "t4", scope: !5204, file: !80, line: 152, type: !6)
!5272 = !DILocation(line: 203, column: 13, scope: !5204)
!5273 = !DILocalVariable(name: "t5", scope: !5204, file: !80, line: 152, type: !6)
!5274 = !DILocalVariable(name: "t6", scope: !5204, file: !80, line: 152, type: !6)
!5275 = !DILocation(line: 205, column: 14, scope: !5204)
!5276 = !DILocalVariable(name: "t7", scope: !5204, file: !80, line: 152, type: !6)
!5277 = !DILocation(line: 206, column: 13, scope: !5204)
!5278 = !DILocalVariable(name: "t8", scope: !5204, file: !80, line: 152, type: !6)
!5279 = !DILocalVariable(name: "t9", scope: !5204, file: !80, line: 152, type: !6)
!5280 = !DILocation(line: 208, column: 14, scope: !5204)
!5281 = !DILocalVariable(name: "t10", scope: !5204, file: !80, line: 153, type: !6)
!5282 = !DILocalVariable(name: "t11", scope: !5204, file: !80, line: 153, type: !6)
!5283 = !DILocation(line: 210, column: 14, scope: !5204)
!5284 = !DILocalVariable(name: "t12", scope: !5204, file: !80, line: 153, type: !6)
!5285 = !DILocation(line: 211, column: 15, scope: !5204)
!5286 = !DILocalVariable(name: "t13", scope: !5204, file: !80, line: 153, type: !6)
!5287 = !DILocation(line: 212, column: 15, scope: !5204)
!5288 = !DILocalVariable(name: "t14", scope: !5204, file: !80, line: 153, type: !6)
!5289 = !DILocation(line: 213, column: 14, scope: !5204)
!5290 = !DILocalVariable(name: "t15", scope: !5204, file: !80, line: 153, type: !6)
!5291 = !DILocation(line: 214, column: 15, scope: !5204)
!5292 = !DILocalVariable(name: "t16", scope: !5204, file: !80, line: 153, type: !6)
!5293 = !DILocation(line: 215, column: 14, scope: !5204)
!5294 = !DILocalVariable(name: "t17", scope: !5204, file: !80, line: 153, type: !6)
!5295 = !DILocalVariable(name: "t18", scope: !5204, file: !80, line: 153, type: !6)
!5296 = !DILocalVariable(name: "t19", scope: !5204, file: !80, line: 153, type: !6)
!5297 = !DILocalVariable(name: "t20", scope: !5204, file: !80, line: 154, type: !6)
!5298 = !DILocation(line: 219, column: 15, scope: !5204)
!5299 = !DILocalVariable(name: "t21", scope: !5204, file: !80, line: 154, type: !6)
!5300 = !DILocation(line: 220, column: 15, scope: !5204)
!5301 = !DILocalVariable(name: "t22", scope: !5204, file: !80, line: 154, type: !6)
!5302 = !DILocation(line: 221, column: 15, scope: !5204)
!5303 = !DILocalVariable(name: "t23", scope: !5204, file: !80, line: 154, type: !6)
!5304 = !DILocation(line: 222, column: 15, scope: !5204)
!5305 = !DILocalVariable(name: "t24", scope: !5204, file: !80, line: 154, type: !6)
!5306 = !DILocation(line: 224, column: 15, scope: !5204)
!5307 = !DILocalVariable(name: "t25", scope: !5204, file: !80, line: 154, type: !6)
!5308 = !DILocation(line: 225, column: 15, scope: !5204)
!5309 = !DILocalVariable(name: "t26", scope: !5204, file: !80, line: 154, type: !6)
!5310 = !DILocation(line: 226, column: 15, scope: !5204)
!5311 = !DILocalVariable(name: "t27", scope: !5204, file: !80, line: 154, type: !6)
!5312 = !DILocation(line: 227, column: 15, scope: !5204)
!5313 = !DILocalVariable(name: "t28", scope: !5204, file: !80, line: 154, type: !6)
!5314 = !DILocation(line: 228, column: 15, scope: !5204)
!5315 = !DILocalVariable(name: "t29", scope: !5204, file: !80, line: 154, type: !6)
!5316 = !DILocation(line: 229, column: 15, scope: !5204)
!5317 = !DILocalVariable(name: "t30", scope: !5204, file: !80, line: 155, type: !6)
!5318 = !DILocation(line: 230, column: 15, scope: !5204)
!5319 = !DILocalVariable(name: "t31", scope: !5204, file: !80, line: 155, type: !6)
!5320 = !DILocation(line: 231, column: 15, scope: !5204)
!5321 = !DILocalVariable(name: "t32", scope: !5204, file: !80, line: 155, type: !6)
!5322 = !DILocation(line: 232, column: 15, scope: !5204)
!5323 = !DILocalVariable(name: "t33", scope: !5204, file: !80, line: 155, type: !6)
!5324 = !DILocation(line: 233, column: 15, scope: !5204)
!5325 = !DILocalVariable(name: "t34", scope: !5204, file: !80, line: 155, type: !6)
!5326 = !DILocation(line: 234, column: 15, scope: !5204)
!5327 = !DILocalVariable(name: "t35", scope: !5204, file: !80, line: 155, type: !6)
!5328 = !DILocation(line: 235, column: 15, scope: !5204)
!5329 = !DILocalVariable(name: "t36", scope: !5204, file: !80, line: 155, type: !6)
!5330 = !DILocation(line: 236, column: 15, scope: !5204)
!5331 = !DILocalVariable(name: "t37", scope: !5204, file: !80, line: 155, type: !6)
!5332 = !DILocation(line: 237, column: 15, scope: !5204)
!5333 = !DILocalVariable(name: "t38", scope: !5204, file: !80, line: 155, type: !6)
!5334 = !DILocation(line: 238, column: 15, scope: !5204)
!5335 = !DILocalVariable(name: "t39", scope: !5204, file: !80, line: 155, type: !6)
!5336 = !DILocation(line: 239, column: 15, scope: !5204)
!5337 = !DILocalVariable(name: "t40", scope: !5204, file: !80, line: 156, type: !6)
!5338 = !DILocation(line: 241, column: 15, scope: !5204)
!5339 = !DILocalVariable(name: "t41", scope: !5204, file: !80, line: 156, type: !6)
!5340 = !DILocation(line: 242, column: 15, scope: !5204)
!5341 = !DILocalVariable(name: "t42", scope: !5204, file: !80, line: 156, type: !6)
!5342 = !DILocation(line: 243, column: 15, scope: !5204)
!5343 = !DILocalVariable(name: "t43", scope: !5204, file: !80, line: 156, type: !6)
!5344 = !DILocation(line: 244, column: 15, scope: !5204)
!5345 = !DILocalVariable(name: "t44", scope: !5204, file: !80, line: 156, type: !6)
!5346 = !DILocation(line: 245, column: 15, scope: !5204)
!5347 = !DILocalVariable(name: "t45", scope: !5204, file: !80, line: 156, type: !6)
!5348 = !DILocation(line: 246, column: 14, scope: !5204)
!5349 = !DILocalVariable(name: "z0", scope: !5204, file: !80, line: 150, type: !6)
!5350 = !DILocation(line: 247, column: 14, scope: !5204)
!5351 = !DILocalVariable(name: "z1", scope: !5204, file: !80, line: 150, type: !6)
!5352 = !DILocation(line: 248, column: 14, scope: !5204)
!5353 = !DILocalVariable(name: "z2", scope: !5204, file: !80, line: 150, type: !6)
!5354 = !DILocation(line: 249, column: 14, scope: !5204)
!5355 = !DILocalVariable(name: "z3", scope: !5204, file: !80, line: 150, type: !6)
!5356 = !DILocation(line: 250, column: 14, scope: !5204)
!5357 = !DILocalVariable(name: "z4", scope: !5204, file: !80, line: 150, type: !6)
!5358 = !DILocation(line: 251, column: 14, scope: !5204)
!5359 = !DILocalVariable(name: "z5", scope: !5204, file: !80, line: 150, type: !6)
!5360 = !DILocation(line: 252, column: 14, scope: !5204)
!5361 = !DILocalVariable(name: "z6", scope: !5204, file: !80, line: 150, type: !6)
!5362 = !DILocation(line: 253, column: 14, scope: !5204)
!5363 = !DILocalVariable(name: "z7", scope: !5204, file: !80, line: 150, type: !6)
!5364 = !DILocation(line: 254, column: 14, scope: !5204)
!5365 = !DILocalVariable(name: "z8", scope: !5204, file: !80, line: 150, type: !6)
!5366 = !DILocation(line: 255, column: 14, scope: !5204)
!5367 = !DILocalVariable(name: "z9", scope: !5204, file: !80, line: 150, type: !6)
!5368 = !DILocation(line: 256, column: 15, scope: !5204)
!5369 = !DILocalVariable(name: "z10", scope: !5204, file: !80, line: 151, type: !6)
!5370 = !DILocation(line: 257, column: 15, scope: !5204)
!5371 = !DILocalVariable(name: "z11", scope: !5204, file: !80, line: 151, type: !6)
!5372 = !DILocation(line: 258, column: 15, scope: !5204)
!5373 = !DILocalVariable(name: "z12", scope: !5204, file: !80, line: 151, type: !6)
!5374 = !DILocation(line: 259, column: 15, scope: !5204)
!5375 = !DILocalVariable(name: "z13", scope: !5204, file: !80, line: 151, type: !6)
!5376 = !DILocation(line: 260, column: 15, scope: !5204)
!5377 = !DILocalVariable(name: "z14", scope: !5204, file: !80, line: 151, type: !6)
!5378 = !DILocation(line: 261, column: 15, scope: !5204)
!5379 = !DILocalVariable(name: "z15", scope: !5204, file: !80, line: 151, type: !6)
!5380 = !DILocation(line: 262, column: 15, scope: !5204)
!5381 = !DILocalVariable(name: "z16", scope: !5204, file: !80, line: 151, type: !6)
!5382 = !DILocation(line: 263, column: 15, scope: !5204)
!5383 = !DILocalVariable(name: "z17", scope: !5204, file: !80, line: 151, type: !6)
!5384 = !DILocation(line: 268, column: 15, scope: !5204)
!5385 = !DILocalVariable(name: "t46", scope: !5204, file: !80, line: 156, type: !6)
!5386 = !DILocation(line: 269, column: 15, scope: !5204)
!5387 = !DILocalVariable(name: "t47", scope: !5204, file: !80, line: 156, type: !6)
!5388 = !DILocation(line: 270, column: 14, scope: !5204)
!5389 = !DILocalVariable(name: "t48", scope: !5204, file: !80, line: 156, type: !6)
!5390 = !DILocation(line: 271, column: 14, scope: !5204)
!5391 = !DILocalVariable(name: "t49", scope: !5204, file: !80, line: 156, type: !6)
!5392 = !DILocation(line: 272, column: 14, scope: !5204)
!5393 = !DILocalVariable(name: "t50", scope: !5204, file: !80, line: 157, type: !6)
!5394 = !DILocation(line: 273, column: 14, scope: !5204)
!5395 = !DILocalVariable(name: "t51", scope: !5204, file: !80, line: 157, type: !6)
!5396 = !DILocation(line: 274, column: 14, scope: !5204)
!5397 = !DILocalVariable(name: "t52", scope: !5204, file: !80, line: 157, type: !6)
!5398 = !DILocation(line: 275, column: 14, scope: !5204)
!5399 = !DILocalVariable(name: "t53", scope: !5204, file: !80, line: 157, type: !6)
!5400 = !DILocation(line: 276, column: 14, scope: !5204)
!5401 = !DILocalVariable(name: "t54", scope: !5204, file: !80, line: 157, type: !6)
!5402 = !DILocation(line: 277, column: 15, scope: !5204)
!5403 = !DILocalVariable(name: "t55", scope: !5204, file: !80, line: 157, type: !6)
!5404 = !DILocation(line: 278, column: 15, scope: !5204)
!5405 = !DILocalVariable(name: "t56", scope: !5204, file: !80, line: 157, type: !6)
!5406 = !DILocation(line: 279, column: 15, scope: !5204)
!5407 = !DILocalVariable(name: "t57", scope: !5204, file: !80, line: 157, type: !6)
!5408 = !DILocation(line: 280, column: 14, scope: !5204)
!5409 = !DILocalVariable(name: "t58", scope: !5204, file: !80, line: 157, type: !6)
!5410 = !DILocation(line: 281, column: 14, scope: !5204)
!5411 = !DILocalVariable(name: "t59", scope: !5204, file: !80, line: 157, type: !6)
!5412 = !DILocation(line: 282, column: 15, scope: !5204)
!5413 = !DILocalVariable(name: "t60", scope: !5204, file: !80, line: 158, type: !6)
!5414 = !DILocation(line: 283, column: 15, scope: !5204)
!5415 = !DILocalVariable(name: "t61", scope: !5204, file: !80, line: 158, type: !6)
!5416 = !DILocation(line: 284, column: 15, scope: !5204)
!5417 = !DILocalVariable(name: "t62", scope: !5204, file: !80, line: 158, type: !6)
!5418 = !DILocation(line: 285, column: 15, scope: !5204)
!5419 = !DILocalVariable(name: "t63", scope: !5204, file: !80, line: 158, type: !6)
!5420 = !DILocation(line: 286, column: 14, scope: !5204)
!5421 = !DILocalVariable(name: "t64", scope: !5204, file: !80, line: 158, type: !6)
!5422 = !DILocation(line: 287, column: 15, scope: !5204)
!5423 = !DILocalVariable(name: "t65", scope: !5204, file: !80, line: 158, type: !6)
!5424 = !DILocation(line: 288, column: 14, scope: !5204)
!5425 = !DILocalVariable(name: "t66", scope: !5204, file: !80, line: 158, type: !6)
!5426 = !DILocation(line: 289, column: 14, scope: !5204)
!5427 = !DILocalVariable(name: "s0", scope: !5204, file: !80, line: 159, type: !6)
!5428 = !DILocation(line: 290, column: 14, scope: !5204)
!5429 = !DILocalVariable(name: "s6", scope: !5204, file: !80, line: 159, type: !6)
!5430 = !DILocation(line: 291, column: 14, scope: !5204)
!5431 = !DILocalVariable(name: "s7", scope: !5204, file: !80, line: 159, type: !6)
!5432 = !DILocalVariable(name: "t67", scope: !5204, file: !80, line: 158, type: !6)
!5433 = !DILocation(line: 293, column: 14, scope: !5204)
!5434 = !DILocalVariable(name: "s3", scope: !5204, file: !80, line: 159, type: !6)
!5435 = !DILocation(line: 294, column: 14, scope: !5204)
!5436 = !DILocalVariable(name: "s4", scope: !5204, file: !80, line: 159, type: !6)
!5437 = !DILocation(line: 295, column: 14, scope: !5204)
!5438 = !DILocalVariable(name: "s5", scope: !5204, file: !80, line: 159, type: !6)
!5439 = !DILocation(line: 296, column: 14, scope: !5204)
!5440 = !DILocalVariable(name: "s1", scope: !5204, file: !80, line: 159, type: !6)
!5441 = !DILocation(line: 297, column: 14, scope: !5204)
!5442 = !DILocalVariable(name: "s2", scope: !5204, file: !80, line: 159, type: !6)
!5443 = !DILocation(line: 299, column: 5, scope: !5204)
!5444 = !DILocation(line: 299, column: 10, scope: !5204)
!5445 = !DILocation(line: 300, column: 5, scope: !5204)
!5446 = !DILocation(line: 300, column: 10, scope: !5204)
!5447 = !DILocation(line: 301, column: 5, scope: !5204)
!5448 = !DILocation(line: 301, column: 10, scope: !5204)
!5449 = !DILocation(line: 302, column: 5, scope: !5204)
!5450 = !DILocation(line: 302, column: 10, scope: !5204)
!5451 = !DILocation(line: 303, column: 5, scope: !5204)
!5452 = !DILocation(line: 303, column: 10, scope: !5204)
!5453 = !DILocation(line: 304, column: 5, scope: !5204)
!5454 = !DILocation(line: 304, column: 10, scope: !5204)
!5455 = !DILocation(line: 305, column: 5, scope: !5204)
!5456 = !DILocation(line: 305, column: 10, scope: !5204)
!5457 = !DILocation(line: 306, column: 10, scope: !5204)
!5458 = !DILocation(line: 307, column: 1, scope: !5204)
!5459 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5460, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!19, !49}
!5462 = !DILocalVariable(name: "src", arg: 1, scope: !5459, file: !80, line: 96, type: !49)
!5463 = !DILocation(line: 0, scope: !5459)
!5464 = !DILocation(line: 97, column: 22, scope: !5459)
!5465 = !DILocation(line: 97, column: 12, scope: !5459)
!5466 = !DILocation(line: 98, column: 25, scope: !5459)
!5467 = !DILocation(line: 98, column: 15, scope: !5459)
!5468 = !DILocation(line: 98, column: 32, scope: !5459)
!5469 = !DILocation(line: 98, column: 12, scope: !5459)
!5470 = !DILocation(line: 99, column: 25, scope: !5459)
!5471 = !DILocation(line: 99, column: 15, scope: !5459)
!5472 = !DILocation(line: 99, column: 32, scope: !5459)
!5473 = !DILocation(line: 99, column: 12, scope: !5459)
!5474 = !DILocation(line: 100, column: 25, scope: !5459)
!5475 = !DILocation(line: 100, column: 15, scope: !5459)
!5476 = !DILocation(line: 100, column: 32, scope: !5459)
!5477 = !DILocation(line: 100, column: 12, scope: !5459)
!5478 = !DILocation(line: 97, column: 5, scope: !5459)
!5479 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4865, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5480 = !DILocalVariable(name: "r", arg: 1, scope: !5479, file: !80, line: 647, type: !4867)
!5481 = !DILocation(line: 0, scope: !5479)
!5482 = !DILocalVariable(name: "key", arg: 2, scope: !5479, file: !80, line: 647, type: !49)
!5483 = !DILocation(line: 648, column: 5, scope: !5479)
!5484 = !DILocation(line: 649, column: 1, scope: !5479)
!5485 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5486, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{null, !5488, !49}
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 32)
!5489 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5490)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5491)
!5491 = !{!5492}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5490, file: !80, line: 50, baseType: !5, size: 32)
!5493 = !DILocalVariable(name: "r", arg: 1, scope: !5485, file: !80, line: 652, type: !5488)
!5494 = !DILocation(line: 0, scope: !5485)
!5495 = !DILocalVariable(name: "key", arg: 2, scope: !5485, file: !80, line: 652, type: !49)
!5496 = !DILocalVariable(name: "skey", scope: !5485, file: !80, line: 653, type: !5497)
!5497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5498)
!5498 = !{!5499}
!5499 = !DISubrange(count: 26)
!5500 = !DILocation(line: 653, column: 14, scope: !5485)
!5501 = !DILocation(line: 654, column: 17, scope: !5485)
!5502 = !DILocation(line: 654, column: 15, scope: !5485)
!5503 = !DILocation(line: 655, column: 19, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5485, file: !80, line: 655, column: 9)
!5505 = !DILocation(line: 656, column: 9, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5504, file: !80, line: 655, column: 28)
!5507 = !DILocation(line: 657, column: 5, scope: !5506)
!5508 = !DILocation(line: 659, column: 5, scope: !5485)
!5509 = !DILocation(line: 660, column: 32, scope: !5485)
!5510 = !DILocation(line: 660, column: 5, scope: !5485)
!5511 = !DILocation(line: 661, column: 1, scope: !5485)
!5512 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5486, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5513 = !DILocalVariable(name: "r", arg: 1, scope: !5512, file: !80, line: 664, type: !5488)
!5514 = !DILocation(line: 0, scope: !5512)
!5515 = !DILocalVariable(name: "key", arg: 2, scope: !5512, file: !80, line: 664, type: !49)
!5516 = !DILocation(line: 665, column: 5, scope: !5512)
!5517 = !DILocation(line: 666, column: 1, scope: !5512)
!5518 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5519, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{null, !5521, !49}
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 32)
!5522 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5523)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5524)
!5524 = !{!5525}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5523, file: !80, line: 55, baseType: !5, size: 32)
!5526 = !DILocalVariable(name: "r", arg: 1, scope: !5518, file: !80, line: 669, type: !5521)
!5527 = !DILocation(line: 0, scope: !5518)
!5528 = !DILocalVariable(name: "key", arg: 2, scope: !5518, file: !80, line: 669, type: !49)
!5529 = !DILocalVariable(name: "skey", scope: !5518, file: !80, line: 670, type: !5530)
!5530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5531)
!5531 = !{!5532}
!5532 = !DISubrange(count: 30)
!5533 = !DILocation(line: 670, column: 14, scope: !5518)
!5534 = !DILocation(line: 671, column: 17, scope: !5518)
!5535 = !DILocation(line: 671, column: 15, scope: !5518)
!5536 = !DILocation(line: 672, column: 19, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5518, file: !80, line: 672, column: 9)
!5538 = !DILocation(line: 673, column: 9, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5537, file: !80, line: 672, column: 28)
!5540 = !DILocation(line: 674, column: 5, scope: !5539)
!5541 = !DILocation(line: 676, column: 5, scope: !5518)
!5542 = !DILocation(line: 677, column: 32, scope: !5518)
!5543 = !DILocation(line: 677, column: 5, scope: !5518)
!5544 = !DILocation(line: 678, column: 1, scope: !5518)
!5545 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5519, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5546 = !DILocalVariable(name: "r", arg: 1, scope: !5545, file: !80, line: 681, type: !5521)
!5547 = !DILocation(line: 0, scope: !5545)
!5548 = !DILocalVariable(name: "key", arg: 2, scope: !5545, file: !80, line: 681, type: !49)
!5549 = !DILocation(line: 682, column: 5, scope: !5545)
!5550 = !DILocation(line: 683, column: 1, scope: !5545)
!5551 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5552, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{null, !18, !49, !15, !5554}
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 32)
!5555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4868)
!5556 = !DILocalVariable(name: "out", arg: 1, scope: !5551, file: !80, line: 686, type: !18)
!5557 = !DILocation(line: 0, scope: !5551)
!5558 = !DILocalVariable(name: "in", arg: 2, scope: !5551, file: !80, line: 686, type: !49)
!5559 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5551, file: !80, line: 686, type: !15)
!5560 = !DILocalVariable(name: "ctx", arg: 4, scope: !5551, file: !80, line: 686, type: !5554)
!5561 = !DILocation(line: 687, column: 36, scope: !5551)
!5562 = !DILocation(line: 687, column: 5, scope: !5551)
!5563 = !DILocation(line: 688, column: 1, scope: !5551)
!5564 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5565, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{null, !18, !49, !15, !346, !17}
!5567 = !DILocalVariable(name: "out", arg: 1, scope: !5564, file: !80, line: 587, type: !18)
!5568 = !DILocation(line: 0, scope: !5564)
!5569 = !DILocalVariable(name: "in", arg: 2, scope: !5564, file: !80, line: 587, type: !49)
!5570 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5564, file: !80, line: 587, type: !15)
!5571 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5564, file: !80, line: 587, type: !346)
!5572 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5564, file: !80, line: 587, type: !17)
!5573 = !DILocalVariable(name: "blocks", scope: !5564, file: !80, line: 588, type: !5574)
!5574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !1283)
!5575 = !DILocation(line: 588, column: 14, scope: !5564)
!5576 = !DILocalVariable(name: "t", scope: !5564, file: !80, line: 589, type: !5577)
!5577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5578)
!5578 = !{!5579}
!5579 = !DISubrange(count: 64)
!5580 = !DILocation(line: 589, column: 19, scope: !5564)
!5581 = !DILocation(line: 591, column: 5, scope: !5564)
!5582 = !DILocation(line: 591, column: 20, scope: !5564)
!5583 = !DILocation(line: 592, column: 9, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5564, file: !80, line: 591, column: 26)
!5585 = !DILocation(line: 593, column: 9, scope: !5584)
!5586 = !DILocation(line: 594, column: 17, scope: !5584)
!5587 = !DILocation(line: 595, column: 12, scope: !5584)
!5588 = !DILocation(line: 596, column: 13, scope: !5584)
!5589 = distinct !{!5589, !5581, !5590, !323}
!5590 = !DILocation(line: 597, column: 5, scope: !5564)
!5591 = !DILocation(line: 599, column: 9, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5564, file: !80, line: 599, column: 9)
!5593 = !DILocation(line: 600, column: 42, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5592, file: !80, line: 599, column: 18)
!5595 = !DILocation(line: 600, column: 9, scope: !5594)
!5596 = !DILocation(line: 601, column: 9, scope: !5594)
!5597 = !DILocation(line: 602, column: 32, scope: !5594)
!5598 = !DILocation(line: 602, column: 9, scope: !5594)
!5599 = !DILocation(line: 603, column: 5, scope: !5594)
!5600 = !DILocation(line: 604, column: 1, scope: !5564)
!5601 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5602, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{null, !18, !5101, !346, !17}
!5604 = !DILocalVariable(name: "out", arg: 1, scope: !5601, file: !80, line: 545, type: !18)
!5605 = !DILocation(line: 0, scope: !5601)
!5606 = !DILocalVariable(name: "ivw", arg: 2, scope: !5601, file: !80, line: 545, type: !5101)
!5607 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5601, file: !80, line: 545, type: !346)
!5608 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5601, file: !80, line: 545, type: !17)
!5609 = !DILocalVariable(name: "w", scope: !5601, file: !80, line: 546, type: !5574)
!5610 = !DILocation(line: 546, column: 14, scope: !5601)
!5611 = !DILocalVariable(name: "q", scope: !5601, file: !80, line: 547, type: !4959)
!5612 = !DILocation(line: 547, column: 14, scope: !5601)
!5613 = !DILocation(line: 550, column: 5, scope: !5601)
!5614 = !DILocalVariable(name: "i", scope: !5601, file: !80, line: 548, type: !17)
!5615 = !DILocation(line: 551, column: 10, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5601, file: !80, line: 551, column: 5)
!5617 = !DILocation(line: 551, scope: !5616)
!5618 = !DILocation(line: 551, column: 19, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5616, file: !80, line: 551, column: 5)
!5620 = !DILocation(line: 551, column: 5, scope: !5616)
!5621 = !DILocation(line: 552, column: 36, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5619, file: !80, line: 551, column: 29)
!5623 = !DILocation(line: 552, column: 47, scope: !5622)
!5624 = !DILocation(line: 552, column: 43, scope: !5622)
!5625 = !DILocation(line: 552, column: 55, scope: !5622)
!5626 = !DILocation(line: 552, column: 9, scope: !5622)
!5627 = !DILocation(line: 551, column: 25, scope: !5619)
!5628 = !DILocation(line: 551, column: 5, scope: !5619)
!5629 = distinct !{!5629, !5620, !5630, !323}
!5630 = !DILocation(line: 553, column: 5, scope: !5616)
!5631 = !DILocation(line: 554, column: 5, scope: !5601)
!5632 = !DILocation(line: 557, column: 5, scope: !5601)
!5633 = !DILocation(line: 558, column: 10, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5601, file: !80, line: 558, column: 5)
!5635 = !DILocation(line: 558, scope: !5634)
!5636 = !DILocation(line: 558, column: 19, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5634, file: !80, line: 558, column: 5)
!5638 = !DILocation(line: 558, column: 5, scope: !5634)
!5639 = !DILocation(line: 559, column: 9, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !80, line: 558, column: 35)
!5641 = !DILocation(line: 560, column: 9, scope: !5640)
!5642 = !DILocation(line: 561, column: 9, scope: !5640)
!5643 = !DILocation(line: 562, column: 33, scope: !5640)
!5644 = !DILocation(line: 562, column: 9, scope: !5640)
!5645 = !DILocation(line: 558, column: 31, scope: !5637)
!5646 = !DILocation(line: 558, column: 5, scope: !5637)
!5647 = distinct !{!5647, !5638, !5648, !323}
!5648 = !DILocation(line: 563, column: 5, scope: !5634)
!5649 = !DILocation(line: 564, column: 5, scope: !5601)
!5650 = !DILocation(line: 565, column: 5, scope: !5601)
!5651 = !DILocation(line: 566, column: 29, scope: !5601)
!5652 = !DILocation(line: 566, column: 5, scope: !5601)
!5653 = !DILocation(line: 568, column: 5, scope: !5601)
!5654 = !DILocation(line: 569, column: 10, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5601, file: !80, line: 569, column: 5)
!5656 = !DILocation(line: 569, scope: !5655)
!5657 = !DILocation(line: 569, column: 19, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5655, file: !80, line: 569, column: 5)
!5659 = !DILocation(line: 569, column: 5, scope: !5655)
!5660 = !DILocation(line: 570, column: 38, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5658, file: !80, line: 569, column: 30)
!5662 = !DILocation(line: 570, column: 50, scope: !5661)
!5663 = !DILocation(line: 570, column: 60, scope: !5661)
!5664 = !DILocation(line: 570, column: 56, scope: !5661)
!5665 = !DILocation(line: 570, column: 9, scope: !5661)
!5666 = !DILocation(line: 569, column: 26, scope: !5658)
!5667 = !DILocation(line: 569, column: 5, scope: !5658)
!5668 = distinct !{!5668, !5659, !5669, !323}
!5669 = !DILocation(line: 571, column: 5, scope: !5655)
!5670 = !DILocation(line: 572, column: 5, scope: !5601)
!5671 = !DILocation(line: 573, column: 1, scope: !5601)
!5672 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5673, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{null, !5, !346}
!5675 = !DILocalVariable(name: "q", arg: 1, scope: !5672, file: !80, line: 475, type: !5)
!5676 = !DILocation(line: 0, scope: !5672)
!5677 = !DILocalVariable(name: "sk", arg: 2, scope: !5672, file: !80, line: 475, type: !346)
!5678 = !DILocation(line: 476, column: 13, scope: !5672)
!5679 = !DILocation(line: 476, column: 10, scope: !5672)
!5680 = !DILocation(line: 477, column: 13, scope: !5672)
!5681 = !DILocation(line: 477, column: 5, scope: !5672)
!5682 = !DILocation(line: 477, column: 10, scope: !5672)
!5683 = !DILocation(line: 478, column: 13, scope: !5672)
!5684 = !DILocation(line: 478, column: 5, scope: !5672)
!5685 = !DILocation(line: 478, column: 10, scope: !5672)
!5686 = !DILocation(line: 479, column: 13, scope: !5672)
!5687 = !DILocation(line: 479, column: 5, scope: !5672)
!5688 = !DILocation(line: 479, column: 10, scope: !5672)
!5689 = !DILocation(line: 480, column: 13, scope: !5672)
!5690 = !DILocation(line: 480, column: 5, scope: !5672)
!5691 = !DILocation(line: 480, column: 10, scope: !5672)
!5692 = !DILocation(line: 481, column: 13, scope: !5672)
!5693 = !DILocation(line: 481, column: 5, scope: !5672)
!5694 = !DILocation(line: 481, column: 10, scope: !5672)
!5695 = !DILocation(line: 482, column: 13, scope: !5672)
!5696 = !DILocation(line: 482, column: 5, scope: !5672)
!5697 = !DILocation(line: 482, column: 10, scope: !5672)
!5698 = !DILocation(line: 483, column: 13, scope: !5672)
!5699 = !DILocation(line: 483, column: 5, scope: !5672)
!5700 = !DILocation(line: 483, column: 10, scope: !5672)
!5701 = !DILocation(line: 484, column: 1, scope: !5672)
!5702 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5703 = !DILocalVariable(name: "q", arg: 1, scope: !5702, file: !80, line: 486, type: !5)
!5704 = !DILocation(line: 0, scope: !5702)
!5705 = !DILocalVariable(name: "i", scope: !5702, file: !80, line: 487, type: !45)
!5706 = !DILocation(line: 489, column: 10, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5702, file: !80, line: 489, column: 5)
!5708 = !DILocation(line: 489, scope: !5707)
!5709 = !DILocation(line: 489, column: 19, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5707, file: !80, line: 489, column: 5)
!5711 = !DILocation(line: 489, column: 5, scope: !5707)
!5712 = !DILocation(line: 492, column: 13, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5710, file: !80, line: 489, column: 30)
!5714 = !DILocalVariable(name: "x", scope: !5713, file: !80, line: 490, type: !6)
!5715 = !DILocation(line: 0, scope: !5713)
!5716 = !DILocation(line: 493, column: 19, scope: !5713)
!5717 = !DILocation(line: 494, column: 54, scope: !5713)
!5718 = !DILocation(line: 494, column: 16, scope: !5713)
!5719 = !DILocation(line: 495, column: 54, scope: !5713)
!5720 = !DILocation(line: 495, column: 16, scope: !5713)
!5721 = !DILocation(line: 496, column: 54, scope: !5713)
!5722 = !DILocation(line: 496, column: 16, scope: !5713)
!5723 = !DILocation(line: 497, column: 54, scope: !5713)
!5724 = !DILocation(line: 497, column: 16, scope: !5713)
!5725 = !DILocation(line: 498, column: 54, scope: !5713)
!5726 = !DILocation(line: 498, column: 16, scope: !5713)
!5727 = !DILocation(line: 499, column: 54, scope: !5713)
!5728 = !DILocation(line: 499, column: 16, scope: !5713)
!5729 = !DILocation(line: 493, column: 9, scope: !5713)
!5730 = !DILocation(line: 493, column: 14, scope: !5713)
!5731 = !DILocation(line: 489, column: 26, scope: !5710)
!5732 = !DILocation(line: 489, column: 5, scope: !5710)
!5733 = distinct !{!5733, !5711, !5734, !323}
!5734 = !DILocation(line: 500, column: 5, scope: !5707)
!5735 = !DILocation(line: 501, column: 1, scope: !5702)
!5736 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5737 = !DILocalVariable(name: "q", arg: 1, scope: !5736, file: !80, line: 507, type: !5)
!5738 = !DILocation(line: 0, scope: !5736)
!5739 = !DILocation(line: 511, column: 10, scope: !5736)
!5740 = !DILocalVariable(name: "q0", scope: !5736, file: !80, line: 508, type: !6)
!5741 = !DILocation(line: 512, column: 10, scope: !5736)
!5742 = !DILocalVariable(name: "q1", scope: !5736, file: !80, line: 508, type: !6)
!5743 = !DILocation(line: 513, column: 10, scope: !5736)
!5744 = !DILocalVariable(name: "q2", scope: !5736, file: !80, line: 508, type: !6)
!5745 = !DILocation(line: 514, column: 10, scope: !5736)
!5746 = !DILocalVariable(name: "q3", scope: !5736, file: !80, line: 508, type: !6)
!5747 = !DILocation(line: 515, column: 10, scope: !5736)
!5748 = !DILocalVariable(name: "q4", scope: !5736, file: !80, line: 508, type: !6)
!5749 = !DILocation(line: 516, column: 10, scope: !5736)
!5750 = !DILocalVariable(name: "q5", scope: !5736, file: !80, line: 508, type: !6)
!5751 = !DILocation(line: 517, column: 10, scope: !5736)
!5752 = !DILocalVariable(name: "q6", scope: !5736, file: !80, line: 508, type: !6)
!5753 = !DILocation(line: 518, column: 10, scope: !5736)
!5754 = !DILocalVariable(name: "q7", scope: !5736, file: !80, line: 508, type: !6)
!5755 = !DILocation(line: 519, column: 21, scope: !5736)
!5756 = !DILocalVariable(name: "r0", scope: !5736, file: !80, line: 509, type: !6)
!5757 = !DILocation(line: 520, column: 21, scope: !5736)
!5758 = !DILocalVariable(name: "r1", scope: !5736, file: !80, line: 509, type: !6)
!5759 = !DILocation(line: 521, column: 21, scope: !5736)
!5760 = !DILocalVariable(name: "r2", scope: !5736, file: !80, line: 509, type: !6)
!5761 = !DILocation(line: 522, column: 21, scope: !5736)
!5762 = !DILocalVariable(name: "r3", scope: !5736, file: !80, line: 509, type: !6)
!5763 = !DILocation(line: 523, column: 21, scope: !5736)
!5764 = !DILocalVariable(name: "r4", scope: !5736, file: !80, line: 509, type: !6)
!5765 = !DILocation(line: 524, column: 21, scope: !5736)
!5766 = !DILocalVariable(name: "r5", scope: !5736, file: !80, line: 509, type: !6)
!5767 = !DILocation(line: 525, column: 21, scope: !5736)
!5768 = !DILocalVariable(name: "r6", scope: !5736, file: !80, line: 509, type: !6)
!5769 = !DILocation(line: 526, column: 21, scope: !5736)
!5770 = !DILocalVariable(name: "r7", scope: !5736, file: !80, line: 509, type: !6)
!5771 = !DILocation(line: 528, column: 37, scope: !5736)
!5772 = !DILocation(line: 528, column: 27, scope: !5736)
!5773 = !DILocation(line: 528, column: 25, scope: !5736)
!5774 = !DILocation(line: 528, column: 10, scope: !5736)
!5775 = !DILocation(line: 529, column: 47, scope: !5736)
!5776 = !DILocation(line: 529, column: 37, scope: !5736)
!5777 = !DILocation(line: 529, column: 35, scope: !5736)
!5778 = !DILocation(line: 529, column: 5, scope: !5736)
!5779 = !DILocation(line: 529, column: 10, scope: !5736)
!5780 = !DILocation(line: 530, column: 37, scope: !5736)
!5781 = !DILocation(line: 530, column: 27, scope: !5736)
!5782 = !DILocation(line: 530, column: 25, scope: !5736)
!5783 = !DILocation(line: 530, column: 5, scope: !5736)
!5784 = !DILocation(line: 530, column: 10, scope: !5736)
!5785 = !DILocation(line: 531, column: 47, scope: !5736)
!5786 = !DILocation(line: 531, column: 37, scope: !5736)
!5787 = !DILocation(line: 531, column: 35, scope: !5736)
!5788 = !DILocation(line: 531, column: 5, scope: !5736)
!5789 = !DILocation(line: 531, column: 10, scope: !5736)
!5790 = !DILocation(line: 532, column: 47, scope: !5736)
!5791 = !DILocation(line: 532, column: 37, scope: !5736)
!5792 = !DILocation(line: 532, column: 35, scope: !5736)
!5793 = !DILocation(line: 532, column: 5, scope: !5736)
!5794 = !DILocation(line: 532, column: 10, scope: !5736)
!5795 = !DILocation(line: 533, column: 37, scope: !5736)
!5796 = !DILocation(line: 533, column: 27, scope: !5736)
!5797 = !DILocation(line: 533, column: 25, scope: !5736)
!5798 = !DILocation(line: 533, column: 5, scope: !5736)
!5799 = !DILocation(line: 533, column: 10, scope: !5736)
!5800 = !DILocation(line: 534, column: 37, scope: !5736)
!5801 = !DILocation(line: 534, column: 27, scope: !5736)
!5802 = !DILocation(line: 534, column: 25, scope: !5736)
!5803 = !DILocation(line: 534, column: 5, scope: !5736)
!5804 = !DILocation(line: 534, column: 10, scope: !5736)
!5805 = !DILocation(line: 535, column: 37, scope: !5736)
!5806 = !DILocation(line: 535, column: 27, scope: !5736)
!5807 = !DILocation(line: 535, column: 25, scope: !5736)
!5808 = !DILocation(line: 535, column: 5, scope: !5736)
!5809 = !DILocation(line: 535, column: 10, scope: !5736)
!5810 = !DILocation(line: 536, column: 1, scope: !5736)
!5811 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5812, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{null, !5066, !6, !6}
!5814 = !DILocalVariable(name: "w", arg: 1, scope: !5811, file: !80, line: 367, type: !5066)
!5815 = !DILocation(line: 0, scope: !5811)
!5816 = !DILocalVariable(name: "q0", arg: 2, scope: !5811, file: !80, line: 367, type: !6)
!5817 = !DILocalVariable(name: "q1", arg: 3, scope: !5811, file: !80, line: 367, type: !6)
!5818 = !DILocation(line: 370, column: 13, scope: !5811)
!5819 = !DILocalVariable(name: "x0", scope: !5811, file: !80, line: 368, type: !6)
!5820 = !DILocation(line: 371, column: 13, scope: !5811)
!5821 = !DILocalVariable(name: "x1", scope: !5811, file: !80, line: 368, type: !6)
!5822 = !DILocation(line: 372, column: 14, scope: !5811)
!5823 = !DILocation(line: 372, column: 20, scope: !5811)
!5824 = !DILocalVariable(name: "x2", scope: !5811, file: !80, line: 368, type: !6)
!5825 = !DILocation(line: 373, column: 14, scope: !5811)
!5826 = !DILocation(line: 373, column: 20, scope: !5811)
!5827 = !DILocalVariable(name: "x3", scope: !5811, file: !80, line: 368, type: !6)
!5828 = !DILocation(line: 374, column: 15, scope: !5811)
!5829 = !DILocation(line: 374, column: 8, scope: !5811)
!5830 = !DILocation(line: 375, column: 15, scope: !5811)
!5831 = !DILocation(line: 375, column: 8, scope: !5811)
!5832 = !DILocation(line: 376, column: 8, scope: !5811)
!5833 = !DILocation(line: 377, column: 8, scope: !5811)
!5834 = !DILocation(line: 378, column: 8, scope: !5811)
!5835 = !DILocation(line: 379, column: 8, scope: !5811)
!5836 = !DILocation(line: 382, column: 41, scope: !5811)
!5837 = !DILocation(line: 382, column: 25, scope: !5811)
!5838 = !DILocation(line: 382, column: 10, scope: !5811)
!5839 = !DILocation(line: 383, column: 41, scope: !5811)
!5840 = !DILocation(line: 383, column: 25, scope: !5811)
!5841 = !DILocation(line: 383, column: 5, scope: !5811)
!5842 = !DILocation(line: 383, column: 10, scope: !5811)
!5843 = !DILocation(line: 384, column: 41, scope: !5811)
!5844 = !DILocation(line: 384, column: 25, scope: !5811)
!5845 = !DILocation(line: 384, column: 5, scope: !5811)
!5846 = !DILocation(line: 384, column: 10, scope: !5811)
!5847 = !DILocation(line: 385, column: 41, scope: !5811)
!5848 = !DILocation(line: 385, column: 25, scope: !5811)
!5849 = !DILocation(line: 385, column: 5, scope: !5811)
!5850 = !DILocation(line: 385, column: 10, scope: !5811)
!5851 = !DILocation(line: 386, column: 1, scope: !5811)
!5852 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5853, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !18, !5101, !15}
!5855 = !DILocalVariable(name: "dst", arg: 1, scope: !5852, file: !80, line: 127, type: !18)
!5856 = !DILocation(line: 0, scope: !5852)
!5857 = !DILocalVariable(name: "v", arg: 2, scope: !5852, file: !80, line: 127, type: !5101)
!5858 = !DILocalVariable(name: "num", arg: 3, scope: !5852, file: !80, line: 127, type: !15)
!5859 = !DILocation(line: 128, column: 5, scope: !5852)
!5860 = !DILocation(line: 128, column: 18, scope: !5852)
!5861 = !DILocation(line: 128, column: 15, scope: !5852)
!5862 = !DILocation(line: 129, column: 28, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5852, file: !80, line: 128, column: 23)
!5864 = !DILocation(line: 129, column: 25, scope: !5863)
!5865 = !DILocation(line: 129, column: 9, scope: !5863)
!5866 = !DILocation(line: 130, column: 13, scope: !5863)
!5867 = distinct !{!5867, !5859, !5868, !323}
!5868 = !DILocation(line: 131, column: 5, scope: !5852)
!5869 = !DILocation(line: 132, column: 1, scope: !5852)
!5870 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5871, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5871 = !DISubroutineType(types: !5872)
!5872 = !{null, !18, !19}
!5873 = !DILocalVariable(name: "dst", arg: 1, scope: !5870, file: !80, line: 119, type: !18)
!5874 = !DILocation(line: 0, scope: !5870)
!5875 = !DILocalVariable(name: "x", arg: 2, scope: !5870, file: !80, line: 119, type: !19)
!5876 = !DILocation(line: 120, column: 14, scope: !5870)
!5877 = !DILocation(line: 120, column: 12, scope: !5870)
!5878 = !DILocation(line: 121, column: 32, scope: !5870)
!5879 = !DILocation(line: 121, column: 14, scope: !5870)
!5880 = !DILocation(line: 121, column: 5, scope: !5870)
!5881 = !DILocation(line: 121, column: 12, scope: !5870)
!5882 = !DILocation(line: 122, column: 32, scope: !5870)
!5883 = !DILocation(line: 122, column: 14, scope: !5870)
!5884 = !DILocation(line: 122, column: 5, scope: !5870)
!5885 = !DILocation(line: 122, column: 12, scope: !5870)
!5886 = !DILocation(line: 123, column: 32, scope: !5870)
!5887 = !DILocation(line: 123, column: 14, scope: !5870)
!5888 = !DILocation(line: 123, column: 5, scope: !5870)
!5889 = !DILocation(line: 123, column: 12, scope: !5870)
!5890 = !DILocation(line: 124, column: 1, scope: !5870)
!5891 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5892, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!6, !6}
!5894 = !DILocalVariable(name: "x", arg: 1, scope: !5891, file: !80, line: 503, type: !6)
!5895 = !DILocation(line: 0, scope: !5891)
!5896 = !DILocation(line: 504, column: 22, scope: !5891)
!5897 = !DILocation(line: 504, column: 5, scope: !5891)
!5898 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5899, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{null, !18, !15, !49, !5554}
!5901 = !DILocalVariable(name: "out", arg: 1, scope: !5898, file: !80, line: 690, type: !18)
!5902 = !DILocation(line: 0, scope: !5898)
!5903 = !DILocalVariable(name: "outlen", arg: 2, scope: !5898, file: !80, line: 690, type: !15)
!5904 = !DILocalVariable(name: "iv", arg: 3, scope: !5898, file: !80, line: 690, type: !49)
!5905 = !DILocalVariable(name: "ctx", arg: 4, scope: !5898, file: !80, line: 690, type: !5554)
!5906 = !DILocation(line: 691, column: 35, scope: !5898)
!5907 = !DILocation(line: 691, column: 5, scope: !5898)
!5908 = !DILocation(line: 692, column: 1, scope: !5898)
!5909 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5910, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{null, !18, !15, !49, !346, !17}
!5912 = !DILocalVariable(name: "out", arg: 1, scope: !5909, file: !80, line: 607, type: !18)
!5913 = !DILocation(line: 0, scope: !5909)
!5914 = !DILocalVariable(name: "outlen", arg: 2, scope: !5909, file: !80, line: 607, type: !15)
!5915 = !DILocalVariable(name: "iv", arg: 3, scope: !5909, file: !80, line: 607, type: !49)
!5916 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5909, file: !80, line: 607, type: !346)
!5917 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5909, file: !80, line: 607, type: !17)
!5918 = !DILocalVariable(name: "ivw", scope: !5909, file: !80, line: 608, type: !5574)
!5919 = !DILocation(line: 608, column: 14, scope: !5909)
!5920 = !DILocalVariable(name: "cc", scope: !5909, file: !80, line: 610, type: !19)
!5921 = !DILocation(line: 612, column: 5, scope: !5909)
!5922 = !DILocation(line: 613, column: 16, scope: !5909)
!5923 = !DILocation(line: 613, column: 5, scope: !5909)
!5924 = !DILocation(line: 614, column: 16, scope: !5909)
!5925 = !DILocation(line: 614, column: 5, scope: !5909)
!5926 = !DILocation(line: 615, column: 16, scope: !5909)
!5927 = !DILocation(line: 615, column: 5, scope: !5909)
!5928 = !DILocation(line: 616, column: 15, scope: !5909)
!5929 = !DILocation(line: 616, column: 5, scope: !5909)
!5930 = !DILocation(line: 616, column: 13, scope: !5909)
!5931 = !DILocation(line: 617, column: 15, scope: !5909)
!5932 = !DILocation(line: 617, column: 5, scope: !5909)
!5933 = !DILocation(line: 617, column: 13, scope: !5909)
!5934 = !DILocation(line: 618, column: 15, scope: !5909)
!5935 = !DILocation(line: 618, column: 5, scope: !5909)
!5936 = !DILocation(line: 618, column: 13, scope: !5909)
!5937 = !DILocation(line: 619, column: 15, scope: !5909)
!5938 = !DILocation(line: 619, column: 5, scope: !5909)
!5939 = !DILocation(line: 619, column: 13, scope: !5909)
!5940 = !DILocation(line: 621, column: 5, scope: !5909)
!5941 = !DILocation(line: 621, column: 19, scope: !5909)
!5942 = !DILocation(line: 622, column: 9, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5909, file: !80, line: 621, column: 25)
!5944 = !DILocation(line: 623, column: 13, scope: !5943)
!5945 = !DILocation(line: 624, column: 16, scope: !5943)
!5946 = distinct !{!5946, !5940, !5947, !323}
!5947 = !DILocation(line: 625, column: 5, scope: !5909)
!5948 = !DILocation(line: 626, column: 16, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5909, file: !80, line: 626, column: 9)
!5950 = !DILocalVariable(name: "tmp", scope: !5951, file: !80, line: 627, type: !5577)
!5951 = distinct !DILexicalBlock(scope: !5949, file: !80, line: 626, column: 21)
!5952 = !DILocation(line: 627, column: 23, scope: !5951)
!5953 = !DILocation(line: 628, column: 9, scope: !5951)
!5954 = !DILocalVariable(name: "i", scope: !5909, file: !80, line: 609, type: !15)
!5955 = !DILocation(line: 629, column: 14, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5951, file: !80, line: 629, column: 9)
!5957 = !DILocation(line: 629, scope: !5956)
!5958 = !DILocation(line: 629, column: 23, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5956, file: !80, line: 629, column: 9)
!5960 = !DILocation(line: 629, column: 9, scope: !5956)
!5961 = !DILocation(line: 630, column: 22, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5959, file: !80, line: 629, column: 38)
!5963 = !DILocation(line: 630, column: 13, scope: !5962)
!5964 = !DILocation(line: 630, column: 20, scope: !5962)
!5965 = !DILocation(line: 629, column: 34, scope: !5959)
!5966 = !DILocation(line: 629, column: 9, scope: !5959)
!5967 = distinct !{!5967, !5960, !5968, !323}
!5968 = !DILocation(line: 631, column: 9, scope: !5956)
!5969 = !DILocation(line: 633, column: 1, scope: !5909)
!5970 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5083, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5971 = !DILocalVariable(name: "x", arg: 1, scope: !5970, file: !80, line: 112, type: !19)
!5972 = !DILocation(line: 0, scope: !5970)
!5973 = !DILocation(line: 115, column: 22, scope: !5970)
!5974 = !DILocation(line: 115, column: 5, scope: !5970)
!5975 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !5976, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{null, !18, !5066, !346, !17}
!5978 = !DILocalVariable(name: "out", arg: 1, scope: !5975, file: !80, line: 576, type: !18)
!5979 = !DILocation(line: 0, scope: !5975)
!5980 = !DILocalVariable(name: "ivw", arg: 2, scope: !5975, file: !80, line: 576, type: !5066)
!5981 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5975, file: !80, line: 576, type: !346)
!5982 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5975, file: !80, line: 576, type: !17)
!5983 = !DILocation(line: 577, column: 5, scope: !5975)
!5984 = !DILocation(line: 580, column: 17, scope: !5975)
!5985 = !DILocation(line: 580, column: 5, scope: !5975)
!5986 = !DILocation(line: 581, column: 17, scope: !5975)
!5987 = !DILocation(line: 581, column: 5, scope: !5975)
!5988 = !DILocation(line: 582, column: 17, scope: !5975)
!5989 = !DILocation(line: 582, column: 5, scope: !5975)
!5990 = !DILocation(line: 583, column: 17, scope: !5975)
!5991 = !DILocation(line: 583, column: 5, scope: !5975)
!5992 = !DILocation(line: 584, column: 1, scope: !5975)
!5993 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !5994, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{null, !5066}
!5996 = !DILocalVariable(name: "x", arg: 1, scope: !5993, file: !80, line: 539, type: !5066)
!5997 = !DILocation(line: 0, scope: !5993)
!5998 = !DILocation(line: 540, column: 28, scope: !5993)
!5999 = !DILocation(line: 540, column: 18, scope: !5993)
!6000 = !DILocation(line: 540, column: 32, scope: !5993)
!6001 = !DILocalVariable(name: "t", scope: !5993, file: !80, line: 540, type: !19)
!6002 = !DILocation(line: 541, column: 10, scope: !5993)
!6003 = !DILocation(line: 541, column: 8, scope: !5993)
!6004 = !DILocation(line: 542, column: 1, scope: !5993)
!6005 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6006, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{null, !18, !49, !15, !6008}
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 32)
!6009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5489)
!6010 = !DILocalVariable(name: "out", arg: 1, scope: !6005, file: !80, line: 694, type: !18)
!6011 = !DILocation(line: 0, scope: !6005)
!6012 = !DILocalVariable(name: "in", arg: 2, scope: !6005, file: !80, line: 694, type: !49)
!6013 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6005, file: !80, line: 694, type: !15)
!6014 = !DILocalVariable(name: "ctx", arg: 4, scope: !6005, file: !80, line: 694, type: !6008)
!6015 = !DILocation(line: 695, column: 36, scope: !6005)
!6016 = !DILocation(line: 695, column: 5, scope: !6005)
!6017 = !DILocation(line: 696, column: 1, scope: !6005)
!6018 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6019, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{null, !18, !15, !49, !6008}
!6021 = !DILocalVariable(name: "out", arg: 1, scope: !6018, file: !80, line: 698, type: !18)
!6022 = !DILocation(line: 0, scope: !6018)
!6023 = !DILocalVariable(name: "outlen", arg: 2, scope: !6018, file: !80, line: 698, type: !15)
!6024 = !DILocalVariable(name: "iv", arg: 3, scope: !6018, file: !80, line: 698, type: !49)
!6025 = !DILocalVariable(name: "ctx", arg: 4, scope: !6018, file: !80, line: 698, type: !6008)
!6026 = !DILocation(line: 699, column: 35, scope: !6018)
!6027 = !DILocation(line: 699, column: 5, scope: !6018)
!6028 = !DILocation(line: 700, column: 1, scope: !6018)
!6029 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6030, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{null, !18, !49, !15, !6032}
!6032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6033, size: 32)
!6033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5522)
!6034 = !DILocalVariable(name: "out", arg: 1, scope: !6029, file: !80, line: 702, type: !18)
!6035 = !DILocation(line: 0, scope: !6029)
!6036 = !DILocalVariable(name: "in", arg: 2, scope: !6029, file: !80, line: 702, type: !49)
!6037 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6029, file: !80, line: 702, type: !15)
!6038 = !DILocalVariable(name: "ctx", arg: 4, scope: !6029, file: !80, line: 702, type: !6032)
!6039 = !DILocation(line: 703, column: 36, scope: !6029)
!6040 = !DILocation(line: 703, column: 5, scope: !6029)
!6041 = !DILocation(line: 704, column: 1, scope: !6029)
!6042 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6043, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{null, !18, !15, !49, !6032}
!6045 = !DILocalVariable(name: "out", arg: 1, scope: !6042, file: !80, line: 706, type: !18)
!6046 = !DILocation(line: 0, scope: !6042)
!6047 = !DILocalVariable(name: "outlen", arg: 2, scope: !6042, file: !80, line: 706, type: !15)
!6048 = !DILocalVariable(name: "iv", arg: 3, scope: !6042, file: !80, line: 706, type: !49)
!6049 = !DILocalVariable(name: "ctx", arg: 4, scope: !6042, file: !80, line: 706, type: !6032)
!6050 = !DILocation(line: 707, column: 35, scope: !6042)
!6051 = !DILocation(line: 707, column: 5, scope: !6042)
!6052 = !DILocation(line: 708, column: 1, scope: !6042)
!6053 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6054, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{null, !4867}
!6056 = !DILocalVariable(name: "r", arg: 1, scope: !6053, file: !80, line: 710, type: !4867)
!6057 = !DILocation(line: 0, scope: !6053)
!6058 = !DILocation(line: 711, column: 13, scope: !6053)
!6059 = !DILocation(line: 711, column: 5, scope: !6053)
!6060 = !DILocation(line: 712, column: 1, scope: !6053)
!6061 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6062, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{null, !5488}
!6064 = !DILocalVariable(name: "r", arg: 1, scope: !6061, file: !80, line: 714, type: !5488)
!6065 = !DILocation(line: 0, scope: !6061)
!6066 = !DILocation(line: 715, column: 13, scope: !6061)
!6067 = !DILocation(line: 715, column: 5, scope: !6061)
!6068 = !DILocation(line: 716, column: 1, scope: !6061)
!6069 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6070, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{null, !5521}
!6072 = !DILocalVariable(name: "r", arg: 1, scope: !6069, file: !80, line: 718, type: !5521)
!6073 = !DILocation(line: 0, scope: !6069)
!6074 = !DILocation(line: 719, column: 13, scope: !6069)
!6075 = !DILocation(line: 719, column: 5, scope: !6069)
!6076 = !DILocation(line: 720, column: 1, scope: !6069)
!6077 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6078, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{!45, !18, !15, !49, !15}
!6080 = !DILocalVariable(name: "output", arg: 1, scope: !6077, file: !80, line: 722, type: !18)
!6081 = !DILocation(line: 0, scope: !6077)
!6082 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6077, file: !80, line: 722, type: !15)
!6083 = !DILocalVariable(name: "input", arg: 3, scope: !6077, file: !80, line: 723, type: !49)
!6084 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6077, file: !80, line: 723, type: !15)
!6085 = !DILocalVariable(name: "ctx", scope: !6077, file: !80, line: 724, type: !4868)
!6086 = !DILocation(line: 724, column: 15, scope: !6077)
!6087 = !DILocalVariable(name: "iv", scope: !6077, file: !80, line: 725, type: !1282)
!6088 = !DILocation(line: 725, column: 19, scope: !6077)
!6089 = !DILocation(line: 727, column: 5, scope: !6077)
!6090 = !DILocation(line: 728, column: 5, scope: !6077)
!6091 = !DILocation(line: 729, column: 5, scope: !6077)
!6092 = !DILocation(line: 731, column: 5, scope: !6077)
!6093 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6094, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{null, !3368, !49, !18}
!6096 = !DILocalVariable(name: "input", arg: 1, scope: !6093, file: !80, line: 734, type: !3368)
!6097 = !DILocation(line: 0, scope: !6093)
!6098 = !DILocalVariable(name: "key", arg: 2, scope: !6093, file: !80, line: 734, type: !49)
!6099 = !DILocalVariable(name: "output", arg: 3, scope: !6093, file: !80, line: 734, type: !18)
!6100 = !DILocalVariable(name: "ctx", scope: !6093, file: !80, line: 735, type: !5522)
!6101 = !DILocation(line: 735, column: 15, scope: !6093)
!6102 = !DILocation(line: 737, column: 5, scope: !6093)
!6103 = !DILocation(line: 738, column: 5, scope: !6093)
!6104 = !DILocation(line: 739, column: 5, scope: !6093)
!6105 = !DILocation(line: 740, column: 1, scope: !6093)
