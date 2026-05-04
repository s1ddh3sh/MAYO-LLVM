; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\04\00\08\01", align 1, !dbg !0
@pqmayo_MAYO_5_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_5_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_5_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60

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
  %epk = alloca [107415 x i64], align 8
  %esk = alloca [106926 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !111, !DIExpression(), !112)
    #dbg_value(i32 32, !113, !DIExpression(), !112)
  store i32 32, ptr %msglen, align 4, !dbg !114
    #dbg_value(i32 32, !113, !DIExpression(), !112)
    #dbg_value(i32 996, !115, !DIExpression(), !112)
  store i32 996, ptr %smlen, align 4, !dbg !116
  %call = call dereferenceable_or_null(5554) ptr @calloc(i32 noundef 5554, i32 noundef 1) #7, !dbg !117
    #dbg_value(ptr %call, !118, !DIExpression(), !112)
  %call1 = call dereferenceable_or_null(40) ptr @calloc(i32 noundef 40, i32 noundef 1) #7, !dbg !119
    #dbg_value(ptr %call1, !120, !DIExpression(), !112)
    #dbg_declare(ptr %epk, !121, !DIExpression(), !126)
    #dbg_declare(ptr %esk, !127, !DIExpression(), !132)
  %0 = load i32, ptr %msglen, align 4, !dbg !133
    #dbg_value(i32 %0, !113, !DIExpression(), !112)
  %add2 = add i32 %0, 964, !dbg !134
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #7, !dbg !135
    #dbg_value(ptr %call3, !136, !DIExpression(), !112)
    #dbg_declare(ptr %msg, !137, !DIExpression(), !141)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !141
    #dbg_declare(ptr %msg2, !142, !DIExpression(), !143)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !143
  %call4 = call i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %call11 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !149
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %1 = load i32, ptr %msglen, align 4, !dbg !150
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !151
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !152
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !152

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !154
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !155
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
  %call32 = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !162
    #dbg_value(i32 %call32, !145, !DIExpression(), !112)
  %sext = sub nsw i32 0, %call32, !dbg !163
  br label %err, !dbg !163

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !112
    #dbg_value(i32 %res.0, !145, !DIExpression(), !112)
    #dbg_label(!165, !166)
  call void @free(ptr noundef %call) #8, !dbg !167
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 40) #8, !dbg !168
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !171 {
entry:
    #dbg_value(ptr %p, !202, !DIExpression(), !203)
    #dbg_value(ptr %pk, !204, !DIExpression(), !203)
    #dbg_value(ptr %sk, !205, !DIExpression(), !203)
    #dbg_value(i32 0, !206, !DIExpression(), !203)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !207
    #dbg_value(i32 %call, !206, !DIExpression(), !203)
    #dbg_label(!208, !209)
  ret i32 %call, !dbg !210
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !211 {
entry:
  %S = alloca [868 x i8], align 1
  %P = alloca [106713 x i64], align 8
  %P3 = alloca [1296 x i64], align 8
  %O = alloca [1704 x i8], align 1
  %P3_upper = alloca [702 x i64], align 8
    #dbg_value(ptr %p, !212, !DIExpression(), !213)
    #dbg_value(ptr %cpk, !214, !DIExpression(), !213)
    #dbg_value(ptr %csk, !215, !DIExpression(), !213)
    #dbg_value(i32 0, !216, !DIExpression(), !213)
    #dbg_value(ptr %csk, !217, !DIExpression(), !213)
    #dbg_declare(ptr %S, !218, !DIExpression(), !222)
    #dbg_declare(ptr %P, !223, !DIExpression(), !227)
    #dbg_declare(ptr %P3, !228, !DIExpression(), !232)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %P3, i8 0, i32 10368, i1 false), !dbg !232
    #dbg_declare(ptr %O, !233, !DIExpression(), !237)
    #dbg_value(i32 9, !238, !DIExpression(), !213)
    #dbg_value(i32 142, !240, !DIExpression(), !213)
    #dbg_value(i32 142, !241, !DIExpression(), !213)
    #dbg_value(i32 12, !242, !DIExpression(), !213)
    #dbg_value(i32 852, !243, !DIExpression(), !213)
    #dbg_value(i32 91377, !244, !DIExpression(), !213)
    #dbg_value(i32 702, !245, !DIExpression(), !213)
    #dbg_value(i32 16, !246, !DIExpression(), !213)
    #dbg_value(i32 40, !247, !DIExpression(), !213)
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 731016, !dbg !249
    #dbg_value(ptr %add.ptr, !250, !DIExpression(), !213)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 40) #8, !dbg !251
  %cmp.not = icmp eq i32 %call, 0, !dbg !253
  br i1 %cmp.not, label %if.end, label %err, !dbg !253

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #8, !dbg !254
    #dbg_value(ptr %S, !255, !DIExpression(), !213)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !256
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1704) #6, !dbg !257
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !258
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !259
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !260
    #dbg_declare(ptr %P3_upper, !261, !DIExpression(), !265)
  call void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 12) #6, !dbg !266
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !267
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 78, i32 noundef 142) #6, !dbg !268
  br label %err, !dbg !268

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !213
    #dbg_value(i32 %ret.0, !216, !DIExpression(), !213)
    #dbg_label(!269, !270)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1704) #8, !dbg !271
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 122688) #8, !dbg !272
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 10368) #8, !dbg !273
  ret i32 %ret.0, !dbg !274
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483503, -2147483648) %mdeclen) unnamed_addr #0 !dbg !275 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 841847, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !319
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 11857, i32 noundef 142) #6, !dbg !320
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
    #dbg_value(i32 9, !333, !DIExpression(), !328)
    #dbg_value(i32 142, !334, !DIExpression(), !328)
    #dbg_value(i32 12, !335, !DIExpression(), !328)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !336
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 9, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 142, i32 noundef 12, i32 noundef 12) #6, !dbg !337
  ret void, !dbg !338
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !339 {
entry:
    #dbg_value(ptr %in, !342, !DIExpression(), !343)
    #dbg_value(ptr %out, !344, !DIExpression(), !343)
    #dbg_value(i32 78, !345, !DIExpression(), !343)
    #dbg_value(i32 142, !346, !DIExpression(), !343)
    #dbg_value(i32 9, !347, !DIExpression(), !343)
    #dbg_value(ptr %in, !348, !DIExpression(), !343)
    #dbg_value(i32 0, !349, !DIExpression(), !351)
  br label %for.cond, !dbg !352

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !353
    #dbg_value(i32 %i.0, !349, !DIExpression(), !351)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !354
  br i1 %exitcond, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 71, !dbg !357
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !359
  %mul3 = mul nuw nsw i32 %i.0, 72, !dbg !360
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !361
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 71) #8, !dbg !362
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 9, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #6, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !378 {
entry:
    #dbg_value(i32 9, !381, !DIExpression(), !382)
    #dbg_value(ptr %mat, !383, !DIExpression(), !382)
    #dbg_value(ptr %bs_mat, !384, !DIExpression(), !382)
    #dbg_value(ptr %acc, !385, !DIExpression(), !382)
    #dbg_value(i32 142, !386, !DIExpression(), !382)
    #dbg_value(i32 12, !387, !DIExpression(), !382)
    #dbg_value(i32 12, !388, !DIExpression(), !382)
    #dbg_value(i32 0, !389, !DIExpression(), !391)
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !393
    #dbg_value(i32 %r.0, !389, !DIExpression(), !391)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !394
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !396

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !397

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !400
    #dbg_value(i32 %c.0, !401, !DIExpression(), !402)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !403
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !397

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !405

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !408
    #dbg_value(i32 %k.0, !409, !DIExpression(), !410)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !411
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !405

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !413
  %add = add nuw nsw i32 %mul, %k.0, !dbg !415
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !416
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !416
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !417
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !418
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !418
  %1 = load i8, ptr %arrayidx, align 1, !dbg !418
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !419
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !420
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !421
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !421
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !422
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
  %exitcond = icmp ne i32 %i.0, 9, !dbg !453
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
    #dbg_value(i32 9, !511, !DIExpression(), !512)
    #dbg_value(ptr %bs_mat, !513, !DIExpression(), !512)
    #dbg_value(ptr %mat, !514, !DIExpression(), !512)
    #dbg_value(ptr %acc, !515, !DIExpression(), !512)
    #dbg_value(i32 142, !516, !DIExpression(), !512)
    #dbg_value(i32 142, !517, !DIExpression(), !512)
    #dbg_value(i32 12, !518, !DIExpression(), !512)
    #dbg_value(i32 1, !519, !DIExpression(), !512)
    #dbg_value(i32 0, !520, !DIExpression(), !512)
    #dbg_value(i32 0, !521, !DIExpression(), !523)
  br label %for.cond, !dbg !524

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !525
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !525
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !526
    #dbg_value(i32 %r.0, !521, !DIExpression(), !523)
    #dbg_value(i32 %bs_mat_entries_used.0, !520, !DIExpression(), !512)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !527
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
  %exitcond = icmp ne i32 %k.0, 12, !dbg !544
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !538

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !546
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !546
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !548
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !549
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !549
  %2 = load i8, ptr %arrayidx, align 1, !dbg !549
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !550
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !551
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !552
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !552
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !553
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 78, 11858) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !568 {
entry:
  %tmp = alloca [9 x i64], align 8
    #dbg_value(ptr %in, !571, !DIExpression(), !572)
    #dbg_value(ptr %out, !573, !DIExpression(), !572)
    #dbg_value(i32 %vecs, !574, !DIExpression(), !572)
    #dbg_value(i32 142, !575, !DIExpression(), !572)
    #dbg_value(i32 9, !576, !DIExpression(), !572)
    #dbg_value(ptr %out, !577, !DIExpression(), !572)
    #dbg_declare(ptr %tmp, !578, !DIExpression(), !582)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %tmp, i8 0, i32 72, i1 false), !dbg !582
    #dbg_value(i32 %vecs, !583, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !585)
  br label %for.cond, !dbg !586

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !583, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !585)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !587
  br i1 %cmp, label %for.body, label %for.end, !dbg !589

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !590
    #dbg_value(i32 %i.0, !583, !DIExpression(), !585)
  %div1 = mul nsw i32 %i.0, 71, !dbg !591
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !593
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 71) #8, !dbg !594
  %mul4 = mul nsw i32 %i.0, 72, !dbg !595
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !596
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 72) #8, !dbg !597
    #dbg_value(i32 %i.0, !583, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !585)
  br label %for.cond, !dbg !598, !llvm.loop !599

for.end:                                          ; preds = %for.cond
  ret void, !dbg !601
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !602 {
entry:
  %S = alloca [868 x i8], align 1
    #dbg_value(ptr %p, !605, !DIExpression(), !606)
    #dbg_value(ptr %csk, !607, !DIExpression(), !606)
    #dbg_value(ptr %sk, !608, !DIExpression(), !606)
    #dbg_value(i32 0, !609, !DIExpression(), !606)
    #dbg_declare(ptr %S, !610, !DIExpression(), !611)
    #dbg_value(ptr %sk, !612, !DIExpression(), !606)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !613
    #dbg_value(ptr %add.ptr1, !614, !DIExpression(), !606)
    #dbg_value(i32 12, !615, !DIExpression(), !606)
    #dbg_value(i32 142, !616, !DIExpression(), !606)
    #dbg_value(i32 852, !617, !DIExpression(), !606)
    #dbg_value(i32 16, !618, !DIExpression(), !606)
    #dbg_value(i32 40, !619, !DIExpression(), !606)
    #dbg_value(ptr %csk, !620, !DIExpression(), !606)
    #dbg_value(ptr %S, !621, !DIExpression(), !606)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #8, !dbg !622
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !623
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1704) #6, !dbg !624
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !625
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !626
    #dbg_value(ptr %add.ptr5, !627, !DIExpression(), !606)
    #dbg_value(ptr %sk, !628, !DIExpression(), !606)
    #dbg_value(ptr %add.ptr5, !629, !DIExpression(), !606)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !630
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 868) #8, !dbg !631
  ret i32 0, !dbg !632
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !633 {
entry:
    #dbg_value(ptr %p, !634, !DIExpression(), !635)
    #dbg_value(ptr %P1, !636, !DIExpression(), !635)
    #dbg_value(ptr %O, !637, !DIExpression(), !635)
    #dbg_value(ptr %acc, !638, !DIExpression(), !635)
    #dbg_value(i32 12, !639, !DIExpression(), !635)
    #dbg_value(i32 142, !640, !DIExpression(), !635)
    #dbg_value(i32 9, !641, !DIExpression(), !635)
    #dbg_value(i32 0, !642, !DIExpression(), !635)
    #dbg_value(i32 0, !643, !DIExpression(), !645)
  br label %for.cond, !dbg !646

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 142, %entry ], !dbg !647
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !647
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !648
    #dbg_value(i32 %r.0, !643, !DIExpression(), !645)
    #dbg_value(i32 %bs_mat_entries_used.0, !642, !DIExpression(), !635)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !649
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !651

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !652
  br label %for.cond1, !dbg !652

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !635
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !655
    #dbg_value(i32 %c.0, !656, !DIExpression(), !657)
    #dbg_value(i32 %bs_mat_entries_used.1, !642, !DIExpression(), !635)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !658
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !652

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !660
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !660

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !663

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !665
    #dbg_value(i32 %k.0, !666, !DIExpression(), !667)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !668
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !663

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !670
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !670
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !672
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !673
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !673
  %2 = load i8, ptr %arrayidx, align 1, !dbg !673
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !674
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !675
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !676
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !676
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #6, !dbg !677
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !678
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !678
  %mul16 = mul nuw nsw i32 %r.0, 12, !dbg !679
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !680
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !680
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !680
  %mul19 = mul nuw nsw i32 %c.0, 12, !dbg !681
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !682
  %add.ptr22.idx = mul nuw nsw i32 %add20, 72, !dbg !683
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !683
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #6, !dbg !684
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !685
    #dbg_value(i32 %add23, !666, !DIExpression(), !667)
  br label %for.cond5, !dbg !686, !llvm.loop !687

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !689

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !689
    #dbg_value(i32 %bs_mat_entries_used.2, !642, !DIExpression(), !635)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !690
    #dbg_value(i32 %inc, !656, !DIExpression(), !657)
  br label %for.cond1, !dbg !691, !llvm.loop !692

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !635
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !694
    #dbg_value(i32 %inc28, !643, !DIExpression(), !645)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !695
  br label %for.cond, !dbg !695, !llvm.loop !696

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !698
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !699 {
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
    #dbg_value(ptr %p, !703, !DIExpression(), !704)
    #dbg_value(ptr %sig, !705, !DIExpression(), !704)
    #dbg_value(ptr %siglen, !706, !DIExpression(), !704)
    #dbg_value(ptr %m, !707, !DIExpression(), !704)
    #dbg_value(i32 %mlen, !708, !DIExpression(), !704)
    #dbg_value(ptr %csk, !709, !DIExpression(), !704)
    #dbg_value(i32 0, !710, !DIExpression(), !704)
    #dbg_declare(ptr %tenc, !711, !DIExpression(), !715)
    #dbg_declare(ptr %t, !716, !DIExpression(), !720)
    #dbg_declare(ptr %y, !721, !DIExpression(), !722)
    #dbg_declare(ptr %salt, !723, !DIExpression(), !727)
    #dbg_declare(ptr %V, !728, !DIExpression(), !732)
    #dbg_declare(ptr %Vdec, !733, !DIExpression(), !734)
    #dbg_declare(ptr %A, !735, !DIExpression(), !739)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20880) %A, i8 0, i32 20880, i1 false), !dbg !739
    #dbg_declare(ptr %x, !740, !DIExpression(), !744)
    #dbg_declare(ptr %r, !745, !DIExpression(), !749)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(145) %r, i8 0, i32 145, i1 false), !dbg !749
    #dbg_declare(ptr %s, !750, !DIExpression(), !751)
    #dbg_declare(ptr %sk, !752, !DIExpression(), !753)
    #dbg_declare(ptr %Ox, !754, !DIExpression(), !755)
    #dbg_declare(ptr %tmp, !756, !DIExpression(), !757)
    #dbg_value(i32 142, !758, !DIExpression(), !704)
    #dbg_value(i32 154, !759, !DIExpression(), !704)
    #dbg_value(i32 12, !760, !DIExpression(), !704)
    #dbg_value(i32 12, !761, !DIExpression(), !704)
    #dbg_value(i32 142, !762, !DIExpression(), !704)
    #dbg_value(i32 71, !763, !DIExpression(), !704)
    #dbg_value(i32 71, !764, !DIExpression(), !704)
    #dbg_value(i32 72, !765, !DIExpression(), !704)
    #dbg_value(i32 964, !766, !DIExpression(), !704)
    #dbg_value(i32 145, !767, !DIExpression(), !704)
    #dbg_value(i32 64, !768, !DIExpression(), !704)
    #dbg_value(i32 40, !769, !DIExpression(), !704)
    #dbg_value(i32 40, !770, !DIExpression(), !704)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !771
    #dbg_value(i32 0, !710, !DIExpression(), !704)
    #dbg_value(ptr %csk, !772, !DIExpression(), !704)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #8, !dbg !773
    #dbg_value(ptr %sk, !774, !DIExpression(), !704)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !775
    #dbg_value(ptr %add.ptr, !776, !DIExpression(), !704)
    #dbg_declare(ptr %Mtmp, !777, !DIExpression(), !778)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %Mtmp, i8 0, i32 10368, i1 false), !dbg !778
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !779
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 40) #8, !dbg !781
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !782
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !782

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 104, !dbg !783
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 40) #8, !dbg !784
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 40, ptr noundef nonnull %tmp, i32 noundef 144) #8, !dbg !785
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !786
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 40) #8, !dbg !787
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 144, !dbg !788
    #dbg_value(ptr %add.ptr24, !789, !DIExpression(), !704)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #8, !dbg !790
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !791
  store i8 0, ptr %add.ptr24, align 1, !dbg !792
  %call32 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 924, ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !793
    #dbg_value(i32 0, !794, !DIExpression(), !796)
  br label %for.cond, !dbg !797

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !798
    #dbg_value(i32 %i.0, !794, !DIExpression(), !796)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !799
  br i1 %exitcond, label %for.body, label %for.end, !dbg !801

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 71, !dbg !802
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !804
  %mul37 = mul nuw nsw i32 %i.0, 142, !dbg !805
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !806
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 142) #6, !dbg !807
  %inc = add nuw nsw i32 %i.0, 1, !dbg !808
    #dbg_value(i32 %inc, !794, !DIExpression(), !796)
  br label %for.cond, !dbg !809, !llvm.loop !810

for.end:                                          ; preds = %for.cond
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !812
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !813
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !814
    #dbg_value(i32 0, !815, !DIExpression(), !817)
  br label %for.cond48, !dbg !818

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !819
    #dbg_value(i32 %i47.0, !815, !DIExpression(), !817)
  %exitcond1 = icmp ne i32 %i47.0, 142, !dbg !820
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !822

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 145, !dbg !823
  %sub = add nuw nsw i32 %0, 144, !dbg !825
  %arrayidx = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub, !dbg !826
  store i8 0, ptr %arrayidx, align 1, !dbg !827
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !828
    #dbg_value(i32 %inc53, !815, !DIExpression(), !817)
  br label %for.cond48, !dbg !829, !llvm.loop !830

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 852, !dbg !832
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 144) #6, !dbg !833
  %call62 = call i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 12, i32 noundef 12, i32 noundef 142, i32 noundef 145) #6, !dbg !834
  %tobool.not = icmp eq i32 %call62, 0, !dbg !834
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !834

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 10368) #8, !dbg !836
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 20880) #8, !dbg !838
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !839, !DIExpression(), !841)
  br label %for.cond70, !dbg !842

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !843
    #dbg_value(i32 %i69.0, !839, !DIExpression(), !841)
  %exitcond2 = icmp ne i32 %i69.0, 12, !dbg !844
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !846

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 142, !dbg !847
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !849
    #dbg_value(ptr %add.ptr75, !850, !DIExpression(), !704)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !851
  %mul80 = mul nuw nsw i32 %i69.0, 12, !dbg !852
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !853
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 12, i32 noundef 142, i32 noundef 1) #6, !dbg !854
  %mul85 = mul nuw nsw i32 %i69.0, 154, !dbg !855
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !856
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 142, i32 noundef 1) #6, !dbg !857
  %mul88 = mul nuw nsw i32 %i69.0, 154, !dbg !858
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !859
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 142, !dbg !860
  %mul92 = mul nuw nsw i32 %i69.0, 12, !dbg !861
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !862
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 12) #8, !dbg !863
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !864
    #dbg_value(i32 %inc96, !839, !DIExpression(), !841)
  br label %for.cond70, !dbg !865, !llvm.loop !866

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1848) #6, !dbg !868
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !869
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 40) #8, !dbg !870
  store i32 964, ptr %siglen, align 4, !dbg !871
  br label %err, !dbg !872

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !704
    #dbg_value(i32 %ret.0, !710, !DIExpression(), !704)
    #dbg_label(!873, !874)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 924) #8, !dbg !875
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1704) #8, !dbg !876
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 20880) #8, !dbg !877
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 145) #8, !dbg !878
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !879
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1704) #8, !dbg !880
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 855408) #8, !dbg !881
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 142) #8, !dbg !882
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !883
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 10368) #8, !dbg !884
  ret i32 %ret.0, !dbg !885
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !886 {
entry:
  %Pv = alloca [15336 x i64], align 8
    #dbg_value(ptr %p, !889, !DIExpression(), !890)
    #dbg_value(ptr %Vdec, !891, !DIExpression(), !890)
    #dbg_value(ptr %L, !892, !DIExpression(), !890)
    #dbg_value(ptr %P1, !893, !DIExpression(), !890)
    #dbg_value(ptr %VL, !894, !DIExpression(), !890)
    #dbg_value(ptr %VP1V, !895, !DIExpression(), !890)
    #dbg_value(i32 12, !896, !DIExpression(), !890)
    #dbg_value(i32 142, !897, !DIExpression(), !890)
    #dbg_value(i32 12, !898, !DIExpression(), !890)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !899
    #dbg_declare(ptr %Pv, !900, !DIExpression(), !904)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(122688) %Pv, i8 0, i32 122688, i1 false), !dbg !904
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !905
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !906
  ret void, !dbg !907
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !908 {
entry:
  %temp = alloca [9 x i64], align 8
    #dbg_value(ptr %p, !911, !DIExpression(), !912)
    #dbg_value(ptr %vPv, !913, !DIExpression(), !912)
    #dbg_value(ptr %t, !914, !DIExpression(), !912)
    #dbg_value(ptr %y, !915, !DIExpression(), !912)
    #dbg_value(i32 52, !916, !DIExpression(), !912)
    #dbg_value(i32 9, !918, !DIExpression(), !912)
    #dbg_value(i64 1, !919, !DIExpression(), !922)
    #dbg_value(i64 72057594037927936, !919, !DIExpression(), !922)
    #dbg_value(i64 72057594037927935, !919, !DIExpression(), !922)
    #dbg_value(i32 0, !923, !DIExpression(), !925)
  br label %for.cond, !dbg !926

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !927
    #dbg_value(i32 %i.0, !923, !DIExpression(), !925)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !928
  br i1 %exitcond, label %for.body, label %for.end, !dbg !930

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 72, !dbg !931
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !931
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !931
  %1 = load i64, ptr %arrayidx, align 8, !dbg !933
  %and = and i64 %1, 72057594037927935, !dbg !933
  store i64 %and, ptr %arrayidx, align 8, !dbg !933
  %inc = add nuw nsw i32 %i.0, 1, !dbg !934
    #dbg_value(i32 %inc, !923, !DIExpression(), !925)
  br label %for.cond, !dbg !935, !llvm.loop !936

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !938, !DIExpression(), !939)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %temp, i8 0, i32 72, i1 false), !dbg !939
    #dbg_value(ptr %temp, !940, !DIExpression(), !912)
    #dbg_value(i32 11, !941, !DIExpression(), !943)
  br label %for.cond3, !dbg !944

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 11, %for.end ], [ %dec78, %for.inc77 ], !dbg !945
    #dbg_value(i32 %i2.0, !941, !DIExpression(), !943)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !946
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !948

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !949

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !952

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !954
    #dbg_value(i32 %j.0, !955, !DIExpression(), !956)
  %exitcond10 = icmp ne i32 %j.0, 12, !dbg !957
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !949

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !959
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !959
  %shr = lshr i64 %2, 52, !dbg !961
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !962
    #dbg_value(i8 %rem1, !963, !DIExpression(), !964)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !965
  %shl11 = shl i64 %2, 4, !dbg !966
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !966
    #dbg_value(i32 7, !967, !DIExpression(), !969)
  br label %for.cond12, !dbg !970

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 7, %for.body8 ], [ %dec, %for.body15 ], !dbg !971
    #dbg_value(i32 %k.0, !967, !DIExpression(), !969)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !972
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !974

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !962
  br label %for.cond24, !dbg !975

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !977
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !977
  %shr17 = lshr i64 %3, 60, !dbg !979
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !980
  %arrayidx19 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %add18, !dbg !981
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !982
  %xor = xor i64 %4, %shr17, !dbg !982
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !982
  %arrayidx20 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !983
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !984
  %shl21 = shl i64 %5, 4, !dbg !984
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !984
  %dec = add nsw i32 %k.0, -1, !dbg !985
    #dbg_value(i32 %dec, !967, !DIExpression(), !969)
  br label %for.cond12, !dbg !986, !llvm.loop !987

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !989
    #dbg_value(i32 %jj.0, !990, !DIExpression(), !991)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !992
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !975

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !994

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !996
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !999
  br i1 %cmp29, label %if.then, label %if.else, !dbg !999

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1000
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1000
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #6, !dbg !1002
  %div = lshr exact i32 %jj.0, 1, !dbg !1003
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1004
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1005
  %xor356 = xor i8 %7, %call, !dbg !1005
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1005
  br label %for.inc46, !dbg !1006

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1007
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1007
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #6, !dbg !1009
  %shl40 = shl nuw i8 %call38, 4, !dbg !1010
  %div415 = lshr i32 %jj.0, 1, !dbg !1011
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1012
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1013
  %xor44 = xor i8 %shl40, %9, !dbg !1013
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1013
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1014
    #dbg_value(i32 %inc47, !990, !DIExpression(), !991)
  br label %for.cond24, !dbg !1015, !llvm.loop !1016

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1018
    #dbg_value(i32 %k49.0, !1019, !DIExpression(), !1020)
  %exitcond9 = icmp ne i32 %k49.0, 9, !dbg !1021
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !994

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 12, !dbg !1023
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1025
  %.idx = mul nsw i32 %add55, 72, !dbg !1026
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1026
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1026
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1026
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1027
  %mul62 = mul nuw nsw i32 %j.0, 12, !dbg !1028
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1029
  %.idx4 = mul nsw i32 %add63, 72, !dbg !1030
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1030
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1030
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1030
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1031
  %xor68 = xor i64 %11, %mul67, !dbg !1032
  %arrayidx69 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1033
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1034
  %xor70 = xor i64 %14, %xor68, !dbg !1034
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1034
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1035
    #dbg_value(i32 %inc72, !1019, !DIExpression(), !1020)
  br label %for.cond50, !dbg !1036, !llvm.loop !1037

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1039
    #dbg_value(i32 %inc75, !955, !DIExpression(), !956)
  br label %for.cond6, !dbg !1040, !llvm.loop !1041

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1043
    #dbg_value(i32 %dec78, !941, !DIExpression(), !943)
  br label %for.cond3, !dbg !1044, !llvm.loop !1045

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1047
    #dbg_value(i32 %i80.0, !1048, !DIExpression(), !1049)
  %cmp82 = icmp samesign ult i32 %i80.0, 142, !dbg !1050
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !952

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1052
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1052
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1054
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1055
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1055
  %17 = and i8 %16, 15, !dbg !1056
  %xor912 = xor i8 %15, %17, !dbg !1057
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1058
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1059
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1060
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1061
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1061
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1062
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1063
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1063
  %20 = lshr i8 %19, 4, !dbg !1064
  %xor1013 = xor i8 %18, %20, !dbg !1065
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1066
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1067
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1068
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1069
    #dbg_value(i32 %add106, !1048, !DIExpression(), !1049)
  br label %for.cond81, !dbg !1070, !llvm.loop !1071

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1073
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1074 {
entry:
  %A = alloca [2592 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1077, !DIExpression(), !1078)
    #dbg_value(ptr %VtL, !1079, !DIExpression(), !1078)
    #dbg_value(ptr %A_out, !1080, !DIExpression(), !1078)
    #dbg_value(i32 0, !1081, !DIExpression(), !1078)
    #dbg_value(i32 0, !1082, !DIExpression(), !1078)
    #dbg_value(i32 9, !1083, !DIExpression(), !1078)
    #dbg_declare(ptr %A, !1084, !DIExpression(), !1088)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20736) %A, i8 0, i32 20736, i1 false), !dbg !1088
    #dbg_value(i32 144, !1089, !DIExpression(), !1078)
    #dbg_value(i64 1, !1090, !DIExpression(), !1093)
    #dbg_value(i64 72057594037927936, !1090, !DIExpression(), !1093)
    #dbg_value(i64 72057594037927935, !1090, !DIExpression(), !1093)
    #dbg_value(i32 0, !1094, !DIExpression(), !1096)
  br label %for.cond, !dbg !1097

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1098
    #dbg_value(i32 %i.0, !1094, !DIExpression(), !1096)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !1099
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1101

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1102

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 72, !dbg !1104
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1104
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1104
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1106
  %and = and i64 %1, 72057594037927935, !dbg !1106
  store i64 %and, ptr %arrayidx, align 8, !dbg !1106
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1107
    #dbg_value(i32 %inc, !1094, !DIExpression(), !1096)
  br label %for.cond, !dbg !1108, !llvm.loop !1109

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1111
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1112
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1113
    #dbg_value(i32 %bits_to_shift.0, !1081, !DIExpression(), !1078)
    #dbg_value(i32 %words_to_shift.0, !1082, !DIExpression(), !1078)
    #dbg_value(i32 %i2.0, !1114, !DIExpression(), !1115)
  %exitcond8 = icmp ne i32 %i2.0, 12, !dbg !1116
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1102

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1118

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1121

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 11, %for.cond6.preheader ], !dbg !1123
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1078
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1078
    #dbg_value(i32 %bits_to_shift.1, !1081, !DIExpression(), !1078)
    #dbg_value(i32 %words_to_shift.1, !1082, !DIExpression(), !1078)
    #dbg_value(i32 %j.0, !1124, !DIExpression(), !1125)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1126
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1118

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 864, !dbg !1128
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1128
    #dbg_value(ptr %add.ptr, !1130, !DIExpression(), !1078)
    #dbg_value(i32 0, !1131, !DIExpression(), !1133)
  br label %for.cond11, !dbg !1134

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1135
    #dbg_value(i32 %c.0, !1131, !DIExpression(), !1133)
  %exitcond5 = icmp ne i32 %c.0, 12, !dbg !1136
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1138

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1139

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1142
    #dbg_value(i32 %k.0, !1143, !DIExpression(), !1144)
  %exitcond4 = icmp ne i32 %k.0, 9, !dbg !1145
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1139

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1147
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 72, !dbg !1147
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1147
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1147
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1149
  %shl20 = shl i64 %3, %sh_prom, !dbg !1149
  %mul21 = mul nuw nsw i32 %i2.0, 12, !dbg !1150
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1151
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1152
  %mul24 = mul i32 %add23, 144, !dbg !1153
  %add25 = add i32 %add22, %mul24, !dbg !1154
  %arrayidx26 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25, !dbg !1155
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1156
  %xor = xor i64 %4, %shl20, !dbg !1156
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1156
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1157
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1157

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1159
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 72, !dbg !1159
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1159
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1159
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1161
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1162
  %shr = lshr i64 %6, %sh_prom32, !dbg !1162
  %mul33 = mul nuw nsw i32 %i2.0, 12, !dbg !1163
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1164
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1165
  %7 = mul i32 %add35, 144, !dbg !1166
  %mul37 = add i32 %7, 144, !dbg !1166
  %add38 = add i32 %add34, %mul37, !dbg !1167
  %arrayidx39 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38, !dbg !1168
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1169
  %xor40 = xor i64 %8, %shr, !dbg !1169
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1169
  br label %for.inc41, !dbg !1170

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1171
    #dbg_value(i32 %inc42, !1143, !DIExpression(), !1144)
  br label %for.cond14, !dbg !1172, !llvm.loop !1173

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1175
    #dbg_value(i32 %inc45, !1131, !DIExpression(), !1133)
  br label %for.cond11, !dbg !1176, !llvm.loop !1177

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1179
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1179

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 864, !dbg !1181
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1181
    #dbg_value(ptr %add.ptr51, !1183, !DIExpression(), !1078)
    #dbg_value(i32 0, !1184, !DIExpression(), !1186)
  br label %for.cond53, !dbg !1187

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1188
    #dbg_value(i32 %c52.0, !1184, !DIExpression(), !1186)
  %exitcond7 = icmp ne i32 %c52.0, 12, !dbg !1189
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1191

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1192

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1195
    #dbg_value(i32 %k56.0, !1196, !DIExpression(), !1197)
  %exitcond6 = icmp ne i32 %k56.0, 9, !dbg !1198
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1192

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1200
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1200
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1200
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1200
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1202
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1202
  %mul65 = mul nsw i32 %j.0, 12, !dbg !1203
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1204
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1205
  %mul68 = mul i32 %add67, 144, !dbg !1206
  %add69 = add i32 %add66, %mul68, !dbg !1207
  %arrayidx70 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69, !dbg !1208
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1209
  %xor71 = xor i64 %11, %shl64, !dbg !1209
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1209
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1210
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1210

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1212
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1212
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1212
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1212
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1214
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1215
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1215
  %mul80 = mul nsw i32 %j.0, 12, !dbg !1216
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1217
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1218
  %14 = mul i32 %add82, 144, !dbg !1219
  %mul84 = add i32 %14, 144, !dbg !1219
  %add85 = add i32 %add81, %mul84, !dbg !1220
  %arrayidx86 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85, !dbg !1221
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1222
  %xor87 = xor i64 %15, %shr79, !dbg !1222
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1222
  br label %for.inc89, !dbg !1223

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1224
    #dbg_value(i32 %inc90, !1196, !DIExpression(), !1197)
  br label %for.cond57, !dbg !1225, !llvm.loop !1226

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1228
    #dbg_value(i32 %inc93, !1184, !DIExpression(), !1186)
  br label %for.cond53, !dbg !1229, !llvm.loop !1230

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1232

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1232
    #dbg_value(i32 %add96, !1081, !DIExpression(), !1078)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1233
  %inc99 = zext i1 %cmp97 to i32, !dbg !1233
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1233
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1233
    #dbg_value(i32 %spec.select3, !1081, !DIExpression(), !1078)
    #dbg_value(i32 %spec.select, !1082, !DIExpression(), !1078)
  %dec = add nsw i32 %j.0, -1, !dbg !1235
    #dbg_value(i32 %dec, !1124, !DIExpression(), !1125)
  br label %for.cond6, !dbg !1236, !llvm.loop !1237

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1078
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1078
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1239
    #dbg_value(i32 %inc104, !1114, !DIExpression(), !1115)
  br label %for.cond3, !dbg !1240, !llvm.loop !1241

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1243
    #dbg_value(i32 %c106.0, !1244, !DIExpression(), !1245)
  %cmp109 = icmp samesign ult i32 %c106.0, 2016, !dbg !1246
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1121

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1248
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1250
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1251
    #dbg_value(i32 %add113, !1244, !DIExpression(), !1245)
  br label %for.cond107, !dbg !1252, !llvm.loop !1253

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1255, !DIExpression(), !1259)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1259
    #dbg_value(i32 0, !1260, !DIExpression(), !1262)
  br label %for.cond116, !dbg !1263

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1264
    #dbg_value(i32 %i115.0, !1260, !DIExpression(), !1262)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1265
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1267

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1268

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1270
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1270
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1272
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1273
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1274
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1275
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1276
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1277
  %add125 = or disjoint i32 %mul124, 1, !dbg !1278
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1279
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1280
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1281
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1281
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1282
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1283
  %add130 = or disjoint i32 %mul129, 2, !dbg !1284
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1285
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1286
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1287
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1287
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1288
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1289
  %add135 = or disjoint i32 %mul134, 3, !dbg !1290
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1291
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1292
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1293
    #dbg_value(i32 %inc138, !1260, !DIExpression(), !1262)
  br label %for.cond116, !dbg !1294, !llvm.loop !1295

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1297
    #dbg_value(i32 %c140.0, !1298, !DIExpression(), !1299)
  %cmp142 = icmp samesign ult i32 %c140.0, 144, !dbg !1300
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1268

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1302

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1305

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 142, %for.cond144.preheader ], !dbg !1307
    #dbg_value(i32 %r.0, !1308, !DIExpression(), !1309)
  %exitcond11 = icmp ne i32 %r.0, 220, !dbg !1310
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1302

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1312
  %mul147 = mul nuw nsw i32 %div1, 144, !dbg !1314
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1315
  %rem = and i32 %r.0, 15, !dbg !1316
  %add149 = or disjoint i32 %add148, %rem, !dbg !1317
    #dbg_value(i32 %add149, !1318, !DIExpression(), !1319)
  %arrayidx150 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1320
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1320
  %and151 = and i64 %19, 1229782938247303441, !dbg !1321
    #dbg_value(i64 %and151, !1322, !DIExpression(), !1319)
  %shr153 = lshr i64 %19, 1, !dbg !1323
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1324
    #dbg_value(i64 %and154, !1325, !DIExpression(), !1319)
  %shr156 = lshr i64 %19, 2, !dbg !1326
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1327
    #dbg_value(i64 %and157, !1328, !DIExpression(), !1319)
  %arrayidx158 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1329
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1329
  %shr159 = lshr i64 %20, 3, !dbg !1330
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1331
    #dbg_value(i64 %and160, !1332, !DIExpression(), !1319)
    #dbg_value(i32 0, !1333, !DIExpression(), !1335)
  br label %for.cond161, !dbg !1336

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1337
    #dbg_value(i32 %t.0, !1333, !DIExpression(), !1335)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1338
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1340

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1341
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1343
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1343
  %conv = zext i8 %21 to i64, !dbg !1343
  %mul167 = mul i64 %and151, %conv, !dbg !1344
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1345
  %add169 = or disjoint i32 %mul168, 1, !dbg !1346
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1347
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1347
  %conv171 = zext i8 %22 to i64, !dbg !1347
  %mul172 = mul i64 %and154, %conv171, !dbg !1348
  %xor173 = xor i64 %mul167, %mul172, !dbg !1349
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1350
  %add175 = or disjoint i32 %mul174, 2, !dbg !1351
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1352
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1352
  %conv177 = zext i8 %23 to i64, !dbg !1352
  %mul178 = mul i64 %and157, %conv177, !dbg !1353
  %xor179 = xor i64 %xor173, %mul178, !dbg !1354
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1355
  %add181 = or disjoint i32 %mul180, 3, !dbg !1356
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1357
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1357
  %conv183 = zext i8 %24 to i64, !dbg !1357
  %mul184 = mul i64 %and160, %conv183, !dbg !1358
  %xor185 = xor i64 %xor179, %mul184, !dbg !1359
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1360
  %sub187 = add nsw i32 %add186, -142, !dbg !1361
  %div1882 = lshr i32 %sub187, 4, !dbg !1362
  %mul189 = mul i32 %div1882, 144, !dbg !1363
  %add190 = add i32 %mul189, %c140.0, !dbg !1364
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1365
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1366
  %rem193 = and i32 %sub192, 15, !dbg !1367
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1368
  %arrayidx195 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194, !dbg !1369
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1370
  %xor196 = xor i64 %25, %xor185, !dbg !1370
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1370
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1371
    #dbg_value(i32 %inc198, !1333, !DIExpression(), !1335)
  br label %for.cond161, !dbg !1372, !llvm.loop !1373

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1375
    #dbg_value(i32 %inc201, !1308, !DIExpression(), !1309)
  br label %for.cond144, !dbg !1376, !llvm.loop !1377

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1379
    #dbg_value(i32 %add204, !1298, !DIExpression(), !1299)
  br label %for.cond141, !dbg !1380, !llvm.loop !1381

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 142, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1383
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1383
    #dbg_value(i32 %r206.0, !1384, !DIExpression(), !1385)
  %cmp208 = icmp samesign ult i32 %r206.0, 142, !dbg !1386
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1305

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1388

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1391
    #dbg_value(i32 %c211.0, !1392, !DIExpression(), !1393)
  %cmp213 = icmp samesign ult i32 %c211.0, 144, !dbg !1394
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1388

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1396

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1399
    #dbg_value(i32 %i216.0, !1400, !DIExpression(), !1401)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1402
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1396

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 9, !dbg !1404
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1406
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1407
  %arrayidx226 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225, !dbg !1408
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1409
  %mul228 = mul nuw nsw i32 %add227, 145, !dbg !1410
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1411
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1412
  %cmp232 = icmp samesign ult i32 %c211.0, 128, !dbg !1413
  %sub234 = sub nuw nsw i32 144, %c211.0, !dbg !1413
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1413
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #6, !dbg !1414
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1415
    #dbg_value(i32 %inc236, !1400, !DIExpression(), !1401)
  br label %for.cond217, !dbg !1416, !llvm.loop !1417

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1419
    #dbg_value(i32 %add239, !1392, !DIExpression(), !1393)
  br label %for.cond212, !dbg !1420, !llvm.loop !1421

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1423
    #dbg_value(i32 %add242, !1384, !DIExpression(), !1385)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1424
  br label %for.cond207, !dbg !1424, !llvm.loop !1425

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1427
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1428 {
entry:
    #dbg_value(ptr %a, !1431, !DIExpression(), !1432)
    #dbg_value(ptr %b, !1433, !DIExpression(), !1432)
    #dbg_value(ptr %c, !1434, !DIExpression(), !1432)
    #dbg_value(i32 12, !1435, !DIExpression(), !1432)
    #dbg_value(i32 142, !1436, !DIExpression(), !1432)
    #dbg_value(i32 1, !1437, !DIExpression(), !1432)
    #dbg_value(i32 0, !1438, !DIExpression(), !1440)
  br label %for.cond, !dbg !1441

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1442
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1431, !DIExpression(), !1432)
    #dbg_value(ptr %c.addr.0, !1434, !DIExpression(), !1432)
    #dbg_value(i32 %i.0, !1438, !DIExpression(), !1440)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1443
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1445

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1446

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1449
    #dbg_value(i32 poison, !1450, !DIExpression(), !1451)
    #dbg_value(ptr %c.addr.1, !1434, !DIExpression(), !1432)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1446

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 12, i32 noundef 1) #6, !dbg !1452
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1455
    #dbg_value(i32 1, !1450, !DIExpression(), !1451)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1456
    #dbg_value(ptr %incdec.ptr, !1434, !DIExpression(), !1432)
  br label %for.cond1, !dbg !1457, !llvm.loop !1458

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1460
    #dbg_value(i32 %inc5, !1438, !DIExpression(), !1440)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 12, !dbg !1461
    #dbg_value(ptr %add.ptr6, !1431, !DIExpression(), !1432)
  br label %for.cond, !dbg !1462, !llvm.loop !1463

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1465
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1466 {
entry:
    #dbg_value(ptr %a, !1469, !DIExpression(), !1470)
    #dbg_value(ptr %b, !1471, !DIExpression(), !1470)
    #dbg_value(ptr %c, !1472, !DIExpression(), !1470)
    #dbg_value(i32 142, !1473, !DIExpression(), !1470)
    #dbg_value(i32 1, !1474, !DIExpression(), !1470)
    #dbg_value(i32 0, !1475, !DIExpression(), !1477)
  br label %for.cond, !dbg !1478

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1479
    #dbg_value(i32 %i.0, !1475, !DIExpression(), !1477)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1480
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1482

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1483, !DIExpression(), !1486)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1487
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1490
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1491
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1492
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1493
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1494
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1495
    #dbg_value(i32 1, !1483, !DIExpression(), !1486)
    #dbg_value(i32 poison, !1483, !DIExpression(), !1486)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1496
    #dbg_value(i32 %inc12, !1475, !DIExpression(), !1477)
  br label %for.cond, !dbg !1497, !llvm.loop !1498

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1500
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1501 {
entry:
    #dbg_value(ptr %m, !1502, !DIExpression(), !1503)
    #dbg_value(ptr %menc, !1504, !DIExpression(), !1503)
    #dbg_value(i32 1848, !1505, !DIExpression(), !1503)
    #dbg_value(i32 0, !1506, !DIExpression(), !1503)
  br label %for.cond, !dbg !1507

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1509
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1502, !DIExpression(), !1503)
    #dbg_value(i32 %i.0, !1506, !DIExpression(), !1503)
  %exitcond = icmp ne i32 %i.0, 924, !dbg !1510
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1512

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1513
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1515
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1516
  %shl = shl i8 %1, 4, !dbg !1517
  %or = or i8 %shl, %0, !dbg !1518
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1519
  store i8 %or, ptr %arrayidx, align 1, !dbg !1520
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1521
    #dbg_value(i32 %inc, !1506, !DIExpression(), !1503)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1522
    #dbg_value(ptr %add.ptr3, !1502, !DIExpression(), !1503)
  br label %for.cond, !dbg !1523, !llvm.loop !1524

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1526
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1527 {
entry:
    #dbg_value(i8 %a, !1530, !DIExpression(), !1531)
    #dbg_value(i8 %b, !1532, !DIExpression(), !1531)
  %xor1 = xor i8 %a, %b, !dbg !1533
  ret i8 %xor1, !dbg !1534
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1535 {
entry:
    #dbg_value(ptr %a, !1538, !DIExpression(), !1539)
    #dbg_value(ptr %b, !1540, !DIExpression(), !1539)
    #dbg_value(i32 12, !1541, !DIExpression(), !1539)
    #dbg_value(i32 1, !1542, !DIExpression(), !1539)
    #dbg_value(i8 0, !1543, !DIExpression(), !1539)
    #dbg_value(i32 0, !1544, !DIExpression(), !1546)
  br label %for.cond, !dbg !1547

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1539
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1548
    #dbg_value(i32 %i.0, !1544, !DIExpression(), !1546)
    #dbg_value(ptr %b.addr.0, !1540, !DIExpression(), !1539)
    #dbg_value(i8 %ret.0, !1543, !DIExpression(), !1539)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !1549
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1551

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1552
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1552
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1554
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1555
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1556
    #dbg_value(i8 %call1, !1543, !DIExpression(), !1539)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1557
    #dbg_value(i32 %inc, !1544, !DIExpression(), !1546)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1558
    #dbg_value(ptr %add.ptr, !1540, !DIExpression(), !1539)
  br label %for.cond, !dbg !1559, !llvm.loop !1560

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1539
  ret i8 %ret.0.lcssa, !dbg !1562
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1563 {
entry:
    #dbg_value(i8 %a, !1564, !DIExpression(), !1565)
    #dbg_value(i8 %b, !1566, !DIExpression(), !1565)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !1567
  %xor1 = xor i8 %a, %0, !dbg !1568
    #dbg_value(i8 %xor1, !1564, !DIExpression(), !1565)
  %1 = trunc i8 %xor1 to i1, !dbg !1569
    #dbg_value(i8 poison, !1570, !DIExpression(), !1565)
  %2 = and i8 %xor1, 2, !dbg !1571
  %mul9 = mul i8 %2, %b, !dbg !1572
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1569
  %xor11 = xor i8 %conv10, %mul9, !dbg !1573
    #dbg_value(i8 %xor11, !1570, !DIExpression(), !1565)
  %3 = and i8 %xor1, 4, !dbg !1574
  %mul16 = mul i8 %3, %b, !dbg !1575
  %xor18 = xor i8 %mul16, %xor11, !dbg !1576
    #dbg_value(i8 %xor18, !1570, !DIExpression(), !1565)
  %4 = and i8 %xor1, 8, !dbg !1577
  %mul23 = mul i8 %4, %b, !dbg !1578
  %xor25 = xor i8 %mul23, %xor18, !dbg !1579
    #dbg_value(i8 %xor25, !1570, !DIExpression(), !1565)
    #dbg_value(i8 %xor25, !1580, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1565)
  %5 = lshr i8 %xor25, 4, !dbg !1581
  %6 = lshr i8 %xor25, 3, !dbg !1582
  %7 = and i8 %6, 14, !dbg !1582
  %8 = xor i8 %5, %7, !dbg !1583
  %xor25.masked = and i8 %xor25, 15, !dbg !1584
  %9 = xor i8 %8, %xor25.masked, !dbg !1584
    #dbg_value(i8 %9, !1585, !DIExpression(), !1565)
  ret i8 %9, !dbg !1586
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1587, !DIExpression(), !1588)
    #dbg_value(i32 0, !1589, !DIExpression(), !1591)
  br label %for.cond, !dbg !1592

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1593
    #dbg_value(i32 %i.0, !1589, !DIExpression(), !1591)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1594
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1596

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1597

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1599
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1599
  %shr = lshr i64 %0, 4, !dbg !1601
  %add = or disjoint i32 %i.0, 1, !dbg !1602
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1603
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1603
  %xor = xor i64 %shr, %1, !dbg !1604
  %and = and i64 %xor, 1085102592571150095, !dbg !1605
    #dbg_value(i64 %and, !1606, !DIExpression(), !1607)
  %shl = shl nuw i64 %and, 4, !dbg !1608
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1609
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1610
  %xor3 = xor i64 %2, %shl, !dbg !1610
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1610
  %add4 = or disjoint i32 %i.0, 1, !dbg !1611
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1612
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1613
  %xor6 = xor i64 %3, %and, !dbg !1613
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1613
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1614
    #dbg_value(i32 %add7, !1589, !DIExpression(), !1591)
  br label %for.cond, !dbg !1615, !llvm.loop !1616

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1618
    #dbg_value(i32 %i8.0, !1619, !DIExpression(), !1620)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1621
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1597

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1623

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1625
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1625
  %shr13 = lshr i64 %4, 8, !dbg !1627
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1628
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1629
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1629
  %xor16 = xor i64 %shr13, %5, !dbg !1630
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1631
    #dbg_value(i64 %and17, !1632, !DIExpression(), !1633)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1634
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1635
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1635
  %shr20 = lshr i64 %6, 8, !dbg !1636
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1637
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1638
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1638
  %xor23 = xor i64 %shr20, %7, !dbg !1639
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1640
    #dbg_value(i64 %and24, !1641, !DIExpression(), !1633)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1642
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1643
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1644
  %xor27 = xor i64 %8, %shl25, !dbg !1644
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1644
  %shl28 = shl nuw i64 %and24, 8, !dbg !1645
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1646
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1647
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1648
  %xor31 = xor i64 %9, %shl28, !dbg !1648
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1648
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1649
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1650
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1651
  %xor34 = xor i64 %10, %and17, !dbg !1651
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1651
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1652
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1653
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1654
  %xor37 = xor i64 %11, %and24, !dbg !1654
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1654
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1655
    #dbg_value(i32 %add39, !1619, !DIExpression(), !1620)
  br label %for.cond9, !dbg !1656, !llvm.loop !1657

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1659
    #dbg_value(i32 %i41.0, !1660, !DIExpression(), !1661)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1662
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1623

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1664

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1666
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1666
  %shr47 = lshr i64 %12, 16, !dbg !1668
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1669
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1670
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1670
  %xor50 = xor i64 %shr47, %13, !dbg !1671
  %and51 = and i64 %xor50, 281470681808895, !dbg !1672
    #dbg_value(i64 %and51, !1673, !DIExpression(), !1674)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1675
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1676
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1676
  %shr55 = lshr i64 %14, 16, !dbg !1677
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1678
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1679
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1679
  %xor58 = xor i64 %shr55, %15, !dbg !1680
  %and59 = and i64 %xor58, 281470681808895, !dbg !1681
    #dbg_value(i64 %and59, !1682, !DIExpression(), !1674)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1683
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1684
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1685
  %xor62 = xor i64 %16, %shl60, !dbg !1685
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1685
  %shl63 = shl nuw i64 %and59, 16, !dbg !1686
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1687
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1688
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1689
  %xor66 = xor i64 %17, %shl63, !dbg !1689
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1689
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1690
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1691
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1692
  %xor69 = xor i64 %18, %and51, !dbg !1692
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1692
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1693
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1694
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1695
  %xor72 = xor i64 %19, %and59, !dbg !1695
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1695
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1696
    #dbg_value(i32 %inc, !1660, !DIExpression(), !1661)
  br label %for.cond42, !dbg !1697, !llvm.loop !1698

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1700
    #dbg_value(i32 %i75.0, !1701, !DIExpression(), !1702)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1703
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1664

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1705
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1705
  %shr81 = lshr i64 %20, 32, !dbg !1707
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1708
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1709
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1709
  %.masked = and i64 %21, 4294967295, !dbg !1710
  %and85 = xor i64 %shr81, %.masked, !dbg !1710
    #dbg_value(i64 %and85, !1711, !DIExpression(), !1712)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1713
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1714
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1715
  %xor88 = xor i64 %22, %shl86, !dbg !1715
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1715
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1716
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1717
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1718
  %xor91 = xor i64 %23, %and85, !dbg !1718
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1718
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1719
    #dbg_value(i32 %inc93, !1701, !DIExpression(), !1702)
  br label %for.cond76, !dbg !1720, !llvm.loop !1721

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1723
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1724 {
entry:
    #dbg_value(i32 9, !1725, !DIExpression(), !1726)
    #dbg_value(ptr %mat, !1727, !DIExpression(), !1726)
    #dbg_value(ptr %bs_mat, !1728, !DIExpression(), !1726)
    #dbg_value(ptr %acc, !1729, !DIExpression(), !1726)
    #dbg_value(i32 12, !1730, !DIExpression(), !1726)
    #dbg_value(i32 142, !1731, !DIExpression(), !1726)
    #dbg_value(i32 12, !1732, !DIExpression(), !1726)
    #dbg_value(i32 0, !1733, !DIExpression(), !1735)
  br label %for.cond, !dbg !1736

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1737
    #dbg_value(i32 %r.0, !1733, !DIExpression(), !1735)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !1738
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1740

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1741

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1744
    #dbg_value(i32 %c.0, !1745, !DIExpression(), !1746)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !1747
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1741

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1749

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1752
    #dbg_value(i32 %k.0, !1753, !DIExpression(), !1754)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1755
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1749

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !1757
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1759
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !1760
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1760
  %mul8 = mul nuw nsw i32 %r.0, 142, !dbg !1761
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1762
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1762
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1762
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !1763
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1764
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !1765
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1765
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1766
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1767
    #dbg_value(i32 %add14, !1753, !DIExpression(), !1754)
  br label %for.cond4, !dbg !1768, !llvm.loop !1769

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1771
    #dbg_value(i32 %inc, !1745, !DIExpression(), !1746)
  br label %for.cond1, !dbg !1772, !llvm.loop !1773

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1775
    #dbg_value(i32 %inc18, !1733, !DIExpression(), !1735)
  br label %for.cond, !dbg !1776, !llvm.loop !1777

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1779
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1780 {
entry:
    #dbg_value(ptr %p, !1781, !DIExpression(), !1782)
    #dbg_value(ptr %P1, !1783, !DIExpression(), !1782)
    #dbg_value(ptr %V, !1784, !DIExpression(), !1782)
    #dbg_value(ptr %acc, !1785, !DIExpression(), !1782)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 9, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #6, !dbg !1786
  ret void, !dbg !1787
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1788 {
entry:
    #dbg_value(i32 9, !1789, !DIExpression(), !1790)
    #dbg_value(ptr %bs_mat, !1791, !DIExpression(), !1790)
    #dbg_value(ptr %mat, !1792, !DIExpression(), !1790)
    #dbg_value(ptr %acc, !1793, !DIExpression(), !1790)
    #dbg_value(i32 142, !1794, !DIExpression(), !1790)
    #dbg_value(i32 142, !1795, !DIExpression(), !1790)
    #dbg_value(i32 12, !1796, !DIExpression(), !1790)
    #dbg_value(i32 1, !1797, !DIExpression(), !1790)
    #dbg_value(i32 0, !1798, !DIExpression(), !1790)
    #dbg_value(i32 0, !1799, !DIExpression(), !1801)
  br label %for.cond, !dbg !1802

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !1803
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1803
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1804
    #dbg_value(i32 %r.0, !1799, !DIExpression(), !1801)
    #dbg_value(i32 %bs_mat_entries_used.0, !1798, !DIExpression(), !1790)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !1805
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1807

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1808
  br label %for.cond1, !dbg !1808

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1790
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1811
    #dbg_value(i32 %c.0, !1812, !DIExpression(), !1813)
    #dbg_value(i32 %bs_mat_entries_used.1, !1798, !DIExpression(), !1790)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1814
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1808

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1816

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1819
    #dbg_value(i32 %k.0, !1820, !DIExpression(), !1821)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1822
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1816

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !1824
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1824
  %mul8 = mul nuw nsw i32 %k.0, 142, !dbg !1826
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1827
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1827
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1827
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !1828
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1829
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !1830
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1830
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1831
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1832
    #dbg_value(i32 %add13, !1820, !DIExpression(), !1821)
  br label %for.cond4, !dbg !1833, !llvm.loop !1834

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1798, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1790)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1836
    #dbg_value(i32 %add14, !1798, !DIExpression(), !1790)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1837
    #dbg_value(i32 %inc, !1812, !DIExpression(), !1813)
  br label %for.cond1, !dbg !1838, !llvm.loop !1839

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1790
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1841
    #dbg_value(i32 %inc18, !1799, !DIExpression(), !1801)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1842
  br label %for.cond, !dbg !1842, !llvm.loop !1843

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1845
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1846 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1847, !DIExpression(), !1848)
    #dbg_value(ptr %sm, !1849, !DIExpression(), !1848)
    #dbg_value(ptr %smlen, !1850, !DIExpression(), !1848)
    #dbg_value(ptr %m, !1851, !DIExpression(), !1848)
    #dbg_value(i32 %mlen, !1852, !DIExpression(), !1848)
    #dbg_value(ptr %csk, !1853, !DIExpression(), !1848)
    #dbg_value(i32 0, !1854, !DIExpression(), !1848)
    #dbg_value(i32 964, !1855, !DIExpression(), !1848)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1856
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1857
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1858
    #dbg_value(ptr %siglen, !1859, !DIExpression(DW_OP_deref), !1848)
  %call2 = call i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1860
    #dbg_value(i32 %call2, !1854, !DIExpression(), !1848)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1861
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1859, !DIExpression(), !1848)
  %cmp3.not = icmp eq i32 %0, 964
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1863
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1863

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1864
    #dbg_value(i32 %1, !1859, !DIExpression(), !1848)
  %add = add i32 %1, %mlen, !dbg !1866
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1867
  br label %err, !dbg !1868

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1869
    #dbg_value(i32 %2, !1859, !DIExpression(), !1848)
  %add5 = add i32 %2, %mlen, !dbg !1870
  store i32 %add5, ptr %smlen, align 4, !dbg !1871
  br label %err, !dbg !1872

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1873, !1874)
  ret i32 %call2, !dbg !1875
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1876 {
entry:
    #dbg_value(ptr %p, !1877, !DIExpression(), !1878)
    #dbg_value(ptr %m, !1879, !DIExpression(), !1878)
    #dbg_value(ptr %mlen, !1880, !DIExpression(), !1878)
    #dbg_value(ptr %sm, !1881, !DIExpression(), !1878)
    #dbg_value(i32 %smlen, !1882, !DIExpression(), !1878)
    #dbg_value(ptr %pk, !1883, !DIExpression(), !1878)
    #dbg_value(i32 964, !1884, !DIExpression(), !1878)
  %cmp = icmp ult i32 %smlen, 964, !dbg !1885
  br i1 %cmp, label %return, label %if.end, !dbg !1885

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1887
  %sub = add i32 %smlen, -964, !dbg !1888
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1889
    #dbg_value(i32 %call, !1890, !DIExpression(), !1878)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1891
  br i1 %cmp1, label %if.then2, label %return, !dbg !1891

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -964, !dbg !1893
  store i32 %sub3, ptr %mlen, align 4, !dbg !1895
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1896
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1897
  br label %return, !dbg !1898

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1878
  ret i32 %retval.0, !dbg !1899
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1900 {
entry:
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [107415 x i64], align 8
  %tmp = alloca [104 x i8], align 1
    #dbg_value(ptr %p, !1903, !DIExpression(), !1904)
    #dbg_value(ptr %m, !1905, !DIExpression(), !1904)
    #dbg_value(i32 %mlen, !1906, !DIExpression(), !1904)
    #dbg_value(ptr %sig, !1907, !DIExpression(), !1904)
    #dbg_value(ptr %cpk, !1908, !DIExpression(), !1904)
    #dbg_declare(ptr %tEnc, !1909, !DIExpression(), !1910)
    #dbg_declare(ptr %t, !1911, !DIExpression(), !1912)
    #dbg_declare(ptr %y, !1913, !DIExpression(), !1917)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(284) %y, i8 0, i32 284, i1 false), !dbg !1917
    #dbg_declare(ptr %s, !1918, !DIExpression(), !1919)
    #dbg_declare(ptr %pk, !1920, !DIExpression(), !1921)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(859320) %pk, i8 0, i32 859320, i1 false), !dbg !1921
    #dbg_declare(ptr %tmp, !1922, !DIExpression(), !1926)
    #dbg_value(i32 142, !1927, !DIExpression(), !1904)
    #dbg_value(i32 154, !1928, !DIExpression(), !1904)
    #dbg_value(i32 12, !1929, !DIExpression(), !1904)
    #dbg_value(i32 71, !1930, !DIExpression(), !1904)
    #dbg_value(i32 964, !1931, !DIExpression(), !1904)
    #dbg_value(i32 64, !1932, !DIExpression(), !1904)
    #dbg_value(i32 40, !1933, !DIExpression(), !1904)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1934
    #dbg_value(i32 0, !1935, !DIExpression(), !1904)
    #dbg_value(ptr %pk, !1936, !DIExpression(), !1904)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 731016, !dbg !1937
    #dbg_value(ptr %add.ptr, !1938, !DIExpression(), !1904)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1939
    #dbg_value(ptr %add.ptr2, !1940, !DIExpression(), !1904)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1941
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !1942
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !1943
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 40) #8, !dbg !1944
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #8, !dbg !1945
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !1946
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1848) #6, !dbg !1947
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1948
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 142) #8, !dbg !1949
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1951
  %. = zext i1 %cmp21 to i32, !dbg !1904
  ret i32 %., !dbg !1952
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1953 {
entry:
    #dbg_value(ptr %p, !1954, !DIExpression(), !1955)
    #dbg_value(ptr %cpk, !1956, !DIExpression(), !1955)
    #dbg_value(ptr %pk, !1957, !DIExpression(), !1955)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1958
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1959
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1960
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 78, i32 noundef 142) #6, !dbg !1961
  ret i32 0, !dbg !1962
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1963 {
entry:
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !1966, !DIExpression(), !1967)
    #dbg_value(ptr %s, !1968, !DIExpression(), !1967)
    #dbg_value(ptr %P1, !1969, !DIExpression(), !1967)
    #dbg_value(ptr %P2, !1970, !DIExpression(), !1967)
    #dbg_value(ptr %P3, !1971, !DIExpression(), !1967)
    #dbg_value(ptr %eval, !1972, !DIExpression(), !1967)
    #dbg_declare(ptr %SPS, !1973, !DIExpression(), !1974)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %SPS, i8 0, i32 10368, i1 false), !dbg !1974
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1975
    #dbg_declare(ptr %zero, !1976, !DIExpression(), !1977)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(142) %zero, i8 0, i32 142, i1 false), !dbg !1977
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1978
  ret void, !dbg !1979
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !1980 {
entry:
  %PS = alloca [16632 x i64], align 8
    #dbg_value(ptr %p, !1983, !DIExpression(), !1984)
    #dbg_value(ptr %P1, !1985, !DIExpression(), !1984)
    #dbg_value(ptr %P2, !1986, !DIExpression(), !1984)
    #dbg_value(ptr %P3, !1987, !DIExpression(), !1984)
    #dbg_value(ptr %s, !1988, !DIExpression(), !1984)
    #dbg_value(ptr %SPS, !1989, !DIExpression(), !1984)
    #dbg_declare(ptr %PS, !1990, !DIExpression(), !1994)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(133056) %PS, i8 0, i32 133056, i1 false), !dbg !1994
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 12, ptr noundef nonnull %PS) #6, !dbg !1995
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 142, i32 noundef 12, i32 noundef 154, ptr noundef %SPS) #6, !dbg !1996
  ret void, !dbg !1997
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !1998 {
entry:
  %accumulator = alloca [266112 x i64], align 8
    #dbg_value(ptr %P1, !2001, !DIExpression(), !2002)
    #dbg_value(ptr %P2, !2003, !DIExpression(), !2002)
    #dbg_value(ptr %P3, !2004, !DIExpression(), !2002)
    #dbg_value(ptr %S, !2005, !DIExpression(), !2002)
    #dbg_value(i32 142, !2006, !DIExpression(), !2002)
    #dbg_value(i32 142, !2007, !DIExpression(), !2002)
    #dbg_value(i32 12, !2008, !DIExpression(), !2002)
    #dbg_value(i32 12, !2009, !DIExpression(), !2002)
    #dbg_value(ptr %PS, !2010, !DIExpression(), !2002)
    #dbg_value(i32 154, !2011, !DIExpression(), !2002)
    #dbg_value(i32 9, !2012, !DIExpression(), !2002)
    #dbg_declare(ptr %accumulator, !2013, !DIExpression(), !2017)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2128896) %accumulator, i8 0, i32 2128896, i1 false), !dbg !2017
    #dbg_value(i32 0, !2018, !DIExpression(), !2002)
    #dbg_value(i32 0, !2019, !DIExpression(), !2021)
  br label %for.cond, !dbg !2022

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 142, %entry ], !dbg !2023
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2023
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2024
    #dbg_value(i32 %row.0, !2019, !DIExpression(), !2021)
    #dbg_value(i32 %P1_used.0, !2018, !DIExpression(), !2002)
  %exitcond4 = icmp ne i32 %row.0, 142, !dbg !2025
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2027

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2028
  br label %for.cond2, !dbg !2028

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2031

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2002
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2033
    #dbg_value(i32 %j.0, !2034, !DIExpression(), !2035)
    #dbg_value(i32 %P1_used.1, !2018, !DIExpression(), !2002)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2036
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2028

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2002
  br label %for.cond21, !dbg !2038

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2040

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2043
    #dbg_value(i32 %col.0, !2044, !DIExpression(), !2045)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2046
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2040

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 72, !dbg !2048
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2048
  %mul8 = mul nuw nsw i32 %row.0, 12, !dbg !2050
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2051
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2052
  %mul11 = mul nuw nsw i32 %col.0, 154, !dbg !2053
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2054
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2054
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2054
  %conv = zext i8 %2 to i32, !dbg !2054
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2055
  %add.ptr15.idx = mul nuw nsw i32 %add13, 72, !dbg !2056
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2056
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2057
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2058
    #dbg_value(i32 %inc, !2044, !DIExpression(), !2045)
  br label %for.cond5, !dbg !2059, !llvm.loop !2060

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2018, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2002)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2062
    #dbg_value(i32 %inc16, !2018, !DIExpression(), !2002)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2063
    #dbg_value(i32 %inc18, !2034, !DIExpression(), !2035)
  br label %for.cond2, !dbg !2064, !llvm.loop !2065

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2067
    #dbg_value(i32 %j20.0, !2068, !DIExpression(), !2069)
  %exitcond3 = icmp ne i32 %j20.0, 12, !dbg !2070
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2038

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2072

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2075
    #dbg_value(i32 %col25.0, !2076, !DIExpression(), !2077)
  %exitcond2 = icmp ne i32 %col25.0, 12, !dbg !2078
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2072

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 12, !dbg !2080
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2082
  %add.ptr33.idx = mul nuw nsw i32 %add31, 72, !dbg !2083
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2083
  %mul35 = mul nuw nsw i32 %row.0, 12, !dbg !2084
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2085
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2086
  %mul38 = mul nuw nsw i32 %col25.0, 154, !dbg !2087
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2088
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2088
  %arrayidx41 = getelementptr i8, ptr %4, i32 142, !dbg !2088
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2088
  %conv42 = zext i8 %5 to i32, !dbg !2088
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2089
  %add.ptr45.idx = mul nuw nsw i32 %add43, 72, !dbg !2090
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2090
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2091
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2092
    #dbg_value(i32 %inc47, !2076, !DIExpression(), !2077)
  br label %for.cond26, !dbg !2093, !llvm.loop !2094

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2096
    #dbg_value(i32 %inc50, !2068, !DIExpression(), !2069)
  br label %for.cond21, !dbg !2097, !llvm.loop !2098

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2100
    #dbg_value(i32 %inc53, !2019, !DIExpression(), !2021)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2101
  br label %for.cond, !dbg !2101, !llvm.loop !2102

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 12, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2104
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2104
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 142, %for.cond56.preheader ], !dbg !2105
    #dbg_value(i32 %row55.0, !2106, !DIExpression(), !2107)
    #dbg_value(i32 %P3_used.0, !2108, !DIExpression(), !2002)
  %exitcond9 = icmp ne i32 %row55.0, 154, !dbg !2109
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2031

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2111
  br label %for.cond61, !dbg !2111

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2114

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2002
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2115
    #dbg_value(i32 %j60.0, !2116, !DIExpression(), !2117)
    #dbg_value(i32 %P3_used.1, !2108, !DIExpression(), !2002)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2118
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2111

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2120

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2123
    #dbg_value(i32 %col65.0, !2124, !DIExpression(), !2125)
  %exitcond5 = icmp ne i32 %col65.0, 12, !dbg !2126
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2120

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 72, !dbg !2128
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2128
  %mul73 = mul nuw nsw i32 %row55.0, 12, !dbg !2130
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2131
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2132
  %mul76 = mul nuw nsw i32 %col65.0, 154, !dbg !2133
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2134
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2134
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2134
  %conv79 = zext i8 %8 to i32, !dbg !2134
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2135
  %add.ptr82.idx = mul nuw nsw i32 %add80, 72, !dbg !2136
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2136
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2137
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2138
    #dbg_value(i32 %inc84, !2124, !DIExpression(), !2125)
  br label %for.cond66, !dbg !2139, !llvm.loop !2140

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2108, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2002)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2142
    #dbg_value(i32 %inc86, !2108, !DIExpression(), !2002)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2143
    #dbg_value(i32 %inc88, !2116, !DIExpression(), !2117)
  br label %for.cond61, !dbg !2144, !llvm.loop !2145

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2002
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2147
    #dbg_value(i32 %inc91, !2106, !DIExpression(), !2107)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2148
  br label %for.cond56, !dbg !2148, !llvm.loop !2149

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2002
    #dbg_value(i32 %i.0, !2151, !DIExpression(), !2002)
  %exitcond10 = icmp ne i32 %i.0, 1848, !dbg !2152
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2114

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2153
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2153
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 72, !dbg !2155
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2155
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2156
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2157
    #dbg_value(i32 %inc102, !2151, !DIExpression(), !2002)
  br label %while.cond, !dbg !2114, !llvm.loop !2158

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2160
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2161 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %PS, !2164, !DIExpression(), !2165)
    #dbg_value(ptr %S, !2166, !DIExpression(), !2165)
    #dbg_value(i32 142, !2167, !DIExpression(), !2165)
    #dbg_value(i32 12, !2168, !DIExpression(), !2165)
    #dbg_value(i32 154, !2169, !DIExpression(), !2165)
    #dbg_value(ptr %SPS, !2170, !DIExpression(), !2165)
    #dbg_declare(ptr %accumulator, !2171, !DIExpression(), !2175)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2175
    #dbg_value(i32 9, !2176, !DIExpression(), !2165)
    #dbg_value(i32 0, !2177, !DIExpression(), !2179)
  br label %for.cond, !dbg !2180

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2181
    #dbg_value(i32 %row.0, !2177, !DIExpression(), !2179)
  %exitcond2 = icmp ne i32 %row.0, 12, !dbg !2182
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2184

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2185

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2188

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2189
    #dbg_value(i32 %j.0, !2190, !DIExpression(), !2191)
  %exitcond1 = icmp ne i32 %j.0, 154, !dbg !2192
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2185

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2194

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2197
    #dbg_value(i32 %col.0, !2198, !DIExpression(), !2199)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2200
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2194

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 12, !dbg !2202
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2204
  %add.ptr.idx = mul nuw nsw i32 %add7, 72, !dbg !2205
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2205
  %mul9 = mul nuw nsw i32 %row.0, 12, !dbg !2206
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2207
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2208
  %mul12 = mul nuw nsw i32 %row.0, 154, !dbg !2209
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2210
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2210
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2210
  %conv = zext i8 %1 to i32, !dbg !2210
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2211
  %add.ptr16.idx = mul nuw nsw i32 %add14, 72, !dbg !2212
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2212
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2213
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2214
    #dbg_value(i32 %add17, !2198, !DIExpression(), !2199)
  br label %for.cond4, !dbg !2215, !llvm.loop !2216

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2218
    #dbg_value(i32 %inc, !2190, !DIExpression(), !2191)
  br label %for.cond1, !dbg !2219, !llvm.loop !2220

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2222
    #dbg_value(i32 %inc21, !2177, !DIExpression(), !2179)
  br label %for.cond, !dbg !2223, !llvm.loop !2224

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2165
    #dbg_value(i32 %i.0, !2226, !DIExpression(), !2165)
  %exitcond3 = icmp ne i32 %i.0, 144, !dbg !2227
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2188

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2228
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2228
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 72, !dbg !2230
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2230
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2231
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2232
    #dbg_value(i32 %inc32, !2226, !DIExpression(), !2165)
  br label %while.cond, !dbg !2188, !llvm.loop !2233

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2235
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2236 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2239, !DIExpression(), !2240)
    #dbg_value(ptr %in, !2241, !DIExpression(), !2240)
    #dbg_value(ptr %acc, !2242, !DIExpression(), !2240)
    #dbg_value(i32 0, !2243, !DIExpression(), !2245)
  br label %for.cond, !dbg !2246

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2247
    #dbg_value(i32 %i.0, !2243, !DIExpression(), !2245)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2248
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2250

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2251
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2251
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2253
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2254
  %xor = xor i64 %1, %0, !dbg !2254
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2254
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2255
    #dbg_value(i32 %inc, !2243, !DIExpression(), !2245)
  br label %for.cond, !dbg !2256, !llvm.loop !2257

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2259
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2260 {
entry:
    #dbg_value(i32 9, !2263, !DIExpression(), !2264)
    #dbg_value(ptr %bins, !2265, !DIExpression(), !2264)
    #dbg_value(ptr %out, !2266, !DIExpression(), !2264)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2267
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2268
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2269
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 792, !dbg !2270
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2271
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2272
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2273
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2274
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2275
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2276
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2277
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2278
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2279
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2280
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2281
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2282
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2283
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2284
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2285
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2286
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2287
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2288
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2289
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2290
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2291
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2292
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2293
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2294
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2295
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2296
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2297
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2298
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2299
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2300
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2301
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2302
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2303
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2304
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2305
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2306
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2307
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2308
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2309
  call fastcc void @m_vec_copy(i32 noundef 9, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2310
  ret void, !dbg !2311
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2312 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2313, !DIExpression(), !2314)
    #dbg_value(ptr %in, !2315, !DIExpression(), !2314)
    #dbg_value(ptr %acc, !2316, !DIExpression(), !2314)
    #dbg_value(i64 1229782938247303441, !2317, !DIExpression(), !2314)
    #dbg_value(i32 0, !2318, !DIExpression(), !2320)
  br label %for.cond, !dbg !2321

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2322
    #dbg_value(i32 %i.0, !2318, !DIExpression(), !2320)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2323
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2325

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2326
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2326
  %and = and i64 %0, 1229782938247303441, !dbg !2328
    #dbg_value(i64 %and, !2329, !DIExpression(), !2330)
  %xor = lshr i64 %0, 1, !dbg !2331
  %shr = and i64 %xor, 8608480567731124087, !dbg !2331
  %mul = mul nuw i64 %and, 9, !dbg !2332
  %xor2 = xor i64 %shr, %mul, !dbg !2333
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2334
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2335
  %xor4 = xor i64 %1, %xor2, !dbg !2335
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2335
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2336
    #dbg_value(i32 %inc, !2318, !DIExpression(), !2320)
  br label %for.cond, !dbg !2337, !llvm.loop !2338

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2340
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2341 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2342, !DIExpression(), !2343)
    #dbg_value(ptr %in, !2344, !DIExpression(), !2343)
    #dbg_value(ptr %acc, !2345, !DIExpression(), !2343)
    #dbg_value(i64 -8608480567731124088, !2346, !DIExpression(), !2343)
    #dbg_value(i32 0, !2347, !DIExpression(), !2349)
  br label %for.cond, !dbg !2350

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2351
    #dbg_value(i32 %i.0, !2347, !DIExpression(), !2349)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2352
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2354

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2355
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2355
    #dbg_value(i64 %0, !2357, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2358)
  %xor = shl i64 %0, 1, !dbg !2359
  %shl = and i64 %xor, -1229782938247303442, !dbg !2359
  %and = lshr i64 %0, 3, !dbg !2360
  %shr = and i64 %and, 1229782938247303441, !dbg !2360
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2361
  %xor2 = xor i64 %shl, %mul, !dbg !2362
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
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2370 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2371, !DIExpression(), !2372)
    #dbg_value(ptr %in, !2373, !DIExpression(), !2372)
    #dbg_value(ptr %out, !2374, !DIExpression(), !2372)
    #dbg_value(i32 0, !2375, !DIExpression(), !2377)
  br label %for.cond, !dbg !2378

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2379
    #dbg_value(i32 %i.0, !2375, !DIExpression(), !2377)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2380
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2382

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2383
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2383
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2385
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2386
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2387
    #dbg_value(i32 %inc, !2375, !DIExpression(), !2377)
  br label %for.cond, !dbg !2388, !llvm.loop !2389

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2391
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2392 {
entry:
    #dbg_value(ptr %p, !2423, !DIExpression(), !2424)
    #dbg_value(ptr %in, !2425, !DIExpression(), !2424)
    #dbg_value(ptr %out, !2426, !DIExpression(), !2424)
    #dbg_value(i32 %size, !2427, !DIExpression(), !2424)
    #dbg_value(i32 9, !2428, !DIExpression(), !2424)
    #dbg_value(i32 0, !2429, !DIExpression(), !2424)
    #dbg_value(i32 0, !2430, !DIExpression(), !2432)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2433
  br label %for.cond, !dbg !2433

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2434
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2434
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2435
    #dbg_value(i32 %r.0, !2430, !DIExpression(), !2432)
    #dbg_value(i32 %m_vecs_stored.0, !2429, !DIExpression(), !2424)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2436
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2438

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2439
  br label %for.cond1, !dbg !2439

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2424
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2442
    #dbg_value(i32 %c.0, !2443, !DIExpression(), !2444)
    #dbg_value(i32 %m_vecs_stored.1, !2429, !DIExpression(), !2424)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2445
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2439

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2447
  %add = add nsw i32 %mul, %c.0, !dbg !2449
  %add.ptr.idx = mul nsw i32 %add, 72, !dbg !2450
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2450
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2451
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2451
  call fastcc void @m_vec_copy.17(i32 noundef 9, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2452
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2453
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2453

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2455
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2457
  %add.ptr11.idx = mul nsw i32 %add9, 72, !dbg !2458
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2458
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2459
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2459
  call fastcc void @m_vec_add.18(i32 noundef 9, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2460
  br label %for.inc, !dbg !2461

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2429, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2424)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2462
    #dbg_value(i32 %inc, !2429, !DIExpression(), !2424)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2463
    #dbg_value(i32 %inc14, !2443, !DIExpression(), !2444)
  br label %for.cond1, !dbg !2464, !llvm.loop !2465

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2424
  %inc16 = add nuw i32 %r.0, 1, !dbg !2467
    #dbg_value(i32 %inc16, !2430, !DIExpression(), !2432)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2468
  br label %for.cond, !dbg !2468, !llvm.loop !2469

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2471
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2472 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2473, !DIExpression(), !2474)
    #dbg_value(ptr %in, !2475, !DIExpression(), !2474)
    #dbg_value(ptr %out, !2476, !DIExpression(), !2474)
    #dbg_value(i32 0, !2477, !DIExpression(), !2479)
  br label %for.cond, !dbg !2480

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2481
    #dbg_value(i32 %i.0, !2477, !DIExpression(), !2479)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2482
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2484

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2485
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2485
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2487
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2488
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2489
    #dbg_value(i32 %inc, !2477, !DIExpression(), !2479)
  br label %for.cond, !dbg !2490, !llvm.loop !2491

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2493
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2494 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2495, !DIExpression(), !2496)
    #dbg_value(ptr %in, !2497, !DIExpression(), !2496)
    #dbg_value(ptr %acc, !2498, !DIExpression(), !2496)
    #dbg_value(i32 0, !2499, !DIExpression(), !2501)
  br label %for.cond, !dbg !2502

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2503
    #dbg_value(i32 %i.0, !2499, !DIExpression(), !2501)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2504
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2506

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2507
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2507
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2509
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2510
  %xor = xor i64 %1, %0, !dbg !2510
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2510
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2511
    #dbg_value(i32 %inc, !2499, !DIExpression(), !2501)
  br label %for.cond, !dbg !2512, !llvm.loop !2513

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2515
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2516 {
entry:
  %Ar = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2519, !DIExpression(), !2520)
    #dbg_value(ptr %A, !2521, !DIExpression(), !2520)
    #dbg_value(ptr %y, !2522, !DIExpression(), !2520)
    #dbg_value(ptr %r, !2523, !DIExpression(), !2520)
    #dbg_value(ptr %x, !2524, !DIExpression(), !2520)
    #dbg_value(i32 %k, !2525, !DIExpression(), !2520)
    #dbg_value(i32 %o, !2526, !DIExpression(), !2520)
    #dbg_value(i32 %m, !2527, !DIExpression(), !2520)
    #dbg_value(i32 %A_cols, !2528, !DIExpression(), !2520)
    #dbg_value(i32 0, !2529, !DIExpression(), !2531)
  %0 = mul nsw i32 %o, %k, !dbg !2532
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2532
  br label %for.cond, !dbg !2532

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2533
    #dbg_value(i32 %i.0, !2529, !DIExpression(), !2531)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2534
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2536

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2537
  br label %for.cond3, !dbg !2537

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2539
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2539
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2541
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2542
  %inc = add nuw i32 %i.0, 1, !dbg !2543
    #dbg_value(i32 %inc, !2529, !DIExpression(), !2531)
  br label %for.cond, !dbg !2544, !llvm.loop !2545

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2547
    #dbg_value(i32 %i2.0, !2548, !DIExpression(), !2549)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2550
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2537

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2552
  %mul7 = mul nsw i32 %k, %o, !dbg !2554
  %add = add nsw i32 %mul7, 1, !dbg !2555
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2556
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2557
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2557
  store i8 0, ptr %arrayidx10, align 1, !dbg !2558
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2559
    #dbg_value(i32 %inc12, !2548, !DIExpression(), !2549)
  br label %for.cond3, !dbg !2560, !llvm.loop !2561

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2563
  %add15 = add nsw i32 %mul14, 1, !dbg !2564
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2565
    #dbg_value(i32 0, !2566, !DIExpression(), !2568)
  br label %for.cond17, !dbg !2569

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2570
    #dbg_value(i32 %i16.0, !2566, !DIExpression(), !2568)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2571
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2573

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2574
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2574
  %arrayidx21 = getelementptr inbounds nuw [142 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2576
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2576
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2577
  %mul22 = mul nsw i32 %k, %o, !dbg !2578
  %mul23 = mul nsw i32 %k, %o, !dbg !2579
  %add24 = add nsw i32 %mul23, 1, !dbg !2580
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2581
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2582
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2582
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2583
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2584
    #dbg_value(i32 %inc29, !2566, !DIExpression(), !2568)
  br label %for.cond17, !dbg !2585, !llvm.loop !2586

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2588
  %add32 = add nsw i32 %mul31, 1, !dbg !2589
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2590
    #dbg_value(i8 0, !2591, !DIExpression(), !2520)
    #dbg_value(i32 0, !2592, !DIExpression(), !2594)
  %6 = add i32 %A_cols, -1, !dbg !2595
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2595
  br label %for.cond34, !dbg !2595

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2520
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2596
    #dbg_value(i32 %i33.0, !2592, !DIExpression(), !2594)
    #dbg_value(i8 %full_rank.0, !2591, !DIExpression(), !2520)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2597
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2599

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2520)
  %sub37 = add nsw i32 %m, -1, !dbg !2600
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2602
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2603
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2603
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2603
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2520)
  %or12 = or i8 %full_rank.0, %8, !dbg !2604
    #dbg_value(i8 %or12, !2591, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2520)
    #dbg_value(i8 %or12, !2591, !DIExpression(), !2520)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2605
    #dbg_value(i32 %inc44, !2592, !DIExpression(), !2594)
  br label %for.cond34, !dbg !2606, !llvm.loop !2607

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2520
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2609
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2609

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2611

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2611, !llvm.loop !2613

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2615
    #dbg_value(i32 %row.0, !2616, !DIExpression(), !2617)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2618
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2611

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2620, !DIExpression(), !2520)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2621
  %div = sdiv i32 32, %sub54, !dbg !2621
  %add55 = add nsw i32 %row.0, %div, !dbg !2621
  %mul56 = mul nsw i32 %k, %o, !dbg !2621
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2621
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2621

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2621
  %div60 = sdiv i32 32, %sub59, !dbg !2621
  %add61 = add nsw i32 %row.0, %div60, !dbg !2621
  br label %cond.end, !dbg !2621

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2621
  br label %cond.end, !dbg !2621

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2621
    #dbg_value(i32 %cond, !2623, !DIExpression(), !2520)
    #dbg_value(i32 %row.0, !2624, !DIExpression(), !2626)
  br label %for.cond63, !dbg !2627

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2628
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2629
    #dbg_value(i32 %col.0, !2624, !DIExpression(), !2626)
    #dbg_value(i8 %finished.0, !2620, !DIExpression(), !2520)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2630
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2632

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2633
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2635
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2635
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2635
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2636
  %not = xor i8 %finished.0, -1, !dbg !2637
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2638, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2520)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2639
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2640
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2640
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2640
  %13 = and i8 %12, %not, !dbg !2641
  %and801 = and i8 %13, %call70, !dbg !2641
    #dbg_value(i8 %and801, !2642, !DIExpression(), !2643)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2644
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2645
  %xor2 = xor i8 %14, %and801, !dbg !2645
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2645
    #dbg_value(i32 0, !2646, !DIExpression(), !2648)
  br label %for.cond87, !dbg !2649

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2650
    #dbg_value(i32 %i86.0, !2646, !DIExpression(), !2648)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2651
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2653

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2654
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2656
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2656
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2656
  %conv94 = zext i8 %16 to i64, !dbg !2657
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2658
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2659
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2660
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2660
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2660
  %conv99 = zext i8 %18 to i64, !dbg !2661
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2662
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2663
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2664
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2665
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2666
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2666
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2666
  %conv106 = zext i8 %20 to i64, !dbg !2667
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2668
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2669
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2670
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2671
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2672
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2672
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2672
  %conv113 = zext i8 %22 to i64, !dbg !2673
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2674
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2675
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2676
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2677
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2678
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2678
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2678
  %conv120 = zext i8 %24 to i64, !dbg !2679
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2680
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2681
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2682
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2683
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2684
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2684
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2684
  %conv127 = zext i8 %26 to i64, !dbg !2685
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2686
  %xor129 = xor i64 %xor122, %shl128, !dbg !2687
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2688
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2689
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2690
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2690
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2690
  %conv134 = zext i8 %28 to i64, !dbg !2691
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2692
  %xor136 = xor i64 %xor129, %shl135, !dbg !2693
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2694
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2695
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2696
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2696
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2696
  %conv141 = zext i8 %30 to i64, !dbg !2697
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2698
  %xor143 = xor i64 %xor136, %shl142, !dbg !2699
    #dbg_value(i64 %xor143, !2700, !DIExpression(), !2701)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2702
    #dbg_value(i64 %call144, !2700, !DIExpression(), !2701)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2703
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2703
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2704
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2704
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2705
  %33 = trunc i64 %call144 to i8, !dbg !2705
  %34 = and i8 %33, 15, !dbg !2705
  %conv152 = xor i8 %34, %32, !dbg !2705
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2705
  %shr = lshr i64 %call144, 8, !dbg !2706
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2707
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2707
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2708
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2708
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2709
  %37 = trunc i64 %shr to i8, !dbg !2709
  %38 = and i8 %37, 15, !dbg !2709
  %conv161 = xor i8 %38, %36, !dbg !2709
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2709
  %shr162 = lshr i64 %call144, 16, !dbg !2710
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2711
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2711
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2712
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2712
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2713
  %41 = trunc i64 %shr162 to i8, !dbg !2713
  %42 = and i8 %41, 15, !dbg !2713
  %conv171 = xor i8 %42, %40, !dbg !2713
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2713
  %shr172 = lshr i64 %call144, 24, !dbg !2714
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2715
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2715
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2716
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2716
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2717
  %45 = trunc i64 %shr172 to i8, !dbg !2717
  %46 = and i8 %45, 15, !dbg !2717
  %conv181 = xor i8 %46, %44, !dbg !2717
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2717
  %shr182 = lshr i64 %call144, 32, !dbg !2718
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2719
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2719
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2720
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2720
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2721
  %49 = trunc i64 %shr182 to i8, !dbg !2721
  %50 = and i8 %49, 15, !dbg !2721
  %conv191 = xor i8 %50, %48, !dbg !2721
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2721
  %shr192 = lshr i64 %call144, 40, !dbg !2722
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2723
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2723
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2724
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2724
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2725
  %53 = trunc i64 %shr192 to i8, !dbg !2725
  %54 = and i8 %53, 15, !dbg !2725
  %conv201 = xor i8 %54, %52, !dbg !2725
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2725
  %shr202 = lshr i64 %call144, 48, !dbg !2726
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2727
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2727
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2728
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2728
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2729
  %57 = trunc i64 %shr202 to i8, !dbg !2729
  %58 = and i8 %57, 15, !dbg !2729
  %conv211 = xor i8 %58, %56, !dbg !2729
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2729
  %shr212 = lshr i64 %call144, 56, !dbg !2730
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2731
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2731
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2732
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2732
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2733
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2733
  %conv221 = xor i8 %60, %61, !dbg !2733
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2733
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2734
    #dbg_value(i32 %add223, !2646, !DIExpression(), !2648)
  br label %for.cond87, !dbg !2735, !llvm.loop !2736

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2520)
  %or2273 = or i8 %finished.0, %call70, !dbg !2738
    #dbg_value(i8 %or2273, !2620, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2520)
    #dbg_value(i8 %or2273, !2620, !DIExpression(), !2520)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2739
    #dbg_value(i32 %inc230, !2624, !DIExpression(), !2626)
  br label %for.cond63, !dbg !2740, !llvm.loop !2741

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2743

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2520
  ret i32 %retval.0, !dbg !2743
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2744 {
entry:
    #dbg_value(ptr %a, !2745, !DIExpression(), !2746)
    #dbg_value(ptr %b, !2747, !DIExpression(), !2746)
    #dbg_value(ptr %c, !2748, !DIExpression(), !2746)
    #dbg_value(i32 %colrow_ab, !2749, !DIExpression(), !2746)
    #dbg_value(i32 %row_a, !2750, !DIExpression(), !2746)
    #dbg_value(i32 1, !2751, !DIExpression(), !2746)
    #dbg_value(i32 0, !2752, !DIExpression(), !2754)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2755
  br label %for.cond, !dbg !2755

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2756
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2745, !DIExpression(), !2746)
    #dbg_value(ptr %c.addr.0, !2748, !DIExpression(), !2746)
    #dbg_value(i32 %i.0, !2752, !DIExpression(), !2754)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2757
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2759

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2760

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2763
    #dbg_value(i32 poison, !2764, !DIExpression(), !2765)
    #dbg_value(ptr %c.addr.1, !2748, !DIExpression(), !2746)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2760

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2766
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2769
    #dbg_value(i32 1, !2764, !DIExpression(), !2765)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2770
    #dbg_value(ptr %incdec.ptr, !2748, !DIExpression(), !2746)
  br label %for.cond1, !dbg !2771, !llvm.loop !2772

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2774
    #dbg_value(i32 %inc5, !2752, !DIExpression(), !2754)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2775
    #dbg_value(ptr %add.ptr6, !2745, !DIExpression(), !2746)
  br label %for.cond, !dbg !2776, !llvm.loop !2777

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2779
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2780 {
entry:
    #dbg_value(i8 %a, !2781, !DIExpression(), !2782)
    #dbg_value(i8 %b, !2783, !DIExpression(), !2782)
  %xor1 = xor i8 %a, %b, !dbg !2784
  ret i8 %xor1, !dbg !2785
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2786 {
entry:
  %_pivot_row = alloca [10 x i64], align 32
  %_pivot_row2 = alloca [10 x i64], align 32
  %packed_A = alloca [1420 x i64], align 32
  %temp = alloca [160 x i8], align 1
    #dbg_value(ptr %A, !2790, !DIExpression(), !2791)
    #dbg_value(i32 %nrows, !2792, !DIExpression(), !2791)
    #dbg_value(i32 %ncols, !2793, !DIExpression(), !2791)
    #dbg_declare(ptr %_pivot_row, !2794, !DIExpression(), !2798)
    #dbg_declare(ptr %_pivot_row2, !2799, !DIExpression(), !2800)
    #dbg_declare(ptr %packed_A, !2801, !DIExpression(), !2805)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(11360) %packed_A, i8 0, i32 11360, i1 false), !dbg !2805
  %add = add nsw i32 %ncols, 15, !dbg !2806
  %div = sdiv i32 %add, 16, !dbg !2807
    #dbg_value(i32 %div, !2808, !DIExpression(), !2791)
    #dbg_value(i32 0, !2809, !DIExpression(), !2811)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2812
  br label %for.cond, !dbg !2812

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2813
    #dbg_value(i32 %i.0, !2809, !DIExpression(), !2811)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2814
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2816

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2817
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2817
  br label %for.cond3, !dbg !2817

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2819
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2821
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2822
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2823
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2824
  %inc = add nuw i32 %i.0, 1, !dbg !2825
    #dbg_value(i32 %inc, !2809, !DIExpression(), !2811)
  br label %for.cond, !dbg !2826, !llvm.loop !2827

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2829
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2791
    #dbg_value(i32 %pivot_row.0, !2830, !DIExpression(), !2791)
    #dbg_value(i32 %pivot_col.0, !2831, !DIExpression(), !2832)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2833
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2817

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2835

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2837
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2837
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2837
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2837
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2837
    #dbg_value(i32 %cond, !2839, !DIExpression(), !2840)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2841
    #dbg_value(i32 %cond16, !2842, !DIExpression(), !2840)
    #dbg_value(i32 0, !2843, !DIExpression(), !2845)
  br label %for.cond18, !dbg !2846

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2847
    #dbg_value(i32 %i17.0, !2843, !DIExpression(), !2845)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2848
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2850

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2841
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2841
  br label %for.cond25, !dbg !2851

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2853
  store i64 0, ptr %arrayidx, align 8, !dbg !2855
  %arrayidx21 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2856
  store i64 0, ptr %arrayidx21, align 8, !dbg !2857
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2858
    #dbg_value(i32 %inc23, !2843, !DIExpression(), !2845)
  br label %for.cond18, !dbg !2859, !llvm.loop !2860

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2840
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2840
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2862
    #dbg_value(i32 %row.0, !2863, !DIExpression(), !2862)
    #dbg_value(i8 %pivot.0, !2864, !DIExpression(), !2840)
    #dbg_value(i64 %pivot_is_zero.0, !2865, !DIExpression(), !2840)
  %add27 = add nsw i32 %cond16, 32, !dbg !2866
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2866
  %sub30 = add nsw i32 %nrows, -1, !dbg !2866
  %add32 = add nsw i32 %cond16, 32, !dbg !2866
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2866
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2868
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2851

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2869
  %not = xor i64 %call, -1, !dbg !2871
    #dbg_value(i64 %not, !2872, !DIExpression(), !2873)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2874
    #dbg_value(i64 %call37, !2875, !DIExpression(), !2873)
    #dbg_value(i32 0, !2876, !DIExpression(), !2878)
  br label %for.cond38, !dbg !2879

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2880
    #dbg_value(i32 %j.0, !2876, !DIExpression(), !2878)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2881
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2883

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2884
  %or = or i64 %and, %not, !dbg !2886
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2887
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2888
  %arrayidx43 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2889
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2889
  %and44 = and i64 %or, %0, !dbg !2890
  %arrayidx45 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2891
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2892
  %xor = xor i64 %1, %and44, !dbg !2892
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2892
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2893
    #dbg_value(i32 %inc47, !2876, !DIExpression(), !2878)
  br label %for.cond38, !dbg !2894, !llvm.loop !2895

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2897
    #dbg_value(i8 %call50, !2864, !DIExpression(), !2840)
  %conv = zext nneg i8 %call50 to i32, !dbg !2898
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2899
    #dbg_value(i64 %call51, !2865, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2840)
  %not52 = xor i64 %call51, -1, !dbg !2900
    #dbg_value(i64 %not52, !2865, !DIExpression(), !2840)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2901
    #dbg_value(i32 %inc54, !2863, !DIExpression(), !2862)
  br label %for.cond25, !dbg !2902, !llvm.loop !2903

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2840
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2840
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2905
    #dbg_value(i8 %call56, !2906, !DIExpression(), !2791)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2907
    #dbg_value(i32 %cond, !2908, !DIExpression(), !2910)
  br label %for.cond60, !dbg !2911

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2912
    #dbg_value(i32 %row59.0, !2908, !DIExpression(), !2910)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2913
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2915

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2916

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2918
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2920
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2920
    #dbg_value(i64 %and67, !2921, !DIExpression(), !2922)
    #dbg_value(i64 %and67.demorgan, !2923, !DIExpression(), !2922)
    #dbg_value(i32 0, !2924, !DIExpression(), !2926)
  br label %for.cond69, !dbg !2927

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2928
    #dbg_value(i32 %col.0, !2924, !DIExpression(), !2926)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2929
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2931

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2932
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2934
  %arrayidx75 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2935
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2935
  %and76 = and i64 %and67.demorgan, %2, !dbg !2936
  %arrayidx77 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2937
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2937
  %and78 = and i64 %3, %and67, !dbg !2938
  %add79 = add i64 %and76, %and78, !dbg !2939
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2940
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2941
  %arrayidx82 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2942
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2943
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2944
    #dbg_value(i32 %inc84, !2924, !DIExpression(), !2926)
  br label %for.cond69, !dbg !2945, !llvm.loop !2946

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2948
    #dbg_value(i32 %inc87, !2908, !DIExpression(), !2910)
  br label %for.cond60, !dbg !2949, !llvm.loop !2950

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2952
    #dbg_value(i32 %row89.0, !2953, !DIExpression(), !2954)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2955
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2916

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2957
    #dbg_value(i1 %cmp94, !2959, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2960)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2961
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2962
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2963
    #dbg_value(i8 %call100, !2964, !DIExpression(), !2960)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2965
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2966
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2967
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2968
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2969
    #dbg_value(i32 %inc110, !2953, !DIExpression(), !2954)
  br label %for.cond90, !dbg !2970, !llvm.loop !2971

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2791)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2973
  %5 = add i32 %4, 1, !dbg !2973
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2973
    #dbg_value(i32 %conv116, !2830, !DIExpression(), !2791)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2974
    #dbg_value(i32 %inc118, !2831, !DIExpression(), !2832)
  br label %for.cond3, !dbg !2975, !llvm.loop !2976

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2978
    #dbg_value(i32 %i120.0, !2979, !DIExpression(), !2980)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2981
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2835

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2983
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2985
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2986
    #dbg_value(i32 0, !2987, !DIExpression(), !2989)
  br label %for.cond130, !dbg !2990

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2991
    #dbg_value(i32 %j129.0, !2987, !DIExpression(), !2989)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !2992
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !2994

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [160 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2995
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2995
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2997
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2998
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2998
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2999
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3000
    #dbg_value(i32 %inc139, !2987, !DIExpression(), !2989)
  br label %for.cond130, !dbg !3001, !llvm.loop !3002

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3004
    #dbg_value(i32 %inc142, !2979, !DIExpression(), !2980)
  br label %for.cond121, !dbg !3005, !llvm.loop !3006

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 160) #8, !dbg !3008
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 80) #8, !dbg !3009
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 80) #8, !dbg !3010
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 11360) #8, !dbg !3011
  ret void, !dbg !3012
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3013 {
entry:
    #dbg_value(i8 %a, !3015, !DIExpression(), !3016)
    #dbg_value(i8 0, !3017, !DIExpression(), !3016)
  %0 = icmp ne i8 %a, 0, !dbg !3018
  %conv3 = sext i1 %0 to i8, !dbg !3019
  %1 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3020
  %xor5 = xor i8 %1, %conv3, !dbg !3021
  ret i8 %xor5, !dbg !3022
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3023 {
entry:
    #dbg_value(i8 %a, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %b, !3028, !DIExpression(), !3027)
  %0 = and i8 %a, 1, !dbg !3029
  %conv1 = zext nneg i8 %0 to i64, !dbg !3030
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3031
    #dbg_value(i64 %mul, !3032, !DIExpression(), !3027)
  %1 = and i8 %a, 2, !dbg !3033
  %conv4 = zext nneg i8 %1 to i64, !dbg !3034
  %mul5 = mul i64 %b, %conv4, !dbg !3035
  %xor = xor i64 %mul, %mul5, !dbg !3036
    #dbg_value(i64 %xor, !3032, !DIExpression(), !3027)
  %2 = and i8 %a, 4, !dbg !3037
  %conv8 = zext nneg i8 %2 to i64, !dbg !3038
  %mul9 = mul i64 %b, %conv8, !dbg !3039
  %xor10 = xor i64 %xor, %mul9, !dbg !3040
    #dbg_value(i64 %xor10, !3032, !DIExpression(), !3027)
  %3 = and i8 %a, 8, !dbg !3041
  %conv13 = zext nneg i8 %3 to i64, !dbg !3042
  %mul14 = mul i64 %b, %conv13, !dbg !3043
  %xor15 = xor i64 %xor10, %mul14, !dbg !3044
    #dbg_value(i64 %xor15, !3032, !DIExpression(), !3027)
    #dbg_value(i64 %xor15, !3045, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3027)
  %shr = lshr i64 %xor15, 4, !dbg !3046
  %and16 = lshr i64 %xor15, 3, !dbg !3047
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3047
  %4 = xor i64 %shr, %shr18, !dbg !3048
  %xor19 = xor i64 %4, %xor15, !dbg !3048
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3049
    #dbg_value(i64 %and20, !3050, !DIExpression(), !3027)
  ret i64 %and20, !dbg !3051
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3052 {
entry:
    #dbg_value(ptr %in, !3055, !DIExpression(), !3056)
    #dbg_value(ptr %out, !3057, !DIExpression(), !3056)
    #dbg_value(i32 %ncols, !3058, !DIExpression(), !3056)
    #dbg_value(ptr %out, !3059, !DIExpression(), !3056)
    #dbg_value(i32 0, !3060, !DIExpression(), !3056)
  br label %for.cond, !dbg !3061

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3063
    #dbg_value(i32 %i.0, !3060, !DIExpression(), !3056)
  %add = or disjoint i32 %i.0, 1, !dbg !3064
  %cmp = icmp slt i32 %add, %ncols, !dbg !3066
  br i1 %cmp, label %for.body, label %for.end, !dbg !3067

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3068
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3068
  %add2 = or disjoint i32 %i.0, 1, !dbg !3070
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3071
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3071
  %shl5 = shl i8 %1, 4, !dbg !3072
  %or = or i8 %shl5, %0, !dbg !3073
  %div = lshr exact i32 %i.0, 1, !dbg !3074
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3075
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3076
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3077
    #dbg_value(i32 %add8, !3060, !DIExpression(), !3056)
  br label %for.cond, !dbg !3078, !llvm.loop !3079

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3063
  %2 = and i32 %ncols, -2147483647, !dbg !3081
  %cmp9 = icmp eq i32 %2, 1, !dbg !3081
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3081

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3083
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3083
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3085
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3086
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3087
  br label %if.end, !dbg !3088

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3089
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3090 {
entry:
    #dbg_value(i32 %a, !3093, !DIExpression(), !3094)
    #dbg_value(i32 %b, !3095, !DIExpression(), !3094)
  %xor = xor i32 %a, %b, !dbg !3096
  %0 = icmp sgt i32 %xor, 0, !dbg !3097
  %shr = sext i1 %0 to i64, !dbg !3097
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3098
  %xor1 = xor i64 %1, %shr, !dbg !3099
  ret i64 %xor1, !dbg !3100
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3101 {
entry:
    #dbg_value(i32 %a, !3102, !DIExpression(), !3103)
    #dbg_value(i32 %b, !3104, !DIExpression(), !3103)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3103)
  %0 = icmp slt i32 %b, %a, !dbg !3106
  %shr = sext i1 %0 to i64, !dbg !3106
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3107
  %xor = xor i64 %1, %shr, !dbg !3108
  ret i64 %xor, !dbg !3109
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3110 {
entry:
    #dbg_value(ptr %in, !3113, !DIExpression(), !3114)
    #dbg_value(i32 %index, !3115, !DIExpression(), !3114)
  %div = sdiv i32 %index, 16, !dbg !3116
    #dbg_value(i32 %div, !3117, !DIExpression(), !3114)
  %rem = srem i32 %index, 16, !dbg !3118
    #dbg_value(i32 %rem, !3119, !DIExpression(), !3114)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3120
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3120
  %mul = shl nsw i32 %rem, 2, !dbg !3121
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3122
  %shr = lshr i64 %0, %sh_prom, !dbg !3122
  %1 = trunc i64 %shr to i8, !dbg !3123
  %conv = and i8 %1, 15, !dbg !3123
  ret i8 %conv, !dbg !3124
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3125 {
entry:
    #dbg_value(i8 %a, !3128, !DIExpression(), !3129)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3130
    #dbg_value(i8 %call, !3131, !DIExpression(), !3129)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3132
    #dbg_value(i8 %call1, !3133, !DIExpression(), !3129)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3134
    #dbg_value(i8 %call2, !3135, !DIExpression(), !3129)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3136
    #dbg_value(i8 %call3, !3137, !DIExpression(), !3129)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3138
    #dbg_value(i8 %call4, !3139, !DIExpression(), !3129)
  ret i8 %call4, !dbg !3140
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3141 {
entry:
    #dbg_value(i32 %legs, !3144, !DIExpression(), !3145)
    #dbg_value(ptr %in, !3146, !DIExpression(), !3145)
    #dbg_value(i8 %a, !3147, !DIExpression(), !3145)
    #dbg_value(ptr %acc, !3148, !DIExpression(), !3145)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3149
    #dbg_value(i32 %call, !3150, !DIExpression(), !3145)
    #dbg_value(i64 1229782938247303441, !3151, !DIExpression(), !3145)
    #dbg_value(i32 0, !3152, !DIExpression(), !3154)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3155
  br label %for.cond, !dbg !3155

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3156
    #dbg_value(i32 %i.0, !3152, !DIExpression(), !3154)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3157
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3159

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3160
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3160
  %and = and i64 %0, 1229782938247303441, !dbg !3162
  %and1 = and i32 %call, 255, !dbg !3163
  %conv = zext nneg i32 %and1 to i64, !dbg !3164
  %mul = mul i64 %and, %conv, !dbg !3165
  %shr = lshr i64 %0, 1, !dbg !3166
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3167
  %shr4 = lshr i32 %call, 8, !dbg !3168
  %and5 = and i32 %shr4, 15, !dbg !3169
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3170
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3171
  %xor = xor i64 %mul, %mul7, !dbg !3172
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3173
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3173
  %shr9 = lshr i64 %1, 2, !dbg !3174
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3175
  %shr11 = lshr i32 %call, 16, !dbg !3176
  %and12 = and i32 %shr11, 15, !dbg !3177
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3178
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3179
  %xor15 = xor i64 %xor, %mul14, !dbg !3180
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3181
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3181
  %shr17 = lshr i64 %2, 3, !dbg !3182
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3183
  %shr19 = lshr i32 %call, 24, !dbg !3184
  %and20 = and i32 %shr19, 15, !dbg !3185
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3186
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3187
  %xor23 = xor i64 %xor15, %mul22, !dbg !3188
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3189
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3190
  %xor25 = xor i64 %3, %xor23, !dbg !3190
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3190
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3191
    #dbg_value(i32 %inc, !3152, !DIExpression(), !3154)
  br label %for.cond, !dbg !3192, !llvm.loop !3193

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3195
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3196 {
entry:
    #dbg_value(i32 %legs, !3199, !DIExpression(), !3200)
    #dbg_value(ptr %in, !3201, !DIExpression(), !3200)
    #dbg_value(ptr %out, !3202, !DIExpression(), !3200)
    #dbg_value(ptr %in, !3203, !DIExpression(), !3200)
    #dbg_value(i32 0, !3204, !DIExpression(), !3206)
  br label %for.cond, !dbg !3207

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3208
    #dbg_value(i32 %i.0, !3204, !DIExpression(), !3206)
  %mul = shl nsw i32 %legs, 4, !dbg !3209
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3211
  br i1 %cmp, label %for.body, label %for.end, !dbg !3212

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3213
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3215
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3215
  %1 = and i8 %0, 15, !dbg !3216
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3217
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3218
  %div3 = lshr exact i32 %i.0, 1, !dbg !3219
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3220
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3220
  %3 = lshr i8 %2, 4, !dbg !3221
  %add = or disjoint i32 %i.0, 1, !dbg !3222
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3223
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3224
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3225
    #dbg_value(i32 %add8, !3204, !DIExpression(), !3206)
  br label %for.cond, !dbg !3226, !llvm.loop !3227

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3229
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3230 {
entry:
    #dbg_value(i8 %b, !3231, !DIExpression(), !3232)
  %conv = zext nneg i8 %b to i32, !dbg !3233
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3234
    #dbg_value(i32 %mul, !3235, !DIExpression(), !3232)
    #dbg_value(i32 -252645136, !3236, !DIExpression(), !3232)
  %and = and i32 %mul, 1894838512, !dbg !3237
    #dbg_value(i32 %and, !3238, !DIExpression(), !3232)
  %shr = lshr exact i32 %and, 4, !dbg !3239
  %shr1 = lshr exact i32 %and, 3, !dbg !3240
  %0 = xor i32 %shr, %shr1, !dbg !3241
  %xor2 = xor i32 %0, %mul, !dbg !3241
  ret i32 %xor2, !dbg !3242
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3243 {
entry:
    #dbg_value(i8 %a, !3244, !DIExpression(), !3245)
    #dbg_value(i8 %b, !3246, !DIExpression(), !3245)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3247
  %xor1 = xor i8 %a, %0, !dbg !3248
    #dbg_value(i8 %xor1, !3244, !DIExpression(), !3245)
  %1 = trunc i8 %xor1 to i1, !dbg !3249
    #dbg_value(i8 poison, !3250, !DIExpression(), !3245)
  %2 = and i8 %xor1, 2, !dbg !3251
  %mul9 = mul i8 %2, %b, !dbg !3252
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3249
  %xor11 = xor i8 %conv10, %mul9, !dbg !3253
    #dbg_value(i8 %xor11, !3250, !DIExpression(), !3245)
  %3 = and i8 %xor1, 4, !dbg !3254
  %mul16 = mul i8 %3, %b, !dbg !3255
  %xor18 = xor i8 %mul16, %xor11, !dbg !3256
    #dbg_value(i8 %xor18, !3250, !DIExpression(), !3245)
  %4 = and i8 %xor1, 8, !dbg !3257
  %mul23 = mul i8 %4, %b, !dbg !3258
  %xor25 = xor i8 %mul23, %xor18, !dbg !3259
    #dbg_value(i8 %xor25, !3250, !DIExpression(), !3245)
    #dbg_value(i8 %xor25, !3260, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3245)
  %5 = lshr i8 %xor25, 4, !dbg !3261
  %6 = lshr i8 %xor25, 3, !dbg !3262
  %7 = and i8 %6, 14, !dbg !3262
  %8 = xor i8 %5, %7, !dbg !3263
  %xor25.masked = and i8 %xor25, 15, !dbg !3264
  %9 = xor i8 %8, %xor25.masked, !dbg !3264
    #dbg_value(i8 %9, !3265, !DIExpression(), !3245)
  ret i8 %9, !dbg !3266
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3267 {
entry:
    #dbg_value(ptr %a, !3268, !DIExpression(), !3269)
    #dbg_value(ptr %b, !3270, !DIExpression(), !3269)
    #dbg_value(i32 %n, !3271, !DIExpression(), !3269)
    #dbg_value(i32 1, !3272, !DIExpression(), !3269)
    #dbg_value(i8 0, !3273, !DIExpression(), !3269)
    #dbg_value(i32 0, !3274, !DIExpression(), !3276)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3277
  br label %for.cond, !dbg !3277

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3269
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3278
    #dbg_value(i32 %i.0, !3274, !DIExpression(), !3276)
    #dbg_value(ptr %b.addr.0, !3270, !DIExpression(), !3269)
    #dbg_value(i8 %ret.0, !3273, !DIExpression(), !3269)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3279
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3281

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3282
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3282
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3284
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3285
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3286
    #dbg_value(i8 %call1, !3273, !DIExpression(), !3269)
  %inc = add nuw i32 %i.0, 1, !dbg !3287
    #dbg_value(i32 %inc, !3274, !DIExpression(), !3276)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3288
    #dbg_value(ptr %add.ptr, !3270, !DIExpression(), !3269)
  br label %for.cond, !dbg !3289, !llvm.loop !3290

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3269
  ret i8 %ret.0.lcssa, !dbg !3292
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3293 {
entry:
    #dbg_value(i8 %a, !3294, !DIExpression(), !3295)
    #dbg_value(i8 %b, !3296, !DIExpression(), !3295)
  %xor1 = xor i8 %a, %b, !dbg !3297
  ret i8 %xor1, !dbg !3298
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
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6874560, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 107415)
!126 = !DILocation(line: 32, column: 10, scope: !77)
!127 = !DILocalVariable(name: "esk", scope: !77, file: !72, line: 33, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6843264, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 106926)
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
!171 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !172, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !172, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 537, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 537, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 538, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 539, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 540, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 541, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6944, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 868)
!222 = !DILocation(line: 541, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 542, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6829632, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 106713)
!227 = !DILocation(line: 542, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 543, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 1296)
!232 = !DILocation(line: 543, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 546, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 13632, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 1704)
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
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44928, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 702)
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
!360 = !DILocation(line: 277, column: 51, scope: !358)
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
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 576, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 9)
!582 = !DILocation(line: 265, column: 14, scope: !568)
!583 = !DILocalVariable(name: "i", scope: !584, file: !25, line: 266, type: !45)
!584 = distinct !DILexicalBlock(scope: !568, file: !25, line: 266, column: 5)
!585 = !DILocation(line: 0, scope: !584)
!586 = !DILocation(line: 266, column: 10, scope: !584)
!587 = !DILocation(line: 266, column: 28, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !25, line: 266, column: 5)
!589 = !DILocation(line: 266, column: 5, scope: !584)
!590 = !DILocation(line: 266, scope: !584)
!591 = !DILocation(line: 268, column: 29, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !25, line: 267, column: 5)
!593 = !DILocation(line: 268, column: 24, scope: !592)
!594 = !DILocation(line: 268, column: 9, scope: !592)
!595 = !DILocation(line: 269, column: 36, scope: !592)
!596 = !DILocation(line: 269, column: 21, scope: !592)
!597 = !DILocation(line: 269, column: 9, scope: !592)
!598 = !DILocation(line: 266, column: 5, scope: !588)
!599 = distinct !{!599, !589, !600, !303}
!600 = !DILocation(line: 270, column: 5, scope: !584)
!601 = !DILocation(line: 271, column: 1, scope: !568)
!602 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !603, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!603 = !DISubroutineType(types: !604)
!604 = !{!45, !174, !49, !5}
!605 = !DILocalVariable(name: "p", arg: 1, scope: !602, file: !25, line: 310, type: !174)
!606 = !DILocation(line: 0, scope: !602)
!607 = !DILocalVariable(name: "csk", arg: 2, scope: !602, file: !25, line: 310, type: !49)
!608 = !DILocalVariable(name: "sk", arg: 3, scope: !602, file: !25, line: 311, type: !5)
!609 = !DILocalVariable(name: "ret", scope: !602, file: !25, line: 312, type: !45)
!610 = !DILocalVariable(name: "S", scope: !602, file: !25, line: 313, type: !219)
!611 = !DILocation(line: 313, column: 19, scope: !602)
!612 = !DILocalVariable(name: "P", scope: !602, file: !25, line: 314, type: !5)
!613 = !DILocation(line: 315, column: 24, scope: !602)
!614 = !DILocalVariable(name: "O", scope: !602, file: !25, line: 315, type: !18)
!615 = !DILocalVariable(name: "param_o", scope: !602, file: !25, line: 317, type: !239)
!616 = !DILocalVariable(name: "param_v", scope: !602, file: !25, line: 318, type: !239)
!617 = !DILocalVariable(name: "param_O_bytes", scope: !602, file: !25, line: 319, type: !239)
!618 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !602, file: !25, line: 320, type: !239)
!619 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !602, file: !25, line: 321, type: !239)
!620 = !DILocalVariable(name: "seed_sk", scope: !602, file: !25, line: 323, type: !49)
!621 = !DILocalVariable(name: "seed_pk", scope: !602, file: !25, line: 324, type: !18)
!622 = !DILocation(line: 326, column: 5, scope: !602)
!623 = !DILocation(line: 328, column: 14, scope: !602)
!624 = !DILocation(line: 328, column: 5, scope: !602)
!625 = !DILocation(line: 334, column: 5, scope: !602)
!626 = !DILocation(line: 341, column: 22, scope: !602)
!627 = !DILocalVariable(name: "P2", scope: !602, file: !25, line: 341, type: !5)
!628 = !DILocalVariable(name: "P1", scope: !602, file: !25, line: 343, type: !5)
!629 = !DILocalVariable(name: "L", scope: !602, file: !25, line: 346, type: !5)
!630 = !DILocation(line: 347, column: 5, scope: !602)
!631 = !DILocation(line: 355, column: 5, scope: !602)
!632 = !DILocation(line: 356, column: 5, scope: !602)
!633 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !323, file: !323, line: 218, type: !369, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!634 = !DILocalVariable(name: "p", arg: 1, scope: !633, file: !323, line: 218, type: !174)
!635 = !DILocation(line: 0, scope: !633)
!636 = !DILocalVariable(name: "P1", arg: 2, scope: !633, file: !323, line: 218, type: !326)
!637 = !DILocalVariable(name: "O", arg: 3, scope: !633, file: !323, line: 218, type: !49)
!638 = !DILocalVariable(name: "acc", arg: 4, scope: !633, file: !323, line: 218, type: !5)
!639 = !DILocalVariable(name: "param_o", scope: !633, file: !323, line: 222, type: !239)
!640 = !DILocalVariable(name: "param_v", scope: !633, file: !323, line: 223, type: !239)
!641 = !DILocalVariable(name: "m_vec_limbs", scope: !633, file: !323, line: 224, type: !239)
!642 = !DILocalVariable(name: "bs_mat_entries_used", scope: !633, file: !323, line: 226, type: !45)
!643 = !DILocalVariable(name: "r", scope: !644, file: !323, line: 227, type: !45)
!644 = distinct !DILexicalBlock(scope: !633, file: !323, line: 227, column: 5)
!645 = !DILocation(line: 0, scope: !644)
!646 = !DILocation(line: 227, column: 10, scope: !644)
!647 = !DILocation(line: 226, column: 9, scope: !633)
!648 = !DILocation(line: 227, scope: !644)
!649 = !DILocation(line: 227, column: 23, scope: !650)
!650 = distinct !DILexicalBlock(scope: !644, file: !323, line: 227, column: 5)
!651 = !DILocation(line: 227, column: 5, scope: !644)
!652 = !DILocation(line: 228, column: 9, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !323, line: 228, column: 9)
!654 = distinct !DILexicalBlock(scope: !650, file: !323, line: 227, column: 39)
!655 = !DILocation(line: 228, scope: !653)
!656 = !DILocalVariable(name: "c", scope: !653, file: !323, line: 228, type: !45)
!657 = !DILocation(line: 0, scope: !653)
!658 = !DILocation(line: 228, column: 27, scope: !659)
!659 = distinct !DILexicalBlock(scope: !653, file: !323, line: 228, column: 9)
!660 = !DILocation(line: 229, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !323, line: 229, column: 16)
!662 = distinct !DILexicalBlock(scope: !659, file: !323, line: 228, column: 43)
!663 = !DILocation(line: 233, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !662, file: !323, line: 233, column: 13)
!665 = !DILocation(line: 233, scope: !664)
!666 = !DILocalVariable(name: "k", scope: !664, file: !323, line: 233, type: !45)
!667 = !DILocation(line: 0, scope: !664)
!668 = !DILocation(line: 233, column: 31, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !323, line: 233, column: 13)
!670 = !DILocation(line: 234, column: 47, scope: !671)
!671 = distinct !DILexicalBlock(scope: !669, file: !323, line: 233, column: 50)
!672 = !DILocation(line: 234, column: 88, scope: !671)
!673 = !DILocation(line: 234, column: 84, scope: !671)
!674 = !DILocation(line: 234, column: 127, scope: !671)
!675 = !DILocation(line: 234, column: 137, scope: !671)
!676 = !DILocation(line: 234, column: 108, scope: !671)
!677 = !DILocation(line: 234, column: 17, scope: !671)
!678 = !DILocation(line: 235, column: 47, scope: !671)
!679 = !DILocation(line: 235, column: 88, scope: !671)
!680 = !DILocation(line: 235, column: 84, scope: !671)
!681 = !DILocation(line: 235, column: 127, scope: !671)
!682 = !DILocation(line: 235, column: 137, scope: !671)
!683 = !DILocation(line: 235, column: 108, scope: !671)
!684 = !DILocation(line: 235, column: 17, scope: !671)
!685 = !DILocation(line: 233, column: 44, scope: !669)
!686 = !DILocation(line: 233, column: 13, scope: !669)
!687 = distinct !{!687, !663, !688, !303}
!688 = !DILocation(line: 236, column: 13, scope: !664)
!689 = !DILocation(line: 0, scope: !662)
!690 = !DILocation(line: 228, column: 39, scope: !659)
!691 = !DILocation(line: 228, column: 9, scope: !659)
!692 = distinct !{!692, !652, !693, !303}
!693 = !DILocation(line: 238, column: 9, scope: !653)
!694 = !DILocation(line: 227, column: 35, scope: !650)
!695 = !DILocation(line: 227, column: 5, scope: !650)
!696 = distinct !{!696, !651, !697, !303}
!697 = !DILocation(line: 239, column: 5, scope: !644)
!698 = !DILocation(line: 240, column: 1, scope: !633)
!699 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !700, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!700 = !DISubroutineType(types: !701)
!701 = !{!45, !174, !18, !702, !49, !15, !49}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!703 = !DILocalVariable(name: "p", arg: 1, scope: !699, file: !25, line: 359, type: !174)
!704 = !DILocation(line: 0, scope: !699)
!705 = !DILocalVariable(name: "sig", arg: 2, scope: !699, file: !25, line: 359, type: !18)
!706 = !DILocalVariable(name: "siglen", arg: 3, scope: !699, file: !25, line: 360, type: !702)
!707 = !DILocalVariable(name: "m", arg: 4, scope: !699, file: !25, line: 360, type: !49)
!708 = !DILocalVariable(name: "mlen", arg: 5, scope: !699, file: !25, line: 361, type: !15)
!709 = !DILocalVariable(name: "csk", arg: 6, scope: !699, file: !25, line: 361, type: !49)
!710 = !DILocalVariable(name: "ret", scope: !699, file: !25, line: 362, type: !45)
!711 = !DILocalVariable(name: "tenc", scope: !699, file: !25, line: 363, type: !712)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 568, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 71)
!715 = !DILocation(line: 363, column: 19, scope: !699)
!716 = !DILocalVariable(name: "t", scope: !699, file: !25, line: 363, type: !717)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1136, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 142)
!720 = !DILocation(line: 363, column: 38, scope: !699)
!721 = !DILocalVariable(name: "y", scope: !699, file: !25, line: 364, type: !717)
!722 = !DILocation(line: 364, column: 19, scope: !699)
!723 = !DILocalVariable(name: "salt", scope: !699, file: !25, line: 365, type: !724)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 40)
!727 = !DILocation(line: 365, column: 19, scope: !699)
!728 = !DILocalVariable(name: "V", scope: !699, file: !25, line: 366, type: !729)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 7392, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 924)
!732 = !DILocation(line: 366, column: 19, scope: !699)
!733 = !DILocalVariable(name: "Vdec", scope: !699, file: !25, line: 366, type: !234)
!734 = !DILocation(line: 366, column: 57, scope: !699)
!735 = !DILocalVariable(name: "A", scope: !699, file: !25, line: 367, type: !736)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 167040, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 20880)
!739 = !DILocation(line: 367, column: 19, scope: !699)
!740 = !DILocalVariable(name: "x", scope: !699, file: !25, line: 368, type: !741)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 14784, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 1848)
!744 = !DILocation(line: 368, column: 19, scope: !699)
!745 = !DILocalVariable(name: "r", scope: !699, file: !25, line: 369, type: !746)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1160, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 145)
!749 = !DILocation(line: 369, column: 19, scope: !699)
!750 = !DILocalVariable(name: "s", scope: !699, file: !25, line: 370, type: !741)
!751 = !DILocation(line: 370, column: 19, scope: !699)
!752 = !DILocalVariable(name: "sk", scope: !699, file: !25, line: 372, type: !128, align: 256)
!753 = !DILocation(line: 372, column: 22, scope: !699)
!754 = !DILocalVariable(name: "Ox", scope: !699, file: !25, line: 373, type: !717)
!755 = !DILocation(line: 373, column: 19, scope: !699)
!756 = !DILocalVariable(name: "tmp", scope: !699, file: !25, line: 374, type: !746)
!757 = !DILocation(line: 374, column: 19, scope: !699)
!758 = !DILocalVariable(name: "param_m", scope: !699, file: !25, line: 378, type: !239)
!759 = !DILocalVariable(name: "param_n", scope: !699, file: !25, line: 379, type: !239)
!760 = !DILocalVariable(name: "param_o", scope: !699, file: !25, line: 380, type: !239)
!761 = !DILocalVariable(name: "param_k", scope: !699, file: !25, line: 381, type: !239)
!762 = !DILocalVariable(name: "param_v", scope: !699, file: !25, line: 382, type: !239)
!763 = !DILocalVariable(name: "param_m_bytes", scope: !699, file: !25, line: 383, type: !239)
!764 = !DILocalVariable(name: "param_v_bytes", scope: !699, file: !25, line: 384, type: !239)
!765 = !DILocalVariable(name: "param_r_bytes", scope: !699, file: !25, line: 385, type: !239)
!766 = !DILocalVariable(name: "param_sig_bytes", scope: !699, file: !25, line: 386, type: !239)
!767 = !DILocalVariable(name: "param_A_cols", scope: !699, file: !25, line: 387, type: !239)
!768 = !DILocalVariable(name: "param_digest_bytes", scope: !699, file: !25, line: 388, type: !239)
!769 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !699, file: !25, line: 389, type: !239)
!770 = !DILocalVariable(name: "param_salt_bytes", scope: !699, file: !25, line: 390, type: !239)
!771 = !DILocation(line: 392, column: 11, scope: !699)
!772 = !DILocalVariable(name: "seed_sk", scope: !699, file: !25, line: 371, type: !49)
!773 = !DILocation(line: 401, column: 5, scope: !699)
!774 = !DILocalVariable(name: "P1", scope: !699, file: !25, line: 403, type: !5)
!775 = !DILocation(line: 404, column: 23, scope: !699)
!776 = !DILocalVariable(name: "L", scope: !699, file: !25, line: 404, type: !5)
!777 = !DILocalVariable(name: "Mtmp", scope: !699, file: !25, line: 405, type: !229)
!778 = !DILocation(line: 405, column: 14, scope: !699)
!779 = !DILocation(line: 420, column: 25, scope: !780)
!780 = distinct !DILexicalBlock(scope: !699, file: !25, line: 420, column: 9)
!781 = !DILocation(line: 420, column: 9, scope: !780)
!782 = !DILocation(line: 420, column: 65, scope: !780)
!783 = !DILocation(line: 427, column: 37, scope: !699)
!784 = !DILocation(line: 427, column: 5, scope: !699)
!785 = !DILocation(line: 429, column: 5, scope: !699)
!786 = !DILocation(line: 437, column: 16, scope: !699)
!787 = !DILocation(line: 437, column: 5, scope: !699)
!788 = !DILocation(line: 438, column: 59, scope: !699)
!789 = !DILocalVariable(name: "ctrbyte", scope: !699, file: !25, line: 375, type: !18)
!790 = !DILocation(line: 440, column: 5, scope: !699)
!791 = !DILocation(line: 442, column: 5, scope: !699)
!792 = !DILocation(line: 445, column: 18, scope: !699)
!793 = !DILocation(line: 447, column: 9, scope: !699)
!794 = !DILocalVariable(name: "i", scope: !795, file: !25, line: 451, type: !45)
!795 = distinct !DILexicalBlock(scope: !699, file: !25, line: 451, column: 9)
!796 = !DILocation(line: 0, scope: !795)
!797 = !DILocation(line: 451, column: 14, scope: !795)
!798 = !DILocation(line: 451, scope: !795)
!799 = !DILocation(line: 451, column: 27, scope: !800)
!800 = distinct !DILexicalBlock(scope: !795, file: !25, line: 451, column: 9)
!801 = !DILocation(line: 451, column: 9, scope: !795)
!802 = !DILocation(line: 452, column: 26, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !25, line: 451, column: 48)
!804 = !DILocation(line: 452, column: 22, scope: !803)
!805 = !DILocation(line: 452, column: 52, scope: !803)
!806 = !DILocation(line: 452, column: 48, scope: !803)
!807 = !DILocation(line: 452, column: 13, scope: !803)
!808 = !DILocation(line: 451, column: 43, scope: !800)
!809 = !DILocation(line: 451, column: 9, scope: !800)
!810 = distinct !{!810, !801, !811, !303}
!811 = !DILocation(line: 453, column: 9, scope: !795)
!812 = !DILocation(line: 455, column: 9, scope: !699)
!813 = !DILocation(line: 457, column: 9, scope: !699)
!814 = !DILocation(line: 458, column: 9, scope: !699)
!815 = !DILocalVariable(name: "i", scope: !816, file: !25, line: 460, type: !45)
!816 = distinct !DILexicalBlock(scope: !699, file: !25, line: 460, column: 9)
!817 = !DILocation(line: 0, scope: !816)
!818 = !DILocation(line: 460, column: 14, scope: !816)
!819 = !DILocation(line: 460, scope: !816)
!820 = !DILocation(line: 460, column: 27, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !25, line: 460, column: 9)
!822 = !DILocation(line: 460, column: 9, scope: !816)
!823 = !DILocation(line: 462, column: 20, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !25, line: 461, column: 9)
!825 = !DILocation(line: 462, column: 43, scope: !824)
!826 = !DILocation(line: 462, column: 13, scope: !824)
!827 = !DILocation(line: 462, column: 48, scope: !824)
!828 = !DILocation(line: 460, column: 39, scope: !821)
!829 = !DILocation(line: 460, column: 9, scope: !821)
!830 = distinct !{!830, !822, !831, !303}
!831 = !DILocation(line: 463, column: 9, scope: !816)
!832 = !DILocation(line: 465, column: 18, scope: !699)
!833 = !DILocation(line: 465, column: 9, scope: !699)
!834 = !DILocation(line: 469, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !699, file: !25, line: 469, column: 13)
!836 = !DILocation(line: 472, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !835, file: !25, line: 471, column: 16)
!838 = !DILocation(line: 473, column: 13, scope: !837)
!839 = !DILocalVariable(name: "i", scope: !840, file: !25, line: 477, type: !45)
!840 = distinct !DILexicalBlock(scope: !699, file: !25, line: 477, column: 5)
!841 = !DILocation(line: 0, scope: !840)
!842 = !DILocation(line: 477, column: 10, scope: !840)
!843 = !DILocation(line: 477, scope: !840)
!844 = !DILocation(line: 477, column: 23, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !25, line: 477, column: 5)
!846 = !DILocation(line: 477, column: 5, scope: !840)
!847 = !DILocation(line: 478, column: 23, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !25, line: 477, column: 44)
!849 = !DILocation(line: 478, column: 19, scope: !848)
!850 = !DILocalVariable(name: "vi", scope: !699, file: !25, line: 376, type: !18)
!851 = !DILocation(line: 479, column: 17, scope: !848)
!852 = !DILocation(line: 479, column: 33, scope: !848)
!853 = !DILocation(line: 479, column: 29, scope: !848)
!854 = !DILocation(line: 479, column: 9, scope: !848)
!855 = !DILocation(line: 480, column: 31, scope: !848)
!856 = !DILocation(line: 480, column: 27, scope: !848)
!857 = !DILocation(line: 480, column: 9, scope: !848)
!858 = !DILocation(line: 481, column: 22, scope: !848)
!859 = !DILocation(line: 481, column: 18, scope: !848)
!860 = !DILocation(line: 481, column: 32, scope: !848)
!861 = !DILocation(line: 481, column: 61, scope: !848)
!862 = !DILocation(line: 481, column: 57, scope: !848)
!863 = !DILocation(line: 481, column: 9, scope: !848)
!864 = !DILocation(line: 477, column: 39, scope: !845)
!865 = !DILocation(line: 477, column: 5, scope: !845)
!866 = distinct !{!866, !846, !867, !303}
!867 = !DILocation(line: 482, column: 5, scope: !840)
!868 = !DILocation(line: 483, column: 5, scope: !699)
!869 = !DILocation(line: 485, column: 34, scope: !699)
!870 = !DILocation(line: 485, column: 5, scope: !699)
!871 = !DILocation(line: 486, column: 13, scope: !699)
!872 = !DILocation(line: 486, column: 5, scope: !699)
!873 = !DILabel(scope: !699, name: "err", file: !25, line: 488)
!874 = !DILocation(line: 488, column: 1, scope: !699)
!875 = !DILocation(line: 489, column: 5, scope: !699)
!876 = !DILocation(line: 490, column: 5, scope: !699)
!877 = !DILocation(line: 491, column: 5, scope: !699)
!878 = !DILocation(line: 492, column: 5, scope: !699)
!879 = !DILocation(line: 493, column: 23, scope: !699)
!880 = !DILocation(line: 493, column: 5, scope: !699)
!881 = !DILocation(line: 494, column: 5, scope: !699)
!882 = !DILocation(line: 495, column: 5, scope: !699)
!883 = !DILocation(line: 496, column: 5, scope: !699)
!884 = !DILocation(line: 497, column: 5, scope: !699)
!885 = !DILocation(line: 498, column: 5, scope: !699)
!886 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !887, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !174, !49, !326, !326, !5, !5}
!889 = !DILocalVariable(name: "p", arg: 1, scope: !886, file: !323, line: 244, type: !174)
!890 = !DILocation(line: 0, scope: !886)
!891 = !DILocalVariable(name: "Vdec", arg: 2, scope: !886, file: !323, line: 244, type: !49)
!892 = !DILocalVariable(name: "L", arg: 3, scope: !886, file: !323, line: 244, type: !326)
!893 = !DILocalVariable(name: "P1", arg: 4, scope: !886, file: !323, line: 244, type: !326)
!894 = !DILocalVariable(name: "VL", arg: 5, scope: !886, file: !323, line: 244, type: !5)
!895 = !DILocalVariable(name: "VP1V", arg: 6, scope: !886, file: !323, line: 244, type: !5)
!896 = !DILocalVariable(name: "param_k", scope: !886, file: !323, line: 246, type: !239)
!897 = !DILocalVariable(name: "param_v", scope: !886, file: !323, line: 247, type: !239)
!898 = !DILocalVariable(name: "param_o", scope: !886, file: !323, line: 248, type: !239)
!899 = !DILocation(line: 251, column: 5, scope: !886)
!900 = !DILocalVariable(name: "Pv", scope: !886, file: !323, line: 254, type: !901)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 981504, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 15336)
!904 = !DILocation(line: 254, column: 14, scope: !886)
!905 = !DILocation(line: 255, column: 5, scope: !886)
!906 = !DILocation(line: 256, column: 5, scope: !886)
!907 = !DILocation(line: 257, column: 1, scope: !886)
!908 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !909, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !174, !5, !49, !18}
!911 = !DILocalVariable(name: "p", arg: 1, scope: !908, file: !25, line: 43, type: !174)
!912 = !DILocation(line: 0, scope: !908)
!913 = !DILocalVariable(name: "vPv", arg: 2, scope: !908, file: !25, line: 43, type: !5)
!914 = !DILocalVariable(name: "t", arg: 3, scope: !908, file: !25, line: 43, type: !49)
!915 = !DILocalVariable(name: "y", arg: 4, scope: !908, file: !25, line: 43, type: !18)
!916 = !DILocalVariable(name: "top_pos", scope: !908, file: !25, line: 48, type: !917)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!918 = !DILocalVariable(name: "m_vec_limbs", scope: !908, file: !25, line: 49, type: !917)
!919 = !DILocalVariable(name: "mask", scope: !920, file: !25, line: 53, type: !6)
!920 = distinct !DILexicalBlock(scope: !921, file: !25, line: 52, column: 29)
!921 = distinct !DILexicalBlock(scope: !908, file: !25, line: 52, column: 8)
!922 = !DILocation(line: 0, scope: !920)
!923 = !DILocalVariable(name: "i", scope: !924, file: !25, line: 56, type: !45)
!924 = distinct !DILexicalBlock(scope: !920, file: !25, line: 56, column: 9)
!925 = !DILocation(line: 0, scope: !924)
!926 = !DILocation(line: 56, column: 14, scope: !924)
!927 = !DILocation(line: 56, scope: !924)
!928 = !DILocation(line: 56, column: 27, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !25, line: 56, column: 9)
!930 = !DILocation(line: 56, column: 9, scope: !924)
!931 = !DILocation(line: 58, column: 13, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !25, line: 57, column: 9)
!933 = !DILocation(line: 58, column: 50, scope: !932)
!934 = !DILocation(line: 56, column: 53, scope: !929)
!935 = !DILocation(line: 56, column: 9, scope: !929)
!936 = distinct !{!936, !930, !937, !303}
!937 = !DILocation(line: 59, column: 9, scope: !924)
!938 = !DILocalVariable(name: "temp", scope: !908, file: !25, line: 62, type: !579)
!939 = !DILocation(line: 62, column: 14, scope: !908)
!940 = !DILocalVariable(name: "temp_bytes", scope: !908, file: !25, line: 63, type: !18)
!941 = !DILocalVariable(name: "i", scope: !942, file: !25, line: 64, type: !45)
!942 = distinct !DILexicalBlock(scope: !908, file: !25, line: 64, column: 5)
!943 = !DILocation(line: 0, scope: !942)
!944 = !DILocation(line: 64, column: 10, scope: !942)
!945 = !DILocation(line: 64, scope: !942)
!946 = !DILocation(line: 64, column: 36, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !25, line: 64, column: 5)
!948 = !DILocation(line: 64, column: 5, scope: !942)
!949 = !DILocation(line: 65, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !25, line: 65, column: 9)
!951 = distinct !DILexicalBlock(scope: !947, file: !25, line: 64, column: 48)
!952 = !DILocation(line: 99, column: 5, scope: !953)
!953 = distinct !DILexicalBlock(scope: !908, file: !25, line: 99, column: 5)
!954 = !DILocation(line: 65, scope: !950)
!955 = !DILocalVariable(name: "j", scope: !950, file: !25, line: 65, type: !45)
!956 = !DILocation(line: 0, scope: !950)
!957 = !DILocation(line: 65, column: 27, scope: !958)
!958 = distinct !DILexicalBlock(scope: !950, file: !25, line: 65, column: 9)
!959 = !DILocation(line: 67, column: 34, scope: !960)
!960 = distinct !DILexicalBlock(scope: !958, file: !25, line: 65, column: 46)
!961 = !DILocation(line: 67, column: 54, scope: !960)
!962 = !DILocation(line: 67, column: 66, scope: !960)
!963 = !DILocalVariable(name: "top", scope: !960, file: !25, line: 67, type: !14)
!964 = !DILocation(line: 0, scope: !960)
!965 = !DILocation(line: 68, column: 13, scope: !960)
!966 = !DILocation(line: 68, column: 33, scope: !960)
!967 = !DILocalVariable(name: "k", scope: !968, file: !25, line: 69, type: !45)
!968 = distinct !DILexicalBlock(scope: !960, file: !25, line: 69, column: 13)
!969 = !DILocation(line: 0, scope: !968)
!970 = !DILocation(line: 69, column: 17, scope: !968)
!971 = !DILocation(line: 69, scope: !968)
!972 = !DILocation(line: 69, column: 43, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !25, line: 69, column: 13)
!974 = !DILocation(line: 69, column: 13, scope: !968)
!975 = !DILocation(line: 74, column: 13, scope: !976)
!976 = distinct !DILexicalBlock(scope: !960, file: !25, line: 74, column: 13)
!977 = !DILocation(line: 70, column: 30, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !25, line: 69, column: 52)
!979 = !DILocation(line: 70, column: 38, scope: !978)
!980 = !DILocation(line: 70, column: 23, scope: !978)
!981 = !DILocation(line: 70, column: 17, scope: !978)
!982 = !DILocation(line: 70, column: 27, scope: !978)
!983 = !DILocation(line: 71, column: 17, scope: !978)
!984 = !DILocation(line: 71, column: 25, scope: !978)
!985 = !DILocation(line: 69, column: 49, scope: !973)
!986 = !DILocation(line: 69, column: 13, scope: !973)
!987 = distinct !{!987, !974, !988, !303}
!988 = !DILocation(line: 72, column: 13, scope: !968)
!989 = !DILocation(line: 74, scope: !976)
!990 = !DILocalVariable(name: "jj", scope: !976, file: !25, line: 74, type: !45)
!991 = !DILocation(line: 0, scope: !976)
!992 = !DILocation(line: 74, column: 33, scope: !993)
!993 = distinct !DILexicalBlock(scope: !976, file: !25, line: 74, column: 13)
!994 = !DILocation(line: 92, column: 13, scope: !995)
!995 = distinct !DILexicalBlock(scope: !960, file: !25, line: 92, column: 13)
!996 = !DILocation(line: 75, column: 22, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !25, line: 75, column: 20)
!998 = distinct !DILexicalBlock(scope: !993, file: !25, line: 74, column: 53)
!999 = !DILocation(line: 75, column: 25, scope: !997)
!1000 = !DILocation(line: 79, column: 52, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !25, line: 75, column: 30)
!1002 = !DILocation(line: 79, column: 41, scope: !1001)
!1003 = !DILocation(line: 79, column: 34, scope: !1001)
!1004 = !DILocation(line: 79, column: 21, scope: !1001)
!1005 = !DILocation(line: 79, column: 38, scope: !1001)
!1006 = !DILocation(line: 81, column: 17, scope: !1001)
!1007 = !DILocation(line: 86, column: 52, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !997, file: !25, line: 82, column: 22)
!1009 = !DILocation(line: 86, column: 41, scope: !1008)
!1010 = !DILocation(line: 86, column: 73, scope: !1008)
!1011 = !DILocation(line: 86, column: 34, scope: !1008)
!1012 = !DILocation(line: 86, column: 21, scope: !1008)
!1013 = !DILocation(line: 86, column: 38, scope: !1008)
!1014 = !DILocation(line: 74, column: 49, scope: !993)
!1015 = !DILocation(line: 74, column: 13, scope: !993)
!1016 = distinct !{!1016, !975, !1017, !303}
!1017 = !DILocation(line: 89, column: 13, scope: !976)
!1018 = !DILocation(line: 92, scope: !995)
!1019 = !DILocalVariable(name: "k", scope: !995, file: !25, line: 92, type: !15)
!1020 = !DILocation(line: 0, scope: !995)
!1021 = !DILocation(line: 92, column: 31, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !995, file: !25, line: 92, column: 13)
!1023 = !DILocation(line: 93, column: 36, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !25, line: 92, column: 51)
!1025 = !DILocation(line: 93, column: 49, scope: !1024)
!1026 = !DILocation(line: 93, column: 28, scope: !1024)
!1027 = !DILocation(line: 93, column: 78, scope: !1024)
!1028 = !DILocation(line: 93, column: 91, scope: !1024)
!1029 = !DILocation(line: 93, column: 104, scope: !1024)
!1030 = !DILocation(line: 93, column: 83, scope: !1024)
!1031 = !DILocation(line: 93, column: 82, scope: !1024)
!1032 = !DILocation(line: 93, column: 73, scope: !1024)
!1033 = !DILocation(line: 93, column: 17, scope: !1024)
!1034 = !DILocation(line: 93, column: 25, scope: !1024)
!1035 = !DILocation(line: 92, column: 48, scope: !1022)
!1036 = !DILocation(line: 92, column: 13, scope: !1022)
!1037 = distinct !{!1037, !994, !1038, !303}
!1038 = !DILocation(line: 94, column: 13, scope: !995)
!1039 = !DILocation(line: 65, column: 42, scope: !958)
!1040 = !DILocation(line: 65, column: 9, scope: !958)
!1041 = distinct !{!1041, !949, !1042, !303}
!1042 = !DILocation(line: 95, column: 9, scope: !950)
!1043 = !DILocation(line: 64, column: 44, scope: !947)
!1044 = !DILocation(line: 64, column: 5, scope: !947)
!1045 = distinct !{!1045, !948, !1046, !303}
!1046 = !DILocation(line: 96, column: 5, scope: !942)
!1047 = !DILocation(line: 99, scope: !953)
!1048 = !DILocalVariable(name: "i", scope: !953, file: !25, line: 99, type: !45)
!1049 = !DILocation(line: 0, scope: !953)
!1050 = !DILocation(line: 99, column: 23, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !953, file: !25, line: 99, column: 5)
!1052 = !DILocation(line: 105, column: 18, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1051, file: !25, line: 100, column: 5)
!1054 = !DILocation(line: 105, column: 40, scope: !1053)
!1055 = !DILocation(line: 105, column: 28, scope: !1053)
!1056 = !DILocation(line: 105, column: 44, scope: !1053)
!1057 = !DILocation(line: 105, column: 25, scope: !1053)
!1058 = !DILocation(line: 105, column: 9, scope: !1053)
!1059 = !DILocation(line: 105, column: 16, scope: !1053)
!1060 = !DILocation(line: 106, column: 21, scope: !1053)
!1061 = !DILocation(line: 106, column: 18, scope: !1053)
!1062 = !DILocation(line: 106, column: 40, scope: !1053)
!1063 = !DILocation(line: 106, column: 28, scope: !1053)
!1064 = !DILocation(line: 106, column: 44, scope: !1053)
!1065 = !DILocation(line: 106, column: 25, scope: !1053)
!1066 = !DILocation(line: 106, column: 12, scope: !1053)
!1067 = !DILocation(line: 106, column: 9, scope: !1053)
!1068 = !DILocation(line: 106, column: 16, scope: !1053)
!1069 = !DILocation(line: 99, column: 38, scope: !1051)
!1070 = !DILocation(line: 99, column: 5, scope: !1051)
!1071 = distinct !{!1071, !952, !1072, !303}
!1072 = !DILocation(line: 108, column: 5, scope: !953)
!1073 = !DILocation(line: 109, column: 1, scope: !908)
!1074 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1075, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !174, !5, !18}
!1077 = !DILocalVariable(name: "p", arg: 1, scope: !1074, file: !25, line: 154, type: !174)
!1078 = !DILocation(line: 0, scope: !1074)
!1079 = !DILocalVariable(name: "VtL", arg: 2, scope: !1074, file: !25, line: 154, type: !5)
!1080 = !DILocalVariable(name: "A_out", arg: 3, scope: !1074, file: !25, line: 154, type: !18)
!1081 = !DILocalVariable(name: "bits_to_shift", scope: !1074, file: !25, line: 159, type: !45)
!1082 = !DILocalVariable(name: "words_to_shift", scope: !1074, file: !25, line: 160, type: !45)
!1083 = !DILocalVariable(name: "m_vec_limbs", scope: !1074, file: !25, line: 161, type: !239)
!1084 = !DILocalVariable(name: "A", scope: !1074, file: !25, line: 162, type: !1085)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 165888, elements: !1086)
!1086 = !{!1087}
!1087 = !DISubrange(count: 2592)
!1088 = !DILocation(line: 162, column: 14, scope: !1074)
!1089 = !DILocalVariable(name: "A_width", scope: !1074, file: !25, line: 163, type: !15)
!1090 = !DILocalVariable(name: "mask", scope: !1091, file: !25, line: 168, type: !6)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !25, line: 167, column: 29)
!1092 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 167, column: 8)
!1093 = !DILocation(line: 0, scope: !1091)
!1094 = !DILocalVariable(name: "i", scope: !1095, file: !25, line: 171, type: !45)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !25, line: 171, column: 9)
!1096 = !DILocation(line: 0, scope: !1095)
!1097 = !DILocation(line: 171, column: 14, scope: !1095)
!1098 = !DILocation(line: 171, scope: !1095)
!1099 = !DILocation(line: 171, column: 27, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !25, line: 171, column: 9)
!1101 = !DILocation(line: 171, column: 9, scope: !1095)
!1102 = !DILocation(line: 177, column: 5, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 177, column: 5)
!1104 = !DILocation(line: 173, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 172, column: 9)
!1106 = !DILocation(line: 173, column: 50, scope: !1105)
!1107 = !DILocation(line: 171, column: 53, scope: !1100)
!1108 = !DILocation(line: 171, column: 9, scope: !1100)
!1109 = distinct !{!1109, !1101, !1110, !303}
!1110 = !DILocation(line: 174, column: 9, scope: !1095)
!1111 = !DILocation(line: 177, scope: !1103)
!1112 = !DILocation(line: 160, column: 9, scope: !1074)
!1113 = !DILocation(line: 159, column: 9, scope: !1074)
!1114 = !DILocalVariable(name: "i", scope: !1103, file: !25, line: 177, type: !45)
!1115 = !DILocation(line: 0, scope: !1103)
!1116 = !DILocation(line: 177, column: 23, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 177, column: 5)
!1118 = !DILocation(line: 178, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !25, line: 178, column: 9)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !25, line: 177, column: 47)
!1121 = !DILocation(line: 212, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 212, column: 5)
!1123 = !DILocation(line: 178, scope: !1119)
!1124 = !DILocalVariable(name: "j", scope: !1119, file: !25, line: 178, type: !45)
!1125 = !DILocation(line: 0, scope: !1119)
!1126 = !DILocation(line: 178, column: 40, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !25, line: 178, column: 9)
!1128 = !DILocation(line: 180, column: 22, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !25, line: 178, column: 51)
!1130 = !DILocalVariable(name: "Mj", scope: !1074, file: !25, line: 164, type: !326)
!1131 = !DILocalVariable(name: "c", scope: !1132, file: !25, line: 181, type: !45)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !25, line: 181, column: 13)
!1133 = !DILocation(line: 0, scope: !1132)
!1134 = !DILocation(line: 181, column: 18, scope: !1132)
!1135 = !DILocation(line: 181, scope: !1132)
!1136 = !DILocation(line: 181, column: 31, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !25, line: 181, column: 13)
!1138 = !DILocation(line: 181, column: 13, scope: !1132)
!1139 = !DILocation(line: 182, column: 17, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !25, line: 182, column: 17)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 181, column: 50)
!1142 = !DILocation(line: 182, scope: !1140)
!1143 = !DILocalVariable(name: "k", scope: !1140, file: !25, line: 182, type: !45)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocation(line: 182, column: 35, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !25, line: 182, column: 17)
!1147 = !DILocation(line: 184, column: 78, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1146, file: !25, line: 183, column: 17)
!1149 = !DILocation(line: 184, column: 100, scope: !1148)
!1150 = !DILocation(line: 184, column: 35, scope: !1148)
!1151 = !DILocation(line: 184, column: 39, scope: !1148)
!1152 = !DILocation(line: 184, column: 48, scope: !1148)
!1153 = !DILocation(line: 184, column: 65, scope: !1148)
!1154 = !DILocation(line: 184, column: 43, scope: !1148)
!1155 = !DILocation(line: 184, column: 21, scope: !1148)
!1156 = !DILocation(line: 184, column: 75, scope: !1148)
!1157 = !DILocation(line: 185, column: 38, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1148, file: !25, line: 185, column: 24)
!1159 = !DILocation(line: 186, column: 86, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !25, line: 185, column: 42)
!1161 = !DILocation(line: 186, column: 114, scope: !1160)
!1162 = !DILocation(line: 186, column: 108, scope: !1160)
!1163 = !DILocation(line: 186, column: 39, scope: !1160)
!1164 = !DILocation(line: 186, column: 43, scope: !1160)
!1165 = !DILocation(line: 186, column: 52, scope: !1160)
!1166 = !DILocation(line: 186, column: 73, scope: !1160)
!1167 = !DILocation(line: 186, column: 47, scope: !1160)
!1168 = !DILocation(line: 186, column: 25, scope: !1160)
!1169 = !DILocation(line: 186, column: 83, scope: !1160)
!1170 = !DILocation(line: 187, column: 21, scope: !1160)
!1171 = !DILocation(line: 182, column: 51, scope: !1146)
!1172 = !DILocation(line: 182, column: 17, scope: !1146)
!1173 = distinct !{!1173, !1139, !1174, !303}
!1174 = !DILocation(line: 188, column: 17, scope: !1140)
!1175 = !DILocation(line: 181, column: 46, scope: !1137)
!1176 = !DILocation(line: 181, column: 13, scope: !1137)
!1177 = distinct !{!1177, !1138, !1178, !303}
!1178 = !DILocation(line: 189, column: 13, scope: !1132)
!1179 = !DILocation(line: 191, column: 19, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1129, file: !25, line: 191, column: 17)
!1181 = !DILocation(line: 192, column: 26, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 191, column: 25)
!1183 = !DILocalVariable(name: "Mi", scope: !1074, file: !25, line: 164, type: !326)
!1184 = !DILocalVariable(name: "c", scope: !1185, file: !25, line: 193, type: !45)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !25, line: 193, column: 17)
!1186 = !DILocation(line: 0, scope: !1185)
!1187 = !DILocation(line: 193, column: 22, scope: !1185)
!1188 = !DILocation(line: 193, scope: !1185)
!1189 = !DILocation(line: 193, column: 35, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !25, line: 193, column: 17)
!1191 = !DILocation(line: 193, column: 17, scope: !1185)
!1192 = !DILocation(line: 194, column: 21, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 194, column: 21)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !25, line: 193, column: 54)
!1195 = !DILocation(line: 194, scope: !1193)
!1196 = !DILocalVariable(name: "k", scope: !1193, file: !25, line: 194, type: !45)
!1197 = !DILocation(line: 0, scope: !1193)
!1198 = !DILocation(line: 194, column: 39, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !25, line: 194, column: 21)
!1200 = !DILocation(line: 196, column: 81, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !25, line: 195, column: 21)
!1202 = !DILocation(line: 196, column: 103, scope: !1201)
!1203 = !DILocation(line: 196, column: 38, scope: !1201)
!1204 = !DILocation(line: 196, column: 42, scope: !1201)
!1205 = !DILocation(line: 196, column: 51, scope: !1201)
!1206 = !DILocation(line: 196, column: 68, scope: !1201)
!1207 = !DILocation(line: 196, column: 46, scope: !1201)
!1208 = !DILocation(line: 196, column: 25, scope: !1201)
!1209 = !DILocation(line: 196, column: 78, scope: !1201)
!1210 = !DILocation(line: 197, column: 42, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1201, file: !25, line: 197, column: 28)
!1212 = !DILocation(line: 198, column: 89, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1211, file: !25, line: 197, column: 46)
!1214 = !DILocation(line: 198, column: 117, scope: !1213)
!1215 = !DILocation(line: 198, column: 111, scope: !1213)
!1216 = !DILocation(line: 198, column: 42, scope: !1213)
!1217 = !DILocation(line: 198, column: 46, scope: !1213)
!1218 = !DILocation(line: 198, column: 55, scope: !1213)
!1219 = !DILocation(line: 198, column: 76, scope: !1213)
!1220 = !DILocation(line: 198, column: 50, scope: !1213)
!1221 = !DILocation(line: 198, column: 29, scope: !1213)
!1222 = !DILocation(line: 198, column: 86, scope: !1213)
!1223 = !DILocation(line: 199, column: 25, scope: !1213)
!1224 = !DILocation(line: 194, column: 55, scope: !1199)
!1225 = !DILocation(line: 194, column: 21, scope: !1199)
!1226 = distinct !{!1226, !1192, !1227, !303}
!1227 = !DILocation(line: 200, column: 21, scope: !1193)
!1228 = !DILocation(line: 193, column: 50, scope: !1190)
!1229 = !DILocation(line: 193, column: 17, scope: !1190)
!1230 = distinct !{!1230, !1191, !1231, !303}
!1231 = !DILocation(line: 201, column: 17, scope: !1185)
!1232 = !DILocation(line: 204, column: 27, scope: !1129)
!1233 = !DILocation(line: 205, column: 30, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1129, file: !25, line: 205, column: 16)
!1235 = !DILocation(line: 178, column: 46, scope: !1127)
!1236 = !DILocation(line: 178, column: 9, scope: !1127)
!1237 = distinct !{!1237, !1118, !1238, !303}
!1238 = !DILocation(line: 209, column: 9, scope: !1119)
!1239 = !DILocation(line: 177, column: 42, scope: !1117)
!1240 = !DILocation(line: 177, column: 5, scope: !1117)
!1241 = distinct !{!1241, !1102, !1242, !303}
!1242 = !DILocation(line: 210, column: 5, scope: !1103)
!1243 = !DILocation(line: 212, scope: !1122)
!1244 = !DILocalVariable(name: "c", scope: !1122, file: !25, line: 212, type: !15)
!1245 = !DILocation(line: 0, scope: !1122)
!1246 = !DILocation(line: 212, column: 26, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 212, column: 5)
!1248 = !DILocation(line: 214, column: 35, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1247, file: !25, line: 213, column: 5)
!1250 = !DILocation(line: 214, column: 9, scope: !1249)
!1251 = !DILocation(line: 212, column: 91, scope: !1247)
!1252 = !DILocation(line: 212, column: 5, scope: !1247)
!1253 = distinct !{!1253, !1121, !1254, !303}
!1254 = !DILocation(line: 215, column: 5, scope: !1122)
!1255 = !DILocalVariable(name: "tab", scope: !1074, file: !25, line: 217, type: !1256)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 16)
!1259 = !DILocation(line: 217, column: 19, scope: !1074)
!1260 = !DILocalVariable(name: "i", scope: !1261, file: !25, line: 218, type: !15)
!1261 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 218, column: 5)
!1262 = !DILocation(line: 0, scope: !1261)
!1263 = !DILocation(line: 218, column: 10, scope: !1261)
!1264 = !DILocation(line: 218, scope: !1261)
!1265 = !DILocation(line: 218, column: 26, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !25, line: 218, column: 5)
!1267 = !DILocation(line: 218, column: 5, scope: !1261)
!1268 = !DILocation(line: 228, column: 5, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 228, column: 5)
!1270 = !DILocation(line: 220, column: 28, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !25, line: 219, column: 5)
!1272 = !DILocation(line: 220, column: 22, scope: !1271)
!1273 = !DILocation(line: 220, column: 14, scope: !1271)
!1274 = !DILocation(line: 220, column: 9, scope: !1271)
!1275 = !DILocation(line: 220, column: 20, scope: !1271)
!1276 = !DILocation(line: 221, column: 22, scope: !1271)
!1277 = !DILocation(line: 221, column: 14, scope: !1271)
!1278 = !DILocation(line: 221, column: 16, scope: !1271)
!1279 = !DILocation(line: 221, column: 9, scope: !1271)
!1280 = !DILocation(line: 221, column: 20, scope: !1271)
!1281 = !DILocation(line: 222, column: 28, scope: !1271)
!1282 = !DILocation(line: 222, column: 22, scope: !1271)
!1283 = !DILocation(line: 222, column: 14, scope: !1271)
!1284 = !DILocation(line: 222, column: 16, scope: !1271)
!1285 = !DILocation(line: 222, column: 9, scope: !1271)
!1286 = !DILocation(line: 222, column: 20, scope: !1271)
!1287 = !DILocation(line: 223, column: 28, scope: !1271)
!1288 = !DILocation(line: 223, column: 22, scope: !1271)
!1289 = !DILocation(line: 223, column: 14, scope: !1271)
!1290 = !DILocation(line: 223, column: 16, scope: !1271)
!1291 = !DILocation(line: 223, column: 9, scope: !1271)
!1292 = !DILocation(line: 223, column: 20, scope: !1271)
!1293 = !DILocation(line: 218, column: 41, scope: !1266)
!1294 = !DILocation(line: 218, column: 5, scope: !1266)
!1295 = distinct !{!1295, !1267, !1296, !303}
!1296 = !DILocation(line: 224, column: 5, scope: !1261)
!1297 = !DILocation(line: 228, scope: !1269)
!1298 = !DILocalVariable(name: "c", scope: !1269, file: !25, line: 228, type: !15)
!1299 = !DILocation(line: 0, scope: !1269)
!1300 = !DILocation(line: 228, column: 26, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1269, file: !25, line: 228, column: 5)
!1302 = !DILocation(line: 230, column: 9, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !25, line: 230, column: 9)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !25, line: 229, column: 5)
!1305 = !DILocation(line: 250, column: 5, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 250, column: 5)
!1307 = !DILocation(line: 230, scope: !1303)
!1308 = !DILocalVariable(name: "r", scope: !1303, file: !25, line: 230, type: !45)
!1309 = !DILocation(line: 0, scope: !1303)
!1310 = !DILocation(line: 230, column: 36, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1303, file: !25, line: 230, column: 9)
!1312 = !DILocation(line: 232, column: 28, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !25, line: 231, column: 9)
!1314 = !DILocation(line: 232, column: 32, scope: !1313)
!1315 = !DILocation(line: 232, column: 41, scope: !1313)
!1316 = !DILocation(line: 232, column: 49, scope: !1313)
!1317 = !DILocation(line: 232, column: 45, scope: !1313)
!1318 = !DILocalVariable(name: "pos", scope: !1313, file: !25, line: 232, type: !15)
!1319 = !DILocation(line: 0, scope: !1313)
!1320 = !DILocation(line: 233, column: 28, scope: !1313)
!1321 = !DILocation(line: 233, column: 41, scope: !1313)
!1322 = !DILocalVariable(name: "t0", scope: !1313, file: !25, line: 233, type: !6)
!1323 = !DILocation(line: 234, column: 35, scope: !1313)
!1324 = !DILocation(line: 234, column: 41, scope: !1313)
!1325 = !DILocalVariable(name: "t1", scope: !1313, file: !25, line: 234, type: !6)
!1326 = !DILocation(line: 235, column: 35, scope: !1313)
!1327 = !DILocation(line: 235, column: 41, scope: !1313)
!1328 = !DILocalVariable(name: "t2", scope: !1313, file: !25, line: 235, type: !6)
!1329 = !DILocation(line: 236, column: 28, scope: !1313)
!1330 = !DILocation(line: 236, column: 35, scope: !1313)
!1331 = !DILocation(line: 236, column: 41, scope: !1313)
!1332 = !DILocalVariable(name: "t3", scope: !1313, file: !25, line: 236, type: !6)
!1333 = !DILocalVariable(name: "t", scope: !1334, file: !25, line: 237, type: !15)
!1334 = distinct !DILexicalBlock(scope: !1313, file: !25, line: 237, column: 13)
!1335 = !DILocation(line: 0, scope: !1334)
!1336 = !DILocation(line: 237, column: 18, scope: !1334)
!1337 = !DILocation(line: 237, scope: !1334)
!1338 = !DILocation(line: 237, column: 34, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !25, line: 237, column: 13)
!1340 = !DILocation(line: 237, column: 13, scope: !1334)
!1341 = !DILocation(line: 239, column: 89, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !25, line: 238, column: 13)
!1343 = !DILocation(line: 239, column: 84, scope: !1342)
!1344 = !DILocation(line: 239, column: 83, scope: !1342)
!1345 = !DILocation(line: 239, column: 105, scope: !1342)
!1346 = !DILocation(line: 239, column: 107, scope: !1342)
!1347 = !DILocation(line: 239, column: 100, scope: !1342)
!1348 = !DILocation(line: 239, column: 99, scope: !1342)
!1349 = !DILocation(line: 239, column: 95, scope: !1342)
!1350 = !DILocation(line: 239, column: 121, scope: !1342)
!1351 = !DILocation(line: 239, column: 123, scope: !1342)
!1352 = !DILocation(line: 239, column: 116, scope: !1342)
!1353 = !DILocation(line: 239, column: 115, scope: !1342)
!1354 = !DILocation(line: 239, column: 111, scope: !1342)
!1355 = !DILocation(line: 239, column: 137, scope: !1342)
!1356 = !DILocation(line: 239, column: 139, scope: !1342)
!1357 = !DILocation(line: 239, column: 132, scope: !1342)
!1358 = !DILocation(line: 239, column: 131, scope: !1342)
!1359 = !DILocation(line: 239, column: 127, scope: !1342)
!1360 = !DILocation(line: 239, column: 22, scope: !1342)
!1361 = !DILocation(line: 239, column: 24, scope: !1342)
!1362 = !DILocation(line: 239, column: 36, scope: !1342)
!1363 = !DILocation(line: 239, column: 40, scope: !1342)
!1364 = !DILocation(line: 239, column: 49, scope: !1342)
!1365 = !DILocation(line: 239, column: 58, scope: !1342)
!1366 = !DILocation(line: 239, column: 60, scope: !1342)
!1367 = !DILocation(line: 239, column: 72, scope: !1342)
!1368 = !DILocation(line: 239, column: 53, scope: !1342)
!1369 = !DILocation(line: 239, column: 17, scope: !1342)
!1370 = !DILocation(line: 239, column: 78, scope: !1342)
!1371 = !DILocation(line: 237, column: 49, scope: !1339)
!1372 = !DILocation(line: 237, column: 13, scope: !1339)
!1373 = distinct !{!1373, !1340, !1374, !303}
!1374 = !DILocation(line: 240, column: 13, scope: !1334)
!1375 = !DILocation(line: 230, column: 82, scope: !1311)
!1376 = !DILocation(line: 230, column: 9, scope: !1311)
!1377 = distinct !{!1377, !1302, !1378, !303}
!1378 = !DILocation(line: 241, column: 9, scope: !1303)
!1379 = !DILocation(line: 228, column: 38, scope: !1301)
!1380 = !DILocation(line: 228, column: 5, scope: !1301)
!1381 = distinct !{!1381, !1268, !1382, !303}
!1382 = !DILocation(line: 242, column: 5, scope: !1269)
!1383 = !DILocation(line: 250, scope: !1306)
!1384 = !DILocalVariable(name: "r", scope: !1306, file: !25, line: 250, type: !45)
!1385 = !DILocation(line: 0, scope: !1306)
!1386 = !DILocation(line: 250, column: 23, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1306, file: !25, line: 250, column: 5)
!1388 = !DILocation(line: 252, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !25, line: 252, column: 9)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !25, line: 251, column: 5)
!1391 = !DILocation(line: 252, scope: !1389)
!1392 = !DILocalVariable(name: "c", scope: !1389, file: !25, line: 252, type: !45)
!1393 = !DILocation(line: 0, scope: !1389)
!1394 = !DILocation(line: 252, column: 27, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !25, line: 252, column: 9)
!1396 = !DILocation(line: 254, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !25, line: 254, column: 13)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !25, line: 253, column: 9)
!1399 = !DILocation(line: 254, scope: !1397)
!1400 = !DILocalVariable(name: "i", scope: !1397, file: !25, line: 254, type: !45)
!1401 = !DILocation(line: 0, scope: !1397)
!1402 = !DILocation(line: 254, column: 35, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !25, line: 254, column: 13)
!1404 = !DILocation(line: 256, column: 55, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1403, file: !25, line: 255, column: 13)
!1406 = !DILocation(line: 256, column: 59, scope: !1405)
!1407 = !DILocation(line: 256, column: 63, scope: !1405)
!1408 = !DILocation(line: 256, column: 44, scope: !1405)
!1409 = !DILocation(line: 256, column: 95, scope: !1405)
!1410 = !DILocation(line: 256, column: 92, scope: !1405)
!1411 = !DILocation(line: 256, column: 75, scope: !1405)
!1412 = !DILocation(line: 256, column: 99, scope: !1405)
!1413 = !DILocation(line: 256, column: 104, scope: !1405)
!1414 = !DILocation(line: 256, column: 17, scope: !1405)
!1415 = !DILocation(line: 254, column: 50, scope: !1403)
!1416 = !DILocation(line: 254, column: 13, scope: !1403)
!1417 = distinct !{!1417, !1396, !1418, !303}
!1418 = !DILocation(line: 257, column: 13, scope: !1397)
!1419 = !DILocation(line: 252, column: 50, scope: !1395)
!1420 = !DILocation(line: 252, column: 9, scope: !1395)
!1421 = distinct !{!1421, !1388, !1422, !303}
!1422 = !DILocation(line: 258, column: 9, scope: !1389)
!1423 = !DILocation(line: 250, column: 38, scope: !1387)
!1424 = !DILocation(line: 250, column: 5, scope: !1387)
!1425 = distinct !{!1425, !1305, !1426, !303}
!1426 = !DILocation(line: 259, column: 5, scope: !1306)
!1427 = !DILocation(line: 260, column: 1, scope: !1074)
!1428 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1429, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !49, !49, !18, !45, !45, !45}
!1431 = !DILocalVariable(name: "a", arg: 1, scope: !1428, file: !493, line: 79, type: !49)
!1432 = !DILocation(line: 0, scope: !1428)
!1433 = !DILocalVariable(name: "b", arg: 2, scope: !1428, file: !493, line: 79, type: !49)
!1434 = !DILocalVariable(name: "c", arg: 3, scope: !1428, file: !493, line: 80, type: !18)
!1435 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1428, file: !493, line: 80, type: !45)
!1436 = !DILocalVariable(name: "row_a", arg: 5, scope: !1428, file: !493, line: 80, type: !45)
!1437 = !DILocalVariable(name: "col_b", arg: 6, scope: !1428, file: !493, line: 80, type: !45)
!1438 = !DILocalVariable(name: "i", scope: !1439, file: !493, line: 81, type: !45)
!1439 = distinct !DILexicalBlock(scope: !1428, file: !493, line: 81, column: 5)
!1440 = !DILocation(line: 0, scope: !1439)
!1441 = !DILocation(line: 81, column: 10, scope: !1439)
!1442 = !DILocation(line: 81, scope: !1439)
!1443 = !DILocation(line: 81, column: 23, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !493, line: 81, column: 5)
!1445 = !DILocation(line: 81, column: 5, scope: !1439)
!1446 = !DILocation(line: 82, column: 9, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !493, line: 82, column: 9)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !493, line: 81, column: 53)
!1449 = !DILocation(line: 82, scope: !1447)
!1450 = !DILocalVariable(name: "j", scope: !1447, file: !493, line: 82, type: !45)
!1451 = !DILocation(line: 0, scope: !1447)
!1452 = !DILocation(line: 83, column: 18, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !493, line: 82, column: 46)
!1454 = distinct !DILexicalBlock(scope: !1447, file: !493, line: 82, column: 9)
!1455 = !DILocation(line: 83, column: 16, scope: !1453)
!1456 = !DILocation(line: 82, column: 41, scope: !1454)
!1457 = !DILocation(line: 82, column: 9, scope: !1454)
!1458 = distinct !{!1458, !1446, !1459, !303}
!1459 = !DILocation(line: 84, column: 9, scope: !1447)
!1460 = !DILocation(line: 81, column: 32, scope: !1444)
!1461 = !DILocation(line: 81, column: 39, scope: !1444)
!1462 = !DILocation(line: 81, column: 5, scope: !1444)
!1463 = distinct !{!1463, !1445, !1464, !303}
!1464 = !DILocation(line: 85, column: 5, scope: !1439)
!1465 = !DILocation(line: 86, column: 1, scope: !1428)
!1466 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1467, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !49, !49, !18, !45, !45}
!1469 = !DILocalVariable(name: "a", arg: 1, scope: !1466, file: !493, line: 88, type: !49)
!1470 = !DILocation(line: 0, scope: !1466)
!1471 = !DILocalVariable(name: "b", arg: 2, scope: !1466, file: !493, line: 88, type: !49)
!1472 = !DILocalVariable(name: "c", arg: 3, scope: !1466, file: !493, line: 89, type: !18)
!1473 = !DILocalVariable(name: "m", arg: 4, scope: !1466, file: !493, line: 89, type: !45)
!1474 = !DILocalVariable(name: "n", arg: 5, scope: !1466, file: !493, line: 89, type: !45)
!1475 = !DILocalVariable(name: "i", scope: !1476, file: !493, line: 90, type: !45)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !493, line: 90, column: 5)
!1477 = !DILocation(line: 0, scope: !1476)
!1478 = !DILocation(line: 90, column: 10, scope: !1476)
!1479 = !DILocation(line: 90, scope: !1476)
!1480 = !DILocation(line: 90, column: 23, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !493, line: 90, column: 5)
!1482 = !DILocation(line: 90, column: 5, scope: !1476)
!1483 = !DILocalVariable(name: "j", scope: !1484, file: !493, line: 91, type: !45)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !493, line: 91, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !493, line: 90, column: 33)
!1486 = !DILocation(line: 0, scope: !1484)
!1487 = !DILocation(line: 92, column: 42, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !493, line: 91, column: 37)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !493, line: 91, column: 9)
!1490 = !DILocation(line: 92, column: 38, scope: !1488)
!1491 = !DILocation(line: 92, column: 60, scope: !1488)
!1492 = !DILocation(line: 92, column: 56, scope: !1488)
!1493 = !DILocation(line: 92, column: 32, scope: !1488)
!1494 = !DILocation(line: 92, column: 17, scope: !1488)
!1495 = !DILocation(line: 92, column: 30, scope: !1488)
!1496 = !DILocation(line: 90, column: 28, scope: !1481)
!1497 = !DILocation(line: 90, column: 5, scope: !1481)
!1498 = distinct !{!1498, !1482, !1499, !303}
!1499 = !DILocation(line: 94, column: 5, scope: !1476)
!1500 = !DILocation(line: 95, column: 1, scope: !1466)
!1501 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1502 = !DILocalVariable(name: "m", arg: 1, scope: !1501, file: !25, line: 32, type: !49)
!1503 = !DILocation(line: 0, scope: !1501)
!1504 = !DILocalVariable(name: "menc", arg: 2, scope: !1501, file: !25, line: 32, type: !18)
!1505 = !DILocalVariable(name: "mlen", arg: 3, scope: !1501, file: !25, line: 32, type: !45)
!1506 = !DILocalVariable(name: "i", scope: !1501, file: !25, line: 33, type: !45)
!1507 = !DILocation(line: 34, column: 10, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1501, file: !25, line: 34, column: 5)
!1509 = !DILocation(line: 34, scope: !1508)
!1510 = !DILocation(line: 34, column: 19, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !25, line: 34, column: 5)
!1512 = !DILocation(line: 34, column: 5, scope: !1508)
!1513 = !DILocation(line: 35, column: 20, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !25, line: 34, column: 44)
!1515 = !DILocation(line: 35, column: 31, scope: !1514)
!1516 = !DILocation(line: 35, column: 27, scope: !1514)
!1517 = !DILocation(line: 35, column: 36, scope: !1514)
!1518 = !DILocation(line: 35, column: 24, scope: !1514)
!1519 = !DILocation(line: 35, column: 9, scope: !1514)
!1520 = !DILocation(line: 35, column: 17, scope: !1514)
!1521 = !DILocation(line: 34, column: 31, scope: !1511)
!1522 = !DILocation(line: 34, column: 38, scope: !1511)
!1523 = !DILocation(line: 34, column: 5, scope: !1511)
!1524 = distinct !{!1524, !1512, !1525, !303}
!1525 = !DILocation(line: 36, column: 5, scope: !1508)
!1526 = !DILocation(line: 41, column: 1, scope: !1501)
!1527 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1528, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!14, !14, !14}
!1530 = !DILocalVariable(name: "a", arg: 1, scope: !1527, file: !493, line: 43, type: !14)
!1531 = !DILocation(line: 0, scope: !1527)
!1532 = !DILocalVariable(name: "b", arg: 2, scope: !1527, file: !493, line: 43, type: !14)
!1533 = !DILocation(line: 44, column: 14, scope: !1527)
!1534 = !DILocation(line: 44, column: 5, scope: !1527)
!1535 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1536, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!14, !49, !49, !45, !45}
!1538 = !DILocalVariable(name: "a", arg: 1, scope: !1535, file: !493, line: 70, type: !49)
!1539 = !DILocation(line: 0, scope: !1535)
!1540 = !DILocalVariable(name: "b", arg: 2, scope: !1535, file: !493, line: 71, type: !49)
!1541 = !DILocalVariable(name: "n", arg: 3, scope: !1535, file: !493, line: 71, type: !45)
!1542 = !DILocalVariable(name: "m", arg: 4, scope: !1535, file: !493, line: 71, type: !45)
!1543 = !DILocalVariable(name: "ret", scope: !1535, file: !493, line: 72, type: !14)
!1544 = !DILocalVariable(name: "i", scope: !1545, file: !493, line: 73, type: !45)
!1545 = distinct !DILexicalBlock(scope: !1535, file: !493, line: 73, column: 5)
!1546 = !DILocation(line: 0, scope: !1545)
!1547 = !DILocation(line: 73, column: 10, scope: !1545)
!1548 = !DILocation(line: 73, scope: !1545)
!1549 = !DILocation(line: 73, column: 23, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !493, line: 73, column: 5)
!1551 = !DILocation(line: 73, column: 5, scope: !1545)
!1552 = !DILocation(line: 74, column: 27, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !493, line: 73, column: 41)
!1554 = !DILocation(line: 74, column: 33, scope: !1553)
!1555 = !DILocation(line: 74, column: 21, scope: !1553)
!1556 = !DILocation(line: 74, column: 15, scope: !1553)
!1557 = !DILocation(line: 73, column: 28, scope: !1550)
!1558 = !DILocation(line: 73, column: 35, scope: !1550)
!1559 = !DILocation(line: 73, column: 5, scope: !1550)
!1560 = distinct !{!1560, !1551, !1561, !303}
!1561 = !DILocation(line: 75, column: 5, scope: !1545)
!1562 = !DILocation(line: 76, column: 5, scope: !1535)
!1563 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1528, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1564 = !DILocalVariable(name: "a", arg: 1, scope: !1563, file: !493, line: 9, type: !14)
!1565 = !DILocation(line: 0, scope: !1563)
!1566 = !DILocalVariable(name: "b", arg: 2, scope: !1563, file: !493, line: 9, type: !14)
!1567 = !DILocation(line: 14, column: 10, scope: !1563)
!1568 = !DILocation(line: 14, column: 7, scope: !1563)
!1569 = !DILocation(line: 17, column: 17, scope: !1563)
!1570 = !DILocalVariable(name: "p", scope: !1563, file: !493, line: 11, type: !14)
!1571 = !DILocation(line: 18, column: 13, scope: !1563)
!1572 = !DILocation(line: 18, column: 17, scope: !1563)
!1573 = !DILocation(line: 18, column: 7, scope: !1563)
!1574 = !DILocation(line: 19, column: 13, scope: !1563)
!1575 = !DILocation(line: 19, column: 17, scope: !1563)
!1576 = !DILocation(line: 19, column: 7, scope: !1563)
!1577 = !DILocation(line: 20, column: 13, scope: !1563)
!1578 = !DILocation(line: 20, column: 17, scope: !1563)
!1579 = !DILocation(line: 20, column: 7, scope: !1563)
!1580 = !DILocalVariable(name: "top_p", scope: !1563, file: !493, line: 23, type: !14)
!1581 = !DILocation(line: 24, column: 37, scope: !1563)
!1582 = !DILocation(line: 24, column: 52, scope: !1563)
!1583 = !DILocation(line: 24, column: 43, scope: !1563)
!1584 = !DILocation(line: 24, column: 59, scope: !1563)
!1585 = !DILocalVariable(name: "out", scope: !1563, file: !493, line: 24, type: !14)
!1586 = !DILocation(line: 25, column: 5, scope: !1563)
!1587 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1588 = !DILocation(line: 0, scope: !24)
!1589 = !DILocalVariable(name: "i", scope: !1590, file: !25, line: 117, type: !15)
!1590 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1591 = !DILocation(line: 0, scope: !1590)
!1592 = !DILocation(line: 117, column: 10, scope: !1590)
!1593 = !DILocation(line: 117, scope: !1590)
!1594 = !DILocation(line: 117, column: 26, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !25, line: 117, column: 5)
!1596 = !DILocation(line: 117, column: 5, scope: !1590)
!1597 = !DILocation(line: 124, column: 5, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1599 = !DILocation(line: 119, column: 24, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !25, line: 118, column: 5)
!1601 = !DILocation(line: 119, column: 29, scope: !1600)
!1602 = !DILocation(line: 119, column: 41, scope: !1600)
!1603 = !DILocation(line: 119, column: 38, scope: !1600)
!1604 = !DILocation(line: 119, column: 36, scope: !1600)
!1605 = !DILocation(line: 119, column: 46, scope: !1600)
!1606 = !DILocalVariable(name: "t", scope: !1600, file: !25, line: 119, type: !6)
!1607 = !DILocation(line: 0, scope: !1600)
!1608 = !DILocation(line: 120, column: 21, scope: !1600)
!1609 = !DILocation(line: 120, column: 9, scope: !1600)
!1610 = !DILocation(line: 120, column: 16, scope: !1600)
!1611 = !DILocation(line: 121, column: 12, scope: !1600)
!1612 = !DILocation(line: 121, column: 9, scope: !1600)
!1613 = !DILocation(line: 121, column: 16, scope: !1600)
!1614 = !DILocation(line: 117, column: 33, scope: !1595)
!1615 = !DILocation(line: 117, column: 5, scope: !1595)
!1616 = distinct !{!1616, !1596, !1617, !303}
!1617 = !DILocation(line: 122, column: 5, scope: !1590)
!1618 = !DILocation(line: 124, scope: !1598)
!1619 = !DILocalVariable(name: "i", scope: !1598, file: !25, line: 124, type: !15)
!1620 = !DILocation(line: 0, scope: !1598)
!1621 = !DILocation(line: 124, column: 26, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1598, file: !25, line: 124, column: 5)
!1623 = !DILocation(line: 134, column: 5, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1625 = !DILocation(line: 126, column: 25, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !25, line: 125, column: 5)
!1627 = !DILocation(line: 126, column: 32, scope: !1626)
!1628 = !DILocation(line: 126, column: 43, scope: !1626)
!1629 = !DILocation(line: 126, column: 40, scope: !1626)
!1630 = !DILocation(line: 126, column: 38, scope: !1626)
!1631 = !DILocation(line: 126, column: 48, scope: !1626)
!1632 = !DILocalVariable(name: "t0", scope: !1626, file: !25, line: 126, type: !6)
!1633 = !DILocation(line: 0, scope: !1626)
!1634 = !DILocation(line: 127, column: 28, scope: !1626)
!1635 = !DILocation(line: 127, column: 25, scope: !1626)
!1636 = !DILocation(line: 127, column: 32, scope: !1626)
!1637 = !DILocation(line: 127, column: 43, scope: !1626)
!1638 = !DILocation(line: 127, column: 40, scope: !1626)
!1639 = !DILocation(line: 127, column: 38, scope: !1626)
!1640 = !DILocation(line: 127, column: 48, scope: !1626)
!1641 = !DILocalVariable(name: "t1", scope: !1626, file: !25, line: 127, type: !6)
!1642 = !DILocation(line: 128, column: 23, scope: !1626)
!1643 = !DILocation(line: 128, column: 9, scope: !1626)
!1644 = !DILocation(line: 128, column: 16, scope: !1626)
!1645 = !DILocation(line: 129, column: 23, scope: !1626)
!1646 = !DILocation(line: 129, column: 12, scope: !1626)
!1647 = !DILocation(line: 129, column: 9, scope: !1626)
!1648 = !DILocation(line: 129, column: 16, scope: !1626)
!1649 = !DILocation(line: 130, column: 12, scope: !1626)
!1650 = !DILocation(line: 130, column: 9, scope: !1626)
!1651 = !DILocation(line: 130, column: 16, scope: !1626)
!1652 = !DILocation(line: 131, column: 12, scope: !1626)
!1653 = !DILocation(line: 131, column: 9, scope: !1626)
!1654 = !DILocation(line: 131, column: 16, scope: !1626)
!1655 = !DILocation(line: 124, column: 33, scope: !1622)
!1656 = !DILocation(line: 124, column: 5, scope: !1622)
!1657 = distinct !{!1657, !1597, !1658, !303}
!1658 = !DILocation(line: 132, column: 5, scope: !1598)
!1659 = !DILocation(line: 134, scope: !1624)
!1660 = !DILocalVariable(name: "i", scope: !1624, file: !25, line: 134, type: !15)
!1661 = !DILocation(line: 0, scope: !1624)
!1662 = !DILocation(line: 134, column: 26, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1624, file: !25, line: 134, column: 5)
!1664 = !DILocation(line: 145, column: 5, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1666 = !DILocation(line: 136, column: 25, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !25, line: 135, column: 5)
!1668 = !DILocation(line: 136, column: 32, scope: !1667)
!1669 = !DILocation(line: 136, column: 44, scope: !1667)
!1670 = !DILocation(line: 136, column: 41, scope: !1667)
!1671 = !DILocation(line: 136, column: 39, scope: !1667)
!1672 = !DILocation(line: 136, column: 50, scope: !1667)
!1673 = !DILocalVariable(name: "t0", scope: !1667, file: !25, line: 136, type: !6)
!1674 = !DILocation(line: 0, scope: !1667)
!1675 = !DILocation(line: 137, column: 28, scope: !1667)
!1676 = !DILocation(line: 137, column: 25, scope: !1667)
!1677 = !DILocation(line: 137, column: 32, scope: !1667)
!1678 = !DILocation(line: 137, column: 44, scope: !1667)
!1679 = !DILocation(line: 137, column: 41, scope: !1667)
!1680 = !DILocation(line: 137, column: 39, scope: !1667)
!1681 = !DILocation(line: 137, column: 50, scope: !1667)
!1682 = !DILocalVariable(name: "t1", scope: !1667, file: !25, line: 137, type: !6)
!1683 = !DILocation(line: 139, column: 23, scope: !1667)
!1684 = !DILocation(line: 139, column: 9, scope: !1667)
!1685 = !DILocation(line: 139, column: 17, scope: !1667)
!1686 = !DILocation(line: 140, column: 23, scope: !1667)
!1687 = !DILocation(line: 140, column: 12, scope: !1667)
!1688 = !DILocation(line: 140, column: 9, scope: !1667)
!1689 = !DILocation(line: 140, column: 17, scope: !1667)
!1690 = !DILocation(line: 141, column: 12, scope: !1667)
!1691 = !DILocation(line: 141, column: 9, scope: !1667)
!1692 = !DILocation(line: 141, column: 17, scope: !1667)
!1693 = !DILocation(line: 142, column: 12, scope: !1667)
!1694 = !DILocation(line: 142, column: 9, scope: !1667)
!1695 = !DILocation(line: 142, column: 17, scope: !1667)
!1696 = !DILocation(line: 134, column: 32, scope: !1663)
!1697 = !DILocation(line: 134, column: 5, scope: !1663)
!1698 = distinct !{!1698, !1623, !1699, !303}
!1699 = !DILocation(line: 143, column: 5, scope: !1624)
!1700 = !DILocation(line: 145, scope: !1665)
!1701 = !DILocalVariable(name: "i", scope: !1665, file: !25, line: 145, type: !15)
!1702 = !DILocation(line: 0, scope: !1665)
!1703 = !DILocation(line: 145, column: 26, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1665, file: !25, line: 145, column: 5)
!1705 = !DILocation(line: 147, column: 24, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1704, file: !25, line: 146, column: 5)
!1707 = !DILocation(line: 147, column: 28, scope: !1706)
!1708 = !DILocation(line: 147, column: 39, scope: !1706)
!1709 = !DILocation(line: 147, column: 36, scope: !1706)
!1710 = !DILocation(line: 147, column: 44, scope: !1706)
!1711 = !DILocalVariable(name: "t", scope: !1706, file: !25, line: 147, type: !6)
!1712 = !DILocation(line: 0, scope: !1706)
!1713 = !DILocation(line: 148, column: 21, scope: !1706)
!1714 = !DILocation(line: 148, column: 9, scope: !1706)
!1715 = !DILocation(line: 148, column: 16, scope: !1706)
!1716 = !DILocation(line: 149, column: 12, scope: !1706)
!1717 = !DILocation(line: 149, column: 9, scope: !1706)
!1718 = !DILocation(line: 149, column: 16, scope: !1706)
!1719 = !DILocation(line: 145, column: 32, scope: !1704)
!1720 = !DILocation(line: 145, column: 5, scope: !1704)
!1721 = distinct !{!1721, !1664, !1722, !303}
!1722 = !DILocation(line: 150, column: 5, scope: !1665)
!1723 = !DILocation(line: 151, column: 1, scope: !24)
!1724 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1725 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1724, file: !323, line: 61, type: !239)
!1726 = !DILocation(line: 0, scope: !1724)
!1727 = !DILocalVariable(name: "mat", arg: 2, scope: !1724, file: !323, line: 61, type: !49)
!1728 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1724, file: !323, line: 61, type: !326)
!1729 = !DILocalVariable(name: "acc", arg: 4, scope: !1724, file: !323, line: 61, type: !5)
!1730 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1724, file: !323, line: 62, type: !239)
!1731 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1724, file: !323, line: 62, type: !239)
!1732 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1724, file: !323, line: 62, type: !239)
!1733 = !DILocalVariable(name: "r", scope: !1734, file: !323, line: 64, type: !45)
!1734 = distinct !DILexicalBlock(scope: !1724, file: !323, line: 64, column: 5)
!1735 = !DILocation(line: 0, scope: !1734)
!1736 = !DILocation(line: 64, column: 10, scope: !1734)
!1737 = !DILocation(line: 64, scope: !1734)
!1738 = !DILocation(line: 64, column: 23, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !323, line: 64, column: 5)
!1740 = !DILocation(line: 64, column: 5, scope: !1734)
!1741 = !DILocation(line: 65, column: 9, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !323, line: 65, column: 9)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !323, line: 64, column: 40)
!1744 = !DILocation(line: 65, scope: !1742)
!1745 = !DILocalVariable(name: "c", scope: !1742, file: !323, line: 65, type: !45)
!1746 = !DILocation(line: 0, scope: !1742)
!1747 = !DILocation(line: 65, column: 27, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !323, line: 65, column: 9)
!1749 = !DILocation(line: 66, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !323, line: 66, column: 13)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !323, line: 65, column: 44)
!1752 = !DILocation(line: 66, scope: !1750)
!1753 = !DILocalVariable(name: "k", scope: !1750, file: !323, line: 66, type: !45)
!1754 = !DILocation(line: 0, scope: !1750)
!1755 = !DILocation(line: 66, column: 31, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1750, file: !323, line: 66, column: 13)
!1757 = !DILocation(line: 67, column: 70, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1756, file: !323, line: 66, column: 54)
!1759 = !DILocation(line: 67, column: 84, scope: !1758)
!1760 = !DILocation(line: 67, column: 51, scope: !1758)
!1761 = !DILocation(line: 67, column: 96, scope: !1758)
!1762 = !DILocation(line: 67, column: 90, scope: !1758)
!1763 = !DILocation(line: 67, column: 136, scope: !1758)
!1764 = !DILocation(line: 67, column: 150, scope: !1758)
!1765 = !DILocation(line: 67, column: 117, scope: !1758)
!1766 = !DILocation(line: 67, column: 17, scope: !1758)
!1767 = !DILocation(line: 66, column: 48, scope: !1756)
!1768 = !DILocation(line: 66, column: 13, scope: !1756)
!1769 = distinct !{!1769, !1749, !1770, !303}
!1770 = !DILocation(line: 68, column: 13, scope: !1750)
!1771 = !DILocation(line: 65, column: 40, scope: !1748)
!1772 = !DILocation(line: 65, column: 9, scope: !1748)
!1773 = distinct !{!1773, !1741, !1774, !303}
!1774 = !DILocation(line: 69, column: 9, scope: !1742)
!1775 = !DILocation(line: 64, column: 36, scope: !1739)
!1776 = !DILocation(line: 64, column: 5, scope: !1739)
!1777 = distinct !{!1777, !1740, !1778, !303}
!1778 = !DILocation(line: 70, column: 5, scope: !1734)
!1779 = !DILocation(line: 71, column: 1, scope: !1724)
!1780 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1781 = !DILocalVariable(name: "p", arg: 1, scope: !1780, file: !323, line: 82, type: !174)
!1782 = !DILocation(line: 0, scope: !1780)
!1783 = !DILocalVariable(name: "P1", arg: 2, scope: !1780, file: !323, line: 82, type: !326)
!1784 = !DILocalVariable(name: "V", arg: 3, scope: !1780, file: !323, line: 82, type: !49)
!1785 = !DILocalVariable(name: "acc", arg: 4, scope: !1780, file: !323, line: 82, type: !5)
!1786 = !DILocation(line: 86, column: 5, scope: !1780)
!1787 = !DILocation(line: 87, column: 1, scope: !1780)
!1788 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1789 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1788, file: !323, line: 32, type: !239)
!1790 = !DILocation(line: 0, scope: !1788)
!1791 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1788, file: !323, line: 32, type: !326)
!1792 = !DILocalVariable(name: "mat", arg: 3, scope: !1788, file: !323, line: 32, type: !49)
!1793 = !DILocalVariable(name: "acc", arg: 4, scope: !1788, file: !323, line: 32, type: !5)
!1794 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1788, file: !323, line: 33, type: !239)
!1795 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1788, file: !323, line: 33, type: !239)
!1796 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1788, file: !323, line: 33, type: !239)
!1797 = !DILocalVariable(name: "triangular", arg: 8, scope: !1788, file: !323, line: 33, type: !239)
!1798 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1788, file: !323, line: 34, type: !45)
!1799 = !DILocalVariable(name: "r", scope: !1800, file: !323, line: 35, type: !45)
!1800 = distinct !DILexicalBlock(scope: !1788, file: !323, line: 35, column: 5)
!1801 = !DILocation(line: 0, scope: !1800)
!1802 = !DILocation(line: 35, column: 10, scope: !1800)
!1803 = !DILocation(line: 34, column: 9, scope: !1788)
!1804 = !DILocation(line: 35, scope: !1800)
!1805 = !DILocation(line: 35, column: 23, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1800, file: !323, line: 35, column: 5)
!1807 = !DILocation(line: 35, column: 5, scope: !1800)
!1808 = !DILocation(line: 36, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !323, line: 36, column: 9)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !323, line: 35, column: 43)
!1811 = !DILocation(line: 36, scope: !1809)
!1812 = !DILocalVariable(name: "c", scope: !1809, file: !323, line: 36, type: !45)
!1813 = !DILocation(line: 0, scope: !1809)
!1814 = !DILocation(line: 36, column: 40, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !323, line: 36, column: 9)
!1816 = !DILocation(line: 37, column: 13, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !323, line: 37, column: 13)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !323, line: 36, column: 60)
!1819 = !DILocation(line: 37, scope: !1817)
!1820 = !DILocalVariable(name: "k", scope: !1817, file: !323, line: 37, type: !45)
!1821 = !DILocation(line: 0, scope: !1817)
!1822 = !DILocation(line: 37, column: 31, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1817, file: !323, line: 37, column: 13)
!1824 = !DILocation(line: 38, column: 51, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !323, line: 37, column: 51)
!1826 = !DILocation(line: 38, column: 94, scope: !1825)
!1827 = !DILocation(line: 38, column: 88, scope: !1825)
!1828 = !DILocation(line: 38, column: 137, scope: !1825)
!1829 = !DILocation(line: 38, column: 148, scope: !1825)
!1830 = !DILocation(line: 38, column: 118, scope: !1825)
!1831 = !DILocation(line: 38, column: 17, scope: !1825)
!1832 = !DILocation(line: 37, column: 45, scope: !1823)
!1833 = !DILocation(line: 37, column: 13, scope: !1823)
!1834 = distinct !{!1834, !1816, !1835, !303}
!1835 = !DILocation(line: 39, column: 13, scope: !1817)
!1836 = !DILocation(line: 40, column: 33, scope: !1818)
!1837 = !DILocation(line: 36, column: 56, scope: !1815)
!1838 = !DILocation(line: 36, column: 9, scope: !1815)
!1839 = distinct !{!1839, !1808, !1840, !303}
!1840 = !DILocation(line: 41, column: 9, scope: !1809)
!1841 = !DILocation(line: 35, column: 39, scope: !1806)
!1842 = !DILocation(line: 35, column: 5, scope: !1806)
!1843 = distinct !{!1843, !1807, !1844, !303}
!1844 = !DILocation(line: 42, column: 5, scope: !1800)
!1845 = !DILocation(line: 43, column: 1, scope: !1788)
!1846 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !700, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1847 = !DILocalVariable(name: "p", arg: 1, scope: !1846, file: !25, line: 501, type: !174)
!1848 = !DILocation(line: 0, scope: !1846)
!1849 = !DILocalVariable(name: "sm", arg: 2, scope: !1846, file: !25, line: 501, type: !18)
!1850 = !DILocalVariable(name: "smlen", arg: 3, scope: !1846, file: !25, line: 502, type: !702)
!1851 = !DILocalVariable(name: "m", arg: 4, scope: !1846, file: !25, line: 502, type: !49)
!1852 = !DILocalVariable(name: "mlen", arg: 5, scope: !1846, file: !25, line: 503, type: !15)
!1853 = !DILocalVariable(name: "csk", arg: 6, scope: !1846, file: !25, line: 503, type: !49)
!1854 = !DILocalVariable(name: "ret", scope: !1846, file: !25, line: 504, type: !45)
!1855 = !DILocalVariable(name: "param_sig_bytes", scope: !1846, file: !25, line: 505, type: !239)
!1856 = !DILocation(line: 507, column: 16, scope: !1846)
!1857 = !DILocation(line: 507, column: 5, scope: !1846)
!1858 = !DILocation(line: 508, column: 50, scope: !1846)
!1859 = !DILocalVariable(name: "siglen", scope: !1846, file: !25, line: 506, type: !15)
!1860 = !DILocation(line: 508, column: 11, scope: !1846)
!1861 = !DILocation(line: 509, column: 13, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1846, file: !25, line: 509, column: 9)
!1863 = !DILocation(line: 509, column: 24, scope: !1862)
!1864 = !DILocation(line: 510, column: 23, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !25, line: 509, column: 62)
!1866 = !DILocation(line: 510, column: 30, scope: !1865)
!1867 = !DILocation(line: 510, column: 9, scope: !1865)
!1868 = !DILocation(line: 511, column: 9, scope: !1865)
!1869 = !DILocation(line: 514, column: 14, scope: !1846)
!1870 = !DILocation(line: 514, column: 21, scope: !1846)
!1871 = !DILocation(line: 514, column: 12, scope: !1846)
!1872 = !DILocation(line: 514, column: 5, scope: !1846)
!1873 = !DILabel(scope: !1846, name: "err", file: !25, line: 515)
!1874 = !DILocation(line: 515, column: 1, scope: !1846)
!1875 = !DILocation(line: 516, column: 5, scope: !1846)
!1876 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_open", scope: !25, file: !25, line: 519, type: !700, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1877 = !DILocalVariable(name: "p", arg: 1, scope: !1876, file: !25, line: 519, type: !174)
!1878 = !DILocation(line: 0, scope: !1876)
!1879 = !DILocalVariable(name: "m", arg: 2, scope: !1876, file: !25, line: 519, type: !18)
!1880 = !DILocalVariable(name: "mlen", arg: 3, scope: !1876, file: !25, line: 520, type: !702)
!1881 = !DILocalVariable(name: "sm", arg: 4, scope: !1876, file: !25, line: 520, type: !49)
!1882 = !DILocalVariable(name: "smlen", arg: 5, scope: !1876, file: !25, line: 521, type: !15)
!1883 = !DILocalVariable(name: "pk", arg: 6, scope: !1876, file: !25, line: 521, type: !49)
!1884 = !DILocalVariable(name: "param_sig_bytes", scope: !1876, file: !25, line: 522, type: !239)
!1885 = !DILocation(line: 523, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1876, file: !25, line: 523, column: 9)
!1887 = !DILocation(line: 526, column: 36, scope: !1876)
!1888 = !DILocation(line: 526, column: 61, scope: !1876)
!1889 = !DILocation(line: 526, column: 18, scope: !1876)
!1890 = !DILocalVariable(name: "result", scope: !1876, file: !25, line: 526, type: !45)
!1891 = !DILocation(line: 529, column: 16, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1876, file: !25, line: 529, column: 9)
!1893 = !DILocation(line: 530, column: 23, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1892, file: !25, line: 529, column: 28)
!1895 = !DILocation(line: 530, column: 15, scope: !1894)
!1896 = !DILocation(line: 531, column: 23, scope: !1894)
!1897 = !DILocation(line: 531, column: 9, scope: !1894)
!1898 = !DILocation(line: 532, column: 5, scope: !1894)
!1899 = !DILocation(line: 535, column: 1, scope: !1876)
!1900 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1901, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!45, !174, !49, !15, !49, !49}
!1903 = !DILocalVariable(name: "p", arg: 1, scope: !1900, file: !25, line: 616, type: !174)
!1904 = !DILocation(line: 0, scope: !1900)
!1905 = !DILocalVariable(name: "m", arg: 2, scope: !1900, file: !25, line: 616, type: !49)
!1906 = !DILocalVariable(name: "mlen", arg: 3, scope: !1900, file: !25, line: 617, type: !15)
!1907 = !DILocalVariable(name: "sig", arg: 4, scope: !1900, file: !25, line: 617, type: !49)
!1908 = !DILocalVariable(name: "cpk", arg: 5, scope: !1900, file: !25, line: 618, type: !49)
!1909 = !DILocalVariable(name: "tEnc", scope: !1900, file: !25, line: 619, type: !712)
!1910 = !DILocation(line: 619, column: 19, scope: !1900)
!1911 = !DILocalVariable(name: "t", scope: !1900, file: !25, line: 620, type: !717)
!1912 = !DILocation(line: 620, column: 19, scope: !1900)
!1913 = !DILocalVariable(name: "y", scope: !1900, file: !25, line: 621, type: !1914)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2272, elements: !1915)
!1915 = !{!1916}
!1916 = !DISubrange(count: 284)
!1917 = !DILocation(line: 621, column: 19, scope: !1900)
!1918 = !DILocalVariable(name: "s", scope: !1900, file: !25, line: 622, type: !741)
!1919 = !DILocation(line: 622, column: 19, scope: !1900)
!1920 = !DILocalVariable(name: "pk", scope: !1900, file: !25, line: 623, type: !123)
!1921 = !DILocation(line: 623, column: 14, scope: !1900)
!1922 = !DILocalVariable(name: "tmp", scope: !1900, file: !25, line: 624, type: !1923)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 832, elements: !1924)
!1924 = !{!1925}
!1925 = !DISubrange(count: 104)
!1926 = !DILocation(line: 624, column: 19, scope: !1900)
!1927 = !DILocalVariable(name: "param_m", scope: !1900, file: !25, line: 626, type: !239)
!1928 = !DILocalVariable(name: "param_n", scope: !1900, file: !25, line: 627, type: !239)
!1929 = !DILocalVariable(name: "param_k", scope: !1900, file: !25, line: 628, type: !239)
!1930 = !DILocalVariable(name: "param_m_bytes", scope: !1900, file: !25, line: 629, type: !239)
!1931 = !DILocalVariable(name: "param_sig_bytes", scope: !1900, file: !25, line: 630, type: !239)
!1932 = !DILocalVariable(name: "param_digest_bytes", scope: !1900, file: !25, line: 631, type: !239)
!1933 = !DILocalVariable(name: "param_salt_bytes", scope: !1900, file: !25, line: 632, type: !239)
!1934 = !DILocation(line: 634, column: 15, scope: !1900)
!1935 = !DILocalVariable(name: "ret", scope: !1900, file: !25, line: 634, type: !45)
!1936 = !DILocalVariable(name: "P1", scope: !1900, file: !25, line: 639, type: !5)
!1937 = !DILocation(line: 640, column: 23, scope: !1900)
!1938 = !DILocalVariable(name: "P2", scope: !1900, file: !25, line: 640, type: !5)
!1939 = !DILocation(line: 641, column: 23, scope: !1900)
!1940 = !DILocalVariable(name: "P3", scope: !1900, file: !25, line: 641, type: !5)
!1941 = !DILocation(line: 656, column: 5, scope: !1900)
!1942 = !DILocation(line: 659, column: 16, scope: !1900)
!1943 = !DILocation(line: 659, column: 60, scope: !1900)
!1944 = !DILocation(line: 659, column: 5, scope: !1900)
!1945 = !DILocation(line: 661, column: 5, scope: !1900)
!1946 = !DILocation(line: 662, column: 5, scope: !1900)
!1947 = !DILocation(line: 665, column: 5, scope: !1900)
!1948 = !DILocation(line: 667, column: 5, scope: !1900)
!1949 = !DILocation(line: 669, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1900, file: !25, line: 669, column: 9)
!1951 = !DILocation(line: 669, column: 31, scope: !1950)
!1952 = !DILocation(line: 673, column: 1, scope: !1900)
!1953 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !603, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1954 = !DILocalVariable(name: "p", arg: 1, scope: !1953, file: !25, line: 607, type: !174)
!1955 = !DILocation(line: 0, scope: !1953)
!1956 = !DILocalVariable(name: "cpk", arg: 2, scope: !1953, file: !25, line: 607, type: !49)
!1957 = !DILocalVariable(name: "pk", arg: 3, scope: !1953, file: !25, line: 608, type: !5)
!1958 = !DILocation(line: 609, column: 5, scope: !1953)
!1959 = !DILocation(line: 611, column: 23, scope: !1953)
!1960 = !DILocation(line: 611, column: 72, scope: !1953)
!1961 = !DILocation(line: 611, column: 5, scope: !1953)
!1962 = !DILocation(line: 613, column: 5, scope: !1953)
!1963 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1964, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !174, !49, !326, !326, !326, !18}
!1966 = !DILocalVariable(name: "p", arg: 1, scope: !1963, file: !25, line: 288, type: !174)
!1967 = !DILocation(line: 0, scope: !1963)
!1968 = !DILocalVariable(name: "s", arg: 2, scope: !1963, file: !25, line: 288, type: !49)
!1969 = !DILocalVariable(name: "P1", arg: 3, scope: !1963, file: !25, line: 288, type: !326)
!1970 = !DILocalVariable(name: "P2", arg: 4, scope: !1963, file: !25, line: 288, type: !326)
!1971 = !DILocalVariable(name: "P3", arg: 5, scope: !1963, file: !25, line: 288, type: !326)
!1972 = !DILocalVariable(name: "eval", arg: 6, scope: !1963, file: !25, line: 288, type: !18)
!1973 = !DILocalVariable(name: "SPS", scope: !1963, file: !25, line: 289, type: !229)
!1974 = !DILocation(line: 289, column: 14, scope: !1963)
!1975 = !DILocation(line: 291, column: 5, scope: !1963)
!1976 = !DILocalVariable(name: "zero", scope: !1963, file: !25, line: 292, type: !717)
!1977 = !DILocation(line: 292, column: 19, scope: !1963)
!1978 = !DILocation(line: 293, column: 5, scope: !1963)
!1979 = !DILocation(line: 294, column: 1, scope: !1963)
!1980 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !1981, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !174, !326, !326, !326, !49, !5}
!1983 = !DILocalVariable(name: "p", arg: 1, scope: !1980, file: !323, line: 277, type: !174)
!1984 = !DILocation(line: 0, scope: !1980)
!1985 = !DILocalVariable(name: "P1", arg: 2, scope: !1980, file: !323, line: 277, type: !326)
!1986 = !DILocalVariable(name: "P2", arg: 3, scope: !1980, file: !323, line: 277, type: !326)
!1987 = !DILocalVariable(name: "P3", arg: 4, scope: !1980, file: !323, line: 277, type: !326)
!1988 = !DILocalVariable(name: "s", arg: 5, scope: !1980, file: !323, line: 277, type: !49)
!1989 = !DILocalVariable(name: "SPS", arg: 6, scope: !1980, file: !323, line: 278, type: !5)
!1990 = !DILocalVariable(name: "PS", scope: !1980, file: !323, line: 286, type: !1991)
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1064448, elements: !1992)
!1992 = !{!1993}
!1993 = !DISubrange(count: 16632)
!1994 = !DILocation(line: 286, column: 14, scope: !1980)
!1995 = !DILocation(line: 287, column: 5, scope: !1980)
!1996 = !DILocation(line: 290, column: 5, scope: !1980)
!1997 = !DILocation(line: 292, column: 1, scope: !1980)
!1998 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !1999, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!2001 = !DILocalVariable(name: "P1", arg: 1, scope: !1998, file: !323, line: 151, type: !326)
!2002 = !DILocation(line: 0, scope: !1998)
!2003 = !DILocalVariable(name: "P2", arg: 2, scope: !1998, file: !323, line: 151, type: !326)
!2004 = !DILocalVariable(name: "P3", arg: 3, scope: !1998, file: !323, line: 151, type: !326)
!2005 = !DILocalVariable(name: "S", arg: 4, scope: !1998, file: !323, line: 151, type: !49)
!2006 = !DILocalVariable(name: "m", arg: 5, scope: !1998, file: !323, line: 152, type: !239)
!2007 = !DILocalVariable(name: "v", arg: 6, scope: !1998, file: !323, line: 152, type: !239)
!2008 = !DILocalVariable(name: "o", arg: 7, scope: !1998, file: !323, line: 152, type: !239)
!2009 = !DILocalVariable(name: "k", arg: 8, scope: !1998, file: !323, line: 152, type: !239)
!2010 = !DILocalVariable(name: "PS", arg: 9, scope: !1998, file: !323, line: 152, type: !5)
!2011 = !DILocalVariable(name: "n", scope: !1998, file: !323, line: 154, type: !239)
!2012 = !DILocalVariable(name: "m_vec_limbs", scope: !1998, file: !323, line: 155, type: !239)
!2013 = !DILocalVariable(name: "accumulator", scope: !1998, file: !323, line: 157, type: !2014)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17031168, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 266112)
!2017 = !DILocation(line: 157, column: 14, scope: !1998)
!2018 = !DILocalVariable(name: "P1_used", scope: !1998, file: !323, line: 158, type: !45)
!2019 = !DILocalVariable(name: "row", scope: !2020, file: !323, line: 159, type: !45)
!2020 = distinct !DILexicalBlock(scope: !1998, file: !323, line: 159, column: 5)
!2021 = !DILocation(line: 0, scope: !2020)
!2022 = !DILocation(line: 159, column: 10, scope: !2020)
!2023 = !DILocation(line: 158, column: 9, scope: !1998)
!2024 = !DILocation(line: 159, scope: !2020)
!2025 = !DILocation(line: 159, column: 27, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2020, file: !323, line: 159, column: 5)
!2027 = !DILocation(line: 159, column: 5, scope: !2020)
!2028 = !DILocation(line: 160, column: 9, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !323, line: 160, column: 9)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !323, line: 159, column: 39)
!2031 = !DILocation(line: 175, column: 5, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1998, file: !323, line: 175, column: 5)
!2033 = !DILocation(line: 160, scope: !2029)
!2034 = !DILocalVariable(name: "j", scope: !2029, file: !323, line: 160, type: !45)
!2035 = !DILocation(line: 0, scope: !2029)
!2036 = !DILocation(line: 160, column: 29, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2029, file: !323, line: 160, column: 9)
!2038 = !DILocation(line: 167, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2030, file: !323, line: 167, column: 9)
!2040 = !DILocation(line: 161, column: 13, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !323, line: 161, column: 13)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !323, line: 160, column: 39)
!2043 = !DILocation(line: 161, scope: !2041)
!2044 = !DILocalVariable(name: "col", scope: !2041, file: !323, line: 161, type: !45)
!2045 = !DILocation(line: 0, scope: !2041)
!2046 = !DILocation(line: 161, column: 35, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2041, file: !323, line: 161, column: 13)
!2048 = !DILocation(line: 162, column: 43, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2047, file: !323, line: 161, column: 47)
!2050 = !DILocation(line: 162, column: 91, scope: !2049)
!2051 = !DILocation(line: 162, column: 95, scope: !2049)
!2052 = !DILocation(line: 162, column: 102, scope: !2049)
!2053 = !DILocation(line: 162, column: 115, scope: !2049)
!2054 = !DILocation(line: 162, column: 109, scope: !2049)
!2055 = !DILocation(line: 162, column: 107, scope: !2049)
!2056 = !DILocation(line: 162, column: 82, scope: !2049)
!2057 = !DILocation(line: 162, column: 17, scope: !2049)
!2058 = !DILocation(line: 161, column: 43, scope: !2047)
!2059 = !DILocation(line: 161, column: 13, scope: !2047)
!2060 = distinct !{!2060, !2040, !2061, !303}
!2061 = !DILocation(line: 163, column: 13, scope: !2041)
!2062 = !DILocation(line: 164, column: 21, scope: !2042)
!2063 = !DILocation(line: 160, column: 35, scope: !2037)
!2064 = !DILocation(line: 160, column: 9, scope: !2037)
!2065 = distinct !{!2065, !2028, !2066, !303}
!2066 = !DILocation(line: 165, column: 9, scope: !2029)
!2067 = !DILocation(line: 167, scope: !2039)
!2068 = !DILocalVariable(name: "j", scope: !2039, file: !323, line: 167, type: !45)
!2069 = !DILocation(line: 0, scope: !2039)
!2070 = !DILocation(line: 167, column: 27, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2039, file: !323, line: 167, column: 9)
!2072 = !DILocation(line: 168, column: 13, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !323, line: 168, column: 13)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !323, line: 167, column: 37)
!2075 = !DILocation(line: 168, scope: !2073)
!2076 = !DILocalVariable(name: "col", scope: !2073, file: !323, line: 168, type: !45)
!2077 = !DILocation(line: 0, scope: !2073)
!2078 = !DILocation(line: 168, column: 35, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !323, line: 168, column: 13)
!2080 = !DILocation(line: 169, column: 50, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !323, line: 168, column: 47)
!2082 = !DILocation(line: 169, column: 54, scope: !2081)
!2083 = !DILocation(line: 169, column: 43, scope: !2081)
!2084 = !DILocation(line: 169, column: 93, scope: !2081)
!2085 = !DILocation(line: 169, column: 97, scope: !2081)
!2086 = !DILocation(line: 169, column: 104, scope: !2081)
!2087 = !DILocation(line: 169, column: 118, scope: !2081)
!2088 = !DILocation(line: 169, column: 111, scope: !2081)
!2089 = !DILocation(line: 169, column: 109, scope: !2081)
!2090 = !DILocation(line: 169, column: 84, scope: !2081)
!2091 = !DILocation(line: 169, column: 17, scope: !2081)
!2092 = !DILocation(line: 168, column: 43, scope: !2079)
!2093 = !DILocation(line: 168, column: 13, scope: !2079)
!2094 = distinct !{!2094, !2072, !2095, !303}
!2095 = !DILocation(line: 170, column: 13, scope: !2073)
!2096 = !DILocation(line: 167, column: 33, scope: !2071)
!2097 = !DILocation(line: 167, column: 9, scope: !2071)
!2098 = distinct !{!2098, !2038, !2099, !303}
!2099 = !DILocation(line: 171, column: 9, scope: !2039)
!2100 = !DILocation(line: 159, column: 35, scope: !2026)
!2101 = !DILocation(line: 159, column: 5, scope: !2026)
!2102 = distinct !{!2102, !2027, !2103, !303}
!2103 = !DILocation(line: 172, column: 5, scope: !2020)
!2104 = !DILocation(line: 174, column: 9, scope: !1998)
!2105 = !DILocation(line: 175, scope: !2032)
!2106 = !DILocalVariable(name: "row", scope: !2032, file: !323, line: 175, type: !45)
!2107 = !DILocation(line: 0, scope: !2032)
!2108 = !DILocalVariable(name: "P3_used", scope: !1998, file: !323, line: 174, type: !45)
!2109 = !DILocation(line: 175, column: 27, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2032, file: !323, line: 175, column: 5)
!2111 = !DILocation(line: 176, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !323, line: 176, column: 9)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !323, line: 175, column: 39)
!2114 = !DILocation(line: 186, column: 5, scope: !1998)
!2115 = !DILocation(line: 176, scope: !2112)
!2116 = !DILocalVariable(name: "j", scope: !2112, file: !323, line: 176, type: !45)
!2117 = !DILocation(line: 0, scope: !2112)
!2118 = !DILocation(line: 176, column: 29, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !323, line: 176, column: 9)
!2120 = !DILocation(line: 177, column: 13, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !323, line: 177, column: 13)
!2122 = distinct !DILexicalBlock(scope: !2119, file: !323, line: 176, column: 39)
!2123 = !DILocation(line: 177, scope: !2121)
!2124 = !DILocalVariable(name: "col", scope: !2121, file: !323, line: 177, type: !45)
!2125 = !DILocation(line: 0, scope: !2121)
!2126 = !DILocation(line: 177, column: 35, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !323, line: 177, column: 13)
!2128 = !DILocation(line: 178, column: 43, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2127, file: !323, line: 177, column: 47)
!2130 = !DILocation(line: 178, column: 89, scope: !2129)
!2131 = !DILocation(line: 178, column: 93, scope: !2129)
!2132 = !DILocation(line: 178, column: 100, scope: !2129)
!2133 = !DILocation(line: 178, column: 113, scope: !2129)
!2134 = !DILocation(line: 178, column: 107, scope: !2129)
!2135 = !DILocation(line: 178, column: 105, scope: !2129)
!2136 = !DILocation(line: 178, column: 80, scope: !2129)
!2137 = !DILocation(line: 178, column: 17, scope: !2129)
!2138 = !DILocation(line: 177, column: 43, scope: !2127)
!2139 = !DILocation(line: 177, column: 13, scope: !2127)
!2140 = distinct !{!2140, !2120, !2141, !303}
!2141 = !DILocation(line: 179, column: 13, scope: !2121)
!2142 = !DILocation(line: 180, column: 21, scope: !2122)
!2143 = !DILocation(line: 176, column: 35, scope: !2119)
!2144 = !DILocation(line: 176, column: 9, scope: !2119)
!2145 = distinct !{!2145, !2111, !2146, !303}
!2146 = !DILocation(line: 181, column: 9, scope: !2112)
!2147 = !DILocation(line: 175, column: 35, scope: !2110)
!2148 = !DILocation(line: 175, column: 5, scope: !2110)
!2149 = distinct !{!2149, !2031, !2150, !303}
!2150 = !DILocation(line: 182, column: 5, scope: !2032)
!2151 = !DILocalVariable(name: "i", scope: !1998, file: !323, line: 185, type: !45)
!2152 = !DILocation(line: 186, column: 14, scope: !1998)
!2153 = !DILocation(line: 187, column: 54, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1998, file: !323, line: 186, column: 23)
!2155 = !DILocation(line: 187, column: 81, scope: !2154)
!2156 = !DILocation(line: 187, column: 9, scope: !2154)
!2157 = !DILocation(line: 188, column: 10, scope: !2154)
!2158 = distinct !{!2158, !2114, !2159, !303}
!2159 = !DILocation(line: 189, column: 5, scope: !1998)
!2160 = !DILocation(line: 191, column: 1, scope: !1998)
!2161 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2162, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !326, !49, !45, !45, !45, !5}
!2164 = !DILocalVariable(name: "PS", arg: 1, scope: !2161, file: !323, line: 195, type: !326)
!2165 = !DILocation(line: 0, scope: !2161)
!2166 = !DILocalVariable(name: "S", arg: 2, scope: !2161, file: !323, line: 195, type: !49)
!2167 = !DILocalVariable(name: "m", arg: 3, scope: !2161, file: !323, line: 195, type: !45)
!2168 = !DILocalVariable(name: "k", arg: 4, scope: !2161, file: !323, line: 195, type: !45)
!2169 = !DILocalVariable(name: "n", arg: 5, scope: !2161, file: !323, line: 195, type: !45)
!2170 = !DILocalVariable(name: "SPS", arg: 6, scope: !2161, file: !323, line: 195, type: !5)
!2171 = !DILocalVariable(name: "accumulator", scope: !2161, file: !323, line: 196, type: !2172)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2173)
!2173 = !{!2174}
!2174 = !DISubrange(count: 20736)
!2175 = !DILocation(line: 196, column: 14, scope: !2161)
!2176 = !DILocalVariable(name: "m_vec_limbs", scope: !2161, file: !323, line: 197, type: !239)
!2177 = !DILocalVariable(name: "row", scope: !2178, file: !323, line: 198, type: !45)
!2178 = distinct !DILexicalBlock(scope: !2161, file: !323, line: 198, column: 5)
!2179 = !DILocation(line: 0, scope: !2178)
!2180 = !DILocation(line: 198, column: 10, scope: !2178)
!2181 = !DILocation(line: 198, scope: !2178)
!2182 = !DILocation(line: 198, column: 27, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !323, line: 198, column: 5)
!2184 = !DILocation(line: 198, column: 5, scope: !2178)
!2185 = !DILocation(line: 199, column: 9, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !323, line: 199, column: 9)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !323, line: 198, column: 39)
!2188 = !DILocation(line: 208, column: 5, scope: !2161)
!2189 = !DILocation(line: 199, scope: !2186)
!2190 = !DILocalVariable(name: "j", scope: !2186, file: !323, line: 199, type: !45)
!2191 = !DILocation(line: 0, scope: !2186)
!2192 = !DILocation(line: 199, column: 27, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2186, file: !323, line: 199, column: 9)
!2194 = !DILocation(line: 200, column: 13, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !323, line: 200, column: 13)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !323, line: 199, column: 37)
!2197 = !DILocation(line: 200, scope: !2195)
!2198 = !DILocalVariable(name: "col", scope: !2195, file: !323, line: 200, type: !45)
!2199 = !DILocation(line: 0, scope: !2195)
!2200 = !DILocation(line: 200, column: 35, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2195, file: !323, line: 200, column: 13)
!2202 = !DILocation(line: 201, column: 52, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2201, file: !323, line: 200, column: 50)
!2204 = !DILocation(line: 201, column: 56, scope: !2203)
!2205 = !DILocation(line: 201, column: 47, scope: !2203)
!2206 = !DILocation(line: 201, column: 99, scope: !2203)
!2207 = !DILocation(line: 201, column: 103, scope: !2203)
!2208 = !DILocation(line: 201, column: 110, scope: !2203)
!2209 = !DILocation(line: 201, column: 123, scope: !2203)
!2210 = !DILocation(line: 201, column: 117, scope: !2203)
!2211 = !DILocation(line: 201, column: 115, scope: !2203)
!2212 = !DILocation(line: 201, column: 90, scope: !2203)
!2213 = !DILocation(line: 201, column: 21, scope: !2203)
!2214 = !DILocation(line: 200, column: 44, scope: !2201)
!2215 = !DILocation(line: 200, column: 13, scope: !2201)
!2216 = distinct !{!2216, !2194, !2217, !303}
!2217 = !DILocation(line: 202, column: 13, scope: !2195)
!2218 = !DILocation(line: 199, column: 33, scope: !2193)
!2219 = !DILocation(line: 199, column: 9, scope: !2193)
!2220 = distinct !{!2220, !2185, !2221, !303}
!2221 = !DILocation(line: 203, column: 9, scope: !2186)
!2222 = !DILocation(line: 198, column: 35, scope: !2183)
!2223 = !DILocation(line: 198, column: 5, scope: !2183)
!2224 = distinct !{!2224, !2184, !2225, !303}
!2225 = !DILocation(line: 204, column: 5, scope: !2178)
!2226 = !DILocalVariable(name: "i", scope: !2161, file: !323, line: 207, type: !45)
!2227 = !DILocation(line: 208, column: 14, scope: !2161)
!2228 = !DILocation(line: 209, column: 54, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2161, file: !323, line: 208, column: 21)
!2230 = !DILocation(line: 209, column: 82, scope: !2229)
!2231 = !DILocation(line: 209, column: 9, scope: !2229)
!2232 = !DILocation(line: 210, column: 10, scope: !2229)
!2233 = distinct !{!2233, !2188, !2234, !303}
!2234 = !DILocation(line: 211, column: 5, scope: !2161)
!2235 = !DILocation(line: 212, column: 1, scope: !2161)
!2236 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2237, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !45, !326, !5}
!2239 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2236, file: !437, line: 22, type: !45)
!2240 = !DILocation(line: 0, scope: !2236)
!2241 = !DILocalVariable(name: "in", arg: 2, scope: !2236, file: !437, line: 22, type: !326)
!2242 = !DILocalVariable(name: "acc", arg: 3, scope: !2236, file: !437, line: 22, type: !5)
!2243 = !DILocalVariable(name: "i", scope: !2244, file: !437, line: 24, type: !15)
!2244 = distinct !DILexicalBlock(scope: !2236, file: !437, line: 24, column: 5)
!2245 = !DILocation(line: 0, scope: !2244)
!2246 = !DILocation(line: 24, column: 10, scope: !2244)
!2247 = !DILocation(line: 24, scope: !2244)
!2248 = !DILocation(line: 24, column: 26, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !437, line: 24, column: 5)
!2250 = !DILocation(line: 24, column: 5, scope: !2244)
!2251 = !DILocation(line: 26, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !437, line: 25, column: 5)
!2253 = !DILocation(line: 26, column: 9, scope: !2252)
!2254 = !DILocation(line: 26, column: 16, scope: !2252)
!2255 = !DILocation(line: 24, column: 46, scope: !2249)
!2256 = !DILocation(line: 24, column: 5, scope: !2249)
!2257 = distinct !{!2257, !2250, !2258, !303}
!2258 = !DILocation(line: 27, column: 5, scope: !2244)
!2259 = !DILocation(line: 28, column: 1, scope: !2236)
!2260 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2261, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !45, !5, !5}
!2263 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2260, file: !437, line: 66, type: !45)
!2264 = !DILocation(line: 0, scope: !2260)
!2265 = !DILocalVariable(name: "bins", arg: 2, scope: !2260, file: !437, line: 66, type: !5)
!2266 = !DILocalVariable(name: "out", arg: 3, scope: !2260, file: !437, line: 66, type: !5)
!2267 = !DILocation(line: 67, column: 44, scope: !2260)
!2268 = !DILocation(line: 67, column: 73, scope: !2260)
!2269 = !DILocation(line: 67, column: 5, scope: !2260)
!2270 = !DILocation(line: 68, column: 40, scope: !2260)
!2271 = !DILocation(line: 68, column: 69, scope: !2260)
!2272 = !DILocation(line: 68, column: 5, scope: !2260)
!2273 = !DILocation(line: 69, column: 44, scope: !2260)
!2274 = !DILocation(line: 69, column: 74, scope: !2260)
!2275 = !DILocation(line: 69, column: 5, scope: !2260)
!2276 = !DILocation(line: 70, column: 40, scope: !2260)
!2277 = !DILocation(line: 70, column: 69, scope: !2260)
!2278 = !DILocation(line: 70, column: 5, scope: !2260)
!2279 = !DILocation(line: 71, column: 44, scope: !2260)
!2280 = !DILocation(line: 71, column: 73, scope: !2260)
!2281 = !DILocation(line: 71, column: 5, scope: !2260)
!2282 = !DILocation(line: 72, column: 40, scope: !2260)
!2283 = !DILocation(line: 72, column: 69, scope: !2260)
!2284 = !DILocation(line: 72, column: 5, scope: !2260)
!2285 = !DILocation(line: 73, column: 44, scope: !2260)
!2286 = !DILocation(line: 73, column: 74, scope: !2260)
!2287 = !DILocation(line: 73, column: 5, scope: !2260)
!2288 = !DILocation(line: 74, column: 40, scope: !2260)
!2289 = !DILocation(line: 74, column: 69, scope: !2260)
!2290 = !DILocation(line: 74, column: 5, scope: !2260)
!2291 = !DILocation(line: 75, column: 44, scope: !2260)
!2292 = !DILocation(line: 75, column: 74, scope: !2260)
!2293 = !DILocation(line: 75, column: 5, scope: !2260)
!2294 = !DILocation(line: 76, column: 40, scope: !2260)
!2295 = !DILocation(line: 76, column: 69, scope: !2260)
!2296 = !DILocation(line: 76, column: 5, scope: !2260)
!2297 = !DILocation(line: 77, column: 44, scope: !2260)
!2298 = !DILocation(line: 77, column: 74, scope: !2260)
!2299 = !DILocation(line: 77, column: 5, scope: !2260)
!2300 = !DILocation(line: 78, column: 40, scope: !2260)
!2301 = !DILocation(line: 78, column: 69, scope: !2260)
!2302 = !DILocation(line: 78, column: 5, scope: !2260)
!2303 = !DILocation(line: 79, column: 44, scope: !2260)
!2304 = !DILocation(line: 79, column: 74, scope: !2260)
!2305 = !DILocation(line: 79, column: 5, scope: !2260)
!2306 = !DILocation(line: 80, column: 40, scope: !2260)
!2307 = !DILocation(line: 80, column: 69, scope: !2260)
!2308 = !DILocation(line: 80, column: 5, scope: !2260)
!2309 = !DILocation(line: 81, column: 35, scope: !2260)
!2310 = !DILocation(line: 81, column: 5, scope: !2260)
!2311 = !DILocation(line: 82, column: 1, scope: !2260)
!2312 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2237, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2313 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2312, file: !437, line: 56, type: !45)
!2314 = !DILocation(line: 0, scope: !2312)
!2315 = !DILocalVariable(name: "in", arg: 2, scope: !2312, file: !437, line: 56, type: !326)
!2316 = !DILocalVariable(name: "acc", arg: 3, scope: !2312, file: !437, line: 56, type: !5)
!2317 = !DILocalVariable(name: "mask_lsb", scope: !2312, file: !437, line: 58, type: !6)
!2318 = !DILocalVariable(name: "i", scope: !2319, file: !437, line: 59, type: !45)
!2319 = distinct !DILexicalBlock(scope: !2312, file: !437, line: 59, column: 5)
!2320 = !DILocation(line: 0, scope: !2319)
!2321 = !DILocation(line: 59, column: 9, scope: !2319)
!2322 = !DILocation(line: 59, scope: !2319)
!2323 = !DILocation(line: 59, column: 20, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !437, line: 59, column: 5)
!2325 = !DILocation(line: 59, column: 5, scope: !2319)
!2326 = !DILocation(line: 60, column: 22, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2324, file: !437, line: 59, column: 43)
!2328 = !DILocation(line: 60, column: 28, scope: !2327)
!2329 = !DILocalVariable(name: "t", scope: !2327, file: !437, line: 60, type: !6)
!2330 = !DILocation(line: 0, scope: !2327)
!2331 = !DILocation(line: 61, column: 32, scope: !2327)
!2332 = !DILocation(line: 61, column: 43, scope: !2327)
!2333 = !DILocation(line: 61, column: 38, scope: !2327)
!2334 = !DILocation(line: 61, column: 9, scope: !2327)
!2335 = !DILocation(line: 61, column: 16, scope: !2327)
!2336 = !DILocation(line: 59, column: 40, scope: !2324)
!2337 = !DILocation(line: 59, column: 5, scope: !2324)
!2338 = distinct !{!2338, !2325, !2339, !303}
!2339 = !DILocation(line: 62, column: 5, scope: !2319)
!2340 = !DILocation(line: 63, column: 1, scope: !2312)
!2341 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2237, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2342 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2341, file: !437, line: 46, type: !45)
!2343 = !DILocation(line: 0, scope: !2341)
!2344 = !DILocalVariable(name: "in", arg: 2, scope: !2341, file: !437, line: 46, type: !326)
!2345 = !DILocalVariable(name: "acc", arg: 3, scope: !2341, file: !437, line: 46, type: !5)
!2346 = !DILocalVariable(name: "mask_msb", scope: !2341, file: !437, line: 48, type: !6)
!2347 = !DILocalVariable(name: "i", scope: !2348, file: !437, line: 49, type: !45)
!2348 = distinct !DILexicalBlock(scope: !2341, file: !437, line: 49, column: 5)
!2349 = !DILocation(line: 0, scope: !2348)
!2350 = !DILocation(line: 49, column: 9, scope: !2348)
!2351 = !DILocation(line: 49, scope: !2348)
!2352 = !DILocation(line: 49, column: 20, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !437, line: 49, column: 5)
!2354 = !DILocation(line: 49, column: 5, scope: !2348)
!2355 = !DILocation(line: 50, column: 22, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !437, line: 49, column: 43)
!2357 = !DILocalVariable(name: "t", scope: !2356, file: !437, line: 50, type: !6)
!2358 = !DILocation(line: 0, scope: !2356)
!2359 = !DILocation(line: 51, column: 32, scope: !2356)
!2360 = !DILocation(line: 51, column: 44, scope: !2356)
!2361 = !DILocation(line: 51, column: 50, scope: !2356)
!2362 = !DILocation(line: 51, column: 38, scope: !2356)
!2363 = !DILocation(line: 51, column: 9, scope: !2356)
!2364 = !DILocation(line: 51, column: 16, scope: !2356)
!2365 = !DILocation(line: 49, column: 40, scope: !2353)
!2366 = !DILocation(line: 49, column: 5, scope: !2353)
!2367 = distinct !{!2367, !2354, !2368, !303}
!2368 = !DILocation(line: 52, column: 5, scope: !2348)
!2369 = !DILocation(line: 53, column: 1, scope: !2341)
!2370 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2237, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2371 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2370, file: !437, line: 13, type: !45)
!2372 = !DILocation(line: 0, scope: !2370)
!2373 = !DILocalVariable(name: "in", arg: 2, scope: !2370, file: !437, line: 13, type: !326)
!2374 = !DILocalVariable(name: "out", arg: 3, scope: !2370, file: !437, line: 13, type: !5)
!2375 = !DILocalVariable(name: "i", scope: !2376, file: !437, line: 15, type: !15)
!2376 = distinct !DILexicalBlock(scope: !2370, file: !437, line: 15, column: 5)
!2377 = !DILocation(line: 0, scope: !2376)
!2378 = !DILocation(line: 15, column: 10, scope: !2376)
!2379 = !DILocation(line: 15, scope: !2376)
!2380 = !DILocation(line: 15, column: 26, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !437, line: 15, column: 5)
!2382 = !DILocation(line: 15, column: 5, scope: !2376)
!2383 = !DILocation(line: 17, column: 18, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !437, line: 16, column: 5)
!2385 = !DILocation(line: 17, column: 9, scope: !2384)
!2386 = !DILocation(line: 17, column: 16, scope: !2384)
!2387 = !DILocation(line: 15, column: 46, scope: !2381)
!2388 = !DILocation(line: 15, column: 5, scope: !2381)
!2389 = distinct !{!2389, !2382, !2390, !303}
!2390 = !DILocation(line: 18, column: 5, scope: !2376)
!2391 = !DILocation(line: 19, column: 1, scope: !2370)
!2392 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_m_upper", scope: !58, file: !58, line: 14, type: !2393, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2395, !326, !5, !45}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2398)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2398, file: !36, line: 266, baseType: !45, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2398, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2398, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2398, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2398, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2398, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2398, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2398, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2398, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2398, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2398, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2398, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2398, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2398, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2398, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2398, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2398, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2398, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2398, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2398, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2398, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2398, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2398, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2423 = !DILocalVariable(name: "p", arg: 1, scope: !2392, file: !58, line: 14, type: !2395)
!2424 = !DILocation(line: 0, scope: !2392)
!2425 = !DILocalVariable(name: "in", arg: 2, scope: !2392, file: !58, line: 14, type: !326)
!2426 = !DILocalVariable(name: "out", arg: 3, scope: !2392, file: !58, line: 14, type: !5)
!2427 = !DILocalVariable(name: "size", arg: 4, scope: !2392, file: !58, line: 14, type: !45)
!2428 = !DILocalVariable(name: "m_vec_limbs", scope: !2392, file: !58, line: 19, type: !239)
!2429 = !DILocalVariable(name: "m_vecs_stored", scope: !2392, file: !58, line: 20, type: !45)
!2430 = !DILocalVariable(name: "r", scope: !2431, file: !58, line: 21, type: !45)
!2431 = distinct !DILexicalBlock(scope: !2392, file: !58, line: 21, column: 5)
!2432 = !DILocation(line: 0, scope: !2431)
!2433 = !DILocation(line: 21, column: 10, scope: !2431)
!2434 = !DILocation(line: 20, column: 9, scope: !2392)
!2435 = !DILocation(line: 21, scope: !2431)
!2436 = !DILocation(line: 21, column: 23, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2431, file: !58, line: 21, column: 5)
!2438 = !DILocation(line: 21, column: 5, scope: !2431)
!2439 = !DILocation(line: 22, column: 9, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !58, line: 22, column: 9)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !58, line: 21, column: 36)
!2442 = !DILocation(line: 22, scope: !2440)
!2443 = !DILocalVariable(name: "c", scope: !2440, file: !58, line: 22, type: !45)
!2444 = !DILocation(line: 0, scope: !2440)
!2445 = !DILocation(line: 22, column: 27, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2440, file: !58, line: 22, column: 9)
!2447 = !DILocation(line: 23, column: 59, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 22, column: 40)
!2449 = !DILocation(line: 23, column: 66, scope: !2448)
!2450 = !DILocation(line: 23, column: 40, scope: !2448)
!2451 = !DILocation(line: 23, column: 76, scope: !2448)
!2452 = !DILocation(line: 23, column: 13, scope: !2448)
!2453 = !DILocation(line: 24, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !58, line: 24, column: 17)
!2455 = !DILocation(line: 25, column: 62, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !58, line: 24, column: 25)
!2457 = !DILocation(line: 25, column: 69, scope: !2456)
!2458 = !DILocation(line: 25, column: 43, scope: !2456)
!2459 = !DILocation(line: 25, column: 79, scope: !2456)
!2460 = !DILocation(line: 25, column: 17, scope: !2456)
!2461 = !DILocation(line: 26, column: 13, scope: !2456)
!2462 = !DILocation(line: 27, column: 27, scope: !2448)
!2463 = !DILocation(line: 22, column: 36, scope: !2446)
!2464 = !DILocation(line: 22, column: 9, scope: !2446)
!2465 = distinct !{!2465, !2439, !2466, !303}
!2466 = !DILocation(line: 28, column: 9, scope: !2440)
!2467 = !DILocation(line: 21, column: 32, scope: !2437)
!2468 = !DILocation(line: 21, column: 5, scope: !2437)
!2469 = distinct !{!2469, !2438, !2470, !303}
!2470 = !DILocation(line: 29, column: 5, scope: !2431)
!2471 = !DILocation(line: 30, column: 1, scope: !2392)
!2472 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2237, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2473 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2472, file: !437, line: 13, type: !45)
!2474 = !DILocation(line: 0, scope: !2472)
!2475 = !DILocalVariable(name: "in", arg: 2, scope: !2472, file: !437, line: 13, type: !326)
!2476 = !DILocalVariable(name: "out", arg: 3, scope: !2472, file: !437, line: 13, type: !5)
!2477 = !DILocalVariable(name: "i", scope: !2478, file: !437, line: 15, type: !15)
!2478 = distinct !DILexicalBlock(scope: !2472, file: !437, line: 15, column: 5)
!2479 = !DILocation(line: 0, scope: !2478)
!2480 = !DILocation(line: 15, column: 10, scope: !2478)
!2481 = !DILocation(line: 15, scope: !2478)
!2482 = !DILocation(line: 15, column: 26, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2478, file: !437, line: 15, column: 5)
!2484 = !DILocation(line: 15, column: 5, scope: !2478)
!2485 = !DILocation(line: 17, column: 18, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !437, line: 16, column: 5)
!2487 = !DILocation(line: 17, column: 9, scope: !2486)
!2488 = !DILocation(line: 17, column: 16, scope: !2486)
!2489 = !DILocation(line: 15, column: 46, scope: !2483)
!2490 = !DILocation(line: 15, column: 5, scope: !2483)
!2491 = distinct !{!2491, !2484, !2492, !303}
!2492 = !DILocation(line: 18, column: 5, scope: !2478)
!2493 = !DILocation(line: 19, column: 1, scope: !2472)
!2494 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2237, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2495 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2494, file: !437, line: 22, type: !45)
!2496 = !DILocation(line: 0, scope: !2494)
!2497 = !DILocalVariable(name: "in", arg: 2, scope: !2494, file: !437, line: 22, type: !326)
!2498 = !DILocalVariable(name: "acc", arg: 3, scope: !2494, file: !437, line: 22, type: !5)
!2499 = !DILocalVariable(name: "i", scope: !2500, file: !437, line: 24, type: !15)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !437, line: 24, column: 5)
!2501 = !DILocation(line: 0, scope: !2500)
!2502 = !DILocation(line: 24, column: 10, scope: !2500)
!2503 = !DILocation(line: 24, scope: !2500)
!2504 = !DILocation(line: 24, column: 26, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !437, line: 24, column: 5)
!2506 = !DILocation(line: 24, column: 5, scope: !2500)
!2507 = !DILocation(line: 26, column: 19, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !437, line: 25, column: 5)
!2509 = !DILocation(line: 26, column: 9, scope: !2508)
!2510 = !DILocation(line: 26, column: 16, scope: !2508)
!2511 = !DILocation(line: 24, column: 46, scope: !2505)
!2512 = !DILocation(line: 24, column: 5, scope: !2505)
!2513 = distinct !{!2513, !2506, !2514, !303}
!2514 = !DILocation(line: 27, column: 5, scope: !2500)
!2515 = !DILocation(line: 28, column: 1, scope: !2494)
!2516 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2517, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!45, !2395, !18, !49, !49, !18, !45, !45, !45, !45}
!2519 = !DILocalVariable(name: "p", arg: 1, scope: !2516, file: !58, line: 40, type: !2395)
!2520 = !DILocation(line: 0, scope: !2516)
!2521 = !DILocalVariable(name: "A", arg: 2, scope: !2516, file: !58, line: 40, type: !18)
!2522 = !DILocalVariable(name: "y", arg: 3, scope: !2516, file: !58, line: 41, type: !49)
!2523 = !DILocalVariable(name: "r", arg: 4, scope: !2516, file: !58, line: 41, type: !49)
!2524 = !DILocalVariable(name: "x", arg: 5, scope: !2516, file: !58, line: 42, type: !18)
!2525 = !DILocalVariable(name: "k", arg: 6, scope: !2516, file: !58, line: 42, type: !45)
!2526 = !DILocalVariable(name: "o", arg: 7, scope: !2516, file: !58, line: 42, type: !45)
!2527 = !DILocalVariable(name: "m", arg: 8, scope: !2516, file: !58, line: 42, type: !45)
!2528 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2516, file: !58, line: 42, type: !45)
!2529 = !DILocalVariable(name: "i", scope: !2530, file: !58, line: 51, type: !45)
!2530 = distinct !DILexicalBlock(scope: !2516, file: !58, line: 51, column: 5)
!2531 = !DILocation(line: 0, scope: !2530)
!2532 = !DILocation(line: 51, column: 10, scope: !2530)
!2533 = !DILocation(line: 51, scope: !2530)
!2534 = !DILocation(line: 51, column: 23, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2530, file: !58, line: 51, column: 5)
!2536 = !DILocation(line: 51, column: 5, scope: !2530)
!2537 = !DILocation(line: 57, column: 5, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2516, file: !58, line: 57, column: 5)
!2539 = !DILocation(line: 52, column: 16, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !58, line: 51, column: 37)
!2541 = !DILocation(line: 52, column: 9, scope: !2540)
!2542 = !DILocation(line: 52, column: 14, scope: !2540)
!2543 = !DILocation(line: 51, column: 33, scope: !2535)
!2544 = !DILocation(line: 51, column: 5, scope: !2535)
!2545 = distinct !{!2545, !2536, !2546, !303}
!2546 = !DILocation(line: 53, column: 5, scope: !2530)
!2547 = !DILocation(line: 57, scope: !2538)
!2548 = !DILocalVariable(name: "i", scope: !2538, file: !58, line: 57, type: !45)
!2549 = !DILocation(line: 0, scope: !2538)
!2550 = !DILocation(line: 57, column: 23, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2538, file: !58, line: 57, column: 5)
!2552 = !DILocation(line: 58, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !58, line: 57, column: 33)
!2554 = !DILocation(line: 58, column: 26, scope: !2553)
!2555 = !DILocation(line: 58, column: 30, scope: !2553)
!2556 = !DILocation(line: 58, column: 21, scope: !2553)
!2557 = !DILocation(line: 58, column: 9, scope: !2553)
!2558 = !DILocation(line: 58, column: 36, scope: !2553)
!2559 = !DILocation(line: 57, column: 29, scope: !2551)
!2560 = !DILocation(line: 57, column: 5, scope: !2551)
!2561 = distinct !{!2561, !2537, !2562, !303}
!2562 = !DILocation(line: 59, column: 5, scope: !2538)
!2563 = !DILocation(line: 60, column: 25, scope: !2516)
!2564 = !DILocation(line: 60, column: 29, scope: !2516)
!2565 = !DILocation(line: 60, column: 5, scope: !2516)
!2566 = !DILocalVariable(name: "i", scope: !2567, file: !58, line: 63, type: !45)
!2567 = distinct !DILexicalBlock(scope: !2516, file: !58, line: 63, column: 5)
!2568 = !DILocation(line: 0, scope: !2567)
!2569 = !DILocation(line: 63, column: 10, scope: !2567)
!2570 = !DILocation(line: 63, scope: !2567)
!2571 = !DILocation(line: 63, column: 23, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !58, line: 63, column: 5)
!2573 = !DILocation(line: 63, column: 5, scope: !2567)
!2574 = !DILocation(line: 64, column: 44, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !58, line: 63, column: 33)
!2576 = !DILocation(line: 64, column: 50, scope: !2575)
!2577 = !DILocation(line: 64, column: 38, scope: !2575)
!2578 = !DILocation(line: 64, column: 13, scope: !2575)
!2579 = !DILocation(line: 64, column: 26, scope: !2575)
!2580 = !DILocation(line: 64, column: 30, scope: !2575)
!2581 = !DILocation(line: 64, column: 21, scope: !2575)
!2582 = !DILocation(line: 64, column: 9, scope: !2575)
!2583 = !DILocation(line: 64, column: 36, scope: !2575)
!2584 = !DILocation(line: 63, column: 29, scope: !2572)
!2585 = !DILocation(line: 63, column: 5, scope: !2572)
!2586 = distinct !{!2586, !2573, !2587, !303}
!2587 = !DILocation(line: 65, column: 5, scope: !2567)
!2588 = !DILocation(line: 67, column: 16, scope: !2516)
!2589 = !DILocation(line: 67, column: 20, scope: !2516)
!2590 = !DILocation(line: 67, column: 5, scope: !2516)
!2591 = !DILocalVariable(name: "full_rank", scope: !2516, file: !58, line: 70, type: !14)
!2592 = !DILocalVariable(name: "i", scope: !2593, file: !58, line: 71, type: !45)
!2593 = distinct !DILexicalBlock(scope: !2516, file: !58, line: 71, column: 5)
!2594 = !DILocation(line: 0, scope: !2593)
!2595 = !DILocation(line: 71, column: 10, scope: !2593)
!2596 = !DILocation(line: 71, scope: !2593)
!2597 = !DILocation(line: 71, column: 23, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2593, file: !58, line: 71, column: 5)
!2599 = !DILocation(line: 71, column: 5, scope: !2593)
!2600 = !DILocation(line: 72, column: 27, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !58, line: 71, column: 42)
!2602 = !DILocation(line: 72, column: 32, scope: !2601)
!2603 = !DILocation(line: 72, column: 22, scope: !2601)
!2604 = !DILocation(line: 72, column: 19, scope: !2601)
!2605 = !DILocation(line: 71, column: 38, scope: !2598)
!2606 = !DILocation(line: 71, column: 5, scope: !2598)
!2607 = distinct !{!2607, !2599, !2608, !303}
!2608 = !DILocation(line: 73, column: 5, scope: !2593)
!2609 = !DILocation(line: 80, column: 19, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2516, file: !58, line: 80, column: 9)
!2611 = !DILocation(line: 88, column: 5, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2516, file: !58, line: 88, column: 5)
!2613 = distinct !{!2613, !2611, !2614, !303}
!2614 = !DILocation(line: 122, column: 5, scope: !2612)
!2615 = !DILocation(line: 88, scope: !2612)
!2616 = !DILocalVariable(name: "row", scope: !2612, file: !58, line: 88, type: !45)
!2617 = !DILocation(line: 0, scope: !2612)
!2618 = !DILocation(line: 88, column: 31, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 88, column: 5)
!2620 = !DILocalVariable(name: "finished", scope: !2516, file: !58, line: 46, type: !14)
!2621 = !DILocation(line: 90, column: 27, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !58, line: 88, column: 44)
!2623 = !DILocalVariable(name: "col_upper_bound", scope: !2516, file: !58, line: 47, type: !45)
!2624 = !DILocalVariable(name: "col", scope: !2625, file: !58, line: 93, type: !45)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !58, line: 93, column: 9)
!2626 = !DILocation(line: 0, scope: !2625)
!2627 = !DILocation(line: 93, column: 14, scope: !2625)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 93, scope: !2625)
!2630 = !DILocation(line: 93, column: 33, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2625, file: !58, line: 93, column: 9)
!2632 = !DILocation(line: 93, column: 9, scope: !2625)
!2633 = !DILocation(line: 97, column: 50, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2631, file: !58, line: 93, column: 60)
!2635 = !DILocation(line: 97, column: 44, scope: !2634)
!2636 = !DILocation(line: 97, column: 30, scope: !2634)
!2637 = !DILocation(line: 97, column: 73, scope: !2634)
!2638 = !DILocalVariable(name: "correct_column", scope: !2516, file: !58, line: 48, type: !14)
!2639 = !DILocation(line: 99, column: 63, scope: !2634)
!2640 = !DILocation(line: 99, column: 48, scope: !2634)
!2641 = !DILocation(line: 99, column: 46, scope: !2634)
!2642 = !DILocalVariable(name: "u", scope: !2634, file: !58, line: 99, type: !14)
!2643 = !DILocation(line: 0, scope: !2634)
!2644 = !DILocation(line: 100, column: 13, scope: !2634)
!2645 = !DILocation(line: 100, column: 20, scope: !2634)
!2646 = !DILocalVariable(name: "i", scope: !2647, file: !58, line: 102, type: !45)
!2647 = distinct !DILexicalBlock(scope: !2634, file: !58, line: 102, column: 13)
!2648 = !DILocation(line: 0, scope: !2647)
!2649 = !DILocation(line: 102, column: 18, scope: !2647)
!2650 = !DILocation(line: 102, scope: !2647)
!2651 = !DILocation(line: 102, column: 31, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !58, line: 102, column: 13)
!2653 = !DILocation(line: 102, column: 13, scope: !2647)
!2654 = !DILocation(line: 103, column: 53, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !58, line: 102, column: 46)
!2656 = !DILocation(line: 103, column: 45, scope: !2655)
!2657 = !DILocation(line: 103, column: 34, scope: !2655)
!2658 = !DILocation(line: 103, column: 95, scope: !2655)
!2659 = !DILocation(line: 103, column: 99, scope: !2655)
!2660 = !DILocation(line: 103, column: 91, scope: !2655)
!2661 = !DILocation(line: 103, column: 80, scope: !2655)
!2662 = !DILocation(line: 103, column: 115, scope: !2655)
!2663 = !DILocation(line: 103, column: 76, scope: !2655)
!2664 = !DILocation(line: 104, column: 49, scope: !2655)
!2665 = !DILocation(line: 104, column: 53, scope: !2655)
!2666 = !DILocation(line: 104, column: 45, scope: !2655)
!2667 = !DILocation(line: 104, column: 34, scope: !2655)
!2668 = !DILocation(line: 104, column: 69, scope: !2655)
!2669 = !DILocation(line: 104, column: 30, scope: !2655)
!2670 = !DILocation(line: 104, column: 95, scope: !2655)
!2671 = !DILocation(line: 104, column: 99, scope: !2655)
!2672 = !DILocation(line: 104, column: 91, scope: !2655)
!2673 = !DILocation(line: 104, column: 80, scope: !2655)
!2674 = !DILocation(line: 104, column: 115, scope: !2655)
!2675 = !DILocation(line: 104, column: 76, scope: !2655)
!2676 = !DILocation(line: 105, column: 49, scope: !2655)
!2677 = !DILocation(line: 105, column: 53, scope: !2655)
!2678 = !DILocation(line: 105, column: 45, scope: !2655)
!2679 = !DILocation(line: 105, column: 34, scope: !2655)
!2680 = !DILocation(line: 105, column: 69, scope: !2655)
!2681 = !DILocation(line: 105, column: 30, scope: !2655)
!2682 = !DILocation(line: 105, column: 95, scope: !2655)
!2683 = !DILocation(line: 105, column: 99, scope: !2655)
!2684 = !DILocation(line: 105, column: 91, scope: !2655)
!2685 = !DILocation(line: 105, column: 80, scope: !2655)
!2686 = !DILocation(line: 105, column: 115, scope: !2655)
!2687 = !DILocation(line: 105, column: 76, scope: !2655)
!2688 = !DILocation(line: 106, column: 49, scope: !2655)
!2689 = !DILocation(line: 106, column: 53, scope: !2655)
!2690 = !DILocation(line: 106, column: 45, scope: !2655)
!2691 = !DILocation(line: 106, column: 34, scope: !2655)
!2692 = !DILocation(line: 106, column: 69, scope: !2655)
!2693 = !DILocation(line: 106, column: 30, scope: !2655)
!2694 = !DILocation(line: 106, column: 95, scope: !2655)
!2695 = !DILocation(line: 106, column: 99, scope: !2655)
!2696 = !DILocation(line: 106, column: 91, scope: !2655)
!2697 = !DILocation(line: 106, column: 80, scope: !2655)
!2698 = !DILocation(line: 106, column: 115, scope: !2655)
!2699 = !DILocation(line: 106, column: 76, scope: !2655)
!2700 = !DILocalVariable(name: "tmp", scope: !2655, file: !58, line: 103, type: !6)
!2701 = !DILocation(line: 0, scope: !2655)
!2702 = !DILocation(line: 108, column: 23, scope: !2655)
!2703 = !DILocation(line: 110, column: 34, scope: !2655)
!2704 = !DILocation(line: 110, column: 17, scope: !2655)
!2705 = !DILocation(line: 110, column: 48, scope: !2655)
!2706 = !DILocation(line: 111, column: 56, scope: !2655)
!2707 = !DILocation(line: 111, column: 34, scope: !2655)
!2708 = !DILocation(line: 111, column: 17, scope: !2655)
!2709 = !DILocation(line: 111, column: 48, scope: !2655)
!2710 = !DILocation(line: 112, column: 56, scope: !2655)
!2711 = !DILocation(line: 112, column: 34, scope: !2655)
!2712 = !DILocation(line: 112, column: 17, scope: !2655)
!2713 = !DILocation(line: 112, column: 48, scope: !2655)
!2714 = !DILocation(line: 113, column: 56, scope: !2655)
!2715 = !DILocation(line: 113, column: 34, scope: !2655)
!2716 = !DILocation(line: 113, column: 17, scope: !2655)
!2717 = !DILocation(line: 113, column: 48, scope: !2655)
!2718 = !DILocation(line: 114, column: 56, scope: !2655)
!2719 = !DILocation(line: 114, column: 34, scope: !2655)
!2720 = !DILocation(line: 114, column: 17, scope: !2655)
!2721 = !DILocation(line: 114, column: 48, scope: !2655)
!2722 = !DILocation(line: 115, column: 56, scope: !2655)
!2723 = !DILocation(line: 115, column: 34, scope: !2655)
!2724 = !DILocation(line: 115, column: 17, scope: !2655)
!2725 = !DILocation(line: 115, column: 48, scope: !2655)
!2726 = !DILocation(line: 116, column: 56, scope: !2655)
!2727 = !DILocation(line: 116, column: 34, scope: !2655)
!2728 = !DILocation(line: 116, column: 17, scope: !2655)
!2729 = !DILocation(line: 116, column: 48, scope: !2655)
!2730 = !DILocation(line: 117, column: 56, scope: !2655)
!2731 = !DILocation(line: 117, column: 34, scope: !2655)
!2732 = !DILocation(line: 117, column: 17, scope: !2655)
!2733 = !DILocation(line: 117, column: 48, scope: !2655)
!2734 = !DILocation(line: 102, column: 40, scope: !2652)
!2735 = !DILocation(line: 102, column: 13, scope: !2652)
!2736 = distinct !{!2736, !2653, !2737, !303}
!2737 = !DILocation(line: 118, column: 13, scope: !2647)
!2738 = !DILocation(line: 120, column: 33, scope: !2634)
!2739 = !DILocation(line: 93, column: 56, scope: !2631)
!2740 = !DILocation(line: 93, column: 9, scope: !2631)
!2741 = distinct !{!2741, !2632, !2742, !303}
!2742 = !DILocation(line: 121, column: 9, scope: !2625)
!2743 = !DILocation(line: 124, column: 1, scope: !2516)
!2744 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1429, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2745 = !DILocalVariable(name: "a", arg: 1, scope: !2744, file: !493, line: 79, type: !49)
!2746 = !DILocation(line: 0, scope: !2744)
!2747 = !DILocalVariable(name: "b", arg: 2, scope: !2744, file: !493, line: 79, type: !49)
!2748 = !DILocalVariable(name: "c", arg: 3, scope: !2744, file: !493, line: 80, type: !18)
!2749 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2744, file: !493, line: 80, type: !45)
!2750 = !DILocalVariable(name: "row_a", arg: 5, scope: !2744, file: !493, line: 80, type: !45)
!2751 = !DILocalVariable(name: "col_b", arg: 6, scope: !2744, file: !493, line: 80, type: !45)
!2752 = !DILocalVariable(name: "i", scope: !2753, file: !493, line: 81, type: !45)
!2753 = distinct !DILexicalBlock(scope: !2744, file: !493, line: 81, column: 5)
!2754 = !DILocation(line: 0, scope: !2753)
!2755 = !DILocation(line: 81, column: 10, scope: !2753)
!2756 = !DILocation(line: 81, scope: !2753)
!2757 = !DILocation(line: 81, column: 23, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2753, file: !493, line: 81, column: 5)
!2759 = !DILocation(line: 81, column: 5, scope: !2753)
!2760 = !DILocation(line: 82, column: 9, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !493, line: 82, column: 9)
!2762 = distinct !DILexicalBlock(scope: !2758, file: !493, line: 81, column: 53)
!2763 = !DILocation(line: 82, scope: !2761)
!2764 = !DILocalVariable(name: "j", scope: !2761, file: !493, line: 82, type: !45)
!2765 = !DILocation(line: 0, scope: !2761)
!2766 = !DILocation(line: 83, column: 18, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !493, line: 82, column: 46)
!2768 = distinct !DILexicalBlock(scope: !2761, file: !493, line: 82, column: 9)
!2769 = !DILocation(line: 83, column: 16, scope: !2767)
!2770 = !DILocation(line: 82, column: 41, scope: !2768)
!2771 = !DILocation(line: 82, column: 9, scope: !2768)
!2772 = distinct !{!2772, !2760, !2773, !303}
!2773 = !DILocation(line: 84, column: 9, scope: !2761)
!2774 = !DILocation(line: 81, column: 32, scope: !2758)
!2775 = !DILocation(line: 81, column: 39, scope: !2758)
!2776 = !DILocation(line: 81, column: 5, scope: !2758)
!2777 = distinct !{!2777, !2759, !2778, !303}
!2778 = !DILocation(line: 85, column: 5, scope: !2753)
!2779 = !DILocation(line: 86, column: 1, scope: !2744)
!2780 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1528, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2781 = !DILocalVariable(name: "a", arg: 1, scope: !2780, file: !493, line: 48, type: !14)
!2782 = !DILocation(line: 0, scope: !2780)
!2783 = !DILocalVariable(name: "b", arg: 2, scope: !2780, file: !493, line: 48, type: !14)
!2784 = !DILocation(line: 49, column: 14, scope: !2780)
!2785 = !DILocation(line: 49, column: 5, scope: !2780)
!2786 = distinct !DISubprogram(name: "EF", scope: !2787, file: !2787, line: 60, type: !2788, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2787 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !18, !45, !45}
!2790 = !DILocalVariable(name: "A", arg: 1, scope: !2786, file: !2787, line: 60, type: !18)
!2791 = !DILocation(line: 0, scope: !2786)
!2792 = !DILocalVariable(name: "nrows", arg: 2, scope: !2786, file: !2787, line: 60, type: !45)
!2793 = !DILocalVariable(name: "ncols", arg: 3, scope: !2786, file: !2787, line: 60, type: !45)
!2794 = !DILocalVariable(name: "_pivot_row", scope: !2786, file: !2787, line: 62, type: !2795, align: 256)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !2796)
!2796 = !{!2797}
!2797 = !DISubrange(count: 10)
!2798 = !DILocation(line: 62, column: 27, scope: !2786)
!2799 = !DILocalVariable(name: "_pivot_row2", scope: !2786, file: !2787, line: 63, type: !2795, align: 256)
!2800 = !DILocation(line: 63, column: 27, scope: !2786)
!2801 = !DILocalVariable(name: "packed_A", scope: !2786, file: !2787, line: 64, type: !2802, align: 256)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 90880, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 1420)
!2805 = !DILocation(line: 64, column: 27, scope: !2786)
!2806 = !DILocation(line: 66, column: 26, scope: !2786)
!2807 = !DILocation(line: 66, column: 32, scope: !2786)
!2808 = !DILocalVariable(name: "row_len", scope: !2786, file: !2787, line: 66, type: !45)
!2809 = !DILocalVariable(name: "i", scope: !2810, file: !2787, line: 69, type: !45)
!2810 = distinct !DILexicalBlock(scope: !2786, file: !2787, line: 69, column: 5)
!2811 = !DILocation(line: 0, scope: !2810)
!2812 = !DILocation(line: 69, column: 10, scope: !2810)
!2813 = !DILocation(line: 69, scope: !2810)
!2814 = !DILocation(line: 69, column: 23, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2810, file: !2787, line: 69, column: 5)
!2816 = !DILocation(line: 69, column: 5, scope: !2810)
!2817 = !DILocation(line: 77, column: 5, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2786, file: !2787, line: 77, column: 5)
!2819 = !DILocation(line: 70, column: 29, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !2787, line: 69, column: 37)
!2821 = !DILocation(line: 70, column: 25, scope: !2820)
!2822 = !DILocation(line: 70, column: 51, scope: !2820)
!2823 = !DILocation(line: 70, column: 47, scope: !2820)
!2824 = !DILocation(line: 70, column: 9, scope: !2820)
!2825 = !DILocation(line: 69, column: 33, scope: !2815)
!2826 = !DILocation(line: 69, column: 5, scope: !2815)
!2827 = distinct !{!2827, !2816, !2828, !303}
!2828 = !DILocation(line: 71, column: 5, scope: !2810)
!2829 = !DILocation(line: 77, scope: !2818)
!2830 = !DILocalVariable(name: "pivot_row", scope: !2786, file: !2787, line: 76, type: !45)
!2831 = !DILocalVariable(name: "pivot_col", scope: !2818, file: !2787, line: 77, type: !45)
!2832 = !DILocation(line: 0, scope: !2818)
!2833 = !DILocation(line: 77, column: 39, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2818, file: !2787, line: 77, column: 5)
!2835 = !DILocation(line: 138, column: 5, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2786, file: !2787, line: 138, column: 5)
!2837 = !DILocation(line: 79, column: 37, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !2787, line: 77, column: 61)
!2839 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2838, file: !2787, line: 79, type: !45)
!2840 = !DILocation(line: 0, scope: !2838)
!2841 = !DILocation(line: 80, column: 37, scope: !2838)
!2842 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2838, file: !2787, line: 80, type: !45)
!2843 = !DILocalVariable(name: "i", scope: !2844, file: !2787, line: 85, type: !45)
!2844 = distinct !DILexicalBlock(scope: !2838, file: !2787, line: 85, column: 9)
!2845 = !DILocation(line: 0, scope: !2844)
!2846 = !DILocation(line: 85, column: 14, scope: !2844)
!2847 = !DILocation(line: 85, scope: !2844)
!2848 = !DILocation(line: 85, column: 27, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !2787, line: 85, column: 9)
!2850 = !DILocation(line: 85, column: 9, scope: !2844)
!2851 = !DILocation(line: 93, column: 9, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2838, file: !2787, line: 93, column: 9)
!2853 = !DILocation(line: 86, column: 13, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !2787, line: 85, column: 43)
!2855 = !DILocation(line: 86, column: 27, scope: !2854)
!2856 = !DILocation(line: 87, column: 13, scope: !2854)
!2857 = !DILocation(line: 87, column: 28, scope: !2854)
!2858 = !DILocation(line: 85, column: 39, scope: !2849)
!2859 = !DILocation(line: 85, column: 9, scope: !2849)
!2860 = distinct !{!2860, !2850, !2861, !303}
!2861 = !DILocation(line: 88, column: 9, scope: !2844)
!2862 = !DILocation(line: 0, scope: !2852)
!2863 = !DILocalVariable(name: "row", scope: !2852, file: !2787, line: 93, type: !45)
!2864 = !DILocalVariable(name: "pivot", scope: !2838, file: !2787, line: 91, type: !14)
!2865 = !DILocalVariable(name: "pivot_is_zero", scope: !2838, file: !2787, line: 92, type: !6)
!2866 = !DILocation(line: 94, column: 24, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2852, file: !2787, line: 93, column: 9)
!2868 = !DILocation(line: 94, column: 21, scope: !2867)
!2869 = !DILocation(line: 96, column: 38, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !2787, line: 94, column: 80)
!2871 = !DILocation(line: 96, column: 37, scope: !2870)
!2872 = !DILocalVariable(name: "is_pivot_row", scope: !2870, file: !2787, line: 96, type: !6)
!2873 = !DILocation(line: 0, scope: !2870)
!2874 = !DILocation(line: 97, column: 40, scope: !2870)
!2875 = !DILocalVariable(name: "below_pivot_row", scope: !2870, file: !2787, line: 97, type: !6)
!2876 = !DILocalVariable(name: "j", scope: !2877, file: !2787, line: 99, type: !45)
!2877 = distinct !DILexicalBlock(scope: !2870, file: !2787, line: 99, column: 13)
!2878 = !DILocation(line: 0, scope: !2877)
!2879 = !DILocation(line: 99, column: 18, scope: !2877)
!2880 = !DILocation(line: 99, scope: !2877)
!2881 = !DILocation(line: 99, column: 31, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2877, file: !2787, line: 99, column: 13)
!2883 = !DILocation(line: 99, column: 13, scope: !2877)
!2884 = !DILocation(line: 100, column: 67, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !2787, line: 99, column: 47)
!2886 = !DILocation(line: 100, column: 48, scope: !2885)
!2887 = !DILocation(line: 101, column: 47, scope: !2885)
!2888 = !DILocation(line: 101, column: 57, scope: !2885)
!2889 = !DILocation(line: 101, column: 34, scope: !2885)
!2890 = !DILocation(line: 100, column: 85, scope: !2885)
!2891 = !DILocation(line: 100, column: 17, scope: !2885)
!2892 = !DILocation(line: 100, column: 31, scope: !2885)
!2893 = !DILocation(line: 99, column: 43, scope: !2882)
!2894 = !DILocation(line: 99, column: 13, scope: !2882)
!2895 = distinct !{!2895, !2883, !2896, !303}
!2896 = !DILocation(line: 102, column: 13, scope: !2877)
!2897 = !DILocation(line: 103, column: 21, scope: !2870)
!2898 = !DILocation(line: 104, column: 44, scope: !2870)
!2899 = !DILocation(line: 104, column: 30, scope: !2870)
!2900 = !DILocation(line: 104, column: 29, scope: !2870)
!2901 = !DILocation(line: 94, column: 76, scope: !2867)
!2902 = !DILocation(line: 93, column: 9, scope: !2867)
!2903 = distinct !{!2903, !2851, !2904, !303}
!2904 = !DILocation(line: 105, column: 9, scope: !2852)
!2905 = !DILocation(line: 108, column: 19, scope: !2838)
!2906 = !DILocalVariable(name: "inverse", scope: !2786, file: !2787, line: 75, type: !14)
!2907 = !DILocation(line: 109, column: 9, scope: !2838)
!2908 = !DILocalVariable(name: "row", scope: !2909, file: !2787, line: 113, type: !45)
!2909 = distinct !DILexicalBlock(scope: !2838, file: !2787, line: 113, column: 9)
!2910 = !DILocation(line: 0, scope: !2909)
!2911 = !DILocation(line: 113, column: 14, scope: !2909)
!2912 = !DILocation(line: 113, scope: !2909)
!2913 = !DILocation(line: 113, column: 51, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2909, file: !2787, line: 113, column: 9)
!2915 = !DILocation(line: 113, column: 9, scope: !2909)
!2916 = !DILocation(line: 124, column: 9, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2838, file: !2787, line: 124, column: 9)
!2918 = !DILocation(line: 114, column: 33, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2914, file: !2787, line: 113, column: 84)
!2920 = !DILocation(line: 114, column: 63, scope: !2919)
!2921 = !DILocalVariable(name: "do_copy", scope: !2919, file: !2787, line: 114, type: !6)
!2922 = !DILocation(line: 0, scope: !2919)
!2923 = !DILocalVariable(name: "do_not_copy", scope: !2919, file: !2787, line: 115, type: !6)
!2924 = !DILocalVariable(name: "col", scope: !2925, file: !2787, line: 116, type: !45)
!2925 = distinct !DILexicalBlock(scope: !2919, file: !2787, line: 116, column: 13)
!2926 = !DILocation(line: 0, scope: !2925)
!2927 = !DILocation(line: 116, column: 18, scope: !2925)
!2928 = !DILocation(line: 116, scope: !2925)
!2929 = !DILocation(line: 116, column: 35, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2925, file: !2787, line: 116, column: 13)
!2931 = !DILocation(line: 116, column: 13, scope: !2925)
!2932 = !DILocation(line: 118, column: 49, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2930, file: !2787, line: 116, column: 53)
!2934 = !DILocation(line: 118, column: 59, scope: !2933)
!2935 = !DILocation(line: 118, column: 36, scope: !2933)
!2936 = !DILocation(line: 118, column: 34, scope: !2933)
!2937 = !DILocation(line: 119, column: 32, scope: !2933)
!2938 = !DILocation(line: 119, column: 30, scope: !2933)
!2939 = !DILocation(line: 118, column: 67, scope: !2933)
!2940 = !DILocation(line: 117, column: 30, scope: !2933)
!2941 = !DILocation(line: 117, column: 40, scope: !2933)
!2942 = !DILocation(line: 117, column: 17, scope: !2933)
!2943 = !DILocation(line: 117, column: 47, scope: !2933)
!2944 = !DILocation(line: 116, column: 49, scope: !2930)
!2945 = !DILocation(line: 116, column: 13, scope: !2930)
!2946 = distinct !{!2946, !2931, !2947, !303}
!2947 = !DILocation(line: 120, column: 13, scope: !2925)
!2948 = !DILocation(line: 113, column: 80, scope: !2914)
!2949 = !DILocation(line: 113, column: 9, scope: !2914)
!2950 = distinct !{!2950, !2915, !2951, !303}
!2951 = !DILocation(line: 121, column: 9, scope: !2909)
!2952 = !DILocation(line: 124, scope: !2917)
!2953 = !DILocalVariable(name: "row", scope: !2917, file: !2787, line: 124, type: !45)
!2954 = !DILocation(line: 0, scope: !2917)
!2955 = !DILocation(line: 124, column: 51, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2917, file: !2787, line: 124, column: 9)
!2957 = !DILocation(line: 125, column: 46, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2956, file: !2787, line: 124, column: 67)
!2959 = !DILocalVariable(name: "below_pivot", scope: !2958, file: !2787, line: 125, type: !14)
!2960 = !DILocation(line: 0, scope: !2958)
!2961 = !DILocation(line: 126, column: 74, scope: !2958)
!2962 = !DILocation(line: 126, column: 68, scope: !2958)
!2963 = !DILocation(line: 126, column: 41, scope: !2958)
!2964 = !DILocalVariable(name: "elt_to_elim", scope: !2958, file: !2787, line: 126, type: !14)
!2965 = !DILocation(line: 128, column: 63, scope: !2958)
!2966 = !DILocation(line: 129, column: 52, scope: !2958)
!2967 = !DILocation(line: 129, column: 46, scope: !2958)
!2968 = !DILocation(line: 128, column: 13, scope: !2958)
!2969 = !DILocation(line: 124, column: 63, scope: !2956)
!2970 = !DILocation(line: 124, column: 9, scope: !2956)
!2971 = distinct !{!2971, !2916, !2972, !303}
!2972 = !DILocation(line: 130, column: 9, scope: !2917)
!2973 = !DILocation(line: 132, column: 19, scope: !2838)
!2974 = !DILocation(line: 77, column: 57, scope: !2834)
!2975 = !DILocation(line: 77, column: 5, scope: !2834)
!2976 = distinct !{!2976, !2817, !2977, !303}
!2977 = !DILocation(line: 133, column: 5, scope: !2818)
!2978 = !DILocation(line: 138, scope: !2836)
!2979 = !DILocalVariable(name: "i", scope: !2836, file: !2787, line: 138, type: !45)
!2980 = !DILocation(line: 0, scope: !2836)
!2981 = !DILocation(line: 138, column: 23, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2836, file: !2787, line: 138, column: 5)
!2983 = !DILocation(line: 139, column: 47, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2982, file: !2787, line: 138, column: 37)
!2985 = !DILocation(line: 139, column: 43, scope: !2984)
!2986 = !DILocation(line: 139, column: 9, scope: !2984)
!2987 = !DILocalVariable(name: "j", scope: !2988, file: !2787, line: 140, type: !45)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !2787, line: 140, column: 9)
!2989 = !DILocation(line: 0, scope: !2988)
!2990 = !DILocation(line: 140, column: 14, scope: !2988)
!2991 = !DILocation(line: 140, scope: !2988)
!2992 = !DILocation(line: 140, column: 27, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2988, file: !2787, line: 140, column: 9)
!2994 = !DILocation(line: 140, column: 9, scope: !2988)
!2995 = !DILocation(line: 141, column: 32, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2993, file: !2787, line: 140, column: 41)
!2997 = !DILocation(line: 141, column: 17, scope: !2996)
!2998 = !DILocation(line: 141, column: 13, scope: !2996)
!2999 = !DILocation(line: 141, column: 30, scope: !2996)
!3000 = !DILocation(line: 140, column: 37, scope: !2993)
!3001 = !DILocation(line: 140, column: 9, scope: !2993)
!3002 = distinct !{!3002, !2994, !3003, !303}
!3003 = !DILocation(line: 142, column: 9, scope: !2988)
!3004 = !DILocation(line: 138, column: 33, scope: !2982)
!3005 = !DILocation(line: 138, column: 5, scope: !2982)
!3006 = distinct !{!3006, !2835, !3007, !303}
!3007 = !DILocation(line: 143, column: 5, scope: !2836)
!3008 = !DILocation(line: 145, column: 5, scope: !2786)
!3009 = !DILocation(line: 146, column: 5, scope: !2786)
!3010 = !DILocation(line: 147, column: 5, scope: !2786)
!3011 = !DILocation(line: 148, column: 5, scope: !2786)
!3012 = !DILocation(line: 149, column: 1, scope: !2786)
!3013 = distinct !DISubprogram(name: "ct_compare_8", scope: !3014, file: !3014, line: 51, type: !1528, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3014 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3015 = !DILocalVariable(name: "a", arg: 1, scope: !3013, file: !3014, line: 51, type: !14)
!3016 = !DILocation(line: 0, scope: !3013)
!3017 = !DILocalVariable(name: "b", arg: 2, scope: !3013, file: !3014, line: 51, type: !14)
!3018 = !DILocation(line: 52, column: 42, scope: !3013)
!3019 = !DILocation(line: 52, column: 13, scope: !3013)
!3020 = !DILocation(line: 52, column: 71, scope: !3013)
!3021 = !DILocation(line: 52, column: 69, scope: !3013)
!3022 = !DILocation(line: 52, column: 5, scope: !3013)
!3023 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !3024, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!6, !14, !6}
!3026 = !DILocalVariable(name: "a", arg: 1, scope: !3023, file: !493, line: 28, type: !14)
!3027 = !DILocation(line: 0, scope: !3023)
!3028 = !DILocalVariable(name: "b", arg: 2, scope: !3023, file: !493, line: 28, type: !6)
!3029 = !DILocation(line: 31, column: 13, scope: !3023)
!3030 = !DILocation(line: 31, column: 10, scope: !3023)
!3031 = !DILocation(line: 31, column: 17, scope: !3023)
!3032 = !DILocalVariable(name: "p", scope: !3023, file: !493, line: 30, type: !6)
!3033 = !DILocation(line: 32, column: 13, scope: !3023)
!3034 = !DILocation(line: 32, column: 10, scope: !3023)
!3035 = !DILocation(line: 32, column: 17, scope: !3023)
!3036 = !DILocation(line: 32, column: 7, scope: !3023)
!3037 = !DILocation(line: 33, column: 13, scope: !3023)
!3038 = !DILocation(line: 33, column: 10, scope: !3023)
!3039 = !DILocation(line: 33, column: 17, scope: !3023)
!3040 = !DILocation(line: 33, column: 7, scope: !3023)
!3041 = !DILocation(line: 34, column: 13, scope: !3023)
!3042 = !DILocation(line: 34, column: 10, scope: !3023)
!3043 = !DILocation(line: 34, column: 17, scope: !3023)
!3044 = !DILocation(line: 34, column: 7, scope: !3023)
!3045 = !DILocalVariable(name: "top_p", scope: !3023, file: !493, line: 37, type: !6)
!3046 = !DILocation(line: 38, column: 32, scope: !3023)
!3047 = !DILocation(line: 38, column: 47, scope: !3023)
!3048 = !DILocation(line: 38, column: 38, scope: !3023)
!3049 = !DILocation(line: 38, column: 54, scope: !3023)
!3050 = !DILocalVariable(name: "out", scope: !3023, file: !493, line: 38, type: !6)
!3051 = !DILocation(line: 39, column: 5, scope: !3023)
!3052 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2787, file: !2787, line: 24, type: !3053, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !49, !5, !45}
!3055 = !DILocalVariable(name: "in", arg: 1, scope: !3052, file: !2787, line: 24, type: !49)
!3056 = !DILocation(line: 0, scope: !3052)
!3057 = !DILocalVariable(name: "out", arg: 2, scope: !3052, file: !2787, line: 24, type: !5)
!3058 = !DILocalVariable(name: "ncols", arg: 3, scope: !3052, file: !2787, line: 24, type: !45)
!3059 = !DILocalVariable(name: "out8", scope: !3052, file: !2787, line: 26, type: !18)
!3060 = !DILocalVariable(name: "i", scope: !3052, file: !2787, line: 25, type: !45)
!3061 = !DILocation(line: 27, column: 9, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3052, file: !2787, line: 27, column: 5)
!3063 = !DILocation(line: 27, scope: !3062)
!3064 = !DILocation(line: 27, column: 17, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !2787, line: 27, column: 5)
!3066 = !DILocation(line: 27, column: 20, scope: !3065)
!3067 = !DILocation(line: 27, column: 5, scope: !3062)
!3068 = !DILocation(line: 31, column: 23, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !2787, line: 27, column: 36)
!3070 = !DILocation(line: 31, column: 44, scope: !3069)
!3071 = !DILocation(line: 31, column: 40, scope: !3069)
!3072 = !DILocation(line: 31, column: 48, scope: !3069)
!3073 = !DILocation(line: 31, column: 37, scope: !3069)
!3074 = !DILocation(line: 31, column: 15, scope: !3069)
!3075 = !DILocation(line: 31, column: 9, scope: !3069)
!3076 = !DILocation(line: 31, column: 20, scope: !3069)
!3077 = !DILocation(line: 27, column: 31, scope: !3065)
!3078 = !DILocation(line: 27, column: 5, scope: !3065)
!3079 = distinct !{!3079, !3067, !3080, !303}
!3080 = !DILocation(line: 33, column: 5, scope: !3062)
!3081 = !DILocation(line: 34, column: 19, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3052, file: !2787, line: 34, column: 9)
!3083 = !DILocation(line: 38, column: 23, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3082, file: !2787, line: 34, column: 24)
!3085 = !DILocation(line: 38, column: 15, scope: !3084)
!3086 = !DILocation(line: 38, column: 9, scope: !3084)
!3087 = !DILocation(line: 38, column: 20, scope: !3084)
!3088 = !DILocation(line: 40, column: 5, scope: !3084)
!3089 = !DILocation(line: 41, column: 1, scope: !3052)
!3090 = distinct !DISubprogram(name: "ct_compare_64", scope: !3014, file: !3014, line: 46, type: !3091, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!6, !45, !45}
!3093 = !DILocalVariable(name: "a", arg: 1, scope: !3090, file: !3014, line: 46, type: !45)
!3094 = !DILocation(line: 0, scope: !3090)
!3095 = !DILocalVariable(name: "b", arg: 2, scope: !3090, file: !3014, line: 46, type: !45)
!3096 = !DILocation(line: 47, column: 38, scope: !3090)
!3097 = !DILocation(line: 47, column: 44, scope: !3090)
!3098 = !DILocation(line: 47, column: 73, scope: !3090)
!3099 = !DILocation(line: 47, column: 71, scope: !3090)
!3100 = !DILocation(line: 47, column: 5, scope: !3090)
!3101 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3014, file: !3014, line: 35, type: !3091, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3102 = !DILocalVariable(name: "a", arg: 1, scope: !3101, file: !3014, line: 35, type: !45)
!3103 = !DILocation(line: 0, scope: !3101)
!3104 = !DILocalVariable(name: "b", arg: 2, scope: !3101, file: !3014, line: 35, type: !45)
!3105 = !DILocalVariable(name: "diff", scope: !3101, file: !3014, line: 36, type: !46)
!3106 = !DILocation(line: 37, column: 30, scope: !3101)
!3107 = !DILocation(line: 37, column: 59, scope: !3101)
!3108 = !DILocation(line: 37, column: 57, scope: !3101)
!3109 = !DILocation(line: 37, column: 5, scope: !3101)
!3110 = distinct !DISubprogram(name: "m_extract_element", scope: !2787, file: !2787, line: 16, type: !3111, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!14, !326, !45}
!3113 = !DILocalVariable(name: "in", arg: 1, scope: !3110, file: !2787, line: 16, type: !326)
!3114 = !DILocation(line: 0, scope: !3110)
!3115 = !DILocalVariable(name: "index", arg: 2, scope: !3110, file: !2787, line: 16, type: !45)
!3116 = !DILocation(line: 17, column: 27, scope: !3110)
!3117 = !DILocalVariable(name: "leg", scope: !3110, file: !2787, line: 17, type: !239)
!3118 = !DILocation(line: 18, column: 30, scope: !3110)
!3119 = !DILocalVariable(name: "offset", scope: !3110, file: !2787, line: 18, type: !239)
!3120 = !DILocation(line: 20, column: 13, scope: !3110)
!3121 = !DILocation(line: 20, column: 31, scope: !3110)
!3122 = !DILocation(line: 20, column: 21, scope: !3110)
!3123 = !DILocation(line: 20, column: 12, scope: !3110)
!3124 = !DILocation(line: 20, column: 5, scope: !3110)
!3125 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3126, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!14, !14}
!3128 = !DILocalVariable(name: "a", arg: 1, scope: !3125, file: !493, line: 57, type: !14)
!3129 = !DILocation(line: 0, scope: !3125)
!3130 = !DILocation(line: 61, column: 24, scope: !3125)
!3131 = !DILocalVariable(name: "a2", scope: !3125, file: !493, line: 61, type: !14)
!3132 = !DILocation(line: 62, column: 24, scope: !3125)
!3133 = !DILocalVariable(name: "a4", scope: !3125, file: !493, line: 62, type: !14)
!3134 = !DILocation(line: 63, column: 24, scope: !3125)
!3135 = !DILocalVariable(name: "a8", scope: !3125, file: !493, line: 63, type: !14)
!3136 = !DILocation(line: 64, column: 24, scope: !3125)
!3137 = !DILocalVariable(name: "a6", scope: !3125, file: !493, line: 64, type: !14)
!3138 = !DILocation(line: 65, column: 25, scope: !3125)
!3139 = !DILocalVariable(name: "a14", scope: !3125, file: !493, line: 65, type: !14)
!3140 = !DILocation(line: 67, column: 5, scope: !3125)
!3141 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3014, file: !3014, line: 94, type: !3142, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !239, !326, !14, !5}
!3144 = !DILocalVariable(name: "legs", arg: 1, scope: !3141, file: !3014, line: 94, type: !239)
!3145 = !DILocation(line: 0, scope: !3141)
!3146 = !DILocalVariable(name: "in", arg: 2, scope: !3141, file: !3014, line: 94, type: !326)
!3147 = !DILocalVariable(name: "a", arg: 3, scope: !3141, file: !3014, line: 94, type: !14)
!3148 = !DILocalVariable(name: "acc", arg: 4, scope: !3141, file: !3014, line: 94, type: !5)
!3149 = !DILocation(line: 95, column: 20, scope: !3141)
!3150 = !DILocalVariable(name: "tab", scope: !3141, file: !3014, line: 95, type: !19)
!3151 = !DILocalVariable(name: "lsb_ask", scope: !3141, file: !3014, line: 97, type: !6)
!3152 = !DILocalVariable(name: "i", scope: !3153, file: !3014, line: 99, type: !45)
!3153 = distinct !DILexicalBlock(scope: !3141, file: !3014, line: 99, column: 5)
!3154 = !DILocation(line: 0, scope: !3153)
!3155 = !DILocation(line: 99, column: 9, scope: !3153)
!3156 = !DILocation(line: 99, scope: !3153)
!3157 = !DILocation(line: 99, column: 20, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3153, file: !3014, line: 99, column: 5)
!3159 = !DILocation(line: 99, column: 5, scope: !3153)
!3160 = !DILocation(line: 100, column: 21, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !3014, line: 99, column: 32)
!3162 = !DILocation(line: 100, column: 33, scope: !3161)
!3163 = !DILocation(line: 100, column: 51, scope: !3161)
!3164 = !DILocation(line: 100, column: 46, scope: !3161)
!3165 = !DILocation(line: 100, column: 44, scope: !3161)
!3166 = !DILocation(line: 101, column: 27, scope: !3161)
!3167 = !DILocation(line: 101, column: 33, scope: !3161)
!3168 = !DILocation(line: 101, column: 52, scope: !3161)
!3169 = !DILocation(line: 101, column: 59, scope: !3161)
!3170 = !DILocation(line: 101, column: 46, scope: !3161)
!3171 = !DILocation(line: 101, column: 44, scope: !3161)
!3172 = !DILocation(line: 101, column: 17, scope: !3161)
!3173 = !DILocation(line: 102, column: 21, scope: !3161)
!3174 = !DILocation(line: 102, column: 27, scope: !3161)
!3175 = !DILocation(line: 102, column: 33, scope: !3161)
!3176 = !DILocation(line: 102, column: 52, scope: !3161)
!3177 = !DILocation(line: 102, column: 59, scope: !3161)
!3178 = !DILocation(line: 102, column: 46, scope: !3161)
!3179 = !DILocation(line: 102, column: 44, scope: !3161)
!3180 = !DILocation(line: 102, column: 17, scope: !3161)
!3181 = !DILocation(line: 103, column: 21, scope: !3161)
!3182 = !DILocation(line: 103, column: 27, scope: !3161)
!3183 = !DILocation(line: 103, column: 33, scope: !3161)
!3184 = !DILocation(line: 103, column: 52, scope: !3161)
!3185 = !DILocation(line: 103, column: 59, scope: !3161)
!3186 = !DILocation(line: 103, column: 46, scope: !3161)
!3187 = !DILocation(line: 103, column: 44, scope: !3161)
!3188 = !DILocation(line: 103, column: 17, scope: !3161)
!3189 = !DILocation(line: 100, column: 9, scope: !3161)
!3190 = !DILocation(line: 100, column: 16, scope: !3161)
!3191 = !DILocation(line: 99, column: 29, scope: !3158)
!3192 = !DILocation(line: 99, column: 5, scope: !3158)
!3193 = distinct !{!3193, !3159, !3194, !303}
!3194 = !DILocation(line: 104, column: 5, scope: !3153)
!3195 = !DILocation(line: 105, column: 1, scope: !3141)
!3196 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2787, file: !2787, line: 44, type: !3197, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !45, !326, !18}
!3199 = !DILocalVariable(name: "legs", arg: 1, scope: !3196, file: !2787, line: 44, type: !45)
!3200 = !DILocation(line: 0, scope: !3196)
!3201 = !DILocalVariable(name: "in", arg: 2, scope: !3196, file: !2787, line: 44, type: !326)
!3202 = !DILocalVariable(name: "out", arg: 3, scope: !3196, file: !2787, line: 44, type: !18)
!3203 = !DILocalVariable(name: "in8", scope: !3196, file: !2787, line: 45, type: !49)
!3204 = !DILocalVariable(name: "i", scope: !3205, file: !2787, line: 46, type: !45)
!3205 = distinct !DILexicalBlock(scope: !3196, file: !2787, line: 46, column: 5)
!3206 = !DILocation(line: 0, scope: !3205)
!3207 = !DILocation(line: 46, column: 9, scope: !3205)
!3208 = !DILocation(line: 46, scope: !3205)
!3209 = !DILocation(line: 46, column: 29, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3205, file: !2787, line: 46, column: 5)
!3211 = !DILocation(line: 46, column: 22, scope: !3210)
!3212 = !DILocation(line: 46, column: 5, scope: !3205)
!3213 = !DILocation(line: 51, column: 26, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !2787, line: 46, column: 42)
!3215 = !DILocation(line: 51, column: 21, scope: !3214)
!3216 = !DILocation(line: 51, column: 31, scope: !3214)
!3217 = !DILocation(line: 51, column: 9, scope: !3214)
!3218 = !DILocation(line: 51, column: 18, scope: !3214)
!3219 = !DILocation(line: 52, column: 26, scope: !3214)
!3220 = !DILocation(line: 52, column: 21, scope: !3214)
!3221 = !DILocation(line: 52, column: 30, scope: !3214)
!3222 = !DILocation(line: 52, column: 14, scope: !3214)
!3223 = !DILocation(line: 52, column: 9, scope: !3214)
!3224 = !DILocation(line: 52, column: 18, scope: !3214)
!3225 = !DILocation(line: 46, column: 37, scope: !3210)
!3226 = !DILocation(line: 46, column: 5, scope: !3210)
!3227 = distinct !{!3227, !3212, !3228, !303}
!3228 = !DILocation(line: 54, column: 5, scope: !3205)
!3229 = !DILocation(line: 55, column: 1, scope: !3196)
!3230 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3231 = !DILocalVariable(name: "b", arg: 1, scope: !3230, file: !493, line: 129, type: !12)
!3232 = !DILocation(line: 0, scope: !3230)
!3233 = !DILocation(line: 130, column: 19, scope: !3230)
!3234 = !DILocation(line: 130, column: 33, scope: !3230)
!3235 = !DILocalVariable(name: "x", scope: !3230, file: !493, line: 130, type: !19)
!3236 = !DILocalVariable(name: "high_nibble_mask", scope: !3230, file: !493, line: 132, type: !19)
!3237 = !DILocation(line: 134, column: 28, scope: !3230)
!3238 = !DILocalVariable(name: "high_half", scope: !3230, file: !493, line: 134, type: !19)
!3239 = !DILocation(line: 135, column: 28, scope: !3230)
!3240 = !DILocation(line: 135, column: 47, scope: !3230)
!3241 = !DILocation(line: 135, column: 34, scope: !3230)
!3242 = !DILocation(line: 135, column: 5, scope: !3230)
!3243 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1528, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3244 = !DILocalVariable(name: "a", arg: 1, scope: !3243, file: !493, line: 9, type: !14)
!3245 = !DILocation(line: 0, scope: !3243)
!3246 = !DILocalVariable(name: "b", arg: 2, scope: !3243, file: !493, line: 9, type: !14)
!3247 = !DILocation(line: 14, column: 10, scope: !3243)
!3248 = !DILocation(line: 14, column: 7, scope: !3243)
!3249 = !DILocation(line: 17, column: 17, scope: !3243)
!3250 = !DILocalVariable(name: "p", scope: !3243, file: !493, line: 11, type: !14)
!3251 = !DILocation(line: 18, column: 13, scope: !3243)
!3252 = !DILocation(line: 18, column: 17, scope: !3243)
!3253 = !DILocation(line: 18, column: 7, scope: !3243)
!3254 = !DILocation(line: 19, column: 13, scope: !3243)
!3255 = !DILocation(line: 19, column: 17, scope: !3243)
!3256 = !DILocation(line: 19, column: 7, scope: !3243)
!3257 = !DILocation(line: 20, column: 13, scope: !3243)
!3258 = !DILocation(line: 20, column: 17, scope: !3243)
!3259 = !DILocation(line: 20, column: 7, scope: !3243)
!3260 = !DILocalVariable(name: "top_p", scope: !3243, file: !493, line: 23, type: !14)
!3261 = !DILocation(line: 24, column: 37, scope: !3243)
!3262 = !DILocation(line: 24, column: 52, scope: !3243)
!3263 = !DILocation(line: 24, column: 43, scope: !3243)
!3264 = !DILocation(line: 24, column: 59, scope: !3243)
!3265 = !DILocalVariable(name: "out", scope: !3243, file: !493, line: 24, type: !14)
!3266 = !DILocation(line: 25, column: 5, scope: !3243)
!3267 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1536, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3268 = !DILocalVariable(name: "a", arg: 1, scope: !3267, file: !493, line: 70, type: !49)
!3269 = !DILocation(line: 0, scope: !3267)
!3270 = !DILocalVariable(name: "b", arg: 2, scope: !3267, file: !493, line: 71, type: !49)
!3271 = !DILocalVariable(name: "n", arg: 3, scope: !3267, file: !493, line: 71, type: !45)
!3272 = !DILocalVariable(name: "m", arg: 4, scope: !3267, file: !493, line: 71, type: !45)
!3273 = !DILocalVariable(name: "ret", scope: !3267, file: !493, line: 72, type: !14)
!3274 = !DILocalVariable(name: "i", scope: !3275, file: !493, line: 73, type: !45)
!3275 = distinct !DILexicalBlock(scope: !3267, file: !493, line: 73, column: 5)
!3276 = !DILocation(line: 0, scope: !3275)
!3277 = !DILocation(line: 73, column: 10, scope: !3275)
!3278 = !DILocation(line: 73, scope: !3275)
!3279 = !DILocation(line: 73, column: 23, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3275, file: !493, line: 73, column: 5)
!3281 = !DILocation(line: 73, column: 5, scope: !3275)
!3282 = !DILocation(line: 74, column: 27, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !493, line: 73, column: 41)
!3284 = !DILocation(line: 74, column: 33, scope: !3283)
!3285 = !DILocation(line: 74, column: 21, scope: !3283)
!3286 = !DILocation(line: 74, column: 15, scope: !3283)
!3287 = !DILocation(line: 73, column: 28, scope: !3280)
!3288 = !DILocation(line: 73, column: 35, scope: !3280)
!3289 = !DILocation(line: 73, column: 5, scope: !3280)
!3290 = distinct !{!3290, !3281, !3291, !303}
!3291 = !DILocation(line: 75, column: 5, scope: !3275)
!3292 = !DILocation(line: 76, column: 5, scope: !3267)
!3293 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1528, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3294 = !DILocalVariable(name: "a", arg: 1, scope: !3293, file: !493, line: 43, type: !14)
!3295 = !DILocation(line: 0, scope: !3293)
!3296 = !DILocalVariable(name: "b", arg: 2, scope: !3293, file: !493, line: 43, type: !14)
!3297 = !DILocation(line: 44, column: 14, scope: !3293)
!3298 = !DILocation(line: 44, column: 5, scope: !3293)
