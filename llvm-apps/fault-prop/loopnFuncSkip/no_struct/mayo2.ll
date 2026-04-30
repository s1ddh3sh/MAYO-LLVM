; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\02\08", align 1, !dbg !0
@pqmayo_MAYO_2_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_2_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_2_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 !dbg !71 {
entry:
  %call = call fastcc i32 @example_mayo(ptr noundef null) #6, !dbg !75
  ret i32 %call, !dbg !76
}

; Function Attrs: nounwind
define internal fastcc range(i32 -1, 1) i32 @example_mayo(ptr noundef %p) unnamed_addr #0 !dbg !77 {
entry:
  %msglen = alloca i32, align 4
  %smlen = alloca i32, align 4
  %epk = alloca [13284 x i64], align 8
  %esk = alloca [12808 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !111, !DIExpression(), !112)
    #dbg_value(i32 32, !113, !DIExpression(), !112)
  store i32 32, ptr %msglen, align 4, !dbg !114
    #dbg_value(i32 32, !113, !DIExpression(), !112)
    #dbg_value(i32 218, !115, !DIExpression(), !112)
  store i32 218, ptr %smlen, align 4, !dbg !116
  %call = call dereferenceable_or_null(4912) ptr @calloc(i32 noundef 4912, i32 noundef 1) #7, !dbg !117
    #dbg_value(ptr %call, !118, !DIExpression(), !112)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #7, !dbg !119
    #dbg_value(ptr %call1, !120, !DIExpression(), !112)
    #dbg_declare(ptr %epk, !121, !DIExpression(), !126)
    #dbg_declare(ptr %esk, !127, !DIExpression(), !132)
  %0 = load i32, ptr %msglen, align 4, !dbg !133
    #dbg_value(i32 %0, !113, !DIExpression(), !112)
  %add2 = add i32 %0, 186, !dbg !134
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #7, !dbg !135
    #dbg_value(ptr %call3, !136, !DIExpression(), !112)
    #dbg_declare(ptr %msg, !137, !DIExpression(), !141)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !141
    #dbg_declare(ptr %msg2, !142, !DIExpression(), !143)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !143
  %call4 = call i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %call11 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !149
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %1 = load i32, ptr %msglen, align 4, !dbg !150
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !151
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !152
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !152

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !154
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !155
    #dbg_value(i32 %call23, !145, !DIExpression(), !112)
  %cmp24.not = icmp eq i32 %call23, 0, !dbg !156
  br i1 %cmp24.not, label %lor.lhs.false, label %err, !dbg !158

lor.lhs.false:                                    ; preds = %if.end21
  %3 = load i32, ptr %msglen, align 4, !dbg !159
    #dbg_value(i32 %3, !113, !DIExpression(), !112)
  %call27 = call i32 @memcmp(ptr noundef nonnull %msg, ptr noundef nonnull %msg2, i32 noundef %3) #8, !dbg !160
  %tobool.not = icmp eq i32 %call27, 0, !dbg !160
  br i1 %tobool.not, label %if.end30, label %err, !dbg !158

if.end30:                                         ; preds = %lor.lhs.false
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %4 = load i32, ptr %msglen, align 4, !dbg !161
    #dbg_value(i32 %4, !113, !DIExpression(), !112)
  %call32 = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !162
    #dbg_value(i32 %call32, !145, !DIExpression(), !112)
  %sext = sub nsw i32 0, %call32, !dbg !163
  br label %err, !dbg !163

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !112
    #dbg_value(i32 %res.0, !145, !DIExpression(), !112)
    #dbg_label(!165, !166)
  call void @free(ptr noundef %call) #8, !dbg !167
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 24) #8, !dbg !168
  call void @free(ptr noundef %call3) #8, !dbg !169
  ret i32 %res.0, !dbg !170
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !171 {
entry:
    #dbg_value(ptr %p, !202, !DIExpression(), !203)
    #dbg_value(ptr %pk, !204, !DIExpression(), !203)
    #dbg_value(ptr %sk, !205, !DIExpression(), !203)
    #dbg_value(i32 0, !206, !DIExpression(), !203)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !207
    #dbg_value(i32 %call, !206, !DIExpression(), !203)
    #dbg_label(!208, !209)
  ret i32 %call, !dbg !210
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !211 {
entry:
  %S = alloca [560 x i8], align 1
  %P = alloca [12672 x i64], align 8
  %P3 = alloca [1156 x i64], align 8
  %O = alloca [1088 x i8], align 1
  %P3_upper = alloca [612 x i64], align 8
    #dbg_value(ptr %p, !212, !DIExpression(), !213)
    #dbg_value(ptr %cpk, !214, !DIExpression(), !213)
    #dbg_value(ptr %csk, !215, !DIExpression(), !213)
    #dbg_value(i32 0, !216, !DIExpression(), !213)
    #dbg_value(ptr %csk, !217, !DIExpression(), !213)
    #dbg_declare(ptr %S, !218, !DIExpression(), !222)
    #dbg_declare(ptr %P, !223, !DIExpression(), !227)
    #dbg_declare(ptr %P3, !228, !DIExpression(), !232)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(9248) %P3, i8 0, i32 9248, i1 false), !dbg !232
    #dbg_declare(ptr %O, !233, !DIExpression(), !237)
    #dbg_value(i32 4, !238, !DIExpression(), !213)
    #dbg_value(i32 64, !240, !DIExpression(), !213)
    #dbg_value(i32 64, !241, !DIExpression(), !213)
    #dbg_value(i32 17, !242, !DIExpression(), !213)
    #dbg_value(i32 544, !243, !DIExpression(), !213)
    #dbg_value(i32 8320, !244, !DIExpression(), !213)
    #dbg_value(i32 612, !245, !DIExpression(), !213)
    #dbg_value(i32 16, !246, !DIExpression(), !213)
    #dbg_value(i32 24, !247, !DIExpression(), !213)
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 66560, !dbg !249
    #dbg_value(ptr %add.ptr, !250, !DIExpression(), !213)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #8, !dbg !251
  %cmp.not = icmp eq i32 %call, 0, !dbg !253
  br i1 %cmp.not, label %if.end, label %err, !dbg !253

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #8, !dbg !254
    #dbg_value(ptr %S, !255, !DIExpression(), !213)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !256
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1088) #6, !dbg !257
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !258
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !259
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !260
    #dbg_declare(ptr %P3_upper, !261, !DIExpression(), !265)
  call void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 17) #6, !dbg !266
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !267
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 153, i32 noundef 64) #6, !dbg !268
  br label %err, !dbg !268

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !213
    #dbg_value(i32 %ret.0, !216, !DIExpression(), !213)
    #dbg_label(!269, !270)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1088) #8, !dbg !271
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 34816) #8, !dbg !272
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 9248) #8, !dbg !273
  ret i32 %ret.0, !dbg !274
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483579, -2147483648) %mdeclen) unnamed_addr #0 !dbg !275 {
entry:
    #dbg_value(ptr %m, !278, !DIExpression(), !279)
    #dbg_value(ptr %mdec, !280, !DIExpression(), !279)
    #dbg_value(i32 %mdeclen, !281, !DIExpression(), !279)
    #dbg_value(i32 0, !282, !DIExpression(), !279)
  br label %for.cond, !dbg !283

for.cond:                                         ; preds = %for.body, %entry
  %mdec.addr.0 = phi ptr [ %mdec, %entry ], [ %incdec.ptr5, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !285
    #dbg_value(i32 %i.0, !282, !DIExpression(), !279)
    #dbg_value(ptr %mdec.addr.0, !280, !DIExpression(), !279)
  %div = sdiv i32 %mdeclen, 2, !dbg !286
  %cmp = icmp slt i32 %i.0, %div, !dbg !288
  br i1 %cmp, label %for.body, label %for.end, !dbg !289

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !290
  %0 = load i8, ptr %arrayidx, align 1, !dbg !290
  %1 = and i8 %0, 15, !dbg !292
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 1, !dbg !293
    #dbg_value(ptr %incdec.ptr, !280, !DIExpression(), !279)
  store i8 %1, ptr %mdec.addr.0, align 1, !dbg !294
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !295
  %2 = load i8, ptr %arrayidx2, align 1, !dbg !295
  %3 = lshr i8 %2, 4, !dbg !296
    #dbg_value(ptr %incdec.ptr, !280, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !279)
  store i8 %3, ptr %incdec.ptr, align 1, !dbg !297
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 2, !dbg !298
    #dbg_value(ptr %incdec.ptr5, !280, !DIExpression(), !279)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !299
    #dbg_value(i32 %inc, !282, !DIExpression(), !279)
  br label %for.cond, !dbg !300, !llvm.loop !301

for.end:                                          ; preds = %for.cond
  %mdec.addr.0.lcssa = phi ptr [ %mdec.addr.0, %for.cond ]
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !285
  %4 = and i32 %mdeclen, -2147483647, !dbg !304
  %cmp6 = icmp eq i32 %4, 1, !dbg !304
  br i1 %cmp6, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %for.end
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0.lcssa, !dbg !306
  %5 = load i8, ptr %arrayidx8, align 1, !dbg !306
  %6 = and i8 %5, 15, !dbg !308
    #dbg_value(ptr %mdec.addr.0.lcssa, !280, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !279)
  store i8 %6, ptr %mdec.addr.0.lcssa, align 1, !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !311
}

; Function Attrs: nounwind
define internal fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) unnamed_addr #0 !dbg !312 {
entry:
    #dbg_value(ptr %p, !315, !DIExpression(), !316)
    #dbg_value(ptr %P, !317, !DIExpression(), !316)
    #dbg_value(ptr %seed_pk, !318, !DIExpression(), !316)
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 101376, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !319
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3168, i32 noundef 64) #6, !dbg !320
  ret void, !dbg !321
}

; Function Attrs: nounwind
define internal fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %O, ptr noundef nonnull %P3) unnamed_addr #0 !dbg !322 {
entry:
    #dbg_value(ptr %p, !327, !DIExpression(), !328)
    #dbg_value(ptr %P1, !329, !DIExpression(), !328)
    #dbg_value(ptr %P2, !330, !DIExpression(), !328)
    #dbg_value(ptr %O, !331, !DIExpression(), !328)
    #dbg_value(ptr %P3, !332, !DIExpression(), !328)
    #dbg_value(i32 4, !333, !DIExpression(), !328)
    #dbg_value(i32 64, !334, !DIExpression(), !328)
    #dbg_value(i32 17, !335, !DIExpression(), !328)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !336
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 4, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 64, i32 noundef 17, i32 noundef 17) #6, !dbg !337
  ret void, !dbg !338
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !339 {
entry:
    #dbg_value(ptr %in, !342, !DIExpression(), !343)
    #dbg_value(ptr %out, !344, !DIExpression(), !343)
    #dbg_value(i32 153, !345, !DIExpression(), !343)
    #dbg_value(i32 64, !346, !DIExpression(), !343)
    #dbg_value(i32 4, !347, !DIExpression(), !343)
    #dbg_value(ptr %in, !348, !DIExpression(), !343)
    #dbg_value(i32 0, !349, !DIExpression(), !351)
  br label %for.cond, !dbg !352

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !353
    #dbg_value(i32 %i.0, !349, !DIExpression(), !351)
  %exitcond = icmp ne i32 %i.0, 153, !dbg !354
  br i1 %exitcond, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %div1 = shl nuw nsw i32 %i.0, 5, !dbg !357
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !359
  %mul2 = shl nuw nsw i32 %i.0, 5, !dbg !360
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul2, !dbg !361
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 32) #8, !dbg !362
  %inc = add nuw nsw i32 %i.0, 1, !dbg !363
    #dbg_value(i32 %inc, !349, !DIExpression(), !351)
  br label %for.cond, !dbg !364, !llvm.loop !365

for.end:                                          ; preds = %for.cond
  ret void, !dbg !367
}

declare dso_local void @mayo_secure_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @P1_times_O(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %O, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !368 {
entry:
    #dbg_value(ptr %p, !371, !DIExpression(), !372)
    #dbg_value(ptr %P1, !373, !DIExpression(), !372)
    #dbg_value(ptr %O, !374, !DIExpression(), !372)
    #dbg_value(ptr %acc, !375, !DIExpression(), !372)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 4, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 1) #6, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !378 {
entry:
    #dbg_value(i32 4, !381, !DIExpression(), !382)
    #dbg_value(ptr %mat, !383, !DIExpression(), !382)
    #dbg_value(ptr %bs_mat, !384, !DIExpression(), !382)
    #dbg_value(ptr %acc, !385, !DIExpression(), !382)
    #dbg_value(i32 64, !386, !DIExpression(), !382)
    #dbg_value(i32 17, !387, !DIExpression(), !382)
    #dbg_value(i32 17, !388, !DIExpression(), !382)
    #dbg_value(i32 0, !389, !DIExpression(), !391)
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !393
    #dbg_value(i32 %r.0, !389, !DIExpression(), !391)
  %exitcond2 = icmp ne i32 %r.0, 17, !dbg !394
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !396

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !397

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !400
    #dbg_value(i32 %c.0, !401, !DIExpression(), !402)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !403
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !397

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !405

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !408
    #dbg_value(i32 %k.0, !409, !DIExpression(), !410)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !411
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !405

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 17, !dbg !413
  %add = add nuw nsw i32 %mul, %k.0, !dbg !415
  %add.ptr.idx = shl nuw nsw i32 %add, 5, !dbg !416
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !416
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !417
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !418
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !418
  %1 = load i8, ptr %arrayidx, align 1, !dbg !418
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !419
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !420
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !421
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !421
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !422
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !423
    #dbg_value(i32 %add14, !409, !DIExpression(), !410)
  br label %for.cond4, !dbg !424, !llvm.loop !425

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !427
    #dbg_value(i32 %inc, !401, !DIExpression(), !402)
  br label %for.cond1, !dbg !428, !llvm.loop !429

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !431
    #dbg_value(i32 %inc18, !389, !DIExpression(), !391)
  br label %for.cond, !dbg !432, !llvm.loop !433

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !435
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !436 {
entry:
    #dbg_value(i32 %m_vec_limbs, !440, !DIExpression(), !441)
    #dbg_value(ptr %in, !442, !DIExpression(), !441)
    #dbg_value(i8 %a, !443, !DIExpression(), !441)
    #dbg_value(ptr %acc, !444, !DIExpression(), !441)
  %call = call fastcc i32 @mul_table(i8 noundef zeroext %a) #6, !dbg !445
    #dbg_value(i32 %call, !446, !DIExpression(), !441)
    #dbg_value(i64 1229782938247303441, !447, !DIExpression(), !441)
    #dbg_value(i32 0, !448, !DIExpression(), !450)
  br label %for.cond, !dbg !451

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !452
    #dbg_value(i32 %i.0, !448, !DIExpression(), !450)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !453
  br i1 %exitcond, label %for.body, label %for.end, !dbg !455

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !456
  %0 = load i64, ptr %arrayidx, align 8, !dbg !456
  %and = and i64 %0, 1229782938247303441, !dbg !458
  %and1 = and i32 %call, 255, !dbg !459
  %conv = zext nneg i32 %and1 to i64, !dbg !460
  %mul = mul i64 %and, %conv, !dbg !461
  %shr = lshr i64 %0, 1, !dbg !462
  %and3 = and i64 %shr, 1229782938247303441, !dbg !463
  %shr4 = lshr i32 %call, 8, !dbg !464
  %and5 = and i32 %shr4, 15, !dbg !465
  %conv6 = zext nneg i32 %and5 to i64, !dbg !466
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !467
  %xor = xor i64 %mul, %mul7, !dbg !468
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !469
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !469
  %shr9 = lshr i64 %1, 2, !dbg !470
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !471
  %shr11 = lshr i32 %call, 16, !dbg !472
  %and12 = and i32 %shr11, 15, !dbg !473
  %conv13 = zext nneg i32 %and12 to i64, !dbg !474
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !475
  %xor15 = xor i64 %xor, %mul14, !dbg !476
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !477
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !477
  %shr17 = lshr i64 %2, 3, !dbg !478
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !479
  %shr19 = lshr i32 %call, 24, !dbg !480
  %and20 = and i32 %shr19, 15, !dbg !481
  %conv21 = zext nneg i32 %and20 to i64, !dbg !482
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !483
  %xor23 = xor i64 %xor15, %mul22, !dbg !484
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !485
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !486
  %xor25 = xor i64 %3, %xor23, !dbg !486
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !486
  %inc = add nuw nsw i32 %i.0, 1, !dbg !487
    #dbg_value(i32 %inc, !448, !DIExpression(), !450)
  br label %for.cond, !dbg !488, !llvm.loop !489

for.end:                                          ; preds = %for.cond
  ret void, !dbg !491
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table(i8 noundef zeroext %b) unnamed_addr #0 !dbg !492 {
entry:
    #dbg_value(i8 %b, !496, !DIExpression(), !497)
  %conv = zext i8 %b to i32, !dbg !498
  %mul = mul i32 %conv, 134480385, !dbg !499
    #dbg_value(i32 %mul, !500, !DIExpression(), !497)
    #dbg_value(i32 -252645136, !501, !DIExpression(), !497)
  %and = and i32 %mul, -252645136, !dbg !502
    #dbg_value(i32 %and, !503, !DIExpression(), !497)
  %shr = lshr exact i32 %and, 4, !dbg !504
  %shr1 = lshr exact i32 %and, 3, !dbg !505
  %0 = xor i32 %shr, %shr1, !dbg !506
  %xor2 = xor i32 %0, %mul, !dbg !506
  ret i32 %xor2, !dbg !507
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) unnamed_addr #0 !dbg !508 {
entry:
    #dbg_value(i32 4, !511, !DIExpression(), !512)
    #dbg_value(ptr %bs_mat, !513, !DIExpression(), !512)
    #dbg_value(ptr %mat, !514, !DIExpression(), !512)
    #dbg_value(ptr %acc, !515, !DIExpression(), !512)
    #dbg_value(i32 64, !516, !DIExpression(), !512)
    #dbg_value(i32 64, !517, !DIExpression(), !512)
    #dbg_value(i32 17, !518, !DIExpression(), !512)
    #dbg_value(i32 1, !519, !DIExpression(), !512)
    #dbg_value(i32 0, !520, !DIExpression(), !512)
    #dbg_value(i32 0, !521, !DIExpression(), !523)
  br label %for.cond, !dbg !524

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !525
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !525
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !526
    #dbg_value(i32 %r.0, !521, !DIExpression(), !523)
    #dbg_value(i32 %bs_mat_entries_used.0, !520, !DIExpression(), !512)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !527
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !529

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !530
  br label %for.cond1, !dbg !530

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !512
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !533
    #dbg_value(i32 %c.0, !534, !DIExpression(), !535)
    #dbg_value(i32 %bs_mat_entries_used.1, !520, !DIExpression(), !512)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !536
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !530

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !538

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !541
    #dbg_value(i32 %k.0, !542, !DIExpression(), !543)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !544
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !538

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !546
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !546
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !548
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !549
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !549
  %2 = load i8, ptr %arrayidx, align 1, !dbg !549
  %mul9 = mul nuw nsw i32 %r.0, 17, !dbg !550
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !551
  %add.ptr12.idx = shl nuw nsw i32 %add10, 5, !dbg !552
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !552
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !553
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !554
    #dbg_value(i32 %add13, !542, !DIExpression(), !543)
  br label %for.cond4, !dbg !555, !llvm.loop !556

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !520, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !512)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !558
    #dbg_value(i32 %add14, !520, !DIExpression(), !512)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !559
    #dbg_value(i32 %inc, !534, !DIExpression(), !535)
  br label %for.cond1, !dbg !560, !llvm.loop !561

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !512
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !563
    #dbg_value(i32 %inc18, !521, !DIExpression(), !523)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !564
  br label %for.cond, !dbg !564, !llvm.loop !565

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !567
}

declare dso_local i32 @AES_128_CTR(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 153, 3169) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !568 {
entry:
  %tmp = alloca [4 x i64], align 8
    #dbg_value(ptr %in, !571, !DIExpression(), !572)
    #dbg_value(ptr %out, !573, !DIExpression(), !572)
    #dbg_value(i32 %vecs, !574, !DIExpression(), !572)
    #dbg_value(i32 64, !575, !DIExpression(), !572)
    #dbg_value(i32 4, !576, !DIExpression(), !572)
    #dbg_value(ptr %out, !577, !DIExpression(), !572)
    #dbg_declare(ptr %tmp, !578, !DIExpression(), !580)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %tmp, i8 0, i32 32, i1 false), !dbg !580
    #dbg_value(i32 %vecs, !581, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !583)
  br label %for.cond, !dbg !584

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !581, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !583)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !585
  br i1 %cmp, label %for.body, label %for.end, !dbg !587

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !588
    #dbg_value(i32 %i.0, !581, !DIExpression(), !583)
  %div1 = shl nsw i32 %i.0, 5, !dbg !589
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !591
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 32) #8, !dbg !592
  %mul3 = shl i32 %i.0, 5, !dbg !593
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul3, !dbg !594
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 32) #8, !dbg !595
    #dbg_value(i32 %i.0, !581, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !583)
  br label %for.cond, !dbg !596, !llvm.loop !597

for.end:                                          ; preds = %for.cond
  ret void, !dbg !599
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !600 {
entry:
  %S = alloca [560 x i8], align 1
    #dbg_value(ptr %p, !603, !DIExpression(), !604)
    #dbg_value(ptr %csk, !605, !DIExpression(), !604)
    #dbg_value(ptr %sk, !606, !DIExpression(), !604)
    #dbg_value(i32 0, !607, !DIExpression(), !604)
    #dbg_declare(ptr %S, !608, !DIExpression(), !609)
    #dbg_value(ptr %sk, !610, !DIExpression(), !604)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !611
    #dbg_value(ptr %add.ptr1, !612, !DIExpression(), !604)
    #dbg_value(i32 17, !613, !DIExpression(), !604)
    #dbg_value(i32 64, !614, !DIExpression(), !604)
    #dbg_value(i32 544, !615, !DIExpression(), !604)
    #dbg_value(i32 16, !616, !DIExpression(), !604)
    #dbg_value(i32 24, !617, !DIExpression(), !604)
    #dbg_value(ptr %csk, !618, !DIExpression(), !604)
    #dbg_value(ptr %S, !619, !DIExpression(), !604)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #8, !dbg !620
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !621
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1088) #6, !dbg !622
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !623
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !624
    #dbg_value(ptr %add.ptr5, !625, !DIExpression(), !604)
    #dbg_value(ptr %sk, !626, !DIExpression(), !604)
    #dbg_value(ptr %add.ptr5, !627, !DIExpression(), !604)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !628
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 560) #8, !dbg !629
  ret i32 0, !dbg !630
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !631 {
entry:
    #dbg_value(ptr %p, !632, !DIExpression(), !633)
    #dbg_value(ptr %P1, !634, !DIExpression(), !633)
    #dbg_value(ptr %O, !635, !DIExpression(), !633)
    #dbg_value(ptr %acc, !636, !DIExpression(), !633)
    #dbg_value(i32 17, !637, !DIExpression(), !633)
    #dbg_value(i32 64, !638, !DIExpression(), !633)
    #dbg_value(i32 4, !639, !DIExpression(), !633)
    #dbg_value(i32 0, !640, !DIExpression(), !633)
    #dbg_value(i32 0, !641, !DIExpression(), !643)
  br label %for.cond, !dbg !644

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 64, %entry ], !dbg !645
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !645
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !646
    #dbg_value(i32 %r.0, !641, !DIExpression(), !643)
    #dbg_value(i32 %bs_mat_entries_used.0, !640, !DIExpression(), !633)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !647
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !649

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !650
  br label %for.cond1, !dbg !650

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !633
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !653
    #dbg_value(i32 %c.0, !654, !DIExpression(), !655)
    #dbg_value(i32 %bs_mat_entries_used.1, !640, !DIExpression(), !633)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !656
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !650

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !658
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !658

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !661

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !663
    #dbg_value(i32 %k.0, !664, !DIExpression(), !665)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !666
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !661

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !668
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !668
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !670
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !671
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !671
  %2 = load i8, ptr %arrayidx, align 1, !dbg !671
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !672
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !673
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !674
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !674
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #6, !dbg !675
  %add.ptr15.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !676
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !676
  %mul16 = mul nuw nsw i32 %r.0, 17, !dbg !677
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !678
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !678
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !678
  %mul19 = mul nuw nsw i32 %c.0, 17, !dbg !679
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !680
  %add.ptr22.idx = shl nuw nsw i32 %add20, 5, !dbg !681
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !681
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #6, !dbg !682
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !683
    #dbg_value(i32 %add23, !664, !DIExpression(), !665)
  br label %for.cond5, !dbg !684, !llvm.loop !685

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !687

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !687
    #dbg_value(i32 %bs_mat_entries_used.2, !640, !DIExpression(), !633)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !688
    #dbg_value(i32 %inc, !654, !DIExpression(), !655)
  br label %for.cond1, !dbg !689, !llvm.loop !690

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !633
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !692
    #dbg_value(i32 %inc28, !641, !DIExpression(), !643)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !693
  br label %for.cond, !dbg !693, !llvm.loop !694

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !696
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !697 {
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
    #dbg_value(ptr %p, !701, !DIExpression(), !702)
    #dbg_value(ptr %sig, !703, !DIExpression(), !702)
    #dbg_value(ptr %siglen, !704, !DIExpression(), !702)
    #dbg_value(ptr %m, !705, !DIExpression(), !702)
    #dbg_value(i32 %mlen, !706, !DIExpression(), !702)
    #dbg_value(ptr %csk, !707, !DIExpression(), !702)
    #dbg_value(i32 0, !708, !DIExpression(), !702)
    #dbg_declare(ptr %tenc, !709, !DIExpression(), !710)
    #dbg_declare(ptr %t, !711, !DIExpression(), !715)
    #dbg_declare(ptr %y, !716, !DIExpression(), !717)
    #dbg_declare(ptr %salt, !718, !DIExpression(), !722)
    #dbg_declare(ptr %V, !723, !DIExpression(), !727)
    #dbg_declare(ptr %Vdec, !728, !DIExpression(), !732)
    #dbg_declare(ptr %A, !733, !DIExpression(), !737)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(4416) %A, i8 0, i32 4416, i1 false), !dbg !737
    #dbg_declare(ptr %x, !738, !DIExpression(), !742)
    #dbg_declare(ptr %r, !743, !DIExpression(), !747)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(69) %r, i8 0, i32 69, i1 false), !dbg !747
    #dbg_declare(ptr %s, !748, !DIExpression(), !749)
    #dbg_declare(ptr %sk, !750, !DIExpression(), !751)
    #dbg_declare(ptr %Ox, !752, !DIExpression(), !753)
    #dbg_declare(ptr %tmp, !754, !DIExpression(), !758)
    #dbg_value(i32 64, !759, !DIExpression(), !702)
    #dbg_value(i32 81, !760, !DIExpression(), !702)
    #dbg_value(i32 17, !761, !DIExpression(), !702)
    #dbg_value(i32 4, !762, !DIExpression(), !702)
    #dbg_value(i32 64, !763, !DIExpression(), !702)
    #dbg_value(i32 32, !764, !DIExpression(), !702)
    #dbg_value(i32 32, !765, !DIExpression(), !702)
    #dbg_value(i32 34, !766, !DIExpression(), !702)
    #dbg_value(i32 186, !767, !DIExpression(), !702)
    #dbg_value(i32 69, !768, !DIExpression(), !702)
    #dbg_value(i32 32, !769, !DIExpression(), !702)
    #dbg_value(i32 24, !770, !DIExpression(), !702)
    #dbg_value(i32 24, !771, !DIExpression(), !702)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !772
    #dbg_value(i32 0, !708, !DIExpression(), !702)
    #dbg_value(ptr %csk, !773, !DIExpression(), !702)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !774
    #dbg_value(ptr %sk, !775, !DIExpression(), !702)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !776
    #dbg_value(ptr %add.ptr, !777, !DIExpression(), !702)
    #dbg_declare(ptr %Mtmp, !778, !DIExpression(), !782)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2176) %Mtmp, i8 0, i32 2176, i1 false), !dbg !782
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !783
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #8, !dbg !785
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !786
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !786

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !787
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #8, !dbg !788
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !789
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !790
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !791
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !792
    #dbg_value(ptr %add.ptr24, !793, !DIExpression(), !702)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !794
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !795
    #dbg_value(i32 0, !796, !DIExpression(), !798)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 128, !dbg !799
  br label %for.cond, !dbg !802

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !803
    #dbg_value(i32 %ctr.0, !796, !DIExpression(), !798)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !804
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !805

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !806
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !807
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 162, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !808
    #dbg_value(i32 0, !809, !DIExpression(), !811)
  br label %for.cond34, !dbg !812

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !813
    #dbg_value(i32 %i.0, !809, !DIExpression(), !811)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !814
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !816

for.body37:                                       ; preds = %for.cond34
  %mul = shl nuw nsw i32 %i.0, 5, !dbg !817
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !819
  %mul41 = shl nuw nsw i32 %i.0, 6, !dbg !820
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !821
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 64) #6, !dbg !822
  %inc = add nuw nsw i32 %i.0, 1, !dbg !823
    #dbg_value(i32 %inc, !809, !DIExpression(), !811)
  br label %for.cond34, !dbg !824, !llvm.loop !825

for.end:                                          ; preds = %for.cond34
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !827
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !828
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !829
    #dbg_value(i32 0, !830, !DIExpression(), !832)
  br label %for.cond52, !dbg !833

for.cond52:                                       ; preds = %for.body55, %for.end
  %i51.0 = phi i32 [ 0, %for.end ], [ %inc58, %for.body55 ], !dbg !834
    #dbg_value(i32 %i51.0, !830, !DIExpression(), !832)
  %exitcond1 = icmp ne i32 %i51.0, 64, !dbg !835
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !837

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 69, !dbg !838
  %sub = add nuw nsw i32 %0, 68, !dbg !840
  %arrayidx = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub, !dbg !841
  store i8 0, ptr %arrayidx, align 1, !dbg !842
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !843
    #dbg_value(i32 %inc58, !830, !DIExpression(), !832)
  br label %for.cond52, !dbg !844, !llvm.loop !845

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 68) #6, !dbg !847
  %call67 = call i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 4, i32 noundef 17, i32 noundef 64, i32 noundef 69) #6, !dbg !848
  %tobool.not = icmp eq i32 %call67, 0, !dbg !848
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !848

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 2176) #8, !dbg !850
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 4416) #8, !dbg !852
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !853
    #dbg_value(i32 %inc75, !796, !DIExpression(), !798)
  br label %for.cond, !dbg !854, !llvm.loop !855

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !857, !DIExpression(), !859)
  br label %for.cond78, !dbg !860

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !861
    #dbg_value(i32 %i77.0, !857, !DIExpression(), !859)
  %exitcond3 = icmp ne i32 %i77.0, 4, !dbg !862
  br i1 %exitcond3, label %for.body81, label %for.end106, !dbg !864

for.body81:                                       ; preds = %for.cond78
  %mul83 = shl nuw nsw i32 %i77.0, 6, !dbg !865
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !867
    #dbg_value(ptr %add.ptr84, !868, !DIExpression(), !702)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !869
  %mul89 = mul nuw nsw i32 %i77.0, 17, !dbg !870
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !871
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 17, i32 noundef 64, i32 noundef 1) #6, !dbg !872
  %mul94 = mul nuw nsw i32 %i77.0, 81, !dbg !873
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !874
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 64, i32 noundef 1) #6, !dbg !875
  %mul97 = mul nuw nsw i32 %i77.0, 81, !dbg !876
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !877
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 64, !dbg !878
  %mul101 = mul nuw nsw i32 %i77.0, 17, !dbg !879
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !880
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 17) #8, !dbg !881
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !882
    #dbg_value(i32 %inc105, !857, !DIExpression(), !859)
  br label %for.cond78, !dbg !883, !llvm.loop !884

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 324) #6, !dbg !886
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !887
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !888
  store i32 186, ptr %siglen, align 4, !dbg !889
  br label %err, !dbg !890

err:                                              ; preds = %entry, %for.end106
  %ret.0 = phi i32 [ 0, %for.end106 ], [ 1, %entry ], !dbg !702
    #dbg_value(i32 %ret.0, !708, !DIExpression(), !702)
    #dbg_label(!891, !892)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 162) #8, !dbg !893
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 256) #8, !dbg !894
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 4416) #8, !dbg !895
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 69) #8, !dbg !896
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !897
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 1088) #8, !dbg !898
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 102464) #8, !dbg !899
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 64) #8, !dbg !900
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 2176) #8, !dbg !902
  ret i32 %ret.0, !dbg !903
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !904 {
entry:
  %Pv = alloca [1024 x i64], align 8
    #dbg_value(ptr %p, !907, !DIExpression(), !908)
    #dbg_value(ptr %Vdec, !909, !DIExpression(), !908)
    #dbg_value(ptr %L, !910, !DIExpression(), !908)
    #dbg_value(ptr %P1, !911, !DIExpression(), !908)
    #dbg_value(ptr %VL, !912, !DIExpression(), !908)
    #dbg_value(ptr %VP1V, !913, !DIExpression(), !908)
    #dbg_value(i32 4, !914, !DIExpression(), !908)
    #dbg_value(i32 64, !915, !DIExpression(), !908)
    #dbg_value(i32 17, !916, !DIExpression(), !908)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 4, i32 noundef 64, i32 noundef 17) #6, !dbg !917
    #dbg_declare(ptr %Pv, !918, !DIExpression(), !922)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %Pv, i8 0, i32 8192, i1 false), !dbg !922
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !923
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 4, i32 noundef 64, i32 noundef 4) #6, !dbg !924
  ret void, !dbg !925
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !926 {
entry:
  %temp = alloca [4 x i64], align 8
    #dbg_value(ptr %p, !929, !DIExpression(), !930)
    #dbg_value(ptr %vPv, !931, !DIExpression(), !930)
    #dbg_value(ptr %t, !932, !DIExpression(), !930)
    #dbg_value(ptr %y, !933, !DIExpression(), !930)
    #dbg_value(i32 60, !934, !DIExpression(), !930)
    #dbg_value(i32 4, !936, !DIExpression(), !930)
    #dbg_declare(ptr %temp, !937, !DIExpression(), !938)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %temp, i8 0, i32 32, i1 false), !dbg !938
    #dbg_value(ptr %temp, !939, !DIExpression(), !930)
    #dbg_value(i32 3, !940, !DIExpression(), !942)
  br label %for.cond, !dbg !943

for.cond:                                         ; preds = %for.inc65, %entry
  %i.0 = phi i32 [ 3, %entry ], [ %dec66, %for.inc65 ], !dbg !944
    #dbg_value(i32 %i.0, !940, !DIExpression(), !942)
  %cmp = icmp sgt i32 %i.0, -1, !dbg !945
  br i1 %cmp, label %for.cond1.preheader, label %for.cond69.preheader, !dbg !947

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !948

for.cond69.preheader:                             ; preds = %for.cond
  br label %for.cond69, !dbg !951

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc62
  %j.0 = phi i32 [ %inc63, %for.inc62 ], [ %i.0, %for.cond1.preheader ], !dbg !953
    #dbg_value(i32 %j.0, !954, !DIExpression(), !955)
  %exitcond6 = icmp ne i32 %j.0, 4, !dbg !956
  br i1 %exitcond6, label %for.body3, label %for.inc65, !dbg !948

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !958
  %0 = load i64, ptr %arrayidx, align 8, !dbg !958
  %shr = lshr i64 %0, 60, !dbg !960
    #dbg_value(i8 %conv, !961, !DIExpression(), !962)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !963
  %shl = shl i64 %0, 4, !dbg !964
  store i64 %shl, ptr %arrayidx4, align 8, !dbg !964
    #dbg_value(i32 2, !965, !DIExpression(), !967)
  br label %for.cond5, !dbg !968

for.cond5:                                        ; preds = %for.body8, %for.body3
  %k.0 = phi i32 [ 2, %for.body3 ], [ %dec, %for.body8 ], !dbg !969
    #dbg_value(i32 %k.0, !965, !DIExpression(), !967)
  %cmp6 = icmp sgt i32 %k.0, -1, !dbg !970
  br i1 %cmp6, label %for.body8, label %for.cond14.preheader, !dbg !972

for.cond14.preheader:                             ; preds = %for.cond5
  %conv = trunc nuw nsw i64 %shr to i8, !dbg !973
  br label %for.cond14, !dbg !974

for.body8:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !976
  %1 = load i64, ptr %arrayidx9, align 8, !dbg !976
  %shr10 = lshr i64 %1, 60, !dbg !978
  %add = add nuw nsw i32 %k.0, 1, !dbg !979
  %arrayidx11 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %add, !dbg !980
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !981
  %xor = xor i64 %2, %shr10, !dbg !981
  store i64 %xor, ptr %arrayidx11, align 8, !dbg !981
  %arrayidx12 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !982
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !983
  %shl13 = shl i64 %3, 4, !dbg !983
  store i64 %shl13, ptr %arrayidx12, align 8, !dbg !983
  %dec = add nsw i32 %k.0, -1, !dbg !984
    #dbg_value(i32 %dec, !965, !DIExpression(), !967)
  br label %for.cond5, !dbg !985, !llvm.loop !986

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc36
  %jj.0 = phi i32 [ %inc, %for.inc36 ], [ 0, %for.cond14.preheader ], !dbg !988
    #dbg_value(i32 %jj.0, !989, !DIExpression(), !990)
  %exitcond = icmp ne i32 %jj.0, 4, !dbg !991
  br i1 %exitcond, label %for.body17, label %for.cond39.preheader, !dbg !974

for.cond39.preheader:                             ; preds = %for.cond14
  br label %for.cond39, !dbg !993

for.body17:                                       ; preds = %for.cond14
  %rem18 = and i32 %jj.0, 1, !dbg !995
  %cmp19 = icmp eq i32 %rem18, 0, !dbg !998
  br i1 %cmp19, label %if.then, label %if.else, !dbg !998

if.then:                                          ; preds = %for.body17
  %arrayidx21 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !999
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !999
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %4) #6, !dbg !1001
  %div = lshr exact i32 %jj.0, 1, !dbg !1002
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1003
  %5 = load i8, ptr %arrayidx23, align 1, !dbg !1004
  %xor254 = xor i8 %5, %call, !dbg !1004
  store i8 %xor254, ptr %arrayidx23, align 1, !dbg !1004
  br label %for.inc36, !dbg !1005

if.else:                                          ; preds = %for.body17
  %arrayidx27 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1006
  %6 = load i8, ptr %arrayidx27, align 1, !dbg !1006
  %call28 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %6) #6, !dbg !1008
  %shl30 = shl nuw i8 %call28, 4, !dbg !1009
  %div313 = lshr i32 %jj.0, 1, !dbg !1010
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %temp, i32 %div313, !dbg !1011
  %7 = load i8, ptr %arrayidx32, align 1, !dbg !1012
  %xor34 = xor i8 %shl30, %7, !dbg !1012
  store i8 %xor34, ptr %arrayidx32, align 1, !dbg !1012
  br label %for.inc36

for.inc36:                                        ; preds = %if.then, %if.else
  %inc = add nuw nsw i32 %jj.0, 1, !dbg !1013
    #dbg_value(i32 %inc, !989, !DIExpression(), !990)
  br label %for.cond14, !dbg !1014, !llvm.loop !1015

for.cond39:                                       ; preds = %for.cond39.preheader, %for.body42
  %k38.0 = phi i32 [ %inc60, %for.body42 ], [ 0, %for.cond39.preheader ], !dbg !1017
    #dbg_value(i32 %k38.0, !1018, !DIExpression(), !1019)
  %exitcond5 = icmp ne i32 %k38.0, 4, !dbg !1020
  br i1 %exitcond5, label %for.body42, label %for.inc62, !dbg !993

for.body42:                                       ; preds = %for.cond39
  %8 = shl i32 %i.0, 4, !dbg !1022
  %9 = shl i32 %j.0, 2, !dbg !1022
  %mul44 = add nsw i32 %8, %9, !dbg !1022
  %add45 = or disjoint i32 %mul44, %k38.0, !dbg !1024
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45, !dbg !1025
  %10 = load i64, ptr %arrayidx46, align 8, !dbg !1025
  %cmp47.not = icmp eq i32 %i.0, %j.0, !dbg !1026
  %11 = shl i32 %j.0, 4, !dbg !1027
  %12 = shl i32 %i.0, 2, !dbg !1027
  %mul52 = add nsw i32 %11, %12, !dbg !1027
  %add53 = or disjoint i32 %mul52, %k38.0, !dbg !1028
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53, !dbg !1029
  %13 = load i64, ptr %arrayidx54, align 8, !dbg !1029
  %mul55 = select i1 %cmp47.not, i64 0, i64 %13, !dbg !1030
  %xor56 = xor i64 %10, %mul55, !dbg !1031
  %arrayidx57 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k38.0, !dbg !1032
  %14 = load i64, ptr %arrayidx57, align 8, !dbg !1033
  %xor58 = xor i64 %14, %xor56, !dbg !1033
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1033
  %inc60 = add nuw nsw i32 %k38.0, 1, !dbg !1034
    #dbg_value(i32 %inc60, !1018, !DIExpression(), !1019)
  br label %for.cond39, !dbg !1035, !llvm.loop !1036

for.inc62:                                        ; preds = %for.cond39
  %inc63 = add nuw nsw i32 %j.0, 1, !dbg !1038
    #dbg_value(i32 %inc63, !954, !DIExpression(), !955)
  br label %for.cond1, !dbg !1039, !llvm.loop !1040

for.inc65:                                        ; preds = %for.cond1
  %dec66 = add nsw i32 %i.0, -1, !dbg !1042
    #dbg_value(i32 %dec66, !940, !DIExpression(), !942)
  br label %for.cond, !dbg !1043, !llvm.loop !1044

for.cond69:                                       ; preds = %for.cond69.preheader, %for.body72
  %i68.0 = phi i32 [ %add93, %for.body72 ], [ 0, %for.cond69.preheader ], !dbg !1046
    #dbg_value(i32 %i68.0, !1047, !DIExpression(), !1048)
  %cmp70 = icmp samesign ult i32 %i68.0, 64, !dbg !1049
  br i1 %cmp70, label %for.body72, label %for.end94, !dbg !951

for.body72:                                       ; preds = %for.cond69
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %t, i32 %i68.0, !dbg !1051
  %15 = load i8, ptr %arrayidx73, align 1, !dbg !1051
  %div75 = lshr exact i32 %i68.0, 1, !dbg !1053
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75, !dbg !1054
  %16 = load i8, ptr %arrayidx76, align 1, !dbg !1054
  %17 = and i8 %16, 15, !dbg !1055
  %xor781 = xor i8 %15, %17, !dbg !1056
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %y, i32 %i68.0, !dbg !1057
  store i8 %xor781, ptr %arrayidx80, align 1, !dbg !1058
  %add81 = or disjoint i32 %i68.0, 1, !dbg !1059
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %t, i32 %add81, !dbg !1060
  %18 = load i8, ptr %arrayidx82, align 1, !dbg !1060
  %div84 = lshr exact i32 %i68.0, 1, !dbg !1061
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %temp, i32 %div84, !dbg !1062
  %19 = load i8, ptr %arrayidx85, align 1, !dbg !1062
  %20 = lshr i8 %19, 4, !dbg !1063
  %xor882 = xor i8 %18, %20, !dbg !1064
  %add90 = or disjoint i32 %i68.0, 1, !dbg !1065
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %y, i32 %add90, !dbg !1066
  store i8 %xor882, ptr %arrayidx91, align 1, !dbg !1067
  %add93 = add nuw nsw i32 %i68.0, 2, !dbg !1068
    #dbg_value(i32 %add93, !1047, !DIExpression(), !1048)
  br label %for.cond69, !dbg !1069, !llvm.loop !1070

for.end94:                                        ; preds = %for.cond69
  ret void, !dbg !1072
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1073 {
entry:
  %A = alloca [640 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1076, !DIExpression(), !1077)
    #dbg_value(ptr %VtL, !1078, !DIExpression(), !1077)
    #dbg_value(ptr %A_out, !1079, !DIExpression(), !1077)
    #dbg_value(i32 0, !1080, !DIExpression(), !1077)
    #dbg_value(i32 0, !1081, !DIExpression(), !1077)
    #dbg_value(i32 4, !1082, !DIExpression(), !1077)
    #dbg_declare(ptr %A, !1083, !DIExpression(), !1087)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5120) %A, i8 0, i32 5120, i1 false), !dbg !1087
    #dbg_value(i32 80, !1088, !DIExpression(), !1077)
    #dbg_value(i32 0, !1089, !DIExpression(), !1091)
  br label %for.cond, !dbg !1092

for.cond:                                         ; preds = %for.inc90, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc91, %for.inc90 ], !dbg !1093
  %words_to_shift.0 = phi i32 [ 0, %entry ], [ %words_to_shift.1.lcssa, %for.inc90 ], !dbg !1094
  %bits_to_shift.0 = phi i32 [ 0, %entry ], [ %bits_to_shift.1.lcssa, %for.inc90 ], !dbg !1095
    #dbg_value(i32 %bits_to_shift.0, !1080, !DIExpression(), !1077)
    #dbg_value(i32 %words_to_shift.0, !1081, !DIExpression(), !1077)
    #dbg_value(i32 %i.0, !1089, !DIExpression(), !1091)
  %exitcond7 = icmp ne i32 %i.0, 4, !dbg !1096
  br i1 %exitcond7, label %for.cond1.preheader, label %for.cond94.preheader, !dbg !1098

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1099

for.cond94.preheader:                             ; preds = %for.cond
  br label %for.cond94, !dbg !1102

for.cond1:                                        ; preds = %for.cond1.preheader, %if.end82
  %j.0 = phi i32 [ %dec, %if.end82 ], [ 3, %for.cond1.preheader ], !dbg !1104
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end82 ], [ %words_to_shift.0, %for.cond1.preheader ], !dbg !1077
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end82 ], [ %bits_to_shift.0, %for.cond1.preheader ], !dbg !1077
    #dbg_value(i32 %bits_to_shift.1, !1080, !DIExpression(), !1077)
    #dbg_value(i32 %words_to_shift.1, !1081, !DIExpression(), !1077)
    #dbg_value(i32 %j.0, !1105, !DIExpression(), !1106)
  %cmp2.not = icmp slt i32 %j.0, %i.0, !dbg !1107
  br i1 %cmp2.not, label %for.inc90, label %for.body3, !dbg !1099

for.body3:                                        ; preds = %for.cond1
  %add.ptr.idx = mul nsw i32 %j.0, 544, !dbg !1109
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1109
    #dbg_value(ptr %add.ptr, !1111, !DIExpression(), !1077)
    #dbg_value(i32 0, !1112, !DIExpression(), !1114)
  br label %for.cond5, !dbg !1115

for.cond5:                                        ; preds = %for.inc31, %for.body3
  %c.0 = phi i32 [ 0, %for.body3 ], [ %inc32, %for.inc31 ], !dbg !1116
    #dbg_value(i32 %c.0, !1112, !DIExpression(), !1114)
  %exitcond4 = icmp ne i32 %c.0, 17, !dbg !1117
  br i1 %exitcond4, label %for.cond8.preheader, label %for.end33, !dbg !1119

for.cond8.preheader:                              ; preds = %for.cond5
  br label %for.cond8, !dbg !1120

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc
  %k.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond8.preheader ], !dbg !1123
    #dbg_value(i32 %k.0, !1124, !DIExpression(), !1125)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1126
  br i1 %exitcond, label %for.body10, label %for.inc31, !dbg !1120

for.body10:                                       ; preds = %for.cond8
  %mul11 = shl nuw nsw i32 %c.0, 2, !dbg !1128
  %add = or disjoint i32 %k.0, %mul11, !dbg !1130
  %arrayidx = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add, !dbg !1131
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1131
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1132
  %shl = shl i64 %0, %sh_prom, !dbg !1132
  %mul12 = mul nuw nsw i32 %i.0, 17, !dbg !1133
  %add13 = add nuw nsw i32 %mul12, %c.0, !dbg !1134
  %add14 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1135
  %mul15 = mul i32 %add14, 80, !dbg !1136
  %add16 = add i32 %add13, %mul15, !dbg !1137
  %arrayidx17 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16, !dbg !1138
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !1139
  %xor = xor i64 %1, %shl, !dbg !1139
  store i64 %xor, ptr %arrayidx17, align 8, !dbg !1139
  %cmp18 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1140
  br i1 %cmp18, label %if.then, label %for.inc, !dbg !1140

if.then:                                          ; preds = %for.body10
  %mul19 = shl nuw nsw i32 %c.0, 2, !dbg !1142
  %add20 = or disjoint i32 %k.0, %mul19, !dbg !1144
  %arrayidx21 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20, !dbg !1145
  %2 = load i64, ptr %arrayidx21, align 8, !dbg !1145
  %sub = sub nsw i32 64, %bits_to_shift.1, !dbg !1146
  %sh_prom22 = zext nneg i32 %sub to i64, !dbg !1147
  %shr = lshr i64 %2, %sh_prom22, !dbg !1147
  %mul23 = mul nuw nsw i32 %i.0, 17, !dbg !1148
  %add24 = add nuw nsw i32 %mul23, %c.0, !dbg !1149
  %add25 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1150
  %3 = mul i32 %add25, 80, !dbg !1151
  %mul27 = add i32 %3, 80, !dbg !1151
  %add28 = add i32 %add24, %mul27, !dbg !1152
  %arrayidx29 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28, !dbg !1153
  %4 = load i64, ptr %arrayidx29, align 8, !dbg !1154
  %xor30 = xor i64 %4, %shr, !dbg !1154
  store i64 %xor30, ptr %arrayidx29, align 8, !dbg !1154
  br label %for.inc, !dbg !1155

for.inc:                                          ; preds = %for.body10, %if.then
  %inc = add nuw nsw i32 %k.0, 1, !dbg !1156
    #dbg_value(i32 %inc, !1124, !DIExpression(), !1125)
  br label %for.cond8, !dbg !1157, !llvm.loop !1158

for.inc31:                                        ; preds = %for.cond8
  %inc32 = add nuw nsw i32 %c.0, 1, !dbg !1160
    #dbg_value(i32 %inc32, !1112, !DIExpression(), !1114)
  br label %for.cond5, !dbg !1161, !llvm.loop !1162

for.end33:                                        ; preds = %for.cond5
  %cmp34.not = icmp eq i32 %i.0, %j.0, !dbg !1164
  br i1 %cmp34.not, label %if.end82, label %if.then35, !dbg !1164

if.then35:                                        ; preds = %for.end33
  %add.ptr38.idx = mul nuw nsw i32 %i.0, 544, !dbg !1166
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr38.idx, !dbg !1166
    #dbg_value(ptr %add.ptr38, !1168, !DIExpression(), !1077)
    #dbg_value(i32 0, !1169, !DIExpression(), !1171)
  br label %for.cond40, !dbg !1172

for.cond40:                                       ; preds = %for.inc79, %if.then35
  %c39.0 = phi i32 [ 0, %if.then35 ], [ %inc80, %for.inc79 ], !dbg !1173
    #dbg_value(i32 %c39.0, !1169, !DIExpression(), !1171)
  %exitcond6 = icmp ne i32 %c39.0, 17, !dbg !1174
  br i1 %exitcond6, label %for.cond44.preheader, label %if.end82.loopexit, !dbg !1176

for.cond44.preheader:                             ; preds = %for.cond40
  br label %for.cond44, !dbg !1177

for.cond44:                                       ; preds = %for.cond44.preheader, %for.inc76
  %k43.0 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.cond44.preheader ], !dbg !1180
    #dbg_value(i32 %k43.0, !1181, !DIExpression(), !1182)
  %exitcond5 = icmp ne i32 %k43.0, 4, !dbg !1183
  br i1 %exitcond5, label %for.body46, label %for.inc79, !dbg !1177

for.body46:                                       ; preds = %for.cond44
  %mul47 = shl nuw nsw i32 %c39.0, 2, !dbg !1185
  %add48 = or disjoint i32 %k43.0, %mul47, !dbg !1187
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48, !dbg !1188
  %5 = load i64, ptr %arrayidx49, align 8, !dbg !1188
  %sh_prom50 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1189
  %shl51 = shl i64 %5, %sh_prom50, !dbg !1189
  %mul52 = mul nsw i32 %j.0, 17, !dbg !1190
  %add53 = add nsw i32 %mul52, %c39.0, !dbg !1191
  %add54 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1192
  %mul55 = mul i32 %add54, 80, !dbg !1193
  %add56 = add i32 %add53, %mul55, !dbg !1194
  %arrayidx57 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56, !dbg !1195
  %6 = load i64, ptr %arrayidx57, align 8, !dbg !1196
  %xor58 = xor i64 %6, %shl51, !dbg !1196
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1196
  %cmp59 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1197
  br i1 %cmp59, label %if.then60, label %for.inc76, !dbg !1197

if.then60:                                        ; preds = %for.body46
  %mul61 = shl nuw nsw i32 %c39.0, 2, !dbg !1199
  %add62 = or disjoint i32 %k43.0, %mul61, !dbg !1201
  %arrayidx63 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62, !dbg !1202
  %7 = load i64, ptr %arrayidx63, align 8, !dbg !1202
  %sub64 = sub nsw i32 64, %bits_to_shift.1, !dbg !1203
  %sh_prom65 = zext nneg i32 %sub64 to i64, !dbg !1204
  %shr66 = lshr i64 %7, %sh_prom65, !dbg !1204
  %mul67 = mul nsw i32 %j.0, 17, !dbg !1205
  %add68 = add nsw i32 %mul67, %c39.0, !dbg !1206
  %add69 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1207
  %8 = mul i32 %add69, 80, !dbg !1208
  %mul71 = add i32 %8, 80, !dbg !1208
  %add72 = add i32 %add68, %mul71, !dbg !1209
  %arrayidx73 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72, !dbg !1210
  %9 = load i64, ptr %arrayidx73, align 8, !dbg !1211
  %xor74 = xor i64 %9, %shr66, !dbg !1211
  store i64 %xor74, ptr %arrayidx73, align 8, !dbg !1211
  br label %for.inc76, !dbg !1212

for.inc76:                                        ; preds = %for.body46, %if.then60
  %inc77 = add nuw nsw i32 %k43.0, 1, !dbg !1213
    #dbg_value(i32 %inc77, !1181, !DIExpression(), !1182)
  br label %for.cond44, !dbg !1214, !llvm.loop !1215

for.inc79:                                        ; preds = %for.cond44
  %inc80 = add nuw nsw i32 %c39.0, 1, !dbg !1217
    #dbg_value(i32 %inc80, !1169, !DIExpression(), !1171)
  br label %for.cond40, !dbg !1218, !llvm.loop !1219

if.end82.loopexit:                                ; preds = %for.cond40
  br label %if.end82, !dbg !1221

if.end82:                                         ; preds = %if.end82.loopexit, %for.end33
  %add83 = add nsw i32 %bits_to_shift.1, 4, !dbg !1221
    #dbg_value(i32 %add83, !1080, !DIExpression(), !1077)
  %cmp84 = icmp eq i32 %add83, 64, !dbg !1222
  %inc86 = zext i1 %cmp84 to i32, !dbg !1222
  %spec.select = add nsw i32 %words_to_shift.1, %inc86, !dbg !1222
  %spec.select3 = select i1 %cmp84, i32 0, i32 %add83, !dbg !1222
    #dbg_value(i32 %spec.select3, !1080, !DIExpression(), !1077)
    #dbg_value(i32 %spec.select, !1081, !DIExpression(), !1077)
  %dec = add nsw i32 %j.0, -1, !dbg !1224
    #dbg_value(i32 %dec, !1105, !DIExpression(), !1106)
  br label %for.cond1, !dbg !1225, !llvm.loop !1226

for.inc90:                                        ; preds = %for.cond1
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond1 ], !dbg !1077
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond1 ], !dbg !1077
  %inc91 = add nuw nsw i32 %i.0, 1, !dbg !1228
    #dbg_value(i32 %inc91, !1089, !DIExpression(), !1091)
  br label %for.cond, !dbg !1229, !llvm.loop !1230

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %c93.0 = phi i32 [ %add100, %for.body97 ], [ 0, %for.cond94.preheader ], !dbg !1232
    #dbg_value(i32 %c93.0, !1233, !DIExpression(), !1234)
  %cmp96 = icmp samesign ult i32 %c93.0, 400, !dbg !1235
  br i1 %cmp96, label %for.body97, label %for.end101, !dbg !1102

for.body97:                                       ; preds = %for.cond94
  %add.ptr98 = getelementptr inbounds nuw i64, ptr %A, i32 %c93.0, !dbg !1237
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr98) #6, !dbg !1239
  %add100 = add nuw nsw i32 %c93.0, 16, !dbg !1240
    #dbg_value(i32 %add100, !1233, !DIExpression(), !1234)
  br label %for.cond94, !dbg !1241, !llvm.loop !1242

for.end101:                                       ; preds = %for.cond94
    #dbg_declare(ptr %tab, !1244, !DIExpression(), !1248)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1248
    #dbg_value(i32 0, !1249, !DIExpression(), !1251)
  br label %for.cond103, !dbg !1252

for.cond103:                                      ; preds = %for.body105, %for.end101
  %i102.0 = phi i32 [ 0, %for.end101 ], [ %inc125, %for.body105 ], !dbg !1253
    #dbg_value(i32 %i102.0, !1249, !DIExpression(), !1251)
  %exitcond8 = icmp ne i32 %i102.0, 4, !dbg !1254
  br i1 %exitcond8, label %for.body105, label %for.cond128.preheader, !dbg !1256

for.cond128.preheader:                            ; preds = %for.cond103
  br label %for.cond128, !dbg !1257

for.body105:                                      ; preds = %for.cond103
  %arrayidx106 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1259
  %10 = load i8, ptr %arrayidx106, align 1, !dbg !1259
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 1) #6, !dbg !1261
  %mul107 = shl nuw nsw i32 %i102.0, 2, !dbg !1262
  %arrayidx108 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107, !dbg !1263
  store i8 %call, ptr %arrayidx108, align 1, !dbg !1264
  %call110 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 2) #6, !dbg !1265
  %mul111 = shl nuw nsw i32 %i102.0, 2, !dbg !1266
  %add112 = or disjoint i32 %mul111, 1, !dbg !1267
  %arrayidx113 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112, !dbg !1268
  store i8 %call110, ptr %arrayidx113, align 1, !dbg !1269
  %arrayidx114 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1270
  %11 = load i8, ptr %arrayidx114, align 1, !dbg !1270
  %call115 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %11, i8 noundef zeroext 4) #6, !dbg !1271
  %mul116 = shl nuw nsw i32 %i102.0, 2, !dbg !1272
  %add117 = or disjoint i32 %mul116, 2, !dbg !1273
  %arrayidx118 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117, !dbg !1274
  store i8 %call115, ptr %arrayidx118, align 1, !dbg !1275
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1276
  %12 = load i8, ptr %arrayidx119, align 1, !dbg !1276
  %call120 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %12, i8 noundef zeroext 8) #6, !dbg !1277
  %mul121 = shl nuw nsw i32 %i102.0, 2, !dbg !1278
  %add122 = or disjoint i32 %mul121, 3, !dbg !1279
  %arrayidx123 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122, !dbg !1280
  store i8 %call120, ptr %arrayidx123, align 1, !dbg !1281
  %inc125 = add nuw nsw i32 %i102.0, 1, !dbg !1282
    #dbg_value(i32 %inc125, !1249, !DIExpression(), !1251)
  br label %for.cond103, !dbg !1283, !llvm.loop !1284

for.cond128:                                      ; preds = %for.cond128.preheader, %for.inc189
  %c127.0 = phi i32 [ %add190, %for.inc189 ], [ 0, %for.cond128.preheader ], !dbg !1286
    #dbg_value(i32 %c127.0, !1287, !DIExpression(), !1288)
  %cmp129 = icmp samesign ult i32 %c127.0, 80, !dbg !1289
  br i1 %cmp129, label %for.cond131.preheader, label %for.cond193.preheader, !dbg !1257

for.cond131.preheader:                            ; preds = %for.cond128
  br label %for.cond131, !dbg !1291

for.cond193.preheader:                            ; preds = %for.cond128
  br label %for.cond193, !dbg !1294

for.cond131:                                      ; preds = %for.cond131.preheader, %for.inc186
  %r.0 = phi i32 [ %inc187, %for.inc186 ], [ 64, %for.cond131.preheader ], !dbg !1296
    #dbg_value(i32 %r.0, !1297, !DIExpression(), !1298)
  %exitcond10 = icmp ne i32 %r.0, 74, !dbg !1299
  br i1 %exitcond10, label %for.body133, label %for.inc189, !dbg !1291

for.body133:                                      ; preds = %for.cond131
  %div1 = lshr i32 %r.0, 4, !dbg !1301
  %mul134 = mul nuw nsw i32 %div1, 80, !dbg !1303
  %add135 = add nuw nsw i32 %mul134, %c127.0, !dbg !1304
  %rem = and i32 %r.0, 15, !dbg !1305
  %add136 = or disjoint i32 %add135, %rem, !dbg !1306
    #dbg_value(i32 %add136, !1307, !DIExpression(), !1308)
  %arrayidx137 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1309
  %13 = load i64, ptr %arrayidx137, align 8, !dbg !1309
  %and = and i64 %13, 1229782938247303441, !dbg !1310
    #dbg_value(i64 %and, !1311, !DIExpression(), !1308)
  %shr139 = lshr i64 %13, 1, !dbg !1312
  %and140 = and i64 %shr139, 1229782938247303441, !dbg !1313
    #dbg_value(i64 %and140, !1314, !DIExpression(), !1308)
  %shr142 = lshr i64 %13, 2, !dbg !1315
  %and143 = and i64 %shr142, 1229782938247303441, !dbg !1316
    #dbg_value(i64 %and143, !1317, !DIExpression(), !1308)
  %arrayidx144 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1318
  %14 = load i64, ptr %arrayidx144, align 8, !dbg !1318
  %shr145 = lshr i64 %14, 3, !dbg !1319
  %and146 = and i64 %shr145, 1229782938247303441, !dbg !1320
    #dbg_value(i64 %and146, !1321, !DIExpression(), !1308)
    #dbg_value(i32 0, !1322, !DIExpression(), !1324)
  br label %for.cond147, !dbg !1325

for.cond147:                                      ; preds = %for.body149, %for.body133
  %t.0 = phi i32 [ 0, %for.body133 ], [ %inc184, %for.body149 ], !dbg !1326
    #dbg_value(i32 %t.0, !1322, !DIExpression(), !1324)
  %exitcond9 = icmp ne i32 %t.0, 4, !dbg !1327
  br i1 %exitcond9, label %for.body149, label %for.inc186, !dbg !1329

for.body149:                                      ; preds = %for.cond147
  %mul150 = shl nuw nsw i32 %t.0, 2, !dbg !1330
  %arrayidx152 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul150, !dbg !1332
  %15 = load i8, ptr %arrayidx152, align 1, !dbg !1332
  %conv = zext i8 %15 to i64, !dbg !1332
  %mul153 = mul i64 %and, %conv, !dbg !1333
  %mul154 = shl nuw nsw i32 %t.0, 2, !dbg !1334
  %add155 = or disjoint i32 %mul154, 1, !dbg !1335
  %arrayidx156 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add155, !dbg !1336
  %16 = load i8, ptr %arrayidx156, align 1, !dbg !1336
  %conv157 = zext i8 %16 to i64, !dbg !1336
  %mul158 = mul i64 %and140, %conv157, !dbg !1337
  %xor159 = xor i64 %mul153, %mul158, !dbg !1338
  %mul160 = shl nuw nsw i32 %t.0, 2, !dbg !1339
  %add161 = or disjoint i32 %mul160, 2, !dbg !1340
  %arrayidx162 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add161, !dbg !1341
  %17 = load i8, ptr %arrayidx162, align 1, !dbg !1341
  %conv163 = zext i8 %17 to i64, !dbg !1341
  %mul164 = mul i64 %and143, %conv163, !dbg !1342
  %xor165 = xor i64 %xor159, %mul164, !dbg !1343
  %mul166 = shl nuw nsw i32 %t.0, 2, !dbg !1344
  %add167 = or disjoint i32 %mul166, 3, !dbg !1345
  %arrayidx168 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add167, !dbg !1346
  %18 = load i8, ptr %arrayidx168, align 1, !dbg !1346
  %conv169 = zext i8 %18 to i64, !dbg !1346
  %mul170 = mul i64 %and146, %conv169, !dbg !1347
  %xor171 = xor i64 %xor165, %mul170, !dbg !1348
  %add172 = add nuw nsw i32 %r.0, %t.0, !dbg !1349
  %sub173 = add nsw i32 %add172, -64, !dbg !1350
  %div1742 = lshr i32 %sub173, 4, !dbg !1351
  %mul175 = mul i32 %div1742, 80, !dbg !1352
  %add176 = add i32 %mul175, %c127.0, !dbg !1353
  %add177 = add nuw nsw i32 %r.0, %t.0, !dbg !1354
  %rem179 = and i32 %add177, 15, !dbg !1355
  %add180 = or disjoint i32 %add176, %rem179, !dbg !1356
  %arrayidx181 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180, !dbg !1357
  %19 = load i64, ptr %arrayidx181, align 8, !dbg !1358
  %xor182 = xor i64 %19, %xor171, !dbg !1358
  store i64 %xor182, ptr %arrayidx181, align 8, !dbg !1358
  %inc184 = add nuw nsw i32 %t.0, 1, !dbg !1359
    #dbg_value(i32 %inc184, !1322, !DIExpression(), !1324)
  br label %for.cond147, !dbg !1360, !llvm.loop !1361

for.inc186:                                       ; preds = %for.cond147
  %inc187 = add nuw nsw i32 %r.0, 1, !dbg !1363
    #dbg_value(i32 %inc187, !1297, !DIExpression(), !1298)
  br label %for.cond131, !dbg !1364, !llvm.loop !1365

for.inc189:                                       ; preds = %for.cond131
  %add190 = add nuw nsw i32 %c127.0, 16, !dbg !1367
    #dbg_value(i32 %add190, !1287, !DIExpression(), !1288)
  br label %for.cond128, !dbg !1368, !llvm.loop !1369

for.cond193:                                      ; preds = %for.cond193.preheader, %for.inc227
  %indvars.iv = phi i32 [ 64, %for.cond193.preheader ], [ %indvars.iv.next, %for.inc227 ], !dbg !1371
  %r192.0 = phi i32 [ %add228, %for.inc227 ], [ 0, %for.cond193.preheader ], !dbg !1371
    #dbg_value(i32 %r192.0, !1372, !DIExpression(), !1373)
  %cmp194 = icmp samesign ult i32 %r192.0, 64, !dbg !1374
  br i1 %cmp194, label %for.cond198.preheader, label %for.end229, !dbg !1294

for.cond198.preheader:                            ; preds = %for.cond193
  br label %for.cond198, !dbg !1376

for.cond198:                                      ; preds = %for.cond198.preheader, %for.inc224
  %c197.0 = phi i32 [ %add225, %for.inc224 ], [ 0, %for.cond198.preheader ], !dbg !1379
    #dbg_value(i32 %c197.0, !1380, !DIExpression(), !1381)
  %cmp199 = icmp samesign ult i32 %c197.0, 68, !dbg !1382
  br i1 %cmp199, label %for.cond203.preheader, label %for.inc227, !dbg !1376

for.cond203.preheader:                            ; preds = %for.cond198
  br label %for.cond203, !dbg !1384

for.cond203:                                      ; preds = %for.cond203.preheader, %for.body207
  %i202.0 = phi i32 [ %inc222, %for.body207 ], [ 0, %for.cond203.preheader ], !dbg !1387
    #dbg_value(i32 %i202.0, !1388, !DIExpression(), !1389)
  %exitcond11 = icmp ne i32 %i202.0, %indvars.iv, !dbg !1390
  br i1 %exitcond11, label %for.body207, label %for.inc224, !dbg !1384

for.body207:                                      ; preds = %for.cond203
  %div209 = mul nuw nsw i32 %r192.0, 5, !dbg !1392
  %add210 = add nuw nsw i32 %div209, %c197.0, !dbg !1394
  %add211 = add nuw nsw i32 %add210, %i202.0, !dbg !1395
  %arrayidx212 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211, !dbg !1396
  %add213 = add nuw nsw i32 %r192.0, %i202.0, !dbg !1397
  %mul214 = mul nuw nsw i32 %add213, 69, !dbg !1398
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214, !dbg !1399
  %add.ptr216 = getelementptr inbounds nuw i8, ptr %add.ptr215, i32 %c197.0, !dbg !1400
  %cmp218 = icmp samesign ult i32 %c197.0, 52, !dbg !1401
  %sub220 = sub nsw i32 68, %c197.0, !dbg !1401
  %cond = select i1 %cmp218, i32 16, i32 %sub220, !dbg !1401
  call fastcc void @decode(ptr noundef nonnull %arrayidx212, ptr noundef nonnull %add.ptr216, i32 noundef %cond) #6, !dbg !1402
  %inc222 = add nuw nsw i32 %i202.0, 1, !dbg !1403
    #dbg_value(i32 %inc222, !1388, !DIExpression(), !1389)
  br label %for.cond203, !dbg !1404, !llvm.loop !1405

for.inc224:                                       ; preds = %for.cond203
  %add225 = add nuw nsw i32 %c197.0, 16, !dbg !1407
    #dbg_value(i32 %add225, !1380, !DIExpression(), !1381)
  br label %for.cond198, !dbg !1408, !llvm.loop !1409

for.inc227:                                       ; preds = %for.cond198
  %add228 = add nuw nsw i32 %r192.0, 16, !dbg !1411
    #dbg_value(i32 %add228, !1372, !DIExpression(), !1373)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1412
  br label %for.cond193, !dbg !1412, !llvm.loop !1413

for.end229:                                       ; preds = %for.cond193
  ret void, !dbg !1415
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1416 {
entry:
    #dbg_value(ptr %a, !1419, !DIExpression(), !1420)
    #dbg_value(ptr %b, !1421, !DIExpression(), !1420)
    #dbg_value(ptr %c, !1422, !DIExpression(), !1420)
    #dbg_value(i32 17, !1423, !DIExpression(), !1420)
    #dbg_value(i32 64, !1424, !DIExpression(), !1420)
    #dbg_value(i32 1, !1425, !DIExpression(), !1420)
    #dbg_value(i32 0, !1426, !DIExpression(), !1428)
  br label %for.cond, !dbg !1429

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1430
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1419, !DIExpression(), !1420)
    #dbg_value(ptr %c.addr.0, !1422, !DIExpression(), !1420)
    #dbg_value(i32 %i.0, !1426, !DIExpression(), !1428)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1431
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1433

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1434

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1437
    #dbg_value(i32 poison, !1438, !DIExpression(), !1439)
    #dbg_value(ptr %c.addr.1, !1422, !DIExpression(), !1420)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1434

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 17, i32 noundef 1) #6, !dbg !1440
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1443
    #dbg_value(i32 1, !1438, !DIExpression(), !1439)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1444
    #dbg_value(ptr %incdec.ptr, !1422, !DIExpression(), !1420)
  br label %for.cond1, !dbg !1445, !llvm.loop !1446

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1448
    #dbg_value(i32 %inc5, !1426, !DIExpression(), !1428)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 17, !dbg !1449
    #dbg_value(ptr %add.ptr6, !1419, !DIExpression(), !1420)
  br label %for.cond, !dbg !1450, !llvm.loop !1451

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1453
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1454 {
entry:
    #dbg_value(ptr %a, !1457, !DIExpression(), !1458)
    #dbg_value(ptr %b, !1459, !DIExpression(), !1458)
    #dbg_value(ptr %c, !1460, !DIExpression(), !1458)
    #dbg_value(i32 64, !1461, !DIExpression(), !1458)
    #dbg_value(i32 1, !1462, !DIExpression(), !1458)
    #dbg_value(i32 0, !1463, !DIExpression(), !1465)
  br label %for.cond, !dbg !1466

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1467
    #dbg_value(i32 %i.0, !1463, !DIExpression(), !1465)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1468
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1470

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1471, !DIExpression(), !1474)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1475
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1478
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1479
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1480
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1481
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1482
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1483
    #dbg_value(i32 1, !1471, !DIExpression(), !1474)
    #dbg_value(i32 poison, !1471, !DIExpression(), !1474)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1484
    #dbg_value(i32 %inc12, !1463, !DIExpression(), !1465)
  br label %for.cond, !dbg !1485, !llvm.loop !1486

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1488
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1489 {
entry:
    #dbg_value(ptr %m, !1490, !DIExpression(), !1491)
    #dbg_value(ptr %menc, !1492, !DIExpression(), !1491)
    #dbg_value(i32 324, !1493, !DIExpression(), !1491)
    #dbg_value(i32 0, !1494, !DIExpression(), !1491)
  br label %for.cond, !dbg !1495

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1497
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1490, !DIExpression(), !1491)
    #dbg_value(i32 %i.0, !1494, !DIExpression(), !1491)
  %exitcond = icmp ne i32 %i.0, 162, !dbg !1498
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1500

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1501
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1503
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1504
  %shl = shl i8 %1, 4, !dbg !1505
  %or = or i8 %shl, %0, !dbg !1506
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1507
  store i8 %or, ptr %arrayidx, align 1, !dbg !1508
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1509
    #dbg_value(i32 %inc, !1494, !DIExpression(), !1491)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1510
    #dbg_value(ptr %add.ptr3, !1490, !DIExpression(), !1491)
  br label %for.cond, !dbg !1511, !llvm.loop !1512

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1514
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1515 {
entry:
    #dbg_value(i8 %a, !1518, !DIExpression(), !1519)
    #dbg_value(i8 %b, !1520, !DIExpression(), !1519)
  %xor1 = xor i8 %a, %b, !dbg !1521
  ret i8 %xor1, !dbg !1522
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1523 {
entry:
    #dbg_value(ptr %a, !1526, !DIExpression(), !1527)
    #dbg_value(ptr %b, !1528, !DIExpression(), !1527)
    #dbg_value(i32 17, !1529, !DIExpression(), !1527)
    #dbg_value(i32 1, !1530, !DIExpression(), !1527)
    #dbg_value(i8 0, !1531, !DIExpression(), !1527)
    #dbg_value(i32 0, !1532, !DIExpression(), !1534)
  br label %for.cond, !dbg !1535

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1527
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1536
    #dbg_value(i32 %i.0, !1532, !DIExpression(), !1534)
    #dbg_value(ptr %b.addr.0, !1528, !DIExpression(), !1527)
    #dbg_value(i8 %ret.0, !1531, !DIExpression(), !1527)
  %exitcond = icmp ne i32 %i.0, 17, !dbg !1537
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1539

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1540
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1540
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1542
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1543
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1544
    #dbg_value(i8 %call1, !1531, !DIExpression(), !1527)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1545
    #dbg_value(i32 %inc, !1532, !DIExpression(), !1534)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1546
    #dbg_value(ptr %add.ptr, !1528, !DIExpression(), !1527)
  br label %for.cond, !dbg !1547, !llvm.loop !1548

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1527
  ret i8 %ret.0.lcssa, !dbg !1550
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1551 {
entry:
    #dbg_value(i8 %a, !1552, !DIExpression(), !1553)
    #dbg_value(i8 %b, !1554, !DIExpression(), !1553)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !1555
  %xor1 = xor i8 %a, %0, !dbg !1556
    #dbg_value(i8 %xor1, !1552, !DIExpression(), !1553)
  %1 = trunc i8 %xor1 to i1, !dbg !1557
    #dbg_value(i8 poison, !1558, !DIExpression(), !1553)
  %2 = and i8 %xor1, 2, !dbg !1559
  %mul9 = mul i8 %2, %b, !dbg !1560
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1557
  %xor11 = xor i8 %conv10, %mul9, !dbg !1561
    #dbg_value(i8 %xor11, !1558, !DIExpression(), !1553)
  %3 = and i8 %xor1, 4, !dbg !1562
  %mul16 = mul i8 %3, %b, !dbg !1563
  %xor18 = xor i8 %mul16, %xor11, !dbg !1564
    #dbg_value(i8 %xor18, !1558, !DIExpression(), !1553)
  %4 = and i8 %xor1, 8, !dbg !1565
  %mul23 = mul i8 %4, %b, !dbg !1566
  %xor25 = xor i8 %mul23, %xor18, !dbg !1567
    #dbg_value(i8 %xor25, !1558, !DIExpression(), !1553)
    #dbg_value(i8 %xor25, !1568, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1553)
  %5 = lshr i8 %xor25, 4, !dbg !1569
  %6 = lshr i8 %xor25, 3, !dbg !1570
  %7 = and i8 %6, 14, !dbg !1570
  %8 = xor i8 %5, %7, !dbg !1571
  %xor25.masked = and i8 %xor25, 15, !dbg !1572
  %9 = xor i8 %8, %xor25.masked, !dbg !1572
    #dbg_value(i8 %9, !1573, !DIExpression(), !1553)
  ret i8 %9, !dbg !1574
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1575, !DIExpression(), !1576)
    #dbg_value(i32 0, !1577, !DIExpression(), !1579)
  br label %for.cond, !dbg !1580

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1581
    #dbg_value(i32 %i.0, !1577, !DIExpression(), !1579)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1582
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1584

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1585

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1587
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1587
  %shr = lshr i64 %0, 4, !dbg !1589
  %add = or disjoint i32 %i.0, 1, !dbg !1590
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1591
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1591
  %xor = xor i64 %shr, %1, !dbg !1592
  %and = and i64 %xor, 1085102592571150095, !dbg !1593
    #dbg_value(i64 %and, !1594, !DIExpression(), !1595)
  %shl = shl nuw i64 %and, 4, !dbg !1596
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1597
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1598
  %xor3 = xor i64 %2, %shl, !dbg !1598
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1598
  %add4 = or disjoint i32 %i.0, 1, !dbg !1599
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1600
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1601
  %xor6 = xor i64 %3, %and, !dbg !1601
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1601
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1602
    #dbg_value(i32 %add7, !1577, !DIExpression(), !1579)
  br label %for.cond, !dbg !1603, !llvm.loop !1604

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1606
    #dbg_value(i32 %i8.0, !1607, !DIExpression(), !1608)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1609
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1585

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1611

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1613
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1613
  %shr13 = lshr i64 %4, 8, !dbg !1615
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1616
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1617
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1617
  %xor16 = xor i64 %shr13, %5, !dbg !1618
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1619
    #dbg_value(i64 %and17, !1620, !DIExpression(), !1621)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1622
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1623
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1623
  %shr20 = lshr i64 %6, 8, !dbg !1624
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1625
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1626
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1626
  %xor23 = xor i64 %shr20, %7, !dbg !1627
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1628
    #dbg_value(i64 %and24, !1629, !DIExpression(), !1621)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1630
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1631
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1632
  %xor27 = xor i64 %8, %shl25, !dbg !1632
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1632
  %shl28 = shl nuw i64 %and24, 8, !dbg !1633
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1634
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1635
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1636
  %xor31 = xor i64 %9, %shl28, !dbg !1636
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1636
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1637
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1638
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1639
  %xor34 = xor i64 %10, %and17, !dbg !1639
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1639
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1640
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1641
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1642
  %xor37 = xor i64 %11, %and24, !dbg !1642
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1642
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1643
    #dbg_value(i32 %add39, !1607, !DIExpression(), !1608)
  br label %for.cond9, !dbg !1644, !llvm.loop !1645

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1647
    #dbg_value(i32 %i41.0, !1648, !DIExpression(), !1649)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1650
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1611

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1652

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1654
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1654
  %shr47 = lshr i64 %12, 16, !dbg !1656
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1657
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1658
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1658
  %xor50 = xor i64 %shr47, %13, !dbg !1659
  %and51 = and i64 %xor50, 281470681808895, !dbg !1660
    #dbg_value(i64 %and51, !1661, !DIExpression(), !1662)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1663
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1664
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1664
  %shr55 = lshr i64 %14, 16, !dbg !1665
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1666
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1667
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1667
  %xor58 = xor i64 %shr55, %15, !dbg !1668
  %and59 = and i64 %xor58, 281470681808895, !dbg !1669
    #dbg_value(i64 %and59, !1670, !DIExpression(), !1662)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1671
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1672
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1673
  %xor62 = xor i64 %16, %shl60, !dbg !1673
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1673
  %shl63 = shl nuw i64 %and59, 16, !dbg !1674
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1675
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1676
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1677
  %xor66 = xor i64 %17, %shl63, !dbg !1677
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1677
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1678
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1679
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1680
  %xor69 = xor i64 %18, %and51, !dbg !1680
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1680
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1681
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1682
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1683
  %xor72 = xor i64 %19, %and59, !dbg !1683
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1683
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1684
    #dbg_value(i32 %inc, !1648, !DIExpression(), !1649)
  br label %for.cond42, !dbg !1685, !llvm.loop !1686

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1688
    #dbg_value(i32 %i75.0, !1689, !DIExpression(), !1690)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1691
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1652

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1693
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1693
  %shr81 = lshr i64 %20, 32, !dbg !1695
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1696
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1697
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1697
  %.masked = and i64 %21, 4294967295, !dbg !1698
  %and85 = xor i64 %shr81, %.masked, !dbg !1698
    #dbg_value(i64 %and85, !1699, !DIExpression(), !1700)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1701
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1702
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1703
  %xor88 = xor i64 %22, %shl86, !dbg !1703
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1703
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1704
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1705
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1706
  %xor91 = xor i64 %23, %and85, !dbg !1706
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1706
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1707
    #dbg_value(i32 %inc93, !1689, !DIExpression(), !1690)
  br label %for.cond76, !dbg !1708, !llvm.loop !1709

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1711
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 4, 18) %bs_mat_cols) unnamed_addr #0 !dbg !1712 {
entry:
    #dbg_value(i32 4, !1713, !DIExpression(), !1714)
    #dbg_value(ptr %mat, !1715, !DIExpression(), !1714)
    #dbg_value(ptr %bs_mat, !1716, !DIExpression(), !1714)
    #dbg_value(ptr %acc, !1717, !DIExpression(), !1714)
    #dbg_value(i32 4, !1718, !DIExpression(), !1714)
    #dbg_value(i32 64, !1719, !DIExpression(), !1714)
    #dbg_value(i32 %bs_mat_cols, !1720, !DIExpression(), !1714)
    #dbg_value(i32 0, !1721, !DIExpression(), !1723)
  br label %for.cond, !dbg !1724

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1725
    #dbg_value(i32 %r.0, !1721, !DIExpression(), !1723)
  %exitcond2 = icmp ne i32 %r.0, 4, !dbg !1726
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1728

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1729

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1732
    #dbg_value(i32 %c.0, !1733, !DIExpression(), !1734)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !1735
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1729

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1737

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1740
    #dbg_value(i32 %k.0, !1741, !DIExpression(), !1742)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1743
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1737

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1745
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1747
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !1748
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1748
  %mul8 = shl nuw nsw i32 %r.0, 6, !dbg !1749
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1750
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1750
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1750
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1751
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1752
  %add.ptr13.idx = shl nsw i32 %add11, 5, !dbg !1753
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1753
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1754
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1755
    #dbg_value(i32 %add14, !1741, !DIExpression(), !1742)
  br label %for.cond4, !dbg !1756, !llvm.loop !1757

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1759
    #dbg_value(i32 %inc, !1733, !DIExpression(), !1734)
  br label %for.cond1, !dbg !1760, !llvm.loop !1761

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1763
    #dbg_value(i32 %inc18, !1721, !DIExpression(), !1723)
  br label %for.cond, !dbg !1764, !llvm.loop !1765

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1767
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1768 {
entry:
    #dbg_value(ptr %p, !1769, !DIExpression(), !1770)
    #dbg_value(ptr %P1, !1771, !DIExpression(), !1770)
    #dbg_value(ptr %V, !1772, !DIExpression(), !1770)
    #dbg_value(ptr %acc, !1773, !DIExpression(), !1770)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 4, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 4, i32 noundef 1) #6, !dbg !1774
  ret void, !dbg !1775
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1776 {
entry:
    #dbg_value(i32 4, !1777, !DIExpression(), !1778)
    #dbg_value(ptr %bs_mat, !1779, !DIExpression(), !1778)
    #dbg_value(ptr %mat, !1780, !DIExpression(), !1778)
    #dbg_value(ptr %acc, !1781, !DIExpression(), !1778)
    #dbg_value(i32 64, !1782, !DIExpression(), !1778)
    #dbg_value(i32 64, !1783, !DIExpression(), !1778)
    #dbg_value(i32 4, !1784, !DIExpression(), !1778)
    #dbg_value(i32 1, !1785, !DIExpression(), !1778)
    #dbg_value(i32 0, !1786, !DIExpression(), !1778)
    #dbg_value(i32 0, !1787, !DIExpression(), !1789)
  br label %for.cond, !dbg !1790

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !1791
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1791
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1792
    #dbg_value(i32 %r.0, !1787, !DIExpression(), !1789)
    #dbg_value(i32 %bs_mat_entries_used.0, !1786, !DIExpression(), !1778)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !1793
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1795

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1796
  br label %for.cond1, !dbg !1796

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1778
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1799
    #dbg_value(i32 %c.0, !1800, !DIExpression(), !1801)
    #dbg_value(i32 %bs_mat_entries_used.1, !1786, !DIExpression(), !1778)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1802
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1796

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1804

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1807
    #dbg_value(i32 %k.0, !1808, !DIExpression(), !1809)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1810
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1804

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !1812
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1812
  %mul8 = shl nuw nsw i32 %k.0, 6, !dbg !1814
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1815
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1815
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1815
  %3 = shl nuw nsw i32 %r.0, 4, !dbg !1816
  %4 = shl nuw nsw i32 %k.0, 2, !dbg !1816
  %mul11 = or disjoint i32 %3, %4, !dbg !1816
  %add.ptr12 = getelementptr inbounds nuw i64, ptr %acc, i32 %mul11, !dbg !1817
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1818
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1819
    #dbg_value(i32 %add13, !1808, !DIExpression(), !1809)
  br label %for.cond4, !dbg !1820, !llvm.loop !1821

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1786, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1778)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1823
    #dbg_value(i32 %add14, !1786, !DIExpression(), !1778)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1824
    #dbg_value(i32 %inc, !1800, !DIExpression(), !1801)
  br label %for.cond1, !dbg !1825, !llvm.loop !1826

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1778
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1828
    #dbg_value(i32 %inc18, !1787, !DIExpression(), !1789)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1829
  br label %for.cond, !dbg !1829, !llvm.loop !1830

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1832
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1833 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1834, !DIExpression(), !1835)
    #dbg_value(ptr %sm, !1836, !DIExpression(), !1835)
    #dbg_value(ptr %smlen, !1837, !DIExpression(), !1835)
    #dbg_value(ptr %m, !1838, !DIExpression(), !1835)
    #dbg_value(i32 %mlen, !1839, !DIExpression(), !1835)
    #dbg_value(ptr %csk, !1840, !DIExpression(), !1835)
    #dbg_value(i32 0, !1841, !DIExpression(), !1835)
    #dbg_value(i32 186, !1842, !DIExpression(), !1835)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1843
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1844
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1845
    #dbg_value(ptr %siglen, !1846, !DIExpression(DW_OP_deref), !1835)
  %call2 = call i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1847
    #dbg_value(i32 %call2, !1841, !DIExpression(), !1835)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1848
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1846, !DIExpression(), !1835)
  %cmp3.not = icmp eq i32 %0, 186
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1850
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1850

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1851
    #dbg_value(i32 %1, !1846, !DIExpression(), !1835)
  %add = add i32 %1, %mlen, !dbg !1853
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1854
  br label %err, !dbg !1855

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1856
    #dbg_value(i32 %2, !1846, !DIExpression(), !1835)
  %add5 = add i32 %2, %mlen, !dbg !1857
  store i32 %add5, ptr %smlen, align 4, !dbg !1858
  br label %err, !dbg !1859

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1860, !1861)
  ret i32 %call2, !dbg !1862
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1863 {
entry:
    #dbg_value(ptr %p, !1864, !DIExpression(), !1865)
    #dbg_value(ptr %m, !1866, !DIExpression(), !1865)
    #dbg_value(ptr %mlen, !1867, !DIExpression(), !1865)
    #dbg_value(ptr %sm, !1868, !DIExpression(), !1865)
    #dbg_value(i32 %smlen, !1869, !DIExpression(), !1865)
    #dbg_value(ptr %pk, !1870, !DIExpression(), !1865)
    #dbg_value(i32 186, !1871, !DIExpression(), !1865)
  %cmp = icmp ult i32 %smlen, 186, !dbg !1872
  br i1 %cmp, label %return, label %if.end, !dbg !1872

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1874
  %sub = add i32 %smlen, -186, !dbg !1875
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1876
    #dbg_value(i32 %call, !1877, !DIExpression(), !1865)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1878
  br i1 %cmp1, label %if.then2, label %return, !dbg !1878

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -186, !dbg !1880
  store i32 %sub3, ptr %mlen, align 4, !dbg !1882
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1883
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1884
  br label %return, !dbg !1885

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1865
  ret i32 %retval.0, !dbg !1886
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1887 {
entry:
  %tEnc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [128 x i8], align 1
  %s = alloca [324 x i8], align 1
  %pk = alloca [13284 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1890, !DIExpression(), !1891)
    #dbg_value(ptr %m, !1892, !DIExpression(), !1891)
    #dbg_value(i32 %mlen, !1893, !DIExpression(), !1891)
    #dbg_value(ptr %sig, !1894, !DIExpression(), !1891)
    #dbg_value(ptr %cpk, !1895, !DIExpression(), !1891)
    #dbg_declare(ptr %tEnc, !1896, !DIExpression(), !1897)
    #dbg_declare(ptr %t, !1898, !DIExpression(), !1899)
    #dbg_declare(ptr %y, !1900, !DIExpression(), !1904)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %y, i8 0, i32 128, i1 false), !dbg !1904
    #dbg_declare(ptr %s, !1905, !DIExpression(), !1906)
    #dbg_declare(ptr %pk, !1907, !DIExpression(), !1908)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(106272) %pk, i8 0, i32 106272, i1 false), !dbg !1908
    #dbg_declare(ptr %tmp, !1909, !DIExpression(), !1913)
    #dbg_value(i32 64, !1914, !DIExpression(), !1891)
    #dbg_value(i32 81, !1915, !DIExpression(), !1891)
    #dbg_value(i32 4, !1916, !DIExpression(), !1891)
    #dbg_value(i32 32, !1917, !DIExpression(), !1891)
    #dbg_value(i32 186, !1918, !DIExpression(), !1891)
    #dbg_value(i32 32, !1919, !DIExpression(), !1891)
    #dbg_value(i32 24, !1920, !DIExpression(), !1891)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1921
    #dbg_value(i32 0, !1922, !DIExpression(), !1891)
    #dbg_value(ptr %pk, !1923, !DIExpression(), !1891)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 66560, !dbg !1924
    #dbg_value(ptr %add.ptr, !1925, !DIExpression(), !1891)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1926
    #dbg_value(ptr %add.ptr2, !1927, !DIExpression(), !1891)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1928
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1929
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !1930
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !1931
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !1932
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !1933
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 324) #6, !dbg !1934
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1935
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 64) #8, !dbg !1936
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1938
  %. = zext i1 %cmp21 to i32, !dbg !1891
  ret i32 %., !dbg !1939
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1940 {
entry:
    #dbg_value(ptr %p, !1941, !DIExpression(), !1942)
    #dbg_value(ptr %cpk, !1943, !DIExpression(), !1942)
    #dbg_value(ptr %pk, !1944, !DIExpression(), !1942)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1945
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1946
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1947
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 153, i32 noundef 64) #6, !dbg !1948
  ret i32 0, !dbg !1949
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1950 {
entry:
  %SPS = alloca [64 x i64], align 8
  %zero = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !1953, !DIExpression(), !1954)
    #dbg_value(ptr %s, !1955, !DIExpression(), !1954)
    #dbg_value(ptr %P1, !1956, !DIExpression(), !1954)
    #dbg_value(ptr %P2, !1957, !DIExpression(), !1954)
    #dbg_value(ptr %P3, !1958, !DIExpression(), !1954)
    #dbg_value(ptr %eval, !1959, !DIExpression(), !1954)
    #dbg_declare(ptr %SPS, !1960, !DIExpression(), !1962)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %SPS, i8 0, i32 512, i1 false), !dbg !1962
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1963
    #dbg_declare(ptr %zero, !1964, !DIExpression(), !1965)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %zero, i8 0, i32 64, i1 false), !dbg !1965
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1966
  ret void, !dbg !1967
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !1968 {
entry:
  %PS = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !1971, !DIExpression(), !1972)
    #dbg_value(ptr %P1, !1973, !DIExpression(), !1972)
    #dbg_value(ptr %P2, !1974, !DIExpression(), !1972)
    #dbg_value(ptr %P3, !1975, !DIExpression(), !1972)
    #dbg_value(ptr %s, !1976, !DIExpression(), !1972)
    #dbg_value(ptr %SPS, !1977, !DIExpression(), !1972)
    #dbg_declare(ptr %PS, !1978, !DIExpression(), !1982)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %PS, i8 0, i32 10368, i1 false), !dbg !1982
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %PS) #6, !dbg !1983
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 64, i32 noundef 4, i32 noundef 81, ptr noundef %SPS) #6, !dbg !1984
  ret void, !dbg !1985
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !1986 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %P1, !1989, !DIExpression(), !1990)
    #dbg_value(ptr %P2, !1991, !DIExpression(), !1990)
    #dbg_value(ptr %P3, !1992, !DIExpression(), !1990)
    #dbg_value(ptr %S, !1993, !DIExpression(), !1990)
    #dbg_value(i32 64, !1994, !DIExpression(), !1990)
    #dbg_value(i32 64, !1995, !DIExpression(), !1990)
    #dbg_value(i32 17, !1996, !DIExpression(), !1990)
    #dbg_value(i32 4, !1997, !DIExpression(), !1990)
    #dbg_value(ptr %PS, !1998, !DIExpression(), !1990)
    #dbg_value(i32 81, !1999, !DIExpression(), !1990)
    #dbg_value(i32 4, !2000, !DIExpression(), !1990)
    #dbg_declare(ptr %accumulator, !2001, !DIExpression(), !2005)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2005
    #dbg_value(i32 0, !2006, !DIExpression(), !1990)
    #dbg_value(i32 0, !2007, !DIExpression(), !2009)
  br label %for.cond, !dbg !2010

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 64, %entry ], !dbg !2011
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2011
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2012
    #dbg_value(i32 %row.0, !2007, !DIExpression(), !2009)
    #dbg_value(i32 %P1_used.0, !2006, !DIExpression(), !1990)
  %exitcond4 = icmp ne i32 %row.0, 64, !dbg !2013
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2015

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2016
  br label %for.cond2, !dbg !2016

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2019

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !1990
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2021
    #dbg_value(i32 %j.0, !2022, !DIExpression(), !2023)
    #dbg_value(i32 %P1_used.1, !2006, !DIExpression(), !1990)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2024
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2016

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !1990
  br label %for.cond21, !dbg !2026

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2028

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2031
    #dbg_value(i32 %col.0, !2032, !DIExpression(), !2033)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2034
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2028

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %P1_used.1, 5, !dbg !2036
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2036
  %1 = shl nuw nsw i32 %row.0, 6, !dbg !2038
  %2 = shl nuw nsw i32 %col.0, 4, !dbg !2038
  %mul10 = or disjoint i32 %1, %2, !dbg !2038
  %mul11 = mul nuw nsw i32 %col.0, 81, !dbg !2039
  %3 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2040
  %arrayidx = getelementptr i8, ptr %3, i32 %j.0, !dbg !2040
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2040
  %conv = zext i8 %4 to i32, !dbg !2040
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2041
  %add.ptr15.idx = shl nuw nsw i32 %add13, 5, !dbg !2042
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2042
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2043
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2044
    #dbg_value(i32 %inc, !2032, !DIExpression(), !2033)
  br label %for.cond5, !dbg !2045, !llvm.loop !2046

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2006, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1990)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2048
    #dbg_value(i32 %inc16, !2006, !DIExpression(), !1990)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2049
    #dbg_value(i32 %inc18, !2022, !DIExpression(), !2023)
  br label %for.cond2, !dbg !2050, !llvm.loop !2051

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2053
    #dbg_value(i32 %j20.0, !2054, !DIExpression(), !2055)
  %exitcond3 = icmp ne i32 %j20.0, 17, !dbg !2056
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2026

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2058

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2061
    #dbg_value(i32 %col25.0, !2062, !DIExpression(), !2063)
  %exitcond2 = icmp ne i32 %col25.0, 4, !dbg !2064
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2058

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 17, !dbg !2066
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2068
  %add.ptr33.idx = shl nuw nsw i32 %add31, 5, !dbg !2069
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2069
  %5 = shl nuw nsw i32 %row.0, 6, !dbg !2070
  %6 = shl nuw nsw i32 %col25.0, 4, !dbg !2070
  %mul37 = or disjoint i32 %5, %6, !dbg !2070
  %mul38 = mul nuw nsw i32 %col25.0, 81, !dbg !2071
  %7 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2072
  %8 = getelementptr i8, ptr %7, i32 %j20.0, !dbg !2072
  %arrayidx41 = getelementptr i8, ptr %8, i32 64, !dbg !2072
  %9 = load i8, ptr %arrayidx41, align 1, !dbg !2072
  %conv42 = zext i8 %9 to i32, !dbg !2072
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2073
  %add.ptr45.idx = shl nuw nsw i32 %add43, 5, !dbg !2074
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2074
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2075
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2076
    #dbg_value(i32 %inc47, !2062, !DIExpression(), !2063)
  br label %for.cond26, !dbg !2077, !llvm.loop !2078

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2080
    #dbg_value(i32 %inc50, !2054, !DIExpression(), !2055)
  br label %for.cond21, !dbg !2081, !llvm.loop !2082

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2084
    #dbg_value(i32 %inc53, !2007, !DIExpression(), !2009)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2085
  br label %for.cond, !dbg !2085, !llvm.loop !2086

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 17, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2088
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2088
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 64, %for.cond56.preheader ], !dbg !2089
    #dbg_value(i32 %row55.0, !2090, !DIExpression(), !2091)
    #dbg_value(i32 %P3_used.0, !2092, !DIExpression(), !1990)
  %exitcond9 = icmp ne i32 %row55.0, 81, !dbg !2093
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2019

for.cond61.preheader:                             ; preds = %for.cond56
  %10 = add i32 %P3_used.0, %indvars.iv6, !dbg !2095
  br label %for.cond61, !dbg !2095

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2098

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !1990
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2099
    #dbg_value(i32 %j60.0, !2100, !DIExpression(), !2101)
    #dbg_value(i32 %P3_used.1, !2092, !DIExpression(), !1990)
  %exitcond8 = icmp ne i32 %P3_used.1, %10, !dbg !2102
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2095

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2104

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2107
    #dbg_value(i32 %col65.0, !2108, !DIExpression(), !2109)
  %exitcond5 = icmp ne i32 %col65.0, 4, !dbg !2110
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2104

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = shl nsw i32 %P3_used.1, 5, !dbg !2112
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2112
  %11 = shl nuw nsw i32 %row55.0, 6, !dbg !2114
  %12 = shl nuw nsw i32 %col65.0, 4, !dbg !2114
  %mul75 = or disjoint i32 %11, %12, !dbg !2114
  %mul76 = mul nuw nsw i32 %col65.0, 81, !dbg !2115
  %13 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2116
  %arrayidx78 = getelementptr i8, ptr %13, i32 %j60.0, !dbg !2116
  %14 = load i8, ptr %arrayidx78, align 1, !dbg !2116
  %conv79 = zext i8 %14 to i32, !dbg !2116
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2117
  %add.ptr82.idx = shl nuw nsw i32 %add80, 5, !dbg !2118
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2118
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2119
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2120
    #dbg_value(i32 %inc84, !2108, !DIExpression(), !2109)
  br label %for.cond66, !dbg !2121, !llvm.loop !2122

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2092, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1990)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2124
    #dbg_value(i32 %inc86, !2092, !DIExpression(), !1990)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2125
    #dbg_value(i32 %inc88, !2100, !DIExpression(), !2101)
  br label %for.cond61, !dbg !2126, !llvm.loop !2127

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !1990
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2129
    #dbg_value(i32 %inc91, !2090, !DIExpression(), !2091)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2130
  br label %for.cond56, !dbg !2130, !llvm.loop !2131

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !1990
    #dbg_value(i32 %i.0, !2133, !DIExpression(), !1990)
  %exitcond10 = icmp ne i32 %i.0, 324, !dbg !2134
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2098

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = shl nuw nsw i32 %i.0, 9, !dbg !2135
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2135
  %add.ptr101.idx = shl nuw nsw i32 %i.0, 5, !dbg !2137
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2137
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2138
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2139
    #dbg_value(i32 %inc102, !2133, !DIExpression(), !1990)
  br label %while.cond, !dbg !2098, !llvm.loop !2140

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2142
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2143 {
entry:
  %accumulator = alloca [1024 x i64], align 8
    #dbg_value(ptr %PS, !2146, !DIExpression(), !2147)
    #dbg_value(ptr %S, !2148, !DIExpression(), !2147)
    #dbg_value(i32 64, !2149, !DIExpression(), !2147)
    #dbg_value(i32 4, !2150, !DIExpression(), !2147)
    #dbg_value(i32 81, !2151, !DIExpression(), !2147)
    #dbg_value(ptr %SPS, !2152, !DIExpression(), !2147)
    #dbg_declare(ptr %accumulator, !2153, !DIExpression(), !2154)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %accumulator, i8 0, i32 8192, i1 false), !dbg !2154
    #dbg_value(i32 4, !2155, !DIExpression(), !2147)
    #dbg_value(i32 0, !2156, !DIExpression(), !2158)
  br label %for.cond, !dbg !2159

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2160
    #dbg_value(i32 %row.0, !2156, !DIExpression(), !2158)
  %exitcond2 = icmp ne i32 %row.0, 4, !dbg !2161
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2163

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2164

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2167

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2168
    #dbg_value(i32 %j.0, !2169, !DIExpression(), !2170)
  %exitcond1 = icmp ne i32 %j.0, 81, !dbg !2171
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2164

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2173

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2176
    #dbg_value(i32 %col.0, !2177, !DIExpression(), !2178)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2179
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2173

for.body6:                                        ; preds = %for.cond4
  %0 = shl nuw nsw i32 %j.0, 4, !dbg !2181
  %1 = shl nuw nsw i32 %col.0, 2, !dbg !2181
  %mul8 = or disjoint i32 %0, %1, !dbg !2181
  %add.ptr = getelementptr inbounds nuw i64, ptr %PS, i32 %mul8, !dbg !2183
  %2 = shl nuw nsw i32 %row.0, 6, !dbg !2184
  %3 = shl nuw nsw i32 %col.0, 4, !dbg !2184
  %mul11 = or disjoint i32 %2, %3, !dbg !2184
  %mul12 = mul nuw nsw i32 %row.0, 81, !dbg !2185
  %4 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2186
  %arrayidx = getelementptr i8, ptr %4, i32 %j.0, !dbg !2186
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2186
  %conv = zext i8 %5 to i32, !dbg !2186
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2187
  %add.ptr16.idx = shl nuw nsw i32 %add14, 5, !dbg !2188
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2188
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2189
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2190
    #dbg_value(i32 %add17, !2177, !DIExpression(), !2178)
  br label %for.cond4, !dbg !2191, !llvm.loop !2192

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2194
    #dbg_value(i32 %inc, !2169, !DIExpression(), !2170)
  br label %for.cond1, !dbg !2195, !llvm.loop !2196

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2198
    #dbg_value(i32 %inc21, !2156, !DIExpression(), !2158)
  br label %for.cond, !dbg !2199, !llvm.loop !2200

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2147
    #dbg_value(i32 %i.0, !2202, !DIExpression(), !2147)
  %exitcond3 = icmp ne i32 %i.0, 16, !dbg !2203
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2167

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = shl nuw nsw i32 %i.0, 9, !dbg !2204
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2204
  %add.ptr31.idx = shl nuw nsw i32 %i.0, 5, !dbg !2206
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2206
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2207
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2208
    #dbg_value(i32 %inc32, !2202, !DIExpression(), !2147)
  br label %while.cond, !dbg !2167, !llvm.loop !2209

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2211
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2212 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2215, !DIExpression(), !2216)
    #dbg_value(ptr %in, !2217, !DIExpression(), !2216)
    #dbg_value(ptr %acc, !2218, !DIExpression(), !2216)
    #dbg_value(i32 0, !2219, !DIExpression(), !2221)
  br label %for.cond, !dbg !2222

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2223
    #dbg_value(i32 %i.0, !2219, !DIExpression(), !2221)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2224
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2226

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2227
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2227
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2229
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2230
  %xor = xor i64 %1, %0, !dbg !2230
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2230
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2231
    #dbg_value(i32 %inc, !2219, !DIExpression(), !2221)
  br label %for.cond, !dbg !2232, !llvm.loop !2233

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2235
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2236 {
entry:
    #dbg_value(i32 4, !2239, !DIExpression(), !2240)
    #dbg_value(ptr %bins, !2241, !DIExpression(), !2240)
    #dbg_value(ptr %out, !2242, !DIExpression(), !2240)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2243
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2244
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2245
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 352, !dbg !2246
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2247
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2248
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2249
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2250
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2251
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2252
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2253
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2254
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2255
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2256
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2257
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2258
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2259
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2260
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2261
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2262
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2263
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2264
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2265
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2266
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2267
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2268
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2269
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2270
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2271
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2272
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2273
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2274
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2275
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2276
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2277
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2278
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2279
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2280
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2281
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2282
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2283
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2284
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2285
  call fastcc void @m_vec_copy(i32 noundef 4, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2286
  ret void, !dbg !2287
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2288 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2289, !DIExpression(), !2290)
    #dbg_value(ptr %in, !2291, !DIExpression(), !2290)
    #dbg_value(ptr %acc, !2292, !DIExpression(), !2290)
    #dbg_value(i64 1229782938247303441, !2293, !DIExpression(), !2290)
    #dbg_value(i32 0, !2294, !DIExpression(), !2296)
  br label %for.cond, !dbg !2297

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2298
    #dbg_value(i32 %i.0, !2294, !DIExpression(), !2296)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2299
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2301

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2302
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2302
  %and = and i64 %0, 1229782938247303441, !dbg !2304
    #dbg_value(i64 %and, !2305, !DIExpression(), !2306)
  %xor = lshr i64 %0, 1, !dbg !2307
  %shr = and i64 %xor, 8608480567731124087, !dbg !2307
  %mul = mul nuw i64 %and, 9, !dbg !2308
  %xor2 = xor i64 %shr, %mul, !dbg !2309
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2310
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2311
  %xor4 = xor i64 %1, %xor2, !dbg !2311
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2311
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2312
    #dbg_value(i32 %inc, !2294, !DIExpression(), !2296)
  br label %for.cond, !dbg !2313, !llvm.loop !2314

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2316
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2317 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2318, !DIExpression(), !2319)
    #dbg_value(ptr %in, !2320, !DIExpression(), !2319)
    #dbg_value(ptr %acc, !2321, !DIExpression(), !2319)
    #dbg_value(i64 -8608480567731124088, !2322, !DIExpression(), !2319)
    #dbg_value(i32 0, !2323, !DIExpression(), !2325)
  br label %for.cond, !dbg !2326

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2327
    #dbg_value(i32 %i.0, !2323, !DIExpression(), !2325)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2328
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2330

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2331
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2331
    #dbg_value(i64 %0, !2333, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2334)
  %xor = shl i64 %0, 1, !dbg !2335
  %shl = and i64 %xor, -1229782938247303442, !dbg !2335
  %and = lshr i64 %0, 3, !dbg !2336
  %shr = and i64 %and, 1229782938247303441, !dbg !2336
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2337
  %xor2 = xor i64 %shl, %mul, !dbg !2338
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2339
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2340
  %xor4 = xor i64 %1, %xor2, !dbg !2340
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2340
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2341
    #dbg_value(i32 %inc, !2323, !DIExpression(), !2325)
  br label %for.cond, !dbg !2342, !llvm.loop !2343

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2345
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2346 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2347, !DIExpression(), !2348)
    #dbg_value(ptr %in, !2349, !DIExpression(), !2348)
    #dbg_value(ptr %out, !2350, !DIExpression(), !2348)
    #dbg_value(i32 0, !2351, !DIExpression(), !2353)
  br label %for.cond, !dbg !2354

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2355
    #dbg_value(i32 %i.0, !2351, !DIExpression(), !2353)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2356
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2358

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2359
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2359
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2361
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2362
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2363
    #dbg_value(i32 %inc, !2351, !DIExpression(), !2353)
  br label %for.cond, !dbg !2364, !llvm.loop !2365

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2367
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2368 {
entry:
    #dbg_value(ptr %p, !2399, !DIExpression(), !2400)
    #dbg_value(ptr %in, !2401, !DIExpression(), !2400)
    #dbg_value(ptr %out, !2402, !DIExpression(), !2400)
    #dbg_value(i32 %size, !2403, !DIExpression(), !2400)
    #dbg_value(i32 4, !2404, !DIExpression(), !2400)
    #dbg_value(i32 0, !2405, !DIExpression(), !2400)
    #dbg_value(i32 0, !2406, !DIExpression(), !2408)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2409
  br label %for.cond, !dbg !2409

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2410
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2410
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2411
    #dbg_value(i32 %r.0, !2406, !DIExpression(), !2408)
    #dbg_value(i32 %m_vecs_stored.0, !2405, !DIExpression(), !2400)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2412
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2414

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2415
  br label %for.cond1, !dbg !2415

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2400
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2418
    #dbg_value(i32 %c.0, !2419, !DIExpression(), !2420)
    #dbg_value(i32 %m_vecs_stored.1, !2405, !DIExpression(), !2400)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2421
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2415

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2423
  %add = add nsw i32 %mul, %c.0, !dbg !2425
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !2426
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2426
  %add.ptr6.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2427
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2427
  call fastcc void @m_vec_copy.17(i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2428
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2429
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2429

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2431
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2433
  %add.ptr11.idx = shl nsw i32 %add9, 5, !dbg !2434
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2434
  %add.ptr13.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2435
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2435
  call fastcc void @m_vec_add.18(i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2436
  br label %for.inc, !dbg !2437

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2405, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2400)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2438
    #dbg_value(i32 %inc, !2405, !DIExpression(), !2400)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2439
    #dbg_value(i32 %inc14, !2419, !DIExpression(), !2420)
  br label %for.cond1, !dbg !2440, !llvm.loop !2441

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2400
  %inc16 = add nuw i32 %r.0, 1, !dbg !2443
    #dbg_value(i32 %inc16, !2406, !DIExpression(), !2408)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2444
  br label %for.cond, !dbg !2444, !llvm.loop !2445

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2447
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2448 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2449, !DIExpression(), !2450)
    #dbg_value(ptr %in, !2451, !DIExpression(), !2450)
    #dbg_value(ptr %out, !2452, !DIExpression(), !2450)
    #dbg_value(i32 0, !2453, !DIExpression(), !2455)
  br label %for.cond, !dbg !2456

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2457
    #dbg_value(i32 %i.0, !2453, !DIExpression(), !2455)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2458
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2460

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2461
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2461
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2463
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2464
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2465
    #dbg_value(i32 %inc, !2453, !DIExpression(), !2455)
  br label %for.cond, !dbg !2466, !llvm.loop !2467

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2469
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2470 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2471, !DIExpression(), !2472)
    #dbg_value(ptr %in, !2473, !DIExpression(), !2472)
    #dbg_value(ptr %acc, !2474, !DIExpression(), !2472)
    #dbg_value(i32 0, !2475, !DIExpression(), !2477)
  br label %for.cond, !dbg !2478

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2479
    #dbg_value(i32 %i.0, !2475, !DIExpression(), !2477)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2480
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2482

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2483
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2483
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2485
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2486
  %xor = xor i64 %1, %0, !dbg !2486
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2486
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2487
    #dbg_value(i32 %inc, !2475, !DIExpression(), !2477)
  br label %for.cond, !dbg !2488, !llvm.loop !2489

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2491
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2492 {
entry:
  %Ar = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2495, !DIExpression(), !2496)
    #dbg_value(ptr %A, !2497, !DIExpression(), !2496)
    #dbg_value(ptr %y, !2498, !DIExpression(), !2496)
    #dbg_value(ptr %r, !2499, !DIExpression(), !2496)
    #dbg_value(ptr %x, !2500, !DIExpression(), !2496)
    #dbg_value(i32 %k, !2501, !DIExpression(), !2496)
    #dbg_value(i32 %o, !2502, !DIExpression(), !2496)
    #dbg_value(i32 %m, !2503, !DIExpression(), !2496)
    #dbg_value(i32 %A_cols, !2504, !DIExpression(), !2496)
    #dbg_value(i32 0, !2505, !DIExpression(), !2507)
  %0 = mul nsw i32 %o, %k, !dbg !2508
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2508
  br label %for.cond, !dbg !2508

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2509
    #dbg_value(i32 %i.0, !2505, !DIExpression(), !2507)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2510
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2512

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2513
  br label %for.cond3, !dbg !2513

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2515
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2515
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2517
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2518
  %inc = add nuw i32 %i.0, 1, !dbg !2519
    #dbg_value(i32 %inc, !2505, !DIExpression(), !2507)
  br label %for.cond, !dbg !2520, !llvm.loop !2521

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2523
    #dbg_value(i32 %i2.0, !2524, !DIExpression(), !2525)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2526
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2513

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2528
  %mul7 = mul nsw i32 %k, %o, !dbg !2530
  %add = add nsw i32 %mul7, 1, !dbg !2531
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2532
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2533
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2533
  store i8 0, ptr %arrayidx10, align 1, !dbg !2534
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2535
    #dbg_value(i32 %inc12, !2524, !DIExpression(), !2525)
  br label %for.cond3, !dbg !2536, !llvm.loop !2537

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2539
  %add15 = add nsw i32 %mul14, 1, !dbg !2540
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2541
    #dbg_value(i32 0, !2542, !DIExpression(), !2544)
  br label %for.cond17, !dbg !2545

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2546
    #dbg_value(i32 %i16.0, !2542, !DIExpression(), !2544)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2547
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2549

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2550
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2550
  %arrayidx21 = getelementptr inbounds nuw [64 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2552
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2552
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2553
  %mul22 = mul nsw i32 %k, %o, !dbg !2554
  %mul23 = mul nsw i32 %k, %o, !dbg !2555
  %add24 = add nsw i32 %mul23, 1, !dbg !2556
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2557
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2558
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2558
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2559
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2560
    #dbg_value(i32 %inc29, !2542, !DIExpression(), !2544)
  br label %for.cond17, !dbg !2561, !llvm.loop !2562

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2564
  %add32 = add nsw i32 %mul31, 1, !dbg !2565
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2566
    #dbg_value(i8 0, !2567, !DIExpression(), !2496)
    #dbg_value(i32 0, !2568, !DIExpression(), !2570)
  %6 = add i32 %A_cols, -1, !dbg !2571
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2571
  br label %for.cond34, !dbg !2571

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2496
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2572
    #dbg_value(i32 %i33.0, !2568, !DIExpression(), !2570)
    #dbg_value(i8 %full_rank.0, !2567, !DIExpression(), !2496)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2573
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2575

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2496)
  %sub37 = add nsw i32 %m, -1, !dbg !2576
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2578
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2579
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2579
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2579
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2496)
  %or12 = or i8 %full_rank.0, %8, !dbg !2580
    #dbg_value(i8 %or12, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2496)
    #dbg_value(i8 %or12, !2567, !DIExpression(), !2496)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2581
    #dbg_value(i32 %inc44, !2568, !DIExpression(), !2570)
  br label %for.cond34, !dbg !2582, !llvm.loop !2583

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2496
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2585
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2585

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2587

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2587, !llvm.loop !2589

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2591
    #dbg_value(i32 %row.0, !2592, !DIExpression(), !2593)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2594
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2587

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2596, !DIExpression(), !2496)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2597
  %div = sdiv i32 32, %sub54, !dbg !2597
  %add55 = add nsw i32 %row.0, %div, !dbg !2597
  %mul56 = mul nsw i32 %k, %o, !dbg !2597
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2597
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2597

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2597
  %div60 = sdiv i32 32, %sub59, !dbg !2597
  %add61 = add nsw i32 %row.0, %div60, !dbg !2597
  br label %cond.end, !dbg !2597

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2597
  br label %cond.end, !dbg !2597

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2597
    #dbg_value(i32 %cond, !2599, !DIExpression(), !2496)
    #dbg_value(i32 %row.0, !2600, !DIExpression(), !2602)
  br label %for.cond63, !dbg !2603

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2604
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2605
    #dbg_value(i32 %col.0, !2600, !DIExpression(), !2602)
    #dbg_value(i8 %finished.0, !2596, !DIExpression(), !2496)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2606
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2608

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2609
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2611
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2611
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2611
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2612
  %not = xor i8 %finished.0, -1, !dbg !2613
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2496)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2615
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2616
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2616
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2616
  %13 = and i8 %12, %not, !dbg !2617
  %and801 = and i8 %13, %call70, !dbg !2617
    #dbg_value(i8 %and801, !2618, !DIExpression(), !2619)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2620
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2621
  %xor2 = xor i8 %14, %and801, !dbg !2621
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2621
    #dbg_value(i32 0, !2622, !DIExpression(), !2624)
  br label %for.cond87, !dbg !2625

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2626
    #dbg_value(i32 %i86.0, !2622, !DIExpression(), !2624)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2627
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2629

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2630
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2632
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2632
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2632
  %conv94 = zext i8 %16 to i64, !dbg !2633
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2634
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2635
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2636
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2636
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2636
  %conv99 = zext i8 %18 to i64, !dbg !2637
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2638
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2639
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2640
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2641
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2642
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2642
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2642
  %conv106 = zext i8 %20 to i64, !dbg !2643
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2644
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2645
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2646
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2647
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2648
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2648
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2648
  %conv113 = zext i8 %22 to i64, !dbg !2649
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2650
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2651
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2652
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2653
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2654
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2654
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2654
  %conv120 = zext i8 %24 to i64, !dbg !2655
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2656
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2657
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2658
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2659
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2660
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2660
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2660
  %conv127 = zext i8 %26 to i64, !dbg !2661
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2662
  %xor129 = xor i64 %xor122, %shl128, !dbg !2663
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2664
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2665
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2666
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2666
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2666
  %conv134 = zext i8 %28 to i64, !dbg !2667
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2668
  %xor136 = xor i64 %xor129, %shl135, !dbg !2669
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2670
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2671
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2672
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2672
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2672
  %conv141 = zext i8 %30 to i64, !dbg !2673
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2674
  %xor143 = xor i64 %xor136, %shl142, !dbg !2675
    #dbg_value(i64 %xor143, !2676, !DIExpression(), !2677)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2678
    #dbg_value(i64 %call144, !2676, !DIExpression(), !2677)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2679
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2679
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2680
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2680
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2681
  %33 = trunc i64 %call144 to i8, !dbg !2681
  %34 = and i8 %33, 15, !dbg !2681
  %conv152 = xor i8 %34, %32, !dbg !2681
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2681
  %shr = lshr i64 %call144, 8, !dbg !2682
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2683
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2683
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2684
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2684
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2685
  %37 = trunc i64 %shr to i8, !dbg !2685
  %38 = and i8 %37, 15, !dbg !2685
  %conv161 = xor i8 %38, %36, !dbg !2685
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2685
  %shr162 = lshr i64 %call144, 16, !dbg !2686
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2687
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2687
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2688
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2688
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2689
  %41 = trunc i64 %shr162 to i8, !dbg !2689
  %42 = and i8 %41, 15, !dbg !2689
  %conv171 = xor i8 %42, %40, !dbg !2689
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2689
  %shr172 = lshr i64 %call144, 24, !dbg !2690
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2691
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2691
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2692
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2692
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2693
  %45 = trunc i64 %shr172 to i8, !dbg !2693
  %46 = and i8 %45, 15, !dbg !2693
  %conv181 = xor i8 %46, %44, !dbg !2693
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2693
  %shr182 = lshr i64 %call144, 32, !dbg !2694
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2695
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2695
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2696
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2696
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2697
  %49 = trunc i64 %shr182 to i8, !dbg !2697
  %50 = and i8 %49, 15, !dbg !2697
  %conv191 = xor i8 %50, %48, !dbg !2697
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2697
  %shr192 = lshr i64 %call144, 40, !dbg !2698
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2699
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2699
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2700
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2700
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2701
  %53 = trunc i64 %shr192 to i8, !dbg !2701
  %54 = and i8 %53, 15, !dbg !2701
  %conv201 = xor i8 %54, %52, !dbg !2701
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2701
  %shr202 = lshr i64 %call144, 48, !dbg !2702
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2703
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2703
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2704
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2704
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2705
  %57 = trunc i64 %shr202 to i8, !dbg !2705
  %58 = and i8 %57, 15, !dbg !2705
  %conv211 = xor i8 %58, %56, !dbg !2705
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2705
  %shr212 = lshr i64 %call144, 56, !dbg !2706
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2707
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2707
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2708
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2708
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2709
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2709
  %conv221 = xor i8 %60, %61, !dbg !2709
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2709
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2710
    #dbg_value(i32 %add223, !2622, !DIExpression(), !2624)
  br label %for.cond87, !dbg !2711, !llvm.loop !2712

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2496)
  %or2273 = or i8 %finished.0, %call70, !dbg !2714
    #dbg_value(i8 %or2273, !2596, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2496)
    #dbg_value(i8 %or2273, !2596, !DIExpression(), !2496)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2715
    #dbg_value(i32 %inc230, !2600, !DIExpression(), !2602)
  br label %for.cond63, !dbg !2716, !llvm.loop !2717

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2719

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2496
  ret i32 %retval.0, !dbg !2719
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2720 {
entry:
    #dbg_value(ptr %a, !2721, !DIExpression(), !2722)
    #dbg_value(ptr %b, !2723, !DIExpression(), !2722)
    #dbg_value(ptr %c, !2724, !DIExpression(), !2722)
    #dbg_value(i32 %colrow_ab, !2725, !DIExpression(), !2722)
    #dbg_value(i32 %row_a, !2726, !DIExpression(), !2722)
    #dbg_value(i32 1, !2727, !DIExpression(), !2722)
    #dbg_value(i32 0, !2728, !DIExpression(), !2730)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2731
  br label %for.cond, !dbg !2731

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2732
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2721, !DIExpression(), !2722)
    #dbg_value(ptr %c.addr.0, !2724, !DIExpression(), !2722)
    #dbg_value(i32 %i.0, !2728, !DIExpression(), !2730)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2733
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2735

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2736

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2739
    #dbg_value(i32 poison, !2740, !DIExpression(), !2741)
    #dbg_value(ptr %c.addr.1, !2724, !DIExpression(), !2722)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2736

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2742
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2745
    #dbg_value(i32 1, !2740, !DIExpression(), !2741)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2746
    #dbg_value(ptr %incdec.ptr, !2724, !DIExpression(), !2722)
  br label %for.cond1, !dbg !2747, !llvm.loop !2748

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2750
    #dbg_value(i32 %inc5, !2728, !DIExpression(), !2730)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2751
    #dbg_value(ptr %add.ptr6, !2721, !DIExpression(), !2722)
  br label %for.cond, !dbg !2752, !llvm.loop !2753

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2755
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2756 {
entry:
    #dbg_value(i8 %a, !2757, !DIExpression(), !2758)
    #dbg_value(i8 %b, !2759, !DIExpression(), !2758)
  %xor1 = xor i8 %a, %b, !dbg !2760
  ret i8 %xor1, !dbg !2761
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2762 {
entry:
  %_pivot_row = alloca [5 x i64], align 32
  %_pivot_row2 = alloca [5 x i64], align 32
  %packed_A = alloca [320 x i64], align 32
  %temp = alloca [84 x i8], align 1
    #dbg_value(ptr %A, !2766, !DIExpression(), !2767)
    #dbg_value(i32 %nrows, !2768, !DIExpression(), !2767)
    #dbg_value(i32 %ncols, !2769, !DIExpression(), !2767)
    #dbg_declare(ptr %_pivot_row, !2770, !DIExpression(), !2774)
    #dbg_declare(ptr %_pivot_row2, !2775, !DIExpression(), !2776)
    #dbg_declare(ptr %packed_A, !2777, !DIExpression(), !2781)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(2560) %packed_A, i8 0, i32 2560, i1 false), !dbg !2781
  %add = add nsw i32 %ncols, 15, !dbg !2782
  %div = sdiv i32 %add, 16, !dbg !2783
    #dbg_value(i32 %div, !2784, !DIExpression(), !2767)
    #dbg_value(i32 0, !2785, !DIExpression(), !2787)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2788
  br label %for.cond, !dbg !2788

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2789
    #dbg_value(i32 %i.0, !2785, !DIExpression(), !2787)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2790
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2792

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2793
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2793
  br label %for.cond3, !dbg !2793

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2795
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2797
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2798
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2799
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2800
  %inc = add nuw i32 %i.0, 1, !dbg !2801
    #dbg_value(i32 %inc, !2785, !DIExpression(), !2787)
  br label %for.cond, !dbg !2802, !llvm.loop !2803

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2805
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2767
    #dbg_value(i32 %pivot_row.0, !2806, !DIExpression(), !2767)
    #dbg_value(i32 %pivot_col.0, !2807, !DIExpression(), !2808)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2809
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2793

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2811

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2813
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2813
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2813
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2813
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2813
    #dbg_value(i32 %cond, !2815, !DIExpression(), !2816)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2817
    #dbg_value(i32 %cond16, !2818, !DIExpression(), !2816)
    #dbg_value(i32 0, !2819, !DIExpression(), !2821)
  br label %for.cond18, !dbg !2822

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2823
    #dbg_value(i32 %i17.0, !2819, !DIExpression(), !2821)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2824
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2826

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2817
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2817
  br label %for.cond25, !dbg !2827

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2829
  store i64 0, ptr %arrayidx, align 8, !dbg !2831
  %arrayidx21 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2832
  store i64 0, ptr %arrayidx21, align 8, !dbg !2833
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2834
    #dbg_value(i32 %inc23, !2819, !DIExpression(), !2821)
  br label %for.cond18, !dbg !2835, !llvm.loop !2836

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2816
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2816
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2838
    #dbg_value(i32 %row.0, !2839, !DIExpression(), !2838)
    #dbg_value(i8 %pivot.0, !2840, !DIExpression(), !2816)
    #dbg_value(i64 %pivot_is_zero.0, !2841, !DIExpression(), !2816)
  %add27 = add nsw i32 %cond16, 32, !dbg !2842
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2842
  %sub30 = add nsw i32 %nrows, -1, !dbg !2842
  %add32 = add nsw i32 %cond16, 32, !dbg !2842
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2842
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2844
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2827

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2845
  %not = xor i64 %call, -1, !dbg !2847
    #dbg_value(i64 %not, !2848, !DIExpression(), !2849)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2850
    #dbg_value(i64 %call37, !2851, !DIExpression(), !2849)
    #dbg_value(i32 0, !2852, !DIExpression(), !2854)
  br label %for.cond38, !dbg !2855

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2856
    #dbg_value(i32 %j.0, !2852, !DIExpression(), !2854)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2857
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2859

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2860
  %or = or i64 %and, %not, !dbg !2862
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2863
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2864
  %arrayidx43 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2865
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2865
  %and44 = and i64 %or, %0, !dbg !2866
  %arrayidx45 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2867
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2868
  %xor = xor i64 %1, %and44, !dbg !2868
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2868
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2869
    #dbg_value(i32 %inc47, !2852, !DIExpression(), !2854)
  br label %for.cond38, !dbg !2870, !llvm.loop !2871

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2873
    #dbg_value(i8 %call50, !2840, !DIExpression(), !2816)
  %conv = zext nneg i8 %call50 to i32, !dbg !2874
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2875
    #dbg_value(i64 %call51, !2841, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2816)
  %not52 = xor i64 %call51, -1, !dbg !2876
    #dbg_value(i64 %not52, !2841, !DIExpression(), !2816)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2877
    #dbg_value(i32 %inc54, !2839, !DIExpression(), !2838)
  br label %for.cond25, !dbg !2878, !llvm.loop !2879

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2816
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2816
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2881
    #dbg_value(i8 %call56, !2882, !DIExpression(), !2767)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2883
    #dbg_value(i32 %cond, !2884, !DIExpression(), !2886)
  br label %for.cond60, !dbg !2887

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2888
    #dbg_value(i32 %row59.0, !2884, !DIExpression(), !2886)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2889
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2891

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2892

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2894
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2896
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2896
    #dbg_value(i64 %and67, !2897, !DIExpression(), !2898)
    #dbg_value(i64 %and67.demorgan, !2899, !DIExpression(), !2898)
    #dbg_value(i32 0, !2900, !DIExpression(), !2902)
  br label %for.cond69, !dbg !2903

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2904
    #dbg_value(i32 %col.0, !2900, !DIExpression(), !2902)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2905
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2907

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2908
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2910
  %arrayidx75 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2911
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2911
  %and76 = and i64 %and67.demorgan, %2, !dbg !2912
  %arrayidx77 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2913
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2913
  %and78 = and i64 %3, %and67, !dbg !2914
  %add79 = add i64 %and76, %and78, !dbg !2915
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2916
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2917
  %arrayidx82 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2918
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2919
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2920
    #dbg_value(i32 %inc84, !2900, !DIExpression(), !2902)
  br label %for.cond69, !dbg !2921, !llvm.loop !2922

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2924
    #dbg_value(i32 %inc87, !2884, !DIExpression(), !2886)
  br label %for.cond60, !dbg !2925, !llvm.loop !2926

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2928
    #dbg_value(i32 %row89.0, !2929, !DIExpression(), !2930)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2931
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2892

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2933
    #dbg_value(i1 %cmp94, !2935, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2936)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2937
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2938
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2939
    #dbg_value(i8 %call100, !2940, !DIExpression(), !2936)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2941
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2942
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2943
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2944
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2945
    #dbg_value(i32 %inc110, !2929, !DIExpression(), !2930)
  br label %for.cond90, !dbg !2946, !llvm.loop !2947

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2806, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2767)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2949
  %5 = add i32 %4, 1, !dbg !2949
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2949
    #dbg_value(i32 %conv116, !2806, !DIExpression(), !2767)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2950
    #dbg_value(i32 %inc118, !2807, !DIExpression(), !2808)
  br label %for.cond3, !dbg !2951, !llvm.loop !2952

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2954
    #dbg_value(i32 %i120.0, !2955, !DIExpression(), !2956)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2957
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2811

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2959
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2961
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2962
    #dbg_value(i32 0, !2963, !DIExpression(), !2965)
  br label %for.cond130, !dbg !2966

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2967
    #dbg_value(i32 %j129.0, !2963, !DIExpression(), !2965)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !2968
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !2970

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [84 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2971
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2971
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2973
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2974
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2974
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2975
  %inc139 = add nuw i32 %j129.0, 1, !dbg !2976
    #dbg_value(i32 %inc139, !2963, !DIExpression(), !2965)
  br label %for.cond130, !dbg !2977, !llvm.loop !2978

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !2980
    #dbg_value(i32 %inc142, !2955, !DIExpression(), !2956)
  br label %for.cond121, !dbg !2981, !llvm.loop !2982

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 84) #8, !dbg !2984
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 40) #8, !dbg !2985
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 40) #8, !dbg !2986
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 2560) #8, !dbg !2987
  ret void, !dbg !2988
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2989 {
entry:
    #dbg_value(i8 %a, !2991, !DIExpression(), !2992)
    #dbg_value(i8 0, !2993, !DIExpression(), !2992)
  %0 = icmp ne i8 %a, 0, !dbg !2994
  %conv3 = sext i1 %0 to i8, !dbg !2995
  %1 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !2996
  %xor5 = xor i8 %1, %conv3, !dbg !2997
  ret i8 %xor5, !dbg !2998
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !2999 {
entry:
    #dbg_value(i8 %a, !3002, !DIExpression(), !3003)
    #dbg_value(i64 %b, !3004, !DIExpression(), !3003)
  %0 = and i8 %a, 1, !dbg !3005
  %conv1 = zext nneg i8 %0 to i64, !dbg !3006
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3007
    #dbg_value(i64 %mul, !3008, !DIExpression(), !3003)
  %1 = and i8 %a, 2, !dbg !3009
  %conv4 = zext nneg i8 %1 to i64, !dbg !3010
  %mul5 = mul i64 %b, %conv4, !dbg !3011
  %xor = xor i64 %mul, %mul5, !dbg !3012
    #dbg_value(i64 %xor, !3008, !DIExpression(), !3003)
  %2 = and i8 %a, 4, !dbg !3013
  %conv8 = zext nneg i8 %2 to i64, !dbg !3014
  %mul9 = mul i64 %b, %conv8, !dbg !3015
  %xor10 = xor i64 %xor, %mul9, !dbg !3016
    #dbg_value(i64 %xor10, !3008, !DIExpression(), !3003)
  %3 = and i8 %a, 8, !dbg !3017
  %conv13 = zext nneg i8 %3 to i64, !dbg !3018
  %mul14 = mul i64 %b, %conv13, !dbg !3019
  %xor15 = xor i64 %xor10, %mul14, !dbg !3020
    #dbg_value(i64 %xor15, !3008, !DIExpression(), !3003)
    #dbg_value(i64 %xor15, !3021, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3003)
  %shr = lshr i64 %xor15, 4, !dbg !3022
  %and16 = lshr i64 %xor15, 3, !dbg !3023
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3023
  %4 = xor i64 %shr, %shr18, !dbg !3024
  %xor19 = xor i64 %4, %xor15, !dbg !3024
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3025
    #dbg_value(i64 %and20, !3026, !DIExpression(), !3003)
  ret i64 %and20, !dbg !3027
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3028 {
entry:
    #dbg_value(ptr %in, !3031, !DIExpression(), !3032)
    #dbg_value(ptr %out, !3033, !DIExpression(), !3032)
    #dbg_value(i32 %ncols, !3034, !DIExpression(), !3032)
    #dbg_value(ptr %out, !3035, !DIExpression(), !3032)
    #dbg_value(i32 0, !3036, !DIExpression(), !3032)
  br label %for.cond, !dbg !3037

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3039
    #dbg_value(i32 %i.0, !3036, !DIExpression(), !3032)
  %add = or disjoint i32 %i.0, 1, !dbg !3040
  %cmp = icmp slt i32 %add, %ncols, !dbg !3042
  br i1 %cmp, label %for.body, label %for.end, !dbg !3043

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3044
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3044
  %add2 = or disjoint i32 %i.0, 1, !dbg !3046
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3047
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3047
  %shl5 = shl i8 %1, 4, !dbg !3048
  %or = or i8 %shl5, %0, !dbg !3049
  %div = lshr exact i32 %i.0, 1, !dbg !3050
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3051
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3052
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3053
    #dbg_value(i32 %add8, !3036, !DIExpression(), !3032)
  br label %for.cond, !dbg !3054, !llvm.loop !3055

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3039
  %2 = and i32 %ncols, -2147483647, !dbg !3057
  %cmp9 = icmp eq i32 %2, 1, !dbg !3057
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3057

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3059
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3059
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3061
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3062
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3063
  br label %if.end, !dbg !3064

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3065
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3066 {
entry:
    #dbg_value(i32 %a, !3069, !DIExpression(), !3070)
    #dbg_value(i32 %b, !3071, !DIExpression(), !3070)
  %xor = xor i32 %a, %b, !dbg !3072
  %0 = icmp sgt i32 %xor, 0, !dbg !3073
  %shr = sext i1 %0 to i64, !dbg !3073
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3074
  %xor1 = xor i64 %1, %shr, !dbg !3075
  ret i64 %xor1, !dbg !3076
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3077 {
entry:
    #dbg_value(i32 %a, !3078, !DIExpression(), !3079)
    #dbg_value(i32 %b, !3080, !DIExpression(), !3079)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3081, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3079)
  %0 = icmp slt i32 %b, %a, !dbg !3082
  %shr = sext i1 %0 to i64, !dbg !3082
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3083
  %xor = xor i64 %1, %shr, !dbg !3084
  ret i64 %xor, !dbg !3085
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3086 {
entry:
    #dbg_value(ptr %in, !3089, !DIExpression(), !3090)
    #dbg_value(i32 %index, !3091, !DIExpression(), !3090)
  %div = sdiv i32 %index, 16, !dbg !3092
    #dbg_value(i32 %div, !3093, !DIExpression(), !3090)
  %rem = srem i32 %index, 16, !dbg !3094
    #dbg_value(i32 %rem, !3095, !DIExpression(), !3090)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3096
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3096
  %mul = shl nsw i32 %rem, 2, !dbg !3097
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3098
  %shr = lshr i64 %0, %sh_prom, !dbg !3098
  %1 = trunc i64 %shr to i8, !dbg !3099
  %conv = and i8 %1, 15, !dbg !3099
  ret i8 %conv, !dbg !3100
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3101 {
entry:
    #dbg_value(i8 %a, !3104, !DIExpression(), !3105)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3106
    #dbg_value(i8 %call, !3107, !DIExpression(), !3105)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3108
    #dbg_value(i8 %call1, !3109, !DIExpression(), !3105)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3110
    #dbg_value(i8 %call2, !3111, !DIExpression(), !3105)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3112
    #dbg_value(i8 %call3, !3113, !DIExpression(), !3105)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3114
    #dbg_value(i8 %call4, !3115, !DIExpression(), !3105)
  ret i8 %call4, !dbg !3116
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3117 {
entry:
    #dbg_value(i32 %legs, !3120, !DIExpression(), !3121)
    #dbg_value(ptr %in, !3122, !DIExpression(), !3121)
    #dbg_value(i8 %a, !3123, !DIExpression(), !3121)
    #dbg_value(ptr %acc, !3124, !DIExpression(), !3121)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3125
    #dbg_value(i32 %call, !3126, !DIExpression(), !3121)
    #dbg_value(i64 1229782938247303441, !3127, !DIExpression(), !3121)
    #dbg_value(i32 0, !3128, !DIExpression(), !3130)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3131
  br label %for.cond, !dbg !3131

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3132
    #dbg_value(i32 %i.0, !3128, !DIExpression(), !3130)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3133
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3135

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3136
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3136
  %and = and i64 %0, 1229782938247303441, !dbg !3138
  %and1 = and i32 %call, 255, !dbg !3139
  %conv = zext nneg i32 %and1 to i64, !dbg !3140
  %mul = mul i64 %and, %conv, !dbg !3141
  %shr = lshr i64 %0, 1, !dbg !3142
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3143
  %shr4 = lshr i32 %call, 8, !dbg !3144
  %and5 = and i32 %shr4, 15, !dbg !3145
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3146
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3147
  %xor = xor i64 %mul, %mul7, !dbg !3148
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3149
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3149
  %shr9 = lshr i64 %1, 2, !dbg !3150
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3151
  %shr11 = lshr i32 %call, 16, !dbg !3152
  %and12 = and i32 %shr11, 15, !dbg !3153
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3154
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3155
  %xor15 = xor i64 %xor, %mul14, !dbg !3156
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3157
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3157
  %shr17 = lshr i64 %2, 3, !dbg !3158
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3159
  %shr19 = lshr i32 %call, 24, !dbg !3160
  %and20 = and i32 %shr19, 15, !dbg !3161
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3162
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3163
  %xor23 = xor i64 %xor15, %mul22, !dbg !3164
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3165
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3166
  %xor25 = xor i64 %3, %xor23, !dbg !3166
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3166
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3167
    #dbg_value(i32 %inc, !3128, !DIExpression(), !3130)
  br label %for.cond, !dbg !3168, !llvm.loop !3169

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3171
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3172 {
entry:
    #dbg_value(i32 %legs, !3175, !DIExpression(), !3176)
    #dbg_value(ptr %in, !3177, !DIExpression(), !3176)
    #dbg_value(ptr %out, !3178, !DIExpression(), !3176)
    #dbg_value(ptr %in, !3179, !DIExpression(), !3176)
    #dbg_value(i32 0, !3180, !DIExpression(), !3182)
  br label %for.cond, !dbg !3183

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3184
    #dbg_value(i32 %i.0, !3180, !DIExpression(), !3182)
  %mul = shl nsw i32 %legs, 4, !dbg !3185
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3187
  br i1 %cmp, label %for.body, label %for.end, !dbg !3188

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3189
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3191
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3191
  %1 = and i8 %0, 15, !dbg !3192
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3193
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3194
  %div3 = lshr exact i32 %i.0, 1, !dbg !3195
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3196
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3196
  %3 = lshr i8 %2, 4, !dbg !3197
  %add = or disjoint i32 %i.0, 1, !dbg !3198
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3199
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3200
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3201
    #dbg_value(i32 %add8, !3180, !DIExpression(), !3182)
  br label %for.cond, !dbg !3202, !llvm.loop !3203

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3205
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3206 {
entry:
    #dbg_value(i8 %b, !3207, !DIExpression(), !3208)
  %conv = zext nneg i8 %b to i32, !dbg !3209
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3210
    #dbg_value(i32 %mul, !3211, !DIExpression(), !3208)
    #dbg_value(i32 -252645136, !3212, !DIExpression(), !3208)
  %and = and i32 %mul, 1894838512, !dbg !3213
    #dbg_value(i32 %and, !3214, !DIExpression(), !3208)
  %shr = lshr exact i32 %and, 4, !dbg !3215
  %shr1 = lshr exact i32 %and, 3, !dbg !3216
  %0 = xor i32 %shr, %shr1, !dbg !3217
  %xor2 = xor i32 %0, %mul, !dbg !3217
  ret i32 %xor2, !dbg !3218
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3219 {
entry:
    #dbg_value(i8 %a, !3220, !DIExpression(), !3221)
    #dbg_value(i8 %b, !3222, !DIExpression(), !3221)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3223
  %xor1 = xor i8 %a, %0, !dbg !3224
    #dbg_value(i8 %xor1, !3220, !DIExpression(), !3221)
  %1 = trunc i8 %xor1 to i1, !dbg !3225
    #dbg_value(i8 poison, !3226, !DIExpression(), !3221)
  %2 = and i8 %xor1, 2, !dbg !3227
  %mul9 = mul i8 %2, %b, !dbg !3228
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3225
  %xor11 = xor i8 %conv10, %mul9, !dbg !3229
    #dbg_value(i8 %xor11, !3226, !DIExpression(), !3221)
  %3 = and i8 %xor1, 4, !dbg !3230
  %mul16 = mul i8 %3, %b, !dbg !3231
  %xor18 = xor i8 %mul16, %xor11, !dbg !3232
    #dbg_value(i8 %xor18, !3226, !DIExpression(), !3221)
  %4 = and i8 %xor1, 8, !dbg !3233
  %mul23 = mul i8 %4, %b, !dbg !3234
  %xor25 = xor i8 %mul23, %xor18, !dbg !3235
    #dbg_value(i8 %xor25, !3226, !DIExpression(), !3221)
    #dbg_value(i8 %xor25, !3236, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3221)
  %5 = lshr i8 %xor25, 4, !dbg !3237
  %6 = lshr i8 %xor25, 3, !dbg !3238
  %7 = and i8 %6, 14, !dbg !3238
  %8 = xor i8 %5, %7, !dbg !3239
  %xor25.masked = and i8 %xor25, 15, !dbg !3240
  %9 = xor i8 %8, %xor25.masked, !dbg !3240
    #dbg_value(i8 %9, !3241, !DIExpression(), !3221)
  ret i8 %9, !dbg !3242
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3243 {
entry:
    #dbg_value(ptr %a, !3244, !DIExpression(), !3245)
    #dbg_value(ptr %b, !3246, !DIExpression(), !3245)
    #dbg_value(i32 %n, !3247, !DIExpression(), !3245)
    #dbg_value(i32 1, !3248, !DIExpression(), !3245)
    #dbg_value(i8 0, !3249, !DIExpression(), !3245)
    #dbg_value(i32 0, !3250, !DIExpression(), !3252)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3253
  br label %for.cond, !dbg !3253

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3245
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3254
    #dbg_value(i32 %i.0, !3250, !DIExpression(), !3252)
    #dbg_value(ptr %b.addr.0, !3246, !DIExpression(), !3245)
    #dbg_value(i8 %ret.0, !3249, !DIExpression(), !3245)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3255
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3257

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3258
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3258
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3260
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3261
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3262
    #dbg_value(i8 %call1, !3249, !DIExpression(), !3245)
  %inc = add nuw i32 %i.0, 1, !dbg !3263
    #dbg_value(i32 %inc, !3250, !DIExpression(), !3252)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3264
    #dbg_value(ptr %add.ptr, !3246, !DIExpression(), !3245)
  br label %for.cond, !dbg !3265, !llvm.loop !3266

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3245
  ret i8 %ret.0.lcssa, !dbg !3268
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3269 {
entry:
    #dbg_value(i8 %a, !3270, !DIExpression(), !3271)
    #dbg_value(i8 %b, !3272, !DIExpression(), !3271)
  %xor1 = xor i8 %a, %b, !dbg !3273
  ret i8 %xor1, !dbg !3274
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #1 = { allocsize(0,1) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind allocsize(0,1) "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!64, !2, !43}
!llvm.ident = !{!66, !66, !66}
!llvm.module.flags = !{!67, !68, !69, !70}

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
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !65, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!66 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 1, !"Code Model", i32 1}
!71 = distinct !DISubprogram(name: "main", scope: !72, file: !72, line: 116, type: !73, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64)
!72 = !DIFile(filename: "../example.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!73 = !DISubroutineType(types: !74)
!74 = !{!45}
!75 = !DILocation(line: 126, column: 12, scope: !71)
!76 = !DILocation(line: 126, column: 5, scope: !71)
!77 = distinct !DISubprogram(name: "example_mayo", scope: !72, file: !72, line: 25, type: !78, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !28)
!78 = !DISubroutineType(types: !79)
!79 = !{!45, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !83, file: !36, line: 266, baseType: !45, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !83, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !83, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !83, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !83, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !83, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !83, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !83, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !83, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !83, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !83, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !83, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !83, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !83, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !83, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !83, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !83, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !83, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !83, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !83, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !83, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !83, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DILocalVariable(name: "p", arg: 1, scope: !77, file: !72, line: 25, type: !80)
!112 = !DILocation(line: 0, scope: !77)
!113 = !DILocalVariable(name: "msglen", scope: !77, file: !72, line: 27, type: !15)
!114 = !DILocation(line: 27, column: 12, scope: !77)
!115 = !DILocalVariable(name: "smlen", scope: !77, file: !72, line: 28, type: !15)
!116 = !DILocation(line: 28, column: 12, scope: !77)
!117 = !DILocation(line: 30, column: 26, scope: !77)
!118 = !DILocalVariable(name: "pk", scope: !77, file: !72, line: 30, type: !18)
!119 = !DILocation(line: 31, column: 26, scope: !77)
!120 = !DILocalVariable(name: "sk", scope: !77, file: !72, line: 31, type: !18)
!121 = !DILocalVariable(name: "epk", scope: !77, file: !72, line: 32, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pk_t", file: !36, line: 295, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 850176, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 13284)
!126 = !DILocation(line: 32, column: 10, scope: !77)
!127 = !DILocalVariable(name: "esk", scope: !77, file: !72, line: 33, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 819712, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 12808)
!132 = !DILocation(line: 33, column: 10, scope: !77)
!133 = !DILocation(line: 35, column: 54, scope: !77)
!134 = !DILocation(line: 35, column: 52, scope: !77)
!135 = !DILocation(line: 35, column: 26, scope: !77)
!136 = !DILocalVariable(name: "sig", scope: !77, file: !72, line: 35, type: !18)
!137 = !DILocalVariable(name: "msg", scope: !77, file: !72, line: 37, type: !138)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 32)
!141 = !DILocation(line: 37, column: 19, scope: !77)
!142 = !DILocalVariable(name: "msg2", scope: !77, file: !72, line: 38, type: !138)
!143 = !DILocation(line: 38, column: 19, scope: !77)
!144 = !DILocation(line: 41, column: 15, scope: !77)
!145 = !DILocalVariable(name: "res", scope: !77, file: !72, line: 41, type: !45)
!146 = !DILocation(line: 42, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !77, file: !72, line: 42, column: 9)
!148 = !DILocation(line: 48, column: 11, scope: !77)
!149 = !DILocation(line: 55, column: 11, scope: !77)
!150 = !DILocation(line: 62, column: 42, scope: !77)
!151 = !DILocation(line: 62, column: 11, scope: !77)
!152 = !DILocation(line: 63, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !77, file: !72, line: 63, column: 9)
!154 = !DILocation(line: 69, column: 44, scope: !77)
!155 = !DILocation(line: 69, column: 11, scope: !77)
!156 = !DILocation(line: 70, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !77, file: !72, line: 70, column: 9)
!158 = !DILocation(line: 70, column: 24, scope: !157)
!159 = !DILocation(line: 70, column: 45, scope: !157)
!160 = !DILocation(line: 70, column: 27, scope: !157)
!161 = !DILocation(line: 77, column: 31, scope: !77)
!162 = !DILocation(line: 77, column: 11, scope: !77)
!163 = !DILocation(line: 78, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !77, file: !72, line: 78, column: 9)
!165 = !DILabel(scope: !77, name: "err", file: !72, line: 109)
!166 = !DILocation(line: 109, column: 1, scope: !77)
!167 = !DILocation(line: 110, column: 5, scope: !77)
!168 = !DILocation(line: 111, column: 5, scope: !77)
!169 = !DILocation(line: 112, column: 5, scope: !77)
!170 = !DILocation(line: 113, column: 5, scope: !77)
!171 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !172, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!172 = !DISubroutineType(types: !173)
!173 = !{!45, !174, !18, !18}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !177, file: !36, line: 266, baseType: !45, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !177, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !177, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !177, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !177, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !177, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !177, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !177, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !177, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !177, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !177, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !177, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !177, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !177, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !177, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !177, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !177, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !177, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !177, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !177, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !177, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !177, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!202 = !DILocalVariable(name: "p", arg: 1, scope: !171, file: !25, line: 298, type: !174)
!203 = !DILocation(line: 0, scope: !171)
!204 = !DILocalVariable(name: "pk", arg: 2, scope: !171, file: !25, line: 298, type: !18)
!205 = !DILocalVariable(name: "sk", arg: 3, scope: !171, file: !25, line: 298, type: !18)
!206 = !DILocalVariable(name: "ret", scope: !171, file: !25, line: 299, type: !45)
!207 = !DILocation(line: 301, column: 11, scope: !171)
!208 = !DILabel(scope: !171, name: "err", file: !25, line: 306)
!209 = !DILocation(line: 306, column: 1, scope: !171)
!210 = !DILocation(line: 307, column: 5, scope: !171)
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !172, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 538, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 538, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 539, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 540, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 541, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 542, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4480, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 560)
!222 = !DILocation(line: 542, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 543, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 811008, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 12672)
!227 = !DILocation(line: 543, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 544, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 73984, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 1156)
!232 = !DILocation(line: 544, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 547, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8704, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 1088)
!237 = !DILocation(line: 547, column: 19, scope: !211)
!238 = !DILocalVariable(name: "m_vec_limbs", scope: !211, file: !25, line: 549, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!240 = !DILocalVariable(name: "param_m", scope: !211, file: !25, line: 550, type: !239)
!241 = !DILocalVariable(name: "param_v", scope: !211, file: !25, line: 551, type: !239)
!242 = !DILocalVariable(name: "param_o", scope: !211, file: !25, line: 552, type: !239)
!243 = !DILocalVariable(name: "param_O_bytes", scope: !211, file: !25, line: 553, type: !239)
!244 = !DILocalVariable(name: "param_P1_limbs", scope: !211, file: !25, line: 554, type: !239)
!245 = !DILocalVariable(name: "param_P3_limbs", scope: !211, file: !25, line: 555, type: !239)
!246 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !211, file: !25, line: 556, type: !239)
!247 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !211, file: !25, line: 557, type: !239)
!248 = !DILocalVariable(name: "P1", scope: !211, file: !25, line: 559, type: !5)
!249 = !DILocation(line: 560, column: 22, scope: !211)
!250 = !DILocalVariable(name: "P2", scope: !211, file: !25, line: 560, type: !5)
!251 = !DILocation(line: 566, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !211, file: !25, line: 566, column: 9)
!253 = !DILocation(line: 566, column: 51, scope: !252)
!254 = !DILocation(line: 573, column: 5, scope: !211)
!255 = !DILocalVariable(name: "seed_pk", scope: !211, file: !25, line: 546, type: !18)
!256 = !DILocation(line: 579, column: 14, scope: !211)
!257 = !DILocation(line: 579, column: 5, scope: !211)
!258 = !DILocation(line: 585, column: 5, scope: !211)
!259 = !DILocation(line: 588, column: 5, scope: !211)
!260 = !DILocation(line: 591, column: 5, scope: !211)
!261 = !DILocalVariable(name: "P3_upper", scope: !211, file: !25, line: 593, type: !262)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 39168, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 612)
!265 = !DILocation(line: 593, column: 14, scope: !211)
!266 = !DILocation(line: 596, column: 5, scope: !211)
!267 = !DILocation(line: 597, column: 31, scope: !211)
!268 = !DILocation(line: 597, column: 5, scope: !211)
!269 = !DILabel(scope: !211, name: "err", file: !25, line: 600)
!270 = !DILocation(line: 600, column: 5, scope: !211)
!271 = !DILocation(line: 602, column: 5, scope: !211)
!272 = !DILocation(line: 603, column: 5, scope: !211)
!273 = !DILocation(line: 604, column: 5, scope: !211)
!274 = !DILocation(line: 605, column: 5, scope: !211)
!275 = distinct !DISubprogram(name: "decode", scope: !25, file: !25, line: 20, type: !276, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !49, !18, !45}
!278 = !DILocalVariable(name: "m", arg: 1, scope: !275, file: !25, line: 20, type: !49)
!279 = !DILocation(line: 0, scope: !275)
!280 = !DILocalVariable(name: "mdec", arg: 2, scope: !275, file: !25, line: 20, type: !18)
!281 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !275, file: !25, line: 20, type: !45)
!282 = !DILocalVariable(name: "i", scope: !275, file: !25, line: 21, type: !45)
!283 = !DILocation(line: 22, column: 10, scope: !284)
!284 = distinct !DILexicalBlock(scope: !275, file: !25, line: 22, column: 5)
!285 = !DILocation(line: 22, scope: !284)
!286 = !DILocation(line: 22, column: 29, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !25, line: 22, column: 5)
!288 = !DILocation(line: 22, column: 19, scope: !287)
!289 = !DILocation(line: 22, column: 5, scope: !284)
!290 = !DILocation(line: 23, column: 19, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !25, line: 22, column: 39)
!292 = !DILocation(line: 23, column: 24, scope: !291)
!293 = !DILocation(line: 23, column: 14, scope: !291)
!294 = !DILocation(line: 23, column: 17, scope: !291)
!295 = !DILocation(line: 24, column: 19, scope: !291)
!296 = !DILocation(line: 24, column: 24, scope: !291)
!297 = !DILocation(line: 24, column: 17, scope: !291)
!298 = !DILocation(line: 24, column: 14, scope: !291)
!299 = !DILocation(line: 22, column: 34, scope: !287)
!300 = !DILocation(line: 22, column: 5, scope: !287)
!301 = distinct !{!301, !289, !302, !303}
!302 = !DILocation(line: 25, column: 5, scope: !284)
!303 = !{!"llvm.loop.mustprogress"}
!304 = !DILocation(line: 27, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !275, file: !25, line: 27, column: 9)
!306 = !DILocation(line: 28, column: 19, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !25, line: 27, column: 27)
!308 = !DILocation(line: 28, column: 24, scope: !307)
!309 = !DILocation(line: 28, column: 17, scope: !307)
!310 = !DILocation(line: 29, column: 5, scope: !307)
!311 = !DILocation(line: 30, column: 1, scope: !275)
!312 = distinct !DISubprogram(name: "expand_P1_P2", scope: !25, file: !25, line: 280, type: !313, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !174, !5, !49}
!315 = !DILocalVariable(name: "p", arg: 1, scope: !312, file: !25, line: 280, type: !174)
!316 = !DILocation(line: 0, scope: !312)
!317 = !DILocalVariable(name: "P", arg: 2, scope: !312, file: !25, line: 280, type: !5)
!318 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !312, file: !25, line: 280, type: !49)
!319 = !DILocation(line: 284, column: 5, scope: !312)
!320 = !DILocation(line: 285, column: 5, scope: !312)
!321 = !DILocation(line: 286, column: 1, scope: !312)
!322 = distinct !DISubprogram(name: "compute_P3", scope: !323, file: !323, line: 260, type: !324, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!323 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!324 = !DISubroutineType(types: !325)
!325 = !{null, !174, !326, !5, !49, !5}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!327 = !DILocalVariable(name: "p", arg: 1, scope: !322, file: !323, line: 260, type: !174)
!328 = !DILocation(line: 0, scope: !322)
!329 = !DILocalVariable(name: "P1", arg: 2, scope: !322, file: !323, line: 260, type: !326)
!330 = !DILocalVariable(name: "P2", arg: 3, scope: !322, file: !323, line: 260, type: !5)
!331 = !DILocalVariable(name: "O", arg: 4, scope: !322, file: !323, line: 260, type: !49)
!332 = !DILocalVariable(name: "P3", arg: 5, scope: !322, file: !323, line: 260, type: !5)
!333 = !DILocalVariable(name: "m_vec_limbs", scope: !322, file: !323, line: 262, type: !239)
!334 = !DILocalVariable(name: "param_v", scope: !322, file: !323, line: 263, type: !239)
!335 = !DILocalVariable(name: "param_o", scope: !322, file: !323, line: 264, type: !239)
!336 = !DILocation(line: 267, column: 5, scope: !322)
!337 = !DILocation(line: 270, column: 5, scope: !322)
!338 = !DILocation(line: 271, column: 1, scope: !322)
!339 = distinct !DISubprogram(name: "pack_m_vecs", scope: !25, file: !25, line: 272, type: !340, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !326, !18, !45, !45}
!342 = !DILocalVariable(name: "in", arg: 1, scope: !339, file: !25, line: 272, type: !326)
!343 = !DILocation(line: 0, scope: !339)
!344 = !DILocalVariable(name: "out", arg: 2, scope: !339, file: !25, line: 272, type: !18)
!345 = !DILocalVariable(name: "vecs", arg: 3, scope: !339, file: !25, line: 272, type: !45)
!346 = !DILocalVariable(name: "m", arg: 4, scope: !339, file: !25, line: 272, type: !45)
!347 = !DILocalVariable(name: "m_vec_limbs", scope: !339, file: !25, line: 273, type: !239)
!348 = !DILocalVariable(name: "_in", scope: !339, file: !25, line: 274, type: !18)
!349 = !DILocalVariable(name: "i", scope: !350, file: !25, line: 275, type: !45)
!350 = distinct !DILexicalBlock(scope: !339, file: !25, line: 275, column: 5)
!351 = !DILocation(line: 0, scope: !350)
!352 = !DILocation(line: 275, column: 10, scope: !350)
!353 = !DILocation(line: 275, scope: !350)
!354 = !DILocation(line: 275, column: 23, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !25, line: 275, column: 5)
!356 = !DILocation(line: 275, column: 5, scope: !350)
!357 = !DILocation(line: 277, column: 27, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !25, line: 276, column: 5)
!359 = !DILocation(line: 277, column: 21, scope: !358)
!360 = !DILocation(line: 277, column: 39, scope: !358)
!361 = !DILocation(line: 277, column: 36, scope: !358)
!362 = !DILocation(line: 277, column: 9, scope: !358)
!363 = !DILocation(line: 275, column: 32, scope: !355)
!364 = !DILocation(line: 275, column: 5, scope: !355)
!365 = distinct !{!365, !356, !366, !303}
!366 = !DILocation(line: 278, column: 5, scope: !350)
!367 = !DILocation(line: 279, column: 1, scope: !339)
!368 = distinct !DISubprogram(name: "P1_times_O", scope: !323, file: !323, line: 74, type: !369, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !174, !326, !49, !5}
!371 = !DILocalVariable(name: "p", arg: 1, scope: !368, file: !323, line: 74, type: !174)
!372 = !DILocation(line: 0, scope: !368)
!373 = !DILocalVariable(name: "P1", arg: 2, scope: !368, file: !323, line: 74, type: !326)
!374 = !DILocalVariable(name: "O", arg: 3, scope: !368, file: !323, line: 74, type: !49)
!375 = !DILocalVariable(name: "acc", arg: 4, scope: !368, file: !323, line: 74, type: !5)
!376 = !DILocation(line: 78, column: 5, scope: !368)
!377 = !DILocation(line: 79, column: 1, scope: !368)
!378 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !323, file: !323, line: 47, type: !379, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !239, !49, !326, !5, !239, !239, !239}
!381 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !378, file: !323, line: 47, type: !239)
!382 = !DILocation(line: 0, scope: !378)
!383 = !DILocalVariable(name: "mat", arg: 2, scope: !378, file: !323, line: 47, type: !49)
!384 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !378, file: !323, line: 47, type: !326)
!385 = !DILocalVariable(name: "acc", arg: 4, scope: !378, file: !323, line: 47, type: !5)
!386 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !378, file: !323, line: 48, type: !239)
!387 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !378, file: !323, line: 48, type: !239)
!388 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !378, file: !323, line: 48, type: !239)
!389 = !DILocalVariable(name: "r", scope: !390, file: !323, line: 50, type: !45)
!390 = distinct !DILexicalBlock(scope: !378, file: !323, line: 50, column: 5)
!391 = !DILocation(line: 0, scope: !390)
!392 = !DILocation(line: 50, column: 10, scope: !390)
!393 = !DILocation(line: 50, scope: !390)
!394 = !DILocation(line: 50, column: 23, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !323, line: 50, column: 5)
!396 = !DILocation(line: 50, column: 5, scope: !390)
!397 = !DILocation(line: 51, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !323, line: 51, column: 9)
!399 = distinct !DILexicalBlock(scope: !395, file: !323, line: 50, column: 40)
!400 = !DILocation(line: 51, scope: !398)
!401 = !DILocalVariable(name: "c", scope: !398, file: !323, line: 51, type: !45)
!402 = !DILocation(line: 0, scope: !398)
!403 = !DILocation(line: 51, column: 27, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !323, line: 51, column: 9)
!405 = !DILocation(line: 52, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !323, line: 52, column: 13)
!407 = distinct !DILexicalBlock(scope: !404, file: !323, line: 51, column: 44)
!408 = !DILocation(line: 52, scope: !406)
!409 = !DILocalVariable(name: "k", scope: !406, file: !323, line: 52, type: !45)
!410 = !DILocation(line: 0, scope: !406)
!411 = !DILocation(line: 52, column: 31, scope: !412)
!412 = distinct !DILexicalBlock(scope: !406, file: !323, line: 52, column: 13)
!413 = !DILocation(line: 53, column: 70, scope: !414)
!414 = distinct !DILexicalBlock(scope: !412, file: !323, line: 52, column: 54)
!415 = !DILocation(line: 53, column: 84, scope: !414)
!416 = !DILocation(line: 53, column: 51, scope: !414)
!417 = !DILocation(line: 53, column: 96, scope: !414)
!418 = !DILocation(line: 53, column: 90, scope: !414)
!419 = !DILocation(line: 53, column: 136, scope: !414)
!420 = !DILocation(line: 53, column: 150, scope: !414)
!421 = !DILocation(line: 53, column: 117, scope: !414)
!422 = !DILocation(line: 53, column: 17, scope: !414)
!423 = !DILocation(line: 52, column: 48, scope: !412)
!424 = !DILocation(line: 52, column: 13, scope: !412)
!425 = distinct !{!425, !405, !426, !303}
!426 = !DILocation(line: 54, column: 13, scope: !406)
!427 = !DILocation(line: 51, column: 40, scope: !404)
!428 = !DILocation(line: 51, column: 9, scope: !404)
!429 = distinct !{!429, !397, !430, !303}
!430 = !DILocation(line: 55, column: 9, scope: !398)
!431 = !DILocation(line: 50, column: 36, scope: !395)
!432 = !DILocation(line: 50, column: 5, scope: !395)
!433 = distinct !{!433, !396, !434, !303}
!434 = !DILocation(line: 56, column: 5, scope: !390)
!435 = !DILocation(line: 57, column: 1, scope: !378)
!436 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !437, file: !437, line: 31, type: !438, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!437 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!438 = !DISubroutineType(types: !439)
!439 = !{null, !45, !326, !14, !5}
!440 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !436, file: !437, line: 31, type: !45)
!441 = !DILocation(line: 0, scope: !436)
!442 = !DILocalVariable(name: "in", arg: 2, scope: !436, file: !437, line: 31, type: !326)
!443 = !DILocalVariable(name: "a", arg: 3, scope: !436, file: !437, line: 31, type: !14)
!444 = !DILocalVariable(name: "acc", arg: 4, scope: !436, file: !437, line: 31, type: !5)
!445 = !DILocation(line: 33, column: 20, scope: !436)
!446 = !DILocalVariable(name: "tab", scope: !436, file: !437, line: 33, type: !19)
!447 = !DILocalVariable(name: "lsb_ask", scope: !436, file: !437, line: 35, type: !6)
!448 = !DILocalVariable(name: "i", scope: !449, file: !437, line: 37, type: !45)
!449 = distinct !DILexicalBlock(scope: !436, file: !437, line: 37, column: 5)
!450 = !DILocation(line: 0, scope: !449)
!451 = !DILocation(line: 37, column: 9, scope: !449)
!452 = !DILocation(line: 37, scope: !449)
!453 = !DILocation(line: 37, column: 20, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !437, line: 37, column: 5)
!455 = !DILocation(line: 37, column: 5, scope: !449)
!456 = !DILocation(line: 38, column: 21, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !437, line: 37, column: 43)
!458 = !DILocation(line: 38, column: 33, scope: !457)
!459 = !DILocation(line: 38, column: 51, scope: !457)
!460 = !DILocation(line: 38, column: 46, scope: !457)
!461 = !DILocation(line: 38, column: 44, scope: !457)
!462 = !DILocation(line: 39, column: 27, scope: !457)
!463 = !DILocation(line: 39, column: 33, scope: !457)
!464 = !DILocation(line: 39, column: 52, scope: !457)
!465 = !DILocation(line: 39, column: 59, scope: !457)
!466 = !DILocation(line: 39, column: 46, scope: !457)
!467 = !DILocation(line: 39, column: 44, scope: !457)
!468 = !DILocation(line: 39, column: 17, scope: !457)
!469 = !DILocation(line: 40, column: 21, scope: !457)
!470 = !DILocation(line: 40, column: 27, scope: !457)
!471 = !DILocation(line: 40, column: 33, scope: !457)
!472 = !DILocation(line: 40, column: 52, scope: !457)
!473 = !DILocation(line: 40, column: 59, scope: !457)
!474 = !DILocation(line: 40, column: 46, scope: !457)
!475 = !DILocation(line: 40, column: 44, scope: !457)
!476 = !DILocation(line: 40, column: 17, scope: !457)
!477 = !DILocation(line: 41, column: 21, scope: !457)
!478 = !DILocation(line: 41, column: 27, scope: !457)
!479 = !DILocation(line: 41, column: 33, scope: !457)
!480 = !DILocation(line: 41, column: 52, scope: !457)
!481 = !DILocation(line: 41, column: 59, scope: !457)
!482 = !DILocation(line: 41, column: 46, scope: !457)
!483 = !DILocation(line: 41, column: 44, scope: !457)
!484 = !DILocation(line: 41, column: 17, scope: !457)
!485 = !DILocation(line: 38, column: 9, scope: !457)
!486 = !DILocation(line: 38, column: 16, scope: !457)
!487 = !DILocation(line: 37, column: 40, scope: !454)
!488 = !DILocation(line: 37, column: 5, scope: !454)
!489 = distinct !{!489, !455, !490, !303}
!490 = !DILocation(line: 42, column: 5, scope: !449)
!491 = !DILocation(line: 43, column: 1, scope: !436)
!492 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!493 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!494 = !DISubroutineType(types: !495)
!495 = !{!19, !12}
!496 = !DILocalVariable(name: "b", arg: 1, scope: !492, file: !493, line: 129, type: !12)
!497 = !DILocation(line: 0, scope: !492)
!498 = !DILocation(line: 130, column: 19, scope: !492)
!499 = !DILocation(line: 130, column: 33, scope: !492)
!500 = !DILocalVariable(name: "x", scope: !492, file: !493, line: 130, type: !19)
!501 = !DILocalVariable(name: "high_nibble_mask", scope: !492, file: !493, line: 132, type: !19)
!502 = !DILocation(line: 134, column: 28, scope: !492)
!503 = !DILocalVariable(name: "high_half", scope: !492, file: !493, line: 134, type: !19)
!504 = !DILocation(line: 135, column: 28, scope: !492)
!505 = !DILocation(line: 135, column: 47, scope: !492)
!506 = !DILocation(line: 135, column: 34, scope: !492)
!507 = !DILocation(line: 135, column: 5, scope: !492)
!508 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !323, file: !323, line: 16, type: !509, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !239, !326, !49, !5, !239, !239, !239, !239}
!511 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !508, file: !323, line: 16, type: !239)
!512 = !DILocation(line: 0, scope: !508)
!513 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !508, file: !323, line: 16, type: !326)
!514 = !DILocalVariable(name: "mat", arg: 3, scope: !508, file: !323, line: 16, type: !49)
!515 = !DILocalVariable(name: "acc", arg: 4, scope: !508, file: !323, line: 16, type: !5)
!516 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !508, file: !323, line: 17, type: !239)
!517 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !508, file: !323, line: 17, type: !239)
!518 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !508, file: !323, line: 17, type: !239)
!519 = !DILocalVariable(name: "triangular", arg: 8, scope: !508, file: !323, line: 17, type: !239)
!520 = !DILocalVariable(name: "bs_mat_entries_used", scope: !508, file: !323, line: 19, type: !45)
!521 = !DILocalVariable(name: "r", scope: !522, file: !323, line: 20, type: !45)
!522 = distinct !DILexicalBlock(scope: !508, file: !323, line: 20, column: 5)
!523 = !DILocation(line: 0, scope: !522)
!524 = !DILocation(line: 20, column: 10, scope: !522)
!525 = !DILocation(line: 19, column: 9, scope: !508)
!526 = !DILocation(line: 20, scope: !522)
!527 = !DILocation(line: 20, column: 23, scope: !528)
!528 = distinct !DILexicalBlock(scope: !522, file: !323, line: 20, column: 5)
!529 = !DILocation(line: 20, column: 5, scope: !522)
!530 = !DILocation(line: 21, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !323, line: 21, column: 9)
!532 = distinct !DILexicalBlock(scope: !528, file: !323, line: 20, column: 43)
!533 = !DILocation(line: 21, scope: !531)
!534 = !DILocalVariable(name: "c", scope: !531, file: !323, line: 21, type: !45)
!535 = !DILocation(line: 0, scope: !531)
!536 = !DILocation(line: 21, column: 40, scope: !537)
!537 = distinct !DILexicalBlock(scope: !531, file: !323, line: 21, column: 9)
!538 = !DILocation(line: 22, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !323, line: 22, column: 13)
!540 = distinct !DILexicalBlock(scope: !537, file: !323, line: 21, column: 60)
!541 = !DILocation(line: 22, scope: !539)
!542 = !DILocalVariable(name: "k", scope: !539, file: !323, line: 22, type: !45)
!543 = !DILocation(line: 0, scope: !539)
!544 = !DILocation(line: 22, column: 31, scope: !545)
!545 = distinct !DILexicalBlock(scope: !539, file: !323, line: 22, column: 13)
!546 = !DILocation(line: 23, column: 51, scope: !547)
!547 = distinct !DILexicalBlock(scope: !545, file: !323, line: 22, column: 51)
!548 = !DILocation(line: 23, column: 94, scope: !547)
!549 = !DILocation(line: 23, column: 88, scope: !547)
!550 = !DILocation(line: 23, column: 134, scope: !547)
!551 = !DILocation(line: 23, column: 145, scope: !547)
!552 = !DILocation(line: 23, column: 115, scope: !547)
!553 = !DILocation(line: 23, column: 17, scope: !547)
!554 = !DILocation(line: 22, column: 45, scope: !545)
!555 = !DILocation(line: 22, column: 13, scope: !545)
!556 = distinct !{!556, !538, !557, !303}
!557 = !DILocation(line: 24, column: 13, scope: !539)
!558 = !DILocation(line: 25, column: 33, scope: !540)
!559 = !DILocation(line: 21, column: 56, scope: !537)
!560 = !DILocation(line: 21, column: 9, scope: !537)
!561 = distinct !{!561, !530, !562, !303}
!562 = !DILocation(line: 26, column: 9, scope: !531)
!563 = !DILocation(line: 20, column: 39, scope: !528)
!564 = !DILocation(line: 20, column: 5, scope: !528)
!565 = distinct !{!565, !529, !566, !303}
!566 = !DILocation(line: 27, column: 5, scope: !522)
!567 = !DILocation(line: 28, column: 1, scope: !508)
!568 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !25, file: !25, line: 262, type: !569, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !49, !5, !45, !45}
!571 = !DILocalVariable(name: "in", arg: 1, scope: !568, file: !25, line: 262, type: !49)
!572 = !DILocation(line: 0, scope: !568)
!573 = !DILocalVariable(name: "out", arg: 2, scope: !568, file: !25, line: 262, type: !5)
!574 = !DILocalVariable(name: "vecs", arg: 3, scope: !568, file: !25, line: 262, type: !45)
!575 = !DILocalVariable(name: "m", arg: 4, scope: !568, file: !25, line: 262, type: !45)
!576 = !DILocalVariable(name: "m_vec_limbs", scope: !568, file: !25, line: 263, type: !239)
!577 = !DILocalVariable(name: "_out", scope: !568, file: !25, line: 264, type: !18)
!578 = !DILocalVariable(name: "tmp", scope: !568, file: !25, line: 265, type: !579)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !39)
!580 = !DILocation(line: 265, column: 14, scope: !568)
!581 = !DILocalVariable(name: "i", scope: !582, file: !25, line: 266, type: !45)
!582 = distinct !DILexicalBlock(scope: !568, file: !25, line: 266, column: 5)
!583 = !DILocation(line: 0, scope: !582)
!584 = !DILocation(line: 266, column: 10, scope: !582)
!585 = !DILocation(line: 266, column: 28, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !25, line: 266, column: 5)
!587 = !DILocation(line: 266, column: 5, scope: !582)
!588 = !DILocation(line: 266, scope: !582)
!589 = !DILocation(line: 268, column: 29, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !25, line: 267, column: 5)
!591 = !DILocation(line: 268, column: 24, scope: !590)
!592 = !DILocation(line: 268, column: 9, scope: !590)
!593 = !DILocation(line: 269, column: 24, scope: !590)
!594 = !DILocation(line: 269, column: 21, scope: !590)
!595 = !DILocation(line: 269, column: 9, scope: !590)
!596 = !DILocation(line: 266, column: 5, scope: !586)
!597 = distinct !{!597, !587, !598, !303}
!598 = !DILocation(line: 270, column: 5, scope: !582)
!599 = !DILocation(line: 271, column: 1, scope: !568)
!600 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !601, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!601 = !DISubroutineType(types: !602)
!602 = !{!45, !174, !49, !5}
!603 = !DILocalVariable(name: "p", arg: 1, scope: !600, file: !25, line: 310, type: !174)
!604 = !DILocation(line: 0, scope: !600)
!605 = !DILocalVariable(name: "csk", arg: 2, scope: !600, file: !25, line: 310, type: !49)
!606 = !DILocalVariable(name: "sk", arg: 3, scope: !600, file: !25, line: 311, type: !5)
!607 = !DILocalVariable(name: "ret", scope: !600, file: !25, line: 312, type: !45)
!608 = !DILocalVariable(name: "S", scope: !600, file: !25, line: 313, type: !219)
!609 = !DILocation(line: 313, column: 19, scope: !600)
!610 = !DILocalVariable(name: "P", scope: !600, file: !25, line: 314, type: !5)
!611 = !DILocation(line: 315, column: 24, scope: !600)
!612 = !DILocalVariable(name: "O", scope: !600, file: !25, line: 315, type: !18)
!613 = !DILocalVariable(name: "param_o", scope: !600, file: !25, line: 317, type: !239)
!614 = !DILocalVariable(name: "param_v", scope: !600, file: !25, line: 318, type: !239)
!615 = !DILocalVariable(name: "param_O_bytes", scope: !600, file: !25, line: 319, type: !239)
!616 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !600, file: !25, line: 320, type: !239)
!617 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !600, file: !25, line: 321, type: !239)
!618 = !DILocalVariable(name: "seed_sk", scope: !600, file: !25, line: 323, type: !49)
!619 = !DILocalVariable(name: "seed_pk", scope: !600, file: !25, line: 324, type: !18)
!620 = !DILocation(line: 326, column: 5, scope: !600)
!621 = !DILocation(line: 328, column: 14, scope: !600)
!622 = !DILocation(line: 328, column: 5, scope: !600)
!623 = !DILocation(line: 334, column: 5, scope: !600)
!624 = !DILocation(line: 341, column: 22, scope: !600)
!625 = !DILocalVariable(name: "P2", scope: !600, file: !25, line: 341, type: !5)
!626 = !DILocalVariable(name: "P1", scope: !600, file: !25, line: 343, type: !5)
!627 = !DILocalVariable(name: "L", scope: !600, file: !25, line: 346, type: !5)
!628 = !DILocation(line: 347, column: 5, scope: !600)
!629 = !DILocation(line: 355, column: 5, scope: !600)
!630 = !DILocation(line: 356, column: 5, scope: !600)
!631 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !323, file: !323, line: 218, type: !369, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!632 = !DILocalVariable(name: "p", arg: 1, scope: !631, file: !323, line: 218, type: !174)
!633 = !DILocation(line: 0, scope: !631)
!634 = !DILocalVariable(name: "P1", arg: 2, scope: !631, file: !323, line: 218, type: !326)
!635 = !DILocalVariable(name: "O", arg: 3, scope: !631, file: !323, line: 218, type: !49)
!636 = !DILocalVariable(name: "acc", arg: 4, scope: !631, file: !323, line: 218, type: !5)
!637 = !DILocalVariable(name: "param_o", scope: !631, file: !323, line: 222, type: !239)
!638 = !DILocalVariable(name: "param_v", scope: !631, file: !323, line: 223, type: !239)
!639 = !DILocalVariable(name: "m_vec_limbs", scope: !631, file: !323, line: 224, type: !239)
!640 = !DILocalVariable(name: "bs_mat_entries_used", scope: !631, file: !323, line: 226, type: !45)
!641 = !DILocalVariable(name: "r", scope: !642, file: !323, line: 227, type: !45)
!642 = distinct !DILexicalBlock(scope: !631, file: !323, line: 227, column: 5)
!643 = !DILocation(line: 0, scope: !642)
!644 = !DILocation(line: 227, column: 10, scope: !642)
!645 = !DILocation(line: 226, column: 9, scope: !631)
!646 = !DILocation(line: 227, scope: !642)
!647 = !DILocation(line: 227, column: 23, scope: !648)
!648 = distinct !DILexicalBlock(scope: !642, file: !323, line: 227, column: 5)
!649 = !DILocation(line: 227, column: 5, scope: !642)
!650 = !DILocation(line: 228, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !323, line: 228, column: 9)
!652 = distinct !DILexicalBlock(scope: !648, file: !323, line: 227, column: 39)
!653 = !DILocation(line: 228, scope: !651)
!654 = !DILocalVariable(name: "c", scope: !651, file: !323, line: 228, type: !45)
!655 = !DILocation(line: 0, scope: !651)
!656 = !DILocation(line: 228, column: 27, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !323, line: 228, column: 9)
!658 = !DILocation(line: 229, column: 17, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !323, line: 229, column: 16)
!660 = distinct !DILexicalBlock(scope: !657, file: !323, line: 228, column: 43)
!661 = !DILocation(line: 233, column: 13, scope: !662)
!662 = distinct !DILexicalBlock(scope: !660, file: !323, line: 233, column: 13)
!663 = !DILocation(line: 233, scope: !662)
!664 = !DILocalVariable(name: "k", scope: !662, file: !323, line: 233, type: !45)
!665 = !DILocation(line: 0, scope: !662)
!666 = !DILocation(line: 233, column: 31, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !323, line: 233, column: 13)
!668 = !DILocation(line: 234, column: 47, scope: !669)
!669 = distinct !DILexicalBlock(scope: !667, file: !323, line: 233, column: 50)
!670 = !DILocation(line: 234, column: 88, scope: !669)
!671 = !DILocation(line: 234, column: 84, scope: !669)
!672 = !DILocation(line: 234, column: 127, scope: !669)
!673 = !DILocation(line: 234, column: 137, scope: !669)
!674 = !DILocation(line: 234, column: 108, scope: !669)
!675 = !DILocation(line: 234, column: 17, scope: !669)
!676 = !DILocation(line: 235, column: 47, scope: !669)
!677 = !DILocation(line: 235, column: 88, scope: !669)
!678 = !DILocation(line: 235, column: 84, scope: !669)
!679 = !DILocation(line: 235, column: 127, scope: !669)
!680 = !DILocation(line: 235, column: 137, scope: !669)
!681 = !DILocation(line: 235, column: 108, scope: !669)
!682 = !DILocation(line: 235, column: 17, scope: !669)
!683 = !DILocation(line: 233, column: 44, scope: !667)
!684 = !DILocation(line: 233, column: 13, scope: !667)
!685 = distinct !{!685, !661, !686, !303}
!686 = !DILocation(line: 236, column: 13, scope: !662)
!687 = !DILocation(line: 0, scope: !660)
!688 = !DILocation(line: 228, column: 39, scope: !657)
!689 = !DILocation(line: 228, column: 9, scope: !657)
!690 = distinct !{!690, !650, !691, !303}
!691 = !DILocation(line: 238, column: 9, scope: !651)
!692 = !DILocation(line: 227, column: 35, scope: !648)
!693 = !DILocation(line: 227, column: 5, scope: !648)
!694 = distinct !{!694, !649, !695, !303}
!695 = !DILocation(line: 239, column: 5, scope: !642)
!696 = !DILocation(line: 240, column: 1, scope: !631)
!697 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !698, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!698 = !DISubroutineType(types: !699)
!699 = !{!45, !174, !18, !700, !49, !15, !49}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!701 = !DILocalVariable(name: "p", arg: 1, scope: !697, file: !25, line: 359, type: !174)
!702 = !DILocation(line: 0, scope: !697)
!703 = !DILocalVariable(name: "sig", arg: 2, scope: !697, file: !25, line: 359, type: !18)
!704 = !DILocalVariable(name: "siglen", arg: 3, scope: !697, file: !25, line: 360, type: !700)
!705 = !DILocalVariable(name: "m", arg: 4, scope: !697, file: !25, line: 360, type: !49)
!706 = !DILocalVariable(name: "mlen", arg: 5, scope: !697, file: !25, line: 361, type: !15)
!707 = !DILocalVariable(name: "csk", arg: 6, scope: !697, file: !25, line: 361, type: !49)
!708 = !DILocalVariable(name: "ret", scope: !697, file: !25, line: 362, type: !45)
!709 = !DILocalVariable(name: "tenc", scope: !697, file: !25, line: 363, type: !138)
!710 = !DILocation(line: 363, column: 19, scope: !697)
!711 = !DILocalVariable(name: "t", scope: !697, file: !25, line: 363, type: !712)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 64)
!715 = !DILocation(line: 363, column: 38, scope: !697)
!716 = !DILocalVariable(name: "y", scope: !697, file: !25, line: 364, type: !712)
!717 = !DILocation(line: 364, column: 19, scope: !697)
!718 = !DILocalVariable(name: "salt", scope: !697, file: !25, line: 365, type: !719)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 24)
!722 = !DILocation(line: 365, column: 19, scope: !697)
!723 = !DILocalVariable(name: "V", scope: !697, file: !25, line: 366, type: !724)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1296, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 162)
!727 = !DILocation(line: 366, column: 19, scope: !697)
!728 = !DILocalVariable(name: "Vdec", scope: !697, file: !25, line: 366, type: !729)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 256)
!732 = !DILocation(line: 366, column: 57, scope: !697)
!733 = !DILocalVariable(name: "A", scope: !697, file: !25, line: 367, type: !734)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 35328, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 4416)
!737 = !DILocation(line: 367, column: 19, scope: !697)
!738 = !DILocalVariable(name: "x", scope: !697, file: !25, line: 368, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2592, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 324)
!742 = !DILocation(line: 368, column: 19, scope: !697)
!743 = !DILocalVariable(name: "r", scope: !697, file: !25, line: 369, type: !744)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 552, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 69)
!747 = !DILocation(line: 369, column: 19, scope: !697)
!748 = !DILocalVariable(name: "s", scope: !697, file: !25, line: 370, type: !739)
!749 = !DILocation(line: 370, column: 19, scope: !697)
!750 = !DILocalVariable(name: "sk", scope: !697, file: !25, line: 372, type: !128, align: 256)
!751 = !DILocation(line: 372, column: 22, scope: !697)
!752 = !DILocalVariable(name: "Ox", scope: !697, file: !25, line: 373, type: !712)
!753 = !DILocation(line: 373, column: 19, scope: !697)
!754 = !DILocalVariable(name: "tmp", scope: !697, file: !25, line: 374, type: !755)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 81)
!758 = !DILocation(line: 374, column: 19, scope: !697)
!759 = !DILocalVariable(name: "param_m", scope: !697, file: !25, line: 378, type: !239)
!760 = !DILocalVariable(name: "param_n", scope: !697, file: !25, line: 379, type: !239)
!761 = !DILocalVariable(name: "param_o", scope: !697, file: !25, line: 380, type: !239)
!762 = !DILocalVariable(name: "param_k", scope: !697, file: !25, line: 381, type: !239)
!763 = !DILocalVariable(name: "param_v", scope: !697, file: !25, line: 382, type: !239)
!764 = !DILocalVariable(name: "param_m_bytes", scope: !697, file: !25, line: 383, type: !239)
!765 = !DILocalVariable(name: "param_v_bytes", scope: !697, file: !25, line: 384, type: !239)
!766 = !DILocalVariable(name: "param_r_bytes", scope: !697, file: !25, line: 385, type: !239)
!767 = !DILocalVariable(name: "param_sig_bytes", scope: !697, file: !25, line: 386, type: !239)
!768 = !DILocalVariable(name: "param_A_cols", scope: !697, file: !25, line: 387, type: !239)
!769 = !DILocalVariable(name: "param_digest_bytes", scope: !697, file: !25, line: 388, type: !239)
!770 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !697, file: !25, line: 389, type: !239)
!771 = !DILocalVariable(name: "param_salt_bytes", scope: !697, file: !25, line: 390, type: !239)
!772 = !DILocation(line: 392, column: 11, scope: !697)
!773 = !DILocalVariable(name: "seed_sk", scope: !697, file: !25, line: 371, type: !49)
!774 = !DILocation(line: 401, column: 5, scope: !697)
!775 = !DILocalVariable(name: "P1", scope: !697, file: !25, line: 403, type: !5)
!776 = !DILocation(line: 404, column: 23, scope: !697)
!777 = !DILocalVariable(name: "L", scope: !697, file: !25, line: 404, type: !5)
!778 = !DILocalVariable(name: "Mtmp", scope: !697, file: !25, line: 405, type: !779)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17408, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 272)
!782 = !DILocation(line: 405, column: 14, scope: !697)
!783 = !DILocation(line: 420, column: 25, scope: !784)
!784 = distinct !DILexicalBlock(scope: !697, file: !25, line: 420, column: 9)
!785 = !DILocation(line: 420, column: 9, scope: !784)
!786 = !DILocation(line: 420, column: 65, scope: !784)
!787 = !DILocation(line: 427, column: 37, scope: !697)
!788 = !DILocation(line: 427, column: 5, scope: !697)
!789 = !DILocation(line: 429, column: 5, scope: !697)
!790 = !DILocation(line: 437, column: 16, scope: !697)
!791 = !DILocation(line: 437, column: 5, scope: !697)
!792 = !DILocation(line: 438, column: 59, scope: !697)
!793 = !DILocalVariable(name: "ctrbyte", scope: !697, file: !25, line: 375, type: !18)
!794 = !DILocation(line: 440, column: 5, scope: !697)
!795 = !DILocation(line: 442, column: 5, scope: !697)
!796 = !DILocalVariable(name: "ctr", scope: !797, file: !25, line: 444, type: !45)
!797 = distinct !DILexicalBlock(scope: !697, file: !25, line: 444, column: 5)
!798 = !DILocation(line: 0, scope: !797)
!799 = !DILocation(line: 466, column: 18, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !25, line: 444, column: 42)
!801 = distinct !DILexicalBlock(scope: !797, file: !25, line: 444, column: 5)
!802 = !DILocation(line: 444, column: 10, scope: !797)
!803 = !DILocation(line: 444, scope: !797)
!804 = !DILocation(line: 444, column: 27, scope: !801)
!805 = !DILocation(line: 444, column: 5, scope: !797)
!806 = !DILocation(line: 445, column: 20, scope: !800)
!807 = !DILocation(line: 445, column: 18, scope: !800)
!808 = !DILocation(line: 447, column: 9, scope: !800)
!809 = !DILocalVariable(name: "i", scope: !810, file: !25, line: 451, type: !45)
!810 = distinct !DILexicalBlock(scope: !800, file: !25, line: 451, column: 9)
!811 = !DILocation(line: 0, scope: !810)
!812 = !DILocation(line: 451, column: 14, scope: !810)
!813 = !DILocation(line: 451, scope: !810)
!814 = !DILocation(line: 451, column: 27, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !25, line: 451, column: 9)
!816 = !DILocation(line: 451, column: 9, scope: !810)
!817 = !DILocation(line: 452, column: 26, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !25, line: 451, column: 48)
!819 = !DILocation(line: 452, column: 22, scope: !818)
!820 = !DILocation(line: 452, column: 52, scope: !818)
!821 = !DILocation(line: 452, column: 48, scope: !818)
!822 = !DILocation(line: 452, column: 13, scope: !818)
!823 = !DILocation(line: 451, column: 43, scope: !815)
!824 = !DILocation(line: 451, column: 9, scope: !815)
!825 = distinct !{!825, !816, !826, !303}
!826 = !DILocation(line: 453, column: 9, scope: !810)
!827 = !DILocation(line: 456, column: 9, scope: !800)
!828 = !DILocation(line: 458, column: 9, scope: !800)
!829 = !DILocation(line: 459, column: 9, scope: !800)
!830 = !DILocalVariable(name: "i", scope: !831, file: !25, line: 461, type: !45)
!831 = distinct !DILexicalBlock(scope: !800, file: !25, line: 461, column: 9)
!832 = !DILocation(line: 0, scope: !831)
!833 = !DILocation(line: 461, column: 14, scope: !831)
!834 = !DILocation(line: 461, scope: !831)
!835 = !DILocation(line: 461, column: 27, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !25, line: 461, column: 9)
!837 = !DILocation(line: 461, column: 9, scope: !831)
!838 = !DILocation(line: 463, column: 20, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !25, line: 462, column: 9)
!840 = !DILocation(line: 463, column: 43, scope: !839)
!841 = !DILocation(line: 463, column: 13, scope: !839)
!842 = !DILocation(line: 463, column: 48, scope: !839)
!843 = !DILocation(line: 461, column: 39, scope: !836)
!844 = !DILocation(line: 461, column: 9, scope: !836)
!845 = distinct !{!845, !837, !846, !303}
!846 = !DILocation(line: 464, column: 9, scope: !831)
!847 = !DILocation(line: 466, column: 9, scope: !800)
!848 = !DILocation(line: 470, column: 13, scope: !849)
!849 = distinct !DILexicalBlock(scope: !800, file: !25, line: 470, column: 13)
!850 = !DILocation(line: 473, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !849, file: !25, line: 472, column: 16)
!852 = !DILocation(line: 474, column: 13, scope: !851)
!853 = !DILocation(line: 444, column: 35, scope: !801)
!854 = !DILocation(line: 444, column: 5, scope: !801)
!855 = distinct !{!855, !805, !856, !303}
!856 = !DILocation(line: 476, column: 5, scope: !797)
!857 = !DILocalVariable(name: "i", scope: !858, file: !25, line: 478, type: !45)
!858 = distinct !DILexicalBlock(scope: !697, file: !25, line: 478, column: 5)
!859 = !DILocation(line: 0, scope: !858)
!860 = !DILocation(line: 478, column: 10, scope: !858)
!861 = !DILocation(line: 478, scope: !858)
!862 = !DILocation(line: 478, column: 23, scope: !863)
!863 = distinct !DILexicalBlock(scope: !858, file: !25, line: 478, column: 5)
!864 = !DILocation(line: 478, column: 5, scope: !858)
!865 = !DILocation(line: 479, column: 23, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !25, line: 478, column: 44)
!867 = !DILocation(line: 479, column: 19, scope: !866)
!868 = !DILocalVariable(name: "vi", scope: !697, file: !25, line: 376, type: !18)
!869 = !DILocation(line: 480, column: 17, scope: !866)
!870 = !DILocation(line: 480, column: 33, scope: !866)
!871 = !DILocation(line: 480, column: 29, scope: !866)
!872 = !DILocation(line: 480, column: 9, scope: !866)
!873 = !DILocation(line: 481, column: 31, scope: !866)
!874 = !DILocation(line: 481, column: 27, scope: !866)
!875 = !DILocation(line: 481, column: 9, scope: !866)
!876 = !DILocation(line: 482, column: 22, scope: !866)
!877 = !DILocation(line: 482, column: 18, scope: !866)
!878 = !DILocation(line: 482, column: 32, scope: !866)
!879 = !DILocation(line: 482, column: 61, scope: !866)
!880 = !DILocation(line: 482, column: 57, scope: !866)
!881 = !DILocation(line: 482, column: 9, scope: !866)
!882 = !DILocation(line: 478, column: 39, scope: !863)
!883 = !DILocation(line: 478, column: 5, scope: !863)
!884 = distinct !{!884, !864, !885, !303}
!885 = !DILocation(line: 483, column: 5, scope: !858)
!886 = !DILocation(line: 484, column: 5, scope: !697)
!887 = !DILocation(line: 486, column: 34, scope: !697)
!888 = !DILocation(line: 486, column: 5, scope: !697)
!889 = !DILocation(line: 487, column: 13, scope: !697)
!890 = !DILocation(line: 487, column: 5, scope: !697)
!891 = !DILabel(scope: !697, name: "err", file: !25, line: 489)
!892 = !DILocation(line: 489, column: 1, scope: !697)
!893 = !DILocation(line: 490, column: 5, scope: !697)
!894 = !DILocation(line: 491, column: 5, scope: !697)
!895 = !DILocation(line: 492, column: 5, scope: !697)
!896 = !DILocation(line: 493, column: 5, scope: !697)
!897 = !DILocation(line: 494, column: 23, scope: !697)
!898 = !DILocation(line: 494, column: 5, scope: !697)
!899 = !DILocation(line: 495, column: 5, scope: !697)
!900 = !DILocation(line: 496, column: 5, scope: !697)
!901 = !DILocation(line: 497, column: 5, scope: !697)
!902 = !DILocation(line: 498, column: 5, scope: !697)
!903 = !DILocation(line: 499, column: 5, scope: !697)
!904 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !905, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !174, !49, !326, !326, !5, !5}
!907 = !DILocalVariable(name: "p", arg: 1, scope: !904, file: !323, line: 244, type: !174)
!908 = !DILocation(line: 0, scope: !904)
!909 = !DILocalVariable(name: "Vdec", arg: 2, scope: !904, file: !323, line: 244, type: !49)
!910 = !DILocalVariable(name: "L", arg: 3, scope: !904, file: !323, line: 244, type: !326)
!911 = !DILocalVariable(name: "P1", arg: 4, scope: !904, file: !323, line: 244, type: !326)
!912 = !DILocalVariable(name: "VL", arg: 5, scope: !904, file: !323, line: 244, type: !5)
!913 = !DILocalVariable(name: "VP1V", arg: 6, scope: !904, file: !323, line: 244, type: !5)
!914 = !DILocalVariable(name: "param_k", scope: !904, file: !323, line: 246, type: !239)
!915 = !DILocalVariable(name: "param_v", scope: !904, file: !323, line: 247, type: !239)
!916 = !DILocalVariable(name: "param_o", scope: !904, file: !323, line: 248, type: !239)
!917 = !DILocation(line: 251, column: 5, scope: !904)
!918 = !DILocalVariable(name: "Pv", scope: !904, file: !323, line: 254, type: !919)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 65536, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 1024)
!922 = !DILocation(line: 254, column: 14, scope: !904)
!923 = !DILocation(line: 255, column: 5, scope: !904)
!924 = !DILocation(line: 256, column: 5, scope: !904)
!925 = !DILocation(line: 257, column: 1, scope: !904)
!926 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !927, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !174, !5, !49, !18}
!929 = !DILocalVariable(name: "p", arg: 1, scope: !926, file: !25, line: 43, type: !174)
!930 = !DILocation(line: 0, scope: !926)
!931 = !DILocalVariable(name: "vPv", arg: 2, scope: !926, file: !25, line: 43, type: !5)
!932 = !DILocalVariable(name: "t", arg: 3, scope: !926, file: !25, line: 43, type: !49)
!933 = !DILocalVariable(name: "y", arg: 4, scope: !926, file: !25, line: 43, type: !18)
!934 = !DILocalVariable(name: "top_pos", scope: !926, file: !25, line: 48, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!936 = !DILocalVariable(name: "m_vec_limbs", scope: !926, file: !25, line: 49, type: !935)
!937 = !DILocalVariable(name: "temp", scope: !926, file: !25, line: 62, type: !579)
!938 = !DILocation(line: 62, column: 14, scope: !926)
!939 = !DILocalVariable(name: "temp_bytes", scope: !926, file: !25, line: 63, type: !18)
!940 = !DILocalVariable(name: "i", scope: !941, file: !25, line: 64, type: !45)
!941 = distinct !DILexicalBlock(scope: !926, file: !25, line: 64, column: 5)
!942 = !DILocation(line: 0, scope: !941)
!943 = !DILocation(line: 64, column: 10, scope: !941)
!944 = !DILocation(line: 64, scope: !941)
!945 = !DILocation(line: 64, column: 36, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !25, line: 64, column: 5)
!947 = !DILocation(line: 64, column: 5, scope: !941)
!948 = !DILocation(line: 65, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !25, line: 65, column: 9)
!950 = distinct !DILexicalBlock(scope: !946, file: !25, line: 64, column: 48)
!951 = !DILocation(line: 99, column: 5, scope: !952)
!952 = distinct !DILexicalBlock(scope: !926, file: !25, line: 99, column: 5)
!953 = !DILocation(line: 65, scope: !949)
!954 = !DILocalVariable(name: "j", scope: !949, file: !25, line: 65, type: !45)
!955 = !DILocation(line: 0, scope: !949)
!956 = !DILocation(line: 65, column: 27, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !25, line: 65, column: 9)
!958 = !DILocation(line: 67, column: 34, scope: !959)
!959 = distinct !DILexicalBlock(scope: !957, file: !25, line: 65, column: 46)
!960 = !DILocation(line: 67, column: 54, scope: !959)
!961 = !DILocalVariable(name: "top", scope: !959, file: !25, line: 67, type: !14)
!962 = !DILocation(line: 0, scope: !959)
!963 = !DILocation(line: 68, column: 13, scope: !959)
!964 = !DILocation(line: 68, column: 33, scope: !959)
!965 = !DILocalVariable(name: "k", scope: !966, file: !25, line: 69, type: !45)
!966 = distinct !DILexicalBlock(scope: !959, file: !25, line: 69, column: 13)
!967 = !DILocation(line: 0, scope: !966)
!968 = !DILocation(line: 69, column: 17, scope: !966)
!969 = !DILocation(line: 69, scope: !966)
!970 = !DILocation(line: 69, column: 43, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !25, line: 69, column: 13)
!972 = !DILocation(line: 69, column: 13, scope: !966)
!973 = !DILocation(line: 67, column: 33, scope: !959)
!974 = !DILocation(line: 74, column: 13, scope: !975)
!975 = distinct !DILexicalBlock(scope: !959, file: !25, line: 74, column: 13)
!976 = !DILocation(line: 70, column: 30, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !25, line: 69, column: 52)
!978 = !DILocation(line: 70, column: 38, scope: !977)
!979 = !DILocation(line: 70, column: 23, scope: !977)
!980 = !DILocation(line: 70, column: 17, scope: !977)
!981 = !DILocation(line: 70, column: 27, scope: !977)
!982 = !DILocation(line: 71, column: 17, scope: !977)
!983 = !DILocation(line: 71, column: 25, scope: !977)
!984 = !DILocation(line: 69, column: 49, scope: !971)
!985 = !DILocation(line: 69, column: 13, scope: !971)
!986 = distinct !{!986, !972, !987, !303}
!987 = !DILocation(line: 72, column: 13, scope: !966)
!988 = !DILocation(line: 74, scope: !975)
!989 = !DILocalVariable(name: "jj", scope: !975, file: !25, line: 74, type: !45)
!990 = !DILocation(line: 0, scope: !975)
!991 = !DILocation(line: 74, column: 33, scope: !992)
!992 = distinct !DILexicalBlock(scope: !975, file: !25, line: 74, column: 13)
!993 = !DILocation(line: 92, column: 13, scope: !994)
!994 = distinct !DILexicalBlock(scope: !959, file: !25, line: 92, column: 13)
!995 = !DILocation(line: 75, column: 22, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !25, line: 75, column: 20)
!997 = distinct !DILexicalBlock(scope: !992, file: !25, line: 74, column: 53)
!998 = !DILocation(line: 75, column: 25, scope: !996)
!999 = !DILocation(line: 79, column: 52, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !25, line: 75, column: 30)
!1001 = !DILocation(line: 79, column: 41, scope: !1000)
!1002 = !DILocation(line: 79, column: 34, scope: !1000)
!1003 = !DILocation(line: 79, column: 21, scope: !1000)
!1004 = !DILocation(line: 79, column: 38, scope: !1000)
!1005 = !DILocation(line: 81, column: 17, scope: !1000)
!1006 = !DILocation(line: 86, column: 52, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !996, file: !25, line: 82, column: 22)
!1008 = !DILocation(line: 86, column: 41, scope: !1007)
!1009 = !DILocation(line: 86, column: 73, scope: !1007)
!1010 = !DILocation(line: 86, column: 34, scope: !1007)
!1011 = !DILocation(line: 86, column: 21, scope: !1007)
!1012 = !DILocation(line: 86, column: 38, scope: !1007)
!1013 = !DILocation(line: 74, column: 49, scope: !992)
!1014 = !DILocation(line: 74, column: 13, scope: !992)
!1015 = distinct !{!1015, !974, !1016, !303}
!1016 = !DILocation(line: 89, column: 13, scope: !975)
!1017 = !DILocation(line: 92, scope: !994)
!1018 = !DILocalVariable(name: "k", scope: !994, file: !25, line: 92, type: !15)
!1019 = !DILocation(line: 0, scope: !994)
!1020 = !DILocation(line: 92, column: 31, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !994, file: !25, line: 92, column: 13)
!1022 = !DILocation(line: 93, column: 54, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1021, file: !25, line: 92, column: 51)
!1024 = !DILocation(line: 93, column: 68, scope: !1023)
!1025 = !DILocation(line: 93, column: 28, scope: !1023)
!1026 = !DILocation(line: 93, column: 78, scope: !1023)
!1027 = !DILocation(line: 93, column: 109, scope: !1023)
!1028 = !DILocation(line: 93, column: 123, scope: !1023)
!1029 = !DILocation(line: 93, column: 83, scope: !1023)
!1030 = !DILocation(line: 93, column: 82, scope: !1023)
!1031 = !DILocation(line: 93, column: 73, scope: !1023)
!1032 = !DILocation(line: 93, column: 17, scope: !1023)
!1033 = !DILocation(line: 93, column: 25, scope: !1023)
!1034 = !DILocation(line: 92, column: 48, scope: !1021)
!1035 = !DILocation(line: 92, column: 13, scope: !1021)
!1036 = distinct !{!1036, !993, !1037, !303}
!1037 = !DILocation(line: 94, column: 13, scope: !994)
!1038 = !DILocation(line: 65, column: 42, scope: !957)
!1039 = !DILocation(line: 65, column: 9, scope: !957)
!1040 = distinct !{!1040, !948, !1041, !303}
!1041 = !DILocation(line: 95, column: 9, scope: !949)
!1042 = !DILocation(line: 64, column: 44, scope: !946)
!1043 = !DILocation(line: 64, column: 5, scope: !946)
!1044 = distinct !{!1044, !947, !1045, !303}
!1045 = !DILocation(line: 96, column: 5, scope: !941)
!1046 = !DILocation(line: 99, scope: !952)
!1047 = !DILocalVariable(name: "i", scope: !952, file: !25, line: 99, type: !45)
!1048 = !DILocation(line: 0, scope: !952)
!1049 = !DILocation(line: 99, column: 23, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !952, file: !25, line: 99, column: 5)
!1051 = !DILocation(line: 105, column: 18, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1050, file: !25, line: 100, column: 5)
!1053 = !DILocation(line: 105, column: 40, scope: !1052)
!1054 = !DILocation(line: 105, column: 28, scope: !1052)
!1055 = !DILocation(line: 105, column: 44, scope: !1052)
!1056 = !DILocation(line: 105, column: 25, scope: !1052)
!1057 = !DILocation(line: 105, column: 9, scope: !1052)
!1058 = !DILocation(line: 105, column: 16, scope: !1052)
!1059 = !DILocation(line: 106, column: 21, scope: !1052)
!1060 = !DILocation(line: 106, column: 18, scope: !1052)
!1061 = !DILocation(line: 106, column: 40, scope: !1052)
!1062 = !DILocation(line: 106, column: 28, scope: !1052)
!1063 = !DILocation(line: 106, column: 44, scope: !1052)
!1064 = !DILocation(line: 106, column: 25, scope: !1052)
!1065 = !DILocation(line: 106, column: 12, scope: !1052)
!1066 = !DILocation(line: 106, column: 9, scope: !1052)
!1067 = !DILocation(line: 106, column: 16, scope: !1052)
!1068 = !DILocation(line: 99, column: 38, scope: !1050)
!1069 = !DILocation(line: 99, column: 5, scope: !1050)
!1070 = distinct !{!1070, !951, !1071, !303}
!1071 = !DILocation(line: 108, column: 5, scope: !952)
!1072 = !DILocation(line: 109, column: 1, scope: !926)
!1073 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1074, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !174, !5, !18}
!1076 = !DILocalVariable(name: "p", arg: 1, scope: !1073, file: !25, line: 154, type: !174)
!1077 = !DILocation(line: 0, scope: !1073)
!1078 = !DILocalVariable(name: "VtL", arg: 2, scope: !1073, file: !25, line: 154, type: !5)
!1079 = !DILocalVariable(name: "A_out", arg: 3, scope: !1073, file: !25, line: 154, type: !18)
!1080 = !DILocalVariable(name: "bits_to_shift", scope: !1073, file: !25, line: 159, type: !45)
!1081 = !DILocalVariable(name: "words_to_shift", scope: !1073, file: !25, line: 160, type: !45)
!1082 = !DILocalVariable(name: "m_vec_limbs", scope: !1073, file: !25, line: 161, type: !239)
!1083 = !DILocalVariable(name: "A", scope: !1073, file: !25, line: 162, type: !1084)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40960, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 640)
!1087 = !DILocation(line: 162, column: 14, scope: !1073)
!1088 = !DILocalVariable(name: "A_width", scope: !1073, file: !25, line: 163, type: !15)
!1089 = !DILocalVariable(name: "i", scope: !1090, file: !25, line: 177, type: !45)
!1090 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 177, column: 5)
!1091 = !DILocation(line: 0, scope: !1090)
!1092 = !DILocation(line: 177, column: 10, scope: !1090)
!1093 = !DILocation(line: 177, scope: !1090)
!1094 = !DILocation(line: 160, column: 9, scope: !1073)
!1095 = !DILocation(line: 159, column: 9, scope: !1073)
!1096 = !DILocation(line: 177, column: 23, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1090, file: !25, line: 177, column: 5)
!1098 = !DILocation(line: 177, column: 5, scope: !1090)
!1099 = !DILocation(line: 178, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !25, line: 178, column: 9)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !25, line: 177, column: 47)
!1102 = !DILocation(line: 212, column: 5, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 212, column: 5)
!1104 = !DILocation(line: 178, scope: !1100)
!1105 = !DILocalVariable(name: "j", scope: !1100, file: !25, line: 178, type: !45)
!1106 = !DILocation(line: 0, scope: !1100)
!1107 = !DILocation(line: 178, column: 40, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 178, column: 9)
!1109 = !DILocation(line: 180, column: 22, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1108, file: !25, line: 178, column: 51)
!1111 = !DILocalVariable(name: "Mj", scope: !1073, file: !25, line: 164, type: !326)
!1112 = !DILocalVariable(name: "c", scope: !1113, file: !25, line: 181, type: !45)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !25, line: 181, column: 13)
!1114 = !DILocation(line: 0, scope: !1113)
!1115 = !DILocation(line: 181, column: 18, scope: !1113)
!1116 = !DILocation(line: 181, scope: !1113)
!1117 = !DILocation(line: 181, column: 31, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !25, line: 181, column: 13)
!1119 = !DILocation(line: 181, column: 13, scope: !1113)
!1120 = !DILocation(line: 182, column: 17, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 182, column: 17)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !25, line: 181, column: 50)
!1123 = !DILocation(line: 182, scope: !1121)
!1124 = !DILocalVariable(name: "k", scope: !1121, file: !25, line: 182, type: !45)
!1125 = !DILocation(line: 0, scope: !1121)
!1126 = !DILocation(line: 182, column: 35, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !25, line: 182, column: 17)
!1128 = !DILocation(line: 184, column: 86, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !25, line: 183, column: 17)
!1130 = !DILocation(line: 184, column: 83, scope: !1129)
!1131 = !DILocation(line: 184, column: 78, scope: !1129)
!1132 = !DILocation(line: 184, column: 100, scope: !1129)
!1133 = !DILocation(line: 184, column: 35, scope: !1129)
!1134 = !DILocation(line: 184, column: 39, scope: !1129)
!1135 = !DILocation(line: 184, column: 48, scope: !1129)
!1136 = !DILocation(line: 184, column: 65, scope: !1129)
!1137 = !DILocation(line: 184, column: 43, scope: !1129)
!1138 = !DILocation(line: 184, column: 21, scope: !1129)
!1139 = !DILocation(line: 184, column: 75, scope: !1129)
!1140 = !DILocation(line: 185, column: 38, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1129, file: !25, line: 185, column: 24)
!1142 = !DILocation(line: 186, column: 94, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1141, file: !25, line: 185, column: 42)
!1144 = !DILocation(line: 186, column: 91, scope: !1143)
!1145 = !DILocation(line: 186, column: 86, scope: !1143)
!1146 = !DILocation(line: 186, column: 114, scope: !1143)
!1147 = !DILocation(line: 186, column: 108, scope: !1143)
!1148 = !DILocation(line: 186, column: 39, scope: !1143)
!1149 = !DILocation(line: 186, column: 43, scope: !1143)
!1150 = !DILocation(line: 186, column: 52, scope: !1143)
!1151 = !DILocation(line: 186, column: 73, scope: !1143)
!1152 = !DILocation(line: 186, column: 47, scope: !1143)
!1153 = !DILocation(line: 186, column: 25, scope: !1143)
!1154 = !DILocation(line: 186, column: 83, scope: !1143)
!1155 = !DILocation(line: 187, column: 21, scope: !1143)
!1156 = !DILocation(line: 182, column: 51, scope: !1127)
!1157 = !DILocation(line: 182, column: 17, scope: !1127)
!1158 = distinct !{!1158, !1120, !1159, !303}
!1159 = !DILocation(line: 188, column: 17, scope: !1121)
!1160 = !DILocation(line: 181, column: 46, scope: !1118)
!1161 = !DILocation(line: 181, column: 13, scope: !1118)
!1162 = distinct !{!1162, !1119, !1163, !303}
!1163 = !DILocation(line: 189, column: 13, scope: !1113)
!1164 = !DILocation(line: 191, column: 19, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1110, file: !25, line: 191, column: 17)
!1166 = !DILocation(line: 192, column: 26, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1165, file: !25, line: 191, column: 25)
!1168 = !DILocalVariable(name: "Mi", scope: !1073, file: !25, line: 164, type: !326)
!1169 = !DILocalVariable(name: "c", scope: !1170, file: !25, line: 193, type: !45)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !25, line: 193, column: 17)
!1171 = !DILocation(line: 0, scope: !1170)
!1172 = !DILocation(line: 193, column: 22, scope: !1170)
!1173 = !DILocation(line: 193, scope: !1170)
!1174 = !DILocation(line: 193, column: 35, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !25, line: 193, column: 17)
!1176 = !DILocation(line: 193, column: 17, scope: !1170)
!1177 = !DILocation(line: 194, column: 21, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !25, line: 194, column: 21)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !25, line: 193, column: 54)
!1180 = !DILocation(line: 194, scope: !1178)
!1181 = !DILocalVariable(name: "k", scope: !1178, file: !25, line: 194, type: !45)
!1182 = !DILocation(line: 0, scope: !1178)
!1183 = !DILocation(line: 194, column: 39, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1178, file: !25, line: 194, column: 21)
!1185 = !DILocation(line: 196, column: 89, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !25, line: 195, column: 21)
!1187 = !DILocation(line: 196, column: 86, scope: !1186)
!1188 = !DILocation(line: 196, column: 81, scope: !1186)
!1189 = !DILocation(line: 196, column: 103, scope: !1186)
!1190 = !DILocation(line: 196, column: 38, scope: !1186)
!1191 = !DILocation(line: 196, column: 42, scope: !1186)
!1192 = !DILocation(line: 196, column: 51, scope: !1186)
!1193 = !DILocation(line: 196, column: 68, scope: !1186)
!1194 = !DILocation(line: 196, column: 46, scope: !1186)
!1195 = !DILocation(line: 196, column: 25, scope: !1186)
!1196 = !DILocation(line: 196, column: 78, scope: !1186)
!1197 = !DILocation(line: 197, column: 42, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1186, file: !25, line: 197, column: 28)
!1199 = !DILocation(line: 198, column: 97, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !25, line: 197, column: 46)
!1201 = !DILocation(line: 198, column: 94, scope: !1200)
!1202 = !DILocation(line: 198, column: 89, scope: !1200)
!1203 = !DILocation(line: 198, column: 117, scope: !1200)
!1204 = !DILocation(line: 198, column: 111, scope: !1200)
!1205 = !DILocation(line: 198, column: 42, scope: !1200)
!1206 = !DILocation(line: 198, column: 46, scope: !1200)
!1207 = !DILocation(line: 198, column: 55, scope: !1200)
!1208 = !DILocation(line: 198, column: 76, scope: !1200)
!1209 = !DILocation(line: 198, column: 50, scope: !1200)
!1210 = !DILocation(line: 198, column: 29, scope: !1200)
!1211 = !DILocation(line: 198, column: 86, scope: !1200)
!1212 = !DILocation(line: 199, column: 25, scope: !1200)
!1213 = !DILocation(line: 194, column: 55, scope: !1184)
!1214 = !DILocation(line: 194, column: 21, scope: !1184)
!1215 = distinct !{!1215, !1177, !1216, !303}
!1216 = !DILocation(line: 200, column: 21, scope: !1178)
!1217 = !DILocation(line: 193, column: 50, scope: !1175)
!1218 = !DILocation(line: 193, column: 17, scope: !1175)
!1219 = distinct !{!1219, !1176, !1220, !303}
!1220 = !DILocation(line: 201, column: 17, scope: !1170)
!1221 = !DILocation(line: 204, column: 27, scope: !1110)
!1222 = !DILocation(line: 205, column: 30, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1110, file: !25, line: 205, column: 16)
!1224 = !DILocation(line: 178, column: 46, scope: !1108)
!1225 = !DILocation(line: 178, column: 9, scope: !1108)
!1226 = distinct !{!1226, !1099, !1227, !303}
!1227 = !DILocation(line: 209, column: 9, scope: !1100)
!1228 = !DILocation(line: 177, column: 42, scope: !1097)
!1229 = !DILocation(line: 177, column: 5, scope: !1097)
!1230 = distinct !{!1230, !1098, !1231, !303}
!1231 = !DILocation(line: 210, column: 5, scope: !1090)
!1232 = !DILocation(line: 212, scope: !1103)
!1233 = !DILocalVariable(name: "c", scope: !1103, file: !25, line: 212, type: !15)
!1234 = !DILocation(line: 0, scope: !1103)
!1235 = !DILocation(line: 212, column: 26, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 212, column: 5)
!1237 = !DILocation(line: 214, column: 35, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1236, file: !25, line: 213, column: 5)
!1239 = !DILocation(line: 214, column: 9, scope: !1238)
!1240 = !DILocation(line: 212, column: 91, scope: !1236)
!1241 = !DILocation(line: 212, column: 5, scope: !1236)
!1242 = distinct !{!1242, !1102, !1243, !303}
!1243 = !DILocation(line: 215, column: 5, scope: !1103)
!1244 = !DILocalVariable(name: "tab", scope: !1073, file: !25, line: 217, type: !1245)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 16)
!1248 = !DILocation(line: 217, column: 19, scope: !1073)
!1249 = !DILocalVariable(name: "i", scope: !1250, file: !25, line: 218, type: !15)
!1250 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 218, column: 5)
!1251 = !DILocation(line: 0, scope: !1250)
!1252 = !DILocation(line: 218, column: 10, scope: !1250)
!1253 = !DILocation(line: 218, scope: !1250)
!1254 = !DILocation(line: 218, column: 26, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !25, line: 218, column: 5)
!1256 = !DILocation(line: 218, column: 5, scope: !1250)
!1257 = !DILocation(line: 228, column: 5, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 228, column: 5)
!1259 = !DILocation(line: 220, column: 28, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !25, line: 219, column: 5)
!1261 = !DILocation(line: 220, column: 22, scope: !1260)
!1262 = !DILocation(line: 220, column: 14, scope: !1260)
!1263 = !DILocation(line: 220, column: 9, scope: !1260)
!1264 = !DILocation(line: 220, column: 20, scope: !1260)
!1265 = !DILocation(line: 221, column: 22, scope: !1260)
!1266 = !DILocation(line: 221, column: 14, scope: !1260)
!1267 = !DILocation(line: 221, column: 16, scope: !1260)
!1268 = !DILocation(line: 221, column: 9, scope: !1260)
!1269 = !DILocation(line: 221, column: 20, scope: !1260)
!1270 = !DILocation(line: 222, column: 28, scope: !1260)
!1271 = !DILocation(line: 222, column: 22, scope: !1260)
!1272 = !DILocation(line: 222, column: 14, scope: !1260)
!1273 = !DILocation(line: 222, column: 16, scope: !1260)
!1274 = !DILocation(line: 222, column: 9, scope: !1260)
!1275 = !DILocation(line: 222, column: 20, scope: !1260)
!1276 = !DILocation(line: 223, column: 28, scope: !1260)
!1277 = !DILocation(line: 223, column: 22, scope: !1260)
!1278 = !DILocation(line: 223, column: 14, scope: !1260)
!1279 = !DILocation(line: 223, column: 16, scope: !1260)
!1280 = !DILocation(line: 223, column: 9, scope: !1260)
!1281 = !DILocation(line: 223, column: 20, scope: !1260)
!1282 = !DILocation(line: 218, column: 41, scope: !1255)
!1283 = !DILocation(line: 218, column: 5, scope: !1255)
!1284 = distinct !{!1284, !1256, !1285, !303}
!1285 = !DILocation(line: 224, column: 5, scope: !1250)
!1286 = !DILocation(line: 228, scope: !1258)
!1287 = !DILocalVariable(name: "c", scope: !1258, file: !25, line: 228, type: !15)
!1288 = !DILocation(line: 0, scope: !1258)
!1289 = !DILocation(line: 228, column: 26, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1258, file: !25, line: 228, column: 5)
!1291 = !DILocation(line: 230, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !25, line: 230, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !25, line: 229, column: 5)
!1294 = !DILocation(line: 250, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 250, column: 5)
!1296 = !DILocation(line: 230, scope: !1292)
!1297 = !DILocalVariable(name: "r", scope: !1292, file: !25, line: 230, type: !45)
!1298 = !DILocation(line: 0, scope: !1292)
!1299 = !DILocation(line: 230, column: 36, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1292, file: !25, line: 230, column: 9)
!1301 = !DILocation(line: 232, column: 28, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1300, file: !25, line: 231, column: 9)
!1303 = !DILocation(line: 232, column: 32, scope: !1302)
!1304 = !DILocation(line: 232, column: 41, scope: !1302)
!1305 = !DILocation(line: 232, column: 49, scope: !1302)
!1306 = !DILocation(line: 232, column: 45, scope: !1302)
!1307 = !DILocalVariable(name: "pos", scope: !1302, file: !25, line: 232, type: !15)
!1308 = !DILocation(line: 0, scope: !1302)
!1309 = !DILocation(line: 233, column: 28, scope: !1302)
!1310 = !DILocation(line: 233, column: 41, scope: !1302)
!1311 = !DILocalVariable(name: "t0", scope: !1302, file: !25, line: 233, type: !6)
!1312 = !DILocation(line: 234, column: 35, scope: !1302)
!1313 = !DILocation(line: 234, column: 41, scope: !1302)
!1314 = !DILocalVariable(name: "t1", scope: !1302, file: !25, line: 234, type: !6)
!1315 = !DILocation(line: 235, column: 35, scope: !1302)
!1316 = !DILocation(line: 235, column: 41, scope: !1302)
!1317 = !DILocalVariable(name: "t2", scope: !1302, file: !25, line: 235, type: !6)
!1318 = !DILocation(line: 236, column: 28, scope: !1302)
!1319 = !DILocation(line: 236, column: 35, scope: !1302)
!1320 = !DILocation(line: 236, column: 41, scope: !1302)
!1321 = !DILocalVariable(name: "t3", scope: !1302, file: !25, line: 236, type: !6)
!1322 = !DILocalVariable(name: "t", scope: !1323, file: !25, line: 237, type: !15)
!1323 = distinct !DILexicalBlock(scope: !1302, file: !25, line: 237, column: 13)
!1324 = !DILocation(line: 0, scope: !1323)
!1325 = !DILocation(line: 237, column: 18, scope: !1323)
!1326 = !DILocation(line: 237, scope: !1323)
!1327 = !DILocation(line: 237, column: 34, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !25, line: 237, column: 13)
!1329 = !DILocation(line: 237, column: 13, scope: !1323)
!1330 = !DILocation(line: 239, column: 89, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !25, line: 238, column: 13)
!1332 = !DILocation(line: 239, column: 84, scope: !1331)
!1333 = !DILocation(line: 239, column: 83, scope: !1331)
!1334 = !DILocation(line: 239, column: 105, scope: !1331)
!1335 = !DILocation(line: 239, column: 107, scope: !1331)
!1336 = !DILocation(line: 239, column: 100, scope: !1331)
!1337 = !DILocation(line: 239, column: 99, scope: !1331)
!1338 = !DILocation(line: 239, column: 95, scope: !1331)
!1339 = !DILocation(line: 239, column: 121, scope: !1331)
!1340 = !DILocation(line: 239, column: 123, scope: !1331)
!1341 = !DILocation(line: 239, column: 116, scope: !1331)
!1342 = !DILocation(line: 239, column: 115, scope: !1331)
!1343 = !DILocation(line: 239, column: 111, scope: !1331)
!1344 = !DILocation(line: 239, column: 137, scope: !1331)
!1345 = !DILocation(line: 239, column: 139, scope: !1331)
!1346 = !DILocation(line: 239, column: 132, scope: !1331)
!1347 = !DILocation(line: 239, column: 131, scope: !1331)
!1348 = !DILocation(line: 239, column: 127, scope: !1331)
!1349 = !DILocation(line: 239, column: 22, scope: !1331)
!1350 = !DILocation(line: 239, column: 24, scope: !1331)
!1351 = !DILocation(line: 239, column: 36, scope: !1331)
!1352 = !DILocation(line: 239, column: 40, scope: !1331)
!1353 = !DILocation(line: 239, column: 49, scope: !1331)
!1354 = !DILocation(line: 239, column: 58, scope: !1331)
!1355 = !DILocation(line: 239, column: 72, scope: !1331)
!1356 = !DILocation(line: 239, column: 53, scope: !1331)
!1357 = !DILocation(line: 239, column: 17, scope: !1331)
!1358 = !DILocation(line: 239, column: 78, scope: !1331)
!1359 = !DILocation(line: 237, column: 49, scope: !1328)
!1360 = !DILocation(line: 237, column: 13, scope: !1328)
!1361 = distinct !{!1361, !1329, !1362, !303}
!1362 = !DILocation(line: 240, column: 13, scope: !1323)
!1363 = !DILocation(line: 230, column: 82, scope: !1300)
!1364 = !DILocation(line: 230, column: 9, scope: !1300)
!1365 = distinct !{!1365, !1291, !1366, !303}
!1366 = !DILocation(line: 241, column: 9, scope: !1292)
!1367 = !DILocation(line: 228, column: 38, scope: !1290)
!1368 = !DILocation(line: 228, column: 5, scope: !1290)
!1369 = distinct !{!1369, !1257, !1370, !303}
!1370 = !DILocation(line: 242, column: 5, scope: !1258)
!1371 = !DILocation(line: 250, scope: !1295)
!1372 = !DILocalVariable(name: "r", scope: !1295, file: !25, line: 250, type: !45)
!1373 = !DILocation(line: 0, scope: !1295)
!1374 = !DILocation(line: 250, column: 23, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1295, file: !25, line: 250, column: 5)
!1376 = !DILocation(line: 252, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !25, line: 252, column: 9)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !25, line: 251, column: 5)
!1379 = !DILocation(line: 252, scope: !1377)
!1380 = !DILocalVariable(name: "c", scope: !1377, file: !25, line: 252, type: !45)
!1381 = !DILocation(line: 0, scope: !1377)
!1382 = !DILocation(line: 252, column: 27, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !25, line: 252, column: 9)
!1384 = !DILocation(line: 254, column: 13, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !25, line: 254, column: 13)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !25, line: 253, column: 9)
!1387 = !DILocation(line: 254, scope: !1385)
!1388 = !DILocalVariable(name: "i", scope: !1385, file: !25, line: 254, type: !45)
!1389 = !DILocation(line: 0, scope: !1385)
!1390 = !DILocation(line: 254, column: 35, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1385, file: !25, line: 254, column: 13)
!1392 = !DILocation(line: 256, column: 55, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1391, file: !25, line: 255, column: 13)
!1394 = !DILocation(line: 256, column: 59, scope: !1393)
!1395 = !DILocation(line: 256, column: 63, scope: !1393)
!1396 = !DILocation(line: 256, column: 44, scope: !1393)
!1397 = !DILocation(line: 256, column: 95, scope: !1393)
!1398 = !DILocation(line: 256, column: 92, scope: !1393)
!1399 = !DILocation(line: 256, column: 75, scope: !1393)
!1400 = !DILocation(line: 256, column: 99, scope: !1393)
!1401 = !DILocation(line: 256, column: 104, scope: !1393)
!1402 = !DILocation(line: 256, column: 17, scope: !1393)
!1403 = !DILocation(line: 254, column: 50, scope: !1391)
!1404 = !DILocation(line: 254, column: 13, scope: !1391)
!1405 = distinct !{!1405, !1384, !1406, !303}
!1406 = !DILocation(line: 257, column: 13, scope: !1385)
!1407 = !DILocation(line: 252, column: 50, scope: !1383)
!1408 = !DILocation(line: 252, column: 9, scope: !1383)
!1409 = distinct !{!1409, !1376, !1410, !303}
!1410 = !DILocation(line: 258, column: 9, scope: !1377)
!1411 = !DILocation(line: 250, column: 38, scope: !1375)
!1412 = !DILocation(line: 250, column: 5, scope: !1375)
!1413 = distinct !{!1413, !1294, !1414, !303}
!1414 = !DILocation(line: 259, column: 5, scope: !1295)
!1415 = !DILocation(line: 260, column: 1, scope: !1073)
!1416 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1417, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !49, !49, !18, !45, !45, !45}
!1419 = !DILocalVariable(name: "a", arg: 1, scope: !1416, file: !493, line: 79, type: !49)
!1420 = !DILocation(line: 0, scope: !1416)
!1421 = !DILocalVariable(name: "b", arg: 2, scope: !1416, file: !493, line: 79, type: !49)
!1422 = !DILocalVariable(name: "c", arg: 3, scope: !1416, file: !493, line: 80, type: !18)
!1423 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1416, file: !493, line: 80, type: !45)
!1424 = !DILocalVariable(name: "row_a", arg: 5, scope: !1416, file: !493, line: 80, type: !45)
!1425 = !DILocalVariable(name: "col_b", arg: 6, scope: !1416, file: !493, line: 80, type: !45)
!1426 = !DILocalVariable(name: "i", scope: !1427, file: !493, line: 81, type: !45)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !493, line: 81, column: 5)
!1428 = !DILocation(line: 0, scope: !1427)
!1429 = !DILocation(line: 81, column: 10, scope: !1427)
!1430 = !DILocation(line: 81, scope: !1427)
!1431 = !DILocation(line: 81, column: 23, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !493, line: 81, column: 5)
!1433 = !DILocation(line: 81, column: 5, scope: !1427)
!1434 = !DILocation(line: 82, column: 9, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !493, line: 82, column: 9)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !493, line: 81, column: 53)
!1437 = !DILocation(line: 82, scope: !1435)
!1438 = !DILocalVariable(name: "j", scope: !1435, file: !493, line: 82, type: !45)
!1439 = !DILocation(line: 0, scope: !1435)
!1440 = !DILocation(line: 83, column: 18, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !493, line: 82, column: 46)
!1442 = distinct !DILexicalBlock(scope: !1435, file: !493, line: 82, column: 9)
!1443 = !DILocation(line: 83, column: 16, scope: !1441)
!1444 = !DILocation(line: 82, column: 41, scope: !1442)
!1445 = !DILocation(line: 82, column: 9, scope: !1442)
!1446 = distinct !{!1446, !1434, !1447, !303}
!1447 = !DILocation(line: 84, column: 9, scope: !1435)
!1448 = !DILocation(line: 81, column: 32, scope: !1432)
!1449 = !DILocation(line: 81, column: 39, scope: !1432)
!1450 = !DILocation(line: 81, column: 5, scope: !1432)
!1451 = distinct !{!1451, !1433, !1452, !303}
!1452 = !DILocation(line: 85, column: 5, scope: !1427)
!1453 = !DILocation(line: 86, column: 1, scope: !1416)
!1454 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1455, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !49, !49, !18, !45, !45}
!1457 = !DILocalVariable(name: "a", arg: 1, scope: !1454, file: !493, line: 88, type: !49)
!1458 = !DILocation(line: 0, scope: !1454)
!1459 = !DILocalVariable(name: "b", arg: 2, scope: !1454, file: !493, line: 88, type: !49)
!1460 = !DILocalVariable(name: "c", arg: 3, scope: !1454, file: !493, line: 89, type: !18)
!1461 = !DILocalVariable(name: "m", arg: 4, scope: !1454, file: !493, line: 89, type: !45)
!1462 = !DILocalVariable(name: "n", arg: 5, scope: !1454, file: !493, line: 89, type: !45)
!1463 = !DILocalVariable(name: "i", scope: !1464, file: !493, line: 90, type: !45)
!1464 = distinct !DILexicalBlock(scope: !1454, file: !493, line: 90, column: 5)
!1465 = !DILocation(line: 0, scope: !1464)
!1466 = !DILocation(line: 90, column: 10, scope: !1464)
!1467 = !DILocation(line: 90, scope: !1464)
!1468 = !DILocation(line: 90, column: 23, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !493, line: 90, column: 5)
!1470 = !DILocation(line: 90, column: 5, scope: !1464)
!1471 = !DILocalVariable(name: "j", scope: !1472, file: !493, line: 91, type: !45)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !493, line: 91, column: 9)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !493, line: 90, column: 33)
!1474 = !DILocation(line: 0, scope: !1472)
!1475 = !DILocation(line: 92, column: 42, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !493, line: 91, column: 37)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !493, line: 91, column: 9)
!1478 = !DILocation(line: 92, column: 38, scope: !1476)
!1479 = !DILocation(line: 92, column: 60, scope: !1476)
!1480 = !DILocation(line: 92, column: 56, scope: !1476)
!1481 = !DILocation(line: 92, column: 32, scope: !1476)
!1482 = !DILocation(line: 92, column: 17, scope: !1476)
!1483 = !DILocation(line: 92, column: 30, scope: !1476)
!1484 = !DILocation(line: 90, column: 28, scope: !1469)
!1485 = !DILocation(line: 90, column: 5, scope: !1469)
!1486 = distinct !{!1486, !1470, !1487, !303}
!1487 = !DILocation(line: 94, column: 5, scope: !1464)
!1488 = !DILocation(line: 95, column: 1, scope: !1454)
!1489 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1490 = !DILocalVariable(name: "m", arg: 1, scope: !1489, file: !25, line: 32, type: !49)
!1491 = !DILocation(line: 0, scope: !1489)
!1492 = !DILocalVariable(name: "menc", arg: 2, scope: !1489, file: !25, line: 32, type: !18)
!1493 = !DILocalVariable(name: "mlen", arg: 3, scope: !1489, file: !25, line: 32, type: !45)
!1494 = !DILocalVariable(name: "i", scope: !1489, file: !25, line: 33, type: !45)
!1495 = !DILocation(line: 34, column: 10, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !25, line: 34, column: 5)
!1497 = !DILocation(line: 34, scope: !1496)
!1498 = !DILocation(line: 34, column: 19, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !25, line: 34, column: 5)
!1500 = !DILocation(line: 34, column: 5, scope: !1496)
!1501 = !DILocation(line: 35, column: 20, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !25, line: 34, column: 44)
!1503 = !DILocation(line: 35, column: 31, scope: !1502)
!1504 = !DILocation(line: 35, column: 27, scope: !1502)
!1505 = !DILocation(line: 35, column: 36, scope: !1502)
!1506 = !DILocation(line: 35, column: 24, scope: !1502)
!1507 = !DILocation(line: 35, column: 9, scope: !1502)
!1508 = !DILocation(line: 35, column: 17, scope: !1502)
!1509 = !DILocation(line: 34, column: 31, scope: !1499)
!1510 = !DILocation(line: 34, column: 38, scope: !1499)
!1511 = !DILocation(line: 34, column: 5, scope: !1499)
!1512 = distinct !{!1512, !1500, !1513, !303}
!1513 = !DILocation(line: 36, column: 5, scope: !1496)
!1514 = !DILocation(line: 41, column: 1, scope: !1489)
!1515 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1516, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!14, !14, !14}
!1518 = !DILocalVariable(name: "a", arg: 1, scope: !1515, file: !493, line: 43, type: !14)
!1519 = !DILocation(line: 0, scope: !1515)
!1520 = !DILocalVariable(name: "b", arg: 2, scope: !1515, file: !493, line: 43, type: !14)
!1521 = !DILocation(line: 44, column: 14, scope: !1515)
!1522 = !DILocation(line: 44, column: 5, scope: !1515)
!1523 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1524, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!14, !49, !49, !45, !45}
!1526 = !DILocalVariable(name: "a", arg: 1, scope: !1523, file: !493, line: 70, type: !49)
!1527 = !DILocation(line: 0, scope: !1523)
!1528 = !DILocalVariable(name: "b", arg: 2, scope: !1523, file: !493, line: 71, type: !49)
!1529 = !DILocalVariable(name: "n", arg: 3, scope: !1523, file: !493, line: 71, type: !45)
!1530 = !DILocalVariable(name: "m", arg: 4, scope: !1523, file: !493, line: 71, type: !45)
!1531 = !DILocalVariable(name: "ret", scope: !1523, file: !493, line: 72, type: !14)
!1532 = !DILocalVariable(name: "i", scope: !1533, file: !493, line: 73, type: !45)
!1533 = distinct !DILexicalBlock(scope: !1523, file: !493, line: 73, column: 5)
!1534 = !DILocation(line: 0, scope: !1533)
!1535 = !DILocation(line: 73, column: 10, scope: !1533)
!1536 = !DILocation(line: 73, scope: !1533)
!1537 = !DILocation(line: 73, column: 23, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !493, line: 73, column: 5)
!1539 = !DILocation(line: 73, column: 5, scope: !1533)
!1540 = !DILocation(line: 74, column: 27, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !493, line: 73, column: 41)
!1542 = !DILocation(line: 74, column: 33, scope: !1541)
!1543 = !DILocation(line: 74, column: 21, scope: !1541)
!1544 = !DILocation(line: 74, column: 15, scope: !1541)
!1545 = !DILocation(line: 73, column: 28, scope: !1538)
!1546 = !DILocation(line: 73, column: 35, scope: !1538)
!1547 = !DILocation(line: 73, column: 5, scope: !1538)
!1548 = distinct !{!1548, !1539, !1549, !303}
!1549 = !DILocation(line: 75, column: 5, scope: !1533)
!1550 = !DILocation(line: 76, column: 5, scope: !1523)
!1551 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1516, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1552 = !DILocalVariable(name: "a", arg: 1, scope: !1551, file: !493, line: 9, type: !14)
!1553 = !DILocation(line: 0, scope: !1551)
!1554 = !DILocalVariable(name: "b", arg: 2, scope: !1551, file: !493, line: 9, type: !14)
!1555 = !DILocation(line: 14, column: 10, scope: !1551)
!1556 = !DILocation(line: 14, column: 7, scope: !1551)
!1557 = !DILocation(line: 17, column: 17, scope: !1551)
!1558 = !DILocalVariable(name: "p", scope: !1551, file: !493, line: 11, type: !14)
!1559 = !DILocation(line: 18, column: 13, scope: !1551)
!1560 = !DILocation(line: 18, column: 17, scope: !1551)
!1561 = !DILocation(line: 18, column: 7, scope: !1551)
!1562 = !DILocation(line: 19, column: 13, scope: !1551)
!1563 = !DILocation(line: 19, column: 17, scope: !1551)
!1564 = !DILocation(line: 19, column: 7, scope: !1551)
!1565 = !DILocation(line: 20, column: 13, scope: !1551)
!1566 = !DILocation(line: 20, column: 17, scope: !1551)
!1567 = !DILocation(line: 20, column: 7, scope: !1551)
!1568 = !DILocalVariable(name: "top_p", scope: !1551, file: !493, line: 23, type: !14)
!1569 = !DILocation(line: 24, column: 37, scope: !1551)
!1570 = !DILocation(line: 24, column: 52, scope: !1551)
!1571 = !DILocation(line: 24, column: 43, scope: !1551)
!1572 = !DILocation(line: 24, column: 59, scope: !1551)
!1573 = !DILocalVariable(name: "out", scope: !1551, file: !493, line: 24, type: !14)
!1574 = !DILocation(line: 25, column: 5, scope: !1551)
!1575 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1576 = !DILocation(line: 0, scope: !24)
!1577 = !DILocalVariable(name: "i", scope: !1578, file: !25, line: 117, type: !15)
!1578 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1579 = !DILocation(line: 0, scope: !1578)
!1580 = !DILocation(line: 117, column: 10, scope: !1578)
!1581 = !DILocation(line: 117, scope: !1578)
!1582 = !DILocation(line: 117, column: 26, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !25, line: 117, column: 5)
!1584 = !DILocation(line: 117, column: 5, scope: !1578)
!1585 = !DILocation(line: 124, column: 5, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1587 = !DILocation(line: 119, column: 24, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !25, line: 118, column: 5)
!1589 = !DILocation(line: 119, column: 29, scope: !1588)
!1590 = !DILocation(line: 119, column: 41, scope: !1588)
!1591 = !DILocation(line: 119, column: 38, scope: !1588)
!1592 = !DILocation(line: 119, column: 36, scope: !1588)
!1593 = !DILocation(line: 119, column: 46, scope: !1588)
!1594 = !DILocalVariable(name: "t", scope: !1588, file: !25, line: 119, type: !6)
!1595 = !DILocation(line: 0, scope: !1588)
!1596 = !DILocation(line: 120, column: 21, scope: !1588)
!1597 = !DILocation(line: 120, column: 9, scope: !1588)
!1598 = !DILocation(line: 120, column: 16, scope: !1588)
!1599 = !DILocation(line: 121, column: 12, scope: !1588)
!1600 = !DILocation(line: 121, column: 9, scope: !1588)
!1601 = !DILocation(line: 121, column: 16, scope: !1588)
!1602 = !DILocation(line: 117, column: 33, scope: !1583)
!1603 = !DILocation(line: 117, column: 5, scope: !1583)
!1604 = distinct !{!1604, !1584, !1605, !303}
!1605 = !DILocation(line: 122, column: 5, scope: !1578)
!1606 = !DILocation(line: 124, scope: !1586)
!1607 = !DILocalVariable(name: "i", scope: !1586, file: !25, line: 124, type: !15)
!1608 = !DILocation(line: 0, scope: !1586)
!1609 = !DILocation(line: 124, column: 26, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1586, file: !25, line: 124, column: 5)
!1611 = !DILocation(line: 134, column: 5, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1613 = !DILocation(line: 126, column: 25, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !25, line: 125, column: 5)
!1615 = !DILocation(line: 126, column: 32, scope: !1614)
!1616 = !DILocation(line: 126, column: 43, scope: !1614)
!1617 = !DILocation(line: 126, column: 40, scope: !1614)
!1618 = !DILocation(line: 126, column: 38, scope: !1614)
!1619 = !DILocation(line: 126, column: 48, scope: !1614)
!1620 = !DILocalVariable(name: "t0", scope: !1614, file: !25, line: 126, type: !6)
!1621 = !DILocation(line: 0, scope: !1614)
!1622 = !DILocation(line: 127, column: 28, scope: !1614)
!1623 = !DILocation(line: 127, column: 25, scope: !1614)
!1624 = !DILocation(line: 127, column: 32, scope: !1614)
!1625 = !DILocation(line: 127, column: 43, scope: !1614)
!1626 = !DILocation(line: 127, column: 40, scope: !1614)
!1627 = !DILocation(line: 127, column: 38, scope: !1614)
!1628 = !DILocation(line: 127, column: 48, scope: !1614)
!1629 = !DILocalVariable(name: "t1", scope: !1614, file: !25, line: 127, type: !6)
!1630 = !DILocation(line: 128, column: 23, scope: !1614)
!1631 = !DILocation(line: 128, column: 9, scope: !1614)
!1632 = !DILocation(line: 128, column: 16, scope: !1614)
!1633 = !DILocation(line: 129, column: 23, scope: !1614)
!1634 = !DILocation(line: 129, column: 12, scope: !1614)
!1635 = !DILocation(line: 129, column: 9, scope: !1614)
!1636 = !DILocation(line: 129, column: 16, scope: !1614)
!1637 = !DILocation(line: 130, column: 12, scope: !1614)
!1638 = !DILocation(line: 130, column: 9, scope: !1614)
!1639 = !DILocation(line: 130, column: 16, scope: !1614)
!1640 = !DILocation(line: 131, column: 12, scope: !1614)
!1641 = !DILocation(line: 131, column: 9, scope: !1614)
!1642 = !DILocation(line: 131, column: 16, scope: !1614)
!1643 = !DILocation(line: 124, column: 33, scope: !1610)
!1644 = !DILocation(line: 124, column: 5, scope: !1610)
!1645 = distinct !{!1645, !1585, !1646, !303}
!1646 = !DILocation(line: 132, column: 5, scope: !1586)
!1647 = !DILocation(line: 134, scope: !1612)
!1648 = !DILocalVariable(name: "i", scope: !1612, file: !25, line: 134, type: !15)
!1649 = !DILocation(line: 0, scope: !1612)
!1650 = !DILocation(line: 134, column: 26, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1612, file: !25, line: 134, column: 5)
!1652 = !DILocation(line: 145, column: 5, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1654 = !DILocation(line: 136, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !25, line: 135, column: 5)
!1656 = !DILocation(line: 136, column: 32, scope: !1655)
!1657 = !DILocation(line: 136, column: 44, scope: !1655)
!1658 = !DILocation(line: 136, column: 41, scope: !1655)
!1659 = !DILocation(line: 136, column: 39, scope: !1655)
!1660 = !DILocation(line: 136, column: 50, scope: !1655)
!1661 = !DILocalVariable(name: "t0", scope: !1655, file: !25, line: 136, type: !6)
!1662 = !DILocation(line: 0, scope: !1655)
!1663 = !DILocation(line: 137, column: 28, scope: !1655)
!1664 = !DILocation(line: 137, column: 25, scope: !1655)
!1665 = !DILocation(line: 137, column: 32, scope: !1655)
!1666 = !DILocation(line: 137, column: 44, scope: !1655)
!1667 = !DILocation(line: 137, column: 41, scope: !1655)
!1668 = !DILocation(line: 137, column: 39, scope: !1655)
!1669 = !DILocation(line: 137, column: 50, scope: !1655)
!1670 = !DILocalVariable(name: "t1", scope: !1655, file: !25, line: 137, type: !6)
!1671 = !DILocation(line: 139, column: 23, scope: !1655)
!1672 = !DILocation(line: 139, column: 9, scope: !1655)
!1673 = !DILocation(line: 139, column: 17, scope: !1655)
!1674 = !DILocation(line: 140, column: 23, scope: !1655)
!1675 = !DILocation(line: 140, column: 12, scope: !1655)
!1676 = !DILocation(line: 140, column: 9, scope: !1655)
!1677 = !DILocation(line: 140, column: 17, scope: !1655)
!1678 = !DILocation(line: 141, column: 12, scope: !1655)
!1679 = !DILocation(line: 141, column: 9, scope: !1655)
!1680 = !DILocation(line: 141, column: 17, scope: !1655)
!1681 = !DILocation(line: 142, column: 12, scope: !1655)
!1682 = !DILocation(line: 142, column: 9, scope: !1655)
!1683 = !DILocation(line: 142, column: 17, scope: !1655)
!1684 = !DILocation(line: 134, column: 32, scope: !1651)
!1685 = !DILocation(line: 134, column: 5, scope: !1651)
!1686 = distinct !{!1686, !1611, !1687, !303}
!1687 = !DILocation(line: 143, column: 5, scope: !1612)
!1688 = !DILocation(line: 145, scope: !1653)
!1689 = !DILocalVariable(name: "i", scope: !1653, file: !25, line: 145, type: !15)
!1690 = !DILocation(line: 0, scope: !1653)
!1691 = !DILocation(line: 145, column: 26, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1653, file: !25, line: 145, column: 5)
!1693 = !DILocation(line: 147, column: 24, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1692, file: !25, line: 146, column: 5)
!1695 = !DILocation(line: 147, column: 28, scope: !1694)
!1696 = !DILocation(line: 147, column: 39, scope: !1694)
!1697 = !DILocation(line: 147, column: 36, scope: !1694)
!1698 = !DILocation(line: 147, column: 44, scope: !1694)
!1699 = !DILocalVariable(name: "t", scope: !1694, file: !25, line: 147, type: !6)
!1700 = !DILocation(line: 0, scope: !1694)
!1701 = !DILocation(line: 148, column: 21, scope: !1694)
!1702 = !DILocation(line: 148, column: 9, scope: !1694)
!1703 = !DILocation(line: 148, column: 16, scope: !1694)
!1704 = !DILocation(line: 149, column: 12, scope: !1694)
!1705 = !DILocation(line: 149, column: 9, scope: !1694)
!1706 = !DILocation(line: 149, column: 16, scope: !1694)
!1707 = !DILocation(line: 145, column: 32, scope: !1692)
!1708 = !DILocation(line: 145, column: 5, scope: !1692)
!1709 = distinct !{!1709, !1652, !1710, !303}
!1710 = !DILocation(line: 150, column: 5, scope: !1653)
!1711 = !DILocation(line: 151, column: 1, scope: !24)
!1712 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1713 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1712, file: !323, line: 61, type: !239)
!1714 = !DILocation(line: 0, scope: !1712)
!1715 = !DILocalVariable(name: "mat", arg: 2, scope: !1712, file: !323, line: 61, type: !49)
!1716 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1712, file: !323, line: 61, type: !326)
!1717 = !DILocalVariable(name: "acc", arg: 4, scope: !1712, file: !323, line: 61, type: !5)
!1718 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1712, file: !323, line: 62, type: !239)
!1719 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1712, file: !323, line: 62, type: !239)
!1720 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1712, file: !323, line: 62, type: !239)
!1721 = !DILocalVariable(name: "r", scope: !1722, file: !323, line: 64, type: !45)
!1722 = distinct !DILexicalBlock(scope: !1712, file: !323, line: 64, column: 5)
!1723 = !DILocation(line: 0, scope: !1722)
!1724 = !DILocation(line: 64, column: 10, scope: !1722)
!1725 = !DILocation(line: 64, scope: !1722)
!1726 = !DILocation(line: 64, column: 23, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !323, line: 64, column: 5)
!1728 = !DILocation(line: 64, column: 5, scope: !1722)
!1729 = !DILocation(line: 65, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !323, line: 65, column: 9)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !323, line: 64, column: 40)
!1732 = !DILocation(line: 65, scope: !1730)
!1733 = !DILocalVariable(name: "c", scope: !1730, file: !323, line: 65, type: !45)
!1734 = !DILocation(line: 0, scope: !1730)
!1735 = !DILocation(line: 65, column: 27, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !323, line: 65, column: 9)
!1737 = !DILocation(line: 66, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !323, line: 66, column: 13)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !323, line: 65, column: 44)
!1740 = !DILocation(line: 66, scope: !1738)
!1741 = !DILocalVariable(name: "k", scope: !1738, file: !323, line: 66, type: !45)
!1742 = !DILocation(line: 0, scope: !1738)
!1743 = !DILocation(line: 66, column: 31, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1738, file: !323, line: 66, column: 13)
!1745 = !DILocation(line: 67, column: 70, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1744, file: !323, line: 66, column: 54)
!1747 = !DILocation(line: 67, column: 84, scope: !1746)
!1748 = !DILocation(line: 67, column: 51, scope: !1746)
!1749 = !DILocation(line: 67, column: 96, scope: !1746)
!1750 = !DILocation(line: 67, column: 90, scope: !1746)
!1751 = !DILocation(line: 67, column: 136, scope: !1746)
!1752 = !DILocation(line: 67, column: 150, scope: !1746)
!1753 = !DILocation(line: 67, column: 117, scope: !1746)
!1754 = !DILocation(line: 67, column: 17, scope: !1746)
!1755 = !DILocation(line: 66, column: 48, scope: !1744)
!1756 = !DILocation(line: 66, column: 13, scope: !1744)
!1757 = distinct !{!1757, !1737, !1758, !303}
!1758 = !DILocation(line: 68, column: 13, scope: !1738)
!1759 = !DILocation(line: 65, column: 40, scope: !1736)
!1760 = !DILocation(line: 65, column: 9, scope: !1736)
!1761 = distinct !{!1761, !1729, !1762, !303}
!1762 = !DILocation(line: 69, column: 9, scope: !1730)
!1763 = !DILocation(line: 64, column: 36, scope: !1727)
!1764 = !DILocation(line: 64, column: 5, scope: !1727)
!1765 = distinct !{!1765, !1728, !1766, !303}
!1766 = !DILocation(line: 70, column: 5, scope: !1722)
!1767 = !DILocation(line: 71, column: 1, scope: !1712)
!1768 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1769 = !DILocalVariable(name: "p", arg: 1, scope: !1768, file: !323, line: 82, type: !174)
!1770 = !DILocation(line: 0, scope: !1768)
!1771 = !DILocalVariable(name: "P1", arg: 2, scope: !1768, file: !323, line: 82, type: !326)
!1772 = !DILocalVariable(name: "V", arg: 3, scope: !1768, file: !323, line: 82, type: !49)
!1773 = !DILocalVariable(name: "acc", arg: 4, scope: !1768, file: !323, line: 82, type: !5)
!1774 = !DILocation(line: 86, column: 5, scope: !1768)
!1775 = !DILocation(line: 87, column: 1, scope: !1768)
!1776 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1777 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1776, file: !323, line: 32, type: !239)
!1778 = !DILocation(line: 0, scope: !1776)
!1779 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1776, file: !323, line: 32, type: !326)
!1780 = !DILocalVariable(name: "mat", arg: 3, scope: !1776, file: !323, line: 32, type: !49)
!1781 = !DILocalVariable(name: "acc", arg: 4, scope: !1776, file: !323, line: 32, type: !5)
!1782 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1776, file: !323, line: 33, type: !239)
!1783 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1776, file: !323, line: 33, type: !239)
!1784 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1776, file: !323, line: 33, type: !239)
!1785 = !DILocalVariable(name: "triangular", arg: 8, scope: !1776, file: !323, line: 33, type: !239)
!1786 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1776, file: !323, line: 34, type: !45)
!1787 = !DILocalVariable(name: "r", scope: !1788, file: !323, line: 35, type: !45)
!1788 = distinct !DILexicalBlock(scope: !1776, file: !323, line: 35, column: 5)
!1789 = !DILocation(line: 0, scope: !1788)
!1790 = !DILocation(line: 35, column: 10, scope: !1788)
!1791 = !DILocation(line: 34, column: 9, scope: !1776)
!1792 = !DILocation(line: 35, scope: !1788)
!1793 = !DILocation(line: 35, column: 23, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1788, file: !323, line: 35, column: 5)
!1795 = !DILocation(line: 35, column: 5, scope: !1788)
!1796 = !DILocation(line: 36, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !323, line: 36, column: 9)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !323, line: 35, column: 43)
!1799 = !DILocation(line: 36, scope: !1797)
!1800 = !DILocalVariable(name: "c", scope: !1797, file: !323, line: 36, type: !45)
!1801 = !DILocation(line: 0, scope: !1797)
!1802 = !DILocation(line: 36, column: 40, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1797, file: !323, line: 36, column: 9)
!1804 = !DILocation(line: 37, column: 13, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !323, line: 37, column: 13)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !323, line: 36, column: 60)
!1807 = !DILocation(line: 37, scope: !1805)
!1808 = !DILocalVariable(name: "k", scope: !1805, file: !323, line: 37, type: !45)
!1809 = !DILocation(line: 0, scope: !1805)
!1810 = !DILocation(line: 37, column: 31, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !323, line: 37, column: 13)
!1812 = !DILocation(line: 38, column: 51, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1811, file: !323, line: 37, column: 51)
!1814 = !DILocation(line: 38, column: 94, scope: !1813)
!1815 = !DILocation(line: 38, column: 88, scope: !1813)
!1816 = !DILocation(line: 38, column: 132, scope: !1813)
!1817 = !DILocation(line: 38, column: 118, scope: !1813)
!1818 = !DILocation(line: 38, column: 17, scope: !1813)
!1819 = !DILocation(line: 37, column: 45, scope: !1811)
!1820 = !DILocation(line: 37, column: 13, scope: !1811)
!1821 = distinct !{!1821, !1804, !1822, !303}
!1822 = !DILocation(line: 39, column: 13, scope: !1805)
!1823 = !DILocation(line: 40, column: 33, scope: !1806)
!1824 = !DILocation(line: 36, column: 56, scope: !1803)
!1825 = !DILocation(line: 36, column: 9, scope: !1803)
!1826 = distinct !{!1826, !1796, !1827, !303}
!1827 = !DILocation(line: 41, column: 9, scope: !1797)
!1828 = !DILocation(line: 35, column: 39, scope: !1794)
!1829 = !DILocation(line: 35, column: 5, scope: !1794)
!1830 = distinct !{!1830, !1795, !1831, !303}
!1831 = !DILocation(line: 42, column: 5, scope: !1788)
!1832 = !DILocation(line: 43, column: 1, scope: !1776)
!1833 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !698, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1834 = !DILocalVariable(name: "p", arg: 1, scope: !1833, file: !25, line: 502, type: !174)
!1835 = !DILocation(line: 0, scope: !1833)
!1836 = !DILocalVariable(name: "sm", arg: 2, scope: !1833, file: !25, line: 502, type: !18)
!1837 = !DILocalVariable(name: "smlen", arg: 3, scope: !1833, file: !25, line: 503, type: !700)
!1838 = !DILocalVariable(name: "m", arg: 4, scope: !1833, file: !25, line: 503, type: !49)
!1839 = !DILocalVariable(name: "mlen", arg: 5, scope: !1833, file: !25, line: 504, type: !15)
!1840 = !DILocalVariable(name: "csk", arg: 6, scope: !1833, file: !25, line: 504, type: !49)
!1841 = !DILocalVariable(name: "ret", scope: !1833, file: !25, line: 505, type: !45)
!1842 = !DILocalVariable(name: "param_sig_bytes", scope: !1833, file: !25, line: 506, type: !239)
!1843 = !DILocation(line: 508, column: 16, scope: !1833)
!1844 = !DILocation(line: 508, column: 5, scope: !1833)
!1845 = !DILocation(line: 509, column: 50, scope: !1833)
!1846 = !DILocalVariable(name: "siglen", scope: !1833, file: !25, line: 507, type: !15)
!1847 = !DILocation(line: 509, column: 11, scope: !1833)
!1848 = !DILocation(line: 510, column: 13, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1833, file: !25, line: 510, column: 9)
!1850 = !DILocation(line: 510, column: 24, scope: !1849)
!1851 = !DILocation(line: 511, column: 23, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !25, line: 510, column: 62)
!1853 = !DILocation(line: 511, column: 30, scope: !1852)
!1854 = !DILocation(line: 511, column: 9, scope: !1852)
!1855 = !DILocation(line: 512, column: 9, scope: !1852)
!1856 = !DILocation(line: 515, column: 14, scope: !1833)
!1857 = !DILocation(line: 515, column: 21, scope: !1833)
!1858 = !DILocation(line: 515, column: 12, scope: !1833)
!1859 = !DILocation(line: 515, column: 5, scope: !1833)
!1860 = !DILabel(scope: !1833, name: "err", file: !25, line: 516)
!1861 = !DILocation(line: 516, column: 1, scope: !1833)
!1862 = !DILocation(line: 517, column: 5, scope: !1833)
!1863 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_open", scope: !25, file: !25, line: 520, type: !698, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1864 = !DILocalVariable(name: "p", arg: 1, scope: !1863, file: !25, line: 520, type: !174)
!1865 = !DILocation(line: 0, scope: !1863)
!1866 = !DILocalVariable(name: "m", arg: 2, scope: !1863, file: !25, line: 520, type: !18)
!1867 = !DILocalVariable(name: "mlen", arg: 3, scope: !1863, file: !25, line: 521, type: !700)
!1868 = !DILocalVariable(name: "sm", arg: 4, scope: !1863, file: !25, line: 521, type: !49)
!1869 = !DILocalVariable(name: "smlen", arg: 5, scope: !1863, file: !25, line: 522, type: !15)
!1870 = !DILocalVariable(name: "pk", arg: 6, scope: !1863, file: !25, line: 522, type: !49)
!1871 = !DILocalVariable(name: "param_sig_bytes", scope: !1863, file: !25, line: 523, type: !239)
!1872 = !DILocation(line: 524, column: 15, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1863, file: !25, line: 524, column: 9)
!1874 = !DILocation(line: 527, column: 36, scope: !1863)
!1875 = !DILocation(line: 527, column: 61, scope: !1863)
!1876 = !DILocation(line: 527, column: 18, scope: !1863)
!1877 = !DILocalVariable(name: "result", scope: !1863, file: !25, line: 527, type: !45)
!1878 = !DILocation(line: 530, column: 16, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1863, file: !25, line: 530, column: 9)
!1880 = !DILocation(line: 531, column: 23, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1879, file: !25, line: 530, column: 28)
!1882 = !DILocation(line: 531, column: 15, scope: !1881)
!1883 = !DILocation(line: 532, column: 23, scope: !1881)
!1884 = !DILocation(line: 532, column: 9, scope: !1881)
!1885 = !DILocation(line: 533, column: 5, scope: !1881)
!1886 = !DILocation(line: 536, column: 1, scope: !1863)
!1887 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1888, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!45, !174, !49, !15, !49, !49}
!1890 = !DILocalVariable(name: "p", arg: 1, scope: !1887, file: !25, line: 617, type: !174)
!1891 = !DILocation(line: 0, scope: !1887)
!1892 = !DILocalVariable(name: "m", arg: 2, scope: !1887, file: !25, line: 617, type: !49)
!1893 = !DILocalVariable(name: "mlen", arg: 3, scope: !1887, file: !25, line: 618, type: !15)
!1894 = !DILocalVariable(name: "sig", arg: 4, scope: !1887, file: !25, line: 618, type: !49)
!1895 = !DILocalVariable(name: "cpk", arg: 5, scope: !1887, file: !25, line: 619, type: !49)
!1896 = !DILocalVariable(name: "tEnc", scope: !1887, file: !25, line: 620, type: !138)
!1897 = !DILocation(line: 620, column: 19, scope: !1887)
!1898 = !DILocalVariable(name: "t", scope: !1887, file: !25, line: 621, type: !712)
!1899 = !DILocation(line: 621, column: 19, scope: !1887)
!1900 = !DILocalVariable(name: "y", scope: !1887, file: !25, line: 622, type: !1901)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !1902)
!1902 = !{!1903}
!1903 = !DISubrange(count: 128)
!1904 = !DILocation(line: 622, column: 19, scope: !1887)
!1905 = !DILocalVariable(name: "s", scope: !1887, file: !25, line: 623, type: !739)
!1906 = !DILocation(line: 623, column: 19, scope: !1887)
!1907 = !DILocalVariable(name: "pk", scope: !1887, file: !25, line: 624, type: !123)
!1908 = !DILocation(line: 624, column: 14, scope: !1887)
!1909 = !DILocalVariable(name: "tmp", scope: !1887, file: !25, line: 625, type: !1910)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1911)
!1911 = !{!1912}
!1912 = !DISubrange(count: 56)
!1913 = !DILocation(line: 625, column: 19, scope: !1887)
!1914 = !DILocalVariable(name: "param_m", scope: !1887, file: !25, line: 627, type: !239)
!1915 = !DILocalVariable(name: "param_n", scope: !1887, file: !25, line: 628, type: !239)
!1916 = !DILocalVariable(name: "param_k", scope: !1887, file: !25, line: 629, type: !239)
!1917 = !DILocalVariable(name: "param_m_bytes", scope: !1887, file: !25, line: 630, type: !239)
!1918 = !DILocalVariable(name: "param_sig_bytes", scope: !1887, file: !25, line: 631, type: !239)
!1919 = !DILocalVariable(name: "param_digest_bytes", scope: !1887, file: !25, line: 632, type: !239)
!1920 = !DILocalVariable(name: "param_salt_bytes", scope: !1887, file: !25, line: 633, type: !239)
!1921 = !DILocation(line: 635, column: 15, scope: !1887)
!1922 = !DILocalVariable(name: "ret", scope: !1887, file: !25, line: 635, type: !45)
!1923 = !DILocalVariable(name: "P1", scope: !1887, file: !25, line: 640, type: !5)
!1924 = !DILocation(line: 641, column: 23, scope: !1887)
!1925 = !DILocalVariable(name: "P2", scope: !1887, file: !25, line: 641, type: !5)
!1926 = !DILocation(line: 642, column: 23, scope: !1887)
!1927 = !DILocalVariable(name: "P3", scope: !1887, file: !25, line: 642, type: !5)
!1928 = !DILocation(line: 657, column: 5, scope: !1887)
!1929 = !DILocation(line: 660, column: 16, scope: !1887)
!1930 = !DILocation(line: 660, column: 60, scope: !1887)
!1931 = !DILocation(line: 660, column: 5, scope: !1887)
!1932 = !DILocation(line: 662, column: 5, scope: !1887)
!1933 = !DILocation(line: 663, column: 5, scope: !1887)
!1934 = !DILocation(line: 666, column: 5, scope: !1887)
!1935 = !DILocation(line: 668, column: 5, scope: !1887)
!1936 = !DILocation(line: 670, column: 9, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1887, file: !25, line: 670, column: 9)
!1938 = !DILocation(line: 670, column: 31, scope: !1937)
!1939 = !DILocation(line: 674, column: 1, scope: !1887)
!1940 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !601, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1941 = !DILocalVariable(name: "p", arg: 1, scope: !1940, file: !25, line: 608, type: !174)
!1942 = !DILocation(line: 0, scope: !1940)
!1943 = !DILocalVariable(name: "cpk", arg: 2, scope: !1940, file: !25, line: 608, type: !49)
!1944 = !DILocalVariable(name: "pk", arg: 3, scope: !1940, file: !25, line: 609, type: !5)
!1945 = !DILocation(line: 610, column: 5, scope: !1940)
!1946 = !DILocation(line: 612, column: 23, scope: !1940)
!1947 = !DILocation(line: 612, column: 72, scope: !1940)
!1948 = !DILocation(line: 612, column: 5, scope: !1940)
!1949 = !DILocation(line: 614, column: 5, scope: !1940)
!1950 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1951, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !174, !49, !326, !326, !326, !18}
!1953 = !DILocalVariable(name: "p", arg: 1, scope: !1950, file: !25, line: 288, type: !174)
!1954 = !DILocation(line: 0, scope: !1950)
!1955 = !DILocalVariable(name: "s", arg: 2, scope: !1950, file: !25, line: 288, type: !49)
!1956 = !DILocalVariable(name: "P1", arg: 3, scope: !1950, file: !25, line: 288, type: !326)
!1957 = !DILocalVariable(name: "P2", arg: 4, scope: !1950, file: !25, line: 288, type: !326)
!1958 = !DILocalVariable(name: "P3", arg: 5, scope: !1950, file: !25, line: 288, type: !326)
!1959 = !DILocalVariable(name: "eval", arg: 6, scope: !1950, file: !25, line: 288, type: !18)
!1960 = !DILocalVariable(name: "SPS", scope: !1950, file: !25, line: 289, type: !1961)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, elements: !713)
!1962 = !DILocation(line: 289, column: 14, scope: !1950)
!1963 = !DILocation(line: 291, column: 5, scope: !1950)
!1964 = !DILocalVariable(name: "zero", scope: !1950, file: !25, line: 292, type: !712)
!1965 = !DILocation(line: 292, column: 19, scope: !1950)
!1966 = !DILocation(line: 293, column: 5, scope: !1950)
!1967 = !DILocation(line: 294, column: 1, scope: !1950)
!1968 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !1969, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !174, !326, !326, !326, !49, !5}
!1971 = !DILocalVariable(name: "p", arg: 1, scope: !1968, file: !323, line: 277, type: !174)
!1972 = !DILocation(line: 0, scope: !1968)
!1973 = !DILocalVariable(name: "P1", arg: 2, scope: !1968, file: !323, line: 277, type: !326)
!1974 = !DILocalVariable(name: "P2", arg: 3, scope: !1968, file: !323, line: 277, type: !326)
!1975 = !DILocalVariable(name: "P3", arg: 4, scope: !1968, file: !323, line: 277, type: !326)
!1976 = !DILocalVariable(name: "s", arg: 5, scope: !1968, file: !323, line: 277, type: !49)
!1977 = !DILocalVariable(name: "SPS", arg: 6, scope: !1968, file: !323, line: 278, type: !5)
!1978 = !DILocalVariable(name: "PS", scope: !1968, file: !323, line: 286, type: !1979)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 1296)
!1982 = !DILocation(line: 286, column: 14, scope: !1968)
!1983 = !DILocation(line: 287, column: 5, scope: !1968)
!1984 = !DILocation(line: 290, column: 5, scope: !1968)
!1985 = !DILocation(line: 292, column: 1, scope: !1968)
!1986 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !1987, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!1989 = !DILocalVariable(name: "P1", arg: 1, scope: !1986, file: !323, line: 151, type: !326)
!1990 = !DILocation(line: 0, scope: !1986)
!1991 = !DILocalVariable(name: "P2", arg: 2, scope: !1986, file: !323, line: 151, type: !326)
!1992 = !DILocalVariable(name: "P3", arg: 3, scope: !1986, file: !323, line: 151, type: !326)
!1993 = !DILocalVariable(name: "S", arg: 4, scope: !1986, file: !323, line: 151, type: !49)
!1994 = !DILocalVariable(name: "m", arg: 5, scope: !1986, file: !323, line: 152, type: !239)
!1995 = !DILocalVariable(name: "v", arg: 6, scope: !1986, file: !323, line: 152, type: !239)
!1996 = !DILocalVariable(name: "o", arg: 7, scope: !1986, file: !323, line: 152, type: !239)
!1997 = !DILocalVariable(name: "k", arg: 8, scope: !1986, file: !323, line: 152, type: !239)
!1998 = !DILocalVariable(name: "PS", arg: 9, scope: !1986, file: !323, line: 152, type: !5)
!1999 = !DILocalVariable(name: "n", scope: !1986, file: !323, line: 154, type: !239)
!2000 = !DILocalVariable(name: "m_vec_limbs", scope: !1986, file: !323, line: 155, type: !239)
!2001 = !DILocalVariable(name: "accumulator", scope: !1986, file: !323, line: 157, type: !2002)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2003)
!2003 = !{!2004}
!2004 = !DISubrange(count: 20736)
!2005 = !DILocation(line: 157, column: 14, scope: !1986)
!2006 = !DILocalVariable(name: "P1_used", scope: !1986, file: !323, line: 158, type: !45)
!2007 = !DILocalVariable(name: "row", scope: !2008, file: !323, line: 159, type: !45)
!2008 = distinct !DILexicalBlock(scope: !1986, file: !323, line: 159, column: 5)
!2009 = !DILocation(line: 0, scope: !2008)
!2010 = !DILocation(line: 159, column: 10, scope: !2008)
!2011 = !DILocation(line: 158, column: 9, scope: !1986)
!2012 = !DILocation(line: 159, scope: !2008)
!2013 = !DILocation(line: 159, column: 27, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2008, file: !323, line: 159, column: 5)
!2015 = !DILocation(line: 159, column: 5, scope: !2008)
!2016 = !DILocation(line: 160, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !323, line: 160, column: 9)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !323, line: 159, column: 39)
!2019 = !DILocation(line: 175, column: 5, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1986, file: !323, line: 175, column: 5)
!2021 = !DILocation(line: 160, scope: !2017)
!2022 = !DILocalVariable(name: "j", scope: !2017, file: !323, line: 160, type: !45)
!2023 = !DILocation(line: 0, scope: !2017)
!2024 = !DILocation(line: 160, column: 29, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !323, line: 160, column: 9)
!2026 = !DILocation(line: 167, column: 9, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2018, file: !323, line: 167, column: 9)
!2028 = !DILocation(line: 161, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !323, line: 161, column: 13)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !323, line: 160, column: 39)
!2031 = !DILocation(line: 161, scope: !2029)
!2032 = !DILocalVariable(name: "col", scope: !2029, file: !323, line: 161, type: !45)
!2033 = !DILocation(line: 0, scope: !2029)
!2034 = !DILocation(line: 161, column: 35, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !323, line: 161, column: 13)
!2036 = !DILocation(line: 162, column: 43, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2035, file: !323, line: 161, column: 47)
!2038 = !DILocation(line: 162, column: 102, scope: !2037)
!2039 = !DILocation(line: 162, column: 115, scope: !2037)
!2040 = !DILocation(line: 162, column: 109, scope: !2037)
!2041 = !DILocation(line: 162, column: 107, scope: !2037)
!2042 = !DILocation(line: 162, column: 82, scope: !2037)
!2043 = !DILocation(line: 162, column: 17, scope: !2037)
!2044 = !DILocation(line: 161, column: 43, scope: !2035)
!2045 = !DILocation(line: 161, column: 13, scope: !2035)
!2046 = distinct !{!2046, !2028, !2047, !303}
!2047 = !DILocation(line: 163, column: 13, scope: !2029)
!2048 = !DILocation(line: 164, column: 21, scope: !2030)
!2049 = !DILocation(line: 160, column: 35, scope: !2025)
!2050 = !DILocation(line: 160, column: 9, scope: !2025)
!2051 = distinct !{!2051, !2016, !2052, !303}
!2052 = !DILocation(line: 165, column: 9, scope: !2017)
!2053 = !DILocation(line: 167, scope: !2027)
!2054 = !DILocalVariable(name: "j", scope: !2027, file: !323, line: 167, type: !45)
!2055 = !DILocation(line: 0, scope: !2027)
!2056 = !DILocation(line: 167, column: 27, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2027, file: !323, line: 167, column: 9)
!2058 = !DILocation(line: 168, column: 13, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !323, line: 168, column: 13)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !323, line: 167, column: 37)
!2061 = !DILocation(line: 168, scope: !2059)
!2062 = !DILocalVariable(name: "col", scope: !2059, file: !323, line: 168, type: !45)
!2063 = !DILocation(line: 0, scope: !2059)
!2064 = !DILocation(line: 168, column: 35, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2059, file: !323, line: 168, column: 13)
!2066 = !DILocation(line: 169, column: 50, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2065, file: !323, line: 168, column: 47)
!2068 = !DILocation(line: 169, column: 54, scope: !2067)
!2069 = !DILocation(line: 169, column: 43, scope: !2067)
!2070 = !DILocation(line: 169, column: 104, scope: !2067)
!2071 = !DILocation(line: 169, column: 118, scope: !2067)
!2072 = !DILocation(line: 169, column: 111, scope: !2067)
!2073 = !DILocation(line: 169, column: 109, scope: !2067)
!2074 = !DILocation(line: 169, column: 84, scope: !2067)
!2075 = !DILocation(line: 169, column: 17, scope: !2067)
!2076 = !DILocation(line: 168, column: 43, scope: !2065)
!2077 = !DILocation(line: 168, column: 13, scope: !2065)
!2078 = distinct !{!2078, !2058, !2079, !303}
!2079 = !DILocation(line: 170, column: 13, scope: !2059)
!2080 = !DILocation(line: 167, column: 33, scope: !2057)
!2081 = !DILocation(line: 167, column: 9, scope: !2057)
!2082 = distinct !{!2082, !2026, !2083, !303}
!2083 = !DILocation(line: 171, column: 9, scope: !2027)
!2084 = !DILocation(line: 159, column: 35, scope: !2014)
!2085 = !DILocation(line: 159, column: 5, scope: !2014)
!2086 = distinct !{!2086, !2015, !2087, !303}
!2087 = !DILocation(line: 172, column: 5, scope: !2008)
!2088 = !DILocation(line: 174, column: 9, scope: !1986)
!2089 = !DILocation(line: 175, scope: !2020)
!2090 = !DILocalVariable(name: "row", scope: !2020, file: !323, line: 175, type: !45)
!2091 = !DILocation(line: 0, scope: !2020)
!2092 = !DILocalVariable(name: "P3_used", scope: !1986, file: !323, line: 174, type: !45)
!2093 = !DILocation(line: 175, column: 27, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2020, file: !323, line: 175, column: 5)
!2095 = !DILocation(line: 176, column: 9, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !323, line: 176, column: 9)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !323, line: 175, column: 39)
!2098 = !DILocation(line: 186, column: 5, scope: !1986)
!2099 = !DILocation(line: 176, scope: !2096)
!2100 = !DILocalVariable(name: "j", scope: !2096, file: !323, line: 176, type: !45)
!2101 = !DILocation(line: 0, scope: !2096)
!2102 = !DILocation(line: 176, column: 29, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2096, file: !323, line: 176, column: 9)
!2104 = !DILocation(line: 177, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !323, line: 177, column: 13)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !323, line: 176, column: 39)
!2107 = !DILocation(line: 177, scope: !2105)
!2108 = !DILocalVariable(name: "col", scope: !2105, file: !323, line: 177, type: !45)
!2109 = !DILocation(line: 0, scope: !2105)
!2110 = !DILocation(line: 177, column: 35, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !323, line: 177, column: 13)
!2112 = !DILocation(line: 178, column: 43, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2111, file: !323, line: 177, column: 47)
!2114 = !DILocation(line: 178, column: 100, scope: !2113)
!2115 = !DILocation(line: 178, column: 113, scope: !2113)
!2116 = !DILocation(line: 178, column: 107, scope: !2113)
!2117 = !DILocation(line: 178, column: 105, scope: !2113)
!2118 = !DILocation(line: 178, column: 80, scope: !2113)
!2119 = !DILocation(line: 178, column: 17, scope: !2113)
!2120 = !DILocation(line: 177, column: 43, scope: !2111)
!2121 = !DILocation(line: 177, column: 13, scope: !2111)
!2122 = distinct !{!2122, !2104, !2123, !303}
!2123 = !DILocation(line: 179, column: 13, scope: !2105)
!2124 = !DILocation(line: 180, column: 21, scope: !2106)
!2125 = !DILocation(line: 176, column: 35, scope: !2103)
!2126 = !DILocation(line: 176, column: 9, scope: !2103)
!2127 = distinct !{!2127, !2095, !2128, !303}
!2128 = !DILocation(line: 181, column: 9, scope: !2096)
!2129 = !DILocation(line: 175, column: 35, scope: !2094)
!2130 = !DILocation(line: 175, column: 5, scope: !2094)
!2131 = distinct !{!2131, !2019, !2132, !303}
!2132 = !DILocation(line: 182, column: 5, scope: !2020)
!2133 = !DILocalVariable(name: "i", scope: !1986, file: !323, line: 185, type: !45)
!2134 = !DILocation(line: 186, column: 14, scope: !1986)
!2135 = !DILocation(line: 187, column: 54, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1986, file: !323, line: 186, column: 23)
!2137 = !DILocation(line: 187, column: 81, scope: !2136)
!2138 = !DILocation(line: 187, column: 9, scope: !2136)
!2139 = !DILocation(line: 188, column: 10, scope: !2136)
!2140 = distinct !{!2140, !2098, !2141, !303}
!2141 = !DILocation(line: 189, column: 5, scope: !1986)
!2142 = !DILocation(line: 191, column: 1, scope: !1986)
!2143 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2144, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !326, !49, !45, !45, !45, !5}
!2146 = !DILocalVariable(name: "PS", arg: 1, scope: !2143, file: !323, line: 195, type: !326)
!2147 = !DILocation(line: 0, scope: !2143)
!2148 = !DILocalVariable(name: "S", arg: 2, scope: !2143, file: !323, line: 195, type: !49)
!2149 = !DILocalVariable(name: "m", arg: 3, scope: !2143, file: !323, line: 195, type: !45)
!2150 = !DILocalVariable(name: "k", arg: 4, scope: !2143, file: !323, line: 195, type: !45)
!2151 = !DILocalVariable(name: "n", arg: 5, scope: !2143, file: !323, line: 195, type: !45)
!2152 = !DILocalVariable(name: "SPS", arg: 6, scope: !2143, file: !323, line: 195, type: !5)
!2153 = !DILocalVariable(name: "accumulator", scope: !2143, file: !323, line: 196, type: !919)
!2154 = !DILocation(line: 196, column: 14, scope: !2143)
!2155 = !DILocalVariable(name: "m_vec_limbs", scope: !2143, file: !323, line: 197, type: !239)
!2156 = !DILocalVariable(name: "row", scope: !2157, file: !323, line: 198, type: !45)
!2157 = distinct !DILexicalBlock(scope: !2143, file: !323, line: 198, column: 5)
!2158 = !DILocation(line: 0, scope: !2157)
!2159 = !DILocation(line: 198, column: 10, scope: !2157)
!2160 = !DILocation(line: 198, scope: !2157)
!2161 = !DILocation(line: 198, column: 27, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2157, file: !323, line: 198, column: 5)
!2163 = !DILocation(line: 198, column: 5, scope: !2157)
!2164 = !DILocation(line: 199, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !323, line: 199, column: 9)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !323, line: 198, column: 39)
!2167 = !DILocation(line: 208, column: 5, scope: !2143)
!2168 = !DILocation(line: 199, scope: !2165)
!2169 = !DILocalVariable(name: "j", scope: !2165, file: !323, line: 199, type: !45)
!2170 = !DILocation(line: 0, scope: !2165)
!2171 = !DILocation(line: 199, column: 27, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2165, file: !323, line: 199, column: 9)
!2173 = !DILocation(line: 200, column: 13, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !323, line: 200, column: 13)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !323, line: 199, column: 37)
!2176 = !DILocation(line: 200, scope: !2174)
!2177 = !DILocalVariable(name: "col", scope: !2174, file: !323, line: 200, type: !45)
!2178 = !DILocation(line: 0, scope: !2174)
!2179 = !DILocation(line: 200, column: 35, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !323, line: 200, column: 13)
!2181 = !DILocation(line: 201, column: 63, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2180, file: !323, line: 200, column: 50)
!2183 = !DILocation(line: 201, column: 47, scope: !2182)
!2184 = !DILocation(line: 201, column: 110, scope: !2182)
!2185 = !DILocation(line: 201, column: 123, scope: !2182)
!2186 = !DILocation(line: 201, column: 117, scope: !2182)
!2187 = !DILocation(line: 201, column: 115, scope: !2182)
!2188 = !DILocation(line: 201, column: 90, scope: !2182)
!2189 = !DILocation(line: 201, column: 21, scope: !2182)
!2190 = !DILocation(line: 200, column: 44, scope: !2180)
!2191 = !DILocation(line: 200, column: 13, scope: !2180)
!2192 = distinct !{!2192, !2173, !2193, !303}
!2193 = !DILocation(line: 202, column: 13, scope: !2174)
!2194 = !DILocation(line: 199, column: 33, scope: !2172)
!2195 = !DILocation(line: 199, column: 9, scope: !2172)
!2196 = distinct !{!2196, !2164, !2197, !303}
!2197 = !DILocation(line: 203, column: 9, scope: !2165)
!2198 = !DILocation(line: 198, column: 35, scope: !2162)
!2199 = !DILocation(line: 198, column: 5, scope: !2162)
!2200 = distinct !{!2200, !2163, !2201, !303}
!2201 = !DILocation(line: 204, column: 5, scope: !2157)
!2202 = !DILocalVariable(name: "i", scope: !2143, file: !323, line: 207, type: !45)
!2203 = !DILocation(line: 208, column: 14, scope: !2143)
!2204 = !DILocation(line: 209, column: 54, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2143, file: !323, line: 208, column: 21)
!2206 = !DILocation(line: 209, column: 82, scope: !2205)
!2207 = !DILocation(line: 209, column: 9, scope: !2205)
!2208 = !DILocation(line: 210, column: 10, scope: !2205)
!2209 = distinct !{!2209, !2167, !2210, !303}
!2210 = !DILocation(line: 211, column: 5, scope: !2143)
!2211 = !DILocation(line: 212, column: 1, scope: !2143)
!2212 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2213, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !45, !326, !5}
!2215 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2212, file: !437, line: 22, type: !45)
!2216 = !DILocation(line: 0, scope: !2212)
!2217 = !DILocalVariable(name: "in", arg: 2, scope: !2212, file: !437, line: 22, type: !326)
!2218 = !DILocalVariable(name: "acc", arg: 3, scope: !2212, file: !437, line: 22, type: !5)
!2219 = !DILocalVariable(name: "i", scope: !2220, file: !437, line: 24, type: !15)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !437, line: 24, column: 5)
!2221 = !DILocation(line: 0, scope: !2220)
!2222 = !DILocation(line: 24, column: 10, scope: !2220)
!2223 = !DILocation(line: 24, scope: !2220)
!2224 = !DILocation(line: 24, column: 26, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !437, line: 24, column: 5)
!2226 = !DILocation(line: 24, column: 5, scope: !2220)
!2227 = !DILocation(line: 26, column: 19, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !437, line: 25, column: 5)
!2229 = !DILocation(line: 26, column: 9, scope: !2228)
!2230 = !DILocation(line: 26, column: 16, scope: !2228)
!2231 = !DILocation(line: 24, column: 46, scope: !2225)
!2232 = !DILocation(line: 24, column: 5, scope: !2225)
!2233 = distinct !{!2233, !2226, !2234, !303}
!2234 = !DILocation(line: 27, column: 5, scope: !2220)
!2235 = !DILocation(line: 28, column: 1, scope: !2212)
!2236 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2237, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !45, !5, !5}
!2239 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2236, file: !437, line: 66, type: !45)
!2240 = !DILocation(line: 0, scope: !2236)
!2241 = !DILocalVariable(name: "bins", arg: 2, scope: !2236, file: !437, line: 66, type: !5)
!2242 = !DILocalVariable(name: "out", arg: 3, scope: !2236, file: !437, line: 66, type: !5)
!2243 = !DILocation(line: 67, column: 44, scope: !2236)
!2244 = !DILocation(line: 67, column: 73, scope: !2236)
!2245 = !DILocation(line: 67, column: 5, scope: !2236)
!2246 = !DILocation(line: 68, column: 40, scope: !2236)
!2247 = !DILocation(line: 68, column: 69, scope: !2236)
!2248 = !DILocation(line: 68, column: 5, scope: !2236)
!2249 = !DILocation(line: 69, column: 44, scope: !2236)
!2250 = !DILocation(line: 69, column: 74, scope: !2236)
!2251 = !DILocation(line: 69, column: 5, scope: !2236)
!2252 = !DILocation(line: 70, column: 40, scope: !2236)
!2253 = !DILocation(line: 70, column: 69, scope: !2236)
!2254 = !DILocation(line: 70, column: 5, scope: !2236)
!2255 = !DILocation(line: 71, column: 44, scope: !2236)
!2256 = !DILocation(line: 71, column: 73, scope: !2236)
!2257 = !DILocation(line: 71, column: 5, scope: !2236)
!2258 = !DILocation(line: 72, column: 40, scope: !2236)
!2259 = !DILocation(line: 72, column: 69, scope: !2236)
!2260 = !DILocation(line: 72, column: 5, scope: !2236)
!2261 = !DILocation(line: 73, column: 44, scope: !2236)
!2262 = !DILocation(line: 73, column: 74, scope: !2236)
!2263 = !DILocation(line: 73, column: 5, scope: !2236)
!2264 = !DILocation(line: 74, column: 40, scope: !2236)
!2265 = !DILocation(line: 74, column: 69, scope: !2236)
!2266 = !DILocation(line: 74, column: 5, scope: !2236)
!2267 = !DILocation(line: 75, column: 44, scope: !2236)
!2268 = !DILocation(line: 75, column: 74, scope: !2236)
!2269 = !DILocation(line: 75, column: 5, scope: !2236)
!2270 = !DILocation(line: 76, column: 40, scope: !2236)
!2271 = !DILocation(line: 76, column: 69, scope: !2236)
!2272 = !DILocation(line: 76, column: 5, scope: !2236)
!2273 = !DILocation(line: 77, column: 44, scope: !2236)
!2274 = !DILocation(line: 77, column: 74, scope: !2236)
!2275 = !DILocation(line: 77, column: 5, scope: !2236)
!2276 = !DILocation(line: 78, column: 40, scope: !2236)
!2277 = !DILocation(line: 78, column: 69, scope: !2236)
!2278 = !DILocation(line: 78, column: 5, scope: !2236)
!2279 = !DILocation(line: 79, column: 44, scope: !2236)
!2280 = !DILocation(line: 79, column: 74, scope: !2236)
!2281 = !DILocation(line: 79, column: 5, scope: !2236)
!2282 = !DILocation(line: 80, column: 40, scope: !2236)
!2283 = !DILocation(line: 80, column: 69, scope: !2236)
!2284 = !DILocation(line: 80, column: 5, scope: !2236)
!2285 = !DILocation(line: 81, column: 35, scope: !2236)
!2286 = !DILocation(line: 81, column: 5, scope: !2236)
!2287 = !DILocation(line: 82, column: 1, scope: !2236)
!2288 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2213, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2289 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2288, file: !437, line: 56, type: !45)
!2290 = !DILocation(line: 0, scope: !2288)
!2291 = !DILocalVariable(name: "in", arg: 2, scope: !2288, file: !437, line: 56, type: !326)
!2292 = !DILocalVariable(name: "acc", arg: 3, scope: !2288, file: !437, line: 56, type: !5)
!2293 = !DILocalVariable(name: "mask_lsb", scope: !2288, file: !437, line: 58, type: !6)
!2294 = !DILocalVariable(name: "i", scope: !2295, file: !437, line: 59, type: !45)
!2295 = distinct !DILexicalBlock(scope: !2288, file: !437, line: 59, column: 5)
!2296 = !DILocation(line: 0, scope: !2295)
!2297 = !DILocation(line: 59, column: 9, scope: !2295)
!2298 = !DILocation(line: 59, scope: !2295)
!2299 = !DILocation(line: 59, column: 20, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !437, line: 59, column: 5)
!2301 = !DILocation(line: 59, column: 5, scope: !2295)
!2302 = !DILocation(line: 60, column: 22, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !437, line: 59, column: 43)
!2304 = !DILocation(line: 60, column: 28, scope: !2303)
!2305 = !DILocalVariable(name: "t", scope: !2303, file: !437, line: 60, type: !6)
!2306 = !DILocation(line: 0, scope: !2303)
!2307 = !DILocation(line: 61, column: 32, scope: !2303)
!2308 = !DILocation(line: 61, column: 43, scope: !2303)
!2309 = !DILocation(line: 61, column: 38, scope: !2303)
!2310 = !DILocation(line: 61, column: 9, scope: !2303)
!2311 = !DILocation(line: 61, column: 16, scope: !2303)
!2312 = !DILocation(line: 59, column: 40, scope: !2300)
!2313 = !DILocation(line: 59, column: 5, scope: !2300)
!2314 = distinct !{!2314, !2301, !2315, !303}
!2315 = !DILocation(line: 62, column: 5, scope: !2295)
!2316 = !DILocation(line: 63, column: 1, scope: !2288)
!2317 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2213, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2318 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2317, file: !437, line: 46, type: !45)
!2319 = !DILocation(line: 0, scope: !2317)
!2320 = !DILocalVariable(name: "in", arg: 2, scope: !2317, file: !437, line: 46, type: !326)
!2321 = !DILocalVariable(name: "acc", arg: 3, scope: !2317, file: !437, line: 46, type: !5)
!2322 = !DILocalVariable(name: "mask_msb", scope: !2317, file: !437, line: 48, type: !6)
!2323 = !DILocalVariable(name: "i", scope: !2324, file: !437, line: 49, type: !45)
!2324 = distinct !DILexicalBlock(scope: !2317, file: !437, line: 49, column: 5)
!2325 = !DILocation(line: 0, scope: !2324)
!2326 = !DILocation(line: 49, column: 9, scope: !2324)
!2327 = !DILocation(line: 49, scope: !2324)
!2328 = !DILocation(line: 49, column: 20, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !437, line: 49, column: 5)
!2330 = !DILocation(line: 49, column: 5, scope: !2324)
!2331 = !DILocation(line: 50, column: 22, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !437, line: 49, column: 43)
!2333 = !DILocalVariable(name: "t", scope: !2332, file: !437, line: 50, type: !6)
!2334 = !DILocation(line: 0, scope: !2332)
!2335 = !DILocation(line: 51, column: 32, scope: !2332)
!2336 = !DILocation(line: 51, column: 44, scope: !2332)
!2337 = !DILocation(line: 51, column: 50, scope: !2332)
!2338 = !DILocation(line: 51, column: 38, scope: !2332)
!2339 = !DILocation(line: 51, column: 9, scope: !2332)
!2340 = !DILocation(line: 51, column: 16, scope: !2332)
!2341 = !DILocation(line: 49, column: 40, scope: !2329)
!2342 = !DILocation(line: 49, column: 5, scope: !2329)
!2343 = distinct !{!2343, !2330, !2344, !303}
!2344 = !DILocation(line: 52, column: 5, scope: !2324)
!2345 = !DILocation(line: 53, column: 1, scope: !2317)
!2346 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2213, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2347 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2346, file: !437, line: 13, type: !45)
!2348 = !DILocation(line: 0, scope: !2346)
!2349 = !DILocalVariable(name: "in", arg: 2, scope: !2346, file: !437, line: 13, type: !326)
!2350 = !DILocalVariable(name: "out", arg: 3, scope: !2346, file: !437, line: 13, type: !5)
!2351 = !DILocalVariable(name: "i", scope: !2352, file: !437, line: 15, type: !15)
!2352 = distinct !DILexicalBlock(scope: !2346, file: !437, line: 15, column: 5)
!2353 = !DILocation(line: 0, scope: !2352)
!2354 = !DILocation(line: 15, column: 10, scope: !2352)
!2355 = !DILocation(line: 15, scope: !2352)
!2356 = !DILocation(line: 15, column: 26, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !437, line: 15, column: 5)
!2358 = !DILocation(line: 15, column: 5, scope: !2352)
!2359 = !DILocation(line: 17, column: 18, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !437, line: 16, column: 5)
!2361 = !DILocation(line: 17, column: 9, scope: !2360)
!2362 = !DILocation(line: 17, column: 16, scope: !2360)
!2363 = !DILocation(line: 15, column: 46, scope: !2357)
!2364 = !DILocation(line: 15, column: 5, scope: !2357)
!2365 = distinct !{!2365, !2358, !2366, !303}
!2366 = !DILocation(line: 18, column: 5, scope: !2352)
!2367 = !DILocation(line: 19, column: 1, scope: !2346)
!2368 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_m_upper", scope: !58, file: !58, line: 14, type: !2369, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !2371, !326, !5, !45}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2373)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2374, file: !36, line: 266, baseType: !45, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2374, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2374, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2374, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2374, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2374, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2374, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2374, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2374, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2374, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2374, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2374, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2374, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2374, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2374, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2374, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2374, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2374, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2374, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2374, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2374, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2374, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2374, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2399 = !DILocalVariable(name: "p", arg: 1, scope: !2368, file: !58, line: 14, type: !2371)
!2400 = !DILocation(line: 0, scope: !2368)
!2401 = !DILocalVariable(name: "in", arg: 2, scope: !2368, file: !58, line: 14, type: !326)
!2402 = !DILocalVariable(name: "out", arg: 3, scope: !2368, file: !58, line: 14, type: !5)
!2403 = !DILocalVariable(name: "size", arg: 4, scope: !2368, file: !58, line: 14, type: !45)
!2404 = !DILocalVariable(name: "m_vec_limbs", scope: !2368, file: !58, line: 19, type: !239)
!2405 = !DILocalVariable(name: "m_vecs_stored", scope: !2368, file: !58, line: 20, type: !45)
!2406 = !DILocalVariable(name: "r", scope: !2407, file: !58, line: 21, type: !45)
!2407 = distinct !DILexicalBlock(scope: !2368, file: !58, line: 21, column: 5)
!2408 = !DILocation(line: 0, scope: !2407)
!2409 = !DILocation(line: 21, column: 10, scope: !2407)
!2410 = !DILocation(line: 20, column: 9, scope: !2368)
!2411 = !DILocation(line: 21, scope: !2407)
!2412 = !DILocation(line: 21, column: 23, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2407, file: !58, line: 21, column: 5)
!2414 = !DILocation(line: 21, column: 5, scope: !2407)
!2415 = !DILocation(line: 22, column: 9, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !58, line: 22, column: 9)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !58, line: 21, column: 36)
!2418 = !DILocation(line: 22, scope: !2416)
!2419 = !DILocalVariable(name: "c", scope: !2416, file: !58, line: 22, type: !45)
!2420 = !DILocation(line: 0, scope: !2416)
!2421 = !DILocation(line: 22, column: 27, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2416, file: !58, line: 22, column: 9)
!2423 = !DILocation(line: 23, column: 59, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2422, file: !58, line: 22, column: 40)
!2425 = !DILocation(line: 23, column: 66, scope: !2424)
!2426 = !DILocation(line: 23, column: 40, scope: !2424)
!2427 = !DILocation(line: 23, column: 76, scope: !2424)
!2428 = !DILocation(line: 23, column: 13, scope: !2424)
!2429 = !DILocation(line: 24, column: 19, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !58, line: 24, column: 17)
!2431 = !DILocation(line: 25, column: 62, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2430, file: !58, line: 24, column: 25)
!2433 = !DILocation(line: 25, column: 69, scope: !2432)
!2434 = !DILocation(line: 25, column: 43, scope: !2432)
!2435 = !DILocation(line: 25, column: 79, scope: !2432)
!2436 = !DILocation(line: 25, column: 17, scope: !2432)
!2437 = !DILocation(line: 26, column: 13, scope: !2432)
!2438 = !DILocation(line: 27, column: 27, scope: !2424)
!2439 = !DILocation(line: 22, column: 36, scope: !2422)
!2440 = !DILocation(line: 22, column: 9, scope: !2422)
!2441 = distinct !{!2441, !2415, !2442, !303}
!2442 = !DILocation(line: 28, column: 9, scope: !2416)
!2443 = !DILocation(line: 21, column: 32, scope: !2413)
!2444 = !DILocation(line: 21, column: 5, scope: !2413)
!2445 = distinct !{!2445, !2414, !2446, !303}
!2446 = !DILocation(line: 29, column: 5, scope: !2407)
!2447 = !DILocation(line: 30, column: 1, scope: !2368)
!2448 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2213, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2449 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2448, file: !437, line: 13, type: !45)
!2450 = !DILocation(line: 0, scope: !2448)
!2451 = !DILocalVariable(name: "in", arg: 2, scope: !2448, file: !437, line: 13, type: !326)
!2452 = !DILocalVariable(name: "out", arg: 3, scope: !2448, file: !437, line: 13, type: !5)
!2453 = !DILocalVariable(name: "i", scope: !2454, file: !437, line: 15, type: !15)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !437, line: 15, column: 5)
!2455 = !DILocation(line: 0, scope: !2454)
!2456 = !DILocation(line: 15, column: 10, scope: !2454)
!2457 = !DILocation(line: 15, scope: !2454)
!2458 = !DILocation(line: 15, column: 26, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !437, line: 15, column: 5)
!2460 = !DILocation(line: 15, column: 5, scope: !2454)
!2461 = !DILocation(line: 17, column: 18, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2459, file: !437, line: 16, column: 5)
!2463 = !DILocation(line: 17, column: 9, scope: !2462)
!2464 = !DILocation(line: 17, column: 16, scope: !2462)
!2465 = !DILocation(line: 15, column: 46, scope: !2459)
!2466 = !DILocation(line: 15, column: 5, scope: !2459)
!2467 = distinct !{!2467, !2460, !2468, !303}
!2468 = !DILocation(line: 18, column: 5, scope: !2454)
!2469 = !DILocation(line: 19, column: 1, scope: !2448)
!2470 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2213, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2471 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2470, file: !437, line: 22, type: !45)
!2472 = !DILocation(line: 0, scope: !2470)
!2473 = !DILocalVariable(name: "in", arg: 2, scope: !2470, file: !437, line: 22, type: !326)
!2474 = !DILocalVariable(name: "acc", arg: 3, scope: !2470, file: !437, line: 22, type: !5)
!2475 = !DILocalVariable(name: "i", scope: !2476, file: !437, line: 24, type: !15)
!2476 = distinct !DILexicalBlock(scope: !2470, file: !437, line: 24, column: 5)
!2477 = !DILocation(line: 0, scope: !2476)
!2478 = !DILocation(line: 24, column: 10, scope: !2476)
!2479 = !DILocation(line: 24, scope: !2476)
!2480 = !DILocation(line: 24, column: 26, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !437, line: 24, column: 5)
!2482 = !DILocation(line: 24, column: 5, scope: !2476)
!2483 = !DILocation(line: 26, column: 19, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !437, line: 25, column: 5)
!2485 = !DILocation(line: 26, column: 9, scope: !2484)
!2486 = !DILocation(line: 26, column: 16, scope: !2484)
!2487 = !DILocation(line: 24, column: 46, scope: !2481)
!2488 = !DILocation(line: 24, column: 5, scope: !2481)
!2489 = distinct !{!2489, !2482, !2490, !303}
!2490 = !DILocation(line: 27, column: 5, scope: !2476)
!2491 = !DILocation(line: 28, column: 1, scope: !2470)
!2492 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2493, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!45, !2371, !18, !49, !49, !18, !45, !45, !45, !45}
!2495 = !DILocalVariable(name: "p", arg: 1, scope: !2492, file: !58, line: 40, type: !2371)
!2496 = !DILocation(line: 0, scope: !2492)
!2497 = !DILocalVariable(name: "A", arg: 2, scope: !2492, file: !58, line: 40, type: !18)
!2498 = !DILocalVariable(name: "y", arg: 3, scope: !2492, file: !58, line: 41, type: !49)
!2499 = !DILocalVariable(name: "r", arg: 4, scope: !2492, file: !58, line: 41, type: !49)
!2500 = !DILocalVariable(name: "x", arg: 5, scope: !2492, file: !58, line: 42, type: !18)
!2501 = !DILocalVariable(name: "k", arg: 6, scope: !2492, file: !58, line: 42, type: !45)
!2502 = !DILocalVariable(name: "o", arg: 7, scope: !2492, file: !58, line: 42, type: !45)
!2503 = !DILocalVariable(name: "m", arg: 8, scope: !2492, file: !58, line: 42, type: !45)
!2504 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2492, file: !58, line: 42, type: !45)
!2505 = !DILocalVariable(name: "i", scope: !2506, file: !58, line: 51, type: !45)
!2506 = distinct !DILexicalBlock(scope: !2492, file: !58, line: 51, column: 5)
!2507 = !DILocation(line: 0, scope: !2506)
!2508 = !DILocation(line: 51, column: 10, scope: !2506)
!2509 = !DILocation(line: 51, scope: !2506)
!2510 = !DILocation(line: 51, column: 23, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2506, file: !58, line: 51, column: 5)
!2512 = !DILocation(line: 51, column: 5, scope: !2506)
!2513 = !DILocation(line: 57, column: 5, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2492, file: !58, line: 57, column: 5)
!2515 = !DILocation(line: 52, column: 16, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !58, line: 51, column: 37)
!2517 = !DILocation(line: 52, column: 9, scope: !2516)
!2518 = !DILocation(line: 52, column: 14, scope: !2516)
!2519 = !DILocation(line: 51, column: 33, scope: !2511)
!2520 = !DILocation(line: 51, column: 5, scope: !2511)
!2521 = distinct !{!2521, !2512, !2522, !303}
!2522 = !DILocation(line: 53, column: 5, scope: !2506)
!2523 = !DILocation(line: 57, scope: !2514)
!2524 = !DILocalVariable(name: "i", scope: !2514, file: !58, line: 57, type: !45)
!2525 = !DILocation(line: 0, scope: !2514)
!2526 = !DILocation(line: 57, column: 23, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2514, file: !58, line: 57, column: 5)
!2528 = !DILocation(line: 58, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 57, column: 33)
!2530 = !DILocation(line: 58, column: 26, scope: !2529)
!2531 = !DILocation(line: 58, column: 30, scope: !2529)
!2532 = !DILocation(line: 58, column: 21, scope: !2529)
!2533 = !DILocation(line: 58, column: 9, scope: !2529)
!2534 = !DILocation(line: 58, column: 36, scope: !2529)
!2535 = !DILocation(line: 57, column: 29, scope: !2527)
!2536 = !DILocation(line: 57, column: 5, scope: !2527)
!2537 = distinct !{!2537, !2513, !2538, !303}
!2538 = !DILocation(line: 59, column: 5, scope: !2514)
!2539 = !DILocation(line: 60, column: 25, scope: !2492)
!2540 = !DILocation(line: 60, column: 29, scope: !2492)
!2541 = !DILocation(line: 60, column: 5, scope: !2492)
!2542 = !DILocalVariable(name: "i", scope: !2543, file: !58, line: 63, type: !45)
!2543 = distinct !DILexicalBlock(scope: !2492, file: !58, line: 63, column: 5)
!2544 = !DILocation(line: 0, scope: !2543)
!2545 = !DILocation(line: 63, column: 10, scope: !2543)
!2546 = !DILocation(line: 63, scope: !2543)
!2547 = !DILocation(line: 63, column: 23, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !58, line: 63, column: 5)
!2549 = !DILocation(line: 63, column: 5, scope: !2543)
!2550 = !DILocation(line: 64, column: 44, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !58, line: 63, column: 33)
!2552 = !DILocation(line: 64, column: 50, scope: !2551)
!2553 = !DILocation(line: 64, column: 38, scope: !2551)
!2554 = !DILocation(line: 64, column: 13, scope: !2551)
!2555 = !DILocation(line: 64, column: 26, scope: !2551)
!2556 = !DILocation(line: 64, column: 30, scope: !2551)
!2557 = !DILocation(line: 64, column: 21, scope: !2551)
!2558 = !DILocation(line: 64, column: 9, scope: !2551)
!2559 = !DILocation(line: 64, column: 36, scope: !2551)
!2560 = !DILocation(line: 63, column: 29, scope: !2548)
!2561 = !DILocation(line: 63, column: 5, scope: !2548)
!2562 = distinct !{!2562, !2549, !2563, !303}
!2563 = !DILocation(line: 65, column: 5, scope: !2543)
!2564 = !DILocation(line: 67, column: 16, scope: !2492)
!2565 = !DILocation(line: 67, column: 20, scope: !2492)
!2566 = !DILocation(line: 67, column: 5, scope: !2492)
!2567 = !DILocalVariable(name: "full_rank", scope: !2492, file: !58, line: 70, type: !14)
!2568 = !DILocalVariable(name: "i", scope: !2569, file: !58, line: 71, type: !45)
!2569 = distinct !DILexicalBlock(scope: !2492, file: !58, line: 71, column: 5)
!2570 = !DILocation(line: 0, scope: !2569)
!2571 = !DILocation(line: 71, column: 10, scope: !2569)
!2572 = !DILocation(line: 71, scope: !2569)
!2573 = !DILocation(line: 71, column: 23, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !58, line: 71, column: 5)
!2575 = !DILocation(line: 71, column: 5, scope: !2569)
!2576 = !DILocation(line: 72, column: 27, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !58, line: 71, column: 42)
!2578 = !DILocation(line: 72, column: 32, scope: !2577)
!2579 = !DILocation(line: 72, column: 22, scope: !2577)
!2580 = !DILocation(line: 72, column: 19, scope: !2577)
!2581 = !DILocation(line: 71, column: 38, scope: !2574)
!2582 = !DILocation(line: 71, column: 5, scope: !2574)
!2583 = distinct !{!2583, !2575, !2584, !303}
!2584 = !DILocation(line: 73, column: 5, scope: !2569)
!2585 = !DILocation(line: 80, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2492, file: !58, line: 80, column: 9)
!2587 = !DILocation(line: 88, column: 5, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2492, file: !58, line: 88, column: 5)
!2589 = distinct !{!2589, !2587, !2590, !303}
!2590 = !DILocation(line: 122, column: 5, scope: !2588)
!2591 = !DILocation(line: 88, scope: !2588)
!2592 = !DILocalVariable(name: "row", scope: !2588, file: !58, line: 88, type: !45)
!2593 = !DILocation(line: 0, scope: !2588)
!2594 = !DILocation(line: 88, column: 31, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2588, file: !58, line: 88, column: 5)
!2596 = !DILocalVariable(name: "finished", scope: !2492, file: !58, line: 46, type: !14)
!2597 = !DILocation(line: 90, column: 27, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2595, file: !58, line: 88, column: 44)
!2599 = !DILocalVariable(name: "col_upper_bound", scope: !2492, file: !58, line: 47, type: !45)
!2600 = !DILocalVariable(name: "col", scope: !2601, file: !58, line: 93, type: !45)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !58, line: 93, column: 9)
!2602 = !DILocation(line: 0, scope: !2601)
!2603 = !DILocation(line: 93, column: 14, scope: !2601)
!2604 = !DILocation(line: 0, scope: !2598)
!2605 = !DILocation(line: 93, scope: !2601)
!2606 = !DILocation(line: 93, column: 33, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2601, file: !58, line: 93, column: 9)
!2608 = !DILocation(line: 93, column: 9, scope: !2601)
!2609 = !DILocation(line: 97, column: 50, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !58, line: 93, column: 60)
!2611 = !DILocation(line: 97, column: 44, scope: !2610)
!2612 = !DILocation(line: 97, column: 30, scope: !2610)
!2613 = !DILocation(line: 97, column: 73, scope: !2610)
!2614 = !DILocalVariable(name: "correct_column", scope: !2492, file: !58, line: 48, type: !14)
!2615 = !DILocation(line: 99, column: 63, scope: !2610)
!2616 = !DILocation(line: 99, column: 48, scope: !2610)
!2617 = !DILocation(line: 99, column: 46, scope: !2610)
!2618 = !DILocalVariable(name: "u", scope: !2610, file: !58, line: 99, type: !14)
!2619 = !DILocation(line: 0, scope: !2610)
!2620 = !DILocation(line: 100, column: 13, scope: !2610)
!2621 = !DILocation(line: 100, column: 20, scope: !2610)
!2622 = !DILocalVariable(name: "i", scope: !2623, file: !58, line: 102, type: !45)
!2623 = distinct !DILexicalBlock(scope: !2610, file: !58, line: 102, column: 13)
!2624 = !DILocation(line: 0, scope: !2623)
!2625 = !DILocation(line: 102, column: 18, scope: !2623)
!2626 = !DILocation(line: 102, scope: !2623)
!2627 = !DILocation(line: 102, column: 31, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !58, line: 102, column: 13)
!2629 = !DILocation(line: 102, column: 13, scope: !2623)
!2630 = !DILocation(line: 103, column: 53, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !58, line: 102, column: 46)
!2632 = !DILocation(line: 103, column: 45, scope: !2631)
!2633 = !DILocation(line: 103, column: 34, scope: !2631)
!2634 = !DILocation(line: 103, column: 95, scope: !2631)
!2635 = !DILocation(line: 103, column: 99, scope: !2631)
!2636 = !DILocation(line: 103, column: 91, scope: !2631)
!2637 = !DILocation(line: 103, column: 80, scope: !2631)
!2638 = !DILocation(line: 103, column: 115, scope: !2631)
!2639 = !DILocation(line: 103, column: 76, scope: !2631)
!2640 = !DILocation(line: 104, column: 49, scope: !2631)
!2641 = !DILocation(line: 104, column: 53, scope: !2631)
!2642 = !DILocation(line: 104, column: 45, scope: !2631)
!2643 = !DILocation(line: 104, column: 34, scope: !2631)
!2644 = !DILocation(line: 104, column: 69, scope: !2631)
!2645 = !DILocation(line: 104, column: 30, scope: !2631)
!2646 = !DILocation(line: 104, column: 95, scope: !2631)
!2647 = !DILocation(line: 104, column: 99, scope: !2631)
!2648 = !DILocation(line: 104, column: 91, scope: !2631)
!2649 = !DILocation(line: 104, column: 80, scope: !2631)
!2650 = !DILocation(line: 104, column: 115, scope: !2631)
!2651 = !DILocation(line: 104, column: 76, scope: !2631)
!2652 = !DILocation(line: 105, column: 49, scope: !2631)
!2653 = !DILocation(line: 105, column: 53, scope: !2631)
!2654 = !DILocation(line: 105, column: 45, scope: !2631)
!2655 = !DILocation(line: 105, column: 34, scope: !2631)
!2656 = !DILocation(line: 105, column: 69, scope: !2631)
!2657 = !DILocation(line: 105, column: 30, scope: !2631)
!2658 = !DILocation(line: 105, column: 95, scope: !2631)
!2659 = !DILocation(line: 105, column: 99, scope: !2631)
!2660 = !DILocation(line: 105, column: 91, scope: !2631)
!2661 = !DILocation(line: 105, column: 80, scope: !2631)
!2662 = !DILocation(line: 105, column: 115, scope: !2631)
!2663 = !DILocation(line: 105, column: 76, scope: !2631)
!2664 = !DILocation(line: 106, column: 49, scope: !2631)
!2665 = !DILocation(line: 106, column: 53, scope: !2631)
!2666 = !DILocation(line: 106, column: 45, scope: !2631)
!2667 = !DILocation(line: 106, column: 34, scope: !2631)
!2668 = !DILocation(line: 106, column: 69, scope: !2631)
!2669 = !DILocation(line: 106, column: 30, scope: !2631)
!2670 = !DILocation(line: 106, column: 95, scope: !2631)
!2671 = !DILocation(line: 106, column: 99, scope: !2631)
!2672 = !DILocation(line: 106, column: 91, scope: !2631)
!2673 = !DILocation(line: 106, column: 80, scope: !2631)
!2674 = !DILocation(line: 106, column: 115, scope: !2631)
!2675 = !DILocation(line: 106, column: 76, scope: !2631)
!2676 = !DILocalVariable(name: "tmp", scope: !2631, file: !58, line: 103, type: !6)
!2677 = !DILocation(line: 0, scope: !2631)
!2678 = !DILocation(line: 108, column: 23, scope: !2631)
!2679 = !DILocation(line: 110, column: 34, scope: !2631)
!2680 = !DILocation(line: 110, column: 17, scope: !2631)
!2681 = !DILocation(line: 110, column: 48, scope: !2631)
!2682 = !DILocation(line: 111, column: 56, scope: !2631)
!2683 = !DILocation(line: 111, column: 34, scope: !2631)
!2684 = !DILocation(line: 111, column: 17, scope: !2631)
!2685 = !DILocation(line: 111, column: 48, scope: !2631)
!2686 = !DILocation(line: 112, column: 56, scope: !2631)
!2687 = !DILocation(line: 112, column: 34, scope: !2631)
!2688 = !DILocation(line: 112, column: 17, scope: !2631)
!2689 = !DILocation(line: 112, column: 48, scope: !2631)
!2690 = !DILocation(line: 113, column: 56, scope: !2631)
!2691 = !DILocation(line: 113, column: 34, scope: !2631)
!2692 = !DILocation(line: 113, column: 17, scope: !2631)
!2693 = !DILocation(line: 113, column: 48, scope: !2631)
!2694 = !DILocation(line: 114, column: 56, scope: !2631)
!2695 = !DILocation(line: 114, column: 34, scope: !2631)
!2696 = !DILocation(line: 114, column: 17, scope: !2631)
!2697 = !DILocation(line: 114, column: 48, scope: !2631)
!2698 = !DILocation(line: 115, column: 56, scope: !2631)
!2699 = !DILocation(line: 115, column: 34, scope: !2631)
!2700 = !DILocation(line: 115, column: 17, scope: !2631)
!2701 = !DILocation(line: 115, column: 48, scope: !2631)
!2702 = !DILocation(line: 116, column: 56, scope: !2631)
!2703 = !DILocation(line: 116, column: 34, scope: !2631)
!2704 = !DILocation(line: 116, column: 17, scope: !2631)
!2705 = !DILocation(line: 116, column: 48, scope: !2631)
!2706 = !DILocation(line: 117, column: 56, scope: !2631)
!2707 = !DILocation(line: 117, column: 34, scope: !2631)
!2708 = !DILocation(line: 117, column: 17, scope: !2631)
!2709 = !DILocation(line: 117, column: 48, scope: !2631)
!2710 = !DILocation(line: 102, column: 40, scope: !2628)
!2711 = !DILocation(line: 102, column: 13, scope: !2628)
!2712 = distinct !{!2712, !2629, !2713, !303}
!2713 = !DILocation(line: 118, column: 13, scope: !2623)
!2714 = !DILocation(line: 120, column: 33, scope: !2610)
!2715 = !DILocation(line: 93, column: 56, scope: !2607)
!2716 = !DILocation(line: 93, column: 9, scope: !2607)
!2717 = distinct !{!2717, !2608, !2718, !303}
!2718 = !DILocation(line: 121, column: 9, scope: !2601)
!2719 = !DILocation(line: 124, column: 1, scope: !2492)
!2720 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1417, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2721 = !DILocalVariable(name: "a", arg: 1, scope: !2720, file: !493, line: 79, type: !49)
!2722 = !DILocation(line: 0, scope: !2720)
!2723 = !DILocalVariable(name: "b", arg: 2, scope: !2720, file: !493, line: 79, type: !49)
!2724 = !DILocalVariable(name: "c", arg: 3, scope: !2720, file: !493, line: 80, type: !18)
!2725 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2720, file: !493, line: 80, type: !45)
!2726 = !DILocalVariable(name: "row_a", arg: 5, scope: !2720, file: !493, line: 80, type: !45)
!2727 = !DILocalVariable(name: "col_b", arg: 6, scope: !2720, file: !493, line: 80, type: !45)
!2728 = !DILocalVariable(name: "i", scope: !2729, file: !493, line: 81, type: !45)
!2729 = distinct !DILexicalBlock(scope: !2720, file: !493, line: 81, column: 5)
!2730 = !DILocation(line: 0, scope: !2729)
!2731 = !DILocation(line: 81, column: 10, scope: !2729)
!2732 = !DILocation(line: 81, scope: !2729)
!2733 = !DILocation(line: 81, column: 23, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !493, line: 81, column: 5)
!2735 = !DILocation(line: 81, column: 5, scope: !2729)
!2736 = !DILocation(line: 82, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !493, line: 82, column: 9)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !493, line: 81, column: 53)
!2739 = !DILocation(line: 82, scope: !2737)
!2740 = !DILocalVariable(name: "j", scope: !2737, file: !493, line: 82, type: !45)
!2741 = !DILocation(line: 0, scope: !2737)
!2742 = !DILocation(line: 83, column: 18, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !493, line: 82, column: 46)
!2744 = distinct !DILexicalBlock(scope: !2737, file: !493, line: 82, column: 9)
!2745 = !DILocation(line: 83, column: 16, scope: !2743)
!2746 = !DILocation(line: 82, column: 41, scope: !2744)
!2747 = !DILocation(line: 82, column: 9, scope: !2744)
!2748 = distinct !{!2748, !2736, !2749, !303}
!2749 = !DILocation(line: 84, column: 9, scope: !2737)
!2750 = !DILocation(line: 81, column: 32, scope: !2734)
!2751 = !DILocation(line: 81, column: 39, scope: !2734)
!2752 = !DILocation(line: 81, column: 5, scope: !2734)
!2753 = distinct !{!2753, !2735, !2754, !303}
!2754 = !DILocation(line: 85, column: 5, scope: !2729)
!2755 = !DILocation(line: 86, column: 1, scope: !2720)
!2756 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1516, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2757 = !DILocalVariable(name: "a", arg: 1, scope: !2756, file: !493, line: 48, type: !14)
!2758 = !DILocation(line: 0, scope: !2756)
!2759 = !DILocalVariable(name: "b", arg: 2, scope: !2756, file: !493, line: 48, type: !14)
!2760 = !DILocation(line: 49, column: 14, scope: !2756)
!2761 = !DILocation(line: 49, column: 5, scope: !2756)
!2762 = distinct !DISubprogram(name: "EF", scope: !2763, file: !2763, line: 60, type: !2764, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2763 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !18, !45, !45}
!2766 = !DILocalVariable(name: "A", arg: 1, scope: !2762, file: !2763, line: 60, type: !18)
!2767 = !DILocation(line: 0, scope: !2762)
!2768 = !DILocalVariable(name: "nrows", arg: 2, scope: !2762, file: !2763, line: 60, type: !45)
!2769 = !DILocalVariable(name: "ncols", arg: 3, scope: !2762, file: !2763, line: 60, type: !45)
!2770 = !DILocalVariable(name: "_pivot_row", scope: !2762, file: !2763, line: 62, type: !2771, align: 256)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !2772)
!2772 = !{!2773}
!2773 = !DISubrange(count: 5)
!2774 = !DILocation(line: 62, column: 27, scope: !2762)
!2775 = !DILocalVariable(name: "_pivot_row2", scope: !2762, file: !2763, line: 63, type: !2771, align: 256)
!2776 = !DILocation(line: 63, column: 27, scope: !2762)
!2777 = !DILocalVariable(name: "packed_A", scope: !2762, file: !2763, line: 64, type: !2778, align: 256)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !2779)
!2779 = !{!2780}
!2780 = !DISubrange(count: 320)
!2781 = !DILocation(line: 64, column: 27, scope: !2762)
!2782 = !DILocation(line: 66, column: 26, scope: !2762)
!2783 = !DILocation(line: 66, column: 32, scope: !2762)
!2784 = !DILocalVariable(name: "row_len", scope: !2762, file: !2763, line: 66, type: !45)
!2785 = !DILocalVariable(name: "i", scope: !2786, file: !2763, line: 69, type: !45)
!2786 = distinct !DILexicalBlock(scope: !2762, file: !2763, line: 69, column: 5)
!2787 = !DILocation(line: 0, scope: !2786)
!2788 = !DILocation(line: 69, column: 10, scope: !2786)
!2789 = !DILocation(line: 69, scope: !2786)
!2790 = !DILocation(line: 69, column: 23, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !2763, line: 69, column: 5)
!2792 = !DILocation(line: 69, column: 5, scope: !2786)
!2793 = !DILocation(line: 77, column: 5, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2762, file: !2763, line: 77, column: 5)
!2795 = !DILocation(line: 70, column: 29, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2791, file: !2763, line: 69, column: 37)
!2797 = !DILocation(line: 70, column: 25, scope: !2796)
!2798 = !DILocation(line: 70, column: 51, scope: !2796)
!2799 = !DILocation(line: 70, column: 47, scope: !2796)
!2800 = !DILocation(line: 70, column: 9, scope: !2796)
!2801 = !DILocation(line: 69, column: 33, scope: !2791)
!2802 = !DILocation(line: 69, column: 5, scope: !2791)
!2803 = distinct !{!2803, !2792, !2804, !303}
!2804 = !DILocation(line: 71, column: 5, scope: !2786)
!2805 = !DILocation(line: 77, scope: !2794)
!2806 = !DILocalVariable(name: "pivot_row", scope: !2762, file: !2763, line: 76, type: !45)
!2807 = !DILocalVariable(name: "pivot_col", scope: !2794, file: !2763, line: 77, type: !45)
!2808 = !DILocation(line: 0, scope: !2794)
!2809 = !DILocation(line: 77, column: 39, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2794, file: !2763, line: 77, column: 5)
!2811 = !DILocation(line: 138, column: 5, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2762, file: !2763, line: 138, column: 5)
!2813 = !DILocation(line: 79, column: 37, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !2763, line: 77, column: 61)
!2815 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2814, file: !2763, line: 79, type: !45)
!2816 = !DILocation(line: 0, scope: !2814)
!2817 = !DILocation(line: 80, column: 37, scope: !2814)
!2818 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2814, file: !2763, line: 80, type: !45)
!2819 = !DILocalVariable(name: "i", scope: !2820, file: !2763, line: 85, type: !45)
!2820 = distinct !DILexicalBlock(scope: !2814, file: !2763, line: 85, column: 9)
!2821 = !DILocation(line: 0, scope: !2820)
!2822 = !DILocation(line: 85, column: 14, scope: !2820)
!2823 = !DILocation(line: 85, scope: !2820)
!2824 = !DILocation(line: 85, column: 27, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2820, file: !2763, line: 85, column: 9)
!2826 = !DILocation(line: 85, column: 9, scope: !2820)
!2827 = !DILocation(line: 93, column: 9, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2814, file: !2763, line: 93, column: 9)
!2829 = !DILocation(line: 86, column: 13, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !2763, line: 85, column: 43)
!2831 = !DILocation(line: 86, column: 27, scope: !2830)
!2832 = !DILocation(line: 87, column: 13, scope: !2830)
!2833 = !DILocation(line: 87, column: 28, scope: !2830)
!2834 = !DILocation(line: 85, column: 39, scope: !2825)
!2835 = !DILocation(line: 85, column: 9, scope: !2825)
!2836 = distinct !{!2836, !2826, !2837, !303}
!2837 = !DILocation(line: 88, column: 9, scope: !2820)
!2838 = !DILocation(line: 0, scope: !2828)
!2839 = !DILocalVariable(name: "row", scope: !2828, file: !2763, line: 93, type: !45)
!2840 = !DILocalVariable(name: "pivot", scope: !2814, file: !2763, line: 91, type: !14)
!2841 = !DILocalVariable(name: "pivot_is_zero", scope: !2814, file: !2763, line: 92, type: !6)
!2842 = !DILocation(line: 94, column: 24, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2828, file: !2763, line: 93, column: 9)
!2844 = !DILocation(line: 94, column: 21, scope: !2843)
!2845 = !DILocation(line: 96, column: 38, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !2763, line: 94, column: 80)
!2847 = !DILocation(line: 96, column: 37, scope: !2846)
!2848 = !DILocalVariable(name: "is_pivot_row", scope: !2846, file: !2763, line: 96, type: !6)
!2849 = !DILocation(line: 0, scope: !2846)
!2850 = !DILocation(line: 97, column: 40, scope: !2846)
!2851 = !DILocalVariable(name: "below_pivot_row", scope: !2846, file: !2763, line: 97, type: !6)
!2852 = !DILocalVariable(name: "j", scope: !2853, file: !2763, line: 99, type: !45)
!2853 = distinct !DILexicalBlock(scope: !2846, file: !2763, line: 99, column: 13)
!2854 = !DILocation(line: 0, scope: !2853)
!2855 = !DILocation(line: 99, column: 18, scope: !2853)
!2856 = !DILocation(line: 99, scope: !2853)
!2857 = !DILocation(line: 99, column: 31, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !2763, line: 99, column: 13)
!2859 = !DILocation(line: 99, column: 13, scope: !2853)
!2860 = !DILocation(line: 100, column: 67, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2858, file: !2763, line: 99, column: 47)
!2862 = !DILocation(line: 100, column: 48, scope: !2861)
!2863 = !DILocation(line: 101, column: 47, scope: !2861)
!2864 = !DILocation(line: 101, column: 57, scope: !2861)
!2865 = !DILocation(line: 101, column: 34, scope: !2861)
!2866 = !DILocation(line: 100, column: 85, scope: !2861)
!2867 = !DILocation(line: 100, column: 17, scope: !2861)
!2868 = !DILocation(line: 100, column: 31, scope: !2861)
!2869 = !DILocation(line: 99, column: 43, scope: !2858)
!2870 = !DILocation(line: 99, column: 13, scope: !2858)
!2871 = distinct !{!2871, !2859, !2872, !303}
!2872 = !DILocation(line: 102, column: 13, scope: !2853)
!2873 = !DILocation(line: 103, column: 21, scope: !2846)
!2874 = !DILocation(line: 104, column: 44, scope: !2846)
!2875 = !DILocation(line: 104, column: 30, scope: !2846)
!2876 = !DILocation(line: 104, column: 29, scope: !2846)
!2877 = !DILocation(line: 94, column: 76, scope: !2843)
!2878 = !DILocation(line: 93, column: 9, scope: !2843)
!2879 = distinct !{!2879, !2827, !2880, !303}
!2880 = !DILocation(line: 105, column: 9, scope: !2828)
!2881 = !DILocation(line: 108, column: 19, scope: !2814)
!2882 = !DILocalVariable(name: "inverse", scope: !2762, file: !2763, line: 75, type: !14)
!2883 = !DILocation(line: 109, column: 9, scope: !2814)
!2884 = !DILocalVariable(name: "row", scope: !2885, file: !2763, line: 113, type: !45)
!2885 = distinct !DILexicalBlock(scope: !2814, file: !2763, line: 113, column: 9)
!2886 = !DILocation(line: 0, scope: !2885)
!2887 = !DILocation(line: 113, column: 14, scope: !2885)
!2888 = !DILocation(line: 113, scope: !2885)
!2889 = !DILocation(line: 113, column: 51, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2885, file: !2763, line: 113, column: 9)
!2891 = !DILocation(line: 113, column: 9, scope: !2885)
!2892 = !DILocation(line: 124, column: 9, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2814, file: !2763, line: 124, column: 9)
!2894 = !DILocation(line: 114, column: 33, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2890, file: !2763, line: 113, column: 84)
!2896 = !DILocation(line: 114, column: 63, scope: !2895)
!2897 = !DILocalVariable(name: "do_copy", scope: !2895, file: !2763, line: 114, type: !6)
!2898 = !DILocation(line: 0, scope: !2895)
!2899 = !DILocalVariable(name: "do_not_copy", scope: !2895, file: !2763, line: 115, type: !6)
!2900 = !DILocalVariable(name: "col", scope: !2901, file: !2763, line: 116, type: !45)
!2901 = distinct !DILexicalBlock(scope: !2895, file: !2763, line: 116, column: 13)
!2902 = !DILocation(line: 0, scope: !2901)
!2903 = !DILocation(line: 116, column: 18, scope: !2901)
!2904 = !DILocation(line: 116, scope: !2901)
!2905 = !DILocation(line: 116, column: 35, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !2763, line: 116, column: 13)
!2907 = !DILocation(line: 116, column: 13, scope: !2901)
!2908 = !DILocation(line: 118, column: 49, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !2763, line: 116, column: 53)
!2910 = !DILocation(line: 118, column: 59, scope: !2909)
!2911 = !DILocation(line: 118, column: 36, scope: !2909)
!2912 = !DILocation(line: 118, column: 34, scope: !2909)
!2913 = !DILocation(line: 119, column: 32, scope: !2909)
!2914 = !DILocation(line: 119, column: 30, scope: !2909)
!2915 = !DILocation(line: 118, column: 67, scope: !2909)
!2916 = !DILocation(line: 117, column: 30, scope: !2909)
!2917 = !DILocation(line: 117, column: 40, scope: !2909)
!2918 = !DILocation(line: 117, column: 17, scope: !2909)
!2919 = !DILocation(line: 117, column: 47, scope: !2909)
!2920 = !DILocation(line: 116, column: 49, scope: !2906)
!2921 = !DILocation(line: 116, column: 13, scope: !2906)
!2922 = distinct !{!2922, !2907, !2923, !303}
!2923 = !DILocation(line: 120, column: 13, scope: !2901)
!2924 = !DILocation(line: 113, column: 80, scope: !2890)
!2925 = !DILocation(line: 113, column: 9, scope: !2890)
!2926 = distinct !{!2926, !2891, !2927, !303}
!2927 = !DILocation(line: 121, column: 9, scope: !2885)
!2928 = !DILocation(line: 124, scope: !2893)
!2929 = !DILocalVariable(name: "row", scope: !2893, file: !2763, line: 124, type: !45)
!2930 = !DILocation(line: 0, scope: !2893)
!2931 = !DILocation(line: 124, column: 51, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2893, file: !2763, line: 124, column: 9)
!2933 = !DILocation(line: 125, column: 46, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2932, file: !2763, line: 124, column: 67)
!2935 = !DILocalVariable(name: "below_pivot", scope: !2934, file: !2763, line: 125, type: !14)
!2936 = !DILocation(line: 0, scope: !2934)
!2937 = !DILocation(line: 126, column: 74, scope: !2934)
!2938 = !DILocation(line: 126, column: 68, scope: !2934)
!2939 = !DILocation(line: 126, column: 41, scope: !2934)
!2940 = !DILocalVariable(name: "elt_to_elim", scope: !2934, file: !2763, line: 126, type: !14)
!2941 = !DILocation(line: 128, column: 63, scope: !2934)
!2942 = !DILocation(line: 129, column: 52, scope: !2934)
!2943 = !DILocation(line: 129, column: 46, scope: !2934)
!2944 = !DILocation(line: 128, column: 13, scope: !2934)
!2945 = !DILocation(line: 124, column: 63, scope: !2932)
!2946 = !DILocation(line: 124, column: 9, scope: !2932)
!2947 = distinct !{!2947, !2892, !2948, !303}
!2948 = !DILocation(line: 130, column: 9, scope: !2893)
!2949 = !DILocation(line: 132, column: 19, scope: !2814)
!2950 = !DILocation(line: 77, column: 57, scope: !2810)
!2951 = !DILocation(line: 77, column: 5, scope: !2810)
!2952 = distinct !{!2952, !2793, !2953, !303}
!2953 = !DILocation(line: 133, column: 5, scope: !2794)
!2954 = !DILocation(line: 138, scope: !2812)
!2955 = !DILocalVariable(name: "i", scope: !2812, file: !2763, line: 138, type: !45)
!2956 = !DILocation(line: 0, scope: !2812)
!2957 = !DILocation(line: 138, column: 23, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2812, file: !2763, line: 138, column: 5)
!2959 = !DILocation(line: 139, column: 47, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2958, file: !2763, line: 138, column: 37)
!2961 = !DILocation(line: 139, column: 43, scope: !2960)
!2962 = !DILocation(line: 139, column: 9, scope: !2960)
!2963 = !DILocalVariable(name: "j", scope: !2964, file: !2763, line: 140, type: !45)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !2763, line: 140, column: 9)
!2965 = !DILocation(line: 0, scope: !2964)
!2966 = !DILocation(line: 140, column: 14, scope: !2964)
!2967 = !DILocation(line: 140, scope: !2964)
!2968 = !DILocation(line: 140, column: 27, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2964, file: !2763, line: 140, column: 9)
!2970 = !DILocation(line: 140, column: 9, scope: !2964)
!2971 = !DILocation(line: 141, column: 32, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !2763, line: 140, column: 41)
!2973 = !DILocation(line: 141, column: 17, scope: !2972)
!2974 = !DILocation(line: 141, column: 13, scope: !2972)
!2975 = !DILocation(line: 141, column: 30, scope: !2972)
!2976 = !DILocation(line: 140, column: 37, scope: !2969)
!2977 = !DILocation(line: 140, column: 9, scope: !2969)
!2978 = distinct !{!2978, !2970, !2979, !303}
!2979 = !DILocation(line: 142, column: 9, scope: !2964)
!2980 = !DILocation(line: 138, column: 33, scope: !2958)
!2981 = !DILocation(line: 138, column: 5, scope: !2958)
!2982 = distinct !{!2982, !2811, !2983, !303}
!2983 = !DILocation(line: 143, column: 5, scope: !2812)
!2984 = !DILocation(line: 145, column: 5, scope: !2762)
!2985 = !DILocation(line: 146, column: 5, scope: !2762)
!2986 = !DILocation(line: 147, column: 5, scope: !2762)
!2987 = !DILocation(line: 148, column: 5, scope: !2762)
!2988 = !DILocation(line: 149, column: 1, scope: !2762)
!2989 = distinct !DISubprogram(name: "ct_compare_8", scope: !2990, file: !2990, line: 51, type: !1516, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2990 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2991 = !DILocalVariable(name: "a", arg: 1, scope: !2989, file: !2990, line: 51, type: !14)
!2992 = !DILocation(line: 0, scope: !2989)
!2993 = !DILocalVariable(name: "b", arg: 2, scope: !2989, file: !2990, line: 51, type: !14)
!2994 = !DILocation(line: 52, column: 42, scope: !2989)
!2995 = !DILocation(line: 52, column: 13, scope: !2989)
!2996 = !DILocation(line: 52, column: 71, scope: !2989)
!2997 = !DILocation(line: 52, column: 69, scope: !2989)
!2998 = !DILocation(line: 52, column: 5, scope: !2989)
!2999 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !3000, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!6, !14, !6}
!3002 = !DILocalVariable(name: "a", arg: 1, scope: !2999, file: !493, line: 28, type: !14)
!3003 = !DILocation(line: 0, scope: !2999)
!3004 = !DILocalVariable(name: "b", arg: 2, scope: !2999, file: !493, line: 28, type: !6)
!3005 = !DILocation(line: 31, column: 13, scope: !2999)
!3006 = !DILocation(line: 31, column: 10, scope: !2999)
!3007 = !DILocation(line: 31, column: 17, scope: !2999)
!3008 = !DILocalVariable(name: "p", scope: !2999, file: !493, line: 30, type: !6)
!3009 = !DILocation(line: 32, column: 13, scope: !2999)
!3010 = !DILocation(line: 32, column: 10, scope: !2999)
!3011 = !DILocation(line: 32, column: 17, scope: !2999)
!3012 = !DILocation(line: 32, column: 7, scope: !2999)
!3013 = !DILocation(line: 33, column: 13, scope: !2999)
!3014 = !DILocation(line: 33, column: 10, scope: !2999)
!3015 = !DILocation(line: 33, column: 17, scope: !2999)
!3016 = !DILocation(line: 33, column: 7, scope: !2999)
!3017 = !DILocation(line: 34, column: 13, scope: !2999)
!3018 = !DILocation(line: 34, column: 10, scope: !2999)
!3019 = !DILocation(line: 34, column: 17, scope: !2999)
!3020 = !DILocation(line: 34, column: 7, scope: !2999)
!3021 = !DILocalVariable(name: "top_p", scope: !2999, file: !493, line: 37, type: !6)
!3022 = !DILocation(line: 38, column: 32, scope: !2999)
!3023 = !DILocation(line: 38, column: 47, scope: !2999)
!3024 = !DILocation(line: 38, column: 38, scope: !2999)
!3025 = !DILocation(line: 38, column: 54, scope: !2999)
!3026 = !DILocalVariable(name: "out", scope: !2999, file: !493, line: 38, type: !6)
!3027 = !DILocation(line: 39, column: 5, scope: !2999)
!3028 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2763, file: !2763, line: 24, type: !3029, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !49, !5, !45}
!3031 = !DILocalVariable(name: "in", arg: 1, scope: !3028, file: !2763, line: 24, type: !49)
!3032 = !DILocation(line: 0, scope: !3028)
!3033 = !DILocalVariable(name: "out", arg: 2, scope: !3028, file: !2763, line: 24, type: !5)
!3034 = !DILocalVariable(name: "ncols", arg: 3, scope: !3028, file: !2763, line: 24, type: !45)
!3035 = !DILocalVariable(name: "out8", scope: !3028, file: !2763, line: 26, type: !18)
!3036 = !DILocalVariable(name: "i", scope: !3028, file: !2763, line: 25, type: !45)
!3037 = !DILocation(line: 27, column: 9, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3028, file: !2763, line: 27, column: 5)
!3039 = !DILocation(line: 27, scope: !3038)
!3040 = !DILocation(line: 27, column: 17, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !2763, line: 27, column: 5)
!3042 = !DILocation(line: 27, column: 20, scope: !3041)
!3043 = !DILocation(line: 27, column: 5, scope: !3038)
!3044 = !DILocation(line: 31, column: 23, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3041, file: !2763, line: 27, column: 36)
!3046 = !DILocation(line: 31, column: 44, scope: !3045)
!3047 = !DILocation(line: 31, column: 40, scope: !3045)
!3048 = !DILocation(line: 31, column: 48, scope: !3045)
!3049 = !DILocation(line: 31, column: 37, scope: !3045)
!3050 = !DILocation(line: 31, column: 15, scope: !3045)
!3051 = !DILocation(line: 31, column: 9, scope: !3045)
!3052 = !DILocation(line: 31, column: 20, scope: !3045)
!3053 = !DILocation(line: 27, column: 31, scope: !3041)
!3054 = !DILocation(line: 27, column: 5, scope: !3041)
!3055 = distinct !{!3055, !3043, !3056, !303}
!3056 = !DILocation(line: 33, column: 5, scope: !3038)
!3057 = !DILocation(line: 34, column: 19, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3028, file: !2763, line: 34, column: 9)
!3059 = !DILocation(line: 38, column: 23, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3058, file: !2763, line: 34, column: 24)
!3061 = !DILocation(line: 38, column: 15, scope: !3060)
!3062 = !DILocation(line: 38, column: 9, scope: !3060)
!3063 = !DILocation(line: 38, column: 20, scope: !3060)
!3064 = !DILocation(line: 40, column: 5, scope: !3060)
!3065 = !DILocation(line: 41, column: 1, scope: !3028)
!3066 = distinct !DISubprogram(name: "ct_compare_64", scope: !2990, file: !2990, line: 46, type: !3067, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!6, !45, !45}
!3069 = !DILocalVariable(name: "a", arg: 1, scope: !3066, file: !2990, line: 46, type: !45)
!3070 = !DILocation(line: 0, scope: !3066)
!3071 = !DILocalVariable(name: "b", arg: 2, scope: !3066, file: !2990, line: 46, type: !45)
!3072 = !DILocation(line: 47, column: 38, scope: !3066)
!3073 = !DILocation(line: 47, column: 44, scope: !3066)
!3074 = !DILocation(line: 47, column: 73, scope: !3066)
!3075 = !DILocation(line: 47, column: 71, scope: !3066)
!3076 = !DILocation(line: 47, column: 5, scope: !3066)
!3077 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !2990, file: !2990, line: 35, type: !3067, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3078 = !DILocalVariable(name: "a", arg: 1, scope: !3077, file: !2990, line: 35, type: !45)
!3079 = !DILocation(line: 0, scope: !3077)
!3080 = !DILocalVariable(name: "b", arg: 2, scope: !3077, file: !2990, line: 35, type: !45)
!3081 = !DILocalVariable(name: "diff", scope: !3077, file: !2990, line: 36, type: !46)
!3082 = !DILocation(line: 37, column: 30, scope: !3077)
!3083 = !DILocation(line: 37, column: 59, scope: !3077)
!3084 = !DILocation(line: 37, column: 57, scope: !3077)
!3085 = !DILocation(line: 37, column: 5, scope: !3077)
!3086 = distinct !DISubprogram(name: "m_extract_element", scope: !2763, file: !2763, line: 16, type: !3087, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!14, !326, !45}
!3089 = !DILocalVariable(name: "in", arg: 1, scope: !3086, file: !2763, line: 16, type: !326)
!3090 = !DILocation(line: 0, scope: !3086)
!3091 = !DILocalVariable(name: "index", arg: 2, scope: !3086, file: !2763, line: 16, type: !45)
!3092 = !DILocation(line: 17, column: 27, scope: !3086)
!3093 = !DILocalVariable(name: "leg", scope: !3086, file: !2763, line: 17, type: !239)
!3094 = !DILocation(line: 18, column: 30, scope: !3086)
!3095 = !DILocalVariable(name: "offset", scope: !3086, file: !2763, line: 18, type: !239)
!3096 = !DILocation(line: 20, column: 13, scope: !3086)
!3097 = !DILocation(line: 20, column: 31, scope: !3086)
!3098 = !DILocation(line: 20, column: 21, scope: !3086)
!3099 = !DILocation(line: 20, column: 12, scope: !3086)
!3100 = !DILocation(line: 20, column: 5, scope: !3086)
!3101 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3102, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!14, !14}
!3104 = !DILocalVariable(name: "a", arg: 1, scope: !3101, file: !493, line: 57, type: !14)
!3105 = !DILocation(line: 0, scope: !3101)
!3106 = !DILocation(line: 61, column: 24, scope: !3101)
!3107 = !DILocalVariable(name: "a2", scope: !3101, file: !493, line: 61, type: !14)
!3108 = !DILocation(line: 62, column: 24, scope: !3101)
!3109 = !DILocalVariable(name: "a4", scope: !3101, file: !493, line: 62, type: !14)
!3110 = !DILocation(line: 63, column: 24, scope: !3101)
!3111 = !DILocalVariable(name: "a8", scope: !3101, file: !493, line: 63, type: !14)
!3112 = !DILocation(line: 64, column: 24, scope: !3101)
!3113 = !DILocalVariable(name: "a6", scope: !3101, file: !493, line: 64, type: !14)
!3114 = !DILocation(line: 65, column: 25, scope: !3101)
!3115 = !DILocalVariable(name: "a14", scope: !3101, file: !493, line: 65, type: !14)
!3116 = !DILocation(line: 67, column: 5, scope: !3101)
!3117 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !2990, file: !2990, line: 94, type: !3118, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !239, !326, !14, !5}
!3120 = !DILocalVariable(name: "legs", arg: 1, scope: !3117, file: !2990, line: 94, type: !239)
!3121 = !DILocation(line: 0, scope: !3117)
!3122 = !DILocalVariable(name: "in", arg: 2, scope: !3117, file: !2990, line: 94, type: !326)
!3123 = !DILocalVariable(name: "a", arg: 3, scope: !3117, file: !2990, line: 94, type: !14)
!3124 = !DILocalVariable(name: "acc", arg: 4, scope: !3117, file: !2990, line: 94, type: !5)
!3125 = !DILocation(line: 95, column: 20, scope: !3117)
!3126 = !DILocalVariable(name: "tab", scope: !3117, file: !2990, line: 95, type: !19)
!3127 = !DILocalVariable(name: "lsb_ask", scope: !3117, file: !2990, line: 97, type: !6)
!3128 = !DILocalVariable(name: "i", scope: !3129, file: !2990, line: 99, type: !45)
!3129 = distinct !DILexicalBlock(scope: !3117, file: !2990, line: 99, column: 5)
!3130 = !DILocation(line: 0, scope: !3129)
!3131 = !DILocation(line: 99, column: 9, scope: !3129)
!3132 = !DILocation(line: 99, scope: !3129)
!3133 = !DILocation(line: 99, column: 20, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3129, file: !2990, line: 99, column: 5)
!3135 = !DILocation(line: 99, column: 5, scope: !3129)
!3136 = !DILocation(line: 100, column: 21, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3134, file: !2990, line: 99, column: 32)
!3138 = !DILocation(line: 100, column: 33, scope: !3137)
!3139 = !DILocation(line: 100, column: 51, scope: !3137)
!3140 = !DILocation(line: 100, column: 46, scope: !3137)
!3141 = !DILocation(line: 100, column: 44, scope: !3137)
!3142 = !DILocation(line: 101, column: 27, scope: !3137)
!3143 = !DILocation(line: 101, column: 33, scope: !3137)
!3144 = !DILocation(line: 101, column: 52, scope: !3137)
!3145 = !DILocation(line: 101, column: 59, scope: !3137)
!3146 = !DILocation(line: 101, column: 46, scope: !3137)
!3147 = !DILocation(line: 101, column: 44, scope: !3137)
!3148 = !DILocation(line: 101, column: 17, scope: !3137)
!3149 = !DILocation(line: 102, column: 21, scope: !3137)
!3150 = !DILocation(line: 102, column: 27, scope: !3137)
!3151 = !DILocation(line: 102, column: 33, scope: !3137)
!3152 = !DILocation(line: 102, column: 52, scope: !3137)
!3153 = !DILocation(line: 102, column: 59, scope: !3137)
!3154 = !DILocation(line: 102, column: 46, scope: !3137)
!3155 = !DILocation(line: 102, column: 44, scope: !3137)
!3156 = !DILocation(line: 102, column: 17, scope: !3137)
!3157 = !DILocation(line: 103, column: 21, scope: !3137)
!3158 = !DILocation(line: 103, column: 27, scope: !3137)
!3159 = !DILocation(line: 103, column: 33, scope: !3137)
!3160 = !DILocation(line: 103, column: 52, scope: !3137)
!3161 = !DILocation(line: 103, column: 59, scope: !3137)
!3162 = !DILocation(line: 103, column: 46, scope: !3137)
!3163 = !DILocation(line: 103, column: 44, scope: !3137)
!3164 = !DILocation(line: 103, column: 17, scope: !3137)
!3165 = !DILocation(line: 100, column: 9, scope: !3137)
!3166 = !DILocation(line: 100, column: 16, scope: !3137)
!3167 = !DILocation(line: 99, column: 29, scope: !3134)
!3168 = !DILocation(line: 99, column: 5, scope: !3134)
!3169 = distinct !{!3169, !3135, !3170, !303}
!3170 = !DILocation(line: 104, column: 5, scope: !3129)
!3171 = !DILocation(line: 105, column: 1, scope: !3117)
!3172 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2763, file: !2763, line: 44, type: !3173, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !45, !326, !18}
!3175 = !DILocalVariable(name: "legs", arg: 1, scope: !3172, file: !2763, line: 44, type: !45)
!3176 = !DILocation(line: 0, scope: !3172)
!3177 = !DILocalVariable(name: "in", arg: 2, scope: !3172, file: !2763, line: 44, type: !326)
!3178 = !DILocalVariable(name: "out", arg: 3, scope: !3172, file: !2763, line: 44, type: !18)
!3179 = !DILocalVariable(name: "in8", scope: !3172, file: !2763, line: 45, type: !49)
!3180 = !DILocalVariable(name: "i", scope: !3181, file: !2763, line: 46, type: !45)
!3181 = distinct !DILexicalBlock(scope: !3172, file: !2763, line: 46, column: 5)
!3182 = !DILocation(line: 0, scope: !3181)
!3183 = !DILocation(line: 46, column: 9, scope: !3181)
!3184 = !DILocation(line: 46, scope: !3181)
!3185 = !DILocation(line: 46, column: 29, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3181, file: !2763, line: 46, column: 5)
!3187 = !DILocation(line: 46, column: 22, scope: !3186)
!3188 = !DILocation(line: 46, column: 5, scope: !3181)
!3189 = !DILocation(line: 51, column: 26, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !2763, line: 46, column: 42)
!3191 = !DILocation(line: 51, column: 21, scope: !3190)
!3192 = !DILocation(line: 51, column: 31, scope: !3190)
!3193 = !DILocation(line: 51, column: 9, scope: !3190)
!3194 = !DILocation(line: 51, column: 18, scope: !3190)
!3195 = !DILocation(line: 52, column: 26, scope: !3190)
!3196 = !DILocation(line: 52, column: 21, scope: !3190)
!3197 = !DILocation(line: 52, column: 30, scope: !3190)
!3198 = !DILocation(line: 52, column: 14, scope: !3190)
!3199 = !DILocation(line: 52, column: 9, scope: !3190)
!3200 = !DILocation(line: 52, column: 18, scope: !3190)
!3201 = !DILocation(line: 46, column: 37, scope: !3186)
!3202 = !DILocation(line: 46, column: 5, scope: !3186)
!3203 = distinct !{!3203, !3188, !3204, !303}
!3204 = !DILocation(line: 54, column: 5, scope: !3181)
!3205 = !DILocation(line: 55, column: 1, scope: !3172)
!3206 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3207 = !DILocalVariable(name: "b", arg: 1, scope: !3206, file: !493, line: 129, type: !12)
!3208 = !DILocation(line: 0, scope: !3206)
!3209 = !DILocation(line: 130, column: 19, scope: !3206)
!3210 = !DILocation(line: 130, column: 33, scope: !3206)
!3211 = !DILocalVariable(name: "x", scope: !3206, file: !493, line: 130, type: !19)
!3212 = !DILocalVariable(name: "high_nibble_mask", scope: !3206, file: !493, line: 132, type: !19)
!3213 = !DILocation(line: 134, column: 28, scope: !3206)
!3214 = !DILocalVariable(name: "high_half", scope: !3206, file: !493, line: 134, type: !19)
!3215 = !DILocation(line: 135, column: 28, scope: !3206)
!3216 = !DILocation(line: 135, column: 47, scope: !3206)
!3217 = !DILocation(line: 135, column: 34, scope: !3206)
!3218 = !DILocation(line: 135, column: 5, scope: !3206)
!3219 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1516, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3220 = !DILocalVariable(name: "a", arg: 1, scope: !3219, file: !493, line: 9, type: !14)
!3221 = !DILocation(line: 0, scope: !3219)
!3222 = !DILocalVariable(name: "b", arg: 2, scope: !3219, file: !493, line: 9, type: !14)
!3223 = !DILocation(line: 14, column: 10, scope: !3219)
!3224 = !DILocation(line: 14, column: 7, scope: !3219)
!3225 = !DILocation(line: 17, column: 17, scope: !3219)
!3226 = !DILocalVariable(name: "p", scope: !3219, file: !493, line: 11, type: !14)
!3227 = !DILocation(line: 18, column: 13, scope: !3219)
!3228 = !DILocation(line: 18, column: 17, scope: !3219)
!3229 = !DILocation(line: 18, column: 7, scope: !3219)
!3230 = !DILocation(line: 19, column: 13, scope: !3219)
!3231 = !DILocation(line: 19, column: 17, scope: !3219)
!3232 = !DILocation(line: 19, column: 7, scope: !3219)
!3233 = !DILocation(line: 20, column: 13, scope: !3219)
!3234 = !DILocation(line: 20, column: 17, scope: !3219)
!3235 = !DILocation(line: 20, column: 7, scope: !3219)
!3236 = !DILocalVariable(name: "top_p", scope: !3219, file: !493, line: 23, type: !14)
!3237 = !DILocation(line: 24, column: 37, scope: !3219)
!3238 = !DILocation(line: 24, column: 52, scope: !3219)
!3239 = !DILocation(line: 24, column: 43, scope: !3219)
!3240 = !DILocation(line: 24, column: 59, scope: !3219)
!3241 = !DILocalVariable(name: "out", scope: !3219, file: !493, line: 24, type: !14)
!3242 = !DILocation(line: 25, column: 5, scope: !3219)
!3243 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1524, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3244 = !DILocalVariable(name: "a", arg: 1, scope: !3243, file: !493, line: 70, type: !49)
!3245 = !DILocation(line: 0, scope: !3243)
!3246 = !DILocalVariable(name: "b", arg: 2, scope: !3243, file: !493, line: 71, type: !49)
!3247 = !DILocalVariable(name: "n", arg: 3, scope: !3243, file: !493, line: 71, type: !45)
!3248 = !DILocalVariable(name: "m", arg: 4, scope: !3243, file: !493, line: 71, type: !45)
!3249 = !DILocalVariable(name: "ret", scope: !3243, file: !493, line: 72, type: !14)
!3250 = !DILocalVariable(name: "i", scope: !3251, file: !493, line: 73, type: !45)
!3251 = distinct !DILexicalBlock(scope: !3243, file: !493, line: 73, column: 5)
!3252 = !DILocation(line: 0, scope: !3251)
!3253 = !DILocation(line: 73, column: 10, scope: !3251)
!3254 = !DILocation(line: 73, scope: !3251)
!3255 = !DILocation(line: 73, column: 23, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3251, file: !493, line: 73, column: 5)
!3257 = !DILocation(line: 73, column: 5, scope: !3251)
!3258 = !DILocation(line: 74, column: 27, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3256, file: !493, line: 73, column: 41)
!3260 = !DILocation(line: 74, column: 33, scope: !3259)
!3261 = !DILocation(line: 74, column: 21, scope: !3259)
!3262 = !DILocation(line: 74, column: 15, scope: !3259)
!3263 = !DILocation(line: 73, column: 28, scope: !3256)
!3264 = !DILocation(line: 73, column: 35, scope: !3256)
!3265 = !DILocation(line: 73, column: 5, scope: !3256)
!3266 = distinct !{!3266, !3257, !3267, !303}
!3267 = !DILocation(line: 75, column: 5, scope: !3251)
!3268 = !DILocation(line: 76, column: 5, scope: !3243)
!3269 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1516, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3270 = !DILocalVariable(name: "a", arg: 1, scope: !3269, file: !493, line: 43, type: !14)
!3271 = !DILocation(line: 0, scope: !3269)
!3272 = !DILocalVariable(name: "b", arg: 2, scope: !3269, file: !493, line: 43, type: !14)
!3273 = !DILocation(line: 44, column: 14, scope: !3269)
!3274 = !DILocation(line: 44, column: 5, scope: !3269)
