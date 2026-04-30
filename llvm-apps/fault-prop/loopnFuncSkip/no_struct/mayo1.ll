; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\01\01\00", align 1, !dbg !0
@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60

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
  %epk = alloca [18705 x i64], align 8
  %esk = alloca [18603 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !111, !DIExpression(), !112)
    #dbg_value(i32 32, !113, !DIExpression(), !112)
  store i32 32, ptr %msglen, align 4, !dbg !114
    #dbg_value(i32 32, !113, !DIExpression(), !112)
    #dbg_value(i32 486, !115, !DIExpression(), !112)
  store i32 486, ptr %smlen, align 4, !dbg !116
  %call = call dereferenceable_or_null(1420) ptr @calloc(i32 noundef 1420, i32 noundef 1) #7, !dbg !117
    #dbg_value(ptr %call, !118, !DIExpression(), !112)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #7, !dbg !119
    #dbg_value(ptr %call1, !120, !DIExpression(), !112)
    #dbg_declare(ptr %epk, !121, !DIExpression(), !126)
    #dbg_declare(ptr %esk, !127, !DIExpression(), !132)
  %0 = load i32, ptr %msglen, align 4, !dbg !133
    #dbg_value(i32 %0, !113, !DIExpression(), !112)
  %add2 = add i32 %0, 454, !dbg !134
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #7, !dbg !135
    #dbg_value(ptr %call3, !136, !DIExpression(), !112)
    #dbg_declare(ptr %msg, !137, !DIExpression(), !141)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !141
    #dbg_declare(ptr %msg2, !142, !DIExpression(), !143)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !143
  %call4 = call i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %call11 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !149
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %1 = load i32, ptr %msglen, align 4, !dbg !150
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !151
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !152
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !152

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !154
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !155
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
  %call32 = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !162
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !171 {
entry:
    #dbg_value(ptr %p, !202, !DIExpression(), !203)
    #dbg_value(ptr %pk, !204, !DIExpression(), !203)
    #dbg_value(ptr %sk, !205, !DIExpression(), !203)
    #dbg_value(i32 0, !206, !DIExpression(), !203)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !207
    #dbg_value(i32 %call, !206, !DIExpression(), !203)
    #dbg_label(!208, !209)
  ret i32 %call, !dbg !210
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !211 {
entry:
  %S = alloca [328 x i8], align 1
  %P = alloca [18525 x i64], align 8
  %P3 = alloca [320 x i64], align 8
  %O = alloca [624 x i8], align 1
  %P3_upper = alloca [180 x i64], align 8
    #dbg_value(ptr %p, !212, !DIExpression(), !213)
    #dbg_value(ptr %cpk, !214, !DIExpression(), !213)
    #dbg_value(ptr %csk, !215, !DIExpression(), !213)
    #dbg_value(i32 0, !216, !DIExpression(), !213)
    #dbg_value(ptr %csk, !217, !DIExpression(), !213)
    #dbg_declare(ptr %S, !218, !DIExpression(), !222)
    #dbg_declare(ptr %P, !223, !DIExpression(), !227)
    #dbg_declare(ptr %P3, !228, !DIExpression(), !232)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2560) %P3, i8 0, i32 2560, i1 false), !dbg !232
    #dbg_declare(ptr %O, !233, !DIExpression(), !237)
    #dbg_value(i32 5, !238, !DIExpression(), !213)
    #dbg_value(i32 78, !240, !DIExpression(), !213)
    #dbg_value(i32 78, !241, !DIExpression(), !213)
    #dbg_value(i32 8, !242, !DIExpression(), !213)
    #dbg_value(i32 312, !243, !DIExpression(), !213)
    #dbg_value(i32 15405, !244, !DIExpression(), !213)
    #dbg_value(i32 180, !245, !DIExpression(), !213)
    #dbg_value(i32 16, !246, !DIExpression(), !213)
    #dbg_value(i32 24, !247, !DIExpression(), !213)
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 123240, !dbg !249
    #dbg_value(ptr %add.ptr, !250, !DIExpression(), !213)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #8, !dbg !251
  %cmp.not = icmp eq i32 %call, 0, !dbg !253
  br i1 %cmp.not, label %if.end, label %err, !dbg !253

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #8, !dbg !254
    #dbg_value(ptr %S, !255, !DIExpression(), !213)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !256
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 624) #6, !dbg !257
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !258
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !259
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !260
    #dbg_declare(ptr %P3_upper, !261, !DIExpression(), !265)
  call void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 8) #6, !dbg !266
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !267
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 36, i32 noundef 78) #6, !dbg !268
  br label %err, !dbg !268

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !213
    #dbg_value(i32 %ret.0, !216, !DIExpression(), !213)
    #dbg_label(!269, !270)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 624) #8, !dbg !271
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 24960) #8, !dbg !272
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 2560) #8, !dbg !273
  ret i32 %ret.0, !dbg !274
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483567, -2147483648) %mdeclen) unnamed_addr #0 !dbg !275 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 144495, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !319
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3705, i32 noundef 78) #6, !dbg !320
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
    #dbg_value(i32 5, !333, !DIExpression(), !328)
    #dbg_value(i32 78, !334, !DIExpression(), !328)
    #dbg_value(i32 8, !335, !DIExpression(), !328)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !336
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 5, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 78, i32 noundef 8, i32 noundef 8) #6, !dbg !337
  ret void, !dbg !338
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !339 {
entry:
    #dbg_value(ptr %in, !342, !DIExpression(), !343)
    #dbg_value(ptr %out, !344, !DIExpression(), !343)
    #dbg_value(i32 36, !345, !DIExpression(), !343)
    #dbg_value(i32 78, !346, !DIExpression(), !343)
    #dbg_value(i32 5, !347, !DIExpression(), !343)
    #dbg_value(ptr %in, !348, !DIExpression(), !343)
    #dbg_value(i32 0, !349, !DIExpression(), !351)
  br label %for.cond, !dbg !352

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !353
    #dbg_value(i32 %i.0, !349, !DIExpression(), !351)
  %exitcond = icmp ne i32 %i.0, 36, !dbg !354
  br i1 %exitcond, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 39, !dbg !357
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !359
  %mul3 = mul nuw nsw i32 %i.0, 40, !dbg !360
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !361
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 39) #8, !dbg !362
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 5, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 1) #6, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !378 {
entry:
    #dbg_value(i32 5, !381, !DIExpression(), !382)
    #dbg_value(ptr %mat, !383, !DIExpression(), !382)
    #dbg_value(ptr %bs_mat, !384, !DIExpression(), !382)
    #dbg_value(ptr %acc, !385, !DIExpression(), !382)
    #dbg_value(i32 78, !386, !DIExpression(), !382)
    #dbg_value(i32 8, !387, !DIExpression(), !382)
    #dbg_value(i32 8, !388, !DIExpression(), !382)
    #dbg_value(i32 0, !389, !DIExpression(), !391)
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !393
    #dbg_value(i32 %r.0, !389, !DIExpression(), !391)
  %exitcond2 = icmp ne i32 %r.0, 8, !dbg !394
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !396

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !397

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !400
    #dbg_value(i32 %c.0, !401, !DIExpression(), !402)
  %exitcond1 = icmp ne i32 %c.0, 78, !dbg !403
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !397

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !405

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !408
    #dbg_value(i32 %k.0, !409, !DIExpression(), !410)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !411
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !405

for.body6:                                        ; preds = %for.cond4
  %mul = shl nuw nsw i32 %c.0, 3, !dbg !413
  %add = or disjoint i32 %mul, %k.0, !dbg !415
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !416
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !416
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !417
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !418
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !418
  %1 = load i8, ptr %arrayidx, align 1, !dbg !418
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !419
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !420
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !421
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !421
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !422
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
  %exitcond = icmp ne i32 %i.0, 5, !dbg !453
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
    #dbg_value(i32 5, !511, !DIExpression(), !512)
    #dbg_value(ptr %bs_mat, !513, !DIExpression(), !512)
    #dbg_value(ptr %mat, !514, !DIExpression(), !512)
    #dbg_value(ptr %acc, !515, !DIExpression(), !512)
    #dbg_value(i32 78, !516, !DIExpression(), !512)
    #dbg_value(i32 78, !517, !DIExpression(), !512)
    #dbg_value(i32 8, !518, !DIExpression(), !512)
    #dbg_value(i32 1, !519, !DIExpression(), !512)
    #dbg_value(i32 0, !520, !DIExpression(), !512)
    #dbg_value(i32 0, !521, !DIExpression(), !523)
  br label %for.cond, !dbg !524

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 78, %entry ], !dbg !525
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !525
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !526
    #dbg_value(i32 %r.0, !521, !DIExpression(), !523)
    #dbg_value(i32 %bs_mat_entries_used.0, !520, !DIExpression(), !512)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !527
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
  %exitcond = icmp ne i32 %k.0, 8, !dbg !544
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !538

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !546
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !546
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !548
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !549
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !549
  %2 = load i8, ptr %arrayidx, align 1, !dbg !549
  %mul9 = shl nuw nsw i32 %r.0, 3, !dbg !550
  %add10 = or disjoint i32 %mul9, %k.0, !dbg !551
  %add.ptr12.idx = mul nuw nsw i32 %add10, 40, !dbg !552
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !552
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !553
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 36, 3706) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !568 {
entry:
  %tmp = alloca [5 x i64], align 8
    #dbg_value(ptr %in, !571, !DIExpression(), !572)
    #dbg_value(ptr %out, !573, !DIExpression(), !572)
    #dbg_value(i32 %vecs, !574, !DIExpression(), !572)
    #dbg_value(i32 78, !575, !DIExpression(), !572)
    #dbg_value(i32 5, !576, !DIExpression(), !572)
    #dbg_value(ptr %out, !577, !DIExpression(), !572)
    #dbg_declare(ptr %tmp, !578, !DIExpression(), !582)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %tmp, i8 0, i32 40, i1 false), !dbg !582
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
  %div1 = mul nsw i32 %i.0, 39, !dbg !591
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !593
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 39) #8, !dbg !594
  %mul4 = mul nsw i32 %i.0, 40, !dbg !595
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !596
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 40) #8, !dbg !597
    #dbg_value(i32 %i.0, !583, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !585)
  br label %for.cond, !dbg !598, !llvm.loop !599

for.end:                                          ; preds = %for.cond
  ret void, !dbg !601
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !602 {
entry:
  %S = alloca [328 x i8], align 1
    #dbg_value(ptr %p, !605, !DIExpression(), !606)
    #dbg_value(ptr %csk, !607, !DIExpression(), !606)
    #dbg_value(ptr %sk, !608, !DIExpression(), !606)
    #dbg_value(i32 0, !609, !DIExpression(), !606)
    #dbg_declare(ptr %S, !610, !DIExpression(), !611)
    #dbg_value(ptr %sk, !612, !DIExpression(), !606)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !613
    #dbg_value(ptr %add.ptr1, !614, !DIExpression(), !606)
    #dbg_value(i32 8, !615, !DIExpression(), !606)
    #dbg_value(i32 78, !616, !DIExpression(), !606)
    #dbg_value(i32 312, !617, !DIExpression(), !606)
    #dbg_value(i32 16, !618, !DIExpression(), !606)
    #dbg_value(i32 24, !619, !DIExpression(), !606)
    #dbg_value(ptr %csk, !620, !DIExpression(), !606)
    #dbg_value(ptr %S, !621, !DIExpression(), !606)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #8, !dbg !622
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !623
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 624) #6, !dbg !624
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !625
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !626
    #dbg_value(ptr %add.ptr5, !627, !DIExpression(), !606)
    #dbg_value(ptr %sk, !628, !DIExpression(), !606)
    #dbg_value(ptr %add.ptr5, !629, !DIExpression(), !606)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !630
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 328) #8, !dbg !631
  ret i32 0, !dbg !632
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !633 {
entry:
    #dbg_value(ptr %p, !634, !DIExpression(), !635)
    #dbg_value(ptr %P1, !636, !DIExpression(), !635)
    #dbg_value(ptr %O, !637, !DIExpression(), !635)
    #dbg_value(ptr %acc, !638, !DIExpression(), !635)
    #dbg_value(i32 8, !639, !DIExpression(), !635)
    #dbg_value(i32 78, !640, !DIExpression(), !635)
    #dbg_value(i32 5, !641, !DIExpression(), !635)
    #dbg_value(i32 0, !642, !DIExpression(), !635)
    #dbg_value(i32 0, !643, !DIExpression(), !645)
  br label %for.cond, !dbg !646

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 78, %entry ], !dbg !647
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !647
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !648
    #dbg_value(i32 %r.0, !643, !DIExpression(), !645)
    #dbg_value(i32 %bs_mat_entries_used.0, !642, !DIExpression(), !635)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !649
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
  %exitcond = icmp ne i32 %k.0, 8, !dbg !668
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !663

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !670
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !670
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !672
  %add9 = or disjoint i32 %mul8, %k.0, !dbg !673
  %arrayidx = getelementptr inbounds nuw i8, ptr %O, i32 %add9, !dbg !674
  %1 = load i8, ptr %arrayidx, align 1, !dbg !674
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !675
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !676
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !677
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !677
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !678
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !679
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !679
  %mul16 = shl nuw nsw i32 %r.0, 3, !dbg !680
  %add17 = or disjoint i32 %mul16, %k.0, !dbg !681
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %O, i32 %add17, !dbg !682
  %2 = load i8, ptr %arrayidx18, align 1, !dbg !682
  %mul19 = shl nuw nsw i32 %c.0, 3, !dbg !683
  %add20 = or disjoint i32 %mul19, %k.0, !dbg !684
  %add.ptr22.idx = mul nuw nsw i32 %add20, 40, !dbg !685
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !685
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr15, i8 noundef zeroext %2, ptr noundef %add.ptr22) #6, !dbg !686
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !687
    #dbg_value(i32 %add23, !666, !DIExpression(), !667)
  br label %for.cond5, !dbg !688, !llvm.loop !689

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !691

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !691
    #dbg_value(i32 %bs_mat_entries_used.2, !642, !DIExpression(), !635)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !692
    #dbg_value(i32 %inc, !656, !DIExpression(), !657)
  br label %for.cond1, !dbg !693, !llvm.loop !694

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !635
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !696
    #dbg_value(i32 %inc28, !643, !DIExpression(), !645)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !697
  br label %for.cond, !dbg !697, !llvm.loop !698

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !700
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !701 {
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
    #dbg_value(ptr %p, !705, !DIExpression(), !706)
    #dbg_value(ptr %sig, !707, !DIExpression(), !706)
    #dbg_value(ptr %siglen, !708, !DIExpression(), !706)
    #dbg_value(ptr %m, !709, !DIExpression(), !706)
    #dbg_value(i32 %mlen, !710, !DIExpression(), !706)
    #dbg_value(ptr %csk, !711, !DIExpression(), !706)
    #dbg_value(i32 0, !712, !DIExpression(), !706)
    #dbg_declare(ptr %tenc, !713, !DIExpression(), !717)
    #dbg_declare(ptr %t, !718, !DIExpression(), !722)
    #dbg_declare(ptr %y, !723, !DIExpression(), !724)
    #dbg_declare(ptr %salt, !725, !DIExpression(), !729)
    #dbg_declare(ptr %V, !730, !DIExpression(), !734)
    #dbg_declare(ptr %Vdec, !735, !DIExpression(), !739)
    #dbg_declare(ptr %A, !740, !DIExpression(), !744)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6480) %A, i8 0, i32 6480, i1 false), !dbg !744
    #dbg_declare(ptr %x, !745, !DIExpression(), !749)
    #dbg_declare(ptr %r, !750, !DIExpression(), !754)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(81) %r, i8 0, i32 81, i1 false), !dbg !754
    #dbg_declare(ptr %s, !755, !DIExpression(), !756)
    #dbg_declare(ptr %sk, !757, !DIExpression(), !758)
    #dbg_declare(ptr %Ox, !759, !DIExpression(), !760)
    #dbg_declare(ptr %tmp, !761, !DIExpression(), !762)
    #dbg_value(i32 78, !763, !DIExpression(), !706)
    #dbg_value(i32 86, !764, !DIExpression(), !706)
    #dbg_value(i32 8, !765, !DIExpression(), !706)
    #dbg_value(i32 10, !766, !DIExpression(), !706)
    #dbg_value(i32 78, !767, !DIExpression(), !706)
    #dbg_value(i32 39, !768, !DIExpression(), !706)
    #dbg_value(i32 39, !769, !DIExpression(), !706)
    #dbg_value(i32 40, !770, !DIExpression(), !706)
    #dbg_value(i32 454, !771, !DIExpression(), !706)
    #dbg_value(i32 81, !772, !DIExpression(), !706)
    #dbg_value(i32 32, !773, !DIExpression(), !706)
    #dbg_value(i32 24, !774, !DIExpression(), !706)
    #dbg_value(i32 24, !775, !DIExpression(), !706)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !776
    #dbg_value(i32 0, !712, !DIExpression(), !706)
    #dbg_value(ptr %csk, !777, !DIExpression(), !706)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !778
    #dbg_value(ptr %sk, !779, !DIExpression(), !706)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !780
    #dbg_value(ptr %add.ptr, !781, !DIExpression(), !706)
    #dbg_declare(ptr %Mtmp, !782, !DIExpression(), !786)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(3200) %Mtmp, i8 0, i32 3200, i1 false), !dbg !786
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !787
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #8, !dbg !789
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !790
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !790

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !791
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #8, !dbg !792
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !793
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !794
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !795
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !796
    #dbg_value(ptr %add.ptr24, !797, !DIExpression(), !706)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !798
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !799
    #dbg_value(i32 0, !800, !DIExpression(), !802)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 390, !dbg !803
  br label %for.cond, !dbg !806

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !807
    #dbg_value(i32 %ctr.0, !800, !DIExpression(), !802)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !808
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !809

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !810
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !811
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 430, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !812
    #dbg_value(i32 0, !813, !DIExpression(), !815)
  br label %for.cond34, !dbg !816

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !817
    #dbg_value(i32 %i.0, !813, !DIExpression(), !815)
  %exitcond = icmp ne i32 %i.0, 10, !dbg !818
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !820

for.body37:                                       ; preds = %for.cond34
  %mul = mul nuw nsw i32 %i.0, 39, !dbg !821
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !823
  %mul41 = mul nuw nsw i32 %i.0, 78, !dbg !824
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !825
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 78) #6, !dbg !826
  %inc = add nuw nsw i32 %i.0, 1, !dbg !827
    #dbg_value(i32 %inc, !813, !DIExpression(), !815)
  br label %for.cond34, !dbg !828, !llvm.loop !829

for.end:                                          ; preds = %for.cond34
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !831
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !832
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !833
    #dbg_value(i32 0, !834, !DIExpression(), !836)
  br label %for.cond52, !dbg !837

for.cond52:                                       ; preds = %for.body55, %for.end
  %i51.0 = phi i32 [ 0, %for.end ], [ %inc58, %for.body55 ], !dbg !838
    #dbg_value(i32 %i51.0, !834, !DIExpression(), !836)
  %exitcond1 = icmp ne i32 %i51.0, 78, !dbg !839
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !841

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 81, !dbg !842
  %sub = add nuw nsw i32 %0, 80, !dbg !844
  %arrayidx = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub, !dbg !845
  store i8 0, ptr %arrayidx, align 1, !dbg !846
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !847
    #dbg_value(i32 %inc58, !834, !DIExpression(), !836)
  br label %for.cond52, !dbg !848, !llvm.loop !849

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 80) #6, !dbg !851
  %call67 = call i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 10, i32 noundef 8, i32 noundef 78, i32 noundef 81) #6, !dbg !852
  %tobool.not = icmp eq i32 %call67, 0, !dbg !852
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !852

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 3200) #8, !dbg !854
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 6480) #8, !dbg !856
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !857
    #dbg_value(i32 %inc75, !800, !DIExpression(), !802)
  br label %for.cond, !dbg !858, !llvm.loop !859

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !861, !DIExpression(), !863)
  br label %for.cond78, !dbg !864

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !865
    #dbg_value(i32 %i77.0, !861, !DIExpression(), !863)
  %exitcond3 = icmp ne i32 %i77.0, 10, !dbg !866
  br i1 %exitcond3, label %for.body81, label %for.end106, !dbg !868

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 78, !dbg !869
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !871
    #dbg_value(ptr %add.ptr84, !872, !DIExpression(), !706)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !873
  %mul89 = shl nuw nsw i32 %i77.0, 3, !dbg !874
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !875
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 8, i32 noundef 78, i32 noundef 1) #6, !dbg !876
  %mul94 = mul nuw nsw i32 %i77.0, 86, !dbg !877
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !878
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 78, i32 noundef 1) #6, !dbg !879
  %mul97 = mul nuw nsw i32 %i77.0, 86, !dbg !880
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !881
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 78, !dbg !882
  %mul101 = shl nuw nsw i32 %i77.0, 3, !dbg !883
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !884
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 8) #8, !dbg !885
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !886
    #dbg_value(i32 %inc105, !861, !DIExpression(), !863)
  br label %for.cond78, !dbg !887, !llvm.loop !888

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 860) #6, !dbg !890
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !891
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !892
  store i32 454, ptr %siglen, align 4, !dbg !893
  br label %err, !dbg !894

err:                                              ; preds = %entry, %for.end106
  %ret.0 = phi i32 [ 0, %for.end106 ], [ 1, %entry ], !dbg !706
    #dbg_value(i32 %ret.0, !712, !DIExpression(), !706)
    #dbg_label(!895, !896)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 430) #8, !dbg !897
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 780) #8, !dbg !898
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 6480) #8, !dbg !899
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 81) #8, !dbg !900
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 624) #8, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 148824) #8, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 78) #8, !dbg !904
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !905
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 3200) #8, !dbg !906
  ret i32 %ret.0, !dbg !907
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !908 {
entry:
  %Pv = alloca [3900 x i64], align 8
    #dbg_value(ptr %p, !911, !DIExpression(), !912)
    #dbg_value(ptr %Vdec, !913, !DIExpression(), !912)
    #dbg_value(ptr %L, !914, !DIExpression(), !912)
    #dbg_value(ptr %P1, !915, !DIExpression(), !912)
    #dbg_value(ptr %VL, !916, !DIExpression(), !912)
    #dbg_value(ptr %VP1V, !917, !DIExpression(), !912)
    #dbg_value(i32 10, !918, !DIExpression(), !912)
    #dbg_value(i32 78, !919, !DIExpression(), !912)
    #dbg_value(i32 8, !920, !DIExpression(), !912)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 10, i32 noundef 78, i32 noundef 8) #6, !dbg !921
    #dbg_declare(ptr %Pv, !922, !DIExpression(), !926)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(31200) %Pv, i8 0, i32 31200, i1 false), !dbg !926
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !927
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 10, i32 noundef 78, i32 noundef 10) #6, !dbg !928
  ret void, !dbg !929
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !930 {
entry:
  %temp = alloca [5 x i64], align 8
    #dbg_value(ptr %p, !933, !DIExpression(), !934)
    #dbg_value(ptr %vPv, !935, !DIExpression(), !934)
    #dbg_value(ptr %t, !936, !DIExpression(), !934)
    #dbg_value(ptr %y, !937, !DIExpression(), !934)
    #dbg_value(i32 52, !938, !DIExpression(), !934)
    #dbg_value(i32 5, !940, !DIExpression(), !934)
    #dbg_value(i64 1, !941, !DIExpression(), !944)
    #dbg_value(i64 72057594037927936, !941, !DIExpression(), !944)
    #dbg_value(i64 72057594037927935, !941, !DIExpression(), !944)
    #dbg_value(i32 0, !945, !DIExpression(), !947)
  br label %for.cond, !dbg !948

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !949
    #dbg_value(i32 %i.0, !945, !DIExpression(), !947)
  %exitcond = icmp ne i32 %i.0, 100, !dbg !950
  br i1 %exitcond, label %for.body, label %for.end, !dbg !952

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 40, !dbg !953
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !953
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !953
  %1 = load i64, ptr %arrayidx, align 8, !dbg !955
  %and = and i64 %1, 72057594037927935, !dbg !955
  store i64 %and, ptr %arrayidx, align 8, !dbg !955
  %inc = add nuw nsw i32 %i.0, 1, !dbg !956
    #dbg_value(i32 %inc, !945, !DIExpression(), !947)
  br label %for.cond, !dbg !957, !llvm.loop !958

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !960, !DIExpression(), !961)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %temp, i8 0, i32 40, i1 false), !dbg !961
    #dbg_value(ptr %temp, !962, !DIExpression(), !934)
    #dbg_value(i32 9, !963, !DIExpression(), !965)
  br label %for.cond3, !dbg !966

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 9, %for.end ], [ %dec78, %for.inc77 ], !dbg !967
    #dbg_value(i32 %i2.0, !963, !DIExpression(), !965)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !968
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !970

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !971

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !974

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !976
    #dbg_value(i32 %j.0, !977, !DIExpression(), !978)
  %exitcond10 = icmp ne i32 %j.0, 10, !dbg !979
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !971

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !981
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !981
  %shr = lshr i64 %2, 52, !dbg !983
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !984
    #dbg_value(i8 %rem1, !985, !DIExpression(), !986)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !987
  %shl11 = shl i64 %2, 4, !dbg !988
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !988
    #dbg_value(i32 3, !989, !DIExpression(), !991)
  br label %for.cond12, !dbg !992

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 3, %for.body8 ], [ %dec, %for.body15 ], !dbg !993
    #dbg_value(i32 %k.0, !989, !DIExpression(), !991)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !994
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !996

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !984
  br label %for.cond24, !dbg !997

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !999
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !999
  %shr17 = lshr i64 %3, 60, !dbg !1001
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1002
  %arrayidx19 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1003
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1004
  %xor = xor i64 %4, %shr17, !dbg !1004
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1004
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1005
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !1006
  %shl21 = shl i64 %5, 4, !dbg !1006
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1006
  %dec = add nsw i32 %k.0, -1, !dbg !1007
    #dbg_value(i32 %dec, !989, !DIExpression(), !991)
  br label %for.cond12, !dbg !1008, !llvm.loop !1009

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1011
    #dbg_value(i32 %jj.0, !1012, !DIExpression(), !1013)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !1014
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !997

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1016

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1018
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1021
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1021

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1022
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1022
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #6, !dbg !1024
  %div = lshr exact i32 %jj.0, 1, !dbg !1025
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1026
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1027
  %xor356 = xor i8 %7, %call, !dbg !1027
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1027
  br label %for.inc46, !dbg !1028

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1029
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1029
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #6, !dbg !1031
  %shl40 = shl nuw i8 %call38, 4, !dbg !1032
  %div415 = lshr i32 %jj.0, 1, !dbg !1033
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1034
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1035
  %xor44 = xor i8 %shl40, %9, !dbg !1035
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1035
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1036
    #dbg_value(i32 %inc47, !1012, !DIExpression(), !1013)
  br label %for.cond24, !dbg !1037, !llvm.loop !1038

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1040
    #dbg_value(i32 %k49.0, !1041, !DIExpression(), !1042)
  %exitcond9 = icmp ne i32 %k49.0, 5, !dbg !1043
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1016

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 10, !dbg !1045
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1047
  %.idx = mul nsw i32 %add55, 40, !dbg !1048
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1048
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1048
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1048
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1049
  %mul62 = mul nuw nsw i32 %j.0, 10, !dbg !1050
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1051
  %.idx4 = mul nsw i32 %add63, 40, !dbg !1052
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1052
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1052
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1052
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1053
  %xor68 = xor i64 %11, %mul67, !dbg !1054
  %arrayidx69 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1055
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1056
  %xor70 = xor i64 %14, %xor68, !dbg !1056
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1056
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1057
    #dbg_value(i32 %inc72, !1041, !DIExpression(), !1042)
  br label %for.cond50, !dbg !1058, !llvm.loop !1059

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1061
    #dbg_value(i32 %inc75, !977, !DIExpression(), !978)
  br label %for.cond6, !dbg !1062, !llvm.loop !1063

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1065
    #dbg_value(i32 %dec78, !963, !DIExpression(), !965)
  br label %for.cond3, !dbg !1066, !llvm.loop !1067

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1069
    #dbg_value(i32 %i80.0, !1070, !DIExpression(), !1071)
  %cmp82 = icmp samesign ult i32 %i80.0, 78, !dbg !1072
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !974

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1074
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1074
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1076
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1077
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1077
  %17 = and i8 %16, 15, !dbg !1078
  %xor912 = xor i8 %15, %17, !dbg !1079
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1080
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1081
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1082
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1083
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1083
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1084
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1085
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1085
  %20 = lshr i8 %19, 4, !dbg !1086
  %xor1013 = xor i8 %18, %20, !dbg !1087
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1088
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1089
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1090
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1091
    #dbg_value(i32 %add106, !1070, !DIExpression(), !1071)
  br label %for.cond81, !dbg !1092, !llvm.loop !1093

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1095
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1096 {
entry:
  %A = alloca [800 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1099, !DIExpression(), !1100)
    #dbg_value(ptr %VtL, !1101, !DIExpression(), !1100)
    #dbg_value(ptr %A_out, !1102, !DIExpression(), !1100)
    #dbg_value(i32 0, !1103, !DIExpression(), !1100)
    #dbg_value(i32 0, !1104, !DIExpression(), !1100)
    #dbg_value(i32 5, !1105, !DIExpression(), !1100)
    #dbg_declare(ptr %A, !1106, !DIExpression(), !1110)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6400) %A, i8 0, i32 6400, i1 false), !dbg !1110
    #dbg_value(i32 80, !1111, !DIExpression(), !1100)
    #dbg_value(i64 1, !1112, !DIExpression(), !1115)
    #dbg_value(i64 72057594037927936, !1112, !DIExpression(), !1115)
    #dbg_value(i64 72057594037927935, !1112, !DIExpression(), !1115)
    #dbg_value(i32 0, !1116, !DIExpression(), !1118)
  br label %for.cond, !dbg !1119

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1120
    #dbg_value(i32 %i.0, !1116, !DIExpression(), !1118)
  %exitcond = icmp ne i32 %i.0, 80, !dbg !1121
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1123

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1124

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 40, !dbg !1126
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1126
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1126
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1128
  %and = and i64 %1, 72057594037927935, !dbg !1128
  store i64 %and, ptr %arrayidx, align 8, !dbg !1128
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1129
    #dbg_value(i32 %inc, !1116, !DIExpression(), !1118)
  br label %for.cond, !dbg !1130, !llvm.loop !1131

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1133
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1134
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1135
    #dbg_value(i32 %bits_to_shift.0, !1103, !DIExpression(), !1100)
    #dbg_value(i32 %words_to_shift.0, !1104, !DIExpression(), !1100)
    #dbg_value(i32 %i2.0, !1136, !DIExpression(), !1137)
  %exitcond8 = icmp ne i32 %i2.0, 10, !dbg !1138
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1124

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1140

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1143

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 9, %for.cond6.preheader ], !dbg !1145
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1100
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1100
    #dbg_value(i32 %bits_to_shift.1, !1103, !DIExpression(), !1100)
    #dbg_value(i32 %words_to_shift.1, !1104, !DIExpression(), !1100)
    #dbg_value(i32 %j.0, !1146, !DIExpression(), !1147)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1148
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1140

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 320, !dbg !1150
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1150
    #dbg_value(ptr %add.ptr, !1152, !DIExpression(), !1100)
    #dbg_value(i32 0, !1153, !DIExpression(), !1155)
  br label %for.cond11, !dbg !1156

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1157
    #dbg_value(i32 %c.0, !1153, !DIExpression(), !1155)
  %exitcond5 = icmp ne i32 %c.0, 8, !dbg !1158
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1160

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1161

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1164
    #dbg_value(i32 %k.0, !1165, !DIExpression(), !1166)
  %exitcond4 = icmp ne i32 %k.0, 5, !dbg !1167
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1161

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1169
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 40, !dbg !1169
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1169
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1169
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1171
  %shl20 = shl i64 %3, %sh_prom, !dbg !1171
  %mul21 = shl nuw nsw i32 %i2.0, 3, !dbg !1172
  %add22 = or disjoint i32 %mul21, %c.0, !dbg !1173
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1174
  %mul24 = mul i32 %add23, 80, !dbg !1175
  %add25 = add i32 %add22, %mul24, !dbg !1176
  %arrayidx26 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25, !dbg !1177
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1178
  %xor = xor i64 %4, %shl20, !dbg !1178
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1178
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1179
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1179

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1181
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 40, !dbg !1181
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1181
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1181
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1183
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1184
  %shr = lshr i64 %6, %sh_prom32, !dbg !1184
  %mul33 = shl nuw nsw i32 %i2.0, 3, !dbg !1185
  %add34 = or disjoint i32 %mul33, %c.0, !dbg !1186
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1187
  %7 = mul i32 %add35, 80, !dbg !1188
  %mul37 = add i32 %7, 80, !dbg !1188
  %add38 = add i32 %add34, %mul37, !dbg !1189
  %arrayidx39 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38, !dbg !1190
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1191
  %xor40 = xor i64 %8, %shr, !dbg !1191
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1191
  br label %for.inc41, !dbg !1192

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1193
    #dbg_value(i32 %inc42, !1165, !DIExpression(), !1166)
  br label %for.cond14, !dbg !1194, !llvm.loop !1195

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1197
    #dbg_value(i32 %inc45, !1153, !DIExpression(), !1155)
  br label %for.cond11, !dbg !1198, !llvm.loop !1199

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1201
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1201

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 320, !dbg !1203
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1203
    #dbg_value(ptr %add.ptr51, !1205, !DIExpression(), !1100)
    #dbg_value(i32 0, !1206, !DIExpression(), !1208)
  br label %for.cond53, !dbg !1209

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1210
    #dbg_value(i32 %c52.0, !1206, !DIExpression(), !1208)
  %exitcond7 = icmp ne i32 %c52.0, 8, !dbg !1211
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1213

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1214

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1217
    #dbg_value(i32 %k56.0, !1218, !DIExpression(), !1219)
  %exitcond6 = icmp ne i32 %k56.0, 5, !dbg !1220
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1214

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1222
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1222
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1222
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1222
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1224
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1224
  %mul65 = shl nsw i32 %j.0, 3, !dbg !1225
  %add66 = or disjoint i32 %mul65, %c52.0, !dbg !1226
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1227
  %mul68 = mul i32 %add67, 80, !dbg !1228
  %add69 = add i32 %add66, %mul68, !dbg !1229
  %arrayidx70 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69, !dbg !1230
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1231
  %xor71 = xor i64 %11, %shl64, !dbg !1231
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1231
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1232
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1232

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1234
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1234
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1234
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1234
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1236
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1237
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1237
  %mul80 = shl nsw i32 %j.0, 3, !dbg !1238
  %add81 = or disjoint i32 %mul80, %c52.0, !dbg !1239
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1240
  %14 = mul i32 %add82, 80, !dbg !1241
  %mul84 = add i32 %14, 80, !dbg !1241
  %add85 = add i32 %add81, %mul84, !dbg !1242
  %arrayidx86 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85, !dbg !1243
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1244
  %xor87 = xor i64 %15, %shr79, !dbg !1244
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1244
  br label %for.inc89, !dbg !1245

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1246
    #dbg_value(i32 %inc90, !1218, !DIExpression(), !1219)
  br label %for.cond57, !dbg !1247, !llvm.loop !1248

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1250
    #dbg_value(i32 %inc93, !1206, !DIExpression(), !1208)
  br label %for.cond53, !dbg !1251, !llvm.loop !1252

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1254

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1254
    #dbg_value(i32 %add96, !1103, !DIExpression(), !1100)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1255
  %inc99 = zext i1 %cmp97 to i32, !dbg !1255
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1255
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1255
    #dbg_value(i32 %spec.select3, !1103, !DIExpression(), !1100)
    #dbg_value(i32 %spec.select, !1104, !DIExpression(), !1100)
  %dec = add nsw i32 %j.0, -1, !dbg !1257
    #dbg_value(i32 %dec, !1146, !DIExpression(), !1147)
  br label %for.cond6, !dbg !1258, !llvm.loop !1259

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1100
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1100
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1261
    #dbg_value(i32 %inc104, !1136, !DIExpression(), !1137)
  br label %for.cond3, !dbg !1262, !llvm.loop !1263

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1265
    #dbg_value(i32 %c106.0, !1266, !DIExpression(), !1267)
  %cmp109 = icmp samesign ult i32 %c106.0, 720, !dbg !1268
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1143

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1270
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1272
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1273
    #dbg_value(i32 %add113, !1266, !DIExpression(), !1267)
  br label %for.cond107, !dbg !1274, !llvm.loop !1275

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1277, !DIExpression(), !1281)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1281
    #dbg_value(i32 0, !1282, !DIExpression(), !1284)
  br label %for.cond116, !dbg !1285

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1286
    #dbg_value(i32 %i115.0, !1282, !DIExpression(), !1284)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1287
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1289

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1290

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1292
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1292
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1294
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1295
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1296
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1297
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1298
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1299
  %add125 = or disjoint i32 %mul124, 1, !dbg !1300
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1301
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1302
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1303
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1303
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1304
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1305
  %add130 = or disjoint i32 %mul129, 2, !dbg !1306
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1307
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1308
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1309
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1309
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1310
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1311
  %add135 = or disjoint i32 %mul134, 3, !dbg !1312
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1313
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1314
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1315
    #dbg_value(i32 %inc138, !1282, !DIExpression(), !1284)
  br label %for.cond116, !dbg !1316, !llvm.loop !1317

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1319
    #dbg_value(i32 %c140.0, !1320, !DIExpression(), !1321)
  %cmp142 = icmp samesign ult i32 %c140.0, 80, !dbg !1322
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1290

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1324

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1327

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 78, %for.cond144.preheader ], !dbg !1329
    #dbg_value(i32 %r.0, !1330, !DIExpression(), !1331)
  %exitcond11 = icmp ne i32 %r.0, 133, !dbg !1332
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1324

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1334
  %mul147 = mul nuw nsw i32 %div1, 80, !dbg !1336
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1337
  %rem = and i32 %r.0, 15, !dbg !1338
  %add149 = or disjoint i32 %add148, %rem, !dbg !1339
    #dbg_value(i32 %add149, !1340, !DIExpression(), !1341)
  %arrayidx150 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1342
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1342
  %and151 = and i64 %19, 1229782938247303441, !dbg !1343
    #dbg_value(i64 %and151, !1344, !DIExpression(), !1341)
  %shr153 = lshr i64 %19, 1, !dbg !1345
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1346
    #dbg_value(i64 %and154, !1347, !DIExpression(), !1341)
  %shr156 = lshr i64 %19, 2, !dbg !1348
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1349
    #dbg_value(i64 %and157, !1350, !DIExpression(), !1341)
  %arrayidx158 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1351
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1351
  %shr159 = lshr i64 %20, 3, !dbg !1352
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1353
    #dbg_value(i64 %and160, !1354, !DIExpression(), !1341)
    #dbg_value(i32 0, !1355, !DIExpression(), !1357)
  br label %for.cond161, !dbg !1358

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1359
    #dbg_value(i32 %t.0, !1355, !DIExpression(), !1357)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1360
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1362

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1363
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1365
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1365
  %conv = zext i8 %21 to i64, !dbg !1365
  %mul167 = mul i64 %and151, %conv, !dbg !1366
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1367
  %add169 = or disjoint i32 %mul168, 1, !dbg !1368
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1369
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1369
  %conv171 = zext i8 %22 to i64, !dbg !1369
  %mul172 = mul i64 %and154, %conv171, !dbg !1370
  %xor173 = xor i64 %mul167, %mul172, !dbg !1371
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1372
  %add175 = or disjoint i32 %mul174, 2, !dbg !1373
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1374
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1374
  %conv177 = zext i8 %23 to i64, !dbg !1374
  %mul178 = mul i64 %and157, %conv177, !dbg !1375
  %xor179 = xor i64 %xor173, %mul178, !dbg !1376
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1377
  %add181 = or disjoint i32 %mul180, 3, !dbg !1378
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1379
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1379
  %conv183 = zext i8 %24 to i64, !dbg !1379
  %mul184 = mul i64 %and160, %conv183, !dbg !1380
  %xor185 = xor i64 %xor179, %mul184, !dbg !1381
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1382
  %sub187 = add nsw i32 %add186, -78, !dbg !1383
  %div1882 = lshr i32 %sub187, 4, !dbg !1384
  %mul189 = mul i32 %div1882, 80, !dbg !1385
  %add190 = add i32 %mul189, %c140.0, !dbg !1386
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1387
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1388
  %rem193 = and i32 %sub192, 15, !dbg !1389
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1390
  %arrayidx195 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194, !dbg !1391
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1392
  %xor196 = xor i64 %25, %xor185, !dbg !1392
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1392
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1393
    #dbg_value(i32 %inc198, !1355, !DIExpression(), !1357)
  br label %for.cond161, !dbg !1394, !llvm.loop !1395

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1397
    #dbg_value(i32 %inc201, !1330, !DIExpression(), !1331)
  br label %for.cond144, !dbg !1398, !llvm.loop !1399

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1401
    #dbg_value(i32 %add204, !1320, !DIExpression(), !1321)
  br label %for.cond141, !dbg !1402, !llvm.loop !1403

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 78, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1405
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1405
    #dbg_value(i32 %r206.0, !1406, !DIExpression(), !1407)
  %cmp208 = icmp samesign ult i32 %r206.0, 78, !dbg !1408
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1327

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1410

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1413
    #dbg_value(i32 %c211.0, !1414, !DIExpression(), !1415)
  %cmp213 = icmp samesign ult i32 %c211.0, 80, !dbg !1416
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1410

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1418

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1421
    #dbg_value(i32 %i216.0, !1422, !DIExpression(), !1423)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1424
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1418

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 5, !dbg !1426
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1428
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1429
  %arrayidx226 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225, !dbg !1430
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1431
  %mul228 = mul nuw nsw i32 %add227, 81, !dbg !1432
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1433
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1434
  %cmp232 = icmp samesign ult i32 %c211.0, 64, !dbg !1435
  %sub234 = sub nuw nsw i32 80, %c211.0, !dbg !1435
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1435
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #6, !dbg !1436
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1437
    #dbg_value(i32 %inc236, !1422, !DIExpression(), !1423)
  br label %for.cond217, !dbg !1438, !llvm.loop !1439

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1441
    #dbg_value(i32 %add239, !1414, !DIExpression(), !1415)
  br label %for.cond212, !dbg !1442, !llvm.loop !1443

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1445
    #dbg_value(i32 %add242, !1406, !DIExpression(), !1407)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1446
  br label %for.cond207, !dbg !1446, !llvm.loop !1447

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1449
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1450 {
entry:
    #dbg_value(ptr %a, !1453, !DIExpression(), !1454)
    #dbg_value(ptr %b, !1455, !DIExpression(), !1454)
    #dbg_value(ptr %c, !1456, !DIExpression(), !1454)
    #dbg_value(i32 8, !1457, !DIExpression(), !1454)
    #dbg_value(i32 78, !1458, !DIExpression(), !1454)
    #dbg_value(i32 1, !1459, !DIExpression(), !1454)
    #dbg_value(i32 0, !1460, !DIExpression(), !1462)
  br label %for.cond, !dbg !1463

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1464
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1453, !DIExpression(), !1454)
    #dbg_value(ptr %c.addr.0, !1456, !DIExpression(), !1454)
    #dbg_value(i32 %i.0, !1460, !DIExpression(), !1462)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1465
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1467

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1468

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1471
    #dbg_value(i32 poison, !1472, !DIExpression(), !1473)
    #dbg_value(ptr %c.addr.1, !1456, !DIExpression(), !1454)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1468

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 8, i32 noundef 1) #6, !dbg !1474
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1477
    #dbg_value(i32 1, !1472, !DIExpression(), !1473)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1478
    #dbg_value(ptr %incdec.ptr, !1456, !DIExpression(), !1454)
  br label %for.cond1, !dbg !1479, !llvm.loop !1480

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1482
    #dbg_value(i32 %inc5, !1460, !DIExpression(), !1462)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 8, !dbg !1483
    #dbg_value(ptr %add.ptr6, !1453, !DIExpression(), !1454)
  br label %for.cond, !dbg !1484, !llvm.loop !1485

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1487
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1488 {
entry:
    #dbg_value(ptr %a, !1491, !DIExpression(), !1492)
    #dbg_value(ptr %b, !1493, !DIExpression(), !1492)
    #dbg_value(ptr %c, !1494, !DIExpression(), !1492)
    #dbg_value(i32 78, !1495, !DIExpression(), !1492)
    #dbg_value(i32 1, !1496, !DIExpression(), !1492)
    #dbg_value(i32 0, !1497, !DIExpression(), !1499)
  br label %for.cond, !dbg !1500

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1501
    #dbg_value(i32 %i.0, !1497, !DIExpression(), !1499)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1502
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1504

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1505, !DIExpression(), !1508)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1509
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1512
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1513
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1514
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1515
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1516
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1517
    #dbg_value(i32 1, !1505, !DIExpression(), !1508)
    #dbg_value(i32 poison, !1505, !DIExpression(), !1508)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1518
    #dbg_value(i32 %inc12, !1497, !DIExpression(), !1499)
  br label %for.cond, !dbg !1519, !llvm.loop !1520

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1522
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1523 {
entry:
    #dbg_value(ptr %m, !1524, !DIExpression(), !1525)
    #dbg_value(ptr %menc, !1526, !DIExpression(), !1525)
    #dbg_value(i32 860, !1527, !DIExpression(), !1525)
    #dbg_value(i32 0, !1528, !DIExpression(), !1525)
  br label %for.cond, !dbg !1529

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1531
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1524, !DIExpression(), !1525)
    #dbg_value(i32 %i.0, !1528, !DIExpression(), !1525)
  %exitcond = icmp ne i32 %i.0, 430, !dbg !1532
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1534

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1535
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1537
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1538
  %shl = shl i8 %1, 4, !dbg !1539
  %or = or i8 %shl, %0, !dbg !1540
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1541
  store i8 %or, ptr %arrayidx, align 1, !dbg !1542
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1543
    #dbg_value(i32 %inc, !1528, !DIExpression(), !1525)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1544
    #dbg_value(ptr %add.ptr3, !1524, !DIExpression(), !1525)
  br label %for.cond, !dbg !1545, !llvm.loop !1546

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1548
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1549 {
entry:
    #dbg_value(i8 %a, !1552, !DIExpression(), !1553)
    #dbg_value(i8 %b, !1554, !DIExpression(), !1553)
  %xor1 = xor i8 %a, %b, !dbg !1555
  ret i8 %xor1, !dbg !1556
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1557 {
entry:
    #dbg_value(ptr %a, !1560, !DIExpression(), !1561)
    #dbg_value(ptr %b, !1562, !DIExpression(), !1561)
    #dbg_value(i32 8, !1563, !DIExpression(), !1561)
    #dbg_value(i32 1, !1564, !DIExpression(), !1561)
    #dbg_value(i8 0, !1565, !DIExpression(), !1561)
    #dbg_value(i32 0, !1566, !DIExpression(), !1568)
  br label %for.cond, !dbg !1569

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1561
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1570
    #dbg_value(i32 %i.0, !1566, !DIExpression(), !1568)
    #dbg_value(ptr %b.addr.0, !1562, !DIExpression(), !1561)
    #dbg_value(i8 %ret.0, !1565, !DIExpression(), !1561)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1571
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1573

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1574
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1574
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1576
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1577
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1578
    #dbg_value(i8 %call1, !1565, !DIExpression(), !1561)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1579
    #dbg_value(i32 %inc, !1566, !DIExpression(), !1568)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1580
    #dbg_value(ptr %add.ptr, !1562, !DIExpression(), !1561)
  br label %for.cond, !dbg !1581, !llvm.loop !1582

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1561
  ret i8 %ret.0.lcssa, !dbg !1584
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1585 {
entry:
    #dbg_value(i8 %a, !1586, !DIExpression(), !1587)
    #dbg_value(i8 %b, !1588, !DIExpression(), !1587)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !1589
  %xor1 = xor i8 %a, %0, !dbg !1590
    #dbg_value(i8 %xor1, !1586, !DIExpression(), !1587)
  %1 = trunc i8 %xor1 to i1, !dbg !1591
    #dbg_value(i8 poison, !1592, !DIExpression(), !1587)
  %2 = and i8 %xor1, 2, !dbg !1593
  %mul9 = mul i8 %2, %b, !dbg !1594
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1591
  %xor11 = xor i8 %conv10, %mul9, !dbg !1595
    #dbg_value(i8 %xor11, !1592, !DIExpression(), !1587)
  %3 = and i8 %xor1, 4, !dbg !1596
  %mul16 = mul i8 %3, %b, !dbg !1597
  %xor18 = xor i8 %mul16, %xor11, !dbg !1598
    #dbg_value(i8 %xor18, !1592, !DIExpression(), !1587)
  %4 = and i8 %xor1, 8, !dbg !1599
  %mul23 = mul i8 %4, %b, !dbg !1600
  %xor25 = xor i8 %mul23, %xor18, !dbg !1601
    #dbg_value(i8 %xor25, !1592, !DIExpression(), !1587)
    #dbg_value(i8 %xor25, !1602, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1587)
  %5 = lshr i8 %xor25, 4, !dbg !1603
  %6 = lshr i8 %xor25, 3, !dbg !1604
  %7 = and i8 %6, 14, !dbg !1604
  %8 = xor i8 %5, %7, !dbg !1605
  %xor25.masked = and i8 %xor25, 15, !dbg !1606
  %9 = xor i8 %8, %xor25.masked, !dbg !1606
    #dbg_value(i8 %9, !1607, !DIExpression(), !1587)
  ret i8 %9, !dbg !1608
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1609, !DIExpression(), !1610)
    #dbg_value(i32 0, !1611, !DIExpression(), !1613)
  br label %for.cond, !dbg !1614

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1615
    #dbg_value(i32 %i.0, !1611, !DIExpression(), !1613)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1616
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1618

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1619

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1621
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1621
  %shr = lshr i64 %0, 4, !dbg !1623
  %add = or disjoint i32 %i.0, 1, !dbg !1624
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1625
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1625
  %xor = xor i64 %shr, %1, !dbg !1626
  %and = and i64 %xor, 1085102592571150095, !dbg !1627
    #dbg_value(i64 %and, !1628, !DIExpression(), !1629)
  %shl = shl nuw i64 %and, 4, !dbg !1630
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1631
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1632
  %xor3 = xor i64 %2, %shl, !dbg !1632
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1632
  %add4 = or disjoint i32 %i.0, 1, !dbg !1633
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1634
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1635
  %xor6 = xor i64 %3, %and, !dbg !1635
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1635
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1636
    #dbg_value(i32 %add7, !1611, !DIExpression(), !1613)
  br label %for.cond, !dbg !1637, !llvm.loop !1638

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1640
    #dbg_value(i32 %i8.0, !1641, !DIExpression(), !1642)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1643
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1619

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1645

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1647
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1647
  %shr13 = lshr i64 %4, 8, !dbg !1649
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1650
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1651
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1651
  %xor16 = xor i64 %shr13, %5, !dbg !1652
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1653
    #dbg_value(i64 %and17, !1654, !DIExpression(), !1655)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1656
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1657
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1657
  %shr20 = lshr i64 %6, 8, !dbg !1658
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1659
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1660
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1660
  %xor23 = xor i64 %shr20, %7, !dbg !1661
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1662
    #dbg_value(i64 %and24, !1663, !DIExpression(), !1655)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1664
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1665
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1666
  %xor27 = xor i64 %8, %shl25, !dbg !1666
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1666
  %shl28 = shl nuw i64 %and24, 8, !dbg !1667
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1668
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1669
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1670
  %xor31 = xor i64 %9, %shl28, !dbg !1670
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1670
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1671
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1672
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1673
  %xor34 = xor i64 %10, %and17, !dbg !1673
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1673
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1674
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1675
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1676
  %xor37 = xor i64 %11, %and24, !dbg !1676
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1676
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1677
    #dbg_value(i32 %add39, !1641, !DIExpression(), !1642)
  br label %for.cond9, !dbg !1678, !llvm.loop !1679

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1681
    #dbg_value(i32 %i41.0, !1682, !DIExpression(), !1683)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1684
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1645

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1686

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1688
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1688
  %shr47 = lshr i64 %12, 16, !dbg !1690
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1691
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1692
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1692
  %xor50 = xor i64 %shr47, %13, !dbg !1693
  %and51 = and i64 %xor50, 281470681808895, !dbg !1694
    #dbg_value(i64 %and51, !1695, !DIExpression(), !1696)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1697
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1698
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1698
  %shr55 = lshr i64 %14, 16, !dbg !1699
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1700
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1701
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1701
  %xor58 = xor i64 %shr55, %15, !dbg !1702
  %and59 = and i64 %xor58, 281470681808895, !dbg !1703
    #dbg_value(i64 %and59, !1704, !DIExpression(), !1696)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1705
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1706
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1707
  %xor62 = xor i64 %16, %shl60, !dbg !1707
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1707
  %shl63 = shl nuw i64 %and59, 16, !dbg !1708
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1709
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1710
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1711
  %xor66 = xor i64 %17, %shl63, !dbg !1711
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1711
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1712
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1713
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1714
  %xor69 = xor i64 %18, %and51, !dbg !1714
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1714
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1715
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1716
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1717
  %xor72 = xor i64 %19, %and59, !dbg !1717
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1717
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1718
    #dbg_value(i32 %inc, !1682, !DIExpression(), !1683)
  br label %for.cond42, !dbg !1719, !llvm.loop !1720

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1722
    #dbg_value(i32 %i75.0, !1723, !DIExpression(), !1724)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1725
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1686

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1727
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1727
  %shr81 = lshr i64 %20, 32, !dbg !1729
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1730
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1731
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1731
  %.masked = and i64 %21, 4294967295, !dbg !1732
  %and85 = xor i64 %shr81, %.masked, !dbg !1732
    #dbg_value(i64 %and85, !1733, !DIExpression(), !1734)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1735
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1736
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1737
  %xor88 = xor i64 %22, %shl86, !dbg !1737
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1737
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1738
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1739
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1740
  %xor91 = xor i64 %23, %and85, !dbg !1740
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1740
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1741
    #dbg_value(i32 %inc93, !1723, !DIExpression(), !1724)
  br label %for.cond76, !dbg !1742, !llvm.loop !1743

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1745
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 8, 11) %bs_mat_cols) unnamed_addr #0 !dbg !1746 {
entry:
    #dbg_value(i32 5, !1747, !DIExpression(), !1748)
    #dbg_value(ptr %mat, !1749, !DIExpression(), !1748)
    #dbg_value(ptr %bs_mat, !1750, !DIExpression(), !1748)
    #dbg_value(ptr %acc, !1751, !DIExpression(), !1748)
    #dbg_value(i32 10, !1752, !DIExpression(), !1748)
    #dbg_value(i32 78, !1753, !DIExpression(), !1748)
    #dbg_value(i32 %bs_mat_cols, !1754, !DIExpression(), !1748)
    #dbg_value(i32 0, !1755, !DIExpression(), !1757)
  br label %for.cond, !dbg !1758

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1759
    #dbg_value(i32 %r.0, !1755, !DIExpression(), !1757)
  %exitcond2 = icmp ne i32 %r.0, 10, !dbg !1760
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1762

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1763

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1766
    #dbg_value(i32 %c.0, !1767, !DIExpression(), !1768)
  %exitcond1 = icmp ne i32 %c.0, 78, !dbg !1769
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1763

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1771

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1774
    #dbg_value(i32 %k.0, !1775, !DIExpression(), !1776)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1777
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1771

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1779
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1781
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !1782
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1782
  %mul8 = mul nuw nsw i32 %r.0, 78, !dbg !1783
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1784
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1784
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1784
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1785
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1786
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !1787
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1787
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1788
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1789
    #dbg_value(i32 %add14, !1775, !DIExpression(), !1776)
  br label %for.cond4, !dbg !1790, !llvm.loop !1791

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1793
    #dbg_value(i32 %inc, !1767, !DIExpression(), !1768)
  br label %for.cond1, !dbg !1794, !llvm.loop !1795

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1797
    #dbg_value(i32 %inc18, !1755, !DIExpression(), !1757)
  br label %for.cond, !dbg !1798, !llvm.loop !1799

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1801
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1802 {
entry:
    #dbg_value(ptr %p, !1803, !DIExpression(), !1804)
    #dbg_value(ptr %P1, !1805, !DIExpression(), !1804)
    #dbg_value(ptr %V, !1806, !DIExpression(), !1804)
    #dbg_value(ptr %acc, !1807, !DIExpression(), !1804)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 5, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 10, i32 noundef 1) #6, !dbg !1808
  ret void, !dbg !1809
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1810 {
entry:
    #dbg_value(i32 5, !1811, !DIExpression(), !1812)
    #dbg_value(ptr %bs_mat, !1813, !DIExpression(), !1812)
    #dbg_value(ptr %mat, !1814, !DIExpression(), !1812)
    #dbg_value(ptr %acc, !1815, !DIExpression(), !1812)
    #dbg_value(i32 78, !1816, !DIExpression(), !1812)
    #dbg_value(i32 78, !1817, !DIExpression(), !1812)
    #dbg_value(i32 10, !1818, !DIExpression(), !1812)
    #dbg_value(i32 1, !1819, !DIExpression(), !1812)
    #dbg_value(i32 0, !1820, !DIExpression(), !1812)
    #dbg_value(i32 0, !1821, !DIExpression(), !1823)
  br label %for.cond, !dbg !1824

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 78, %entry ], !dbg !1825
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1825
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1826
    #dbg_value(i32 %r.0, !1821, !DIExpression(), !1823)
    #dbg_value(i32 %bs_mat_entries_used.0, !1820, !DIExpression(), !1812)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !1827
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1829

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1830
  br label %for.cond1, !dbg !1830

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1812
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1833
    #dbg_value(i32 %c.0, !1834, !DIExpression(), !1835)
    #dbg_value(i32 %bs_mat_entries_used.1, !1820, !DIExpression(), !1812)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1836
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1830

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1838

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1841
    #dbg_value(i32 %k.0, !1842, !DIExpression(), !1843)
  %exitcond = icmp ne i32 %k.0, 10, !dbg !1844
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1838

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !1846
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1846
  %mul8 = mul nuw nsw i32 %k.0, 78, !dbg !1848
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1849
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1849
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1849
  %mul9 = mul nuw nsw i32 %r.0, 10, !dbg !1850
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1851
  %add.ptr12.idx = mul nuw nsw i32 %add10, 40, !dbg !1852
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1852
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1853
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1854
    #dbg_value(i32 %add13, !1842, !DIExpression(), !1843)
  br label %for.cond4, !dbg !1855, !llvm.loop !1856

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1820, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1812)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1858
    #dbg_value(i32 %add14, !1820, !DIExpression(), !1812)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1859
    #dbg_value(i32 %inc, !1834, !DIExpression(), !1835)
  br label %for.cond1, !dbg !1860, !llvm.loop !1861

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1812
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1863
    #dbg_value(i32 %inc18, !1821, !DIExpression(), !1823)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1864
  br label %for.cond, !dbg !1864, !llvm.loop !1865

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1867
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1868 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1869, !DIExpression(), !1870)
    #dbg_value(ptr %sm, !1871, !DIExpression(), !1870)
    #dbg_value(ptr %smlen, !1872, !DIExpression(), !1870)
    #dbg_value(ptr %m, !1873, !DIExpression(), !1870)
    #dbg_value(i32 %mlen, !1874, !DIExpression(), !1870)
    #dbg_value(ptr %csk, !1875, !DIExpression(), !1870)
    #dbg_value(i32 0, !1876, !DIExpression(), !1870)
    #dbg_value(i32 454, !1877, !DIExpression(), !1870)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1878
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1879
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1880
    #dbg_value(ptr %siglen, !1881, !DIExpression(DW_OP_deref), !1870)
  %call2 = call i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1882
    #dbg_value(i32 %call2, !1876, !DIExpression(), !1870)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1883
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1881, !DIExpression(), !1870)
  %cmp3.not = icmp eq i32 %0, 454
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1885
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1885

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1886
    #dbg_value(i32 %1, !1881, !DIExpression(), !1870)
  %add = add i32 %1, %mlen, !dbg !1888
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1889
  br label %err, !dbg !1890

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1891
    #dbg_value(i32 %2, !1881, !DIExpression(), !1870)
  %add5 = add i32 %2, %mlen, !dbg !1892
  store i32 %add5, ptr %smlen, align 4, !dbg !1893
  br label %err, !dbg !1894

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1895, !1896)
  ret i32 %call2, !dbg !1897
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1898 {
entry:
    #dbg_value(ptr %p, !1899, !DIExpression(), !1900)
    #dbg_value(ptr %m, !1901, !DIExpression(), !1900)
    #dbg_value(ptr %mlen, !1902, !DIExpression(), !1900)
    #dbg_value(ptr %sm, !1903, !DIExpression(), !1900)
    #dbg_value(i32 %smlen, !1904, !DIExpression(), !1900)
    #dbg_value(ptr %pk, !1905, !DIExpression(), !1900)
    #dbg_value(i32 454, !1906, !DIExpression(), !1900)
  %cmp = icmp ult i32 %smlen, 454, !dbg !1907
  br i1 %cmp, label %return, label %if.end, !dbg !1907

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1909
  %sub = add i32 %smlen, -454, !dbg !1910
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1911
    #dbg_value(i32 %call, !1912, !DIExpression(), !1900)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1913
  br i1 %cmp1, label %if.then2, label %return, !dbg !1913

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -454, !dbg !1915
  store i32 %sub3, ptr %mlen, align 4, !dbg !1917
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1918
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1919
  br label %return, !dbg !1920

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1900
  ret i32 %retval.0, !dbg !1921
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1922 {
entry:
  %tEnc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [156 x i8], align 1
  %s = alloca [860 x i8], align 1
  %pk = alloca [18705 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1925, !DIExpression(), !1926)
    #dbg_value(ptr %m, !1927, !DIExpression(), !1926)
    #dbg_value(i32 %mlen, !1928, !DIExpression(), !1926)
    #dbg_value(ptr %sig, !1929, !DIExpression(), !1926)
    #dbg_value(ptr %cpk, !1930, !DIExpression(), !1926)
    #dbg_declare(ptr %tEnc, !1931, !DIExpression(), !1932)
    #dbg_declare(ptr %t, !1933, !DIExpression(), !1934)
    #dbg_declare(ptr %y, !1935, !DIExpression(), !1939)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(156) %y, i8 0, i32 156, i1 false), !dbg !1939
    #dbg_declare(ptr %s, !1940, !DIExpression(), !1941)
    #dbg_declare(ptr %pk, !1942, !DIExpression(), !1943)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(149640) %pk, i8 0, i32 149640, i1 false), !dbg !1943
    #dbg_declare(ptr %tmp, !1944, !DIExpression(), !1948)
    #dbg_value(i32 78, !1949, !DIExpression(), !1926)
    #dbg_value(i32 86, !1950, !DIExpression(), !1926)
    #dbg_value(i32 10, !1951, !DIExpression(), !1926)
    #dbg_value(i32 39, !1952, !DIExpression(), !1926)
    #dbg_value(i32 454, !1953, !DIExpression(), !1926)
    #dbg_value(i32 32, !1954, !DIExpression(), !1926)
    #dbg_value(i32 24, !1955, !DIExpression(), !1926)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1956
    #dbg_value(i32 0, !1957, !DIExpression(), !1926)
    #dbg_value(ptr %pk, !1958, !DIExpression(), !1926)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 123240, !dbg !1959
    #dbg_value(ptr %add.ptr, !1960, !DIExpression(), !1926)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1961
    #dbg_value(ptr %add.ptr2, !1962, !DIExpression(), !1926)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1963
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1964
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !1965
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !1966
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !1967
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !1968
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 860) #6, !dbg !1969
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1970
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 78) #8, !dbg !1971
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1973
  %. = zext i1 %cmp21 to i32, !dbg !1926
  ret i32 %., !dbg !1974
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1975 {
entry:
    #dbg_value(ptr %p, !1976, !DIExpression(), !1977)
    #dbg_value(ptr %cpk, !1978, !DIExpression(), !1977)
    #dbg_value(ptr %pk, !1979, !DIExpression(), !1977)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1980
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1981
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1982
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 36, i32 noundef 78) #6, !dbg !1983
  ret i32 0, !dbg !1984
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1985 {
entry:
  %SPS = alloca [500 x i64], align 8
  %zero = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !1988, !DIExpression(), !1989)
    #dbg_value(ptr %s, !1990, !DIExpression(), !1989)
    #dbg_value(ptr %P1, !1991, !DIExpression(), !1989)
    #dbg_value(ptr %P2, !1992, !DIExpression(), !1989)
    #dbg_value(ptr %P3, !1993, !DIExpression(), !1989)
    #dbg_value(ptr %eval, !1994, !DIExpression(), !1989)
    #dbg_declare(ptr %SPS, !1995, !DIExpression(), !1999)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4000) %SPS, i8 0, i32 4000, i1 false), !dbg !1999
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !2000
    #dbg_declare(ptr %zero, !2001, !DIExpression(), !2002)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(78) %zero, i8 0, i32 78, i1 false), !dbg !2002
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !2003
  ret void, !dbg !2004
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2005 {
entry:
  %PS = alloca [4300 x i64], align 8
    #dbg_value(ptr %p, !2008, !DIExpression(), !2009)
    #dbg_value(ptr %P1, !2010, !DIExpression(), !2009)
    #dbg_value(ptr %P2, !2011, !DIExpression(), !2009)
    #dbg_value(ptr %P3, !2012, !DIExpression(), !2009)
    #dbg_value(ptr %s, !2013, !DIExpression(), !2009)
    #dbg_value(ptr %SPS, !2014, !DIExpression(), !2009)
    #dbg_declare(ptr %PS, !2015, !DIExpression(), !2019)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(34400) %PS, i8 0, i32 34400, i1 false), !dbg !2019
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 10, ptr noundef nonnull %PS) #6, !dbg !2020
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 78, i32 noundef 10, i32 noundef 86, ptr noundef %SPS) #6, !dbg !2021
  ret void, !dbg !2022
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2023 {
entry:
  %accumulator = alloca [68800 x i64], align 8
    #dbg_value(ptr %P1, !2026, !DIExpression(), !2027)
    #dbg_value(ptr %P2, !2028, !DIExpression(), !2027)
    #dbg_value(ptr %P3, !2029, !DIExpression(), !2027)
    #dbg_value(ptr %S, !2030, !DIExpression(), !2027)
    #dbg_value(i32 78, !2031, !DIExpression(), !2027)
    #dbg_value(i32 78, !2032, !DIExpression(), !2027)
    #dbg_value(i32 8, !2033, !DIExpression(), !2027)
    #dbg_value(i32 10, !2034, !DIExpression(), !2027)
    #dbg_value(ptr %PS, !2035, !DIExpression(), !2027)
    #dbg_value(i32 86, !2036, !DIExpression(), !2027)
    #dbg_value(i32 5, !2037, !DIExpression(), !2027)
    #dbg_declare(ptr %accumulator, !2038, !DIExpression(), !2042)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(550400) %accumulator, i8 0, i32 550400, i1 false), !dbg !2042
    #dbg_value(i32 0, !2043, !DIExpression(), !2027)
    #dbg_value(i32 0, !2044, !DIExpression(), !2046)
  br label %for.cond, !dbg !2047

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 78, %entry ], !dbg !2048
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2048
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2049
    #dbg_value(i32 %row.0, !2044, !DIExpression(), !2046)
    #dbg_value(i32 %P1_used.0, !2043, !DIExpression(), !2027)
  %exitcond4 = icmp ne i32 %row.0, 78, !dbg !2050
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2052

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2053
  br label %for.cond2, !dbg !2053

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2056

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2027
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2058
    #dbg_value(i32 %j.0, !2059, !DIExpression(), !2060)
    #dbg_value(i32 %P1_used.1, !2043, !DIExpression(), !2027)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2061
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2053

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2027
  br label %for.cond21, !dbg !2063

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2065

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2068
    #dbg_value(i32 %col.0, !2069, !DIExpression(), !2070)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2071
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2065

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 40, !dbg !2073
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2073
  %mul8 = mul nuw nsw i32 %row.0, 10, !dbg !2075
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2076
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2077
  %mul11 = mul nuw nsw i32 %col.0, 86, !dbg !2078
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2079
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2079
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2079
  %conv = zext i8 %2 to i32, !dbg !2079
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2080
  %add.ptr15.idx = mul nuw nsw i32 %add13, 40, !dbg !2081
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2081
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2082
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2083
    #dbg_value(i32 %inc, !2069, !DIExpression(), !2070)
  br label %for.cond5, !dbg !2084, !llvm.loop !2085

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2043, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2027)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2087
    #dbg_value(i32 %inc16, !2043, !DIExpression(), !2027)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2088
    #dbg_value(i32 %inc18, !2059, !DIExpression(), !2060)
  br label %for.cond2, !dbg !2089, !llvm.loop !2090

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2092
    #dbg_value(i32 %j20.0, !2093, !DIExpression(), !2094)
  %exitcond3 = icmp ne i32 %j20.0, 8, !dbg !2095
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2063

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2097

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2100
    #dbg_value(i32 %col25.0, !2101, !DIExpression(), !2102)
  %exitcond2 = icmp ne i32 %col25.0, 10, !dbg !2103
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2097

for.body29:                                       ; preds = %for.cond26
  %mul30 = shl nuw nsw i32 %row.0, 3, !dbg !2105
  %add31 = or disjoint i32 %mul30, %j20.0, !dbg !2107
  %add.ptr33.idx = mul nuw nsw i32 %add31, 40, !dbg !2108
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2108
  %mul35 = mul nuw nsw i32 %row.0, 10, !dbg !2109
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2110
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2111
  %mul38 = mul nuw nsw i32 %col25.0, 86, !dbg !2112
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2113
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2113
  %arrayidx41 = getelementptr i8, ptr %4, i32 78, !dbg !2113
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2113
  %conv42 = zext i8 %5 to i32, !dbg !2113
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2114
  %add.ptr45.idx = mul nuw nsw i32 %add43, 40, !dbg !2115
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2115
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2116
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2117
    #dbg_value(i32 %inc47, !2101, !DIExpression(), !2102)
  br label %for.cond26, !dbg !2118, !llvm.loop !2119

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2121
    #dbg_value(i32 %inc50, !2093, !DIExpression(), !2094)
  br label %for.cond21, !dbg !2122, !llvm.loop !2123

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2125
    #dbg_value(i32 %inc53, !2044, !DIExpression(), !2046)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2126
  br label %for.cond, !dbg !2126, !llvm.loop !2127

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 8, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2129
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2129
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 78, %for.cond56.preheader ], !dbg !2130
    #dbg_value(i32 %row55.0, !2131, !DIExpression(), !2132)
    #dbg_value(i32 %P3_used.0, !2133, !DIExpression(), !2027)
  %exitcond9 = icmp ne i32 %row55.0, 86, !dbg !2134
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2056

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2136
  br label %for.cond61, !dbg !2136

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2139

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2027
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2140
    #dbg_value(i32 %j60.0, !2141, !DIExpression(), !2142)
    #dbg_value(i32 %P3_used.1, !2133, !DIExpression(), !2027)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2143
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2136

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2145

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2148
    #dbg_value(i32 %col65.0, !2149, !DIExpression(), !2150)
  %exitcond5 = icmp ne i32 %col65.0, 10, !dbg !2151
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2145

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 40, !dbg !2153
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2153
  %mul73 = mul nuw nsw i32 %row55.0, 10, !dbg !2155
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2156
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2157
  %mul76 = mul nuw nsw i32 %col65.0, 86, !dbg !2158
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2159
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2159
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2159
  %conv79 = zext i8 %8 to i32, !dbg !2159
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2160
  %add.ptr82.idx = mul nuw nsw i32 %add80, 40, !dbg !2161
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2161
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2162
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2163
    #dbg_value(i32 %inc84, !2149, !DIExpression(), !2150)
  br label %for.cond66, !dbg !2164, !llvm.loop !2165

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2133, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2027)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2167
    #dbg_value(i32 %inc86, !2133, !DIExpression(), !2027)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2168
    #dbg_value(i32 %inc88, !2141, !DIExpression(), !2142)
  br label %for.cond61, !dbg !2169, !llvm.loop !2170

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2027
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2172
    #dbg_value(i32 %inc91, !2131, !DIExpression(), !2132)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2173
  br label %for.cond56, !dbg !2173, !llvm.loop !2174

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2027
    #dbg_value(i32 %i.0, !2176, !DIExpression(), !2027)
  %exitcond10 = icmp ne i32 %i.0, 860, !dbg !2177
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2139

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 640, !dbg !2178
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2178
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 40, !dbg !2180
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2180
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2181
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2182
    #dbg_value(i32 %inc102, !2176, !DIExpression(), !2027)
  br label %while.cond, !dbg !2139, !llvm.loop !2183

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2185
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2186 {
entry:
  %accumulator = alloca [8000 x i64], align 8
    #dbg_value(ptr %PS, !2189, !DIExpression(), !2190)
    #dbg_value(ptr %S, !2191, !DIExpression(), !2190)
    #dbg_value(i32 78, !2192, !DIExpression(), !2190)
    #dbg_value(i32 10, !2193, !DIExpression(), !2190)
    #dbg_value(i32 86, !2194, !DIExpression(), !2190)
    #dbg_value(ptr %SPS, !2195, !DIExpression(), !2190)
    #dbg_declare(ptr %accumulator, !2196, !DIExpression(), !2200)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64000) %accumulator, i8 0, i32 64000, i1 false), !dbg !2200
    #dbg_value(i32 5, !2201, !DIExpression(), !2190)
    #dbg_value(i32 0, !2202, !DIExpression(), !2204)
  br label %for.cond, !dbg !2205

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2206
    #dbg_value(i32 %row.0, !2202, !DIExpression(), !2204)
  %exitcond2 = icmp ne i32 %row.0, 10, !dbg !2207
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2209

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2210

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2213

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2214
    #dbg_value(i32 %j.0, !2215, !DIExpression(), !2216)
  %exitcond1 = icmp ne i32 %j.0, 86, !dbg !2217
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2210

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2219

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2222
    #dbg_value(i32 %col.0, !2223, !DIExpression(), !2224)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2225
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2219

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 10, !dbg !2227
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2229
  %add.ptr.idx = mul nuw nsw i32 %add7, 40, !dbg !2230
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2230
  %mul9 = mul nuw nsw i32 %row.0, 10, !dbg !2231
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2232
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2233
  %mul12 = mul nuw nsw i32 %row.0, 86, !dbg !2234
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2235
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2235
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2235
  %conv = zext i8 %1 to i32, !dbg !2235
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2236
  %add.ptr16.idx = mul nuw nsw i32 %add14, 40, !dbg !2237
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2237
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2238
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2239
    #dbg_value(i32 %add17, !2223, !DIExpression(), !2224)
  br label %for.cond4, !dbg !2240, !llvm.loop !2241

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2243
    #dbg_value(i32 %inc, !2215, !DIExpression(), !2216)
  br label %for.cond1, !dbg !2244, !llvm.loop !2245

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2247
    #dbg_value(i32 %inc21, !2202, !DIExpression(), !2204)
  br label %for.cond, !dbg !2248, !llvm.loop !2249

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2190
    #dbg_value(i32 %i.0, !2251, !DIExpression(), !2190)
  %exitcond3 = icmp ne i32 %i.0, 100, !dbg !2252
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2213

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 640, !dbg !2253
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2253
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 40, !dbg !2255
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2255
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2256
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2257
    #dbg_value(i32 %inc32, !2251, !DIExpression(), !2190)
  br label %while.cond, !dbg !2213, !llvm.loop !2258

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2260
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2261 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2264, !DIExpression(), !2265)
    #dbg_value(ptr %in, !2266, !DIExpression(), !2265)
    #dbg_value(ptr %acc, !2267, !DIExpression(), !2265)
    #dbg_value(i32 0, !2268, !DIExpression(), !2270)
  br label %for.cond, !dbg !2271

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2272
    #dbg_value(i32 %i.0, !2268, !DIExpression(), !2270)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2273
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2275

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2276
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2276
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2278
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2279
  %xor = xor i64 %1, %0, !dbg !2279
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2279
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2280
    #dbg_value(i32 %inc, !2268, !DIExpression(), !2270)
  br label %for.cond, !dbg !2281, !llvm.loop !2282

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2284
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2285 {
entry:
    #dbg_value(i32 5, !2288, !DIExpression(), !2289)
    #dbg_value(ptr %bins, !2290, !DIExpression(), !2289)
    #dbg_value(ptr %out, !2291, !DIExpression(), !2289)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 200, !dbg !2292
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2293
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2294
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 440, !dbg !2295
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2296
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2297
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2298
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2299
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2300
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2301
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2302
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2303
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2304
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2305
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2306
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2307
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2308
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2309
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2310
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2311
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2312
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2313
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2314
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2315
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2316
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2317
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2318
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2319
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2320
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2321
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2322
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2323
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2324
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2325
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2326
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2327
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2328
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2329
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2330
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2331
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2332
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2333
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2334
  call fastcc void @m_vec_copy(i32 noundef 5, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2335
  ret void, !dbg !2336
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2337 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2338, !DIExpression(), !2339)
    #dbg_value(ptr %in, !2340, !DIExpression(), !2339)
    #dbg_value(ptr %acc, !2341, !DIExpression(), !2339)
    #dbg_value(i64 1229782938247303441, !2342, !DIExpression(), !2339)
    #dbg_value(i32 0, !2343, !DIExpression(), !2345)
  br label %for.cond, !dbg !2346

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2347
    #dbg_value(i32 %i.0, !2343, !DIExpression(), !2345)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2348
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2350

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2351
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2351
  %and = and i64 %0, 1229782938247303441, !dbg !2353
    #dbg_value(i64 %and, !2354, !DIExpression(), !2355)
  %xor = lshr i64 %0, 1, !dbg !2356
  %shr = and i64 %xor, 8608480567731124087, !dbg !2356
  %mul = mul nuw i64 %and, 9, !dbg !2357
  %xor2 = xor i64 %shr, %mul, !dbg !2358
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2359
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2360
  %xor4 = xor i64 %1, %xor2, !dbg !2360
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2360
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2361
    #dbg_value(i32 %inc, !2343, !DIExpression(), !2345)
  br label %for.cond, !dbg !2362, !llvm.loop !2363

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2365
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2366 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2367, !DIExpression(), !2368)
    #dbg_value(ptr %in, !2369, !DIExpression(), !2368)
    #dbg_value(ptr %acc, !2370, !DIExpression(), !2368)
    #dbg_value(i64 -8608480567731124088, !2371, !DIExpression(), !2368)
    #dbg_value(i32 0, !2372, !DIExpression(), !2374)
  br label %for.cond, !dbg !2375

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2376
    #dbg_value(i32 %i.0, !2372, !DIExpression(), !2374)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2377
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2379

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2380
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2380
    #dbg_value(i64 %0, !2382, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2383)
  %xor = shl i64 %0, 1, !dbg !2384
  %shl = and i64 %xor, -1229782938247303442, !dbg !2384
  %and = lshr i64 %0, 3, !dbg !2385
  %shr = and i64 %and, 1229782938247303441, !dbg !2385
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2386
  %xor2 = xor i64 %shl, %mul, !dbg !2387
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2388
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2389
  %xor4 = xor i64 %1, %xor2, !dbg !2389
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2389
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2390
    #dbg_value(i32 %inc, !2372, !DIExpression(), !2374)
  br label %for.cond, !dbg !2391, !llvm.loop !2392

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2394
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2395 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2396, !DIExpression(), !2397)
    #dbg_value(ptr %in, !2398, !DIExpression(), !2397)
    #dbg_value(ptr %out, !2399, !DIExpression(), !2397)
    #dbg_value(i32 0, !2400, !DIExpression(), !2402)
  br label %for.cond, !dbg !2403

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2404
    #dbg_value(i32 %i.0, !2400, !DIExpression(), !2402)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2405
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2407

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2408
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2408
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2410
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2411
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2412
    #dbg_value(i32 %inc, !2400, !DIExpression(), !2402)
  br label %for.cond, !dbg !2413, !llvm.loop !2414

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2416
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2417 {
entry:
    #dbg_value(ptr %p, !2448, !DIExpression(), !2449)
    #dbg_value(ptr %in, !2450, !DIExpression(), !2449)
    #dbg_value(ptr %out, !2451, !DIExpression(), !2449)
    #dbg_value(i32 %size, !2452, !DIExpression(), !2449)
    #dbg_value(i32 5, !2453, !DIExpression(), !2449)
    #dbg_value(i32 0, !2454, !DIExpression(), !2449)
    #dbg_value(i32 0, !2455, !DIExpression(), !2457)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2458
  br label %for.cond, !dbg !2458

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2459
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2459
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2460
    #dbg_value(i32 %r.0, !2455, !DIExpression(), !2457)
    #dbg_value(i32 %m_vecs_stored.0, !2454, !DIExpression(), !2449)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2461
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2463

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2464
  br label %for.cond1, !dbg !2464

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2449
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2467
    #dbg_value(i32 %c.0, !2468, !DIExpression(), !2469)
    #dbg_value(i32 %m_vecs_stored.1, !2454, !DIExpression(), !2449)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2470
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2464

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2472
  %add = add nsw i32 %mul, %c.0, !dbg !2474
  %add.ptr.idx = mul nsw i32 %add, 40, !dbg !2475
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2475
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2476
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2476
  call fastcc void @m_vec_copy.17(i32 noundef 5, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2477
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2478
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2478

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2480
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2482
  %add.ptr11.idx = mul nsw i32 %add9, 40, !dbg !2483
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2483
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2484
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2484
  call fastcc void @m_vec_add.18(i32 noundef 5, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2485
  br label %for.inc, !dbg !2486

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2454, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2449)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2487
    #dbg_value(i32 %inc, !2454, !DIExpression(), !2449)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2488
    #dbg_value(i32 %inc14, !2468, !DIExpression(), !2469)
  br label %for.cond1, !dbg !2489, !llvm.loop !2490

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2449
  %inc16 = add nuw i32 %r.0, 1, !dbg !2492
    #dbg_value(i32 %inc16, !2455, !DIExpression(), !2457)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2493
  br label %for.cond, !dbg !2493, !llvm.loop !2494

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2496
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2497 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2498, !DIExpression(), !2499)
    #dbg_value(ptr %in, !2500, !DIExpression(), !2499)
    #dbg_value(ptr %out, !2501, !DIExpression(), !2499)
    #dbg_value(i32 0, !2502, !DIExpression(), !2504)
  br label %for.cond, !dbg !2505

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2506
    #dbg_value(i32 %i.0, !2502, !DIExpression(), !2504)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2507
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2509

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2510
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2510
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2512
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2513
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2514
    #dbg_value(i32 %inc, !2502, !DIExpression(), !2504)
  br label %for.cond, !dbg !2515, !llvm.loop !2516

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2518
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2519 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2520, !DIExpression(), !2521)
    #dbg_value(ptr %in, !2522, !DIExpression(), !2521)
    #dbg_value(ptr %acc, !2523, !DIExpression(), !2521)
    #dbg_value(i32 0, !2524, !DIExpression(), !2526)
  br label %for.cond, !dbg !2527

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2528
    #dbg_value(i32 %i.0, !2524, !DIExpression(), !2526)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2529
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2531

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2532
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2532
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2534
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2535
  %xor = xor i64 %1, %0, !dbg !2535
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2535
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2536
    #dbg_value(i32 %inc, !2524, !DIExpression(), !2526)
  br label %for.cond, !dbg !2537, !llvm.loop !2538

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2540
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2541 {
entry:
  %Ar = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2544, !DIExpression(), !2545)
    #dbg_value(ptr %A, !2546, !DIExpression(), !2545)
    #dbg_value(ptr %y, !2547, !DIExpression(), !2545)
    #dbg_value(ptr %r, !2548, !DIExpression(), !2545)
    #dbg_value(ptr %x, !2549, !DIExpression(), !2545)
    #dbg_value(i32 %k, !2550, !DIExpression(), !2545)
    #dbg_value(i32 %o, !2551, !DIExpression(), !2545)
    #dbg_value(i32 %m, !2552, !DIExpression(), !2545)
    #dbg_value(i32 %A_cols, !2553, !DIExpression(), !2545)
    #dbg_value(i32 0, !2554, !DIExpression(), !2556)
  %0 = mul nsw i32 %o, %k, !dbg !2557
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2557
  br label %for.cond, !dbg !2557

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2558
    #dbg_value(i32 %i.0, !2554, !DIExpression(), !2556)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2559
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2561

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2562
  br label %for.cond3, !dbg !2562

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2564
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2564
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2566
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2567
  %inc = add nuw i32 %i.0, 1, !dbg !2568
    #dbg_value(i32 %inc, !2554, !DIExpression(), !2556)
  br label %for.cond, !dbg !2569, !llvm.loop !2570

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2572
    #dbg_value(i32 %i2.0, !2573, !DIExpression(), !2574)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2575
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2562

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2577
  %mul7 = mul nsw i32 %k, %o, !dbg !2579
  %add = add nsw i32 %mul7, 1, !dbg !2580
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2581
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2582
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2582
  store i8 0, ptr %arrayidx10, align 1, !dbg !2583
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2584
    #dbg_value(i32 %inc12, !2573, !DIExpression(), !2574)
  br label %for.cond3, !dbg !2585, !llvm.loop !2586

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2588
  %add15 = add nsw i32 %mul14, 1, !dbg !2589
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2590
    #dbg_value(i32 0, !2591, !DIExpression(), !2593)
  br label %for.cond17, !dbg !2594

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2595
    #dbg_value(i32 %i16.0, !2591, !DIExpression(), !2593)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2596
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2598

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2599
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2599
  %arrayidx21 = getelementptr inbounds nuw [78 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2601
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2601
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2602
  %mul22 = mul nsw i32 %k, %o, !dbg !2603
  %mul23 = mul nsw i32 %k, %o, !dbg !2604
  %add24 = add nsw i32 %mul23, 1, !dbg !2605
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2606
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2607
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2607
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2608
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2609
    #dbg_value(i32 %inc29, !2591, !DIExpression(), !2593)
  br label %for.cond17, !dbg !2610, !llvm.loop !2611

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2613
  %add32 = add nsw i32 %mul31, 1, !dbg !2614
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2615
    #dbg_value(i8 0, !2616, !DIExpression(), !2545)
    #dbg_value(i32 0, !2617, !DIExpression(), !2619)
  %6 = add i32 %A_cols, -1, !dbg !2620
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2620
  br label %for.cond34, !dbg !2620

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2545
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2621
    #dbg_value(i32 %i33.0, !2617, !DIExpression(), !2619)
    #dbg_value(i8 %full_rank.0, !2616, !DIExpression(), !2545)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2622
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2624

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2545)
  %sub37 = add nsw i32 %m, -1, !dbg !2625
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2627
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2628
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2628
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2628
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2545)
  %or12 = or i8 %full_rank.0, %8, !dbg !2629
    #dbg_value(i8 %or12, !2616, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2545)
    #dbg_value(i8 %or12, !2616, !DIExpression(), !2545)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2630
    #dbg_value(i32 %inc44, !2617, !DIExpression(), !2619)
  br label %for.cond34, !dbg !2631, !llvm.loop !2632

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2545
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2634
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2634

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2636

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2636, !llvm.loop !2638

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2640
    #dbg_value(i32 %row.0, !2641, !DIExpression(), !2642)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2643
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2636

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2645, !DIExpression(), !2545)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2646
  %div = sdiv i32 32, %sub54, !dbg !2646
  %add55 = add nsw i32 %row.0, %div, !dbg !2646
  %mul56 = mul nsw i32 %k, %o, !dbg !2646
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2646
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2646

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2646
  %div60 = sdiv i32 32, %sub59, !dbg !2646
  %add61 = add nsw i32 %row.0, %div60, !dbg !2646
  br label %cond.end, !dbg !2646

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2646
  br label %cond.end, !dbg !2646

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2646
    #dbg_value(i32 %cond, !2648, !DIExpression(), !2545)
    #dbg_value(i32 %row.0, !2649, !DIExpression(), !2651)
  br label %for.cond63, !dbg !2652

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2653
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2654
    #dbg_value(i32 %col.0, !2649, !DIExpression(), !2651)
    #dbg_value(i8 %finished.0, !2645, !DIExpression(), !2545)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2655
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2657

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2658
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2660
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2660
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2660
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2661
  %not = xor i8 %finished.0, -1, !dbg !2662
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2663, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2545)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2664
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2665
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2665
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2665
  %13 = and i8 %12, %not, !dbg !2666
  %and801 = and i8 %13, %call70, !dbg !2666
    #dbg_value(i8 %and801, !2667, !DIExpression(), !2668)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2669
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2670
  %xor2 = xor i8 %14, %and801, !dbg !2670
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2670
    #dbg_value(i32 0, !2671, !DIExpression(), !2673)
  br label %for.cond87, !dbg !2674

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2675
    #dbg_value(i32 %i86.0, !2671, !DIExpression(), !2673)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2676
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2678

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2679
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2681
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2681
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2681
  %conv94 = zext i8 %16 to i64, !dbg !2682
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2683
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2684
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2685
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2685
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2685
  %conv99 = zext i8 %18 to i64, !dbg !2686
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2687
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2688
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2689
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2690
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2691
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2691
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2691
  %conv106 = zext i8 %20 to i64, !dbg !2692
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2693
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2694
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2695
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2696
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2697
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2697
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2697
  %conv113 = zext i8 %22 to i64, !dbg !2698
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2699
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2700
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2701
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2702
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2703
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2703
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2703
  %conv120 = zext i8 %24 to i64, !dbg !2704
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2705
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2706
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2707
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2708
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2709
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2709
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2709
  %conv127 = zext i8 %26 to i64, !dbg !2710
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2711
  %xor129 = xor i64 %xor122, %shl128, !dbg !2712
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2713
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2714
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2715
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2715
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2715
  %conv134 = zext i8 %28 to i64, !dbg !2716
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2717
  %xor136 = xor i64 %xor129, %shl135, !dbg !2718
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2719
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2720
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2721
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2721
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2721
  %conv141 = zext i8 %30 to i64, !dbg !2722
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2723
  %xor143 = xor i64 %xor136, %shl142, !dbg !2724
    #dbg_value(i64 %xor143, !2725, !DIExpression(), !2726)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2727
    #dbg_value(i64 %call144, !2725, !DIExpression(), !2726)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2728
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2728
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2729
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2729
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2730
  %33 = trunc i64 %call144 to i8, !dbg !2730
  %34 = and i8 %33, 15, !dbg !2730
  %conv152 = xor i8 %34, %32, !dbg !2730
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2730
  %shr = lshr i64 %call144, 8, !dbg !2731
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2732
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2732
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2733
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2733
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2734
  %37 = trunc i64 %shr to i8, !dbg !2734
  %38 = and i8 %37, 15, !dbg !2734
  %conv161 = xor i8 %38, %36, !dbg !2734
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2734
  %shr162 = lshr i64 %call144, 16, !dbg !2735
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2736
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2736
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2737
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2737
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2738
  %41 = trunc i64 %shr162 to i8, !dbg !2738
  %42 = and i8 %41, 15, !dbg !2738
  %conv171 = xor i8 %42, %40, !dbg !2738
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2738
  %shr172 = lshr i64 %call144, 24, !dbg !2739
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2740
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2740
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2741
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2741
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2742
  %45 = trunc i64 %shr172 to i8, !dbg !2742
  %46 = and i8 %45, 15, !dbg !2742
  %conv181 = xor i8 %46, %44, !dbg !2742
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2742
  %shr182 = lshr i64 %call144, 32, !dbg !2743
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2744
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2744
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2745
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2745
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2746
  %49 = trunc i64 %shr182 to i8, !dbg !2746
  %50 = and i8 %49, 15, !dbg !2746
  %conv191 = xor i8 %50, %48, !dbg !2746
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2746
  %shr192 = lshr i64 %call144, 40, !dbg !2747
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2748
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2748
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2749
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2749
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2750
  %53 = trunc i64 %shr192 to i8, !dbg !2750
  %54 = and i8 %53, 15, !dbg !2750
  %conv201 = xor i8 %54, %52, !dbg !2750
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2750
  %shr202 = lshr i64 %call144, 48, !dbg !2751
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2752
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2752
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2753
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2753
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2754
  %57 = trunc i64 %shr202 to i8, !dbg !2754
  %58 = and i8 %57, 15, !dbg !2754
  %conv211 = xor i8 %58, %56, !dbg !2754
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2754
  %shr212 = lshr i64 %call144, 56, !dbg !2755
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2756
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2756
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2757
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2757
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2758
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2758
  %conv221 = xor i8 %60, %61, !dbg !2758
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2758
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2759
    #dbg_value(i32 %add223, !2671, !DIExpression(), !2673)
  br label %for.cond87, !dbg !2760, !llvm.loop !2761

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2645, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2545)
  %or2273 = or i8 %finished.0, %call70, !dbg !2763
    #dbg_value(i8 %or2273, !2645, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2545)
    #dbg_value(i8 %or2273, !2645, !DIExpression(), !2545)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2764
    #dbg_value(i32 %inc230, !2649, !DIExpression(), !2651)
  br label %for.cond63, !dbg !2765, !llvm.loop !2766

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2768

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2545
  ret i32 %retval.0, !dbg !2768
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2769 {
entry:
    #dbg_value(ptr %a, !2770, !DIExpression(), !2771)
    #dbg_value(ptr %b, !2772, !DIExpression(), !2771)
    #dbg_value(ptr %c, !2773, !DIExpression(), !2771)
    #dbg_value(i32 %colrow_ab, !2774, !DIExpression(), !2771)
    #dbg_value(i32 %row_a, !2775, !DIExpression(), !2771)
    #dbg_value(i32 1, !2776, !DIExpression(), !2771)
    #dbg_value(i32 0, !2777, !DIExpression(), !2779)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2780
  br label %for.cond, !dbg !2780

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2781
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2770, !DIExpression(), !2771)
    #dbg_value(ptr %c.addr.0, !2773, !DIExpression(), !2771)
    #dbg_value(i32 %i.0, !2777, !DIExpression(), !2779)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2782
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2784

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2785

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2788
    #dbg_value(i32 poison, !2789, !DIExpression(), !2790)
    #dbg_value(ptr %c.addr.1, !2773, !DIExpression(), !2771)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2785

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2791
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2794
    #dbg_value(i32 1, !2789, !DIExpression(), !2790)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2795
    #dbg_value(ptr %incdec.ptr, !2773, !DIExpression(), !2771)
  br label %for.cond1, !dbg !2796, !llvm.loop !2797

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2799
    #dbg_value(i32 %inc5, !2777, !DIExpression(), !2779)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2800
    #dbg_value(ptr %add.ptr6, !2770, !DIExpression(), !2771)
  br label %for.cond, !dbg !2801, !llvm.loop !2802

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2804
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2805 {
entry:
    #dbg_value(i8 %a, !2806, !DIExpression(), !2807)
    #dbg_value(i8 %b, !2808, !DIExpression(), !2807)
  %xor1 = xor i8 %a, %b, !dbg !2809
  ret i8 %xor1, !dbg !2810
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2811 {
entry:
  %_pivot_row = alloca [6 x i64], align 32
  %_pivot_row2 = alloca [6 x i64], align 32
  %packed_A = alloca [468 x i64], align 32
  %temp = alloca [96 x i8], align 1
    #dbg_value(ptr %A, !2815, !DIExpression(), !2816)
    #dbg_value(i32 %nrows, !2817, !DIExpression(), !2816)
    #dbg_value(i32 %ncols, !2818, !DIExpression(), !2816)
    #dbg_declare(ptr %_pivot_row, !2819, !DIExpression(), !2823)
    #dbg_declare(ptr %_pivot_row2, !2824, !DIExpression(), !2825)
    #dbg_declare(ptr %packed_A, !2826, !DIExpression(), !2830)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(3744) %packed_A, i8 0, i32 3744, i1 false), !dbg !2830
  %add = add nsw i32 %ncols, 15, !dbg !2831
  %div = sdiv i32 %add, 16, !dbg !2832
    #dbg_value(i32 %div, !2833, !DIExpression(), !2816)
    #dbg_value(i32 0, !2834, !DIExpression(), !2836)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2837
  br label %for.cond, !dbg !2837

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2838
    #dbg_value(i32 %i.0, !2834, !DIExpression(), !2836)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2839
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2841

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2842
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2842
  br label %for.cond3, !dbg !2842

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2844
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2846
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2847
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2848
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2849
  %inc = add nuw i32 %i.0, 1, !dbg !2850
    #dbg_value(i32 %inc, !2834, !DIExpression(), !2836)
  br label %for.cond, !dbg !2851, !llvm.loop !2852

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2854
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2816
    #dbg_value(i32 %pivot_row.0, !2855, !DIExpression(), !2816)
    #dbg_value(i32 %pivot_col.0, !2856, !DIExpression(), !2857)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2858
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2842

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2860

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2862
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2862
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2862
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2862
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2862
    #dbg_value(i32 %cond, !2864, !DIExpression(), !2865)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2866
    #dbg_value(i32 %cond16, !2867, !DIExpression(), !2865)
    #dbg_value(i32 0, !2868, !DIExpression(), !2870)
  br label %for.cond18, !dbg !2871

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2872
    #dbg_value(i32 %i17.0, !2868, !DIExpression(), !2870)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2873
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2875

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2866
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2866
  br label %for.cond25, !dbg !2876

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2878
  store i64 0, ptr %arrayidx, align 8, !dbg !2880
  %arrayidx21 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2881
  store i64 0, ptr %arrayidx21, align 8, !dbg !2882
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2883
    #dbg_value(i32 %inc23, !2868, !DIExpression(), !2870)
  br label %for.cond18, !dbg !2884, !llvm.loop !2885

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2865
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2865
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2887
    #dbg_value(i32 %row.0, !2888, !DIExpression(), !2887)
    #dbg_value(i8 %pivot.0, !2889, !DIExpression(), !2865)
    #dbg_value(i64 %pivot_is_zero.0, !2890, !DIExpression(), !2865)
  %add27 = add nsw i32 %cond16, 32, !dbg !2891
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2891
  %sub30 = add nsw i32 %nrows, -1, !dbg !2891
  %add32 = add nsw i32 %cond16, 32, !dbg !2891
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2891
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2893
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2876

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2894
  %not = xor i64 %call, -1, !dbg !2896
    #dbg_value(i64 %not, !2897, !DIExpression(), !2898)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2899
    #dbg_value(i64 %call37, !2900, !DIExpression(), !2898)
    #dbg_value(i32 0, !2901, !DIExpression(), !2903)
  br label %for.cond38, !dbg !2904

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2905
    #dbg_value(i32 %j.0, !2901, !DIExpression(), !2903)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2906
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2908

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2909
  %or = or i64 %and, %not, !dbg !2911
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2912
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2913
  %arrayidx43 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2914
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2914
  %and44 = and i64 %or, %0, !dbg !2915
  %arrayidx45 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2916
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2917
  %xor = xor i64 %1, %and44, !dbg !2917
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2917
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2918
    #dbg_value(i32 %inc47, !2901, !DIExpression(), !2903)
  br label %for.cond38, !dbg !2919, !llvm.loop !2920

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2922
    #dbg_value(i8 %call50, !2889, !DIExpression(), !2865)
  %conv = zext nneg i8 %call50 to i32, !dbg !2923
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2924
    #dbg_value(i64 %call51, !2890, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2865)
  %not52 = xor i64 %call51, -1, !dbg !2925
    #dbg_value(i64 %not52, !2890, !DIExpression(), !2865)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2926
    #dbg_value(i32 %inc54, !2888, !DIExpression(), !2887)
  br label %for.cond25, !dbg !2927, !llvm.loop !2928

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2865
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2865
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2930
    #dbg_value(i8 %call56, !2931, !DIExpression(), !2816)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2932
    #dbg_value(i32 %cond, !2933, !DIExpression(), !2935)
  br label %for.cond60, !dbg !2936

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2937
    #dbg_value(i32 %row59.0, !2933, !DIExpression(), !2935)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2938
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2940

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2941

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2943
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2945
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2945
    #dbg_value(i64 %and67, !2946, !DIExpression(), !2947)
    #dbg_value(i64 %and67.demorgan, !2948, !DIExpression(), !2947)
    #dbg_value(i32 0, !2949, !DIExpression(), !2951)
  br label %for.cond69, !dbg !2952

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2953
    #dbg_value(i32 %col.0, !2949, !DIExpression(), !2951)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2954
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2956

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2957
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2959
  %arrayidx75 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2960
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2960
  %and76 = and i64 %and67.demorgan, %2, !dbg !2961
  %arrayidx77 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2962
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2962
  %and78 = and i64 %3, %and67, !dbg !2963
  %add79 = add i64 %and76, %and78, !dbg !2964
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2965
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2966
  %arrayidx82 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2967
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2968
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2969
    #dbg_value(i32 %inc84, !2949, !DIExpression(), !2951)
  br label %for.cond69, !dbg !2970, !llvm.loop !2971

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2973
    #dbg_value(i32 %inc87, !2933, !DIExpression(), !2935)
  br label %for.cond60, !dbg !2974, !llvm.loop !2975

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2977
    #dbg_value(i32 %row89.0, !2978, !DIExpression(), !2979)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2980
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2941

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2982
    #dbg_value(i1 %cmp94, !2984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2985)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2986
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2987
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2988
    #dbg_value(i8 %call100, !2989, !DIExpression(), !2985)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2990
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2991
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2992
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2993
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2994
    #dbg_value(i32 %inc110, !2978, !DIExpression(), !2979)
  br label %for.cond90, !dbg !2995, !llvm.loop !2996

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2855, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2816)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2998
  %5 = add i32 %4, 1, !dbg !2998
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2998
    #dbg_value(i32 %conv116, !2855, !DIExpression(), !2816)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2999
    #dbg_value(i32 %inc118, !2856, !DIExpression(), !2857)
  br label %for.cond3, !dbg !3000, !llvm.loop !3001

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3003
    #dbg_value(i32 %i120.0, !3004, !DIExpression(), !3005)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3006
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2860

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3008
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3010
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !3011
    #dbg_value(i32 0, !3012, !DIExpression(), !3014)
  br label %for.cond130, !dbg !3015

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3016
    #dbg_value(i32 %j129.0, !3012, !DIExpression(), !3014)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3017
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3019

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [96 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3020
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3020
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3022
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3023
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3023
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3024
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3025
    #dbg_value(i32 %inc139, !3012, !DIExpression(), !3014)
  br label %for.cond130, !dbg !3026, !llvm.loop !3027

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3029
    #dbg_value(i32 %inc142, !3004, !DIExpression(), !3005)
  br label %for.cond121, !dbg !3030, !llvm.loop !3031

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 96) #8, !dbg !3033
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 48) #8, !dbg !3034
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 48) #8, !dbg !3035
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 3744) #8, !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3038 {
entry:
    #dbg_value(i8 %a, !3040, !DIExpression(), !3041)
    #dbg_value(i8 0, !3042, !DIExpression(), !3041)
  %0 = icmp ne i8 %a, 0, !dbg !3043
  %conv3 = sext i1 %0 to i8, !dbg !3044
  %1 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3045
  %xor5 = xor i8 %1, %conv3, !dbg !3046
  ret i8 %xor5, !dbg !3047
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3048 {
entry:
    #dbg_value(i8 %a, !3051, !DIExpression(), !3052)
    #dbg_value(i64 %b, !3053, !DIExpression(), !3052)
  %0 = and i8 %a, 1, !dbg !3054
  %conv1 = zext nneg i8 %0 to i64, !dbg !3055
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3056
    #dbg_value(i64 %mul, !3057, !DIExpression(), !3052)
  %1 = and i8 %a, 2, !dbg !3058
  %conv4 = zext nneg i8 %1 to i64, !dbg !3059
  %mul5 = mul i64 %b, %conv4, !dbg !3060
  %xor = xor i64 %mul, %mul5, !dbg !3061
    #dbg_value(i64 %xor, !3057, !DIExpression(), !3052)
  %2 = and i8 %a, 4, !dbg !3062
  %conv8 = zext nneg i8 %2 to i64, !dbg !3063
  %mul9 = mul i64 %b, %conv8, !dbg !3064
  %xor10 = xor i64 %xor, %mul9, !dbg !3065
    #dbg_value(i64 %xor10, !3057, !DIExpression(), !3052)
  %3 = and i8 %a, 8, !dbg !3066
  %conv13 = zext nneg i8 %3 to i64, !dbg !3067
  %mul14 = mul i64 %b, %conv13, !dbg !3068
  %xor15 = xor i64 %xor10, %mul14, !dbg !3069
    #dbg_value(i64 %xor15, !3057, !DIExpression(), !3052)
    #dbg_value(i64 %xor15, !3070, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3052)
  %shr = lshr i64 %xor15, 4, !dbg !3071
  %and16 = lshr i64 %xor15, 3, !dbg !3072
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3072
  %4 = xor i64 %shr, %shr18, !dbg !3073
  %xor19 = xor i64 %4, %xor15, !dbg !3073
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3074
    #dbg_value(i64 %and20, !3075, !DIExpression(), !3052)
  ret i64 %and20, !dbg !3076
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3077 {
entry:
    #dbg_value(ptr %in, !3080, !DIExpression(), !3081)
    #dbg_value(ptr %out, !3082, !DIExpression(), !3081)
    #dbg_value(i32 %ncols, !3083, !DIExpression(), !3081)
    #dbg_value(ptr %out, !3084, !DIExpression(), !3081)
    #dbg_value(i32 0, !3085, !DIExpression(), !3081)
  br label %for.cond, !dbg !3086

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3088
    #dbg_value(i32 %i.0, !3085, !DIExpression(), !3081)
  %add = or disjoint i32 %i.0, 1, !dbg !3089
  %cmp = icmp slt i32 %add, %ncols, !dbg !3091
  br i1 %cmp, label %for.body, label %for.end, !dbg !3092

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3093
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3093
  %add2 = or disjoint i32 %i.0, 1, !dbg !3095
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3096
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3096
  %shl5 = shl i8 %1, 4, !dbg !3097
  %or = or i8 %shl5, %0, !dbg !3098
  %div = lshr exact i32 %i.0, 1, !dbg !3099
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3100
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3101
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3102
    #dbg_value(i32 %add8, !3085, !DIExpression(), !3081)
  br label %for.cond, !dbg !3103, !llvm.loop !3104

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3088
  %2 = and i32 %ncols, -2147483647, !dbg !3106
  %cmp9 = icmp eq i32 %2, 1, !dbg !3106
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3106

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3108
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3108
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3110
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3111
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3112
  br label %if.end, !dbg !3113

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3114
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3115 {
entry:
    #dbg_value(i32 %a, !3118, !DIExpression(), !3119)
    #dbg_value(i32 %b, !3120, !DIExpression(), !3119)
  %xor = xor i32 %a, %b, !dbg !3121
  %0 = icmp sgt i32 %xor, 0, !dbg !3122
  %shr = sext i1 %0 to i64, !dbg !3122
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3123
  %xor1 = xor i64 %1, %shr, !dbg !3124
  ret i64 %xor1, !dbg !3125
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3126 {
entry:
    #dbg_value(i32 %a, !3127, !DIExpression(), !3128)
    #dbg_value(i32 %b, !3129, !DIExpression(), !3128)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3130, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3128)
  %0 = icmp slt i32 %b, %a, !dbg !3131
  %shr = sext i1 %0 to i64, !dbg !3131
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3132
  %xor = xor i64 %1, %shr, !dbg !3133
  ret i64 %xor, !dbg !3134
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3135 {
entry:
    #dbg_value(ptr %in, !3138, !DIExpression(), !3139)
    #dbg_value(i32 %index, !3140, !DIExpression(), !3139)
  %div = sdiv i32 %index, 16, !dbg !3141
    #dbg_value(i32 %div, !3142, !DIExpression(), !3139)
  %rem = srem i32 %index, 16, !dbg !3143
    #dbg_value(i32 %rem, !3144, !DIExpression(), !3139)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3145
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3145
  %mul = shl nsw i32 %rem, 2, !dbg !3146
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3147
  %shr = lshr i64 %0, %sh_prom, !dbg !3147
  %1 = trunc i64 %shr to i8, !dbg !3148
  %conv = and i8 %1, 15, !dbg !3148
  ret i8 %conv, !dbg !3149
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3150 {
entry:
    #dbg_value(i8 %a, !3153, !DIExpression(), !3154)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3155
    #dbg_value(i8 %call, !3156, !DIExpression(), !3154)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3157
    #dbg_value(i8 %call1, !3158, !DIExpression(), !3154)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3159
    #dbg_value(i8 %call2, !3160, !DIExpression(), !3154)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3161
    #dbg_value(i8 %call3, !3162, !DIExpression(), !3154)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3163
    #dbg_value(i8 %call4, !3164, !DIExpression(), !3154)
  ret i8 %call4, !dbg !3165
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3166 {
entry:
    #dbg_value(i32 %legs, !3169, !DIExpression(), !3170)
    #dbg_value(ptr %in, !3171, !DIExpression(), !3170)
    #dbg_value(i8 %a, !3172, !DIExpression(), !3170)
    #dbg_value(ptr %acc, !3173, !DIExpression(), !3170)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3174
    #dbg_value(i32 %call, !3175, !DIExpression(), !3170)
    #dbg_value(i64 1229782938247303441, !3176, !DIExpression(), !3170)
    #dbg_value(i32 0, !3177, !DIExpression(), !3179)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3180
  br label %for.cond, !dbg !3180

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3181
    #dbg_value(i32 %i.0, !3177, !DIExpression(), !3179)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3182
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3184

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3185
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3185
  %and = and i64 %0, 1229782938247303441, !dbg !3187
  %and1 = and i32 %call, 255, !dbg !3188
  %conv = zext nneg i32 %and1 to i64, !dbg !3189
  %mul = mul i64 %and, %conv, !dbg !3190
  %shr = lshr i64 %0, 1, !dbg !3191
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3192
  %shr4 = lshr i32 %call, 8, !dbg !3193
  %and5 = and i32 %shr4, 15, !dbg !3194
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3195
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3196
  %xor = xor i64 %mul, %mul7, !dbg !3197
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3198
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3198
  %shr9 = lshr i64 %1, 2, !dbg !3199
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3200
  %shr11 = lshr i32 %call, 16, !dbg !3201
  %and12 = and i32 %shr11, 15, !dbg !3202
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3203
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3204
  %xor15 = xor i64 %xor, %mul14, !dbg !3205
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3206
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3206
  %shr17 = lshr i64 %2, 3, !dbg !3207
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3208
  %shr19 = lshr i32 %call, 24, !dbg !3209
  %and20 = and i32 %shr19, 15, !dbg !3210
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3211
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3212
  %xor23 = xor i64 %xor15, %mul22, !dbg !3213
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3214
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3215
  %xor25 = xor i64 %3, %xor23, !dbg !3215
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3215
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3216
    #dbg_value(i32 %inc, !3177, !DIExpression(), !3179)
  br label %for.cond, !dbg !3217, !llvm.loop !3218

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3220
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3221 {
entry:
    #dbg_value(i32 %legs, !3224, !DIExpression(), !3225)
    #dbg_value(ptr %in, !3226, !DIExpression(), !3225)
    #dbg_value(ptr %out, !3227, !DIExpression(), !3225)
    #dbg_value(ptr %in, !3228, !DIExpression(), !3225)
    #dbg_value(i32 0, !3229, !DIExpression(), !3231)
  br label %for.cond, !dbg !3232

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3233
    #dbg_value(i32 %i.0, !3229, !DIExpression(), !3231)
  %mul = shl nsw i32 %legs, 4, !dbg !3234
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3236
  br i1 %cmp, label %for.body, label %for.end, !dbg !3237

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3238
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3240
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3240
  %1 = and i8 %0, 15, !dbg !3241
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3242
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3243
  %div3 = lshr exact i32 %i.0, 1, !dbg !3244
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3245
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3245
  %3 = lshr i8 %2, 4, !dbg !3246
  %add = or disjoint i32 %i.0, 1, !dbg !3247
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3248
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3249
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3250
    #dbg_value(i32 %add8, !3229, !DIExpression(), !3231)
  br label %for.cond, !dbg !3251, !llvm.loop !3252

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3254
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3255 {
entry:
    #dbg_value(i8 %b, !3256, !DIExpression(), !3257)
  %conv = zext nneg i8 %b to i32, !dbg !3258
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3259
    #dbg_value(i32 %mul, !3260, !DIExpression(), !3257)
    #dbg_value(i32 -252645136, !3261, !DIExpression(), !3257)
  %and = and i32 %mul, 1894838512, !dbg !3262
    #dbg_value(i32 %and, !3263, !DIExpression(), !3257)
  %shr = lshr exact i32 %and, 4, !dbg !3264
  %shr1 = lshr exact i32 %and, 3, !dbg !3265
  %0 = xor i32 %shr, %shr1, !dbg !3266
  %xor2 = xor i32 %0, %mul, !dbg !3266
  ret i32 %xor2, !dbg !3267
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3268 {
entry:
    #dbg_value(i8 %a, !3269, !DIExpression(), !3270)
    #dbg_value(i8 %b, !3271, !DIExpression(), !3270)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3272
  %xor1 = xor i8 %a, %0, !dbg !3273
    #dbg_value(i8 %xor1, !3269, !DIExpression(), !3270)
  %1 = trunc i8 %xor1 to i1, !dbg !3274
    #dbg_value(i8 poison, !3275, !DIExpression(), !3270)
  %2 = and i8 %xor1, 2, !dbg !3276
  %mul9 = mul i8 %2, %b, !dbg !3277
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3274
  %xor11 = xor i8 %conv10, %mul9, !dbg !3278
    #dbg_value(i8 %xor11, !3275, !DIExpression(), !3270)
  %3 = and i8 %xor1, 4, !dbg !3279
  %mul16 = mul i8 %3, %b, !dbg !3280
  %xor18 = xor i8 %mul16, %xor11, !dbg !3281
    #dbg_value(i8 %xor18, !3275, !DIExpression(), !3270)
  %4 = and i8 %xor1, 8, !dbg !3282
  %mul23 = mul i8 %4, %b, !dbg !3283
  %xor25 = xor i8 %mul23, %xor18, !dbg !3284
    #dbg_value(i8 %xor25, !3275, !DIExpression(), !3270)
    #dbg_value(i8 %xor25, !3285, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3270)
  %5 = lshr i8 %xor25, 4, !dbg !3286
  %6 = lshr i8 %xor25, 3, !dbg !3287
  %7 = and i8 %6, 14, !dbg !3287
  %8 = xor i8 %5, %7, !dbg !3288
  %xor25.masked = and i8 %xor25, 15, !dbg !3289
  %9 = xor i8 %8, %xor25.masked, !dbg !3289
    #dbg_value(i8 %9, !3290, !DIExpression(), !3270)
  ret i8 %9, !dbg !3291
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3292 {
entry:
    #dbg_value(ptr %a, !3293, !DIExpression(), !3294)
    #dbg_value(ptr %b, !3295, !DIExpression(), !3294)
    #dbg_value(i32 %n, !3296, !DIExpression(), !3294)
    #dbg_value(i32 1, !3297, !DIExpression(), !3294)
    #dbg_value(i8 0, !3298, !DIExpression(), !3294)
    #dbg_value(i32 0, !3299, !DIExpression(), !3301)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3302
  br label %for.cond, !dbg !3302

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3294
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3303
    #dbg_value(i32 %i.0, !3299, !DIExpression(), !3301)
    #dbg_value(ptr %b.addr.0, !3295, !DIExpression(), !3294)
    #dbg_value(i8 %ret.0, !3298, !DIExpression(), !3294)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3304
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3306

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3307
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3307
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3309
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3310
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3311
    #dbg_value(i8 %call1, !3298, !DIExpression(), !3294)
  %inc = add nuw i32 %i.0, 1, !dbg !3312
    #dbg_value(i32 %inc, !3299, !DIExpression(), !3301)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3313
    #dbg_value(ptr %add.ptr, !3295, !DIExpression(), !3294)
  br label %for.cond, !dbg !3314, !llvm.loop !3315

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3294
  ret i8 %ret.0.lcssa, !dbg !3317
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3318 {
entry:
    #dbg_value(i8 %a, !3319, !DIExpression(), !3320)
    #dbg_value(i8 %b, !3321, !DIExpression(), !3320)
  %xor1 = xor i8 %a, %b, !dbg !3322
  ret i8 %xor1, !dbg !3323
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
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1197120, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 18705)
!126 = !DILocation(line: 32, column: 10, scope: !77)
!127 = !DILocalVariable(name: "esk", scope: !77, file: !72, line: 33, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1190592, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 18603)
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
!171 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !172, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !172, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 538, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 538, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 539, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 540, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 541, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 542, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2624, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 328)
!222 = !DILocation(line: 542, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 543, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1185600, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 18525)
!227 = !DILocation(line: 543, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 544, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 320)
!232 = !DILocation(line: 544, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 547, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4992, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 624)
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
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 11520, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 180)
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
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 5)
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
!602 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !603, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!673 = !DILocation(line: 234, column: 98, scope: !671)
!674 = !DILocation(line: 234, column: 84, scope: !671)
!675 = !DILocation(line: 234, column: 127, scope: !671)
!676 = !DILocation(line: 234, column: 137, scope: !671)
!677 = !DILocation(line: 234, column: 108, scope: !671)
!678 = !DILocation(line: 234, column: 17, scope: !671)
!679 = !DILocation(line: 235, column: 47, scope: !671)
!680 = !DILocation(line: 235, column: 88, scope: !671)
!681 = !DILocation(line: 235, column: 98, scope: !671)
!682 = !DILocation(line: 235, column: 84, scope: !671)
!683 = !DILocation(line: 235, column: 127, scope: !671)
!684 = !DILocation(line: 235, column: 137, scope: !671)
!685 = !DILocation(line: 235, column: 108, scope: !671)
!686 = !DILocation(line: 235, column: 17, scope: !671)
!687 = !DILocation(line: 233, column: 44, scope: !669)
!688 = !DILocation(line: 233, column: 13, scope: !669)
!689 = distinct !{!689, !663, !690, !303}
!690 = !DILocation(line: 236, column: 13, scope: !664)
!691 = !DILocation(line: 0, scope: !662)
!692 = !DILocation(line: 228, column: 39, scope: !659)
!693 = !DILocation(line: 228, column: 9, scope: !659)
!694 = distinct !{!694, !652, !695, !303}
!695 = !DILocation(line: 238, column: 9, scope: !653)
!696 = !DILocation(line: 227, column: 35, scope: !650)
!697 = !DILocation(line: 227, column: 5, scope: !650)
!698 = distinct !{!698, !651, !699, !303}
!699 = !DILocation(line: 239, column: 5, scope: !644)
!700 = !DILocation(line: 240, column: 1, scope: !633)
!701 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !702, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!702 = !DISubroutineType(types: !703)
!703 = !{!45, !174, !18, !704, !49, !15, !49}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!705 = !DILocalVariable(name: "p", arg: 1, scope: !701, file: !25, line: 359, type: !174)
!706 = !DILocation(line: 0, scope: !701)
!707 = !DILocalVariable(name: "sig", arg: 2, scope: !701, file: !25, line: 359, type: !18)
!708 = !DILocalVariable(name: "siglen", arg: 3, scope: !701, file: !25, line: 360, type: !704)
!709 = !DILocalVariable(name: "m", arg: 4, scope: !701, file: !25, line: 360, type: !49)
!710 = !DILocalVariable(name: "mlen", arg: 5, scope: !701, file: !25, line: 361, type: !15)
!711 = !DILocalVariable(name: "csk", arg: 6, scope: !701, file: !25, line: 361, type: !49)
!712 = !DILocalVariable(name: "ret", scope: !701, file: !25, line: 362, type: !45)
!713 = !DILocalVariable(name: "tenc", scope: !701, file: !25, line: 363, type: !714)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 312, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 39)
!717 = !DILocation(line: 363, column: 19, scope: !701)
!718 = !DILocalVariable(name: "t", scope: !701, file: !25, line: 363, type: !719)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 624, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 78)
!722 = !DILocation(line: 363, column: 38, scope: !701)
!723 = !DILocalVariable(name: "y", scope: !701, file: !25, line: 364, type: !719)
!724 = !DILocation(line: 364, column: 19, scope: !701)
!725 = !DILocalVariable(name: "salt", scope: !701, file: !25, line: 365, type: !726)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 24)
!729 = !DILocation(line: 365, column: 19, scope: !701)
!730 = !DILocalVariable(name: "V", scope: !701, file: !25, line: 366, type: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3440, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 430)
!734 = !DILocation(line: 366, column: 19, scope: !701)
!735 = !DILocalVariable(name: "Vdec", scope: !701, file: !25, line: 366, type: !736)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6240, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 780)
!739 = !DILocation(line: 366, column: 57, scope: !701)
!740 = !DILocalVariable(name: "A", scope: !701, file: !25, line: 367, type: !741)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 51840, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 6480)
!744 = !DILocation(line: 367, column: 19, scope: !701)
!745 = !DILocalVariable(name: "x", scope: !701, file: !25, line: 368, type: !746)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6880, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 860)
!749 = !DILocation(line: 368, column: 19, scope: !701)
!750 = !DILocalVariable(name: "r", scope: !701, file: !25, line: 369, type: !751)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 81)
!754 = !DILocation(line: 369, column: 19, scope: !701)
!755 = !DILocalVariable(name: "s", scope: !701, file: !25, line: 370, type: !746)
!756 = !DILocation(line: 370, column: 19, scope: !701)
!757 = !DILocalVariable(name: "sk", scope: !701, file: !25, line: 372, type: !128, align: 256)
!758 = !DILocation(line: 372, column: 22, scope: !701)
!759 = !DILocalVariable(name: "Ox", scope: !701, file: !25, line: 373, type: !719)
!760 = !DILocation(line: 373, column: 19, scope: !701)
!761 = !DILocalVariable(name: "tmp", scope: !701, file: !25, line: 374, type: !751)
!762 = !DILocation(line: 374, column: 19, scope: !701)
!763 = !DILocalVariable(name: "param_m", scope: !701, file: !25, line: 378, type: !239)
!764 = !DILocalVariable(name: "param_n", scope: !701, file: !25, line: 379, type: !239)
!765 = !DILocalVariable(name: "param_o", scope: !701, file: !25, line: 380, type: !239)
!766 = !DILocalVariable(name: "param_k", scope: !701, file: !25, line: 381, type: !239)
!767 = !DILocalVariable(name: "param_v", scope: !701, file: !25, line: 382, type: !239)
!768 = !DILocalVariable(name: "param_m_bytes", scope: !701, file: !25, line: 383, type: !239)
!769 = !DILocalVariable(name: "param_v_bytes", scope: !701, file: !25, line: 384, type: !239)
!770 = !DILocalVariable(name: "param_r_bytes", scope: !701, file: !25, line: 385, type: !239)
!771 = !DILocalVariable(name: "param_sig_bytes", scope: !701, file: !25, line: 386, type: !239)
!772 = !DILocalVariable(name: "param_A_cols", scope: !701, file: !25, line: 387, type: !239)
!773 = !DILocalVariable(name: "param_digest_bytes", scope: !701, file: !25, line: 388, type: !239)
!774 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !701, file: !25, line: 389, type: !239)
!775 = !DILocalVariable(name: "param_salt_bytes", scope: !701, file: !25, line: 390, type: !239)
!776 = !DILocation(line: 392, column: 11, scope: !701)
!777 = !DILocalVariable(name: "seed_sk", scope: !701, file: !25, line: 371, type: !49)
!778 = !DILocation(line: 401, column: 5, scope: !701)
!779 = !DILocalVariable(name: "P1", scope: !701, file: !25, line: 403, type: !5)
!780 = !DILocation(line: 404, column: 23, scope: !701)
!781 = !DILocalVariable(name: "L", scope: !701, file: !25, line: 404, type: !5)
!782 = !DILocalVariable(name: "Mtmp", scope: !701, file: !25, line: 405, type: !783)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 25600, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 400)
!786 = !DILocation(line: 405, column: 14, scope: !701)
!787 = !DILocation(line: 420, column: 25, scope: !788)
!788 = distinct !DILexicalBlock(scope: !701, file: !25, line: 420, column: 9)
!789 = !DILocation(line: 420, column: 9, scope: !788)
!790 = !DILocation(line: 420, column: 65, scope: !788)
!791 = !DILocation(line: 427, column: 37, scope: !701)
!792 = !DILocation(line: 427, column: 5, scope: !701)
!793 = !DILocation(line: 429, column: 5, scope: !701)
!794 = !DILocation(line: 437, column: 16, scope: !701)
!795 = !DILocation(line: 437, column: 5, scope: !701)
!796 = !DILocation(line: 438, column: 59, scope: !701)
!797 = !DILocalVariable(name: "ctrbyte", scope: !701, file: !25, line: 375, type: !18)
!798 = !DILocation(line: 440, column: 5, scope: !701)
!799 = !DILocation(line: 442, column: 5, scope: !701)
!800 = !DILocalVariable(name: "ctr", scope: !801, file: !25, line: 444, type: !45)
!801 = distinct !DILexicalBlock(scope: !701, file: !25, line: 444, column: 5)
!802 = !DILocation(line: 0, scope: !801)
!803 = !DILocation(line: 466, column: 18, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !25, line: 444, column: 42)
!805 = distinct !DILexicalBlock(scope: !801, file: !25, line: 444, column: 5)
!806 = !DILocation(line: 444, column: 10, scope: !801)
!807 = !DILocation(line: 444, scope: !801)
!808 = !DILocation(line: 444, column: 27, scope: !805)
!809 = !DILocation(line: 444, column: 5, scope: !801)
!810 = !DILocation(line: 445, column: 20, scope: !804)
!811 = !DILocation(line: 445, column: 18, scope: !804)
!812 = !DILocation(line: 447, column: 9, scope: !804)
!813 = !DILocalVariable(name: "i", scope: !814, file: !25, line: 451, type: !45)
!814 = distinct !DILexicalBlock(scope: !804, file: !25, line: 451, column: 9)
!815 = !DILocation(line: 0, scope: !814)
!816 = !DILocation(line: 451, column: 14, scope: !814)
!817 = !DILocation(line: 451, scope: !814)
!818 = !DILocation(line: 451, column: 27, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !25, line: 451, column: 9)
!820 = !DILocation(line: 451, column: 9, scope: !814)
!821 = !DILocation(line: 452, column: 26, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !25, line: 451, column: 48)
!823 = !DILocation(line: 452, column: 22, scope: !822)
!824 = !DILocation(line: 452, column: 52, scope: !822)
!825 = !DILocation(line: 452, column: 48, scope: !822)
!826 = !DILocation(line: 452, column: 13, scope: !822)
!827 = !DILocation(line: 451, column: 43, scope: !819)
!828 = !DILocation(line: 451, column: 9, scope: !819)
!829 = distinct !{!829, !820, !830, !303}
!830 = !DILocation(line: 453, column: 9, scope: !814)
!831 = !DILocation(line: 456, column: 9, scope: !804)
!832 = !DILocation(line: 458, column: 9, scope: !804)
!833 = !DILocation(line: 459, column: 9, scope: !804)
!834 = !DILocalVariable(name: "i", scope: !835, file: !25, line: 461, type: !45)
!835 = distinct !DILexicalBlock(scope: !804, file: !25, line: 461, column: 9)
!836 = !DILocation(line: 0, scope: !835)
!837 = !DILocation(line: 461, column: 14, scope: !835)
!838 = !DILocation(line: 461, scope: !835)
!839 = !DILocation(line: 461, column: 27, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !25, line: 461, column: 9)
!841 = !DILocation(line: 461, column: 9, scope: !835)
!842 = !DILocation(line: 463, column: 20, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !25, line: 462, column: 9)
!844 = !DILocation(line: 463, column: 43, scope: !843)
!845 = !DILocation(line: 463, column: 13, scope: !843)
!846 = !DILocation(line: 463, column: 48, scope: !843)
!847 = !DILocation(line: 461, column: 39, scope: !840)
!848 = !DILocation(line: 461, column: 9, scope: !840)
!849 = distinct !{!849, !841, !850, !303}
!850 = !DILocation(line: 464, column: 9, scope: !835)
!851 = !DILocation(line: 466, column: 9, scope: !804)
!852 = !DILocation(line: 470, column: 13, scope: !853)
!853 = distinct !DILexicalBlock(scope: !804, file: !25, line: 470, column: 13)
!854 = !DILocation(line: 473, column: 13, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !25, line: 472, column: 16)
!856 = !DILocation(line: 474, column: 13, scope: !855)
!857 = !DILocation(line: 444, column: 35, scope: !805)
!858 = !DILocation(line: 444, column: 5, scope: !805)
!859 = distinct !{!859, !809, !860, !303}
!860 = !DILocation(line: 476, column: 5, scope: !801)
!861 = !DILocalVariable(name: "i", scope: !862, file: !25, line: 478, type: !45)
!862 = distinct !DILexicalBlock(scope: !701, file: !25, line: 478, column: 5)
!863 = !DILocation(line: 0, scope: !862)
!864 = !DILocation(line: 478, column: 10, scope: !862)
!865 = !DILocation(line: 478, scope: !862)
!866 = !DILocation(line: 478, column: 23, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !25, line: 478, column: 5)
!868 = !DILocation(line: 478, column: 5, scope: !862)
!869 = !DILocation(line: 479, column: 23, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !25, line: 478, column: 44)
!871 = !DILocation(line: 479, column: 19, scope: !870)
!872 = !DILocalVariable(name: "vi", scope: !701, file: !25, line: 376, type: !18)
!873 = !DILocation(line: 480, column: 17, scope: !870)
!874 = !DILocation(line: 480, column: 33, scope: !870)
!875 = !DILocation(line: 480, column: 29, scope: !870)
!876 = !DILocation(line: 480, column: 9, scope: !870)
!877 = !DILocation(line: 481, column: 31, scope: !870)
!878 = !DILocation(line: 481, column: 27, scope: !870)
!879 = !DILocation(line: 481, column: 9, scope: !870)
!880 = !DILocation(line: 482, column: 22, scope: !870)
!881 = !DILocation(line: 482, column: 18, scope: !870)
!882 = !DILocation(line: 482, column: 32, scope: !870)
!883 = !DILocation(line: 482, column: 61, scope: !870)
!884 = !DILocation(line: 482, column: 57, scope: !870)
!885 = !DILocation(line: 482, column: 9, scope: !870)
!886 = !DILocation(line: 478, column: 39, scope: !867)
!887 = !DILocation(line: 478, column: 5, scope: !867)
!888 = distinct !{!888, !868, !889, !303}
!889 = !DILocation(line: 483, column: 5, scope: !862)
!890 = !DILocation(line: 484, column: 5, scope: !701)
!891 = !DILocation(line: 486, column: 34, scope: !701)
!892 = !DILocation(line: 486, column: 5, scope: !701)
!893 = !DILocation(line: 487, column: 13, scope: !701)
!894 = !DILocation(line: 487, column: 5, scope: !701)
!895 = !DILabel(scope: !701, name: "err", file: !25, line: 489)
!896 = !DILocation(line: 489, column: 1, scope: !701)
!897 = !DILocation(line: 490, column: 5, scope: !701)
!898 = !DILocation(line: 491, column: 5, scope: !701)
!899 = !DILocation(line: 492, column: 5, scope: !701)
!900 = !DILocation(line: 493, column: 5, scope: !701)
!901 = !DILocation(line: 494, column: 23, scope: !701)
!902 = !DILocation(line: 494, column: 5, scope: !701)
!903 = !DILocation(line: 495, column: 5, scope: !701)
!904 = !DILocation(line: 496, column: 5, scope: !701)
!905 = !DILocation(line: 497, column: 5, scope: !701)
!906 = !DILocation(line: 498, column: 5, scope: !701)
!907 = !DILocation(line: 499, column: 5, scope: !701)
!908 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !909, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !174, !49, !326, !326, !5, !5}
!911 = !DILocalVariable(name: "p", arg: 1, scope: !908, file: !323, line: 244, type: !174)
!912 = !DILocation(line: 0, scope: !908)
!913 = !DILocalVariable(name: "Vdec", arg: 2, scope: !908, file: !323, line: 244, type: !49)
!914 = !DILocalVariable(name: "L", arg: 3, scope: !908, file: !323, line: 244, type: !326)
!915 = !DILocalVariable(name: "P1", arg: 4, scope: !908, file: !323, line: 244, type: !326)
!916 = !DILocalVariable(name: "VL", arg: 5, scope: !908, file: !323, line: 244, type: !5)
!917 = !DILocalVariable(name: "VP1V", arg: 6, scope: !908, file: !323, line: 244, type: !5)
!918 = !DILocalVariable(name: "param_k", scope: !908, file: !323, line: 246, type: !239)
!919 = !DILocalVariable(name: "param_v", scope: !908, file: !323, line: 247, type: !239)
!920 = !DILocalVariable(name: "param_o", scope: !908, file: !323, line: 248, type: !239)
!921 = !DILocation(line: 251, column: 5, scope: !908)
!922 = !DILocalVariable(name: "Pv", scope: !908, file: !323, line: 254, type: !923)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 249600, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 3900)
!926 = !DILocation(line: 254, column: 14, scope: !908)
!927 = !DILocation(line: 255, column: 5, scope: !908)
!928 = !DILocation(line: 256, column: 5, scope: !908)
!929 = !DILocation(line: 257, column: 1, scope: !908)
!930 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !931, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !174, !5, !49, !18}
!933 = !DILocalVariable(name: "p", arg: 1, scope: !930, file: !25, line: 43, type: !174)
!934 = !DILocation(line: 0, scope: !930)
!935 = !DILocalVariable(name: "vPv", arg: 2, scope: !930, file: !25, line: 43, type: !5)
!936 = !DILocalVariable(name: "t", arg: 3, scope: !930, file: !25, line: 43, type: !49)
!937 = !DILocalVariable(name: "y", arg: 4, scope: !930, file: !25, line: 43, type: !18)
!938 = !DILocalVariable(name: "top_pos", scope: !930, file: !25, line: 48, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!940 = !DILocalVariable(name: "m_vec_limbs", scope: !930, file: !25, line: 49, type: !939)
!941 = !DILocalVariable(name: "mask", scope: !942, file: !25, line: 53, type: !6)
!942 = distinct !DILexicalBlock(scope: !943, file: !25, line: 52, column: 29)
!943 = distinct !DILexicalBlock(scope: !930, file: !25, line: 52, column: 8)
!944 = !DILocation(line: 0, scope: !942)
!945 = !DILocalVariable(name: "i", scope: !946, file: !25, line: 56, type: !45)
!946 = distinct !DILexicalBlock(scope: !942, file: !25, line: 56, column: 9)
!947 = !DILocation(line: 0, scope: !946)
!948 = !DILocation(line: 56, column: 14, scope: !946)
!949 = !DILocation(line: 56, scope: !946)
!950 = !DILocation(line: 56, column: 27, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !25, line: 56, column: 9)
!952 = !DILocation(line: 56, column: 9, scope: !946)
!953 = !DILocation(line: 58, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !25, line: 57, column: 9)
!955 = !DILocation(line: 58, column: 50, scope: !954)
!956 = !DILocation(line: 56, column: 53, scope: !951)
!957 = !DILocation(line: 56, column: 9, scope: !951)
!958 = distinct !{!958, !952, !959, !303}
!959 = !DILocation(line: 59, column: 9, scope: !946)
!960 = !DILocalVariable(name: "temp", scope: !930, file: !25, line: 62, type: !579)
!961 = !DILocation(line: 62, column: 14, scope: !930)
!962 = !DILocalVariable(name: "temp_bytes", scope: !930, file: !25, line: 63, type: !18)
!963 = !DILocalVariable(name: "i", scope: !964, file: !25, line: 64, type: !45)
!964 = distinct !DILexicalBlock(scope: !930, file: !25, line: 64, column: 5)
!965 = !DILocation(line: 0, scope: !964)
!966 = !DILocation(line: 64, column: 10, scope: !964)
!967 = !DILocation(line: 64, scope: !964)
!968 = !DILocation(line: 64, column: 36, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !25, line: 64, column: 5)
!970 = !DILocation(line: 64, column: 5, scope: !964)
!971 = !DILocation(line: 65, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !25, line: 65, column: 9)
!973 = distinct !DILexicalBlock(scope: !969, file: !25, line: 64, column: 48)
!974 = !DILocation(line: 99, column: 5, scope: !975)
!975 = distinct !DILexicalBlock(scope: !930, file: !25, line: 99, column: 5)
!976 = !DILocation(line: 65, scope: !972)
!977 = !DILocalVariable(name: "j", scope: !972, file: !25, line: 65, type: !45)
!978 = !DILocation(line: 0, scope: !972)
!979 = !DILocation(line: 65, column: 27, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !25, line: 65, column: 9)
!981 = !DILocation(line: 67, column: 34, scope: !982)
!982 = distinct !DILexicalBlock(scope: !980, file: !25, line: 65, column: 46)
!983 = !DILocation(line: 67, column: 54, scope: !982)
!984 = !DILocation(line: 67, column: 66, scope: !982)
!985 = !DILocalVariable(name: "top", scope: !982, file: !25, line: 67, type: !14)
!986 = !DILocation(line: 0, scope: !982)
!987 = !DILocation(line: 68, column: 13, scope: !982)
!988 = !DILocation(line: 68, column: 33, scope: !982)
!989 = !DILocalVariable(name: "k", scope: !990, file: !25, line: 69, type: !45)
!990 = distinct !DILexicalBlock(scope: !982, file: !25, line: 69, column: 13)
!991 = !DILocation(line: 0, scope: !990)
!992 = !DILocation(line: 69, column: 17, scope: !990)
!993 = !DILocation(line: 69, scope: !990)
!994 = !DILocation(line: 69, column: 43, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !25, line: 69, column: 13)
!996 = !DILocation(line: 69, column: 13, scope: !990)
!997 = !DILocation(line: 74, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !982, file: !25, line: 74, column: 13)
!999 = !DILocation(line: 70, column: 30, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !25, line: 69, column: 52)
!1001 = !DILocation(line: 70, column: 38, scope: !1000)
!1002 = !DILocation(line: 70, column: 23, scope: !1000)
!1003 = !DILocation(line: 70, column: 17, scope: !1000)
!1004 = !DILocation(line: 70, column: 27, scope: !1000)
!1005 = !DILocation(line: 71, column: 17, scope: !1000)
!1006 = !DILocation(line: 71, column: 25, scope: !1000)
!1007 = !DILocation(line: 69, column: 49, scope: !995)
!1008 = !DILocation(line: 69, column: 13, scope: !995)
!1009 = distinct !{!1009, !996, !1010, !303}
!1010 = !DILocation(line: 72, column: 13, scope: !990)
!1011 = !DILocation(line: 74, scope: !998)
!1012 = !DILocalVariable(name: "jj", scope: !998, file: !25, line: 74, type: !45)
!1013 = !DILocation(line: 0, scope: !998)
!1014 = !DILocation(line: 74, column: 33, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !998, file: !25, line: 74, column: 13)
!1016 = !DILocation(line: 92, column: 13, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !982, file: !25, line: 92, column: 13)
!1018 = !DILocation(line: 75, column: 22, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !25, line: 75, column: 20)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !25, line: 74, column: 53)
!1021 = !DILocation(line: 75, column: 25, scope: !1019)
!1022 = !DILocation(line: 79, column: 52, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !25, line: 75, column: 30)
!1024 = !DILocation(line: 79, column: 41, scope: !1023)
!1025 = !DILocation(line: 79, column: 34, scope: !1023)
!1026 = !DILocation(line: 79, column: 21, scope: !1023)
!1027 = !DILocation(line: 79, column: 38, scope: !1023)
!1028 = !DILocation(line: 81, column: 17, scope: !1023)
!1029 = !DILocation(line: 86, column: 52, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1019, file: !25, line: 82, column: 22)
!1031 = !DILocation(line: 86, column: 41, scope: !1030)
!1032 = !DILocation(line: 86, column: 73, scope: !1030)
!1033 = !DILocation(line: 86, column: 34, scope: !1030)
!1034 = !DILocation(line: 86, column: 21, scope: !1030)
!1035 = !DILocation(line: 86, column: 38, scope: !1030)
!1036 = !DILocation(line: 74, column: 49, scope: !1015)
!1037 = !DILocation(line: 74, column: 13, scope: !1015)
!1038 = distinct !{!1038, !997, !1039, !303}
!1039 = !DILocation(line: 89, column: 13, scope: !998)
!1040 = !DILocation(line: 92, scope: !1017)
!1041 = !DILocalVariable(name: "k", scope: !1017, file: !25, line: 92, type: !15)
!1042 = !DILocation(line: 0, scope: !1017)
!1043 = !DILocation(line: 92, column: 31, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1017, file: !25, line: 92, column: 13)
!1045 = !DILocation(line: 93, column: 36, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1044, file: !25, line: 92, column: 51)
!1047 = !DILocation(line: 93, column: 49, scope: !1046)
!1048 = !DILocation(line: 93, column: 28, scope: !1046)
!1049 = !DILocation(line: 93, column: 78, scope: !1046)
!1050 = !DILocation(line: 93, column: 91, scope: !1046)
!1051 = !DILocation(line: 93, column: 104, scope: !1046)
!1052 = !DILocation(line: 93, column: 83, scope: !1046)
!1053 = !DILocation(line: 93, column: 82, scope: !1046)
!1054 = !DILocation(line: 93, column: 73, scope: !1046)
!1055 = !DILocation(line: 93, column: 17, scope: !1046)
!1056 = !DILocation(line: 93, column: 25, scope: !1046)
!1057 = !DILocation(line: 92, column: 48, scope: !1044)
!1058 = !DILocation(line: 92, column: 13, scope: !1044)
!1059 = distinct !{!1059, !1016, !1060, !303}
!1060 = !DILocation(line: 94, column: 13, scope: !1017)
!1061 = !DILocation(line: 65, column: 42, scope: !980)
!1062 = !DILocation(line: 65, column: 9, scope: !980)
!1063 = distinct !{!1063, !971, !1064, !303}
!1064 = !DILocation(line: 95, column: 9, scope: !972)
!1065 = !DILocation(line: 64, column: 44, scope: !969)
!1066 = !DILocation(line: 64, column: 5, scope: !969)
!1067 = distinct !{!1067, !970, !1068, !303}
!1068 = !DILocation(line: 96, column: 5, scope: !964)
!1069 = !DILocation(line: 99, scope: !975)
!1070 = !DILocalVariable(name: "i", scope: !975, file: !25, line: 99, type: !45)
!1071 = !DILocation(line: 0, scope: !975)
!1072 = !DILocation(line: 99, column: 23, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !975, file: !25, line: 99, column: 5)
!1074 = !DILocation(line: 105, column: 18, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 100, column: 5)
!1076 = !DILocation(line: 105, column: 40, scope: !1075)
!1077 = !DILocation(line: 105, column: 28, scope: !1075)
!1078 = !DILocation(line: 105, column: 44, scope: !1075)
!1079 = !DILocation(line: 105, column: 25, scope: !1075)
!1080 = !DILocation(line: 105, column: 9, scope: !1075)
!1081 = !DILocation(line: 105, column: 16, scope: !1075)
!1082 = !DILocation(line: 106, column: 21, scope: !1075)
!1083 = !DILocation(line: 106, column: 18, scope: !1075)
!1084 = !DILocation(line: 106, column: 40, scope: !1075)
!1085 = !DILocation(line: 106, column: 28, scope: !1075)
!1086 = !DILocation(line: 106, column: 44, scope: !1075)
!1087 = !DILocation(line: 106, column: 25, scope: !1075)
!1088 = !DILocation(line: 106, column: 12, scope: !1075)
!1089 = !DILocation(line: 106, column: 9, scope: !1075)
!1090 = !DILocation(line: 106, column: 16, scope: !1075)
!1091 = !DILocation(line: 99, column: 38, scope: !1073)
!1092 = !DILocation(line: 99, column: 5, scope: !1073)
!1093 = distinct !{!1093, !974, !1094, !303}
!1094 = !DILocation(line: 108, column: 5, scope: !975)
!1095 = !DILocation(line: 109, column: 1, scope: !930)
!1096 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1097, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !174, !5, !18}
!1099 = !DILocalVariable(name: "p", arg: 1, scope: !1096, file: !25, line: 154, type: !174)
!1100 = !DILocation(line: 0, scope: !1096)
!1101 = !DILocalVariable(name: "VtL", arg: 2, scope: !1096, file: !25, line: 154, type: !5)
!1102 = !DILocalVariable(name: "A_out", arg: 3, scope: !1096, file: !25, line: 154, type: !18)
!1103 = !DILocalVariable(name: "bits_to_shift", scope: !1096, file: !25, line: 159, type: !45)
!1104 = !DILocalVariable(name: "words_to_shift", scope: !1096, file: !25, line: 160, type: !45)
!1105 = !DILocalVariable(name: "m_vec_limbs", scope: !1096, file: !25, line: 161, type: !239)
!1106 = !DILocalVariable(name: "A", scope: !1096, file: !25, line: 162, type: !1107)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 51200, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 800)
!1110 = !DILocation(line: 162, column: 14, scope: !1096)
!1111 = !DILocalVariable(name: "A_width", scope: !1096, file: !25, line: 163, type: !15)
!1112 = !DILocalVariable(name: "mask", scope: !1113, file: !25, line: 168, type: !6)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !25, line: 167, column: 29)
!1114 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 167, column: 8)
!1115 = !DILocation(line: 0, scope: !1113)
!1116 = !DILocalVariable(name: "i", scope: !1117, file: !25, line: 171, type: !45)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !25, line: 171, column: 9)
!1118 = !DILocation(line: 0, scope: !1117)
!1119 = !DILocation(line: 171, column: 14, scope: !1117)
!1120 = !DILocation(line: 171, scope: !1117)
!1121 = !DILocation(line: 171, column: 27, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !25, line: 171, column: 9)
!1123 = !DILocation(line: 171, column: 9, scope: !1117)
!1124 = !DILocation(line: 177, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 177, column: 5)
!1126 = !DILocation(line: 173, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 172, column: 9)
!1128 = !DILocation(line: 173, column: 50, scope: !1127)
!1129 = !DILocation(line: 171, column: 53, scope: !1122)
!1130 = !DILocation(line: 171, column: 9, scope: !1122)
!1131 = distinct !{!1131, !1123, !1132, !303}
!1132 = !DILocation(line: 174, column: 9, scope: !1117)
!1133 = !DILocation(line: 177, scope: !1125)
!1134 = !DILocation(line: 160, column: 9, scope: !1096)
!1135 = !DILocation(line: 159, column: 9, scope: !1096)
!1136 = !DILocalVariable(name: "i", scope: !1125, file: !25, line: 177, type: !45)
!1137 = !DILocation(line: 0, scope: !1125)
!1138 = !DILocation(line: 177, column: 23, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1125, file: !25, line: 177, column: 5)
!1140 = !DILocation(line: 178, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !25, line: 178, column: 9)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !25, line: 177, column: 47)
!1143 = !DILocation(line: 212, column: 5, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 212, column: 5)
!1145 = !DILocation(line: 178, scope: !1141)
!1146 = !DILocalVariable(name: "j", scope: !1141, file: !25, line: 178, type: !45)
!1147 = !DILocation(line: 0, scope: !1141)
!1148 = !DILocation(line: 178, column: 40, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1141, file: !25, line: 178, column: 9)
!1150 = !DILocation(line: 180, column: 22, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 178, column: 51)
!1152 = !DILocalVariable(name: "Mj", scope: !1096, file: !25, line: 164, type: !326)
!1153 = !DILocalVariable(name: "c", scope: !1154, file: !25, line: 181, type: !45)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 181, column: 13)
!1155 = !DILocation(line: 0, scope: !1154)
!1156 = !DILocation(line: 181, column: 18, scope: !1154)
!1157 = !DILocation(line: 181, scope: !1154)
!1158 = !DILocation(line: 181, column: 31, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !25, line: 181, column: 13)
!1160 = !DILocation(line: 181, column: 13, scope: !1154)
!1161 = !DILocation(line: 182, column: 17, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !25, line: 182, column: 17)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !25, line: 181, column: 50)
!1164 = !DILocation(line: 182, scope: !1162)
!1165 = !DILocalVariable(name: "k", scope: !1162, file: !25, line: 182, type: !45)
!1166 = !DILocation(line: 0, scope: !1162)
!1167 = !DILocation(line: 182, column: 35, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !25, line: 182, column: 17)
!1169 = !DILocation(line: 184, column: 78, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !25, line: 183, column: 17)
!1171 = !DILocation(line: 184, column: 100, scope: !1170)
!1172 = !DILocation(line: 184, column: 35, scope: !1170)
!1173 = !DILocation(line: 184, column: 39, scope: !1170)
!1174 = !DILocation(line: 184, column: 48, scope: !1170)
!1175 = !DILocation(line: 184, column: 65, scope: !1170)
!1176 = !DILocation(line: 184, column: 43, scope: !1170)
!1177 = !DILocation(line: 184, column: 21, scope: !1170)
!1178 = !DILocation(line: 184, column: 75, scope: !1170)
!1179 = !DILocation(line: 185, column: 38, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !25, line: 185, column: 24)
!1181 = !DILocation(line: 186, column: 86, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 185, column: 42)
!1183 = !DILocation(line: 186, column: 114, scope: !1182)
!1184 = !DILocation(line: 186, column: 108, scope: !1182)
!1185 = !DILocation(line: 186, column: 39, scope: !1182)
!1186 = !DILocation(line: 186, column: 43, scope: !1182)
!1187 = !DILocation(line: 186, column: 52, scope: !1182)
!1188 = !DILocation(line: 186, column: 73, scope: !1182)
!1189 = !DILocation(line: 186, column: 47, scope: !1182)
!1190 = !DILocation(line: 186, column: 25, scope: !1182)
!1191 = !DILocation(line: 186, column: 83, scope: !1182)
!1192 = !DILocation(line: 187, column: 21, scope: !1182)
!1193 = !DILocation(line: 182, column: 51, scope: !1168)
!1194 = !DILocation(line: 182, column: 17, scope: !1168)
!1195 = distinct !{!1195, !1161, !1196, !303}
!1196 = !DILocation(line: 188, column: 17, scope: !1162)
!1197 = !DILocation(line: 181, column: 46, scope: !1159)
!1198 = !DILocation(line: 181, column: 13, scope: !1159)
!1199 = distinct !{!1199, !1160, !1200, !303}
!1200 = !DILocation(line: 189, column: 13, scope: !1154)
!1201 = !DILocation(line: 191, column: 19, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 191, column: 17)
!1203 = !DILocation(line: 192, column: 26, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !25, line: 191, column: 25)
!1205 = !DILocalVariable(name: "Mi", scope: !1096, file: !25, line: 164, type: !326)
!1206 = !DILocalVariable(name: "c", scope: !1207, file: !25, line: 193, type: !45)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !25, line: 193, column: 17)
!1208 = !DILocation(line: 0, scope: !1207)
!1209 = !DILocation(line: 193, column: 22, scope: !1207)
!1210 = !DILocation(line: 193, scope: !1207)
!1211 = !DILocation(line: 193, column: 35, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !25, line: 193, column: 17)
!1213 = !DILocation(line: 193, column: 17, scope: !1207)
!1214 = !DILocation(line: 194, column: 21, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !25, line: 194, column: 21)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !25, line: 193, column: 54)
!1217 = !DILocation(line: 194, scope: !1215)
!1218 = !DILocalVariable(name: "k", scope: !1215, file: !25, line: 194, type: !45)
!1219 = !DILocation(line: 0, scope: !1215)
!1220 = !DILocation(line: 194, column: 39, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1215, file: !25, line: 194, column: 21)
!1222 = !DILocation(line: 196, column: 81, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1221, file: !25, line: 195, column: 21)
!1224 = !DILocation(line: 196, column: 103, scope: !1223)
!1225 = !DILocation(line: 196, column: 38, scope: !1223)
!1226 = !DILocation(line: 196, column: 42, scope: !1223)
!1227 = !DILocation(line: 196, column: 51, scope: !1223)
!1228 = !DILocation(line: 196, column: 68, scope: !1223)
!1229 = !DILocation(line: 196, column: 46, scope: !1223)
!1230 = !DILocation(line: 196, column: 25, scope: !1223)
!1231 = !DILocation(line: 196, column: 78, scope: !1223)
!1232 = !DILocation(line: 197, column: 42, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1223, file: !25, line: 197, column: 28)
!1234 = !DILocation(line: 198, column: 89, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1233, file: !25, line: 197, column: 46)
!1236 = !DILocation(line: 198, column: 117, scope: !1235)
!1237 = !DILocation(line: 198, column: 111, scope: !1235)
!1238 = !DILocation(line: 198, column: 42, scope: !1235)
!1239 = !DILocation(line: 198, column: 46, scope: !1235)
!1240 = !DILocation(line: 198, column: 55, scope: !1235)
!1241 = !DILocation(line: 198, column: 76, scope: !1235)
!1242 = !DILocation(line: 198, column: 50, scope: !1235)
!1243 = !DILocation(line: 198, column: 29, scope: !1235)
!1244 = !DILocation(line: 198, column: 86, scope: !1235)
!1245 = !DILocation(line: 199, column: 25, scope: !1235)
!1246 = !DILocation(line: 194, column: 55, scope: !1221)
!1247 = !DILocation(line: 194, column: 21, scope: !1221)
!1248 = distinct !{!1248, !1214, !1249, !303}
!1249 = !DILocation(line: 200, column: 21, scope: !1215)
!1250 = !DILocation(line: 193, column: 50, scope: !1212)
!1251 = !DILocation(line: 193, column: 17, scope: !1212)
!1252 = distinct !{!1252, !1213, !1253, !303}
!1253 = !DILocation(line: 201, column: 17, scope: !1207)
!1254 = !DILocation(line: 204, column: 27, scope: !1151)
!1255 = !DILocation(line: 205, column: 30, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 205, column: 16)
!1257 = !DILocation(line: 178, column: 46, scope: !1149)
!1258 = !DILocation(line: 178, column: 9, scope: !1149)
!1259 = distinct !{!1259, !1140, !1260, !303}
!1260 = !DILocation(line: 209, column: 9, scope: !1141)
!1261 = !DILocation(line: 177, column: 42, scope: !1139)
!1262 = !DILocation(line: 177, column: 5, scope: !1139)
!1263 = distinct !{!1263, !1124, !1264, !303}
!1264 = !DILocation(line: 210, column: 5, scope: !1125)
!1265 = !DILocation(line: 212, scope: !1144)
!1266 = !DILocalVariable(name: "c", scope: !1144, file: !25, line: 212, type: !15)
!1267 = !DILocation(line: 0, scope: !1144)
!1268 = !DILocation(line: 212, column: 26, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1144, file: !25, line: 212, column: 5)
!1270 = !DILocation(line: 214, column: 35, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1269, file: !25, line: 213, column: 5)
!1272 = !DILocation(line: 214, column: 9, scope: !1271)
!1273 = !DILocation(line: 212, column: 91, scope: !1269)
!1274 = !DILocation(line: 212, column: 5, scope: !1269)
!1275 = distinct !{!1275, !1143, !1276, !303}
!1276 = !DILocation(line: 215, column: 5, scope: !1144)
!1277 = !DILocalVariable(name: "tab", scope: !1096, file: !25, line: 217, type: !1278)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 16)
!1281 = !DILocation(line: 217, column: 19, scope: !1096)
!1282 = !DILocalVariable(name: "i", scope: !1283, file: !25, line: 218, type: !15)
!1283 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 218, column: 5)
!1284 = !DILocation(line: 0, scope: !1283)
!1285 = !DILocation(line: 218, column: 10, scope: !1283)
!1286 = !DILocation(line: 218, scope: !1283)
!1287 = !DILocation(line: 218, column: 26, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !25, line: 218, column: 5)
!1289 = !DILocation(line: 218, column: 5, scope: !1283)
!1290 = !DILocation(line: 228, column: 5, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 228, column: 5)
!1292 = !DILocation(line: 220, column: 28, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !25, line: 219, column: 5)
!1294 = !DILocation(line: 220, column: 22, scope: !1293)
!1295 = !DILocation(line: 220, column: 14, scope: !1293)
!1296 = !DILocation(line: 220, column: 9, scope: !1293)
!1297 = !DILocation(line: 220, column: 20, scope: !1293)
!1298 = !DILocation(line: 221, column: 22, scope: !1293)
!1299 = !DILocation(line: 221, column: 14, scope: !1293)
!1300 = !DILocation(line: 221, column: 16, scope: !1293)
!1301 = !DILocation(line: 221, column: 9, scope: !1293)
!1302 = !DILocation(line: 221, column: 20, scope: !1293)
!1303 = !DILocation(line: 222, column: 28, scope: !1293)
!1304 = !DILocation(line: 222, column: 22, scope: !1293)
!1305 = !DILocation(line: 222, column: 14, scope: !1293)
!1306 = !DILocation(line: 222, column: 16, scope: !1293)
!1307 = !DILocation(line: 222, column: 9, scope: !1293)
!1308 = !DILocation(line: 222, column: 20, scope: !1293)
!1309 = !DILocation(line: 223, column: 28, scope: !1293)
!1310 = !DILocation(line: 223, column: 22, scope: !1293)
!1311 = !DILocation(line: 223, column: 14, scope: !1293)
!1312 = !DILocation(line: 223, column: 16, scope: !1293)
!1313 = !DILocation(line: 223, column: 9, scope: !1293)
!1314 = !DILocation(line: 223, column: 20, scope: !1293)
!1315 = !DILocation(line: 218, column: 41, scope: !1288)
!1316 = !DILocation(line: 218, column: 5, scope: !1288)
!1317 = distinct !{!1317, !1289, !1318, !303}
!1318 = !DILocation(line: 224, column: 5, scope: !1283)
!1319 = !DILocation(line: 228, scope: !1291)
!1320 = !DILocalVariable(name: "c", scope: !1291, file: !25, line: 228, type: !15)
!1321 = !DILocation(line: 0, scope: !1291)
!1322 = !DILocation(line: 228, column: 26, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1291, file: !25, line: 228, column: 5)
!1324 = !DILocation(line: 230, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !25, line: 230, column: 9)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !25, line: 229, column: 5)
!1327 = !DILocation(line: 250, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 250, column: 5)
!1329 = !DILocation(line: 230, scope: !1325)
!1330 = !DILocalVariable(name: "r", scope: !1325, file: !25, line: 230, type: !45)
!1331 = !DILocation(line: 0, scope: !1325)
!1332 = !DILocation(line: 230, column: 36, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1325, file: !25, line: 230, column: 9)
!1334 = !DILocation(line: 232, column: 28, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1333, file: !25, line: 231, column: 9)
!1336 = !DILocation(line: 232, column: 32, scope: !1335)
!1337 = !DILocation(line: 232, column: 41, scope: !1335)
!1338 = !DILocation(line: 232, column: 49, scope: !1335)
!1339 = !DILocation(line: 232, column: 45, scope: !1335)
!1340 = !DILocalVariable(name: "pos", scope: !1335, file: !25, line: 232, type: !15)
!1341 = !DILocation(line: 0, scope: !1335)
!1342 = !DILocation(line: 233, column: 28, scope: !1335)
!1343 = !DILocation(line: 233, column: 41, scope: !1335)
!1344 = !DILocalVariable(name: "t0", scope: !1335, file: !25, line: 233, type: !6)
!1345 = !DILocation(line: 234, column: 35, scope: !1335)
!1346 = !DILocation(line: 234, column: 41, scope: !1335)
!1347 = !DILocalVariable(name: "t1", scope: !1335, file: !25, line: 234, type: !6)
!1348 = !DILocation(line: 235, column: 35, scope: !1335)
!1349 = !DILocation(line: 235, column: 41, scope: !1335)
!1350 = !DILocalVariable(name: "t2", scope: !1335, file: !25, line: 235, type: !6)
!1351 = !DILocation(line: 236, column: 28, scope: !1335)
!1352 = !DILocation(line: 236, column: 35, scope: !1335)
!1353 = !DILocation(line: 236, column: 41, scope: !1335)
!1354 = !DILocalVariable(name: "t3", scope: !1335, file: !25, line: 236, type: !6)
!1355 = !DILocalVariable(name: "t", scope: !1356, file: !25, line: 237, type: !15)
!1356 = distinct !DILexicalBlock(scope: !1335, file: !25, line: 237, column: 13)
!1357 = !DILocation(line: 0, scope: !1356)
!1358 = !DILocation(line: 237, column: 18, scope: !1356)
!1359 = !DILocation(line: 237, scope: !1356)
!1360 = !DILocation(line: 237, column: 34, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !25, line: 237, column: 13)
!1362 = !DILocation(line: 237, column: 13, scope: !1356)
!1363 = !DILocation(line: 239, column: 89, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !25, line: 238, column: 13)
!1365 = !DILocation(line: 239, column: 84, scope: !1364)
!1366 = !DILocation(line: 239, column: 83, scope: !1364)
!1367 = !DILocation(line: 239, column: 105, scope: !1364)
!1368 = !DILocation(line: 239, column: 107, scope: !1364)
!1369 = !DILocation(line: 239, column: 100, scope: !1364)
!1370 = !DILocation(line: 239, column: 99, scope: !1364)
!1371 = !DILocation(line: 239, column: 95, scope: !1364)
!1372 = !DILocation(line: 239, column: 121, scope: !1364)
!1373 = !DILocation(line: 239, column: 123, scope: !1364)
!1374 = !DILocation(line: 239, column: 116, scope: !1364)
!1375 = !DILocation(line: 239, column: 115, scope: !1364)
!1376 = !DILocation(line: 239, column: 111, scope: !1364)
!1377 = !DILocation(line: 239, column: 137, scope: !1364)
!1378 = !DILocation(line: 239, column: 139, scope: !1364)
!1379 = !DILocation(line: 239, column: 132, scope: !1364)
!1380 = !DILocation(line: 239, column: 131, scope: !1364)
!1381 = !DILocation(line: 239, column: 127, scope: !1364)
!1382 = !DILocation(line: 239, column: 22, scope: !1364)
!1383 = !DILocation(line: 239, column: 24, scope: !1364)
!1384 = !DILocation(line: 239, column: 36, scope: !1364)
!1385 = !DILocation(line: 239, column: 40, scope: !1364)
!1386 = !DILocation(line: 239, column: 49, scope: !1364)
!1387 = !DILocation(line: 239, column: 58, scope: !1364)
!1388 = !DILocation(line: 239, column: 60, scope: !1364)
!1389 = !DILocation(line: 239, column: 72, scope: !1364)
!1390 = !DILocation(line: 239, column: 53, scope: !1364)
!1391 = !DILocation(line: 239, column: 17, scope: !1364)
!1392 = !DILocation(line: 239, column: 78, scope: !1364)
!1393 = !DILocation(line: 237, column: 49, scope: !1361)
!1394 = !DILocation(line: 237, column: 13, scope: !1361)
!1395 = distinct !{!1395, !1362, !1396, !303}
!1396 = !DILocation(line: 240, column: 13, scope: !1356)
!1397 = !DILocation(line: 230, column: 82, scope: !1333)
!1398 = !DILocation(line: 230, column: 9, scope: !1333)
!1399 = distinct !{!1399, !1324, !1400, !303}
!1400 = !DILocation(line: 241, column: 9, scope: !1325)
!1401 = !DILocation(line: 228, column: 38, scope: !1323)
!1402 = !DILocation(line: 228, column: 5, scope: !1323)
!1403 = distinct !{!1403, !1290, !1404, !303}
!1404 = !DILocation(line: 242, column: 5, scope: !1291)
!1405 = !DILocation(line: 250, scope: !1328)
!1406 = !DILocalVariable(name: "r", scope: !1328, file: !25, line: 250, type: !45)
!1407 = !DILocation(line: 0, scope: !1328)
!1408 = !DILocation(line: 250, column: 23, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1328, file: !25, line: 250, column: 5)
!1410 = !DILocation(line: 252, column: 9, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !25, line: 252, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !25, line: 251, column: 5)
!1413 = !DILocation(line: 252, scope: !1411)
!1414 = !DILocalVariable(name: "c", scope: !1411, file: !25, line: 252, type: !45)
!1415 = !DILocation(line: 0, scope: !1411)
!1416 = !DILocation(line: 252, column: 27, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !25, line: 252, column: 9)
!1418 = !DILocation(line: 254, column: 13, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !25, line: 254, column: 13)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !25, line: 253, column: 9)
!1421 = !DILocation(line: 254, scope: !1419)
!1422 = !DILocalVariable(name: "i", scope: !1419, file: !25, line: 254, type: !45)
!1423 = !DILocation(line: 0, scope: !1419)
!1424 = !DILocation(line: 254, column: 35, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !25, line: 254, column: 13)
!1426 = !DILocation(line: 256, column: 55, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !25, line: 255, column: 13)
!1428 = !DILocation(line: 256, column: 59, scope: !1427)
!1429 = !DILocation(line: 256, column: 63, scope: !1427)
!1430 = !DILocation(line: 256, column: 44, scope: !1427)
!1431 = !DILocation(line: 256, column: 95, scope: !1427)
!1432 = !DILocation(line: 256, column: 92, scope: !1427)
!1433 = !DILocation(line: 256, column: 75, scope: !1427)
!1434 = !DILocation(line: 256, column: 99, scope: !1427)
!1435 = !DILocation(line: 256, column: 104, scope: !1427)
!1436 = !DILocation(line: 256, column: 17, scope: !1427)
!1437 = !DILocation(line: 254, column: 50, scope: !1425)
!1438 = !DILocation(line: 254, column: 13, scope: !1425)
!1439 = distinct !{!1439, !1418, !1440, !303}
!1440 = !DILocation(line: 257, column: 13, scope: !1419)
!1441 = !DILocation(line: 252, column: 50, scope: !1417)
!1442 = !DILocation(line: 252, column: 9, scope: !1417)
!1443 = distinct !{!1443, !1410, !1444, !303}
!1444 = !DILocation(line: 258, column: 9, scope: !1411)
!1445 = !DILocation(line: 250, column: 38, scope: !1409)
!1446 = !DILocation(line: 250, column: 5, scope: !1409)
!1447 = distinct !{!1447, !1327, !1448, !303}
!1448 = !DILocation(line: 259, column: 5, scope: !1328)
!1449 = !DILocation(line: 260, column: 1, scope: !1096)
!1450 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1451, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !49, !49, !18, !45, !45, !45}
!1453 = !DILocalVariable(name: "a", arg: 1, scope: !1450, file: !493, line: 79, type: !49)
!1454 = !DILocation(line: 0, scope: !1450)
!1455 = !DILocalVariable(name: "b", arg: 2, scope: !1450, file: !493, line: 79, type: !49)
!1456 = !DILocalVariable(name: "c", arg: 3, scope: !1450, file: !493, line: 80, type: !18)
!1457 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1450, file: !493, line: 80, type: !45)
!1458 = !DILocalVariable(name: "row_a", arg: 5, scope: !1450, file: !493, line: 80, type: !45)
!1459 = !DILocalVariable(name: "col_b", arg: 6, scope: !1450, file: !493, line: 80, type: !45)
!1460 = !DILocalVariable(name: "i", scope: !1461, file: !493, line: 81, type: !45)
!1461 = distinct !DILexicalBlock(scope: !1450, file: !493, line: 81, column: 5)
!1462 = !DILocation(line: 0, scope: !1461)
!1463 = !DILocation(line: 81, column: 10, scope: !1461)
!1464 = !DILocation(line: 81, scope: !1461)
!1465 = !DILocation(line: 81, column: 23, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !493, line: 81, column: 5)
!1467 = !DILocation(line: 81, column: 5, scope: !1461)
!1468 = !DILocation(line: 82, column: 9, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !493, line: 82, column: 9)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !493, line: 81, column: 53)
!1471 = !DILocation(line: 82, scope: !1469)
!1472 = !DILocalVariable(name: "j", scope: !1469, file: !493, line: 82, type: !45)
!1473 = !DILocation(line: 0, scope: !1469)
!1474 = !DILocation(line: 83, column: 18, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !493, line: 82, column: 46)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !493, line: 82, column: 9)
!1477 = !DILocation(line: 83, column: 16, scope: !1475)
!1478 = !DILocation(line: 82, column: 41, scope: !1476)
!1479 = !DILocation(line: 82, column: 9, scope: !1476)
!1480 = distinct !{!1480, !1468, !1481, !303}
!1481 = !DILocation(line: 84, column: 9, scope: !1469)
!1482 = !DILocation(line: 81, column: 32, scope: !1466)
!1483 = !DILocation(line: 81, column: 39, scope: !1466)
!1484 = !DILocation(line: 81, column: 5, scope: !1466)
!1485 = distinct !{!1485, !1467, !1486, !303}
!1486 = !DILocation(line: 85, column: 5, scope: !1461)
!1487 = !DILocation(line: 86, column: 1, scope: !1450)
!1488 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1489, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !49, !49, !18, !45, !45}
!1491 = !DILocalVariable(name: "a", arg: 1, scope: !1488, file: !493, line: 88, type: !49)
!1492 = !DILocation(line: 0, scope: !1488)
!1493 = !DILocalVariable(name: "b", arg: 2, scope: !1488, file: !493, line: 88, type: !49)
!1494 = !DILocalVariable(name: "c", arg: 3, scope: !1488, file: !493, line: 89, type: !18)
!1495 = !DILocalVariable(name: "m", arg: 4, scope: !1488, file: !493, line: 89, type: !45)
!1496 = !DILocalVariable(name: "n", arg: 5, scope: !1488, file: !493, line: 89, type: !45)
!1497 = !DILocalVariable(name: "i", scope: !1498, file: !493, line: 90, type: !45)
!1498 = distinct !DILexicalBlock(scope: !1488, file: !493, line: 90, column: 5)
!1499 = !DILocation(line: 0, scope: !1498)
!1500 = !DILocation(line: 90, column: 10, scope: !1498)
!1501 = !DILocation(line: 90, scope: !1498)
!1502 = !DILocation(line: 90, column: 23, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !493, line: 90, column: 5)
!1504 = !DILocation(line: 90, column: 5, scope: !1498)
!1505 = !DILocalVariable(name: "j", scope: !1506, file: !493, line: 91, type: !45)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !493, line: 91, column: 9)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !493, line: 90, column: 33)
!1508 = !DILocation(line: 0, scope: !1506)
!1509 = !DILocation(line: 92, column: 42, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !493, line: 91, column: 37)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !493, line: 91, column: 9)
!1512 = !DILocation(line: 92, column: 38, scope: !1510)
!1513 = !DILocation(line: 92, column: 60, scope: !1510)
!1514 = !DILocation(line: 92, column: 56, scope: !1510)
!1515 = !DILocation(line: 92, column: 32, scope: !1510)
!1516 = !DILocation(line: 92, column: 17, scope: !1510)
!1517 = !DILocation(line: 92, column: 30, scope: !1510)
!1518 = !DILocation(line: 90, column: 28, scope: !1503)
!1519 = !DILocation(line: 90, column: 5, scope: !1503)
!1520 = distinct !{!1520, !1504, !1521, !303}
!1521 = !DILocation(line: 94, column: 5, scope: !1498)
!1522 = !DILocation(line: 95, column: 1, scope: !1488)
!1523 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1524 = !DILocalVariable(name: "m", arg: 1, scope: !1523, file: !25, line: 32, type: !49)
!1525 = !DILocation(line: 0, scope: !1523)
!1526 = !DILocalVariable(name: "menc", arg: 2, scope: !1523, file: !25, line: 32, type: !18)
!1527 = !DILocalVariable(name: "mlen", arg: 3, scope: !1523, file: !25, line: 32, type: !45)
!1528 = !DILocalVariable(name: "i", scope: !1523, file: !25, line: 33, type: !45)
!1529 = !DILocation(line: 34, column: 10, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1523, file: !25, line: 34, column: 5)
!1531 = !DILocation(line: 34, scope: !1530)
!1532 = !DILocation(line: 34, column: 19, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !25, line: 34, column: 5)
!1534 = !DILocation(line: 34, column: 5, scope: !1530)
!1535 = !DILocation(line: 35, column: 20, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !25, line: 34, column: 44)
!1537 = !DILocation(line: 35, column: 31, scope: !1536)
!1538 = !DILocation(line: 35, column: 27, scope: !1536)
!1539 = !DILocation(line: 35, column: 36, scope: !1536)
!1540 = !DILocation(line: 35, column: 24, scope: !1536)
!1541 = !DILocation(line: 35, column: 9, scope: !1536)
!1542 = !DILocation(line: 35, column: 17, scope: !1536)
!1543 = !DILocation(line: 34, column: 31, scope: !1533)
!1544 = !DILocation(line: 34, column: 38, scope: !1533)
!1545 = !DILocation(line: 34, column: 5, scope: !1533)
!1546 = distinct !{!1546, !1534, !1547, !303}
!1547 = !DILocation(line: 36, column: 5, scope: !1530)
!1548 = !DILocation(line: 41, column: 1, scope: !1523)
!1549 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1550, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!14, !14, !14}
!1552 = !DILocalVariable(name: "a", arg: 1, scope: !1549, file: !493, line: 43, type: !14)
!1553 = !DILocation(line: 0, scope: !1549)
!1554 = !DILocalVariable(name: "b", arg: 2, scope: !1549, file: !493, line: 43, type: !14)
!1555 = !DILocation(line: 44, column: 14, scope: !1549)
!1556 = !DILocation(line: 44, column: 5, scope: !1549)
!1557 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1558, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!14, !49, !49, !45, !45}
!1560 = !DILocalVariable(name: "a", arg: 1, scope: !1557, file: !493, line: 70, type: !49)
!1561 = !DILocation(line: 0, scope: !1557)
!1562 = !DILocalVariable(name: "b", arg: 2, scope: !1557, file: !493, line: 71, type: !49)
!1563 = !DILocalVariable(name: "n", arg: 3, scope: !1557, file: !493, line: 71, type: !45)
!1564 = !DILocalVariable(name: "m", arg: 4, scope: !1557, file: !493, line: 71, type: !45)
!1565 = !DILocalVariable(name: "ret", scope: !1557, file: !493, line: 72, type: !14)
!1566 = !DILocalVariable(name: "i", scope: !1567, file: !493, line: 73, type: !45)
!1567 = distinct !DILexicalBlock(scope: !1557, file: !493, line: 73, column: 5)
!1568 = !DILocation(line: 0, scope: !1567)
!1569 = !DILocation(line: 73, column: 10, scope: !1567)
!1570 = !DILocation(line: 73, scope: !1567)
!1571 = !DILocation(line: 73, column: 23, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !493, line: 73, column: 5)
!1573 = !DILocation(line: 73, column: 5, scope: !1567)
!1574 = !DILocation(line: 74, column: 27, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !493, line: 73, column: 41)
!1576 = !DILocation(line: 74, column: 33, scope: !1575)
!1577 = !DILocation(line: 74, column: 21, scope: !1575)
!1578 = !DILocation(line: 74, column: 15, scope: !1575)
!1579 = !DILocation(line: 73, column: 28, scope: !1572)
!1580 = !DILocation(line: 73, column: 35, scope: !1572)
!1581 = !DILocation(line: 73, column: 5, scope: !1572)
!1582 = distinct !{!1582, !1573, !1583, !303}
!1583 = !DILocation(line: 75, column: 5, scope: !1567)
!1584 = !DILocation(line: 76, column: 5, scope: !1557)
!1585 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1550, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1586 = !DILocalVariable(name: "a", arg: 1, scope: !1585, file: !493, line: 9, type: !14)
!1587 = !DILocation(line: 0, scope: !1585)
!1588 = !DILocalVariable(name: "b", arg: 2, scope: !1585, file: !493, line: 9, type: !14)
!1589 = !DILocation(line: 14, column: 10, scope: !1585)
!1590 = !DILocation(line: 14, column: 7, scope: !1585)
!1591 = !DILocation(line: 17, column: 17, scope: !1585)
!1592 = !DILocalVariable(name: "p", scope: !1585, file: !493, line: 11, type: !14)
!1593 = !DILocation(line: 18, column: 13, scope: !1585)
!1594 = !DILocation(line: 18, column: 17, scope: !1585)
!1595 = !DILocation(line: 18, column: 7, scope: !1585)
!1596 = !DILocation(line: 19, column: 13, scope: !1585)
!1597 = !DILocation(line: 19, column: 17, scope: !1585)
!1598 = !DILocation(line: 19, column: 7, scope: !1585)
!1599 = !DILocation(line: 20, column: 13, scope: !1585)
!1600 = !DILocation(line: 20, column: 17, scope: !1585)
!1601 = !DILocation(line: 20, column: 7, scope: !1585)
!1602 = !DILocalVariable(name: "top_p", scope: !1585, file: !493, line: 23, type: !14)
!1603 = !DILocation(line: 24, column: 37, scope: !1585)
!1604 = !DILocation(line: 24, column: 52, scope: !1585)
!1605 = !DILocation(line: 24, column: 43, scope: !1585)
!1606 = !DILocation(line: 24, column: 59, scope: !1585)
!1607 = !DILocalVariable(name: "out", scope: !1585, file: !493, line: 24, type: !14)
!1608 = !DILocation(line: 25, column: 5, scope: !1585)
!1609 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1610 = !DILocation(line: 0, scope: !24)
!1611 = !DILocalVariable(name: "i", scope: !1612, file: !25, line: 117, type: !15)
!1612 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1613 = !DILocation(line: 0, scope: !1612)
!1614 = !DILocation(line: 117, column: 10, scope: !1612)
!1615 = !DILocation(line: 117, scope: !1612)
!1616 = !DILocation(line: 117, column: 26, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !25, line: 117, column: 5)
!1618 = !DILocation(line: 117, column: 5, scope: !1612)
!1619 = !DILocation(line: 124, column: 5, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1621 = !DILocation(line: 119, column: 24, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !25, line: 118, column: 5)
!1623 = !DILocation(line: 119, column: 29, scope: !1622)
!1624 = !DILocation(line: 119, column: 41, scope: !1622)
!1625 = !DILocation(line: 119, column: 38, scope: !1622)
!1626 = !DILocation(line: 119, column: 36, scope: !1622)
!1627 = !DILocation(line: 119, column: 46, scope: !1622)
!1628 = !DILocalVariable(name: "t", scope: !1622, file: !25, line: 119, type: !6)
!1629 = !DILocation(line: 0, scope: !1622)
!1630 = !DILocation(line: 120, column: 21, scope: !1622)
!1631 = !DILocation(line: 120, column: 9, scope: !1622)
!1632 = !DILocation(line: 120, column: 16, scope: !1622)
!1633 = !DILocation(line: 121, column: 12, scope: !1622)
!1634 = !DILocation(line: 121, column: 9, scope: !1622)
!1635 = !DILocation(line: 121, column: 16, scope: !1622)
!1636 = !DILocation(line: 117, column: 33, scope: !1617)
!1637 = !DILocation(line: 117, column: 5, scope: !1617)
!1638 = distinct !{!1638, !1618, !1639, !303}
!1639 = !DILocation(line: 122, column: 5, scope: !1612)
!1640 = !DILocation(line: 124, scope: !1620)
!1641 = !DILocalVariable(name: "i", scope: !1620, file: !25, line: 124, type: !15)
!1642 = !DILocation(line: 0, scope: !1620)
!1643 = !DILocation(line: 124, column: 26, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1620, file: !25, line: 124, column: 5)
!1645 = !DILocation(line: 134, column: 5, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1647 = !DILocation(line: 126, column: 25, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !25, line: 125, column: 5)
!1649 = !DILocation(line: 126, column: 32, scope: !1648)
!1650 = !DILocation(line: 126, column: 43, scope: !1648)
!1651 = !DILocation(line: 126, column: 40, scope: !1648)
!1652 = !DILocation(line: 126, column: 38, scope: !1648)
!1653 = !DILocation(line: 126, column: 48, scope: !1648)
!1654 = !DILocalVariable(name: "t0", scope: !1648, file: !25, line: 126, type: !6)
!1655 = !DILocation(line: 0, scope: !1648)
!1656 = !DILocation(line: 127, column: 28, scope: !1648)
!1657 = !DILocation(line: 127, column: 25, scope: !1648)
!1658 = !DILocation(line: 127, column: 32, scope: !1648)
!1659 = !DILocation(line: 127, column: 43, scope: !1648)
!1660 = !DILocation(line: 127, column: 40, scope: !1648)
!1661 = !DILocation(line: 127, column: 38, scope: !1648)
!1662 = !DILocation(line: 127, column: 48, scope: !1648)
!1663 = !DILocalVariable(name: "t1", scope: !1648, file: !25, line: 127, type: !6)
!1664 = !DILocation(line: 128, column: 23, scope: !1648)
!1665 = !DILocation(line: 128, column: 9, scope: !1648)
!1666 = !DILocation(line: 128, column: 16, scope: !1648)
!1667 = !DILocation(line: 129, column: 23, scope: !1648)
!1668 = !DILocation(line: 129, column: 12, scope: !1648)
!1669 = !DILocation(line: 129, column: 9, scope: !1648)
!1670 = !DILocation(line: 129, column: 16, scope: !1648)
!1671 = !DILocation(line: 130, column: 12, scope: !1648)
!1672 = !DILocation(line: 130, column: 9, scope: !1648)
!1673 = !DILocation(line: 130, column: 16, scope: !1648)
!1674 = !DILocation(line: 131, column: 12, scope: !1648)
!1675 = !DILocation(line: 131, column: 9, scope: !1648)
!1676 = !DILocation(line: 131, column: 16, scope: !1648)
!1677 = !DILocation(line: 124, column: 33, scope: !1644)
!1678 = !DILocation(line: 124, column: 5, scope: !1644)
!1679 = distinct !{!1679, !1619, !1680, !303}
!1680 = !DILocation(line: 132, column: 5, scope: !1620)
!1681 = !DILocation(line: 134, scope: !1646)
!1682 = !DILocalVariable(name: "i", scope: !1646, file: !25, line: 134, type: !15)
!1683 = !DILocation(line: 0, scope: !1646)
!1684 = !DILocation(line: 134, column: 26, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1646, file: !25, line: 134, column: 5)
!1686 = !DILocation(line: 145, column: 5, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1688 = !DILocation(line: 136, column: 25, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !25, line: 135, column: 5)
!1690 = !DILocation(line: 136, column: 32, scope: !1689)
!1691 = !DILocation(line: 136, column: 44, scope: !1689)
!1692 = !DILocation(line: 136, column: 41, scope: !1689)
!1693 = !DILocation(line: 136, column: 39, scope: !1689)
!1694 = !DILocation(line: 136, column: 50, scope: !1689)
!1695 = !DILocalVariable(name: "t0", scope: !1689, file: !25, line: 136, type: !6)
!1696 = !DILocation(line: 0, scope: !1689)
!1697 = !DILocation(line: 137, column: 28, scope: !1689)
!1698 = !DILocation(line: 137, column: 25, scope: !1689)
!1699 = !DILocation(line: 137, column: 32, scope: !1689)
!1700 = !DILocation(line: 137, column: 44, scope: !1689)
!1701 = !DILocation(line: 137, column: 41, scope: !1689)
!1702 = !DILocation(line: 137, column: 39, scope: !1689)
!1703 = !DILocation(line: 137, column: 50, scope: !1689)
!1704 = !DILocalVariable(name: "t1", scope: !1689, file: !25, line: 137, type: !6)
!1705 = !DILocation(line: 139, column: 23, scope: !1689)
!1706 = !DILocation(line: 139, column: 9, scope: !1689)
!1707 = !DILocation(line: 139, column: 17, scope: !1689)
!1708 = !DILocation(line: 140, column: 23, scope: !1689)
!1709 = !DILocation(line: 140, column: 12, scope: !1689)
!1710 = !DILocation(line: 140, column: 9, scope: !1689)
!1711 = !DILocation(line: 140, column: 17, scope: !1689)
!1712 = !DILocation(line: 141, column: 12, scope: !1689)
!1713 = !DILocation(line: 141, column: 9, scope: !1689)
!1714 = !DILocation(line: 141, column: 17, scope: !1689)
!1715 = !DILocation(line: 142, column: 12, scope: !1689)
!1716 = !DILocation(line: 142, column: 9, scope: !1689)
!1717 = !DILocation(line: 142, column: 17, scope: !1689)
!1718 = !DILocation(line: 134, column: 32, scope: !1685)
!1719 = !DILocation(line: 134, column: 5, scope: !1685)
!1720 = distinct !{!1720, !1645, !1721, !303}
!1721 = !DILocation(line: 143, column: 5, scope: !1646)
!1722 = !DILocation(line: 145, scope: !1687)
!1723 = !DILocalVariable(name: "i", scope: !1687, file: !25, line: 145, type: !15)
!1724 = !DILocation(line: 0, scope: !1687)
!1725 = !DILocation(line: 145, column: 26, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1687, file: !25, line: 145, column: 5)
!1727 = !DILocation(line: 147, column: 24, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1726, file: !25, line: 146, column: 5)
!1729 = !DILocation(line: 147, column: 28, scope: !1728)
!1730 = !DILocation(line: 147, column: 39, scope: !1728)
!1731 = !DILocation(line: 147, column: 36, scope: !1728)
!1732 = !DILocation(line: 147, column: 44, scope: !1728)
!1733 = !DILocalVariable(name: "t", scope: !1728, file: !25, line: 147, type: !6)
!1734 = !DILocation(line: 0, scope: !1728)
!1735 = !DILocation(line: 148, column: 21, scope: !1728)
!1736 = !DILocation(line: 148, column: 9, scope: !1728)
!1737 = !DILocation(line: 148, column: 16, scope: !1728)
!1738 = !DILocation(line: 149, column: 12, scope: !1728)
!1739 = !DILocation(line: 149, column: 9, scope: !1728)
!1740 = !DILocation(line: 149, column: 16, scope: !1728)
!1741 = !DILocation(line: 145, column: 32, scope: !1726)
!1742 = !DILocation(line: 145, column: 5, scope: !1726)
!1743 = distinct !{!1743, !1686, !1744, !303}
!1744 = !DILocation(line: 150, column: 5, scope: !1687)
!1745 = !DILocation(line: 151, column: 1, scope: !24)
!1746 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1747 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1746, file: !323, line: 61, type: !239)
!1748 = !DILocation(line: 0, scope: !1746)
!1749 = !DILocalVariable(name: "mat", arg: 2, scope: !1746, file: !323, line: 61, type: !49)
!1750 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1746, file: !323, line: 61, type: !326)
!1751 = !DILocalVariable(name: "acc", arg: 4, scope: !1746, file: !323, line: 61, type: !5)
!1752 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1746, file: !323, line: 62, type: !239)
!1753 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1746, file: !323, line: 62, type: !239)
!1754 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1746, file: !323, line: 62, type: !239)
!1755 = !DILocalVariable(name: "r", scope: !1756, file: !323, line: 64, type: !45)
!1756 = distinct !DILexicalBlock(scope: !1746, file: !323, line: 64, column: 5)
!1757 = !DILocation(line: 0, scope: !1756)
!1758 = !DILocation(line: 64, column: 10, scope: !1756)
!1759 = !DILocation(line: 64, scope: !1756)
!1760 = !DILocation(line: 64, column: 23, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !323, line: 64, column: 5)
!1762 = !DILocation(line: 64, column: 5, scope: !1756)
!1763 = !DILocation(line: 65, column: 9, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !323, line: 65, column: 9)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !323, line: 64, column: 40)
!1766 = !DILocation(line: 65, scope: !1764)
!1767 = !DILocalVariable(name: "c", scope: !1764, file: !323, line: 65, type: !45)
!1768 = !DILocation(line: 0, scope: !1764)
!1769 = !DILocation(line: 65, column: 27, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1764, file: !323, line: 65, column: 9)
!1771 = !DILocation(line: 66, column: 13, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !323, line: 66, column: 13)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !323, line: 65, column: 44)
!1774 = !DILocation(line: 66, scope: !1772)
!1775 = !DILocalVariable(name: "k", scope: !1772, file: !323, line: 66, type: !45)
!1776 = !DILocation(line: 0, scope: !1772)
!1777 = !DILocation(line: 66, column: 31, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !323, line: 66, column: 13)
!1779 = !DILocation(line: 67, column: 70, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1778, file: !323, line: 66, column: 54)
!1781 = !DILocation(line: 67, column: 84, scope: !1780)
!1782 = !DILocation(line: 67, column: 51, scope: !1780)
!1783 = !DILocation(line: 67, column: 96, scope: !1780)
!1784 = !DILocation(line: 67, column: 90, scope: !1780)
!1785 = !DILocation(line: 67, column: 136, scope: !1780)
!1786 = !DILocation(line: 67, column: 150, scope: !1780)
!1787 = !DILocation(line: 67, column: 117, scope: !1780)
!1788 = !DILocation(line: 67, column: 17, scope: !1780)
!1789 = !DILocation(line: 66, column: 48, scope: !1778)
!1790 = !DILocation(line: 66, column: 13, scope: !1778)
!1791 = distinct !{!1791, !1771, !1792, !303}
!1792 = !DILocation(line: 68, column: 13, scope: !1772)
!1793 = !DILocation(line: 65, column: 40, scope: !1770)
!1794 = !DILocation(line: 65, column: 9, scope: !1770)
!1795 = distinct !{!1795, !1763, !1796, !303}
!1796 = !DILocation(line: 69, column: 9, scope: !1764)
!1797 = !DILocation(line: 64, column: 36, scope: !1761)
!1798 = !DILocation(line: 64, column: 5, scope: !1761)
!1799 = distinct !{!1799, !1762, !1800, !303}
!1800 = !DILocation(line: 70, column: 5, scope: !1756)
!1801 = !DILocation(line: 71, column: 1, scope: !1746)
!1802 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1803 = !DILocalVariable(name: "p", arg: 1, scope: !1802, file: !323, line: 82, type: !174)
!1804 = !DILocation(line: 0, scope: !1802)
!1805 = !DILocalVariable(name: "P1", arg: 2, scope: !1802, file: !323, line: 82, type: !326)
!1806 = !DILocalVariable(name: "V", arg: 3, scope: !1802, file: !323, line: 82, type: !49)
!1807 = !DILocalVariable(name: "acc", arg: 4, scope: !1802, file: !323, line: 82, type: !5)
!1808 = !DILocation(line: 86, column: 5, scope: !1802)
!1809 = !DILocation(line: 87, column: 1, scope: !1802)
!1810 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1811 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1810, file: !323, line: 32, type: !239)
!1812 = !DILocation(line: 0, scope: !1810)
!1813 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1810, file: !323, line: 32, type: !326)
!1814 = !DILocalVariable(name: "mat", arg: 3, scope: !1810, file: !323, line: 32, type: !49)
!1815 = !DILocalVariable(name: "acc", arg: 4, scope: !1810, file: !323, line: 32, type: !5)
!1816 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1810, file: !323, line: 33, type: !239)
!1817 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1810, file: !323, line: 33, type: !239)
!1818 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1810, file: !323, line: 33, type: !239)
!1819 = !DILocalVariable(name: "triangular", arg: 8, scope: !1810, file: !323, line: 33, type: !239)
!1820 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1810, file: !323, line: 34, type: !45)
!1821 = !DILocalVariable(name: "r", scope: !1822, file: !323, line: 35, type: !45)
!1822 = distinct !DILexicalBlock(scope: !1810, file: !323, line: 35, column: 5)
!1823 = !DILocation(line: 0, scope: !1822)
!1824 = !DILocation(line: 35, column: 10, scope: !1822)
!1825 = !DILocation(line: 34, column: 9, scope: !1810)
!1826 = !DILocation(line: 35, scope: !1822)
!1827 = !DILocation(line: 35, column: 23, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !323, line: 35, column: 5)
!1829 = !DILocation(line: 35, column: 5, scope: !1822)
!1830 = !DILocation(line: 36, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !323, line: 36, column: 9)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !323, line: 35, column: 43)
!1833 = !DILocation(line: 36, scope: !1831)
!1834 = !DILocalVariable(name: "c", scope: !1831, file: !323, line: 36, type: !45)
!1835 = !DILocation(line: 0, scope: !1831)
!1836 = !DILocation(line: 36, column: 40, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1831, file: !323, line: 36, column: 9)
!1838 = !DILocation(line: 37, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !323, line: 37, column: 13)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !323, line: 36, column: 60)
!1841 = !DILocation(line: 37, scope: !1839)
!1842 = !DILocalVariable(name: "k", scope: !1839, file: !323, line: 37, type: !45)
!1843 = !DILocation(line: 0, scope: !1839)
!1844 = !DILocation(line: 37, column: 31, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !323, line: 37, column: 13)
!1846 = !DILocation(line: 38, column: 51, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1845, file: !323, line: 37, column: 51)
!1848 = !DILocation(line: 38, column: 94, scope: !1847)
!1849 = !DILocation(line: 38, column: 88, scope: !1847)
!1850 = !DILocation(line: 38, column: 137, scope: !1847)
!1851 = !DILocation(line: 38, column: 148, scope: !1847)
!1852 = !DILocation(line: 38, column: 118, scope: !1847)
!1853 = !DILocation(line: 38, column: 17, scope: !1847)
!1854 = !DILocation(line: 37, column: 45, scope: !1845)
!1855 = !DILocation(line: 37, column: 13, scope: !1845)
!1856 = distinct !{!1856, !1838, !1857, !303}
!1857 = !DILocation(line: 39, column: 13, scope: !1839)
!1858 = !DILocation(line: 40, column: 33, scope: !1840)
!1859 = !DILocation(line: 36, column: 56, scope: !1837)
!1860 = !DILocation(line: 36, column: 9, scope: !1837)
!1861 = distinct !{!1861, !1830, !1862, !303}
!1862 = !DILocation(line: 41, column: 9, scope: !1831)
!1863 = !DILocation(line: 35, column: 39, scope: !1828)
!1864 = !DILocation(line: 35, column: 5, scope: !1828)
!1865 = distinct !{!1865, !1829, !1866, !303}
!1866 = !DILocation(line: 42, column: 5, scope: !1822)
!1867 = !DILocation(line: 43, column: 1, scope: !1810)
!1868 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !702, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1869 = !DILocalVariable(name: "p", arg: 1, scope: !1868, file: !25, line: 502, type: !174)
!1870 = !DILocation(line: 0, scope: !1868)
!1871 = !DILocalVariable(name: "sm", arg: 2, scope: !1868, file: !25, line: 502, type: !18)
!1872 = !DILocalVariable(name: "smlen", arg: 3, scope: !1868, file: !25, line: 503, type: !704)
!1873 = !DILocalVariable(name: "m", arg: 4, scope: !1868, file: !25, line: 503, type: !49)
!1874 = !DILocalVariable(name: "mlen", arg: 5, scope: !1868, file: !25, line: 504, type: !15)
!1875 = !DILocalVariable(name: "csk", arg: 6, scope: !1868, file: !25, line: 504, type: !49)
!1876 = !DILocalVariable(name: "ret", scope: !1868, file: !25, line: 505, type: !45)
!1877 = !DILocalVariable(name: "param_sig_bytes", scope: !1868, file: !25, line: 506, type: !239)
!1878 = !DILocation(line: 508, column: 16, scope: !1868)
!1879 = !DILocation(line: 508, column: 5, scope: !1868)
!1880 = !DILocation(line: 509, column: 50, scope: !1868)
!1881 = !DILocalVariable(name: "siglen", scope: !1868, file: !25, line: 507, type: !15)
!1882 = !DILocation(line: 509, column: 11, scope: !1868)
!1883 = !DILocation(line: 510, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1868, file: !25, line: 510, column: 9)
!1885 = !DILocation(line: 510, column: 24, scope: !1884)
!1886 = !DILocation(line: 511, column: 23, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !25, line: 510, column: 62)
!1888 = !DILocation(line: 511, column: 30, scope: !1887)
!1889 = !DILocation(line: 511, column: 9, scope: !1887)
!1890 = !DILocation(line: 512, column: 9, scope: !1887)
!1891 = !DILocation(line: 515, column: 14, scope: !1868)
!1892 = !DILocation(line: 515, column: 21, scope: !1868)
!1893 = !DILocation(line: 515, column: 12, scope: !1868)
!1894 = !DILocation(line: 515, column: 5, scope: !1868)
!1895 = !DILabel(scope: !1868, name: "err", file: !25, line: 516)
!1896 = !DILocation(line: 516, column: 1, scope: !1868)
!1897 = !DILocation(line: 517, column: 5, scope: !1868)
!1898 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_open", scope: !25, file: !25, line: 520, type: !702, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1899 = !DILocalVariable(name: "p", arg: 1, scope: !1898, file: !25, line: 520, type: !174)
!1900 = !DILocation(line: 0, scope: !1898)
!1901 = !DILocalVariable(name: "m", arg: 2, scope: !1898, file: !25, line: 520, type: !18)
!1902 = !DILocalVariable(name: "mlen", arg: 3, scope: !1898, file: !25, line: 521, type: !704)
!1903 = !DILocalVariable(name: "sm", arg: 4, scope: !1898, file: !25, line: 521, type: !49)
!1904 = !DILocalVariable(name: "smlen", arg: 5, scope: !1898, file: !25, line: 522, type: !15)
!1905 = !DILocalVariable(name: "pk", arg: 6, scope: !1898, file: !25, line: 522, type: !49)
!1906 = !DILocalVariable(name: "param_sig_bytes", scope: !1898, file: !25, line: 523, type: !239)
!1907 = !DILocation(line: 524, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1898, file: !25, line: 524, column: 9)
!1909 = !DILocation(line: 527, column: 36, scope: !1898)
!1910 = !DILocation(line: 527, column: 61, scope: !1898)
!1911 = !DILocation(line: 527, column: 18, scope: !1898)
!1912 = !DILocalVariable(name: "result", scope: !1898, file: !25, line: 527, type: !45)
!1913 = !DILocation(line: 530, column: 16, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1898, file: !25, line: 530, column: 9)
!1915 = !DILocation(line: 531, column: 23, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1914, file: !25, line: 530, column: 28)
!1917 = !DILocation(line: 531, column: 15, scope: !1916)
!1918 = !DILocation(line: 532, column: 23, scope: !1916)
!1919 = !DILocation(line: 532, column: 9, scope: !1916)
!1920 = !DILocation(line: 533, column: 5, scope: !1916)
!1921 = !DILocation(line: 536, column: 1, scope: !1898)
!1922 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1923, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!45, !174, !49, !15, !49, !49}
!1925 = !DILocalVariable(name: "p", arg: 1, scope: !1922, file: !25, line: 617, type: !174)
!1926 = !DILocation(line: 0, scope: !1922)
!1927 = !DILocalVariable(name: "m", arg: 2, scope: !1922, file: !25, line: 617, type: !49)
!1928 = !DILocalVariable(name: "mlen", arg: 3, scope: !1922, file: !25, line: 618, type: !15)
!1929 = !DILocalVariable(name: "sig", arg: 4, scope: !1922, file: !25, line: 618, type: !49)
!1930 = !DILocalVariable(name: "cpk", arg: 5, scope: !1922, file: !25, line: 619, type: !49)
!1931 = !DILocalVariable(name: "tEnc", scope: !1922, file: !25, line: 620, type: !714)
!1932 = !DILocation(line: 620, column: 19, scope: !1922)
!1933 = !DILocalVariable(name: "t", scope: !1922, file: !25, line: 621, type: !719)
!1934 = !DILocation(line: 621, column: 19, scope: !1922)
!1935 = !DILocalVariable(name: "y", scope: !1922, file: !25, line: 622, type: !1936)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1248, elements: !1937)
!1937 = !{!1938}
!1938 = !DISubrange(count: 156)
!1939 = !DILocation(line: 622, column: 19, scope: !1922)
!1940 = !DILocalVariable(name: "s", scope: !1922, file: !25, line: 623, type: !746)
!1941 = !DILocation(line: 623, column: 19, scope: !1922)
!1942 = !DILocalVariable(name: "pk", scope: !1922, file: !25, line: 624, type: !123)
!1943 = !DILocation(line: 624, column: 14, scope: !1922)
!1944 = !DILocalVariable(name: "tmp", scope: !1922, file: !25, line: 625, type: !1945)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1946)
!1946 = !{!1947}
!1947 = !DISubrange(count: 56)
!1948 = !DILocation(line: 625, column: 19, scope: !1922)
!1949 = !DILocalVariable(name: "param_m", scope: !1922, file: !25, line: 627, type: !239)
!1950 = !DILocalVariable(name: "param_n", scope: !1922, file: !25, line: 628, type: !239)
!1951 = !DILocalVariable(name: "param_k", scope: !1922, file: !25, line: 629, type: !239)
!1952 = !DILocalVariable(name: "param_m_bytes", scope: !1922, file: !25, line: 630, type: !239)
!1953 = !DILocalVariable(name: "param_sig_bytes", scope: !1922, file: !25, line: 631, type: !239)
!1954 = !DILocalVariable(name: "param_digest_bytes", scope: !1922, file: !25, line: 632, type: !239)
!1955 = !DILocalVariable(name: "param_salt_bytes", scope: !1922, file: !25, line: 633, type: !239)
!1956 = !DILocation(line: 635, column: 15, scope: !1922)
!1957 = !DILocalVariable(name: "ret", scope: !1922, file: !25, line: 635, type: !45)
!1958 = !DILocalVariable(name: "P1", scope: !1922, file: !25, line: 640, type: !5)
!1959 = !DILocation(line: 641, column: 23, scope: !1922)
!1960 = !DILocalVariable(name: "P2", scope: !1922, file: !25, line: 641, type: !5)
!1961 = !DILocation(line: 642, column: 23, scope: !1922)
!1962 = !DILocalVariable(name: "P3", scope: !1922, file: !25, line: 642, type: !5)
!1963 = !DILocation(line: 657, column: 5, scope: !1922)
!1964 = !DILocation(line: 660, column: 16, scope: !1922)
!1965 = !DILocation(line: 660, column: 60, scope: !1922)
!1966 = !DILocation(line: 660, column: 5, scope: !1922)
!1967 = !DILocation(line: 662, column: 5, scope: !1922)
!1968 = !DILocation(line: 663, column: 5, scope: !1922)
!1969 = !DILocation(line: 666, column: 5, scope: !1922)
!1970 = !DILocation(line: 668, column: 5, scope: !1922)
!1971 = !DILocation(line: 670, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1922, file: !25, line: 670, column: 9)
!1973 = !DILocation(line: 670, column: 31, scope: !1972)
!1974 = !DILocation(line: 674, column: 1, scope: !1922)
!1975 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !603, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1976 = !DILocalVariable(name: "p", arg: 1, scope: !1975, file: !25, line: 608, type: !174)
!1977 = !DILocation(line: 0, scope: !1975)
!1978 = !DILocalVariable(name: "cpk", arg: 2, scope: !1975, file: !25, line: 608, type: !49)
!1979 = !DILocalVariable(name: "pk", arg: 3, scope: !1975, file: !25, line: 609, type: !5)
!1980 = !DILocation(line: 610, column: 5, scope: !1975)
!1981 = !DILocation(line: 612, column: 23, scope: !1975)
!1982 = !DILocation(line: 612, column: 72, scope: !1975)
!1983 = !DILocation(line: 612, column: 5, scope: !1975)
!1984 = !DILocation(line: 614, column: 5, scope: !1975)
!1985 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1986, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !174, !49, !326, !326, !326, !18}
!1988 = !DILocalVariable(name: "p", arg: 1, scope: !1985, file: !25, line: 288, type: !174)
!1989 = !DILocation(line: 0, scope: !1985)
!1990 = !DILocalVariable(name: "s", arg: 2, scope: !1985, file: !25, line: 288, type: !49)
!1991 = !DILocalVariable(name: "P1", arg: 3, scope: !1985, file: !25, line: 288, type: !326)
!1992 = !DILocalVariable(name: "P2", arg: 4, scope: !1985, file: !25, line: 288, type: !326)
!1993 = !DILocalVariable(name: "P3", arg: 5, scope: !1985, file: !25, line: 288, type: !326)
!1994 = !DILocalVariable(name: "eval", arg: 6, scope: !1985, file: !25, line: 288, type: !18)
!1995 = !DILocalVariable(name: "SPS", scope: !1985, file: !25, line: 289, type: !1996)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32000, elements: !1997)
!1997 = !{!1998}
!1998 = !DISubrange(count: 500)
!1999 = !DILocation(line: 289, column: 14, scope: !1985)
!2000 = !DILocation(line: 291, column: 5, scope: !1985)
!2001 = !DILocalVariable(name: "zero", scope: !1985, file: !25, line: 292, type: !719)
!2002 = !DILocation(line: 292, column: 19, scope: !1985)
!2003 = !DILocation(line: 293, column: 5, scope: !1985)
!2004 = !DILocation(line: 294, column: 1, scope: !1985)
!2005 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !2006, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !174, !326, !326, !326, !49, !5}
!2008 = !DILocalVariable(name: "p", arg: 1, scope: !2005, file: !323, line: 277, type: !174)
!2009 = !DILocation(line: 0, scope: !2005)
!2010 = !DILocalVariable(name: "P1", arg: 2, scope: !2005, file: !323, line: 277, type: !326)
!2011 = !DILocalVariable(name: "P2", arg: 3, scope: !2005, file: !323, line: 277, type: !326)
!2012 = !DILocalVariable(name: "P3", arg: 4, scope: !2005, file: !323, line: 277, type: !326)
!2013 = !DILocalVariable(name: "s", arg: 5, scope: !2005, file: !323, line: 277, type: !49)
!2014 = !DILocalVariable(name: "SPS", arg: 6, scope: !2005, file: !323, line: 278, type: !5)
!2015 = !DILocalVariable(name: "PS", scope: !2005, file: !323, line: 286, type: !2016)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 275200, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 4300)
!2019 = !DILocation(line: 286, column: 14, scope: !2005)
!2020 = !DILocation(line: 287, column: 5, scope: !2005)
!2021 = !DILocation(line: 290, column: 5, scope: !2005)
!2022 = !DILocation(line: 292, column: 1, scope: !2005)
!2023 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !2024, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!2026 = !DILocalVariable(name: "P1", arg: 1, scope: !2023, file: !323, line: 151, type: !326)
!2027 = !DILocation(line: 0, scope: !2023)
!2028 = !DILocalVariable(name: "P2", arg: 2, scope: !2023, file: !323, line: 151, type: !326)
!2029 = !DILocalVariable(name: "P3", arg: 3, scope: !2023, file: !323, line: 151, type: !326)
!2030 = !DILocalVariable(name: "S", arg: 4, scope: !2023, file: !323, line: 151, type: !49)
!2031 = !DILocalVariable(name: "m", arg: 5, scope: !2023, file: !323, line: 152, type: !239)
!2032 = !DILocalVariable(name: "v", arg: 6, scope: !2023, file: !323, line: 152, type: !239)
!2033 = !DILocalVariable(name: "o", arg: 7, scope: !2023, file: !323, line: 152, type: !239)
!2034 = !DILocalVariable(name: "k", arg: 8, scope: !2023, file: !323, line: 152, type: !239)
!2035 = !DILocalVariable(name: "PS", arg: 9, scope: !2023, file: !323, line: 152, type: !5)
!2036 = !DILocalVariable(name: "n", scope: !2023, file: !323, line: 154, type: !239)
!2037 = !DILocalVariable(name: "m_vec_limbs", scope: !2023, file: !323, line: 155, type: !239)
!2038 = !DILocalVariable(name: "accumulator", scope: !2023, file: !323, line: 157, type: !2039)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4403200, elements: !2040)
!2040 = !{!2041}
!2041 = !DISubrange(count: 68800)
!2042 = !DILocation(line: 157, column: 14, scope: !2023)
!2043 = !DILocalVariable(name: "P1_used", scope: !2023, file: !323, line: 158, type: !45)
!2044 = !DILocalVariable(name: "row", scope: !2045, file: !323, line: 159, type: !45)
!2045 = distinct !DILexicalBlock(scope: !2023, file: !323, line: 159, column: 5)
!2046 = !DILocation(line: 0, scope: !2045)
!2047 = !DILocation(line: 159, column: 10, scope: !2045)
!2048 = !DILocation(line: 158, column: 9, scope: !2023)
!2049 = !DILocation(line: 159, scope: !2045)
!2050 = !DILocation(line: 159, column: 27, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2045, file: !323, line: 159, column: 5)
!2052 = !DILocation(line: 159, column: 5, scope: !2045)
!2053 = !DILocation(line: 160, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !323, line: 160, column: 9)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !323, line: 159, column: 39)
!2056 = !DILocation(line: 175, column: 5, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2023, file: !323, line: 175, column: 5)
!2058 = !DILocation(line: 160, scope: !2054)
!2059 = !DILocalVariable(name: "j", scope: !2054, file: !323, line: 160, type: !45)
!2060 = !DILocation(line: 0, scope: !2054)
!2061 = !DILocation(line: 160, column: 29, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !323, line: 160, column: 9)
!2063 = !DILocation(line: 167, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2055, file: !323, line: 167, column: 9)
!2065 = !DILocation(line: 161, column: 13, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !323, line: 161, column: 13)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !323, line: 160, column: 39)
!2068 = !DILocation(line: 161, scope: !2066)
!2069 = !DILocalVariable(name: "col", scope: !2066, file: !323, line: 161, type: !45)
!2070 = !DILocation(line: 0, scope: !2066)
!2071 = !DILocation(line: 161, column: 35, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2066, file: !323, line: 161, column: 13)
!2073 = !DILocation(line: 162, column: 43, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2072, file: !323, line: 161, column: 47)
!2075 = !DILocation(line: 162, column: 91, scope: !2074)
!2076 = !DILocation(line: 162, column: 95, scope: !2074)
!2077 = !DILocation(line: 162, column: 102, scope: !2074)
!2078 = !DILocation(line: 162, column: 115, scope: !2074)
!2079 = !DILocation(line: 162, column: 109, scope: !2074)
!2080 = !DILocation(line: 162, column: 107, scope: !2074)
!2081 = !DILocation(line: 162, column: 82, scope: !2074)
!2082 = !DILocation(line: 162, column: 17, scope: !2074)
!2083 = !DILocation(line: 161, column: 43, scope: !2072)
!2084 = !DILocation(line: 161, column: 13, scope: !2072)
!2085 = distinct !{!2085, !2065, !2086, !303}
!2086 = !DILocation(line: 163, column: 13, scope: !2066)
!2087 = !DILocation(line: 164, column: 21, scope: !2067)
!2088 = !DILocation(line: 160, column: 35, scope: !2062)
!2089 = !DILocation(line: 160, column: 9, scope: !2062)
!2090 = distinct !{!2090, !2053, !2091, !303}
!2091 = !DILocation(line: 165, column: 9, scope: !2054)
!2092 = !DILocation(line: 167, scope: !2064)
!2093 = !DILocalVariable(name: "j", scope: !2064, file: !323, line: 167, type: !45)
!2094 = !DILocation(line: 0, scope: !2064)
!2095 = !DILocation(line: 167, column: 27, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2064, file: !323, line: 167, column: 9)
!2097 = !DILocation(line: 168, column: 13, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !323, line: 168, column: 13)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !323, line: 167, column: 37)
!2100 = !DILocation(line: 168, scope: !2098)
!2101 = !DILocalVariable(name: "col", scope: !2098, file: !323, line: 168, type: !45)
!2102 = !DILocation(line: 0, scope: !2098)
!2103 = !DILocation(line: 168, column: 35, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2098, file: !323, line: 168, column: 13)
!2105 = !DILocation(line: 169, column: 50, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2104, file: !323, line: 168, column: 47)
!2107 = !DILocation(line: 169, column: 54, scope: !2106)
!2108 = !DILocation(line: 169, column: 43, scope: !2106)
!2109 = !DILocation(line: 169, column: 93, scope: !2106)
!2110 = !DILocation(line: 169, column: 97, scope: !2106)
!2111 = !DILocation(line: 169, column: 104, scope: !2106)
!2112 = !DILocation(line: 169, column: 118, scope: !2106)
!2113 = !DILocation(line: 169, column: 111, scope: !2106)
!2114 = !DILocation(line: 169, column: 109, scope: !2106)
!2115 = !DILocation(line: 169, column: 84, scope: !2106)
!2116 = !DILocation(line: 169, column: 17, scope: !2106)
!2117 = !DILocation(line: 168, column: 43, scope: !2104)
!2118 = !DILocation(line: 168, column: 13, scope: !2104)
!2119 = distinct !{!2119, !2097, !2120, !303}
!2120 = !DILocation(line: 170, column: 13, scope: !2098)
!2121 = !DILocation(line: 167, column: 33, scope: !2096)
!2122 = !DILocation(line: 167, column: 9, scope: !2096)
!2123 = distinct !{!2123, !2063, !2124, !303}
!2124 = !DILocation(line: 171, column: 9, scope: !2064)
!2125 = !DILocation(line: 159, column: 35, scope: !2051)
!2126 = !DILocation(line: 159, column: 5, scope: !2051)
!2127 = distinct !{!2127, !2052, !2128, !303}
!2128 = !DILocation(line: 172, column: 5, scope: !2045)
!2129 = !DILocation(line: 174, column: 9, scope: !2023)
!2130 = !DILocation(line: 175, scope: !2057)
!2131 = !DILocalVariable(name: "row", scope: !2057, file: !323, line: 175, type: !45)
!2132 = !DILocation(line: 0, scope: !2057)
!2133 = !DILocalVariable(name: "P3_used", scope: !2023, file: !323, line: 174, type: !45)
!2134 = !DILocation(line: 175, column: 27, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2057, file: !323, line: 175, column: 5)
!2136 = !DILocation(line: 176, column: 9, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !323, line: 176, column: 9)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !323, line: 175, column: 39)
!2139 = !DILocation(line: 186, column: 5, scope: !2023)
!2140 = !DILocation(line: 176, scope: !2137)
!2141 = !DILocalVariable(name: "j", scope: !2137, file: !323, line: 176, type: !45)
!2142 = !DILocation(line: 0, scope: !2137)
!2143 = !DILocation(line: 176, column: 29, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !323, line: 176, column: 9)
!2145 = !DILocation(line: 177, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !323, line: 177, column: 13)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !323, line: 176, column: 39)
!2148 = !DILocation(line: 177, scope: !2146)
!2149 = !DILocalVariable(name: "col", scope: !2146, file: !323, line: 177, type: !45)
!2150 = !DILocation(line: 0, scope: !2146)
!2151 = !DILocation(line: 177, column: 35, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2146, file: !323, line: 177, column: 13)
!2153 = !DILocation(line: 178, column: 43, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2152, file: !323, line: 177, column: 47)
!2155 = !DILocation(line: 178, column: 89, scope: !2154)
!2156 = !DILocation(line: 178, column: 93, scope: !2154)
!2157 = !DILocation(line: 178, column: 100, scope: !2154)
!2158 = !DILocation(line: 178, column: 113, scope: !2154)
!2159 = !DILocation(line: 178, column: 107, scope: !2154)
!2160 = !DILocation(line: 178, column: 105, scope: !2154)
!2161 = !DILocation(line: 178, column: 80, scope: !2154)
!2162 = !DILocation(line: 178, column: 17, scope: !2154)
!2163 = !DILocation(line: 177, column: 43, scope: !2152)
!2164 = !DILocation(line: 177, column: 13, scope: !2152)
!2165 = distinct !{!2165, !2145, !2166, !303}
!2166 = !DILocation(line: 179, column: 13, scope: !2146)
!2167 = !DILocation(line: 180, column: 21, scope: !2147)
!2168 = !DILocation(line: 176, column: 35, scope: !2144)
!2169 = !DILocation(line: 176, column: 9, scope: !2144)
!2170 = distinct !{!2170, !2136, !2171, !303}
!2171 = !DILocation(line: 181, column: 9, scope: !2137)
!2172 = !DILocation(line: 175, column: 35, scope: !2135)
!2173 = !DILocation(line: 175, column: 5, scope: !2135)
!2174 = distinct !{!2174, !2056, !2175, !303}
!2175 = !DILocation(line: 182, column: 5, scope: !2057)
!2176 = !DILocalVariable(name: "i", scope: !2023, file: !323, line: 185, type: !45)
!2177 = !DILocation(line: 186, column: 14, scope: !2023)
!2178 = !DILocation(line: 187, column: 54, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2023, file: !323, line: 186, column: 23)
!2180 = !DILocation(line: 187, column: 81, scope: !2179)
!2181 = !DILocation(line: 187, column: 9, scope: !2179)
!2182 = !DILocation(line: 188, column: 10, scope: !2179)
!2183 = distinct !{!2183, !2139, !2184, !303}
!2184 = !DILocation(line: 189, column: 5, scope: !2023)
!2185 = !DILocation(line: 191, column: 1, scope: !2023)
!2186 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2187, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !326, !49, !45, !45, !45, !5}
!2189 = !DILocalVariable(name: "PS", arg: 1, scope: !2186, file: !323, line: 195, type: !326)
!2190 = !DILocation(line: 0, scope: !2186)
!2191 = !DILocalVariable(name: "S", arg: 2, scope: !2186, file: !323, line: 195, type: !49)
!2192 = !DILocalVariable(name: "m", arg: 3, scope: !2186, file: !323, line: 195, type: !45)
!2193 = !DILocalVariable(name: "k", arg: 4, scope: !2186, file: !323, line: 195, type: !45)
!2194 = !DILocalVariable(name: "n", arg: 5, scope: !2186, file: !323, line: 195, type: !45)
!2195 = !DILocalVariable(name: "SPS", arg: 6, scope: !2186, file: !323, line: 195, type: !5)
!2196 = !DILocalVariable(name: "accumulator", scope: !2186, file: !323, line: 196, type: !2197)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512000, elements: !2198)
!2198 = !{!2199}
!2199 = !DISubrange(count: 8000)
!2200 = !DILocation(line: 196, column: 14, scope: !2186)
!2201 = !DILocalVariable(name: "m_vec_limbs", scope: !2186, file: !323, line: 197, type: !239)
!2202 = !DILocalVariable(name: "row", scope: !2203, file: !323, line: 198, type: !45)
!2203 = distinct !DILexicalBlock(scope: !2186, file: !323, line: 198, column: 5)
!2204 = !DILocation(line: 0, scope: !2203)
!2205 = !DILocation(line: 198, column: 10, scope: !2203)
!2206 = !DILocation(line: 198, scope: !2203)
!2207 = !DILocation(line: 198, column: 27, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !323, line: 198, column: 5)
!2209 = !DILocation(line: 198, column: 5, scope: !2203)
!2210 = !DILocation(line: 199, column: 9, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !323, line: 199, column: 9)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !323, line: 198, column: 39)
!2213 = !DILocation(line: 208, column: 5, scope: !2186)
!2214 = !DILocation(line: 199, scope: !2211)
!2215 = !DILocalVariable(name: "j", scope: !2211, file: !323, line: 199, type: !45)
!2216 = !DILocation(line: 0, scope: !2211)
!2217 = !DILocation(line: 199, column: 27, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2211, file: !323, line: 199, column: 9)
!2219 = !DILocation(line: 200, column: 13, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !323, line: 200, column: 13)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !323, line: 199, column: 37)
!2222 = !DILocation(line: 200, scope: !2220)
!2223 = !DILocalVariable(name: "col", scope: !2220, file: !323, line: 200, type: !45)
!2224 = !DILocation(line: 0, scope: !2220)
!2225 = !DILocation(line: 200, column: 35, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2220, file: !323, line: 200, column: 13)
!2227 = !DILocation(line: 201, column: 52, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2226, file: !323, line: 200, column: 50)
!2229 = !DILocation(line: 201, column: 56, scope: !2228)
!2230 = !DILocation(line: 201, column: 47, scope: !2228)
!2231 = !DILocation(line: 201, column: 99, scope: !2228)
!2232 = !DILocation(line: 201, column: 103, scope: !2228)
!2233 = !DILocation(line: 201, column: 110, scope: !2228)
!2234 = !DILocation(line: 201, column: 123, scope: !2228)
!2235 = !DILocation(line: 201, column: 117, scope: !2228)
!2236 = !DILocation(line: 201, column: 115, scope: !2228)
!2237 = !DILocation(line: 201, column: 90, scope: !2228)
!2238 = !DILocation(line: 201, column: 21, scope: !2228)
!2239 = !DILocation(line: 200, column: 44, scope: !2226)
!2240 = !DILocation(line: 200, column: 13, scope: !2226)
!2241 = distinct !{!2241, !2219, !2242, !303}
!2242 = !DILocation(line: 202, column: 13, scope: !2220)
!2243 = !DILocation(line: 199, column: 33, scope: !2218)
!2244 = !DILocation(line: 199, column: 9, scope: !2218)
!2245 = distinct !{!2245, !2210, !2246, !303}
!2246 = !DILocation(line: 203, column: 9, scope: !2211)
!2247 = !DILocation(line: 198, column: 35, scope: !2208)
!2248 = !DILocation(line: 198, column: 5, scope: !2208)
!2249 = distinct !{!2249, !2209, !2250, !303}
!2250 = !DILocation(line: 204, column: 5, scope: !2203)
!2251 = !DILocalVariable(name: "i", scope: !2186, file: !323, line: 207, type: !45)
!2252 = !DILocation(line: 208, column: 14, scope: !2186)
!2253 = !DILocation(line: 209, column: 54, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2186, file: !323, line: 208, column: 21)
!2255 = !DILocation(line: 209, column: 82, scope: !2254)
!2256 = !DILocation(line: 209, column: 9, scope: !2254)
!2257 = !DILocation(line: 210, column: 10, scope: !2254)
!2258 = distinct !{!2258, !2213, !2259, !303}
!2259 = !DILocation(line: 211, column: 5, scope: !2186)
!2260 = !DILocation(line: 212, column: 1, scope: !2186)
!2261 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2262, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !45, !326, !5}
!2264 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2261, file: !437, line: 22, type: !45)
!2265 = !DILocation(line: 0, scope: !2261)
!2266 = !DILocalVariable(name: "in", arg: 2, scope: !2261, file: !437, line: 22, type: !326)
!2267 = !DILocalVariable(name: "acc", arg: 3, scope: !2261, file: !437, line: 22, type: !5)
!2268 = !DILocalVariable(name: "i", scope: !2269, file: !437, line: 24, type: !15)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !437, line: 24, column: 5)
!2270 = !DILocation(line: 0, scope: !2269)
!2271 = !DILocation(line: 24, column: 10, scope: !2269)
!2272 = !DILocation(line: 24, scope: !2269)
!2273 = !DILocation(line: 24, column: 26, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !437, line: 24, column: 5)
!2275 = !DILocation(line: 24, column: 5, scope: !2269)
!2276 = !DILocation(line: 26, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !437, line: 25, column: 5)
!2278 = !DILocation(line: 26, column: 9, scope: !2277)
!2279 = !DILocation(line: 26, column: 16, scope: !2277)
!2280 = !DILocation(line: 24, column: 46, scope: !2274)
!2281 = !DILocation(line: 24, column: 5, scope: !2274)
!2282 = distinct !{!2282, !2275, !2283, !303}
!2283 = !DILocation(line: 27, column: 5, scope: !2269)
!2284 = !DILocation(line: 28, column: 1, scope: !2261)
!2285 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2286, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !45, !5, !5}
!2288 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2285, file: !437, line: 66, type: !45)
!2289 = !DILocation(line: 0, scope: !2285)
!2290 = !DILocalVariable(name: "bins", arg: 2, scope: !2285, file: !437, line: 66, type: !5)
!2291 = !DILocalVariable(name: "out", arg: 3, scope: !2285, file: !437, line: 66, type: !5)
!2292 = !DILocation(line: 67, column: 44, scope: !2285)
!2293 = !DILocation(line: 67, column: 73, scope: !2285)
!2294 = !DILocation(line: 67, column: 5, scope: !2285)
!2295 = !DILocation(line: 68, column: 40, scope: !2285)
!2296 = !DILocation(line: 68, column: 69, scope: !2285)
!2297 = !DILocation(line: 68, column: 5, scope: !2285)
!2298 = !DILocation(line: 69, column: 44, scope: !2285)
!2299 = !DILocation(line: 69, column: 74, scope: !2285)
!2300 = !DILocation(line: 69, column: 5, scope: !2285)
!2301 = !DILocation(line: 70, column: 40, scope: !2285)
!2302 = !DILocation(line: 70, column: 69, scope: !2285)
!2303 = !DILocation(line: 70, column: 5, scope: !2285)
!2304 = !DILocation(line: 71, column: 44, scope: !2285)
!2305 = !DILocation(line: 71, column: 73, scope: !2285)
!2306 = !DILocation(line: 71, column: 5, scope: !2285)
!2307 = !DILocation(line: 72, column: 40, scope: !2285)
!2308 = !DILocation(line: 72, column: 69, scope: !2285)
!2309 = !DILocation(line: 72, column: 5, scope: !2285)
!2310 = !DILocation(line: 73, column: 44, scope: !2285)
!2311 = !DILocation(line: 73, column: 74, scope: !2285)
!2312 = !DILocation(line: 73, column: 5, scope: !2285)
!2313 = !DILocation(line: 74, column: 40, scope: !2285)
!2314 = !DILocation(line: 74, column: 69, scope: !2285)
!2315 = !DILocation(line: 74, column: 5, scope: !2285)
!2316 = !DILocation(line: 75, column: 44, scope: !2285)
!2317 = !DILocation(line: 75, column: 74, scope: !2285)
!2318 = !DILocation(line: 75, column: 5, scope: !2285)
!2319 = !DILocation(line: 76, column: 40, scope: !2285)
!2320 = !DILocation(line: 76, column: 69, scope: !2285)
!2321 = !DILocation(line: 76, column: 5, scope: !2285)
!2322 = !DILocation(line: 77, column: 44, scope: !2285)
!2323 = !DILocation(line: 77, column: 74, scope: !2285)
!2324 = !DILocation(line: 77, column: 5, scope: !2285)
!2325 = !DILocation(line: 78, column: 40, scope: !2285)
!2326 = !DILocation(line: 78, column: 69, scope: !2285)
!2327 = !DILocation(line: 78, column: 5, scope: !2285)
!2328 = !DILocation(line: 79, column: 44, scope: !2285)
!2329 = !DILocation(line: 79, column: 74, scope: !2285)
!2330 = !DILocation(line: 79, column: 5, scope: !2285)
!2331 = !DILocation(line: 80, column: 40, scope: !2285)
!2332 = !DILocation(line: 80, column: 69, scope: !2285)
!2333 = !DILocation(line: 80, column: 5, scope: !2285)
!2334 = !DILocation(line: 81, column: 35, scope: !2285)
!2335 = !DILocation(line: 81, column: 5, scope: !2285)
!2336 = !DILocation(line: 82, column: 1, scope: !2285)
!2337 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2262, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2338 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2337, file: !437, line: 56, type: !45)
!2339 = !DILocation(line: 0, scope: !2337)
!2340 = !DILocalVariable(name: "in", arg: 2, scope: !2337, file: !437, line: 56, type: !326)
!2341 = !DILocalVariable(name: "acc", arg: 3, scope: !2337, file: !437, line: 56, type: !5)
!2342 = !DILocalVariable(name: "mask_lsb", scope: !2337, file: !437, line: 58, type: !6)
!2343 = !DILocalVariable(name: "i", scope: !2344, file: !437, line: 59, type: !45)
!2344 = distinct !DILexicalBlock(scope: !2337, file: !437, line: 59, column: 5)
!2345 = !DILocation(line: 0, scope: !2344)
!2346 = !DILocation(line: 59, column: 9, scope: !2344)
!2347 = !DILocation(line: 59, scope: !2344)
!2348 = !DILocation(line: 59, column: 20, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !437, line: 59, column: 5)
!2350 = !DILocation(line: 59, column: 5, scope: !2344)
!2351 = !DILocation(line: 60, column: 22, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !437, line: 59, column: 43)
!2353 = !DILocation(line: 60, column: 28, scope: !2352)
!2354 = !DILocalVariable(name: "t", scope: !2352, file: !437, line: 60, type: !6)
!2355 = !DILocation(line: 0, scope: !2352)
!2356 = !DILocation(line: 61, column: 32, scope: !2352)
!2357 = !DILocation(line: 61, column: 43, scope: !2352)
!2358 = !DILocation(line: 61, column: 38, scope: !2352)
!2359 = !DILocation(line: 61, column: 9, scope: !2352)
!2360 = !DILocation(line: 61, column: 16, scope: !2352)
!2361 = !DILocation(line: 59, column: 40, scope: !2349)
!2362 = !DILocation(line: 59, column: 5, scope: !2349)
!2363 = distinct !{!2363, !2350, !2364, !303}
!2364 = !DILocation(line: 62, column: 5, scope: !2344)
!2365 = !DILocation(line: 63, column: 1, scope: !2337)
!2366 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2262, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2367 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2366, file: !437, line: 46, type: !45)
!2368 = !DILocation(line: 0, scope: !2366)
!2369 = !DILocalVariable(name: "in", arg: 2, scope: !2366, file: !437, line: 46, type: !326)
!2370 = !DILocalVariable(name: "acc", arg: 3, scope: !2366, file: !437, line: 46, type: !5)
!2371 = !DILocalVariable(name: "mask_msb", scope: !2366, file: !437, line: 48, type: !6)
!2372 = !DILocalVariable(name: "i", scope: !2373, file: !437, line: 49, type: !45)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !437, line: 49, column: 5)
!2374 = !DILocation(line: 0, scope: !2373)
!2375 = !DILocation(line: 49, column: 9, scope: !2373)
!2376 = !DILocation(line: 49, scope: !2373)
!2377 = !DILocation(line: 49, column: 20, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !437, line: 49, column: 5)
!2379 = !DILocation(line: 49, column: 5, scope: !2373)
!2380 = !DILocation(line: 50, column: 22, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2378, file: !437, line: 49, column: 43)
!2382 = !DILocalVariable(name: "t", scope: !2381, file: !437, line: 50, type: !6)
!2383 = !DILocation(line: 0, scope: !2381)
!2384 = !DILocation(line: 51, column: 32, scope: !2381)
!2385 = !DILocation(line: 51, column: 44, scope: !2381)
!2386 = !DILocation(line: 51, column: 50, scope: !2381)
!2387 = !DILocation(line: 51, column: 38, scope: !2381)
!2388 = !DILocation(line: 51, column: 9, scope: !2381)
!2389 = !DILocation(line: 51, column: 16, scope: !2381)
!2390 = !DILocation(line: 49, column: 40, scope: !2378)
!2391 = !DILocation(line: 49, column: 5, scope: !2378)
!2392 = distinct !{!2392, !2379, !2393, !303}
!2393 = !DILocation(line: 52, column: 5, scope: !2373)
!2394 = !DILocation(line: 53, column: 1, scope: !2366)
!2395 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2262, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2396 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2395, file: !437, line: 13, type: !45)
!2397 = !DILocation(line: 0, scope: !2395)
!2398 = !DILocalVariable(name: "in", arg: 2, scope: !2395, file: !437, line: 13, type: !326)
!2399 = !DILocalVariable(name: "out", arg: 3, scope: !2395, file: !437, line: 13, type: !5)
!2400 = !DILocalVariable(name: "i", scope: !2401, file: !437, line: 15, type: !15)
!2401 = distinct !DILexicalBlock(scope: !2395, file: !437, line: 15, column: 5)
!2402 = !DILocation(line: 0, scope: !2401)
!2403 = !DILocation(line: 15, column: 10, scope: !2401)
!2404 = !DILocation(line: 15, scope: !2401)
!2405 = !DILocation(line: 15, column: 26, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !437, line: 15, column: 5)
!2407 = !DILocation(line: 15, column: 5, scope: !2401)
!2408 = !DILocation(line: 17, column: 18, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !437, line: 16, column: 5)
!2410 = !DILocation(line: 17, column: 9, scope: !2409)
!2411 = !DILocation(line: 17, column: 16, scope: !2409)
!2412 = !DILocation(line: 15, column: 46, scope: !2406)
!2413 = !DILocation(line: 15, column: 5, scope: !2406)
!2414 = distinct !{!2414, !2407, !2415, !303}
!2415 = !DILocation(line: 18, column: 5, scope: !2401)
!2416 = !DILocation(line: 19, column: 1, scope: !2395)
!2417 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_m_upper", scope: !58, file: !58, line: 14, type: !2418, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{null, !2420, !326, !5, !45}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2423)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2423, file: !36, line: 266, baseType: !45, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2423, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2423, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2423, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2423, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2423, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2423, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2423, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2423, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2423, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2423, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2423, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2423, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2423, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2423, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2423, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2423, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2423, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2423, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2423, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2423, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2423, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2423, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2448 = !DILocalVariable(name: "p", arg: 1, scope: !2417, file: !58, line: 14, type: !2420)
!2449 = !DILocation(line: 0, scope: !2417)
!2450 = !DILocalVariable(name: "in", arg: 2, scope: !2417, file: !58, line: 14, type: !326)
!2451 = !DILocalVariable(name: "out", arg: 3, scope: !2417, file: !58, line: 14, type: !5)
!2452 = !DILocalVariable(name: "size", arg: 4, scope: !2417, file: !58, line: 14, type: !45)
!2453 = !DILocalVariable(name: "m_vec_limbs", scope: !2417, file: !58, line: 19, type: !239)
!2454 = !DILocalVariable(name: "m_vecs_stored", scope: !2417, file: !58, line: 20, type: !45)
!2455 = !DILocalVariable(name: "r", scope: !2456, file: !58, line: 21, type: !45)
!2456 = distinct !DILexicalBlock(scope: !2417, file: !58, line: 21, column: 5)
!2457 = !DILocation(line: 0, scope: !2456)
!2458 = !DILocation(line: 21, column: 10, scope: !2456)
!2459 = !DILocation(line: 20, column: 9, scope: !2417)
!2460 = !DILocation(line: 21, scope: !2456)
!2461 = !DILocation(line: 21, column: 23, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !58, line: 21, column: 5)
!2463 = !DILocation(line: 21, column: 5, scope: !2456)
!2464 = !DILocation(line: 22, column: 9, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !58, line: 22, column: 9)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !58, line: 21, column: 36)
!2467 = !DILocation(line: 22, scope: !2465)
!2468 = !DILocalVariable(name: "c", scope: !2465, file: !58, line: 22, type: !45)
!2469 = !DILocation(line: 0, scope: !2465)
!2470 = !DILocation(line: 22, column: 27, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2465, file: !58, line: 22, column: 9)
!2472 = !DILocation(line: 23, column: 59, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2471, file: !58, line: 22, column: 40)
!2474 = !DILocation(line: 23, column: 66, scope: !2473)
!2475 = !DILocation(line: 23, column: 40, scope: !2473)
!2476 = !DILocation(line: 23, column: 76, scope: !2473)
!2477 = !DILocation(line: 23, column: 13, scope: !2473)
!2478 = !DILocation(line: 24, column: 19, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !58, line: 24, column: 17)
!2480 = !DILocation(line: 25, column: 62, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2479, file: !58, line: 24, column: 25)
!2482 = !DILocation(line: 25, column: 69, scope: !2481)
!2483 = !DILocation(line: 25, column: 43, scope: !2481)
!2484 = !DILocation(line: 25, column: 79, scope: !2481)
!2485 = !DILocation(line: 25, column: 17, scope: !2481)
!2486 = !DILocation(line: 26, column: 13, scope: !2481)
!2487 = !DILocation(line: 27, column: 27, scope: !2473)
!2488 = !DILocation(line: 22, column: 36, scope: !2471)
!2489 = !DILocation(line: 22, column: 9, scope: !2471)
!2490 = distinct !{!2490, !2464, !2491, !303}
!2491 = !DILocation(line: 28, column: 9, scope: !2465)
!2492 = !DILocation(line: 21, column: 32, scope: !2462)
!2493 = !DILocation(line: 21, column: 5, scope: !2462)
!2494 = distinct !{!2494, !2463, !2495, !303}
!2495 = !DILocation(line: 29, column: 5, scope: !2456)
!2496 = !DILocation(line: 30, column: 1, scope: !2417)
!2497 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2262, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2498 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2497, file: !437, line: 13, type: !45)
!2499 = !DILocation(line: 0, scope: !2497)
!2500 = !DILocalVariable(name: "in", arg: 2, scope: !2497, file: !437, line: 13, type: !326)
!2501 = !DILocalVariable(name: "out", arg: 3, scope: !2497, file: !437, line: 13, type: !5)
!2502 = !DILocalVariable(name: "i", scope: !2503, file: !437, line: 15, type: !15)
!2503 = distinct !DILexicalBlock(scope: !2497, file: !437, line: 15, column: 5)
!2504 = !DILocation(line: 0, scope: !2503)
!2505 = !DILocation(line: 15, column: 10, scope: !2503)
!2506 = !DILocation(line: 15, scope: !2503)
!2507 = !DILocation(line: 15, column: 26, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !437, line: 15, column: 5)
!2509 = !DILocation(line: 15, column: 5, scope: !2503)
!2510 = !DILocation(line: 17, column: 18, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !437, line: 16, column: 5)
!2512 = !DILocation(line: 17, column: 9, scope: !2511)
!2513 = !DILocation(line: 17, column: 16, scope: !2511)
!2514 = !DILocation(line: 15, column: 46, scope: !2508)
!2515 = !DILocation(line: 15, column: 5, scope: !2508)
!2516 = distinct !{!2516, !2509, !2517, !303}
!2517 = !DILocation(line: 18, column: 5, scope: !2503)
!2518 = !DILocation(line: 19, column: 1, scope: !2497)
!2519 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2262, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2520 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2519, file: !437, line: 22, type: !45)
!2521 = !DILocation(line: 0, scope: !2519)
!2522 = !DILocalVariable(name: "in", arg: 2, scope: !2519, file: !437, line: 22, type: !326)
!2523 = !DILocalVariable(name: "acc", arg: 3, scope: !2519, file: !437, line: 22, type: !5)
!2524 = !DILocalVariable(name: "i", scope: !2525, file: !437, line: 24, type: !15)
!2525 = distinct !DILexicalBlock(scope: !2519, file: !437, line: 24, column: 5)
!2526 = !DILocation(line: 0, scope: !2525)
!2527 = !DILocation(line: 24, column: 10, scope: !2525)
!2528 = !DILocation(line: 24, scope: !2525)
!2529 = !DILocation(line: 24, column: 26, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !437, line: 24, column: 5)
!2531 = !DILocation(line: 24, column: 5, scope: !2525)
!2532 = !DILocation(line: 26, column: 19, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2530, file: !437, line: 25, column: 5)
!2534 = !DILocation(line: 26, column: 9, scope: !2533)
!2535 = !DILocation(line: 26, column: 16, scope: !2533)
!2536 = !DILocation(line: 24, column: 46, scope: !2530)
!2537 = !DILocation(line: 24, column: 5, scope: !2530)
!2538 = distinct !{!2538, !2531, !2539, !303}
!2539 = !DILocation(line: 27, column: 5, scope: !2525)
!2540 = !DILocation(line: 28, column: 1, scope: !2519)
!2541 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2542, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!45, !2420, !18, !49, !49, !18, !45, !45, !45, !45}
!2544 = !DILocalVariable(name: "p", arg: 1, scope: !2541, file: !58, line: 40, type: !2420)
!2545 = !DILocation(line: 0, scope: !2541)
!2546 = !DILocalVariable(name: "A", arg: 2, scope: !2541, file: !58, line: 40, type: !18)
!2547 = !DILocalVariable(name: "y", arg: 3, scope: !2541, file: !58, line: 41, type: !49)
!2548 = !DILocalVariable(name: "r", arg: 4, scope: !2541, file: !58, line: 41, type: !49)
!2549 = !DILocalVariable(name: "x", arg: 5, scope: !2541, file: !58, line: 42, type: !18)
!2550 = !DILocalVariable(name: "k", arg: 6, scope: !2541, file: !58, line: 42, type: !45)
!2551 = !DILocalVariable(name: "o", arg: 7, scope: !2541, file: !58, line: 42, type: !45)
!2552 = !DILocalVariable(name: "m", arg: 8, scope: !2541, file: !58, line: 42, type: !45)
!2553 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2541, file: !58, line: 42, type: !45)
!2554 = !DILocalVariable(name: "i", scope: !2555, file: !58, line: 51, type: !45)
!2555 = distinct !DILexicalBlock(scope: !2541, file: !58, line: 51, column: 5)
!2556 = !DILocation(line: 0, scope: !2555)
!2557 = !DILocation(line: 51, column: 10, scope: !2555)
!2558 = !DILocation(line: 51, scope: !2555)
!2559 = !DILocation(line: 51, column: 23, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !58, line: 51, column: 5)
!2561 = !DILocation(line: 51, column: 5, scope: !2555)
!2562 = !DILocation(line: 57, column: 5, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2541, file: !58, line: 57, column: 5)
!2564 = !DILocation(line: 52, column: 16, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !58, line: 51, column: 37)
!2566 = !DILocation(line: 52, column: 9, scope: !2565)
!2567 = !DILocation(line: 52, column: 14, scope: !2565)
!2568 = !DILocation(line: 51, column: 33, scope: !2560)
!2569 = !DILocation(line: 51, column: 5, scope: !2560)
!2570 = distinct !{!2570, !2561, !2571, !303}
!2571 = !DILocation(line: 53, column: 5, scope: !2555)
!2572 = !DILocation(line: 57, scope: !2563)
!2573 = !DILocalVariable(name: "i", scope: !2563, file: !58, line: 57, type: !45)
!2574 = !DILocation(line: 0, scope: !2563)
!2575 = !DILocation(line: 57, column: 23, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2563, file: !58, line: 57, column: 5)
!2577 = !DILocation(line: 58, column: 13, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2576, file: !58, line: 57, column: 33)
!2579 = !DILocation(line: 58, column: 26, scope: !2578)
!2580 = !DILocation(line: 58, column: 30, scope: !2578)
!2581 = !DILocation(line: 58, column: 21, scope: !2578)
!2582 = !DILocation(line: 58, column: 9, scope: !2578)
!2583 = !DILocation(line: 58, column: 36, scope: !2578)
!2584 = !DILocation(line: 57, column: 29, scope: !2576)
!2585 = !DILocation(line: 57, column: 5, scope: !2576)
!2586 = distinct !{!2586, !2562, !2587, !303}
!2587 = !DILocation(line: 59, column: 5, scope: !2563)
!2588 = !DILocation(line: 60, column: 25, scope: !2541)
!2589 = !DILocation(line: 60, column: 29, scope: !2541)
!2590 = !DILocation(line: 60, column: 5, scope: !2541)
!2591 = !DILocalVariable(name: "i", scope: !2592, file: !58, line: 63, type: !45)
!2592 = distinct !DILexicalBlock(scope: !2541, file: !58, line: 63, column: 5)
!2593 = !DILocation(line: 0, scope: !2592)
!2594 = !DILocation(line: 63, column: 10, scope: !2592)
!2595 = !DILocation(line: 63, scope: !2592)
!2596 = !DILocation(line: 63, column: 23, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !58, line: 63, column: 5)
!2598 = !DILocation(line: 63, column: 5, scope: !2592)
!2599 = !DILocation(line: 64, column: 44, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !58, line: 63, column: 33)
!2601 = !DILocation(line: 64, column: 50, scope: !2600)
!2602 = !DILocation(line: 64, column: 38, scope: !2600)
!2603 = !DILocation(line: 64, column: 13, scope: !2600)
!2604 = !DILocation(line: 64, column: 26, scope: !2600)
!2605 = !DILocation(line: 64, column: 30, scope: !2600)
!2606 = !DILocation(line: 64, column: 21, scope: !2600)
!2607 = !DILocation(line: 64, column: 9, scope: !2600)
!2608 = !DILocation(line: 64, column: 36, scope: !2600)
!2609 = !DILocation(line: 63, column: 29, scope: !2597)
!2610 = !DILocation(line: 63, column: 5, scope: !2597)
!2611 = distinct !{!2611, !2598, !2612, !303}
!2612 = !DILocation(line: 65, column: 5, scope: !2592)
!2613 = !DILocation(line: 67, column: 16, scope: !2541)
!2614 = !DILocation(line: 67, column: 20, scope: !2541)
!2615 = !DILocation(line: 67, column: 5, scope: !2541)
!2616 = !DILocalVariable(name: "full_rank", scope: !2541, file: !58, line: 70, type: !14)
!2617 = !DILocalVariable(name: "i", scope: !2618, file: !58, line: 71, type: !45)
!2618 = distinct !DILexicalBlock(scope: !2541, file: !58, line: 71, column: 5)
!2619 = !DILocation(line: 0, scope: !2618)
!2620 = !DILocation(line: 71, column: 10, scope: !2618)
!2621 = !DILocation(line: 71, scope: !2618)
!2622 = !DILocation(line: 71, column: 23, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !58, line: 71, column: 5)
!2624 = !DILocation(line: 71, column: 5, scope: !2618)
!2625 = !DILocation(line: 72, column: 27, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !58, line: 71, column: 42)
!2627 = !DILocation(line: 72, column: 32, scope: !2626)
!2628 = !DILocation(line: 72, column: 22, scope: !2626)
!2629 = !DILocation(line: 72, column: 19, scope: !2626)
!2630 = !DILocation(line: 71, column: 38, scope: !2623)
!2631 = !DILocation(line: 71, column: 5, scope: !2623)
!2632 = distinct !{!2632, !2624, !2633, !303}
!2633 = !DILocation(line: 73, column: 5, scope: !2618)
!2634 = !DILocation(line: 80, column: 19, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2541, file: !58, line: 80, column: 9)
!2636 = !DILocation(line: 88, column: 5, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2541, file: !58, line: 88, column: 5)
!2638 = distinct !{!2638, !2636, !2639, !303}
!2639 = !DILocation(line: 122, column: 5, scope: !2637)
!2640 = !DILocation(line: 88, scope: !2637)
!2641 = !DILocalVariable(name: "row", scope: !2637, file: !58, line: 88, type: !45)
!2642 = !DILocation(line: 0, scope: !2637)
!2643 = !DILocation(line: 88, column: 31, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2637, file: !58, line: 88, column: 5)
!2645 = !DILocalVariable(name: "finished", scope: !2541, file: !58, line: 46, type: !14)
!2646 = !DILocation(line: 90, column: 27, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !58, line: 88, column: 44)
!2648 = !DILocalVariable(name: "col_upper_bound", scope: !2541, file: !58, line: 47, type: !45)
!2649 = !DILocalVariable(name: "col", scope: !2650, file: !58, line: 93, type: !45)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !58, line: 93, column: 9)
!2651 = !DILocation(line: 0, scope: !2650)
!2652 = !DILocation(line: 93, column: 14, scope: !2650)
!2653 = !DILocation(line: 0, scope: !2647)
!2654 = !DILocation(line: 93, scope: !2650)
!2655 = !DILocation(line: 93, column: 33, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2650, file: !58, line: 93, column: 9)
!2657 = !DILocation(line: 93, column: 9, scope: !2650)
!2658 = !DILocation(line: 97, column: 50, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !58, line: 93, column: 60)
!2660 = !DILocation(line: 97, column: 44, scope: !2659)
!2661 = !DILocation(line: 97, column: 30, scope: !2659)
!2662 = !DILocation(line: 97, column: 73, scope: !2659)
!2663 = !DILocalVariable(name: "correct_column", scope: !2541, file: !58, line: 48, type: !14)
!2664 = !DILocation(line: 99, column: 63, scope: !2659)
!2665 = !DILocation(line: 99, column: 48, scope: !2659)
!2666 = !DILocation(line: 99, column: 46, scope: !2659)
!2667 = !DILocalVariable(name: "u", scope: !2659, file: !58, line: 99, type: !14)
!2668 = !DILocation(line: 0, scope: !2659)
!2669 = !DILocation(line: 100, column: 13, scope: !2659)
!2670 = !DILocation(line: 100, column: 20, scope: !2659)
!2671 = !DILocalVariable(name: "i", scope: !2672, file: !58, line: 102, type: !45)
!2672 = distinct !DILexicalBlock(scope: !2659, file: !58, line: 102, column: 13)
!2673 = !DILocation(line: 0, scope: !2672)
!2674 = !DILocation(line: 102, column: 18, scope: !2672)
!2675 = !DILocation(line: 102, scope: !2672)
!2676 = !DILocation(line: 102, column: 31, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !58, line: 102, column: 13)
!2678 = !DILocation(line: 102, column: 13, scope: !2672)
!2679 = !DILocation(line: 103, column: 53, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !58, line: 102, column: 46)
!2681 = !DILocation(line: 103, column: 45, scope: !2680)
!2682 = !DILocation(line: 103, column: 34, scope: !2680)
!2683 = !DILocation(line: 103, column: 95, scope: !2680)
!2684 = !DILocation(line: 103, column: 99, scope: !2680)
!2685 = !DILocation(line: 103, column: 91, scope: !2680)
!2686 = !DILocation(line: 103, column: 80, scope: !2680)
!2687 = !DILocation(line: 103, column: 115, scope: !2680)
!2688 = !DILocation(line: 103, column: 76, scope: !2680)
!2689 = !DILocation(line: 104, column: 49, scope: !2680)
!2690 = !DILocation(line: 104, column: 53, scope: !2680)
!2691 = !DILocation(line: 104, column: 45, scope: !2680)
!2692 = !DILocation(line: 104, column: 34, scope: !2680)
!2693 = !DILocation(line: 104, column: 69, scope: !2680)
!2694 = !DILocation(line: 104, column: 30, scope: !2680)
!2695 = !DILocation(line: 104, column: 95, scope: !2680)
!2696 = !DILocation(line: 104, column: 99, scope: !2680)
!2697 = !DILocation(line: 104, column: 91, scope: !2680)
!2698 = !DILocation(line: 104, column: 80, scope: !2680)
!2699 = !DILocation(line: 104, column: 115, scope: !2680)
!2700 = !DILocation(line: 104, column: 76, scope: !2680)
!2701 = !DILocation(line: 105, column: 49, scope: !2680)
!2702 = !DILocation(line: 105, column: 53, scope: !2680)
!2703 = !DILocation(line: 105, column: 45, scope: !2680)
!2704 = !DILocation(line: 105, column: 34, scope: !2680)
!2705 = !DILocation(line: 105, column: 69, scope: !2680)
!2706 = !DILocation(line: 105, column: 30, scope: !2680)
!2707 = !DILocation(line: 105, column: 95, scope: !2680)
!2708 = !DILocation(line: 105, column: 99, scope: !2680)
!2709 = !DILocation(line: 105, column: 91, scope: !2680)
!2710 = !DILocation(line: 105, column: 80, scope: !2680)
!2711 = !DILocation(line: 105, column: 115, scope: !2680)
!2712 = !DILocation(line: 105, column: 76, scope: !2680)
!2713 = !DILocation(line: 106, column: 49, scope: !2680)
!2714 = !DILocation(line: 106, column: 53, scope: !2680)
!2715 = !DILocation(line: 106, column: 45, scope: !2680)
!2716 = !DILocation(line: 106, column: 34, scope: !2680)
!2717 = !DILocation(line: 106, column: 69, scope: !2680)
!2718 = !DILocation(line: 106, column: 30, scope: !2680)
!2719 = !DILocation(line: 106, column: 95, scope: !2680)
!2720 = !DILocation(line: 106, column: 99, scope: !2680)
!2721 = !DILocation(line: 106, column: 91, scope: !2680)
!2722 = !DILocation(line: 106, column: 80, scope: !2680)
!2723 = !DILocation(line: 106, column: 115, scope: !2680)
!2724 = !DILocation(line: 106, column: 76, scope: !2680)
!2725 = !DILocalVariable(name: "tmp", scope: !2680, file: !58, line: 103, type: !6)
!2726 = !DILocation(line: 0, scope: !2680)
!2727 = !DILocation(line: 108, column: 23, scope: !2680)
!2728 = !DILocation(line: 110, column: 34, scope: !2680)
!2729 = !DILocation(line: 110, column: 17, scope: !2680)
!2730 = !DILocation(line: 110, column: 48, scope: !2680)
!2731 = !DILocation(line: 111, column: 56, scope: !2680)
!2732 = !DILocation(line: 111, column: 34, scope: !2680)
!2733 = !DILocation(line: 111, column: 17, scope: !2680)
!2734 = !DILocation(line: 111, column: 48, scope: !2680)
!2735 = !DILocation(line: 112, column: 56, scope: !2680)
!2736 = !DILocation(line: 112, column: 34, scope: !2680)
!2737 = !DILocation(line: 112, column: 17, scope: !2680)
!2738 = !DILocation(line: 112, column: 48, scope: !2680)
!2739 = !DILocation(line: 113, column: 56, scope: !2680)
!2740 = !DILocation(line: 113, column: 34, scope: !2680)
!2741 = !DILocation(line: 113, column: 17, scope: !2680)
!2742 = !DILocation(line: 113, column: 48, scope: !2680)
!2743 = !DILocation(line: 114, column: 56, scope: !2680)
!2744 = !DILocation(line: 114, column: 34, scope: !2680)
!2745 = !DILocation(line: 114, column: 17, scope: !2680)
!2746 = !DILocation(line: 114, column: 48, scope: !2680)
!2747 = !DILocation(line: 115, column: 56, scope: !2680)
!2748 = !DILocation(line: 115, column: 34, scope: !2680)
!2749 = !DILocation(line: 115, column: 17, scope: !2680)
!2750 = !DILocation(line: 115, column: 48, scope: !2680)
!2751 = !DILocation(line: 116, column: 56, scope: !2680)
!2752 = !DILocation(line: 116, column: 34, scope: !2680)
!2753 = !DILocation(line: 116, column: 17, scope: !2680)
!2754 = !DILocation(line: 116, column: 48, scope: !2680)
!2755 = !DILocation(line: 117, column: 56, scope: !2680)
!2756 = !DILocation(line: 117, column: 34, scope: !2680)
!2757 = !DILocation(line: 117, column: 17, scope: !2680)
!2758 = !DILocation(line: 117, column: 48, scope: !2680)
!2759 = !DILocation(line: 102, column: 40, scope: !2677)
!2760 = !DILocation(line: 102, column: 13, scope: !2677)
!2761 = distinct !{!2761, !2678, !2762, !303}
!2762 = !DILocation(line: 118, column: 13, scope: !2672)
!2763 = !DILocation(line: 120, column: 33, scope: !2659)
!2764 = !DILocation(line: 93, column: 56, scope: !2656)
!2765 = !DILocation(line: 93, column: 9, scope: !2656)
!2766 = distinct !{!2766, !2657, !2767, !303}
!2767 = !DILocation(line: 121, column: 9, scope: !2650)
!2768 = !DILocation(line: 124, column: 1, scope: !2541)
!2769 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1451, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2770 = !DILocalVariable(name: "a", arg: 1, scope: !2769, file: !493, line: 79, type: !49)
!2771 = !DILocation(line: 0, scope: !2769)
!2772 = !DILocalVariable(name: "b", arg: 2, scope: !2769, file: !493, line: 79, type: !49)
!2773 = !DILocalVariable(name: "c", arg: 3, scope: !2769, file: !493, line: 80, type: !18)
!2774 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2769, file: !493, line: 80, type: !45)
!2775 = !DILocalVariable(name: "row_a", arg: 5, scope: !2769, file: !493, line: 80, type: !45)
!2776 = !DILocalVariable(name: "col_b", arg: 6, scope: !2769, file: !493, line: 80, type: !45)
!2777 = !DILocalVariable(name: "i", scope: !2778, file: !493, line: 81, type: !45)
!2778 = distinct !DILexicalBlock(scope: !2769, file: !493, line: 81, column: 5)
!2779 = !DILocation(line: 0, scope: !2778)
!2780 = !DILocation(line: 81, column: 10, scope: !2778)
!2781 = !DILocation(line: 81, scope: !2778)
!2782 = !DILocation(line: 81, column: 23, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2778, file: !493, line: 81, column: 5)
!2784 = !DILocation(line: 81, column: 5, scope: !2778)
!2785 = !DILocation(line: 82, column: 9, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !493, line: 82, column: 9)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !493, line: 81, column: 53)
!2788 = !DILocation(line: 82, scope: !2786)
!2789 = !DILocalVariable(name: "j", scope: !2786, file: !493, line: 82, type: !45)
!2790 = !DILocation(line: 0, scope: !2786)
!2791 = !DILocation(line: 83, column: 18, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !493, line: 82, column: 46)
!2793 = distinct !DILexicalBlock(scope: !2786, file: !493, line: 82, column: 9)
!2794 = !DILocation(line: 83, column: 16, scope: !2792)
!2795 = !DILocation(line: 82, column: 41, scope: !2793)
!2796 = !DILocation(line: 82, column: 9, scope: !2793)
!2797 = distinct !{!2797, !2785, !2798, !303}
!2798 = !DILocation(line: 84, column: 9, scope: !2786)
!2799 = !DILocation(line: 81, column: 32, scope: !2783)
!2800 = !DILocation(line: 81, column: 39, scope: !2783)
!2801 = !DILocation(line: 81, column: 5, scope: !2783)
!2802 = distinct !{!2802, !2784, !2803, !303}
!2803 = !DILocation(line: 85, column: 5, scope: !2778)
!2804 = !DILocation(line: 86, column: 1, scope: !2769)
!2805 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1550, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2806 = !DILocalVariable(name: "a", arg: 1, scope: !2805, file: !493, line: 48, type: !14)
!2807 = !DILocation(line: 0, scope: !2805)
!2808 = !DILocalVariable(name: "b", arg: 2, scope: !2805, file: !493, line: 48, type: !14)
!2809 = !DILocation(line: 49, column: 14, scope: !2805)
!2810 = !DILocation(line: 49, column: 5, scope: !2805)
!2811 = distinct !DISubprogram(name: "EF", scope: !2812, file: !2812, line: 60, type: !2813, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2812 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !18, !45, !45}
!2815 = !DILocalVariable(name: "A", arg: 1, scope: !2811, file: !2812, line: 60, type: !18)
!2816 = !DILocation(line: 0, scope: !2811)
!2817 = !DILocalVariable(name: "nrows", arg: 2, scope: !2811, file: !2812, line: 60, type: !45)
!2818 = !DILocalVariable(name: "ncols", arg: 3, scope: !2811, file: !2812, line: 60, type: !45)
!2819 = !DILocalVariable(name: "_pivot_row", scope: !2811, file: !2812, line: 62, type: !2820, align: 256)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, elements: !2821)
!2821 = !{!2822}
!2822 = !DISubrange(count: 6)
!2823 = !DILocation(line: 62, column: 27, scope: !2811)
!2824 = !DILocalVariable(name: "_pivot_row2", scope: !2811, file: !2812, line: 63, type: !2820, align: 256)
!2825 = !DILocation(line: 63, column: 27, scope: !2811)
!2826 = !DILocalVariable(name: "packed_A", scope: !2811, file: !2812, line: 64, type: !2827, align: 256)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 29952, elements: !2828)
!2828 = !{!2829}
!2829 = !DISubrange(count: 468)
!2830 = !DILocation(line: 64, column: 27, scope: !2811)
!2831 = !DILocation(line: 66, column: 26, scope: !2811)
!2832 = !DILocation(line: 66, column: 32, scope: !2811)
!2833 = !DILocalVariable(name: "row_len", scope: !2811, file: !2812, line: 66, type: !45)
!2834 = !DILocalVariable(name: "i", scope: !2835, file: !2812, line: 69, type: !45)
!2835 = distinct !DILexicalBlock(scope: !2811, file: !2812, line: 69, column: 5)
!2836 = !DILocation(line: 0, scope: !2835)
!2837 = !DILocation(line: 69, column: 10, scope: !2835)
!2838 = !DILocation(line: 69, scope: !2835)
!2839 = !DILocation(line: 69, column: 23, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !2812, line: 69, column: 5)
!2841 = !DILocation(line: 69, column: 5, scope: !2835)
!2842 = !DILocation(line: 77, column: 5, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2811, file: !2812, line: 77, column: 5)
!2844 = !DILocation(line: 70, column: 29, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2840, file: !2812, line: 69, column: 37)
!2846 = !DILocation(line: 70, column: 25, scope: !2845)
!2847 = !DILocation(line: 70, column: 51, scope: !2845)
!2848 = !DILocation(line: 70, column: 47, scope: !2845)
!2849 = !DILocation(line: 70, column: 9, scope: !2845)
!2850 = !DILocation(line: 69, column: 33, scope: !2840)
!2851 = !DILocation(line: 69, column: 5, scope: !2840)
!2852 = distinct !{!2852, !2841, !2853, !303}
!2853 = !DILocation(line: 71, column: 5, scope: !2835)
!2854 = !DILocation(line: 77, scope: !2843)
!2855 = !DILocalVariable(name: "pivot_row", scope: !2811, file: !2812, line: 76, type: !45)
!2856 = !DILocalVariable(name: "pivot_col", scope: !2843, file: !2812, line: 77, type: !45)
!2857 = !DILocation(line: 0, scope: !2843)
!2858 = !DILocation(line: 77, column: 39, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2843, file: !2812, line: 77, column: 5)
!2860 = !DILocation(line: 138, column: 5, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2811, file: !2812, line: 138, column: 5)
!2862 = !DILocation(line: 79, column: 37, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2859, file: !2812, line: 77, column: 61)
!2864 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2863, file: !2812, line: 79, type: !45)
!2865 = !DILocation(line: 0, scope: !2863)
!2866 = !DILocation(line: 80, column: 37, scope: !2863)
!2867 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2863, file: !2812, line: 80, type: !45)
!2868 = !DILocalVariable(name: "i", scope: !2869, file: !2812, line: 85, type: !45)
!2869 = distinct !DILexicalBlock(scope: !2863, file: !2812, line: 85, column: 9)
!2870 = !DILocation(line: 0, scope: !2869)
!2871 = !DILocation(line: 85, column: 14, scope: !2869)
!2872 = !DILocation(line: 85, scope: !2869)
!2873 = !DILocation(line: 85, column: 27, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !2812, line: 85, column: 9)
!2875 = !DILocation(line: 85, column: 9, scope: !2869)
!2876 = !DILocation(line: 93, column: 9, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2863, file: !2812, line: 93, column: 9)
!2878 = !DILocation(line: 86, column: 13, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2874, file: !2812, line: 85, column: 43)
!2880 = !DILocation(line: 86, column: 27, scope: !2879)
!2881 = !DILocation(line: 87, column: 13, scope: !2879)
!2882 = !DILocation(line: 87, column: 28, scope: !2879)
!2883 = !DILocation(line: 85, column: 39, scope: !2874)
!2884 = !DILocation(line: 85, column: 9, scope: !2874)
!2885 = distinct !{!2885, !2875, !2886, !303}
!2886 = !DILocation(line: 88, column: 9, scope: !2869)
!2887 = !DILocation(line: 0, scope: !2877)
!2888 = !DILocalVariable(name: "row", scope: !2877, file: !2812, line: 93, type: !45)
!2889 = !DILocalVariable(name: "pivot", scope: !2863, file: !2812, line: 91, type: !14)
!2890 = !DILocalVariable(name: "pivot_is_zero", scope: !2863, file: !2812, line: 92, type: !6)
!2891 = !DILocation(line: 94, column: 24, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2877, file: !2812, line: 93, column: 9)
!2893 = !DILocation(line: 94, column: 21, scope: !2892)
!2894 = !DILocation(line: 96, column: 38, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !2812, line: 94, column: 80)
!2896 = !DILocation(line: 96, column: 37, scope: !2895)
!2897 = !DILocalVariable(name: "is_pivot_row", scope: !2895, file: !2812, line: 96, type: !6)
!2898 = !DILocation(line: 0, scope: !2895)
!2899 = !DILocation(line: 97, column: 40, scope: !2895)
!2900 = !DILocalVariable(name: "below_pivot_row", scope: !2895, file: !2812, line: 97, type: !6)
!2901 = !DILocalVariable(name: "j", scope: !2902, file: !2812, line: 99, type: !45)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !2812, line: 99, column: 13)
!2903 = !DILocation(line: 0, scope: !2902)
!2904 = !DILocation(line: 99, column: 18, scope: !2902)
!2905 = !DILocation(line: 99, scope: !2902)
!2906 = !DILocation(line: 99, column: 31, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !2812, line: 99, column: 13)
!2908 = !DILocation(line: 99, column: 13, scope: !2902)
!2909 = !DILocation(line: 100, column: 67, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !2812, line: 99, column: 47)
!2911 = !DILocation(line: 100, column: 48, scope: !2910)
!2912 = !DILocation(line: 101, column: 47, scope: !2910)
!2913 = !DILocation(line: 101, column: 57, scope: !2910)
!2914 = !DILocation(line: 101, column: 34, scope: !2910)
!2915 = !DILocation(line: 100, column: 85, scope: !2910)
!2916 = !DILocation(line: 100, column: 17, scope: !2910)
!2917 = !DILocation(line: 100, column: 31, scope: !2910)
!2918 = !DILocation(line: 99, column: 43, scope: !2907)
!2919 = !DILocation(line: 99, column: 13, scope: !2907)
!2920 = distinct !{!2920, !2908, !2921, !303}
!2921 = !DILocation(line: 102, column: 13, scope: !2902)
!2922 = !DILocation(line: 103, column: 21, scope: !2895)
!2923 = !DILocation(line: 104, column: 44, scope: !2895)
!2924 = !DILocation(line: 104, column: 30, scope: !2895)
!2925 = !DILocation(line: 104, column: 29, scope: !2895)
!2926 = !DILocation(line: 94, column: 76, scope: !2892)
!2927 = !DILocation(line: 93, column: 9, scope: !2892)
!2928 = distinct !{!2928, !2876, !2929, !303}
!2929 = !DILocation(line: 105, column: 9, scope: !2877)
!2930 = !DILocation(line: 108, column: 19, scope: !2863)
!2931 = !DILocalVariable(name: "inverse", scope: !2811, file: !2812, line: 75, type: !14)
!2932 = !DILocation(line: 109, column: 9, scope: !2863)
!2933 = !DILocalVariable(name: "row", scope: !2934, file: !2812, line: 113, type: !45)
!2934 = distinct !DILexicalBlock(scope: !2863, file: !2812, line: 113, column: 9)
!2935 = !DILocation(line: 0, scope: !2934)
!2936 = !DILocation(line: 113, column: 14, scope: !2934)
!2937 = !DILocation(line: 113, scope: !2934)
!2938 = !DILocation(line: 113, column: 51, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !2812, line: 113, column: 9)
!2940 = !DILocation(line: 113, column: 9, scope: !2934)
!2941 = !DILocation(line: 124, column: 9, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2863, file: !2812, line: 124, column: 9)
!2943 = !DILocation(line: 114, column: 33, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2939, file: !2812, line: 113, column: 84)
!2945 = !DILocation(line: 114, column: 63, scope: !2944)
!2946 = !DILocalVariable(name: "do_copy", scope: !2944, file: !2812, line: 114, type: !6)
!2947 = !DILocation(line: 0, scope: !2944)
!2948 = !DILocalVariable(name: "do_not_copy", scope: !2944, file: !2812, line: 115, type: !6)
!2949 = !DILocalVariable(name: "col", scope: !2950, file: !2812, line: 116, type: !45)
!2950 = distinct !DILexicalBlock(scope: !2944, file: !2812, line: 116, column: 13)
!2951 = !DILocation(line: 0, scope: !2950)
!2952 = !DILocation(line: 116, column: 18, scope: !2950)
!2953 = !DILocation(line: 116, scope: !2950)
!2954 = !DILocation(line: 116, column: 35, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !2812, line: 116, column: 13)
!2956 = !DILocation(line: 116, column: 13, scope: !2950)
!2957 = !DILocation(line: 118, column: 49, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !2812, line: 116, column: 53)
!2959 = !DILocation(line: 118, column: 59, scope: !2958)
!2960 = !DILocation(line: 118, column: 36, scope: !2958)
!2961 = !DILocation(line: 118, column: 34, scope: !2958)
!2962 = !DILocation(line: 119, column: 32, scope: !2958)
!2963 = !DILocation(line: 119, column: 30, scope: !2958)
!2964 = !DILocation(line: 118, column: 67, scope: !2958)
!2965 = !DILocation(line: 117, column: 30, scope: !2958)
!2966 = !DILocation(line: 117, column: 40, scope: !2958)
!2967 = !DILocation(line: 117, column: 17, scope: !2958)
!2968 = !DILocation(line: 117, column: 47, scope: !2958)
!2969 = !DILocation(line: 116, column: 49, scope: !2955)
!2970 = !DILocation(line: 116, column: 13, scope: !2955)
!2971 = distinct !{!2971, !2956, !2972, !303}
!2972 = !DILocation(line: 120, column: 13, scope: !2950)
!2973 = !DILocation(line: 113, column: 80, scope: !2939)
!2974 = !DILocation(line: 113, column: 9, scope: !2939)
!2975 = distinct !{!2975, !2940, !2976, !303}
!2976 = !DILocation(line: 121, column: 9, scope: !2934)
!2977 = !DILocation(line: 124, scope: !2942)
!2978 = !DILocalVariable(name: "row", scope: !2942, file: !2812, line: 124, type: !45)
!2979 = !DILocation(line: 0, scope: !2942)
!2980 = !DILocation(line: 124, column: 51, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2942, file: !2812, line: 124, column: 9)
!2982 = !DILocation(line: 125, column: 46, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2981, file: !2812, line: 124, column: 67)
!2984 = !DILocalVariable(name: "below_pivot", scope: !2983, file: !2812, line: 125, type: !14)
!2985 = !DILocation(line: 0, scope: !2983)
!2986 = !DILocation(line: 126, column: 74, scope: !2983)
!2987 = !DILocation(line: 126, column: 68, scope: !2983)
!2988 = !DILocation(line: 126, column: 41, scope: !2983)
!2989 = !DILocalVariable(name: "elt_to_elim", scope: !2983, file: !2812, line: 126, type: !14)
!2990 = !DILocation(line: 128, column: 63, scope: !2983)
!2991 = !DILocation(line: 129, column: 52, scope: !2983)
!2992 = !DILocation(line: 129, column: 46, scope: !2983)
!2993 = !DILocation(line: 128, column: 13, scope: !2983)
!2994 = !DILocation(line: 124, column: 63, scope: !2981)
!2995 = !DILocation(line: 124, column: 9, scope: !2981)
!2996 = distinct !{!2996, !2941, !2997, !303}
!2997 = !DILocation(line: 130, column: 9, scope: !2942)
!2998 = !DILocation(line: 132, column: 19, scope: !2863)
!2999 = !DILocation(line: 77, column: 57, scope: !2859)
!3000 = !DILocation(line: 77, column: 5, scope: !2859)
!3001 = distinct !{!3001, !2842, !3002, !303}
!3002 = !DILocation(line: 133, column: 5, scope: !2843)
!3003 = !DILocation(line: 138, scope: !2861)
!3004 = !DILocalVariable(name: "i", scope: !2861, file: !2812, line: 138, type: !45)
!3005 = !DILocation(line: 0, scope: !2861)
!3006 = !DILocation(line: 138, column: 23, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2861, file: !2812, line: 138, column: 5)
!3008 = !DILocation(line: 139, column: 47, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3007, file: !2812, line: 138, column: 37)
!3010 = !DILocation(line: 139, column: 43, scope: !3009)
!3011 = !DILocation(line: 139, column: 9, scope: !3009)
!3012 = !DILocalVariable(name: "j", scope: !3013, file: !2812, line: 140, type: !45)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !2812, line: 140, column: 9)
!3014 = !DILocation(line: 0, scope: !3013)
!3015 = !DILocation(line: 140, column: 14, scope: !3013)
!3016 = !DILocation(line: 140, scope: !3013)
!3017 = !DILocation(line: 140, column: 27, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !2812, line: 140, column: 9)
!3019 = !DILocation(line: 140, column: 9, scope: !3013)
!3020 = !DILocation(line: 141, column: 32, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3018, file: !2812, line: 140, column: 41)
!3022 = !DILocation(line: 141, column: 17, scope: !3021)
!3023 = !DILocation(line: 141, column: 13, scope: !3021)
!3024 = !DILocation(line: 141, column: 30, scope: !3021)
!3025 = !DILocation(line: 140, column: 37, scope: !3018)
!3026 = !DILocation(line: 140, column: 9, scope: !3018)
!3027 = distinct !{!3027, !3019, !3028, !303}
!3028 = !DILocation(line: 142, column: 9, scope: !3013)
!3029 = !DILocation(line: 138, column: 33, scope: !3007)
!3030 = !DILocation(line: 138, column: 5, scope: !3007)
!3031 = distinct !{!3031, !2860, !3032, !303}
!3032 = !DILocation(line: 143, column: 5, scope: !2861)
!3033 = !DILocation(line: 145, column: 5, scope: !2811)
!3034 = !DILocation(line: 146, column: 5, scope: !2811)
!3035 = !DILocation(line: 147, column: 5, scope: !2811)
!3036 = !DILocation(line: 148, column: 5, scope: !2811)
!3037 = !DILocation(line: 149, column: 1, scope: !2811)
!3038 = distinct !DISubprogram(name: "ct_compare_8", scope: !3039, file: !3039, line: 51, type: !1550, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3039 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3040 = !DILocalVariable(name: "a", arg: 1, scope: !3038, file: !3039, line: 51, type: !14)
!3041 = !DILocation(line: 0, scope: !3038)
!3042 = !DILocalVariable(name: "b", arg: 2, scope: !3038, file: !3039, line: 51, type: !14)
!3043 = !DILocation(line: 52, column: 42, scope: !3038)
!3044 = !DILocation(line: 52, column: 13, scope: !3038)
!3045 = !DILocation(line: 52, column: 71, scope: !3038)
!3046 = !DILocation(line: 52, column: 69, scope: !3038)
!3047 = !DILocation(line: 52, column: 5, scope: !3038)
!3048 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !3049, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!6, !14, !6}
!3051 = !DILocalVariable(name: "a", arg: 1, scope: !3048, file: !493, line: 28, type: !14)
!3052 = !DILocation(line: 0, scope: !3048)
!3053 = !DILocalVariable(name: "b", arg: 2, scope: !3048, file: !493, line: 28, type: !6)
!3054 = !DILocation(line: 31, column: 13, scope: !3048)
!3055 = !DILocation(line: 31, column: 10, scope: !3048)
!3056 = !DILocation(line: 31, column: 17, scope: !3048)
!3057 = !DILocalVariable(name: "p", scope: !3048, file: !493, line: 30, type: !6)
!3058 = !DILocation(line: 32, column: 13, scope: !3048)
!3059 = !DILocation(line: 32, column: 10, scope: !3048)
!3060 = !DILocation(line: 32, column: 17, scope: !3048)
!3061 = !DILocation(line: 32, column: 7, scope: !3048)
!3062 = !DILocation(line: 33, column: 13, scope: !3048)
!3063 = !DILocation(line: 33, column: 10, scope: !3048)
!3064 = !DILocation(line: 33, column: 17, scope: !3048)
!3065 = !DILocation(line: 33, column: 7, scope: !3048)
!3066 = !DILocation(line: 34, column: 13, scope: !3048)
!3067 = !DILocation(line: 34, column: 10, scope: !3048)
!3068 = !DILocation(line: 34, column: 17, scope: !3048)
!3069 = !DILocation(line: 34, column: 7, scope: !3048)
!3070 = !DILocalVariable(name: "top_p", scope: !3048, file: !493, line: 37, type: !6)
!3071 = !DILocation(line: 38, column: 32, scope: !3048)
!3072 = !DILocation(line: 38, column: 47, scope: !3048)
!3073 = !DILocation(line: 38, column: 38, scope: !3048)
!3074 = !DILocation(line: 38, column: 54, scope: !3048)
!3075 = !DILocalVariable(name: "out", scope: !3048, file: !493, line: 38, type: !6)
!3076 = !DILocation(line: 39, column: 5, scope: !3048)
!3077 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2812, file: !2812, line: 24, type: !3078, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{null, !49, !5, !45}
!3080 = !DILocalVariable(name: "in", arg: 1, scope: !3077, file: !2812, line: 24, type: !49)
!3081 = !DILocation(line: 0, scope: !3077)
!3082 = !DILocalVariable(name: "out", arg: 2, scope: !3077, file: !2812, line: 24, type: !5)
!3083 = !DILocalVariable(name: "ncols", arg: 3, scope: !3077, file: !2812, line: 24, type: !45)
!3084 = !DILocalVariable(name: "out8", scope: !3077, file: !2812, line: 26, type: !18)
!3085 = !DILocalVariable(name: "i", scope: !3077, file: !2812, line: 25, type: !45)
!3086 = !DILocation(line: 27, column: 9, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3077, file: !2812, line: 27, column: 5)
!3088 = !DILocation(line: 27, scope: !3087)
!3089 = !DILocation(line: 27, column: 17, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !2812, line: 27, column: 5)
!3091 = !DILocation(line: 27, column: 20, scope: !3090)
!3092 = !DILocation(line: 27, column: 5, scope: !3087)
!3093 = !DILocation(line: 31, column: 23, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !2812, line: 27, column: 36)
!3095 = !DILocation(line: 31, column: 44, scope: !3094)
!3096 = !DILocation(line: 31, column: 40, scope: !3094)
!3097 = !DILocation(line: 31, column: 48, scope: !3094)
!3098 = !DILocation(line: 31, column: 37, scope: !3094)
!3099 = !DILocation(line: 31, column: 15, scope: !3094)
!3100 = !DILocation(line: 31, column: 9, scope: !3094)
!3101 = !DILocation(line: 31, column: 20, scope: !3094)
!3102 = !DILocation(line: 27, column: 31, scope: !3090)
!3103 = !DILocation(line: 27, column: 5, scope: !3090)
!3104 = distinct !{!3104, !3092, !3105, !303}
!3105 = !DILocation(line: 33, column: 5, scope: !3087)
!3106 = !DILocation(line: 34, column: 19, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3077, file: !2812, line: 34, column: 9)
!3108 = !DILocation(line: 38, column: 23, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3107, file: !2812, line: 34, column: 24)
!3110 = !DILocation(line: 38, column: 15, scope: !3109)
!3111 = !DILocation(line: 38, column: 9, scope: !3109)
!3112 = !DILocation(line: 38, column: 20, scope: !3109)
!3113 = !DILocation(line: 40, column: 5, scope: !3109)
!3114 = !DILocation(line: 41, column: 1, scope: !3077)
!3115 = distinct !DISubprogram(name: "ct_compare_64", scope: !3039, file: !3039, line: 46, type: !3116, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!6, !45, !45}
!3118 = !DILocalVariable(name: "a", arg: 1, scope: !3115, file: !3039, line: 46, type: !45)
!3119 = !DILocation(line: 0, scope: !3115)
!3120 = !DILocalVariable(name: "b", arg: 2, scope: !3115, file: !3039, line: 46, type: !45)
!3121 = !DILocation(line: 47, column: 38, scope: !3115)
!3122 = !DILocation(line: 47, column: 44, scope: !3115)
!3123 = !DILocation(line: 47, column: 73, scope: !3115)
!3124 = !DILocation(line: 47, column: 71, scope: !3115)
!3125 = !DILocation(line: 47, column: 5, scope: !3115)
!3126 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3039, file: !3039, line: 35, type: !3116, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3127 = !DILocalVariable(name: "a", arg: 1, scope: !3126, file: !3039, line: 35, type: !45)
!3128 = !DILocation(line: 0, scope: !3126)
!3129 = !DILocalVariable(name: "b", arg: 2, scope: !3126, file: !3039, line: 35, type: !45)
!3130 = !DILocalVariable(name: "diff", scope: !3126, file: !3039, line: 36, type: !46)
!3131 = !DILocation(line: 37, column: 30, scope: !3126)
!3132 = !DILocation(line: 37, column: 59, scope: !3126)
!3133 = !DILocation(line: 37, column: 57, scope: !3126)
!3134 = !DILocation(line: 37, column: 5, scope: !3126)
!3135 = distinct !DISubprogram(name: "m_extract_element", scope: !2812, file: !2812, line: 16, type: !3136, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!14, !326, !45}
!3138 = !DILocalVariable(name: "in", arg: 1, scope: !3135, file: !2812, line: 16, type: !326)
!3139 = !DILocation(line: 0, scope: !3135)
!3140 = !DILocalVariable(name: "index", arg: 2, scope: !3135, file: !2812, line: 16, type: !45)
!3141 = !DILocation(line: 17, column: 27, scope: !3135)
!3142 = !DILocalVariable(name: "leg", scope: !3135, file: !2812, line: 17, type: !239)
!3143 = !DILocation(line: 18, column: 30, scope: !3135)
!3144 = !DILocalVariable(name: "offset", scope: !3135, file: !2812, line: 18, type: !239)
!3145 = !DILocation(line: 20, column: 13, scope: !3135)
!3146 = !DILocation(line: 20, column: 31, scope: !3135)
!3147 = !DILocation(line: 20, column: 21, scope: !3135)
!3148 = !DILocation(line: 20, column: 12, scope: !3135)
!3149 = !DILocation(line: 20, column: 5, scope: !3135)
!3150 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3151, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!14, !14}
!3153 = !DILocalVariable(name: "a", arg: 1, scope: !3150, file: !493, line: 57, type: !14)
!3154 = !DILocation(line: 0, scope: !3150)
!3155 = !DILocation(line: 61, column: 24, scope: !3150)
!3156 = !DILocalVariable(name: "a2", scope: !3150, file: !493, line: 61, type: !14)
!3157 = !DILocation(line: 62, column: 24, scope: !3150)
!3158 = !DILocalVariable(name: "a4", scope: !3150, file: !493, line: 62, type: !14)
!3159 = !DILocation(line: 63, column: 24, scope: !3150)
!3160 = !DILocalVariable(name: "a8", scope: !3150, file: !493, line: 63, type: !14)
!3161 = !DILocation(line: 64, column: 24, scope: !3150)
!3162 = !DILocalVariable(name: "a6", scope: !3150, file: !493, line: 64, type: !14)
!3163 = !DILocation(line: 65, column: 25, scope: !3150)
!3164 = !DILocalVariable(name: "a14", scope: !3150, file: !493, line: 65, type: !14)
!3165 = !DILocation(line: 67, column: 5, scope: !3150)
!3166 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3039, file: !3039, line: 94, type: !3167, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !239, !326, !14, !5}
!3169 = !DILocalVariable(name: "legs", arg: 1, scope: !3166, file: !3039, line: 94, type: !239)
!3170 = !DILocation(line: 0, scope: !3166)
!3171 = !DILocalVariable(name: "in", arg: 2, scope: !3166, file: !3039, line: 94, type: !326)
!3172 = !DILocalVariable(name: "a", arg: 3, scope: !3166, file: !3039, line: 94, type: !14)
!3173 = !DILocalVariable(name: "acc", arg: 4, scope: !3166, file: !3039, line: 94, type: !5)
!3174 = !DILocation(line: 95, column: 20, scope: !3166)
!3175 = !DILocalVariable(name: "tab", scope: !3166, file: !3039, line: 95, type: !19)
!3176 = !DILocalVariable(name: "lsb_ask", scope: !3166, file: !3039, line: 97, type: !6)
!3177 = !DILocalVariable(name: "i", scope: !3178, file: !3039, line: 99, type: !45)
!3178 = distinct !DILexicalBlock(scope: !3166, file: !3039, line: 99, column: 5)
!3179 = !DILocation(line: 0, scope: !3178)
!3180 = !DILocation(line: 99, column: 9, scope: !3178)
!3181 = !DILocation(line: 99, scope: !3178)
!3182 = !DILocation(line: 99, column: 20, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3178, file: !3039, line: 99, column: 5)
!3184 = !DILocation(line: 99, column: 5, scope: !3178)
!3185 = !DILocation(line: 100, column: 21, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !3039, line: 99, column: 32)
!3187 = !DILocation(line: 100, column: 33, scope: !3186)
!3188 = !DILocation(line: 100, column: 51, scope: !3186)
!3189 = !DILocation(line: 100, column: 46, scope: !3186)
!3190 = !DILocation(line: 100, column: 44, scope: !3186)
!3191 = !DILocation(line: 101, column: 27, scope: !3186)
!3192 = !DILocation(line: 101, column: 33, scope: !3186)
!3193 = !DILocation(line: 101, column: 52, scope: !3186)
!3194 = !DILocation(line: 101, column: 59, scope: !3186)
!3195 = !DILocation(line: 101, column: 46, scope: !3186)
!3196 = !DILocation(line: 101, column: 44, scope: !3186)
!3197 = !DILocation(line: 101, column: 17, scope: !3186)
!3198 = !DILocation(line: 102, column: 21, scope: !3186)
!3199 = !DILocation(line: 102, column: 27, scope: !3186)
!3200 = !DILocation(line: 102, column: 33, scope: !3186)
!3201 = !DILocation(line: 102, column: 52, scope: !3186)
!3202 = !DILocation(line: 102, column: 59, scope: !3186)
!3203 = !DILocation(line: 102, column: 46, scope: !3186)
!3204 = !DILocation(line: 102, column: 44, scope: !3186)
!3205 = !DILocation(line: 102, column: 17, scope: !3186)
!3206 = !DILocation(line: 103, column: 21, scope: !3186)
!3207 = !DILocation(line: 103, column: 27, scope: !3186)
!3208 = !DILocation(line: 103, column: 33, scope: !3186)
!3209 = !DILocation(line: 103, column: 52, scope: !3186)
!3210 = !DILocation(line: 103, column: 59, scope: !3186)
!3211 = !DILocation(line: 103, column: 46, scope: !3186)
!3212 = !DILocation(line: 103, column: 44, scope: !3186)
!3213 = !DILocation(line: 103, column: 17, scope: !3186)
!3214 = !DILocation(line: 100, column: 9, scope: !3186)
!3215 = !DILocation(line: 100, column: 16, scope: !3186)
!3216 = !DILocation(line: 99, column: 29, scope: !3183)
!3217 = !DILocation(line: 99, column: 5, scope: !3183)
!3218 = distinct !{!3218, !3184, !3219, !303}
!3219 = !DILocation(line: 104, column: 5, scope: !3178)
!3220 = !DILocation(line: 105, column: 1, scope: !3166)
!3221 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2812, file: !2812, line: 44, type: !3222, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{null, !45, !326, !18}
!3224 = !DILocalVariable(name: "legs", arg: 1, scope: !3221, file: !2812, line: 44, type: !45)
!3225 = !DILocation(line: 0, scope: !3221)
!3226 = !DILocalVariable(name: "in", arg: 2, scope: !3221, file: !2812, line: 44, type: !326)
!3227 = !DILocalVariable(name: "out", arg: 3, scope: !3221, file: !2812, line: 44, type: !18)
!3228 = !DILocalVariable(name: "in8", scope: !3221, file: !2812, line: 45, type: !49)
!3229 = !DILocalVariable(name: "i", scope: !3230, file: !2812, line: 46, type: !45)
!3230 = distinct !DILexicalBlock(scope: !3221, file: !2812, line: 46, column: 5)
!3231 = !DILocation(line: 0, scope: !3230)
!3232 = !DILocation(line: 46, column: 9, scope: !3230)
!3233 = !DILocation(line: 46, scope: !3230)
!3234 = !DILocation(line: 46, column: 29, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3230, file: !2812, line: 46, column: 5)
!3236 = !DILocation(line: 46, column: 22, scope: !3235)
!3237 = !DILocation(line: 46, column: 5, scope: !3230)
!3238 = !DILocation(line: 51, column: 26, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !2812, line: 46, column: 42)
!3240 = !DILocation(line: 51, column: 21, scope: !3239)
!3241 = !DILocation(line: 51, column: 31, scope: !3239)
!3242 = !DILocation(line: 51, column: 9, scope: !3239)
!3243 = !DILocation(line: 51, column: 18, scope: !3239)
!3244 = !DILocation(line: 52, column: 26, scope: !3239)
!3245 = !DILocation(line: 52, column: 21, scope: !3239)
!3246 = !DILocation(line: 52, column: 30, scope: !3239)
!3247 = !DILocation(line: 52, column: 14, scope: !3239)
!3248 = !DILocation(line: 52, column: 9, scope: !3239)
!3249 = !DILocation(line: 52, column: 18, scope: !3239)
!3250 = !DILocation(line: 46, column: 37, scope: !3235)
!3251 = !DILocation(line: 46, column: 5, scope: !3235)
!3252 = distinct !{!3252, !3237, !3253, !303}
!3253 = !DILocation(line: 54, column: 5, scope: !3230)
!3254 = !DILocation(line: 55, column: 1, scope: !3221)
!3255 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3256 = !DILocalVariable(name: "b", arg: 1, scope: !3255, file: !493, line: 129, type: !12)
!3257 = !DILocation(line: 0, scope: !3255)
!3258 = !DILocation(line: 130, column: 19, scope: !3255)
!3259 = !DILocation(line: 130, column: 33, scope: !3255)
!3260 = !DILocalVariable(name: "x", scope: !3255, file: !493, line: 130, type: !19)
!3261 = !DILocalVariable(name: "high_nibble_mask", scope: !3255, file: !493, line: 132, type: !19)
!3262 = !DILocation(line: 134, column: 28, scope: !3255)
!3263 = !DILocalVariable(name: "high_half", scope: !3255, file: !493, line: 134, type: !19)
!3264 = !DILocation(line: 135, column: 28, scope: !3255)
!3265 = !DILocation(line: 135, column: 47, scope: !3255)
!3266 = !DILocation(line: 135, column: 34, scope: !3255)
!3267 = !DILocation(line: 135, column: 5, scope: !3255)
!3268 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1550, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3269 = !DILocalVariable(name: "a", arg: 1, scope: !3268, file: !493, line: 9, type: !14)
!3270 = !DILocation(line: 0, scope: !3268)
!3271 = !DILocalVariable(name: "b", arg: 2, scope: !3268, file: !493, line: 9, type: !14)
!3272 = !DILocation(line: 14, column: 10, scope: !3268)
!3273 = !DILocation(line: 14, column: 7, scope: !3268)
!3274 = !DILocation(line: 17, column: 17, scope: !3268)
!3275 = !DILocalVariable(name: "p", scope: !3268, file: !493, line: 11, type: !14)
!3276 = !DILocation(line: 18, column: 13, scope: !3268)
!3277 = !DILocation(line: 18, column: 17, scope: !3268)
!3278 = !DILocation(line: 18, column: 7, scope: !3268)
!3279 = !DILocation(line: 19, column: 13, scope: !3268)
!3280 = !DILocation(line: 19, column: 17, scope: !3268)
!3281 = !DILocation(line: 19, column: 7, scope: !3268)
!3282 = !DILocation(line: 20, column: 13, scope: !3268)
!3283 = !DILocation(line: 20, column: 17, scope: !3268)
!3284 = !DILocation(line: 20, column: 7, scope: !3268)
!3285 = !DILocalVariable(name: "top_p", scope: !3268, file: !493, line: 23, type: !14)
!3286 = !DILocation(line: 24, column: 37, scope: !3268)
!3287 = !DILocation(line: 24, column: 52, scope: !3268)
!3288 = !DILocation(line: 24, column: 43, scope: !3268)
!3289 = !DILocation(line: 24, column: 59, scope: !3268)
!3290 = !DILocalVariable(name: "out", scope: !3268, file: !493, line: 24, type: !14)
!3291 = !DILocation(line: 25, column: 5, scope: !3268)
!3292 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1558, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3293 = !DILocalVariable(name: "a", arg: 1, scope: !3292, file: !493, line: 70, type: !49)
!3294 = !DILocation(line: 0, scope: !3292)
!3295 = !DILocalVariable(name: "b", arg: 2, scope: !3292, file: !493, line: 71, type: !49)
!3296 = !DILocalVariable(name: "n", arg: 3, scope: !3292, file: !493, line: 71, type: !45)
!3297 = !DILocalVariable(name: "m", arg: 4, scope: !3292, file: !493, line: 71, type: !45)
!3298 = !DILocalVariable(name: "ret", scope: !3292, file: !493, line: 72, type: !14)
!3299 = !DILocalVariable(name: "i", scope: !3300, file: !493, line: 73, type: !45)
!3300 = distinct !DILexicalBlock(scope: !3292, file: !493, line: 73, column: 5)
!3301 = !DILocation(line: 0, scope: !3300)
!3302 = !DILocation(line: 73, column: 10, scope: !3300)
!3303 = !DILocation(line: 73, scope: !3300)
!3304 = !DILocation(line: 73, column: 23, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3300, file: !493, line: 73, column: 5)
!3306 = !DILocation(line: 73, column: 5, scope: !3300)
!3307 = !DILocation(line: 74, column: 27, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3305, file: !493, line: 73, column: 41)
!3309 = !DILocation(line: 74, column: 33, scope: !3308)
!3310 = !DILocation(line: 74, column: 21, scope: !3308)
!3311 = !DILocation(line: 74, column: 15, scope: !3308)
!3312 = !DILocation(line: 73, column: 28, scope: !3305)
!3313 = !DILocation(line: 73, column: 35, scope: !3305)
!3314 = !DILocation(line: 73, column: 5, scope: !3305)
!3315 = distinct !{!3315, !3306, !3316, !303}
!3316 = !DILocation(line: 75, column: 5, scope: !3300)
!3317 = !DILocation(line: 76, column: 5, scope: !3292)
!3318 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1550, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3319 = !DILocalVariable(name: "a", arg: 1, scope: !3318, file: !493, line: 43, type: !14)
!3320 = !DILocation(line: 0, scope: !3318)
!3321 = !DILocalVariable(name: "b", arg: 2, scope: !3318, file: !493, line: 43, type: !14)
!3322 = !DILocation(line: 44, column: 14, scope: !3318)
!3323 = !DILocation(line: 44, column: 5, scope: !3318)
