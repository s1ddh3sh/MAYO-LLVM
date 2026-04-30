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
    #dbg_value(i32 0, !792, !DIExpression(), !794)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 852, !dbg !795
  br label %for.cond, !dbg !798

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !799
    #dbg_value(i32 %ctr.0, !792, !DIExpression(), !794)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !800
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !801

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !802
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !803
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 924, ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !804
    #dbg_value(i32 0, !805, !DIExpression(), !807)
  br label %for.cond34, !dbg !808

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !809
    #dbg_value(i32 %i.0, !805, !DIExpression(), !807)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !810
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !812

for.body37:                                       ; preds = %for.cond34
  %mul = mul nuw nsw i32 %i.0, 71, !dbg !813
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !815
  %mul41 = mul nuw nsw i32 %i.0, 142, !dbg !816
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !817
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 142) #6, !dbg !818
  %inc = add nuw nsw i32 %i.0, 1, !dbg !819
    #dbg_value(i32 %inc, !805, !DIExpression(), !807)
  br label %for.cond34, !dbg !820, !llvm.loop !821

for.end:                                          ; preds = %for.cond34
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !823
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !824
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !825
    #dbg_value(i32 0, !826, !DIExpression(), !828)
  br label %for.cond52, !dbg !829

for.cond52:                                       ; preds = %for.body55, %for.end
  %i51.0 = phi i32 [ 0, %for.end ], [ %inc58, %for.body55 ], !dbg !830
    #dbg_value(i32 %i51.0, !826, !DIExpression(), !828)
  %exitcond1 = icmp ne i32 %i51.0, 142, !dbg !831
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !833

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 145, !dbg !834
  %sub = add nuw nsw i32 %0, 144, !dbg !836
  %arrayidx = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub, !dbg !837
  store i8 0, ptr %arrayidx, align 1, !dbg !838
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !839
    #dbg_value(i32 %inc58, !826, !DIExpression(), !828)
  br label %for.cond52, !dbg !840, !llvm.loop !841

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 144) #6, !dbg !843
  %call67 = call i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 12, i32 noundef 12, i32 noundef 142, i32 noundef 145) #6, !dbg !844
  %tobool.not = icmp eq i32 %call67, 0, !dbg !844
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !844

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 10368) #8, !dbg !846
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 20880) #8, !dbg !848
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !849
    #dbg_value(i32 %inc75, !792, !DIExpression(), !794)
  br label %for.cond, !dbg !850, !llvm.loop !851

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !853, !DIExpression(), !855)
  br label %for.cond78, !dbg !856

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !857
    #dbg_value(i32 %i77.0, !853, !DIExpression(), !855)
  %exitcond3 = icmp ne i32 %i77.0, 12, !dbg !858
  br i1 %exitcond3, label %for.body81, label %for.end106, !dbg !860

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 142, !dbg !861
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !863
    #dbg_value(ptr %add.ptr84, !864, !DIExpression(), !704)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !865
  %mul89 = mul nuw nsw i32 %i77.0, 12, !dbg !866
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !867
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 12, i32 noundef 142, i32 noundef 1) #6, !dbg !868
  %mul94 = mul nuw nsw i32 %i77.0, 154, !dbg !869
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !870
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 142, i32 noundef 1) #6, !dbg !871
  %mul97 = mul nuw nsw i32 %i77.0, 154, !dbg !872
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !873
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 142, !dbg !874
  %mul101 = mul nuw nsw i32 %i77.0, 12, !dbg !875
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !876
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 12) #8, !dbg !877
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !878
    #dbg_value(i32 %inc105, !853, !DIExpression(), !855)
  br label %for.cond78, !dbg !879, !llvm.loop !880

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1848) #6, !dbg !882
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !883
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 40) #8, !dbg !884
  store i32 964, ptr %siglen, align 4, !dbg !885
  br label %err, !dbg !886

err:                                              ; preds = %entry, %for.end106
  %ret.0 = phi i32 [ 0, %for.end106 ], [ 1, %entry ], !dbg !704
    #dbg_value(i32 %ret.0, !710, !DIExpression(), !704)
    #dbg_label(!887, !888)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 924) #8, !dbg !889
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1704) #8, !dbg !890
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 20880) #8, !dbg !891
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 145) #8, !dbg !892
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !893
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 1704) #8, !dbg !894
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 855408) #8, !dbg !895
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 142) #8, !dbg !896
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !897
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 10368) #8, !dbg !898
  ret i32 %ret.0, !dbg !899
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !900 {
entry:
  %Pv = alloca [15336 x i64], align 8
    #dbg_value(ptr %p, !903, !DIExpression(), !904)
    #dbg_value(ptr %Vdec, !905, !DIExpression(), !904)
    #dbg_value(ptr %L, !906, !DIExpression(), !904)
    #dbg_value(ptr %P1, !907, !DIExpression(), !904)
    #dbg_value(ptr %VL, !908, !DIExpression(), !904)
    #dbg_value(ptr %VP1V, !909, !DIExpression(), !904)
    #dbg_value(i32 12, !910, !DIExpression(), !904)
    #dbg_value(i32 142, !911, !DIExpression(), !904)
    #dbg_value(i32 12, !912, !DIExpression(), !904)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !913
    #dbg_declare(ptr %Pv, !914, !DIExpression(), !918)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(122688) %Pv, i8 0, i32 122688, i1 false), !dbg !918
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !919
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !920
  ret void, !dbg !921
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !922 {
entry:
  %temp = alloca [9 x i64], align 8
    #dbg_value(ptr %p, !925, !DIExpression(), !926)
    #dbg_value(ptr %vPv, !927, !DIExpression(), !926)
    #dbg_value(ptr %t, !928, !DIExpression(), !926)
    #dbg_value(ptr %y, !929, !DIExpression(), !926)
    #dbg_value(i32 52, !930, !DIExpression(), !926)
    #dbg_value(i32 9, !932, !DIExpression(), !926)
    #dbg_value(i64 1, !933, !DIExpression(), !936)
    #dbg_value(i64 72057594037927936, !933, !DIExpression(), !936)
    #dbg_value(i64 72057594037927935, !933, !DIExpression(), !936)
    #dbg_value(i32 0, !937, !DIExpression(), !939)
  br label %for.cond, !dbg !940

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !941
    #dbg_value(i32 %i.0, !937, !DIExpression(), !939)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !942
  br i1 %exitcond, label %for.body, label %for.end, !dbg !944

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 72, !dbg !945
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !945
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !945
  %1 = load i64, ptr %arrayidx, align 8, !dbg !947
  %and = and i64 %1, 72057594037927935, !dbg !947
  store i64 %and, ptr %arrayidx, align 8, !dbg !947
  %inc = add nuw nsw i32 %i.0, 1, !dbg !948
    #dbg_value(i32 %inc, !937, !DIExpression(), !939)
  br label %for.cond, !dbg !949, !llvm.loop !950

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !952, !DIExpression(), !953)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %temp, i8 0, i32 72, i1 false), !dbg !953
    #dbg_value(ptr %temp, !954, !DIExpression(), !926)
    #dbg_value(i32 11, !955, !DIExpression(), !957)
  br label %for.cond3, !dbg !958

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 11, %for.end ], [ %dec78, %for.inc77 ], !dbg !959
    #dbg_value(i32 %i2.0, !955, !DIExpression(), !957)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !960
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !962

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !963

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !966

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !968
    #dbg_value(i32 %j.0, !969, !DIExpression(), !970)
  %exitcond10 = icmp ne i32 %j.0, 12, !dbg !971
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !963

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !973
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !973
  %shr = lshr i64 %2, 52, !dbg !975
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !976
    #dbg_value(i8 %rem1, !977, !DIExpression(), !978)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !979
  %shl11 = shl i64 %2, 4, !dbg !980
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !980
    #dbg_value(i32 7, !981, !DIExpression(), !983)
  br label %for.cond12, !dbg !984

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 7, %for.body8 ], [ %dec, %for.body15 ], !dbg !985
    #dbg_value(i32 %k.0, !981, !DIExpression(), !983)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !986
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !988

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !976
  br label %for.cond24, !dbg !989

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !991
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !991
  %shr17 = lshr i64 %3, 60, !dbg !993
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !994
  %arrayidx19 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %add18, !dbg !995
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !996
  %xor = xor i64 %4, %shr17, !dbg !996
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !996
  %arrayidx20 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !997
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !998
  %shl21 = shl i64 %5, 4, !dbg !998
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !998
  %dec = add nsw i32 %k.0, -1, !dbg !999
    #dbg_value(i32 %dec, !981, !DIExpression(), !983)
  br label %for.cond12, !dbg !1000, !llvm.loop !1001

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1003
    #dbg_value(i32 %jj.0, !1004, !DIExpression(), !1005)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !1006
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !989

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1008

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1010
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1013
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1013

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1014
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1014
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #6, !dbg !1016
  %div = lshr exact i32 %jj.0, 1, !dbg !1017
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1018
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1019
  %xor356 = xor i8 %7, %call, !dbg !1019
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1019
  br label %for.inc46, !dbg !1020

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1021
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1021
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #6, !dbg !1023
  %shl40 = shl nuw i8 %call38, 4, !dbg !1024
  %div415 = lshr i32 %jj.0, 1, !dbg !1025
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1026
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1027
  %xor44 = xor i8 %shl40, %9, !dbg !1027
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1027
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1028
    #dbg_value(i32 %inc47, !1004, !DIExpression(), !1005)
  br label %for.cond24, !dbg !1029, !llvm.loop !1030

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1032
    #dbg_value(i32 %k49.0, !1033, !DIExpression(), !1034)
  %exitcond9 = icmp ne i32 %k49.0, 9, !dbg !1035
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1008

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 12, !dbg !1037
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1039
  %.idx = mul nsw i32 %add55, 72, !dbg !1040
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1040
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1040
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1040
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1041
  %mul62 = mul nuw nsw i32 %j.0, 12, !dbg !1042
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1043
  %.idx4 = mul nsw i32 %add63, 72, !dbg !1044
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1044
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1044
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1044
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1045
  %xor68 = xor i64 %11, %mul67, !dbg !1046
  %arrayidx69 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1047
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1048
  %xor70 = xor i64 %14, %xor68, !dbg !1048
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1048
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1049
    #dbg_value(i32 %inc72, !1033, !DIExpression(), !1034)
  br label %for.cond50, !dbg !1050, !llvm.loop !1051

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1053
    #dbg_value(i32 %inc75, !969, !DIExpression(), !970)
  br label %for.cond6, !dbg !1054, !llvm.loop !1055

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1057
    #dbg_value(i32 %dec78, !955, !DIExpression(), !957)
  br label %for.cond3, !dbg !1058, !llvm.loop !1059

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1061
    #dbg_value(i32 %i80.0, !1062, !DIExpression(), !1063)
  %cmp82 = icmp samesign ult i32 %i80.0, 142, !dbg !1064
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !966

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1066
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1066
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1068
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1069
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1069
  %17 = and i8 %16, 15, !dbg !1070
  %xor912 = xor i8 %15, %17, !dbg !1071
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1072
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1073
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1074
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1075
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1075
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1076
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1077
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1077
  %20 = lshr i8 %19, 4, !dbg !1078
  %xor1013 = xor i8 %18, %20, !dbg !1079
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1080
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1081
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1082
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1083
    #dbg_value(i32 %add106, !1062, !DIExpression(), !1063)
  br label %for.cond81, !dbg !1084, !llvm.loop !1085

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1087
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1088 {
entry:
  %A = alloca [2592 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1091, !DIExpression(), !1092)
    #dbg_value(ptr %VtL, !1093, !DIExpression(), !1092)
    #dbg_value(ptr %A_out, !1094, !DIExpression(), !1092)
    #dbg_value(i32 0, !1095, !DIExpression(), !1092)
    #dbg_value(i32 0, !1096, !DIExpression(), !1092)
    #dbg_value(i32 9, !1097, !DIExpression(), !1092)
    #dbg_declare(ptr %A, !1098, !DIExpression(), !1102)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20736) %A, i8 0, i32 20736, i1 false), !dbg !1102
    #dbg_value(i32 144, !1103, !DIExpression(), !1092)
    #dbg_value(i64 1, !1104, !DIExpression(), !1107)
    #dbg_value(i64 72057594037927936, !1104, !DIExpression(), !1107)
    #dbg_value(i64 72057594037927935, !1104, !DIExpression(), !1107)
    #dbg_value(i32 0, !1108, !DIExpression(), !1110)
  br label %for.cond, !dbg !1111

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1112
    #dbg_value(i32 %i.0, !1108, !DIExpression(), !1110)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !1113
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1115

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1116

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 72, !dbg !1118
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1118
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1118
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1120
  %and = and i64 %1, 72057594037927935, !dbg !1120
  store i64 %and, ptr %arrayidx, align 8, !dbg !1120
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1121
    #dbg_value(i32 %inc, !1108, !DIExpression(), !1110)
  br label %for.cond, !dbg !1122, !llvm.loop !1123

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1125
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1126
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1127
    #dbg_value(i32 %bits_to_shift.0, !1095, !DIExpression(), !1092)
    #dbg_value(i32 %words_to_shift.0, !1096, !DIExpression(), !1092)
    #dbg_value(i32 %i2.0, !1128, !DIExpression(), !1129)
  %exitcond8 = icmp ne i32 %i2.0, 12, !dbg !1130
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1116

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1132

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1135

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 11, %for.cond6.preheader ], !dbg !1137
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1092
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1092
    #dbg_value(i32 %bits_to_shift.1, !1095, !DIExpression(), !1092)
    #dbg_value(i32 %words_to_shift.1, !1096, !DIExpression(), !1092)
    #dbg_value(i32 %j.0, !1138, !DIExpression(), !1139)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1140
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1132

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 864, !dbg !1142
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1142
    #dbg_value(ptr %add.ptr, !1144, !DIExpression(), !1092)
    #dbg_value(i32 0, !1145, !DIExpression(), !1147)
  br label %for.cond11, !dbg !1148

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1149
    #dbg_value(i32 %c.0, !1145, !DIExpression(), !1147)
  %exitcond5 = icmp ne i32 %c.0, 12, !dbg !1150
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1152

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1153

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1156
    #dbg_value(i32 %k.0, !1157, !DIExpression(), !1158)
  %exitcond4 = icmp ne i32 %k.0, 9, !dbg !1159
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1153

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1161
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 72, !dbg !1161
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1161
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1161
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1163
  %shl20 = shl i64 %3, %sh_prom, !dbg !1163
  %mul21 = mul nuw nsw i32 %i2.0, 12, !dbg !1164
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1165
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1166
  %mul24 = mul i32 %add23, 144, !dbg !1167
  %add25 = add i32 %add22, %mul24, !dbg !1168
  %arrayidx26 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25, !dbg !1169
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1170
  %xor = xor i64 %4, %shl20, !dbg !1170
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1170
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1171
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1171

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1173
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 72, !dbg !1173
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1173
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1173
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1175
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1176
  %shr = lshr i64 %6, %sh_prom32, !dbg !1176
  %mul33 = mul nuw nsw i32 %i2.0, 12, !dbg !1177
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1178
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1179
  %7 = mul i32 %add35, 144, !dbg !1180
  %mul37 = add i32 %7, 144, !dbg !1180
  %add38 = add i32 %add34, %mul37, !dbg !1181
  %arrayidx39 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38, !dbg !1182
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1183
  %xor40 = xor i64 %8, %shr, !dbg !1183
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1183
  br label %for.inc41, !dbg !1184

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1185
    #dbg_value(i32 %inc42, !1157, !DIExpression(), !1158)
  br label %for.cond14, !dbg !1186, !llvm.loop !1187

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1189
    #dbg_value(i32 %inc45, !1145, !DIExpression(), !1147)
  br label %for.cond11, !dbg !1190, !llvm.loop !1191

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1193
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1193

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 864, !dbg !1195
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1195
    #dbg_value(ptr %add.ptr51, !1197, !DIExpression(), !1092)
    #dbg_value(i32 0, !1198, !DIExpression(), !1200)
  br label %for.cond53, !dbg !1201

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1202
    #dbg_value(i32 %c52.0, !1198, !DIExpression(), !1200)
  %exitcond7 = icmp ne i32 %c52.0, 12, !dbg !1203
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1205

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1206

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1209
    #dbg_value(i32 %k56.0, !1210, !DIExpression(), !1211)
  %exitcond6 = icmp ne i32 %k56.0, 9, !dbg !1212
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1206

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1214
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1214
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1214
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1214
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1216
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1216
  %mul65 = mul nsw i32 %j.0, 12, !dbg !1217
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1218
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1219
  %mul68 = mul i32 %add67, 144, !dbg !1220
  %add69 = add i32 %add66, %mul68, !dbg !1221
  %arrayidx70 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69, !dbg !1222
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1223
  %xor71 = xor i64 %11, %shl64, !dbg !1223
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1223
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1224
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1224

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1226
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1226
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1226
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1226
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1228
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1229
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1229
  %mul80 = mul nsw i32 %j.0, 12, !dbg !1230
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1231
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1232
  %14 = mul i32 %add82, 144, !dbg !1233
  %mul84 = add i32 %14, 144, !dbg !1233
  %add85 = add i32 %add81, %mul84, !dbg !1234
  %arrayidx86 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85, !dbg !1235
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1236
  %xor87 = xor i64 %15, %shr79, !dbg !1236
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1236
  br label %for.inc89, !dbg !1237

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1238
    #dbg_value(i32 %inc90, !1210, !DIExpression(), !1211)
  br label %for.cond57, !dbg !1239, !llvm.loop !1240

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1242
    #dbg_value(i32 %inc93, !1198, !DIExpression(), !1200)
  br label %for.cond53, !dbg !1243, !llvm.loop !1244

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1246

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1246
    #dbg_value(i32 %add96, !1095, !DIExpression(), !1092)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1247
  %inc99 = zext i1 %cmp97 to i32, !dbg !1247
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1247
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1247
    #dbg_value(i32 %spec.select3, !1095, !DIExpression(), !1092)
    #dbg_value(i32 %spec.select, !1096, !DIExpression(), !1092)
  %dec = add nsw i32 %j.0, -1, !dbg !1249
    #dbg_value(i32 %dec, !1138, !DIExpression(), !1139)
  br label %for.cond6, !dbg !1250, !llvm.loop !1251

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1092
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1092
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1253
    #dbg_value(i32 %inc104, !1128, !DIExpression(), !1129)
  br label %for.cond3, !dbg !1254, !llvm.loop !1255

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1257
    #dbg_value(i32 %c106.0, !1258, !DIExpression(), !1259)
  %cmp109 = icmp samesign ult i32 %c106.0, 2016, !dbg !1260
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1135

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1262
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1264
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1265
    #dbg_value(i32 %add113, !1258, !DIExpression(), !1259)
  br label %for.cond107, !dbg !1266, !llvm.loop !1267

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1269, !DIExpression(), !1273)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1273
    #dbg_value(i32 0, !1274, !DIExpression(), !1276)
  br label %for.cond116, !dbg !1277

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1278
    #dbg_value(i32 %i115.0, !1274, !DIExpression(), !1276)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1279
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1281

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1282

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1284
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1284
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1286
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1287
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1288
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1289
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1290
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1291
  %add125 = or disjoint i32 %mul124, 1, !dbg !1292
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1293
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1294
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1295
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1295
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1296
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1297
  %add130 = or disjoint i32 %mul129, 2, !dbg !1298
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1299
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1300
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1301
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1301
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1302
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1303
  %add135 = or disjoint i32 %mul134, 3, !dbg !1304
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1305
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1306
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1307
    #dbg_value(i32 %inc138, !1274, !DIExpression(), !1276)
  br label %for.cond116, !dbg !1308, !llvm.loop !1309

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1311
    #dbg_value(i32 %c140.0, !1312, !DIExpression(), !1313)
  %cmp142 = icmp samesign ult i32 %c140.0, 144, !dbg !1314
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1282

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1316

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1319

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 142, %for.cond144.preheader ], !dbg !1321
    #dbg_value(i32 %r.0, !1322, !DIExpression(), !1323)
  %exitcond11 = icmp ne i32 %r.0, 220, !dbg !1324
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1316

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1326
  %mul147 = mul nuw nsw i32 %div1, 144, !dbg !1328
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1329
  %rem = and i32 %r.0, 15, !dbg !1330
  %add149 = or disjoint i32 %add148, %rem, !dbg !1331
    #dbg_value(i32 %add149, !1332, !DIExpression(), !1333)
  %arrayidx150 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1334
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1334
  %and151 = and i64 %19, 1229782938247303441, !dbg !1335
    #dbg_value(i64 %and151, !1336, !DIExpression(), !1333)
  %shr153 = lshr i64 %19, 1, !dbg !1337
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1338
    #dbg_value(i64 %and154, !1339, !DIExpression(), !1333)
  %shr156 = lshr i64 %19, 2, !dbg !1340
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1341
    #dbg_value(i64 %and157, !1342, !DIExpression(), !1333)
  %arrayidx158 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1343
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1343
  %shr159 = lshr i64 %20, 3, !dbg !1344
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1345
    #dbg_value(i64 %and160, !1346, !DIExpression(), !1333)
    #dbg_value(i32 0, !1347, !DIExpression(), !1349)
  br label %for.cond161, !dbg !1350

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1351
    #dbg_value(i32 %t.0, !1347, !DIExpression(), !1349)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1352
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1354

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1355
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1357
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1357
  %conv = zext i8 %21 to i64, !dbg !1357
  %mul167 = mul i64 %and151, %conv, !dbg !1358
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1359
  %add169 = or disjoint i32 %mul168, 1, !dbg !1360
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1361
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1361
  %conv171 = zext i8 %22 to i64, !dbg !1361
  %mul172 = mul i64 %and154, %conv171, !dbg !1362
  %xor173 = xor i64 %mul167, %mul172, !dbg !1363
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1364
  %add175 = or disjoint i32 %mul174, 2, !dbg !1365
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1366
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1366
  %conv177 = zext i8 %23 to i64, !dbg !1366
  %mul178 = mul i64 %and157, %conv177, !dbg !1367
  %xor179 = xor i64 %xor173, %mul178, !dbg !1368
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1369
  %add181 = or disjoint i32 %mul180, 3, !dbg !1370
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1371
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1371
  %conv183 = zext i8 %24 to i64, !dbg !1371
  %mul184 = mul i64 %and160, %conv183, !dbg !1372
  %xor185 = xor i64 %xor179, %mul184, !dbg !1373
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1374
  %sub187 = add nsw i32 %add186, -142, !dbg !1375
  %div1882 = lshr i32 %sub187, 4, !dbg !1376
  %mul189 = mul i32 %div1882, 144, !dbg !1377
  %add190 = add i32 %mul189, %c140.0, !dbg !1378
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1379
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1380
  %rem193 = and i32 %sub192, 15, !dbg !1381
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1382
  %arrayidx195 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194, !dbg !1383
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1384
  %xor196 = xor i64 %25, %xor185, !dbg !1384
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1384
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1385
    #dbg_value(i32 %inc198, !1347, !DIExpression(), !1349)
  br label %for.cond161, !dbg !1386, !llvm.loop !1387

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1389
    #dbg_value(i32 %inc201, !1322, !DIExpression(), !1323)
  br label %for.cond144, !dbg !1390, !llvm.loop !1391

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1393
    #dbg_value(i32 %add204, !1312, !DIExpression(), !1313)
  br label %for.cond141, !dbg !1394, !llvm.loop !1395

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 142, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1397
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1397
    #dbg_value(i32 %r206.0, !1398, !DIExpression(), !1399)
  %cmp208 = icmp samesign ult i32 %r206.0, 142, !dbg !1400
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1319

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1402

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1405
    #dbg_value(i32 %c211.0, !1406, !DIExpression(), !1407)
  %cmp213 = icmp samesign ult i32 %c211.0, 144, !dbg !1408
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1402

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1410

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1413
    #dbg_value(i32 %i216.0, !1414, !DIExpression(), !1415)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1416
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1410

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 9, !dbg !1418
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1420
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1421
  %arrayidx226 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225, !dbg !1422
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1423
  %mul228 = mul nuw nsw i32 %add227, 145, !dbg !1424
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1425
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1426
  %cmp232 = icmp samesign ult i32 %c211.0, 128, !dbg !1427
  %sub234 = sub nuw nsw i32 144, %c211.0, !dbg !1427
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1427
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #6, !dbg !1428
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1429
    #dbg_value(i32 %inc236, !1414, !DIExpression(), !1415)
  br label %for.cond217, !dbg !1430, !llvm.loop !1431

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1433
    #dbg_value(i32 %add239, !1406, !DIExpression(), !1407)
  br label %for.cond212, !dbg !1434, !llvm.loop !1435

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1437
    #dbg_value(i32 %add242, !1398, !DIExpression(), !1399)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1438
  br label %for.cond207, !dbg !1438, !llvm.loop !1439

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1441
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1442 {
entry:
    #dbg_value(ptr %a, !1445, !DIExpression(), !1446)
    #dbg_value(ptr %b, !1447, !DIExpression(), !1446)
    #dbg_value(ptr %c, !1448, !DIExpression(), !1446)
    #dbg_value(i32 12, !1449, !DIExpression(), !1446)
    #dbg_value(i32 142, !1450, !DIExpression(), !1446)
    #dbg_value(i32 1, !1451, !DIExpression(), !1446)
    #dbg_value(i32 0, !1452, !DIExpression(), !1454)
  br label %for.cond, !dbg !1455

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1456
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1445, !DIExpression(), !1446)
    #dbg_value(ptr %c.addr.0, !1448, !DIExpression(), !1446)
    #dbg_value(i32 %i.0, !1452, !DIExpression(), !1454)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1457
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1459

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1460

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1463
    #dbg_value(i32 poison, !1464, !DIExpression(), !1465)
    #dbg_value(ptr %c.addr.1, !1448, !DIExpression(), !1446)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1460

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 12, i32 noundef 1) #6, !dbg !1466
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1469
    #dbg_value(i32 1, !1464, !DIExpression(), !1465)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1470
    #dbg_value(ptr %incdec.ptr, !1448, !DIExpression(), !1446)
  br label %for.cond1, !dbg !1471, !llvm.loop !1472

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1474
    #dbg_value(i32 %inc5, !1452, !DIExpression(), !1454)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 12, !dbg !1475
    #dbg_value(ptr %add.ptr6, !1445, !DIExpression(), !1446)
  br label %for.cond, !dbg !1476, !llvm.loop !1477

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1479
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1480 {
entry:
    #dbg_value(ptr %a, !1483, !DIExpression(), !1484)
    #dbg_value(ptr %b, !1485, !DIExpression(), !1484)
    #dbg_value(ptr %c, !1486, !DIExpression(), !1484)
    #dbg_value(i32 142, !1487, !DIExpression(), !1484)
    #dbg_value(i32 1, !1488, !DIExpression(), !1484)
    #dbg_value(i32 0, !1489, !DIExpression(), !1491)
  br label %for.cond, !dbg !1492

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1493
    #dbg_value(i32 %i.0, !1489, !DIExpression(), !1491)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1494
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1496

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1497, !DIExpression(), !1500)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1501
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1504
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1505
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1506
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1507
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1508
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1509
    #dbg_value(i32 1, !1497, !DIExpression(), !1500)
    #dbg_value(i32 poison, !1497, !DIExpression(), !1500)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1510
    #dbg_value(i32 %inc12, !1489, !DIExpression(), !1491)
  br label %for.cond, !dbg !1511, !llvm.loop !1512

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1514
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1515 {
entry:
    #dbg_value(ptr %m, !1516, !DIExpression(), !1517)
    #dbg_value(ptr %menc, !1518, !DIExpression(), !1517)
    #dbg_value(i32 1848, !1519, !DIExpression(), !1517)
    #dbg_value(i32 0, !1520, !DIExpression(), !1517)
  br label %for.cond, !dbg !1521

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1523
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1516, !DIExpression(), !1517)
    #dbg_value(i32 %i.0, !1520, !DIExpression(), !1517)
  %exitcond = icmp ne i32 %i.0, 924, !dbg !1524
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1526

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1527
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1529
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1530
  %shl = shl i8 %1, 4, !dbg !1531
  %or = or i8 %shl, %0, !dbg !1532
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1533
  store i8 %or, ptr %arrayidx, align 1, !dbg !1534
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1535
    #dbg_value(i32 %inc, !1520, !DIExpression(), !1517)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1536
    #dbg_value(ptr %add.ptr3, !1516, !DIExpression(), !1517)
  br label %for.cond, !dbg !1537, !llvm.loop !1538

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1540
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1541 {
entry:
    #dbg_value(i8 %a, !1544, !DIExpression(), !1545)
    #dbg_value(i8 %b, !1546, !DIExpression(), !1545)
  %xor1 = xor i8 %a, %b, !dbg !1547
  ret i8 %xor1, !dbg !1548
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1549 {
entry:
    #dbg_value(ptr %a, !1552, !DIExpression(), !1553)
    #dbg_value(ptr %b, !1554, !DIExpression(), !1553)
    #dbg_value(i32 12, !1555, !DIExpression(), !1553)
    #dbg_value(i32 1, !1556, !DIExpression(), !1553)
    #dbg_value(i8 0, !1557, !DIExpression(), !1553)
    #dbg_value(i32 0, !1558, !DIExpression(), !1560)
  br label %for.cond, !dbg !1561

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1553
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1562
    #dbg_value(i32 %i.0, !1558, !DIExpression(), !1560)
    #dbg_value(ptr %b.addr.0, !1554, !DIExpression(), !1553)
    #dbg_value(i8 %ret.0, !1557, !DIExpression(), !1553)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !1563
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1565

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1566
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1566
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1568
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1569
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1570
    #dbg_value(i8 %call1, !1557, !DIExpression(), !1553)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1571
    #dbg_value(i32 %inc, !1558, !DIExpression(), !1560)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1572
    #dbg_value(ptr %add.ptr, !1554, !DIExpression(), !1553)
  br label %for.cond, !dbg !1573, !llvm.loop !1574

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1553
  ret i8 %ret.0.lcssa, !dbg !1576
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1577 {
entry:
    #dbg_value(i8 %a, !1578, !DIExpression(), !1579)
    #dbg_value(i8 %b, !1580, !DIExpression(), !1579)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !1581
  %xor1 = xor i8 %a, %0, !dbg !1582
    #dbg_value(i8 %xor1, !1578, !DIExpression(), !1579)
  %1 = trunc i8 %xor1 to i1, !dbg !1583
    #dbg_value(i8 poison, !1584, !DIExpression(), !1579)
  %2 = and i8 %xor1, 2, !dbg !1585
  %mul9 = mul i8 %2, %b, !dbg !1586
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1583
  %xor11 = xor i8 %conv10, %mul9, !dbg !1587
    #dbg_value(i8 %xor11, !1584, !DIExpression(), !1579)
  %3 = and i8 %xor1, 4, !dbg !1588
  %mul16 = mul i8 %3, %b, !dbg !1589
  %xor18 = xor i8 %mul16, %xor11, !dbg !1590
    #dbg_value(i8 %xor18, !1584, !DIExpression(), !1579)
  %4 = and i8 %xor1, 8, !dbg !1591
  %mul23 = mul i8 %4, %b, !dbg !1592
  %xor25 = xor i8 %mul23, %xor18, !dbg !1593
    #dbg_value(i8 %xor25, !1584, !DIExpression(), !1579)
    #dbg_value(i8 %xor25, !1594, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1579)
  %5 = lshr i8 %xor25, 4, !dbg !1595
  %6 = lshr i8 %xor25, 3, !dbg !1596
  %7 = and i8 %6, 14, !dbg !1596
  %8 = xor i8 %5, %7, !dbg !1597
  %xor25.masked = and i8 %xor25, 15, !dbg !1598
  %9 = xor i8 %8, %xor25.masked, !dbg !1598
    #dbg_value(i8 %9, !1599, !DIExpression(), !1579)
  ret i8 %9, !dbg !1600
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1601, !DIExpression(), !1602)
    #dbg_value(i32 0, !1603, !DIExpression(), !1605)
  br label %for.cond, !dbg !1606

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1607
    #dbg_value(i32 %i.0, !1603, !DIExpression(), !1605)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1608
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1610

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1611

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1613
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1613
  %shr = lshr i64 %0, 4, !dbg !1615
  %add = or disjoint i32 %i.0, 1, !dbg !1616
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1617
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1617
  %xor = xor i64 %shr, %1, !dbg !1618
  %and = and i64 %xor, 1085102592571150095, !dbg !1619
    #dbg_value(i64 %and, !1620, !DIExpression(), !1621)
  %shl = shl nuw i64 %and, 4, !dbg !1622
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1623
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1624
  %xor3 = xor i64 %2, %shl, !dbg !1624
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1624
  %add4 = or disjoint i32 %i.0, 1, !dbg !1625
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1626
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1627
  %xor6 = xor i64 %3, %and, !dbg !1627
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1627
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1628
    #dbg_value(i32 %add7, !1603, !DIExpression(), !1605)
  br label %for.cond, !dbg !1629, !llvm.loop !1630

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1632
    #dbg_value(i32 %i8.0, !1633, !DIExpression(), !1634)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1635
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1611

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1637

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1639
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1639
  %shr13 = lshr i64 %4, 8, !dbg !1641
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1642
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1643
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1643
  %xor16 = xor i64 %shr13, %5, !dbg !1644
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1645
    #dbg_value(i64 %and17, !1646, !DIExpression(), !1647)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1648
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1649
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1649
  %shr20 = lshr i64 %6, 8, !dbg !1650
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1651
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1652
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1652
  %xor23 = xor i64 %shr20, %7, !dbg !1653
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1654
    #dbg_value(i64 %and24, !1655, !DIExpression(), !1647)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1656
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1657
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1658
  %xor27 = xor i64 %8, %shl25, !dbg !1658
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1658
  %shl28 = shl nuw i64 %and24, 8, !dbg !1659
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1660
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1661
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1662
  %xor31 = xor i64 %9, %shl28, !dbg !1662
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1662
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1663
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1664
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1665
  %xor34 = xor i64 %10, %and17, !dbg !1665
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1665
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1666
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1667
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1668
  %xor37 = xor i64 %11, %and24, !dbg !1668
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1668
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1669
    #dbg_value(i32 %add39, !1633, !DIExpression(), !1634)
  br label %for.cond9, !dbg !1670, !llvm.loop !1671

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1673
    #dbg_value(i32 %i41.0, !1674, !DIExpression(), !1675)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1676
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1637

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1678

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1680
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1680
  %shr47 = lshr i64 %12, 16, !dbg !1682
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1683
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1684
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1684
  %xor50 = xor i64 %shr47, %13, !dbg !1685
  %and51 = and i64 %xor50, 281470681808895, !dbg !1686
    #dbg_value(i64 %and51, !1687, !DIExpression(), !1688)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1689
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1690
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1690
  %shr55 = lshr i64 %14, 16, !dbg !1691
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1692
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1693
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1693
  %xor58 = xor i64 %shr55, %15, !dbg !1694
  %and59 = and i64 %xor58, 281470681808895, !dbg !1695
    #dbg_value(i64 %and59, !1696, !DIExpression(), !1688)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1697
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1698
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1699
  %xor62 = xor i64 %16, %shl60, !dbg !1699
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1699
  %shl63 = shl nuw i64 %and59, 16, !dbg !1700
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1701
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1702
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1703
  %xor66 = xor i64 %17, %shl63, !dbg !1703
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1703
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1704
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1705
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1706
  %xor69 = xor i64 %18, %and51, !dbg !1706
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1706
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1707
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1708
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1709
  %xor72 = xor i64 %19, %and59, !dbg !1709
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1709
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1710
    #dbg_value(i32 %inc, !1674, !DIExpression(), !1675)
  br label %for.cond42, !dbg !1711, !llvm.loop !1712

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1714
    #dbg_value(i32 %i75.0, !1715, !DIExpression(), !1716)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1717
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1678

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1719
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1719
  %shr81 = lshr i64 %20, 32, !dbg !1721
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1722
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1723
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1723
  %.masked = and i64 %21, 4294967295, !dbg !1724
  %and85 = xor i64 %shr81, %.masked, !dbg !1724
    #dbg_value(i64 %and85, !1725, !DIExpression(), !1726)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1727
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1728
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1729
  %xor88 = xor i64 %22, %shl86, !dbg !1729
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1729
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1730
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1731
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1732
  %xor91 = xor i64 %23, %and85, !dbg !1732
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1732
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1733
    #dbg_value(i32 %inc93, !1715, !DIExpression(), !1716)
  br label %for.cond76, !dbg !1734, !llvm.loop !1735

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1737
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1738 {
entry:
    #dbg_value(i32 9, !1739, !DIExpression(), !1740)
    #dbg_value(ptr %mat, !1741, !DIExpression(), !1740)
    #dbg_value(ptr %bs_mat, !1742, !DIExpression(), !1740)
    #dbg_value(ptr %acc, !1743, !DIExpression(), !1740)
    #dbg_value(i32 12, !1744, !DIExpression(), !1740)
    #dbg_value(i32 142, !1745, !DIExpression(), !1740)
    #dbg_value(i32 12, !1746, !DIExpression(), !1740)
    #dbg_value(i32 0, !1747, !DIExpression(), !1749)
  br label %for.cond, !dbg !1750

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1751
    #dbg_value(i32 %r.0, !1747, !DIExpression(), !1749)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !1752
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1754

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1755

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1758
    #dbg_value(i32 %c.0, !1759, !DIExpression(), !1760)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !1761
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1755

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1763

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1766
    #dbg_value(i32 %k.0, !1767, !DIExpression(), !1768)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1769
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1763

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !1771
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1773
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !1774
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1774
  %mul8 = mul nuw nsw i32 %r.0, 142, !dbg !1775
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1776
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1776
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1776
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !1777
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1778
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !1779
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1779
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1780
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1781
    #dbg_value(i32 %add14, !1767, !DIExpression(), !1768)
  br label %for.cond4, !dbg !1782, !llvm.loop !1783

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1785
    #dbg_value(i32 %inc, !1759, !DIExpression(), !1760)
  br label %for.cond1, !dbg !1786, !llvm.loop !1787

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1789
    #dbg_value(i32 %inc18, !1747, !DIExpression(), !1749)
  br label %for.cond, !dbg !1790, !llvm.loop !1791

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1793
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1794 {
entry:
    #dbg_value(ptr %p, !1795, !DIExpression(), !1796)
    #dbg_value(ptr %P1, !1797, !DIExpression(), !1796)
    #dbg_value(ptr %V, !1798, !DIExpression(), !1796)
    #dbg_value(ptr %acc, !1799, !DIExpression(), !1796)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 9, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #6, !dbg !1800
  ret void, !dbg !1801
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1802 {
entry:
    #dbg_value(i32 9, !1803, !DIExpression(), !1804)
    #dbg_value(ptr %bs_mat, !1805, !DIExpression(), !1804)
    #dbg_value(ptr %mat, !1806, !DIExpression(), !1804)
    #dbg_value(ptr %acc, !1807, !DIExpression(), !1804)
    #dbg_value(i32 142, !1808, !DIExpression(), !1804)
    #dbg_value(i32 142, !1809, !DIExpression(), !1804)
    #dbg_value(i32 12, !1810, !DIExpression(), !1804)
    #dbg_value(i32 1, !1811, !DIExpression(), !1804)
    #dbg_value(i32 0, !1812, !DIExpression(), !1804)
    #dbg_value(i32 0, !1813, !DIExpression(), !1815)
  br label %for.cond, !dbg !1816

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !1817
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1817
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1818
    #dbg_value(i32 %r.0, !1813, !DIExpression(), !1815)
    #dbg_value(i32 %bs_mat_entries_used.0, !1812, !DIExpression(), !1804)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !1819
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1821

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1822
  br label %for.cond1, !dbg !1822

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1804
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1825
    #dbg_value(i32 %c.0, !1826, !DIExpression(), !1827)
    #dbg_value(i32 %bs_mat_entries_used.1, !1812, !DIExpression(), !1804)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1828
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1822

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1830

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1833
    #dbg_value(i32 %k.0, !1834, !DIExpression(), !1835)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1836
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1830

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !1838
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1838
  %mul8 = mul nuw nsw i32 %k.0, 142, !dbg !1840
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1841
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1841
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1841
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !1842
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1843
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !1844
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1844
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1845
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1846
    #dbg_value(i32 %add13, !1834, !DIExpression(), !1835)
  br label %for.cond4, !dbg !1847, !llvm.loop !1848

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1812, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1804)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1850
    #dbg_value(i32 %add14, !1812, !DIExpression(), !1804)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1851
    #dbg_value(i32 %inc, !1826, !DIExpression(), !1827)
  br label %for.cond1, !dbg !1852, !llvm.loop !1853

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1804
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1855
    #dbg_value(i32 %inc18, !1813, !DIExpression(), !1815)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1856
  br label %for.cond, !dbg !1856, !llvm.loop !1857

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1859
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1860 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1861, !DIExpression(), !1862)
    #dbg_value(ptr %sm, !1863, !DIExpression(), !1862)
    #dbg_value(ptr %smlen, !1864, !DIExpression(), !1862)
    #dbg_value(ptr %m, !1865, !DIExpression(), !1862)
    #dbg_value(i32 %mlen, !1866, !DIExpression(), !1862)
    #dbg_value(ptr %csk, !1867, !DIExpression(), !1862)
    #dbg_value(i32 0, !1868, !DIExpression(), !1862)
    #dbg_value(i32 964, !1869, !DIExpression(), !1862)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1870
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1871
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1872
    #dbg_value(ptr %siglen, !1873, !DIExpression(DW_OP_deref), !1862)
  %call2 = call i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1874
    #dbg_value(i32 %call2, !1868, !DIExpression(), !1862)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1875
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1873, !DIExpression(), !1862)
  %cmp3.not = icmp eq i32 %0, 964
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1877
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1877

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1878
    #dbg_value(i32 %1, !1873, !DIExpression(), !1862)
  %add = add i32 %1, %mlen, !dbg !1880
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1881
  br label %err, !dbg !1882

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1883
    #dbg_value(i32 %2, !1873, !DIExpression(), !1862)
  %add5 = add i32 %2, %mlen, !dbg !1884
  store i32 %add5, ptr %smlen, align 4, !dbg !1885
  br label %err, !dbg !1886

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1887, !1888)
  ret i32 %call2, !dbg !1889
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1890 {
entry:
    #dbg_value(ptr %p, !1891, !DIExpression(), !1892)
    #dbg_value(ptr %m, !1893, !DIExpression(), !1892)
    #dbg_value(ptr %mlen, !1894, !DIExpression(), !1892)
    #dbg_value(ptr %sm, !1895, !DIExpression(), !1892)
    #dbg_value(i32 %smlen, !1896, !DIExpression(), !1892)
    #dbg_value(ptr %pk, !1897, !DIExpression(), !1892)
    #dbg_value(i32 964, !1898, !DIExpression(), !1892)
  %cmp = icmp ult i32 %smlen, 964, !dbg !1899
  br i1 %cmp, label %return, label %if.end, !dbg !1899

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1901
  %sub = add i32 %smlen, -964, !dbg !1902
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1903
    #dbg_value(i32 %call, !1904, !DIExpression(), !1892)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1905
  br i1 %cmp1, label %if.then2, label %return, !dbg !1905

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -964, !dbg !1907
  store i32 %sub3, ptr %mlen, align 4, !dbg !1909
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1910
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1911
  br label %return, !dbg !1912

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1892
  ret i32 %retval.0, !dbg !1913
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1914 {
entry:
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [107415 x i64], align 8
  %tmp = alloca [104 x i8], align 1
    #dbg_value(ptr %p, !1917, !DIExpression(), !1918)
    #dbg_value(ptr %m, !1919, !DIExpression(), !1918)
    #dbg_value(i32 %mlen, !1920, !DIExpression(), !1918)
    #dbg_value(ptr %sig, !1921, !DIExpression(), !1918)
    #dbg_value(ptr %cpk, !1922, !DIExpression(), !1918)
    #dbg_declare(ptr %tEnc, !1923, !DIExpression(), !1924)
    #dbg_declare(ptr %t, !1925, !DIExpression(), !1926)
    #dbg_declare(ptr %y, !1927, !DIExpression(), !1931)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(284) %y, i8 0, i32 284, i1 false), !dbg !1931
    #dbg_declare(ptr %s, !1932, !DIExpression(), !1933)
    #dbg_declare(ptr %pk, !1934, !DIExpression(), !1935)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(859320) %pk, i8 0, i32 859320, i1 false), !dbg !1935
    #dbg_declare(ptr %tmp, !1936, !DIExpression(), !1940)
    #dbg_value(i32 142, !1941, !DIExpression(), !1918)
    #dbg_value(i32 154, !1942, !DIExpression(), !1918)
    #dbg_value(i32 12, !1943, !DIExpression(), !1918)
    #dbg_value(i32 71, !1944, !DIExpression(), !1918)
    #dbg_value(i32 964, !1945, !DIExpression(), !1918)
    #dbg_value(i32 64, !1946, !DIExpression(), !1918)
    #dbg_value(i32 40, !1947, !DIExpression(), !1918)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1948
    #dbg_value(i32 0, !1949, !DIExpression(), !1918)
    #dbg_value(ptr %pk, !1950, !DIExpression(), !1918)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 731016, !dbg !1951
    #dbg_value(ptr %add.ptr, !1952, !DIExpression(), !1918)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1953
    #dbg_value(ptr %add.ptr2, !1954, !DIExpression(), !1918)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1955
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !1956
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !1957
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 40) #8, !dbg !1958
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #8, !dbg !1959
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !1960
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1848) #6, !dbg !1961
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1962
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 142) #8, !dbg !1963
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1965
  %. = zext i1 %cmp21 to i32, !dbg !1918
  ret i32 %., !dbg !1966
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1967 {
entry:
    #dbg_value(ptr %p, !1968, !DIExpression(), !1969)
    #dbg_value(ptr %cpk, !1970, !DIExpression(), !1969)
    #dbg_value(ptr %pk, !1971, !DIExpression(), !1969)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1972
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1973
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1974
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 78, i32 noundef 142) #6, !dbg !1975
  ret i32 0, !dbg !1976
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1977 {
entry:
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !1980, !DIExpression(), !1981)
    #dbg_value(ptr %s, !1982, !DIExpression(), !1981)
    #dbg_value(ptr %P1, !1983, !DIExpression(), !1981)
    #dbg_value(ptr %P2, !1984, !DIExpression(), !1981)
    #dbg_value(ptr %P3, !1985, !DIExpression(), !1981)
    #dbg_value(ptr %eval, !1986, !DIExpression(), !1981)
    #dbg_declare(ptr %SPS, !1987, !DIExpression(), !1988)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %SPS, i8 0, i32 10368, i1 false), !dbg !1988
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1989
    #dbg_declare(ptr %zero, !1990, !DIExpression(), !1991)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(142) %zero, i8 0, i32 142, i1 false), !dbg !1991
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1992
  ret void, !dbg !1993
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !1994 {
entry:
  %PS = alloca [16632 x i64], align 8
    #dbg_value(ptr %p, !1997, !DIExpression(), !1998)
    #dbg_value(ptr %P1, !1999, !DIExpression(), !1998)
    #dbg_value(ptr %P2, !2000, !DIExpression(), !1998)
    #dbg_value(ptr %P3, !2001, !DIExpression(), !1998)
    #dbg_value(ptr %s, !2002, !DIExpression(), !1998)
    #dbg_value(ptr %SPS, !2003, !DIExpression(), !1998)
    #dbg_declare(ptr %PS, !2004, !DIExpression(), !2008)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(133056) %PS, i8 0, i32 133056, i1 false), !dbg !2008
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 12, ptr noundef nonnull %PS) #6, !dbg !2009
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 142, i32 noundef 12, i32 noundef 154, ptr noundef %SPS) #6, !dbg !2010
  ret void, !dbg !2011
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2012 {
entry:
  %accumulator = alloca [266112 x i64], align 8
    #dbg_value(ptr %P1, !2015, !DIExpression(), !2016)
    #dbg_value(ptr %P2, !2017, !DIExpression(), !2016)
    #dbg_value(ptr %P3, !2018, !DIExpression(), !2016)
    #dbg_value(ptr %S, !2019, !DIExpression(), !2016)
    #dbg_value(i32 142, !2020, !DIExpression(), !2016)
    #dbg_value(i32 142, !2021, !DIExpression(), !2016)
    #dbg_value(i32 12, !2022, !DIExpression(), !2016)
    #dbg_value(i32 12, !2023, !DIExpression(), !2016)
    #dbg_value(ptr %PS, !2024, !DIExpression(), !2016)
    #dbg_value(i32 154, !2025, !DIExpression(), !2016)
    #dbg_value(i32 9, !2026, !DIExpression(), !2016)
    #dbg_declare(ptr %accumulator, !2027, !DIExpression(), !2031)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2128896) %accumulator, i8 0, i32 2128896, i1 false), !dbg !2031
    #dbg_value(i32 0, !2032, !DIExpression(), !2016)
    #dbg_value(i32 0, !2033, !DIExpression(), !2035)
  br label %for.cond, !dbg !2036

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 142, %entry ], !dbg !2037
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2037
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2038
    #dbg_value(i32 %row.0, !2033, !DIExpression(), !2035)
    #dbg_value(i32 %P1_used.0, !2032, !DIExpression(), !2016)
  %exitcond4 = icmp ne i32 %row.0, 142, !dbg !2039
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2041

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2042
  br label %for.cond2, !dbg !2042

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2045

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2016
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2047
    #dbg_value(i32 %j.0, !2048, !DIExpression(), !2049)
    #dbg_value(i32 %P1_used.1, !2032, !DIExpression(), !2016)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2050
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2042

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2016
  br label %for.cond21, !dbg !2052

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2054

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2057
    #dbg_value(i32 %col.0, !2058, !DIExpression(), !2059)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2060
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2054

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 72, !dbg !2062
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2062
  %mul8 = mul nuw nsw i32 %row.0, 12, !dbg !2064
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2065
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2066
  %mul11 = mul nuw nsw i32 %col.0, 154, !dbg !2067
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2068
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2068
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2068
  %conv = zext i8 %2 to i32, !dbg !2068
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2069
  %add.ptr15.idx = mul nuw nsw i32 %add13, 72, !dbg !2070
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2070
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2071
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2072
    #dbg_value(i32 %inc, !2058, !DIExpression(), !2059)
  br label %for.cond5, !dbg !2073, !llvm.loop !2074

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2032, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2016)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2076
    #dbg_value(i32 %inc16, !2032, !DIExpression(), !2016)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2077
    #dbg_value(i32 %inc18, !2048, !DIExpression(), !2049)
  br label %for.cond2, !dbg !2078, !llvm.loop !2079

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2081
    #dbg_value(i32 %j20.0, !2082, !DIExpression(), !2083)
  %exitcond3 = icmp ne i32 %j20.0, 12, !dbg !2084
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2052

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2086

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2089
    #dbg_value(i32 %col25.0, !2090, !DIExpression(), !2091)
  %exitcond2 = icmp ne i32 %col25.0, 12, !dbg !2092
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2086

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 12, !dbg !2094
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2096
  %add.ptr33.idx = mul nuw nsw i32 %add31, 72, !dbg !2097
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2097
  %mul35 = mul nuw nsw i32 %row.0, 12, !dbg !2098
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2099
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2100
  %mul38 = mul nuw nsw i32 %col25.0, 154, !dbg !2101
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2102
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2102
  %arrayidx41 = getelementptr i8, ptr %4, i32 142, !dbg !2102
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2102
  %conv42 = zext i8 %5 to i32, !dbg !2102
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2103
  %add.ptr45.idx = mul nuw nsw i32 %add43, 72, !dbg !2104
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2104
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2105
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2106
    #dbg_value(i32 %inc47, !2090, !DIExpression(), !2091)
  br label %for.cond26, !dbg !2107, !llvm.loop !2108

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2110
    #dbg_value(i32 %inc50, !2082, !DIExpression(), !2083)
  br label %for.cond21, !dbg !2111, !llvm.loop !2112

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2114
    #dbg_value(i32 %inc53, !2033, !DIExpression(), !2035)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2115
  br label %for.cond, !dbg !2115, !llvm.loop !2116

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 12, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2118
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2118
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 142, %for.cond56.preheader ], !dbg !2119
    #dbg_value(i32 %row55.0, !2120, !DIExpression(), !2121)
    #dbg_value(i32 %P3_used.0, !2122, !DIExpression(), !2016)
  %exitcond9 = icmp ne i32 %row55.0, 154, !dbg !2123
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2045

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2125
  br label %for.cond61, !dbg !2125

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2128

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2016
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2129
    #dbg_value(i32 %j60.0, !2130, !DIExpression(), !2131)
    #dbg_value(i32 %P3_used.1, !2122, !DIExpression(), !2016)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2132
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2125

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2134

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2137
    #dbg_value(i32 %col65.0, !2138, !DIExpression(), !2139)
  %exitcond5 = icmp ne i32 %col65.0, 12, !dbg !2140
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2134

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 72, !dbg !2142
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2142
  %mul73 = mul nuw nsw i32 %row55.0, 12, !dbg !2144
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2145
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2146
  %mul76 = mul nuw nsw i32 %col65.0, 154, !dbg !2147
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2148
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2148
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2148
  %conv79 = zext i8 %8 to i32, !dbg !2148
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2149
  %add.ptr82.idx = mul nuw nsw i32 %add80, 72, !dbg !2150
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2150
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2151
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2152
    #dbg_value(i32 %inc84, !2138, !DIExpression(), !2139)
  br label %for.cond66, !dbg !2153, !llvm.loop !2154

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2016)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2156
    #dbg_value(i32 %inc86, !2122, !DIExpression(), !2016)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2157
    #dbg_value(i32 %inc88, !2130, !DIExpression(), !2131)
  br label %for.cond61, !dbg !2158, !llvm.loop !2159

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2016
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2161
    #dbg_value(i32 %inc91, !2120, !DIExpression(), !2121)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2162
  br label %for.cond56, !dbg !2162, !llvm.loop !2163

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2016
    #dbg_value(i32 %i.0, !2165, !DIExpression(), !2016)
  %exitcond10 = icmp ne i32 %i.0, 1848, !dbg !2166
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2128

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2167
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2167
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 72, !dbg !2169
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2169
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2170
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2171
    #dbg_value(i32 %inc102, !2165, !DIExpression(), !2016)
  br label %while.cond, !dbg !2128, !llvm.loop !2172

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2174
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2175 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %PS, !2178, !DIExpression(), !2179)
    #dbg_value(ptr %S, !2180, !DIExpression(), !2179)
    #dbg_value(i32 142, !2181, !DIExpression(), !2179)
    #dbg_value(i32 12, !2182, !DIExpression(), !2179)
    #dbg_value(i32 154, !2183, !DIExpression(), !2179)
    #dbg_value(ptr %SPS, !2184, !DIExpression(), !2179)
    #dbg_declare(ptr %accumulator, !2185, !DIExpression(), !2189)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2189
    #dbg_value(i32 9, !2190, !DIExpression(), !2179)
    #dbg_value(i32 0, !2191, !DIExpression(), !2193)
  br label %for.cond, !dbg !2194

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2195
    #dbg_value(i32 %row.0, !2191, !DIExpression(), !2193)
  %exitcond2 = icmp ne i32 %row.0, 12, !dbg !2196
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2198

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2199

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2202

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2203
    #dbg_value(i32 %j.0, !2204, !DIExpression(), !2205)
  %exitcond1 = icmp ne i32 %j.0, 154, !dbg !2206
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2199

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2208

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2211
    #dbg_value(i32 %col.0, !2212, !DIExpression(), !2213)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2214
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2208

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 12, !dbg !2216
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2218
  %add.ptr.idx = mul nuw nsw i32 %add7, 72, !dbg !2219
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2219
  %mul9 = mul nuw nsw i32 %row.0, 12, !dbg !2220
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2221
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2222
  %mul12 = mul nuw nsw i32 %row.0, 154, !dbg !2223
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2224
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2224
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2224
  %conv = zext i8 %1 to i32, !dbg !2224
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2225
  %add.ptr16.idx = mul nuw nsw i32 %add14, 72, !dbg !2226
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2226
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2227
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2228
    #dbg_value(i32 %add17, !2212, !DIExpression(), !2213)
  br label %for.cond4, !dbg !2229, !llvm.loop !2230

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2232
    #dbg_value(i32 %inc, !2204, !DIExpression(), !2205)
  br label %for.cond1, !dbg !2233, !llvm.loop !2234

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2236
    #dbg_value(i32 %inc21, !2191, !DIExpression(), !2193)
  br label %for.cond, !dbg !2237, !llvm.loop !2238

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2179
    #dbg_value(i32 %i.0, !2240, !DIExpression(), !2179)
  %exitcond3 = icmp ne i32 %i.0, 144, !dbg !2241
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2202

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2242
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2242
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 72, !dbg !2244
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2244
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2245
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2246
    #dbg_value(i32 %inc32, !2240, !DIExpression(), !2179)
  br label %while.cond, !dbg !2202, !llvm.loop !2247

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2249
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2250 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2253, !DIExpression(), !2254)
    #dbg_value(ptr %in, !2255, !DIExpression(), !2254)
    #dbg_value(ptr %acc, !2256, !DIExpression(), !2254)
    #dbg_value(i32 0, !2257, !DIExpression(), !2259)
  br label %for.cond, !dbg !2260

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2261
    #dbg_value(i32 %i.0, !2257, !DIExpression(), !2259)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2262
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2264

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2265
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2265
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2267
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2268
  %xor = xor i64 %1, %0, !dbg !2268
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2268
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2269
    #dbg_value(i32 %inc, !2257, !DIExpression(), !2259)
  br label %for.cond, !dbg !2270, !llvm.loop !2271

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2273
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2274 {
entry:
    #dbg_value(i32 9, !2277, !DIExpression(), !2278)
    #dbg_value(ptr %bins, !2279, !DIExpression(), !2278)
    #dbg_value(ptr %out, !2280, !DIExpression(), !2278)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2281
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2282
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2283
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 792, !dbg !2284
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2285
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2286
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2287
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2288
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2289
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2290
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2291
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2292
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2293
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2294
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2295
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2296
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2297
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2298
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2299
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2300
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2301
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2302
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2303
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2304
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2305
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2306
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2307
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2308
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2309
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2310
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2311
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2312
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2313
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2314
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2315
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2316
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2317
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2318
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2319
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2320
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2321
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2322
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2323
  call fastcc void @m_vec_copy(i32 noundef 9, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2324
  ret void, !dbg !2325
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2326 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2327, !DIExpression(), !2328)
    #dbg_value(ptr %in, !2329, !DIExpression(), !2328)
    #dbg_value(ptr %acc, !2330, !DIExpression(), !2328)
    #dbg_value(i64 1229782938247303441, !2331, !DIExpression(), !2328)
    #dbg_value(i32 0, !2332, !DIExpression(), !2334)
  br label %for.cond, !dbg !2335

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2336
    #dbg_value(i32 %i.0, !2332, !DIExpression(), !2334)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2337
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2339

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2340
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2340
  %and = and i64 %0, 1229782938247303441, !dbg !2342
    #dbg_value(i64 %and, !2343, !DIExpression(), !2344)
  %xor = lshr i64 %0, 1, !dbg !2345
  %shr = and i64 %xor, 8608480567731124087, !dbg !2345
  %mul = mul nuw i64 %and, 9, !dbg !2346
  %xor2 = xor i64 %shr, %mul, !dbg !2347
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2348
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2349
  %xor4 = xor i64 %1, %xor2, !dbg !2349
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2349
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2350
    #dbg_value(i32 %inc, !2332, !DIExpression(), !2334)
  br label %for.cond, !dbg !2351, !llvm.loop !2352

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2354
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2355 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2356, !DIExpression(), !2357)
    #dbg_value(ptr %in, !2358, !DIExpression(), !2357)
    #dbg_value(ptr %acc, !2359, !DIExpression(), !2357)
    #dbg_value(i64 -8608480567731124088, !2360, !DIExpression(), !2357)
    #dbg_value(i32 0, !2361, !DIExpression(), !2363)
  br label %for.cond, !dbg !2364

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2365
    #dbg_value(i32 %i.0, !2361, !DIExpression(), !2363)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2366
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2368

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2369
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2369
    #dbg_value(i64 %0, !2371, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2372)
  %xor = shl i64 %0, 1, !dbg !2373
  %shl = and i64 %xor, -1229782938247303442, !dbg !2373
  %and = lshr i64 %0, 3, !dbg !2374
  %shr = and i64 %and, 1229782938247303441, !dbg !2374
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2375
  %xor2 = xor i64 %shl, %mul, !dbg !2376
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2377
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2378
  %xor4 = xor i64 %1, %xor2, !dbg !2378
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2378
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2379
    #dbg_value(i32 %inc, !2361, !DIExpression(), !2363)
  br label %for.cond, !dbg !2380, !llvm.loop !2381

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2383
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2384 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2385, !DIExpression(), !2386)
    #dbg_value(ptr %in, !2387, !DIExpression(), !2386)
    #dbg_value(ptr %out, !2388, !DIExpression(), !2386)
    #dbg_value(i32 0, !2389, !DIExpression(), !2391)
  br label %for.cond, !dbg !2392

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2393
    #dbg_value(i32 %i.0, !2389, !DIExpression(), !2391)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2394
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2396

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2397
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2397
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2399
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2400
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2401
    #dbg_value(i32 %inc, !2389, !DIExpression(), !2391)
  br label %for.cond, !dbg !2402, !llvm.loop !2403

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2405
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2406 {
entry:
    #dbg_value(ptr %p, !2437, !DIExpression(), !2438)
    #dbg_value(ptr %in, !2439, !DIExpression(), !2438)
    #dbg_value(ptr %out, !2440, !DIExpression(), !2438)
    #dbg_value(i32 %size, !2441, !DIExpression(), !2438)
    #dbg_value(i32 9, !2442, !DIExpression(), !2438)
    #dbg_value(i32 0, !2443, !DIExpression(), !2438)
    #dbg_value(i32 0, !2444, !DIExpression(), !2446)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2447
  br label %for.cond, !dbg !2447

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2448
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2448
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2449
    #dbg_value(i32 %r.0, !2444, !DIExpression(), !2446)
    #dbg_value(i32 %m_vecs_stored.0, !2443, !DIExpression(), !2438)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2450
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2452

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2453
  br label %for.cond1, !dbg !2453

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2438
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2456
    #dbg_value(i32 %c.0, !2457, !DIExpression(), !2458)
    #dbg_value(i32 %m_vecs_stored.1, !2443, !DIExpression(), !2438)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2459
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2453

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2461
  %add = add nsw i32 %mul, %c.0, !dbg !2463
  %add.ptr.idx = mul nsw i32 %add, 72, !dbg !2464
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2464
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2465
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2465
  call fastcc void @m_vec_copy.17(i32 noundef 9, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2466
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2467
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2467

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2469
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2471
  %add.ptr11.idx = mul nsw i32 %add9, 72, !dbg !2472
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2472
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2473
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2473
  call fastcc void @m_vec_add.18(i32 noundef 9, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2474
  br label %for.inc, !dbg !2475

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2443, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2438)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2476
    #dbg_value(i32 %inc, !2443, !DIExpression(), !2438)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2477
    #dbg_value(i32 %inc14, !2457, !DIExpression(), !2458)
  br label %for.cond1, !dbg !2478, !llvm.loop !2479

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2438
  %inc16 = add nuw i32 %r.0, 1, !dbg !2481
    #dbg_value(i32 %inc16, !2444, !DIExpression(), !2446)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2482
  br label %for.cond, !dbg !2482, !llvm.loop !2483

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2485
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2486 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2487, !DIExpression(), !2488)
    #dbg_value(ptr %in, !2489, !DIExpression(), !2488)
    #dbg_value(ptr %out, !2490, !DIExpression(), !2488)
    #dbg_value(i32 0, !2491, !DIExpression(), !2493)
  br label %for.cond, !dbg !2494

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2495
    #dbg_value(i32 %i.0, !2491, !DIExpression(), !2493)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2496
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2498

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2499
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2499
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2501
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2502
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2503
    #dbg_value(i32 %inc, !2491, !DIExpression(), !2493)
  br label %for.cond, !dbg !2504, !llvm.loop !2505

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2507
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2508 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2509, !DIExpression(), !2510)
    #dbg_value(ptr %in, !2511, !DIExpression(), !2510)
    #dbg_value(ptr %acc, !2512, !DIExpression(), !2510)
    #dbg_value(i32 0, !2513, !DIExpression(), !2515)
  br label %for.cond, !dbg !2516

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2517
    #dbg_value(i32 %i.0, !2513, !DIExpression(), !2515)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2518
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2520

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2521
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2521
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2523
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2524
  %xor = xor i64 %1, %0, !dbg !2524
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2524
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2525
    #dbg_value(i32 %inc, !2513, !DIExpression(), !2515)
  br label %for.cond, !dbg !2526, !llvm.loop !2527

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2529
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2530 {
entry:
  %Ar = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2533, !DIExpression(), !2534)
    #dbg_value(ptr %A, !2535, !DIExpression(), !2534)
    #dbg_value(ptr %y, !2536, !DIExpression(), !2534)
    #dbg_value(ptr %r, !2537, !DIExpression(), !2534)
    #dbg_value(ptr %x, !2538, !DIExpression(), !2534)
    #dbg_value(i32 %k, !2539, !DIExpression(), !2534)
    #dbg_value(i32 %o, !2540, !DIExpression(), !2534)
    #dbg_value(i32 %m, !2541, !DIExpression(), !2534)
    #dbg_value(i32 %A_cols, !2542, !DIExpression(), !2534)
    #dbg_value(i32 0, !2543, !DIExpression(), !2545)
  %0 = mul nsw i32 %o, %k, !dbg !2546
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2546
  br label %for.cond, !dbg !2546

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2547
    #dbg_value(i32 %i.0, !2543, !DIExpression(), !2545)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2548
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2550

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2551
  br label %for.cond3, !dbg !2551

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2553
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2553
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2555
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2556
  %inc = add nuw i32 %i.0, 1, !dbg !2557
    #dbg_value(i32 %inc, !2543, !DIExpression(), !2545)
  br label %for.cond, !dbg !2558, !llvm.loop !2559

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2561
    #dbg_value(i32 %i2.0, !2562, !DIExpression(), !2563)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2564
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2551

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2566
  %mul7 = mul nsw i32 %k, %o, !dbg !2568
  %add = add nsw i32 %mul7, 1, !dbg !2569
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2570
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2571
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2571
  store i8 0, ptr %arrayidx10, align 1, !dbg !2572
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2573
    #dbg_value(i32 %inc12, !2562, !DIExpression(), !2563)
  br label %for.cond3, !dbg !2574, !llvm.loop !2575

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2577
  %add15 = add nsw i32 %mul14, 1, !dbg !2578
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2579
    #dbg_value(i32 0, !2580, !DIExpression(), !2582)
  br label %for.cond17, !dbg !2583

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2584
    #dbg_value(i32 %i16.0, !2580, !DIExpression(), !2582)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2585
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2587

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2588
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2588
  %arrayidx21 = getelementptr inbounds nuw [142 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2590
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2590
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2591
  %mul22 = mul nsw i32 %k, %o, !dbg !2592
  %mul23 = mul nsw i32 %k, %o, !dbg !2593
  %add24 = add nsw i32 %mul23, 1, !dbg !2594
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2595
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2596
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2596
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2597
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2598
    #dbg_value(i32 %inc29, !2580, !DIExpression(), !2582)
  br label %for.cond17, !dbg !2599, !llvm.loop !2600

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2602
  %add32 = add nsw i32 %mul31, 1, !dbg !2603
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2604
    #dbg_value(i8 0, !2605, !DIExpression(), !2534)
    #dbg_value(i32 0, !2606, !DIExpression(), !2608)
  %6 = add i32 %A_cols, -1, !dbg !2609
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2609
  br label %for.cond34, !dbg !2609

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2534
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2610
    #dbg_value(i32 %i33.0, !2606, !DIExpression(), !2608)
    #dbg_value(i8 %full_rank.0, !2605, !DIExpression(), !2534)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2611
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2613

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2534)
  %sub37 = add nsw i32 %m, -1, !dbg !2614
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2616
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2617
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2617
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2617
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2534)
  %or12 = or i8 %full_rank.0, %8, !dbg !2618
    #dbg_value(i8 %or12, !2605, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2534)
    #dbg_value(i8 %or12, !2605, !DIExpression(), !2534)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2619
    #dbg_value(i32 %inc44, !2606, !DIExpression(), !2608)
  br label %for.cond34, !dbg !2620, !llvm.loop !2621

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2534
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2623
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2623

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2625

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2625, !llvm.loop !2627

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2629
    #dbg_value(i32 %row.0, !2630, !DIExpression(), !2631)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2632
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2625

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2634, !DIExpression(), !2534)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2635
  %div = sdiv i32 32, %sub54, !dbg !2635
  %add55 = add nsw i32 %row.0, %div, !dbg !2635
  %mul56 = mul nsw i32 %k, %o, !dbg !2635
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2635
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2635

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2635
  %div60 = sdiv i32 32, %sub59, !dbg !2635
  %add61 = add nsw i32 %row.0, %div60, !dbg !2635
  br label %cond.end, !dbg !2635

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2635
  br label %cond.end, !dbg !2635

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2635
    #dbg_value(i32 %cond, !2637, !DIExpression(), !2534)
    #dbg_value(i32 %row.0, !2638, !DIExpression(), !2640)
  br label %for.cond63, !dbg !2641

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2642
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2643
    #dbg_value(i32 %col.0, !2638, !DIExpression(), !2640)
    #dbg_value(i8 %finished.0, !2634, !DIExpression(), !2534)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2644
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2646

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2647
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2649
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2649
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2649
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2650
  %not = xor i8 %finished.0, -1, !dbg !2651
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2652, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2534)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2653
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2654
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2654
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2654
  %13 = and i8 %12, %not, !dbg !2655
  %and801 = and i8 %13, %call70, !dbg !2655
    #dbg_value(i8 %and801, !2656, !DIExpression(), !2657)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2658
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2659
  %xor2 = xor i8 %14, %and801, !dbg !2659
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2659
    #dbg_value(i32 0, !2660, !DIExpression(), !2662)
  br label %for.cond87, !dbg !2663

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2664
    #dbg_value(i32 %i86.0, !2660, !DIExpression(), !2662)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2665
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2667

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2668
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2670
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2670
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2670
  %conv94 = zext i8 %16 to i64, !dbg !2671
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2672
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2673
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2674
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2674
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2674
  %conv99 = zext i8 %18 to i64, !dbg !2675
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2676
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2677
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2678
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2679
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2680
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2680
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2680
  %conv106 = zext i8 %20 to i64, !dbg !2681
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2682
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2683
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2684
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2685
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2686
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2686
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2686
  %conv113 = zext i8 %22 to i64, !dbg !2687
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2688
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2689
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2690
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2691
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2692
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2692
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2692
  %conv120 = zext i8 %24 to i64, !dbg !2693
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2694
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2695
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2696
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2697
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2698
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2698
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2698
  %conv127 = zext i8 %26 to i64, !dbg !2699
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2700
  %xor129 = xor i64 %xor122, %shl128, !dbg !2701
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2702
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2703
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2704
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2704
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2704
  %conv134 = zext i8 %28 to i64, !dbg !2705
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2706
  %xor136 = xor i64 %xor129, %shl135, !dbg !2707
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2708
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2709
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2710
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2710
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2710
  %conv141 = zext i8 %30 to i64, !dbg !2711
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2712
  %xor143 = xor i64 %xor136, %shl142, !dbg !2713
    #dbg_value(i64 %xor143, !2714, !DIExpression(), !2715)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2716
    #dbg_value(i64 %call144, !2714, !DIExpression(), !2715)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2717
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2717
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2718
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2718
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2719
  %33 = trunc i64 %call144 to i8, !dbg !2719
  %34 = and i8 %33, 15, !dbg !2719
  %conv152 = xor i8 %34, %32, !dbg !2719
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2719
  %shr = lshr i64 %call144, 8, !dbg !2720
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2721
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2721
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2722
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2722
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2723
  %37 = trunc i64 %shr to i8, !dbg !2723
  %38 = and i8 %37, 15, !dbg !2723
  %conv161 = xor i8 %38, %36, !dbg !2723
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2723
  %shr162 = lshr i64 %call144, 16, !dbg !2724
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2725
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2725
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2726
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2726
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2727
  %41 = trunc i64 %shr162 to i8, !dbg !2727
  %42 = and i8 %41, 15, !dbg !2727
  %conv171 = xor i8 %42, %40, !dbg !2727
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2727
  %shr172 = lshr i64 %call144, 24, !dbg !2728
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2729
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2729
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2730
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2730
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2731
  %45 = trunc i64 %shr172 to i8, !dbg !2731
  %46 = and i8 %45, 15, !dbg !2731
  %conv181 = xor i8 %46, %44, !dbg !2731
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2731
  %shr182 = lshr i64 %call144, 32, !dbg !2732
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2733
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2733
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2734
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2734
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2735
  %49 = trunc i64 %shr182 to i8, !dbg !2735
  %50 = and i8 %49, 15, !dbg !2735
  %conv191 = xor i8 %50, %48, !dbg !2735
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2735
  %shr192 = lshr i64 %call144, 40, !dbg !2736
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2737
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2737
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2738
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2738
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2739
  %53 = trunc i64 %shr192 to i8, !dbg !2739
  %54 = and i8 %53, 15, !dbg !2739
  %conv201 = xor i8 %54, %52, !dbg !2739
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2739
  %shr202 = lshr i64 %call144, 48, !dbg !2740
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2741
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2741
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2742
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2742
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2743
  %57 = trunc i64 %shr202 to i8, !dbg !2743
  %58 = and i8 %57, 15, !dbg !2743
  %conv211 = xor i8 %58, %56, !dbg !2743
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2743
  %shr212 = lshr i64 %call144, 56, !dbg !2744
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2745
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2745
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2746
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2746
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2747
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2747
  %conv221 = xor i8 %60, %61, !dbg !2747
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2747
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2748
    #dbg_value(i32 %add223, !2660, !DIExpression(), !2662)
  br label %for.cond87, !dbg !2749, !llvm.loop !2750

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2534)
  %or2273 = or i8 %finished.0, %call70, !dbg !2752
    #dbg_value(i8 %or2273, !2634, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2534)
    #dbg_value(i8 %or2273, !2634, !DIExpression(), !2534)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2753
    #dbg_value(i32 %inc230, !2638, !DIExpression(), !2640)
  br label %for.cond63, !dbg !2754, !llvm.loop !2755

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2757

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2534
  ret i32 %retval.0, !dbg !2757
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2758 {
entry:
    #dbg_value(ptr %a, !2759, !DIExpression(), !2760)
    #dbg_value(ptr %b, !2761, !DIExpression(), !2760)
    #dbg_value(ptr %c, !2762, !DIExpression(), !2760)
    #dbg_value(i32 %colrow_ab, !2763, !DIExpression(), !2760)
    #dbg_value(i32 %row_a, !2764, !DIExpression(), !2760)
    #dbg_value(i32 1, !2765, !DIExpression(), !2760)
    #dbg_value(i32 0, !2766, !DIExpression(), !2768)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2769
  br label %for.cond, !dbg !2769

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2770
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2759, !DIExpression(), !2760)
    #dbg_value(ptr %c.addr.0, !2762, !DIExpression(), !2760)
    #dbg_value(i32 %i.0, !2766, !DIExpression(), !2768)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2771
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2773

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2774

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2777
    #dbg_value(i32 poison, !2778, !DIExpression(), !2779)
    #dbg_value(ptr %c.addr.1, !2762, !DIExpression(), !2760)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2774

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2780
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2783
    #dbg_value(i32 1, !2778, !DIExpression(), !2779)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2784
    #dbg_value(ptr %incdec.ptr, !2762, !DIExpression(), !2760)
  br label %for.cond1, !dbg !2785, !llvm.loop !2786

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2788
    #dbg_value(i32 %inc5, !2766, !DIExpression(), !2768)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2789
    #dbg_value(ptr %add.ptr6, !2759, !DIExpression(), !2760)
  br label %for.cond, !dbg !2790, !llvm.loop !2791

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2793
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2794 {
entry:
    #dbg_value(i8 %a, !2795, !DIExpression(), !2796)
    #dbg_value(i8 %b, !2797, !DIExpression(), !2796)
  %xor1 = xor i8 %a, %b, !dbg !2798
  ret i8 %xor1, !dbg !2799
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2800 {
entry:
  %_pivot_row = alloca [10 x i64], align 32
  %_pivot_row2 = alloca [10 x i64], align 32
  %packed_A = alloca [1420 x i64], align 32
  %temp = alloca [160 x i8], align 1
    #dbg_value(ptr %A, !2804, !DIExpression(), !2805)
    #dbg_value(i32 %nrows, !2806, !DIExpression(), !2805)
    #dbg_value(i32 %ncols, !2807, !DIExpression(), !2805)
    #dbg_declare(ptr %_pivot_row, !2808, !DIExpression(), !2812)
    #dbg_declare(ptr %_pivot_row2, !2813, !DIExpression(), !2814)
    #dbg_declare(ptr %packed_A, !2815, !DIExpression(), !2819)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(11360) %packed_A, i8 0, i32 11360, i1 false), !dbg !2819
  %add = add nsw i32 %ncols, 15, !dbg !2820
  %div = sdiv i32 %add, 16, !dbg !2821
    #dbg_value(i32 %div, !2822, !DIExpression(), !2805)
    #dbg_value(i32 0, !2823, !DIExpression(), !2825)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2826
  br label %for.cond, !dbg !2826

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2827
    #dbg_value(i32 %i.0, !2823, !DIExpression(), !2825)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2828
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2830

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2831
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2831
  br label %for.cond3, !dbg !2831

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2833
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2835
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2836
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2837
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2838
  %inc = add nuw i32 %i.0, 1, !dbg !2839
    #dbg_value(i32 %inc, !2823, !DIExpression(), !2825)
  br label %for.cond, !dbg !2840, !llvm.loop !2841

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2843
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2805
    #dbg_value(i32 %pivot_row.0, !2844, !DIExpression(), !2805)
    #dbg_value(i32 %pivot_col.0, !2845, !DIExpression(), !2846)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2847
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2831

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2849

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2851
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2851
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2851
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2851
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2851
    #dbg_value(i32 %cond, !2853, !DIExpression(), !2854)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2855
    #dbg_value(i32 %cond16, !2856, !DIExpression(), !2854)
    #dbg_value(i32 0, !2857, !DIExpression(), !2859)
  br label %for.cond18, !dbg !2860

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2861
    #dbg_value(i32 %i17.0, !2857, !DIExpression(), !2859)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2862
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2864

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2855
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2855
  br label %for.cond25, !dbg !2865

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2867
  store i64 0, ptr %arrayidx, align 8, !dbg !2869
  %arrayidx21 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2870
  store i64 0, ptr %arrayidx21, align 8, !dbg !2871
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2872
    #dbg_value(i32 %inc23, !2857, !DIExpression(), !2859)
  br label %for.cond18, !dbg !2873, !llvm.loop !2874

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2854
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2854
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2876
    #dbg_value(i32 %row.0, !2877, !DIExpression(), !2876)
    #dbg_value(i8 %pivot.0, !2878, !DIExpression(), !2854)
    #dbg_value(i64 %pivot_is_zero.0, !2879, !DIExpression(), !2854)
  %add27 = add nsw i32 %cond16, 32, !dbg !2880
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2880
  %sub30 = add nsw i32 %nrows, -1, !dbg !2880
  %add32 = add nsw i32 %cond16, 32, !dbg !2880
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2880
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2882
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2865

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2883
  %not = xor i64 %call, -1, !dbg !2885
    #dbg_value(i64 %not, !2886, !DIExpression(), !2887)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2888
    #dbg_value(i64 %call37, !2889, !DIExpression(), !2887)
    #dbg_value(i32 0, !2890, !DIExpression(), !2892)
  br label %for.cond38, !dbg !2893

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2894
    #dbg_value(i32 %j.0, !2890, !DIExpression(), !2892)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2895
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2897

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2898
  %or = or i64 %and, %not, !dbg !2900
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2901
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2902
  %arrayidx43 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2903
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2903
  %and44 = and i64 %or, %0, !dbg !2904
  %arrayidx45 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2905
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2906
  %xor = xor i64 %1, %and44, !dbg !2906
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2906
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2907
    #dbg_value(i32 %inc47, !2890, !DIExpression(), !2892)
  br label %for.cond38, !dbg !2908, !llvm.loop !2909

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2911
    #dbg_value(i8 %call50, !2878, !DIExpression(), !2854)
  %conv = zext nneg i8 %call50 to i32, !dbg !2912
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2913
    #dbg_value(i64 %call51, !2879, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2854)
  %not52 = xor i64 %call51, -1, !dbg !2914
    #dbg_value(i64 %not52, !2879, !DIExpression(), !2854)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2915
    #dbg_value(i32 %inc54, !2877, !DIExpression(), !2876)
  br label %for.cond25, !dbg !2916, !llvm.loop !2917

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2854
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2854
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2919
    #dbg_value(i8 %call56, !2920, !DIExpression(), !2805)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2921
    #dbg_value(i32 %cond, !2922, !DIExpression(), !2924)
  br label %for.cond60, !dbg !2925

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2926
    #dbg_value(i32 %row59.0, !2922, !DIExpression(), !2924)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2927
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2929

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2930

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2932
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2934
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2934
    #dbg_value(i64 %and67, !2935, !DIExpression(), !2936)
    #dbg_value(i64 %and67.demorgan, !2937, !DIExpression(), !2936)
    #dbg_value(i32 0, !2938, !DIExpression(), !2940)
  br label %for.cond69, !dbg !2941

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2942
    #dbg_value(i32 %col.0, !2938, !DIExpression(), !2940)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2943
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2945

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2946
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2948
  %arrayidx75 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2949
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2949
  %and76 = and i64 %and67.demorgan, %2, !dbg !2950
  %arrayidx77 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2951
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2951
  %and78 = and i64 %3, %and67, !dbg !2952
  %add79 = add i64 %and76, %and78, !dbg !2953
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2954
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2955
  %arrayidx82 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2956
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2957
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2958
    #dbg_value(i32 %inc84, !2938, !DIExpression(), !2940)
  br label %for.cond69, !dbg !2959, !llvm.loop !2960

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2962
    #dbg_value(i32 %inc87, !2922, !DIExpression(), !2924)
  br label %for.cond60, !dbg !2963, !llvm.loop !2964

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2966
    #dbg_value(i32 %row89.0, !2967, !DIExpression(), !2968)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2969
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2930

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2971
    #dbg_value(i1 %cmp94, !2973, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2974)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2975
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2976
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2977
    #dbg_value(i8 %call100, !2978, !DIExpression(), !2974)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2979
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2980
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2981
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2982
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2983
    #dbg_value(i32 %inc110, !2967, !DIExpression(), !2968)
  br label %for.cond90, !dbg !2984, !llvm.loop !2985

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2805)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2987
  %5 = add i32 %4, 1, !dbg !2987
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2987
    #dbg_value(i32 %conv116, !2844, !DIExpression(), !2805)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2988
    #dbg_value(i32 %inc118, !2845, !DIExpression(), !2846)
  br label %for.cond3, !dbg !2989, !llvm.loop !2990

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2992
    #dbg_value(i32 %i120.0, !2993, !DIExpression(), !2994)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2995
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2849

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2997
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2999
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !3000
    #dbg_value(i32 0, !3001, !DIExpression(), !3003)
  br label %for.cond130, !dbg !3004

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3005
    #dbg_value(i32 %j129.0, !3001, !DIExpression(), !3003)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3006
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3008

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [160 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3009
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3009
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3011
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3012
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3012
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3013
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3014
    #dbg_value(i32 %inc139, !3001, !DIExpression(), !3003)
  br label %for.cond130, !dbg !3015, !llvm.loop !3016

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3018
    #dbg_value(i32 %inc142, !2993, !DIExpression(), !2994)
  br label %for.cond121, !dbg !3019, !llvm.loop !3020

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 160) #8, !dbg !3022
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 80) #8, !dbg !3023
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 80) #8, !dbg !3024
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 11360) #8, !dbg !3025
  ret void, !dbg !3026
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3027 {
entry:
    #dbg_value(i8 %a, !3029, !DIExpression(), !3030)
    #dbg_value(i8 0, !3031, !DIExpression(), !3030)
  %0 = icmp ne i8 %a, 0, !dbg !3032
  %conv3 = sext i1 %0 to i8, !dbg !3033
  %1 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3034
  %xor5 = xor i8 %1, %conv3, !dbg !3035
  ret i8 %xor5, !dbg !3036
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3037 {
entry:
    #dbg_value(i8 %a, !3040, !DIExpression(), !3041)
    #dbg_value(i64 %b, !3042, !DIExpression(), !3041)
  %0 = and i8 %a, 1, !dbg !3043
  %conv1 = zext nneg i8 %0 to i64, !dbg !3044
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3045
    #dbg_value(i64 %mul, !3046, !DIExpression(), !3041)
  %1 = and i8 %a, 2, !dbg !3047
  %conv4 = zext nneg i8 %1 to i64, !dbg !3048
  %mul5 = mul i64 %b, %conv4, !dbg !3049
  %xor = xor i64 %mul, %mul5, !dbg !3050
    #dbg_value(i64 %xor, !3046, !DIExpression(), !3041)
  %2 = and i8 %a, 4, !dbg !3051
  %conv8 = zext nneg i8 %2 to i64, !dbg !3052
  %mul9 = mul i64 %b, %conv8, !dbg !3053
  %xor10 = xor i64 %xor, %mul9, !dbg !3054
    #dbg_value(i64 %xor10, !3046, !DIExpression(), !3041)
  %3 = and i8 %a, 8, !dbg !3055
  %conv13 = zext nneg i8 %3 to i64, !dbg !3056
  %mul14 = mul i64 %b, %conv13, !dbg !3057
  %xor15 = xor i64 %xor10, %mul14, !dbg !3058
    #dbg_value(i64 %xor15, !3046, !DIExpression(), !3041)
    #dbg_value(i64 %xor15, !3059, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3041)
  %shr = lshr i64 %xor15, 4, !dbg !3060
  %and16 = lshr i64 %xor15, 3, !dbg !3061
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3061
  %4 = xor i64 %shr, %shr18, !dbg !3062
  %xor19 = xor i64 %4, %xor15, !dbg !3062
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3063
    #dbg_value(i64 %and20, !3064, !DIExpression(), !3041)
  ret i64 %and20, !dbg !3065
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3066 {
entry:
    #dbg_value(ptr %in, !3069, !DIExpression(), !3070)
    #dbg_value(ptr %out, !3071, !DIExpression(), !3070)
    #dbg_value(i32 %ncols, !3072, !DIExpression(), !3070)
    #dbg_value(ptr %out, !3073, !DIExpression(), !3070)
    #dbg_value(i32 0, !3074, !DIExpression(), !3070)
  br label %for.cond, !dbg !3075

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3077
    #dbg_value(i32 %i.0, !3074, !DIExpression(), !3070)
  %add = or disjoint i32 %i.0, 1, !dbg !3078
  %cmp = icmp slt i32 %add, %ncols, !dbg !3080
  br i1 %cmp, label %for.body, label %for.end, !dbg !3081

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3082
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3082
  %add2 = or disjoint i32 %i.0, 1, !dbg !3084
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3085
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3085
  %shl5 = shl i8 %1, 4, !dbg !3086
  %or = or i8 %shl5, %0, !dbg !3087
  %div = lshr exact i32 %i.0, 1, !dbg !3088
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3089
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3090
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3091
    #dbg_value(i32 %add8, !3074, !DIExpression(), !3070)
  br label %for.cond, !dbg !3092, !llvm.loop !3093

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3077
  %2 = and i32 %ncols, -2147483647, !dbg !3095
  %cmp9 = icmp eq i32 %2, 1, !dbg !3095
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3095

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3097
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3097
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3099
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3100
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3101
  br label %if.end, !dbg !3102

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3103
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3104 {
entry:
    #dbg_value(i32 %a, !3107, !DIExpression(), !3108)
    #dbg_value(i32 %b, !3109, !DIExpression(), !3108)
  %xor = xor i32 %a, %b, !dbg !3110
  %0 = icmp sgt i32 %xor, 0, !dbg !3111
  %shr = sext i1 %0 to i64, !dbg !3111
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3112
  %xor1 = xor i64 %1, %shr, !dbg !3113
  ret i64 %xor1, !dbg !3114
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3115 {
entry:
    #dbg_value(i32 %a, !3116, !DIExpression(), !3117)
    #dbg_value(i32 %b, !3118, !DIExpression(), !3117)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3117)
  %0 = icmp slt i32 %b, %a, !dbg !3120
  %shr = sext i1 %0 to i64, !dbg !3120
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3121
  %xor = xor i64 %1, %shr, !dbg !3122
  ret i64 %xor, !dbg !3123
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3124 {
entry:
    #dbg_value(ptr %in, !3127, !DIExpression(), !3128)
    #dbg_value(i32 %index, !3129, !DIExpression(), !3128)
  %div = sdiv i32 %index, 16, !dbg !3130
    #dbg_value(i32 %div, !3131, !DIExpression(), !3128)
  %rem = srem i32 %index, 16, !dbg !3132
    #dbg_value(i32 %rem, !3133, !DIExpression(), !3128)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3134
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3134
  %mul = shl nsw i32 %rem, 2, !dbg !3135
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3136
  %shr = lshr i64 %0, %sh_prom, !dbg !3136
  %1 = trunc i64 %shr to i8, !dbg !3137
  %conv = and i8 %1, 15, !dbg !3137
  ret i8 %conv, !dbg !3138
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3139 {
entry:
    #dbg_value(i8 %a, !3142, !DIExpression(), !3143)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3144
    #dbg_value(i8 %call, !3145, !DIExpression(), !3143)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3146
    #dbg_value(i8 %call1, !3147, !DIExpression(), !3143)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3148
    #dbg_value(i8 %call2, !3149, !DIExpression(), !3143)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3150
    #dbg_value(i8 %call3, !3151, !DIExpression(), !3143)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3152
    #dbg_value(i8 %call4, !3153, !DIExpression(), !3143)
  ret i8 %call4, !dbg !3154
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3155 {
entry:
    #dbg_value(i32 %legs, !3158, !DIExpression(), !3159)
    #dbg_value(ptr %in, !3160, !DIExpression(), !3159)
    #dbg_value(i8 %a, !3161, !DIExpression(), !3159)
    #dbg_value(ptr %acc, !3162, !DIExpression(), !3159)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3163
    #dbg_value(i32 %call, !3164, !DIExpression(), !3159)
    #dbg_value(i64 1229782938247303441, !3165, !DIExpression(), !3159)
    #dbg_value(i32 0, !3166, !DIExpression(), !3168)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3169
  br label %for.cond, !dbg !3169

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3170
    #dbg_value(i32 %i.0, !3166, !DIExpression(), !3168)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3171
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3173

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3174
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3174
  %and = and i64 %0, 1229782938247303441, !dbg !3176
  %and1 = and i32 %call, 255, !dbg !3177
  %conv = zext nneg i32 %and1 to i64, !dbg !3178
  %mul = mul i64 %and, %conv, !dbg !3179
  %shr = lshr i64 %0, 1, !dbg !3180
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3181
  %shr4 = lshr i32 %call, 8, !dbg !3182
  %and5 = and i32 %shr4, 15, !dbg !3183
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3184
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3185
  %xor = xor i64 %mul, %mul7, !dbg !3186
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3187
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3187
  %shr9 = lshr i64 %1, 2, !dbg !3188
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3189
  %shr11 = lshr i32 %call, 16, !dbg !3190
  %and12 = and i32 %shr11, 15, !dbg !3191
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3192
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3193
  %xor15 = xor i64 %xor, %mul14, !dbg !3194
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3195
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3195
  %shr17 = lshr i64 %2, 3, !dbg !3196
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3197
  %shr19 = lshr i32 %call, 24, !dbg !3198
  %and20 = and i32 %shr19, 15, !dbg !3199
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3200
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3201
  %xor23 = xor i64 %xor15, %mul22, !dbg !3202
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3203
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3204
  %xor25 = xor i64 %3, %xor23, !dbg !3204
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3204
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3205
    #dbg_value(i32 %inc, !3166, !DIExpression(), !3168)
  br label %for.cond, !dbg !3206, !llvm.loop !3207

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3209
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3210 {
entry:
    #dbg_value(i32 %legs, !3213, !DIExpression(), !3214)
    #dbg_value(ptr %in, !3215, !DIExpression(), !3214)
    #dbg_value(ptr %out, !3216, !DIExpression(), !3214)
    #dbg_value(ptr %in, !3217, !DIExpression(), !3214)
    #dbg_value(i32 0, !3218, !DIExpression(), !3220)
  br label %for.cond, !dbg !3221

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3222
    #dbg_value(i32 %i.0, !3218, !DIExpression(), !3220)
  %mul = shl nsw i32 %legs, 4, !dbg !3223
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3225
  br i1 %cmp, label %for.body, label %for.end, !dbg !3226

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3227
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3229
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3229
  %1 = and i8 %0, 15, !dbg !3230
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3231
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3232
  %div3 = lshr exact i32 %i.0, 1, !dbg !3233
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3234
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3234
  %3 = lshr i8 %2, 4, !dbg !3235
  %add = or disjoint i32 %i.0, 1, !dbg !3236
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3237
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3238
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3239
    #dbg_value(i32 %add8, !3218, !DIExpression(), !3220)
  br label %for.cond, !dbg !3240, !llvm.loop !3241

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3243
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3244 {
entry:
    #dbg_value(i8 %b, !3245, !DIExpression(), !3246)
  %conv = zext nneg i8 %b to i32, !dbg !3247
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3248
    #dbg_value(i32 %mul, !3249, !DIExpression(), !3246)
    #dbg_value(i32 -252645136, !3250, !DIExpression(), !3246)
  %and = and i32 %mul, 1894838512, !dbg !3251
    #dbg_value(i32 %and, !3252, !DIExpression(), !3246)
  %shr = lshr exact i32 %and, 4, !dbg !3253
  %shr1 = lshr exact i32 %and, 3, !dbg !3254
  %0 = xor i32 %shr, %shr1, !dbg !3255
  %xor2 = xor i32 %0, %mul, !dbg !3255
  ret i32 %xor2, !dbg !3256
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3257 {
entry:
    #dbg_value(i8 %a, !3258, !DIExpression(), !3259)
    #dbg_value(i8 %b, !3260, !DIExpression(), !3259)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3261
  %xor1 = xor i8 %a, %0, !dbg !3262
    #dbg_value(i8 %xor1, !3258, !DIExpression(), !3259)
  %1 = trunc i8 %xor1 to i1, !dbg !3263
    #dbg_value(i8 poison, !3264, !DIExpression(), !3259)
  %2 = and i8 %xor1, 2, !dbg !3265
  %mul9 = mul i8 %2, %b, !dbg !3266
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3263
  %xor11 = xor i8 %conv10, %mul9, !dbg !3267
    #dbg_value(i8 %xor11, !3264, !DIExpression(), !3259)
  %3 = and i8 %xor1, 4, !dbg !3268
  %mul16 = mul i8 %3, %b, !dbg !3269
  %xor18 = xor i8 %mul16, %xor11, !dbg !3270
    #dbg_value(i8 %xor18, !3264, !DIExpression(), !3259)
  %4 = and i8 %xor1, 8, !dbg !3271
  %mul23 = mul i8 %4, %b, !dbg !3272
  %xor25 = xor i8 %mul23, %xor18, !dbg !3273
    #dbg_value(i8 %xor25, !3264, !DIExpression(), !3259)
    #dbg_value(i8 %xor25, !3274, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3259)
  %5 = lshr i8 %xor25, 4, !dbg !3275
  %6 = lshr i8 %xor25, 3, !dbg !3276
  %7 = and i8 %6, 14, !dbg !3276
  %8 = xor i8 %5, %7, !dbg !3277
  %xor25.masked = and i8 %xor25, 15, !dbg !3278
  %9 = xor i8 %8, %xor25.masked, !dbg !3278
    #dbg_value(i8 %9, !3279, !DIExpression(), !3259)
  ret i8 %9, !dbg !3280
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3281 {
entry:
    #dbg_value(ptr %a, !3282, !DIExpression(), !3283)
    #dbg_value(ptr %b, !3284, !DIExpression(), !3283)
    #dbg_value(i32 %n, !3285, !DIExpression(), !3283)
    #dbg_value(i32 1, !3286, !DIExpression(), !3283)
    #dbg_value(i8 0, !3287, !DIExpression(), !3283)
    #dbg_value(i32 0, !3288, !DIExpression(), !3290)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3291
  br label %for.cond, !dbg !3291

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3283
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3292
    #dbg_value(i32 %i.0, !3288, !DIExpression(), !3290)
    #dbg_value(ptr %b.addr.0, !3284, !DIExpression(), !3283)
    #dbg_value(i8 %ret.0, !3287, !DIExpression(), !3283)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3293
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3295

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3296
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3296
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3298
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3299
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3300
    #dbg_value(i8 %call1, !3287, !DIExpression(), !3283)
  %inc = add nuw i32 %i.0, 1, !dbg !3301
    #dbg_value(i32 %inc, !3288, !DIExpression(), !3290)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3302
    #dbg_value(ptr %add.ptr, !3284, !DIExpression(), !3283)
  br label %for.cond, !dbg !3303, !llvm.loop !3304

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3283
  ret i8 %ret.0.lcssa, !dbg !3306
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3307 {
entry:
    #dbg_value(i8 %a, !3308, !DIExpression(), !3309)
    #dbg_value(i8 %b, !3310, !DIExpression(), !3309)
  %xor1 = xor i8 %a, %b, !dbg !3311
  ret i8 %xor1, !dbg !3312
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
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !172, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 538, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 538, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 539, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 540, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 541, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 542, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6944, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 868)
!222 = !DILocation(line: 542, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 543, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6829632, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 106713)
!227 = !DILocation(line: 543, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 544, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 1296)
!232 = !DILocation(line: 544, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 547, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 13632, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 1704)
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
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44928, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 702)
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
!792 = !DILocalVariable(name: "ctr", scope: !793, file: !25, line: 444, type: !45)
!793 = distinct !DILexicalBlock(scope: !699, file: !25, line: 444, column: 5)
!794 = !DILocation(line: 0, scope: !793)
!795 = !DILocation(line: 466, column: 18, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !25, line: 444, column: 42)
!797 = distinct !DILexicalBlock(scope: !793, file: !25, line: 444, column: 5)
!798 = !DILocation(line: 444, column: 10, scope: !793)
!799 = !DILocation(line: 444, scope: !793)
!800 = !DILocation(line: 444, column: 27, scope: !797)
!801 = !DILocation(line: 444, column: 5, scope: !793)
!802 = !DILocation(line: 445, column: 20, scope: !796)
!803 = !DILocation(line: 445, column: 18, scope: !796)
!804 = !DILocation(line: 447, column: 9, scope: !796)
!805 = !DILocalVariable(name: "i", scope: !806, file: !25, line: 451, type: !45)
!806 = distinct !DILexicalBlock(scope: !796, file: !25, line: 451, column: 9)
!807 = !DILocation(line: 0, scope: !806)
!808 = !DILocation(line: 451, column: 14, scope: !806)
!809 = !DILocation(line: 451, scope: !806)
!810 = !DILocation(line: 451, column: 27, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !25, line: 451, column: 9)
!812 = !DILocation(line: 451, column: 9, scope: !806)
!813 = !DILocation(line: 452, column: 26, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !25, line: 451, column: 48)
!815 = !DILocation(line: 452, column: 22, scope: !814)
!816 = !DILocation(line: 452, column: 52, scope: !814)
!817 = !DILocation(line: 452, column: 48, scope: !814)
!818 = !DILocation(line: 452, column: 13, scope: !814)
!819 = !DILocation(line: 451, column: 43, scope: !811)
!820 = !DILocation(line: 451, column: 9, scope: !811)
!821 = distinct !{!821, !812, !822, !303}
!822 = !DILocation(line: 453, column: 9, scope: !806)
!823 = !DILocation(line: 456, column: 9, scope: !796)
!824 = !DILocation(line: 458, column: 9, scope: !796)
!825 = !DILocation(line: 459, column: 9, scope: !796)
!826 = !DILocalVariable(name: "i", scope: !827, file: !25, line: 461, type: !45)
!827 = distinct !DILexicalBlock(scope: !796, file: !25, line: 461, column: 9)
!828 = !DILocation(line: 0, scope: !827)
!829 = !DILocation(line: 461, column: 14, scope: !827)
!830 = !DILocation(line: 461, scope: !827)
!831 = !DILocation(line: 461, column: 27, scope: !832)
!832 = distinct !DILexicalBlock(scope: !827, file: !25, line: 461, column: 9)
!833 = !DILocation(line: 461, column: 9, scope: !827)
!834 = !DILocation(line: 463, column: 20, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !25, line: 462, column: 9)
!836 = !DILocation(line: 463, column: 43, scope: !835)
!837 = !DILocation(line: 463, column: 13, scope: !835)
!838 = !DILocation(line: 463, column: 48, scope: !835)
!839 = !DILocation(line: 461, column: 39, scope: !832)
!840 = !DILocation(line: 461, column: 9, scope: !832)
!841 = distinct !{!841, !833, !842, !303}
!842 = !DILocation(line: 464, column: 9, scope: !827)
!843 = !DILocation(line: 466, column: 9, scope: !796)
!844 = !DILocation(line: 470, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !796, file: !25, line: 470, column: 13)
!846 = !DILocation(line: 473, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !845, file: !25, line: 472, column: 16)
!848 = !DILocation(line: 474, column: 13, scope: !847)
!849 = !DILocation(line: 444, column: 35, scope: !797)
!850 = !DILocation(line: 444, column: 5, scope: !797)
!851 = distinct !{!851, !801, !852, !303}
!852 = !DILocation(line: 476, column: 5, scope: !793)
!853 = !DILocalVariable(name: "i", scope: !854, file: !25, line: 478, type: !45)
!854 = distinct !DILexicalBlock(scope: !699, file: !25, line: 478, column: 5)
!855 = !DILocation(line: 0, scope: !854)
!856 = !DILocation(line: 478, column: 10, scope: !854)
!857 = !DILocation(line: 478, scope: !854)
!858 = !DILocation(line: 478, column: 23, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !25, line: 478, column: 5)
!860 = !DILocation(line: 478, column: 5, scope: !854)
!861 = !DILocation(line: 479, column: 23, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !25, line: 478, column: 44)
!863 = !DILocation(line: 479, column: 19, scope: !862)
!864 = !DILocalVariable(name: "vi", scope: !699, file: !25, line: 376, type: !18)
!865 = !DILocation(line: 480, column: 17, scope: !862)
!866 = !DILocation(line: 480, column: 33, scope: !862)
!867 = !DILocation(line: 480, column: 29, scope: !862)
!868 = !DILocation(line: 480, column: 9, scope: !862)
!869 = !DILocation(line: 481, column: 31, scope: !862)
!870 = !DILocation(line: 481, column: 27, scope: !862)
!871 = !DILocation(line: 481, column: 9, scope: !862)
!872 = !DILocation(line: 482, column: 22, scope: !862)
!873 = !DILocation(line: 482, column: 18, scope: !862)
!874 = !DILocation(line: 482, column: 32, scope: !862)
!875 = !DILocation(line: 482, column: 61, scope: !862)
!876 = !DILocation(line: 482, column: 57, scope: !862)
!877 = !DILocation(line: 482, column: 9, scope: !862)
!878 = !DILocation(line: 478, column: 39, scope: !859)
!879 = !DILocation(line: 478, column: 5, scope: !859)
!880 = distinct !{!880, !860, !881, !303}
!881 = !DILocation(line: 483, column: 5, scope: !854)
!882 = !DILocation(line: 484, column: 5, scope: !699)
!883 = !DILocation(line: 486, column: 34, scope: !699)
!884 = !DILocation(line: 486, column: 5, scope: !699)
!885 = !DILocation(line: 487, column: 13, scope: !699)
!886 = !DILocation(line: 487, column: 5, scope: !699)
!887 = !DILabel(scope: !699, name: "err", file: !25, line: 489)
!888 = !DILocation(line: 489, column: 1, scope: !699)
!889 = !DILocation(line: 490, column: 5, scope: !699)
!890 = !DILocation(line: 491, column: 5, scope: !699)
!891 = !DILocation(line: 492, column: 5, scope: !699)
!892 = !DILocation(line: 493, column: 5, scope: !699)
!893 = !DILocation(line: 494, column: 23, scope: !699)
!894 = !DILocation(line: 494, column: 5, scope: !699)
!895 = !DILocation(line: 495, column: 5, scope: !699)
!896 = !DILocation(line: 496, column: 5, scope: !699)
!897 = !DILocation(line: 497, column: 5, scope: !699)
!898 = !DILocation(line: 498, column: 5, scope: !699)
!899 = !DILocation(line: 499, column: 5, scope: !699)
!900 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !901, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !174, !49, !326, !326, !5, !5}
!903 = !DILocalVariable(name: "p", arg: 1, scope: !900, file: !323, line: 244, type: !174)
!904 = !DILocation(line: 0, scope: !900)
!905 = !DILocalVariable(name: "Vdec", arg: 2, scope: !900, file: !323, line: 244, type: !49)
!906 = !DILocalVariable(name: "L", arg: 3, scope: !900, file: !323, line: 244, type: !326)
!907 = !DILocalVariable(name: "P1", arg: 4, scope: !900, file: !323, line: 244, type: !326)
!908 = !DILocalVariable(name: "VL", arg: 5, scope: !900, file: !323, line: 244, type: !5)
!909 = !DILocalVariable(name: "VP1V", arg: 6, scope: !900, file: !323, line: 244, type: !5)
!910 = !DILocalVariable(name: "param_k", scope: !900, file: !323, line: 246, type: !239)
!911 = !DILocalVariable(name: "param_v", scope: !900, file: !323, line: 247, type: !239)
!912 = !DILocalVariable(name: "param_o", scope: !900, file: !323, line: 248, type: !239)
!913 = !DILocation(line: 251, column: 5, scope: !900)
!914 = !DILocalVariable(name: "Pv", scope: !900, file: !323, line: 254, type: !915)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 981504, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 15336)
!918 = !DILocation(line: 254, column: 14, scope: !900)
!919 = !DILocation(line: 255, column: 5, scope: !900)
!920 = !DILocation(line: 256, column: 5, scope: !900)
!921 = !DILocation(line: 257, column: 1, scope: !900)
!922 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !923, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !174, !5, !49, !18}
!925 = !DILocalVariable(name: "p", arg: 1, scope: !922, file: !25, line: 43, type: !174)
!926 = !DILocation(line: 0, scope: !922)
!927 = !DILocalVariable(name: "vPv", arg: 2, scope: !922, file: !25, line: 43, type: !5)
!928 = !DILocalVariable(name: "t", arg: 3, scope: !922, file: !25, line: 43, type: !49)
!929 = !DILocalVariable(name: "y", arg: 4, scope: !922, file: !25, line: 43, type: !18)
!930 = !DILocalVariable(name: "top_pos", scope: !922, file: !25, line: 48, type: !931)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!932 = !DILocalVariable(name: "m_vec_limbs", scope: !922, file: !25, line: 49, type: !931)
!933 = !DILocalVariable(name: "mask", scope: !934, file: !25, line: 53, type: !6)
!934 = distinct !DILexicalBlock(scope: !935, file: !25, line: 52, column: 29)
!935 = distinct !DILexicalBlock(scope: !922, file: !25, line: 52, column: 8)
!936 = !DILocation(line: 0, scope: !934)
!937 = !DILocalVariable(name: "i", scope: !938, file: !25, line: 56, type: !45)
!938 = distinct !DILexicalBlock(scope: !934, file: !25, line: 56, column: 9)
!939 = !DILocation(line: 0, scope: !938)
!940 = !DILocation(line: 56, column: 14, scope: !938)
!941 = !DILocation(line: 56, scope: !938)
!942 = !DILocation(line: 56, column: 27, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !25, line: 56, column: 9)
!944 = !DILocation(line: 56, column: 9, scope: !938)
!945 = !DILocation(line: 58, column: 13, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !25, line: 57, column: 9)
!947 = !DILocation(line: 58, column: 50, scope: !946)
!948 = !DILocation(line: 56, column: 53, scope: !943)
!949 = !DILocation(line: 56, column: 9, scope: !943)
!950 = distinct !{!950, !944, !951, !303}
!951 = !DILocation(line: 59, column: 9, scope: !938)
!952 = !DILocalVariable(name: "temp", scope: !922, file: !25, line: 62, type: !579)
!953 = !DILocation(line: 62, column: 14, scope: !922)
!954 = !DILocalVariable(name: "temp_bytes", scope: !922, file: !25, line: 63, type: !18)
!955 = !DILocalVariable(name: "i", scope: !956, file: !25, line: 64, type: !45)
!956 = distinct !DILexicalBlock(scope: !922, file: !25, line: 64, column: 5)
!957 = !DILocation(line: 0, scope: !956)
!958 = !DILocation(line: 64, column: 10, scope: !956)
!959 = !DILocation(line: 64, scope: !956)
!960 = !DILocation(line: 64, column: 36, scope: !961)
!961 = distinct !DILexicalBlock(scope: !956, file: !25, line: 64, column: 5)
!962 = !DILocation(line: 64, column: 5, scope: !956)
!963 = !DILocation(line: 65, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !25, line: 65, column: 9)
!965 = distinct !DILexicalBlock(scope: !961, file: !25, line: 64, column: 48)
!966 = !DILocation(line: 99, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !922, file: !25, line: 99, column: 5)
!968 = !DILocation(line: 65, scope: !964)
!969 = !DILocalVariable(name: "j", scope: !964, file: !25, line: 65, type: !45)
!970 = !DILocation(line: 0, scope: !964)
!971 = !DILocation(line: 65, column: 27, scope: !972)
!972 = distinct !DILexicalBlock(scope: !964, file: !25, line: 65, column: 9)
!973 = !DILocation(line: 67, column: 34, scope: !974)
!974 = distinct !DILexicalBlock(scope: !972, file: !25, line: 65, column: 46)
!975 = !DILocation(line: 67, column: 54, scope: !974)
!976 = !DILocation(line: 67, column: 66, scope: !974)
!977 = !DILocalVariable(name: "top", scope: !974, file: !25, line: 67, type: !14)
!978 = !DILocation(line: 0, scope: !974)
!979 = !DILocation(line: 68, column: 13, scope: !974)
!980 = !DILocation(line: 68, column: 33, scope: !974)
!981 = !DILocalVariable(name: "k", scope: !982, file: !25, line: 69, type: !45)
!982 = distinct !DILexicalBlock(scope: !974, file: !25, line: 69, column: 13)
!983 = !DILocation(line: 0, scope: !982)
!984 = !DILocation(line: 69, column: 17, scope: !982)
!985 = !DILocation(line: 69, scope: !982)
!986 = !DILocation(line: 69, column: 43, scope: !987)
!987 = distinct !DILexicalBlock(scope: !982, file: !25, line: 69, column: 13)
!988 = !DILocation(line: 69, column: 13, scope: !982)
!989 = !DILocation(line: 74, column: 13, scope: !990)
!990 = distinct !DILexicalBlock(scope: !974, file: !25, line: 74, column: 13)
!991 = !DILocation(line: 70, column: 30, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !25, line: 69, column: 52)
!993 = !DILocation(line: 70, column: 38, scope: !992)
!994 = !DILocation(line: 70, column: 23, scope: !992)
!995 = !DILocation(line: 70, column: 17, scope: !992)
!996 = !DILocation(line: 70, column: 27, scope: !992)
!997 = !DILocation(line: 71, column: 17, scope: !992)
!998 = !DILocation(line: 71, column: 25, scope: !992)
!999 = !DILocation(line: 69, column: 49, scope: !987)
!1000 = !DILocation(line: 69, column: 13, scope: !987)
!1001 = distinct !{!1001, !988, !1002, !303}
!1002 = !DILocation(line: 72, column: 13, scope: !982)
!1003 = !DILocation(line: 74, scope: !990)
!1004 = !DILocalVariable(name: "jj", scope: !990, file: !25, line: 74, type: !45)
!1005 = !DILocation(line: 0, scope: !990)
!1006 = !DILocation(line: 74, column: 33, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !990, file: !25, line: 74, column: 13)
!1008 = !DILocation(line: 92, column: 13, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !974, file: !25, line: 92, column: 13)
!1010 = !DILocation(line: 75, column: 22, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !25, line: 75, column: 20)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !25, line: 74, column: 53)
!1013 = !DILocation(line: 75, column: 25, scope: !1011)
!1014 = !DILocation(line: 79, column: 52, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !25, line: 75, column: 30)
!1016 = !DILocation(line: 79, column: 41, scope: !1015)
!1017 = !DILocation(line: 79, column: 34, scope: !1015)
!1018 = !DILocation(line: 79, column: 21, scope: !1015)
!1019 = !DILocation(line: 79, column: 38, scope: !1015)
!1020 = !DILocation(line: 81, column: 17, scope: !1015)
!1021 = !DILocation(line: 86, column: 52, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1011, file: !25, line: 82, column: 22)
!1023 = !DILocation(line: 86, column: 41, scope: !1022)
!1024 = !DILocation(line: 86, column: 73, scope: !1022)
!1025 = !DILocation(line: 86, column: 34, scope: !1022)
!1026 = !DILocation(line: 86, column: 21, scope: !1022)
!1027 = !DILocation(line: 86, column: 38, scope: !1022)
!1028 = !DILocation(line: 74, column: 49, scope: !1007)
!1029 = !DILocation(line: 74, column: 13, scope: !1007)
!1030 = distinct !{!1030, !989, !1031, !303}
!1031 = !DILocation(line: 89, column: 13, scope: !990)
!1032 = !DILocation(line: 92, scope: !1009)
!1033 = !DILocalVariable(name: "k", scope: !1009, file: !25, line: 92, type: !15)
!1034 = !DILocation(line: 0, scope: !1009)
!1035 = !DILocation(line: 92, column: 31, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1009, file: !25, line: 92, column: 13)
!1037 = !DILocation(line: 93, column: 36, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1036, file: !25, line: 92, column: 51)
!1039 = !DILocation(line: 93, column: 49, scope: !1038)
!1040 = !DILocation(line: 93, column: 28, scope: !1038)
!1041 = !DILocation(line: 93, column: 78, scope: !1038)
!1042 = !DILocation(line: 93, column: 91, scope: !1038)
!1043 = !DILocation(line: 93, column: 104, scope: !1038)
!1044 = !DILocation(line: 93, column: 83, scope: !1038)
!1045 = !DILocation(line: 93, column: 82, scope: !1038)
!1046 = !DILocation(line: 93, column: 73, scope: !1038)
!1047 = !DILocation(line: 93, column: 17, scope: !1038)
!1048 = !DILocation(line: 93, column: 25, scope: !1038)
!1049 = !DILocation(line: 92, column: 48, scope: !1036)
!1050 = !DILocation(line: 92, column: 13, scope: !1036)
!1051 = distinct !{!1051, !1008, !1052, !303}
!1052 = !DILocation(line: 94, column: 13, scope: !1009)
!1053 = !DILocation(line: 65, column: 42, scope: !972)
!1054 = !DILocation(line: 65, column: 9, scope: !972)
!1055 = distinct !{!1055, !963, !1056, !303}
!1056 = !DILocation(line: 95, column: 9, scope: !964)
!1057 = !DILocation(line: 64, column: 44, scope: !961)
!1058 = !DILocation(line: 64, column: 5, scope: !961)
!1059 = distinct !{!1059, !962, !1060, !303}
!1060 = !DILocation(line: 96, column: 5, scope: !956)
!1061 = !DILocation(line: 99, scope: !967)
!1062 = !DILocalVariable(name: "i", scope: !967, file: !25, line: 99, type: !45)
!1063 = !DILocation(line: 0, scope: !967)
!1064 = !DILocation(line: 99, column: 23, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !967, file: !25, line: 99, column: 5)
!1066 = !DILocation(line: 105, column: 18, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1065, file: !25, line: 100, column: 5)
!1068 = !DILocation(line: 105, column: 40, scope: !1067)
!1069 = !DILocation(line: 105, column: 28, scope: !1067)
!1070 = !DILocation(line: 105, column: 44, scope: !1067)
!1071 = !DILocation(line: 105, column: 25, scope: !1067)
!1072 = !DILocation(line: 105, column: 9, scope: !1067)
!1073 = !DILocation(line: 105, column: 16, scope: !1067)
!1074 = !DILocation(line: 106, column: 21, scope: !1067)
!1075 = !DILocation(line: 106, column: 18, scope: !1067)
!1076 = !DILocation(line: 106, column: 40, scope: !1067)
!1077 = !DILocation(line: 106, column: 28, scope: !1067)
!1078 = !DILocation(line: 106, column: 44, scope: !1067)
!1079 = !DILocation(line: 106, column: 25, scope: !1067)
!1080 = !DILocation(line: 106, column: 12, scope: !1067)
!1081 = !DILocation(line: 106, column: 9, scope: !1067)
!1082 = !DILocation(line: 106, column: 16, scope: !1067)
!1083 = !DILocation(line: 99, column: 38, scope: !1065)
!1084 = !DILocation(line: 99, column: 5, scope: !1065)
!1085 = distinct !{!1085, !966, !1086, !303}
!1086 = !DILocation(line: 108, column: 5, scope: !967)
!1087 = !DILocation(line: 109, column: 1, scope: !922)
!1088 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1089, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !174, !5, !18}
!1091 = !DILocalVariable(name: "p", arg: 1, scope: !1088, file: !25, line: 154, type: !174)
!1092 = !DILocation(line: 0, scope: !1088)
!1093 = !DILocalVariable(name: "VtL", arg: 2, scope: !1088, file: !25, line: 154, type: !5)
!1094 = !DILocalVariable(name: "A_out", arg: 3, scope: !1088, file: !25, line: 154, type: !18)
!1095 = !DILocalVariable(name: "bits_to_shift", scope: !1088, file: !25, line: 159, type: !45)
!1096 = !DILocalVariable(name: "words_to_shift", scope: !1088, file: !25, line: 160, type: !45)
!1097 = !DILocalVariable(name: "m_vec_limbs", scope: !1088, file: !25, line: 161, type: !239)
!1098 = !DILocalVariable(name: "A", scope: !1088, file: !25, line: 162, type: !1099)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 165888, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 2592)
!1102 = !DILocation(line: 162, column: 14, scope: !1088)
!1103 = !DILocalVariable(name: "A_width", scope: !1088, file: !25, line: 163, type: !15)
!1104 = !DILocalVariable(name: "mask", scope: !1105, file: !25, line: 168, type: !6)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !25, line: 167, column: 29)
!1106 = distinct !DILexicalBlock(scope: !1088, file: !25, line: 167, column: 8)
!1107 = !DILocation(line: 0, scope: !1105)
!1108 = !DILocalVariable(name: "i", scope: !1109, file: !25, line: 171, type: !45)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !25, line: 171, column: 9)
!1110 = !DILocation(line: 0, scope: !1109)
!1111 = !DILocation(line: 171, column: 14, scope: !1109)
!1112 = !DILocation(line: 171, scope: !1109)
!1113 = !DILocation(line: 171, column: 27, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !25, line: 171, column: 9)
!1115 = !DILocation(line: 171, column: 9, scope: !1109)
!1116 = !DILocation(line: 177, column: 5, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1088, file: !25, line: 177, column: 5)
!1118 = !DILocation(line: 173, column: 13, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !25, line: 172, column: 9)
!1120 = !DILocation(line: 173, column: 50, scope: !1119)
!1121 = !DILocation(line: 171, column: 53, scope: !1114)
!1122 = !DILocation(line: 171, column: 9, scope: !1114)
!1123 = distinct !{!1123, !1115, !1124, !303}
!1124 = !DILocation(line: 174, column: 9, scope: !1109)
!1125 = !DILocation(line: 177, scope: !1117)
!1126 = !DILocation(line: 160, column: 9, scope: !1088)
!1127 = !DILocation(line: 159, column: 9, scope: !1088)
!1128 = !DILocalVariable(name: "i", scope: !1117, file: !25, line: 177, type: !45)
!1129 = !DILocation(line: 0, scope: !1117)
!1130 = !DILocation(line: 177, column: 23, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1117, file: !25, line: 177, column: 5)
!1132 = !DILocation(line: 178, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !25, line: 178, column: 9)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !25, line: 177, column: 47)
!1135 = !DILocation(line: 212, column: 5, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1088, file: !25, line: 212, column: 5)
!1137 = !DILocation(line: 178, scope: !1133)
!1138 = !DILocalVariable(name: "j", scope: !1133, file: !25, line: 178, type: !45)
!1139 = !DILocation(line: 0, scope: !1133)
!1140 = !DILocation(line: 178, column: 40, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !25, line: 178, column: 9)
!1142 = !DILocation(line: 180, column: 22, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1141, file: !25, line: 178, column: 51)
!1144 = !DILocalVariable(name: "Mj", scope: !1088, file: !25, line: 164, type: !326)
!1145 = !DILocalVariable(name: "c", scope: !1146, file: !25, line: 181, type: !45)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !25, line: 181, column: 13)
!1147 = !DILocation(line: 0, scope: !1146)
!1148 = !DILocation(line: 181, column: 18, scope: !1146)
!1149 = !DILocation(line: 181, scope: !1146)
!1150 = !DILocation(line: 181, column: 31, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !25, line: 181, column: 13)
!1152 = !DILocation(line: 181, column: 13, scope: !1146)
!1153 = !DILocation(line: 182, column: 17, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !25, line: 182, column: 17)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 181, column: 50)
!1156 = !DILocation(line: 182, scope: !1154)
!1157 = !DILocalVariable(name: "k", scope: !1154, file: !25, line: 182, type: !45)
!1158 = !DILocation(line: 0, scope: !1154)
!1159 = !DILocation(line: 182, column: 35, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !25, line: 182, column: 17)
!1161 = !DILocation(line: 184, column: 78, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1160, file: !25, line: 183, column: 17)
!1163 = !DILocation(line: 184, column: 100, scope: !1162)
!1164 = !DILocation(line: 184, column: 35, scope: !1162)
!1165 = !DILocation(line: 184, column: 39, scope: !1162)
!1166 = !DILocation(line: 184, column: 48, scope: !1162)
!1167 = !DILocation(line: 184, column: 65, scope: !1162)
!1168 = !DILocation(line: 184, column: 43, scope: !1162)
!1169 = !DILocation(line: 184, column: 21, scope: !1162)
!1170 = !DILocation(line: 184, column: 75, scope: !1162)
!1171 = !DILocation(line: 185, column: 38, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1162, file: !25, line: 185, column: 24)
!1173 = !DILocation(line: 186, column: 86, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !25, line: 185, column: 42)
!1175 = !DILocation(line: 186, column: 114, scope: !1174)
!1176 = !DILocation(line: 186, column: 108, scope: !1174)
!1177 = !DILocation(line: 186, column: 39, scope: !1174)
!1178 = !DILocation(line: 186, column: 43, scope: !1174)
!1179 = !DILocation(line: 186, column: 52, scope: !1174)
!1180 = !DILocation(line: 186, column: 73, scope: !1174)
!1181 = !DILocation(line: 186, column: 47, scope: !1174)
!1182 = !DILocation(line: 186, column: 25, scope: !1174)
!1183 = !DILocation(line: 186, column: 83, scope: !1174)
!1184 = !DILocation(line: 187, column: 21, scope: !1174)
!1185 = !DILocation(line: 182, column: 51, scope: !1160)
!1186 = !DILocation(line: 182, column: 17, scope: !1160)
!1187 = distinct !{!1187, !1153, !1188, !303}
!1188 = !DILocation(line: 188, column: 17, scope: !1154)
!1189 = !DILocation(line: 181, column: 46, scope: !1151)
!1190 = !DILocation(line: 181, column: 13, scope: !1151)
!1191 = distinct !{!1191, !1152, !1192, !303}
!1192 = !DILocation(line: 189, column: 13, scope: !1146)
!1193 = !DILocation(line: 191, column: 19, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1143, file: !25, line: 191, column: 17)
!1195 = !DILocation(line: 192, column: 26, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 191, column: 25)
!1197 = !DILocalVariable(name: "Mi", scope: !1088, file: !25, line: 164, type: !326)
!1198 = !DILocalVariable(name: "c", scope: !1199, file: !25, line: 193, type: !45)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !25, line: 193, column: 17)
!1200 = !DILocation(line: 0, scope: !1199)
!1201 = !DILocation(line: 193, column: 22, scope: !1199)
!1202 = !DILocation(line: 193, scope: !1199)
!1203 = !DILocation(line: 193, column: 35, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !25, line: 193, column: 17)
!1205 = !DILocation(line: 193, column: 17, scope: !1199)
!1206 = !DILocation(line: 194, column: 21, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !25, line: 194, column: 21)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !25, line: 193, column: 54)
!1209 = !DILocation(line: 194, scope: !1207)
!1210 = !DILocalVariable(name: "k", scope: !1207, file: !25, line: 194, type: !45)
!1211 = !DILocation(line: 0, scope: !1207)
!1212 = !DILocation(line: 194, column: 39, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !25, line: 194, column: 21)
!1214 = !DILocation(line: 196, column: 81, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1213, file: !25, line: 195, column: 21)
!1216 = !DILocation(line: 196, column: 103, scope: !1215)
!1217 = !DILocation(line: 196, column: 38, scope: !1215)
!1218 = !DILocation(line: 196, column: 42, scope: !1215)
!1219 = !DILocation(line: 196, column: 51, scope: !1215)
!1220 = !DILocation(line: 196, column: 68, scope: !1215)
!1221 = !DILocation(line: 196, column: 46, scope: !1215)
!1222 = !DILocation(line: 196, column: 25, scope: !1215)
!1223 = !DILocation(line: 196, column: 78, scope: !1215)
!1224 = !DILocation(line: 197, column: 42, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1215, file: !25, line: 197, column: 28)
!1226 = !DILocation(line: 198, column: 89, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !25, line: 197, column: 46)
!1228 = !DILocation(line: 198, column: 117, scope: !1227)
!1229 = !DILocation(line: 198, column: 111, scope: !1227)
!1230 = !DILocation(line: 198, column: 42, scope: !1227)
!1231 = !DILocation(line: 198, column: 46, scope: !1227)
!1232 = !DILocation(line: 198, column: 55, scope: !1227)
!1233 = !DILocation(line: 198, column: 76, scope: !1227)
!1234 = !DILocation(line: 198, column: 50, scope: !1227)
!1235 = !DILocation(line: 198, column: 29, scope: !1227)
!1236 = !DILocation(line: 198, column: 86, scope: !1227)
!1237 = !DILocation(line: 199, column: 25, scope: !1227)
!1238 = !DILocation(line: 194, column: 55, scope: !1213)
!1239 = !DILocation(line: 194, column: 21, scope: !1213)
!1240 = distinct !{!1240, !1206, !1241, !303}
!1241 = !DILocation(line: 200, column: 21, scope: !1207)
!1242 = !DILocation(line: 193, column: 50, scope: !1204)
!1243 = !DILocation(line: 193, column: 17, scope: !1204)
!1244 = distinct !{!1244, !1205, !1245, !303}
!1245 = !DILocation(line: 201, column: 17, scope: !1199)
!1246 = !DILocation(line: 204, column: 27, scope: !1143)
!1247 = !DILocation(line: 205, column: 30, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1143, file: !25, line: 205, column: 16)
!1249 = !DILocation(line: 178, column: 46, scope: !1141)
!1250 = !DILocation(line: 178, column: 9, scope: !1141)
!1251 = distinct !{!1251, !1132, !1252, !303}
!1252 = !DILocation(line: 209, column: 9, scope: !1133)
!1253 = !DILocation(line: 177, column: 42, scope: !1131)
!1254 = !DILocation(line: 177, column: 5, scope: !1131)
!1255 = distinct !{!1255, !1116, !1256, !303}
!1256 = !DILocation(line: 210, column: 5, scope: !1117)
!1257 = !DILocation(line: 212, scope: !1136)
!1258 = !DILocalVariable(name: "c", scope: !1136, file: !25, line: 212, type: !15)
!1259 = !DILocation(line: 0, scope: !1136)
!1260 = !DILocation(line: 212, column: 26, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1136, file: !25, line: 212, column: 5)
!1262 = !DILocation(line: 214, column: 35, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1261, file: !25, line: 213, column: 5)
!1264 = !DILocation(line: 214, column: 9, scope: !1263)
!1265 = !DILocation(line: 212, column: 91, scope: !1261)
!1266 = !DILocation(line: 212, column: 5, scope: !1261)
!1267 = distinct !{!1267, !1135, !1268, !303}
!1268 = !DILocation(line: 215, column: 5, scope: !1136)
!1269 = !DILocalVariable(name: "tab", scope: !1088, file: !25, line: 217, type: !1270)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 16)
!1273 = !DILocation(line: 217, column: 19, scope: !1088)
!1274 = !DILocalVariable(name: "i", scope: !1275, file: !25, line: 218, type: !15)
!1275 = distinct !DILexicalBlock(scope: !1088, file: !25, line: 218, column: 5)
!1276 = !DILocation(line: 0, scope: !1275)
!1277 = !DILocation(line: 218, column: 10, scope: !1275)
!1278 = !DILocation(line: 218, scope: !1275)
!1279 = !DILocation(line: 218, column: 26, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !25, line: 218, column: 5)
!1281 = !DILocation(line: 218, column: 5, scope: !1275)
!1282 = !DILocation(line: 228, column: 5, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1088, file: !25, line: 228, column: 5)
!1284 = !DILocation(line: 220, column: 28, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !25, line: 219, column: 5)
!1286 = !DILocation(line: 220, column: 22, scope: !1285)
!1287 = !DILocation(line: 220, column: 14, scope: !1285)
!1288 = !DILocation(line: 220, column: 9, scope: !1285)
!1289 = !DILocation(line: 220, column: 20, scope: !1285)
!1290 = !DILocation(line: 221, column: 22, scope: !1285)
!1291 = !DILocation(line: 221, column: 14, scope: !1285)
!1292 = !DILocation(line: 221, column: 16, scope: !1285)
!1293 = !DILocation(line: 221, column: 9, scope: !1285)
!1294 = !DILocation(line: 221, column: 20, scope: !1285)
!1295 = !DILocation(line: 222, column: 28, scope: !1285)
!1296 = !DILocation(line: 222, column: 22, scope: !1285)
!1297 = !DILocation(line: 222, column: 14, scope: !1285)
!1298 = !DILocation(line: 222, column: 16, scope: !1285)
!1299 = !DILocation(line: 222, column: 9, scope: !1285)
!1300 = !DILocation(line: 222, column: 20, scope: !1285)
!1301 = !DILocation(line: 223, column: 28, scope: !1285)
!1302 = !DILocation(line: 223, column: 22, scope: !1285)
!1303 = !DILocation(line: 223, column: 14, scope: !1285)
!1304 = !DILocation(line: 223, column: 16, scope: !1285)
!1305 = !DILocation(line: 223, column: 9, scope: !1285)
!1306 = !DILocation(line: 223, column: 20, scope: !1285)
!1307 = !DILocation(line: 218, column: 41, scope: !1280)
!1308 = !DILocation(line: 218, column: 5, scope: !1280)
!1309 = distinct !{!1309, !1281, !1310, !303}
!1310 = !DILocation(line: 224, column: 5, scope: !1275)
!1311 = !DILocation(line: 228, scope: !1283)
!1312 = !DILocalVariable(name: "c", scope: !1283, file: !25, line: 228, type: !15)
!1313 = !DILocation(line: 0, scope: !1283)
!1314 = !DILocation(line: 228, column: 26, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1283, file: !25, line: 228, column: 5)
!1316 = !DILocation(line: 230, column: 9, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !25, line: 230, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !25, line: 229, column: 5)
!1319 = !DILocation(line: 250, column: 5, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1088, file: !25, line: 250, column: 5)
!1321 = !DILocation(line: 230, scope: !1317)
!1322 = !DILocalVariable(name: "r", scope: !1317, file: !25, line: 230, type: !45)
!1323 = !DILocation(line: 0, scope: !1317)
!1324 = !DILocation(line: 230, column: 36, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1317, file: !25, line: 230, column: 9)
!1326 = !DILocation(line: 232, column: 28, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !25, line: 231, column: 9)
!1328 = !DILocation(line: 232, column: 32, scope: !1327)
!1329 = !DILocation(line: 232, column: 41, scope: !1327)
!1330 = !DILocation(line: 232, column: 49, scope: !1327)
!1331 = !DILocation(line: 232, column: 45, scope: !1327)
!1332 = !DILocalVariable(name: "pos", scope: !1327, file: !25, line: 232, type: !15)
!1333 = !DILocation(line: 0, scope: !1327)
!1334 = !DILocation(line: 233, column: 28, scope: !1327)
!1335 = !DILocation(line: 233, column: 41, scope: !1327)
!1336 = !DILocalVariable(name: "t0", scope: !1327, file: !25, line: 233, type: !6)
!1337 = !DILocation(line: 234, column: 35, scope: !1327)
!1338 = !DILocation(line: 234, column: 41, scope: !1327)
!1339 = !DILocalVariable(name: "t1", scope: !1327, file: !25, line: 234, type: !6)
!1340 = !DILocation(line: 235, column: 35, scope: !1327)
!1341 = !DILocation(line: 235, column: 41, scope: !1327)
!1342 = !DILocalVariable(name: "t2", scope: !1327, file: !25, line: 235, type: !6)
!1343 = !DILocation(line: 236, column: 28, scope: !1327)
!1344 = !DILocation(line: 236, column: 35, scope: !1327)
!1345 = !DILocation(line: 236, column: 41, scope: !1327)
!1346 = !DILocalVariable(name: "t3", scope: !1327, file: !25, line: 236, type: !6)
!1347 = !DILocalVariable(name: "t", scope: !1348, file: !25, line: 237, type: !15)
!1348 = distinct !DILexicalBlock(scope: !1327, file: !25, line: 237, column: 13)
!1349 = !DILocation(line: 0, scope: !1348)
!1350 = !DILocation(line: 237, column: 18, scope: !1348)
!1351 = !DILocation(line: 237, scope: !1348)
!1352 = !DILocation(line: 237, column: 34, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !25, line: 237, column: 13)
!1354 = !DILocation(line: 237, column: 13, scope: !1348)
!1355 = !DILocation(line: 239, column: 89, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !25, line: 238, column: 13)
!1357 = !DILocation(line: 239, column: 84, scope: !1356)
!1358 = !DILocation(line: 239, column: 83, scope: !1356)
!1359 = !DILocation(line: 239, column: 105, scope: !1356)
!1360 = !DILocation(line: 239, column: 107, scope: !1356)
!1361 = !DILocation(line: 239, column: 100, scope: !1356)
!1362 = !DILocation(line: 239, column: 99, scope: !1356)
!1363 = !DILocation(line: 239, column: 95, scope: !1356)
!1364 = !DILocation(line: 239, column: 121, scope: !1356)
!1365 = !DILocation(line: 239, column: 123, scope: !1356)
!1366 = !DILocation(line: 239, column: 116, scope: !1356)
!1367 = !DILocation(line: 239, column: 115, scope: !1356)
!1368 = !DILocation(line: 239, column: 111, scope: !1356)
!1369 = !DILocation(line: 239, column: 137, scope: !1356)
!1370 = !DILocation(line: 239, column: 139, scope: !1356)
!1371 = !DILocation(line: 239, column: 132, scope: !1356)
!1372 = !DILocation(line: 239, column: 131, scope: !1356)
!1373 = !DILocation(line: 239, column: 127, scope: !1356)
!1374 = !DILocation(line: 239, column: 22, scope: !1356)
!1375 = !DILocation(line: 239, column: 24, scope: !1356)
!1376 = !DILocation(line: 239, column: 36, scope: !1356)
!1377 = !DILocation(line: 239, column: 40, scope: !1356)
!1378 = !DILocation(line: 239, column: 49, scope: !1356)
!1379 = !DILocation(line: 239, column: 58, scope: !1356)
!1380 = !DILocation(line: 239, column: 60, scope: !1356)
!1381 = !DILocation(line: 239, column: 72, scope: !1356)
!1382 = !DILocation(line: 239, column: 53, scope: !1356)
!1383 = !DILocation(line: 239, column: 17, scope: !1356)
!1384 = !DILocation(line: 239, column: 78, scope: !1356)
!1385 = !DILocation(line: 237, column: 49, scope: !1353)
!1386 = !DILocation(line: 237, column: 13, scope: !1353)
!1387 = distinct !{!1387, !1354, !1388, !303}
!1388 = !DILocation(line: 240, column: 13, scope: !1348)
!1389 = !DILocation(line: 230, column: 82, scope: !1325)
!1390 = !DILocation(line: 230, column: 9, scope: !1325)
!1391 = distinct !{!1391, !1316, !1392, !303}
!1392 = !DILocation(line: 241, column: 9, scope: !1317)
!1393 = !DILocation(line: 228, column: 38, scope: !1315)
!1394 = !DILocation(line: 228, column: 5, scope: !1315)
!1395 = distinct !{!1395, !1282, !1396, !303}
!1396 = !DILocation(line: 242, column: 5, scope: !1283)
!1397 = !DILocation(line: 250, scope: !1320)
!1398 = !DILocalVariable(name: "r", scope: !1320, file: !25, line: 250, type: !45)
!1399 = !DILocation(line: 0, scope: !1320)
!1400 = !DILocation(line: 250, column: 23, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1320, file: !25, line: 250, column: 5)
!1402 = !DILocation(line: 252, column: 9, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !25, line: 252, column: 9)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !25, line: 251, column: 5)
!1405 = !DILocation(line: 252, scope: !1403)
!1406 = !DILocalVariable(name: "c", scope: !1403, file: !25, line: 252, type: !45)
!1407 = !DILocation(line: 0, scope: !1403)
!1408 = !DILocation(line: 252, column: 27, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !25, line: 252, column: 9)
!1410 = !DILocation(line: 254, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !25, line: 254, column: 13)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !25, line: 253, column: 9)
!1413 = !DILocation(line: 254, scope: !1411)
!1414 = !DILocalVariable(name: "i", scope: !1411, file: !25, line: 254, type: !45)
!1415 = !DILocation(line: 0, scope: !1411)
!1416 = !DILocation(line: 254, column: 35, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !25, line: 254, column: 13)
!1418 = !DILocation(line: 256, column: 55, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1417, file: !25, line: 255, column: 13)
!1420 = !DILocation(line: 256, column: 59, scope: !1419)
!1421 = !DILocation(line: 256, column: 63, scope: !1419)
!1422 = !DILocation(line: 256, column: 44, scope: !1419)
!1423 = !DILocation(line: 256, column: 95, scope: !1419)
!1424 = !DILocation(line: 256, column: 92, scope: !1419)
!1425 = !DILocation(line: 256, column: 75, scope: !1419)
!1426 = !DILocation(line: 256, column: 99, scope: !1419)
!1427 = !DILocation(line: 256, column: 104, scope: !1419)
!1428 = !DILocation(line: 256, column: 17, scope: !1419)
!1429 = !DILocation(line: 254, column: 50, scope: !1417)
!1430 = !DILocation(line: 254, column: 13, scope: !1417)
!1431 = distinct !{!1431, !1410, !1432, !303}
!1432 = !DILocation(line: 257, column: 13, scope: !1411)
!1433 = !DILocation(line: 252, column: 50, scope: !1409)
!1434 = !DILocation(line: 252, column: 9, scope: !1409)
!1435 = distinct !{!1435, !1402, !1436, !303}
!1436 = !DILocation(line: 258, column: 9, scope: !1403)
!1437 = !DILocation(line: 250, column: 38, scope: !1401)
!1438 = !DILocation(line: 250, column: 5, scope: !1401)
!1439 = distinct !{!1439, !1319, !1440, !303}
!1440 = !DILocation(line: 259, column: 5, scope: !1320)
!1441 = !DILocation(line: 260, column: 1, scope: !1088)
!1442 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1443, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !49, !49, !18, !45, !45, !45}
!1445 = !DILocalVariable(name: "a", arg: 1, scope: !1442, file: !493, line: 79, type: !49)
!1446 = !DILocation(line: 0, scope: !1442)
!1447 = !DILocalVariable(name: "b", arg: 2, scope: !1442, file: !493, line: 79, type: !49)
!1448 = !DILocalVariable(name: "c", arg: 3, scope: !1442, file: !493, line: 80, type: !18)
!1449 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1442, file: !493, line: 80, type: !45)
!1450 = !DILocalVariable(name: "row_a", arg: 5, scope: !1442, file: !493, line: 80, type: !45)
!1451 = !DILocalVariable(name: "col_b", arg: 6, scope: !1442, file: !493, line: 80, type: !45)
!1452 = !DILocalVariable(name: "i", scope: !1453, file: !493, line: 81, type: !45)
!1453 = distinct !DILexicalBlock(scope: !1442, file: !493, line: 81, column: 5)
!1454 = !DILocation(line: 0, scope: !1453)
!1455 = !DILocation(line: 81, column: 10, scope: !1453)
!1456 = !DILocation(line: 81, scope: !1453)
!1457 = !DILocation(line: 81, column: 23, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !493, line: 81, column: 5)
!1459 = !DILocation(line: 81, column: 5, scope: !1453)
!1460 = !DILocation(line: 82, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !493, line: 82, column: 9)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !493, line: 81, column: 53)
!1463 = !DILocation(line: 82, scope: !1461)
!1464 = !DILocalVariable(name: "j", scope: !1461, file: !493, line: 82, type: !45)
!1465 = !DILocation(line: 0, scope: !1461)
!1466 = !DILocation(line: 83, column: 18, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !493, line: 82, column: 46)
!1468 = distinct !DILexicalBlock(scope: !1461, file: !493, line: 82, column: 9)
!1469 = !DILocation(line: 83, column: 16, scope: !1467)
!1470 = !DILocation(line: 82, column: 41, scope: !1468)
!1471 = !DILocation(line: 82, column: 9, scope: !1468)
!1472 = distinct !{!1472, !1460, !1473, !303}
!1473 = !DILocation(line: 84, column: 9, scope: !1461)
!1474 = !DILocation(line: 81, column: 32, scope: !1458)
!1475 = !DILocation(line: 81, column: 39, scope: !1458)
!1476 = !DILocation(line: 81, column: 5, scope: !1458)
!1477 = distinct !{!1477, !1459, !1478, !303}
!1478 = !DILocation(line: 85, column: 5, scope: !1453)
!1479 = !DILocation(line: 86, column: 1, scope: !1442)
!1480 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1481, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !49, !49, !18, !45, !45}
!1483 = !DILocalVariable(name: "a", arg: 1, scope: !1480, file: !493, line: 88, type: !49)
!1484 = !DILocation(line: 0, scope: !1480)
!1485 = !DILocalVariable(name: "b", arg: 2, scope: !1480, file: !493, line: 88, type: !49)
!1486 = !DILocalVariable(name: "c", arg: 3, scope: !1480, file: !493, line: 89, type: !18)
!1487 = !DILocalVariable(name: "m", arg: 4, scope: !1480, file: !493, line: 89, type: !45)
!1488 = !DILocalVariable(name: "n", arg: 5, scope: !1480, file: !493, line: 89, type: !45)
!1489 = !DILocalVariable(name: "i", scope: !1490, file: !493, line: 90, type: !45)
!1490 = distinct !DILexicalBlock(scope: !1480, file: !493, line: 90, column: 5)
!1491 = !DILocation(line: 0, scope: !1490)
!1492 = !DILocation(line: 90, column: 10, scope: !1490)
!1493 = !DILocation(line: 90, scope: !1490)
!1494 = !DILocation(line: 90, column: 23, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !493, line: 90, column: 5)
!1496 = !DILocation(line: 90, column: 5, scope: !1490)
!1497 = !DILocalVariable(name: "j", scope: !1498, file: !493, line: 91, type: !45)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !493, line: 91, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !493, line: 90, column: 33)
!1500 = !DILocation(line: 0, scope: !1498)
!1501 = !DILocation(line: 92, column: 42, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !493, line: 91, column: 37)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !493, line: 91, column: 9)
!1504 = !DILocation(line: 92, column: 38, scope: !1502)
!1505 = !DILocation(line: 92, column: 60, scope: !1502)
!1506 = !DILocation(line: 92, column: 56, scope: !1502)
!1507 = !DILocation(line: 92, column: 32, scope: !1502)
!1508 = !DILocation(line: 92, column: 17, scope: !1502)
!1509 = !DILocation(line: 92, column: 30, scope: !1502)
!1510 = !DILocation(line: 90, column: 28, scope: !1495)
!1511 = !DILocation(line: 90, column: 5, scope: !1495)
!1512 = distinct !{!1512, !1496, !1513, !303}
!1513 = !DILocation(line: 94, column: 5, scope: !1490)
!1514 = !DILocation(line: 95, column: 1, scope: !1480)
!1515 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1516 = !DILocalVariable(name: "m", arg: 1, scope: !1515, file: !25, line: 32, type: !49)
!1517 = !DILocation(line: 0, scope: !1515)
!1518 = !DILocalVariable(name: "menc", arg: 2, scope: !1515, file: !25, line: 32, type: !18)
!1519 = !DILocalVariable(name: "mlen", arg: 3, scope: !1515, file: !25, line: 32, type: !45)
!1520 = !DILocalVariable(name: "i", scope: !1515, file: !25, line: 33, type: !45)
!1521 = !DILocation(line: 34, column: 10, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1515, file: !25, line: 34, column: 5)
!1523 = !DILocation(line: 34, scope: !1522)
!1524 = !DILocation(line: 34, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !25, line: 34, column: 5)
!1526 = !DILocation(line: 34, column: 5, scope: !1522)
!1527 = !DILocation(line: 35, column: 20, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !25, line: 34, column: 44)
!1529 = !DILocation(line: 35, column: 31, scope: !1528)
!1530 = !DILocation(line: 35, column: 27, scope: !1528)
!1531 = !DILocation(line: 35, column: 36, scope: !1528)
!1532 = !DILocation(line: 35, column: 24, scope: !1528)
!1533 = !DILocation(line: 35, column: 9, scope: !1528)
!1534 = !DILocation(line: 35, column: 17, scope: !1528)
!1535 = !DILocation(line: 34, column: 31, scope: !1525)
!1536 = !DILocation(line: 34, column: 38, scope: !1525)
!1537 = !DILocation(line: 34, column: 5, scope: !1525)
!1538 = distinct !{!1538, !1526, !1539, !303}
!1539 = !DILocation(line: 36, column: 5, scope: !1522)
!1540 = !DILocation(line: 41, column: 1, scope: !1515)
!1541 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1542, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!14, !14, !14}
!1544 = !DILocalVariable(name: "a", arg: 1, scope: !1541, file: !493, line: 43, type: !14)
!1545 = !DILocation(line: 0, scope: !1541)
!1546 = !DILocalVariable(name: "b", arg: 2, scope: !1541, file: !493, line: 43, type: !14)
!1547 = !DILocation(line: 44, column: 14, scope: !1541)
!1548 = !DILocation(line: 44, column: 5, scope: !1541)
!1549 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1550, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!14, !49, !49, !45, !45}
!1552 = !DILocalVariable(name: "a", arg: 1, scope: !1549, file: !493, line: 70, type: !49)
!1553 = !DILocation(line: 0, scope: !1549)
!1554 = !DILocalVariable(name: "b", arg: 2, scope: !1549, file: !493, line: 71, type: !49)
!1555 = !DILocalVariable(name: "n", arg: 3, scope: !1549, file: !493, line: 71, type: !45)
!1556 = !DILocalVariable(name: "m", arg: 4, scope: !1549, file: !493, line: 71, type: !45)
!1557 = !DILocalVariable(name: "ret", scope: !1549, file: !493, line: 72, type: !14)
!1558 = !DILocalVariable(name: "i", scope: !1559, file: !493, line: 73, type: !45)
!1559 = distinct !DILexicalBlock(scope: !1549, file: !493, line: 73, column: 5)
!1560 = !DILocation(line: 0, scope: !1559)
!1561 = !DILocation(line: 73, column: 10, scope: !1559)
!1562 = !DILocation(line: 73, scope: !1559)
!1563 = !DILocation(line: 73, column: 23, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !493, line: 73, column: 5)
!1565 = !DILocation(line: 73, column: 5, scope: !1559)
!1566 = !DILocation(line: 74, column: 27, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !493, line: 73, column: 41)
!1568 = !DILocation(line: 74, column: 33, scope: !1567)
!1569 = !DILocation(line: 74, column: 21, scope: !1567)
!1570 = !DILocation(line: 74, column: 15, scope: !1567)
!1571 = !DILocation(line: 73, column: 28, scope: !1564)
!1572 = !DILocation(line: 73, column: 35, scope: !1564)
!1573 = !DILocation(line: 73, column: 5, scope: !1564)
!1574 = distinct !{!1574, !1565, !1575, !303}
!1575 = !DILocation(line: 75, column: 5, scope: !1559)
!1576 = !DILocation(line: 76, column: 5, scope: !1549)
!1577 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1542, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1578 = !DILocalVariable(name: "a", arg: 1, scope: !1577, file: !493, line: 9, type: !14)
!1579 = !DILocation(line: 0, scope: !1577)
!1580 = !DILocalVariable(name: "b", arg: 2, scope: !1577, file: !493, line: 9, type: !14)
!1581 = !DILocation(line: 14, column: 10, scope: !1577)
!1582 = !DILocation(line: 14, column: 7, scope: !1577)
!1583 = !DILocation(line: 17, column: 17, scope: !1577)
!1584 = !DILocalVariable(name: "p", scope: !1577, file: !493, line: 11, type: !14)
!1585 = !DILocation(line: 18, column: 13, scope: !1577)
!1586 = !DILocation(line: 18, column: 17, scope: !1577)
!1587 = !DILocation(line: 18, column: 7, scope: !1577)
!1588 = !DILocation(line: 19, column: 13, scope: !1577)
!1589 = !DILocation(line: 19, column: 17, scope: !1577)
!1590 = !DILocation(line: 19, column: 7, scope: !1577)
!1591 = !DILocation(line: 20, column: 13, scope: !1577)
!1592 = !DILocation(line: 20, column: 17, scope: !1577)
!1593 = !DILocation(line: 20, column: 7, scope: !1577)
!1594 = !DILocalVariable(name: "top_p", scope: !1577, file: !493, line: 23, type: !14)
!1595 = !DILocation(line: 24, column: 37, scope: !1577)
!1596 = !DILocation(line: 24, column: 52, scope: !1577)
!1597 = !DILocation(line: 24, column: 43, scope: !1577)
!1598 = !DILocation(line: 24, column: 59, scope: !1577)
!1599 = !DILocalVariable(name: "out", scope: !1577, file: !493, line: 24, type: !14)
!1600 = !DILocation(line: 25, column: 5, scope: !1577)
!1601 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1602 = !DILocation(line: 0, scope: !24)
!1603 = !DILocalVariable(name: "i", scope: !1604, file: !25, line: 117, type: !15)
!1604 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1605 = !DILocation(line: 0, scope: !1604)
!1606 = !DILocation(line: 117, column: 10, scope: !1604)
!1607 = !DILocation(line: 117, scope: !1604)
!1608 = !DILocation(line: 117, column: 26, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !25, line: 117, column: 5)
!1610 = !DILocation(line: 117, column: 5, scope: !1604)
!1611 = !DILocation(line: 124, column: 5, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1613 = !DILocation(line: 119, column: 24, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !25, line: 118, column: 5)
!1615 = !DILocation(line: 119, column: 29, scope: !1614)
!1616 = !DILocation(line: 119, column: 41, scope: !1614)
!1617 = !DILocation(line: 119, column: 38, scope: !1614)
!1618 = !DILocation(line: 119, column: 36, scope: !1614)
!1619 = !DILocation(line: 119, column: 46, scope: !1614)
!1620 = !DILocalVariable(name: "t", scope: !1614, file: !25, line: 119, type: !6)
!1621 = !DILocation(line: 0, scope: !1614)
!1622 = !DILocation(line: 120, column: 21, scope: !1614)
!1623 = !DILocation(line: 120, column: 9, scope: !1614)
!1624 = !DILocation(line: 120, column: 16, scope: !1614)
!1625 = !DILocation(line: 121, column: 12, scope: !1614)
!1626 = !DILocation(line: 121, column: 9, scope: !1614)
!1627 = !DILocation(line: 121, column: 16, scope: !1614)
!1628 = !DILocation(line: 117, column: 33, scope: !1609)
!1629 = !DILocation(line: 117, column: 5, scope: !1609)
!1630 = distinct !{!1630, !1610, !1631, !303}
!1631 = !DILocation(line: 122, column: 5, scope: !1604)
!1632 = !DILocation(line: 124, scope: !1612)
!1633 = !DILocalVariable(name: "i", scope: !1612, file: !25, line: 124, type: !15)
!1634 = !DILocation(line: 0, scope: !1612)
!1635 = !DILocation(line: 124, column: 26, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1612, file: !25, line: 124, column: 5)
!1637 = !DILocation(line: 134, column: 5, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1639 = !DILocation(line: 126, column: 25, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !25, line: 125, column: 5)
!1641 = !DILocation(line: 126, column: 32, scope: !1640)
!1642 = !DILocation(line: 126, column: 43, scope: !1640)
!1643 = !DILocation(line: 126, column: 40, scope: !1640)
!1644 = !DILocation(line: 126, column: 38, scope: !1640)
!1645 = !DILocation(line: 126, column: 48, scope: !1640)
!1646 = !DILocalVariable(name: "t0", scope: !1640, file: !25, line: 126, type: !6)
!1647 = !DILocation(line: 0, scope: !1640)
!1648 = !DILocation(line: 127, column: 28, scope: !1640)
!1649 = !DILocation(line: 127, column: 25, scope: !1640)
!1650 = !DILocation(line: 127, column: 32, scope: !1640)
!1651 = !DILocation(line: 127, column: 43, scope: !1640)
!1652 = !DILocation(line: 127, column: 40, scope: !1640)
!1653 = !DILocation(line: 127, column: 38, scope: !1640)
!1654 = !DILocation(line: 127, column: 48, scope: !1640)
!1655 = !DILocalVariable(name: "t1", scope: !1640, file: !25, line: 127, type: !6)
!1656 = !DILocation(line: 128, column: 23, scope: !1640)
!1657 = !DILocation(line: 128, column: 9, scope: !1640)
!1658 = !DILocation(line: 128, column: 16, scope: !1640)
!1659 = !DILocation(line: 129, column: 23, scope: !1640)
!1660 = !DILocation(line: 129, column: 12, scope: !1640)
!1661 = !DILocation(line: 129, column: 9, scope: !1640)
!1662 = !DILocation(line: 129, column: 16, scope: !1640)
!1663 = !DILocation(line: 130, column: 12, scope: !1640)
!1664 = !DILocation(line: 130, column: 9, scope: !1640)
!1665 = !DILocation(line: 130, column: 16, scope: !1640)
!1666 = !DILocation(line: 131, column: 12, scope: !1640)
!1667 = !DILocation(line: 131, column: 9, scope: !1640)
!1668 = !DILocation(line: 131, column: 16, scope: !1640)
!1669 = !DILocation(line: 124, column: 33, scope: !1636)
!1670 = !DILocation(line: 124, column: 5, scope: !1636)
!1671 = distinct !{!1671, !1611, !1672, !303}
!1672 = !DILocation(line: 132, column: 5, scope: !1612)
!1673 = !DILocation(line: 134, scope: !1638)
!1674 = !DILocalVariable(name: "i", scope: !1638, file: !25, line: 134, type: !15)
!1675 = !DILocation(line: 0, scope: !1638)
!1676 = !DILocation(line: 134, column: 26, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1638, file: !25, line: 134, column: 5)
!1678 = !DILocation(line: 145, column: 5, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1680 = !DILocation(line: 136, column: 25, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !25, line: 135, column: 5)
!1682 = !DILocation(line: 136, column: 32, scope: !1681)
!1683 = !DILocation(line: 136, column: 44, scope: !1681)
!1684 = !DILocation(line: 136, column: 41, scope: !1681)
!1685 = !DILocation(line: 136, column: 39, scope: !1681)
!1686 = !DILocation(line: 136, column: 50, scope: !1681)
!1687 = !DILocalVariable(name: "t0", scope: !1681, file: !25, line: 136, type: !6)
!1688 = !DILocation(line: 0, scope: !1681)
!1689 = !DILocation(line: 137, column: 28, scope: !1681)
!1690 = !DILocation(line: 137, column: 25, scope: !1681)
!1691 = !DILocation(line: 137, column: 32, scope: !1681)
!1692 = !DILocation(line: 137, column: 44, scope: !1681)
!1693 = !DILocation(line: 137, column: 41, scope: !1681)
!1694 = !DILocation(line: 137, column: 39, scope: !1681)
!1695 = !DILocation(line: 137, column: 50, scope: !1681)
!1696 = !DILocalVariable(name: "t1", scope: !1681, file: !25, line: 137, type: !6)
!1697 = !DILocation(line: 139, column: 23, scope: !1681)
!1698 = !DILocation(line: 139, column: 9, scope: !1681)
!1699 = !DILocation(line: 139, column: 17, scope: !1681)
!1700 = !DILocation(line: 140, column: 23, scope: !1681)
!1701 = !DILocation(line: 140, column: 12, scope: !1681)
!1702 = !DILocation(line: 140, column: 9, scope: !1681)
!1703 = !DILocation(line: 140, column: 17, scope: !1681)
!1704 = !DILocation(line: 141, column: 12, scope: !1681)
!1705 = !DILocation(line: 141, column: 9, scope: !1681)
!1706 = !DILocation(line: 141, column: 17, scope: !1681)
!1707 = !DILocation(line: 142, column: 12, scope: !1681)
!1708 = !DILocation(line: 142, column: 9, scope: !1681)
!1709 = !DILocation(line: 142, column: 17, scope: !1681)
!1710 = !DILocation(line: 134, column: 32, scope: !1677)
!1711 = !DILocation(line: 134, column: 5, scope: !1677)
!1712 = distinct !{!1712, !1637, !1713, !303}
!1713 = !DILocation(line: 143, column: 5, scope: !1638)
!1714 = !DILocation(line: 145, scope: !1679)
!1715 = !DILocalVariable(name: "i", scope: !1679, file: !25, line: 145, type: !15)
!1716 = !DILocation(line: 0, scope: !1679)
!1717 = !DILocation(line: 145, column: 26, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1679, file: !25, line: 145, column: 5)
!1719 = !DILocation(line: 147, column: 24, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1718, file: !25, line: 146, column: 5)
!1721 = !DILocation(line: 147, column: 28, scope: !1720)
!1722 = !DILocation(line: 147, column: 39, scope: !1720)
!1723 = !DILocation(line: 147, column: 36, scope: !1720)
!1724 = !DILocation(line: 147, column: 44, scope: !1720)
!1725 = !DILocalVariable(name: "t", scope: !1720, file: !25, line: 147, type: !6)
!1726 = !DILocation(line: 0, scope: !1720)
!1727 = !DILocation(line: 148, column: 21, scope: !1720)
!1728 = !DILocation(line: 148, column: 9, scope: !1720)
!1729 = !DILocation(line: 148, column: 16, scope: !1720)
!1730 = !DILocation(line: 149, column: 12, scope: !1720)
!1731 = !DILocation(line: 149, column: 9, scope: !1720)
!1732 = !DILocation(line: 149, column: 16, scope: !1720)
!1733 = !DILocation(line: 145, column: 32, scope: !1718)
!1734 = !DILocation(line: 145, column: 5, scope: !1718)
!1735 = distinct !{!1735, !1678, !1736, !303}
!1736 = !DILocation(line: 150, column: 5, scope: !1679)
!1737 = !DILocation(line: 151, column: 1, scope: !24)
!1738 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1739 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1738, file: !323, line: 61, type: !239)
!1740 = !DILocation(line: 0, scope: !1738)
!1741 = !DILocalVariable(name: "mat", arg: 2, scope: !1738, file: !323, line: 61, type: !49)
!1742 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1738, file: !323, line: 61, type: !326)
!1743 = !DILocalVariable(name: "acc", arg: 4, scope: !1738, file: !323, line: 61, type: !5)
!1744 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1738, file: !323, line: 62, type: !239)
!1745 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1738, file: !323, line: 62, type: !239)
!1746 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1738, file: !323, line: 62, type: !239)
!1747 = !DILocalVariable(name: "r", scope: !1748, file: !323, line: 64, type: !45)
!1748 = distinct !DILexicalBlock(scope: !1738, file: !323, line: 64, column: 5)
!1749 = !DILocation(line: 0, scope: !1748)
!1750 = !DILocation(line: 64, column: 10, scope: !1748)
!1751 = !DILocation(line: 64, scope: !1748)
!1752 = !DILocation(line: 64, column: 23, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !323, line: 64, column: 5)
!1754 = !DILocation(line: 64, column: 5, scope: !1748)
!1755 = !DILocation(line: 65, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !323, line: 65, column: 9)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !323, line: 64, column: 40)
!1758 = !DILocation(line: 65, scope: !1756)
!1759 = !DILocalVariable(name: "c", scope: !1756, file: !323, line: 65, type: !45)
!1760 = !DILocation(line: 0, scope: !1756)
!1761 = !DILocation(line: 65, column: 27, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !323, line: 65, column: 9)
!1763 = !DILocation(line: 66, column: 13, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !323, line: 66, column: 13)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !323, line: 65, column: 44)
!1766 = !DILocation(line: 66, scope: !1764)
!1767 = !DILocalVariable(name: "k", scope: !1764, file: !323, line: 66, type: !45)
!1768 = !DILocation(line: 0, scope: !1764)
!1769 = !DILocation(line: 66, column: 31, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1764, file: !323, line: 66, column: 13)
!1771 = !DILocation(line: 67, column: 70, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1770, file: !323, line: 66, column: 54)
!1773 = !DILocation(line: 67, column: 84, scope: !1772)
!1774 = !DILocation(line: 67, column: 51, scope: !1772)
!1775 = !DILocation(line: 67, column: 96, scope: !1772)
!1776 = !DILocation(line: 67, column: 90, scope: !1772)
!1777 = !DILocation(line: 67, column: 136, scope: !1772)
!1778 = !DILocation(line: 67, column: 150, scope: !1772)
!1779 = !DILocation(line: 67, column: 117, scope: !1772)
!1780 = !DILocation(line: 67, column: 17, scope: !1772)
!1781 = !DILocation(line: 66, column: 48, scope: !1770)
!1782 = !DILocation(line: 66, column: 13, scope: !1770)
!1783 = distinct !{!1783, !1763, !1784, !303}
!1784 = !DILocation(line: 68, column: 13, scope: !1764)
!1785 = !DILocation(line: 65, column: 40, scope: !1762)
!1786 = !DILocation(line: 65, column: 9, scope: !1762)
!1787 = distinct !{!1787, !1755, !1788, !303}
!1788 = !DILocation(line: 69, column: 9, scope: !1756)
!1789 = !DILocation(line: 64, column: 36, scope: !1753)
!1790 = !DILocation(line: 64, column: 5, scope: !1753)
!1791 = distinct !{!1791, !1754, !1792, !303}
!1792 = !DILocation(line: 70, column: 5, scope: !1748)
!1793 = !DILocation(line: 71, column: 1, scope: !1738)
!1794 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1795 = !DILocalVariable(name: "p", arg: 1, scope: !1794, file: !323, line: 82, type: !174)
!1796 = !DILocation(line: 0, scope: !1794)
!1797 = !DILocalVariable(name: "P1", arg: 2, scope: !1794, file: !323, line: 82, type: !326)
!1798 = !DILocalVariable(name: "V", arg: 3, scope: !1794, file: !323, line: 82, type: !49)
!1799 = !DILocalVariable(name: "acc", arg: 4, scope: !1794, file: !323, line: 82, type: !5)
!1800 = !DILocation(line: 86, column: 5, scope: !1794)
!1801 = !DILocation(line: 87, column: 1, scope: !1794)
!1802 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1803 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1802, file: !323, line: 32, type: !239)
!1804 = !DILocation(line: 0, scope: !1802)
!1805 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1802, file: !323, line: 32, type: !326)
!1806 = !DILocalVariable(name: "mat", arg: 3, scope: !1802, file: !323, line: 32, type: !49)
!1807 = !DILocalVariable(name: "acc", arg: 4, scope: !1802, file: !323, line: 32, type: !5)
!1808 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1802, file: !323, line: 33, type: !239)
!1809 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1802, file: !323, line: 33, type: !239)
!1810 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1802, file: !323, line: 33, type: !239)
!1811 = !DILocalVariable(name: "triangular", arg: 8, scope: !1802, file: !323, line: 33, type: !239)
!1812 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1802, file: !323, line: 34, type: !45)
!1813 = !DILocalVariable(name: "r", scope: !1814, file: !323, line: 35, type: !45)
!1814 = distinct !DILexicalBlock(scope: !1802, file: !323, line: 35, column: 5)
!1815 = !DILocation(line: 0, scope: !1814)
!1816 = !DILocation(line: 35, column: 10, scope: !1814)
!1817 = !DILocation(line: 34, column: 9, scope: !1802)
!1818 = !DILocation(line: 35, scope: !1814)
!1819 = !DILocation(line: 35, column: 23, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !323, line: 35, column: 5)
!1821 = !DILocation(line: 35, column: 5, scope: !1814)
!1822 = !DILocation(line: 36, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !323, line: 36, column: 9)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !323, line: 35, column: 43)
!1825 = !DILocation(line: 36, scope: !1823)
!1826 = !DILocalVariable(name: "c", scope: !1823, file: !323, line: 36, type: !45)
!1827 = !DILocation(line: 0, scope: !1823)
!1828 = !DILocation(line: 36, column: 40, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !323, line: 36, column: 9)
!1830 = !DILocation(line: 37, column: 13, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !323, line: 37, column: 13)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !323, line: 36, column: 60)
!1833 = !DILocation(line: 37, scope: !1831)
!1834 = !DILocalVariable(name: "k", scope: !1831, file: !323, line: 37, type: !45)
!1835 = !DILocation(line: 0, scope: !1831)
!1836 = !DILocation(line: 37, column: 31, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1831, file: !323, line: 37, column: 13)
!1838 = !DILocation(line: 38, column: 51, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1837, file: !323, line: 37, column: 51)
!1840 = !DILocation(line: 38, column: 94, scope: !1839)
!1841 = !DILocation(line: 38, column: 88, scope: !1839)
!1842 = !DILocation(line: 38, column: 137, scope: !1839)
!1843 = !DILocation(line: 38, column: 148, scope: !1839)
!1844 = !DILocation(line: 38, column: 118, scope: !1839)
!1845 = !DILocation(line: 38, column: 17, scope: !1839)
!1846 = !DILocation(line: 37, column: 45, scope: !1837)
!1847 = !DILocation(line: 37, column: 13, scope: !1837)
!1848 = distinct !{!1848, !1830, !1849, !303}
!1849 = !DILocation(line: 39, column: 13, scope: !1831)
!1850 = !DILocation(line: 40, column: 33, scope: !1832)
!1851 = !DILocation(line: 36, column: 56, scope: !1829)
!1852 = !DILocation(line: 36, column: 9, scope: !1829)
!1853 = distinct !{!1853, !1822, !1854, !303}
!1854 = !DILocation(line: 41, column: 9, scope: !1823)
!1855 = !DILocation(line: 35, column: 39, scope: !1820)
!1856 = !DILocation(line: 35, column: 5, scope: !1820)
!1857 = distinct !{!1857, !1821, !1858, !303}
!1858 = !DILocation(line: 42, column: 5, scope: !1814)
!1859 = !DILocation(line: 43, column: 1, scope: !1802)
!1860 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !700, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1861 = !DILocalVariable(name: "p", arg: 1, scope: !1860, file: !25, line: 502, type: !174)
!1862 = !DILocation(line: 0, scope: !1860)
!1863 = !DILocalVariable(name: "sm", arg: 2, scope: !1860, file: !25, line: 502, type: !18)
!1864 = !DILocalVariable(name: "smlen", arg: 3, scope: !1860, file: !25, line: 503, type: !702)
!1865 = !DILocalVariable(name: "m", arg: 4, scope: !1860, file: !25, line: 503, type: !49)
!1866 = !DILocalVariable(name: "mlen", arg: 5, scope: !1860, file: !25, line: 504, type: !15)
!1867 = !DILocalVariable(name: "csk", arg: 6, scope: !1860, file: !25, line: 504, type: !49)
!1868 = !DILocalVariable(name: "ret", scope: !1860, file: !25, line: 505, type: !45)
!1869 = !DILocalVariable(name: "param_sig_bytes", scope: !1860, file: !25, line: 506, type: !239)
!1870 = !DILocation(line: 508, column: 16, scope: !1860)
!1871 = !DILocation(line: 508, column: 5, scope: !1860)
!1872 = !DILocation(line: 509, column: 50, scope: !1860)
!1873 = !DILocalVariable(name: "siglen", scope: !1860, file: !25, line: 507, type: !15)
!1874 = !DILocation(line: 509, column: 11, scope: !1860)
!1875 = !DILocation(line: 510, column: 13, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1860, file: !25, line: 510, column: 9)
!1877 = !DILocation(line: 510, column: 24, scope: !1876)
!1878 = !DILocation(line: 511, column: 23, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !25, line: 510, column: 62)
!1880 = !DILocation(line: 511, column: 30, scope: !1879)
!1881 = !DILocation(line: 511, column: 9, scope: !1879)
!1882 = !DILocation(line: 512, column: 9, scope: !1879)
!1883 = !DILocation(line: 515, column: 14, scope: !1860)
!1884 = !DILocation(line: 515, column: 21, scope: !1860)
!1885 = !DILocation(line: 515, column: 12, scope: !1860)
!1886 = !DILocation(line: 515, column: 5, scope: !1860)
!1887 = !DILabel(scope: !1860, name: "err", file: !25, line: 516)
!1888 = !DILocation(line: 516, column: 1, scope: !1860)
!1889 = !DILocation(line: 517, column: 5, scope: !1860)
!1890 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_open", scope: !25, file: !25, line: 520, type: !700, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1891 = !DILocalVariable(name: "p", arg: 1, scope: !1890, file: !25, line: 520, type: !174)
!1892 = !DILocation(line: 0, scope: !1890)
!1893 = !DILocalVariable(name: "m", arg: 2, scope: !1890, file: !25, line: 520, type: !18)
!1894 = !DILocalVariable(name: "mlen", arg: 3, scope: !1890, file: !25, line: 521, type: !702)
!1895 = !DILocalVariable(name: "sm", arg: 4, scope: !1890, file: !25, line: 521, type: !49)
!1896 = !DILocalVariable(name: "smlen", arg: 5, scope: !1890, file: !25, line: 522, type: !15)
!1897 = !DILocalVariable(name: "pk", arg: 6, scope: !1890, file: !25, line: 522, type: !49)
!1898 = !DILocalVariable(name: "param_sig_bytes", scope: !1890, file: !25, line: 523, type: !239)
!1899 = !DILocation(line: 524, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1890, file: !25, line: 524, column: 9)
!1901 = !DILocation(line: 527, column: 36, scope: !1890)
!1902 = !DILocation(line: 527, column: 61, scope: !1890)
!1903 = !DILocation(line: 527, column: 18, scope: !1890)
!1904 = !DILocalVariable(name: "result", scope: !1890, file: !25, line: 527, type: !45)
!1905 = !DILocation(line: 530, column: 16, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1890, file: !25, line: 530, column: 9)
!1907 = !DILocation(line: 531, column: 23, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1906, file: !25, line: 530, column: 28)
!1909 = !DILocation(line: 531, column: 15, scope: !1908)
!1910 = !DILocation(line: 532, column: 23, scope: !1908)
!1911 = !DILocation(line: 532, column: 9, scope: !1908)
!1912 = !DILocation(line: 533, column: 5, scope: !1908)
!1913 = !DILocation(line: 536, column: 1, scope: !1890)
!1914 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1915, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!45, !174, !49, !15, !49, !49}
!1917 = !DILocalVariable(name: "p", arg: 1, scope: !1914, file: !25, line: 617, type: !174)
!1918 = !DILocation(line: 0, scope: !1914)
!1919 = !DILocalVariable(name: "m", arg: 2, scope: !1914, file: !25, line: 617, type: !49)
!1920 = !DILocalVariable(name: "mlen", arg: 3, scope: !1914, file: !25, line: 618, type: !15)
!1921 = !DILocalVariable(name: "sig", arg: 4, scope: !1914, file: !25, line: 618, type: !49)
!1922 = !DILocalVariable(name: "cpk", arg: 5, scope: !1914, file: !25, line: 619, type: !49)
!1923 = !DILocalVariable(name: "tEnc", scope: !1914, file: !25, line: 620, type: !712)
!1924 = !DILocation(line: 620, column: 19, scope: !1914)
!1925 = !DILocalVariable(name: "t", scope: !1914, file: !25, line: 621, type: !717)
!1926 = !DILocation(line: 621, column: 19, scope: !1914)
!1927 = !DILocalVariable(name: "y", scope: !1914, file: !25, line: 622, type: !1928)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2272, elements: !1929)
!1929 = !{!1930}
!1930 = !DISubrange(count: 284)
!1931 = !DILocation(line: 622, column: 19, scope: !1914)
!1932 = !DILocalVariable(name: "s", scope: !1914, file: !25, line: 623, type: !741)
!1933 = !DILocation(line: 623, column: 19, scope: !1914)
!1934 = !DILocalVariable(name: "pk", scope: !1914, file: !25, line: 624, type: !123)
!1935 = !DILocation(line: 624, column: 14, scope: !1914)
!1936 = !DILocalVariable(name: "tmp", scope: !1914, file: !25, line: 625, type: !1937)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 832, elements: !1938)
!1938 = !{!1939}
!1939 = !DISubrange(count: 104)
!1940 = !DILocation(line: 625, column: 19, scope: !1914)
!1941 = !DILocalVariable(name: "param_m", scope: !1914, file: !25, line: 627, type: !239)
!1942 = !DILocalVariable(name: "param_n", scope: !1914, file: !25, line: 628, type: !239)
!1943 = !DILocalVariable(name: "param_k", scope: !1914, file: !25, line: 629, type: !239)
!1944 = !DILocalVariable(name: "param_m_bytes", scope: !1914, file: !25, line: 630, type: !239)
!1945 = !DILocalVariable(name: "param_sig_bytes", scope: !1914, file: !25, line: 631, type: !239)
!1946 = !DILocalVariable(name: "param_digest_bytes", scope: !1914, file: !25, line: 632, type: !239)
!1947 = !DILocalVariable(name: "param_salt_bytes", scope: !1914, file: !25, line: 633, type: !239)
!1948 = !DILocation(line: 635, column: 15, scope: !1914)
!1949 = !DILocalVariable(name: "ret", scope: !1914, file: !25, line: 635, type: !45)
!1950 = !DILocalVariable(name: "P1", scope: !1914, file: !25, line: 640, type: !5)
!1951 = !DILocation(line: 641, column: 23, scope: !1914)
!1952 = !DILocalVariable(name: "P2", scope: !1914, file: !25, line: 641, type: !5)
!1953 = !DILocation(line: 642, column: 23, scope: !1914)
!1954 = !DILocalVariable(name: "P3", scope: !1914, file: !25, line: 642, type: !5)
!1955 = !DILocation(line: 657, column: 5, scope: !1914)
!1956 = !DILocation(line: 660, column: 16, scope: !1914)
!1957 = !DILocation(line: 660, column: 60, scope: !1914)
!1958 = !DILocation(line: 660, column: 5, scope: !1914)
!1959 = !DILocation(line: 662, column: 5, scope: !1914)
!1960 = !DILocation(line: 663, column: 5, scope: !1914)
!1961 = !DILocation(line: 666, column: 5, scope: !1914)
!1962 = !DILocation(line: 668, column: 5, scope: !1914)
!1963 = !DILocation(line: 670, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1914, file: !25, line: 670, column: 9)
!1965 = !DILocation(line: 670, column: 31, scope: !1964)
!1966 = !DILocation(line: 674, column: 1, scope: !1914)
!1967 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !603, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1968 = !DILocalVariable(name: "p", arg: 1, scope: !1967, file: !25, line: 608, type: !174)
!1969 = !DILocation(line: 0, scope: !1967)
!1970 = !DILocalVariable(name: "cpk", arg: 2, scope: !1967, file: !25, line: 608, type: !49)
!1971 = !DILocalVariable(name: "pk", arg: 3, scope: !1967, file: !25, line: 609, type: !5)
!1972 = !DILocation(line: 610, column: 5, scope: !1967)
!1973 = !DILocation(line: 612, column: 23, scope: !1967)
!1974 = !DILocation(line: 612, column: 72, scope: !1967)
!1975 = !DILocation(line: 612, column: 5, scope: !1967)
!1976 = !DILocation(line: 614, column: 5, scope: !1967)
!1977 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1978, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !174, !49, !326, !326, !326, !18}
!1980 = !DILocalVariable(name: "p", arg: 1, scope: !1977, file: !25, line: 288, type: !174)
!1981 = !DILocation(line: 0, scope: !1977)
!1982 = !DILocalVariable(name: "s", arg: 2, scope: !1977, file: !25, line: 288, type: !49)
!1983 = !DILocalVariable(name: "P1", arg: 3, scope: !1977, file: !25, line: 288, type: !326)
!1984 = !DILocalVariable(name: "P2", arg: 4, scope: !1977, file: !25, line: 288, type: !326)
!1985 = !DILocalVariable(name: "P3", arg: 5, scope: !1977, file: !25, line: 288, type: !326)
!1986 = !DILocalVariable(name: "eval", arg: 6, scope: !1977, file: !25, line: 288, type: !18)
!1987 = !DILocalVariable(name: "SPS", scope: !1977, file: !25, line: 289, type: !229)
!1988 = !DILocation(line: 289, column: 14, scope: !1977)
!1989 = !DILocation(line: 291, column: 5, scope: !1977)
!1990 = !DILocalVariable(name: "zero", scope: !1977, file: !25, line: 292, type: !717)
!1991 = !DILocation(line: 292, column: 19, scope: !1977)
!1992 = !DILocation(line: 293, column: 5, scope: !1977)
!1993 = !DILocation(line: 294, column: 1, scope: !1977)
!1994 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !1995, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !174, !326, !326, !326, !49, !5}
!1997 = !DILocalVariable(name: "p", arg: 1, scope: !1994, file: !323, line: 277, type: !174)
!1998 = !DILocation(line: 0, scope: !1994)
!1999 = !DILocalVariable(name: "P1", arg: 2, scope: !1994, file: !323, line: 277, type: !326)
!2000 = !DILocalVariable(name: "P2", arg: 3, scope: !1994, file: !323, line: 277, type: !326)
!2001 = !DILocalVariable(name: "P3", arg: 4, scope: !1994, file: !323, line: 277, type: !326)
!2002 = !DILocalVariable(name: "s", arg: 5, scope: !1994, file: !323, line: 277, type: !49)
!2003 = !DILocalVariable(name: "SPS", arg: 6, scope: !1994, file: !323, line: 278, type: !5)
!2004 = !DILocalVariable(name: "PS", scope: !1994, file: !323, line: 286, type: !2005)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1064448, elements: !2006)
!2006 = !{!2007}
!2007 = !DISubrange(count: 16632)
!2008 = !DILocation(line: 286, column: 14, scope: !1994)
!2009 = !DILocation(line: 287, column: 5, scope: !1994)
!2010 = !DILocation(line: 290, column: 5, scope: !1994)
!2011 = !DILocation(line: 292, column: 1, scope: !1994)
!2012 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !2013, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!2015 = !DILocalVariable(name: "P1", arg: 1, scope: !2012, file: !323, line: 151, type: !326)
!2016 = !DILocation(line: 0, scope: !2012)
!2017 = !DILocalVariable(name: "P2", arg: 2, scope: !2012, file: !323, line: 151, type: !326)
!2018 = !DILocalVariable(name: "P3", arg: 3, scope: !2012, file: !323, line: 151, type: !326)
!2019 = !DILocalVariable(name: "S", arg: 4, scope: !2012, file: !323, line: 151, type: !49)
!2020 = !DILocalVariable(name: "m", arg: 5, scope: !2012, file: !323, line: 152, type: !239)
!2021 = !DILocalVariable(name: "v", arg: 6, scope: !2012, file: !323, line: 152, type: !239)
!2022 = !DILocalVariable(name: "o", arg: 7, scope: !2012, file: !323, line: 152, type: !239)
!2023 = !DILocalVariable(name: "k", arg: 8, scope: !2012, file: !323, line: 152, type: !239)
!2024 = !DILocalVariable(name: "PS", arg: 9, scope: !2012, file: !323, line: 152, type: !5)
!2025 = !DILocalVariable(name: "n", scope: !2012, file: !323, line: 154, type: !239)
!2026 = !DILocalVariable(name: "m_vec_limbs", scope: !2012, file: !323, line: 155, type: !239)
!2027 = !DILocalVariable(name: "accumulator", scope: !2012, file: !323, line: 157, type: !2028)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17031168, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 266112)
!2031 = !DILocation(line: 157, column: 14, scope: !2012)
!2032 = !DILocalVariable(name: "P1_used", scope: !2012, file: !323, line: 158, type: !45)
!2033 = !DILocalVariable(name: "row", scope: !2034, file: !323, line: 159, type: !45)
!2034 = distinct !DILexicalBlock(scope: !2012, file: !323, line: 159, column: 5)
!2035 = !DILocation(line: 0, scope: !2034)
!2036 = !DILocation(line: 159, column: 10, scope: !2034)
!2037 = !DILocation(line: 158, column: 9, scope: !2012)
!2038 = !DILocation(line: 159, scope: !2034)
!2039 = !DILocation(line: 159, column: 27, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2034, file: !323, line: 159, column: 5)
!2041 = !DILocation(line: 159, column: 5, scope: !2034)
!2042 = !DILocation(line: 160, column: 9, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !323, line: 160, column: 9)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !323, line: 159, column: 39)
!2045 = !DILocation(line: 175, column: 5, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2012, file: !323, line: 175, column: 5)
!2047 = !DILocation(line: 160, scope: !2043)
!2048 = !DILocalVariable(name: "j", scope: !2043, file: !323, line: 160, type: !45)
!2049 = !DILocation(line: 0, scope: !2043)
!2050 = !DILocation(line: 160, column: 29, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2043, file: !323, line: 160, column: 9)
!2052 = !DILocation(line: 167, column: 9, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2044, file: !323, line: 167, column: 9)
!2054 = !DILocation(line: 161, column: 13, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !323, line: 161, column: 13)
!2056 = distinct !DILexicalBlock(scope: !2051, file: !323, line: 160, column: 39)
!2057 = !DILocation(line: 161, scope: !2055)
!2058 = !DILocalVariable(name: "col", scope: !2055, file: !323, line: 161, type: !45)
!2059 = !DILocation(line: 0, scope: !2055)
!2060 = !DILocation(line: 161, column: 35, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2055, file: !323, line: 161, column: 13)
!2062 = !DILocation(line: 162, column: 43, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !323, line: 161, column: 47)
!2064 = !DILocation(line: 162, column: 91, scope: !2063)
!2065 = !DILocation(line: 162, column: 95, scope: !2063)
!2066 = !DILocation(line: 162, column: 102, scope: !2063)
!2067 = !DILocation(line: 162, column: 115, scope: !2063)
!2068 = !DILocation(line: 162, column: 109, scope: !2063)
!2069 = !DILocation(line: 162, column: 107, scope: !2063)
!2070 = !DILocation(line: 162, column: 82, scope: !2063)
!2071 = !DILocation(line: 162, column: 17, scope: !2063)
!2072 = !DILocation(line: 161, column: 43, scope: !2061)
!2073 = !DILocation(line: 161, column: 13, scope: !2061)
!2074 = distinct !{!2074, !2054, !2075, !303}
!2075 = !DILocation(line: 163, column: 13, scope: !2055)
!2076 = !DILocation(line: 164, column: 21, scope: !2056)
!2077 = !DILocation(line: 160, column: 35, scope: !2051)
!2078 = !DILocation(line: 160, column: 9, scope: !2051)
!2079 = distinct !{!2079, !2042, !2080, !303}
!2080 = !DILocation(line: 165, column: 9, scope: !2043)
!2081 = !DILocation(line: 167, scope: !2053)
!2082 = !DILocalVariable(name: "j", scope: !2053, file: !323, line: 167, type: !45)
!2083 = !DILocation(line: 0, scope: !2053)
!2084 = !DILocation(line: 167, column: 27, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2053, file: !323, line: 167, column: 9)
!2086 = !DILocation(line: 168, column: 13, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !323, line: 168, column: 13)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !323, line: 167, column: 37)
!2089 = !DILocation(line: 168, scope: !2087)
!2090 = !DILocalVariable(name: "col", scope: !2087, file: !323, line: 168, type: !45)
!2091 = !DILocation(line: 0, scope: !2087)
!2092 = !DILocation(line: 168, column: 35, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !323, line: 168, column: 13)
!2094 = !DILocation(line: 169, column: 50, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2093, file: !323, line: 168, column: 47)
!2096 = !DILocation(line: 169, column: 54, scope: !2095)
!2097 = !DILocation(line: 169, column: 43, scope: !2095)
!2098 = !DILocation(line: 169, column: 93, scope: !2095)
!2099 = !DILocation(line: 169, column: 97, scope: !2095)
!2100 = !DILocation(line: 169, column: 104, scope: !2095)
!2101 = !DILocation(line: 169, column: 118, scope: !2095)
!2102 = !DILocation(line: 169, column: 111, scope: !2095)
!2103 = !DILocation(line: 169, column: 109, scope: !2095)
!2104 = !DILocation(line: 169, column: 84, scope: !2095)
!2105 = !DILocation(line: 169, column: 17, scope: !2095)
!2106 = !DILocation(line: 168, column: 43, scope: !2093)
!2107 = !DILocation(line: 168, column: 13, scope: !2093)
!2108 = distinct !{!2108, !2086, !2109, !303}
!2109 = !DILocation(line: 170, column: 13, scope: !2087)
!2110 = !DILocation(line: 167, column: 33, scope: !2085)
!2111 = !DILocation(line: 167, column: 9, scope: !2085)
!2112 = distinct !{!2112, !2052, !2113, !303}
!2113 = !DILocation(line: 171, column: 9, scope: !2053)
!2114 = !DILocation(line: 159, column: 35, scope: !2040)
!2115 = !DILocation(line: 159, column: 5, scope: !2040)
!2116 = distinct !{!2116, !2041, !2117, !303}
!2117 = !DILocation(line: 172, column: 5, scope: !2034)
!2118 = !DILocation(line: 174, column: 9, scope: !2012)
!2119 = !DILocation(line: 175, scope: !2046)
!2120 = !DILocalVariable(name: "row", scope: !2046, file: !323, line: 175, type: !45)
!2121 = !DILocation(line: 0, scope: !2046)
!2122 = !DILocalVariable(name: "P3_used", scope: !2012, file: !323, line: 174, type: !45)
!2123 = !DILocation(line: 175, column: 27, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2046, file: !323, line: 175, column: 5)
!2125 = !DILocation(line: 176, column: 9, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !323, line: 176, column: 9)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !323, line: 175, column: 39)
!2128 = !DILocation(line: 186, column: 5, scope: !2012)
!2129 = !DILocation(line: 176, scope: !2126)
!2130 = !DILocalVariable(name: "j", scope: !2126, file: !323, line: 176, type: !45)
!2131 = !DILocation(line: 0, scope: !2126)
!2132 = !DILocation(line: 176, column: 29, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2126, file: !323, line: 176, column: 9)
!2134 = !DILocation(line: 177, column: 13, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !323, line: 177, column: 13)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !323, line: 176, column: 39)
!2137 = !DILocation(line: 177, scope: !2135)
!2138 = !DILocalVariable(name: "col", scope: !2135, file: !323, line: 177, type: !45)
!2139 = !DILocation(line: 0, scope: !2135)
!2140 = !DILocation(line: 177, column: 35, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2135, file: !323, line: 177, column: 13)
!2142 = !DILocation(line: 178, column: 43, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2141, file: !323, line: 177, column: 47)
!2144 = !DILocation(line: 178, column: 89, scope: !2143)
!2145 = !DILocation(line: 178, column: 93, scope: !2143)
!2146 = !DILocation(line: 178, column: 100, scope: !2143)
!2147 = !DILocation(line: 178, column: 113, scope: !2143)
!2148 = !DILocation(line: 178, column: 107, scope: !2143)
!2149 = !DILocation(line: 178, column: 105, scope: !2143)
!2150 = !DILocation(line: 178, column: 80, scope: !2143)
!2151 = !DILocation(line: 178, column: 17, scope: !2143)
!2152 = !DILocation(line: 177, column: 43, scope: !2141)
!2153 = !DILocation(line: 177, column: 13, scope: !2141)
!2154 = distinct !{!2154, !2134, !2155, !303}
!2155 = !DILocation(line: 179, column: 13, scope: !2135)
!2156 = !DILocation(line: 180, column: 21, scope: !2136)
!2157 = !DILocation(line: 176, column: 35, scope: !2133)
!2158 = !DILocation(line: 176, column: 9, scope: !2133)
!2159 = distinct !{!2159, !2125, !2160, !303}
!2160 = !DILocation(line: 181, column: 9, scope: !2126)
!2161 = !DILocation(line: 175, column: 35, scope: !2124)
!2162 = !DILocation(line: 175, column: 5, scope: !2124)
!2163 = distinct !{!2163, !2045, !2164, !303}
!2164 = !DILocation(line: 182, column: 5, scope: !2046)
!2165 = !DILocalVariable(name: "i", scope: !2012, file: !323, line: 185, type: !45)
!2166 = !DILocation(line: 186, column: 14, scope: !2012)
!2167 = !DILocation(line: 187, column: 54, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2012, file: !323, line: 186, column: 23)
!2169 = !DILocation(line: 187, column: 81, scope: !2168)
!2170 = !DILocation(line: 187, column: 9, scope: !2168)
!2171 = !DILocation(line: 188, column: 10, scope: !2168)
!2172 = distinct !{!2172, !2128, !2173, !303}
!2173 = !DILocation(line: 189, column: 5, scope: !2012)
!2174 = !DILocation(line: 191, column: 1, scope: !2012)
!2175 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2176, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !326, !49, !45, !45, !45, !5}
!2178 = !DILocalVariable(name: "PS", arg: 1, scope: !2175, file: !323, line: 195, type: !326)
!2179 = !DILocation(line: 0, scope: !2175)
!2180 = !DILocalVariable(name: "S", arg: 2, scope: !2175, file: !323, line: 195, type: !49)
!2181 = !DILocalVariable(name: "m", arg: 3, scope: !2175, file: !323, line: 195, type: !45)
!2182 = !DILocalVariable(name: "k", arg: 4, scope: !2175, file: !323, line: 195, type: !45)
!2183 = !DILocalVariable(name: "n", arg: 5, scope: !2175, file: !323, line: 195, type: !45)
!2184 = !DILocalVariable(name: "SPS", arg: 6, scope: !2175, file: !323, line: 195, type: !5)
!2185 = !DILocalVariable(name: "accumulator", scope: !2175, file: !323, line: 196, type: !2186)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2187)
!2187 = !{!2188}
!2188 = !DISubrange(count: 20736)
!2189 = !DILocation(line: 196, column: 14, scope: !2175)
!2190 = !DILocalVariable(name: "m_vec_limbs", scope: !2175, file: !323, line: 197, type: !239)
!2191 = !DILocalVariable(name: "row", scope: !2192, file: !323, line: 198, type: !45)
!2192 = distinct !DILexicalBlock(scope: !2175, file: !323, line: 198, column: 5)
!2193 = !DILocation(line: 0, scope: !2192)
!2194 = !DILocation(line: 198, column: 10, scope: !2192)
!2195 = !DILocation(line: 198, scope: !2192)
!2196 = !DILocation(line: 198, column: 27, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !323, line: 198, column: 5)
!2198 = !DILocation(line: 198, column: 5, scope: !2192)
!2199 = !DILocation(line: 199, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !323, line: 199, column: 9)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !323, line: 198, column: 39)
!2202 = !DILocation(line: 208, column: 5, scope: !2175)
!2203 = !DILocation(line: 199, scope: !2200)
!2204 = !DILocalVariable(name: "j", scope: !2200, file: !323, line: 199, type: !45)
!2205 = !DILocation(line: 0, scope: !2200)
!2206 = !DILocation(line: 199, column: 27, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2200, file: !323, line: 199, column: 9)
!2208 = !DILocation(line: 200, column: 13, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !323, line: 200, column: 13)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !323, line: 199, column: 37)
!2211 = !DILocation(line: 200, scope: !2209)
!2212 = !DILocalVariable(name: "col", scope: !2209, file: !323, line: 200, type: !45)
!2213 = !DILocation(line: 0, scope: !2209)
!2214 = !DILocation(line: 200, column: 35, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2209, file: !323, line: 200, column: 13)
!2216 = !DILocation(line: 201, column: 52, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2215, file: !323, line: 200, column: 50)
!2218 = !DILocation(line: 201, column: 56, scope: !2217)
!2219 = !DILocation(line: 201, column: 47, scope: !2217)
!2220 = !DILocation(line: 201, column: 99, scope: !2217)
!2221 = !DILocation(line: 201, column: 103, scope: !2217)
!2222 = !DILocation(line: 201, column: 110, scope: !2217)
!2223 = !DILocation(line: 201, column: 123, scope: !2217)
!2224 = !DILocation(line: 201, column: 117, scope: !2217)
!2225 = !DILocation(line: 201, column: 115, scope: !2217)
!2226 = !DILocation(line: 201, column: 90, scope: !2217)
!2227 = !DILocation(line: 201, column: 21, scope: !2217)
!2228 = !DILocation(line: 200, column: 44, scope: !2215)
!2229 = !DILocation(line: 200, column: 13, scope: !2215)
!2230 = distinct !{!2230, !2208, !2231, !303}
!2231 = !DILocation(line: 202, column: 13, scope: !2209)
!2232 = !DILocation(line: 199, column: 33, scope: !2207)
!2233 = !DILocation(line: 199, column: 9, scope: !2207)
!2234 = distinct !{!2234, !2199, !2235, !303}
!2235 = !DILocation(line: 203, column: 9, scope: !2200)
!2236 = !DILocation(line: 198, column: 35, scope: !2197)
!2237 = !DILocation(line: 198, column: 5, scope: !2197)
!2238 = distinct !{!2238, !2198, !2239, !303}
!2239 = !DILocation(line: 204, column: 5, scope: !2192)
!2240 = !DILocalVariable(name: "i", scope: !2175, file: !323, line: 207, type: !45)
!2241 = !DILocation(line: 208, column: 14, scope: !2175)
!2242 = !DILocation(line: 209, column: 54, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2175, file: !323, line: 208, column: 21)
!2244 = !DILocation(line: 209, column: 82, scope: !2243)
!2245 = !DILocation(line: 209, column: 9, scope: !2243)
!2246 = !DILocation(line: 210, column: 10, scope: !2243)
!2247 = distinct !{!2247, !2202, !2248, !303}
!2248 = !DILocation(line: 211, column: 5, scope: !2175)
!2249 = !DILocation(line: 212, column: 1, scope: !2175)
!2250 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2251, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !45, !326, !5}
!2253 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2250, file: !437, line: 22, type: !45)
!2254 = !DILocation(line: 0, scope: !2250)
!2255 = !DILocalVariable(name: "in", arg: 2, scope: !2250, file: !437, line: 22, type: !326)
!2256 = !DILocalVariable(name: "acc", arg: 3, scope: !2250, file: !437, line: 22, type: !5)
!2257 = !DILocalVariable(name: "i", scope: !2258, file: !437, line: 24, type: !15)
!2258 = distinct !DILexicalBlock(scope: !2250, file: !437, line: 24, column: 5)
!2259 = !DILocation(line: 0, scope: !2258)
!2260 = !DILocation(line: 24, column: 10, scope: !2258)
!2261 = !DILocation(line: 24, scope: !2258)
!2262 = !DILocation(line: 24, column: 26, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !437, line: 24, column: 5)
!2264 = !DILocation(line: 24, column: 5, scope: !2258)
!2265 = !DILocation(line: 26, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2263, file: !437, line: 25, column: 5)
!2267 = !DILocation(line: 26, column: 9, scope: !2266)
!2268 = !DILocation(line: 26, column: 16, scope: !2266)
!2269 = !DILocation(line: 24, column: 46, scope: !2263)
!2270 = !DILocation(line: 24, column: 5, scope: !2263)
!2271 = distinct !{!2271, !2264, !2272, !303}
!2272 = !DILocation(line: 27, column: 5, scope: !2258)
!2273 = !DILocation(line: 28, column: 1, scope: !2250)
!2274 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2275, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !45, !5, !5}
!2277 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2274, file: !437, line: 66, type: !45)
!2278 = !DILocation(line: 0, scope: !2274)
!2279 = !DILocalVariable(name: "bins", arg: 2, scope: !2274, file: !437, line: 66, type: !5)
!2280 = !DILocalVariable(name: "out", arg: 3, scope: !2274, file: !437, line: 66, type: !5)
!2281 = !DILocation(line: 67, column: 44, scope: !2274)
!2282 = !DILocation(line: 67, column: 73, scope: !2274)
!2283 = !DILocation(line: 67, column: 5, scope: !2274)
!2284 = !DILocation(line: 68, column: 40, scope: !2274)
!2285 = !DILocation(line: 68, column: 69, scope: !2274)
!2286 = !DILocation(line: 68, column: 5, scope: !2274)
!2287 = !DILocation(line: 69, column: 44, scope: !2274)
!2288 = !DILocation(line: 69, column: 74, scope: !2274)
!2289 = !DILocation(line: 69, column: 5, scope: !2274)
!2290 = !DILocation(line: 70, column: 40, scope: !2274)
!2291 = !DILocation(line: 70, column: 69, scope: !2274)
!2292 = !DILocation(line: 70, column: 5, scope: !2274)
!2293 = !DILocation(line: 71, column: 44, scope: !2274)
!2294 = !DILocation(line: 71, column: 73, scope: !2274)
!2295 = !DILocation(line: 71, column: 5, scope: !2274)
!2296 = !DILocation(line: 72, column: 40, scope: !2274)
!2297 = !DILocation(line: 72, column: 69, scope: !2274)
!2298 = !DILocation(line: 72, column: 5, scope: !2274)
!2299 = !DILocation(line: 73, column: 44, scope: !2274)
!2300 = !DILocation(line: 73, column: 74, scope: !2274)
!2301 = !DILocation(line: 73, column: 5, scope: !2274)
!2302 = !DILocation(line: 74, column: 40, scope: !2274)
!2303 = !DILocation(line: 74, column: 69, scope: !2274)
!2304 = !DILocation(line: 74, column: 5, scope: !2274)
!2305 = !DILocation(line: 75, column: 44, scope: !2274)
!2306 = !DILocation(line: 75, column: 74, scope: !2274)
!2307 = !DILocation(line: 75, column: 5, scope: !2274)
!2308 = !DILocation(line: 76, column: 40, scope: !2274)
!2309 = !DILocation(line: 76, column: 69, scope: !2274)
!2310 = !DILocation(line: 76, column: 5, scope: !2274)
!2311 = !DILocation(line: 77, column: 44, scope: !2274)
!2312 = !DILocation(line: 77, column: 74, scope: !2274)
!2313 = !DILocation(line: 77, column: 5, scope: !2274)
!2314 = !DILocation(line: 78, column: 40, scope: !2274)
!2315 = !DILocation(line: 78, column: 69, scope: !2274)
!2316 = !DILocation(line: 78, column: 5, scope: !2274)
!2317 = !DILocation(line: 79, column: 44, scope: !2274)
!2318 = !DILocation(line: 79, column: 74, scope: !2274)
!2319 = !DILocation(line: 79, column: 5, scope: !2274)
!2320 = !DILocation(line: 80, column: 40, scope: !2274)
!2321 = !DILocation(line: 80, column: 69, scope: !2274)
!2322 = !DILocation(line: 80, column: 5, scope: !2274)
!2323 = !DILocation(line: 81, column: 35, scope: !2274)
!2324 = !DILocation(line: 81, column: 5, scope: !2274)
!2325 = !DILocation(line: 82, column: 1, scope: !2274)
!2326 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2251, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2327 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2326, file: !437, line: 56, type: !45)
!2328 = !DILocation(line: 0, scope: !2326)
!2329 = !DILocalVariable(name: "in", arg: 2, scope: !2326, file: !437, line: 56, type: !326)
!2330 = !DILocalVariable(name: "acc", arg: 3, scope: !2326, file: !437, line: 56, type: !5)
!2331 = !DILocalVariable(name: "mask_lsb", scope: !2326, file: !437, line: 58, type: !6)
!2332 = !DILocalVariable(name: "i", scope: !2333, file: !437, line: 59, type: !45)
!2333 = distinct !DILexicalBlock(scope: !2326, file: !437, line: 59, column: 5)
!2334 = !DILocation(line: 0, scope: !2333)
!2335 = !DILocation(line: 59, column: 9, scope: !2333)
!2336 = !DILocation(line: 59, scope: !2333)
!2337 = !DILocation(line: 59, column: 20, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !437, line: 59, column: 5)
!2339 = !DILocation(line: 59, column: 5, scope: !2333)
!2340 = !DILocation(line: 60, column: 22, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !437, line: 59, column: 43)
!2342 = !DILocation(line: 60, column: 28, scope: !2341)
!2343 = !DILocalVariable(name: "t", scope: !2341, file: !437, line: 60, type: !6)
!2344 = !DILocation(line: 0, scope: !2341)
!2345 = !DILocation(line: 61, column: 32, scope: !2341)
!2346 = !DILocation(line: 61, column: 43, scope: !2341)
!2347 = !DILocation(line: 61, column: 38, scope: !2341)
!2348 = !DILocation(line: 61, column: 9, scope: !2341)
!2349 = !DILocation(line: 61, column: 16, scope: !2341)
!2350 = !DILocation(line: 59, column: 40, scope: !2338)
!2351 = !DILocation(line: 59, column: 5, scope: !2338)
!2352 = distinct !{!2352, !2339, !2353, !303}
!2353 = !DILocation(line: 62, column: 5, scope: !2333)
!2354 = !DILocation(line: 63, column: 1, scope: !2326)
!2355 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2251, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2356 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2355, file: !437, line: 46, type: !45)
!2357 = !DILocation(line: 0, scope: !2355)
!2358 = !DILocalVariable(name: "in", arg: 2, scope: !2355, file: !437, line: 46, type: !326)
!2359 = !DILocalVariable(name: "acc", arg: 3, scope: !2355, file: !437, line: 46, type: !5)
!2360 = !DILocalVariable(name: "mask_msb", scope: !2355, file: !437, line: 48, type: !6)
!2361 = !DILocalVariable(name: "i", scope: !2362, file: !437, line: 49, type: !45)
!2362 = distinct !DILexicalBlock(scope: !2355, file: !437, line: 49, column: 5)
!2363 = !DILocation(line: 0, scope: !2362)
!2364 = !DILocation(line: 49, column: 9, scope: !2362)
!2365 = !DILocation(line: 49, scope: !2362)
!2366 = !DILocation(line: 49, column: 20, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !437, line: 49, column: 5)
!2368 = !DILocation(line: 49, column: 5, scope: !2362)
!2369 = !DILocation(line: 50, column: 22, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !437, line: 49, column: 43)
!2371 = !DILocalVariable(name: "t", scope: !2370, file: !437, line: 50, type: !6)
!2372 = !DILocation(line: 0, scope: !2370)
!2373 = !DILocation(line: 51, column: 32, scope: !2370)
!2374 = !DILocation(line: 51, column: 44, scope: !2370)
!2375 = !DILocation(line: 51, column: 50, scope: !2370)
!2376 = !DILocation(line: 51, column: 38, scope: !2370)
!2377 = !DILocation(line: 51, column: 9, scope: !2370)
!2378 = !DILocation(line: 51, column: 16, scope: !2370)
!2379 = !DILocation(line: 49, column: 40, scope: !2367)
!2380 = !DILocation(line: 49, column: 5, scope: !2367)
!2381 = distinct !{!2381, !2368, !2382, !303}
!2382 = !DILocation(line: 52, column: 5, scope: !2362)
!2383 = !DILocation(line: 53, column: 1, scope: !2355)
!2384 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2251, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2385 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2384, file: !437, line: 13, type: !45)
!2386 = !DILocation(line: 0, scope: !2384)
!2387 = !DILocalVariable(name: "in", arg: 2, scope: !2384, file: !437, line: 13, type: !326)
!2388 = !DILocalVariable(name: "out", arg: 3, scope: !2384, file: !437, line: 13, type: !5)
!2389 = !DILocalVariable(name: "i", scope: !2390, file: !437, line: 15, type: !15)
!2390 = distinct !DILexicalBlock(scope: !2384, file: !437, line: 15, column: 5)
!2391 = !DILocation(line: 0, scope: !2390)
!2392 = !DILocation(line: 15, column: 10, scope: !2390)
!2393 = !DILocation(line: 15, scope: !2390)
!2394 = !DILocation(line: 15, column: 26, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2390, file: !437, line: 15, column: 5)
!2396 = !DILocation(line: 15, column: 5, scope: !2390)
!2397 = !DILocation(line: 17, column: 18, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !437, line: 16, column: 5)
!2399 = !DILocation(line: 17, column: 9, scope: !2398)
!2400 = !DILocation(line: 17, column: 16, scope: !2398)
!2401 = !DILocation(line: 15, column: 46, scope: !2395)
!2402 = !DILocation(line: 15, column: 5, scope: !2395)
!2403 = distinct !{!2403, !2396, !2404, !303}
!2404 = !DILocation(line: 18, column: 5, scope: !2390)
!2405 = !DILocation(line: 19, column: 1, scope: !2384)
!2406 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_m_upper", scope: !58, file: !58, line: 14, type: !2407, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2409, !326, !5, !45}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2412, file: !36, line: 266, baseType: !45, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2412, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2412, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2412, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2412, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2412, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2412, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2412, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2412, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2412, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2412, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2412, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2412, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2412, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2412, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2412, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2412, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2412, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2412, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2412, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2412, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2412, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2412, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2437 = !DILocalVariable(name: "p", arg: 1, scope: !2406, file: !58, line: 14, type: !2409)
!2438 = !DILocation(line: 0, scope: !2406)
!2439 = !DILocalVariable(name: "in", arg: 2, scope: !2406, file: !58, line: 14, type: !326)
!2440 = !DILocalVariable(name: "out", arg: 3, scope: !2406, file: !58, line: 14, type: !5)
!2441 = !DILocalVariable(name: "size", arg: 4, scope: !2406, file: !58, line: 14, type: !45)
!2442 = !DILocalVariable(name: "m_vec_limbs", scope: !2406, file: !58, line: 19, type: !239)
!2443 = !DILocalVariable(name: "m_vecs_stored", scope: !2406, file: !58, line: 20, type: !45)
!2444 = !DILocalVariable(name: "r", scope: !2445, file: !58, line: 21, type: !45)
!2445 = distinct !DILexicalBlock(scope: !2406, file: !58, line: 21, column: 5)
!2446 = !DILocation(line: 0, scope: !2445)
!2447 = !DILocation(line: 21, column: 10, scope: !2445)
!2448 = !DILocation(line: 20, column: 9, scope: !2406)
!2449 = !DILocation(line: 21, scope: !2445)
!2450 = !DILocation(line: 21, column: 23, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2445, file: !58, line: 21, column: 5)
!2452 = !DILocation(line: 21, column: 5, scope: !2445)
!2453 = !DILocation(line: 22, column: 9, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !58, line: 22, column: 9)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !58, line: 21, column: 36)
!2456 = !DILocation(line: 22, scope: !2454)
!2457 = !DILocalVariable(name: "c", scope: !2454, file: !58, line: 22, type: !45)
!2458 = !DILocation(line: 0, scope: !2454)
!2459 = !DILocation(line: 22, column: 27, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2454, file: !58, line: 22, column: 9)
!2461 = !DILocation(line: 23, column: 59, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2460, file: !58, line: 22, column: 40)
!2463 = !DILocation(line: 23, column: 66, scope: !2462)
!2464 = !DILocation(line: 23, column: 40, scope: !2462)
!2465 = !DILocation(line: 23, column: 76, scope: !2462)
!2466 = !DILocation(line: 23, column: 13, scope: !2462)
!2467 = !DILocation(line: 24, column: 19, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2462, file: !58, line: 24, column: 17)
!2469 = !DILocation(line: 25, column: 62, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !58, line: 24, column: 25)
!2471 = !DILocation(line: 25, column: 69, scope: !2470)
!2472 = !DILocation(line: 25, column: 43, scope: !2470)
!2473 = !DILocation(line: 25, column: 79, scope: !2470)
!2474 = !DILocation(line: 25, column: 17, scope: !2470)
!2475 = !DILocation(line: 26, column: 13, scope: !2470)
!2476 = !DILocation(line: 27, column: 27, scope: !2462)
!2477 = !DILocation(line: 22, column: 36, scope: !2460)
!2478 = !DILocation(line: 22, column: 9, scope: !2460)
!2479 = distinct !{!2479, !2453, !2480, !303}
!2480 = !DILocation(line: 28, column: 9, scope: !2454)
!2481 = !DILocation(line: 21, column: 32, scope: !2451)
!2482 = !DILocation(line: 21, column: 5, scope: !2451)
!2483 = distinct !{!2483, !2452, !2484, !303}
!2484 = !DILocation(line: 29, column: 5, scope: !2445)
!2485 = !DILocation(line: 30, column: 1, scope: !2406)
!2486 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2251, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2487 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2486, file: !437, line: 13, type: !45)
!2488 = !DILocation(line: 0, scope: !2486)
!2489 = !DILocalVariable(name: "in", arg: 2, scope: !2486, file: !437, line: 13, type: !326)
!2490 = !DILocalVariable(name: "out", arg: 3, scope: !2486, file: !437, line: 13, type: !5)
!2491 = !DILocalVariable(name: "i", scope: !2492, file: !437, line: 15, type: !15)
!2492 = distinct !DILexicalBlock(scope: !2486, file: !437, line: 15, column: 5)
!2493 = !DILocation(line: 0, scope: !2492)
!2494 = !DILocation(line: 15, column: 10, scope: !2492)
!2495 = !DILocation(line: 15, scope: !2492)
!2496 = !DILocation(line: 15, column: 26, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !437, line: 15, column: 5)
!2498 = !DILocation(line: 15, column: 5, scope: !2492)
!2499 = !DILocation(line: 17, column: 18, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !437, line: 16, column: 5)
!2501 = !DILocation(line: 17, column: 9, scope: !2500)
!2502 = !DILocation(line: 17, column: 16, scope: !2500)
!2503 = !DILocation(line: 15, column: 46, scope: !2497)
!2504 = !DILocation(line: 15, column: 5, scope: !2497)
!2505 = distinct !{!2505, !2498, !2506, !303}
!2506 = !DILocation(line: 18, column: 5, scope: !2492)
!2507 = !DILocation(line: 19, column: 1, scope: !2486)
!2508 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2251, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2509 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2508, file: !437, line: 22, type: !45)
!2510 = !DILocation(line: 0, scope: !2508)
!2511 = !DILocalVariable(name: "in", arg: 2, scope: !2508, file: !437, line: 22, type: !326)
!2512 = !DILocalVariable(name: "acc", arg: 3, scope: !2508, file: !437, line: 22, type: !5)
!2513 = !DILocalVariable(name: "i", scope: !2514, file: !437, line: 24, type: !15)
!2514 = distinct !DILexicalBlock(scope: !2508, file: !437, line: 24, column: 5)
!2515 = !DILocation(line: 0, scope: !2514)
!2516 = !DILocation(line: 24, column: 10, scope: !2514)
!2517 = !DILocation(line: 24, scope: !2514)
!2518 = !DILocation(line: 24, column: 26, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2514, file: !437, line: 24, column: 5)
!2520 = !DILocation(line: 24, column: 5, scope: !2514)
!2521 = !DILocation(line: 26, column: 19, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !437, line: 25, column: 5)
!2523 = !DILocation(line: 26, column: 9, scope: !2522)
!2524 = !DILocation(line: 26, column: 16, scope: !2522)
!2525 = !DILocation(line: 24, column: 46, scope: !2519)
!2526 = !DILocation(line: 24, column: 5, scope: !2519)
!2527 = distinct !{!2527, !2520, !2528, !303}
!2528 = !DILocation(line: 27, column: 5, scope: !2514)
!2529 = !DILocation(line: 28, column: 1, scope: !2508)
!2530 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2531, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!45, !2409, !18, !49, !49, !18, !45, !45, !45, !45}
!2533 = !DILocalVariable(name: "p", arg: 1, scope: !2530, file: !58, line: 40, type: !2409)
!2534 = !DILocation(line: 0, scope: !2530)
!2535 = !DILocalVariable(name: "A", arg: 2, scope: !2530, file: !58, line: 40, type: !18)
!2536 = !DILocalVariable(name: "y", arg: 3, scope: !2530, file: !58, line: 41, type: !49)
!2537 = !DILocalVariable(name: "r", arg: 4, scope: !2530, file: !58, line: 41, type: !49)
!2538 = !DILocalVariable(name: "x", arg: 5, scope: !2530, file: !58, line: 42, type: !18)
!2539 = !DILocalVariable(name: "k", arg: 6, scope: !2530, file: !58, line: 42, type: !45)
!2540 = !DILocalVariable(name: "o", arg: 7, scope: !2530, file: !58, line: 42, type: !45)
!2541 = !DILocalVariable(name: "m", arg: 8, scope: !2530, file: !58, line: 42, type: !45)
!2542 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2530, file: !58, line: 42, type: !45)
!2543 = !DILocalVariable(name: "i", scope: !2544, file: !58, line: 51, type: !45)
!2544 = distinct !DILexicalBlock(scope: !2530, file: !58, line: 51, column: 5)
!2545 = !DILocation(line: 0, scope: !2544)
!2546 = !DILocation(line: 51, column: 10, scope: !2544)
!2547 = !DILocation(line: 51, scope: !2544)
!2548 = !DILocation(line: 51, column: 23, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2544, file: !58, line: 51, column: 5)
!2550 = !DILocation(line: 51, column: 5, scope: !2544)
!2551 = !DILocation(line: 57, column: 5, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2530, file: !58, line: 57, column: 5)
!2553 = !DILocation(line: 52, column: 16, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !58, line: 51, column: 37)
!2555 = !DILocation(line: 52, column: 9, scope: !2554)
!2556 = !DILocation(line: 52, column: 14, scope: !2554)
!2557 = !DILocation(line: 51, column: 33, scope: !2549)
!2558 = !DILocation(line: 51, column: 5, scope: !2549)
!2559 = distinct !{!2559, !2550, !2560, !303}
!2560 = !DILocation(line: 53, column: 5, scope: !2544)
!2561 = !DILocation(line: 57, scope: !2552)
!2562 = !DILocalVariable(name: "i", scope: !2552, file: !58, line: 57, type: !45)
!2563 = !DILocation(line: 0, scope: !2552)
!2564 = !DILocation(line: 57, column: 23, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2552, file: !58, line: 57, column: 5)
!2566 = !DILocation(line: 58, column: 13, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2565, file: !58, line: 57, column: 33)
!2568 = !DILocation(line: 58, column: 26, scope: !2567)
!2569 = !DILocation(line: 58, column: 30, scope: !2567)
!2570 = !DILocation(line: 58, column: 21, scope: !2567)
!2571 = !DILocation(line: 58, column: 9, scope: !2567)
!2572 = !DILocation(line: 58, column: 36, scope: !2567)
!2573 = !DILocation(line: 57, column: 29, scope: !2565)
!2574 = !DILocation(line: 57, column: 5, scope: !2565)
!2575 = distinct !{!2575, !2551, !2576, !303}
!2576 = !DILocation(line: 59, column: 5, scope: !2552)
!2577 = !DILocation(line: 60, column: 25, scope: !2530)
!2578 = !DILocation(line: 60, column: 29, scope: !2530)
!2579 = !DILocation(line: 60, column: 5, scope: !2530)
!2580 = !DILocalVariable(name: "i", scope: !2581, file: !58, line: 63, type: !45)
!2581 = distinct !DILexicalBlock(scope: !2530, file: !58, line: 63, column: 5)
!2582 = !DILocation(line: 0, scope: !2581)
!2583 = !DILocation(line: 63, column: 10, scope: !2581)
!2584 = !DILocation(line: 63, scope: !2581)
!2585 = !DILocation(line: 63, column: 23, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !58, line: 63, column: 5)
!2587 = !DILocation(line: 63, column: 5, scope: !2581)
!2588 = !DILocation(line: 64, column: 44, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !58, line: 63, column: 33)
!2590 = !DILocation(line: 64, column: 50, scope: !2589)
!2591 = !DILocation(line: 64, column: 38, scope: !2589)
!2592 = !DILocation(line: 64, column: 13, scope: !2589)
!2593 = !DILocation(line: 64, column: 26, scope: !2589)
!2594 = !DILocation(line: 64, column: 30, scope: !2589)
!2595 = !DILocation(line: 64, column: 21, scope: !2589)
!2596 = !DILocation(line: 64, column: 9, scope: !2589)
!2597 = !DILocation(line: 64, column: 36, scope: !2589)
!2598 = !DILocation(line: 63, column: 29, scope: !2586)
!2599 = !DILocation(line: 63, column: 5, scope: !2586)
!2600 = distinct !{!2600, !2587, !2601, !303}
!2601 = !DILocation(line: 65, column: 5, scope: !2581)
!2602 = !DILocation(line: 67, column: 16, scope: !2530)
!2603 = !DILocation(line: 67, column: 20, scope: !2530)
!2604 = !DILocation(line: 67, column: 5, scope: !2530)
!2605 = !DILocalVariable(name: "full_rank", scope: !2530, file: !58, line: 70, type: !14)
!2606 = !DILocalVariable(name: "i", scope: !2607, file: !58, line: 71, type: !45)
!2607 = distinct !DILexicalBlock(scope: !2530, file: !58, line: 71, column: 5)
!2608 = !DILocation(line: 0, scope: !2607)
!2609 = !DILocation(line: 71, column: 10, scope: !2607)
!2610 = !DILocation(line: 71, scope: !2607)
!2611 = !DILocation(line: 71, column: 23, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !58, line: 71, column: 5)
!2613 = !DILocation(line: 71, column: 5, scope: !2607)
!2614 = !DILocation(line: 72, column: 27, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 71, column: 42)
!2616 = !DILocation(line: 72, column: 32, scope: !2615)
!2617 = !DILocation(line: 72, column: 22, scope: !2615)
!2618 = !DILocation(line: 72, column: 19, scope: !2615)
!2619 = !DILocation(line: 71, column: 38, scope: !2612)
!2620 = !DILocation(line: 71, column: 5, scope: !2612)
!2621 = distinct !{!2621, !2613, !2622, !303}
!2622 = !DILocation(line: 73, column: 5, scope: !2607)
!2623 = !DILocation(line: 80, column: 19, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2530, file: !58, line: 80, column: 9)
!2625 = !DILocation(line: 88, column: 5, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2530, file: !58, line: 88, column: 5)
!2627 = distinct !{!2627, !2625, !2628, !303}
!2628 = !DILocation(line: 122, column: 5, scope: !2626)
!2629 = !DILocation(line: 88, scope: !2626)
!2630 = !DILocalVariable(name: "row", scope: !2626, file: !58, line: 88, type: !45)
!2631 = !DILocation(line: 0, scope: !2626)
!2632 = !DILocation(line: 88, column: 31, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2626, file: !58, line: 88, column: 5)
!2634 = !DILocalVariable(name: "finished", scope: !2530, file: !58, line: 46, type: !14)
!2635 = !DILocation(line: 90, column: 27, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !58, line: 88, column: 44)
!2637 = !DILocalVariable(name: "col_upper_bound", scope: !2530, file: !58, line: 47, type: !45)
!2638 = !DILocalVariable(name: "col", scope: !2639, file: !58, line: 93, type: !45)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !58, line: 93, column: 9)
!2640 = !DILocation(line: 0, scope: !2639)
!2641 = !DILocation(line: 93, column: 14, scope: !2639)
!2642 = !DILocation(line: 0, scope: !2636)
!2643 = !DILocation(line: 93, scope: !2639)
!2644 = !DILocation(line: 93, column: 33, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !58, line: 93, column: 9)
!2646 = !DILocation(line: 93, column: 9, scope: !2639)
!2647 = !DILocation(line: 97, column: 50, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2645, file: !58, line: 93, column: 60)
!2649 = !DILocation(line: 97, column: 44, scope: !2648)
!2650 = !DILocation(line: 97, column: 30, scope: !2648)
!2651 = !DILocation(line: 97, column: 73, scope: !2648)
!2652 = !DILocalVariable(name: "correct_column", scope: !2530, file: !58, line: 48, type: !14)
!2653 = !DILocation(line: 99, column: 63, scope: !2648)
!2654 = !DILocation(line: 99, column: 48, scope: !2648)
!2655 = !DILocation(line: 99, column: 46, scope: !2648)
!2656 = !DILocalVariable(name: "u", scope: !2648, file: !58, line: 99, type: !14)
!2657 = !DILocation(line: 0, scope: !2648)
!2658 = !DILocation(line: 100, column: 13, scope: !2648)
!2659 = !DILocation(line: 100, column: 20, scope: !2648)
!2660 = !DILocalVariable(name: "i", scope: !2661, file: !58, line: 102, type: !45)
!2661 = distinct !DILexicalBlock(scope: !2648, file: !58, line: 102, column: 13)
!2662 = !DILocation(line: 0, scope: !2661)
!2663 = !DILocation(line: 102, column: 18, scope: !2661)
!2664 = !DILocation(line: 102, scope: !2661)
!2665 = !DILocation(line: 102, column: 31, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !58, line: 102, column: 13)
!2667 = !DILocation(line: 102, column: 13, scope: !2661)
!2668 = !DILocation(line: 103, column: 53, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !58, line: 102, column: 46)
!2670 = !DILocation(line: 103, column: 45, scope: !2669)
!2671 = !DILocation(line: 103, column: 34, scope: !2669)
!2672 = !DILocation(line: 103, column: 95, scope: !2669)
!2673 = !DILocation(line: 103, column: 99, scope: !2669)
!2674 = !DILocation(line: 103, column: 91, scope: !2669)
!2675 = !DILocation(line: 103, column: 80, scope: !2669)
!2676 = !DILocation(line: 103, column: 115, scope: !2669)
!2677 = !DILocation(line: 103, column: 76, scope: !2669)
!2678 = !DILocation(line: 104, column: 49, scope: !2669)
!2679 = !DILocation(line: 104, column: 53, scope: !2669)
!2680 = !DILocation(line: 104, column: 45, scope: !2669)
!2681 = !DILocation(line: 104, column: 34, scope: !2669)
!2682 = !DILocation(line: 104, column: 69, scope: !2669)
!2683 = !DILocation(line: 104, column: 30, scope: !2669)
!2684 = !DILocation(line: 104, column: 95, scope: !2669)
!2685 = !DILocation(line: 104, column: 99, scope: !2669)
!2686 = !DILocation(line: 104, column: 91, scope: !2669)
!2687 = !DILocation(line: 104, column: 80, scope: !2669)
!2688 = !DILocation(line: 104, column: 115, scope: !2669)
!2689 = !DILocation(line: 104, column: 76, scope: !2669)
!2690 = !DILocation(line: 105, column: 49, scope: !2669)
!2691 = !DILocation(line: 105, column: 53, scope: !2669)
!2692 = !DILocation(line: 105, column: 45, scope: !2669)
!2693 = !DILocation(line: 105, column: 34, scope: !2669)
!2694 = !DILocation(line: 105, column: 69, scope: !2669)
!2695 = !DILocation(line: 105, column: 30, scope: !2669)
!2696 = !DILocation(line: 105, column: 95, scope: !2669)
!2697 = !DILocation(line: 105, column: 99, scope: !2669)
!2698 = !DILocation(line: 105, column: 91, scope: !2669)
!2699 = !DILocation(line: 105, column: 80, scope: !2669)
!2700 = !DILocation(line: 105, column: 115, scope: !2669)
!2701 = !DILocation(line: 105, column: 76, scope: !2669)
!2702 = !DILocation(line: 106, column: 49, scope: !2669)
!2703 = !DILocation(line: 106, column: 53, scope: !2669)
!2704 = !DILocation(line: 106, column: 45, scope: !2669)
!2705 = !DILocation(line: 106, column: 34, scope: !2669)
!2706 = !DILocation(line: 106, column: 69, scope: !2669)
!2707 = !DILocation(line: 106, column: 30, scope: !2669)
!2708 = !DILocation(line: 106, column: 95, scope: !2669)
!2709 = !DILocation(line: 106, column: 99, scope: !2669)
!2710 = !DILocation(line: 106, column: 91, scope: !2669)
!2711 = !DILocation(line: 106, column: 80, scope: !2669)
!2712 = !DILocation(line: 106, column: 115, scope: !2669)
!2713 = !DILocation(line: 106, column: 76, scope: !2669)
!2714 = !DILocalVariable(name: "tmp", scope: !2669, file: !58, line: 103, type: !6)
!2715 = !DILocation(line: 0, scope: !2669)
!2716 = !DILocation(line: 108, column: 23, scope: !2669)
!2717 = !DILocation(line: 110, column: 34, scope: !2669)
!2718 = !DILocation(line: 110, column: 17, scope: !2669)
!2719 = !DILocation(line: 110, column: 48, scope: !2669)
!2720 = !DILocation(line: 111, column: 56, scope: !2669)
!2721 = !DILocation(line: 111, column: 34, scope: !2669)
!2722 = !DILocation(line: 111, column: 17, scope: !2669)
!2723 = !DILocation(line: 111, column: 48, scope: !2669)
!2724 = !DILocation(line: 112, column: 56, scope: !2669)
!2725 = !DILocation(line: 112, column: 34, scope: !2669)
!2726 = !DILocation(line: 112, column: 17, scope: !2669)
!2727 = !DILocation(line: 112, column: 48, scope: !2669)
!2728 = !DILocation(line: 113, column: 56, scope: !2669)
!2729 = !DILocation(line: 113, column: 34, scope: !2669)
!2730 = !DILocation(line: 113, column: 17, scope: !2669)
!2731 = !DILocation(line: 113, column: 48, scope: !2669)
!2732 = !DILocation(line: 114, column: 56, scope: !2669)
!2733 = !DILocation(line: 114, column: 34, scope: !2669)
!2734 = !DILocation(line: 114, column: 17, scope: !2669)
!2735 = !DILocation(line: 114, column: 48, scope: !2669)
!2736 = !DILocation(line: 115, column: 56, scope: !2669)
!2737 = !DILocation(line: 115, column: 34, scope: !2669)
!2738 = !DILocation(line: 115, column: 17, scope: !2669)
!2739 = !DILocation(line: 115, column: 48, scope: !2669)
!2740 = !DILocation(line: 116, column: 56, scope: !2669)
!2741 = !DILocation(line: 116, column: 34, scope: !2669)
!2742 = !DILocation(line: 116, column: 17, scope: !2669)
!2743 = !DILocation(line: 116, column: 48, scope: !2669)
!2744 = !DILocation(line: 117, column: 56, scope: !2669)
!2745 = !DILocation(line: 117, column: 34, scope: !2669)
!2746 = !DILocation(line: 117, column: 17, scope: !2669)
!2747 = !DILocation(line: 117, column: 48, scope: !2669)
!2748 = !DILocation(line: 102, column: 40, scope: !2666)
!2749 = !DILocation(line: 102, column: 13, scope: !2666)
!2750 = distinct !{!2750, !2667, !2751, !303}
!2751 = !DILocation(line: 118, column: 13, scope: !2661)
!2752 = !DILocation(line: 120, column: 33, scope: !2648)
!2753 = !DILocation(line: 93, column: 56, scope: !2645)
!2754 = !DILocation(line: 93, column: 9, scope: !2645)
!2755 = distinct !{!2755, !2646, !2756, !303}
!2756 = !DILocation(line: 121, column: 9, scope: !2639)
!2757 = !DILocation(line: 124, column: 1, scope: !2530)
!2758 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1443, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2759 = !DILocalVariable(name: "a", arg: 1, scope: !2758, file: !493, line: 79, type: !49)
!2760 = !DILocation(line: 0, scope: !2758)
!2761 = !DILocalVariable(name: "b", arg: 2, scope: !2758, file: !493, line: 79, type: !49)
!2762 = !DILocalVariable(name: "c", arg: 3, scope: !2758, file: !493, line: 80, type: !18)
!2763 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2758, file: !493, line: 80, type: !45)
!2764 = !DILocalVariable(name: "row_a", arg: 5, scope: !2758, file: !493, line: 80, type: !45)
!2765 = !DILocalVariable(name: "col_b", arg: 6, scope: !2758, file: !493, line: 80, type: !45)
!2766 = !DILocalVariable(name: "i", scope: !2767, file: !493, line: 81, type: !45)
!2767 = distinct !DILexicalBlock(scope: !2758, file: !493, line: 81, column: 5)
!2768 = !DILocation(line: 0, scope: !2767)
!2769 = !DILocation(line: 81, column: 10, scope: !2767)
!2770 = !DILocation(line: 81, scope: !2767)
!2771 = !DILocation(line: 81, column: 23, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !493, line: 81, column: 5)
!2773 = !DILocation(line: 81, column: 5, scope: !2767)
!2774 = !DILocation(line: 82, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !493, line: 82, column: 9)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !493, line: 81, column: 53)
!2777 = !DILocation(line: 82, scope: !2775)
!2778 = !DILocalVariable(name: "j", scope: !2775, file: !493, line: 82, type: !45)
!2779 = !DILocation(line: 0, scope: !2775)
!2780 = !DILocation(line: 83, column: 18, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !493, line: 82, column: 46)
!2782 = distinct !DILexicalBlock(scope: !2775, file: !493, line: 82, column: 9)
!2783 = !DILocation(line: 83, column: 16, scope: !2781)
!2784 = !DILocation(line: 82, column: 41, scope: !2782)
!2785 = !DILocation(line: 82, column: 9, scope: !2782)
!2786 = distinct !{!2786, !2774, !2787, !303}
!2787 = !DILocation(line: 84, column: 9, scope: !2775)
!2788 = !DILocation(line: 81, column: 32, scope: !2772)
!2789 = !DILocation(line: 81, column: 39, scope: !2772)
!2790 = !DILocation(line: 81, column: 5, scope: !2772)
!2791 = distinct !{!2791, !2773, !2792, !303}
!2792 = !DILocation(line: 85, column: 5, scope: !2767)
!2793 = !DILocation(line: 86, column: 1, scope: !2758)
!2794 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1542, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2795 = !DILocalVariable(name: "a", arg: 1, scope: !2794, file: !493, line: 48, type: !14)
!2796 = !DILocation(line: 0, scope: !2794)
!2797 = !DILocalVariable(name: "b", arg: 2, scope: !2794, file: !493, line: 48, type: !14)
!2798 = !DILocation(line: 49, column: 14, scope: !2794)
!2799 = !DILocation(line: 49, column: 5, scope: !2794)
!2800 = distinct !DISubprogram(name: "EF", scope: !2801, file: !2801, line: 60, type: !2802, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2801 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !18, !45, !45}
!2804 = !DILocalVariable(name: "A", arg: 1, scope: !2800, file: !2801, line: 60, type: !18)
!2805 = !DILocation(line: 0, scope: !2800)
!2806 = !DILocalVariable(name: "nrows", arg: 2, scope: !2800, file: !2801, line: 60, type: !45)
!2807 = !DILocalVariable(name: "ncols", arg: 3, scope: !2800, file: !2801, line: 60, type: !45)
!2808 = !DILocalVariable(name: "_pivot_row", scope: !2800, file: !2801, line: 62, type: !2809, align: 256)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !2810)
!2810 = !{!2811}
!2811 = !DISubrange(count: 10)
!2812 = !DILocation(line: 62, column: 27, scope: !2800)
!2813 = !DILocalVariable(name: "_pivot_row2", scope: !2800, file: !2801, line: 63, type: !2809, align: 256)
!2814 = !DILocation(line: 63, column: 27, scope: !2800)
!2815 = !DILocalVariable(name: "packed_A", scope: !2800, file: !2801, line: 64, type: !2816, align: 256)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 90880, elements: !2817)
!2817 = !{!2818}
!2818 = !DISubrange(count: 1420)
!2819 = !DILocation(line: 64, column: 27, scope: !2800)
!2820 = !DILocation(line: 66, column: 26, scope: !2800)
!2821 = !DILocation(line: 66, column: 32, scope: !2800)
!2822 = !DILocalVariable(name: "row_len", scope: !2800, file: !2801, line: 66, type: !45)
!2823 = !DILocalVariable(name: "i", scope: !2824, file: !2801, line: 69, type: !45)
!2824 = distinct !DILexicalBlock(scope: !2800, file: !2801, line: 69, column: 5)
!2825 = !DILocation(line: 0, scope: !2824)
!2826 = !DILocation(line: 69, column: 10, scope: !2824)
!2827 = !DILocation(line: 69, scope: !2824)
!2828 = !DILocation(line: 69, column: 23, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !2801, line: 69, column: 5)
!2830 = !DILocation(line: 69, column: 5, scope: !2824)
!2831 = !DILocation(line: 77, column: 5, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2800, file: !2801, line: 77, column: 5)
!2833 = !DILocation(line: 70, column: 29, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !2801, line: 69, column: 37)
!2835 = !DILocation(line: 70, column: 25, scope: !2834)
!2836 = !DILocation(line: 70, column: 51, scope: !2834)
!2837 = !DILocation(line: 70, column: 47, scope: !2834)
!2838 = !DILocation(line: 70, column: 9, scope: !2834)
!2839 = !DILocation(line: 69, column: 33, scope: !2829)
!2840 = !DILocation(line: 69, column: 5, scope: !2829)
!2841 = distinct !{!2841, !2830, !2842, !303}
!2842 = !DILocation(line: 71, column: 5, scope: !2824)
!2843 = !DILocation(line: 77, scope: !2832)
!2844 = !DILocalVariable(name: "pivot_row", scope: !2800, file: !2801, line: 76, type: !45)
!2845 = !DILocalVariable(name: "pivot_col", scope: !2832, file: !2801, line: 77, type: !45)
!2846 = !DILocation(line: 0, scope: !2832)
!2847 = !DILocation(line: 77, column: 39, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2832, file: !2801, line: 77, column: 5)
!2849 = !DILocation(line: 138, column: 5, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2800, file: !2801, line: 138, column: 5)
!2851 = !DILocation(line: 79, column: 37, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !2801, line: 77, column: 61)
!2853 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2852, file: !2801, line: 79, type: !45)
!2854 = !DILocation(line: 0, scope: !2852)
!2855 = !DILocation(line: 80, column: 37, scope: !2852)
!2856 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2852, file: !2801, line: 80, type: !45)
!2857 = !DILocalVariable(name: "i", scope: !2858, file: !2801, line: 85, type: !45)
!2858 = distinct !DILexicalBlock(scope: !2852, file: !2801, line: 85, column: 9)
!2859 = !DILocation(line: 0, scope: !2858)
!2860 = !DILocation(line: 85, column: 14, scope: !2858)
!2861 = !DILocation(line: 85, scope: !2858)
!2862 = !DILocation(line: 85, column: 27, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !2801, line: 85, column: 9)
!2864 = !DILocation(line: 85, column: 9, scope: !2858)
!2865 = !DILocation(line: 93, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2852, file: !2801, line: 93, column: 9)
!2867 = !DILocation(line: 86, column: 13, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2863, file: !2801, line: 85, column: 43)
!2869 = !DILocation(line: 86, column: 27, scope: !2868)
!2870 = !DILocation(line: 87, column: 13, scope: !2868)
!2871 = !DILocation(line: 87, column: 28, scope: !2868)
!2872 = !DILocation(line: 85, column: 39, scope: !2863)
!2873 = !DILocation(line: 85, column: 9, scope: !2863)
!2874 = distinct !{!2874, !2864, !2875, !303}
!2875 = !DILocation(line: 88, column: 9, scope: !2858)
!2876 = !DILocation(line: 0, scope: !2866)
!2877 = !DILocalVariable(name: "row", scope: !2866, file: !2801, line: 93, type: !45)
!2878 = !DILocalVariable(name: "pivot", scope: !2852, file: !2801, line: 91, type: !14)
!2879 = !DILocalVariable(name: "pivot_is_zero", scope: !2852, file: !2801, line: 92, type: !6)
!2880 = !DILocation(line: 94, column: 24, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2866, file: !2801, line: 93, column: 9)
!2882 = !DILocation(line: 94, column: 21, scope: !2881)
!2883 = !DILocation(line: 96, column: 38, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !2801, line: 94, column: 80)
!2885 = !DILocation(line: 96, column: 37, scope: !2884)
!2886 = !DILocalVariable(name: "is_pivot_row", scope: !2884, file: !2801, line: 96, type: !6)
!2887 = !DILocation(line: 0, scope: !2884)
!2888 = !DILocation(line: 97, column: 40, scope: !2884)
!2889 = !DILocalVariable(name: "below_pivot_row", scope: !2884, file: !2801, line: 97, type: !6)
!2890 = !DILocalVariable(name: "j", scope: !2891, file: !2801, line: 99, type: !45)
!2891 = distinct !DILexicalBlock(scope: !2884, file: !2801, line: 99, column: 13)
!2892 = !DILocation(line: 0, scope: !2891)
!2893 = !DILocation(line: 99, column: 18, scope: !2891)
!2894 = !DILocation(line: 99, scope: !2891)
!2895 = !DILocation(line: 99, column: 31, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2891, file: !2801, line: 99, column: 13)
!2897 = !DILocation(line: 99, column: 13, scope: !2891)
!2898 = !DILocation(line: 100, column: 67, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !2801, line: 99, column: 47)
!2900 = !DILocation(line: 100, column: 48, scope: !2899)
!2901 = !DILocation(line: 101, column: 47, scope: !2899)
!2902 = !DILocation(line: 101, column: 57, scope: !2899)
!2903 = !DILocation(line: 101, column: 34, scope: !2899)
!2904 = !DILocation(line: 100, column: 85, scope: !2899)
!2905 = !DILocation(line: 100, column: 17, scope: !2899)
!2906 = !DILocation(line: 100, column: 31, scope: !2899)
!2907 = !DILocation(line: 99, column: 43, scope: !2896)
!2908 = !DILocation(line: 99, column: 13, scope: !2896)
!2909 = distinct !{!2909, !2897, !2910, !303}
!2910 = !DILocation(line: 102, column: 13, scope: !2891)
!2911 = !DILocation(line: 103, column: 21, scope: !2884)
!2912 = !DILocation(line: 104, column: 44, scope: !2884)
!2913 = !DILocation(line: 104, column: 30, scope: !2884)
!2914 = !DILocation(line: 104, column: 29, scope: !2884)
!2915 = !DILocation(line: 94, column: 76, scope: !2881)
!2916 = !DILocation(line: 93, column: 9, scope: !2881)
!2917 = distinct !{!2917, !2865, !2918, !303}
!2918 = !DILocation(line: 105, column: 9, scope: !2866)
!2919 = !DILocation(line: 108, column: 19, scope: !2852)
!2920 = !DILocalVariable(name: "inverse", scope: !2800, file: !2801, line: 75, type: !14)
!2921 = !DILocation(line: 109, column: 9, scope: !2852)
!2922 = !DILocalVariable(name: "row", scope: !2923, file: !2801, line: 113, type: !45)
!2923 = distinct !DILexicalBlock(scope: !2852, file: !2801, line: 113, column: 9)
!2924 = !DILocation(line: 0, scope: !2923)
!2925 = !DILocation(line: 113, column: 14, scope: !2923)
!2926 = !DILocation(line: 113, scope: !2923)
!2927 = !DILocation(line: 113, column: 51, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !2801, line: 113, column: 9)
!2929 = !DILocation(line: 113, column: 9, scope: !2923)
!2930 = !DILocation(line: 124, column: 9, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2852, file: !2801, line: 124, column: 9)
!2932 = !DILocation(line: 114, column: 33, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2928, file: !2801, line: 113, column: 84)
!2934 = !DILocation(line: 114, column: 63, scope: !2933)
!2935 = !DILocalVariable(name: "do_copy", scope: !2933, file: !2801, line: 114, type: !6)
!2936 = !DILocation(line: 0, scope: !2933)
!2937 = !DILocalVariable(name: "do_not_copy", scope: !2933, file: !2801, line: 115, type: !6)
!2938 = !DILocalVariable(name: "col", scope: !2939, file: !2801, line: 116, type: !45)
!2939 = distinct !DILexicalBlock(scope: !2933, file: !2801, line: 116, column: 13)
!2940 = !DILocation(line: 0, scope: !2939)
!2941 = !DILocation(line: 116, column: 18, scope: !2939)
!2942 = !DILocation(line: 116, scope: !2939)
!2943 = !DILocation(line: 116, column: 35, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2939, file: !2801, line: 116, column: 13)
!2945 = !DILocation(line: 116, column: 13, scope: !2939)
!2946 = !DILocation(line: 118, column: 49, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2944, file: !2801, line: 116, column: 53)
!2948 = !DILocation(line: 118, column: 59, scope: !2947)
!2949 = !DILocation(line: 118, column: 36, scope: !2947)
!2950 = !DILocation(line: 118, column: 34, scope: !2947)
!2951 = !DILocation(line: 119, column: 32, scope: !2947)
!2952 = !DILocation(line: 119, column: 30, scope: !2947)
!2953 = !DILocation(line: 118, column: 67, scope: !2947)
!2954 = !DILocation(line: 117, column: 30, scope: !2947)
!2955 = !DILocation(line: 117, column: 40, scope: !2947)
!2956 = !DILocation(line: 117, column: 17, scope: !2947)
!2957 = !DILocation(line: 117, column: 47, scope: !2947)
!2958 = !DILocation(line: 116, column: 49, scope: !2944)
!2959 = !DILocation(line: 116, column: 13, scope: !2944)
!2960 = distinct !{!2960, !2945, !2961, !303}
!2961 = !DILocation(line: 120, column: 13, scope: !2939)
!2962 = !DILocation(line: 113, column: 80, scope: !2928)
!2963 = !DILocation(line: 113, column: 9, scope: !2928)
!2964 = distinct !{!2964, !2929, !2965, !303}
!2965 = !DILocation(line: 121, column: 9, scope: !2923)
!2966 = !DILocation(line: 124, scope: !2931)
!2967 = !DILocalVariable(name: "row", scope: !2931, file: !2801, line: 124, type: !45)
!2968 = !DILocation(line: 0, scope: !2931)
!2969 = !DILocation(line: 124, column: 51, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2931, file: !2801, line: 124, column: 9)
!2971 = !DILocation(line: 125, column: 46, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2970, file: !2801, line: 124, column: 67)
!2973 = !DILocalVariable(name: "below_pivot", scope: !2972, file: !2801, line: 125, type: !14)
!2974 = !DILocation(line: 0, scope: !2972)
!2975 = !DILocation(line: 126, column: 74, scope: !2972)
!2976 = !DILocation(line: 126, column: 68, scope: !2972)
!2977 = !DILocation(line: 126, column: 41, scope: !2972)
!2978 = !DILocalVariable(name: "elt_to_elim", scope: !2972, file: !2801, line: 126, type: !14)
!2979 = !DILocation(line: 128, column: 63, scope: !2972)
!2980 = !DILocation(line: 129, column: 52, scope: !2972)
!2981 = !DILocation(line: 129, column: 46, scope: !2972)
!2982 = !DILocation(line: 128, column: 13, scope: !2972)
!2983 = !DILocation(line: 124, column: 63, scope: !2970)
!2984 = !DILocation(line: 124, column: 9, scope: !2970)
!2985 = distinct !{!2985, !2930, !2986, !303}
!2986 = !DILocation(line: 130, column: 9, scope: !2931)
!2987 = !DILocation(line: 132, column: 19, scope: !2852)
!2988 = !DILocation(line: 77, column: 57, scope: !2848)
!2989 = !DILocation(line: 77, column: 5, scope: !2848)
!2990 = distinct !{!2990, !2831, !2991, !303}
!2991 = !DILocation(line: 133, column: 5, scope: !2832)
!2992 = !DILocation(line: 138, scope: !2850)
!2993 = !DILocalVariable(name: "i", scope: !2850, file: !2801, line: 138, type: !45)
!2994 = !DILocation(line: 0, scope: !2850)
!2995 = !DILocation(line: 138, column: 23, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2850, file: !2801, line: 138, column: 5)
!2997 = !DILocation(line: 139, column: 47, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2996, file: !2801, line: 138, column: 37)
!2999 = !DILocation(line: 139, column: 43, scope: !2998)
!3000 = !DILocation(line: 139, column: 9, scope: !2998)
!3001 = !DILocalVariable(name: "j", scope: !3002, file: !2801, line: 140, type: !45)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !2801, line: 140, column: 9)
!3003 = !DILocation(line: 0, scope: !3002)
!3004 = !DILocation(line: 140, column: 14, scope: !3002)
!3005 = !DILocation(line: 140, scope: !3002)
!3006 = !DILocation(line: 140, column: 27, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3002, file: !2801, line: 140, column: 9)
!3008 = !DILocation(line: 140, column: 9, scope: !3002)
!3009 = !DILocation(line: 141, column: 32, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3007, file: !2801, line: 140, column: 41)
!3011 = !DILocation(line: 141, column: 17, scope: !3010)
!3012 = !DILocation(line: 141, column: 13, scope: !3010)
!3013 = !DILocation(line: 141, column: 30, scope: !3010)
!3014 = !DILocation(line: 140, column: 37, scope: !3007)
!3015 = !DILocation(line: 140, column: 9, scope: !3007)
!3016 = distinct !{!3016, !3008, !3017, !303}
!3017 = !DILocation(line: 142, column: 9, scope: !3002)
!3018 = !DILocation(line: 138, column: 33, scope: !2996)
!3019 = !DILocation(line: 138, column: 5, scope: !2996)
!3020 = distinct !{!3020, !2849, !3021, !303}
!3021 = !DILocation(line: 143, column: 5, scope: !2850)
!3022 = !DILocation(line: 145, column: 5, scope: !2800)
!3023 = !DILocation(line: 146, column: 5, scope: !2800)
!3024 = !DILocation(line: 147, column: 5, scope: !2800)
!3025 = !DILocation(line: 148, column: 5, scope: !2800)
!3026 = !DILocation(line: 149, column: 1, scope: !2800)
!3027 = distinct !DISubprogram(name: "ct_compare_8", scope: !3028, file: !3028, line: 51, type: !1542, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3028 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3029 = !DILocalVariable(name: "a", arg: 1, scope: !3027, file: !3028, line: 51, type: !14)
!3030 = !DILocation(line: 0, scope: !3027)
!3031 = !DILocalVariable(name: "b", arg: 2, scope: !3027, file: !3028, line: 51, type: !14)
!3032 = !DILocation(line: 52, column: 42, scope: !3027)
!3033 = !DILocation(line: 52, column: 13, scope: !3027)
!3034 = !DILocation(line: 52, column: 71, scope: !3027)
!3035 = !DILocation(line: 52, column: 69, scope: !3027)
!3036 = !DILocation(line: 52, column: 5, scope: !3027)
!3037 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !3038, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!6, !14, !6}
!3040 = !DILocalVariable(name: "a", arg: 1, scope: !3037, file: !493, line: 28, type: !14)
!3041 = !DILocation(line: 0, scope: !3037)
!3042 = !DILocalVariable(name: "b", arg: 2, scope: !3037, file: !493, line: 28, type: !6)
!3043 = !DILocation(line: 31, column: 13, scope: !3037)
!3044 = !DILocation(line: 31, column: 10, scope: !3037)
!3045 = !DILocation(line: 31, column: 17, scope: !3037)
!3046 = !DILocalVariable(name: "p", scope: !3037, file: !493, line: 30, type: !6)
!3047 = !DILocation(line: 32, column: 13, scope: !3037)
!3048 = !DILocation(line: 32, column: 10, scope: !3037)
!3049 = !DILocation(line: 32, column: 17, scope: !3037)
!3050 = !DILocation(line: 32, column: 7, scope: !3037)
!3051 = !DILocation(line: 33, column: 13, scope: !3037)
!3052 = !DILocation(line: 33, column: 10, scope: !3037)
!3053 = !DILocation(line: 33, column: 17, scope: !3037)
!3054 = !DILocation(line: 33, column: 7, scope: !3037)
!3055 = !DILocation(line: 34, column: 13, scope: !3037)
!3056 = !DILocation(line: 34, column: 10, scope: !3037)
!3057 = !DILocation(line: 34, column: 17, scope: !3037)
!3058 = !DILocation(line: 34, column: 7, scope: !3037)
!3059 = !DILocalVariable(name: "top_p", scope: !3037, file: !493, line: 37, type: !6)
!3060 = !DILocation(line: 38, column: 32, scope: !3037)
!3061 = !DILocation(line: 38, column: 47, scope: !3037)
!3062 = !DILocation(line: 38, column: 38, scope: !3037)
!3063 = !DILocation(line: 38, column: 54, scope: !3037)
!3064 = !DILocalVariable(name: "out", scope: !3037, file: !493, line: 38, type: !6)
!3065 = !DILocation(line: 39, column: 5, scope: !3037)
!3066 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2801, file: !2801, line: 24, type: !3067, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !49, !5, !45}
!3069 = !DILocalVariable(name: "in", arg: 1, scope: !3066, file: !2801, line: 24, type: !49)
!3070 = !DILocation(line: 0, scope: !3066)
!3071 = !DILocalVariable(name: "out", arg: 2, scope: !3066, file: !2801, line: 24, type: !5)
!3072 = !DILocalVariable(name: "ncols", arg: 3, scope: !3066, file: !2801, line: 24, type: !45)
!3073 = !DILocalVariable(name: "out8", scope: !3066, file: !2801, line: 26, type: !18)
!3074 = !DILocalVariable(name: "i", scope: !3066, file: !2801, line: 25, type: !45)
!3075 = !DILocation(line: 27, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3066, file: !2801, line: 27, column: 5)
!3077 = !DILocation(line: 27, scope: !3076)
!3078 = !DILocation(line: 27, column: 17, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3076, file: !2801, line: 27, column: 5)
!3080 = !DILocation(line: 27, column: 20, scope: !3079)
!3081 = !DILocation(line: 27, column: 5, scope: !3076)
!3082 = !DILocation(line: 31, column: 23, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !2801, line: 27, column: 36)
!3084 = !DILocation(line: 31, column: 44, scope: !3083)
!3085 = !DILocation(line: 31, column: 40, scope: !3083)
!3086 = !DILocation(line: 31, column: 48, scope: !3083)
!3087 = !DILocation(line: 31, column: 37, scope: !3083)
!3088 = !DILocation(line: 31, column: 15, scope: !3083)
!3089 = !DILocation(line: 31, column: 9, scope: !3083)
!3090 = !DILocation(line: 31, column: 20, scope: !3083)
!3091 = !DILocation(line: 27, column: 31, scope: !3079)
!3092 = !DILocation(line: 27, column: 5, scope: !3079)
!3093 = distinct !{!3093, !3081, !3094, !303}
!3094 = !DILocation(line: 33, column: 5, scope: !3076)
!3095 = !DILocation(line: 34, column: 19, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3066, file: !2801, line: 34, column: 9)
!3097 = !DILocation(line: 38, column: 23, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3096, file: !2801, line: 34, column: 24)
!3099 = !DILocation(line: 38, column: 15, scope: !3098)
!3100 = !DILocation(line: 38, column: 9, scope: !3098)
!3101 = !DILocation(line: 38, column: 20, scope: !3098)
!3102 = !DILocation(line: 40, column: 5, scope: !3098)
!3103 = !DILocation(line: 41, column: 1, scope: !3066)
!3104 = distinct !DISubprogram(name: "ct_compare_64", scope: !3028, file: !3028, line: 46, type: !3105, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!6, !45, !45}
!3107 = !DILocalVariable(name: "a", arg: 1, scope: !3104, file: !3028, line: 46, type: !45)
!3108 = !DILocation(line: 0, scope: !3104)
!3109 = !DILocalVariable(name: "b", arg: 2, scope: !3104, file: !3028, line: 46, type: !45)
!3110 = !DILocation(line: 47, column: 38, scope: !3104)
!3111 = !DILocation(line: 47, column: 44, scope: !3104)
!3112 = !DILocation(line: 47, column: 73, scope: !3104)
!3113 = !DILocation(line: 47, column: 71, scope: !3104)
!3114 = !DILocation(line: 47, column: 5, scope: !3104)
!3115 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3028, file: !3028, line: 35, type: !3105, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3116 = !DILocalVariable(name: "a", arg: 1, scope: !3115, file: !3028, line: 35, type: !45)
!3117 = !DILocation(line: 0, scope: !3115)
!3118 = !DILocalVariable(name: "b", arg: 2, scope: !3115, file: !3028, line: 35, type: !45)
!3119 = !DILocalVariable(name: "diff", scope: !3115, file: !3028, line: 36, type: !46)
!3120 = !DILocation(line: 37, column: 30, scope: !3115)
!3121 = !DILocation(line: 37, column: 59, scope: !3115)
!3122 = !DILocation(line: 37, column: 57, scope: !3115)
!3123 = !DILocation(line: 37, column: 5, scope: !3115)
!3124 = distinct !DISubprogram(name: "m_extract_element", scope: !2801, file: !2801, line: 16, type: !3125, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!14, !326, !45}
!3127 = !DILocalVariable(name: "in", arg: 1, scope: !3124, file: !2801, line: 16, type: !326)
!3128 = !DILocation(line: 0, scope: !3124)
!3129 = !DILocalVariable(name: "index", arg: 2, scope: !3124, file: !2801, line: 16, type: !45)
!3130 = !DILocation(line: 17, column: 27, scope: !3124)
!3131 = !DILocalVariable(name: "leg", scope: !3124, file: !2801, line: 17, type: !239)
!3132 = !DILocation(line: 18, column: 30, scope: !3124)
!3133 = !DILocalVariable(name: "offset", scope: !3124, file: !2801, line: 18, type: !239)
!3134 = !DILocation(line: 20, column: 13, scope: !3124)
!3135 = !DILocation(line: 20, column: 31, scope: !3124)
!3136 = !DILocation(line: 20, column: 21, scope: !3124)
!3137 = !DILocation(line: 20, column: 12, scope: !3124)
!3138 = !DILocation(line: 20, column: 5, scope: !3124)
!3139 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3140, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!14, !14}
!3142 = !DILocalVariable(name: "a", arg: 1, scope: !3139, file: !493, line: 57, type: !14)
!3143 = !DILocation(line: 0, scope: !3139)
!3144 = !DILocation(line: 61, column: 24, scope: !3139)
!3145 = !DILocalVariable(name: "a2", scope: !3139, file: !493, line: 61, type: !14)
!3146 = !DILocation(line: 62, column: 24, scope: !3139)
!3147 = !DILocalVariable(name: "a4", scope: !3139, file: !493, line: 62, type: !14)
!3148 = !DILocation(line: 63, column: 24, scope: !3139)
!3149 = !DILocalVariable(name: "a8", scope: !3139, file: !493, line: 63, type: !14)
!3150 = !DILocation(line: 64, column: 24, scope: !3139)
!3151 = !DILocalVariable(name: "a6", scope: !3139, file: !493, line: 64, type: !14)
!3152 = !DILocation(line: 65, column: 25, scope: !3139)
!3153 = !DILocalVariable(name: "a14", scope: !3139, file: !493, line: 65, type: !14)
!3154 = !DILocation(line: 67, column: 5, scope: !3139)
!3155 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3028, file: !3028, line: 94, type: !3156, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !239, !326, !14, !5}
!3158 = !DILocalVariable(name: "legs", arg: 1, scope: !3155, file: !3028, line: 94, type: !239)
!3159 = !DILocation(line: 0, scope: !3155)
!3160 = !DILocalVariable(name: "in", arg: 2, scope: !3155, file: !3028, line: 94, type: !326)
!3161 = !DILocalVariable(name: "a", arg: 3, scope: !3155, file: !3028, line: 94, type: !14)
!3162 = !DILocalVariable(name: "acc", arg: 4, scope: !3155, file: !3028, line: 94, type: !5)
!3163 = !DILocation(line: 95, column: 20, scope: !3155)
!3164 = !DILocalVariable(name: "tab", scope: !3155, file: !3028, line: 95, type: !19)
!3165 = !DILocalVariable(name: "lsb_ask", scope: !3155, file: !3028, line: 97, type: !6)
!3166 = !DILocalVariable(name: "i", scope: !3167, file: !3028, line: 99, type: !45)
!3167 = distinct !DILexicalBlock(scope: !3155, file: !3028, line: 99, column: 5)
!3168 = !DILocation(line: 0, scope: !3167)
!3169 = !DILocation(line: 99, column: 9, scope: !3167)
!3170 = !DILocation(line: 99, scope: !3167)
!3171 = !DILocation(line: 99, column: 20, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3167, file: !3028, line: 99, column: 5)
!3173 = !DILocation(line: 99, column: 5, scope: !3167)
!3174 = !DILocation(line: 100, column: 21, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !3028, line: 99, column: 32)
!3176 = !DILocation(line: 100, column: 33, scope: !3175)
!3177 = !DILocation(line: 100, column: 51, scope: !3175)
!3178 = !DILocation(line: 100, column: 46, scope: !3175)
!3179 = !DILocation(line: 100, column: 44, scope: !3175)
!3180 = !DILocation(line: 101, column: 27, scope: !3175)
!3181 = !DILocation(line: 101, column: 33, scope: !3175)
!3182 = !DILocation(line: 101, column: 52, scope: !3175)
!3183 = !DILocation(line: 101, column: 59, scope: !3175)
!3184 = !DILocation(line: 101, column: 46, scope: !3175)
!3185 = !DILocation(line: 101, column: 44, scope: !3175)
!3186 = !DILocation(line: 101, column: 17, scope: !3175)
!3187 = !DILocation(line: 102, column: 21, scope: !3175)
!3188 = !DILocation(line: 102, column: 27, scope: !3175)
!3189 = !DILocation(line: 102, column: 33, scope: !3175)
!3190 = !DILocation(line: 102, column: 52, scope: !3175)
!3191 = !DILocation(line: 102, column: 59, scope: !3175)
!3192 = !DILocation(line: 102, column: 46, scope: !3175)
!3193 = !DILocation(line: 102, column: 44, scope: !3175)
!3194 = !DILocation(line: 102, column: 17, scope: !3175)
!3195 = !DILocation(line: 103, column: 21, scope: !3175)
!3196 = !DILocation(line: 103, column: 27, scope: !3175)
!3197 = !DILocation(line: 103, column: 33, scope: !3175)
!3198 = !DILocation(line: 103, column: 52, scope: !3175)
!3199 = !DILocation(line: 103, column: 59, scope: !3175)
!3200 = !DILocation(line: 103, column: 46, scope: !3175)
!3201 = !DILocation(line: 103, column: 44, scope: !3175)
!3202 = !DILocation(line: 103, column: 17, scope: !3175)
!3203 = !DILocation(line: 100, column: 9, scope: !3175)
!3204 = !DILocation(line: 100, column: 16, scope: !3175)
!3205 = !DILocation(line: 99, column: 29, scope: !3172)
!3206 = !DILocation(line: 99, column: 5, scope: !3172)
!3207 = distinct !{!3207, !3173, !3208, !303}
!3208 = !DILocation(line: 104, column: 5, scope: !3167)
!3209 = !DILocation(line: 105, column: 1, scope: !3155)
!3210 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2801, file: !2801, line: 44, type: !3211, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !45, !326, !18}
!3213 = !DILocalVariable(name: "legs", arg: 1, scope: !3210, file: !2801, line: 44, type: !45)
!3214 = !DILocation(line: 0, scope: !3210)
!3215 = !DILocalVariable(name: "in", arg: 2, scope: !3210, file: !2801, line: 44, type: !326)
!3216 = !DILocalVariable(name: "out", arg: 3, scope: !3210, file: !2801, line: 44, type: !18)
!3217 = !DILocalVariable(name: "in8", scope: !3210, file: !2801, line: 45, type: !49)
!3218 = !DILocalVariable(name: "i", scope: !3219, file: !2801, line: 46, type: !45)
!3219 = distinct !DILexicalBlock(scope: !3210, file: !2801, line: 46, column: 5)
!3220 = !DILocation(line: 0, scope: !3219)
!3221 = !DILocation(line: 46, column: 9, scope: !3219)
!3222 = !DILocation(line: 46, scope: !3219)
!3223 = !DILocation(line: 46, column: 29, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !2801, line: 46, column: 5)
!3225 = !DILocation(line: 46, column: 22, scope: !3224)
!3226 = !DILocation(line: 46, column: 5, scope: !3219)
!3227 = !DILocation(line: 51, column: 26, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3224, file: !2801, line: 46, column: 42)
!3229 = !DILocation(line: 51, column: 21, scope: !3228)
!3230 = !DILocation(line: 51, column: 31, scope: !3228)
!3231 = !DILocation(line: 51, column: 9, scope: !3228)
!3232 = !DILocation(line: 51, column: 18, scope: !3228)
!3233 = !DILocation(line: 52, column: 26, scope: !3228)
!3234 = !DILocation(line: 52, column: 21, scope: !3228)
!3235 = !DILocation(line: 52, column: 30, scope: !3228)
!3236 = !DILocation(line: 52, column: 14, scope: !3228)
!3237 = !DILocation(line: 52, column: 9, scope: !3228)
!3238 = !DILocation(line: 52, column: 18, scope: !3228)
!3239 = !DILocation(line: 46, column: 37, scope: !3224)
!3240 = !DILocation(line: 46, column: 5, scope: !3224)
!3241 = distinct !{!3241, !3226, !3242, !303}
!3242 = !DILocation(line: 54, column: 5, scope: !3219)
!3243 = !DILocation(line: 55, column: 1, scope: !3210)
!3244 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3245 = !DILocalVariable(name: "b", arg: 1, scope: !3244, file: !493, line: 129, type: !12)
!3246 = !DILocation(line: 0, scope: !3244)
!3247 = !DILocation(line: 130, column: 19, scope: !3244)
!3248 = !DILocation(line: 130, column: 33, scope: !3244)
!3249 = !DILocalVariable(name: "x", scope: !3244, file: !493, line: 130, type: !19)
!3250 = !DILocalVariable(name: "high_nibble_mask", scope: !3244, file: !493, line: 132, type: !19)
!3251 = !DILocation(line: 134, column: 28, scope: !3244)
!3252 = !DILocalVariable(name: "high_half", scope: !3244, file: !493, line: 134, type: !19)
!3253 = !DILocation(line: 135, column: 28, scope: !3244)
!3254 = !DILocation(line: 135, column: 47, scope: !3244)
!3255 = !DILocation(line: 135, column: 34, scope: !3244)
!3256 = !DILocation(line: 135, column: 5, scope: !3244)
!3257 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1542, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3258 = !DILocalVariable(name: "a", arg: 1, scope: !3257, file: !493, line: 9, type: !14)
!3259 = !DILocation(line: 0, scope: !3257)
!3260 = !DILocalVariable(name: "b", arg: 2, scope: !3257, file: !493, line: 9, type: !14)
!3261 = !DILocation(line: 14, column: 10, scope: !3257)
!3262 = !DILocation(line: 14, column: 7, scope: !3257)
!3263 = !DILocation(line: 17, column: 17, scope: !3257)
!3264 = !DILocalVariable(name: "p", scope: !3257, file: !493, line: 11, type: !14)
!3265 = !DILocation(line: 18, column: 13, scope: !3257)
!3266 = !DILocation(line: 18, column: 17, scope: !3257)
!3267 = !DILocation(line: 18, column: 7, scope: !3257)
!3268 = !DILocation(line: 19, column: 13, scope: !3257)
!3269 = !DILocation(line: 19, column: 17, scope: !3257)
!3270 = !DILocation(line: 19, column: 7, scope: !3257)
!3271 = !DILocation(line: 20, column: 13, scope: !3257)
!3272 = !DILocation(line: 20, column: 17, scope: !3257)
!3273 = !DILocation(line: 20, column: 7, scope: !3257)
!3274 = !DILocalVariable(name: "top_p", scope: !3257, file: !493, line: 23, type: !14)
!3275 = !DILocation(line: 24, column: 37, scope: !3257)
!3276 = !DILocation(line: 24, column: 52, scope: !3257)
!3277 = !DILocation(line: 24, column: 43, scope: !3257)
!3278 = !DILocation(line: 24, column: 59, scope: !3257)
!3279 = !DILocalVariable(name: "out", scope: !3257, file: !493, line: 24, type: !14)
!3280 = !DILocation(line: 25, column: 5, scope: !3257)
!3281 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1550, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3282 = !DILocalVariable(name: "a", arg: 1, scope: !3281, file: !493, line: 70, type: !49)
!3283 = !DILocation(line: 0, scope: !3281)
!3284 = !DILocalVariable(name: "b", arg: 2, scope: !3281, file: !493, line: 71, type: !49)
!3285 = !DILocalVariable(name: "n", arg: 3, scope: !3281, file: !493, line: 71, type: !45)
!3286 = !DILocalVariable(name: "m", arg: 4, scope: !3281, file: !493, line: 71, type: !45)
!3287 = !DILocalVariable(name: "ret", scope: !3281, file: !493, line: 72, type: !14)
!3288 = !DILocalVariable(name: "i", scope: !3289, file: !493, line: 73, type: !45)
!3289 = distinct !DILexicalBlock(scope: !3281, file: !493, line: 73, column: 5)
!3290 = !DILocation(line: 0, scope: !3289)
!3291 = !DILocation(line: 73, column: 10, scope: !3289)
!3292 = !DILocation(line: 73, scope: !3289)
!3293 = !DILocation(line: 73, column: 23, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3289, file: !493, line: 73, column: 5)
!3295 = !DILocation(line: 73, column: 5, scope: !3289)
!3296 = !DILocation(line: 74, column: 27, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !493, line: 73, column: 41)
!3298 = !DILocation(line: 74, column: 33, scope: !3297)
!3299 = !DILocation(line: 74, column: 21, scope: !3297)
!3300 = !DILocation(line: 74, column: 15, scope: !3297)
!3301 = !DILocation(line: 73, column: 28, scope: !3294)
!3302 = !DILocation(line: 73, column: 35, scope: !3294)
!3303 = !DILocation(line: 73, column: 5, scope: !3294)
!3304 = distinct !{!3304, !3295, !3305, !303}
!3305 = !DILocation(line: 75, column: 5, scope: !3289)
!3306 = !DILocation(line: 76, column: 5, scope: !3281)
!3307 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1542, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3308 = !DILocalVariable(name: "a", arg: 1, scope: !3307, file: !493, line: 43, type: !14)
!3309 = !DILocation(line: 0, scope: !3307)
!3310 = !DILocalVariable(name: "b", arg: 2, scope: !3307, file: !493, line: 43, type: !14)
!3311 = !DILocation(line: 44, column: 14, scope: !3307)
!3312 = !DILocation(line: 44, column: 5, scope: !3307)
