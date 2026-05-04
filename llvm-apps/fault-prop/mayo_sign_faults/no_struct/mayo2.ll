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
  store i8 0, ptr %add.ptr24, align 1, !dbg !796
  %call32 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 162, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !797
    #dbg_value(i32 0, !798, !DIExpression(), !800)
  br label %for.cond, !dbg !801

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !802
    #dbg_value(i32 %i.0, !798, !DIExpression(), !800)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !803
  br i1 %exitcond, label %for.body, label %for.end, !dbg !805

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 5, !dbg !806
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !808
  %mul37 = shl nuw nsw i32 %i.0, 6, !dbg !809
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !810
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 64) #6, !dbg !811
  %inc = add nuw nsw i32 %i.0, 1, !dbg !812
    #dbg_value(i32 %inc, !798, !DIExpression(), !800)
  br label %for.cond, !dbg !813, !llvm.loop !814

for.end:                                          ; preds = %for.cond
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !816
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !817
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !818
    #dbg_value(i32 0, !819, !DIExpression(), !821)
  br label %for.cond48, !dbg !822

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !823
    #dbg_value(i32 %i47.0, !819, !DIExpression(), !821)
  %exitcond1 = icmp ne i32 %i47.0, 64, !dbg !824
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !826

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 69, !dbg !827
  %sub = add nuw nsw i32 %0, 68, !dbg !829
  %arrayidx = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub, !dbg !830
  store i8 0, ptr %arrayidx, align 1, !dbg !831
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !832
    #dbg_value(i32 %inc53, !819, !DIExpression(), !821)
  br label %for.cond48, !dbg !833, !llvm.loop !834

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 128, !dbg !836
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 68) #6, !dbg !837
  %call62 = call i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 4, i32 noundef 17, i32 noundef 64, i32 noundef 69) #6, !dbg !838
  %tobool.not = icmp eq i32 %call62, 0, !dbg !838
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !838

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 2176) #8, !dbg !840
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 4416) #8, !dbg !842
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !843, !DIExpression(), !845)
  br label %for.cond70, !dbg !846

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !847
    #dbg_value(i32 %i69.0, !843, !DIExpression(), !845)
  %exitcond2 = icmp ne i32 %i69.0, 4, !dbg !848
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !850

for.body72:                                       ; preds = %for.cond70
  %mul74 = shl nuw nsw i32 %i69.0, 6, !dbg !851
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !853
    #dbg_value(ptr %add.ptr75, !854, !DIExpression(), !702)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !855
  %mul80 = mul nuw nsw i32 %i69.0, 17, !dbg !856
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !857
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 17, i32 noundef 64, i32 noundef 1) #6, !dbg !858
  %mul85 = mul nuw nsw i32 %i69.0, 81, !dbg !859
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !860
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 64, i32 noundef 1) #6, !dbg !861
  %mul88 = mul nuw nsw i32 %i69.0, 81, !dbg !862
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !863
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 64, !dbg !864
  %mul92 = mul nuw nsw i32 %i69.0, 17, !dbg !865
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !866
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 17) #8, !dbg !867
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !868
    #dbg_value(i32 %inc96, !843, !DIExpression(), !845)
  br label %for.cond70, !dbg !869, !llvm.loop !870

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 324) #6, !dbg !872
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !873
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !874
  store i32 186, ptr %siglen, align 4, !dbg !875
  br label %err, !dbg !876

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !702
    #dbg_value(i32 %ret.0, !708, !DIExpression(), !702)
    #dbg_label(!877, !878)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 162) #8, !dbg !879
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 256) #8, !dbg !880
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 4416) #8, !dbg !881
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 69) #8, !dbg !882
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !883
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1088) #8, !dbg !884
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 102464) #8, !dbg !885
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 64) #8, !dbg !886
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !887
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 2176) #8, !dbg !888
  ret i32 %ret.0, !dbg !889
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !890 {
entry:
  %Pv = alloca [1024 x i64], align 8
    #dbg_value(ptr %p, !893, !DIExpression(), !894)
    #dbg_value(ptr %Vdec, !895, !DIExpression(), !894)
    #dbg_value(ptr %L, !896, !DIExpression(), !894)
    #dbg_value(ptr %P1, !897, !DIExpression(), !894)
    #dbg_value(ptr %VL, !898, !DIExpression(), !894)
    #dbg_value(ptr %VP1V, !899, !DIExpression(), !894)
    #dbg_value(i32 4, !900, !DIExpression(), !894)
    #dbg_value(i32 64, !901, !DIExpression(), !894)
    #dbg_value(i32 17, !902, !DIExpression(), !894)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 4, i32 noundef 64, i32 noundef 17) #6, !dbg !903
    #dbg_declare(ptr %Pv, !904, !DIExpression(), !908)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %Pv, i8 0, i32 8192, i1 false), !dbg !908
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !909
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 4, i32 noundef 64, i32 noundef 4) #6, !dbg !910
  ret void, !dbg !911
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !912 {
entry:
  %temp = alloca [4 x i64], align 8
    #dbg_value(ptr %p, !915, !DIExpression(), !916)
    #dbg_value(ptr %vPv, !917, !DIExpression(), !916)
    #dbg_value(ptr %t, !918, !DIExpression(), !916)
    #dbg_value(ptr %y, !919, !DIExpression(), !916)
    #dbg_value(i32 60, !920, !DIExpression(), !916)
    #dbg_value(i32 4, !922, !DIExpression(), !916)
    #dbg_declare(ptr %temp, !923, !DIExpression(), !924)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %temp, i8 0, i32 32, i1 false), !dbg !924
    #dbg_value(ptr %temp, !925, !DIExpression(), !916)
    #dbg_value(i32 3, !926, !DIExpression(), !928)
  br label %for.cond, !dbg !929

for.cond:                                         ; preds = %for.inc65, %entry
  %i.0 = phi i32 [ 3, %entry ], [ %dec66, %for.inc65 ], !dbg !930
    #dbg_value(i32 %i.0, !926, !DIExpression(), !928)
  %cmp = icmp sgt i32 %i.0, -1, !dbg !931
  br i1 %cmp, label %for.cond1.preheader, label %for.cond69.preheader, !dbg !933

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !934

for.cond69.preheader:                             ; preds = %for.cond
  br label %for.cond69, !dbg !937

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc62
  %j.0 = phi i32 [ %inc63, %for.inc62 ], [ %i.0, %for.cond1.preheader ], !dbg !939
    #dbg_value(i32 %j.0, !940, !DIExpression(), !941)
  %exitcond6 = icmp ne i32 %j.0, 4, !dbg !942
  br i1 %exitcond6, label %for.body3, label %for.inc65, !dbg !934

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !944
  %0 = load i64, ptr %arrayidx, align 8, !dbg !944
  %shr = lshr i64 %0, 60, !dbg !946
    #dbg_value(i8 %conv, !947, !DIExpression(), !948)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !949
  %shl = shl i64 %0, 4, !dbg !950
  store i64 %shl, ptr %arrayidx4, align 8, !dbg !950
    #dbg_value(i32 2, !951, !DIExpression(), !953)
  br label %for.cond5, !dbg !954

for.cond5:                                        ; preds = %for.body8, %for.body3
  %k.0 = phi i32 [ 2, %for.body3 ], [ %dec, %for.body8 ], !dbg !955
    #dbg_value(i32 %k.0, !951, !DIExpression(), !953)
  %cmp6 = icmp sgt i32 %k.0, -1, !dbg !956
  br i1 %cmp6, label %for.body8, label %for.cond14.preheader, !dbg !958

for.cond14.preheader:                             ; preds = %for.cond5
  %conv = trunc nuw nsw i64 %shr to i8, !dbg !959
  br label %for.cond14, !dbg !960

for.body8:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !962
  %1 = load i64, ptr %arrayidx9, align 8, !dbg !962
  %shr10 = lshr i64 %1, 60, !dbg !964
  %add = add nuw nsw i32 %k.0, 1, !dbg !965
  %arrayidx11 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %add, !dbg !966
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !967
  %xor = xor i64 %2, %shr10, !dbg !967
  store i64 %xor, ptr %arrayidx11, align 8, !dbg !967
  %arrayidx12 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !968
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !969
  %shl13 = shl i64 %3, 4, !dbg !969
  store i64 %shl13, ptr %arrayidx12, align 8, !dbg !969
  %dec = add nsw i32 %k.0, -1, !dbg !970
    #dbg_value(i32 %dec, !951, !DIExpression(), !953)
  br label %for.cond5, !dbg !971, !llvm.loop !972

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc36
  %jj.0 = phi i32 [ %inc, %for.inc36 ], [ 0, %for.cond14.preheader ], !dbg !974
    #dbg_value(i32 %jj.0, !975, !DIExpression(), !976)
  %exitcond = icmp ne i32 %jj.0, 4, !dbg !977
  br i1 %exitcond, label %for.body17, label %for.cond39.preheader, !dbg !960

for.cond39.preheader:                             ; preds = %for.cond14
  br label %for.cond39, !dbg !979

for.body17:                                       ; preds = %for.cond14
  %rem18 = and i32 %jj.0, 1, !dbg !981
  %cmp19 = icmp eq i32 %rem18, 0, !dbg !984
  br i1 %cmp19, label %if.then, label %if.else, !dbg !984

if.then:                                          ; preds = %for.body17
  %arrayidx21 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !985
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !985
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %4) #6, !dbg !987
  %div = lshr exact i32 %jj.0, 1, !dbg !988
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !989
  %5 = load i8, ptr %arrayidx23, align 1, !dbg !990
  %xor254 = xor i8 %5, %call, !dbg !990
  store i8 %xor254, ptr %arrayidx23, align 1, !dbg !990
  br label %for.inc36, !dbg !991

if.else:                                          ; preds = %for.body17
  %arrayidx27 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !992
  %6 = load i8, ptr %arrayidx27, align 1, !dbg !992
  %call28 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %6) #6, !dbg !994
  %shl30 = shl nuw i8 %call28, 4, !dbg !995
  %div313 = lshr i32 %jj.0, 1, !dbg !996
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %temp, i32 %div313, !dbg !997
  %7 = load i8, ptr %arrayidx32, align 1, !dbg !998
  %xor34 = xor i8 %shl30, %7, !dbg !998
  store i8 %xor34, ptr %arrayidx32, align 1, !dbg !998
  br label %for.inc36

for.inc36:                                        ; preds = %if.then, %if.else
  %inc = add nuw nsw i32 %jj.0, 1, !dbg !999
    #dbg_value(i32 %inc, !975, !DIExpression(), !976)
  br label %for.cond14, !dbg !1000, !llvm.loop !1001

for.cond39:                                       ; preds = %for.cond39.preheader, %for.body42
  %k38.0 = phi i32 [ %inc60, %for.body42 ], [ 0, %for.cond39.preheader ], !dbg !1003
    #dbg_value(i32 %k38.0, !1004, !DIExpression(), !1005)
  %exitcond5 = icmp ne i32 %k38.0, 4, !dbg !1006
  br i1 %exitcond5, label %for.body42, label %for.inc62, !dbg !979

for.body42:                                       ; preds = %for.cond39
  %8 = shl i32 %i.0, 4, !dbg !1008
  %9 = shl i32 %j.0, 2, !dbg !1008
  %mul44 = add nsw i32 %8, %9, !dbg !1008
  %add45 = or disjoint i32 %mul44, %k38.0, !dbg !1010
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45, !dbg !1011
  %10 = load i64, ptr %arrayidx46, align 8, !dbg !1011
  %cmp47.not = icmp eq i32 %i.0, %j.0, !dbg !1012
  %11 = shl i32 %j.0, 4, !dbg !1013
  %12 = shl i32 %i.0, 2, !dbg !1013
  %mul52 = add nsw i32 %11, %12, !dbg !1013
  %add53 = or disjoint i32 %mul52, %k38.0, !dbg !1014
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53, !dbg !1015
  %13 = load i64, ptr %arrayidx54, align 8, !dbg !1015
  %mul55 = select i1 %cmp47.not, i64 0, i64 %13, !dbg !1016
  %xor56 = xor i64 %10, %mul55, !dbg !1017
  %arrayidx57 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k38.0, !dbg !1018
  %14 = load i64, ptr %arrayidx57, align 8, !dbg !1019
  %xor58 = xor i64 %14, %xor56, !dbg !1019
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1019
  %inc60 = add nuw nsw i32 %k38.0, 1, !dbg !1020
    #dbg_value(i32 %inc60, !1004, !DIExpression(), !1005)
  br label %for.cond39, !dbg !1021, !llvm.loop !1022

for.inc62:                                        ; preds = %for.cond39
  %inc63 = add nuw nsw i32 %j.0, 1, !dbg !1024
    #dbg_value(i32 %inc63, !940, !DIExpression(), !941)
  br label %for.cond1, !dbg !1025, !llvm.loop !1026

for.inc65:                                        ; preds = %for.cond1
  %dec66 = add nsw i32 %i.0, -1, !dbg !1028
    #dbg_value(i32 %dec66, !926, !DIExpression(), !928)
  br label %for.cond, !dbg !1029, !llvm.loop !1030

for.cond69:                                       ; preds = %for.cond69.preheader, %for.body72
  %i68.0 = phi i32 [ %add93, %for.body72 ], [ 0, %for.cond69.preheader ], !dbg !1032
    #dbg_value(i32 %i68.0, !1033, !DIExpression(), !1034)
  %cmp70 = icmp samesign ult i32 %i68.0, 64, !dbg !1035
  br i1 %cmp70, label %for.body72, label %for.end94, !dbg !937

for.body72:                                       ; preds = %for.cond69
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %t, i32 %i68.0, !dbg !1037
  %15 = load i8, ptr %arrayidx73, align 1, !dbg !1037
  %div75 = lshr exact i32 %i68.0, 1, !dbg !1039
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75, !dbg !1040
  %16 = load i8, ptr %arrayidx76, align 1, !dbg !1040
  %17 = and i8 %16, 15, !dbg !1041
  %xor781 = xor i8 %15, %17, !dbg !1042
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %y, i32 %i68.0, !dbg !1043
  store i8 %xor781, ptr %arrayidx80, align 1, !dbg !1044
  %add81 = or disjoint i32 %i68.0, 1, !dbg !1045
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %t, i32 %add81, !dbg !1046
  %18 = load i8, ptr %arrayidx82, align 1, !dbg !1046
  %div84 = lshr exact i32 %i68.0, 1, !dbg !1047
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %temp, i32 %div84, !dbg !1048
  %19 = load i8, ptr %arrayidx85, align 1, !dbg !1048
  %20 = lshr i8 %19, 4, !dbg !1049
  %xor882 = xor i8 %18, %20, !dbg !1050
  %add90 = or disjoint i32 %i68.0, 1, !dbg !1051
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %y, i32 %add90, !dbg !1052
  store i8 %xor882, ptr %arrayidx91, align 1, !dbg !1053
  %add93 = add nuw nsw i32 %i68.0, 2, !dbg !1054
    #dbg_value(i32 %add93, !1033, !DIExpression(), !1034)
  br label %for.cond69, !dbg !1055, !llvm.loop !1056

for.end94:                                        ; preds = %for.cond69
  ret void, !dbg !1058
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1059 {
entry:
  %A = alloca [640 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1062, !DIExpression(), !1063)
    #dbg_value(ptr %VtL, !1064, !DIExpression(), !1063)
    #dbg_value(ptr %A_out, !1065, !DIExpression(), !1063)
    #dbg_value(i32 0, !1066, !DIExpression(), !1063)
    #dbg_value(i32 0, !1067, !DIExpression(), !1063)
    #dbg_value(i32 4, !1068, !DIExpression(), !1063)
    #dbg_declare(ptr %A, !1069, !DIExpression(), !1073)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5120) %A, i8 0, i32 5120, i1 false), !dbg !1073
    #dbg_value(i32 80, !1074, !DIExpression(), !1063)
    #dbg_value(i32 0, !1075, !DIExpression(), !1077)
  br label %for.cond, !dbg !1078

for.cond:                                         ; preds = %for.inc90, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc91, %for.inc90 ], !dbg !1079
  %words_to_shift.0 = phi i32 [ 0, %entry ], [ %words_to_shift.1.lcssa, %for.inc90 ], !dbg !1080
  %bits_to_shift.0 = phi i32 [ 0, %entry ], [ %bits_to_shift.1.lcssa, %for.inc90 ], !dbg !1081
    #dbg_value(i32 %bits_to_shift.0, !1066, !DIExpression(), !1063)
    #dbg_value(i32 %words_to_shift.0, !1067, !DIExpression(), !1063)
    #dbg_value(i32 %i.0, !1075, !DIExpression(), !1077)
  %exitcond7 = icmp ne i32 %i.0, 4, !dbg !1082
  br i1 %exitcond7, label %for.cond1.preheader, label %for.cond94.preheader, !dbg !1084

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1085

for.cond94.preheader:                             ; preds = %for.cond
  br label %for.cond94, !dbg !1088

for.cond1:                                        ; preds = %for.cond1.preheader, %if.end82
  %j.0 = phi i32 [ %dec, %if.end82 ], [ 3, %for.cond1.preheader ], !dbg !1090
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end82 ], [ %words_to_shift.0, %for.cond1.preheader ], !dbg !1063
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end82 ], [ %bits_to_shift.0, %for.cond1.preheader ], !dbg !1063
    #dbg_value(i32 %bits_to_shift.1, !1066, !DIExpression(), !1063)
    #dbg_value(i32 %words_to_shift.1, !1067, !DIExpression(), !1063)
    #dbg_value(i32 %j.0, !1091, !DIExpression(), !1092)
  %cmp2.not = icmp slt i32 %j.0, %i.0, !dbg !1093
  br i1 %cmp2.not, label %for.inc90, label %for.body3, !dbg !1085

for.body3:                                        ; preds = %for.cond1
  %add.ptr.idx = mul nsw i32 %j.0, 544, !dbg !1095
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1095
    #dbg_value(ptr %add.ptr, !1097, !DIExpression(), !1063)
    #dbg_value(i32 0, !1098, !DIExpression(), !1100)
  br label %for.cond5, !dbg !1101

for.cond5:                                        ; preds = %for.inc31, %for.body3
  %c.0 = phi i32 [ 0, %for.body3 ], [ %inc32, %for.inc31 ], !dbg !1102
    #dbg_value(i32 %c.0, !1098, !DIExpression(), !1100)
  %exitcond4 = icmp ne i32 %c.0, 17, !dbg !1103
  br i1 %exitcond4, label %for.cond8.preheader, label %for.end33, !dbg !1105

for.cond8.preheader:                              ; preds = %for.cond5
  br label %for.cond8, !dbg !1106

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc
  %k.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond8.preheader ], !dbg !1109
    #dbg_value(i32 %k.0, !1110, !DIExpression(), !1111)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1112
  br i1 %exitcond, label %for.body10, label %for.inc31, !dbg !1106

for.body10:                                       ; preds = %for.cond8
  %mul11 = shl nuw nsw i32 %c.0, 2, !dbg !1114
  %add = or disjoint i32 %k.0, %mul11, !dbg !1116
  %arrayidx = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add, !dbg !1117
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1117
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1118
  %shl = shl i64 %0, %sh_prom, !dbg !1118
  %mul12 = mul nuw nsw i32 %i.0, 17, !dbg !1119
  %add13 = add nuw nsw i32 %mul12, %c.0, !dbg !1120
  %add14 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1121
  %mul15 = mul i32 %add14, 80, !dbg !1122
  %add16 = add i32 %add13, %mul15, !dbg !1123
  %arrayidx17 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16, !dbg !1124
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !1125
  %xor = xor i64 %1, %shl, !dbg !1125
  store i64 %xor, ptr %arrayidx17, align 8, !dbg !1125
  %cmp18 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1126
  br i1 %cmp18, label %if.then, label %for.inc, !dbg !1126

if.then:                                          ; preds = %for.body10
  %mul19 = shl nuw nsw i32 %c.0, 2, !dbg !1128
  %add20 = or disjoint i32 %k.0, %mul19, !dbg !1130
  %arrayidx21 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20, !dbg !1131
  %2 = load i64, ptr %arrayidx21, align 8, !dbg !1131
  %sub = sub nsw i32 64, %bits_to_shift.1, !dbg !1132
  %sh_prom22 = zext nneg i32 %sub to i64, !dbg !1133
  %shr = lshr i64 %2, %sh_prom22, !dbg !1133
  %mul23 = mul nuw nsw i32 %i.0, 17, !dbg !1134
  %add24 = add nuw nsw i32 %mul23, %c.0, !dbg !1135
  %add25 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1136
  %3 = mul i32 %add25, 80, !dbg !1137
  %mul27 = add i32 %3, 80, !dbg !1137
  %add28 = add i32 %add24, %mul27, !dbg !1138
  %arrayidx29 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28, !dbg !1139
  %4 = load i64, ptr %arrayidx29, align 8, !dbg !1140
  %xor30 = xor i64 %4, %shr, !dbg !1140
  store i64 %xor30, ptr %arrayidx29, align 8, !dbg !1140
  br label %for.inc, !dbg !1141

for.inc:                                          ; preds = %for.body10, %if.then
  %inc = add nuw nsw i32 %k.0, 1, !dbg !1142
    #dbg_value(i32 %inc, !1110, !DIExpression(), !1111)
  br label %for.cond8, !dbg !1143, !llvm.loop !1144

for.inc31:                                        ; preds = %for.cond8
  %inc32 = add nuw nsw i32 %c.0, 1, !dbg !1146
    #dbg_value(i32 %inc32, !1098, !DIExpression(), !1100)
  br label %for.cond5, !dbg !1147, !llvm.loop !1148

for.end33:                                        ; preds = %for.cond5
  %cmp34.not = icmp eq i32 %i.0, %j.0, !dbg !1150
  br i1 %cmp34.not, label %if.end82, label %if.then35, !dbg !1150

if.then35:                                        ; preds = %for.end33
  %add.ptr38.idx = mul nuw nsw i32 %i.0, 544, !dbg !1152
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr38.idx, !dbg !1152
    #dbg_value(ptr %add.ptr38, !1154, !DIExpression(), !1063)
    #dbg_value(i32 0, !1155, !DIExpression(), !1157)
  br label %for.cond40, !dbg !1158

for.cond40:                                       ; preds = %for.inc79, %if.then35
  %c39.0 = phi i32 [ 0, %if.then35 ], [ %inc80, %for.inc79 ], !dbg !1159
    #dbg_value(i32 %c39.0, !1155, !DIExpression(), !1157)
  %exitcond6 = icmp ne i32 %c39.0, 17, !dbg !1160
  br i1 %exitcond6, label %for.cond44.preheader, label %if.end82.loopexit, !dbg !1162

for.cond44.preheader:                             ; preds = %for.cond40
  br label %for.cond44, !dbg !1163

for.cond44:                                       ; preds = %for.cond44.preheader, %for.inc76
  %k43.0 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.cond44.preheader ], !dbg !1166
    #dbg_value(i32 %k43.0, !1167, !DIExpression(), !1168)
  %exitcond5 = icmp ne i32 %k43.0, 4, !dbg !1169
  br i1 %exitcond5, label %for.body46, label %for.inc79, !dbg !1163

for.body46:                                       ; preds = %for.cond44
  %mul47 = shl nuw nsw i32 %c39.0, 2, !dbg !1171
  %add48 = or disjoint i32 %k43.0, %mul47, !dbg !1173
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48, !dbg !1174
  %5 = load i64, ptr %arrayidx49, align 8, !dbg !1174
  %sh_prom50 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1175
  %shl51 = shl i64 %5, %sh_prom50, !dbg !1175
  %mul52 = mul nsw i32 %j.0, 17, !dbg !1176
  %add53 = add nsw i32 %mul52, %c39.0, !dbg !1177
  %add54 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1178
  %mul55 = mul i32 %add54, 80, !dbg !1179
  %add56 = add i32 %add53, %mul55, !dbg !1180
  %arrayidx57 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56, !dbg !1181
  %6 = load i64, ptr %arrayidx57, align 8, !dbg !1182
  %xor58 = xor i64 %6, %shl51, !dbg !1182
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1182
  %cmp59 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1183
  br i1 %cmp59, label %if.then60, label %for.inc76, !dbg !1183

if.then60:                                        ; preds = %for.body46
  %mul61 = shl nuw nsw i32 %c39.0, 2, !dbg !1185
  %add62 = or disjoint i32 %k43.0, %mul61, !dbg !1187
  %arrayidx63 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62, !dbg !1188
  %7 = load i64, ptr %arrayidx63, align 8, !dbg !1188
  %sub64 = sub nsw i32 64, %bits_to_shift.1, !dbg !1189
  %sh_prom65 = zext nneg i32 %sub64 to i64, !dbg !1190
  %shr66 = lshr i64 %7, %sh_prom65, !dbg !1190
  %mul67 = mul nsw i32 %j.0, 17, !dbg !1191
  %add68 = add nsw i32 %mul67, %c39.0, !dbg !1192
  %add69 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1193
  %8 = mul i32 %add69, 80, !dbg !1194
  %mul71 = add i32 %8, 80, !dbg !1194
  %add72 = add i32 %add68, %mul71, !dbg !1195
  %arrayidx73 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72, !dbg !1196
  %9 = load i64, ptr %arrayidx73, align 8, !dbg !1197
  %xor74 = xor i64 %9, %shr66, !dbg !1197
  store i64 %xor74, ptr %arrayidx73, align 8, !dbg !1197
  br label %for.inc76, !dbg !1198

for.inc76:                                        ; preds = %for.body46, %if.then60
  %inc77 = add nuw nsw i32 %k43.0, 1, !dbg !1199
    #dbg_value(i32 %inc77, !1167, !DIExpression(), !1168)
  br label %for.cond44, !dbg !1200, !llvm.loop !1201

for.inc79:                                        ; preds = %for.cond44
  %inc80 = add nuw nsw i32 %c39.0, 1, !dbg !1203
    #dbg_value(i32 %inc80, !1155, !DIExpression(), !1157)
  br label %for.cond40, !dbg !1204, !llvm.loop !1205

if.end82.loopexit:                                ; preds = %for.cond40
  br label %if.end82, !dbg !1207

if.end82:                                         ; preds = %if.end82.loopexit, %for.end33
  %add83 = add nsw i32 %bits_to_shift.1, 4, !dbg !1207
    #dbg_value(i32 %add83, !1066, !DIExpression(), !1063)
  %cmp84 = icmp eq i32 %add83, 64, !dbg !1208
  %inc86 = zext i1 %cmp84 to i32, !dbg !1208
  %spec.select = add nsw i32 %words_to_shift.1, %inc86, !dbg !1208
  %spec.select3 = select i1 %cmp84, i32 0, i32 %add83, !dbg !1208
    #dbg_value(i32 %spec.select3, !1066, !DIExpression(), !1063)
    #dbg_value(i32 %spec.select, !1067, !DIExpression(), !1063)
  %dec = add nsw i32 %j.0, -1, !dbg !1210
    #dbg_value(i32 %dec, !1091, !DIExpression(), !1092)
  br label %for.cond1, !dbg !1211, !llvm.loop !1212

for.inc90:                                        ; preds = %for.cond1
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond1 ], !dbg !1063
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond1 ], !dbg !1063
  %inc91 = add nuw nsw i32 %i.0, 1, !dbg !1214
    #dbg_value(i32 %inc91, !1075, !DIExpression(), !1077)
  br label %for.cond, !dbg !1215, !llvm.loop !1216

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %c93.0 = phi i32 [ %add100, %for.body97 ], [ 0, %for.cond94.preheader ], !dbg !1218
    #dbg_value(i32 %c93.0, !1219, !DIExpression(), !1220)
  %cmp96 = icmp samesign ult i32 %c93.0, 400, !dbg !1221
  br i1 %cmp96, label %for.body97, label %for.end101, !dbg !1088

for.body97:                                       ; preds = %for.cond94
  %add.ptr98 = getelementptr inbounds nuw i64, ptr %A, i32 %c93.0, !dbg !1223
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr98) #6, !dbg !1225
  %add100 = add nuw nsw i32 %c93.0, 16, !dbg !1226
    #dbg_value(i32 %add100, !1219, !DIExpression(), !1220)
  br label %for.cond94, !dbg !1227, !llvm.loop !1228

for.end101:                                       ; preds = %for.cond94
    #dbg_declare(ptr %tab, !1230, !DIExpression(), !1234)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1234
    #dbg_value(i32 0, !1235, !DIExpression(), !1237)
  br label %for.cond103, !dbg !1238

for.cond103:                                      ; preds = %for.body105, %for.end101
  %i102.0 = phi i32 [ 0, %for.end101 ], [ %inc125, %for.body105 ], !dbg !1239
    #dbg_value(i32 %i102.0, !1235, !DIExpression(), !1237)
  %exitcond8 = icmp ne i32 %i102.0, 4, !dbg !1240
  br i1 %exitcond8, label %for.body105, label %for.cond128.preheader, !dbg !1242

for.cond128.preheader:                            ; preds = %for.cond103
  br label %for.cond128, !dbg !1243

for.body105:                                      ; preds = %for.cond103
  %arrayidx106 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1245
  %10 = load i8, ptr %arrayidx106, align 1, !dbg !1245
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 1) #6, !dbg !1247
  %mul107 = shl nuw nsw i32 %i102.0, 2, !dbg !1248
  %arrayidx108 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107, !dbg !1249
  store i8 %call, ptr %arrayidx108, align 1, !dbg !1250
  %call110 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 2) #6, !dbg !1251
  %mul111 = shl nuw nsw i32 %i102.0, 2, !dbg !1252
  %add112 = or disjoint i32 %mul111, 1, !dbg !1253
  %arrayidx113 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112, !dbg !1254
  store i8 %call110, ptr %arrayidx113, align 1, !dbg !1255
  %arrayidx114 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1256
  %11 = load i8, ptr %arrayidx114, align 1, !dbg !1256
  %call115 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %11, i8 noundef zeroext 4) #6, !dbg !1257
  %mul116 = shl nuw nsw i32 %i102.0, 2, !dbg !1258
  %add117 = or disjoint i32 %mul116, 2, !dbg !1259
  %arrayidx118 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117, !dbg !1260
  store i8 %call115, ptr %arrayidx118, align 1, !dbg !1261
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1262
  %12 = load i8, ptr %arrayidx119, align 1, !dbg !1262
  %call120 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %12, i8 noundef zeroext 8) #6, !dbg !1263
  %mul121 = shl nuw nsw i32 %i102.0, 2, !dbg !1264
  %add122 = or disjoint i32 %mul121, 3, !dbg !1265
  %arrayidx123 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122, !dbg !1266
  store i8 %call120, ptr %arrayidx123, align 1, !dbg !1267
  %inc125 = add nuw nsw i32 %i102.0, 1, !dbg !1268
    #dbg_value(i32 %inc125, !1235, !DIExpression(), !1237)
  br label %for.cond103, !dbg !1269, !llvm.loop !1270

for.cond128:                                      ; preds = %for.cond128.preheader, %for.inc189
  %c127.0 = phi i32 [ %add190, %for.inc189 ], [ 0, %for.cond128.preheader ], !dbg !1272
    #dbg_value(i32 %c127.0, !1273, !DIExpression(), !1274)
  %cmp129 = icmp samesign ult i32 %c127.0, 80, !dbg !1275
  br i1 %cmp129, label %for.cond131.preheader, label %for.cond193.preheader, !dbg !1243

for.cond131.preheader:                            ; preds = %for.cond128
  br label %for.cond131, !dbg !1277

for.cond193.preheader:                            ; preds = %for.cond128
  br label %for.cond193, !dbg !1280

for.cond131:                                      ; preds = %for.cond131.preheader, %for.inc186
  %r.0 = phi i32 [ %inc187, %for.inc186 ], [ 64, %for.cond131.preheader ], !dbg !1282
    #dbg_value(i32 %r.0, !1283, !DIExpression(), !1284)
  %exitcond10 = icmp ne i32 %r.0, 74, !dbg !1285
  br i1 %exitcond10, label %for.body133, label %for.inc189, !dbg !1277

for.body133:                                      ; preds = %for.cond131
  %div1 = lshr i32 %r.0, 4, !dbg !1287
  %mul134 = mul nuw nsw i32 %div1, 80, !dbg !1289
  %add135 = add nuw nsw i32 %mul134, %c127.0, !dbg !1290
  %rem = and i32 %r.0, 15, !dbg !1291
  %add136 = or disjoint i32 %add135, %rem, !dbg !1292
    #dbg_value(i32 %add136, !1293, !DIExpression(), !1294)
  %arrayidx137 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1295
  %13 = load i64, ptr %arrayidx137, align 8, !dbg !1295
  %and = and i64 %13, 1229782938247303441, !dbg !1296
    #dbg_value(i64 %and, !1297, !DIExpression(), !1294)
  %shr139 = lshr i64 %13, 1, !dbg !1298
  %and140 = and i64 %shr139, 1229782938247303441, !dbg !1299
    #dbg_value(i64 %and140, !1300, !DIExpression(), !1294)
  %shr142 = lshr i64 %13, 2, !dbg !1301
  %and143 = and i64 %shr142, 1229782938247303441, !dbg !1302
    #dbg_value(i64 %and143, !1303, !DIExpression(), !1294)
  %arrayidx144 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1304
  %14 = load i64, ptr %arrayidx144, align 8, !dbg !1304
  %shr145 = lshr i64 %14, 3, !dbg !1305
  %and146 = and i64 %shr145, 1229782938247303441, !dbg !1306
    #dbg_value(i64 %and146, !1307, !DIExpression(), !1294)
    #dbg_value(i32 0, !1308, !DIExpression(), !1310)
  br label %for.cond147, !dbg !1311

for.cond147:                                      ; preds = %for.body149, %for.body133
  %t.0 = phi i32 [ 0, %for.body133 ], [ %inc184, %for.body149 ], !dbg !1312
    #dbg_value(i32 %t.0, !1308, !DIExpression(), !1310)
  %exitcond9 = icmp ne i32 %t.0, 4, !dbg !1313
  br i1 %exitcond9, label %for.body149, label %for.inc186, !dbg !1315

for.body149:                                      ; preds = %for.cond147
  %mul150 = shl nuw nsw i32 %t.0, 2, !dbg !1316
  %arrayidx152 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul150, !dbg !1318
  %15 = load i8, ptr %arrayidx152, align 1, !dbg !1318
  %conv = zext i8 %15 to i64, !dbg !1318
  %mul153 = mul i64 %and, %conv, !dbg !1319
  %mul154 = shl nuw nsw i32 %t.0, 2, !dbg !1320
  %add155 = or disjoint i32 %mul154, 1, !dbg !1321
  %arrayidx156 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add155, !dbg !1322
  %16 = load i8, ptr %arrayidx156, align 1, !dbg !1322
  %conv157 = zext i8 %16 to i64, !dbg !1322
  %mul158 = mul i64 %and140, %conv157, !dbg !1323
  %xor159 = xor i64 %mul153, %mul158, !dbg !1324
  %mul160 = shl nuw nsw i32 %t.0, 2, !dbg !1325
  %add161 = or disjoint i32 %mul160, 2, !dbg !1326
  %arrayidx162 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add161, !dbg !1327
  %17 = load i8, ptr %arrayidx162, align 1, !dbg !1327
  %conv163 = zext i8 %17 to i64, !dbg !1327
  %mul164 = mul i64 %and143, %conv163, !dbg !1328
  %xor165 = xor i64 %xor159, %mul164, !dbg !1329
  %mul166 = shl nuw nsw i32 %t.0, 2, !dbg !1330
  %add167 = or disjoint i32 %mul166, 3, !dbg !1331
  %arrayidx168 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add167, !dbg !1332
  %18 = load i8, ptr %arrayidx168, align 1, !dbg !1332
  %conv169 = zext i8 %18 to i64, !dbg !1332
  %mul170 = mul i64 %and146, %conv169, !dbg !1333
  %xor171 = xor i64 %xor165, %mul170, !dbg !1334
  %add172 = add nuw nsw i32 %r.0, %t.0, !dbg !1335
  %sub173 = add nsw i32 %add172, -64, !dbg !1336
  %div1742 = lshr i32 %sub173, 4, !dbg !1337
  %mul175 = mul i32 %div1742, 80, !dbg !1338
  %add176 = add i32 %mul175, %c127.0, !dbg !1339
  %add177 = add nuw nsw i32 %r.0, %t.0, !dbg !1340
  %rem179 = and i32 %add177, 15, !dbg !1341
  %add180 = or disjoint i32 %add176, %rem179, !dbg !1342
  %arrayidx181 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180, !dbg !1343
  %19 = load i64, ptr %arrayidx181, align 8, !dbg !1344
  %xor182 = xor i64 %19, %xor171, !dbg !1344
  store i64 %xor182, ptr %arrayidx181, align 8, !dbg !1344
  %inc184 = add nuw nsw i32 %t.0, 1, !dbg !1345
    #dbg_value(i32 %inc184, !1308, !DIExpression(), !1310)
  br label %for.cond147, !dbg !1346, !llvm.loop !1347

for.inc186:                                       ; preds = %for.cond147
  %inc187 = add nuw nsw i32 %r.0, 1, !dbg !1349
    #dbg_value(i32 %inc187, !1283, !DIExpression(), !1284)
  br label %for.cond131, !dbg !1350, !llvm.loop !1351

for.inc189:                                       ; preds = %for.cond131
  %add190 = add nuw nsw i32 %c127.0, 16, !dbg !1353
    #dbg_value(i32 %add190, !1273, !DIExpression(), !1274)
  br label %for.cond128, !dbg !1354, !llvm.loop !1355

for.cond193:                                      ; preds = %for.cond193.preheader, %for.inc227
  %indvars.iv = phi i32 [ 64, %for.cond193.preheader ], [ %indvars.iv.next, %for.inc227 ], !dbg !1357
  %r192.0 = phi i32 [ %add228, %for.inc227 ], [ 0, %for.cond193.preheader ], !dbg !1357
    #dbg_value(i32 %r192.0, !1358, !DIExpression(), !1359)
  %cmp194 = icmp samesign ult i32 %r192.0, 64, !dbg !1360
  br i1 %cmp194, label %for.cond198.preheader, label %for.end229, !dbg !1280

for.cond198.preheader:                            ; preds = %for.cond193
  br label %for.cond198, !dbg !1362

for.cond198:                                      ; preds = %for.cond198.preheader, %for.inc224
  %c197.0 = phi i32 [ %add225, %for.inc224 ], [ 0, %for.cond198.preheader ], !dbg !1365
    #dbg_value(i32 %c197.0, !1366, !DIExpression(), !1367)
  %cmp199 = icmp samesign ult i32 %c197.0, 68, !dbg !1368
  br i1 %cmp199, label %for.cond203.preheader, label %for.inc227, !dbg !1362

for.cond203.preheader:                            ; preds = %for.cond198
  br label %for.cond203, !dbg !1370

for.cond203:                                      ; preds = %for.cond203.preheader, %for.body207
  %i202.0 = phi i32 [ %inc222, %for.body207 ], [ 0, %for.cond203.preheader ], !dbg !1373
    #dbg_value(i32 %i202.0, !1374, !DIExpression(), !1375)
  %exitcond11 = icmp ne i32 %i202.0, %indvars.iv, !dbg !1376
  br i1 %exitcond11, label %for.body207, label %for.inc224, !dbg !1370

for.body207:                                      ; preds = %for.cond203
  %div209 = mul nuw nsw i32 %r192.0, 5, !dbg !1378
  %add210 = add nuw nsw i32 %div209, %c197.0, !dbg !1380
  %add211 = add nuw nsw i32 %add210, %i202.0, !dbg !1381
  %arrayidx212 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211, !dbg !1382
  %add213 = add nuw nsw i32 %r192.0, %i202.0, !dbg !1383
  %mul214 = mul nuw nsw i32 %add213, 69, !dbg !1384
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214, !dbg !1385
  %add.ptr216 = getelementptr inbounds nuw i8, ptr %add.ptr215, i32 %c197.0, !dbg !1386
  %cmp218 = icmp samesign ult i32 %c197.0, 52, !dbg !1387
  %sub220 = sub nsw i32 68, %c197.0, !dbg !1387
  %cond = select i1 %cmp218, i32 16, i32 %sub220, !dbg !1387
  call fastcc void @decode(ptr noundef nonnull %arrayidx212, ptr noundef nonnull %add.ptr216, i32 noundef %cond) #6, !dbg !1388
  %inc222 = add nuw nsw i32 %i202.0, 1, !dbg !1389
    #dbg_value(i32 %inc222, !1374, !DIExpression(), !1375)
  br label %for.cond203, !dbg !1390, !llvm.loop !1391

for.inc224:                                       ; preds = %for.cond203
  %add225 = add nuw nsw i32 %c197.0, 16, !dbg !1393
    #dbg_value(i32 %add225, !1366, !DIExpression(), !1367)
  br label %for.cond198, !dbg !1394, !llvm.loop !1395

for.inc227:                                       ; preds = %for.cond198
  %add228 = add nuw nsw i32 %r192.0, 16, !dbg !1397
    #dbg_value(i32 %add228, !1358, !DIExpression(), !1359)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1398
  br label %for.cond193, !dbg !1398, !llvm.loop !1399

for.end229:                                       ; preds = %for.cond193
  ret void, !dbg !1401
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1402 {
entry:
    #dbg_value(ptr %a, !1405, !DIExpression(), !1406)
    #dbg_value(ptr %b, !1407, !DIExpression(), !1406)
    #dbg_value(ptr %c, !1408, !DIExpression(), !1406)
    #dbg_value(i32 17, !1409, !DIExpression(), !1406)
    #dbg_value(i32 64, !1410, !DIExpression(), !1406)
    #dbg_value(i32 1, !1411, !DIExpression(), !1406)
    #dbg_value(i32 0, !1412, !DIExpression(), !1414)
  br label %for.cond, !dbg !1415

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1416
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1405, !DIExpression(), !1406)
    #dbg_value(ptr %c.addr.0, !1408, !DIExpression(), !1406)
    #dbg_value(i32 %i.0, !1412, !DIExpression(), !1414)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1417
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1419

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1420

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1423
    #dbg_value(i32 poison, !1424, !DIExpression(), !1425)
    #dbg_value(ptr %c.addr.1, !1408, !DIExpression(), !1406)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1420

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 17, i32 noundef 1) #6, !dbg !1426
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1429
    #dbg_value(i32 1, !1424, !DIExpression(), !1425)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1430
    #dbg_value(ptr %incdec.ptr, !1408, !DIExpression(), !1406)
  br label %for.cond1, !dbg !1431, !llvm.loop !1432

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1434
    #dbg_value(i32 %inc5, !1412, !DIExpression(), !1414)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 17, !dbg !1435
    #dbg_value(ptr %add.ptr6, !1405, !DIExpression(), !1406)
  br label %for.cond, !dbg !1436, !llvm.loop !1437

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1439
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1440 {
entry:
    #dbg_value(ptr %a, !1443, !DIExpression(), !1444)
    #dbg_value(ptr %b, !1445, !DIExpression(), !1444)
    #dbg_value(ptr %c, !1446, !DIExpression(), !1444)
    #dbg_value(i32 64, !1447, !DIExpression(), !1444)
    #dbg_value(i32 1, !1448, !DIExpression(), !1444)
    #dbg_value(i32 0, !1449, !DIExpression(), !1451)
  br label %for.cond, !dbg !1452

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1453
    #dbg_value(i32 %i.0, !1449, !DIExpression(), !1451)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1454
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1456

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1457, !DIExpression(), !1460)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1461
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1464
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1465
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1466
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1467
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1468
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1469
    #dbg_value(i32 1, !1457, !DIExpression(), !1460)
    #dbg_value(i32 poison, !1457, !DIExpression(), !1460)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1470
    #dbg_value(i32 %inc12, !1449, !DIExpression(), !1451)
  br label %for.cond, !dbg !1471, !llvm.loop !1472

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1474
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1475 {
entry:
    #dbg_value(ptr %m, !1476, !DIExpression(), !1477)
    #dbg_value(ptr %menc, !1478, !DIExpression(), !1477)
    #dbg_value(i32 324, !1479, !DIExpression(), !1477)
    #dbg_value(i32 0, !1480, !DIExpression(), !1477)
  br label %for.cond, !dbg !1481

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1483
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1476, !DIExpression(), !1477)
    #dbg_value(i32 %i.0, !1480, !DIExpression(), !1477)
  %exitcond = icmp ne i32 %i.0, 162, !dbg !1484
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1486

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1487
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1489
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1490
  %shl = shl i8 %1, 4, !dbg !1491
  %or = or i8 %shl, %0, !dbg !1492
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1493
  store i8 %or, ptr %arrayidx, align 1, !dbg !1494
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1495
    #dbg_value(i32 %inc, !1480, !DIExpression(), !1477)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1496
    #dbg_value(ptr %add.ptr3, !1476, !DIExpression(), !1477)
  br label %for.cond, !dbg !1497, !llvm.loop !1498

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1500
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1501 {
entry:
    #dbg_value(i8 %a, !1504, !DIExpression(), !1505)
    #dbg_value(i8 %b, !1506, !DIExpression(), !1505)
  %xor1 = xor i8 %a, %b, !dbg !1507
  ret i8 %xor1, !dbg !1508
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1509 {
entry:
    #dbg_value(ptr %a, !1512, !DIExpression(), !1513)
    #dbg_value(ptr %b, !1514, !DIExpression(), !1513)
    #dbg_value(i32 17, !1515, !DIExpression(), !1513)
    #dbg_value(i32 1, !1516, !DIExpression(), !1513)
    #dbg_value(i8 0, !1517, !DIExpression(), !1513)
    #dbg_value(i32 0, !1518, !DIExpression(), !1520)
  br label %for.cond, !dbg !1521

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1513
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1522
    #dbg_value(i32 %i.0, !1518, !DIExpression(), !1520)
    #dbg_value(ptr %b.addr.0, !1514, !DIExpression(), !1513)
    #dbg_value(i8 %ret.0, !1517, !DIExpression(), !1513)
  %exitcond = icmp ne i32 %i.0, 17, !dbg !1523
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1525

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1526
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1526
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1528
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1529
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1530
    #dbg_value(i8 %call1, !1517, !DIExpression(), !1513)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1531
    #dbg_value(i32 %inc, !1518, !DIExpression(), !1520)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1532
    #dbg_value(ptr %add.ptr, !1514, !DIExpression(), !1513)
  br label %for.cond, !dbg !1533, !llvm.loop !1534

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1513
  ret i8 %ret.0.lcssa, !dbg !1536
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1537 {
entry:
    #dbg_value(i8 %a, !1538, !DIExpression(), !1539)
    #dbg_value(i8 %b, !1540, !DIExpression(), !1539)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !1541
  %xor1 = xor i8 %a, %0, !dbg !1542
    #dbg_value(i8 %xor1, !1538, !DIExpression(), !1539)
  %1 = trunc i8 %xor1 to i1, !dbg !1543
    #dbg_value(i8 poison, !1544, !DIExpression(), !1539)
  %2 = and i8 %xor1, 2, !dbg !1545
  %mul9 = mul i8 %2, %b, !dbg !1546
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1543
  %xor11 = xor i8 %conv10, %mul9, !dbg !1547
    #dbg_value(i8 %xor11, !1544, !DIExpression(), !1539)
  %3 = and i8 %xor1, 4, !dbg !1548
  %mul16 = mul i8 %3, %b, !dbg !1549
  %xor18 = xor i8 %mul16, %xor11, !dbg !1550
    #dbg_value(i8 %xor18, !1544, !DIExpression(), !1539)
  %4 = and i8 %xor1, 8, !dbg !1551
  %mul23 = mul i8 %4, %b, !dbg !1552
  %xor25 = xor i8 %mul23, %xor18, !dbg !1553
    #dbg_value(i8 %xor25, !1544, !DIExpression(), !1539)
    #dbg_value(i8 %xor25, !1554, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1539)
  %5 = lshr i8 %xor25, 4, !dbg !1555
  %6 = lshr i8 %xor25, 3, !dbg !1556
  %7 = and i8 %6, 14, !dbg !1556
  %8 = xor i8 %5, %7, !dbg !1557
  %xor25.masked = and i8 %xor25, 15, !dbg !1558
  %9 = xor i8 %8, %xor25.masked, !dbg !1558
    #dbg_value(i8 %9, !1559, !DIExpression(), !1539)
  ret i8 %9, !dbg !1560
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1561, !DIExpression(), !1562)
    #dbg_value(i32 0, !1563, !DIExpression(), !1565)
  br label %for.cond, !dbg !1566

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1567
    #dbg_value(i32 %i.0, !1563, !DIExpression(), !1565)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1568
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1570

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1571

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1573
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1573
  %shr = lshr i64 %0, 4, !dbg !1575
  %add = or disjoint i32 %i.0, 1, !dbg !1576
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1577
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1577
  %xor = xor i64 %shr, %1, !dbg !1578
  %and = and i64 %xor, 1085102592571150095, !dbg !1579
    #dbg_value(i64 %and, !1580, !DIExpression(), !1581)
  %shl = shl nuw i64 %and, 4, !dbg !1582
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1583
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1584
  %xor3 = xor i64 %2, %shl, !dbg !1584
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1584
  %add4 = or disjoint i32 %i.0, 1, !dbg !1585
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1586
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1587
  %xor6 = xor i64 %3, %and, !dbg !1587
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1587
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1588
    #dbg_value(i32 %add7, !1563, !DIExpression(), !1565)
  br label %for.cond, !dbg !1589, !llvm.loop !1590

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1592
    #dbg_value(i32 %i8.0, !1593, !DIExpression(), !1594)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1595
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1571

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1597

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1599
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1599
  %shr13 = lshr i64 %4, 8, !dbg !1601
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1602
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1603
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1603
  %xor16 = xor i64 %shr13, %5, !dbg !1604
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1605
    #dbg_value(i64 %and17, !1606, !DIExpression(), !1607)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1608
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1609
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1609
  %shr20 = lshr i64 %6, 8, !dbg !1610
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1611
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1612
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1612
  %xor23 = xor i64 %shr20, %7, !dbg !1613
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1614
    #dbg_value(i64 %and24, !1615, !DIExpression(), !1607)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1616
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1617
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1618
  %xor27 = xor i64 %8, %shl25, !dbg !1618
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1618
  %shl28 = shl nuw i64 %and24, 8, !dbg !1619
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1620
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1621
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1622
  %xor31 = xor i64 %9, %shl28, !dbg !1622
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1622
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1623
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1624
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1625
  %xor34 = xor i64 %10, %and17, !dbg !1625
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1625
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1626
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1627
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1628
  %xor37 = xor i64 %11, %and24, !dbg !1628
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1628
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1629
    #dbg_value(i32 %add39, !1593, !DIExpression(), !1594)
  br label %for.cond9, !dbg !1630, !llvm.loop !1631

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1633
    #dbg_value(i32 %i41.0, !1634, !DIExpression(), !1635)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1636
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1597

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1638

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1640
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1640
  %shr47 = lshr i64 %12, 16, !dbg !1642
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1643
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1644
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1644
  %xor50 = xor i64 %shr47, %13, !dbg !1645
  %and51 = and i64 %xor50, 281470681808895, !dbg !1646
    #dbg_value(i64 %and51, !1647, !DIExpression(), !1648)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1649
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1650
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1650
  %shr55 = lshr i64 %14, 16, !dbg !1651
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1652
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1653
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1653
  %xor58 = xor i64 %shr55, %15, !dbg !1654
  %and59 = and i64 %xor58, 281470681808895, !dbg !1655
    #dbg_value(i64 %and59, !1656, !DIExpression(), !1648)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1657
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1658
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1659
  %xor62 = xor i64 %16, %shl60, !dbg !1659
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1659
  %shl63 = shl nuw i64 %and59, 16, !dbg !1660
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1661
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1662
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1663
  %xor66 = xor i64 %17, %shl63, !dbg !1663
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1663
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1664
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1665
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1666
  %xor69 = xor i64 %18, %and51, !dbg !1666
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1666
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1667
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1668
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1669
  %xor72 = xor i64 %19, %and59, !dbg !1669
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1669
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1670
    #dbg_value(i32 %inc, !1634, !DIExpression(), !1635)
  br label %for.cond42, !dbg !1671, !llvm.loop !1672

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1674
    #dbg_value(i32 %i75.0, !1675, !DIExpression(), !1676)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1677
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1638

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1679
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1679
  %shr81 = lshr i64 %20, 32, !dbg !1681
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1682
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1683
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1683
  %.masked = and i64 %21, 4294967295, !dbg !1684
  %and85 = xor i64 %shr81, %.masked, !dbg !1684
    #dbg_value(i64 %and85, !1685, !DIExpression(), !1686)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1687
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1688
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1689
  %xor88 = xor i64 %22, %shl86, !dbg !1689
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1689
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1690
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1691
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1692
  %xor91 = xor i64 %23, %and85, !dbg !1692
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1692
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1693
    #dbg_value(i32 %inc93, !1675, !DIExpression(), !1676)
  br label %for.cond76, !dbg !1694, !llvm.loop !1695

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1697
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 4, 18) %bs_mat_cols) unnamed_addr #0 !dbg !1698 {
entry:
    #dbg_value(i32 4, !1699, !DIExpression(), !1700)
    #dbg_value(ptr %mat, !1701, !DIExpression(), !1700)
    #dbg_value(ptr %bs_mat, !1702, !DIExpression(), !1700)
    #dbg_value(ptr %acc, !1703, !DIExpression(), !1700)
    #dbg_value(i32 4, !1704, !DIExpression(), !1700)
    #dbg_value(i32 64, !1705, !DIExpression(), !1700)
    #dbg_value(i32 %bs_mat_cols, !1706, !DIExpression(), !1700)
    #dbg_value(i32 0, !1707, !DIExpression(), !1709)
  br label %for.cond, !dbg !1710

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1711
    #dbg_value(i32 %r.0, !1707, !DIExpression(), !1709)
  %exitcond2 = icmp ne i32 %r.0, 4, !dbg !1712
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1714

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1715

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1718
    #dbg_value(i32 %c.0, !1719, !DIExpression(), !1720)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !1721
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1715

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1723

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1726
    #dbg_value(i32 %k.0, !1727, !DIExpression(), !1728)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1729
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1723

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1731
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1733
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !1734
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1734
  %mul8 = shl nuw nsw i32 %r.0, 6, !dbg !1735
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1736
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1736
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1736
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1737
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1738
  %add.ptr13.idx = shl nsw i32 %add11, 5, !dbg !1739
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1739
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1740
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1741
    #dbg_value(i32 %add14, !1727, !DIExpression(), !1728)
  br label %for.cond4, !dbg !1742, !llvm.loop !1743

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1745
    #dbg_value(i32 %inc, !1719, !DIExpression(), !1720)
  br label %for.cond1, !dbg !1746, !llvm.loop !1747

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1749
    #dbg_value(i32 %inc18, !1707, !DIExpression(), !1709)
  br label %for.cond, !dbg !1750, !llvm.loop !1751

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1753
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1754 {
entry:
    #dbg_value(ptr %p, !1755, !DIExpression(), !1756)
    #dbg_value(ptr %P1, !1757, !DIExpression(), !1756)
    #dbg_value(ptr %V, !1758, !DIExpression(), !1756)
    #dbg_value(ptr %acc, !1759, !DIExpression(), !1756)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 4, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 4, i32 noundef 1) #6, !dbg !1760
  ret void, !dbg !1761
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1762 {
entry:
    #dbg_value(i32 4, !1763, !DIExpression(), !1764)
    #dbg_value(ptr %bs_mat, !1765, !DIExpression(), !1764)
    #dbg_value(ptr %mat, !1766, !DIExpression(), !1764)
    #dbg_value(ptr %acc, !1767, !DIExpression(), !1764)
    #dbg_value(i32 64, !1768, !DIExpression(), !1764)
    #dbg_value(i32 64, !1769, !DIExpression(), !1764)
    #dbg_value(i32 4, !1770, !DIExpression(), !1764)
    #dbg_value(i32 1, !1771, !DIExpression(), !1764)
    #dbg_value(i32 0, !1772, !DIExpression(), !1764)
    #dbg_value(i32 0, !1773, !DIExpression(), !1775)
  br label %for.cond, !dbg !1776

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !1777
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1777
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1778
    #dbg_value(i32 %r.0, !1773, !DIExpression(), !1775)
    #dbg_value(i32 %bs_mat_entries_used.0, !1772, !DIExpression(), !1764)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !1779
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1781

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1782
  br label %for.cond1, !dbg !1782

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1764
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1785
    #dbg_value(i32 %c.0, !1786, !DIExpression(), !1787)
    #dbg_value(i32 %bs_mat_entries_used.1, !1772, !DIExpression(), !1764)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1788
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1782

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1790

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1793
    #dbg_value(i32 %k.0, !1794, !DIExpression(), !1795)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1796
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1790

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !1798
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1798
  %mul8 = shl nuw nsw i32 %k.0, 6, !dbg !1800
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1801
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1801
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1801
  %3 = shl nuw nsw i32 %r.0, 4, !dbg !1802
  %4 = shl nuw nsw i32 %k.0, 2, !dbg !1802
  %mul11 = or disjoint i32 %3, %4, !dbg !1802
  %add.ptr12 = getelementptr inbounds nuw i64, ptr %acc, i32 %mul11, !dbg !1803
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1804
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1805
    #dbg_value(i32 %add13, !1794, !DIExpression(), !1795)
  br label %for.cond4, !dbg !1806, !llvm.loop !1807

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1772, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1764)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1809
    #dbg_value(i32 %add14, !1772, !DIExpression(), !1764)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1810
    #dbg_value(i32 %inc, !1786, !DIExpression(), !1787)
  br label %for.cond1, !dbg !1811, !llvm.loop !1812

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1764
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1814
    #dbg_value(i32 %inc18, !1773, !DIExpression(), !1775)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1815
  br label %for.cond, !dbg !1815, !llvm.loop !1816

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1818
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1819 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1820, !DIExpression(), !1821)
    #dbg_value(ptr %sm, !1822, !DIExpression(), !1821)
    #dbg_value(ptr %smlen, !1823, !DIExpression(), !1821)
    #dbg_value(ptr %m, !1824, !DIExpression(), !1821)
    #dbg_value(i32 %mlen, !1825, !DIExpression(), !1821)
    #dbg_value(ptr %csk, !1826, !DIExpression(), !1821)
    #dbg_value(i32 0, !1827, !DIExpression(), !1821)
    #dbg_value(i32 186, !1828, !DIExpression(), !1821)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1829
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1830
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1831
    #dbg_value(ptr %siglen, !1832, !DIExpression(DW_OP_deref), !1821)
  %call2 = call i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1833
    #dbg_value(i32 %call2, !1827, !DIExpression(), !1821)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1834
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1832, !DIExpression(), !1821)
  %cmp3.not = icmp eq i32 %0, 186
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1836
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1836

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1837
    #dbg_value(i32 %1, !1832, !DIExpression(), !1821)
  %add = add i32 %1, %mlen, !dbg !1839
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1840
  br label %err, !dbg !1841

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1842
    #dbg_value(i32 %2, !1832, !DIExpression(), !1821)
  %add5 = add i32 %2, %mlen, !dbg !1843
  store i32 %add5, ptr %smlen, align 4, !dbg !1844
  br label %err, !dbg !1845

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1846, !1847)
  ret i32 %call2, !dbg !1848
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1849 {
entry:
    #dbg_value(ptr %p, !1850, !DIExpression(), !1851)
    #dbg_value(ptr %m, !1852, !DIExpression(), !1851)
    #dbg_value(ptr %mlen, !1853, !DIExpression(), !1851)
    #dbg_value(ptr %sm, !1854, !DIExpression(), !1851)
    #dbg_value(i32 %smlen, !1855, !DIExpression(), !1851)
    #dbg_value(ptr %pk, !1856, !DIExpression(), !1851)
    #dbg_value(i32 186, !1857, !DIExpression(), !1851)
  %cmp = icmp ult i32 %smlen, 186, !dbg !1858
  br i1 %cmp, label %return, label %if.end, !dbg !1858

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1860
  %sub = add i32 %smlen, -186, !dbg !1861
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1862
    #dbg_value(i32 %call, !1863, !DIExpression(), !1851)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1864
  br i1 %cmp1, label %if.then2, label %return, !dbg !1864

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -186, !dbg !1866
  store i32 %sub3, ptr %mlen, align 4, !dbg !1868
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1869
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1870
  br label %return, !dbg !1871

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1851
  ret i32 %retval.0, !dbg !1872
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1873 {
entry:
  %tEnc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [128 x i8], align 1
  %s = alloca [324 x i8], align 1
  %pk = alloca [13284 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1876, !DIExpression(), !1877)
    #dbg_value(ptr %m, !1878, !DIExpression(), !1877)
    #dbg_value(i32 %mlen, !1879, !DIExpression(), !1877)
    #dbg_value(ptr %sig, !1880, !DIExpression(), !1877)
    #dbg_value(ptr %cpk, !1881, !DIExpression(), !1877)
    #dbg_declare(ptr %tEnc, !1882, !DIExpression(), !1883)
    #dbg_declare(ptr %t, !1884, !DIExpression(), !1885)
    #dbg_declare(ptr %y, !1886, !DIExpression(), !1890)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %y, i8 0, i32 128, i1 false), !dbg !1890
    #dbg_declare(ptr %s, !1891, !DIExpression(), !1892)
    #dbg_declare(ptr %pk, !1893, !DIExpression(), !1894)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(106272) %pk, i8 0, i32 106272, i1 false), !dbg !1894
    #dbg_declare(ptr %tmp, !1895, !DIExpression(), !1899)
    #dbg_value(i32 64, !1900, !DIExpression(), !1877)
    #dbg_value(i32 81, !1901, !DIExpression(), !1877)
    #dbg_value(i32 4, !1902, !DIExpression(), !1877)
    #dbg_value(i32 32, !1903, !DIExpression(), !1877)
    #dbg_value(i32 186, !1904, !DIExpression(), !1877)
    #dbg_value(i32 32, !1905, !DIExpression(), !1877)
    #dbg_value(i32 24, !1906, !DIExpression(), !1877)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1907
    #dbg_value(i32 0, !1908, !DIExpression(), !1877)
    #dbg_value(ptr %pk, !1909, !DIExpression(), !1877)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 66560, !dbg !1910
    #dbg_value(ptr %add.ptr, !1911, !DIExpression(), !1877)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1912
    #dbg_value(ptr %add.ptr2, !1913, !DIExpression(), !1877)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1914
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1915
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !1916
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !1917
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !1918
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !1919
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 324) #6, !dbg !1920
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1921
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 64) #8, !dbg !1922
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1924
  %. = zext i1 %cmp21 to i32, !dbg !1877
  ret i32 %., !dbg !1925
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1926 {
entry:
    #dbg_value(ptr %p, !1927, !DIExpression(), !1928)
    #dbg_value(ptr %cpk, !1929, !DIExpression(), !1928)
    #dbg_value(ptr %pk, !1930, !DIExpression(), !1928)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1931
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1932
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1933
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 153, i32 noundef 64) #6, !dbg !1934
  ret i32 0, !dbg !1935
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1936 {
entry:
  %SPS = alloca [64 x i64], align 8
  %zero = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !1939, !DIExpression(), !1940)
    #dbg_value(ptr %s, !1941, !DIExpression(), !1940)
    #dbg_value(ptr %P1, !1942, !DIExpression(), !1940)
    #dbg_value(ptr %P2, !1943, !DIExpression(), !1940)
    #dbg_value(ptr %P3, !1944, !DIExpression(), !1940)
    #dbg_value(ptr %eval, !1945, !DIExpression(), !1940)
    #dbg_declare(ptr %SPS, !1946, !DIExpression(), !1948)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %SPS, i8 0, i32 512, i1 false), !dbg !1948
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1949
    #dbg_declare(ptr %zero, !1950, !DIExpression(), !1951)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %zero, i8 0, i32 64, i1 false), !dbg !1951
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1952
  ret void, !dbg !1953
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !1954 {
entry:
  %PS = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !1957, !DIExpression(), !1958)
    #dbg_value(ptr %P1, !1959, !DIExpression(), !1958)
    #dbg_value(ptr %P2, !1960, !DIExpression(), !1958)
    #dbg_value(ptr %P3, !1961, !DIExpression(), !1958)
    #dbg_value(ptr %s, !1962, !DIExpression(), !1958)
    #dbg_value(ptr %SPS, !1963, !DIExpression(), !1958)
    #dbg_declare(ptr %PS, !1964, !DIExpression(), !1968)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %PS, i8 0, i32 10368, i1 false), !dbg !1968
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %PS) #6, !dbg !1969
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 64, i32 noundef 4, i32 noundef 81, ptr noundef %SPS) #6, !dbg !1970
  ret void, !dbg !1971
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !1972 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %P1, !1975, !DIExpression(), !1976)
    #dbg_value(ptr %P2, !1977, !DIExpression(), !1976)
    #dbg_value(ptr %P3, !1978, !DIExpression(), !1976)
    #dbg_value(ptr %S, !1979, !DIExpression(), !1976)
    #dbg_value(i32 64, !1980, !DIExpression(), !1976)
    #dbg_value(i32 64, !1981, !DIExpression(), !1976)
    #dbg_value(i32 17, !1982, !DIExpression(), !1976)
    #dbg_value(i32 4, !1983, !DIExpression(), !1976)
    #dbg_value(ptr %PS, !1984, !DIExpression(), !1976)
    #dbg_value(i32 81, !1985, !DIExpression(), !1976)
    #dbg_value(i32 4, !1986, !DIExpression(), !1976)
    #dbg_declare(ptr %accumulator, !1987, !DIExpression(), !1991)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !1991
    #dbg_value(i32 0, !1992, !DIExpression(), !1976)
    #dbg_value(i32 0, !1993, !DIExpression(), !1995)
  br label %for.cond, !dbg !1996

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 64, %entry ], !dbg !1997
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !1997
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !1998
    #dbg_value(i32 %row.0, !1993, !DIExpression(), !1995)
    #dbg_value(i32 %P1_used.0, !1992, !DIExpression(), !1976)
  %exitcond4 = icmp ne i32 %row.0, 64, !dbg !1999
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2001

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2002
  br label %for.cond2, !dbg !2002

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2005

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !1976
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2007
    #dbg_value(i32 %j.0, !2008, !DIExpression(), !2009)
    #dbg_value(i32 %P1_used.1, !1992, !DIExpression(), !1976)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2010
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2002

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !1976
  br label %for.cond21, !dbg !2012

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2014

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2017
    #dbg_value(i32 %col.0, !2018, !DIExpression(), !2019)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2020
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2014

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %P1_used.1, 5, !dbg !2022
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2022
  %1 = shl nuw nsw i32 %row.0, 6, !dbg !2024
  %2 = shl nuw nsw i32 %col.0, 4, !dbg !2024
  %mul10 = or disjoint i32 %1, %2, !dbg !2024
  %mul11 = mul nuw nsw i32 %col.0, 81, !dbg !2025
  %3 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2026
  %arrayidx = getelementptr i8, ptr %3, i32 %j.0, !dbg !2026
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2026
  %conv = zext i8 %4 to i32, !dbg !2026
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2027
  %add.ptr15.idx = shl nuw nsw i32 %add13, 5, !dbg !2028
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2028
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2029
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2030
    #dbg_value(i32 %inc, !2018, !DIExpression(), !2019)
  br label %for.cond5, !dbg !2031, !llvm.loop !2032

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !1992, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1976)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2034
    #dbg_value(i32 %inc16, !1992, !DIExpression(), !1976)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2035
    #dbg_value(i32 %inc18, !2008, !DIExpression(), !2009)
  br label %for.cond2, !dbg !2036, !llvm.loop !2037

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2039
    #dbg_value(i32 %j20.0, !2040, !DIExpression(), !2041)
  %exitcond3 = icmp ne i32 %j20.0, 17, !dbg !2042
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2012

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2044

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2047
    #dbg_value(i32 %col25.0, !2048, !DIExpression(), !2049)
  %exitcond2 = icmp ne i32 %col25.0, 4, !dbg !2050
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2044

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 17, !dbg !2052
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2054
  %add.ptr33.idx = shl nuw nsw i32 %add31, 5, !dbg !2055
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2055
  %5 = shl nuw nsw i32 %row.0, 6, !dbg !2056
  %6 = shl nuw nsw i32 %col25.0, 4, !dbg !2056
  %mul37 = or disjoint i32 %5, %6, !dbg !2056
  %mul38 = mul nuw nsw i32 %col25.0, 81, !dbg !2057
  %7 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2058
  %8 = getelementptr i8, ptr %7, i32 %j20.0, !dbg !2058
  %arrayidx41 = getelementptr i8, ptr %8, i32 64, !dbg !2058
  %9 = load i8, ptr %arrayidx41, align 1, !dbg !2058
  %conv42 = zext i8 %9 to i32, !dbg !2058
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2059
  %add.ptr45.idx = shl nuw nsw i32 %add43, 5, !dbg !2060
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2060
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2061
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2062
    #dbg_value(i32 %inc47, !2048, !DIExpression(), !2049)
  br label %for.cond26, !dbg !2063, !llvm.loop !2064

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2066
    #dbg_value(i32 %inc50, !2040, !DIExpression(), !2041)
  br label %for.cond21, !dbg !2067, !llvm.loop !2068

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2070
    #dbg_value(i32 %inc53, !1993, !DIExpression(), !1995)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2071
  br label %for.cond, !dbg !2071, !llvm.loop !2072

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 17, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2074
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2074
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 64, %for.cond56.preheader ], !dbg !2075
    #dbg_value(i32 %row55.0, !2076, !DIExpression(), !2077)
    #dbg_value(i32 %P3_used.0, !2078, !DIExpression(), !1976)
  %exitcond9 = icmp ne i32 %row55.0, 81, !dbg !2079
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2005

for.cond61.preheader:                             ; preds = %for.cond56
  %10 = add i32 %P3_used.0, %indvars.iv6, !dbg !2081
  br label %for.cond61, !dbg !2081

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2084

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !1976
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2085
    #dbg_value(i32 %j60.0, !2086, !DIExpression(), !2087)
    #dbg_value(i32 %P3_used.1, !2078, !DIExpression(), !1976)
  %exitcond8 = icmp ne i32 %P3_used.1, %10, !dbg !2088
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2081

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2090

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2093
    #dbg_value(i32 %col65.0, !2094, !DIExpression(), !2095)
  %exitcond5 = icmp ne i32 %col65.0, 4, !dbg !2096
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2090

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = shl nsw i32 %P3_used.1, 5, !dbg !2098
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2098
  %11 = shl nuw nsw i32 %row55.0, 6, !dbg !2100
  %12 = shl nuw nsw i32 %col65.0, 4, !dbg !2100
  %mul75 = or disjoint i32 %11, %12, !dbg !2100
  %mul76 = mul nuw nsw i32 %col65.0, 81, !dbg !2101
  %13 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2102
  %arrayidx78 = getelementptr i8, ptr %13, i32 %j60.0, !dbg !2102
  %14 = load i8, ptr %arrayidx78, align 1, !dbg !2102
  %conv79 = zext i8 %14 to i32, !dbg !2102
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2103
  %add.ptr82.idx = shl nuw nsw i32 %add80, 5, !dbg !2104
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2104
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2105
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2106
    #dbg_value(i32 %inc84, !2094, !DIExpression(), !2095)
  br label %for.cond66, !dbg !2107, !llvm.loop !2108

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2078, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1976)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2110
    #dbg_value(i32 %inc86, !2078, !DIExpression(), !1976)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2111
    #dbg_value(i32 %inc88, !2086, !DIExpression(), !2087)
  br label %for.cond61, !dbg !2112, !llvm.loop !2113

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !1976
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2115
    #dbg_value(i32 %inc91, !2076, !DIExpression(), !2077)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2116
  br label %for.cond56, !dbg !2116, !llvm.loop !2117

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !1976
    #dbg_value(i32 %i.0, !2119, !DIExpression(), !1976)
  %exitcond10 = icmp ne i32 %i.0, 324, !dbg !2120
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2084

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = shl nuw nsw i32 %i.0, 9, !dbg !2121
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2121
  %add.ptr101.idx = shl nuw nsw i32 %i.0, 5, !dbg !2123
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2123
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2124
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2125
    #dbg_value(i32 %inc102, !2119, !DIExpression(), !1976)
  br label %while.cond, !dbg !2084, !llvm.loop !2126

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2128
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2129 {
entry:
  %accumulator = alloca [1024 x i64], align 8
    #dbg_value(ptr %PS, !2132, !DIExpression(), !2133)
    #dbg_value(ptr %S, !2134, !DIExpression(), !2133)
    #dbg_value(i32 64, !2135, !DIExpression(), !2133)
    #dbg_value(i32 4, !2136, !DIExpression(), !2133)
    #dbg_value(i32 81, !2137, !DIExpression(), !2133)
    #dbg_value(ptr %SPS, !2138, !DIExpression(), !2133)
    #dbg_declare(ptr %accumulator, !2139, !DIExpression(), !2140)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %accumulator, i8 0, i32 8192, i1 false), !dbg !2140
    #dbg_value(i32 4, !2141, !DIExpression(), !2133)
    #dbg_value(i32 0, !2142, !DIExpression(), !2144)
  br label %for.cond, !dbg !2145

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2146
    #dbg_value(i32 %row.0, !2142, !DIExpression(), !2144)
  %exitcond2 = icmp ne i32 %row.0, 4, !dbg !2147
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2149

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2150

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2153

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2154
    #dbg_value(i32 %j.0, !2155, !DIExpression(), !2156)
  %exitcond1 = icmp ne i32 %j.0, 81, !dbg !2157
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2150

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2159

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2162
    #dbg_value(i32 %col.0, !2163, !DIExpression(), !2164)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2165
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2159

for.body6:                                        ; preds = %for.cond4
  %0 = shl nuw nsw i32 %j.0, 4, !dbg !2167
  %1 = shl nuw nsw i32 %col.0, 2, !dbg !2167
  %mul8 = or disjoint i32 %0, %1, !dbg !2167
  %add.ptr = getelementptr inbounds nuw i64, ptr %PS, i32 %mul8, !dbg !2169
  %2 = shl nuw nsw i32 %row.0, 6, !dbg !2170
  %3 = shl nuw nsw i32 %col.0, 4, !dbg !2170
  %mul11 = or disjoint i32 %2, %3, !dbg !2170
  %mul12 = mul nuw nsw i32 %row.0, 81, !dbg !2171
  %4 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2172
  %arrayidx = getelementptr i8, ptr %4, i32 %j.0, !dbg !2172
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2172
  %conv = zext i8 %5 to i32, !dbg !2172
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2173
  %add.ptr16.idx = shl nuw nsw i32 %add14, 5, !dbg !2174
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2174
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2175
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2176
    #dbg_value(i32 %add17, !2163, !DIExpression(), !2164)
  br label %for.cond4, !dbg !2177, !llvm.loop !2178

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2180
    #dbg_value(i32 %inc, !2155, !DIExpression(), !2156)
  br label %for.cond1, !dbg !2181, !llvm.loop !2182

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2184
    #dbg_value(i32 %inc21, !2142, !DIExpression(), !2144)
  br label %for.cond, !dbg !2185, !llvm.loop !2186

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2133
    #dbg_value(i32 %i.0, !2188, !DIExpression(), !2133)
  %exitcond3 = icmp ne i32 %i.0, 16, !dbg !2189
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2153

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = shl nuw nsw i32 %i.0, 9, !dbg !2190
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2190
  %add.ptr31.idx = shl nuw nsw i32 %i.0, 5, !dbg !2192
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2192
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2193
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2194
    #dbg_value(i32 %inc32, !2188, !DIExpression(), !2133)
  br label %while.cond, !dbg !2153, !llvm.loop !2195

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2197
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2198 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2201, !DIExpression(), !2202)
    #dbg_value(ptr %in, !2203, !DIExpression(), !2202)
    #dbg_value(ptr %acc, !2204, !DIExpression(), !2202)
    #dbg_value(i32 0, !2205, !DIExpression(), !2207)
  br label %for.cond, !dbg !2208

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2209
    #dbg_value(i32 %i.0, !2205, !DIExpression(), !2207)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2210
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2212

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2213
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2213
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2215
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2216
  %xor = xor i64 %1, %0, !dbg !2216
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2216
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2217
    #dbg_value(i32 %inc, !2205, !DIExpression(), !2207)
  br label %for.cond, !dbg !2218, !llvm.loop !2219

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2221
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2222 {
entry:
    #dbg_value(i32 4, !2225, !DIExpression(), !2226)
    #dbg_value(ptr %bins, !2227, !DIExpression(), !2226)
    #dbg_value(ptr %out, !2228, !DIExpression(), !2226)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2229
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2230
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2231
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 352, !dbg !2232
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2233
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2234
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2235
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2236
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2237
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2238
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2239
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2240
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2241
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2242
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2243
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2244
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2245
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2246
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2247
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2248
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2249
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2250
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2251
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2252
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2253
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2254
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2255
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2256
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2257
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2258
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2259
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2260
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2261
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2262
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2263
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2264
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2265
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2266
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2267
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2268
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2269
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2270
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2271
  call fastcc void @m_vec_copy(i32 noundef 4, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2272
  ret void, !dbg !2273
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2274 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2275, !DIExpression(), !2276)
    #dbg_value(ptr %in, !2277, !DIExpression(), !2276)
    #dbg_value(ptr %acc, !2278, !DIExpression(), !2276)
    #dbg_value(i64 1229782938247303441, !2279, !DIExpression(), !2276)
    #dbg_value(i32 0, !2280, !DIExpression(), !2282)
  br label %for.cond, !dbg !2283

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2284
    #dbg_value(i32 %i.0, !2280, !DIExpression(), !2282)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2285
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2287

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2288
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2288
  %and = and i64 %0, 1229782938247303441, !dbg !2290
    #dbg_value(i64 %and, !2291, !DIExpression(), !2292)
  %xor = lshr i64 %0, 1, !dbg !2293
  %shr = and i64 %xor, 8608480567731124087, !dbg !2293
  %mul = mul nuw i64 %and, 9, !dbg !2294
  %xor2 = xor i64 %shr, %mul, !dbg !2295
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2296
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2297
  %xor4 = xor i64 %1, %xor2, !dbg !2297
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2297
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2298
    #dbg_value(i32 %inc, !2280, !DIExpression(), !2282)
  br label %for.cond, !dbg !2299, !llvm.loop !2300

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2302
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2303 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2304, !DIExpression(), !2305)
    #dbg_value(ptr %in, !2306, !DIExpression(), !2305)
    #dbg_value(ptr %acc, !2307, !DIExpression(), !2305)
    #dbg_value(i64 -8608480567731124088, !2308, !DIExpression(), !2305)
    #dbg_value(i32 0, !2309, !DIExpression(), !2311)
  br label %for.cond, !dbg !2312

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2313
    #dbg_value(i32 %i.0, !2309, !DIExpression(), !2311)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2314
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2316

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2317
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2317
    #dbg_value(i64 %0, !2319, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2320)
  %xor = shl i64 %0, 1, !dbg !2321
  %shl = and i64 %xor, -1229782938247303442, !dbg !2321
  %and = lshr i64 %0, 3, !dbg !2322
  %shr = and i64 %and, 1229782938247303441, !dbg !2322
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2323
  %xor2 = xor i64 %shl, %mul, !dbg !2324
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2325
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2326
  %xor4 = xor i64 %1, %xor2, !dbg !2326
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2326
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2327
    #dbg_value(i32 %inc, !2309, !DIExpression(), !2311)
  br label %for.cond, !dbg !2328, !llvm.loop !2329

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2331
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2332 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2333, !DIExpression(), !2334)
    #dbg_value(ptr %in, !2335, !DIExpression(), !2334)
    #dbg_value(ptr %out, !2336, !DIExpression(), !2334)
    #dbg_value(i32 0, !2337, !DIExpression(), !2339)
  br label %for.cond, !dbg !2340

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2341
    #dbg_value(i32 %i.0, !2337, !DIExpression(), !2339)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2342
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2344

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2345
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2345
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2347
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2348
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2349
    #dbg_value(i32 %inc, !2337, !DIExpression(), !2339)
  br label %for.cond, !dbg !2350, !llvm.loop !2351

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2353
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2354 {
entry:
    #dbg_value(ptr %p, !2385, !DIExpression(), !2386)
    #dbg_value(ptr %in, !2387, !DIExpression(), !2386)
    #dbg_value(ptr %out, !2388, !DIExpression(), !2386)
    #dbg_value(i32 %size, !2389, !DIExpression(), !2386)
    #dbg_value(i32 4, !2390, !DIExpression(), !2386)
    #dbg_value(i32 0, !2391, !DIExpression(), !2386)
    #dbg_value(i32 0, !2392, !DIExpression(), !2394)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2395
  br label %for.cond, !dbg !2395

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2396
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2396
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2397
    #dbg_value(i32 %r.0, !2392, !DIExpression(), !2394)
    #dbg_value(i32 %m_vecs_stored.0, !2391, !DIExpression(), !2386)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2398
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2400

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2401
  br label %for.cond1, !dbg !2401

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2386
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2404
    #dbg_value(i32 %c.0, !2405, !DIExpression(), !2406)
    #dbg_value(i32 %m_vecs_stored.1, !2391, !DIExpression(), !2386)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2407
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2401

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2409
  %add = add nsw i32 %mul, %c.0, !dbg !2411
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !2412
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2412
  %add.ptr6.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2413
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2413
  call fastcc void @m_vec_copy.17(i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2414
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2415
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2415

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2417
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2419
  %add.ptr11.idx = shl nsw i32 %add9, 5, !dbg !2420
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2420
  %add.ptr13.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2421
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2421
  call fastcc void @m_vec_add.18(i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2422
  br label %for.inc, !dbg !2423

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2391, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2386)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2424
    #dbg_value(i32 %inc, !2391, !DIExpression(), !2386)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2425
    #dbg_value(i32 %inc14, !2405, !DIExpression(), !2406)
  br label %for.cond1, !dbg !2426, !llvm.loop !2427

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2386
  %inc16 = add nuw i32 %r.0, 1, !dbg !2429
    #dbg_value(i32 %inc16, !2392, !DIExpression(), !2394)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2430
  br label %for.cond, !dbg !2430, !llvm.loop !2431

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2433
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2434 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2435, !DIExpression(), !2436)
    #dbg_value(ptr %in, !2437, !DIExpression(), !2436)
    #dbg_value(ptr %out, !2438, !DIExpression(), !2436)
    #dbg_value(i32 0, !2439, !DIExpression(), !2441)
  br label %for.cond, !dbg !2442

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2443
    #dbg_value(i32 %i.0, !2439, !DIExpression(), !2441)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2444
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2446

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2447
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2447
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2449
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2450
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2451
    #dbg_value(i32 %inc, !2439, !DIExpression(), !2441)
  br label %for.cond, !dbg !2452, !llvm.loop !2453

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2455
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2456 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2457, !DIExpression(), !2458)
    #dbg_value(ptr %in, !2459, !DIExpression(), !2458)
    #dbg_value(ptr %acc, !2460, !DIExpression(), !2458)
    #dbg_value(i32 0, !2461, !DIExpression(), !2463)
  br label %for.cond, !dbg !2464

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2465
    #dbg_value(i32 %i.0, !2461, !DIExpression(), !2463)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2466
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2468

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2469
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2469
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2471
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2472
  %xor = xor i64 %1, %0, !dbg !2472
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2472
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2473
    #dbg_value(i32 %inc, !2461, !DIExpression(), !2463)
  br label %for.cond, !dbg !2474, !llvm.loop !2475

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2477
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2478 {
entry:
  %Ar = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2481, !DIExpression(), !2482)
    #dbg_value(ptr %A, !2483, !DIExpression(), !2482)
    #dbg_value(ptr %y, !2484, !DIExpression(), !2482)
    #dbg_value(ptr %r, !2485, !DIExpression(), !2482)
    #dbg_value(ptr %x, !2486, !DIExpression(), !2482)
    #dbg_value(i32 %k, !2487, !DIExpression(), !2482)
    #dbg_value(i32 %o, !2488, !DIExpression(), !2482)
    #dbg_value(i32 %m, !2489, !DIExpression(), !2482)
    #dbg_value(i32 %A_cols, !2490, !DIExpression(), !2482)
    #dbg_value(i32 0, !2491, !DIExpression(), !2493)
  %0 = mul nsw i32 %o, %k, !dbg !2494
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2494
  br label %for.cond, !dbg !2494

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2495
    #dbg_value(i32 %i.0, !2491, !DIExpression(), !2493)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2496
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2498

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2499
  br label %for.cond3, !dbg !2499

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2501
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2501
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2503
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2504
  %inc = add nuw i32 %i.0, 1, !dbg !2505
    #dbg_value(i32 %inc, !2491, !DIExpression(), !2493)
  br label %for.cond, !dbg !2506, !llvm.loop !2507

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2509
    #dbg_value(i32 %i2.0, !2510, !DIExpression(), !2511)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2512
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2499

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2514
  %mul7 = mul nsw i32 %k, %o, !dbg !2516
  %add = add nsw i32 %mul7, 1, !dbg !2517
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2518
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2519
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2519
  store i8 0, ptr %arrayidx10, align 1, !dbg !2520
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2521
    #dbg_value(i32 %inc12, !2510, !DIExpression(), !2511)
  br label %for.cond3, !dbg !2522, !llvm.loop !2523

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2525
  %add15 = add nsw i32 %mul14, 1, !dbg !2526
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2527
    #dbg_value(i32 0, !2528, !DIExpression(), !2530)
  br label %for.cond17, !dbg !2531

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2532
    #dbg_value(i32 %i16.0, !2528, !DIExpression(), !2530)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2533
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2535

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2536
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2536
  %arrayidx21 = getelementptr inbounds nuw [64 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2538
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2538
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2539
  %mul22 = mul nsw i32 %k, %o, !dbg !2540
  %mul23 = mul nsw i32 %k, %o, !dbg !2541
  %add24 = add nsw i32 %mul23, 1, !dbg !2542
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2543
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2544
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2544
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2545
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2546
    #dbg_value(i32 %inc29, !2528, !DIExpression(), !2530)
  br label %for.cond17, !dbg !2547, !llvm.loop !2548

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2550
  %add32 = add nsw i32 %mul31, 1, !dbg !2551
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2552
    #dbg_value(i8 0, !2553, !DIExpression(), !2482)
    #dbg_value(i32 0, !2554, !DIExpression(), !2556)
  %6 = add i32 %A_cols, -1, !dbg !2557
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2557
  br label %for.cond34, !dbg !2557

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2482
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2558
    #dbg_value(i32 %i33.0, !2554, !DIExpression(), !2556)
    #dbg_value(i8 %full_rank.0, !2553, !DIExpression(), !2482)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2559
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2561

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2482)
  %sub37 = add nsw i32 %m, -1, !dbg !2562
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2564
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2565
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2565
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2565
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2482)
  %or12 = or i8 %full_rank.0, %8, !dbg !2566
    #dbg_value(i8 %or12, !2553, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2482)
    #dbg_value(i8 %or12, !2553, !DIExpression(), !2482)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2567
    #dbg_value(i32 %inc44, !2554, !DIExpression(), !2556)
  br label %for.cond34, !dbg !2568, !llvm.loop !2569

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2482
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2571
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2571

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2573

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2573, !llvm.loop !2575

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2577
    #dbg_value(i32 %row.0, !2578, !DIExpression(), !2579)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2580
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2573

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2582, !DIExpression(), !2482)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2583
  %div = sdiv i32 32, %sub54, !dbg !2583
  %add55 = add nsw i32 %row.0, %div, !dbg !2583
  %mul56 = mul nsw i32 %k, %o, !dbg !2583
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2583
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2583

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2583
  %div60 = sdiv i32 32, %sub59, !dbg !2583
  %add61 = add nsw i32 %row.0, %div60, !dbg !2583
  br label %cond.end, !dbg !2583

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2583
  br label %cond.end, !dbg !2583

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2583
    #dbg_value(i32 %cond, !2585, !DIExpression(), !2482)
    #dbg_value(i32 %row.0, !2586, !DIExpression(), !2588)
  br label %for.cond63, !dbg !2589

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2590
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2591
    #dbg_value(i32 %col.0, !2586, !DIExpression(), !2588)
    #dbg_value(i8 %finished.0, !2582, !DIExpression(), !2482)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2592
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2594

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2595
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2597
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2597
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2597
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2598
  %not = xor i8 %finished.0, -1, !dbg !2599
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2482)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2601
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2602
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2602
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2602
  %13 = and i8 %12, %not, !dbg !2603
  %and801 = and i8 %13, %call70, !dbg !2603
    #dbg_value(i8 %and801, !2604, !DIExpression(), !2605)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2606
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2607
  %xor2 = xor i8 %14, %and801, !dbg !2607
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2607
    #dbg_value(i32 0, !2608, !DIExpression(), !2610)
  br label %for.cond87, !dbg !2611

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2612
    #dbg_value(i32 %i86.0, !2608, !DIExpression(), !2610)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2613
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2615

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2616
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2618
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2618
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2618
  %conv94 = zext i8 %16 to i64, !dbg !2619
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2620
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2621
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2622
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2622
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2622
  %conv99 = zext i8 %18 to i64, !dbg !2623
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2624
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2625
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2626
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2627
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2628
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2628
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2628
  %conv106 = zext i8 %20 to i64, !dbg !2629
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2630
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2631
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2632
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2633
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2634
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2634
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2634
  %conv113 = zext i8 %22 to i64, !dbg !2635
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2636
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2637
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2638
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2639
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2640
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2640
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2640
  %conv120 = zext i8 %24 to i64, !dbg !2641
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2642
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2643
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2644
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2645
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2646
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2646
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2646
  %conv127 = zext i8 %26 to i64, !dbg !2647
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2648
  %xor129 = xor i64 %xor122, %shl128, !dbg !2649
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2650
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2651
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2652
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2652
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2652
  %conv134 = zext i8 %28 to i64, !dbg !2653
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2654
  %xor136 = xor i64 %xor129, %shl135, !dbg !2655
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2656
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2657
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2658
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2658
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2658
  %conv141 = zext i8 %30 to i64, !dbg !2659
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2660
  %xor143 = xor i64 %xor136, %shl142, !dbg !2661
    #dbg_value(i64 %xor143, !2662, !DIExpression(), !2663)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2664
    #dbg_value(i64 %call144, !2662, !DIExpression(), !2663)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2665
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2665
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2666
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2666
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2667
  %33 = trunc i64 %call144 to i8, !dbg !2667
  %34 = and i8 %33, 15, !dbg !2667
  %conv152 = xor i8 %34, %32, !dbg !2667
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2667
  %shr = lshr i64 %call144, 8, !dbg !2668
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2669
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2669
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2670
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2670
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2671
  %37 = trunc i64 %shr to i8, !dbg !2671
  %38 = and i8 %37, 15, !dbg !2671
  %conv161 = xor i8 %38, %36, !dbg !2671
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2671
  %shr162 = lshr i64 %call144, 16, !dbg !2672
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2673
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2673
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2674
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2674
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2675
  %41 = trunc i64 %shr162 to i8, !dbg !2675
  %42 = and i8 %41, 15, !dbg !2675
  %conv171 = xor i8 %42, %40, !dbg !2675
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2675
  %shr172 = lshr i64 %call144, 24, !dbg !2676
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2677
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2677
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2678
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2678
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2679
  %45 = trunc i64 %shr172 to i8, !dbg !2679
  %46 = and i8 %45, 15, !dbg !2679
  %conv181 = xor i8 %46, %44, !dbg !2679
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2679
  %shr182 = lshr i64 %call144, 32, !dbg !2680
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2681
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2681
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2682
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2682
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2683
  %49 = trunc i64 %shr182 to i8, !dbg !2683
  %50 = and i8 %49, 15, !dbg !2683
  %conv191 = xor i8 %50, %48, !dbg !2683
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2683
  %shr192 = lshr i64 %call144, 40, !dbg !2684
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2685
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2685
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2686
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2686
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2687
  %53 = trunc i64 %shr192 to i8, !dbg !2687
  %54 = and i8 %53, 15, !dbg !2687
  %conv201 = xor i8 %54, %52, !dbg !2687
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2687
  %shr202 = lshr i64 %call144, 48, !dbg !2688
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2689
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2689
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2690
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2690
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2691
  %57 = trunc i64 %shr202 to i8, !dbg !2691
  %58 = and i8 %57, 15, !dbg !2691
  %conv211 = xor i8 %58, %56, !dbg !2691
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2691
  %shr212 = lshr i64 %call144, 56, !dbg !2692
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2693
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2693
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2694
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2694
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2695
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2695
  %conv221 = xor i8 %60, %61, !dbg !2695
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2695
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2696
    #dbg_value(i32 %add223, !2608, !DIExpression(), !2610)
  br label %for.cond87, !dbg !2697, !llvm.loop !2698

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2482)
  %or2273 = or i8 %finished.0, %call70, !dbg !2700
    #dbg_value(i8 %or2273, !2582, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2482)
    #dbg_value(i8 %or2273, !2582, !DIExpression(), !2482)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2701
    #dbg_value(i32 %inc230, !2586, !DIExpression(), !2588)
  br label %for.cond63, !dbg !2702, !llvm.loop !2703

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2705

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2482
  ret i32 %retval.0, !dbg !2705
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2706 {
entry:
    #dbg_value(ptr %a, !2707, !DIExpression(), !2708)
    #dbg_value(ptr %b, !2709, !DIExpression(), !2708)
    #dbg_value(ptr %c, !2710, !DIExpression(), !2708)
    #dbg_value(i32 %colrow_ab, !2711, !DIExpression(), !2708)
    #dbg_value(i32 %row_a, !2712, !DIExpression(), !2708)
    #dbg_value(i32 1, !2713, !DIExpression(), !2708)
    #dbg_value(i32 0, !2714, !DIExpression(), !2716)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2717
  br label %for.cond, !dbg !2717

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2718
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2707, !DIExpression(), !2708)
    #dbg_value(ptr %c.addr.0, !2710, !DIExpression(), !2708)
    #dbg_value(i32 %i.0, !2714, !DIExpression(), !2716)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2719
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2721

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2722

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2725
    #dbg_value(i32 poison, !2726, !DIExpression(), !2727)
    #dbg_value(ptr %c.addr.1, !2710, !DIExpression(), !2708)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2722

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2728
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2731
    #dbg_value(i32 1, !2726, !DIExpression(), !2727)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2732
    #dbg_value(ptr %incdec.ptr, !2710, !DIExpression(), !2708)
  br label %for.cond1, !dbg !2733, !llvm.loop !2734

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2736
    #dbg_value(i32 %inc5, !2714, !DIExpression(), !2716)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2737
    #dbg_value(ptr %add.ptr6, !2707, !DIExpression(), !2708)
  br label %for.cond, !dbg !2738, !llvm.loop !2739

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2741
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2742 {
entry:
    #dbg_value(i8 %a, !2743, !DIExpression(), !2744)
    #dbg_value(i8 %b, !2745, !DIExpression(), !2744)
  %xor1 = xor i8 %a, %b, !dbg !2746
  ret i8 %xor1, !dbg !2747
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2748 {
entry:
  %_pivot_row = alloca [5 x i64], align 32
  %_pivot_row2 = alloca [5 x i64], align 32
  %packed_A = alloca [320 x i64], align 32
  %temp = alloca [84 x i8], align 1
    #dbg_value(ptr %A, !2752, !DIExpression(), !2753)
    #dbg_value(i32 %nrows, !2754, !DIExpression(), !2753)
    #dbg_value(i32 %ncols, !2755, !DIExpression(), !2753)
    #dbg_declare(ptr %_pivot_row, !2756, !DIExpression(), !2760)
    #dbg_declare(ptr %_pivot_row2, !2761, !DIExpression(), !2762)
    #dbg_declare(ptr %packed_A, !2763, !DIExpression(), !2767)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(2560) %packed_A, i8 0, i32 2560, i1 false), !dbg !2767
  %add = add nsw i32 %ncols, 15, !dbg !2768
  %div = sdiv i32 %add, 16, !dbg !2769
    #dbg_value(i32 %div, !2770, !DIExpression(), !2753)
    #dbg_value(i32 0, !2771, !DIExpression(), !2773)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2774
  br label %for.cond, !dbg !2774

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2775
    #dbg_value(i32 %i.0, !2771, !DIExpression(), !2773)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2776
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2778

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2779
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2779
  br label %for.cond3, !dbg !2779

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2781
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2783
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2784
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2785
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2786
  %inc = add nuw i32 %i.0, 1, !dbg !2787
    #dbg_value(i32 %inc, !2771, !DIExpression(), !2773)
  br label %for.cond, !dbg !2788, !llvm.loop !2789

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2791
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2753
    #dbg_value(i32 %pivot_row.0, !2792, !DIExpression(), !2753)
    #dbg_value(i32 %pivot_col.0, !2793, !DIExpression(), !2794)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2795
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2779

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2797

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2799
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2799
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2799
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2799
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2799
    #dbg_value(i32 %cond, !2801, !DIExpression(), !2802)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2803
    #dbg_value(i32 %cond16, !2804, !DIExpression(), !2802)
    #dbg_value(i32 0, !2805, !DIExpression(), !2807)
  br label %for.cond18, !dbg !2808

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2809
    #dbg_value(i32 %i17.0, !2805, !DIExpression(), !2807)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2810
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2812

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2803
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2803
  br label %for.cond25, !dbg !2813

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2815
  store i64 0, ptr %arrayidx, align 8, !dbg !2817
  %arrayidx21 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2818
  store i64 0, ptr %arrayidx21, align 8, !dbg !2819
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2820
    #dbg_value(i32 %inc23, !2805, !DIExpression(), !2807)
  br label %for.cond18, !dbg !2821, !llvm.loop !2822

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2802
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2802
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2824
    #dbg_value(i32 %row.0, !2825, !DIExpression(), !2824)
    #dbg_value(i8 %pivot.0, !2826, !DIExpression(), !2802)
    #dbg_value(i64 %pivot_is_zero.0, !2827, !DIExpression(), !2802)
  %add27 = add nsw i32 %cond16, 32, !dbg !2828
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2828
  %sub30 = add nsw i32 %nrows, -1, !dbg !2828
  %add32 = add nsw i32 %cond16, 32, !dbg !2828
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2828
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2830
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2813

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2831
  %not = xor i64 %call, -1, !dbg !2833
    #dbg_value(i64 %not, !2834, !DIExpression(), !2835)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2836
    #dbg_value(i64 %call37, !2837, !DIExpression(), !2835)
    #dbg_value(i32 0, !2838, !DIExpression(), !2840)
  br label %for.cond38, !dbg !2841

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2842
    #dbg_value(i32 %j.0, !2838, !DIExpression(), !2840)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2843
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2845

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2846
  %or = or i64 %and, %not, !dbg !2848
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2849
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2850
  %arrayidx43 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2851
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2851
  %and44 = and i64 %or, %0, !dbg !2852
  %arrayidx45 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2853
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2854
  %xor = xor i64 %1, %and44, !dbg !2854
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2854
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2855
    #dbg_value(i32 %inc47, !2838, !DIExpression(), !2840)
  br label %for.cond38, !dbg !2856, !llvm.loop !2857

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2859
    #dbg_value(i8 %call50, !2826, !DIExpression(), !2802)
  %conv = zext nneg i8 %call50 to i32, !dbg !2860
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2861
    #dbg_value(i64 %call51, !2827, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2802)
  %not52 = xor i64 %call51, -1, !dbg !2862
    #dbg_value(i64 %not52, !2827, !DIExpression(), !2802)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2863
    #dbg_value(i32 %inc54, !2825, !DIExpression(), !2824)
  br label %for.cond25, !dbg !2864, !llvm.loop !2865

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2802
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2802
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2867
    #dbg_value(i8 %call56, !2868, !DIExpression(), !2753)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2869
    #dbg_value(i32 %cond, !2870, !DIExpression(), !2872)
  br label %for.cond60, !dbg !2873

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2874
    #dbg_value(i32 %row59.0, !2870, !DIExpression(), !2872)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2875
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2877

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2878

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2880
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2882
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2882
    #dbg_value(i64 %and67, !2883, !DIExpression(), !2884)
    #dbg_value(i64 %and67.demorgan, !2885, !DIExpression(), !2884)
    #dbg_value(i32 0, !2886, !DIExpression(), !2888)
  br label %for.cond69, !dbg !2889

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2890
    #dbg_value(i32 %col.0, !2886, !DIExpression(), !2888)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2891
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2893

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2894
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2896
  %arrayidx75 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2897
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2897
  %and76 = and i64 %and67.demorgan, %2, !dbg !2898
  %arrayidx77 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2899
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2899
  %and78 = and i64 %3, %and67, !dbg !2900
  %add79 = add i64 %and76, %and78, !dbg !2901
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2902
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2903
  %arrayidx82 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2904
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2905
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2906
    #dbg_value(i32 %inc84, !2886, !DIExpression(), !2888)
  br label %for.cond69, !dbg !2907, !llvm.loop !2908

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2910
    #dbg_value(i32 %inc87, !2870, !DIExpression(), !2872)
  br label %for.cond60, !dbg !2911, !llvm.loop !2912

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2914
    #dbg_value(i32 %row89.0, !2915, !DIExpression(), !2916)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2917
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2878

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2919
    #dbg_value(i1 %cmp94, !2921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2922)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2923
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2924
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2925
    #dbg_value(i8 %call100, !2926, !DIExpression(), !2922)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2927
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2928
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2929
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2930
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2931
    #dbg_value(i32 %inc110, !2915, !DIExpression(), !2916)
  br label %for.cond90, !dbg !2932, !llvm.loop !2933

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2792, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2753)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2935
  %5 = add i32 %4, 1, !dbg !2935
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2935
    #dbg_value(i32 %conv116, !2792, !DIExpression(), !2753)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2936
    #dbg_value(i32 %inc118, !2793, !DIExpression(), !2794)
  br label %for.cond3, !dbg !2937, !llvm.loop !2938

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2940
    #dbg_value(i32 %i120.0, !2941, !DIExpression(), !2942)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2943
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2797

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2945
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2947
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2948
    #dbg_value(i32 0, !2949, !DIExpression(), !2951)
  br label %for.cond130, !dbg !2952

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2953
    #dbg_value(i32 %j129.0, !2949, !DIExpression(), !2951)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !2954
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !2956

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [84 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2957
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2957
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2959
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2960
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2960
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2961
  %inc139 = add nuw i32 %j129.0, 1, !dbg !2962
    #dbg_value(i32 %inc139, !2949, !DIExpression(), !2951)
  br label %for.cond130, !dbg !2963, !llvm.loop !2964

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !2966
    #dbg_value(i32 %inc142, !2941, !DIExpression(), !2942)
  br label %for.cond121, !dbg !2967, !llvm.loop !2968

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 84) #8, !dbg !2970
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 40) #8, !dbg !2971
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 40) #8, !dbg !2972
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 2560) #8, !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2975 {
entry:
    #dbg_value(i8 %a, !2977, !DIExpression(), !2978)
    #dbg_value(i8 0, !2979, !DIExpression(), !2978)
  %0 = icmp ne i8 %a, 0, !dbg !2980
  %conv3 = sext i1 %0 to i8, !dbg !2981
  %1 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !2982
  %xor5 = xor i8 %1, %conv3, !dbg !2983
  ret i8 %xor5, !dbg !2984
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !2985 {
entry:
    #dbg_value(i8 %a, !2988, !DIExpression(), !2989)
    #dbg_value(i64 %b, !2990, !DIExpression(), !2989)
  %0 = and i8 %a, 1, !dbg !2991
  %conv1 = zext nneg i8 %0 to i64, !dbg !2992
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !2993
    #dbg_value(i64 %mul, !2994, !DIExpression(), !2989)
  %1 = and i8 %a, 2, !dbg !2995
  %conv4 = zext nneg i8 %1 to i64, !dbg !2996
  %mul5 = mul i64 %b, %conv4, !dbg !2997
  %xor = xor i64 %mul, %mul5, !dbg !2998
    #dbg_value(i64 %xor, !2994, !DIExpression(), !2989)
  %2 = and i8 %a, 4, !dbg !2999
  %conv8 = zext nneg i8 %2 to i64, !dbg !3000
  %mul9 = mul i64 %b, %conv8, !dbg !3001
  %xor10 = xor i64 %xor, %mul9, !dbg !3002
    #dbg_value(i64 %xor10, !2994, !DIExpression(), !2989)
  %3 = and i8 %a, 8, !dbg !3003
  %conv13 = zext nneg i8 %3 to i64, !dbg !3004
  %mul14 = mul i64 %b, %conv13, !dbg !3005
  %xor15 = xor i64 %xor10, %mul14, !dbg !3006
    #dbg_value(i64 %xor15, !2994, !DIExpression(), !2989)
    #dbg_value(i64 %xor15, !3007, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !2989)
  %shr = lshr i64 %xor15, 4, !dbg !3008
  %and16 = lshr i64 %xor15, 3, !dbg !3009
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3009
  %4 = xor i64 %shr, %shr18, !dbg !3010
  %xor19 = xor i64 %4, %xor15, !dbg !3010
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3011
    #dbg_value(i64 %and20, !3012, !DIExpression(), !2989)
  ret i64 %and20, !dbg !3013
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3014 {
entry:
    #dbg_value(ptr %in, !3017, !DIExpression(), !3018)
    #dbg_value(ptr %out, !3019, !DIExpression(), !3018)
    #dbg_value(i32 %ncols, !3020, !DIExpression(), !3018)
    #dbg_value(ptr %out, !3021, !DIExpression(), !3018)
    #dbg_value(i32 0, !3022, !DIExpression(), !3018)
  br label %for.cond, !dbg !3023

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3025
    #dbg_value(i32 %i.0, !3022, !DIExpression(), !3018)
  %add = or disjoint i32 %i.0, 1, !dbg !3026
  %cmp = icmp slt i32 %add, %ncols, !dbg !3028
  br i1 %cmp, label %for.body, label %for.end, !dbg !3029

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3030
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3030
  %add2 = or disjoint i32 %i.0, 1, !dbg !3032
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3033
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3033
  %shl5 = shl i8 %1, 4, !dbg !3034
  %or = or i8 %shl5, %0, !dbg !3035
  %div = lshr exact i32 %i.0, 1, !dbg !3036
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3037
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3038
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3039
    #dbg_value(i32 %add8, !3022, !DIExpression(), !3018)
  br label %for.cond, !dbg !3040, !llvm.loop !3041

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3025
  %2 = and i32 %ncols, -2147483647, !dbg !3043
  %cmp9 = icmp eq i32 %2, 1, !dbg !3043
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3043

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3045
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3045
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3047
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3048
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3049
  br label %if.end, !dbg !3050

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3051
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3052 {
entry:
    #dbg_value(i32 %a, !3055, !DIExpression(), !3056)
    #dbg_value(i32 %b, !3057, !DIExpression(), !3056)
  %xor = xor i32 %a, %b, !dbg !3058
  %0 = icmp sgt i32 %xor, 0, !dbg !3059
  %shr = sext i1 %0 to i64, !dbg !3059
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3060
  %xor1 = xor i64 %1, %shr, !dbg !3061
  ret i64 %xor1, !dbg !3062
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3063 {
entry:
    #dbg_value(i32 %a, !3064, !DIExpression(), !3065)
    #dbg_value(i32 %b, !3066, !DIExpression(), !3065)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3067, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3065)
  %0 = icmp slt i32 %b, %a, !dbg !3068
  %shr = sext i1 %0 to i64, !dbg !3068
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3069
  %xor = xor i64 %1, %shr, !dbg !3070
  ret i64 %xor, !dbg !3071
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3072 {
entry:
    #dbg_value(ptr %in, !3075, !DIExpression(), !3076)
    #dbg_value(i32 %index, !3077, !DIExpression(), !3076)
  %div = sdiv i32 %index, 16, !dbg !3078
    #dbg_value(i32 %div, !3079, !DIExpression(), !3076)
  %rem = srem i32 %index, 16, !dbg !3080
    #dbg_value(i32 %rem, !3081, !DIExpression(), !3076)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3082
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3082
  %mul = shl nsw i32 %rem, 2, !dbg !3083
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3084
  %shr = lshr i64 %0, %sh_prom, !dbg !3084
  %1 = trunc i64 %shr to i8, !dbg !3085
  %conv = and i8 %1, 15, !dbg !3085
  ret i8 %conv, !dbg !3086
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3087 {
entry:
    #dbg_value(i8 %a, !3090, !DIExpression(), !3091)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3092
    #dbg_value(i8 %call, !3093, !DIExpression(), !3091)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3094
    #dbg_value(i8 %call1, !3095, !DIExpression(), !3091)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3096
    #dbg_value(i8 %call2, !3097, !DIExpression(), !3091)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3098
    #dbg_value(i8 %call3, !3099, !DIExpression(), !3091)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3100
    #dbg_value(i8 %call4, !3101, !DIExpression(), !3091)
  ret i8 %call4, !dbg !3102
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3103 {
entry:
    #dbg_value(i32 %legs, !3106, !DIExpression(), !3107)
    #dbg_value(ptr %in, !3108, !DIExpression(), !3107)
    #dbg_value(i8 %a, !3109, !DIExpression(), !3107)
    #dbg_value(ptr %acc, !3110, !DIExpression(), !3107)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3111
    #dbg_value(i32 %call, !3112, !DIExpression(), !3107)
    #dbg_value(i64 1229782938247303441, !3113, !DIExpression(), !3107)
    #dbg_value(i32 0, !3114, !DIExpression(), !3116)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3117
  br label %for.cond, !dbg !3117

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3118
    #dbg_value(i32 %i.0, !3114, !DIExpression(), !3116)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3119
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3121

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3122
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3122
  %and = and i64 %0, 1229782938247303441, !dbg !3124
  %and1 = and i32 %call, 255, !dbg !3125
  %conv = zext nneg i32 %and1 to i64, !dbg !3126
  %mul = mul i64 %and, %conv, !dbg !3127
  %shr = lshr i64 %0, 1, !dbg !3128
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3129
  %shr4 = lshr i32 %call, 8, !dbg !3130
  %and5 = and i32 %shr4, 15, !dbg !3131
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3132
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3133
  %xor = xor i64 %mul, %mul7, !dbg !3134
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3135
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3135
  %shr9 = lshr i64 %1, 2, !dbg !3136
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3137
  %shr11 = lshr i32 %call, 16, !dbg !3138
  %and12 = and i32 %shr11, 15, !dbg !3139
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3140
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3141
  %xor15 = xor i64 %xor, %mul14, !dbg !3142
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3143
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3143
  %shr17 = lshr i64 %2, 3, !dbg !3144
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3145
  %shr19 = lshr i32 %call, 24, !dbg !3146
  %and20 = and i32 %shr19, 15, !dbg !3147
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3148
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3149
  %xor23 = xor i64 %xor15, %mul22, !dbg !3150
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3151
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3152
  %xor25 = xor i64 %3, %xor23, !dbg !3152
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3152
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3153
    #dbg_value(i32 %inc, !3114, !DIExpression(), !3116)
  br label %for.cond, !dbg !3154, !llvm.loop !3155

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3157
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3158 {
entry:
    #dbg_value(i32 %legs, !3161, !DIExpression(), !3162)
    #dbg_value(ptr %in, !3163, !DIExpression(), !3162)
    #dbg_value(ptr %out, !3164, !DIExpression(), !3162)
    #dbg_value(ptr %in, !3165, !DIExpression(), !3162)
    #dbg_value(i32 0, !3166, !DIExpression(), !3168)
  br label %for.cond, !dbg !3169

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3170
    #dbg_value(i32 %i.0, !3166, !DIExpression(), !3168)
  %mul = shl nsw i32 %legs, 4, !dbg !3171
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3173
  br i1 %cmp, label %for.body, label %for.end, !dbg !3174

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3175
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3177
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3177
  %1 = and i8 %0, 15, !dbg !3178
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3179
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3180
  %div3 = lshr exact i32 %i.0, 1, !dbg !3181
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3182
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3182
  %3 = lshr i8 %2, 4, !dbg !3183
  %add = or disjoint i32 %i.0, 1, !dbg !3184
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3185
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3186
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3187
    #dbg_value(i32 %add8, !3166, !DIExpression(), !3168)
  br label %for.cond, !dbg !3188, !llvm.loop !3189

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3191
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3192 {
entry:
    #dbg_value(i8 %b, !3193, !DIExpression(), !3194)
  %conv = zext nneg i8 %b to i32, !dbg !3195
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3196
    #dbg_value(i32 %mul, !3197, !DIExpression(), !3194)
    #dbg_value(i32 -252645136, !3198, !DIExpression(), !3194)
  %and = and i32 %mul, 1894838512, !dbg !3199
    #dbg_value(i32 %and, !3200, !DIExpression(), !3194)
  %shr = lshr exact i32 %and, 4, !dbg !3201
  %shr1 = lshr exact i32 %and, 3, !dbg !3202
  %0 = xor i32 %shr, %shr1, !dbg !3203
  %xor2 = xor i32 %0, %mul, !dbg !3203
  ret i32 %xor2, !dbg !3204
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3205 {
entry:
    #dbg_value(i8 %a, !3206, !DIExpression(), !3207)
    #dbg_value(i8 %b, !3208, !DIExpression(), !3207)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3209
  %xor1 = xor i8 %a, %0, !dbg !3210
    #dbg_value(i8 %xor1, !3206, !DIExpression(), !3207)
  %1 = trunc i8 %xor1 to i1, !dbg !3211
    #dbg_value(i8 poison, !3212, !DIExpression(), !3207)
  %2 = and i8 %xor1, 2, !dbg !3213
  %mul9 = mul i8 %2, %b, !dbg !3214
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3211
  %xor11 = xor i8 %conv10, %mul9, !dbg !3215
    #dbg_value(i8 %xor11, !3212, !DIExpression(), !3207)
  %3 = and i8 %xor1, 4, !dbg !3216
  %mul16 = mul i8 %3, %b, !dbg !3217
  %xor18 = xor i8 %mul16, %xor11, !dbg !3218
    #dbg_value(i8 %xor18, !3212, !DIExpression(), !3207)
  %4 = and i8 %xor1, 8, !dbg !3219
  %mul23 = mul i8 %4, %b, !dbg !3220
  %xor25 = xor i8 %mul23, %xor18, !dbg !3221
    #dbg_value(i8 %xor25, !3212, !DIExpression(), !3207)
    #dbg_value(i8 %xor25, !3222, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3207)
  %5 = lshr i8 %xor25, 4, !dbg !3223
  %6 = lshr i8 %xor25, 3, !dbg !3224
  %7 = and i8 %6, 14, !dbg !3224
  %8 = xor i8 %5, %7, !dbg !3225
  %xor25.masked = and i8 %xor25, 15, !dbg !3226
  %9 = xor i8 %8, %xor25.masked, !dbg !3226
    #dbg_value(i8 %9, !3227, !DIExpression(), !3207)
  ret i8 %9, !dbg !3228
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3229 {
entry:
    #dbg_value(ptr %a, !3230, !DIExpression(), !3231)
    #dbg_value(ptr %b, !3232, !DIExpression(), !3231)
    #dbg_value(i32 %n, !3233, !DIExpression(), !3231)
    #dbg_value(i32 1, !3234, !DIExpression(), !3231)
    #dbg_value(i8 0, !3235, !DIExpression(), !3231)
    #dbg_value(i32 0, !3236, !DIExpression(), !3238)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3239
  br label %for.cond, !dbg !3239

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3231
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3240
    #dbg_value(i32 %i.0, !3236, !DIExpression(), !3238)
    #dbg_value(ptr %b.addr.0, !3232, !DIExpression(), !3231)
    #dbg_value(i8 %ret.0, !3235, !DIExpression(), !3231)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3241
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3243

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3244
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3244
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3246
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3247
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3248
    #dbg_value(i8 %call1, !3235, !DIExpression(), !3231)
  %inc = add nuw i32 %i.0, 1, !dbg !3249
    #dbg_value(i32 %inc, !3236, !DIExpression(), !3238)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3250
    #dbg_value(ptr %add.ptr, !3232, !DIExpression(), !3231)
  br label %for.cond, !dbg !3251, !llvm.loop !3252

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3231
  ret i8 %ret.0.lcssa, !dbg !3254
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3255 {
entry:
    #dbg_value(i8 %a, !3256, !DIExpression(), !3257)
    #dbg_value(i8 %b, !3258, !DIExpression(), !3257)
  %xor1 = xor i8 %a, %b, !dbg !3259
  ret i8 %xor1, !dbg !3260
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
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !172, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 537, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 537, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 538, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 539, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 540, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 541, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4480, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 560)
!222 = !DILocation(line: 541, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 542, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 811008, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 12672)
!227 = !DILocation(line: 542, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 543, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 73984, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 1156)
!232 = !DILocation(line: 543, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 546, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8704, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 1088)
!237 = !DILocation(line: 546, column: 19, scope: !211)
!238 = !DILocalVariable(name: "m_vec_limbs", scope: !211, file: !25, line: 548, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!240 = !DILocalVariable(name: "param_m", scope: !211, file: !25, line: 549, type: !239)
!241 = !DILocalVariable(name: "param_v", scope: !211, file: !25, line: 550, type: !239)
!242 = !DILocalVariable(name: "param_o", scope: !211, file: !25, line: 551, type: !239)
!243 = !DILocalVariable(name: "param_O_bytes", scope: !211, file: !25, line: 552, type: !239)
!244 = !DILocalVariable(name: "param_P1_limbs", scope: !211, file: !25, line: 553, type: !239)
!245 = !DILocalVariable(name: "param_P3_limbs", scope: !211, file: !25, line: 554, type: !239)
!246 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !211, file: !25, line: 555, type: !239)
!247 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !211, file: !25, line: 556, type: !239)
!248 = !DILocalVariable(name: "P1", scope: !211, file: !25, line: 558, type: !5)
!249 = !DILocation(line: 559, column: 22, scope: !211)
!250 = !DILocalVariable(name: "P2", scope: !211, file: !25, line: 559, type: !5)
!251 = !DILocation(line: 565, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !211, file: !25, line: 565, column: 9)
!253 = !DILocation(line: 565, column: 51, scope: !252)
!254 = !DILocation(line: 572, column: 5, scope: !211)
!255 = !DILocalVariable(name: "seed_pk", scope: !211, file: !25, line: 545, type: !18)
!256 = !DILocation(line: 578, column: 14, scope: !211)
!257 = !DILocation(line: 578, column: 5, scope: !211)
!258 = !DILocation(line: 584, column: 5, scope: !211)
!259 = !DILocation(line: 587, column: 5, scope: !211)
!260 = !DILocation(line: 590, column: 5, scope: !211)
!261 = !DILocalVariable(name: "P3_upper", scope: !211, file: !25, line: 592, type: !262)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 39168, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 612)
!265 = !DILocation(line: 592, column: 14, scope: !211)
!266 = !DILocation(line: 595, column: 5, scope: !211)
!267 = !DILocation(line: 596, column: 31, scope: !211)
!268 = !DILocation(line: 596, column: 5, scope: !211)
!269 = !DILabel(scope: !211, name: "err", file: !25, line: 599)
!270 = !DILocation(line: 599, column: 5, scope: !211)
!271 = !DILocation(line: 601, column: 5, scope: !211)
!272 = !DILocation(line: 602, column: 5, scope: !211)
!273 = !DILocation(line: 603, column: 5, scope: !211)
!274 = !DILocation(line: 604, column: 5, scope: !211)
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
!796 = !DILocation(line: 445, column: 18, scope: !697)
!797 = !DILocation(line: 447, column: 9, scope: !697)
!798 = !DILocalVariable(name: "i", scope: !799, file: !25, line: 451, type: !45)
!799 = distinct !DILexicalBlock(scope: !697, file: !25, line: 451, column: 9)
!800 = !DILocation(line: 0, scope: !799)
!801 = !DILocation(line: 451, column: 14, scope: !799)
!802 = !DILocation(line: 451, scope: !799)
!803 = !DILocation(line: 451, column: 27, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !25, line: 451, column: 9)
!805 = !DILocation(line: 451, column: 9, scope: !799)
!806 = !DILocation(line: 452, column: 26, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !25, line: 451, column: 48)
!808 = !DILocation(line: 452, column: 22, scope: !807)
!809 = !DILocation(line: 452, column: 52, scope: !807)
!810 = !DILocation(line: 452, column: 48, scope: !807)
!811 = !DILocation(line: 452, column: 13, scope: !807)
!812 = !DILocation(line: 451, column: 43, scope: !804)
!813 = !DILocation(line: 451, column: 9, scope: !804)
!814 = distinct !{!814, !805, !815, !303}
!815 = !DILocation(line: 453, column: 9, scope: !799)
!816 = !DILocation(line: 455, column: 9, scope: !697)
!817 = !DILocation(line: 457, column: 9, scope: !697)
!818 = !DILocation(line: 458, column: 9, scope: !697)
!819 = !DILocalVariable(name: "i", scope: !820, file: !25, line: 460, type: !45)
!820 = distinct !DILexicalBlock(scope: !697, file: !25, line: 460, column: 9)
!821 = !DILocation(line: 0, scope: !820)
!822 = !DILocation(line: 460, column: 14, scope: !820)
!823 = !DILocation(line: 460, scope: !820)
!824 = !DILocation(line: 460, column: 27, scope: !825)
!825 = distinct !DILexicalBlock(scope: !820, file: !25, line: 460, column: 9)
!826 = !DILocation(line: 460, column: 9, scope: !820)
!827 = !DILocation(line: 462, column: 20, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !25, line: 461, column: 9)
!829 = !DILocation(line: 462, column: 43, scope: !828)
!830 = !DILocation(line: 462, column: 13, scope: !828)
!831 = !DILocation(line: 462, column: 48, scope: !828)
!832 = !DILocation(line: 460, column: 39, scope: !825)
!833 = !DILocation(line: 460, column: 9, scope: !825)
!834 = distinct !{!834, !826, !835, !303}
!835 = !DILocation(line: 463, column: 9, scope: !820)
!836 = !DILocation(line: 465, column: 18, scope: !697)
!837 = !DILocation(line: 465, column: 9, scope: !697)
!838 = !DILocation(line: 469, column: 13, scope: !839)
!839 = distinct !DILexicalBlock(scope: !697, file: !25, line: 469, column: 13)
!840 = !DILocation(line: 472, column: 13, scope: !841)
!841 = distinct !DILexicalBlock(scope: !839, file: !25, line: 471, column: 16)
!842 = !DILocation(line: 473, column: 13, scope: !841)
!843 = !DILocalVariable(name: "i", scope: !844, file: !25, line: 477, type: !45)
!844 = distinct !DILexicalBlock(scope: !697, file: !25, line: 477, column: 5)
!845 = !DILocation(line: 0, scope: !844)
!846 = !DILocation(line: 477, column: 10, scope: !844)
!847 = !DILocation(line: 477, scope: !844)
!848 = !DILocation(line: 477, column: 23, scope: !849)
!849 = distinct !DILexicalBlock(scope: !844, file: !25, line: 477, column: 5)
!850 = !DILocation(line: 477, column: 5, scope: !844)
!851 = !DILocation(line: 478, column: 23, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !25, line: 477, column: 44)
!853 = !DILocation(line: 478, column: 19, scope: !852)
!854 = !DILocalVariable(name: "vi", scope: !697, file: !25, line: 376, type: !18)
!855 = !DILocation(line: 479, column: 17, scope: !852)
!856 = !DILocation(line: 479, column: 33, scope: !852)
!857 = !DILocation(line: 479, column: 29, scope: !852)
!858 = !DILocation(line: 479, column: 9, scope: !852)
!859 = !DILocation(line: 480, column: 31, scope: !852)
!860 = !DILocation(line: 480, column: 27, scope: !852)
!861 = !DILocation(line: 480, column: 9, scope: !852)
!862 = !DILocation(line: 481, column: 22, scope: !852)
!863 = !DILocation(line: 481, column: 18, scope: !852)
!864 = !DILocation(line: 481, column: 32, scope: !852)
!865 = !DILocation(line: 481, column: 61, scope: !852)
!866 = !DILocation(line: 481, column: 57, scope: !852)
!867 = !DILocation(line: 481, column: 9, scope: !852)
!868 = !DILocation(line: 477, column: 39, scope: !849)
!869 = !DILocation(line: 477, column: 5, scope: !849)
!870 = distinct !{!870, !850, !871, !303}
!871 = !DILocation(line: 482, column: 5, scope: !844)
!872 = !DILocation(line: 483, column: 5, scope: !697)
!873 = !DILocation(line: 485, column: 34, scope: !697)
!874 = !DILocation(line: 485, column: 5, scope: !697)
!875 = !DILocation(line: 486, column: 13, scope: !697)
!876 = !DILocation(line: 486, column: 5, scope: !697)
!877 = !DILabel(scope: !697, name: "err", file: !25, line: 488)
!878 = !DILocation(line: 488, column: 1, scope: !697)
!879 = !DILocation(line: 489, column: 5, scope: !697)
!880 = !DILocation(line: 490, column: 5, scope: !697)
!881 = !DILocation(line: 491, column: 5, scope: !697)
!882 = !DILocation(line: 492, column: 5, scope: !697)
!883 = !DILocation(line: 493, column: 23, scope: !697)
!884 = !DILocation(line: 493, column: 5, scope: !697)
!885 = !DILocation(line: 494, column: 5, scope: !697)
!886 = !DILocation(line: 495, column: 5, scope: !697)
!887 = !DILocation(line: 496, column: 5, scope: !697)
!888 = !DILocation(line: 497, column: 5, scope: !697)
!889 = !DILocation(line: 498, column: 5, scope: !697)
!890 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !891, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !174, !49, !326, !326, !5, !5}
!893 = !DILocalVariable(name: "p", arg: 1, scope: !890, file: !323, line: 244, type: !174)
!894 = !DILocation(line: 0, scope: !890)
!895 = !DILocalVariable(name: "Vdec", arg: 2, scope: !890, file: !323, line: 244, type: !49)
!896 = !DILocalVariable(name: "L", arg: 3, scope: !890, file: !323, line: 244, type: !326)
!897 = !DILocalVariable(name: "P1", arg: 4, scope: !890, file: !323, line: 244, type: !326)
!898 = !DILocalVariable(name: "VL", arg: 5, scope: !890, file: !323, line: 244, type: !5)
!899 = !DILocalVariable(name: "VP1V", arg: 6, scope: !890, file: !323, line: 244, type: !5)
!900 = !DILocalVariable(name: "param_k", scope: !890, file: !323, line: 246, type: !239)
!901 = !DILocalVariable(name: "param_v", scope: !890, file: !323, line: 247, type: !239)
!902 = !DILocalVariable(name: "param_o", scope: !890, file: !323, line: 248, type: !239)
!903 = !DILocation(line: 251, column: 5, scope: !890)
!904 = !DILocalVariable(name: "Pv", scope: !890, file: !323, line: 254, type: !905)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 65536, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 1024)
!908 = !DILocation(line: 254, column: 14, scope: !890)
!909 = !DILocation(line: 255, column: 5, scope: !890)
!910 = !DILocation(line: 256, column: 5, scope: !890)
!911 = !DILocation(line: 257, column: 1, scope: !890)
!912 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !913, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !174, !5, !49, !18}
!915 = !DILocalVariable(name: "p", arg: 1, scope: !912, file: !25, line: 43, type: !174)
!916 = !DILocation(line: 0, scope: !912)
!917 = !DILocalVariable(name: "vPv", arg: 2, scope: !912, file: !25, line: 43, type: !5)
!918 = !DILocalVariable(name: "t", arg: 3, scope: !912, file: !25, line: 43, type: !49)
!919 = !DILocalVariable(name: "y", arg: 4, scope: !912, file: !25, line: 43, type: !18)
!920 = !DILocalVariable(name: "top_pos", scope: !912, file: !25, line: 48, type: !921)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!922 = !DILocalVariable(name: "m_vec_limbs", scope: !912, file: !25, line: 49, type: !921)
!923 = !DILocalVariable(name: "temp", scope: !912, file: !25, line: 62, type: !579)
!924 = !DILocation(line: 62, column: 14, scope: !912)
!925 = !DILocalVariable(name: "temp_bytes", scope: !912, file: !25, line: 63, type: !18)
!926 = !DILocalVariable(name: "i", scope: !927, file: !25, line: 64, type: !45)
!927 = distinct !DILexicalBlock(scope: !912, file: !25, line: 64, column: 5)
!928 = !DILocation(line: 0, scope: !927)
!929 = !DILocation(line: 64, column: 10, scope: !927)
!930 = !DILocation(line: 64, scope: !927)
!931 = !DILocation(line: 64, column: 36, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !25, line: 64, column: 5)
!933 = !DILocation(line: 64, column: 5, scope: !927)
!934 = !DILocation(line: 65, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !25, line: 65, column: 9)
!936 = distinct !DILexicalBlock(scope: !932, file: !25, line: 64, column: 48)
!937 = !DILocation(line: 99, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !912, file: !25, line: 99, column: 5)
!939 = !DILocation(line: 65, scope: !935)
!940 = !DILocalVariable(name: "j", scope: !935, file: !25, line: 65, type: !45)
!941 = !DILocation(line: 0, scope: !935)
!942 = !DILocation(line: 65, column: 27, scope: !943)
!943 = distinct !DILexicalBlock(scope: !935, file: !25, line: 65, column: 9)
!944 = !DILocation(line: 67, column: 34, scope: !945)
!945 = distinct !DILexicalBlock(scope: !943, file: !25, line: 65, column: 46)
!946 = !DILocation(line: 67, column: 54, scope: !945)
!947 = !DILocalVariable(name: "top", scope: !945, file: !25, line: 67, type: !14)
!948 = !DILocation(line: 0, scope: !945)
!949 = !DILocation(line: 68, column: 13, scope: !945)
!950 = !DILocation(line: 68, column: 33, scope: !945)
!951 = !DILocalVariable(name: "k", scope: !952, file: !25, line: 69, type: !45)
!952 = distinct !DILexicalBlock(scope: !945, file: !25, line: 69, column: 13)
!953 = !DILocation(line: 0, scope: !952)
!954 = !DILocation(line: 69, column: 17, scope: !952)
!955 = !DILocation(line: 69, scope: !952)
!956 = !DILocation(line: 69, column: 43, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !25, line: 69, column: 13)
!958 = !DILocation(line: 69, column: 13, scope: !952)
!959 = !DILocation(line: 67, column: 33, scope: !945)
!960 = !DILocation(line: 74, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !945, file: !25, line: 74, column: 13)
!962 = !DILocation(line: 70, column: 30, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !25, line: 69, column: 52)
!964 = !DILocation(line: 70, column: 38, scope: !963)
!965 = !DILocation(line: 70, column: 23, scope: !963)
!966 = !DILocation(line: 70, column: 17, scope: !963)
!967 = !DILocation(line: 70, column: 27, scope: !963)
!968 = !DILocation(line: 71, column: 17, scope: !963)
!969 = !DILocation(line: 71, column: 25, scope: !963)
!970 = !DILocation(line: 69, column: 49, scope: !957)
!971 = !DILocation(line: 69, column: 13, scope: !957)
!972 = distinct !{!972, !958, !973, !303}
!973 = !DILocation(line: 72, column: 13, scope: !952)
!974 = !DILocation(line: 74, scope: !961)
!975 = !DILocalVariable(name: "jj", scope: !961, file: !25, line: 74, type: !45)
!976 = !DILocation(line: 0, scope: !961)
!977 = !DILocation(line: 74, column: 33, scope: !978)
!978 = distinct !DILexicalBlock(scope: !961, file: !25, line: 74, column: 13)
!979 = !DILocation(line: 92, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !945, file: !25, line: 92, column: 13)
!981 = !DILocation(line: 75, column: 22, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !25, line: 75, column: 20)
!983 = distinct !DILexicalBlock(scope: !978, file: !25, line: 74, column: 53)
!984 = !DILocation(line: 75, column: 25, scope: !982)
!985 = !DILocation(line: 79, column: 52, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !25, line: 75, column: 30)
!987 = !DILocation(line: 79, column: 41, scope: !986)
!988 = !DILocation(line: 79, column: 34, scope: !986)
!989 = !DILocation(line: 79, column: 21, scope: !986)
!990 = !DILocation(line: 79, column: 38, scope: !986)
!991 = !DILocation(line: 81, column: 17, scope: !986)
!992 = !DILocation(line: 86, column: 52, scope: !993)
!993 = distinct !DILexicalBlock(scope: !982, file: !25, line: 82, column: 22)
!994 = !DILocation(line: 86, column: 41, scope: !993)
!995 = !DILocation(line: 86, column: 73, scope: !993)
!996 = !DILocation(line: 86, column: 34, scope: !993)
!997 = !DILocation(line: 86, column: 21, scope: !993)
!998 = !DILocation(line: 86, column: 38, scope: !993)
!999 = !DILocation(line: 74, column: 49, scope: !978)
!1000 = !DILocation(line: 74, column: 13, scope: !978)
!1001 = distinct !{!1001, !960, !1002, !303}
!1002 = !DILocation(line: 89, column: 13, scope: !961)
!1003 = !DILocation(line: 92, scope: !980)
!1004 = !DILocalVariable(name: "k", scope: !980, file: !25, line: 92, type: !15)
!1005 = !DILocation(line: 0, scope: !980)
!1006 = !DILocation(line: 92, column: 31, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !980, file: !25, line: 92, column: 13)
!1008 = !DILocation(line: 93, column: 54, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1007, file: !25, line: 92, column: 51)
!1010 = !DILocation(line: 93, column: 68, scope: !1009)
!1011 = !DILocation(line: 93, column: 28, scope: !1009)
!1012 = !DILocation(line: 93, column: 78, scope: !1009)
!1013 = !DILocation(line: 93, column: 109, scope: !1009)
!1014 = !DILocation(line: 93, column: 123, scope: !1009)
!1015 = !DILocation(line: 93, column: 83, scope: !1009)
!1016 = !DILocation(line: 93, column: 82, scope: !1009)
!1017 = !DILocation(line: 93, column: 73, scope: !1009)
!1018 = !DILocation(line: 93, column: 17, scope: !1009)
!1019 = !DILocation(line: 93, column: 25, scope: !1009)
!1020 = !DILocation(line: 92, column: 48, scope: !1007)
!1021 = !DILocation(line: 92, column: 13, scope: !1007)
!1022 = distinct !{!1022, !979, !1023, !303}
!1023 = !DILocation(line: 94, column: 13, scope: !980)
!1024 = !DILocation(line: 65, column: 42, scope: !943)
!1025 = !DILocation(line: 65, column: 9, scope: !943)
!1026 = distinct !{!1026, !934, !1027, !303}
!1027 = !DILocation(line: 95, column: 9, scope: !935)
!1028 = !DILocation(line: 64, column: 44, scope: !932)
!1029 = !DILocation(line: 64, column: 5, scope: !932)
!1030 = distinct !{!1030, !933, !1031, !303}
!1031 = !DILocation(line: 96, column: 5, scope: !927)
!1032 = !DILocation(line: 99, scope: !938)
!1033 = !DILocalVariable(name: "i", scope: !938, file: !25, line: 99, type: !45)
!1034 = !DILocation(line: 0, scope: !938)
!1035 = !DILocation(line: 99, column: 23, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !938, file: !25, line: 99, column: 5)
!1037 = !DILocation(line: 105, column: 18, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1036, file: !25, line: 100, column: 5)
!1039 = !DILocation(line: 105, column: 40, scope: !1038)
!1040 = !DILocation(line: 105, column: 28, scope: !1038)
!1041 = !DILocation(line: 105, column: 44, scope: !1038)
!1042 = !DILocation(line: 105, column: 25, scope: !1038)
!1043 = !DILocation(line: 105, column: 9, scope: !1038)
!1044 = !DILocation(line: 105, column: 16, scope: !1038)
!1045 = !DILocation(line: 106, column: 21, scope: !1038)
!1046 = !DILocation(line: 106, column: 18, scope: !1038)
!1047 = !DILocation(line: 106, column: 40, scope: !1038)
!1048 = !DILocation(line: 106, column: 28, scope: !1038)
!1049 = !DILocation(line: 106, column: 44, scope: !1038)
!1050 = !DILocation(line: 106, column: 25, scope: !1038)
!1051 = !DILocation(line: 106, column: 12, scope: !1038)
!1052 = !DILocation(line: 106, column: 9, scope: !1038)
!1053 = !DILocation(line: 106, column: 16, scope: !1038)
!1054 = !DILocation(line: 99, column: 38, scope: !1036)
!1055 = !DILocation(line: 99, column: 5, scope: !1036)
!1056 = distinct !{!1056, !937, !1057, !303}
!1057 = !DILocation(line: 108, column: 5, scope: !938)
!1058 = !DILocation(line: 109, column: 1, scope: !912)
!1059 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1060, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !174, !5, !18}
!1062 = !DILocalVariable(name: "p", arg: 1, scope: !1059, file: !25, line: 154, type: !174)
!1063 = !DILocation(line: 0, scope: !1059)
!1064 = !DILocalVariable(name: "VtL", arg: 2, scope: !1059, file: !25, line: 154, type: !5)
!1065 = !DILocalVariable(name: "A_out", arg: 3, scope: !1059, file: !25, line: 154, type: !18)
!1066 = !DILocalVariable(name: "bits_to_shift", scope: !1059, file: !25, line: 159, type: !45)
!1067 = !DILocalVariable(name: "words_to_shift", scope: !1059, file: !25, line: 160, type: !45)
!1068 = !DILocalVariable(name: "m_vec_limbs", scope: !1059, file: !25, line: 161, type: !239)
!1069 = !DILocalVariable(name: "A", scope: !1059, file: !25, line: 162, type: !1070)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40960, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 640)
!1073 = !DILocation(line: 162, column: 14, scope: !1059)
!1074 = !DILocalVariable(name: "A_width", scope: !1059, file: !25, line: 163, type: !15)
!1075 = !DILocalVariable(name: "i", scope: !1076, file: !25, line: 177, type: !45)
!1076 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 177, column: 5)
!1077 = !DILocation(line: 0, scope: !1076)
!1078 = !DILocation(line: 177, column: 10, scope: !1076)
!1079 = !DILocation(line: 177, scope: !1076)
!1080 = !DILocation(line: 160, column: 9, scope: !1059)
!1081 = !DILocation(line: 159, column: 9, scope: !1059)
!1082 = !DILocation(line: 177, column: 23, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1076, file: !25, line: 177, column: 5)
!1084 = !DILocation(line: 177, column: 5, scope: !1076)
!1085 = !DILocation(line: 178, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !25, line: 178, column: 9)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !25, line: 177, column: 47)
!1088 = !DILocation(line: 212, column: 5, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 212, column: 5)
!1090 = !DILocation(line: 178, scope: !1086)
!1091 = !DILocalVariable(name: "j", scope: !1086, file: !25, line: 178, type: !45)
!1092 = !DILocation(line: 0, scope: !1086)
!1093 = !DILocation(line: 178, column: 40, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1086, file: !25, line: 178, column: 9)
!1095 = !DILocation(line: 180, column: 22, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 178, column: 51)
!1097 = !DILocalVariable(name: "Mj", scope: !1059, file: !25, line: 164, type: !326)
!1098 = !DILocalVariable(name: "c", scope: !1099, file: !25, line: 181, type: !45)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 181, column: 13)
!1100 = !DILocation(line: 0, scope: !1099)
!1101 = !DILocation(line: 181, column: 18, scope: !1099)
!1102 = !DILocation(line: 181, scope: !1099)
!1103 = !DILocation(line: 181, column: 31, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !25, line: 181, column: 13)
!1105 = !DILocation(line: 181, column: 13, scope: !1099)
!1106 = !DILocation(line: 182, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !25, line: 182, column: 17)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !25, line: 181, column: 50)
!1109 = !DILocation(line: 182, scope: !1107)
!1110 = !DILocalVariable(name: "k", scope: !1107, file: !25, line: 182, type: !45)
!1111 = !DILocation(line: 0, scope: !1107)
!1112 = !DILocation(line: 182, column: 35, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !25, line: 182, column: 17)
!1114 = !DILocation(line: 184, column: 86, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1113, file: !25, line: 183, column: 17)
!1116 = !DILocation(line: 184, column: 83, scope: !1115)
!1117 = !DILocation(line: 184, column: 78, scope: !1115)
!1118 = !DILocation(line: 184, column: 100, scope: !1115)
!1119 = !DILocation(line: 184, column: 35, scope: !1115)
!1120 = !DILocation(line: 184, column: 39, scope: !1115)
!1121 = !DILocation(line: 184, column: 48, scope: !1115)
!1122 = !DILocation(line: 184, column: 65, scope: !1115)
!1123 = !DILocation(line: 184, column: 43, scope: !1115)
!1124 = !DILocation(line: 184, column: 21, scope: !1115)
!1125 = !DILocation(line: 184, column: 75, scope: !1115)
!1126 = !DILocation(line: 185, column: 38, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1115, file: !25, line: 185, column: 24)
!1128 = !DILocation(line: 186, column: 94, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !25, line: 185, column: 42)
!1130 = !DILocation(line: 186, column: 91, scope: !1129)
!1131 = !DILocation(line: 186, column: 86, scope: !1129)
!1132 = !DILocation(line: 186, column: 114, scope: !1129)
!1133 = !DILocation(line: 186, column: 108, scope: !1129)
!1134 = !DILocation(line: 186, column: 39, scope: !1129)
!1135 = !DILocation(line: 186, column: 43, scope: !1129)
!1136 = !DILocation(line: 186, column: 52, scope: !1129)
!1137 = !DILocation(line: 186, column: 73, scope: !1129)
!1138 = !DILocation(line: 186, column: 47, scope: !1129)
!1139 = !DILocation(line: 186, column: 25, scope: !1129)
!1140 = !DILocation(line: 186, column: 83, scope: !1129)
!1141 = !DILocation(line: 187, column: 21, scope: !1129)
!1142 = !DILocation(line: 182, column: 51, scope: !1113)
!1143 = !DILocation(line: 182, column: 17, scope: !1113)
!1144 = distinct !{!1144, !1106, !1145, !303}
!1145 = !DILocation(line: 188, column: 17, scope: !1107)
!1146 = !DILocation(line: 181, column: 46, scope: !1104)
!1147 = !DILocation(line: 181, column: 13, scope: !1104)
!1148 = distinct !{!1148, !1105, !1149, !303}
!1149 = !DILocation(line: 189, column: 13, scope: !1099)
!1150 = !DILocation(line: 191, column: 19, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 191, column: 17)
!1152 = !DILocation(line: 192, column: 26, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 191, column: 25)
!1154 = !DILocalVariable(name: "Mi", scope: !1059, file: !25, line: 164, type: !326)
!1155 = !DILocalVariable(name: "c", scope: !1156, file: !25, line: 193, type: !45)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !25, line: 193, column: 17)
!1157 = !DILocation(line: 0, scope: !1156)
!1158 = !DILocation(line: 193, column: 22, scope: !1156)
!1159 = !DILocation(line: 193, scope: !1156)
!1160 = !DILocation(line: 193, column: 35, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !25, line: 193, column: 17)
!1162 = !DILocation(line: 193, column: 17, scope: !1156)
!1163 = !DILocation(line: 194, column: 21, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !25, line: 194, column: 21)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !25, line: 193, column: 54)
!1166 = !DILocation(line: 194, scope: !1164)
!1167 = !DILocalVariable(name: "k", scope: !1164, file: !25, line: 194, type: !45)
!1168 = !DILocation(line: 0, scope: !1164)
!1169 = !DILocation(line: 194, column: 39, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !25, line: 194, column: 21)
!1171 = !DILocation(line: 196, column: 89, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1170, file: !25, line: 195, column: 21)
!1173 = !DILocation(line: 196, column: 86, scope: !1172)
!1174 = !DILocation(line: 196, column: 81, scope: !1172)
!1175 = !DILocation(line: 196, column: 103, scope: !1172)
!1176 = !DILocation(line: 196, column: 38, scope: !1172)
!1177 = !DILocation(line: 196, column: 42, scope: !1172)
!1178 = !DILocation(line: 196, column: 51, scope: !1172)
!1179 = !DILocation(line: 196, column: 68, scope: !1172)
!1180 = !DILocation(line: 196, column: 46, scope: !1172)
!1181 = !DILocation(line: 196, column: 25, scope: !1172)
!1182 = !DILocation(line: 196, column: 78, scope: !1172)
!1183 = !DILocation(line: 197, column: 42, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1172, file: !25, line: 197, column: 28)
!1185 = !DILocation(line: 198, column: 97, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !25, line: 197, column: 46)
!1187 = !DILocation(line: 198, column: 94, scope: !1186)
!1188 = !DILocation(line: 198, column: 89, scope: !1186)
!1189 = !DILocation(line: 198, column: 117, scope: !1186)
!1190 = !DILocation(line: 198, column: 111, scope: !1186)
!1191 = !DILocation(line: 198, column: 42, scope: !1186)
!1192 = !DILocation(line: 198, column: 46, scope: !1186)
!1193 = !DILocation(line: 198, column: 55, scope: !1186)
!1194 = !DILocation(line: 198, column: 76, scope: !1186)
!1195 = !DILocation(line: 198, column: 50, scope: !1186)
!1196 = !DILocation(line: 198, column: 29, scope: !1186)
!1197 = !DILocation(line: 198, column: 86, scope: !1186)
!1198 = !DILocation(line: 199, column: 25, scope: !1186)
!1199 = !DILocation(line: 194, column: 55, scope: !1170)
!1200 = !DILocation(line: 194, column: 21, scope: !1170)
!1201 = distinct !{!1201, !1163, !1202, !303}
!1202 = !DILocation(line: 200, column: 21, scope: !1164)
!1203 = !DILocation(line: 193, column: 50, scope: !1161)
!1204 = !DILocation(line: 193, column: 17, scope: !1161)
!1205 = distinct !{!1205, !1162, !1206, !303}
!1206 = !DILocation(line: 201, column: 17, scope: !1156)
!1207 = !DILocation(line: 204, column: 27, scope: !1096)
!1208 = !DILocation(line: 205, column: 30, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 205, column: 16)
!1210 = !DILocation(line: 178, column: 46, scope: !1094)
!1211 = !DILocation(line: 178, column: 9, scope: !1094)
!1212 = distinct !{!1212, !1085, !1213, !303}
!1213 = !DILocation(line: 209, column: 9, scope: !1086)
!1214 = !DILocation(line: 177, column: 42, scope: !1083)
!1215 = !DILocation(line: 177, column: 5, scope: !1083)
!1216 = distinct !{!1216, !1084, !1217, !303}
!1217 = !DILocation(line: 210, column: 5, scope: !1076)
!1218 = !DILocation(line: 212, scope: !1089)
!1219 = !DILocalVariable(name: "c", scope: !1089, file: !25, line: 212, type: !15)
!1220 = !DILocation(line: 0, scope: !1089)
!1221 = !DILocation(line: 212, column: 26, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1089, file: !25, line: 212, column: 5)
!1223 = !DILocation(line: 214, column: 35, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1222, file: !25, line: 213, column: 5)
!1225 = !DILocation(line: 214, column: 9, scope: !1224)
!1226 = !DILocation(line: 212, column: 91, scope: !1222)
!1227 = !DILocation(line: 212, column: 5, scope: !1222)
!1228 = distinct !{!1228, !1088, !1229, !303}
!1229 = !DILocation(line: 215, column: 5, scope: !1089)
!1230 = !DILocalVariable(name: "tab", scope: !1059, file: !25, line: 217, type: !1231)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1232)
!1232 = !{!1233}
!1233 = !DISubrange(count: 16)
!1234 = !DILocation(line: 217, column: 19, scope: !1059)
!1235 = !DILocalVariable(name: "i", scope: !1236, file: !25, line: 218, type: !15)
!1236 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 218, column: 5)
!1237 = !DILocation(line: 0, scope: !1236)
!1238 = !DILocation(line: 218, column: 10, scope: !1236)
!1239 = !DILocation(line: 218, scope: !1236)
!1240 = !DILocation(line: 218, column: 26, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !25, line: 218, column: 5)
!1242 = !DILocation(line: 218, column: 5, scope: !1236)
!1243 = !DILocation(line: 228, column: 5, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 228, column: 5)
!1245 = !DILocation(line: 220, column: 28, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !25, line: 219, column: 5)
!1247 = !DILocation(line: 220, column: 22, scope: !1246)
!1248 = !DILocation(line: 220, column: 14, scope: !1246)
!1249 = !DILocation(line: 220, column: 9, scope: !1246)
!1250 = !DILocation(line: 220, column: 20, scope: !1246)
!1251 = !DILocation(line: 221, column: 22, scope: !1246)
!1252 = !DILocation(line: 221, column: 14, scope: !1246)
!1253 = !DILocation(line: 221, column: 16, scope: !1246)
!1254 = !DILocation(line: 221, column: 9, scope: !1246)
!1255 = !DILocation(line: 221, column: 20, scope: !1246)
!1256 = !DILocation(line: 222, column: 28, scope: !1246)
!1257 = !DILocation(line: 222, column: 22, scope: !1246)
!1258 = !DILocation(line: 222, column: 14, scope: !1246)
!1259 = !DILocation(line: 222, column: 16, scope: !1246)
!1260 = !DILocation(line: 222, column: 9, scope: !1246)
!1261 = !DILocation(line: 222, column: 20, scope: !1246)
!1262 = !DILocation(line: 223, column: 28, scope: !1246)
!1263 = !DILocation(line: 223, column: 22, scope: !1246)
!1264 = !DILocation(line: 223, column: 14, scope: !1246)
!1265 = !DILocation(line: 223, column: 16, scope: !1246)
!1266 = !DILocation(line: 223, column: 9, scope: !1246)
!1267 = !DILocation(line: 223, column: 20, scope: !1246)
!1268 = !DILocation(line: 218, column: 41, scope: !1241)
!1269 = !DILocation(line: 218, column: 5, scope: !1241)
!1270 = distinct !{!1270, !1242, !1271, !303}
!1271 = !DILocation(line: 224, column: 5, scope: !1236)
!1272 = !DILocation(line: 228, scope: !1244)
!1273 = !DILocalVariable(name: "c", scope: !1244, file: !25, line: 228, type: !15)
!1274 = !DILocation(line: 0, scope: !1244)
!1275 = !DILocation(line: 228, column: 26, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1244, file: !25, line: 228, column: 5)
!1277 = !DILocation(line: 230, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !25, line: 230, column: 9)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !25, line: 229, column: 5)
!1280 = !DILocation(line: 250, column: 5, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 250, column: 5)
!1282 = !DILocation(line: 230, scope: !1278)
!1283 = !DILocalVariable(name: "r", scope: !1278, file: !25, line: 230, type: !45)
!1284 = !DILocation(line: 0, scope: !1278)
!1285 = !DILocation(line: 230, column: 36, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !25, line: 230, column: 9)
!1287 = !DILocation(line: 232, column: 28, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1286, file: !25, line: 231, column: 9)
!1289 = !DILocation(line: 232, column: 32, scope: !1288)
!1290 = !DILocation(line: 232, column: 41, scope: !1288)
!1291 = !DILocation(line: 232, column: 49, scope: !1288)
!1292 = !DILocation(line: 232, column: 45, scope: !1288)
!1293 = !DILocalVariable(name: "pos", scope: !1288, file: !25, line: 232, type: !15)
!1294 = !DILocation(line: 0, scope: !1288)
!1295 = !DILocation(line: 233, column: 28, scope: !1288)
!1296 = !DILocation(line: 233, column: 41, scope: !1288)
!1297 = !DILocalVariable(name: "t0", scope: !1288, file: !25, line: 233, type: !6)
!1298 = !DILocation(line: 234, column: 35, scope: !1288)
!1299 = !DILocation(line: 234, column: 41, scope: !1288)
!1300 = !DILocalVariable(name: "t1", scope: !1288, file: !25, line: 234, type: !6)
!1301 = !DILocation(line: 235, column: 35, scope: !1288)
!1302 = !DILocation(line: 235, column: 41, scope: !1288)
!1303 = !DILocalVariable(name: "t2", scope: !1288, file: !25, line: 235, type: !6)
!1304 = !DILocation(line: 236, column: 28, scope: !1288)
!1305 = !DILocation(line: 236, column: 35, scope: !1288)
!1306 = !DILocation(line: 236, column: 41, scope: !1288)
!1307 = !DILocalVariable(name: "t3", scope: !1288, file: !25, line: 236, type: !6)
!1308 = !DILocalVariable(name: "t", scope: !1309, file: !25, line: 237, type: !15)
!1309 = distinct !DILexicalBlock(scope: !1288, file: !25, line: 237, column: 13)
!1310 = !DILocation(line: 0, scope: !1309)
!1311 = !DILocation(line: 237, column: 18, scope: !1309)
!1312 = !DILocation(line: 237, scope: !1309)
!1313 = !DILocation(line: 237, column: 34, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !25, line: 237, column: 13)
!1315 = !DILocation(line: 237, column: 13, scope: !1309)
!1316 = !DILocation(line: 239, column: 89, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !25, line: 238, column: 13)
!1318 = !DILocation(line: 239, column: 84, scope: !1317)
!1319 = !DILocation(line: 239, column: 83, scope: !1317)
!1320 = !DILocation(line: 239, column: 105, scope: !1317)
!1321 = !DILocation(line: 239, column: 107, scope: !1317)
!1322 = !DILocation(line: 239, column: 100, scope: !1317)
!1323 = !DILocation(line: 239, column: 99, scope: !1317)
!1324 = !DILocation(line: 239, column: 95, scope: !1317)
!1325 = !DILocation(line: 239, column: 121, scope: !1317)
!1326 = !DILocation(line: 239, column: 123, scope: !1317)
!1327 = !DILocation(line: 239, column: 116, scope: !1317)
!1328 = !DILocation(line: 239, column: 115, scope: !1317)
!1329 = !DILocation(line: 239, column: 111, scope: !1317)
!1330 = !DILocation(line: 239, column: 137, scope: !1317)
!1331 = !DILocation(line: 239, column: 139, scope: !1317)
!1332 = !DILocation(line: 239, column: 132, scope: !1317)
!1333 = !DILocation(line: 239, column: 131, scope: !1317)
!1334 = !DILocation(line: 239, column: 127, scope: !1317)
!1335 = !DILocation(line: 239, column: 22, scope: !1317)
!1336 = !DILocation(line: 239, column: 24, scope: !1317)
!1337 = !DILocation(line: 239, column: 36, scope: !1317)
!1338 = !DILocation(line: 239, column: 40, scope: !1317)
!1339 = !DILocation(line: 239, column: 49, scope: !1317)
!1340 = !DILocation(line: 239, column: 58, scope: !1317)
!1341 = !DILocation(line: 239, column: 72, scope: !1317)
!1342 = !DILocation(line: 239, column: 53, scope: !1317)
!1343 = !DILocation(line: 239, column: 17, scope: !1317)
!1344 = !DILocation(line: 239, column: 78, scope: !1317)
!1345 = !DILocation(line: 237, column: 49, scope: !1314)
!1346 = !DILocation(line: 237, column: 13, scope: !1314)
!1347 = distinct !{!1347, !1315, !1348, !303}
!1348 = !DILocation(line: 240, column: 13, scope: !1309)
!1349 = !DILocation(line: 230, column: 82, scope: !1286)
!1350 = !DILocation(line: 230, column: 9, scope: !1286)
!1351 = distinct !{!1351, !1277, !1352, !303}
!1352 = !DILocation(line: 241, column: 9, scope: !1278)
!1353 = !DILocation(line: 228, column: 38, scope: !1276)
!1354 = !DILocation(line: 228, column: 5, scope: !1276)
!1355 = distinct !{!1355, !1243, !1356, !303}
!1356 = !DILocation(line: 242, column: 5, scope: !1244)
!1357 = !DILocation(line: 250, scope: !1281)
!1358 = !DILocalVariable(name: "r", scope: !1281, file: !25, line: 250, type: !45)
!1359 = !DILocation(line: 0, scope: !1281)
!1360 = !DILocation(line: 250, column: 23, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1281, file: !25, line: 250, column: 5)
!1362 = !DILocation(line: 252, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !25, line: 252, column: 9)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !25, line: 251, column: 5)
!1365 = !DILocation(line: 252, scope: !1363)
!1366 = !DILocalVariable(name: "c", scope: !1363, file: !25, line: 252, type: !45)
!1367 = !DILocation(line: 0, scope: !1363)
!1368 = !DILocation(line: 252, column: 27, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1363, file: !25, line: 252, column: 9)
!1370 = !DILocation(line: 254, column: 13, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !25, line: 254, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !25, line: 253, column: 9)
!1373 = !DILocation(line: 254, scope: !1371)
!1374 = !DILocalVariable(name: "i", scope: !1371, file: !25, line: 254, type: !45)
!1375 = !DILocation(line: 0, scope: !1371)
!1376 = !DILocation(line: 254, column: 35, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1371, file: !25, line: 254, column: 13)
!1378 = !DILocation(line: 256, column: 55, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1377, file: !25, line: 255, column: 13)
!1380 = !DILocation(line: 256, column: 59, scope: !1379)
!1381 = !DILocation(line: 256, column: 63, scope: !1379)
!1382 = !DILocation(line: 256, column: 44, scope: !1379)
!1383 = !DILocation(line: 256, column: 95, scope: !1379)
!1384 = !DILocation(line: 256, column: 92, scope: !1379)
!1385 = !DILocation(line: 256, column: 75, scope: !1379)
!1386 = !DILocation(line: 256, column: 99, scope: !1379)
!1387 = !DILocation(line: 256, column: 104, scope: !1379)
!1388 = !DILocation(line: 256, column: 17, scope: !1379)
!1389 = !DILocation(line: 254, column: 50, scope: !1377)
!1390 = !DILocation(line: 254, column: 13, scope: !1377)
!1391 = distinct !{!1391, !1370, !1392, !303}
!1392 = !DILocation(line: 257, column: 13, scope: !1371)
!1393 = !DILocation(line: 252, column: 50, scope: !1369)
!1394 = !DILocation(line: 252, column: 9, scope: !1369)
!1395 = distinct !{!1395, !1362, !1396, !303}
!1396 = !DILocation(line: 258, column: 9, scope: !1363)
!1397 = !DILocation(line: 250, column: 38, scope: !1361)
!1398 = !DILocation(line: 250, column: 5, scope: !1361)
!1399 = distinct !{!1399, !1280, !1400, !303}
!1400 = !DILocation(line: 259, column: 5, scope: !1281)
!1401 = !DILocation(line: 260, column: 1, scope: !1059)
!1402 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1403, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !49, !49, !18, !45, !45, !45}
!1405 = !DILocalVariable(name: "a", arg: 1, scope: !1402, file: !493, line: 79, type: !49)
!1406 = !DILocation(line: 0, scope: !1402)
!1407 = !DILocalVariable(name: "b", arg: 2, scope: !1402, file: !493, line: 79, type: !49)
!1408 = !DILocalVariable(name: "c", arg: 3, scope: !1402, file: !493, line: 80, type: !18)
!1409 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1402, file: !493, line: 80, type: !45)
!1410 = !DILocalVariable(name: "row_a", arg: 5, scope: !1402, file: !493, line: 80, type: !45)
!1411 = !DILocalVariable(name: "col_b", arg: 6, scope: !1402, file: !493, line: 80, type: !45)
!1412 = !DILocalVariable(name: "i", scope: !1413, file: !493, line: 81, type: !45)
!1413 = distinct !DILexicalBlock(scope: !1402, file: !493, line: 81, column: 5)
!1414 = !DILocation(line: 0, scope: !1413)
!1415 = !DILocation(line: 81, column: 10, scope: !1413)
!1416 = !DILocation(line: 81, scope: !1413)
!1417 = !DILocation(line: 81, column: 23, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !493, line: 81, column: 5)
!1419 = !DILocation(line: 81, column: 5, scope: !1413)
!1420 = !DILocation(line: 82, column: 9, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !493, line: 82, column: 9)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !493, line: 81, column: 53)
!1423 = !DILocation(line: 82, scope: !1421)
!1424 = !DILocalVariable(name: "j", scope: !1421, file: !493, line: 82, type: !45)
!1425 = !DILocation(line: 0, scope: !1421)
!1426 = !DILocation(line: 83, column: 18, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !493, line: 82, column: 46)
!1428 = distinct !DILexicalBlock(scope: !1421, file: !493, line: 82, column: 9)
!1429 = !DILocation(line: 83, column: 16, scope: !1427)
!1430 = !DILocation(line: 82, column: 41, scope: !1428)
!1431 = !DILocation(line: 82, column: 9, scope: !1428)
!1432 = distinct !{!1432, !1420, !1433, !303}
!1433 = !DILocation(line: 84, column: 9, scope: !1421)
!1434 = !DILocation(line: 81, column: 32, scope: !1418)
!1435 = !DILocation(line: 81, column: 39, scope: !1418)
!1436 = !DILocation(line: 81, column: 5, scope: !1418)
!1437 = distinct !{!1437, !1419, !1438, !303}
!1438 = !DILocation(line: 85, column: 5, scope: !1413)
!1439 = !DILocation(line: 86, column: 1, scope: !1402)
!1440 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1441, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !49, !49, !18, !45, !45}
!1443 = !DILocalVariable(name: "a", arg: 1, scope: !1440, file: !493, line: 88, type: !49)
!1444 = !DILocation(line: 0, scope: !1440)
!1445 = !DILocalVariable(name: "b", arg: 2, scope: !1440, file: !493, line: 88, type: !49)
!1446 = !DILocalVariable(name: "c", arg: 3, scope: !1440, file: !493, line: 89, type: !18)
!1447 = !DILocalVariable(name: "m", arg: 4, scope: !1440, file: !493, line: 89, type: !45)
!1448 = !DILocalVariable(name: "n", arg: 5, scope: !1440, file: !493, line: 89, type: !45)
!1449 = !DILocalVariable(name: "i", scope: !1450, file: !493, line: 90, type: !45)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !493, line: 90, column: 5)
!1451 = !DILocation(line: 0, scope: !1450)
!1452 = !DILocation(line: 90, column: 10, scope: !1450)
!1453 = !DILocation(line: 90, scope: !1450)
!1454 = !DILocation(line: 90, column: 23, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !493, line: 90, column: 5)
!1456 = !DILocation(line: 90, column: 5, scope: !1450)
!1457 = !DILocalVariable(name: "j", scope: !1458, file: !493, line: 91, type: !45)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !493, line: 91, column: 9)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !493, line: 90, column: 33)
!1460 = !DILocation(line: 0, scope: !1458)
!1461 = !DILocation(line: 92, column: 42, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !493, line: 91, column: 37)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !493, line: 91, column: 9)
!1464 = !DILocation(line: 92, column: 38, scope: !1462)
!1465 = !DILocation(line: 92, column: 60, scope: !1462)
!1466 = !DILocation(line: 92, column: 56, scope: !1462)
!1467 = !DILocation(line: 92, column: 32, scope: !1462)
!1468 = !DILocation(line: 92, column: 17, scope: !1462)
!1469 = !DILocation(line: 92, column: 30, scope: !1462)
!1470 = !DILocation(line: 90, column: 28, scope: !1455)
!1471 = !DILocation(line: 90, column: 5, scope: !1455)
!1472 = distinct !{!1472, !1456, !1473, !303}
!1473 = !DILocation(line: 94, column: 5, scope: !1450)
!1474 = !DILocation(line: 95, column: 1, scope: !1440)
!1475 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1476 = !DILocalVariable(name: "m", arg: 1, scope: !1475, file: !25, line: 32, type: !49)
!1477 = !DILocation(line: 0, scope: !1475)
!1478 = !DILocalVariable(name: "menc", arg: 2, scope: !1475, file: !25, line: 32, type: !18)
!1479 = !DILocalVariable(name: "mlen", arg: 3, scope: !1475, file: !25, line: 32, type: !45)
!1480 = !DILocalVariable(name: "i", scope: !1475, file: !25, line: 33, type: !45)
!1481 = !DILocation(line: 34, column: 10, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1475, file: !25, line: 34, column: 5)
!1483 = !DILocation(line: 34, scope: !1482)
!1484 = !DILocation(line: 34, column: 19, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !25, line: 34, column: 5)
!1486 = !DILocation(line: 34, column: 5, scope: !1482)
!1487 = !DILocation(line: 35, column: 20, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !25, line: 34, column: 44)
!1489 = !DILocation(line: 35, column: 31, scope: !1488)
!1490 = !DILocation(line: 35, column: 27, scope: !1488)
!1491 = !DILocation(line: 35, column: 36, scope: !1488)
!1492 = !DILocation(line: 35, column: 24, scope: !1488)
!1493 = !DILocation(line: 35, column: 9, scope: !1488)
!1494 = !DILocation(line: 35, column: 17, scope: !1488)
!1495 = !DILocation(line: 34, column: 31, scope: !1485)
!1496 = !DILocation(line: 34, column: 38, scope: !1485)
!1497 = !DILocation(line: 34, column: 5, scope: !1485)
!1498 = distinct !{!1498, !1486, !1499, !303}
!1499 = !DILocation(line: 36, column: 5, scope: !1482)
!1500 = !DILocation(line: 41, column: 1, scope: !1475)
!1501 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1502, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!14, !14, !14}
!1504 = !DILocalVariable(name: "a", arg: 1, scope: !1501, file: !493, line: 43, type: !14)
!1505 = !DILocation(line: 0, scope: !1501)
!1506 = !DILocalVariable(name: "b", arg: 2, scope: !1501, file: !493, line: 43, type: !14)
!1507 = !DILocation(line: 44, column: 14, scope: !1501)
!1508 = !DILocation(line: 44, column: 5, scope: !1501)
!1509 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1510, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!14, !49, !49, !45, !45}
!1512 = !DILocalVariable(name: "a", arg: 1, scope: !1509, file: !493, line: 70, type: !49)
!1513 = !DILocation(line: 0, scope: !1509)
!1514 = !DILocalVariable(name: "b", arg: 2, scope: !1509, file: !493, line: 71, type: !49)
!1515 = !DILocalVariable(name: "n", arg: 3, scope: !1509, file: !493, line: 71, type: !45)
!1516 = !DILocalVariable(name: "m", arg: 4, scope: !1509, file: !493, line: 71, type: !45)
!1517 = !DILocalVariable(name: "ret", scope: !1509, file: !493, line: 72, type: !14)
!1518 = !DILocalVariable(name: "i", scope: !1519, file: !493, line: 73, type: !45)
!1519 = distinct !DILexicalBlock(scope: !1509, file: !493, line: 73, column: 5)
!1520 = !DILocation(line: 0, scope: !1519)
!1521 = !DILocation(line: 73, column: 10, scope: !1519)
!1522 = !DILocation(line: 73, scope: !1519)
!1523 = !DILocation(line: 73, column: 23, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !493, line: 73, column: 5)
!1525 = !DILocation(line: 73, column: 5, scope: !1519)
!1526 = !DILocation(line: 74, column: 27, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !493, line: 73, column: 41)
!1528 = !DILocation(line: 74, column: 33, scope: !1527)
!1529 = !DILocation(line: 74, column: 21, scope: !1527)
!1530 = !DILocation(line: 74, column: 15, scope: !1527)
!1531 = !DILocation(line: 73, column: 28, scope: !1524)
!1532 = !DILocation(line: 73, column: 35, scope: !1524)
!1533 = !DILocation(line: 73, column: 5, scope: !1524)
!1534 = distinct !{!1534, !1525, !1535, !303}
!1535 = !DILocation(line: 75, column: 5, scope: !1519)
!1536 = !DILocation(line: 76, column: 5, scope: !1509)
!1537 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1502, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1538 = !DILocalVariable(name: "a", arg: 1, scope: !1537, file: !493, line: 9, type: !14)
!1539 = !DILocation(line: 0, scope: !1537)
!1540 = !DILocalVariable(name: "b", arg: 2, scope: !1537, file: !493, line: 9, type: !14)
!1541 = !DILocation(line: 14, column: 10, scope: !1537)
!1542 = !DILocation(line: 14, column: 7, scope: !1537)
!1543 = !DILocation(line: 17, column: 17, scope: !1537)
!1544 = !DILocalVariable(name: "p", scope: !1537, file: !493, line: 11, type: !14)
!1545 = !DILocation(line: 18, column: 13, scope: !1537)
!1546 = !DILocation(line: 18, column: 17, scope: !1537)
!1547 = !DILocation(line: 18, column: 7, scope: !1537)
!1548 = !DILocation(line: 19, column: 13, scope: !1537)
!1549 = !DILocation(line: 19, column: 17, scope: !1537)
!1550 = !DILocation(line: 19, column: 7, scope: !1537)
!1551 = !DILocation(line: 20, column: 13, scope: !1537)
!1552 = !DILocation(line: 20, column: 17, scope: !1537)
!1553 = !DILocation(line: 20, column: 7, scope: !1537)
!1554 = !DILocalVariable(name: "top_p", scope: !1537, file: !493, line: 23, type: !14)
!1555 = !DILocation(line: 24, column: 37, scope: !1537)
!1556 = !DILocation(line: 24, column: 52, scope: !1537)
!1557 = !DILocation(line: 24, column: 43, scope: !1537)
!1558 = !DILocation(line: 24, column: 59, scope: !1537)
!1559 = !DILocalVariable(name: "out", scope: !1537, file: !493, line: 24, type: !14)
!1560 = !DILocation(line: 25, column: 5, scope: !1537)
!1561 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1562 = !DILocation(line: 0, scope: !24)
!1563 = !DILocalVariable(name: "i", scope: !1564, file: !25, line: 117, type: !15)
!1564 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1565 = !DILocation(line: 0, scope: !1564)
!1566 = !DILocation(line: 117, column: 10, scope: !1564)
!1567 = !DILocation(line: 117, scope: !1564)
!1568 = !DILocation(line: 117, column: 26, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !25, line: 117, column: 5)
!1570 = !DILocation(line: 117, column: 5, scope: !1564)
!1571 = !DILocation(line: 124, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1573 = !DILocation(line: 119, column: 24, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !25, line: 118, column: 5)
!1575 = !DILocation(line: 119, column: 29, scope: !1574)
!1576 = !DILocation(line: 119, column: 41, scope: !1574)
!1577 = !DILocation(line: 119, column: 38, scope: !1574)
!1578 = !DILocation(line: 119, column: 36, scope: !1574)
!1579 = !DILocation(line: 119, column: 46, scope: !1574)
!1580 = !DILocalVariable(name: "t", scope: !1574, file: !25, line: 119, type: !6)
!1581 = !DILocation(line: 0, scope: !1574)
!1582 = !DILocation(line: 120, column: 21, scope: !1574)
!1583 = !DILocation(line: 120, column: 9, scope: !1574)
!1584 = !DILocation(line: 120, column: 16, scope: !1574)
!1585 = !DILocation(line: 121, column: 12, scope: !1574)
!1586 = !DILocation(line: 121, column: 9, scope: !1574)
!1587 = !DILocation(line: 121, column: 16, scope: !1574)
!1588 = !DILocation(line: 117, column: 33, scope: !1569)
!1589 = !DILocation(line: 117, column: 5, scope: !1569)
!1590 = distinct !{!1590, !1570, !1591, !303}
!1591 = !DILocation(line: 122, column: 5, scope: !1564)
!1592 = !DILocation(line: 124, scope: !1572)
!1593 = !DILocalVariable(name: "i", scope: !1572, file: !25, line: 124, type: !15)
!1594 = !DILocation(line: 0, scope: !1572)
!1595 = !DILocation(line: 124, column: 26, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1572, file: !25, line: 124, column: 5)
!1597 = !DILocation(line: 134, column: 5, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1599 = !DILocation(line: 126, column: 25, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !25, line: 125, column: 5)
!1601 = !DILocation(line: 126, column: 32, scope: !1600)
!1602 = !DILocation(line: 126, column: 43, scope: !1600)
!1603 = !DILocation(line: 126, column: 40, scope: !1600)
!1604 = !DILocation(line: 126, column: 38, scope: !1600)
!1605 = !DILocation(line: 126, column: 48, scope: !1600)
!1606 = !DILocalVariable(name: "t0", scope: !1600, file: !25, line: 126, type: !6)
!1607 = !DILocation(line: 0, scope: !1600)
!1608 = !DILocation(line: 127, column: 28, scope: !1600)
!1609 = !DILocation(line: 127, column: 25, scope: !1600)
!1610 = !DILocation(line: 127, column: 32, scope: !1600)
!1611 = !DILocation(line: 127, column: 43, scope: !1600)
!1612 = !DILocation(line: 127, column: 40, scope: !1600)
!1613 = !DILocation(line: 127, column: 38, scope: !1600)
!1614 = !DILocation(line: 127, column: 48, scope: !1600)
!1615 = !DILocalVariable(name: "t1", scope: !1600, file: !25, line: 127, type: !6)
!1616 = !DILocation(line: 128, column: 23, scope: !1600)
!1617 = !DILocation(line: 128, column: 9, scope: !1600)
!1618 = !DILocation(line: 128, column: 16, scope: !1600)
!1619 = !DILocation(line: 129, column: 23, scope: !1600)
!1620 = !DILocation(line: 129, column: 12, scope: !1600)
!1621 = !DILocation(line: 129, column: 9, scope: !1600)
!1622 = !DILocation(line: 129, column: 16, scope: !1600)
!1623 = !DILocation(line: 130, column: 12, scope: !1600)
!1624 = !DILocation(line: 130, column: 9, scope: !1600)
!1625 = !DILocation(line: 130, column: 16, scope: !1600)
!1626 = !DILocation(line: 131, column: 12, scope: !1600)
!1627 = !DILocation(line: 131, column: 9, scope: !1600)
!1628 = !DILocation(line: 131, column: 16, scope: !1600)
!1629 = !DILocation(line: 124, column: 33, scope: !1596)
!1630 = !DILocation(line: 124, column: 5, scope: !1596)
!1631 = distinct !{!1631, !1571, !1632, !303}
!1632 = !DILocation(line: 132, column: 5, scope: !1572)
!1633 = !DILocation(line: 134, scope: !1598)
!1634 = !DILocalVariable(name: "i", scope: !1598, file: !25, line: 134, type: !15)
!1635 = !DILocation(line: 0, scope: !1598)
!1636 = !DILocation(line: 134, column: 26, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1598, file: !25, line: 134, column: 5)
!1638 = !DILocation(line: 145, column: 5, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1640 = !DILocation(line: 136, column: 25, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !25, line: 135, column: 5)
!1642 = !DILocation(line: 136, column: 32, scope: !1641)
!1643 = !DILocation(line: 136, column: 44, scope: !1641)
!1644 = !DILocation(line: 136, column: 41, scope: !1641)
!1645 = !DILocation(line: 136, column: 39, scope: !1641)
!1646 = !DILocation(line: 136, column: 50, scope: !1641)
!1647 = !DILocalVariable(name: "t0", scope: !1641, file: !25, line: 136, type: !6)
!1648 = !DILocation(line: 0, scope: !1641)
!1649 = !DILocation(line: 137, column: 28, scope: !1641)
!1650 = !DILocation(line: 137, column: 25, scope: !1641)
!1651 = !DILocation(line: 137, column: 32, scope: !1641)
!1652 = !DILocation(line: 137, column: 44, scope: !1641)
!1653 = !DILocation(line: 137, column: 41, scope: !1641)
!1654 = !DILocation(line: 137, column: 39, scope: !1641)
!1655 = !DILocation(line: 137, column: 50, scope: !1641)
!1656 = !DILocalVariable(name: "t1", scope: !1641, file: !25, line: 137, type: !6)
!1657 = !DILocation(line: 139, column: 23, scope: !1641)
!1658 = !DILocation(line: 139, column: 9, scope: !1641)
!1659 = !DILocation(line: 139, column: 17, scope: !1641)
!1660 = !DILocation(line: 140, column: 23, scope: !1641)
!1661 = !DILocation(line: 140, column: 12, scope: !1641)
!1662 = !DILocation(line: 140, column: 9, scope: !1641)
!1663 = !DILocation(line: 140, column: 17, scope: !1641)
!1664 = !DILocation(line: 141, column: 12, scope: !1641)
!1665 = !DILocation(line: 141, column: 9, scope: !1641)
!1666 = !DILocation(line: 141, column: 17, scope: !1641)
!1667 = !DILocation(line: 142, column: 12, scope: !1641)
!1668 = !DILocation(line: 142, column: 9, scope: !1641)
!1669 = !DILocation(line: 142, column: 17, scope: !1641)
!1670 = !DILocation(line: 134, column: 32, scope: !1637)
!1671 = !DILocation(line: 134, column: 5, scope: !1637)
!1672 = distinct !{!1672, !1597, !1673, !303}
!1673 = !DILocation(line: 143, column: 5, scope: !1598)
!1674 = !DILocation(line: 145, scope: !1639)
!1675 = !DILocalVariable(name: "i", scope: !1639, file: !25, line: 145, type: !15)
!1676 = !DILocation(line: 0, scope: !1639)
!1677 = !DILocation(line: 145, column: 26, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1639, file: !25, line: 145, column: 5)
!1679 = !DILocation(line: 147, column: 24, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !25, line: 146, column: 5)
!1681 = !DILocation(line: 147, column: 28, scope: !1680)
!1682 = !DILocation(line: 147, column: 39, scope: !1680)
!1683 = !DILocation(line: 147, column: 36, scope: !1680)
!1684 = !DILocation(line: 147, column: 44, scope: !1680)
!1685 = !DILocalVariable(name: "t", scope: !1680, file: !25, line: 147, type: !6)
!1686 = !DILocation(line: 0, scope: !1680)
!1687 = !DILocation(line: 148, column: 21, scope: !1680)
!1688 = !DILocation(line: 148, column: 9, scope: !1680)
!1689 = !DILocation(line: 148, column: 16, scope: !1680)
!1690 = !DILocation(line: 149, column: 12, scope: !1680)
!1691 = !DILocation(line: 149, column: 9, scope: !1680)
!1692 = !DILocation(line: 149, column: 16, scope: !1680)
!1693 = !DILocation(line: 145, column: 32, scope: !1678)
!1694 = !DILocation(line: 145, column: 5, scope: !1678)
!1695 = distinct !{!1695, !1638, !1696, !303}
!1696 = !DILocation(line: 150, column: 5, scope: !1639)
!1697 = !DILocation(line: 151, column: 1, scope: !24)
!1698 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1699 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1698, file: !323, line: 61, type: !239)
!1700 = !DILocation(line: 0, scope: !1698)
!1701 = !DILocalVariable(name: "mat", arg: 2, scope: !1698, file: !323, line: 61, type: !49)
!1702 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1698, file: !323, line: 61, type: !326)
!1703 = !DILocalVariable(name: "acc", arg: 4, scope: !1698, file: !323, line: 61, type: !5)
!1704 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1698, file: !323, line: 62, type: !239)
!1705 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1698, file: !323, line: 62, type: !239)
!1706 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1698, file: !323, line: 62, type: !239)
!1707 = !DILocalVariable(name: "r", scope: !1708, file: !323, line: 64, type: !45)
!1708 = distinct !DILexicalBlock(scope: !1698, file: !323, line: 64, column: 5)
!1709 = !DILocation(line: 0, scope: !1708)
!1710 = !DILocation(line: 64, column: 10, scope: !1708)
!1711 = !DILocation(line: 64, scope: !1708)
!1712 = !DILocation(line: 64, column: 23, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !323, line: 64, column: 5)
!1714 = !DILocation(line: 64, column: 5, scope: !1708)
!1715 = !DILocation(line: 65, column: 9, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !323, line: 65, column: 9)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !323, line: 64, column: 40)
!1718 = !DILocation(line: 65, scope: !1716)
!1719 = !DILocalVariable(name: "c", scope: !1716, file: !323, line: 65, type: !45)
!1720 = !DILocation(line: 0, scope: !1716)
!1721 = !DILocation(line: 65, column: 27, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1716, file: !323, line: 65, column: 9)
!1723 = !DILocation(line: 66, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !323, line: 66, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !323, line: 65, column: 44)
!1726 = !DILocation(line: 66, scope: !1724)
!1727 = !DILocalVariable(name: "k", scope: !1724, file: !323, line: 66, type: !45)
!1728 = !DILocation(line: 0, scope: !1724)
!1729 = !DILocation(line: 66, column: 31, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1724, file: !323, line: 66, column: 13)
!1731 = !DILocation(line: 67, column: 70, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1730, file: !323, line: 66, column: 54)
!1733 = !DILocation(line: 67, column: 84, scope: !1732)
!1734 = !DILocation(line: 67, column: 51, scope: !1732)
!1735 = !DILocation(line: 67, column: 96, scope: !1732)
!1736 = !DILocation(line: 67, column: 90, scope: !1732)
!1737 = !DILocation(line: 67, column: 136, scope: !1732)
!1738 = !DILocation(line: 67, column: 150, scope: !1732)
!1739 = !DILocation(line: 67, column: 117, scope: !1732)
!1740 = !DILocation(line: 67, column: 17, scope: !1732)
!1741 = !DILocation(line: 66, column: 48, scope: !1730)
!1742 = !DILocation(line: 66, column: 13, scope: !1730)
!1743 = distinct !{!1743, !1723, !1744, !303}
!1744 = !DILocation(line: 68, column: 13, scope: !1724)
!1745 = !DILocation(line: 65, column: 40, scope: !1722)
!1746 = !DILocation(line: 65, column: 9, scope: !1722)
!1747 = distinct !{!1747, !1715, !1748, !303}
!1748 = !DILocation(line: 69, column: 9, scope: !1716)
!1749 = !DILocation(line: 64, column: 36, scope: !1713)
!1750 = !DILocation(line: 64, column: 5, scope: !1713)
!1751 = distinct !{!1751, !1714, !1752, !303}
!1752 = !DILocation(line: 70, column: 5, scope: !1708)
!1753 = !DILocation(line: 71, column: 1, scope: !1698)
!1754 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1755 = !DILocalVariable(name: "p", arg: 1, scope: !1754, file: !323, line: 82, type: !174)
!1756 = !DILocation(line: 0, scope: !1754)
!1757 = !DILocalVariable(name: "P1", arg: 2, scope: !1754, file: !323, line: 82, type: !326)
!1758 = !DILocalVariable(name: "V", arg: 3, scope: !1754, file: !323, line: 82, type: !49)
!1759 = !DILocalVariable(name: "acc", arg: 4, scope: !1754, file: !323, line: 82, type: !5)
!1760 = !DILocation(line: 86, column: 5, scope: !1754)
!1761 = !DILocation(line: 87, column: 1, scope: !1754)
!1762 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1763 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1762, file: !323, line: 32, type: !239)
!1764 = !DILocation(line: 0, scope: !1762)
!1765 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1762, file: !323, line: 32, type: !326)
!1766 = !DILocalVariable(name: "mat", arg: 3, scope: !1762, file: !323, line: 32, type: !49)
!1767 = !DILocalVariable(name: "acc", arg: 4, scope: !1762, file: !323, line: 32, type: !5)
!1768 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1762, file: !323, line: 33, type: !239)
!1769 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1762, file: !323, line: 33, type: !239)
!1770 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1762, file: !323, line: 33, type: !239)
!1771 = !DILocalVariable(name: "triangular", arg: 8, scope: !1762, file: !323, line: 33, type: !239)
!1772 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1762, file: !323, line: 34, type: !45)
!1773 = !DILocalVariable(name: "r", scope: !1774, file: !323, line: 35, type: !45)
!1774 = distinct !DILexicalBlock(scope: !1762, file: !323, line: 35, column: 5)
!1775 = !DILocation(line: 0, scope: !1774)
!1776 = !DILocation(line: 35, column: 10, scope: !1774)
!1777 = !DILocation(line: 34, column: 9, scope: !1762)
!1778 = !DILocation(line: 35, scope: !1774)
!1779 = !DILocation(line: 35, column: 23, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1774, file: !323, line: 35, column: 5)
!1781 = !DILocation(line: 35, column: 5, scope: !1774)
!1782 = !DILocation(line: 36, column: 9, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !323, line: 36, column: 9)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !323, line: 35, column: 43)
!1785 = !DILocation(line: 36, scope: !1783)
!1786 = !DILocalVariable(name: "c", scope: !1783, file: !323, line: 36, type: !45)
!1787 = !DILocation(line: 0, scope: !1783)
!1788 = !DILocation(line: 36, column: 40, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1783, file: !323, line: 36, column: 9)
!1790 = !DILocation(line: 37, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !323, line: 37, column: 13)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !323, line: 36, column: 60)
!1793 = !DILocation(line: 37, scope: !1791)
!1794 = !DILocalVariable(name: "k", scope: !1791, file: !323, line: 37, type: !45)
!1795 = !DILocation(line: 0, scope: !1791)
!1796 = !DILocation(line: 37, column: 31, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1791, file: !323, line: 37, column: 13)
!1798 = !DILocation(line: 38, column: 51, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1797, file: !323, line: 37, column: 51)
!1800 = !DILocation(line: 38, column: 94, scope: !1799)
!1801 = !DILocation(line: 38, column: 88, scope: !1799)
!1802 = !DILocation(line: 38, column: 132, scope: !1799)
!1803 = !DILocation(line: 38, column: 118, scope: !1799)
!1804 = !DILocation(line: 38, column: 17, scope: !1799)
!1805 = !DILocation(line: 37, column: 45, scope: !1797)
!1806 = !DILocation(line: 37, column: 13, scope: !1797)
!1807 = distinct !{!1807, !1790, !1808, !303}
!1808 = !DILocation(line: 39, column: 13, scope: !1791)
!1809 = !DILocation(line: 40, column: 33, scope: !1792)
!1810 = !DILocation(line: 36, column: 56, scope: !1789)
!1811 = !DILocation(line: 36, column: 9, scope: !1789)
!1812 = distinct !{!1812, !1782, !1813, !303}
!1813 = !DILocation(line: 41, column: 9, scope: !1783)
!1814 = !DILocation(line: 35, column: 39, scope: !1780)
!1815 = !DILocation(line: 35, column: 5, scope: !1780)
!1816 = distinct !{!1816, !1781, !1817, !303}
!1817 = !DILocation(line: 42, column: 5, scope: !1774)
!1818 = !DILocation(line: 43, column: 1, scope: !1762)
!1819 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !698, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1820 = !DILocalVariable(name: "p", arg: 1, scope: !1819, file: !25, line: 501, type: !174)
!1821 = !DILocation(line: 0, scope: !1819)
!1822 = !DILocalVariable(name: "sm", arg: 2, scope: !1819, file: !25, line: 501, type: !18)
!1823 = !DILocalVariable(name: "smlen", arg: 3, scope: !1819, file: !25, line: 502, type: !700)
!1824 = !DILocalVariable(name: "m", arg: 4, scope: !1819, file: !25, line: 502, type: !49)
!1825 = !DILocalVariable(name: "mlen", arg: 5, scope: !1819, file: !25, line: 503, type: !15)
!1826 = !DILocalVariable(name: "csk", arg: 6, scope: !1819, file: !25, line: 503, type: !49)
!1827 = !DILocalVariable(name: "ret", scope: !1819, file: !25, line: 504, type: !45)
!1828 = !DILocalVariable(name: "param_sig_bytes", scope: !1819, file: !25, line: 505, type: !239)
!1829 = !DILocation(line: 507, column: 16, scope: !1819)
!1830 = !DILocation(line: 507, column: 5, scope: !1819)
!1831 = !DILocation(line: 508, column: 50, scope: !1819)
!1832 = !DILocalVariable(name: "siglen", scope: !1819, file: !25, line: 506, type: !15)
!1833 = !DILocation(line: 508, column: 11, scope: !1819)
!1834 = !DILocation(line: 509, column: 13, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1819, file: !25, line: 509, column: 9)
!1836 = !DILocation(line: 509, column: 24, scope: !1835)
!1837 = !DILocation(line: 510, column: 23, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !25, line: 509, column: 62)
!1839 = !DILocation(line: 510, column: 30, scope: !1838)
!1840 = !DILocation(line: 510, column: 9, scope: !1838)
!1841 = !DILocation(line: 511, column: 9, scope: !1838)
!1842 = !DILocation(line: 514, column: 14, scope: !1819)
!1843 = !DILocation(line: 514, column: 21, scope: !1819)
!1844 = !DILocation(line: 514, column: 12, scope: !1819)
!1845 = !DILocation(line: 514, column: 5, scope: !1819)
!1846 = !DILabel(scope: !1819, name: "err", file: !25, line: 515)
!1847 = !DILocation(line: 515, column: 1, scope: !1819)
!1848 = !DILocation(line: 516, column: 5, scope: !1819)
!1849 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_open", scope: !25, file: !25, line: 519, type: !698, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1850 = !DILocalVariable(name: "p", arg: 1, scope: !1849, file: !25, line: 519, type: !174)
!1851 = !DILocation(line: 0, scope: !1849)
!1852 = !DILocalVariable(name: "m", arg: 2, scope: !1849, file: !25, line: 519, type: !18)
!1853 = !DILocalVariable(name: "mlen", arg: 3, scope: !1849, file: !25, line: 520, type: !700)
!1854 = !DILocalVariable(name: "sm", arg: 4, scope: !1849, file: !25, line: 520, type: !49)
!1855 = !DILocalVariable(name: "smlen", arg: 5, scope: !1849, file: !25, line: 521, type: !15)
!1856 = !DILocalVariable(name: "pk", arg: 6, scope: !1849, file: !25, line: 521, type: !49)
!1857 = !DILocalVariable(name: "param_sig_bytes", scope: !1849, file: !25, line: 522, type: !239)
!1858 = !DILocation(line: 523, column: 15, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1849, file: !25, line: 523, column: 9)
!1860 = !DILocation(line: 526, column: 36, scope: !1849)
!1861 = !DILocation(line: 526, column: 61, scope: !1849)
!1862 = !DILocation(line: 526, column: 18, scope: !1849)
!1863 = !DILocalVariable(name: "result", scope: !1849, file: !25, line: 526, type: !45)
!1864 = !DILocation(line: 529, column: 16, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1849, file: !25, line: 529, column: 9)
!1866 = !DILocation(line: 530, column: 23, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !25, line: 529, column: 28)
!1868 = !DILocation(line: 530, column: 15, scope: !1867)
!1869 = !DILocation(line: 531, column: 23, scope: !1867)
!1870 = !DILocation(line: 531, column: 9, scope: !1867)
!1871 = !DILocation(line: 532, column: 5, scope: !1867)
!1872 = !DILocation(line: 535, column: 1, scope: !1849)
!1873 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1874, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!45, !174, !49, !15, !49, !49}
!1876 = !DILocalVariable(name: "p", arg: 1, scope: !1873, file: !25, line: 616, type: !174)
!1877 = !DILocation(line: 0, scope: !1873)
!1878 = !DILocalVariable(name: "m", arg: 2, scope: !1873, file: !25, line: 616, type: !49)
!1879 = !DILocalVariable(name: "mlen", arg: 3, scope: !1873, file: !25, line: 617, type: !15)
!1880 = !DILocalVariable(name: "sig", arg: 4, scope: !1873, file: !25, line: 617, type: !49)
!1881 = !DILocalVariable(name: "cpk", arg: 5, scope: !1873, file: !25, line: 618, type: !49)
!1882 = !DILocalVariable(name: "tEnc", scope: !1873, file: !25, line: 619, type: !138)
!1883 = !DILocation(line: 619, column: 19, scope: !1873)
!1884 = !DILocalVariable(name: "t", scope: !1873, file: !25, line: 620, type: !712)
!1885 = !DILocation(line: 620, column: 19, scope: !1873)
!1886 = !DILocalVariable(name: "y", scope: !1873, file: !25, line: 621, type: !1887)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !1888)
!1888 = !{!1889}
!1889 = !DISubrange(count: 128)
!1890 = !DILocation(line: 621, column: 19, scope: !1873)
!1891 = !DILocalVariable(name: "s", scope: !1873, file: !25, line: 622, type: !739)
!1892 = !DILocation(line: 622, column: 19, scope: !1873)
!1893 = !DILocalVariable(name: "pk", scope: !1873, file: !25, line: 623, type: !123)
!1894 = !DILocation(line: 623, column: 14, scope: !1873)
!1895 = !DILocalVariable(name: "tmp", scope: !1873, file: !25, line: 624, type: !1896)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 56)
!1899 = !DILocation(line: 624, column: 19, scope: !1873)
!1900 = !DILocalVariable(name: "param_m", scope: !1873, file: !25, line: 626, type: !239)
!1901 = !DILocalVariable(name: "param_n", scope: !1873, file: !25, line: 627, type: !239)
!1902 = !DILocalVariable(name: "param_k", scope: !1873, file: !25, line: 628, type: !239)
!1903 = !DILocalVariable(name: "param_m_bytes", scope: !1873, file: !25, line: 629, type: !239)
!1904 = !DILocalVariable(name: "param_sig_bytes", scope: !1873, file: !25, line: 630, type: !239)
!1905 = !DILocalVariable(name: "param_digest_bytes", scope: !1873, file: !25, line: 631, type: !239)
!1906 = !DILocalVariable(name: "param_salt_bytes", scope: !1873, file: !25, line: 632, type: !239)
!1907 = !DILocation(line: 634, column: 15, scope: !1873)
!1908 = !DILocalVariable(name: "ret", scope: !1873, file: !25, line: 634, type: !45)
!1909 = !DILocalVariable(name: "P1", scope: !1873, file: !25, line: 639, type: !5)
!1910 = !DILocation(line: 640, column: 23, scope: !1873)
!1911 = !DILocalVariable(name: "P2", scope: !1873, file: !25, line: 640, type: !5)
!1912 = !DILocation(line: 641, column: 23, scope: !1873)
!1913 = !DILocalVariable(name: "P3", scope: !1873, file: !25, line: 641, type: !5)
!1914 = !DILocation(line: 656, column: 5, scope: !1873)
!1915 = !DILocation(line: 659, column: 16, scope: !1873)
!1916 = !DILocation(line: 659, column: 60, scope: !1873)
!1917 = !DILocation(line: 659, column: 5, scope: !1873)
!1918 = !DILocation(line: 661, column: 5, scope: !1873)
!1919 = !DILocation(line: 662, column: 5, scope: !1873)
!1920 = !DILocation(line: 665, column: 5, scope: !1873)
!1921 = !DILocation(line: 667, column: 5, scope: !1873)
!1922 = !DILocation(line: 669, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1873, file: !25, line: 669, column: 9)
!1924 = !DILocation(line: 669, column: 31, scope: !1923)
!1925 = !DILocation(line: 673, column: 1, scope: !1873)
!1926 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !601, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1927 = !DILocalVariable(name: "p", arg: 1, scope: !1926, file: !25, line: 607, type: !174)
!1928 = !DILocation(line: 0, scope: !1926)
!1929 = !DILocalVariable(name: "cpk", arg: 2, scope: !1926, file: !25, line: 607, type: !49)
!1930 = !DILocalVariable(name: "pk", arg: 3, scope: !1926, file: !25, line: 608, type: !5)
!1931 = !DILocation(line: 609, column: 5, scope: !1926)
!1932 = !DILocation(line: 611, column: 23, scope: !1926)
!1933 = !DILocation(line: 611, column: 72, scope: !1926)
!1934 = !DILocation(line: 611, column: 5, scope: !1926)
!1935 = !DILocation(line: 613, column: 5, scope: !1926)
!1936 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1937, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !174, !49, !326, !326, !326, !18}
!1939 = !DILocalVariable(name: "p", arg: 1, scope: !1936, file: !25, line: 288, type: !174)
!1940 = !DILocation(line: 0, scope: !1936)
!1941 = !DILocalVariable(name: "s", arg: 2, scope: !1936, file: !25, line: 288, type: !49)
!1942 = !DILocalVariable(name: "P1", arg: 3, scope: !1936, file: !25, line: 288, type: !326)
!1943 = !DILocalVariable(name: "P2", arg: 4, scope: !1936, file: !25, line: 288, type: !326)
!1944 = !DILocalVariable(name: "P3", arg: 5, scope: !1936, file: !25, line: 288, type: !326)
!1945 = !DILocalVariable(name: "eval", arg: 6, scope: !1936, file: !25, line: 288, type: !18)
!1946 = !DILocalVariable(name: "SPS", scope: !1936, file: !25, line: 289, type: !1947)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, elements: !713)
!1948 = !DILocation(line: 289, column: 14, scope: !1936)
!1949 = !DILocation(line: 291, column: 5, scope: !1936)
!1950 = !DILocalVariable(name: "zero", scope: !1936, file: !25, line: 292, type: !712)
!1951 = !DILocation(line: 292, column: 19, scope: !1936)
!1952 = !DILocation(line: 293, column: 5, scope: !1936)
!1953 = !DILocation(line: 294, column: 1, scope: !1936)
!1954 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !1955, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !174, !326, !326, !326, !49, !5}
!1957 = !DILocalVariable(name: "p", arg: 1, scope: !1954, file: !323, line: 277, type: !174)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocalVariable(name: "P1", arg: 2, scope: !1954, file: !323, line: 277, type: !326)
!1960 = !DILocalVariable(name: "P2", arg: 3, scope: !1954, file: !323, line: 277, type: !326)
!1961 = !DILocalVariable(name: "P3", arg: 4, scope: !1954, file: !323, line: 277, type: !326)
!1962 = !DILocalVariable(name: "s", arg: 5, scope: !1954, file: !323, line: 277, type: !49)
!1963 = !DILocalVariable(name: "SPS", arg: 6, scope: !1954, file: !323, line: 278, type: !5)
!1964 = !DILocalVariable(name: "PS", scope: !1954, file: !323, line: 286, type: !1965)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !1966)
!1966 = !{!1967}
!1967 = !DISubrange(count: 1296)
!1968 = !DILocation(line: 286, column: 14, scope: !1954)
!1969 = !DILocation(line: 287, column: 5, scope: !1954)
!1970 = !DILocation(line: 290, column: 5, scope: !1954)
!1971 = !DILocation(line: 292, column: 1, scope: !1954)
!1972 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !1973, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!1975 = !DILocalVariable(name: "P1", arg: 1, scope: !1972, file: !323, line: 151, type: !326)
!1976 = !DILocation(line: 0, scope: !1972)
!1977 = !DILocalVariable(name: "P2", arg: 2, scope: !1972, file: !323, line: 151, type: !326)
!1978 = !DILocalVariable(name: "P3", arg: 3, scope: !1972, file: !323, line: 151, type: !326)
!1979 = !DILocalVariable(name: "S", arg: 4, scope: !1972, file: !323, line: 151, type: !49)
!1980 = !DILocalVariable(name: "m", arg: 5, scope: !1972, file: !323, line: 152, type: !239)
!1981 = !DILocalVariable(name: "v", arg: 6, scope: !1972, file: !323, line: 152, type: !239)
!1982 = !DILocalVariable(name: "o", arg: 7, scope: !1972, file: !323, line: 152, type: !239)
!1983 = !DILocalVariable(name: "k", arg: 8, scope: !1972, file: !323, line: 152, type: !239)
!1984 = !DILocalVariable(name: "PS", arg: 9, scope: !1972, file: !323, line: 152, type: !5)
!1985 = !DILocalVariable(name: "n", scope: !1972, file: !323, line: 154, type: !239)
!1986 = !DILocalVariable(name: "m_vec_limbs", scope: !1972, file: !323, line: 155, type: !239)
!1987 = !DILocalVariable(name: "accumulator", scope: !1972, file: !323, line: 157, type: !1988)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !1989)
!1989 = !{!1990}
!1990 = !DISubrange(count: 20736)
!1991 = !DILocation(line: 157, column: 14, scope: !1972)
!1992 = !DILocalVariable(name: "P1_used", scope: !1972, file: !323, line: 158, type: !45)
!1993 = !DILocalVariable(name: "row", scope: !1994, file: !323, line: 159, type: !45)
!1994 = distinct !DILexicalBlock(scope: !1972, file: !323, line: 159, column: 5)
!1995 = !DILocation(line: 0, scope: !1994)
!1996 = !DILocation(line: 159, column: 10, scope: !1994)
!1997 = !DILocation(line: 158, column: 9, scope: !1972)
!1998 = !DILocation(line: 159, scope: !1994)
!1999 = !DILocation(line: 159, column: 27, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1994, file: !323, line: 159, column: 5)
!2001 = !DILocation(line: 159, column: 5, scope: !1994)
!2002 = !DILocation(line: 160, column: 9, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !323, line: 160, column: 9)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !323, line: 159, column: 39)
!2005 = !DILocation(line: 175, column: 5, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1972, file: !323, line: 175, column: 5)
!2007 = !DILocation(line: 160, scope: !2003)
!2008 = !DILocalVariable(name: "j", scope: !2003, file: !323, line: 160, type: !45)
!2009 = !DILocation(line: 0, scope: !2003)
!2010 = !DILocation(line: 160, column: 29, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2003, file: !323, line: 160, column: 9)
!2012 = !DILocation(line: 167, column: 9, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2004, file: !323, line: 167, column: 9)
!2014 = !DILocation(line: 161, column: 13, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !323, line: 161, column: 13)
!2016 = distinct !DILexicalBlock(scope: !2011, file: !323, line: 160, column: 39)
!2017 = !DILocation(line: 161, scope: !2015)
!2018 = !DILocalVariable(name: "col", scope: !2015, file: !323, line: 161, type: !45)
!2019 = !DILocation(line: 0, scope: !2015)
!2020 = !DILocation(line: 161, column: 35, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2015, file: !323, line: 161, column: 13)
!2022 = !DILocation(line: 162, column: 43, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2021, file: !323, line: 161, column: 47)
!2024 = !DILocation(line: 162, column: 102, scope: !2023)
!2025 = !DILocation(line: 162, column: 115, scope: !2023)
!2026 = !DILocation(line: 162, column: 109, scope: !2023)
!2027 = !DILocation(line: 162, column: 107, scope: !2023)
!2028 = !DILocation(line: 162, column: 82, scope: !2023)
!2029 = !DILocation(line: 162, column: 17, scope: !2023)
!2030 = !DILocation(line: 161, column: 43, scope: !2021)
!2031 = !DILocation(line: 161, column: 13, scope: !2021)
!2032 = distinct !{!2032, !2014, !2033, !303}
!2033 = !DILocation(line: 163, column: 13, scope: !2015)
!2034 = !DILocation(line: 164, column: 21, scope: !2016)
!2035 = !DILocation(line: 160, column: 35, scope: !2011)
!2036 = !DILocation(line: 160, column: 9, scope: !2011)
!2037 = distinct !{!2037, !2002, !2038, !303}
!2038 = !DILocation(line: 165, column: 9, scope: !2003)
!2039 = !DILocation(line: 167, scope: !2013)
!2040 = !DILocalVariable(name: "j", scope: !2013, file: !323, line: 167, type: !45)
!2041 = !DILocation(line: 0, scope: !2013)
!2042 = !DILocation(line: 167, column: 27, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2013, file: !323, line: 167, column: 9)
!2044 = !DILocation(line: 168, column: 13, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !323, line: 168, column: 13)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !323, line: 167, column: 37)
!2047 = !DILocation(line: 168, scope: !2045)
!2048 = !DILocalVariable(name: "col", scope: !2045, file: !323, line: 168, type: !45)
!2049 = !DILocation(line: 0, scope: !2045)
!2050 = !DILocation(line: 168, column: 35, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2045, file: !323, line: 168, column: 13)
!2052 = !DILocation(line: 169, column: 50, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2051, file: !323, line: 168, column: 47)
!2054 = !DILocation(line: 169, column: 54, scope: !2053)
!2055 = !DILocation(line: 169, column: 43, scope: !2053)
!2056 = !DILocation(line: 169, column: 104, scope: !2053)
!2057 = !DILocation(line: 169, column: 118, scope: !2053)
!2058 = !DILocation(line: 169, column: 111, scope: !2053)
!2059 = !DILocation(line: 169, column: 109, scope: !2053)
!2060 = !DILocation(line: 169, column: 84, scope: !2053)
!2061 = !DILocation(line: 169, column: 17, scope: !2053)
!2062 = !DILocation(line: 168, column: 43, scope: !2051)
!2063 = !DILocation(line: 168, column: 13, scope: !2051)
!2064 = distinct !{!2064, !2044, !2065, !303}
!2065 = !DILocation(line: 170, column: 13, scope: !2045)
!2066 = !DILocation(line: 167, column: 33, scope: !2043)
!2067 = !DILocation(line: 167, column: 9, scope: !2043)
!2068 = distinct !{!2068, !2012, !2069, !303}
!2069 = !DILocation(line: 171, column: 9, scope: !2013)
!2070 = !DILocation(line: 159, column: 35, scope: !2000)
!2071 = !DILocation(line: 159, column: 5, scope: !2000)
!2072 = distinct !{!2072, !2001, !2073, !303}
!2073 = !DILocation(line: 172, column: 5, scope: !1994)
!2074 = !DILocation(line: 174, column: 9, scope: !1972)
!2075 = !DILocation(line: 175, scope: !2006)
!2076 = !DILocalVariable(name: "row", scope: !2006, file: !323, line: 175, type: !45)
!2077 = !DILocation(line: 0, scope: !2006)
!2078 = !DILocalVariable(name: "P3_used", scope: !1972, file: !323, line: 174, type: !45)
!2079 = !DILocation(line: 175, column: 27, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2006, file: !323, line: 175, column: 5)
!2081 = !DILocation(line: 176, column: 9, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !323, line: 176, column: 9)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !323, line: 175, column: 39)
!2084 = !DILocation(line: 186, column: 5, scope: !1972)
!2085 = !DILocation(line: 176, scope: !2082)
!2086 = !DILocalVariable(name: "j", scope: !2082, file: !323, line: 176, type: !45)
!2087 = !DILocation(line: 0, scope: !2082)
!2088 = !DILocation(line: 176, column: 29, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2082, file: !323, line: 176, column: 9)
!2090 = !DILocation(line: 177, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !323, line: 177, column: 13)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !323, line: 176, column: 39)
!2093 = !DILocation(line: 177, scope: !2091)
!2094 = !DILocalVariable(name: "col", scope: !2091, file: !323, line: 177, type: !45)
!2095 = !DILocation(line: 0, scope: !2091)
!2096 = !DILocation(line: 177, column: 35, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !323, line: 177, column: 13)
!2098 = !DILocation(line: 178, column: 43, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2097, file: !323, line: 177, column: 47)
!2100 = !DILocation(line: 178, column: 100, scope: !2099)
!2101 = !DILocation(line: 178, column: 113, scope: !2099)
!2102 = !DILocation(line: 178, column: 107, scope: !2099)
!2103 = !DILocation(line: 178, column: 105, scope: !2099)
!2104 = !DILocation(line: 178, column: 80, scope: !2099)
!2105 = !DILocation(line: 178, column: 17, scope: !2099)
!2106 = !DILocation(line: 177, column: 43, scope: !2097)
!2107 = !DILocation(line: 177, column: 13, scope: !2097)
!2108 = distinct !{!2108, !2090, !2109, !303}
!2109 = !DILocation(line: 179, column: 13, scope: !2091)
!2110 = !DILocation(line: 180, column: 21, scope: !2092)
!2111 = !DILocation(line: 176, column: 35, scope: !2089)
!2112 = !DILocation(line: 176, column: 9, scope: !2089)
!2113 = distinct !{!2113, !2081, !2114, !303}
!2114 = !DILocation(line: 181, column: 9, scope: !2082)
!2115 = !DILocation(line: 175, column: 35, scope: !2080)
!2116 = !DILocation(line: 175, column: 5, scope: !2080)
!2117 = distinct !{!2117, !2005, !2118, !303}
!2118 = !DILocation(line: 182, column: 5, scope: !2006)
!2119 = !DILocalVariable(name: "i", scope: !1972, file: !323, line: 185, type: !45)
!2120 = !DILocation(line: 186, column: 14, scope: !1972)
!2121 = !DILocation(line: 187, column: 54, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1972, file: !323, line: 186, column: 23)
!2123 = !DILocation(line: 187, column: 81, scope: !2122)
!2124 = !DILocation(line: 187, column: 9, scope: !2122)
!2125 = !DILocation(line: 188, column: 10, scope: !2122)
!2126 = distinct !{!2126, !2084, !2127, !303}
!2127 = !DILocation(line: 189, column: 5, scope: !1972)
!2128 = !DILocation(line: 191, column: 1, scope: !1972)
!2129 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2130, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !326, !49, !45, !45, !45, !5}
!2132 = !DILocalVariable(name: "PS", arg: 1, scope: !2129, file: !323, line: 195, type: !326)
!2133 = !DILocation(line: 0, scope: !2129)
!2134 = !DILocalVariable(name: "S", arg: 2, scope: !2129, file: !323, line: 195, type: !49)
!2135 = !DILocalVariable(name: "m", arg: 3, scope: !2129, file: !323, line: 195, type: !45)
!2136 = !DILocalVariable(name: "k", arg: 4, scope: !2129, file: !323, line: 195, type: !45)
!2137 = !DILocalVariable(name: "n", arg: 5, scope: !2129, file: !323, line: 195, type: !45)
!2138 = !DILocalVariable(name: "SPS", arg: 6, scope: !2129, file: !323, line: 195, type: !5)
!2139 = !DILocalVariable(name: "accumulator", scope: !2129, file: !323, line: 196, type: !905)
!2140 = !DILocation(line: 196, column: 14, scope: !2129)
!2141 = !DILocalVariable(name: "m_vec_limbs", scope: !2129, file: !323, line: 197, type: !239)
!2142 = !DILocalVariable(name: "row", scope: !2143, file: !323, line: 198, type: !45)
!2143 = distinct !DILexicalBlock(scope: !2129, file: !323, line: 198, column: 5)
!2144 = !DILocation(line: 0, scope: !2143)
!2145 = !DILocation(line: 198, column: 10, scope: !2143)
!2146 = !DILocation(line: 198, scope: !2143)
!2147 = !DILocation(line: 198, column: 27, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !323, line: 198, column: 5)
!2149 = !DILocation(line: 198, column: 5, scope: !2143)
!2150 = !DILocation(line: 199, column: 9, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !323, line: 199, column: 9)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !323, line: 198, column: 39)
!2153 = !DILocation(line: 208, column: 5, scope: !2129)
!2154 = !DILocation(line: 199, scope: !2151)
!2155 = !DILocalVariable(name: "j", scope: !2151, file: !323, line: 199, type: !45)
!2156 = !DILocation(line: 0, scope: !2151)
!2157 = !DILocation(line: 199, column: 27, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2151, file: !323, line: 199, column: 9)
!2159 = !DILocation(line: 200, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !323, line: 200, column: 13)
!2161 = distinct !DILexicalBlock(scope: !2158, file: !323, line: 199, column: 37)
!2162 = !DILocation(line: 200, scope: !2160)
!2163 = !DILocalVariable(name: "col", scope: !2160, file: !323, line: 200, type: !45)
!2164 = !DILocation(line: 0, scope: !2160)
!2165 = !DILocation(line: 200, column: 35, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !323, line: 200, column: 13)
!2167 = !DILocation(line: 201, column: 63, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2166, file: !323, line: 200, column: 50)
!2169 = !DILocation(line: 201, column: 47, scope: !2168)
!2170 = !DILocation(line: 201, column: 110, scope: !2168)
!2171 = !DILocation(line: 201, column: 123, scope: !2168)
!2172 = !DILocation(line: 201, column: 117, scope: !2168)
!2173 = !DILocation(line: 201, column: 115, scope: !2168)
!2174 = !DILocation(line: 201, column: 90, scope: !2168)
!2175 = !DILocation(line: 201, column: 21, scope: !2168)
!2176 = !DILocation(line: 200, column: 44, scope: !2166)
!2177 = !DILocation(line: 200, column: 13, scope: !2166)
!2178 = distinct !{!2178, !2159, !2179, !303}
!2179 = !DILocation(line: 202, column: 13, scope: !2160)
!2180 = !DILocation(line: 199, column: 33, scope: !2158)
!2181 = !DILocation(line: 199, column: 9, scope: !2158)
!2182 = distinct !{!2182, !2150, !2183, !303}
!2183 = !DILocation(line: 203, column: 9, scope: !2151)
!2184 = !DILocation(line: 198, column: 35, scope: !2148)
!2185 = !DILocation(line: 198, column: 5, scope: !2148)
!2186 = distinct !{!2186, !2149, !2187, !303}
!2187 = !DILocation(line: 204, column: 5, scope: !2143)
!2188 = !DILocalVariable(name: "i", scope: !2129, file: !323, line: 207, type: !45)
!2189 = !DILocation(line: 208, column: 14, scope: !2129)
!2190 = !DILocation(line: 209, column: 54, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2129, file: !323, line: 208, column: 21)
!2192 = !DILocation(line: 209, column: 82, scope: !2191)
!2193 = !DILocation(line: 209, column: 9, scope: !2191)
!2194 = !DILocation(line: 210, column: 10, scope: !2191)
!2195 = distinct !{!2195, !2153, !2196, !303}
!2196 = !DILocation(line: 211, column: 5, scope: !2129)
!2197 = !DILocation(line: 212, column: 1, scope: !2129)
!2198 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2199, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !45, !326, !5}
!2201 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2198, file: !437, line: 22, type: !45)
!2202 = !DILocation(line: 0, scope: !2198)
!2203 = !DILocalVariable(name: "in", arg: 2, scope: !2198, file: !437, line: 22, type: !326)
!2204 = !DILocalVariable(name: "acc", arg: 3, scope: !2198, file: !437, line: 22, type: !5)
!2205 = !DILocalVariable(name: "i", scope: !2206, file: !437, line: 24, type: !15)
!2206 = distinct !DILexicalBlock(scope: !2198, file: !437, line: 24, column: 5)
!2207 = !DILocation(line: 0, scope: !2206)
!2208 = !DILocation(line: 24, column: 10, scope: !2206)
!2209 = !DILocation(line: 24, scope: !2206)
!2210 = !DILocation(line: 24, column: 26, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2206, file: !437, line: 24, column: 5)
!2212 = !DILocation(line: 24, column: 5, scope: !2206)
!2213 = !DILocation(line: 26, column: 19, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2211, file: !437, line: 25, column: 5)
!2215 = !DILocation(line: 26, column: 9, scope: !2214)
!2216 = !DILocation(line: 26, column: 16, scope: !2214)
!2217 = !DILocation(line: 24, column: 46, scope: !2211)
!2218 = !DILocation(line: 24, column: 5, scope: !2211)
!2219 = distinct !{!2219, !2212, !2220, !303}
!2220 = !DILocation(line: 27, column: 5, scope: !2206)
!2221 = !DILocation(line: 28, column: 1, scope: !2198)
!2222 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2223, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !45, !5, !5}
!2225 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2222, file: !437, line: 66, type: !45)
!2226 = !DILocation(line: 0, scope: !2222)
!2227 = !DILocalVariable(name: "bins", arg: 2, scope: !2222, file: !437, line: 66, type: !5)
!2228 = !DILocalVariable(name: "out", arg: 3, scope: !2222, file: !437, line: 66, type: !5)
!2229 = !DILocation(line: 67, column: 44, scope: !2222)
!2230 = !DILocation(line: 67, column: 73, scope: !2222)
!2231 = !DILocation(line: 67, column: 5, scope: !2222)
!2232 = !DILocation(line: 68, column: 40, scope: !2222)
!2233 = !DILocation(line: 68, column: 69, scope: !2222)
!2234 = !DILocation(line: 68, column: 5, scope: !2222)
!2235 = !DILocation(line: 69, column: 44, scope: !2222)
!2236 = !DILocation(line: 69, column: 74, scope: !2222)
!2237 = !DILocation(line: 69, column: 5, scope: !2222)
!2238 = !DILocation(line: 70, column: 40, scope: !2222)
!2239 = !DILocation(line: 70, column: 69, scope: !2222)
!2240 = !DILocation(line: 70, column: 5, scope: !2222)
!2241 = !DILocation(line: 71, column: 44, scope: !2222)
!2242 = !DILocation(line: 71, column: 73, scope: !2222)
!2243 = !DILocation(line: 71, column: 5, scope: !2222)
!2244 = !DILocation(line: 72, column: 40, scope: !2222)
!2245 = !DILocation(line: 72, column: 69, scope: !2222)
!2246 = !DILocation(line: 72, column: 5, scope: !2222)
!2247 = !DILocation(line: 73, column: 44, scope: !2222)
!2248 = !DILocation(line: 73, column: 74, scope: !2222)
!2249 = !DILocation(line: 73, column: 5, scope: !2222)
!2250 = !DILocation(line: 74, column: 40, scope: !2222)
!2251 = !DILocation(line: 74, column: 69, scope: !2222)
!2252 = !DILocation(line: 74, column: 5, scope: !2222)
!2253 = !DILocation(line: 75, column: 44, scope: !2222)
!2254 = !DILocation(line: 75, column: 74, scope: !2222)
!2255 = !DILocation(line: 75, column: 5, scope: !2222)
!2256 = !DILocation(line: 76, column: 40, scope: !2222)
!2257 = !DILocation(line: 76, column: 69, scope: !2222)
!2258 = !DILocation(line: 76, column: 5, scope: !2222)
!2259 = !DILocation(line: 77, column: 44, scope: !2222)
!2260 = !DILocation(line: 77, column: 74, scope: !2222)
!2261 = !DILocation(line: 77, column: 5, scope: !2222)
!2262 = !DILocation(line: 78, column: 40, scope: !2222)
!2263 = !DILocation(line: 78, column: 69, scope: !2222)
!2264 = !DILocation(line: 78, column: 5, scope: !2222)
!2265 = !DILocation(line: 79, column: 44, scope: !2222)
!2266 = !DILocation(line: 79, column: 74, scope: !2222)
!2267 = !DILocation(line: 79, column: 5, scope: !2222)
!2268 = !DILocation(line: 80, column: 40, scope: !2222)
!2269 = !DILocation(line: 80, column: 69, scope: !2222)
!2270 = !DILocation(line: 80, column: 5, scope: !2222)
!2271 = !DILocation(line: 81, column: 35, scope: !2222)
!2272 = !DILocation(line: 81, column: 5, scope: !2222)
!2273 = !DILocation(line: 82, column: 1, scope: !2222)
!2274 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2199, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2275 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2274, file: !437, line: 56, type: !45)
!2276 = !DILocation(line: 0, scope: !2274)
!2277 = !DILocalVariable(name: "in", arg: 2, scope: !2274, file: !437, line: 56, type: !326)
!2278 = !DILocalVariable(name: "acc", arg: 3, scope: !2274, file: !437, line: 56, type: !5)
!2279 = !DILocalVariable(name: "mask_lsb", scope: !2274, file: !437, line: 58, type: !6)
!2280 = !DILocalVariable(name: "i", scope: !2281, file: !437, line: 59, type: !45)
!2281 = distinct !DILexicalBlock(scope: !2274, file: !437, line: 59, column: 5)
!2282 = !DILocation(line: 0, scope: !2281)
!2283 = !DILocation(line: 59, column: 9, scope: !2281)
!2284 = !DILocation(line: 59, scope: !2281)
!2285 = !DILocation(line: 59, column: 20, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !437, line: 59, column: 5)
!2287 = !DILocation(line: 59, column: 5, scope: !2281)
!2288 = !DILocation(line: 60, column: 22, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !437, line: 59, column: 43)
!2290 = !DILocation(line: 60, column: 28, scope: !2289)
!2291 = !DILocalVariable(name: "t", scope: !2289, file: !437, line: 60, type: !6)
!2292 = !DILocation(line: 0, scope: !2289)
!2293 = !DILocation(line: 61, column: 32, scope: !2289)
!2294 = !DILocation(line: 61, column: 43, scope: !2289)
!2295 = !DILocation(line: 61, column: 38, scope: !2289)
!2296 = !DILocation(line: 61, column: 9, scope: !2289)
!2297 = !DILocation(line: 61, column: 16, scope: !2289)
!2298 = !DILocation(line: 59, column: 40, scope: !2286)
!2299 = !DILocation(line: 59, column: 5, scope: !2286)
!2300 = distinct !{!2300, !2287, !2301, !303}
!2301 = !DILocation(line: 62, column: 5, scope: !2281)
!2302 = !DILocation(line: 63, column: 1, scope: !2274)
!2303 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2199, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2304 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2303, file: !437, line: 46, type: !45)
!2305 = !DILocation(line: 0, scope: !2303)
!2306 = !DILocalVariable(name: "in", arg: 2, scope: !2303, file: !437, line: 46, type: !326)
!2307 = !DILocalVariable(name: "acc", arg: 3, scope: !2303, file: !437, line: 46, type: !5)
!2308 = !DILocalVariable(name: "mask_msb", scope: !2303, file: !437, line: 48, type: !6)
!2309 = !DILocalVariable(name: "i", scope: !2310, file: !437, line: 49, type: !45)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !437, line: 49, column: 5)
!2311 = !DILocation(line: 0, scope: !2310)
!2312 = !DILocation(line: 49, column: 9, scope: !2310)
!2313 = !DILocation(line: 49, scope: !2310)
!2314 = !DILocation(line: 49, column: 20, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !437, line: 49, column: 5)
!2316 = !DILocation(line: 49, column: 5, scope: !2310)
!2317 = !DILocation(line: 50, column: 22, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !437, line: 49, column: 43)
!2319 = !DILocalVariable(name: "t", scope: !2318, file: !437, line: 50, type: !6)
!2320 = !DILocation(line: 0, scope: !2318)
!2321 = !DILocation(line: 51, column: 32, scope: !2318)
!2322 = !DILocation(line: 51, column: 44, scope: !2318)
!2323 = !DILocation(line: 51, column: 50, scope: !2318)
!2324 = !DILocation(line: 51, column: 38, scope: !2318)
!2325 = !DILocation(line: 51, column: 9, scope: !2318)
!2326 = !DILocation(line: 51, column: 16, scope: !2318)
!2327 = !DILocation(line: 49, column: 40, scope: !2315)
!2328 = !DILocation(line: 49, column: 5, scope: !2315)
!2329 = distinct !{!2329, !2316, !2330, !303}
!2330 = !DILocation(line: 52, column: 5, scope: !2310)
!2331 = !DILocation(line: 53, column: 1, scope: !2303)
!2332 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2199, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2333 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2332, file: !437, line: 13, type: !45)
!2334 = !DILocation(line: 0, scope: !2332)
!2335 = !DILocalVariable(name: "in", arg: 2, scope: !2332, file: !437, line: 13, type: !326)
!2336 = !DILocalVariable(name: "out", arg: 3, scope: !2332, file: !437, line: 13, type: !5)
!2337 = !DILocalVariable(name: "i", scope: !2338, file: !437, line: 15, type: !15)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !437, line: 15, column: 5)
!2339 = !DILocation(line: 0, scope: !2338)
!2340 = !DILocation(line: 15, column: 10, scope: !2338)
!2341 = !DILocation(line: 15, scope: !2338)
!2342 = !DILocation(line: 15, column: 26, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !437, line: 15, column: 5)
!2344 = !DILocation(line: 15, column: 5, scope: !2338)
!2345 = !DILocation(line: 17, column: 18, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !437, line: 16, column: 5)
!2347 = !DILocation(line: 17, column: 9, scope: !2346)
!2348 = !DILocation(line: 17, column: 16, scope: !2346)
!2349 = !DILocation(line: 15, column: 46, scope: !2343)
!2350 = !DILocation(line: 15, column: 5, scope: !2343)
!2351 = distinct !{!2351, !2344, !2352, !303}
!2352 = !DILocation(line: 18, column: 5, scope: !2338)
!2353 = !DILocation(line: 19, column: 1, scope: !2332)
!2354 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_m_upper", scope: !58, file: !58, line: 14, type: !2355, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2357, !326, !5, !45}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2359)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2360)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2360, file: !36, line: 266, baseType: !45, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2360, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2360, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2360, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2360, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2360, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2360, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2360, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2360, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2360, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2360, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2360, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2360, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2360, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2360, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2360, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2360, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2360, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2360, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2360, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2360, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2360, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2360, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2385 = !DILocalVariable(name: "p", arg: 1, scope: !2354, file: !58, line: 14, type: !2357)
!2386 = !DILocation(line: 0, scope: !2354)
!2387 = !DILocalVariable(name: "in", arg: 2, scope: !2354, file: !58, line: 14, type: !326)
!2388 = !DILocalVariable(name: "out", arg: 3, scope: !2354, file: !58, line: 14, type: !5)
!2389 = !DILocalVariable(name: "size", arg: 4, scope: !2354, file: !58, line: 14, type: !45)
!2390 = !DILocalVariable(name: "m_vec_limbs", scope: !2354, file: !58, line: 19, type: !239)
!2391 = !DILocalVariable(name: "m_vecs_stored", scope: !2354, file: !58, line: 20, type: !45)
!2392 = !DILocalVariable(name: "r", scope: !2393, file: !58, line: 21, type: !45)
!2393 = distinct !DILexicalBlock(scope: !2354, file: !58, line: 21, column: 5)
!2394 = !DILocation(line: 0, scope: !2393)
!2395 = !DILocation(line: 21, column: 10, scope: !2393)
!2396 = !DILocation(line: 20, column: 9, scope: !2354)
!2397 = !DILocation(line: 21, scope: !2393)
!2398 = !DILocation(line: 21, column: 23, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !58, line: 21, column: 5)
!2400 = !DILocation(line: 21, column: 5, scope: !2393)
!2401 = !DILocation(line: 22, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !58, line: 22, column: 9)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !58, line: 21, column: 36)
!2404 = !DILocation(line: 22, scope: !2402)
!2405 = !DILocalVariable(name: "c", scope: !2402, file: !58, line: 22, type: !45)
!2406 = !DILocation(line: 0, scope: !2402)
!2407 = !DILocation(line: 22, column: 27, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !58, line: 22, column: 9)
!2409 = !DILocation(line: 23, column: 59, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2408, file: !58, line: 22, column: 40)
!2411 = !DILocation(line: 23, column: 66, scope: !2410)
!2412 = !DILocation(line: 23, column: 40, scope: !2410)
!2413 = !DILocation(line: 23, column: 76, scope: !2410)
!2414 = !DILocation(line: 23, column: 13, scope: !2410)
!2415 = !DILocation(line: 24, column: 19, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2410, file: !58, line: 24, column: 17)
!2417 = !DILocation(line: 25, column: 62, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2416, file: !58, line: 24, column: 25)
!2419 = !DILocation(line: 25, column: 69, scope: !2418)
!2420 = !DILocation(line: 25, column: 43, scope: !2418)
!2421 = !DILocation(line: 25, column: 79, scope: !2418)
!2422 = !DILocation(line: 25, column: 17, scope: !2418)
!2423 = !DILocation(line: 26, column: 13, scope: !2418)
!2424 = !DILocation(line: 27, column: 27, scope: !2410)
!2425 = !DILocation(line: 22, column: 36, scope: !2408)
!2426 = !DILocation(line: 22, column: 9, scope: !2408)
!2427 = distinct !{!2427, !2401, !2428, !303}
!2428 = !DILocation(line: 28, column: 9, scope: !2402)
!2429 = !DILocation(line: 21, column: 32, scope: !2399)
!2430 = !DILocation(line: 21, column: 5, scope: !2399)
!2431 = distinct !{!2431, !2400, !2432, !303}
!2432 = !DILocation(line: 29, column: 5, scope: !2393)
!2433 = !DILocation(line: 30, column: 1, scope: !2354)
!2434 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2199, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2435 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2434, file: !437, line: 13, type: !45)
!2436 = !DILocation(line: 0, scope: !2434)
!2437 = !DILocalVariable(name: "in", arg: 2, scope: !2434, file: !437, line: 13, type: !326)
!2438 = !DILocalVariable(name: "out", arg: 3, scope: !2434, file: !437, line: 13, type: !5)
!2439 = !DILocalVariable(name: "i", scope: !2440, file: !437, line: 15, type: !15)
!2440 = distinct !DILexicalBlock(scope: !2434, file: !437, line: 15, column: 5)
!2441 = !DILocation(line: 0, scope: !2440)
!2442 = !DILocation(line: 15, column: 10, scope: !2440)
!2443 = !DILocation(line: 15, scope: !2440)
!2444 = !DILocation(line: 15, column: 26, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !437, line: 15, column: 5)
!2446 = !DILocation(line: 15, column: 5, scope: !2440)
!2447 = !DILocation(line: 17, column: 18, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !437, line: 16, column: 5)
!2449 = !DILocation(line: 17, column: 9, scope: !2448)
!2450 = !DILocation(line: 17, column: 16, scope: !2448)
!2451 = !DILocation(line: 15, column: 46, scope: !2445)
!2452 = !DILocation(line: 15, column: 5, scope: !2445)
!2453 = distinct !{!2453, !2446, !2454, !303}
!2454 = !DILocation(line: 18, column: 5, scope: !2440)
!2455 = !DILocation(line: 19, column: 1, scope: !2434)
!2456 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2199, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2457 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2456, file: !437, line: 22, type: !45)
!2458 = !DILocation(line: 0, scope: !2456)
!2459 = !DILocalVariable(name: "in", arg: 2, scope: !2456, file: !437, line: 22, type: !326)
!2460 = !DILocalVariable(name: "acc", arg: 3, scope: !2456, file: !437, line: 22, type: !5)
!2461 = !DILocalVariable(name: "i", scope: !2462, file: !437, line: 24, type: !15)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !437, line: 24, column: 5)
!2463 = !DILocation(line: 0, scope: !2462)
!2464 = !DILocation(line: 24, column: 10, scope: !2462)
!2465 = !DILocation(line: 24, scope: !2462)
!2466 = !DILocation(line: 24, column: 26, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2462, file: !437, line: 24, column: 5)
!2468 = !DILocation(line: 24, column: 5, scope: !2462)
!2469 = !DILocation(line: 26, column: 19, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !437, line: 25, column: 5)
!2471 = !DILocation(line: 26, column: 9, scope: !2470)
!2472 = !DILocation(line: 26, column: 16, scope: !2470)
!2473 = !DILocation(line: 24, column: 46, scope: !2467)
!2474 = !DILocation(line: 24, column: 5, scope: !2467)
!2475 = distinct !{!2475, !2468, !2476, !303}
!2476 = !DILocation(line: 27, column: 5, scope: !2462)
!2477 = !DILocation(line: 28, column: 1, scope: !2456)
!2478 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2479, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!45, !2357, !18, !49, !49, !18, !45, !45, !45, !45}
!2481 = !DILocalVariable(name: "p", arg: 1, scope: !2478, file: !58, line: 40, type: !2357)
!2482 = !DILocation(line: 0, scope: !2478)
!2483 = !DILocalVariable(name: "A", arg: 2, scope: !2478, file: !58, line: 40, type: !18)
!2484 = !DILocalVariable(name: "y", arg: 3, scope: !2478, file: !58, line: 41, type: !49)
!2485 = !DILocalVariable(name: "r", arg: 4, scope: !2478, file: !58, line: 41, type: !49)
!2486 = !DILocalVariable(name: "x", arg: 5, scope: !2478, file: !58, line: 42, type: !18)
!2487 = !DILocalVariable(name: "k", arg: 6, scope: !2478, file: !58, line: 42, type: !45)
!2488 = !DILocalVariable(name: "o", arg: 7, scope: !2478, file: !58, line: 42, type: !45)
!2489 = !DILocalVariable(name: "m", arg: 8, scope: !2478, file: !58, line: 42, type: !45)
!2490 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2478, file: !58, line: 42, type: !45)
!2491 = !DILocalVariable(name: "i", scope: !2492, file: !58, line: 51, type: !45)
!2492 = distinct !DILexicalBlock(scope: !2478, file: !58, line: 51, column: 5)
!2493 = !DILocation(line: 0, scope: !2492)
!2494 = !DILocation(line: 51, column: 10, scope: !2492)
!2495 = !DILocation(line: 51, scope: !2492)
!2496 = !DILocation(line: 51, column: 23, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !58, line: 51, column: 5)
!2498 = !DILocation(line: 51, column: 5, scope: !2492)
!2499 = !DILocation(line: 57, column: 5, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2478, file: !58, line: 57, column: 5)
!2501 = !DILocation(line: 52, column: 16, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !58, line: 51, column: 37)
!2503 = !DILocation(line: 52, column: 9, scope: !2502)
!2504 = !DILocation(line: 52, column: 14, scope: !2502)
!2505 = !DILocation(line: 51, column: 33, scope: !2497)
!2506 = !DILocation(line: 51, column: 5, scope: !2497)
!2507 = distinct !{!2507, !2498, !2508, !303}
!2508 = !DILocation(line: 53, column: 5, scope: !2492)
!2509 = !DILocation(line: 57, scope: !2500)
!2510 = !DILocalVariable(name: "i", scope: !2500, file: !58, line: 57, type: !45)
!2511 = !DILocation(line: 0, scope: !2500)
!2512 = !DILocation(line: 57, column: 23, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2500, file: !58, line: 57, column: 5)
!2514 = !DILocation(line: 58, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2513, file: !58, line: 57, column: 33)
!2516 = !DILocation(line: 58, column: 26, scope: !2515)
!2517 = !DILocation(line: 58, column: 30, scope: !2515)
!2518 = !DILocation(line: 58, column: 21, scope: !2515)
!2519 = !DILocation(line: 58, column: 9, scope: !2515)
!2520 = !DILocation(line: 58, column: 36, scope: !2515)
!2521 = !DILocation(line: 57, column: 29, scope: !2513)
!2522 = !DILocation(line: 57, column: 5, scope: !2513)
!2523 = distinct !{!2523, !2499, !2524, !303}
!2524 = !DILocation(line: 59, column: 5, scope: !2500)
!2525 = !DILocation(line: 60, column: 25, scope: !2478)
!2526 = !DILocation(line: 60, column: 29, scope: !2478)
!2527 = !DILocation(line: 60, column: 5, scope: !2478)
!2528 = !DILocalVariable(name: "i", scope: !2529, file: !58, line: 63, type: !45)
!2529 = distinct !DILexicalBlock(scope: !2478, file: !58, line: 63, column: 5)
!2530 = !DILocation(line: 0, scope: !2529)
!2531 = !DILocation(line: 63, column: 10, scope: !2529)
!2532 = !DILocation(line: 63, scope: !2529)
!2533 = !DILocation(line: 63, column: 23, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !58, line: 63, column: 5)
!2535 = !DILocation(line: 63, column: 5, scope: !2529)
!2536 = !DILocation(line: 64, column: 44, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !58, line: 63, column: 33)
!2538 = !DILocation(line: 64, column: 50, scope: !2537)
!2539 = !DILocation(line: 64, column: 38, scope: !2537)
!2540 = !DILocation(line: 64, column: 13, scope: !2537)
!2541 = !DILocation(line: 64, column: 26, scope: !2537)
!2542 = !DILocation(line: 64, column: 30, scope: !2537)
!2543 = !DILocation(line: 64, column: 21, scope: !2537)
!2544 = !DILocation(line: 64, column: 9, scope: !2537)
!2545 = !DILocation(line: 64, column: 36, scope: !2537)
!2546 = !DILocation(line: 63, column: 29, scope: !2534)
!2547 = !DILocation(line: 63, column: 5, scope: !2534)
!2548 = distinct !{!2548, !2535, !2549, !303}
!2549 = !DILocation(line: 65, column: 5, scope: !2529)
!2550 = !DILocation(line: 67, column: 16, scope: !2478)
!2551 = !DILocation(line: 67, column: 20, scope: !2478)
!2552 = !DILocation(line: 67, column: 5, scope: !2478)
!2553 = !DILocalVariable(name: "full_rank", scope: !2478, file: !58, line: 70, type: !14)
!2554 = !DILocalVariable(name: "i", scope: !2555, file: !58, line: 71, type: !45)
!2555 = distinct !DILexicalBlock(scope: !2478, file: !58, line: 71, column: 5)
!2556 = !DILocation(line: 0, scope: !2555)
!2557 = !DILocation(line: 71, column: 10, scope: !2555)
!2558 = !DILocation(line: 71, scope: !2555)
!2559 = !DILocation(line: 71, column: 23, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !58, line: 71, column: 5)
!2561 = !DILocation(line: 71, column: 5, scope: !2555)
!2562 = !DILocation(line: 72, column: 27, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !58, line: 71, column: 42)
!2564 = !DILocation(line: 72, column: 32, scope: !2563)
!2565 = !DILocation(line: 72, column: 22, scope: !2563)
!2566 = !DILocation(line: 72, column: 19, scope: !2563)
!2567 = !DILocation(line: 71, column: 38, scope: !2560)
!2568 = !DILocation(line: 71, column: 5, scope: !2560)
!2569 = distinct !{!2569, !2561, !2570, !303}
!2570 = !DILocation(line: 73, column: 5, scope: !2555)
!2571 = !DILocation(line: 80, column: 19, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2478, file: !58, line: 80, column: 9)
!2573 = !DILocation(line: 88, column: 5, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2478, file: !58, line: 88, column: 5)
!2575 = distinct !{!2575, !2573, !2576, !303}
!2576 = !DILocation(line: 122, column: 5, scope: !2574)
!2577 = !DILocation(line: 88, scope: !2574)
!2578 = !DILocalVariable(name: "row", scope: !2574, file: !58, line: 88, type: !45)
!2579 = !DILocation(line: 0, scope: !2574)
!2580 = !DILocation(line: 88, column: 31, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2574, file: !58, line: 88, column: 5)
!2582 = !DILocalVariable(name: "finished", scope: !2478, file: !58, line: 46, type: !14)
!2583 = !DILocation(line: 90, column: 27, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !58, line: 88, column: 44)
!2585 = !DILocalVariable(name: "col_upper_bound", scope: !2478, file: !58, line: 47, type: !45)
!2586 = !DILocalVariable(name: "col", scope: !2587, file: !58, line: 93, type: !45)
!2587 = distinct !DILexicalBlock(scope: !2584, file: !58, line: 93, column: 9)
!2588 = !DILocation(line: 0, scope: !2587)
!2589 = !DILocation(line: 93, column: 14, scope: !2587)
!2590 = !DILocation(line: 0, scope: !2584)
!2591 = !DILocation(line: 93, scope: !2587)
!2592 = !DILocation(line: 93, column: 33, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2587, file: !58, line: 93, column: 9)
!2594 = !DILocation(line: 93, column: 9, scope: !2587)
!2595 = !DILocation(line: 97, column: 50, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2593, file: !58, line: 93, column: 60)
!2597 = !DILocation(line: 97, column: 44, scope: !2596)
!2598 = !DILocation(line: 97, column: 30, scope: !2596)
!2599 = !DILocation(line: 97, column: 73, scope: !2596)
!2600 = !DILocalVariable(name: "correct_column", scope: !2478, file: !58, line: 48, type: !14)
!2601 = !DILocation(line: 99, column: 63, scope: !2596)
!2602 = !DILocation(line: 99, column: 48, scope: !2596)
!2603 = !DILocation(line: 99, column: 46, scope: !2596)
!2604 = !DILocalVariable(name: "u", scope: !2596, file: !58, line: 99, type: !14)
!2605 = !DILocation(line: 0, scope: !2596)
!2606 = !DILocation(line: 100, column: 13, scope: !2596)
!2607 = !DILocation(line: 100, column: 20, scope: !2596)
!2608 = !DILocalVariable(name: "i", scope: !2609, file: !58, line: 102, type: !45)
!2609 = distinct !DILexicalBlock(scope: !2596, file: !58, line: 102, column: 13)
!2610 = !DILocation(line: 0, scope: !2609)
!2611 = !DILocation(line: 102, column: 18, scope: !2609)
!2612 = !DILocation(line: 102, scope: !2609)
!2613 = !DILocation(line: 102, column: 31, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !58, line: 102, column: 13)
!2615 = !DILocation(line: 102, column: 13, scope: !2609)
!2616 = !DILocation(line: 103, column: 53, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !58, line: 102, column: 46)
!2618 = !DILocation(line: 103, column: 45, scope: !2617)
!2619 = !DILocation(line: 103, column: 34, scope: !2617)
!2620 = !DILocation(line: 103, column: 95, scope: !2617)
!2621 = !DILocation(line: 103, column: 99, scope: !2617)
!2622 = !DILocation(line: 103, column: 91, scope: !2617)
!2623 = !DILocation(line: 103, column: 80, scope: !2617)
!2624 = !DILocation(line: 103, column: 115, scope: !2617)
!2625 = !DILocation(line: 103, column: 76, scope: !2617)
!2626 = !DILocation(line: 104, column: 49, scope: !2617)
!2627 = !DILocation(line: 104, column: 53, scope: !2617)
!2628 = !DILocation(line: 104, column: 45, scope: !2617)
!2629 = !DILocation(line: 104, column: 34, scope: !2617)
!2630 = !DILocation(line: 104, column: 69, scope: !2617)
!2631 = !DILocation(line: 104, column: 30, scope: !2617)
!2632 = !DILocation(line: 104, column: 95, scope: !2617)
!2633 = !DILocation(line: 104, column: 99, scope: !2617)
!2634 = !DILocation(line: 104, column: 91, scope: !2617)
!2635 = !DILocation(line: 104, column: 80, scope: !2617)
!2636 = !DILocation(line: 104, column: 115, scope: !2617)
!2637 = !DILocation(line: 104, column: 76, scope: !2617)
!2638 = !DILocation(line: 105, column: 49, scope: !2617)
!2639 = !DILocation(line: 105, column: 53, scope: !2617)
!2640 = !DILocation(line: 105, column: 45, scope: !2617)
!2641 = !DILocation(line: 105, column: 34, scope: !2617)
!2642 = !DILocation(line: 105, column: 69, scope: !2617)
!2643 = !DILocation(line: 105, column: 30, scope: !2617)
!2644 = !DILocation(line: 105, column: 95, scope: !2617)
!2645 = !DILocation(line: 105, column: 99, scope: !2617)
!2646 = !DILocation(line: 105, column: 91, scope: !2617)
!2647 = !DILocation(line: 105, column: 80, scope: !2617)
!2648 = !DILocation(line: 105, column: 115, scope: !2617)
!2649 = !DILocation(line: 105, column: 76, scope: !2617)
!2650 = !DILocation(line: 106, column: 49, scope: !2617)
!2651 = !DILocation(line: 106, column: 53, scope: !2617)
!2652 = !DILocation(line: 106, column: 45, scope: !2617)
!2653 = !DILocation(line: 106, column: 34, scope: !2617)
!2654 = !DILocation(line: 106, column: 69, scope: !2617)
!2655 = !DILocation(line: 106, column: 30, scope: !2617)
!2656 = !DILocation(line: 106, column: 95, scope: !2617)
!2657 = !DILocation(line: 106, column: 99, scope: !2617)
!2658 = !DILocation(line: 106, column: 91, scope: !2617)
!2659 = !DILocation(line: 106, column: 80, scope: !2617)
!2660 = !DILocation(line: 106, column: 115, scope: !2617)
!2661 = !DILocation(line: 106, column: 76, scope: !2617)
!2662 = !DILocalVariable(name: "tmp", scope: !2617, file: !58, line: 103, type: !6)
!2663 = !DILocation(line: 0, scope: !2617)
!2664 = !DILocation(line: 108, column: 23, scope: !2617)
!2665 = !DILocation(line: 110, column: 34, scope: !2617)
!2666 = !DILocation(line: 110, column: 17, scope: !2617)
!2667 = !DILocation(line: 110, column: 48, scope: !2617)
!2668 = !DILocation(line: 111, column: 56, scope: !2617)
!2669 = !DILocation(line: 111, column: 34, scope: !2617)
!2670 = !DILocation(line: 111, column: 17, scope: !2617)
!2671 = !DILocation(line: 111, column: 48, scope: !2617)
!2672 = !DILocation(line: 112, column: 56, scope: !2617)
!2673 = !DILocation(line: 112, column: 34, scope: !2617)
!2674 = !DILocation(line: 112, column: 17, scope: !2617)
!2675 = !DILocation(line: 112, column: 48, scope: !2617)
!2676 = !DILocation(line: 113, column: 56, scope: !2617)
!2677 = !DILocation(line: 113, column: 34, scope: !2617)
!2678 = !DILocation(line: 113, column: 17, scope: !2617)
!2679 = !DILocation(line: 113, column: 48, scope: !2617)
!2680 = !DILocation(line: 114, column: 56, scope: !2617)
!2681 = !DILocation(line: 114, column: 34, scope: !2617)
!2682 = !DILocation(line: 114, column: 17, scope: !2617)
!2683 = !DILocation(line: 114, column: 48, scope: !2617)
!2684 = !DILocation(line: 115, column: 56, scope: !2617)
!2685 = !DILocation(line: 115, column: 34, scope: !2617)
!2686 = !DILocation(line: 115, column: 17, scope: !2617)
!2687 = !DILocation(line: 115, column: 48, scope: !2617)
!2688 = !DILocation(line: 116, column: 56, scope: !2617)
!2689 = !DILocation(line: 116, column: 34, scope: !2617)
!2690 = !DILocation(line: 116, column: 17, scope: !2617)
!2691 = !DILocation(line: 116, column: 48, scope: !2617)
!2692 = !DILocation(line: 117, column: 56, scope: !2617)
!2693 = !DILocation(line: 117, column: 34, scope: !2617)
!2694 = !DILocation(line: 117, column: 17, scope: !2617)
!2695 = !DILocation(line: 117, column: 48, scope: !2617)
!2696 = !DILocation(line: 102, column: 40, scope: !2614)
!2697 = !DILocation(line: 102, column: 13, scope: !2614)
!2698 = distinct !{!2698, !2615, !2699, !303}
!2699 = !DILocation(line: 118, column: 13, scope: !2609)
!2700 = !DILocation(line: 120, column: 33, scope: !2596)
!2701 = !DILocation(line: 93, column: 56, scope: !2593)
!2702 = !DILocation(line: 93, column: 9, scope: !2593)
!2703 = distinct !{!2703, !2594, !2704, !303}
!2704 = !DILocation(line: 121, column: 9, scope: !2587)
!2705 = !DILocation(line: 124, column: 1, scope: !2478)
!2706 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1403, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2707 = !DILocalVariable(name: "a", arg: 1, scope: !2706, file: !493, line: 79, type: !49)
!2708 = !DILocation(line: 0, scope: !2706)
!2709 = !DILocalVariable(name: "b", arg: 2, scope: !2706, file: !493, line: 79, type: !49)
!2710 = !DILocalVariable(name: "c", arg: 3, scope: !2706, file: !493, line: 80, type: !18)
!2711 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2706, file: !493, line: 80, type: !45)
!2712 = !DILocalVariable(name: "row_a", arg: 5, scope: !2706, file: !493, line: 80, type: !45)
!2713 = !DILocalVariable(name: "col_b", arg: 6, scope: !2706, file: !493, line: 80, type: !45)
!2714 = !DILocalVariable(name: "i", scope: !2715, file: !493, line: 81, type: !45)
!2715 = distinct !DILexicalBlock(scope: !2706, file: !493, line: 81, column: 5)
!2716 = !DILocation(line: 0, scope: !2715)
!2717 = !DILocation(line: 81, column: 10, scope: !2715)
!2718 = !DILocation(line: 81, scope: !2715)
!2719 = !DILocation(line: 81, column: 23, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !493, line: 81, column: 5)
!2721 = !DILocation(line: 81, column: 5, scope: !2715)
!2722 = !DILocation(line: 82, column: 9, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !493, line: 82, column: 9)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !493, line: 81, column: 53)
!2725 = !DILocation(line: 82, scope: !2723)
!2726 = !DILocalVariable(name: "j", scope: !2723, file: !493, line: 82, type: !45)
!2727 = !DILocation(line: 0, scope: !2723)
!2728 = !DILocation(line: 83, column: 18, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !493, line: 82, column: 46)
!2730 = distinct !DILexicalBlock(scope: !2723, file: !493, line: 82, column: 9)
!2731 = !DILocation(line: 83, column: 16, scope: !2729)
!2732 = !DILocation(line: 82, column: 41, scope: !2730)
!2733 = !DILocation(line: 82, column: 9, scope: !2730)
!2734 = distinct !{!2734, !2722, !2735, !303}
!2735 = !DILocation(line: 84, column: 9, scope: !2723)
!2736 = !DILocation(line: 81, column: 32, scope: !2720)
!2737 = !DILocation(line: 81, column: 39, scope: !2720)
!2738 = !DILocation(line: 81, column: 5, scope: !2720)
!2739 = distinct !{!2739, !2721, !2740, !303}
!2740 = !DILocation(line: 85, column: 5, scope: !2715)
!2741 = !DILocation(line: 86, column: 1, scope: !2706)
!2742 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1502, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2743 = !DILocalVariable(name: "a", arg: 1, scope: !2742, file: !493, line: 48, type: !14)
!2744 = !DILocation(line: 0, scope: !2742)
!2745 = !DILocalVariable(name: "b", arg: 2, scope: !2742, file: !493, line: 48, type: !14)
!2746 = !DILocation(line: 49, column: 14, scope: !2742)
!2747 = !DILocation(line: 49, column: 5, scope: !2742)
!2748 = distinct !DISubprogram(name: "EF", scope: !2749, file: !2749, line: 60, type: !2750, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2749 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2750 = !DISubroutineType(types: !2751)
!2751 = !{null, !18, !45, !45}
!2752 = !DILocalVariable(name: "A", arg: 1, scope: !2748, file: !2749, line: 60, type: !18)
!2753 = !DILocation(line: 0, scope: !2748)
!2754 = !DILocalVariable(name: "nrows", arg: 2, scope: !2748, file: !2749, line: 60, type: !45)
!2755 = !DILocalVariable(name: "ncols", arg: 3, scope: !2748, file: !2749, line: 60, type: !45)
!2756 = !DILocalVariable(name: "_pivot_row", scope: !2748, file: !2749, line: 62, type: !2757, align: 256)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !2758)
!2758 = !{!2759}
!2759 = !DISubrange(count: 5)
!2760 = !DILocation(line: 62, column: 27, scope: !2748)
!2761 = !DILocalVariable(name: "_pivot_row2", scope: !2748, file: !2749, line: 63, type: !2757, align: 256)
!2762 = !DILocation(line: 63, column: 27, scope: !2748)
!2763 = !DILocalVariable(name: "packed_A", scope: !2748, file: !2749, line: 64, type: !2764, align: 256)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !2765)
!2765 = !{!2766}
!2766 = !DISubrange(count: 320)
!2767 = !DILocation(line: 64, column: 27, scope: !2748)
!2768 = !DILocation(line: 66, column: 26, scope: !2748)
!2769 = !DILocation(line: 66, column: 32, scope: !2748)
!2770 = !DILocalVariable(name: "row_len", scope: !2748, file: !2749, line: 66, type: !45)
!2771 = !DILocalVariable(name: "i", scope: !2772, file: !2749, line: 69, type: !45)
!2772 = distinct !DILexicalBlock(scope: !2748, file: !2749, line: 69, column: 5)
!2773 = !DILocation(line: 0, scope: !2772)
!2774 = !DILocation(line: 69, column: 10, scope: !2772)
!2775 = !DILocation(line: 69, scope: !2772)
!2776 = !DILocation(line: 69, column: 23, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !2749, line: 69, column: 5)
!2778 = !DILocation(line: 69, column: 5, scope: !2772)
!2779 = !DILocation(line: 77, column: 5, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2748, file: !2749, line: 77, column: 5)
!2781 = !DILocation(line: 70, column: 29, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2777, file: !2749, line: 69, column: 37)
!2783 = !DILocation(line: 70, column: 25, scope: !2782)
!2784 = !DILocation(line: 70, column: 51, scope: !2782)
!2785 = !DILocation(line: 70, column: 47, scope: !2782)
!2786 = !DILocation(line: 70, column: 9, scope: !2782)
!2787 = !DILocation(line: 69, column: 33, scope: !2777)
!2788 = !DILocation(line: 69, column: 5, scope: !2777)
!2789 = distinct !{!2789, !2778, !2790, !303}
!2790 = !DILocation(line: 71, column: 5, scope: !2772)
!2791 = !DILocation(line: 77, scope: !2780)
!2792 = !DILocalVariable(name: "pivot_row", scope: !2748, file: !2749, line: 76, type: !45)
!2793 = !DILocalVariable(name: "pivot_col", scope: !2780, file: !2749, line: 77, type: !45)
!2794 = !DILocation(line: 0, scope: !2780)
!2795 = !DILocation(line: 77, column: 39, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2780, file: !2749, line: 77, column: 5)
!2797 = !DILocation(line: 138, column: 5, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2748, file: !2749, line: 138, column: 5)
!2799 = !DILocation(line: 79, column: 37, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !2749, line: 77, column: 61)
!2801 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2800, file: !2749, line: 79, type: !45)
!2802 = !DILocation(line: 0, scope: !2800)
!2803 = !DILocation(line: 80, column: 37, scope: !2800)
!2804 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2800, file: !2749, line: 80, type: !45)
!2805 = !DILocalVariable(name: "i", scope: !2806, file: !2749, line: 85, type: !45)
!2806 = distinct !DILexicalBlock(scope: !2800, file: !2749, line: 85, column: 9)
!2807 = !DILocation(line: 0, scope: !2806)
!2808 = !DILocation(line: 85, column: 14, scope: !2806)
!2809 = !DILocation(line: 85, scope: !2806)
!2810 = !DILocation(line: 85, column: 27, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2806, file: !2749, line: 85, column: 9)
!2812 = !DILocation(line: 85, column: 9, scope: !2806)
!2813 = !DILocation(line: 93, column: 9, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2800, file: !2749, line: 93, column: 9)
!2815 = !DILocation(line: 86, column: 13, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !2749, line: 85, column: 43)
!2817 = !DILocation(line: 86, column: 27, scope: !2816)
!2818 = !DILocation(line: 87, column: 13, scope: !2816)
!2819 = !DILocation(line: 87, column: 28, scope: !2816)
!2820 = !DILocation(line: 85, column: 39, scope: !2811)
!2821 = !DILocation(line: 85, column: 9, scope: !2811)
!2822 = distinct !{!2822, !2812, !2823, !303}
!2823 = !DILocation(line: 88, column: 9, scope: !2806)
!2824 = !DILocation(line: 0, scope: !2814)
!2825 = !DILocalVariable(name: "row", scope: !2814, file: !2749, line: 93, type: !45)
!2826 = !DILocalVariable(name: "pivot", scope: !2800, file: !2749, line: 91, type: !14)
!2827 = !DILocalVariable(name: "pivot_is_zero", scope: !2800, file: !2749, line: 92, type: !6)
!2828 = !DILocation(line: 94, column: 24, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2814, file: !2749, line: 93, column: 9)
!2830 = !DILocation(line: 94, column: 21, scope: !2829)
!2831 = !DILocation(line: 96, column: 38, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2829, file: !2749, line: 94, column: 80)
!2833 = !DILocation(line: 96, column: 37, scope: !2832)
!2834 = !DILocalVariable(name: "is_pivot_row", scope: !2832, file: !2749, line: 96, type: !6)
!2835 = !DILocation(line: 0, scope: !2832)
!2836 = !DILocation(line: 97, column: 40, scope: !2832)
!2837 = !DILocalVariable(name: "below_pivot_row", scope: !2832, file: !2749, line: 97, type: !6)
!2838 = !DILocalVariable(name: "j", scope: !2839, file: !2749, line: 99, type: !45)
!2839 = distinct !DILexicalBlock(scope: !2832, file: !2749, line: 99, column: 13)
!2840 = !DILocation(line: 0, scope: !2839)
!2841 = !DILocation(line: 99, column: 18, scope: !2839)
!2842 = !DILocation(line: 99, scope: !2839)
!2843 = !DILocation(line: 99, column: 31, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !2749, line: 99, column: 13)
!2845 = !DILocation(line: 99, column: 13, scope: !2839)
!2846 = !DILocation(line: 100, column: 67, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !2749, line: 99, column: 47)
!2848 = !DILocation(line: 100, column: 48, scope: !2847)
!2849 = !DILocation(line: 101, column: 47, scope: !2847)
!2850 = !DILocation(line: 101, column: 57, scope: !2847)
!2851 = !DILocation(line: 101, column: 34, scope: !2847)
!2852 = !DILocation(line: 100, column: 85, scope: !2847)
!2853 = !DILocation(line: 100, column: 17, scope: !2847)
!2854 = !DILocation(line: 100, column: 31, scope: !2847)
!2855 = !DILocation(line: 99, column: 43, scope: !2844)
!2856 = !DILocation(line: 99, column: 13, scope: !2844)
!2857 = distinct !{!2857, !2845, !2858, !303}
!2858 = !DILocation(line: 102, column: 13, scope: !2839)
!2859 = !DILocation(line: 103, column: 21, scope: !2832)
!2860 = !DILocation(line: 104, column: 44, scope: !2832)
!2861 = !DILocation(line: 104, column: 30, scope: !2832)
!2862 = !DILocation(line: 104, column: 29, scope: !2832)
!2863 = !DILocation(line: 94, column: 76, scope: !2829)
!2864 = !DILocation(line: 93, column: 9, scope: !2829)
!2865 = distinct !{!2865, !2813, !2866, !303}
!2866 = !DILocation(line: 105, column: 9, scope: !2814)
!2867 = !DILocation(line: 108, column: 19, scope: !2800)
!2868 = !DILocalVariable(name: "inverse", scope: !2748, file: !2749, line: 75, type: !14)
!2869 = !DILocation(line: 109, column: 9, scope: !2800)
!2870 = !DILocalVariable(name: "row", scope: !2871, file: !2749, line: 113, type: !45)
!2871 = distinct !DILexicalBlock(scope: !2800, file: !2749, line: 113, column: 9)
!2872 = !DILocation(line: 0, scope: !2871)
!2873 = !DILocation(line: 113, column: 14, scope: !2871)
!2874 = !DILocation(line: 113, scope: !2871)
!2875 = !DILocation(line: 113, column: 51, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2871, file: !2749, line: 113, column: 9)
!2877 = !DILocation(line: 113, column: 9, scope: !2871)
!2878 = !DILocation(line: 124, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2800, file: !2749, line: 124, column: 9)
!2880 = !DILocation(line: 114, column: 33, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2876, file: !2749, line: 113, column: 84)
!2882 = !DILocation(line: 114, column: 63, scope: !2881)
!2883 = !DILocalVariable(name: "do_copy", scope: !2881, file: !2749, line: 114, type: !6)
!2884 = !DILocation(line: 0, scope: !2881)
!2885 = !DILocalVariable(name: "do_not_copy", scope: !2881, file: !2749, line: 115, type: !6)
!2886 = !DILocalVariable(name: "col", scope: !2887, file: !2749, line: 116, type: !45)
!2887 = distinct !DILexicalBlock(scope: !2881, file: !2749, line: 116, column: 13)
!2888 = !DILocation(line: 0, scope: !2887)
!2889 = !DILocation(line: 116, column: 18, scope: !2887)
!2890 = !DILocation(line: 116, scope: !2887)
!2891 = !DILocation(line: 116, column: 35, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2887, file: !2749, line: 116, column: 13)
!2893 = !DILocation(line: 116, column: 13, scope: !2887)
!2894 = !DILocation(line: 118, column: 49, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !2749, line: 116, column: 53)
!2896 = !DILocation(line: 118, column: 59, scope: !2895)
!2897 = !DILocation(line: 118, column: 36, scope: !2895)
!2898 = !DILocation(line: 118, column: 34, scope: !2895)
!2899 = !DILocation(line: 119, column: 32, scope: !2895)
!2900 = !DILocation(line: 119, column: 30, scope: !2895)
!2901 = !DILocation(line: 118, column: 67, scope: !2895)
!2902 = !DILocation(line: 117, column: 30, scope: !2895)
!2903 = !DILocation(line: 117, column: 40, scope: !2895)
!2904 = !DILocation(line: 117, column: 17, scope: !2895)
!2905 = !DILocation(line: 117, column: 47, scope: !2895)
!2906 = !DILocation(line: 116, column: 49, scope: !2892)
!2907 = !DILocation(line: 116, column: 13, scope: !2892)
!2908 = distinct !{!2908, !2893, !2909, !303}
!2909 = !DILocation(line: 120, column: 13, scope: !2887)
!2910 = !DILocation(line: 113, column: 80, scope: !2876)
!2911 = !DILocation(line: 113, column: 9, scope: !2876)
!2912 = distinct !{!2912, !2877, !2913, !303}
!2913 = !DILocation(line: 121, column: 9, scope: !2871)
!2914 = !DILocation(line: 124, scope: !2879)
!2915 = !DILocalVariable(name: "row", scope: !2879, file: !2749, line: 124, type: !45)
!2916 = !DILocation(line: 0, scope: !2879)
!2917 = !DILocation(line: 124, column: 51, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2879, file: !2749, line: 124, column: 9)
!2919 = !DILocation(line: 125, column: 46, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2918, file: !2749, line: 124, column: 67)
!2921 = !DILocalVariable(name: "below_pivot", scope: !2920, file: !2749, line: 125, type: !14)
!2922 = !DILocation(line: 0, scope: !2920)
!2923 = !DILocation(line: 126, column: 74, scope: !2920)
!2924 = !DILocation(line: 126, column: 68, scope: !2920)
!2925 = !DILocation(line: 126, column: 41, scope: !2920)
!2926 = !DILocalVariable(name: "elt_to_elim", scope: !2920, file: !2749, line: 126, type: !14)
!2927 = !DILocation(line: 128, column: 63, scope: !2920)
!2928 = !DILocation(line: 129, column: 52, scope: !2920)
!2929 = !DILocation(line: 129, column: 46, scope: !2920)
!2930 = !DILocation(line: 128, column: 13, scope: !2920)
!2931 = !DILocation(line: 124, column: 63, scope: !2918)
!2932 = !DILocation(line: 124, column: 9, scope: !2918)
!2933 = distinct !{!2933, !2878, !2934, !303}
!2934 = !DILocation(line: 130, column: 9, scope: !2879)
!2935 = !DILocation(line: 132, column: 19, scope: !2800)
!2936 = !DILocation(line: 77, column: 57, scope: !2796)
!2937 = !DILocation(line: 77, column: 5, scope: !2796)
!2938 = distinct !{!2938, !2779, !2939, !303}
!2939 = !DILocation(line: 133, column: 5, scope: !2780)
!2940 = !DILocation(line: 138, scope: !2798)
!2941 = !DILocalVariable(name: "i", scope: !2798, file: !2749, line: 138, type: !45)
!2942 = !DILocation(line: 0, scope: !2798)
!2943 = !DILocation(line: 138, column: 23, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2798, file: !2749, line: 138, column: 5)
!2945 = !DILocation(line: 139, column: 47, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2944, file: !2749, line: 138, column: 37)
!2947 = !DILocation(line: 139, column: 43, scope: !2946)
!2948 = !DILocation(line: 139, column: 9, scope: !2946)
!2949 = !DILocalVariable(name: "j", scope: !2950, file: !2749, line: 140, type: !45)
!2950 = distinct !DILexicalBlock(scope: !2946, file: !2749, line: 140, column: 9)
!2951 = !DILocation(line: 0, scope: !2950)
!2952 = !DILocation(line: 140, column: 14, scope: !2950)
!2953 = !DILocation(line: 140, scope: !2950)
!2954 = !DILocation(line: 140, column: 27, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !2749, line: 140, column: 9)
!2956 = !DILocation(line: 140, column: 9, scope: !2950)
!2957 = !DILocation(line: 141, column: 32, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !2749, line: 140, column: 41)
!2959 = !DILocation(line: 141, column: 17, scope: !2958)
!2960 = !DILocation(line: 141, column: 13, scope: !2958)
!2961 = !DILocation(line: 141, column: 30, scope: !2958)
!2962 = !DILocation(line: 140, column: 37, scope: !2955)
!2963 = !DILocation(line: 140, column: 9, scope: !2955)
!2964 = distinct !{!2964, !2956, !2965, !303}
!2965 = !DILocation(line: 142, column: 9, scope: !2950)
!2966 = !DILocation(line: 138, column: 33, scope: !2944)
!2967 = !DILocation(line: 138, column: 5, scope: !2944)
!2968 = distinct !{!2968, !2797, !2969, !303}
!2969 = !DILocation(line: 143, column: 5, scope: !2798)
!2970 = !DILocation(line: 145, column: 5, scope: !2748)
!2971 = !DILocation(line: 146, column: 5, scope: !2748)
!2972 = !DILocation(line: 147, column: 5, scope: !2748)
!2973 = !DILocation(line: 148, column: 5, scope: !2748)
!2974 = !DILocation(line: 149, column: 1, scope: !2748)
!2975 = distinct !DISubprogram(name: "ct_compare_8", scope: !2976, file: !2976, line: 51, type: !1502, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2976 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2977 = !DILocalVariable(name: "a", arg: 1, scope: !2975, file: !2976, line: 51, type: !14)
!2978 = !DILocation(line: 0, scope: !2975)
!2979 = !DILocalVariable(name: "b", arg: 2, scope: !2975, file: !2976, line: 51, type: !14)
!2980 = !DILocation(line: 52, column: 42, scope: !2975)
!2981 = !DILocation(line: 52, column: 13, scope: !2975)
!2982 = !DILocation(line: 52, column: 71, scope: !2975)
!2983 = !DILocation(line: 52, column: 69, scope: !2975)
!2984 = !DILocation(line: 52, column: 5, scope: !2975)
!2985 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !2986, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!6, !14, !6}
!2988 = !DILocalVariable(name: "a", arg: 1, scope: !2985, file: !493, line: 28, type: !14)
!2989 = !DILocation(line: 0, scope: !2985)
!2990 = !DILocalVariable(name: "b", arg: 2, scope: !2985, file: !493, line: 28, type: !6)
!2991 = !DILocation(line: 31, column: 13, scope: !2985)
!2992 = !DILocation(line: 31, column: 10, scope: !2985)
!2993 = !DILocation(line: 31, column: 17, scope: !2985)
!2994 = !DILocalVariable(name: "p", scope: !2985, file: !493, line: 30, type: !6)
!2995 = !DILocation(line: 32, column: 13, scope: !2985)
!2996 = !DILocation(line: 32, column: 10, scope: !2985)
!2997 = !DILocation(line: 32, column: 17, scope: !2985)
!2998 = !DILocation(line: 32, column: 7, scope: !2985)
!2999 = !DILocation(line: 33, column: 13, scope: !2985)
!3000 = !DILocation(line: 33, column: 10, scope: !2985)
!3001 = !DILocation(line: 33, column: 17, scope: !2985)
!3002 = !DILocation(line: 33, column: 7, scope: !2985)
!3003 = !DILocation(line: 34, column: 13, scope: !2985)
!3004 = !DILocation(line: 34, column: 10, scope: !2985)
!3005 = !DILocation(line: 34, column: 17, scope: !2985)
!3006 = !DILocation(line: 34, column: 7, scope: !2985)
!3007 = !DILocalVariable(name: "top_p", scope: !2985, file: !493, line: 37, type: !6)
!3008 = !DILocation(line: 38, column: 32, scope: !2985)
!3009 = !DILocation(line: 38, column: 47, scope: !2985)
!3010 = !DILocation(line: 38, column: 38, scope: !2985)
!3011 = !DILocation(line: 38, column: 54, scope: !2985)
!3012 = !DILocalVariable(name: "out", scope: !2985, file: !493, line: 38, type: !6)
!3013 = !DILocation(line: 39, column: 5, scope: !2985)
!3014 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2749, file: !2749, line: 24, type: !3015, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !49, !5, !45}
!3017 = !DILocalVariable(name: "in", arg: 1, scope: !3014, file: !2749, line: 24, type: !49)
!3018 = !DILocation(line: 0, scope: !3014)
!3019 = !DILocalVariable(name: "out", arg: 2, scope: !3014, file: !2749, line: 24, type: !5)
!3020 = !DILocalVariable(name: "ncols", arg: 3, scope: !3014, file: !2749, line: 24, type: !45)
!3021 = !DILocalVariable(name: "out8", scope: !3014, file: !2749, line: 26, type: !18)
!3022 = !DILocalVariable(name: "i", scope: !3014, file: !2749, line: 25, type: !45)
!3023 = !DILocation(line: 27, column: 9, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3014, file: !2749, line: 27, column: 5)
!3025 = !DILocation(line: 27, scope: !3024)
!3026 = !DILocation(line: 27, column: 17, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !2749, line: 27, column: 5)
!3028 = !DILocation(line: 27, column: 20, scope: !3027)
!3029 = !DILocation(line: 27, column: 5, scope: !3024)
!3030 = !DILocation(line: 31, column: 23, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !2749, line: 27, column: 36)
!3032 = !DILocation(line: 31, column: 44, scope: !3031)
!3033 = !DILocation(line: 31, column: 40, scope: !3031)
!3034 = !DILocation(line: 31, column: 48, scope: !3031)
!3035 = !DILocation(line: 31, column: 37, scope: !3031)
!3036 = !DILocation(line: 31, column: 15, scope: !3031)
!3037 = !DILocation(line: 31, column: 9, scope: !3031)
!3038 = !DILocation(line: 31, column: 20, scope: !3031)
!3039 = !DILocation(line: 27, column: 31, scope: !3027)
!3040 = !DILocation(line: 27, column: 5, scope: !3027)
!3041 = distinct !{!3041, !3029, !3042, !303}
!3042 = !DILocation(line: 33, column: 5, scope: !3024)
!3043 = !DILocation(line: 34, column: 19, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3014, file: !2749, line: 34, column: 9)
!3045 = !DILocation(line: 38, column: 23, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3044, file: !2749, line: 34, column: 24)
!3047 = !DILocation(line: 38, column: 15, scope: !3046)
!3048 = !DILocation(line: 38, column: 9, scope: !3046)
!3049 = !DILocation(line: 38, column: 20, scope: !3046)
!3050 = !DILocation(line: 40, column: 5, scope: !3046)
!3051 = !DILocation(line: 41, column: 1, scope: !3014)
!3052 = distinct !DISubprogram(name: "ct_compare_64", scope: !2976, file: !2976, line: 46, type: !3053, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!6, !45, !45}
!3055 = !DILocalVariable(name: "a", arg: 1, scope: !3052, file: !2976, line: 46, type: !45)
!3056 = !DILocation(line: 0, scope: !3052)
!3057 = !DILocalVariable(name: "b", arg: 2, scope: !3052, file: !2976, line: 46, type: !45)
!3058 = !DILocation(line: 47, column: 38, scope: !3052)
!3059 = !DILocation(line: 47, column: 44, scope: !3052)
!3060 = !DILocation(line: 47, column: 73, scope: !3052)
!3061 = !DILocation(line: 47, column: 71, scope: !3052)
!3062 = !DILocation(line: 47, column: 5, scope: !3052)
!3063 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !2976, file: !2976, line: 35, type: !3053, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3064 = !DILocalVariable(name: "a", arg: 1, scope: !3063, file: !2976, line: 35, type: !45)
!3065 = !DILocation(line: 0, scope: !3063)
!3066 = !DILocalVariable(name: "b", arg: 2, scope: !3063, file: !2976, line: 35, type: !45)
!3067 = !DILocalVariable(name: "diff", scope: !3063, file: !2976, line: 36, type: !46)
!3068 = !DILocation(line: 37, column: 30, scope: !3063)
!3069 = !DILocation(line: 37, column: 59, scope: !3063)
!3070 = !DILocation(line: 37, column: 57, scope: !3063)
!3071 = !DILocation(line: 37, column: 5, scope: !3063)
!3072 = distinct !DISubprogram(name: "m_extract_element", scope: !2749, file: !2749, line: 16, type: !3073, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!14, !326, !45}
!3075 = !DILocalVariable(name: "in", arg: 1, scope: !3072, file: !2749, line: 16, type: !326)
!3076 = !DILocation(line: 0, scope: !3072)
!3077 = !DILocalVariable(name: "index", arg: 2, scope: !3072, file: !2749, line: 16, type: !45)
!3078 = !DILocation(line: 17, column: 27, scope: !3072)
!3079 = !DILocalVariable(name: "leg", scope: !3072, file: !2749, line: 17, type: !239)
!3080 = !DILocation(line: 18, column: 30, scope: !3072)
!3081 = !DILocalVariable(name: "offset", scope: !3072, file: !2749, line: 18, type: !239)
!3082 = !DILocation(line: 20, column: 13, scope: !3072)
!3083 = !DILocation(line: 20, column: 31, scope: !3072)
!3084 = !DILocation(line: 20, column: 21, scope: !3072)
!3085 = !DILocation(line: 20, column: 12, scope: !3072)
!3086 = !DILocation(line: 20, column: 5, scope: !3072)
!3087 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3088, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!14, !14}
!3090 = !DILocalVariable(name: "a", arg: 1, scope: !3087, file: !493, line: 57, type: !14)
!3091 = !DILocation(line: 0, scope: !3087)
!3092 = !DILocation(line: 61, column: 24, scope: !3087)
!3093 = !DILocalVariable(name: "a2", scope: !3087, file: !493, line: 61, type: !14)
!3094 = !DILocation(line: 62, column: 24, scope: !3087)
!3095 = !DILocalVariable(name: "a4", scope: !3087, file: !493, line: 62, type: !14)
!3096 = !DILocation(line: 63, column: 24, scope: !3087)
!3097 = !DILocalVariable(name: "a8", scope: !3087, file: !493, line: 63, type: !14)
!3098 = !DILocation(line: 64, column: 24, scope: !3087)
!3099 = !DILocalVariable(name: "a6", scope: !3087, file: !493, line: 64, type: !14)
!3100 = !DILocation(line: 65, column: 25, scope: !3087)
!3101 = !DILocalVariable(name: "a14", scope: !3087, file: !493, line: 65, type: !14)
!3102 = !DILocation(line: 67, column: 5, scope: !3087)
!3103 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !2976, file: !2976, line: 94, type: !3104, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !239, !326, !14, !5}
!3106 = !DILocalVariable(name: "legs", arg: 1, scope: !3103, file: !2976, line: 94, type: !239)
!3107 = !DILocation(line: 0, scope: !3103)
!3108 = !DILocalVariable(name: "in", arg: 2, scope: !3103, file: !2976, line: 94, type: !326)
!3109 = !DILocalVariable(name: "a", arg: 3, scope: !3103, file: !2976, line: 94, type: !14)
!3110 = !DILocalVariable(name: "acc", arg: 4, scope: !3103, file: !2976, line: 94, type: !5)
!3111 = !DILocation(line: 95, column: 20, scope: !3103)
!3112 = !DILocalVariable(name: "tab", scope: !3103, file: !2976, line: 95, type: !19)
!3113 = !DILocalVariable(name: "lsb_ask", scope: !3103, file: !2976, line: 97, type: !6)
!3114 = !DILocalVariable(name: "i", scope: !3115, file: !2976, line: 99, type: !45)
!3115 = distinct !DILexicalBlock(scope: !3103, file: !2976, line: 99, column: 5)
!3116 = !DILocation(line: 0, scope: !3115)
!3117 = !DILocation(line: 99, column: 9, scope: !3115)
!3118 = !DILocation(line: 99, scope: !3115)
!3119 = !DILocation(line: 99, column: 20, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !2976, line: 99, column: 5)
!3121 = !DILocation(line: 99, column: 5, scope: !3115)
!3122 = !DILocation(line: 100, column: 21, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3120, file: !2976, line: 99, column: 32)
!3124 = !DILocation(line: 100, column: 33, scope: !3123)
!3125 = !DILocation(line: 100, column: 51, scope: !3123)
!3126 = !DILocation(line: 100, column: 46, scope: !3123)
!3127 = !DILocation(line: 100, column: 44, scope: !3123)
!3128 = !DILocation(line: 101, column: 27, scope: !3123)
!3129 = !DILocation(line: 101, column: 33, scope: !3123)
!3130 = !DILocation(line: 101, column: 52, scope: !3123)
!3131 = !DILocation(line: 101, column: 59, scope: !3123)
!3132 = !DILocation(line: 101, column: 46, scope: !3123)
!3133 = !DILocation(line: 101, column: 44, scope: !3123)
!3134 = !DILocation(line: 101, column: 17, scope: !3123)
!3135 = !DILocation(line: 102, column: 21, scope: !3123)
!3136 = !DILocation(line: 102, column: 27, scope: !3123)
!3137 = !DILocation(line: 102, column: 33, scope: !3123)
!3138 = !DILocation(line: 102, column: 52, scope: !3123)
!3139 = !DILocation(line: 102, column: 59, scope: !3123)
!3140 = !DILocation(line: 102, column: 46, scope: !3123)
!3141 = !DILocation(line: 102, column: 44, scope: !3123)
!3142 = !DILocation(line: 102, column: 17, scope: !3123)
!3143 = !DILocation(line: 103, column: 21, scope: !3123)
!3144 = !DILocation(line: 103, column: 27, scope: !3123)
!3145 = !DILocation(line: 103, column: 33, scope: !3123)
!3146 = !DILocation(line: 103, column: 52, scope: !3123)
!3147 = !DILocation(line: 103, column: 59, scope: !3123)
!3148 = !DILocation(line: 103, column: 46, scope: !3123)
!3149 = !DILocation(line: 103, column: 44, scope: !3123)
!3150 = !DILocation(line: 103, column: 17, scope: !3123)
!3151 = !DILocation(line: 100, column: 9, scope: !3123)
!3152 = !DILocation(line: 100, column: 16, scope: !3123)
!3153 = !DILocation(line: 99, column: 29, scope: !3120)
!3154 = !DILocation(line: 99, column: 5, scope: !3120)
!3155 = distinct !{!3155, !3121, !3156, !303}
!3156 = !DILocation(line: 104, column: 5, scope: !3115)
!3157 = !DILocation(line: 105, column: 1, scope: !3103)
!3158 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2749, file: !2749, line: 44, type: !3159, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{null, !45, !326, !18}
!3161 = !DILocalVariable(name: "legs", arg: 1, scope: !3158, file: !2749, line: 44, type: !45)
!3162 = !DILocation(line: 0, scope: !3158)
!3163 = !DILocalVariable(name: "in", arg: 2, scope: !3158, file: !2749, line: 44, type: !326)
!3164 = !DILocalVariable(name: "out", arg: 3, scope: !3158, file: !2749, line: 44, type: !18)
!3165 = !DILocalVariable(name: "in8", scope: !3158, file: !2749, line: 45, type: !49)
!3166 = !DILocalVariable(name: "i", scope: !3167, file: !2749, line: 46, type: !45)
!3167 = distinct !DILexicalBlock(scope: !3158, file: !2749, line: 46, column: 5)
!3168 = !DILocation(line: 0, scope: !3167)
!3169 = !DILocation(line: 46, column: 9, scope: !3167)
!3170 = !DILocation(line: 46, scope: !3167)
!3171 = !DILocation(line: 46, column: 29, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3167, file: !2749, line: 46, column: 5)
!3173 = !DILocation(line: 46, column: 22, scope: !3172)
!3174 = !DILocation(line: 46, column: 5, scope: !3167)
!3175 = !DILocation(line: 51, column: 26, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !2749, line: 46, column: 42)
!3177 = !DILocation(line: 51, column: 21, scope: !3176)
!3178 = !DILocation(line: 51, column: 31, scope: !3176)
!3179 = !DILocation(line: 51, column: 9, scope: !3176)
!3180 = !DILocation(line: 51, column: 18, scope: !3176)
!3181 = !DILocation(line: 52, column: 26, scope: !3176)
!3182 = !DILocation(line: 52, column: 21, scope: !3176)
!3183 = !DILocation(line: 52, column: 30, scope: !3176)
!3184 = !DILocation(line: 52, column: 14, scope: !3176)
!3185 = !DILocation(line: 52, column: 9, scope: !3176)
!3186 = !DILocation(line: 52, column: 18, scope: !3176)
!3187 = !DILocation(line: 46, column: 37, scope: !3172)
!3188 = !DILocation(line: 46, column: 5, scope: !3172)
!3189 = distinct !{!3189, !3174, !3190, !303}
!3190 = !DILocation(line: 54, column: 5, scope: !3167)
!3191 = !DILocation(line: 55, column: 1, scope: !3158)
!3192 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3193 = !DILocalVariable(name: "b", arg: 1, scope: !3192, file: !493, line: 129, type: !12)
!3194 = !DILocation(line: 0, scope: !3192)
!3195 = !DILocation(line: 130, column: 19, scope: !3192)
!3196 = !DILocation(line: 130, column: 33, scope: !3192)
!3197 = !DILocalVariable(name: "x", scope: !3192, file: !493, line: 130, type: !19)
!3198 = !DILocalVariable(name: "high_nibble_mask", scope: !3192, file: !493, line: 132, type: !19)
!3199 = !DILocation(line: 134, column: 28, scope: !3192)
!3200 = !DILocalVariable(name: "high_half", scope: !3192, file: !493, line: 134, type: !19)
!3201 = !DILocation(line: 135, column: 28, scope: !3192)
!3202 = !DILocation(line: 135, column: 47, scope: !3192)
!3203 = !DILocation(line: 135, column: 34, scope: !3192)
!3204 = !DILocation(line: 135, column: 5, scope: !3192)
!3205 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1502, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3206 = !DILocalVariable(name: "a", arg: 1, scope: !3205, file: !493, line: 9, type: !14)
!3207 = !DILocation(line: 0, scope: !3205)
!3208 = !DILocalVariable(name: "b", arg: 2, scope: !3205, file: !493, line: 9, type: !14)
!3209 = !DILocation(line: 14, column: 10, scope: !3205)
!3210 = !DILocation(line: 14, column: 7, scope: !3205)
!3211 = !DILocation(line: 17, column: 17, scope: !3205)
!3212 = !DILocalVariable(name: "p", scope: !3205, file: !493, line: 11, type: !14)
!3213 = !DILocation(line: 18, column: 13, scope: !3205)
!3214 = !DILocation(line: 18, column: 17, scope: !3205)
!3215 = !DILocation(line: 18, column: 7, scope: !3205)
!3216 = !DILocation(line: 19, column: 13, scope: !3205)
!3217 = !DILocation(line: 19, column: 17, scope: !3205)
!3218 = !DILocation(line: 19, column: 7, scope: !3205)
!3219 = !DILocation(line: 20, column: 13, scope: !3205)
!3220 = !DILocation(line: 20, column: 17, scope: !3205)
!3221 = !DILocation(line: 20, column: 7, scope: !3205)
!3222 = !DILocalVariable(name: "top_p", scope: !3205, file: !493, line: 23, type: !14)
!3223 = !DILocation(line: 24, column: 37, scope: !3205)
!3224 = !DILocation(line: 24, column: 52, scope: !3205)
!3225 = !DILocation(line: 24, column: 43, scope: !3205)
!3226 = !DILocation(line: 24, column: 59, scope: !3205)
!3227 = !DILocalVariable(name: "out", scope: !3205, file: !493, line: 24, type: !14)
!3228 = !DILocation(line: 25, column: 5, scope: !3205)
!3229 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1510, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3230 = !DILocalVariable(name: "a", arg: 1, scope: !3229, file: !493, line: 70, type: !49)
!3231 = !DILocation(line: 0, scope: !3229)
!3232 = !DILocalVariable(name: "b", arg: 2, scope: !3229, file: !493, line: 71, type: !49)
!3233 = !DILocalVariable(name: "n", arg: 3, scope: !3229, file: !493, line: 71, type: !45)
!3234 = !DILocalVariable(name: "m", arg: 4, scope: !3229, file: !493, line: 71, type: !45)
!3235 = !DILocalVariable(name: "ret", scope: !3229, file: !493, line: 72, type: !14)
!3236 = !DILocalVariable(name: "i", scope: !3237, file: !493, line: 73, type: !45)
!3237 = distinct !DILexicalBlock(scope: !3229, file: !493, line: 73, column: 5)
!3238 = !DILocation(line: 0, scope: !3237)
!3239 = !DILocation(line: 73, column: 10, scope: !3237)
!3240 = !DILocation(line: 73, scope: !3237)
!3241 = !DILocation(line: 73, column: 23, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3237, file: !493, line: 73, column: 5)
!3243 = !DILocation(line: 73, column: 5, scope: !3237)
!3244 = !DILocation(line: 74, column: 27, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3242, file: !493, line: 73, column: 41)
!3246 = !DILocation(line: 74, column: 33, scope: !3245)
!3247 = !DILocation(line: 74, column: 21, scope: !3245)
!3248 = !DILocation(line: 74, column: 15, scope: !3245)
!3249 = !DILocation(line: 73, column: 28, scope: !3242)
!3250 = !DILocation(line: 73, column: 35, scope: !3242)
!3251 = !DILocation(line: 73, column: 5, scope: !3242)
!3252 = distinct !{!3252, !3243, !3253, !303}
!3253 = !DILocation(line: 75, column: 5, scope: !3237)
!3254 = !DILocation(line: 76, column: 5, scope: !3229)
!3255 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1502, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3256 = !DILocalVariable(name: "a", arg: 1, scope: !3255, file: !493, line: 43, type: !14)
!3257 = !DILocation(line: 0, scope: !3255)
!3258 = !DILocalVariable(name: "b", arg: 2, scope: !3255, file: !493, line: 43, type: !14)
!3259 = !DILocation(line: 44, column: 14, scope: !3255)
!3260 = !DILocation(line: 44, column: 5, scope: !3255)
