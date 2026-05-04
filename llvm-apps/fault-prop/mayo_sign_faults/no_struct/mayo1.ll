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
  store i8 0, ptr %add.ptr24, align 1, !dbg !800
  %call32 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 430, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !801
    #dbg_value(i32 0, !802, !DIExpression(), !804)
  br label %for.cond, !dbg !805

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !806
    #dbg_value(i32 %i.0, !802, !DIExpression(), !804)
  %exitcond = icmp ne i32 %i.0, 10, !dbg !807
  br i1 %exitcond, label %for.body, label %for.end, !dbg !809

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 39, !dbg !810
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !812
  %mul37 = mul nuw nsw i32 %i.0, 78, !dbg !813
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !814
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 78) #6, !dbg !815
  %inc = add nuw nsw i32 %i.0, 1, !dbg !816
    #dbg_value(i32 %inc, !802, !DIExpression(), !804)
  br label %for.cond, !dbg !817, !llvm.loop !818

for.end:                                          ; preds = %for.cond
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !820
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !821
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !822
    #dbg_value(i32 0, !823, !DIExpression(), !825)
  br label %for.cond48, !dbg !826

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !827
    #dbg_value(i32 %i47.0, !823, !DIExpression(), !825)
  %exitcond1 = icmp ne i32 %i47.0, 78, !dbg !828
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !830

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 81, !dbg !831
  %sub = add nuw nsw i32 %0, 80, !dbg !833
  %arrayidx = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub, !dbg !834
  store i8 0, ptr %arrayidx, align 1, !dbg !835
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !836
    #dbg_value(i32 %inc53, !823, !DIExpression(), !825)
  br label %for.cond48, !dbg !837, !llvm.loop !838

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 390, !dbg !840
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 80) #6, !dbg !841
  %call62 = call i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 10, i32 noundef 8, i32 noundef 78, i32 noundef 81) #6, !dbg !842
  %tobool.not = icmp eq i32 %call62, 0, !dbg !842
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !842

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 3200) #8, !dbg !844
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 6480) #8, !dbg !846
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !847, !DIExpression(), !849)
  br label %for.cond70, !dbg !850

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !851
    #dbg_value(i32 %i69.0, !847, !DIExpression(), !849)
  %exitcond2 = icmp ne i32 %i69.0, 10, !dbg !852
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !854

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 78, !dbg !855
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !857
    #dbg_value(ptr %add.ptr75, !858, !DIExpression(), !706)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !859
  %mul80 = shl nuw nsw i32 %i69.0, 3, !dbg !860
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !861
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 8, i32 noundef 78, i32 noundef 1) #6, !dbg !862
  %mul85 = mul nuw nsw i32 %i69.0, 86, !dbg !863
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !864
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 78, i32 noundef 1) #6, !dbg !865
  %mul88 = mul nuw nsw i32 %i69.0, 86, !dbg !866
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !867
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 78, !dbg !868
  %mul92 = shl nuw nsw i32 %i69.0, 3, !dbg !869
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !870
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 8) #8, !dbg !871
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !872
    #dbg_value(i32 %inc96, !847, !DIExpression(), !849)
  br label %for.cond70, !dbg !873, !llvm.loop !874

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 860) #6, !dbg !876
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !877
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !878
  store i32 454, ptr %siglen, align 4, !dbg !879
  br label %err, !dbg !880

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !706
    #dbg_value(i32 %ret.0, !712, !DIExpression(), !706)
    #dbg_label(!881, !882)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 430) #8, !dbg !883
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 780) #8, !dbg !884
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 6480) #8, !dbg !885
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 81) #8, !dbg !886
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !887
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 624) #8, !dbg !888
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 148824) #8, !dbg !889
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 78) #8, !dbg !890
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !891
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 3200) #8, !dbg !892
  ret i32 %ret.0, !dbg !893
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !894 {
entry:
  %Pv = alloca [3900 x i64], align 8
    #dbg_value(ptr %p, !897, !DIExpression(), !898)
    #dbg_value(ptr %Vdec, !899, !DIExpression(), !898)
    #dbg_value(ptr %L, !900, !DIExpression(), !898)
    #dbg_value(ptr %P1, !901, !DIExpression(), !898)
    #dbg_value(ptr %VL, !902, !DIExpression(), !898)
    #dbg_value(ptr %VP1V, !903, !DIExpression(), !898)
    #dbg_value(i32 10, !904, !DIExpression(), !898)
    #dbg_value(i32 78, !905, !DIExpression(), !898)
    #dbg_value(i32 8, !906, !DIExpression(), !898)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 10, i32 noundef 78, i32 noundef 8) #6, !dbg !907
    #dbg_declare(ptr %Pv, !908, !DIExpression(), !912)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(31200) %Pv, i8 0, i32 31200, i1 false), !dbg !912
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !913
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 10, i32 noundef 78, i32 noundef 10) #6, !dbg !914
  ret void, !dbg !915
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !916 {
entry:
  %temp = alloca [5 x i64], align 8
    #dbg_value(ptr %p, !919, !DIExpression(), !920)
    #dbg_value(ptr %vPv, !921, !DIExpression(), !920)
    #dbg_value(ptr %t, !922, !DIExpression(), !920)
    #dbg_value(ptr %y, !923, !DIExpression(), !920)
    #dbg_value(i32 52, !924, !DIExpression(), !920)
    #dbg_value(i32 5, !926, !DIExpression(), !920)
    #dbg_value(i64 1, !927, !DIExpression(), !930)
    #dbg_value(i64 72057594037927936, !927, !DIExpression(), !930)
    #dbg_value(i64 72057594037927935, !927, !DIExpression(), !930)
    #dbg_value(i32 0, !931, !DIExpression(), !933)
  br label %for.cond, !dbg !934

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !935
    #dbg_value(i32 %i.0, !931, !DIExpression(), !933)
  %exitcond = icmp ne i32 %i.0, 100, !dbg !936
  br i1 %exitcond, label %for.body, label %for.end, !dbg !938

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 40, !dbg !939
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !939
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !939
  %1 = load i64, ptr %arrayidx, align 8, !dbg !941
  %and = and i64 %1, 72057594037927935, !dbg !941
  store i64 %and, ptr %arrayidx, align 8, !dbg !941
  %inc = add nuw nsw i32 %i.0, 1, !dbg !942
    #dbg_value(i32 %inc, !931, !DIExpression(), !933)
  br label %for.cond, !dbg !943, !llvm.loop !944

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !946, !DIExpression(), !947)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %temp, i8 0, i32 40, i1 false), !dbg !947
    #dbg_value(ptr %temp, !948, !DIExpression(), !920)
    #dbg_value(i32 9, !949, !DIExpression(), !951)
  br label %for.cond3, !dbg !952

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 9, %for.end ], [ %dec78, %for.inc77 ], !dbg !953
    #dbg_value(i32 %i2.0, !949, !DIExpression(), !951)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !954
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !956

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !957

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !960

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !962
    #dbg_value(i32 %j.0, !963, !DIExpression(), !964)
  %exitcond10 = icmp ne i32 %j.0, 10, !dbg !965
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !957

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !967
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !967
  %shr = lshr i64 %2, 52, !dbg !969
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !970
    #dbg_value(i8 %rem1, !971, !DIExpression(), !972)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !973
  %shl11 = shl i64 %2, 4, !dbg !974
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !974
    #dbg_value(i32 3, !975, !DIExpression(), !977)
  br label %for.cond12, !dbg !978

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 3, %for.body8 ], [ %dec, %for.body15 ], !dbg !979
    #dbg_value(i32 %k.0, !975, !DIExpression(), !977)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !980
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !982

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !970
  br label %for.cond24, !dbg !983

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !985
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !985
  %shr17 = lshr i64 %3, 60, !dbg !987
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !988
  %arrayidx19 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %add18, !dbg !989
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !990
  %xor = xor i64 %4, %shr17, !dbg !990
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !990
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !991
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !992
  %shl21 = shl i64 %5, 4, !dbg !992
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !992
  %dec = add nsw i32 %k.0, -1, !dbg !993
    #dbg_value(i32 %dec, !975, !DIExpression(), !977)
  br label %for.cond12, !dbg !994, !llvm.loop !995

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !997
    #dbg_value(i32 %jj.0, !998, !DIExpression(), !999)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !1000
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !983

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1002

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1004
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1007
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1007

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1008
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1008
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #6, !dbg !1010
  %div = lshr exact i32 %jj.0, 1, !dbg !1011
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1012
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1013
  %xor356 = xor i8 %7, %call, !dbg !1013
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1013
  br label %for.inc46, !dbg !1014

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1015
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1015
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #6, !dbg !1017
  %shl40 = shl nuw i8 %call38, 4, !dbg !1018
  %div415 = lshr i32 %jj.0, 1, !dbg !1019
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1020
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1021
  %xor44 = xor i8 %shl40, %9, !dbg !1021
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1021
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1022
    #dbg_value(i32 %inc47, !998, !DIExpression(), !999)
  br label %for.cond24, !dbg !1023, !llvm.loop !1024

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1026
    #dbg_value(i32 %k49.0, !1027, !DIExpression(), !1028)
  %exitcond9 = icmp ne i32 %k49.0, 5, !dbg !1029
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1002

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 10, !dbg !1031
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1033
  %.idx = mul nsw i32 %add55, 40, !dbg !1034
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1034
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1034
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1034
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1035
  %mul62 = mul nuw nsw i32 %j.0, 10, !dbg !1036
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1037
  %.idx4 = mul nsw i32 %add63, 40, !dbg !1038
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1038
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1038
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1038
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1039
  %xor68 = xor i64 %11, %mul67, !dbg !1040
  %arrayidx69 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1041
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1042
  %xor70 = xor i64 %14, %xor68, !dbg !1042
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1042
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1043
    #dbg_value(i32 %inc72, !1027, !DIExpression(), !1028)
  br label %for.cond50, !dbg !1044, !llvm.loop !1045

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1047
    #dbg_value(i32 %inc75, !963, !DIExpression(), !964)
  br label %for.cond6, !dbg !1048, !llvm.loop !1049

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1051
    #dbg_value(i32 %dec78, !949, !DIExpression(), !951)
  br label %for.cond3, !dbg !1052, !llvm.loop !1053

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1055
    #dbg_value(i32 %i80.0, !1056, !DIExpression(), !1057)
  %cmp82 = icmp samesign ult i32 %i80.0, 78, !dbg !1058
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !960

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1060
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1060
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1062
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1063
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1063
  %17 = and i8 %16, 15, !dbg !1064
  %xor912 = xor i8 %15, %17, !dbg !1065
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1066
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1067
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1068
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1069
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1069
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1070
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1071
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1071
  %20 = lshr i8 %19, 4, !dbg !1072
  %xor1013 = xor i8 %18, %20, !dbg !1073
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1074
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1075
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1076
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1077
    #dbg_value(i32 %add106, !1056, !DIExpression(), !1057)
  br label %for.cond81, !dbg !1078, !llvm.loop !1079

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1081
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1082 {
entry:
  %A = alloca [800 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1085, !DIExpression(), !1086)
    #dbg_value(ptr %VtL, !1087, !DIExpression(), !1086)
    #dbg_value(ptr %A_out, !1088, !DIExpression(), !1086)
    #dbg_value(i32 0, !1089, !DIExpression(), !1086)
    #dbg_value(i32 0, !1090, !DIExpression(), !1086)
    #dbg_value(i32 5, !1091, !DIExpression(), !1086)
    #dbg_declare(ptr %A, !1092, !DIExpression(), !1096)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6400) %A, i8 0, i32 6400, i1 false), !dbg !1096
    #dbg_value(i32 80, !1097, !DIExpression(), !1086)
    #dbg_value(i64 1, !1098, !DIExpression(), !1101)
    #dbg_value(i64 72057594037927936, !1098, !DIExpression(), !1101)
    #dbg_value(i64 72057594037927935, !1098, !DIExpression(), !1101)
    #dbg_value(i32 0, !1102, !DIExpression(), !1104)
  br label %for.cond, !dbg !1105

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1106
    #dbg_value(i32 %i.0, !1102, !DIExpression(), !1104)
  %exitcond = icmp ne i32 %i.0, 80, !dbg !1107
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1109

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1110

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 40, !dbg !1112
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1112
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1112
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1114
  %and = and i64 %1, 72057594037927935, !dbg !1114
  store i64 %and, ptr %arrayidx, align 8, !dbg !1114
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1115
    #dbg_value(i32 %inc, !1102, !DIExpression(), !1104)
  br label %for.cond, !dbg !1116, !llvm.loop !1117

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1119
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1120
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1121
    #dbg_value(i32 %bits_to_shift.0, !1089, !DIExpression(), !1086)
    #dbg_value(i32 %words_to_shift.0, !1090, !DIExpression(), !1086)
    #dbg_value(i32 %i2.0, !1122, !DIExpression(), !1123)
  %exitcond8 = icmp ne i32 %i2.0, 10, !dbg !1124
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1110

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1126

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1129

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 9, %for.cond6.preheader ], !dbg !1131
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1086
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1086
    #dbg_value(i32 %bits_to_shift.1, !1089, !DIExpression(), !1086)
    #dbg_value(i32 %words_to_shift.1, !1090, !DIExpression(), !1086)
    #dbg_value(i32 %j.0, !1132, !DIExpression(), !1133)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1134
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1126

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 320, !dbg !1136
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1136
    #dbg_value(ptr %add.ptr, !1138, !DIExpression(), !1086)
    #dbg_value(i32 0, !1139, !DIExpression(), !1141)
  br label %for.cond11, !dbg !1142

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1143
    #dbg_value(i32 %c.0, !1139, !DIExpression(), !1141)
  %exitcond5 = icmp ne i32 %c.0, 8, !dbg !1144
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1146

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1147

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1150
    #dbg_value(i32 %k.0, !1151, !DIExpression(), !1152)
  %exitcond4 = icmp ne i32 %k.0, 5, !dbg !1153
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1147

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1155
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 40, !dbg !1155
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1155
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1155
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1157
  %shl20 = shl i64 %3, %sh_prom, !dbg !1157
  %mul21 = shl nuw nsw i32 %i2.0, 3, !dbg !1158
  %add22 = or disjoint i32 %mul21, %c.0, !dbg !1159
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1160
  %mul24 = mul i32 %add23, 80, !dbg !1161
  %add25 = add i32 %add22, %mul24, !dbg !1162
  %arrayidx26 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25, !dbg !1163
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1164
  %xor = xor i64 %4, %shl20, !dbg !1164
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1164
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1165
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1165

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1167
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 40, !dbg !1167
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1167
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1167
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1169
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1170
  %shr = lshr i64 %6, %sh_prom32, !dbg !1170
  %mul33 = shl nuw nsw i32 %i2.0, 3, !dbg !1171
  %add34 = or disjoint i32 %mul33, %c.0, !dbg !1172
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1173
  %7 = mul i32 %add35, 80, !dbg !1174
  %mul37 = add i32 %7, 80, !dbg !1174
  %add38 = add i32 %add34, %mul37, !dbg !1175
  %arrayidx39 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38, !dbg !1176
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1177
  %xor40 = xor i64 %8, %shr, !dbg !1177
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1177
  br label %for.inc41, !dbg !1178

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1179
    #dbg_value(i32 %inc42, !1151, !DIExpression(), !1152)
  br label %for.cond14, !dbg !1180, !llvm.loop !1181

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1183
    #dbg_value(i32 %inc45, !1139, !DIExpression(), !1141)
  br label %for.cond11, !dbg !1184, !llvm.loop !1185

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1187
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1187

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 320, !dbg !1189
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1189
    #dbg_value(ptr %add.ptr51, !1191, !DIExpression(), !1086)
    #dbg_value(i32 0, !1192, !DIExpression(), !1194)
  br label %for.cond53, !dbg !1195

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1196
    #dbg_value(i32 %c52.0, !1192, !DIExpression(), !1194)
  %exitcond7 = icmp ne i32 %c52.0, 8, !dbg !1197
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1199

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1200

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1203
    #dbg_value(i32 %k56.0, !1204, !DIExpression(), !1205)
  %exitcond6 = icmp ne i32 %k56.0, 5, !dbg !1206
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1200

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1208
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1208
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1208
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1208
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1210
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1210
  %mul65 = shl nsw i32 %j.0, 3, !dbg !1211
  %add66 = or disjoint i32 %mul65, %c52.0, !dbg !1212
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1213
  %mul68 = mul i32 %add67, 80, !dbg !1214
  %add69 = add i32 %add66, %mul68, !dbg !1215
  %arrayidx70 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69, !dbg !1216
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1217
  %xor71 = xor i64 %11, %shl64, !dbg !1217
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1217
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1218
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1218

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1220
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1220
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1220
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1220
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1222
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1223
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1223
  %mul80 = shl nsw i32 %j.0, 3, !dbg !1224
  %add81 = or disjoint i32 %mul80, %c52.0, !dbg !1225
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1226
  %14 = mul i32 %add82, 80, !dbg !1227
  %mul84 = add i32 %14, 80, !dbg !1227
  %add85 = add i32 %add81, %mul84, !dbg !1228
  %arrayidx86 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85, !dbg !1229
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1230
  %xor87 = xor i64 %15, %shr79, !dbg !1230
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1230
  br label %for.inc89, !dbg !1231

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1232
    #dbg_value(i32 %inc90, !1204, !DIExpression(), !1205)
  br label %for.cond57, !dbg !1233, !llvm.loop !1234

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1236
    #dbg_value(i32 %inc93, !1192, !DIExpression(), !1194)
  br label %for.cond53, !dbg !1237, !llvm.loop !1238

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1240

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1240
    #dbg_value(i32 %add96, !1089, !DIExpression(), !1086)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1241
  %inc99 = zext i1 %cmp97 to i32, !dbg !1241
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1241
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1241
    #dbg_value(i32 %spec.select3, !1089, !DIExpression(), !1086)
    #dbg_value(i32 %spec.select, !1090, !DIExpression(), !1086)
  %dec = add nsw i32 %j.0, -1, !dbg !1243
    #dbg_value(i32 %dec, !1132, !DIExpression(), !1133)
  br label %for.cond6, !dbg !1244, !llvm.loop !1245

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1086
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1086
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1247
    #dbg_value(i32 %inc104, !1122, !DIExpression(), !1123)
  br label %for.cond3, !dbg !1248, !llvm.loop !1249

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1251
    #dbg_value(i32 %c106.0, !1252, !DIExpression(), !1253)
  %cmp109 = icmp samesign ult i32 %c106.0, 720, !dbg !1254
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1129

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1256
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1258
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1259
    #dbg_value(i32 %add113, !1252, !DIExpression(), !1253)
  br label %for.cond107, !dbg !1260, !llvm.loop !1261

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1263, !DIExpression(), !1267)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1267
    #dbg_value(i32 0, !1268, !DIExpression(), !1270)
  br label %for.cond116, !dbg !1271

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1272
    #dbg_value(i32 %i115.0, !1268, !DIExpression(), !1270)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1273
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1275

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1276

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1278
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1278
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1280
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1281
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1282
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1283
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1284
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1285
  %add125 = or disjoint i32 %mul124, 1, !dbg !1286
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1287
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1288
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1289
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1289
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1290
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1291
  %add130 = or disjoint i32 %mul129, 2, !dbg !1292
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1293
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1294
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1295
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1295
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1296
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1297
  %add135 = or disjoint i32 %mul134, 3, !dbg !1298
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1299
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1300
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1301
    #dbg_value(i32 %inc138, !1268, !DIExpression(), !1270)
  br label %for.cond116, !dbg !1302, !llvm.loop !1303

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1305
    #dbg_value(i32 %c140.0, !1306, !DIExpression(), !1307)
  %cmp142 = icmp samesign ult i32 %c140.0, 80, !dbg !1308
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1276

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1310

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1313

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 78, %for.cond144.preheader ], !dbg !1315
    #dbg_value(i32 %r.0, !1316, !DIExpression(), !1317)
  %exitcond11 = icmp ne i32 %r.0, 133, !dbg !1318
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1310

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1320
  %mul147 = mul nuw nsw i32 %div1, 80, !dbg !1322
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1323
  %rem = and i32 %r.0, 15, !dbg !1324
  %add149 = or disjoint i32 %add148, %rem, !dbg !1325
    #dbg_value(i32 %add149, !1326, !DIExpression(), !1327)
  %arrayidx150 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1328
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1328
  %and151 = and i64 %19, 1229782938247303441, !dbg !1329
    #dbg_value(i64 %and151, !1330, !DIExpression(), !1327)
  %shr153 = lshr i64 %19, 1, !dbg !1331
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1332
    #dbg_value(i64 %and154, !1333, !DIExpression(), !1327)
  %shr156 = lshr i64 %19, 2, !dbg !1334
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1335
    #dbg_value(i64 %and157, !1336, !DIExpression(), !1327)
  %arrayidx158 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1337
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1337
  %shr159 = lshr i64 %20, 3, !dbg !1338
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1339
    #dbg_value(i64 %and160, !1340, !DIExpression(), !1327)
    #dbg_value(i32 0, !1341, !DIExpression(), !1343)
  br label %for.cond161, !dbg !1344

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1345
    #dbg_value(i32 %t.0, !1341, !DIExpression(), !1343)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1346
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1348

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1349
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1351
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1351
  %conv = zext i8 %21 to i64, !dbg !1351
  %mul167 = mul i64 %and151, %conv, !dbg !1352
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1353
  %add169 = or disjoint i32 %mul168, 1, !dbg !1354
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1355
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1355
  %conv171 = zext i8 %22 to i64, !dbg !1355
  %mul172 = mul i64 %and154, %conv171, !dbg !1356
  %xor173 = xor i64 %mul167, %mul172, !dbg !1357
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1358
  %add175 = or disjoint i32 %mul174, 2, !dbg !1359
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1360
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1360
  %conv177 = zext i8 %23 to i64, !dbg !1360
  %mul178 = mul i64 %and157, %conv177, !dbg !1361
  %xor179 = xor i64 %xor173, %mul178, !dbg !1362
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1363
  %add181 = or disjoint i32 %mul180, 3, !dbg !1364
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1365
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1365
  %conv183 = zext i8 %24 to i64, !dbg !1365
  %mul184 = mul i64 %and160, %conv183, !dbg !1366
  %xor185 = xor i64 %xor179, %mul184, !dbg !1367
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1368
  %sub187 = add nsw i32 %add186, -78, !dbg !1369
  %div1882 = lshr i32 %sub187, 4, !dbg !1370
  %mul189 = mul i32 %div1882, 80, !dbg !1371
  %add190 = add i32 %mul189, %c140.0, !dbg !1372
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1373
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1374
  %rem193 = and i32 %sub192, 15, !dbg !1375
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1376
  %arrayidx195 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194, !dbg !1377
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1378
  %xor196 = xor i64 %25, %xor185, !dbg !1378
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1378
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1379
    #dbg_value(i32 %inc198, !1341, !DIExpression(), !1343)
  br label %for.cond161, !dbg !1380, !llvm.loop !1381

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1383
    #dbg_value(i32 %inc201, !1316, !DIExpression(), !1317)
  br label %for.cond144, !dbg !1384, !llvm.loop !1385

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1387
    #dbg_value(i32 %add204, !1306, !DIExpression(), !1307)
  br label %for.cond141, !dbg !1388, !llvm.loop !1389

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 78, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1391
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1391
    #dbg_value(i32 %r206.0, !1392, !DIExpression(), !1393)
  %cmp208 = icmp samesign ult i32 %r206.0, 78, !dbg !1394
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1313

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1396

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1399
    #dbg_value(i32 %c211.0, !1400, !DIExpression(), !1401)
  %cmp213 = icmp samesign ult i32 %c211.0, 80, !dbg !1402
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1396

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1404

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1407
    #dbg_value(i32 %i216.0, !1408, !DIExpression(), !1409)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1410
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1404

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 5, !dbg !1412
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1414
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1415
  %arrayidx226 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225, !dbg !1416
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1417
  %mul228 = mul nuw nsw i32 %add227, 81, !dbg !1418
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1419
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1420
  %cmp232 = icmp samesign ult i32 %c211.0, 64, !dbg !1421
  %sub234 = sub nuw nsw i32 80, %c211.0, !dbg !1421
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1421
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #6, !dbg !1422
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1423
    #dbg_value(i32 %inc236, !1408, !DIExpression(), !1409)
  br label %for.cond217, !dbg !1424, !llvm.loop !1425

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1427
    #dbg_value(i32 %add239, !1400, !DIExpression(), !1401)
  br label %for.cond212, !dbg !1428, !llvm.loop !1429

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1431
    #dbg_value(i32 %add242, !1392, !DIExpression(), !1393)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1432
  br label %for.cond207, !dbg !1432, !llvm.loop !1433

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1435
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1436 {
entry:
    #dbg_value(ptr %a, !1439, !DIExpression(), !1440)
    #dbg_value(ptr %b, !1441, !DIExpression(), !1440)
    #dbg_value(ptr %c, !1442, !DIExpression(), !1440)
    #dbg_value(i32 8, !1443, !DIExpression(), !1440)
    #dbg_value(i32 78, !1444, !DIExpression(), !1440)
    #dbg_value(i32 1, !1445, !DIExpression(), !1440)
    #dbg_value(i32 0, !1446, !DIExpression(), !1448)
  br label %for.cond, !dbg !1449

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1450
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1439, !DIExpression(), !1440)
    #dbg_value(ptr %c.addr.0, !1442, !DIExpression(), !1440)
    #dbg_value(i32 %i.0, !1446, !DIExpression(), !1448)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1451
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1453

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1454

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1457
    #dbg_value(i32 poison, !1458, !DIExpression(), !1459)
    #dbg_value(ptr %c.addr.1, !1442, !DIExpression(), !1440)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1454

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 8, i32 noundef 1) #6, !dbg !1460
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1463
    #dbg_value(i32 1, !1458, !DIExpression(), !1459)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1464
    #dbg_value(ptr %incdec.ptr, !1442, !DIExpression(), !1440)
  br label %for.cond1, !dbg !1465, !llvm.loop !1466

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1468
    #dbg_value(i32 %inc5, !1446, !DIExpression(), !1448)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 8, !dbg !1469
    #dbg_value(ptr %add.ptr6, !1439, !DIExpression(), !1440)
  br label %for.cond, !dbg !1470, !llvm.loop !1471

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1473
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1474 {
entry:
    #dbg_value(ptr %a, !1477, !DIExpression(), !1478)
    #dbg_value(ptr %b, !1479, !DIExpression(), !1478)
    #dbg_value(ptr %c, !1480, !DIExpression(), !1478)
    #dbg_value(i32 78, !1481, !DIExpression(), !1478)
    #dbg_value(i32 1, !1482, !DIExpression(), !1478)
    #dbg_value(i32 0, !1483, !DIExpression(), !1485)
  br label %for.cond, !dbg !1486

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1487
    #dbg_value(i32 %i.0, !1483, !DIExpression(), !1485)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1488
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1490

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1491, !DIExpression(), !1494)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1495
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1498
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1499
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1500
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1501
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1502
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1503
    #dbg_value(i32 1, !1491, !DIExpression(), !1494)
    #dbg_value(i32 poison, !1491, !DIExpression(), !1494)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1504
    #dbg_value(i32 %inc12, !1483, !DIExpression(), !1485)
  br label %for.cond, !dbg !1505, !llvm.loop !1506

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1508
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1509 {
entry:
    #dbg_value(ptr %m, !1510, !DIExpression(), !1511)
    #dbg_value(ptr %menc, !1512, !DIExpression(), !1511)
    #dbg_value(i32 860, !1513, !DIExpression(), !1511)
    #dbg_value(i32 0, !1514, !DIExpression(), !1511)
  br label %for.cond, !dbg !1515

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1517
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1510, !DIExpression(), !1511)
    #dbg_value(i32 %i.0, !1514, !DIExpression(), !1511)
  %exitcond = icmp ne i32 %i.0, 430, !dbg !1518
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1520

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1521
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1523
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1524
  %shl = shl i8 %1, 4, !dbg !1525
  %or = or i8 %shl, %0, !dbg !1526
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1527
  store i8 %or, ptr %arrayidx, align 1, !dbg !1528
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1529
    #dbg_value(i32 %inc, !1514, !DIExpression(), !1511)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1530
    #dbg_value(ptr %add.ptr3, !1510, !DIExpression(), !1511)
  br label %for.cond, !dbg !1531, !llvm.loop !1532

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1534
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1535 {
entry:
    #dbg_value(i8 %a, !1538, !DIExpression(), !1539)
    #dbg_value(i8 %b, !1540, !DIExpression(), !1539)
  %xor1 = xor i8 %a, %b, !dbg !1541
  ret i8 %xor1, !dbg !1542
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1543 {
entry:
    #dbg_value(ptr %a, !1546, !DIExpression(), !1547)
    #dbg_value(ptr %b, !1548, !DIExpression(), !1547)
    #dbg_value(i32 8, !1549, !DIExpression(), !1547)
    #dbg_value(i32 1, !1550, !DIExpression(), !1547)
    #dbg_value(i8 0, !1551, !DIExpression(), !1547)
    #dbg_value(i32 0, !1552, !DIExpression(), !1554)
  br label %for.cond, !dbg !1555

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1547
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1556
    #dbg_value(i32 %i.0, !1552, !DIExpression(), !1554)
    #dbg_value(ptr %b.addr.0, !1548, !DIExpression(), !1547)
    #dbg_value(i8 %ret.0, !1551, !DIExpression(), !1547)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1557
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1559

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1560
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1560
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1562
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1563
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1564
    #dbg_value(i8 %call1, !1551, !DIExpression(), !1547)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1565
    #dbg_value(i32 %inc, !1552, !DIExpression(), !1554)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1566
    #dbg_value(ptr %add.ptr, !1548, !DIExpression(), !1547)
  br label %for.cond, !dbg !1567, !llvm.loop !1568

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1547
  ret i8 %ret.0.lcssa, !dbg !1570
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1571 {
entry:
    #dbg_value(i8 %a, !1572, !DIExpression(), !1573)
    #dbg_value(i8 %b, !1574, !DIExpression(), !1573)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !1575
  %xor1 = xor i8 %a, %0, !dbg !1576
    #dbg_value(i8 %xor1, !1572, !DIExpression(), !1573)
  %1 = trunc i8 %xor1 to i1, !dbg !1577
    #dbg_value(i8 poison, !1578, !DIExpression(), !1573)
  %2 = and i8 %xor1, 2, !dbg !1579
  %mul9 = mul i8 %2, %b, !dbg !1580
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1577
  %xor11 = xor i8 %conv10, %mul9, !dbg !1581
    #dbg_value(i8 %xor11, !1578, !DIExpression(), !1573)
  %3 = and i8 %xor1, 4, !dbg !1582
  %mul16 = mul i8 %3, %b, !dbg !1583
  %xor18 = xor i8 %mul16, %xor11, !dbg !1584
    #dbg_value(i8 %xor18, !1578, !DIExpression(), !1573)
  %4 = and i8 %xor1, 8, !dbg !1585
  %mul23 = mul i8 %4, %b, !dbg !1586
  %xor25 = xor i8 %mul23, %xor18, !dbg !1587
    #dbg_value(i8 %xor25, !1578, !DIExpression(), !1573)
    #dbg_value(i8 %xor25, !1588, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1573)
  %5 = lshr i8 %xor25, 4, !dbg !1589
  %6 = lshr i8 %xor25, 3, !dbg !1590
  %7 = and i8 %6, 14, !dbg !1590
  %8 = xor i8 %5, %7, !dbg !1591
  %xor25.masked = and i8 %xor25, 15, !dbg !1592
  %9 = xor i8 %8, %xor25.masked, !dbg !1592
    #dbg_value(i8 %9, !1593, !DIExpression(), !1573)
  ret i8 %9, !dbg !1594
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1595, !DIExpression(), !1596)
    #dbg_value(i32 0, !1597, !DIExpression(), !1599)
  br label %for.cond, !dbg !1600

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1601
    #dbg_value(i32 %i.0, !1597, !DIExpression(), !1599)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1602
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1604

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1605

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1607
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1607
  %shr = lshr i64 %0, 4, !dbg !1609
  %add = or disjoint i32 %i.0, 1, !dbg !1610
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1611
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1611
  %xor = xor i64 %shr, %1, !dbg !1612
  %and = and i64 %xor, 1085102592571150095, !dbg !1613
    #dbg_value(i64 %and, !1614, !DIExpression(), !1615)
  %shl = shl nuw i64 %and, 4, !dbg !1616
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1617
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1618
  %xor3 = xor i64 %2, %shl, !dbg !1618
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1618
  %add4 = or disjoint i32 %i.0, 1, !dbg !1619
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1620
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1621
  %xor6 = xor i64 %3, %and, !dbg !1621
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1621
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1622
    #dbg_value(i32 %add7, !1597, !DIExpression(), !1599)
  br label %for.cond, !dbg !1623, !llvm.loop !1624

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1626
    #dbg_value(i32 %i8.0, !1627, !DIExpression(), !1628)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1629
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1605

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1631

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1633
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1633
  %shr13 = lshr i64 %4, 8, !dbg !1635
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1636
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1637
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1637
  %xor16 = xor i64 %shr13, %5, !dbg !1638
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1639
    #dbg_value(i64 %and17, !1640, !DIExpression(), !1641)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1642
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1643
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1643
  %shr20 = lshr i64 %6, 8, !dbg !1644
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1645
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1646
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1646
  %xor23 = xor i64 %shr20, %7, !dbg !1647
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1648
    #dbg_value(i64 %and24, !1649, !DIExpression(), !1641)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1650
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1651
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1652
  %xor27 = xor i64 %8, %shl25, !dbg !1652
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1652
  %shl28 = shl nuw i64 %and24, 8, !dbg !1653
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1654
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1655
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1656
  %xor31 = xor i64 %9, %shl28, !dbg !1656
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1656
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1657
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1658
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1659
  %xor34 = xor i64 %10, %and17, !dbg !1659
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1659
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1660
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1661
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1662
  %xor37 = xor i64 %11, %and24, !dbg !1662
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1662
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1663
    #dbg_value(i32 %add39, !1627, !DIExpression(), !1628)
  br label %for.cond9, !dbg !1664, !llvm.loop !1665

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1667
    #dbg_value(i32 %i41.0, !1668, !DIExpression(), !1669)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1670
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1631

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1672

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1674
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1674
  %shr47 = lshr i64 %12, 16, !dbg !1676
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1677
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1678
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1678
  %xor50 = xor i64 %shr47, %13, !dbg !1679
  %and51 = and i64 %xor50, 281470681808895, !dbg !1680
    #dbg_value(i64 %and51, !1681, !DIExpression(), !1682)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1683
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1684
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1684
  %shr55 = lshr i64 %14, 16, !dbg !1685
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1686
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1687
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1687
  %xor58 = xor i64 %shr55, %15, !dbg !1688
  %and59 = and i64 %xor58, 281470681808895, !dbg !1689
    #dbg_value(i64 %and59, !1690, !DIExpression(), !1682)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1691
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1692
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1693
  %xor62 = xor i64 %16, %shl60, !dbg !1693
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1693
  %shl63 = shl nuw i64 %and59, 16, !dbg !1694
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1695
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1696
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1697
  %xor66 = xor i64 %17, %shl63, !dbg !1697
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1697
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1698
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1699
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1700
  %xor69 = xor i64 %18, %and51, !dbg !1700
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1700
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1701
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1702
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1703
  %xor72 = xor i64 %19, %and59, !dbg !1703
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1703
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1704
    #dbg_value(i32 %inc, !1668, !DIExpression(), !1669)
  br label %for.cond42, !dbg !1705, !llvm.loop !1706

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1708
    #dbg_value(i32 %i75.0, !1709, !DIExpression(), !1710)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1711
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1672

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1713
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1713
  %shr81 = lshr i64 %20, 32, !dbg !1715
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1716
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1717
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1717
  %.masked = and i64 %21, 4294967295, !dbg !1718
  %and85 = xor i64 %shr81, %.masked, !dbg !1718
    #dbg_value(i64 %and85, !1719, !DIExpression(), !1720)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1721
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1722
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1723
  %xor88 = xor i64 %22, %shl86, !dbg !1723
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1723
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1724
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1725
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1726
  %xor91 = xor i64 %23, %and85, !dbg !1726
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1726
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1727
    #dbg_value(i32 %inc93, !1709, !DIExpression(), !1710)
  br label %for.cond76, !dbg !1728, !llvm.loop !1729

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1731
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 8, 11) %bs_mat_cols) unnamed_addr #0 !dbg !1732 {
entry:
    #dbg_value(i32 5, !1733, !DIExpression(), !1734)
    #dbg_value(ptr %mat, !1735, !DIExpression(), !1734)
    #dbg_value(ptr %bs_mat, !1736, !DIExpression(), !1734)
    #dbg_value(ptr %acc, !1737, !DIExpression(), !1734)
    #dbg_value(i32 10, !1738, !DIExpression(), !1734)
    #dbg_value(i32 78, !1739, !DIExpression(), !1734)
    #dbg_value(i32 %bs_mat_cols, !1740, !DIExpression(), !1734)
    #dbg_value(i32 0, !1741, !DIExpression(), !1743)
  br label %for.cond, !dbg !1744

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1745
    #dbg_value(i32 %r.0, !1741, !DIExpression(), !1743)
  %exitcond2 = icmp ne i32 %r.0, 10, !dbg !1746
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1748

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1749

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1752
    #dbg_value(i32 %c.0, !1753, !DIExpression(), !1754)
  %exitcond1 = icmp ne i32 %c.0, 78, !dbg !1755
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1749

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1757

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1760
    #dbg_value(i32 %k.0, !1761, !DIExpression(), !1762)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1763
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1757

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1765
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1767
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !1768
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1768
  %mul8 = mul nuw nsw i32 %r.0, 78, !dbg !1769
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1770
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1770
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1770
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1771
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1772
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !1773
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1773
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1774
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1775
    #dbg_value(i32 %add14, !1761, !DIExpression(), !1762)
  br label %for.cond4, !dbg !1776, !llvm.loop !1777

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1779
    #dbg_value(i32 %inc, !1753, !DIExpression(), !1754)
  br label %for.cond1, !dbg !1780, !llvm.loop !1781

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1783
    #dbg_value(i32 %inc18, !1741, !DIExpression(), !1743)
  br label %for.cond, !dbg !1784, !llvm.loop !1785

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1787
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1788 {
entry:
    #dbg_value(ptr %p, !1789, !DIExpression(), !1790)
    #dbg_value(ptr %P1, !1791, !DIExpression(), !1790)
    #dbg_value(ptr %V, !1792, !DIExpression(), !1790)
    #dbg_value(ptr %acc, !1793, !DIExpression(), !1790)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 5, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 10, i32 noundef 1) #6, !dbg !1794
  ret void, !dbg !1795
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1796 {
entry:
    #dbg_value(i32 5, !1797, !DIExpression(), !1798)
    #dbg_value(ptr %bs_mat, !1799, !DIExpression(), !1798)
    #dbg_value(ptr %mat, !1800, !DIExpression(), !1798)
    #dbg_value(ptr %acc, !1801, !DIExpression(), !1798)
    #dbg_value(i32 78, !1802, !DIExpression(), !1798)
    #dbg_value(i32 78, !1803, !DIExpression(), !1798)
    #dbg_value(i32 10, !1804, !DIExpression(), !1798)
    #dbg_value(i32 1, !1805, !DIExpression(), !1798)
    #dbg_value(i32 0, !1806, !DIExpression(), !1798)
    #dbg_value(i32 0, !1807, !DIExpression(), !1809)
  br label %for.cond, !dbg !1810

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 78, %entry ], !dbg !1811
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1811
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1812
    #dbg_value(i32 %r.0, !1807, !DIExpression(), !1809)
    #dbg_value(i32 %bs_mat_entries_used.0, !1806, !DIExpression(), !1798)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !1813
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1815

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1816
  br label %for.cond1, !dbg !1816

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1798
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1819
    #dbg_value(i32 %c.0, !1820, !DIExpression(), !1821)
    #dbg_value(i32 %bs_mat_entries_used.1, !1806, !DIExpression(), !1798)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1822
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1816

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1824

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1827
    #dbg_value(i32 %k.0, !1828, !DIExpression(), !1829)
  %exitcond = icmp ne i32 %k.0, 10, !dbg !1830
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1824

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !1832
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1832
  %mul8 = mul nuw nsw i32 %k.0, 78, !dbg !1834
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1835
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1835
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1835
  %mul9 = mul nuw nsw i32 %r.0, 10, !dbg !1836
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1837
  %add.ptr12.idx = mul nuw nsw i32 %add10, 40, !dbg !1838
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1838
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1839
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1840
    #dbg_value(i32 %add13, !1828, !DIExpression(), !1829)
  br label %for.cond4, !dbg !1841, !llvm.loop !1842

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1806, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1798)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1844
    #dbg_value(i32 %add14, !1806, !DIExpression(), !1798)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1845
    #dbg_value(i32 %inc, !1820, !DIExpression(), !1821)
  br label %for.cond1, !dbg !1846, !llvm.loop !1847

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1798
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1849
    #dbg_value(i32 %inc18, !1807, !DIExpression(), !1809)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1850
  br label %for.cond, !dbg !1850, !llvm.loop !1851

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1853
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1854 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1855, !DIExpression(), !1856)
    #dbg_value(ptr %sm, !1857, !DIExpression(), !1856)
    #dbg_value(ptr %smlen, !1858, !DIExpression(), !1856)
    #dbg_value(ptr %m, !1859, !DIExpression(), !1856)
    #dbg_value(i32 %mlen, !1860, !DIExpression(), !1856)
    #dbg_value(ptr %csk, !1861, !DIExpression(), !1856)
    #dbg_value(i32 0, !1862, !DIExpression(), !1856)
    #dbg_value(i32 454, !1863, !DIExpression(), !1856)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1864
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1865
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1866
    #dbg_value(ptr %siglen, !1867, !DIExpression(DW_OP_deref), !1856)
  %call2 = call i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1868
    #dbg_value(i32 %call2, !1862, !DIExpression(), !1856)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1869
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1867, !DIExpression(), !1856)
  %cmp3.not = icmp eq i32 %0, 454
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1871
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1871

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1872
    #dbg_value(i32 %1, !1867, !DIExpression(), !1856)
  %add = add i32 %1, %mlen, !dbg !1874
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1875
  br label %err, !dbg !1876

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1877
    #dbg_value(i32 %2, !1867, !DIExpression(), !1856)
  %add5 = add i32 %2, %mlen, !dbg !1878
  store i32 %add5, ptr %smlen, align 4, !dbg !1879
  br label %err, !dbg !1880

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1881, !1882)
  ret i32 %call2, !dbg !1883
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1884 {
entry:
    #dbg_value(ptr %p, !1885, !DIExpression(), !1886)
    #dbg_value(ptr %m, !1887, !DIExpression(), !1886)
    #dbg_value(ptr %mlen, !1888, !DIExpression(), !1886)
    #dbg_value(ptr %sm, !1889, !DIExpression(), !1886)
    #dbg_value(i32 %smlen, !1890, !DIExpression(), !1886)
    #dbg_value(ptr %pk, !1891, !DIExpression(), !1886)
    #dbg_value(i32 454, !1892, !DIExpression(), !1886)
  %cmp = icmp ult i32 %smlen, 454, !dbg !1893
  br i1 %cmp, label %return, label %if.end, !dbg !1893

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1895
  %sub = add i32 %smlen, -454, !dbg !1896
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1897
    #dbg_value(i32 %call, !1898, !DIExpression(), !1886)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1899
  br i1 %cmp1, label %if.then2, label %return, !dbg !1899

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -454, !dbg !1901
  store i32 %sub3, ptr %mlen, align 4, !dbg !1903
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1904
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1905
  br label %return, !dbg !1906

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1886
  ret i32 %retval.0, !dbg !1907
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1908 {
entry:
  %tEnc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [156 x i8], align 1
  %s = alloca [860 x i8], align 1
  %pk = alloca [18705 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1911, !DIExpression(), !1912)
    #dbg_value(ptr %m, !1913, !DIExpression(), !1912)
    #dbg_value(i32 %mlen, !1914, !DIExpression(), !1912)
    #dbg_value(ptr %sig, !1915, !DIExpression(), !1912)
    #dbg_value(ptr %cpk, !1916, !DIExpression(), !1912)
    #dbg_declare(ptr %tEnc, !1917, !DIExpression(), !1918)
    #dbg_declare(ptr %t, !1919, !DIExpression(), !1920)
    #dbg_declare(ptr %y, !1921, !DIExpression(), !1925)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(156) %y, i8 0, i32 156, i1 false), !dbg !1925
    #dbg_declare(ptr %s, !1926, !DIExpression(), !1927)
    #dbg_declare(ptr %pk, !1928, !DIExpression(), !1929)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(149640) %pk, i8 0, i32 149640, i1 false), !dbg !1929
    #dbg_declare(ptr %tmp, !1930, !DIExpression(), !1934)
    #dbg_value(i32 78, !1935, !DIExpression(), !1912)
    #dbg_value(i32 86, !1936, !DIExpression(), !1912)
    #dbg_value(i32 10, !1937, !DIExpression(), !1912)
    #dbg_value(i32 39, !1938, !DIExpression(), !1912)
    #dbg_value(i32 454, !1939, !DIExpression(), !1912)
    #dbg_value(i32 32, !1940, !DIExpression(), !1912)
    #dbg_value(i32 24, !1941, !DIExpression(), !1912)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1942
    #dbg_value(i32 0, !1943, !DIExpression(), !1912)
    #dbg_value(ptr %pk, !1944, !DIExpression(), !1912)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 123240, !dbg !1945
    #dbg_value(ptr %add.ptr, !1946, !DIExpression(), !1912)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1947
    #dbg_value(ptr %add.ptr2, !1948, !DIExpression(), !1912)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1949
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1950
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !1951
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !1952
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !1953
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !1954
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 860) #6, !dbg !1955
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1956
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 78) #8, !dbg !1957
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1959
  %. = zext i1 %cmp21 to i32, !dbg !1912
  ret i32 %., !dbg !1960
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1961 {
entry:
    #dbg_value(ptr %p, !1962, !DIExpression(), !1963)
    #dbg_value(ptr %cpk, !1964, !DIExpression(), !1963)
    #dbg_value(ptr %pk, !1965, !DIExpression(), !1963)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1966
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1967
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1968
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 36, i32 noundef 78) #6, !dbg !1969
  ret i32 0, !dbg !1970
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1971 {
entry:
  %SPS = alloca [500 x i64], align 8
  %zero = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !1974, !DIExpression(), !1975)
    #dbg_value(ptr %s, !1976, !DIExpression(), !1975)
    #dbg_value(ptr %P1, !1977, !DIExpression(), !1975)
    #dbg_value(ptr %P2, !1978, !DIExpression(), !1975)
    #dbg_value(ptr %P3, !1979, !DIExpression(), !1975)
    #dbg_value(ptr %eval, !1980, !DIExpression(), !1975)
    #dbg_declare(ptr %SPS, !1981, !DIExpression(), !1985)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4000) %SPS, i8 0, i32 4000, i1 false), !dbg !1985
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1986
    #dbg_declare(ptr %zero, !1987, !DIExpression(), !1988)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(78) %zero, i8 0, i32 78, i1 false), !dbg !1988
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1989
  ret void, !dbg !1990
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !1991 {
entry:
  %PS = alloca [4300 x i64], align 8
    #dbg_value(ptr %p, !1994, !DIExpression(), !1995)
    #dbg_value(ptr %P1, !1996, !DIExpression(), !1995)
    #dbg_value(ptr %P2, !1997, !DIExpression(), !1995)
    #dbg_value(ptr %P3, !1998, !DIExpression(), !1995)
    #dbg_value(ptr %s, !1999, !DIExpression(), !1995)
    #dbg_value(ptr %SPS, !2000, !DIExpression(), !1995)
    #dbg_declare(ptr %PS, !2001, !DIExpression(), !2005)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(34400) %PS, i8 0, i32 34400, i1 false), !dbg !2005
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 10, ptr noundef nonnull %PS) #6, !dbg !2006
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 78, i32 noundef 10, i32 noundef 86, ptr noundef %SPS) #6, !dbg !2007
  ret void, !dbg !2008
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2009 {
entry:
  %accumulator = alloca [68800 x i64], align 8
    #dbg_value(ptr %P1, !2012, !DIExpression(), !2013)
    #dbg_value(ptr %P2, !2014, !DIExpression(), !2013)
    #dbg_value(ptr %P3, !2015, !DIExpression(), !2013)
    #dbg_value(ptr %S, !2016, !DIExpression(), !2013)
    #dbg_value(i32 78, !2017, !DIExpression(), !2013)
    #dbg_value(i32 78, !2018, !DIExpression(), !2013)
    #dbg_value(i32 8, !2019, !DIExpression(), !2013)
    #dbg_value(i32 10, !2020, !DIExpression(), !2013)
    #dbg_value(ptr %PS, !2021, !DIExpression(), !2013)
    #dbg_value(i32 86, !2022, !DIExpression(), !2013)
    #dbg_value(i32 5, !2023, !DIExpression(), !2013)
    #dbg_declare(ptr %accumulator, !2024, !DIExpression(), !2028)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(550400) %accumulator, i8 0, i32 550400, i1 false), !dbg !2028
    #dbg_value(i32 0, !2029, !DIExpression(), !2013)
    #dbg_value(i32 0, !2030, !DIExpression(), !2032)
  br label %for.cond, !dbg !2033

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 78, %entry ], !dbg !2034
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2034
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2035
    #dbg_value(i32 %row.0, !2030, !DIExpression(), !2032)
    #dbg_value(i32 %P1_used.0, !2029, !DIExpression(), !2013)
  %exitcond4 = icmp ne i32 %row.0, 78, !dbg !2036
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2038

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2039
  br label %for.cond2, !dbg !2039

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2042

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2013
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2044
    #dbg_value(i32 %j.0, !2045, !DIExpression(), !2046)
    #dbg_value(i32 %P1_used.1, !2029, !DIExpression(), !2013)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2047
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2039

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2013
  br label %for.cond21, !dbg !2049

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2051

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2054
    #dbg_value(i32 %col.0, !2055, !DIExpression(), !2056)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2057
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2051

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 40, !dbg !2059
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2059
  %mul8 = mul nuw nsw i32 %row.0, 10, !dbg !2061
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2062
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2063
  %mul11 = mul nuw nsw i32 %col.0, 86, !dbg !2064
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2065
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2065
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2065
  %conv = zext i8 %2 to i32, !dbg !2065
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2066
  %add.ptr15.idx = mul nuw nsw i32 %add13, 40, !dbg !2067
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2067
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2068
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2069
    #dbg_value(i32 %inc, !2055, !DIExpression(), !2056)
  br label %for.cond5, !dbg !2070, !llvm.loop !2071

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2029, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2013)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2073
    #dbg_value(i32 %inc16, !2029, !DIExpression(), !2013)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2074
    #dbg_value(i32 %inc18, !2045, !DIExpression(), !2046)
  br label %for.cond2, !dbg !2075, !llvm.loop !2076

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2078
    #dbg_value(i32 %j20.0, !2079, !DIExpression(), !2080)
  %exitcond3 = icmp ne i32 %j20.0, 8, !dbg !2081
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2049

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2083

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2086
    #dbg_value(i32 %col25.0, !2087, !DIExpression(), !2088)
  %exitcond2 = icmp ne i32 %col25.0, 10, !dbg !2089
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2083

for.body29:                                       ; preds = %for.cond26
  %mul30 = shl nuw nsw i32 %row.0, 3, !dbg !2091
  %add31 = or disjoint i32 %mul30, %j20.0, !dbg !2093
  %add.ptr33.idx = mul nuw nsw i32 %add31, 40, !dbg !2094
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2094
  %mul35 = mul nuw nsw i32 %row.0, 10, !dbg !2095
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2096
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2097
  %mul38 = mul nuw nsw i32 %col25.0, 86, !dbg !2098
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2099
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2099
  %arrayidx41 = getelementptr i8, ptr %4, i32 78, !dbg !2099
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2099
  %conv42 = zext i8 %5 to i32, !dbg !2099
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2100
  %add.ptr45.idx = mul nuw nsw i32 %add43, 40, !dbg !2101
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2101
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2102
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2103
    #dbg_value(i32 %inc47, !2087, !DIExpression(), !2088)
  br label %for.cond26, !dbg !2104, !llvm.loop !2105

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2107
    #dbg_value(i32 %inc50, !2079, !DIExpression(), !2080)
  br label %for.cond21, !dbg !2108, !llvm.loop !2109

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2111
    #dbg_value(i32 %inc53, !2030, !DIExpression(), !2032)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2112
  br label %for.cond, !dbg !2112, !llvm.loop !2113

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 8, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2115
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2115
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 78, %for.cond56.preheader ], !dbg !2116
    #dbg_value(i32 %row55.0, !2117, !DIExpression(), !2118)
    #dbg_value(i32 %P3_used.0, !2119, !DIExpression(), !2013)
  %exitcond9 = icmp ne i32 %row55.0, 86, !dbg !2120
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2042

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2122
  br label %for.cond61, !dbg !2122

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2125

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2013
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2126
    #dbg_value(i32 %j60.0, !2127, !DIExpression(), !2128)
    #dbg_value(i32 %P3_used.1, !2119, !DIExpression(), !2013)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2129
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2122

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2131

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2134
    #dbg_value(i32 %col65.0, !2135, !DIExpression(), !2136)
  %exitcond5 = icmp ne i32 %col65.0, 10, !dbg !2137
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2131

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 40, !dbg !2139
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2139
  %mul73 = mul nuw nsw i32 %row55.0, 10, !dbg !2141
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2142
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2143
  %mul76 = mul nuw nsw i32 %col65.0, 86, !dbg !2144
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2145
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2145
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2145
  %conv79 = zext i8 %8 to i32, !dbg !2145
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2146
  %add.ptr82.idx = mul nuw nsw i32 %add80, 40, !dbg !2147
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2147
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2148
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2149
    #dbg_value(i32 %inc84, !2135, !DIExpression(), !2136)
  br label %for.cond66, !dbg !2150, !llvm.loop !2151

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2119, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2013)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2153
    #dbg_value(i32 %inc86, !2119, !DIExpression(), !2013)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2154
    #dbg_value(i32 %inc88, !2127, !DIExpression(), !2128)
  br label %for.cond61, !dbg !2155, !llvm.loop !2156

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2013
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2158
    #dbg_value(i32 %inc91, !2117, !DIExpression(), !2118)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2159
  br label %for.cond56, !dbg !2159, !llvm.loop !2160

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2013
    #dbg_value(i32 %i.0, !2162, !DIExpression(), !2013)
  %exitcond10 = icmp ne i32 %i.0, 860, !dbg !2163
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2125

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 640, !dbg !2164
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2164
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 40, !dbg !2166
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2166
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2167
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2168
    #dbg_value(i32 %inc102, !2162, !DIExpression(), !2013)
  br label %while.cond, !dbg !2125, !llvm.loop !2169

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2171
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2172 {
entry:
  %accumulator = alloca [8000 x i64], align 8
    #dbg_value(ptr %PS, !2175, !DIExpression(), !2176)
    #dbg_value(ptr %S, !2177, !DIExpression(), !2176)
    #dbg_value(i32 78, !2178, !DIExpression(), !2176)
    #dbg_value(i32 10, !2179, !DIExpression(), !2176)
    #dbg_value(i32 86, !2180, !DIExpression(), !2176)
    #dbg_value(ptr %SPS, !2181, !DIExpression(), !2176)
    #dbg_declare(ptr %accumulator, !2182, !DIExpression(), !2186)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64000) %accumulator, i8 0, i32 64000, i1 false), !dbg !2186
    #dbg_value(i32 5, !2187, !DIExpression(), !2176)
    #dbg_value(i32 0, !2188, !DIExpression(), !2190)
  br label %for.cond, !dbg !2191

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2192
    #dbg_value(i32 %row.0, !2188, !DIExpression(), !2190)
  %exitcond2 = icmp ne i32 %row.0, 10, !dbg !2193
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2195

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2196

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2199

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2200
    #dbg_value(i32 %j.0, !2201, !DIExpression(), !2202)
  %exitcond1 = icmp ne i32 %j.0, 86, !dbg !2203
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2196

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2205

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2208
    #dbg_value(i32 %col.0, !2209, !DIExpression(), !2210)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2211
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2205

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 10, !dbg !2213
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2215
  %add.ptr.idx = mul nuw nsw i32 %add7, 40, !dbg !2216
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2216
  %mul9 = mul nuw nsw i32 %row.0, 10, !dbg !2217
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2218
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2219
  %mul12 = mul nuw nsw i32 %row.0, 86, !dbg !2220
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2221
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2221
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2221
  %conv = zext i8 %1 to i32, !dbg !2221
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2222
  %add.ptr16.idx = mul nuw nsw i32 %add14, 40, !dbg !2223
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2223
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2224
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2225
    #dbg_value(i32 %add17, !2209, !DIExpression(), !2210)
  br label %for.cond4, !dbg !2226, !llvm.loop !2227

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2229
    #dbg_value(i32 %inc, !2201, !DIExpression(), !2202)
  br label %for.cond1, !dbg !2230, !llvm.loop !2231

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2233
    #dbg_value(i32 %inc21, !2188, !DIExpression(), !2190)
  br label %for.cond, !dbg !2234, !llvm.loop !2235

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2176
    #dbg_value(i32 %i.0, !2237, !DIExpression(), !2176)
  %exitcond3 = icmp ne i32 %i.0, 100, !dbg !2238
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2199

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 640, !dbg !2239
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2239
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 40, !dbg !2241
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2241
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2242
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2243
    #dbg_value(i32 %inc32, !2237, !DIExpression(), !2176)
  br label %while.cond, !dbg !2199, !llvm.loop !2244

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2246
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2247 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2250, !DIExpression(), !2251)
    #dbg_value(ptr %in, !2252, !DIExpression(), !2251)
    #dbg_value(ptr %acc, !2253, !DIExpression(), !2251)
    #dbg_value(i32 0, !2254, !DIExpression(), !2256)
  br label %for.cond, !dbg !2257

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2258
    #dbg_value(i32 %i.0, !2254, !DIExpression(), !2256)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2259
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2261

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2262
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2262
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2264
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2265
  %xor = xor i64 %1, %0, !dbg !2265
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2265
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2266
    #dbg_value(i32 %inc, !2254, !DIExpression(), !2256)
  br label %for.cond, !dbg !2267, !llvm.loop !2268

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2270
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2271 {
entry:
    #dbg_value(i32 5, !2274, !DIExpression(), !2275)
    #dbg_value(ptr %bins, !2276, !DIExpression(), !2275)
    #dbg_value(ptr %out, !2277, !DIExpression(), !2275)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 200, !dbg !2278
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2279
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2280
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 440, !dbg !2281
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2282
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2283
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2284
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2285
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2286
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2287
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2288
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2289
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2290
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2291
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2292
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2293
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2294
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2295
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2296
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2297
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2298
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2299
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2300
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2301
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2302
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2303
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2304
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2305
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2306
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2307
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2308
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2309
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2310
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2311
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2312
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2313
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2314
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2315
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2316
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2317
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2318
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2319
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2320
  call fastcc void @m_vec_copy(i32 noundef 5, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2321
  ret void, !dbg !2322
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2323 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2324, !DIExpression(), !2325)
    #dbg_value(ptr %in, !2326, !DIExpression(), !2325)
    #dbg_value(ptr %acc, !2327, !DIExpression(), !2325)
    #dbg_value(i64 1229782938247303441, !2328, !DIExpression(), !2325)
    #dbg_value(i32 0, !2329, !DIExpression(), !2331)
  br label %for.cond, !dbg !2332

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2333
    #dbg_value(i32 %i.0, !2329, !DIExpression(), !2331)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2334
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2336

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2337
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2337
  %and = and i64 %0, 1229782938247303441, !dbg !2339
    #dbg_value(i64 %and, !2340, !DIExpression(), !2341)
  %xor = lshr i64 %0, 1, !dbg !2342
  %shr = and i64 %xor, 8608480567731124087, !dbg !2342
  %mul = mul nuw i64 %and, 9, !dbg !2343
  %xor2 = xor i64 %shr, %mul, !dbg !2344
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2345
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2346
  %xor4 = xor i64 %1, %xor2, !dbg !2346
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2346
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2347
    #dbg_value(i32 %inc, !2329, !DIExpression(), !2331)
  br label %for.cond, !dbg !2348, !llvm.loop !2349

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2351
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2352 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2353, !DIExpression(), !2354)
    #dbg_value(ptr %in, !2355, !DIExpression(), !2354)
    #dbg_value(ptr %acc, !2356, !DIExpression(), !2354)
    #dbg_value(i64 -8608480567731124088, !2357, !DIExpression(), !2354)
    #dbg_value(i32 0, !2358, !DIExpression(), !2360)
  br label %for.cond, !dbg !2361

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2362
    #dbg_value(i32 %i.0, !2358, !DIExpression(), !2360)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2363
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2365

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2366
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2366
    #dbg_value(i64 %0, !2368, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2369)
  %xor = shl i64 %0, 1, !dbg !2370
  %shl = and i64 %xor, -1229782938247303442, !dbg !2370
  %and = lshr i64 %0, 3, !dbg !2371
  %shr = and i64 %and, 1229782938247303441, !dbg !2371
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2372
  %xor2 = xor i64 %shl, %mul, !dbg !2373
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2374
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2375
  %xor4 = xor i64 %1, %xor2, !dbg !2375
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2375
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2376
    #dbg_value(i32 %inc, !2358, !DIExpression(), !2360)
  br label %for.cond, !dbg !2377, !llvm.loop !2378

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2380
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2381 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2382, !DIExpression(), !2383)
    #dbg_value(ptr %in, !2384, !DIExpression(), !2383)
    #dbg_value(ptr %out, !2385, !DIExpression(), !2383)
    #dbg_value(i32 0, !2386, !DIExpression(), !2388)
  br label %for.cond, !dbg !2389

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2390
    #dbg_value(i32 %i.0, !2386, !DIExpression(), !2388)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2391
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2393

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2394
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2394
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2396
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2397
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2398
    #dbg_value(i32 %inc, !2386, !DIExpression(), !2388)
  br label %for.cond, !dbg !2399, !llvm.loop !2400

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2402
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2403 {
entry:
    #dbg_value(ptr %p, !2434, !DIExpression(), !2435)
    #dbg_value(ptr %in, !2436, !DIExpression(), !2435)
    #dbg_value(ptr %out, !2437, !DIExpression(), !2435)
    #dbg_value(i32 %size, !2438, !DIExpression(), !2435)
    #dbg_value(i32 5, !2439, !DIExpression(), !2435)
    #dbg_value(i32 0, !2440, !DIExpression(), !2435)
    #dbg_value(i32 0, !2441, !DIExpression(), !2443)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2444
  br label %for.cond, !dbg !2444

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2445
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2445
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2446
    #dbg_value(i32 %r.0, !2441, !DIExpression(), !2443)
    #dbg_value(i32 %m_vecs_stored.0, !2440, !DIExpression(), !2435)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2447
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2449

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2450
  br label %for.cond1, !dbg !2450

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2435
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2453
    #dbg_value(i32 %c.0, !2454, !DIExpression(), !2455)
    #dbg_value(i32 %m_vecs_stored.1, !2440, !DIExpression(), !2435)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2456
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2450

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2458
  %add = add nsw i32 %mul, %c.0, !dbg !2460
  %add.ptr.idx = mul nsw i32 %add, 40, !dbg !2461
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2461
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2462
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2462
  call fastcc void @m_vec_copy.17(i32 noundef 5, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2463
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2464
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2464

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2466
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2468
  %add.ptr11.idx = mul nsw i32 %add9, 40, !dbg !2469
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2469
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2470
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2470
  call fastcc void @m_vec_add.18(i32 noundef 5, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2471
  br label %for.inc, !dbg !2472

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2440, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2435)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2473
    #dbg_value(i32 %inc, !2440, !DIExpression(), !2435)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2474
    #dbg_value(i32 %inc14, !2454, !DIExpression(), !2455)
  br label %for.cond1, !dbg !2475, !llvm.loop !2476

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2435
  %inc16 = add nuw i32 %r.0, 1, !dbg !2478
    #dbg_value(i32 %inc16, !2441, !DIExpression(), !2443)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2479
  br label %for.cond, !dbg !2479, !llvm.loop !2480

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2482
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2483 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2484, !DIExpression(), !2485)
    #dbg_value(ptr %in, !2486, !DIExpression(), !2485)
    #dbg_value(ptr %out, !2487, !DIExpression(), !2485)
    #dbg_value(i32 0, !2488, !DIExpression(), !2490)
  br label %for.cond, !dbg !2491

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2492
    #dbg_value(i32 %i.0, !2488, !DIExpression(), !2490)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2493
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2495

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2496
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2496
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2498
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2499
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2500
    #dbg_value(i32 %inc, !2488, !DIExpression(), !2490)
  br label %for.cond, !dbg !2501, !llvm.loop !2502

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2504
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2505 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2506, !DIExpression(), !2507)
    #dbg_value(ptr %in, !2508, !DIExpression(), !2507)
    #dbg_value(ptr %acc, !2509, !DIExpression(), !2507)
    #dbg_value(i32 0, !2510, !DIExpression(), !2512)
  br label %for.cond, !dbg !2513

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2514
    #dbg_value(i32 %i.0, !2510, !DIExpression(), !2512)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2515
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2517

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2518
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2518
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2520
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2521
  %xor = xor i64 %1, %0, !dbg !2521
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2521
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2522
    #dbg_value(i32 %inc, !2510, !DIExpression(), !2512)
  br label %for.cond, !dbg !2523, !llvm.loop !2524

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2526
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2527 {
entry:
  %Ar = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2530, !DIExpression(), !2531)
    #dbg_value(ptr %A, !2532, !DIExpression(), !2531)
    #dbg_value(ptr %y, !2533, !DIExpression(), !2531)
    #dbg_value(ptr %r, !2534, !DIExpression(), !2531)
    #dbg_value(ptr %x, !2535, !DIExpression(), !2531)
    #dbg_value(i32 %k, !2536, !DIExpression(), !2531)
    #dbg_value(i32 %o, !2537, !DIExpression(), !2531)
    #dbg_value(i32 %m, !2538, !DIExpression(), !2531)
    #dbg_value(i32 %A_cols, !2539, !DIExpression(), !2531)
    #dbg_value(i32 0, !2540, !DIExpression(), !2542)
  %0 = mul nsw i32 %o, %k, !dbg !2543
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2543
  br label %for.cond, !dbg !2543

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2544
    #dbg_value(i32 %i.0, !2540, !DIExpression(), !2542)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2545
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2547

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2548
  br label %for.cond3, !dbg !2548

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2550
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2550
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2552
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2553
  %inc = add nuw i32 %i.0, 1, !dbg !2554
    #dbg_value(i32 %inc, !2540, !DIExpression(), !2542)
  br label %for.cond, !dbg !2555, !llvm.loop !2556

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2558
    #dbg_value(i32 %i2.0, !2559, !DIExpression(), !2560)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2561
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2548

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2563
  %mul7 = mul nsw i32 %k, %o, !dbg !2565
  %add = add nsw i32 %mul7, 1, !dbg !2566
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2567
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2568
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2568
  store i8 0, ptr %arrayidx10, align 1, !dbg !2569
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2570
    #dbg_value(i32 %inc12, !2559, !DIExpression(), !2560)
  br label %for.cond3, !dbg !2571, !llvm.loop !2572

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2574
  %add15 = add nsw i32 %mul14, 1, !dbg !2575
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2576
    #dbg_value(i32 0, !2577, !DIExpression(), !2579)
  br label %for.cond17, !dbg !2580

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2581
    #dbg_value(i32 %i16.0, !2577, !DIExpression(), !2579)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2582
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2584

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2585
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2585
  %arrayidx21 = getelementptr inbounds nuw [78 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2587
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2587
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2588
  %mul22 = mul nsw i32 %k, %o, !dbg !2589
  %mul23 = mul nsw i32 %k, %o, !dbg !2590
  %add24 = add nsw i32 %mul23, 1, !dbg !2591
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2592
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2593
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2593
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2594
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2595
    #dbg_value(i32 %inc29, !2577, !DIExpression(), !2579)
  br label %for.cond17, !dbg !2596, !llvm.loop !2597

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2599
  %add32 = add nsw i32 %mul31, 1, !dbg !2600
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2601
    #dbg_value(i8 0, !2602, !DIExpression(), !2531)
    #dbg_value(i32 0, !2603, !DIExpression(), !2605)
  %6 = add i32 %A_cols, -1, !dbg !2606
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2606
  br label %for.cond34, !dbg !2606

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2531
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2607
    #dbg_value(i32 %i33.0, !2603, !DIExpression(), !2605)
    #dbg_value(i8 %full_rank.0, !2602, !DIExpression(), !2531)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2608
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2610

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2531)
  %sub37 = add nsw i32 %m, -1, !dbg !2611
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2613
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2614
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2614
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2614
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2531)
  %or12 = or i8 %full_rank.0, %8, !dbg !2615
    #dbg_value(i8 %or12, !2602, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2531)
    #dbg_value(i8 %or12, !2602, !DIExpression(), !2531)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2616
    #dbg_value(i32 %inc44, !2603, !DIExpression(), !2605)
  br label %for.cond34, !dbg !2617, !llvm.loop !2618

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2531
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2620
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2620

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2622

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2622, !llvm.loop !2624

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2626
    #dbg_value(i32 %row.0, !2627, !DIExpression(), !2628)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2629
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2622

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2631, !DIExpression(), !2531)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2632
  %div = sdiv i32 32, %sub54, !dbg !2632
  %add55 = add nsw i32 %row.0, %div, !dbg !2632
  %mul56 = mul nsw i32 %k, %o, !dbg !2632
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2632
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2632

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2632
  %div60 = sdiv i32 32, %sub59, !dbg !2632
  %add61 = add nsw i32 %row.0, %div60, !dbg !2632
  br label %cond.end, !dbg !2632

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2632
  br label %cond.end, !dbg !2632

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2632
    #dbg_value(i32 %cond, !2634, !DIExpression(), !2531)
    #dbg_value(i32 %row.0, !2635, !DIExpression(), !2637)
  br label %for.cond63, !dbg !2638

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2639
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2640
    #dbg_value(i32 %col.0, !2635, !DIExpression(), !2637)
    #dbg_value(i8 %finished.0, !2631, !DIExpression(), !2531)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2641
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2643

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2644
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2646
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2646
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2646
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2647
  %not = xor i8 %finished.0, -1, !dbg !2648
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2649, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2531)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2650
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2651
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2651
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2651
  %13 = and i8 %12, %not, !dbg !2652
  %and801 = and i8 %13, %call70, !dbg !2652
    #dbg_value(i8 %and801, !2653, !DIExpression(), !2654)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2655
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2656
  %xor2 = xor i8 %14, %and801, !dbg !2656
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2656
    #dbg_value(i32 0, !2657, !DIExpression(), !2659)
  br label %for.cond87, !dbg !2660

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2661
    #dbg_value(i32 %i86.0, !2657, !DIExpression(), !2659)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2662
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2664

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2665
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2667
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2667
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2667
  %conv94 = zext i8 %16 to i64, !dbg !2668
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2669
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2670
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2671
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2671
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2671
  %conv99 = zext i8 %18 to i64, !dbg !2672
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2673
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2674
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2675
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2676
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2677
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2677
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2677
  %conv106 = zext i8 %20 to i64, !dbg !2678
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2679
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2680
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2681
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2682
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2683
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2683
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2683
  %conv113 = zext i8 %22 to i64, !dbg !2684
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2685
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2686
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2687
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2688
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2689
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2689
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2689
  %conv120 = zext i8 %24 to i64, !dbg !2690
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2691
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2692
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2693
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2694
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2695
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2695
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2695
  %conv127 = zext i8 %26 to i64, !dbg !2696
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2697
  %xor129 = xor i64 %xor122, %shl128, !dbg !2698
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2699
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2700
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2701
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2701
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2701
  %conv134 = zext i8 %28 to i64, !dbg !2702
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2703
  %xor136 = xor i64 %xor129, %shl135, !dbg !2704
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2705
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2706
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2707
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2707
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2707
  %conv141 = zext i8 %30 to i64, !dbg !2708
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2709
  %xor143 = xor i64 %xor136, %shl142, !dbg !2710
    #dbg_value(i64 %xor143, !2711, !DIExpression(), !2712)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2713
    #dbg_value(i64 %call144, !2711, !DIExpression(), !2712)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2714
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2714
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2715
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2715
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2716
  %33 = trunc i64 %call144 to i8, !dbg !2716
  %34 = and i8 %33, 15, !dbg !2716
  %conv152 = xor i8 %34, %32, !dbg !2716
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2716
  %shr = lshr i64 %call144, 8, !dbg !2717
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2718
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2718
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2719
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2719
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2720
  %37 = trunc i64 %shr to i8, !dbg !2720
  %38 = and i8 %37, 15, !dbg !2720
  %conv161 = xor i8 %38, %36, !dbg !2720
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2720
  %shr162 = lshr i64 %call144, 16, !dbg !2721
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2722
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2722
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2723
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2723
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2724
  %41 = trunc i64 %shr162 to i8, !dbg !2724
  %42 = and i8 %41, 15, !dbg !2724
  %conv171 = xor i8 %42, %40, !dbg !2724
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2724
  %shr172 = lshr i64 %call144, 24, !dbg !2725
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2726
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2726
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2727
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2727
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2728
  %45 = trunc i64 %shr172 to i8, !dbg !2728
  %46 = and i8 %45, 15, !dbg !2728
  %conv181 = xor i8 %46, %44, !dbg !2728
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2728
  %shr182 = lshr i64 %call144, 32, !dbg !2729
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2730
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2730
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2731
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2731
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2732
  %49 = trunc i64 %shr182 to i8, !dbg !2732
  %50 = and i8 %49, 15, !dbg !2732
  %conv191 = xor i8 %50, %48, !dbg !2732
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2732
  %shr192 = lshr i64 %call144, 40, !dbg !2733
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2734
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2734
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2735
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2735
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2736
  %53 = trunc i64 %shr192 to i8, !dbg !2736
  %54 = and i8 %53, 15, !dbg !2736
  %conv201 = xor i8 %54, %52, !dbg !2736
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2736
  %shr202 = lshr i64 %call144, 48, !dbg !2737
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2738
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2738
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2739
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2739
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2740
  %57 = trunc i64 %shr202 to i8, !dbg !2740
  %58 = and i8 %57, 15, !dbg !2740
  %conv211 = xor i8 %58, %56, !dbg !2740
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2740
  %shr212 = lshr i64 %call144, 56, !dbg !2741
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2742
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2742
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2743
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2743
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2744
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2744
  %conv221 = xor i8 %60, %61, !dbg !2744
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2744
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2745
    #dbg_value(i32 %add223, !2657, !DIExpression(), !2659)
  br label %for.cond87, !dbg !2746, !llvm.loop !2747

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2531)
  %or2273 = or i8 %finished.0, %call70, !dbg !2749
    #dbg_value(i8 %or2273, !2631, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2531)
    #dbg_value(i8 %or2273, !2631, !DIExpression(), !2531)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2750
    #dbg_value(i32 %inc230, !2635, !DIExpression(), !2637)
  br label %for.cond63, !dbg !2751, !llvm.loop !2752

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2754

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2531
  ret i32 %retval.0, !dbg !2754
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2755 {
entry:
    #dbg_value(ptr %a, !2756, !DIExpression(), !2757)
    #dbg_value(ptr %b, !2758, !DIExpression(), !2757)
    #dbg_value(ptr %c, !2759, !DIExpression(), !2757)
    #dbg_value(i32 %colrow_ab, !2760, !DIExpression(), !2757)
    #dbg_value(i32 %row_a, !2761, !DIExpression(), !2757)
    #dbg_value(i32 1, !2762, !DIExpression(), !2757)
    #dbg_value(i32 0, !2763, !DIExpression(), !2765)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2766
  br label %for.cond, !dbg !2766

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2767
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2756, !DIExpression(), !2757)
    #dbg_value(ptr %c.addr.0, !2759, !DIExpression(), !2757)
    #dbg_value(i32 %i.0, !2763, !DIExpression(), !2765)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2768
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2770

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2771

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2774
    #dbg_value(i32 poison, !2775, !DIExpression(), !2776)
    #dbg_value(ptr %c.addr.1, !2759, !DIExpression(), !2757)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2771

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2777
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2780
    #dbg_value(i32 1, !2775, !DIExpression(), !2776)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2781
    #dbg_value(ptr %incdec.ptr, !2759, !DIExpression(), !2757)
  br label %for.cond1, !dbg !2782, !llvm.loop !2783

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2785
    #dbg_value(i32 %inc5, !2763, !DIExpression(), !2765)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2786
    #dbg_value(ptr %add.ptr6, !2756, !DIExpression(), !2757)
  br label %for.cond, !dbg !2787, !llvm.loop !2788

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2790
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2791 {
entry:
    #dbg_value(i8 %a, !2792, !DIExpression(), !2793)
    #dbg_value(i8 %b, !2794, !DIExpression(), !2793)
  %xor1 = xor i8 %a, %b, !dbg !2795
  ret i8 %xor1, !dbg !2796
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2797 {
entry:
  %_pivot_row = alloca [6 x i64], align 32
  %_pivot_row2 = alloca [6 x i64], align 32
  %packed_A = alloca [468 x i64], align 32
  %temp = alloca [96 x i8], align 1
    #dbg_value(ptr %A, !2801, !DIExpression(), !2802)
    #dbg_value(i32 %nrows, !2803, !DIExpression(), !2802)
    #dbg_value(i32 %ncols, !2804, !DIExpression(), !2802)
    #dbg_declare(ptr %_pivot_row, !2805, !DIExpression(), !2809)
    #dbg_declare(ptr %_pivot_row2, !2810, !DIExpression(), !2811)
    #dbg_declare(ptr %packed_A, !2812, !DIExpression(), !2816)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(3744) %packed_A, i8 0, i32 3744, i1 false), !dbg !2816
  %add = add nsw i32 %ncols, 15, !dbg !2817
  %div = sdiv i32 %add, 16, !dbg !2818
    #dbg_value(i32 %div, !2819, !DIExpression(), !2802)
    #dbg_value(i32 0, !2820, !DIExpression(), !2822)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2823
  br label %for.cond, !dbg !2823

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2824
    #dbg_value(i32 %i.0, !2820, !DIExpression(), !2822)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2825
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2827

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2828
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2828
  br label %for.cond3, !dbg !2828

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2830
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2832
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2833
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2834
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2835
  %inc = add nuw i32 %i.0, 1, !dbg !2836
    #dbg_value(i32 %inc, !2820, !DIExpression(), !2822)
  br label %for.cond, !dbg !2837, !llvm.loop !2838

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2840
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2802
    #dbg_value(i32 %pivot_row.0, !2841, !DIExpression(), !2802)
    #dbg_value(i32 %pivot_col.0, !2842, !DIExpression(), !2843)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2844
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2828

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2846

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2848
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2848
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2848
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2848
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2848
    #dbg_value(i32 %cond, !2850, !DIExpression(), !2851)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2852
    #dbg_value(i32 %cond16, !2853, !DIExpression(), !2851)
    #dbg_value(i32 0, !2854, !DIExpression(), !2856)
  br label %for.cond18, !dbg !2857

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2858
    #dbg_value(i32 %i17.0, !2854, !DIExpression(), !2856)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2859
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2861

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2852
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2852
  br label %for.cond25, !dbg !2862

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2864
  store i64 0, ptr %arrayidx, align 8, !dbg !2866
  %arrayidx21 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2867
  store i64 0, ptr %arrayidx21, align 8, !dbg !2868
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2869
    #dbg_value(i32 %inc23, !2854, !DIExpression(), !2856)
  br label %for.cond18, !dbg !2870, !llvm.loop !2871

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2851
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2851
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2873
    #dbg_value(i32 %row.0, !2874, !DIExpression(), !2873)
    #dbg_value(i8 %pivot.0, !2875, !DIExpression(), !2851)
    #dbg_value(i64 %pivot_is_zero.0, !2876, !DIExpression(), !2851)
  %add27 = add nsw i32 %cond16, 32, !dbg !2877
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2877
  %sub30 = add nsw i32 %nrows, -1, !dbg !2877
  %add32 = add nsw i32 %cond16, 32, !dbg !2877
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2877
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2879
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2862

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2880
  %not = xor i64 %call, -1, !dbg !2882
    #dbg_value(i64 %not, !2883, !DIExpression(), !2884)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2885
    #dbg_value(i64 %call37, !2886, !DIExpression(), !2884)
    #dbg_value(i32 0, !2887, !DIExpression(), !2889)
  br label %for.cond38, !dbg !2890

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2891
    #dbg_value(i32 %j.0, !2887, !DIExpression(), !2889)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2892
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2894

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2895
  %or = or i64 %and, %not, !dbg !2897
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2898
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2899
  %arrayidx43 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2900
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2900
  %and44 = and i64 %or, %0, !dbg !2901
  %arrayidx45 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2902
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2903
  %xor = xor i64 %1, %and44, !dbg !2903
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2903
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2904
    #dbg_value(i32 %inc47, !2887, !DIExpression(), !2889)
  br label %for.cond38, !dbg !2905, !llvm.loop !2906

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2908
    #dbg_value(i8 %call50, !2875, !DIExpression(), !2851)
  %conv = zext nneg i8 %call50 to i32, !dbg !2909
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2910
    #dbg_value(i64 %call51, !2876, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2851)
  %not52 = xor i64 %call51, -1, !dbg !2911
    #dbg_value(i64 %not52, !2876, !DIExpression(), !2851)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2912
    #dbg_value(i32 %inc54, !2874, !DIExpression(), !2873)
  br label %for.cond25, !dbg !2913, !llvm.loop !2914

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2851
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2851
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2916
    #dbg_value(i8 %call56, !2917, !DIExpression(), !2802)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2918
    #dbg_value(i32 %cond, !2919, !DIExpression(), !2921)
  br label %for.cond60, !dbg !2922

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2923
    #dbg_value(i32 %row59.0, !2919, !DIExpression(), !2921)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2924
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2926

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2927

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2929
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2931
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2931
    #dbg_value(i64 %and67, !2932, !DIExpression(), !2933)
    #dbg_value(i64 %and67.demorgan, !2934, !DIExpression(), !2933)
    #dbg_value(i32 0, !2935, !DIExpression(), !2937)
  br label %for.cond69, !dbg !2938

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2939
    #dbg_value(i32 %col.0, !2935, !DIExpression(), !2937)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2940
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2942

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2943
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2945
  %arrayidx75 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2946
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2946
  %and76 = and i64 %and67.demorgan, %2, !dbg !2947
  %arrayidx77 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2948
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2948
  %and78 = and i64 %3, %and67, !dbg !2949
  %add79 = add i64 %and76, %and78, !dbg !2950
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2951
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2952
  %arrayidx82 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2953
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2954
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2955
    #dbg_value(i32 %inc84, !2935, !DIExpression(), !2937)
  br label %for.cond69, !dbg !2956, !llvm.loop !2957

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2959
    #dbg_value(i32 %inc87, !2919, !DIExpression(), !2921)
  br label %for.cond60, !dbg !2960, !llvm.loop !2961

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2963
    #dbg_value(i32 %row89.0, !2964, !DIExpression(), !2965)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2966
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2927

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2968
    #dbg_value(i1 %cmp94, !2970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2971)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2972
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2973
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2974
    #dbg_value(i8 %call100, !2975, !DIExpression(), !2971)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2976
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2977
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2978
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2979
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2980
    #dbg_value(i32 %inc110, !2964, !DIExpression(), !2965)
  br label %for.cond90, !dbg !2981, !llvm.loop !2982

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2802)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2984
  %5 = add i32 %4, 1, !dbg !2984
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2984
    #dbg_value(i32 %conv116, !2841, !DIExpression(), !2802)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2985
    #dbg_value(i32 %inc118, !2842, !DIExpression(), !2843)
  br label %for.cond3, !dbg !2986, !llvm.loop !2987

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2989
    #dbg_value(i32 %i120.0, !2990, !DIExpression(), !2991)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2992
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2846

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2994
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2996
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2997
    #dbg_value(i32 0, !2998, !DIExpression(), !3000)
  br label %for.cond130, !dbg !3001

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3002
    #dbg_value(i32 %j129.0, !2998, !DIExpression(), !3000)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3003
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3005

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [96 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3006
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3006
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3008
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3009
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3009
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3010
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3011
    #dbg_value(i32 %inc139, !2998, !DIExpression(), !3000)
  br label %for.cond130, !dbg !3012, !llvm.loop !3013

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3015
    #dbg_value(i32 %inc142, !2990, !DIExpression(), !2991)
  br label %for.cond121, !dbg !3016, !llvm.loop !3017

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 96) #8, !dbg !3019
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 48) #8, !dbg !3020
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 48) #8, !dbg !3021
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 3744) #8, !dbg !3022
  ret void, !dbg !3023
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3024 {
entry:
    #dbg_value(i8 %a, !3026, !DIExpression(), !3027)
    #dbg_value(i8 0, !3028, !DIExpression(), !3027)
  %0 = icmp ne i8 %a, 0, !dbg !3029
  %conv3 = sext i1 %0 to i8, !dbg !3030
  %1 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3031
  %xor5 = xor i8 %1, %conv3, !dbg !3032
  ret i8 %xor5, !dbg !3033
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3034 {
entry:
    #dbg_value(i8 %a, !3037, !DIExpression(), !3038)
    #dbg_value(i64 %b, !3039, !DIExpression(), !3038)
  %0 = and i8 %a, 1, !dbg !3040
  %conv1 = zext nneg i8 %0 to i64, !dbg !3041
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3042
    #dbg_value(i64 %mul, !3043, !DIExpression(), !3038)
  %1 = and i8 %a, 2, !dbg !3044
  %conv4 = zext nneg i8 %1 to i64, !dbg !3045
  %mul5 = mul i64 %b, %conv4, !dbg !3046
  %xor = xor i64 %mul, %mul5, !dbg !3047
    #dbg_value(i64 %xor, !3043, !DIExpression(), !3038)
  %2 = and i8 %a, 4, !dbg !3048
  %conv8 = zext nneg i8 %2 to i64, !dbg !3049
  %mul9 = mul i64 %b, %conv8, !dbg !3050
  %xor10 = xor i64 %xor, %mul9, !dbg !3051
    #dbg_value(i64 %xor10, !3043, !DIExpression(), !3038)
  %3 = and i8 %a, 8, !dbg !3052
  %conv13 = zext nneg i8 %3 to i64, !dbg !3053
  %mul14 = mul i64 %b, %conv13, !dbg !3054
  %xor15 = xor i64 %xor10, %mul14, !dbg !3055
    #dbg_value(i64 %xor15, !3043, !DIExpression(), !3038)
    #dbg_value(i64 %xor15, !3056, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3038)
  %shr = lshr i64 %xor15, 4, !dbg !3057
  %and16 = lshr i64 %xor15, 3, !dbg !3058
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3058
  %4 = xor i64 %shr, %shr18, !dbg !3059
  %xor19 = xor i64 %4, %xor15, !dbg !3059
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3060
    #dbg_value(i64 %and20, !3061, !DIExpression(), !3038)
  ret i64 %and20, !dbg !3062
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3063 {
entry:
    #dbg_value(ptr %in, !3066, !DIExpression(), !3067)
    #dbg_value(ptr %out, !3068, !DIExpression(), !3067)
    #dbg_value(i32 %ncols, !3069, !DIExpression(), !3067)
    #dbg_value(ptr %out, !3070, !DIExpression(), !3067)
    #dbg_value(i32 0, !3071, !DIExpression(), !3067)
  br label %for.cond, !dbg !3072

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3074
    #dbg_value(i32 %i.0, !3071, !DIExpression(), !3067)
  %add = or disjoint i32 %i.0, 1, !dbg !3075
  %cmp = icmp slt i32 %add, %ncols, !dbg !3077
  br i1 %cmp, label %for.body, label %for.end, !dbg !3078

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3079
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3079
  %add2 = or disjoint i32 %i.0, 1, !dbg !3081
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3082
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3082
  %shl5 = shl i8 %1, 4, !dbg !3083
  %or = or i8 %shl5, %0, !dbg !3084
  %div = lshr exact i32 %i.0, 1, !dbg !3085
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3086
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3087
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3088
    #dbg_value(i32 %add8, !3071, !DIExpression(), !3067)
  br label %for.cond, !dbg !3089, !llvm.loop !3090

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3074
  %2 = and i32 %ncols, -2147483647, !dbg !3092
  %cmp9 = icmp eq i32 %2, 1, !dbg !3092
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3092

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3094
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3094
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3096
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3097
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3098
  br label %if.end, !dbg !3099

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3100
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3101 {
entry:
    #dbg_value(i32 %a, !3104, !DIExpression(), !3105)
    #dbg_value(i32 %b, !3106, !DIExpression(), !3105)
  %xor = xor i32 %a, %b, !dbg !3107
  %0 = icmp sgt i32 %xor, 0, !dbg !3108
  %shr = sext i1 %0 to i64, !dbg !3108
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3109
  %xor1 = xor i64 %1, %shr, !dbg !3110
  ret i64 %xor1, !dbg !3111
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3112 {
entry:
    #dbg_value(i32 %a, !3113, !DIExpression(), !3114)
    #dbg_value(i32 %b, !3115, !DIExpression(), !3114)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3116, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3114)
  %0 = icmp slt i32 %b, %a, !dbg !3117
  %shr = sext i1 %0 to i64, !dbg !3117
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3118
  %xor = xor i64 %1, %shr, !dbg !3119
  ret i64 %xor, !dbg !3120
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3121 {
entry:
    #dbg_value(ptr %in, !3124, !DIExpression(), !3125)
    #dbg_value(i32 %index, !3126, !DIExpression(), !3125)
  %div = sdiv i32 %index, 16, !dbg !3127
    #dbg_value(i32 %div, !3128, !DIExpression(), !3125)
  %rem = srem i32 %index, 16, !dbg !3129
    #dbg_value(i32 %rem, !3130, !DIExpression(), !3125)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3131
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3131
  %mul = shl nsw i32 %rem, 2, !dbg !3132
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3133
  %shr = lshr i64 %0, %sh_prom, !dbg !3133
  %1 = trunc i64 %shr to i8, !dbg !3134
  %conv = and i8 %1, 15, !dbg !3134
  ret i8 %conv, !dbg !3135
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3136 {
entry:
    #dbg_value(i8 %a, !3139, !DIExpression(), !3140)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3141
    #dbg_value(i8 %call, !3142, !DIExpression(), !3140)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3143
    #dbg_value(i8 %call1, !3144, !DIExpression(), !3140)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3145
    #dbg_value(i8 %call2, !3146, !DIExpression(), !3140)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3147
    #dbg_value(i8 %call3, !3148, !DIExpression(), !3140)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3149
    #dbg_value(i8 %call4, !3150, !DIExpression(), !3140)
  ret i8 %call4, !dbg !3151
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3152 {
entry:
    #dbg_value(i32 %legs, !3155, !DIExpression(), !3156)
    #dbg_value(ptr %in, !3157, !DIExpression(), !3156)
    #dbg_value(i8 %a, !3158, !DIExpression(), !3156)
    #dbg_value(ptr %acc, !3159, !DIExpression(), !3156)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3160
    #dbg_value(i32 %call, !3161, !DIExpression(), !3156)
    #dbg_value(i64 1229782938247303441, !3162, !DIExpression(), !3156)
    #dbg_value(i32 0, !3163, !DIExpression(), !3165)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3166
  br label %for.cond, !dbg !3166

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3167
    #dbg_value(i32 %i.0, !3163, !DIExpression(), !3165)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3168
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3170

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3171
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3171
  %and = and i64 %0, 1229782938247303441, !dbg !3173
  %and1 = and i32 %call, 255, !dbg !3174
  %conv = zext nneg i32 %and1 to i64, !dbg !3175
  %mul = mul i64 %and, %conv, !dbg !3176
  %shr = lshr i64 %0, 1, !dbg !3177
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3178
  %shr4 = lshr i32 %call, 8, !dbg !3179
  %and5 = and i32 %shr4, 15, !dbg !3180
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3181
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3182
  %xor = xor i64 %mul, %mul7, !dbg !3183
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3184
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3184
  %shr9 = lshr i64 %1, 2, !dbg !3185
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3186
  %shr11 = lshr i32 %call, 16, !dbg !3187
  %and12 = and i32 %shr11, 15, !dbg !3188
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3189
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3190
  %xor15 = xor i64 %xor, %mul14, !dbg !3191
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3192
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3192
  %shr17 = lshr i64 %2, 3, !dbg !3193
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3194
  %shr19 = lshr i32 %call, 24, !dbg !3195
  %and20 = and i32 %shr19, 15, !dbg !3196
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3197
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3198
  %xor23 = xor i64 %xor15, %mul22, !dbg !3199
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3200
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3201
  %xor25 = xor i64 %3, %xor23, !dbg !3201
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3201
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3202
    #dbg_value(i32 %inc, !3163, !DIExpression(), !3165)
  br label %for.cond, !dbg !3203, !llvm.loop !3204

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3206
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3207 {
entry:
    #dbg_value(i32 %legs, !3210, !DIExpression(), !3211)
    #dbg_value(ptr %in, !3212, !DIExpression(), !3211)
    #dbg_value(ptr %out, !3213, !DIExpression(), !3211)
    #dbg_value(ptr %in, !3214, !DIExpression(), !3211)
    #dbg_value(i32 0, !3215, !DIExpression(), !3217)
  br label %for.cond, !dbg !3218

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3219
    #dbg_value(i32 %i.0, !3215, !DIExpression(), !3217)
  %mul = shl nsw i32 %legs, 4, !dbg !3220
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3222
  br i1 %cmp, label %for.body, label %for.end, !dbg !3223

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3224
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3226
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3226
  %1 = and i8 %0, 15, !dbg !3227
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3228
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3229
  %div3 = lshr exact i32 %i.0, 1, !dbg !3230
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3231
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3231
  %3 = lshr i8 %2, 4, !dbg !3232
  %add = or disjoint i32 %i.0, 1, !dbg !3233
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3234
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3235
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3236
    #dbg_value(i32 %add8, !3215, !DIExpression(), !3217)
  br label %for.cond, !dbg !3237, !llvm.loop !3238

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3240
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3241 {
entry:
    #dbg_value(i8 %b, !3242, !DIExpression(), !3243)
  %conv = zext nneg i8 %b to i32, !dbg !3244
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3245
    #dbg_value(i32 %mul, !3246, !DIExpression(), !3243)
    #dbg_value(i32 -252645136, !3247, !DIExpression(), !3243)
  %and = and i32 %mul, 1894838512, !dbg !3248
    #dbg_value(i32 %and, !3249, !DIExpression(), !3243)
  %shr = lshr exact i32 %and, 4, !dbg !3250
  %shr1 = lshr exact i32 %and, 3, !dbg !3251
  %0 = xor i32 %shr, %shr1, !dbg !3252
  %xor2 = xor i32 %0, %mul, !dbg !3252
  ret i32 %xor2, !dbg !3253
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3254 {
entry:
    #dbg_value(i8 %a, !3255, !DIExpression(), !3256)
    #dbg_value(i8 %b, !3257, !DIExpression(), !3256)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3258
  %xor1 = xor i8 %a, %0, !dbg !3259
    #dbg_value(i8 %xor1, !3255, !DIExpression(), !3256)
  %1 = trunc i8 %xor1 to i1, !dbg !3260
    #dbg_value(i8 poison, !3261, !DIExpression(), !3256)
  %2 = and i8 %xor1, 2, !dbg !3262
  %mul9 = mul i8 %2, %b, !dbg !3263
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3260
  %xor11 = xor i8 %conv10, %mul9, !dbg !3264
    #dbg_value(i8 %xor11, !3261, !DIExpression(), !3256)
  %3 = and i8 %xor1, 4, !dbg !3265
  %mul16 = mul i8 %3, %b, !dbg !3266
  %xor18 = xor i8 %mul16, %xor11, !dbg !3267
    #dbg_value(i8 %xor18, !3261, !DIExpression(), !3256)
  %4 = and i8 %xor1, 8, !dbg !3268
  %mul23 = mul i8 %4, %b, !dbg !3269
  %xor25 = xor i8 %mul23, %xor18, !dbg !3270
    #dbg_value(i8 %xor25, !3261, !DIExpression(), !3256)
    #dbg_value(i8 %xor25, !3271, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3256)
  %5 = lshr i8 %xor25, 4, !dbg !3272
  %6 = lshr i8 %xor25, 3, !dbg !3273
  %7 = and i8 %6, 14, !dbg !3273
  %8 = xor i8 %5, %7, !dbg !3274
  %xor25.masked = and i8 %xor25, 15, !dbg !3275
  %9 = xor i8 %8, %xor25.masked, !dbg !3275
    #dbg_value(i8 %9, !3276, !DIExpression(), !3256)
  ret i8 %9, !dbg !3277
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3278 {
entry:
    #dbg_value(ptr %a, !3279, !DIExpression(), !3280)
    #dbg_value(ptr %b, !3281, !DIExpression(), !3280)
    #dbg_value(i32 %n, !3282, !DIExpression(), !3280)
    #dbg_value(i32 1, !3283, !DIExpression(), !3280)
    #dbg_value(i8 0, !3284, !DIExpression(), !3280)
    #dbg_value(i32 0, !3285, !DIExpression(), !3287)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3288
  br label %for.cond, !dbg !3288

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3280
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3289
    #dbg_value(i32 %i.0, !3285, !DIExpression(), !3287)
    #dbg_value(ptr %b.addr.0, !3281, !DIExpression(), !3280)
    #dbg_value(i8 %ret.0, !3284, !DIExpression(), !3280)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3290
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3292

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3293
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3293
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3295
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3296
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3297
    #dbg_value(i8 %call1, !3284, !DIExpression(), !3280)
  %inc = add nuw i32 %i.0, 1, !dbg !3298
    #dbg_value(i32 %inc, !3285, !DIExpression(), !3287)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3299
    #dbg_value(ptr %add.ptr, !3281, !DIExpression(), !3280)
  br label %for.cond, !dbg !3300, !llvm.loop !3301

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3280
  ret i8 %ret.0.lcssa, !dbg !3303
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3304 {
entry:
    #dbg_value(i8 %a, !3305, !DIExpression(), !3306)
    #dbg_value(i8 %b, !3307, !DIExpression(), !3306)
  %xor1 = xor i8 %a, %b, !dbg !3308
  ret i8 %xor1, !dbg !3309
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
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !172, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 537, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 537, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 538, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 539, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 540, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 541, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2624, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 328)
!222 = !DILocation(line: 541, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 542, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1185600, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 18525)
!227 = !DILocation(line: 542, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 543, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 320)
!232 = !DILocation(line: 543, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 546, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4992, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 624)
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
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 11520, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 180)
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
!800 = !DILocation(line: 445, column: 18, scope: !701)
!801 = !DILocation(line: 447, column: 9, scope: !701)
!802 = !DILocalVariable(name: "i", scope: !803, file: !25, line: 451, type: !45)
!803 = distinct !DILexicalBlock(scope: !701, file: !25, line: 451, column: 9)
!804 = !DILocation(line: 0, scope: !803)
!805 = !DILocation(line: 451, column: 14, scope: !803)
!806 = !DILocation(line: 451, scope: !803)
!807 = !DILocation(line: 451, column: 27, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !25, line: 451, column: 9)
!809 = !DILocation(line: 451, column: 9, scope: !803)
!810 = !DILocation(line: 452, column: 26, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !25, line: 451, column: 48)
!812 = !DILocation(line: 452, column: 22, scope: !811)
!813 = !DILocation(line: 452, column: 52, scope: !811)
!814 = !DILocation(line: 452, column: 48, scope: !811)
!815 = !DILocation(line: 452, column: 13, scope: !811)
!816 = !DILocation(line: 451, column: 43, scope: !808)
!817 = !DILocation(line: 451, column: 9, scope: !808)
!818 = distinct !{!818, !809, !819, !303}
!819 = !DILocation(line: 453, column: 9, scope: !803)
!820 = !DILocation(line: 455, column: 9, scope: !701)
!821 = !DILocation(line: 457, column: 9, scope: !701)
!822 = !DILocation(line: 458, column: 9, scope: !701)
!823 = !DILocalVariable(name: "i", scope: !824, file: !25, line: 460, type: !45)
!824 = distinct !DILexicalBlock(scope: !701, file: !25, line: 460, column: 9)
!825 = !DILocation(line: 0, scope: !824)
!826 = !DILocation(line: 460, column: 14, scope: !824)
!827 = !DILocation(line: 460, scope: !824)
!828 = !DILocation(line: 460, column: 27, scope: !829)
!829 = distinct !DILexicalBlock(scope: !824, file: !25, line: 460, column: 9)
!830 = !DILocation(line: 460, column: 9, scope: !824)
!831 = !DILocation(line: 462, column: 20, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !25, line: 461, column: 9)
!833 = !DILocation(line: 462, column: 43, scope: !832)
!834 = !DILocation(line: 462, column: 13, scope: !832)
!835 = !DILocation(line: 462, column: 48, scope: !832)
!836 = !DILocation(line: 460, column: 39, scope: !829)
!837 = !DILocation(line: 460, column: 9, scope: !829)
!838 = distinct !{!838, !830, !839, !303}
!839 = !DILocation(line: 463, column: 9, scope: !824)
!840 = !DILocation(line: 465, column: 18, scope: !701)
!841 = !DILocation(line: 465, column: 9, scope: !701)
!842 = !DILocation(line: 469, column: 13, scope: !843)
!843 = distinct !DILexicalBlock(scope: !701, file: !25, line: 469, column: 13)
!844 = !DILocation(line: 472, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !843, file: !25, line: 471, column: 16)
!846 = !DILocation(line: 473, column: 13, scope: !845)
!847 = !DILocalVariable(name: "i", scope: !848, file: !25, line: 477, type: !45)
!848 = distinct !DILexicalBlock(scope: !701, file: !25, line: 477, column: 5)
!849 = !DILocation(line: 0, scope: !848)
!850 = !DILocation(line: 477, column: 10, scope: !848)
!851 = !DILocation(line: 477, scope: !848)
!852 = !DILocation(line: 477, column: 23, scope: !853)
!853 = distinct !DILexicalBlock(scope: !848, file: !25, line: 477, column: 5)
!854 = !DILocation(line: 477, column: 5, scope: !848)
!855 = !DILocation(line: 478, column: 23, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !25, line: 477, column: 44)
!857 = !DILocation(line: 478, column: 19, scope: !856)
!858 = !DILocalVariable(name: "vi", scope: !701, file: !25, line: 376, type: !18)
!859 = !DILocation(line: 479, column: 17, scope: !856)
!860 = !DILocation(line: 479, column: 33, scope: !856)
!861 = !DILocation(line: 479, column: 29, scope: !856)
!862 = !DILocation(line: 479, column: 9, scope: !856)
!863 = !DILocation(line: 480, column: 31, scope: !856)
!864 = !DILocation(line: 480, column: 27, scope: !856)
!865 = !DILocation(line: 480, column: 9, scope: !856)
!866 = !DILocation(line: 481, column: 22, scope: !856)
!867 = !DILocation(line: 481, column: 18, scope: !856)
!868 = !DILocation(line: 481, column: 32, scope: !856)
!869 = !DILocation(line: 481, column: 61, scope: !856)
!870 = !DILocation(line: 481, column: 57, scope: !856)
!871 = !DILocation(line: 481, column: 9, scope: !856)
!872 = !DILocation(line: 477, column: 39, scope: !853)
!873 = !DILocation(line: 477, column: 5, scope: !853)
!874 = distinct !{!874, !854, !875, !303}
!875 = !DILocation(line: 482, column: 5, scope: !848)
!876 = !DILocation(line: 483, column: 5, scope: !701)
!877 = !DILocation(line: 485, column: 34, scope: !701)
!878 = !DILocation(line: 485, column: 5, scope: !701)
!879 = !DILocation(line: 486, column: 13, scope: !701)
!880 = !DILocation(line: 486, column: 5, scope: !701)
!881 = !DILabel(scope: !701, name: "err", file: !25, line: 488)
!882 = !DILocation(line: 488, column: 1, scope: !701)
!883 = !DILocation(line: 489, column: 5, scope: !701)
!884 = !DILocation(line: 490, column: 5, scope: !701)
!885 = !DILocation(line: 491, column: 5, scope: !701)
!886 = !DILocation(line: 492, column: 5, scope: !701)
!887 = !DILocation(line: 493, column: 23, scope: !701)
!888 = !DILocation(line: 493, column: 5, scope: !701)
!889 = !DILocation(line: 494, column: 5, scope: !701)
!890 = !DILocation(line: 495, column: 5, scope: !701)
!891 = !DILocation(line: 496, column: 5, scope: !701)
!892 = !DILocation(line: 497, column: 5, scope: !701)
!893 = !DILocation(line: 498, column: 5, scope: !701)
!894 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !895, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !174, !49, !326, !326, !5, !5}
!897 = !DILocalVariable(name: "p", arg: 1, scope: !894, file: !323, line: 244, type: !174)
!898 = !DILocation(line: 0, scope: !894)
!899 = !DILocalVariable(name: "Vdec", arg: 2, scope: !894, file: !323, line: 244, type: !49)
!900 = !DILocalVariable(name: "L", arg: 3, scope: !894, file: !323, line: 244, type: !326)
!901 = !DILocalVariable(name: "P1", arg: 4, scope: !894, file: !323, line: 244, type: !326)
!902 = !DILocalVariable(name: "VL", arg: 5, scope: !894, file: !323, line: 244, type: !5)
!903 = !DILocalVariable(name: "VP1V", arg: 6, scope: !894, file: !323, line: 244, type: !5)
!904 = !DILocalVariable(name: "param_k", scope: !894, file: !323, line: 246, type: !239)
!905 = !DILocalVariable(name: "param_v", scope: !894, file: !323, line: 247, type: !239)
!906 = !DILocalVariable(name: "param_o", scope: !894, file: !323, line: 248, type: !239)
!907 = !DILocation(line: 251, column: 5, scope: !894)
!908 = !DILocalVariable(name: "Pv", scope: !894, file: !323, line: 254, type: !909)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 249600, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 3900)
!912 = !DILocation(line: 254, column: 14, scope: !894)
!913 = !DILocation(line: 255, column: 5, scope: !894)
!914 = !DILocation(line: 256, column: 5, scope: !894)
!915 = !DILocation(line: 257, column: 1, scope: !894)
!916 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !917, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !174, !5, !49, !18}
!919 = !DILocalVariable(name: "p", arg: 1, scope: !916, file: !25, line: 43, type: !174)
!920 = !DILocation(line: 0, scope: !916)
!921 = !DILocalVariable(name: "vPv", arg: 2, scope: !916, file: !25, line: 43, type: !5)
!922 = !DILocalVariable(name: "t", arg: 3, scope: !916, file: !25, line: 43, type: !49)
!923 = !DILocalVariable(name: "y", arg: 4, scope: !916, file: !25, line: 43, type: !18)
!924 = !DILocalVariable(name: "top_pos", scope: !916, file: !25, line: 48, type: !925)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!926 = !DILocalVariable(name: "m_vec_limbs", scope: !916, file: !25, line: 49, type: !925)
!927 = !DILocalVariable(name: "mask", scope: !928, file: !25, line: 53, type: !6)
!928 = distinct !DILexicalBlock(scope: !929, file: !25, line: 52, column: 29)
!929 = distinct !DILexicalBlock(scope: !916, file: !25, line: 52, column: 8)
!930 = !DILocation(line: 0, scope: !928)
!931 = !DILocalVariable(name: "i", scope: !932, file: !25, line: 56, type: !45)
!932 = distinct !DILexicalBlock(scope: !928, file: !25, line: 56, column: 9)
!933 = !DILocation(line: 0, scope: !932)
!934 = !DILocation(line: 56, column: 14, scope: !932)
!935 = !DILocation(line: 56, scope: !932)
!936 = !DILocation(line: 56, column: 27, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !25, line: 56, column: 9)
!938 = !DILocation(line: 56, column: 9, scope: !932)
!939 = !DILocation(line: 58, column: 13, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !25, line: 57, column: 9)
!941 = !DILocation(line: 58, column: 50, scope: !940)
!942 = !DILocation(line: 56, column: 53, scope: !937)
!943 = !DILocation(line: 56, column: 9, scope: !937)
!944 = distinct !{!944, !938, !945, !303}
!945 = !DILocation(line: 59, column: 9, scope: !932)
!946 = !DILocalVariable(name: "temp", scope: !916, file: !25, line: 62, type: !579)
!947 = !DILocation(line: 62, column: 14, scope: !916)
!948 = !DILocalVariable(name: "temp_bytes", scope: !916, file: !25, line: 63, type: !18)
!949 = !DILocalVariable(name: "i", scope: !950, file: !25, line: 64, type: !45)
!950 = distinct !DILexicalBlock(scope: !916, file: !25, line: 64, column: 5)
!951 = !DILocation(line: 0, scope: !950)
!952 = !DILocation(line: 64, column: 10, scope: !950)
!953 = !DILocation(line: 64, scope: !950)
!954 = !DILocation(line: 64, column: 36, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !25, line: 64, column: 5)
!956 = !DILocation(line: 64, column: 5, scope: !950)
!957 = !DILocation(line: 65, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !25, line: 65, column: 9)
!959 = distinct !DILexicalBlock(scope: !955, file: !25, line: 64, column: 48)
!960 = !DILocation(line: 99, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !916, file: !25, line: 99, column: 5)
!962 = !DILocation(line: 65, scope: !958)
!963 = !DILocalVariable(name: "j", scope: !958, file: !25, line: 65, type: !45)
!964 = !DILocation(line: 0, scope: !958)
!965 = !DILocation(line: 65, column: 27, scope: !966)
!966 = distinct !DILexicalBlock(scope: !958, file: !25, line: 65, column: 9)
!967 = !DILocation(line: 67, column: 34, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !25, line: 65, column: 46)
!969 = !DILocation(line: 67, column: 54, scope: !968)
!970 = !DILocation(line: 67, column: 66, scope: !968)
!971 = !DILocalVariable(name: "top", scope: !968, file: !25, line: 67, type: !14)
!972 = !DILocation(line: 0, scope: !968)
!973 = !DILocation(line: 68, column: 13, scope: !968)
!974 = !DILocation(line: 68, column: 33, scope: !968)
!975 = !DILocalVariable(name: "k", scope: !976, file: !25, line: 69, type: !45)
!976 = distinct !DILexicalBlock(scope: !968, file: !25, line: 69, column: 13)
!977 = !DILocation(line: 0, scope: !976)
!978 = !DILocation(line: 69, column: 17, scope: !976)
!979 = !DILocation(line: 69, scope: !976)
!980 = !DILocation(line: 69, column: 43, scope: !981)
!981 = distinct !DILexicalBlock(scope: !976, file: !25, line: 69, column: 13)
!982 = !DILocation(line: 69, column: 13, scope: !976)
!983 = !DILocation(line: 74, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !968, file: !25, line: 74, column: 13)
!985 = !DILocation(line: 70, column: 30, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !25, line: 69, column: 52)
!987 = !DILocation(line: 70, column: 38, scope: !986)
!988 = !DILocation(line: 70, column: 23, scope: !986)
!989 = !DILocation(line: 70, column: 17, scope: !986)
!990 = !DILocation(line: 70, column: 27, scope: !986)
!991 = !DILocation(line: 71, column: 17, scope: !986)
!992 = !DILocation(line: 71, column: 25, scope: !986)
!993 = !DILocation(line: 69, column: 49, scope: !981)
!994 = !DILocation(line: 69, column: 13, scope: !981)
!995 = distinct !{!995, !982, !996, !303}
!996 = !DILocation(line: 72, column: 13, scope: !976)
!997 = !DILocation(line: 74, scope: !984)
!998 = !DILocalVariable(name: "jj", scope: !984, file: !25, line: 74, type: !45)
!999 = !DILocation(line: 0, scope: !984)
!1000 = !DILocation(line: 74, column: 33, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !984, file: !25, line: 74, column: 13)
!1002 = !DILocation(line: 92, column: 13, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !968, file: !25, line: 92, column: 13)
!1004 = !DILocation(line: 75, column: 22, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !25, line: 75, column: 20)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !25, line: 74, column: 53)
!1007 = !DILocation(line: 75, column: 25, scope: !1005)
!1008 = !DILocation(line: 79, column: 52, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !25, line: 75, column: 30)
!1010 = !DILocation(line: 79, column: 41, scope: !1009)
!1011 = !DILocation(line: 79, column: 34, scope: !1009)
!1012 = !DILocation(line: 79, column: 21, scope: !1009)
!1013 = !DILocation(line: 79, column: 38, scope: !1009)
!1014 = !DILocation(line: 81, column: 17, scope: !1009)
!1015 = !DILocation(line: 86, column: 52, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1005, file: !25, line: 82, column: 22)
!1017 = !DILocation(line: 86, column: 41, scope: !1016)
!1018 = !DILocation(line: 86, column: 73, scope: !1016)
!1019 = !DILocation(line: 86, column: 34, scope: !1016)
!1020 = !DILocation(line: 86, column: 21, scope: !1016)
!1021 = !DILocation(line: 86, column: 38, scope: !1016)
!1022 = !DILocation(line: 74, column: 49, scope: !1001)
!1023 = !DILocation(line: 74, column: 13, scope: !1001)
!1024 = distinct !{!1024, !983, !1025, !303}
!1025 = !DILocation(line: 89, column: 13, scope: !984)
!1026 = !DILocation(line: 92, scope: !1003)
!1027 = !DILocalVariable(name: "k", scope: !1003, file: !25, line: 92, type: !15)
!1028 = !DILocation(line: 0, scope: !1003)
!1029 = !DILocation(line: 92, column: 31, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1003, file: !25, line: 92, column: 13)
!1031 = !DILocation(line: 93, column: 36, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1030, file: !25, line: 92, column: 51)
!1033 = !DILocation(line: 93, column: 49, scope: !1032)
!1034 = !DILocation(line: 93, column: 28, scope: !1032)
!1035 = !DILocation(line: 93, column: 78, scope: !1032)
!1036 = !DILocation(line: 93, column: 91, scope: !1032)
!1037 = !DILocation(line: 93, column: 104, scope: !1032)
!1038 = !DILocation(line: 93, column: 83, scope: !1032)
!1039 = !DILocation(line: 93, column: 82, scope: !1032)
!1040 = !DILocation(line: 93, column: 73, scope: !1032)
!1041 = !DILocation(line: 93, column: 17, scope: !1032)
!1042 = !DILocation(line: 93, column: 25, scope: !1032)
!1043 = !DILocation(line: 92, column: 48, scope: !1030)
!1044 = !DILocation(line: 92, column: 13, scope: !1030)
!1045 = distinct !{!1045, !1002, !1046, !303}
!1046 = !DILocation(line: 94, column: 13, scope: !1003)
!1047 = !DILocation(line: 65, column: 42, scope: !966)
!1048 = !DILocation(line: 65, column: 9, scope: !966)
!1049 = distinct !{!1049, !957, !1050, !303}
!1050 = !DILocation(line: 95, column: 9, scope: !958)
!1051 = !DILocation(line: 64, column: 44, scope: !955)
!1052 = !DILocation(line: 64, column: 5, scope: !955)
!1053 = distinct !{!1053, !956, !1054, !303}
!1054 = !DILocation(line: 96, column: 5, scope: !950)
!1055 = !DILocation(line: 99, scope: !961)
!1056 = !DILocalVariable(name: "i", scope: !961, file: !25, line: 99, type: !45)
!1057 = !DILocation(line: 0, scope: !961)
!1058 = !DILocation(line: 99, column: 23, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !961, file: !25, line: 99, column: 5)
!1060 = !DILocation(line: 105, column: 18, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 100, column: 5)
!1062 = !DILocation(line: 105, column: 40, scope: !1061)
!1063 = !DILocation(line: 105, column: 28, scope: !1061)
!1064 = !DILocation(line: 105, column: 44, scope: !1061)
!1065 = !DILocation(line: 105, column: 25, scope: !1061)
!1066 = !DILocation(line: 105, column: 9, scope: !1061)
!1067 = !DILocation(line: 105, column: 16, scope: !1061)
!1068 = !DILocation(line: 106, column: 21, scope: !1061)
!1069 = !DILocation(line: 106, column: 18, scope: !1061)
!1070 = !DILocation(line: 106, column: 40, scope: !1061)
!1071 = !DILocation(line: 106, column: 28, scope: !1061)
!1072 = !DILocation(line: 106, column: 44, scope: !1061)
!1073 = !DILocation(line: 106, column: 25, scope: !1061)
!1074 = !DILocation(line: 106, column: 12, scope: !1061)
!1075 = !DILocation(line: 106, column: 9, scope: !1061)
!1076 = !DILocation(line: 106, column: 16, scope: !1061)
!1077 = !DILocation(line: 99, column: 38, scope: !1059)
!1078 = !DILocation(line: 99, column: 5, scope: !1059)
!1079 = distinct !{!1079, !960, !1080, !303}
!1080 = !DILocation(line: 108, column: 5, scope: !961)
!1081 = !DILocation(line: 109, column: 1, scope: !916)
!1082 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1083, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !174, !5, !18}
!1085 = !DILocalVariable(name: "p", arg: 1, scope: !1082, file: !25, line: 154, type: !174)
!1086 = !DILocation(line: 0, scope: !1082)
!1087 = !DILocalVariable(name: "VtL", arg: 2, scope: !1082, file: !25, line: 154, type: !5)
!1088 = !DILocalVariable(name: "A_out", arg: 3, scope: !1082, file: !25, line: 154, type: !18)
!1089 = !DILocalVariable(name: "bits_to_shift", scope: !1082, file: !25, line: 159, type: !45)
!1090 = !DILocalVariable(name: "words_to_shift", scope: !1082, file: !25, line: 160, type: !45)
!1091 = !DILocalVariable(name: "m_vec_limbs", scope: !1082, file: !25, line: 161, type: !239)
!1092 = !DILocalVariable(name: "A", scope: !1082, file: !25, line: 162, type: !1093)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 51200, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 800)
!1096 = !DILocation(line: 162, column: 14, scope: !1082)
!1097 = !DILocalVariable(name: "A_width", scope: !1082, file: !25, line: 163, type: !15)
!1098 = !DILocalVariable(name: "mask", scope: !1099, file: !25, line: 168, type: !6)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !25, line: 167, column: 29)
!1100 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 167, column: 8)
!1101 = !DILocation(line: 0, scope: !1099)
!1102 = !DILocalVariable(name: "i", scope: !1103, file: !25, line: 171, type: !45)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !25, line: 171, column: 9)
!1104 = !DILocation(line: 0, scope: !1103)
!1105 = !DILocation(line: 171, column: 14, scope: !1103)
!1106 = !DILocation(line: 171, scope: !1103)
!1107 = !DILocation(line: 171, column: 27, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 171, column: 9)
!1109 = !DILocation(line: 171, column: 9, scope: !1103)
!1110 = !DILocation(line: 177, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 177, column: 5)
!1112 = !DILocation(line: 173, column: 13, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !25, line: 172, column: 9)
!1114 = !DILocation(line: 173, column: 50, scope: !1113)
!1115 = !DILocation(line: 171, column: 53, scope: !1108)
!1116 = !DILocation(line: 171, column: 9, scope: !1108)
!1117 = distinct !{!1117, !1109, !1118, !303}
!1118 = !DILocation(line: 174, column: 9, scope: !1103)
!1119 = !DILocation(line: 177, scope: !1111)
!1120 = !DILocation(line: 160, column: 9, scope: !1082)
!1121 = !DILocation(line: 159, column: 9, scope: !1082)
!1122 = !DILocalVariable(name: "i", scope: !1111, file: !25, line: 177, type: !45)
!1123 = !DILocation(line: 0, scope: !1111)
!1124 = !DILocation(line: 177, column: 23, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1111, file: !25, line: 177, column: 5)
!1126 = !DILocation(line: 178, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !25, line: 178, column: 9)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !25, line: 177, column: 47)
!1129 = !DILocation(line: 212, column: 5, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 212, column: 5)
!1131 = !DILocation(line: 178, scope: !1127)
!1132 = !DILocalVariable(name: "j", scope: !1127, file: !25, line: 178, type: !45)
!1133 = !DILocation(line: 0, scope: !1127)
!1134 = !DILocation(line: 178, column: 40, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1127, file: !25, line: 178, column: 9)
!1136 = !DILocation(line: 180, column: 22, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1135, file: !25, line: 178, column: 51)
!1138 = !DILocalVariable(name: "Mj", scope: !1082, file: !25, line: 164, type: !326)
!1139 = !DILocalVariable(name: "c", scope: !1140, file: !25, line: 181, type: !45)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 181, column: 13)
!1141 = !DILocation(line: 0, scope: !1140)
!1142 = !DILocation(line: 181, column: 18, scope: !1140)
!1143 = !DILocation(line: 181, scope: !1140)
!1144 = !DILocation(line: 181, column: 31, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !25, line: 181, column: 13)
!1146 = !DILocation(line: 181, column: 13, scope: !1140)
!1147 = !DILocation(line: 182, column: 17, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 182, column: 17)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 181, column: 50)
!1150 = !DILocation(line: 182, scope: !1148)
!1151 = !DILocalVariable(name: "k", scope: !1148, file: !25, line: 182, type: !45)
!1152 = !DILocation(line: 0, scope: !1148)
!1153 = !DILocation(line: 182, column: 35, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !25, line: 182, column: 17)
!1155 = !DILocation(line: 184, column: 78, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !25, line: 183, column: 17)
!1157 = !DILocation(line: 184, column: 100, scope: !1156)
!1158 = !DILocation(line: 184, column: 35, scope: !1156)
!1159 = !DILocation(line: 184, column: 39, scope: !1156)
!1160 = !DILocation(line: 184, column: 48, scope: !1156)
!1161 = !DILocation(line: 184, column: 65, scope: !1156)
!1162 = !DILocation(line: 184, column: 43, scope: !1156)
!1163 = !DILocation(line: 184, column: 21, scope: !1156)
!1164 = !DILocation(line: 184, column: 75, scope: !1156)
!1165 = !DILocation(line: 185, column: 38, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1156, file: !25, line: 185, column: 24)
!1167 = !DILocation(line: 186, column: 86, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1166, file: !25, line: 185, column: 42)
!1169 = !DILocation(line: 186, column: 114, scope: !1168)
!1170 = !DILocation(line: 186, column: 108, scope: !1168)
!1171 = !DILocation(line: 186, column: 39, scope: !1168)
!1172 = !DILocation(line: 186, column: 43, scope: !1168)
!1173 = !DILocation(line: 186, column: 52, scope: !1168)
!1174 = !DILocation(line: 186, column: 73, scope: !1168)
!1175 = !DILocation(line: 186, column: 47, scope: !1168)
!1176 = !DILocation(line: 186, column: 25, scope: !1168)
!1177 = !DILocation(line: 186, column: 83, scope: !1168)
!1178 = !DILocation(line: 187, column: 21, scope: !1168)
!1179 = !DILocation(line: 182, column: 51, scope: !1154)
!1180 = !DILocation(line: 182, column: 17, scope: !1154)
!1181 = distinct !{!1181, !1147, !1182, !303}
!1182 = !DILocation(line: 188, column: 17, scope: !1148)
!1183 = !DILocation(line: 181, column: 46, scope: !1145)
!1184 = !DILocation(line: 181, column: 13, scope: !1145)
!1185 = distinct !{!1185, !1146, !1186, !303}
!1186 = !DILocation(line: 189, column: 13, scope: !1140)
!1187 = !DILocation(line: 191, column: 19, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 191, column: 17)
!1189 = !DILocation(line: 192, column: 26, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1188, file: !25, line: 191, column: 25)
!1191 = !DILocalVariable(name: "Mi", scope: !1082, file: !25, line: 164, type: !326)
!1192 = !DILocalVariable(name: "c", scope: !1193, file: !25, line: 193, type: !45)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !25, line: 193, column: 17)
!1194 = !DILocation(line: 0, scope: !1193)
!1195 = !DILocation(line: 193, column: 22, scope: !1193)
!1196 = !DILocation(line: 193, scope: !1193)
!1197 = !DILocation(line: 193, column: 35, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !25, line: 193, column: 17)
!1199 = !DILocation(line: 193, column: 17, scope: !1193)
!1200 = !DILocation(line: 194, column: 21, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !25, line: 194, column: 21)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !25, line: 193, column: 54)
!1203 = !DILocation(line: 194, scope: !1201)
!1204 = !DILocalVariable(name: "k", scope: !1201, file: !25, line: 194, type: !45)
!1205 = !DILocation(line: 0, scope: !1201)
!1206 = !DILocation(line: 194, column: 39, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !25, line: 194, column: 21)
!1208 = !DILocation(line: 196, column: 81, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1207, file: !25, line: 195, column: 21)
!1210 = !DILocation(line: 196, column: 103, scope: !1209)
!1211 = !DILocation(line: 196, column: 38, scope: !1209)
!1212 = !DILocation(line: 196, column: 42, scope: !1209)
!1213 = !DILocation(line: 196, column: 51, scope: !1209)
!1214 = !DILocation(line: 196, column: 68, scope: !1209)
!1215 = !DILocation(line: 196, column: 46, scope: !1209)
!1216 = !DILocation(line: 196, column: 25, scope: !1209)
!1217 = !DILocation(line: 196, column: 78, scope: !1209)
!1218 = !DILocation(line: 197, column: 42, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !25, line: 197, column: 28)
!1220 = !DILocation(line: 198, column: 89, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1219, file: !25, line: 197, column: 46)
!1222 = !DILocation(line: 198, column: 117, scope: !1221)
!1223 = !DILocation(line: 198, column: 111, scope: !1221)
!1224 = !DILocation(line: 198, column: 42, scope: !1221)
!1225 = !DILocation(line: 198, column: 46, scope: !1221)
!1226 = !DILocation(line: 198, column: 55, scope: !1221)
!1227 = !DILocation(line: 198, column: 76, scope: !1221)
!1228 = !DILocation(line: 198, column: 50, scope: !1221)
!1229 = !DILocation(line: 198, column: 29, scope: !1221)
!1230 = !DILocation(line: 198, column: 86, scope: !1221)
!1231 = !DILocation(line: 199, column: 25, scope: !1221)
!1232 = !DILocation(line: 194, column: 55, scope: !1207)
!1233 = !DILocation(line: 194, column: 21, scope: !1207)
!1234 = distinct !{!1234, !1200, !1235, !303}
!1235 = !DILocation(line: 200, column: 21, scope: !1201)
!1236 = !DILocation(line: 193, column: 50, scope: !1198)
!1237 = !DILocation(line: 193, column: 17, scope: !1198)
!1238 = distinct !{!1238, !1199, !1239, !303}
!1239 = !DILocation(line: 201, column: 17, scope: !1193)
!1240 = !DILocation(line: 204, column: 27, scope: !1137)
!1241 = !DILocation(line: 205, column: 30, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 205, column: 16)
!1243 = !DILocation(line: 178, column: 46, scope: !1135)
!1244 = !DILocation(line: 178, column: 9, scope: !1135)
!1245 = distinct !{!1245, !1126, !1246, !303}
!1246 = !DILocation(line: 209, column: 9, scope: !1127)
!1247 = !DILocation(line: 177, column: 42, scope: !1125)
!1248 = !DILocation(line: 177, column: 5, scope: !1125)
!1249 = distinct !{!1249, !1110, !1250, !303}
!1250 = !DILocation(line: 210, column: 5, scope: !1111)
!1251 = !DILocation(line: 212, scope: !1130)
!1252 = !DILocalVariable(name: "c", scope: !1130, file: !25, line: 212, type: !15)
!1253 = !DILocation(line: 0, scope: !1130)
!1254 = !DILocation(line: 212, column: 26, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1130, file: !25, line: 212, column: 5)
!1256 = !DILocation(line: 214, column: 35, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1255, file: !25, line: 213, column: 5)
!1258 = !DILocation(line: 214, column: 9, scope: !1257)
!1259 = !DILocation(line: 212, column: 91, scope: !1255)
!1260 = !DILocation(line: 212, column: 5, scope: !1255)
!1261 = distinct !{!1261, !1129, !1262, !303}
!1262 = !DILocation(line: 215, column: 5, scope: !1130)
!1263 = !DILocalVariable(name: "tab", scope: !1082, file: !25, line: 217, type: !1264)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 16)
!1267 = !DILocation(line: 217, column: 19, scope: !1082)
!1268 = !DILocalVariable(name: "i", scope: !1269, file: !25, line: 218, type: !15)
!1269 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 218, column: 5)
!1270 = !DILocation(line: 0, scope: !1269)
!1271 = !DILocation(line: 218, column: 10, scope: !1269)
!1272 = !DILocation(line: 218, scope: !1269)
!1273 = !DILocation(line: 218, column: 26, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !25, line: 218, column: 5)
!1275 = !DILocation(line: 218, column: 5, scope: !1269)
!1276 = !DILocation(line: 228, column: 5, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 228, column: 5)
!1278 = !DILocation(line: 220, column: 28, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !25, line: 219, column: 5)
!1280 = !DILocation(line: 220, column: 22, scope: !1279)
!1281 = !DILocation(line: 220, column: 14, scope: !1279)
!1282 = !DILocation(line: 220, column: 9, scope: !1279)
!1283 = !DILocation(line: 220, column: 20, scope: !1279)
!1284 = !DILocation(line: 221, column: 22, scope: !1279)
!1285 = !DILocation(line: 221, column: 14, scope: !1279)
!1286 = !DILocation(line: 221, column: 16, scope: !1279)
!1287 = !DILocation(line: 221, column: 9, scope: !1279)
!1288 = !DILocation(line: 221, column: 20, scope: !1279)
!1289 = !DILocation(line: 222, column: 28, scope: !1279)
!1290 = !DILocation(line: 222, column: 22, scope: !1279)
!1291 = !DILocation(line: 222, column: 14, scope: !1279)
!1292 = !DILocation(line: 222, column: 16, scope: !1279)
!1293 = !DILocation(line: 222, column: 9, scope: !1279)
!1294 = !DILocation(line: 222, column: 20, scope: !1279)
!1295 = !DILocation(line: 223, column: 28, scope: !1279)
!1296 = !DILocation(line: 223, column: 22, scope: !1279)
!1297 = !DILocation(line: 223, column: 14, scope: !1279)
!1298 = !DILocation(line: 223, column: 16, scope: !1279)
!1299 = !DILocation(line: 223, column: 9, scope: !1279)
!1300 = !DILocation(line: 223, column: 20, scope: !1279)
!1301 = !DILocation(line: 218, column: 41, scope: !1274)
!1302 = !DILocation(line: 218, column: 5, scope: !1274)
!1303 = distinct !{!1303, !1275, !1304, !303}
!1304 = !DILocation(line: 224, column: 5, scope: !1269)
!1305 = !DILocation(line: 228, scope: !1277)
!1306 = !DILocalVariable(name: "c", scope: !1277, file: !25, line: 228, type: !15)
!1307 = !DILocation(line: 0, scope: !1277)
!1308 = !DILocation(line: 228, column: 26, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1277, file: !25, line: 228, column: 5)
!1310 = !DILocation(line: 230, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !25, line: 230, column: 9)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !25, line: 229, column: 5)
!1313 = !DILocation(line: 250, column: 5, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 250, column: 5)
!1315 = !DILocation(line: 230, scope: !1311)
!1316 = !DILocalVariable(name: "r", scope: !1311, file: !25, line: 230, type: !45)
!1317 = !DILocation(line: 0, scope: !1311)
!1318 = !DILocation(line: 230, column: 36, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1311, file: !25, line: 230, column: 9)
!1320 = !DILocation(line: 232, column: 28, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !25, line: 231, column: 9)
!1322 = !DILocation(line: 232, column: 32, scope: !1321)
!1323 = !DILocation(line: 232, column: 41, scope: !1321)
!1324 = !DILocation(line: 232, column: 49, scope: !1321)
!1325 = !DILocation(line: 232, column: 45, scope: !1321)
!1326 = !DILocalVariable(name: "pos", scope: !1321, file: !25, line: 232, type: !15)
!1327 = !DILocation(line: 0, scope: !1321)
!1328 = !DILocation(line: 233, column: 28, scope: !1321)
!1329 = !DILocation(line: 233, column: 41, scope: !1321)
!1330 = !DILocalVariable(name: "t0", scope: !1321, file: !25, line: 233, type: !6)
!1331 = !DILocation(line: 234, column: 35, scope: !1321)
!1332 = !DILocation(line: 234, column: 41, scope: !1321)
!1333 = !DILocalVariable(name: "t1", scope: !1321, file: !25, line: 234, type: !6)
!1334 = !DILocation(line: 235, column: 35, scope: !1321)
!1335 = !DILocation(line: 235, column: 41, scope: !1321)
!1336 = !DILocalVariable(name: "t2", scope: !1321, file: !25, line: 235, type: !6)
!1337 = !DILocation(line: 236, column: 28, scope: !1321)
!1338 = !DILocation(line: 236, column: 35, scope: !1321)
!1339 = !DILocation(line: 236, column: 41, scope: !1321)
!1340 = !DILocalVariable(name: "t3", scope: !1321, file: !25, line: 236, type: !6)
!1341 = !DILocalVariable(name: "t", scope: !1342, file: !25, line: 237, type: !15)
!1342 = distinct !DILexicalBlock(scope: !1321, file: !25, line: 237, column: 13)
!1343 = !DILocation(line: 0, scope: !1342)
!1344 = !DILocation(line: 237, column: 18, scope: !1342)
!1345 = !DILocation(line: 237, scope: !1342)
!1346 = !DILocation(line: 237, column: 34, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !25, line: 237, column: 13)
!1348 = !DILocation(line: 237, column: 13, scope: !1342)
!1349 = !DILocation(line: 239, column: 89, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !25, line: 238, column: 13)
!1351 = !DILocation(line: 239, column: 84, scope: !1350)
!1352 = !DILocation(line: 239, column: 83, scope: !1350)
!1353 = !DILocation(line: 239, column: 105, scope: !1350)
!1354 = !DILocation(line: 239, column: 107, scope: !1350)
!1355 = !DILocation(line: 239, column: 100, scope: !1350)
!1356 = !DILocation(line: 239, column: 99, scope: !1350)
!1357 = !DILocation(line: 239, column: 95, scope: !1350)
!1358 = !DILocation(line: 239, column: 121, scope: !1350)
!1359 = !DILocation(line: 239, column: 123, scope: !1350)
!1360 = !DILocation(line: 239, column: 116, scope: !1350)
!1361 = !DILocation(line: 239, column: 115, scope: !1350)
!1362 = !DILocation(line: 239, column: 111, scope: !1350)
!1363 = !DILocation(line: 239, column: 137, scope: !1350)
!1364 = !DILocation(line: 239, column: 139, scope: !1350)
!1365 = !DILocation(line: 239, column: 132, scope: !1350)
!1366 = !DILocation(line: 239, column: 131, scope: !1350)
!1367 = !DILocation(line: 239, column: 127, scope: !1350)
!1368 = !DILocation(line: 239, column: 22, scope: !1350)
!1369 = !DILocation(line: 239, column: 24, scope: !1350)
!1370 = !DILocation(line: 239, column: 36, scope: !1350)
!1371 = !DILocation(line: 239, column: 40, scope: !1350)
!1372 = !DILocation(line: 239, column: 49, scope: !1350)
!1373 = !DILocation(line: 239, column: 58, scope: !1350)
!1374 = !DILocation(line: 239, column: 60, scope: !1350)
!1375 = !DILocation(line: 239, column: 72, scope: !1350)
!1376 = !DILocation(line: 239, column: 53, scope: !1350)
!1377 = !DILocation(line: 239, column: 17, scope: !1350)
!1378 = !DILocation(line: 239, column: 78, scope: !1350)
!1379 = !DILocation(line: 237, column: 49, scope: !1347)
!1380 = !DILocation(line: 237, column: 13, scope: !1347)
!1381 = distinct !{!1381, !1348, !1382, !303}
!1382 = !DILocation(line: 240, column: 13, scope: !1342)
!1383 = !DILocation(line: 230, column: 82, scope: !1319)
!1384 = !DILocation(line: 230, column: 9, scope: !1319)
!1385 = distinct !{!1385, !1310, !1386, !303}
!1386 = !DILocation(line: 241, column: 9, scope: !1311)
!1387 = !DILocation(line: 228, column: 38, scope: !1309)
!1388 = !DILocation(line: 228, column: 5, scope: !1309)
!1389 = distinct !{!1389, !1276, !1390, !303}
!1390 = !DILocation(line: 242, column: 5, scope: !1277)
!1391 = !DILocation(line: 250, scope: !1314)
!1392 = !DILocalVariable(name: "r", scope: !1314, file: !25, line: 250, type: !45)
!1393 = !DILocation(line: 0, scope: !1314)
!1394 = !DILocation(line: 250, column: 23, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1314, file: !25, line: 250, column: 5)
!1396 = !DILocation(line: 252, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !25, line: 252, column: 9)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !25, line: 251, column: 5)
!1399 = !DILocation(line: 252, scope: !1397)
!1400 = !DILocalVariable(name: "c", scope: !1397, file: !25, line: 252, type: !45)
!1401 = !DILocation(line: 0, scope: !1397)
!1402 = !DILocation(line: 252, column: 27, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !25, line: 252, column: 9)
!1404 = !DILocation(line: 254, column: 13, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !25, line: 254, column: 13)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !25, line: 253, column: 9)
!1407 = !DILocation(line: 254, scope: !1405)
!1408 = !DILocalVariable(name: "i", scope: !1405, file: !25, line: 254, type: !45)
!1409 = !DILocation(line: 0, scope: !1405)
!1410 = !DILocation(line: 254, column: 35, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !25, line: 254, column: 13)
!1412 = !DILocation(line: 256, column: 55, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1411, file: !25, line: 255, column: 13)
!1414 = !DILocation(line: 256, column: 59, scope: !1413)
!1415 = !DILocation(line: 256, column: 63, scope: !1413)
!1416 = !DILocation(line: 256, column: 44, scope: !1413)
!1417 = !DILocation(line: 256, column: 95, scope: !1413)
!1418 = !DILocation(line: 256, column: 92, scope: !1413)
!1419 = !DILocation(line: 256, column: 75, scope: !1413)
!1420 = !DILocation(line: 256, column: 99, scope: !1413)
!1421 = !DILocation(line: 256, column: 104, scope: !1413)
!1422 = !DILocation(line: 256, column: 17, scope: !1413)
!1423 = !DILocation(line: 254, column: 50, scope: !1411)
!1424 = !DILocation(line: 254, column: 13, scope: !1411)
!1425 = distinct !{!1425, !1404, !1426, !303}
!1426 = !DILocation(line: 257, column: 13, scope: !1405)
!1427 = !DILocation(line: 252, column: 50, scope: !1403)
!1428 = !DILocation(line: 252, column: 9, scope: !1403)
!1429 = distinct !{!1429, !1396, !1430, !303}
!1430 = !DILocation(line: 258, column: 9, scope: !1397)
!1431 = !DILocation(line: 250, column: 38, scope: !1395)
!1432 = !DILocation(line: 250, column: 5, scope: !1395)
!1433 = distinct !{!1433, !1313, !1434, !303}
!1434 = !DILocation(line: 259, column: 5, scope: !1314)
!1435 = !DILocation(line: 260, column: 1, scope: !1082)
!1436 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1437, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !49, !49, !18, !45, !45, !45}
!1439 = !DILocalVariable(name: "a", arg: 1, scope: !1436, file: !493, line: 79, type: !49)
!1440 = !DILocation(line: 0, scope: !1436)
!1441 = !DILocalVariable(name: "b", arg: 2, scope: !1436, file: !493, line: 79, type: !49)
!1442 = !DILocalVariable(name: "c", arg: 3, scope: !1436, file: !493, line: 80, type: !18)
!1443 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1436, file: !493, line: 80, type: !45)
!1444 = !DILocalVariable(name: "row_a", arg: 5, scope: !1436, file: !493, line: 80, type: !45)
!1445 = !DILocalVariable(name: "col_b", arg: 6, scope: !1436, file: !493, line: 80, type: !45)
!1446 = !DILocalVariable(name: "i", scope: !1447, file: !493, line: 81, type: !45)
!1447 = distinct !DILexicalBlock(scope: !1436, file: !493, line: 81, column: 5)
!1448 = !DILocation(line: 0, scope: !1447)
!1449 = !DILocation(line: 81, column: 10, scope: !1447)
!1450 = !DILocation(line: 81, scope: !1447)
!1451 = !DILocation(line: 81, column: 23, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !493, line: 81, column: 5)
!1453 = !DILocation(line: 81, column: 5, scope: !1447)
!1454 = !DILocation(line: 82, column: 9, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !493, line: 82, column: 9)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !493, line: 81, column: 53)
!1457 = !DILocation(line: 82, scope: !1455)
!1458 = !DILocalVariable(name: "j", scope: !1455, file: !493, line: 82, type: !45)
!1459 = !DILocation(line: 0, scope: !1455)
!1460 = !DILocation(line: 83, column: 18, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !493, line: 82, column: 46)
!1462 = distinct !DILexicalBlock(scope: !1455, file: !493, line: 82, column: 9)
!1463 = !DILocation(line: 83, column: 16, scope: !1461)
!1464 = !DILocation(line: 82, column: 41, scope: !1462)
!1465 = !DILocation(line: 82, column: 9, scope: !1462)
!1466 = distinct !{!1466, !1454, !1467, !303}
!1467 = !DILocation(line: 84, column: 9, scope: !1455)
!1468 = !DILocation(line: 81, column: 32, scope: !1452)
!1469 = !DILocation(line: 81, column: 39, scope: !1452)
!1470 = !DILocation(line: 81, column: 5, scope: !1452)
!1471 = distinct !{!1471, !1453, !1472, !303}
!1472 = !DILocation(line: 85, column: 5, scope: !1447)
!1473 = !DILocation(line: 86, column: 1, scope: !1436)
!1474 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1475, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !49, !49, !18, !45, !45}
!1477 = !DILocalVariable(name: "a", arg: 1, scope: !1474, file: !493, line: 88, type: !49)
!1478 = !DILocation(line: 0, scope: !1474)
!1479 = !DILocalVariable(name: "b", arg: 2, scope: !1474, file: !493, line: 88, type: !49)
!1480 = !DILocalVariable(name: "c", arg: 3, scope: !1474, file: !493, line: 89, type: !18)
!1481 = !DILocalVariable(name: "m", arg: 4, scope: !1474, file: !493, line: 89, type: !45)
!1482 = !DILocalVariable(name: "n", arg: 5, scope: !1474, file: !493, line: 89, type: !45)
!1483 = !DILocalVariable(name: "i", scope: !1484, file: !493, line: 90, type: !45)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !493, line: 90, column: 5)
!1485 = !DILocation(line: 0, scope: !1484)
!1486 = !DILocation(line: 90, column: 10, scope: !1484)
!1487 = !DILocation(line: 90, scope: !1484)
!1488 = !DILocation(line: 90, column: 23, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !493, line: 90, column: 5)
!1490 = !DILocation(line: 90, column: 5, scope: !1484)
!1491 = !DILocalVariable(name: "j", scope: !1492, file: !493, line: 91, type: !45)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !493, line: 91, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !493, line: 90, column: 33)
!1494 = !DILocation(line: 0, scope: !1492)
!1495 = !DILocation(line: 92, column: 42, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !493, line: 91, column: 37)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !493, line: 91, column: 9)
!1498 = !DILocation(line: 92, column: 38, scope: !1496)
!1499 = !DILocation(line: 92, column: 60, scope: !1496)
!1500 = !DILocation(line: 92, column: 56, scope: !1496)
!1501 = !DILocation(line: 92, column: 32, scope: !1496)
!1502 = !DILocation(line: 92, column: 17, scope: !1496)
!1503 = !DILocation(line: 92, column: 30, scope: !1496)
!1504 = !DILocation(line: 90, column: 28, scope: !1489)
!1505 = !DILocation(line: 90, column: 5, scope: !1489)
!1506 = distinct !{!1506, !1490, !1507, !303}
!1507 = !DILocation(line: 94, column: 5, scope: !1484)
!1508 = !DILocation(line: 95, column: 1, scope: !1474)
!1509 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1510 = !DILocalVariable(name: "m", arg: 1, scope: !1509, file: !25, line: 32, type: !49)
!1511 = !DILocation(line: 0, scope: !1509)
!1512 = !DILocalVariable(name: "menc", arg: 2, scope: !1509, file: !25, line: 32, type: !18)
!1513 = !DILocalVariable(name: "mlen", arg: 3, scope: !1509, file: !25, line: 32, type: !45)
!1514 = !DILocalVariable(name: "i", scope: !1509, file: !25, line: 33, type: !45)
!1515 = !DILocation(line: 34, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1509, file: !25, line: 34, column: 5)
!1517 = !DILocation(line: 34, scope: !1516)
!1518 = !DILocation(line: 34, column: 19, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !25, line: 34, column: 5)
!1520 = !DILocation(line: 34, column: 5, scope: !1516)
!1521 = !DILocation(line: 35, column: 20, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !25, line: 34, column: 44)
!1523 = !DILocation(line: 35, column: 31, scope: !1522)
!1524 = !DILocation(line: 35, column: 27, scope: !1522)
!1525 = !DILocation(line: 35, column: 36, scope: !1522)
!1526 = !DILocation(line: 35, column: 24, scope: !1522)
!1527 = !DILocation(line: 35, column: 9, scope: !1522)
!1528 = !DILocation(line: 35, column: 17, scope: !1522)
!1529 = !DILocation(line: 34, column: 31, scope: !1519)
!1530 = !DILocation(line: 34, column: 38, scope: !1519)
!1531 = !DILocation(line: 34, column: 5, scope: !1519)
!1532 = distinct !{!1532, !1520, !1533, !303}
!1533 = !DILocation(line: 36, column: 5, scope: !1516)
!1534 = !DILocation(line: 41, column: 1, scope: !1509)
!1535 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1536, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!14, !14, !14}
!1538 = !DILocalVariable(name: "a", arg: 1, scope: !1535, file: !493, line: 43, type: !14)
!1539 = !DILocation(line: 0, scope: !1535)
!1540 = !DILocalVariable(name: "b", arg: 2, scope: !1535, file: !493, line: 43, type: !14)
!1541 = !DILocation(line: 44, column: 14, scope: !1535)
!1542 = !DILocation(line: 44, column: 5, scope: !1535)
!1543 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1544, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!14, !49, !49, !45, !45}
!1546 = !DILocalVariable(name: "a", arg: 1, scope: !1543, file: !493, line: 70, type: !49)
!1547 = !DILocation(line: 0, scope: !1543)
!1548 = !DILocalVariable(name: "b", arg: 2, scope: !1543, file: !493, line: 71, type: !49)
!1549 = !DILocalVariable(name: "n", arg: 3, scope: !1543, file: !493, line: 71, type: !45)
!1550 = !DILocalVariable(name: "m", arg: 4, scope: !1543, file: !493, line: 71, type: !45)
!1551 = !DILocalVariable(name: "ret", scope: !1543, file: !493, line: 72, type: !14)
!1552 = !DILocalVariable(name: "i", scope: !1553, file: !493, line: 73, type: !45)
!1553 = distinct !DILexicalBlock(scope: !1543, file: !493, line: 73, column: 5)
!1554 = !DILocation(line: 0, scope: !1553)
!1555 = !DILocation(line: 73, column: 10, scope: !1553)
!1556 = !DILocation(line: 73, scope: !1553)
!1557 = !DILocation(line: 73, column: 23, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !493, line: 73, column: 5)
!1559 = !DILocation(line: 73, column: 5, scope: !1553)
!1560 = !DILocation(line: 74, column: 27, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !493, line: 73, column: 41)
!1562 = !DILocation(line: 74, column: 33, scope: !1561)
!1563 = !DILocation(line: 74, column: 21, scope: !1561)
!1564 = !DILocation(line: 74, column: 15, scope: !1561)
!1565 = !DILocation(line: 73, column: 28, scope: !1558)
!1566 = !DILocation(line: 73, column: 35, scope: !1558)
!1567 = !DILocation(line: 73, column: 5, scope: !1558)
!1568 = distinct !{!1568, !1559, !1569, !303}
!1569 = !DILocation(line: 75, column: 5, scope: !1553)
!1570 = !DILocation(line: 76, column: 5, scope: !1543)
!1571 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1536, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1572 = !DILocalVariable(name: "a", arg: 1, scope: !1571, file: !493, line: 9, type: !14)
!1573 = !DILocation(line: 0, scope: !1571)
!1574 = !DILocalVariable(name: "b", arg: 2, scope: !1571, file: !493, line: 9, type: !14)
!1575 = !DILocation(line: 14, column: 10, scope: !1571)
!1576 = !DILocation(line: 14, column: 7, scope: !1571)
!1577 = !DILocation(line: 17, column: 17, scope: !1571)
!1578 = !DILocalVariable(name: "p", scope: !1571, file: !493, line: 11, type: !14)
!1579 = !DILocation(line: 18, column: 13, scope: !1571)
!1580 = !DILocation(line: 18, column: 17, scope: !1571)
!1581 = !DILocation(line: 18, column: 7, scope: !1571)
!1582 = !DILocation(line: 19, column: 13, scope: !1571)
!1583 = !DILocation(line: 19, column: 17, scope: !1571)
!1584 = !DILocation(line: 19, column: 7, scope: !1571)
!1585 = !DILocation(line: 20, column: 13, scope: !1571)
!1586 = !DILocation(line: 20, column: 17, scope: !1571)
!1587 = !DILocation(line: 20, column: 7, scope: !1571)
!1588 = !DILocalVariable(name: "top_p", scope: !1571, file: !493, line: 23, type: !14)
!1589 = !DILocation(line: 24, column: 37, scope: !1571)
!1590 = !DILocation(line: 24, column: 52, scope: !1571)
!1591 = !DILocation(line: 24, column: 43, scope: !1571)
!1592 = !DILocation(line: 24, column: 59, scope: !1571)
!1593 = !DILocalVariable(name: "out", scope: !1571, file: !493, line: 24, type: !14)
!1594 = !DILocation(line: 25, column: 5, scope: !1571)
!1595 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1596 = !DILocation(line: 0, scope: !24)
!1597 = !DILocalVariable(name: "i", scope: !1598, file: !25, line: 117, type: !15)
!1598 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1599 = !DILocation(line: 0, scope: !1598)
!1600 = !DILocation(line: 117, column: 10, scope: !1598)
!1601 = !DILocation(line: 117, scope: !1598)
!1602 = !DILocation(line: 117, column: 26, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !25, line: 117, column: 5)
!1604 = !DILocation(line: 117, column: 5, scope: !1598)
!1605 = !DILocation(line: 124, column: 5, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1607 = !DILocation(line: 119, column: 24, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !25, line: 118, column: 5)
!1609 = !DILocation(line: 119, column: 29, scope: !1608)
!1610 = !DILocation(line: 119, column: 41, scope: !1608)
!1611 = !DILocation(line: 119, column: 38, scope: !1608)
!1612 = !DILocation(line: 119, column: 36, scope: !1608)
!1613 = !DILocation(line: 119, column: 46, scope: !1608)
!1614 = !DILocalVariable(name: "t", scope: !1608, file: !25, line: 119, type: !6)
!1615 = !DILocation(line: 0, scope: !1608)
!1616 = !DILocation(line: 120, column: 21, scope: !1608)
!1617 = !DILocation(line: 120, column: 9, scope: !1608)
!1618 = !DILocation(line: 120, column: 16, scope: !1608)
!1619 = !DILocation(line: 121, column: 12, scope: !1608)
!1620 = !DILocation(line: 121, column: 9, scope: !1608)
!1621 = !DILocation(line: 121, column: 16, scope: !1608)
!1622 = !DILocation(line: 117, column: 33, scope: !1603)
!1623 = !DILocation(line: 117, column: 5, scope: !1603)
!1624 = distinct !{!1624, !1604, !1625, !303}
!1625 = !DILocation(line: 122, column: 5, scope: !1598)
!1626 = !DILocation(line: 124, scope: !1606)
!1627 = !DILocalVariable(name: "i", scope: !1606, file: !25, line: 124, type: !15)
!1628 = !DILocation(line: 0, scope: !1606)
!1629 = !DILocation(line: 124, column: 26, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1606, file: !25, line: 124, column: 5)
!1631 = !DILocation(line: 134, column: 5, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1633 = !DILocation(line: 126, column: 25, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !25, line: 125, column: 5)
!1635 = !DILocation(line: 126, column: 32, scope: !1634)
!1636 = !DILocation(line: 126, column: 43, scope: !1634)
!1637 = !DILocation(line: 126, column: 40, scope: !1634)
!1638 = !DILocation(line: 126, column: 38, scope: !1634)
!1639 = !DILocation(line: 126, column: 48, scope: !1634)
!1640 = !DILocalVariable(name: "t0", scope: !1634, file: !25, line: 126, type: !6)
!1641 = !DILocation(line: 0, scope: !1634)
!1642 = !DILocation(line: 127, column: 28, scope: !1634)
!1643 = !DILocation(line: 127, column: 25, scope: !1634)
!1644 = !DILocation(line: 127, column: 32, scope: !1634)
!1645 = !DILocation(line: 127, column: 43, scope: !1634)
!1646 = !DILocation(line: 127, column: 40, scope: !1634)
!1647 = !DILocation(line: 127, column: 38, scope: !1634)
!1648 = !DILocation(line: 127, column: 48, scope: !1634)
!1649 = !DILocalVariable(name: "t1", scope: !1634, file: !25, line: 127, type: !6)
!1650 = !DILocation(line: 128, column: 23, scope: !1634)
!1651 = !DILocation(line: 128, column: 9, scope: !1634)
!1652 = !DILocation(line: 128, column: 16, scope: !1634)
!1653 = !DILocation(line: 129, column: 23, scope: !1634)
!1654 = !DILocation(line: 129, column: 12, scope: !1634)
!1655 = !DILocation(line: 129, column: 9, scope: !1634)
!1656 = !DILocation(line: 129, column: 16, scope: !1634)
!1657 = !DILocation(line: 130, column: 12, scope: !1634)
!1658 = !DILocation(line: 130, column: 9, scope: !1634)
!1659 = !DILocation(line: 130, column: 16, scope: !1634)
!1660 = !DILocation(line: 131, column: 12, scope: !1634)
!1661 = !DILocation(line: 131, column: 9, scope: !1634)
!1662 = !DILocation(line: 131, column: 16, scope: !1634)
!1663 = !DILocation(line: 124, column: 33, scope: !1630)
!1664 = !DILocation(line: 124, column: 5, scope: !1630)
!1665 = distinct !{!1665, !1605, !1666, !303}
!1666 = !DILocation(line: 132, column: 5, scope: !1606)
!1667 = !DILocation(line: 134, scope: !1632)
!1668 = !DILocalVariable(name: "i", scope: !1632, file: !25, line: 134, type: !15)
!1669 = !DILocation(line: 0, scope: !1632)
!1670 = !DILocation(line: 134, column: 26, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1632, file: !25, line: 134, column: 5)
!1672 = !DILocation(line: 145, column: 5, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1674 = !DILocation(line: 136, column: 25, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !25, line: 135, column: 5)
!1676 = !DILocation(line: 136, column: 32, scope: !1675)
!1677 = !DILocation(line: 136, column: 44, scope: !1675)
!1678 = !DILocation(line: 136, column: 41, scope: !1675)
!1679 = !DILocation(line: 136, column: 39, scope: !1675)
!1680 = !DILocation(line: 136, column: 50, scope: !1675)
!1681 = !DILocalVariable(name: "t0", scope: !1675, file: !25, line: 136, type: !6)
!1682 = !DILocation(line: 0, scope: !1675)
!1683 = !DILocation(line: 137, column: 28, scope: !1675)
!1684 = !DILocation(line: 137, column: 25, scope: !1675)
!1685 = !DILocation(line: 137, column: 32, scope: !1675)
!1686 = !DILocation(line: 137, column: 44, scope: !1675)
!1687 = !DILocation(line: 137, column: 41, scope: !1675)
!1688 = !DILocation(line: 137, column: 39, scope: !1675)
!1689 = !DILocation(line: 137, column: 50, scope: !1675)
!1690 = !DILocalVariable(name: "t1", scope: !1675, file: !25, line: 137, type: !6)
!1691 = !DILocation(line: 139, column: 23, scope: !1675)
!1692 = !DILocation(line: 139, column: 9, scope: !1675)
!1693 = !DILocation(line: 139, column: 17, scope: !1675)
!1694 = !DILocation(line: 140, column: 23, scope: !1675)
!1695 = !DILocation(line: 140, column: 12, scope: !1675)
!1696 = !DILocation(line: 140, column: 9, scope: !1675)
!1697 = !DILocation(line: 140, column: 17, scope: !1675)
!1698 = !DILocation(line: 141, column: 12, scope: !1675)
!1699 = !DILocation(line: 141, column: 9, scope: !1675)
!1700 = !DILocation(line: 141, column: 17, scope: !1675)
!1701 = !DILocation(line: 142, column: 12, scope: !1675)
!1702 = !DILocation(line: 142, column: 9, scope: !1675)
!1703 = !DILocation(line: 142, column: 17, scope: !1675)
!1704 = !DILocation(line: 134, column: 32, scope: !1671)
!1705 = !DILocation(line: 134, column: 5, scope: !1671)
!1706 = distinct !{!1706, !1631, !1707, !303}
!1707 = !DILocation(line: 143, column: 5, scope: !1632)
!1708 = !DILocation(line: 145, scope: !1673)
!1709 = !DILocalVariable(name: "i", scope: !1673, file: !25, line: 145, type: !15)
!1710 = !DILocation(line: 0, scope: !1673)
!1711 = !DILocation(line: 145, column: 26, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1673, file: !25, line: 145, column: 5)
!1713 = !DILocation(line: 147, column: 24, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1712, file: !25, line: 146, column: 5)
!1715 = !DILocation(line: 147, column: 28, scope: !1714)
!1716 = !DILocation(line: 147, column: 39, scope: !1714)
!1717 = !DILocation(line: 147, column: 36, scope: !1714)
!1718 = !DILocation(line: 147, column: 44, scope: !1714)
!1719 = !DILocalVariable(name: "t", scope: !1714, file: !25, line: 147, type: !6)
!1720 = !DILocation(line: 0, scope: !1714)
!1721 = !DILocation(line: 148, column: 21, scope: !1714)
!1722 = !DILocation(line: 148, column: 9, scope: !1714)
!1723 = !DILocation(line: 148, column: 16, scope: !1714)
!1724 = !DILocation(line: 149, column: 12, scope: !1714)
!1725 = !DILocation(line: 149, column: 9, scope: !1714)
!1726 = !DILocation(line: 149, column: 16, scope: !1714)
!1727 = !DILocation(line: 145, column: 32, scope: !1712)
!1728 = !DILocation(line: 145, column: 5, scope: !1712)
!1729 = distinct !{!1729, !1672, !1730, !303}
!1730 = !DILocation(line: 150, column: 5, scope: !1673)
!1731 = !DILocation(line: 151, column: 1, scope: !24)
!1732 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1733 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1732, file: !323, line: 61, type: !239)
!1734 = !DILocation(line: 0, scope: !1732)
!1735 = !DILocalVariable(name: "mat", arg: 2, scope: !1732, file: !323, line: 61, type: !49)
!1736 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1732, file: !323, line: 61, type: !326)
!1737 = !DILocalVariable(name: "acc", arg: 4, scope: !1732, file: !323, line: 61, type: !5)
!1738 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1732, file: !323, line: 62, type: !239)
!1739 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1732, file: !323, line: 62, type: !239)
!1740 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1732, file: !323, line: 62, type: !239)
!1741 = !DILocalVariable(name: "r", scope: !1742, file: !323, line: 64, type: !45)
!1742 = distinct !DILexicalBlock(scope: !1732, file: !323, line: 64, column: 5)
!1743 = !DILocation(line: 0, scope: !1742)
!1744 = !DILocation(line: 64, column: 10, scope: !1742)
!1745 = !DILocation(line: 64, scope: !1742)
!1746 = !DILocation(line: 64, column: 23, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !323, line: 64, column: 5)
!1748 = !DILocation(line: 64, column: 5, scope: !1742)
!1749 = !DILocation(line: 65, column: 9, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !323, line: 65, column: 9)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !323, line: 64, column: 40)
!1752 = !DILocation(line: 65, scope: !1750)
!1753 = !DILocalVariable(name: "c", scope: !1750, file: !323, line: 65, type: !45)
!1754 = !DILocation(line: 0, scope: !1750)
!1755 = !DILocation(line: 65, column: 27, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1750, file: !323, line: 65, column: 9)
!1757 = !DILocation(line: 66, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !323, line: 66, column: 13)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !323, line: 65, column: 44)
!1760 = !DILocation(line: 66, scope: !1758)
!1761 = !DILocalVariable(name: "k", scope: !1758, file: !323, line: 66, type: !45)
!1762 = !DILocation(line: 0, scope: !1758)
!1763 = !DILocation(line: 66, column: 31, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !323, line: 66, column: 13)
!1765 = !DILocation(line: 67, column: 70, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1764, file: !323, line: 66, column: 54)
!1767 = !DILocation(line: 67, column: 84, scope: !1766)
!1768 = !DILocation(line: 67, column: 51, scope: !1766)
!1769 = !DILocation(line: 67, column: 96, scope: !1766)
!1770 = !DILocation(line: 67, column: 90, scope: !1766)
!1771 = !DILocation(line: 67, column: 136, scope: !1766)
!1772 = !DILocation(line: 67, column: 150, scope: !1766)
!1773 = !DILocation(line: 67, column: 117, scope: !1766)
!1774 = !DILocation(line: 67, column: 17, scope: !1766)
!1775 = !DILocation(line: 66, column: 48, scope: !1764)
!1776 = !DILocation(line: 66, column: 13, scope: !1764)
!1777 = distinct !{!1777, !1757, !1778, !303}
!1778 = !DILocation(line: 68, column: 13, scope: !1758)
!1779 = !DILocation(line: 65, column: 40, scope: !1756)
!1780 = !DILocation(line: 65, column: 9, scope: !1756)
!1781 = distinct !{!1781, !1749, !1782, !303}
!1782 = !DILocation(line: 69, column: 9, scope: !1750)
!1783 = !DILocation(line: 64, column: 36, scope: !1747)
!1784 = !DILocation(line: 64, column: 5, scope: !1747)
!1785 = distinct !{!1785, !1748, !1786, !303}
!1786 = !DILocation(line: 70, column: 5, scope: !1742)
!1787 = !DILocation(line: 71, column: 1, scope: !1732)
!1788 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1789 = !DILocalVariable(name: "p", arg: 1, scope: !1788, file: !323, line: 82, type: !174)
!1790 = !DILocation(line: 0, scope: !1788)
!1791 = !DILocalVariable(name: "P1", arg: 2, scope: !1788, file: !323, line: 82, type: !326)
!1792 = !DILocalVariable(name: "V", arg: 3, scope: !1788, file: !323, line: 82, type: !49)
!1793 = !DILocalVariable(name: "acc", arg: 4, scope: !1788, file: !323, line: 82, type: !5)
!1794 = !DILocation(line: 86, column: 5, scope: !1788)
!1795 = !DILocation(line: 87, column: 1, scope: !1788)
!1796 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1797 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1796, file: !323, line: 32, type: !239)
!1798 = !DILocation(line: 0, scope: !1796)
!1799 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1796, file: !323, line: 32, type: !326)
!1800 = !DILocalVariable(name: "mat", arg: 3, scope: !1796, file: !323, line: 32, type: !49)
!1801 = !DILocalVariable(name: "acc", arg: 4, scope: !1796, file: !323, line: 32, type: !5)
!1802 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1796, file: !323, line: 33, type: !239)
!1803 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1796, file: !323, line: 33, type: !239)
!1804 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1796, file: !323, line: 33, type: !239)
!1805 = !DILocalVariable(name: "triangular", arg: 8, scope: !1796, file: !323, line: 33, type: !239)
!1806 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1796, file: !323, line: 34, type: !45)
!1807 = !DILocalVariable(name: "r", scope: !1808, file: !323, line: 35, type: !45)
!1808 = distinct !DILexicalBlock(scope: !1796, file: !323, line: 35, column: 5)
!1809 = !DILocation(line: 0, scope: !1808)
!1810 = !DILocation(line: 35, column: 10, scope: !1808)
!1811 = !DILocation(line: 34, column: 9, scope: !1796)
!1812 = !DILocation(line: 35, scope: !1808)
!1813 = !DILocation(line: 35, column: 23, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1808, file: !323, line: 35, column: 5)
!1815 = !DILocation(line: 35, column: 5, scope: !1808)
!1816 = !DILocation(line: 36, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !323, line: 36, column: 9)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !323, line: 35, column: 43)
!1819 = !DILocation(line: 36, scope: !1817)
!1820 = !DILocalVariable(name: "c", scope: !1817, file: !323, line: 36, type: !45)
!1821 = !DILocation(line: 0, scope: !1817)
!1822 = !DILocation(line: 36, column: 40, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1817, file: !323, line: 36, column: 9)
!1824 = !DILocation(line: 37, column: 13, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !323, line: 37, column: 13)
!1826 = distinct !DILexicalBlock(scope: !1823, file: !323, line: 36, column: 60)
!1827 = !DILocation(line: 37, scope: !1825)
!1828 = !DILocalVariable(name: "k", scope: !1825, file: !323, line: 37, type: !45)
!1829 = !DILocation(line: 0, scope: !1825)
!1830 = !DILocation(line: 37, column: 31, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !323, line: 37, column: 13)
!1832 = !DILocation(line: 38, column: 51, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1831, file: !323, line: 37, column: 51)
!1834 = !DILocation(line: 38, column: 94, scope: !1833)
!1835 = !DILocation(line: 38, column: 88, scope: !1833)
!1836 = !DILocation(line: 38, column: 137, scope: !1833)
!1837 = !DILocation(line: 38, column: 148, scope: !1833)
!1838 = !DILocation(line: 38, column: 118, scope: !1833)
!1839 = !DILocation(line: 38, column: 17, scope: !1833)
!1840 = !DILocation(line: 37, column: 45, scope: !1831)
!1841 = !DILocation(line: 37, column: 13, scope: !1831)
!1842 = distinct !{!1842, !1824, !1843, !303}
!1843 = !DILocation(line: 39, column: 13, scope: !1825)
!1844 = !DILocation(line: 40, column: 33, scope: !1826)
!1845 = !DILocation(line: 36, column: 56, scope: !1823)
!1846 = !DILocation(line: 36, column: 9, scope: !1823)
!1847 = distinct !{!1847, !1816, !1848, !303}
!1848 = !DILocation(line: 41, column: 9, scope: !1817)
!1849 = !DILocation(line: 35, column: 39, scope: !1814)
!1850 = !DILocation(line: 35, column: 5, scope: !1814)
!1851 = distinct !{!1851, !1815, !1852, !303}
!1852 = !DILocation(line: 42, column: 5, scope: !1808)
!1853 = !DILocation(line: 43, column: 1, scope: !1796)
!1854 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !702, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1855 = !DILocalVariable(name: "p", arg: 1, scope: !1854, file: !25, line: 501, type: !174)
!1856 = !DILocation(line: 0, scope: !1854)
!1857 = !DILocalVariable(name: "sm", arg: 2, scope: !1854, file: !25, line: 501, type: !18)
!1858 = !DILocalVariable(name: "smlen", arg: 3, scope: !1854, file: !25, line: 502, type: !704)
!1859 = !DILocalVariable(name: "m", arg: 4, scope: !1854, file: !25, line: 502, type: !49)
!1860 = !DILocalVariable(name: "mlen", arg: 5, scope: !1854, file: !25, line: 503, type: !15)
!1861 = !DILocalVariable(name: "csk", arg: 6, scope: !1854, file: !25, line: 503, type: !49)
!1862 = !DILocalVariable(name: "ret", scope: !1854, file: !25, line: 504, type: !45)
!1863 = !DILocalVariable(name: "param_sig_bytes", scope: !1854, file: !25, line: 505, type: !239)
!1864 = !DILocation(line: 507, column: 16, scope: !1854)
!1865 = !DILocation(line: 507, column: 5, scope: !1854)
!1866 = !DILocation(line: 508, column: 50, scope: !1854)
!1867 = !DILocalVariable(name: "siglen", scope: !1854, file: !25, line: 506, type: !15)
!1868 = !DILocation(line: 508, column: 11, scope: !1854)
!1869 = !DILocation(line: 509, column: 13, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1854, file: !25, line: 509, column: 9)
!1871 = !DILocation(line: 509, column: 24, scope: !1870)
!1872 = !DILocation(line: 510, column: 23, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !25, line: 509, column: 62)
!1874 = !DILocation(line: 510, column: 30, scope: !1873)
!1875 = !DILocation(line: 510, column: 9, scope: !1873)
!1876 = !DILocation(line: 511, column: 9, scope: !1873)
!1877 = !DILocation(line: 514, column: 14, scope: !1854)
!1878 = !DILocation(line: 514, column: 21, scope: !1854)
!1879 = !DILocation(line: 514, column: 12, scope: !1854)
!1880 = !DILocation(line: 514, column: 5, scope: !1854)
!1881 = !DILabel(scope: !1854, name: "err", file: !25, line: 515)
!1882 = !DILocation(line: 515, column: 1, scope: !1854)
!1883 = !DILocation(line: 516, column: 5, scope: !1854)
!1884 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_open", scope: !25, file: !25, line: 519, type: !702, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1885 = !DILocalVariable(name: "p", arg: 1, scope: !1884, file: !25, line: 519, type: !174)
!1886 = !DILocation(line: 0, scope: !1884)
!1887 = !DILocalVariable(name: "m", arg: 2, scope: !1884, file: !25, line: 519, type: !18)
!1888 = !DILocalVariable(name: "mlen", arg: 3, scope: !1884, file: !25, line: 520, type: !704)
!1889 = !DILocalVariable(name: "sm", arg: 4, scope: !1884, file: !25, line: 520, type: !49)
!1890 = !DILocalVariable(name: "smlen", arg: 5, scope: !1884, file: !25, line: 521, type: !15)
!1891 = !DILocalVariable(name: "pk", arg: 6, scope: !1884, file: !25, line: 521, type: !49)
!1892 = !DILocalVariable(name: "param_sig_bytes", scope: !1884, file: !25, line: 522, type: !239)
!1893 = !DILocation(line: 523, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1884, file: !25, line: 523, column: 9)
!1895 = !DILocation(line: 526, column: 36, scope: !1884)
!1896 = !DILocation(line: 526, column: 61, scope: !1884)
!1897 = !DILocation(line: 526, column: 18, scope: !1884)
!1898 = !DILocalVariable(name: "result", scope: !1884, file: !25, line: 526, type: !45)
!1899 = !DILocation(line: 529, column: 16, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1884, file: !25, line: 529, column: 9)
!1901 = !DILocation(line: 530, column: 23, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1900, file: !25, line: 529, column: 28)
!1903 = !DILocation(line: 530, column: 15, scope: !1902)
!1904 = !DILocation(line: 531, column: 23, scope: !1902)
!1905 = !DILocation(line: 531, column: 9, scope: !1902)
!1906 = !DILocation(line: 532, column: 5, scope: !1902)
!1907 = !DILocation(line: 535, column: 1, scope: !1884)
!1908 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1909, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!45, !174, !49, !15, !49, !49}
!1911 = !DILocalVariable(name: "p", arg: 1, scope: !1908, file: !25, line: 616, type: !174)
!1912 = !DILocation(line: 0, scope: !1908)
!1913 = !DILocalVariable(name: "m", arg: 2, scope: !1908, file: !25, line: 616, type: !49)
!1914 = !DILocalVariable(name: "mlen", arg: 3, scope: !1908, file: !25, line: 617, type: !15)
!1915 = !DILocalVariable(name: "sig", arg: 4, scope: !1908, file: !25, line: 617, type: !49)
!1916 = !DILocalVariable(name: "cpk", arg: 5, scope: !1908, file: !25, line: 618, type: !49)
!1917 = !DILocalVariable(name: "tEnc", scope: !1908, file: !25, line: 619, type: !714)
!1918 = !DILocation(line: 619, column: 19, scope: !1908)
!1919 = !DILocalVariable(name: "t", scope: !1908, file: !25, line: 620, type: !719)
!1920 = !DILocation(line: 620, column: 19, scope: !1908)
!1921 = !DILocalVariable(name: "y", scope: !1908, file: !25, line: 621, type: !1922)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1248, elements: !1923)
!1923 = !{!1924}
!1924 = !DISubrange(count: 156)
!1925 = !DILocation(line: 621, column: 19, scope: !1908)
!1926 = !DILocalVariable(name: "s", scope: !1908, file: !25, line: 622, type: !746)
!1927 = !DILocation(line: 622, column: 19, scope: !1908)
!1928 = !DILocalVariable(name: "pk", scope: !1908, file: !25, line: 623, type: !123)
!1929 = !DILocation(line: 623, column: 14, scope: !1908)
!1930 = !DILocalVariable(name: "tmp", scope: !1908, file: !25, line: 624, type: !1931)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1932)
!1932 = !{!1933}
!1933 = !DISubrange(count: 56)
!1934 = !DILocation(line: 624, column: 19, scope: !1908)
!1935 = !DILocalVariable(name: "param_m", scope: !1908, file: !25, line: 626, type: !239)
!1936 = !DILocalVariable(name: "param_n", scope: !1908, file: !25, line: 627, type: !239)
!1937 = !DILocalVariable(name: "param_k", scope: !1908, file: !25, line: 628, type: !239)
!1938 = !DILocalVariable(name: "param_m_bytes", scope: !1908, file: !25, line: 629, type: !239)
!1939 = !DILocalVariable(name: "param_sig_bytes", scope: !1908, file: !25, line: 630, type: !239)
!1940 = !DILocalVariable(name: "param_digest_bytes", scope: !1908, file: !25, line: 631, type: !239)
!1941 = !DILocalVariable(name: "param_salt_bytes", scope: !1908, file: !25, line: 632, type: !239)
!1942 = !DILocation(line: 634, column: 15, scope: !1908)
!1943 = !DILocalVariable(name: "ret", scope: !1908, file: !25, line: 634, type: !45)
!1944 = !DILocalVariable(name: "P1", scope: !1908, file: !25, line: 639, type: !5)
!1945 = !DILocation(line: 640, column: 23, scope: !1908)
!1946 = !DILocalVariable(name: "P2", scope: !1908, file: !25, line: 640, type: !5)
!1947 = !DILocation(line: 641, column: 23, scope: !1908)
!1948 = !DILocalVariable(name: "P3", scope: !1908, file: !25, line: 641, type: !5)
!1949 = !DILocation(line: 656, column: 5, scope: !1908)
!1950 = !DILocation(line: 659, column: 16, scope: !1908)
!1951 = !DILocation(line: 659, column: 60, scope: !1908)
!1952 = !DILocation(line: 659, column: 5, scope: !1908)
!1953 = !DILocation(line: 661, column: 5, scope: !1908)
!1954 = !DILocation(line: 662, column: 5, scope: !1908)
!1955 = !DILocation(line: 665, column: 5, scope: !1908)
!1956 = !DILocation(line: 667, column: 5, scope: !1908)
!1957 = !DILocation(line: 669, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1908, file: !25, line: 669, column: 9)
!1959 = !DILocation(line: 669, column: 31, scope: !1958)
!1960 = !DILocation(line: 673, column: 1, scope: !1908)
!1961 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !603, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1962 = !DILocalVariable(name: "p", arg: 1, scope: !1961, file: !25, line: 607, type: !174)
!1963 = !DILocation(line: 0, scope: !1961)
!1964 = !DILocalVariable(name: "cpk", arg: 2, scope: !1961, file: !25, line: 607, type: !49)
!1965 = !DILocalVariable(name: "pk", arg: 3, scope: !1961, file: !25, line: 608, type: !5)
!1966 = !DILocation(line: 609, column: 5, scope: !1961)
!1967 = !DILocation(line: 611, column: 23, scope: !1961)
!1968 = !DILocation(line: 611, column: 72, scope: !1961)
!1969 = !DILocation(line: 611, column: 5, scope: !1961)
!1970 = !DILocation(line: 613, column: 5, scope: !1961)
!1971 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1972, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !174, !49, !326, !326, !326, !18}
!1974 = !DILocalVariable(name: "p", arg: 1, scope: !1971, file: !25, line: 288, type: !174)
!1975 = !DILocation(line: 0, scope: !1971)
!1976 = !DILocalVariable(name: "s", arg: 2, scope: !1971, file: !25, line: 288, type: !49)
!1977 = !DILocalVariable(name: "P1", arg: 3, scope: !1971, file: !25, line: 288, type: !326)
!1978 = !DILocalVariable(name: "P2", arg: 4, scope: !1971, file: !25, line: 288, type: !326)
!1979 = !DILocalVariable(name: "P3", arg: 5, scope: !1971, file: !25, line: 288, type: !326)
!1980 = !DILocalVariable(name: "eval", arg: 6, scope: !1971, file: !25, line: 288, type: !18)
!1981 = !DILocalVariable(name: "SPS", scope: !1971, file: !25, line: 289, type: !1982)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32000, elements: !1983)
!1983 = !{!1984}
!1984 = !DISubrange(count: 500)
!1985 = !DILocation(line: 289, column: 14, scope: !1971)
!1986 = !DILocation(line: 291, column: 5, scope: !1971)
!1987 = !DILocalVariable(name: "zero", scope: !1971, file: !25, line: 292, type: !719)
!1988 = !DILocation(line: 292, column: 19, scope: !1971)
!1989 = !DILocation(line: 293, column: 5, scope: !1971)
!1990 = !DILocation(line: 294, column: 1, scope: !1971)
!1991 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !1992, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !174, !326, !326, !326, !49, !5}
!1994 = !DILocalVariable(name: "p", arg: 1, scope: !1991, file: !323, line: 277, type: !174)
!1995 = !DILocation(line: 0, scope: !1991)
!1996 = !DILocalVariable(name: "P1", arg: 2, scope: !1991, file: !323, line: 277, type: !326)
!1997 = !DILocalVariable(name: "P2", arg: 3, scope: !1991, file: !323, line: 277, type: !326)
!1998 = !DILocalVariable(name: "P3", arg: 4, scope: !1991, file: !323, line: 277, type: !326)
!1999 = !DILocalVariable(name: "s", arg: 5, scope: !1991, file: !323, line: 277, type: !49)
!2000 = !DILocalVariable(name: "SPS", arg: 6, scope: !1991, file: !323, line: 278, type: !5)
!2001 = !DILocalVariable(name: "PS", scope: !1991, file: !323, line: 286, type: !2002)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 275200, elements: !2003)
!2003 = !{!2004}
!2004 = !DISubrange(count: 4300)
!2005 = !DILocation(line: 286, column: 14, scope: !1991)
!2006 = !DILocation(line: 287, column: 5, scope: !1991)
!2007 = !DILocation(line: 290, column: 5, scope: !1991)
!2008 = !DILocation(line: 292, column: 1, scope: !1991)
!2009 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !2010, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!2012 = !DILocalVariable(name: "P1", arg: 1, scope: !2009, file: !323, line: 151, type: !326)
!2013 = !DILocation(line: 0, scope: !2009)
!2014 = !DILocalVariable(name: "P2", arg: 2, scope: !2009, file: !323, line: 151, type: !326)
!2015 = !DILocalVariable(name: "P3", arg: 3, scope: !2009, file: !323, line: 151, type: !326)
!2016 = !DILocalVariable(name: "S", arg: 4, scope: !2009, file: !323, line: 151, type: !49)
!2017 = !DILocalVariable(name: "m", arg: 5, scope: !2009, file: !323, line: 152, type: !239)
!2018 = !DILocalVariable(name: "v", arg: 6, scope: !2009, file: !323, line: 152, type: !239)
!2019 = !DILocalVariable(name: "o", arg: 7, scope: !2009, file: !323, line: 152, type: !239)
!2020 = !DILocalVariable(name: "k", arg: 8, scope: !2009, file: !323, line: 152, type: !239)
!2021 = !DILocalVariable(name: "PS", arg: 9, scope: !2009, file: !323, line: 152, type: !5)
!2022 = !DILocalVariable(name: "n", scope: !2009, file: !323, line: 154, type: !239)
!2023 = !DILocalVariable(name: "m_vec_limbs", scope: !2009, file: !323, line: 155, type: !239)
!2024 = !DILocalVariable(name: "accumulator", scope: !2009, file: !323, line: 157, type: !2025)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4403200, elements: !2026)
!2026 = !{!2027}
!2027 = !DISubrange(count: 68800)
!2028 = !DILocation(line: 157, column: 14, scope: !2009)
!2029 = !DILocalVariable(name: "P1_used", scope: !2009, file: !323, line: 158, type: !45)
!2030 = !DILocalVariable(name: "row", scope: !2031, file: !323, line: 159, type: !45)
!2031 = distinct !DILexicalBlock(scope: !2009, file: !323, line: 159, column: 5)
!2032 = !DILocation(line: 0, scope: !2031)
!2033 = !DILocation(line: 159, column: 10, scope: !2031)
!2034 = !DILocation(line: 158, column: 9, scope: !2009)
!2035 = !DILocation(line: 159, scope: !2031)
!2036 = !DILocation(line: 159, column: 27, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !323, line: 159, column: 5)
!2038 = !DILocation(line: 159, column: 5, scope: !2031)
!2039 = !DILocation(line: 160, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !323, line: 160, column: 9)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !323, line: 159, column: 39)
!2042 = !DILocation(line: 175, column: 5, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2009, file: !323, line: 175, column: 5)
!2044 = !DILocation(line: 160, scope: !2040)
!2045 = !DILocalVariable(name: "j", scope: !2040, file: !323, line: 160, type: !45)
!2046 = !DILocation(line: 0, scope: !2040)
!2047 = !DILocation(line: 160, column: 29, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2040, file: !323, line: 160, column: 9)
!2049 = !DILocation(line: 167, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2041, file: !323, line: 167, column: 9)
!2051 = !DILocation(line: 161, column: 13, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !323, line: 161, column: 13)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !323, line: 160, column: 39)
!2054 = !DILocation(line: 161, scope: !2052)
!2055 = !DILocalVariable(name: "col", scope: !2052, file: !323, line: 161, type: !45)
!2056 = !DILocation(line: 0, scope: !2052)
!2057 = !DILocation(line: 161, column: 35, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !323, line: 161, column: 13)
!2059 = !DILocation(line: 162, column: 43, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2058, file: !323, line: 161, column: 47)
!2061 = !DILocation(line: 162, column: 91, scope: !2060)
!2062 = !DILocation(line: 162, column: 95, scope: !2060)
!2063 = !DILocation(line: 162, column: 102, scope: !2060)
!2064 = !DILocation(line: 162, column: 115, scope: !2060)
!2065 = !DILocation(line: 162, column: 109, scope: !2060)
!2066 = !DILocation(line: 162, column: 107, scope: !2060)
!2067 = !DILocation(line: 162, column: 82, scope: !2060)
!2068 = !DILocation(line: 162, column: 17, scope: !2060)
!2069 = !DILocation(line: 161, column: 43, scope: !2058)
!2070 = !DILocation(line: 161, column: 13, scope: !2058)
!2071 = distinct !{!2071, !2051, !2072, !303}
!2072 = !DILocation(line: 163, column: 13, scope: !2052)
!2073 = !DILocation(line: 164, column: 21, scope: !2053)
!2074 = !DILocation(line: 160, column: 35, scope: !2048)
!2075 = !DILocation(line: 160, column: 9, scope: !2048)
!2076 = distinct !{!2076, !2039, !2077, !303}
!2077 = !DILocation(line: 165, column: 9, scope: !2040)
!2078 = !DILocation(line: 167, scope: !2050)
!2079 = !DILocalVariable(name: "j", scope: !2050, file: !323, line: 167, type: !45)
!2080 = !DILocation(line: 0, scope: !2050)
!2081 = !DILocation(line: 167, column: 27, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2050, file: !323, line: 167, column: 9)
!2083 = !DILocation(line: 168, column: 13, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !323, line: 168, column: 13)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !323, line: 167, column: 37)
!2086 = !DILocation(line: 168, scope: !2084)
!2087 = !DILocalVariable(name: "col", scope: !2084, file: !323, line: 168, type: !45)
!2088 = !DILocation(line: 0, scope: !2084)
!2089 = !DILocation(line: 168, column: 35, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !323, line: 168, column: 13)
!2091 = !DILocation(line: 169, column: 50, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !323, line: 168, column: 47)
!2093 = !DILocation(line: 169, column: 54, scope: !2092)
!2094 = !DILocation(line: 169, column: 43, scope: !2092)
!2095 = !DILocation(line: 169, column: 93, scope: !2092)
!2096 = !DILocation(line: 169, column: 97, scope: !2092)
!2097 = !DILocation(line: 169, column: 104, scope: !2092)
!2098 = !DILocation(line: 169, column: 118, scope: !2092)
!2099 = !DILocation(line: 169, column: 111, scope: !2092)
!2100 = !DILocation(line: 169, column: 109, scope: !2092)
!2101 = !DILocation(line: 169, column: 84, scope: !2092)
!2102 = !DILocation(line: 169, column: 17, scope: !2092)
!2103 = !DILocation(line: 168, column: 43, scope: !2090)
!2104 = !DILocation(line: 168, column: 13, scope: !2090)
!2105 = distinct !{!2105, !2083, !2106, !303}
!2106 = !DILocation(line: 170, column: 13, scope: !2084)
!2107 = !DILocation(line: 167, column: 33, scope: !2082)
!2108 = !DILocation(line: 167, column: 9, scope: !2082)
!2109 = distinct !{!2109, !2049, !2110, !303}
!2110 = !DILocation(line: 171, column: 9, scope: !2050)
!2111 = !DILocation(line: 159, column: 35, scope: !2037)
!2112 = !DILocation(line: 159, column: 5, scope: !2037)
!2113 = distinct !{!2113, !2038, !2114, !303}
!2114 = !DILocation(line: 172, column: 5, scope: !2031)
!2115 = !DILocation(line: 174, column: 9, scope: !2009)
!2116 = !DILocation(line: 175, scope: !2043)
!2117 = !DILocalVariable(name: "row", scope: !2043, file: !323, line: 175, type: !45)
!2118 = !DILocation(line: 0, scope: !2043)
!2119 = !DILocalVariable(name: "P3_used", scope: !2009, file: !323, line: 174, type: !45)
!2120 = !DILocation(line: 175, column: 27, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2043, file: !323, line: 175, column: 5)
!2122 = !DILocation(line: 176, column: 9, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !323, line: 176, column: 9)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !323, line: 175, column: 39)
!2125 = !DILocation(line: 186, column: 5, scope: !2009)
!2126 = !DILocation(line: 176, scope: !2123)
!2127 = !DILocalVariable(name: "j", scope: !2123, file: !323, line: 176, type: !45)
!2128 = !DILocation(line: 0, scope: !2123)
!2129 = !DILocation(line: 176, column: 29, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2123, file: !323, line: 176, column: 9)
!2131 = !DILocation(line: 177, column: 13, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !323, line: 177, column: 13)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !323, line: 176, column: 39)
!2134 = !DILocation(line: 177, scope: !2132)
!2135 = !DILocalVariable(name: "col", scope: !2132, file: !323, line: 177, type: !45)
!2136 = !DILocation(line: 0, scope: !2132)
!2137 = !DILocation(line: 177, column: 35, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !323, line: 177, column: 13)
!2139 = !DILocation(line: 178, column: 43, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2138, file: !323, line: 177, column: 47)
!2141 = !DILocation(line: 178, column: 89, scope: !2140)
!2142 = !DILocation(line: 178, column: 93, scope: !2140)
!2143 = !DILocation(line: 178, column: 100, scope: !2140)
!2144 = !DILocation(line: 178, column: 113, scope: !2140)
!2145 = !DILocation(line: 178, column: 107, scope: !2140)
!2146 = !DILocation(line: 178, column: 105, scope: !2140)
!2147 = !DILocation(line: 178, column: 80, scope: !2140)
!2148 = !DILocation(line: 178, column: 17, scope: !2140)
!2149 = !DILocation(line: 177, column: 43, scope: !2138)
!2150 = !DILocation(line: 177, column: 13, scope: !2138)
!2151 = distinct !{!2151, !2131, !2152, !303}
!2152 = !DILocation(line: 179, column: 13, scope: !2132)
!2153 = !DILocation(line: 180, column: 21, scope: !2133)
!2154 = !DILocation(line: 176, column: 35, scope: !2130)
!2155 = !DILocation(line: 176, column: 9, scope: !2130)
!2156 = distinct !{!2156, !2122, !2157, !303}
!2157 = !DILocation(line: 181, column: 9, scope: !2123)
!2158 = !DILocation(line: 175, column: 35, scope: !2121)
!2159 = !DILocation(line: 175, column: 5, scope: !2121)
!2160 = distinct !{!2160, !2042, !2161, !303}
!2161 = !DILocation(line: 182, column: 5, scope: !2043)
!2162 = !DILocalVariable(name: "i", scope: !2009, file: !323, line: 185, type: !45)
!2163 = !DILocation(line: 186, column: 14, scope: !2009)
!2164 = !DILocation(line: 187, column: 54, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2009, file: !323, line: 186, column: 23)
!2166 = !DILocation(line: 187, column: 81, scope: !2165)
!2167 = !DILocation(line: 187, column: 9, scope: !2165)
!2168 = !DILocation(line: 188, column: 10, scope: !2165)
!2169 = distinct !{!2169, !2125, !2170, !303}
!2170 = !DILocation(line: 189, column: 5, scope: !2009)
!2171 = !DILocation(line: 191, column: 1, scope: !2009)
!2172 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2173, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !326, !49, !45, !45, !45, !5}
!2175 = !DILocalVariable(name: "PS", arg: 1, scope: !2172, file: !323, line: 195, type: !326)
!2176 = !DILocation(line: 0, scope: !2172)
!2177 = !DILocalVariable(name: "S", arg: 2, scope: !2172, file: !323, line: 195, type: !49)
!2178 = !DILocalVariable(name: "m", arg: 3, scope: !2172, file: !323, line: 195, type: !45)
!2179 = !DILocalVariable(name: "k", arg: 4, scope: !2172, file: !323, line: 195, type: !45)
!2180 = !DILocalVariable(name: "n", arg: 5, scope: !2172, file: !323, line: 195, type: !45)
!2181 = !DILocalVariable(name: "SPS", arg: 6, scope: !2172, file: !323, line: 195, type: !5)
!2182 = !DILocalVariable(name: "accumulator", scope: !2172, file: !323, line: 196, type: !2183)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512000, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 8000)
!2186 = !DILocation(line: 196, column: 14, scope: !2172)
!2187 = !DILocalVariable(name: "m_vec_limbs", scope: !2172, file: !323, line: 197, type: !239)
!2188 = !DILocalVariable(name: "row", scope: !2189, file: !323, line: 198, type: !45)
!2189 = distinct !DILexicalBlock(scope: !2172, file: !323, line: 198, column: 5)
!2190 = !DILocation(line: 0, scope: !2189)
!2191 = !DILocation(line: 198, column: 10, scope: !2189)
!2192 = !DILocation(line: 198, scope: !2189)
!2193 = !DILocation(line: 198, column: 27, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2189, file: !323, line: 198, column: 5)
!2195 = !DILocation(line: 198, column: 5, scope: !2189)
!2196 = !DILocation(line: 199, column: 9, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !323, line: 199, column: 9)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !323, line: 198, column: 39)
!2199 = !DILocation(line: 208, column: 5, scope: !2172)
!2200 = !DILocation(line: 199, scope: !2197)
!2201 = !DILocalVariable(name: "j", scope: !2197, file: !323, line: 199, type: !45)
!2202 = !DILocation(line: 0, scope: !2197)
!2203 = !DILocation(line: 199, column: 27, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2197, file: !323, line: 199, column: 9)
!2205 = !DILocation(line: 200, column: 13, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !323, line: 200, column: 13)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !323, line: 199, column: 37)
!2208 = !DILocation(line: 200, scope: !2206)
!2209 = !DILocalVariable(name: "col", scope: !2206, file: !323, line: 200, type: !45)
!2210 = !DILocation(line: 0, scope: !2206)
!2211 = !DILocation(line: 200, column: 35, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2206, file: !323, line: 200, column: 13)
!2213 = !DILocation(line: 201, column: 52, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2212, file: !323, line: 200, column: 50)
!2215 = !DILocation(line: 201, column: 56, scope: !2214)
!2216 = !DILocation(line: 201, column: 47, scope: !2214)
!2217 = !DILocation(line: 201, column: 99, scope: !2214)
!2218 = !DILocation(line: 201, column: 103, scope: !2214)
!2219 = !DILocation(line: 201, column: 110, scope: !2214)
!2220 = !DILocation(line: 201, column: 123, scope: !2214)
!2221 = !DILocation(line: 201, column: 117, scope: !2214)
!2222 = !DILocation(line: 201, column: 115, scope: !2214)
!2223 = !DILocation(line: 201, column: 90, scope: !2214)
!2224 = !DILocation(line: 201, column: 21, scope: !2214)
!2225 = !DILocation(line: 200, column: 44, scope: !2212)
!2226 = !DILocation(line: 200, column: 13, scope: !2212)
!2227 = distinct !{!2227, !2205, !2228, !303}
!2228 = !DILocation(line: 202, column: 13, scope: !2206)
!2229 = !DILocation(line: 199, column: 33, scope: !2204)
!2230 = !DILocation(line: 199, column: 9, scope: !2204)
!2231 = distinct !{!2231, !2196, !2232, !303}
!2232 = !DILocation(line: 203, column: 9, scope: !2197)
!2233 = !DILocation(line: 198, column: 35, scope: !2194)
!2234 = !DILocation(line: 198, column: 5, scope: !2194)
!2235 = distinct !{!2235, !2195, !2236, !303}
!2236 = !DILocation(line: 204, column: 5, scope: !2189)
!2237 = !DILocalVariable(name: "i", scope: !2172, file: !323, line: 207, type: !45)
!2238 = !DILocation(line: 208, column: 14, scope: !2172)
!2239 = !DILocation(line: 209, column: 54, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2172, file: !323, line: 208, column: 21)
!2241 = !DILocation(line: 209, column: 82, scope: !2240)
!2242 = !DILocation(line: 209, column: 9, scope: !2240)
!2243 = !DILocation(line: 210, column: 10, scope: !2240)
!2244 = distinct !{!2244, !2199, !2245, !303}
!2245 = !DILocation(line: 211, column: 5, scope: !2172)
!2246 = !DILocation(line: 212, column: 1, scope: !2172)
!2247 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2248, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !45, !326, !5}
!2250 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2247, file: !437, line: 22, type: !45)
!2251 = !DILocation(line: 0, scope: !2247)
!2252 = !DILocalVariable(name: "in", arg: 2, scope: !2247, file: !437, line: 22, type: !326)
!2253 = !DILocalVariable(name: "acc", arg: 3, scope: !2247, file: !437, line: 22, type: !5)
!2254 = !DILocalVariable(name: "i", scope: !2255, file: !437, line: 24, type: !15)
!2255 = distinct !DILexicalBlock(scope: !2247, file: !437, line: 24, column: 5)
!2256 = !DILocation(line: 0, scope: !2255)
!2257 = !DILocation(line: 24, column: 10, scope: !2255)
!2258 = !DILocation(line: 24, scope: !2255)
!2259 = !DILocation(line: 24, column: 26, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !437, line: 24, column: 5)
!2261 = !DILocation(line: 24, column: 5, scope: !2255)
!2262 = !DILocation(line: 26, column: 19, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !437, line: 25, column: 5)
!2264 = !DILocation(line: 26, column: 9, scope: !2263)
!2265 = !DILocation(line: 26, column: 16, scope: !2263)
!2266 = !DILocation(line: 24, column: 46, scope: !2260)
!2267 = !DILocation(line: 24, column: 5, scope: !2260)
!2268 = distinct !{!2268, !2261, !2269, !303}
!2269 = !DILocation(line: 27, column: 5, scope: !2255)
!2270 = !DILocation(line: 28, column: 1, scope: !2247)
!2271 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2272, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !45, !5, !5}
!2274 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2271, file: !437, line: 66, type: !45)
!2275 = !DILocation(line: 0, scope: !2271)
!2276 = !DILocalVariable(name: "bins", arg: 2, scope: !2271, file: !437, line: 66, type: !5)
!2277 = !DILocalVariable(name: "out", arg: 3, scope: !2271, file: !437, line: 66, type: !5)
!2278 = !DILocation(line: 67, column: 44, scope: !2271)
!2279 = !DILocation(line: 67, column: 73, scope: !2271)
!2280 = !DILocation(line: 67, column: 5, scope: !2271)
!2281 = !DILocation(line: 68, column: 40, scope: !2271)
!2282 = !DILocation(line: 68, column: 69, scope: !2271)
!2283 = !DILocation(line: 68, column: 5, scope: !2271)
!2284 = !DILocation(line: 69, column: 44, scope: !2271)
!2285 = !DILocation(line: 69, column: 74, scope: !2271)
!2286 = !DILocation(line: 69, column: 5, scope: !2271)
!2287 = !DILocation(line: 70, column: 40, scope: !2271)
!2288 = !DILocation(line: 70, column: 69, scope: !2271)
!2289 = !DILocation(line: 70, column: 5, scope: !2271)
!2290 = !DILocation(line: 71, column: 44, scope: !2271)
!2291 = !DILocation(line: 71, column: 73, scope: !2271)
!2292 = !DILocation(line: 71, column: 5, scope: !2271)
!2293 = !DILocation(line: 72, column: 40, scope: !2271)
!2294 = !DILocation(line: 72, column: 69, scope: !2271)
!2295 = !DILocation(line: 72, column: 5, scope: !2271)
!2296 = !DILocation(line: 73, column: 44, scope: !2271)
!2297 = !DILocation(line: 73, column: 74, scope: !2271)
!2298 = !DILocation(line: 73, column: 5, scope: !2271)
!2299 = !DILocation(line: 74, column: 40, scope: !2271)
!2300 = !DILocation(line: 74, column: 69, scope: !2271)
!2301 = !DILocation(line: 74, column: 5, scope: !2271)
!2302 = !DILocation(line: 75, column: 44, scope: !2271)
!2303 = !DILocation(line: 75, column: 74, scope: !2271)
!2304 = !DILocation(line: 75, column: 5, scope: !2271)
!2305 = !DILocation(line: 76, column: 40, scope: !2271)
!2306 = !DILocation(line: 76, column: 69, scope: !2271)
!2307 = !DILocation(line: 76, column: 5, scope: !2271)
!2308 = !DILocation(line: 77, column: 44, scope: !2271)
!2309 = !DILocation(line: 77, column: 74, scope: !2271)
!2310 = !DILocation(line: 77, column: 5, scope: !2271)
!2311 = !DILocation(line: 78, column: 40, scope: !2271)
!2312 = !DILocation(line: 78, column: 69, scope: !2271)
!2313 = !DILocation(line: 78, column: 5, scope: !2271)
!2314 = !DILocation(line: 79, column: 44, scope: !2271)
!2315 = !DILocation(line: 79, column: 74, scope: !2271)
!2316 = !DILocation(line: 79, column: 5, scope: !2271)
!2317 = !DILocation(line: 80, column: 40, scope: !2271)
!2318 = !DILocation(line: 80, column: 69, scope: !2271)
!2319 = !DILocation(line: 80, column: 5, scope: !2271)
!2320 = !DILocation(line: 81, column: 35, scope: !2271)
!2321 = !DILocation(line: 81, column: 5, scope: !2271)
!2322 = !DILocation(line: 82, column: 1, scope: !2271)
!2323 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2248, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2324 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2323, file: !437, line: 56, type: !45)
!2325 = !DILocation(line: 0, scope: !2323)
!2326 = !DILocalVariable(name: "in", arg: 2, scope: !2323, file: !437, line: 56, type: !326)
!2327 = !DILocalVariable(name: "acc", arg: 3, scope: !2323, file: !437, line: 56, type: !5)
!2328 = !DILocalVariable(name: "mask_lsb", scope: !2323, file: !437, line: 58, type: !6)
!2329 = !DILocalVariable(name: "i", scope: !2330, file: !437, line: 59, type: !45)
!2330 = distinct !DILexicalBlock(scope: !2323, file: !437, line: 59, column: 5)
!2331 = !DILocation(line: 0, scope: !2330)
!2332 = !DILocation(line: 59, column: 9, scope: !2330)
!2333 = !DILocation(line: 59, scope: !2330)
!2334 = !DILocation(line: 59, column: 20, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2330, file: !437, line: 59, column: 5)
!2336 = !DILocation(line: 59, column: 5, scope: !2330)
!2337 = !DILocation(line: 60, column: 22, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !437, line: 59, column: 43)
!2339 = !DILocation(line: 60, column: 28, scope: !2338)
!2340 = !DILocalVariable(name: "t", scope: !2338, file: !437, line: 60, type: !6)
!2341 = !DILocation(line: 0, scope: !2338)
!2342 = !DILocation(line: 61, column: 32, scope: !2338)
!2343 = !DILocation(line: 61, column: 43, scope: !2338)
!2344 = !DILocation(line: 61, column: 38, scope: !2338)
!2345 = !DILocation(line: 61, column: 9, scope: !2338)
!2346 = !DILocation(line: 61, column: 16, scope: !2338)
!2347 = !DILocation(line: 59, column: 40, scope: !2335)
!2348 = !DILocation(line: 59, column: 5, scope: !2335)
!2349 = distinct !{!2349, !2336, !2350, !303}
!2350 = !DILocation(line: 62, column: 5, scope: !2330)
!2351 = !DILocation(line: 63, column: 1, scope: !2323)
!2352 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2248, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2353 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2352, file: !437, line: 46, type: !45)
!2354 = !DILocation(line: 0, scope: !2352)
!2355 = !DILocalVariable(name: "in", arg: 2, scope: !2352, file: !437, line: 46, type: !326)
!2356 = !DILocalVariable(name: "acc", arg: 3, scope: !2352, file: !437, line: 46, type: !5)
!2357 = !DILocalVariable(name: "mask_msb", scope: !2352, file: !437, line: 48, type: !6)
!2358 = !DILocalVariable(name: "i", scope: !2359, file: !437, line: 49, type: !45)
!2359 = distinct !DILexicalBlock(scope: !2352, file: !437, line: 49, column: 5)
!2360 = !DILocation(line: 0, scope: !2359)
!2361 = !DILocation(line: 49, column: 9, scope: !2359)
!2362 = !DILocation(line: 49, scope: !2359)
!2363 = !DILocation(line: 49, column: 20, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !437, line: 49, column: 5)
!2365 = !DILocation(line: 49, column: 5, scope: !2359)
!2366 = !DILocation(line: 50, column: 22, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !437, line: 49, column: 43)
!2368 = !DILocalVariable(name: "t", scope: !2367, file: !437, line: 50, type: !6)
!2369 = !DILocation(line: 0, scope: !2367)
!2370 = !DILocation(line: 51, column: 32, scope: !2367)
!2371 = !DILocation(line: 51, column: 44, scope: !2367)
!2372 = !DILocation(line: 51, column: 50, scope: !2367)
!2373 = !DILocation(line: 51, column: 38, scope: !2367)
!2374 = !DILocation(line: 51, column: 9, scope: !2367)
!2375 = !DILocation(line: 51, column: 16, scope: !2367)
!2376 = !DILocation(line: 49, column: 40, scope: !2364)
!2377 = !DILocation(line: 49, column: 5, scope: !2364)
!2378 = distinct !{!2378, !2365, !2379, !303}
!2379 = !DILocation(line: 52, column: 5, scope: !2359)
!2380 = !DILocation(line: 53, column: 1, scope: !2352)
!2381 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2248, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2382 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2381, file: !437, line: 13, type: !45)
!2383 = !DILocation(line: 0, scope: !2381)
!2384 = !DILocalVariable(name: "in", arg: 2, scope: !2381, file: !437, line: 13, type: !326)
!2385 = !DILocalVariable(name: "out", arg: 3, scope: !2381, file: !437, line: 13, type: !5)
!2386 = !DILocalVariable(name: "i", scope: !2387, file: !437, line: 15, type: !15)
!2387 = distinct !DILexicalBlock(scope: !2381, file: !437, line: 15, column: 5)
!2388 = !DILocation(line: 0, scope: !2387)
!2389 = !DILocation(line: 15, column: 10, scope: !2387)
!2390 = !DILocation(line: 15, scope: !2387)
!2391 = !DILocation(line: 15, column: 26, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !437, line: 15, column: 5)
!2393 = !DILocation(line: 15, column: 5, scope: !2387)
!2394 = !DILocation(line: 17, column: 18, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2392, file: !437, line: 16, column: 5)
!2396 = !DILocation(line: 17, column: 9, scope: !2395)
!2397 = !DILocation(line: 17, column: 16, scope: !2395)
!2398 = !DILocation(line: 15, column: 46, scope: !2392)
!2399 = !DILocation(line: 15, column: 5, scope: !2392)
!2400 = distinct !{!2400, !2393, !2401, !303}
!2401 = !DILocation(line: 18, column: 5, scope: !2387)
!2402 = !DILocation(line: 19, column: 1, scope: !2381)
!2403 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_m_upper", scope: !58, file: !58, line: 14, type: !2404, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2406, !326, !5, !45}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2409, file: !36, line: 266, baseType: !45, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2409, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2409, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2409, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2409, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2409, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2409, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2409, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2409, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2409, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2409, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2409, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2409, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2409, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2409, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2409, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2409, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2409, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2409, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2409, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2409, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2409, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2409, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2434 = !DILocalVariable(name: "p", arg: 1, scope: !2403, file: !58, line: 14, type: !2406)
!2435 = !DILocation(line: 0, scope: !2403)
!2436 = !DILocalVariable(name: "in", arg: 2, scope: !2403, file: !58, line: 14, type: !326)
!2437 = !DILocalVariable(name: "out", arg: 3, scope: !2403, file: !58, line: 14, type: !5)
!2438 = !DILocalVariable(name: "size", arg: 4, scope: !2403, file: !58, line: 14, type: !45)
!2439 = !DILocalVariable(name: "m_vec_limbs", scope: !2403, file: !58, line: 19, type: !239)
!2440 = !DILocalVariable(name: "m_vecs_stored", scope: !2403, file: !58, line: 20, type: !45)
!2441 = !DILocalVariable(name: "r", scope: !2442, file: !58, line: 21, type: !45)
!2442 = distinct !DILexicalBlock(scope: !2403, file: !58, line: 21, column: 5)
!2443 = !DILocation(line: 0, scope: !2442)
!2444 = !DILocation(line: 21, column: 10, scope: !2442)
!2445 = !DILocation(line: 20, column: 9, scope: !2403)
!2446 = !DILocation(line: 21, scope: !2442)
!2447 = !DILocation(line: 21, column: 23, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !58, line: 21, column: 5)
!2449 = !DILocation(line: 21, column: 5, scope: !2442)
!2450 = !DILocation(line: 22, column: 9, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !58, line: 22, column: 9)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !58, line: 21, column: 36)
!2453 = !DILocation(line: 22, scope: !2451)
!2454 = !DILocalVariable(name: "c", scope: !2451, file: !58, line: 22, type: !45)
!2455 = !DILocation(line: 0, scope: !2451)
!2456 = !DILocation(line: 22, column: 27, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2451, file: !58, line: 22, column: 9)
!2458 = !DILocation(line: 23, column: 59, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2457, file: !58, line: 22, column: 40)
!2460 = !DILocation(line: 23, column: 66, scope: !2459)
!2461 = !DILocation(line: 23, column: 40, scope: !2459)
!2462 = !DILocation(line: 23, column: 76, scope: !2459)
!2463 = !DILocation(line: 23, column: 13, scope: !2459)
!2464 = !DILocation(line: 24, column: 19, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2459, file: !58, line: 24, column: 17)
!2466 = !DILocation(line: 25, column: 62, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2465, file: !58, line: 24, column: 25)
!2468 = !DILocation(line: 25, column: 69, scope: !2467)
!2469 = !DILocation(line: 25, column: 43, scope: !2467)
!2470 = !DILocation(line: 25, column: 79, scope: !2467)
!2471 = !DILocation(line: 25, column: 17, scope: !2467)
!2472 = !DILocation(line: 26, column: 13, scope: !2467)
!2473 = !DILocation(line: 27, column: 27, scope: !2459)
!2474 = !DILocation(line: 22, column: 36, scope: !2457)
!2475 = !DILocation(line: 22, column: 9, scope: !2457)
!2476 = distinct !{!2476, !2450, !2477, !303}
!2477 = !DILocation(line: 28, column: 9, scope: !2451)
!2478 = !DILocation(line: 21, column: 32, scope: !2448)
!2479 = !DILocation(line: 21, column: 5, scope: !2448)
!2480 = distinct !{!2480, !2449, !2481, !303}
!2481 = !DILocation(line: 29, column: 5, scope: !2442)
!2482 = !DILocation(line: 30, column: 1, scope: !2403)
!2483 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2248, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2484 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2483, file: !437, line: 13, type: !45)
!2485 = !DILocation(line: 0, scope: !2483)
!2486 = !DILocalVariable(name: "in", arg: 2, scope: !2483, file: !437, line: 13, type: !326)
!2487 = !DILocalVariable(name: "out", arg: 3, scope: !2483, file: !437, line: 13, type: !5)
!2488 = !DILocalVariable(name: "i", scope: !2489, file: !437, line: 15, type: !15)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !437, line: 15, column: 5)
!2490 = !DILocation(line: 0, scope: !2489)
!2491 = !DILocation(line: 15, column: 10, scope: !2489)
!2492 = !DILocation(line: 15, scope: !2489)
!2493 = !DILocation(line: 15, column: 26, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !437, line: 15, column: 5)
!2495 = !DILocation(line: 15, column: 5, scope: !2489)
!2496 = !DILocation(line: 17, column: 18, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !437, line: 16, column: 5)
!2498 = !DILocation(line: 17, column: 9, scope: !2497)
!2499 = !DILocation(line: 17, column: 16, scope: !2497)
!2500 = !DILocation(line: 15, column: 46, scope: !2494)
!2501 = !DILocation(line: 15, column: 5, scope: !2494)
!2502 = distinct !{!2502, !2495, !2503, !303}
!2503 = !DILocation(line: 18, column: 5, scope: !2489)
!2504 = !DILocation(line: 19, column: 1, scope: !2483)
!2505 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2248, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2506 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2505, file: !437, line: 22, type: !45)
!2507 = !DILocation(line: 0, scope: !2505)
!2508 = !DILocalVariable(name: "in", arg: 2, scope: !2505, file: !437, line: 22, type: !326)
!2509 = !DILocalVariable(name: "acc", arg: 3, scope: !2505, file: !437, line: 22, type: !5)
!2510 = !DILocalVariable(name: "i", scope: !2511, file: !437, line: 24, type: !15)
!2511 = distinct !DILexicalBlock(scope: !2505, file: !437, line: 24, column: 5)
!2512 = !DILocation(line: 0, scope: !2511)
!2513 = !DILocation(line: 24, column: 10, scope: !2511)
!2514 = !DILocation(line: 24, scope: !2511)
!2515 = !DILocation(line: 24, column: 26, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !437, line: 24, column: 5)
!2517 = !DILocation(line: 24, column: 5, scope: !2511)
!2518 = !DILocation(line: 26, column: 19, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !437, line: 25, column: 5)
!2520 = !DILocation(line: 26, column: 9, scope: !2519)
!2521 = !DILocation(line: 26, column: 16, scope: !2519)
!2522 = !DILocation(line: 24, column: 46, scope: !2516)
!2523 = !DILocation(line: 24, column: 5, scope: !2516)
!2524 = distinct !{!2524, !2517, !2525, !303}
!2525 = !DILocation(line: 27, column: 5, scope: !2511)
!2526 = !DILocation(line: 28, column: 1, scope: !2505)
!2527 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2528, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!45, !2406, !18, !49, !49, !18, !45, !45, !45, !45}
!2530 = !DILocalVariable(name: "p", arg: 1, scope: !2527, file: !58, line: 40, type: !2406)
!2531 = !DILocation(line: 0, scope: !2527)
!2532 = !DILocalVariable(name: "A", arg: 2, scope: !2527, file: !58, line: 40, type: !18)
!2533 = !DILocalVariable(name: "y", arg: 3, scope: !2527, file: !58, line: 41, type: !49)
!2534 = !DILocalVariable(name: "r", arg: 4, scope: !2527, file: !58, line: 41, type: !49)
!2535 = !DILocalVariable(name: "x", arg: 5, scope: !2527, file: !58, line: 42, type: !18)
!2536 = !DILocalVariable(name: "k", arg: 6, scope: !2527, file: !58, line: 42, type: !45)
!2537 = !DILocalVariable(name: "o", arg: 7, scope: !2527, file: !58, line: 42, type: !45)
!2538 = !DILocalVariable(name: "m", arg: 8, scope: !2527, file: !58, line: 42, type: !45)
!2539 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2527, file: !58, line: 42, type: !45)
!2540 = !DILocalVariable(name: "i", scope: !2541, file: !58, line: 51, type: !45)
!2541 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 51, column: 5)
!2542 = !DILocation(line: 0, scope: !2541)
!2543 = !DILocation(line: 51, column: 10, scope: !2541)
!2544 = !DILocation(line: 51, scope: !2541)
!2545 = !DILocation(line: 51, column: 23, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !58, line: 51, column: 5)
!2547 = !DILocation(line: 51, column: 5, scope: !2541)
!2548 = !DILocation(line: 57, column: 5, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 57, column: 5)
!2550 = !DILocation(line: 52, column: 16, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !58, line: 51, column: 37)
!2552 = !DILocation(line: 52, column: 9, scope: !2551)
!2553 = !DILocation(line: 52, column: 14, scope: !2551)
!2554 = !DILocation(line: 51, column: 33, scope: !2546)
!2555 = !DILocation(line: 51, column: 5, scope: !2546)
!2556 = distinct !{!2556, !2547, !2557, !303}
!2557 = !DILocation(line: 53, column: 5, scope: !2541)
!2558 = !DILocation(line: 57, scope: !2549)
!2559 = !DILocalVariable(name: "i", scope: !2549, file: !58, line: 57, type: !45)
!2560 = !DILocation(line: 0, scope: !2549)
!2561 = !DILocation(line: 57, column: 23, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2549, file: !58, line: 57, column: 5)
!2563 = !DILocation(line: 58, column: 13, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2562, file: !58, line: 57, column: 33)
!2565 = !DILocation(line: 58, column: 26, scope: !2564)
!2566 = !DILocation(line: 58, column: 30, scope: !2564)
!2567 = !DILocation(line: 58, column: 21, scope: !2564)
!2568 = !DILocation(line: 58, column: 9, scope: !2564)
!2569 = !DILocation(line: 58, column: 36, scope: !2564)
!2570 = !DILocation(line: 57, column: 29, scope: !2562)
!2571 = !DILocation(line: 57, column: 5, scope: !2562)
!2572 = distinct !{!2572, !2548, !2573, !303}
!2573 = !DILocation(line: 59, column: 5, scope: !2549)
!2574 = !DILocation(line: 60, column: 25, scope: !2527)
!2575 = !DILocation(line: 60, column: 29, scope: !2527)
!2576 = !DILocation(line: 60, column: 5, scope: !2527)
!2577 = !DILocalVariable(name: "i", scope: !2578, file: !58, line: 63, type: !45)
!2578 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 63, column: 5)
!2579 = !DILocation(line: 0, scope: !2578)
!2580 = !DILocation(line: 63, column: 10, scope: !2578)
!2581 = !DILocation(line: 63, scope: !2578)
!2582 = !DILocation(line: 63, column: 23, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !58, line: 63, column: 5)
!2584 = !DILocation(line: 63, column: 5, scope: !2578)
!2585 = !DILocation(line: 64, column: 44, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2583, file: !58, line: 63, column: 33)
!2587 = !DILocation(line: 64, column: 50, scope: !2586)
!2588 = !DILocation(line: 64, column: 38, scope: !2586)
!2589 = !DILocation(line: 64, column: 13, scope: !2586)
!2590 = !DILocation(line: 64, column: 26, scope: !2586)
!2591 = !DILocation(line: 64, column: 30, scope: !2586)
!2592 = !DILocation(line: 64, column: 21, scope: !2586)
!2593 = !DILocation(line: 64, column: 9, scope: !2586)
!2594 = !DILocation(line: 64, column: 36, scope: !2586)
!2595 = !DILocation(line: 63, column: 29, scope: !2583)
!2596 = !DILocation(line: 63, column: 5, scope: !2583)
!2597 = distinct !{!2597, !2584, !2598, !303}
!2598 = !DILocation(line: 65, column: 5, scope: !2578)
!2599 = !DILocation(line: 67, column: 16, scope: !2527)
!2600 = !DILocation(line: 67, column: 20, scope: !2527)
!2601 = !DILocation(line: 67, column: 5, scope: !2527)
!2602 = !DILocalVariable(name: "full_rank", scope: !2527, file: !58, line: 70, type: !14)
!2603 = !DILocalVariable(name: "i", scope: !2604, file: !58, line: 71, type: !45)
!2604 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 71, column: 5)
!2605 = !DILocation(line: 0, scope: !2604)
!2606 = !DILocation(line: 71, column: 10, scope: !2604)
!2607 = !DILocation(line: 71, scope: !2604)
!2608 = !DILocation(line: 71, column: 23, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2604, file: !58, line: 71, column: 5)
!2610 = !DILocation(line: 71, column: 5, scope: !2604)
!2611 = !DILocation(line: 72, column: 27, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2609, file: !58, line: 71, column: 42)
!2613 = !DILocation(line: 72, column: 32, scope: !2612)
!2614 = !DILocation(line: 72, column: 22, scope: !2612)
!2615 = !DILocation(line: 72, column: 19, scope: !2612)
!2616 = !DILocation(line: 71, column: 38, scope: !2609)
!2617 = !DILocation(line: 71, column: 5, scope: !2609)
!2618 = distinct !{!2618, !2610, !2619, !303}
!2619 = !DILocation(line: 73, column: 5, scope: !2604)
!2620 = !DILocation(line: 80, column: 19, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 80, column: 9)
!2622 = !DILocation(line: 88, column: 5, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 88, column: 5)
!2624 = distinct !{!2624, !2622, !2625, !303}
!2625 = !DILocation(line: 122, column: 5, scope: !2623)
!2626 = !DILocation(line: 88, scope: !2623)
!2627 = !DILocalVariable(name: "row", scope: !2623, file: !58, line: 88, type: !45)
!2628 = !DILocation(line: 0, scope: !2623)
!2629 = !DILocation(line: 88, column: 31, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2623, file: !58, line: 88, column: 5)
!2631 = !DILocalVariable(name: "finished", scope: !2527, file: !58, line: 46, type: !14)
!2632 = !DILocation(line: 90, column: 27, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2630, file: !58, line: 88, column: 44)
!2634 = !DILocalVariable(name: "col_upper_bound", scope: !2527, file: !58, line: 47, type: !45)
!2635 = !DILocalVariable(name: "col", scope: !2636, file: !58, line: 93, type: !45)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !58, line: 93, column: 9)
!2637 = !DILocation(line: 0, scope: !2636)
!2638 = !DILocation(line: 93, column: 14, scope: !2636)
!2639 = !DILocation(line: 0, scope: !2633)
!2640 = !DILocation(line: 93, scope: !2636)
!2641 = !DILocation(line: 93, column: 33, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2636, file: !58, line: 93, column: 9)
!2643 = !DILocation(line: 93, column: 9, scope: !2636)
!2644 = !DILocation(line: 97, column: 50, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !58, line: 93, column: 60)
!2646 = !DILocation(line: 97, column: 44, scope: !2645)
!2647 = !DILocation(line: 97, column: 30, scope: !2645)
!2648 = !DILocation(line: 97, column: 73, scope: !2645)
!2649 = !DILocalVariable(name: "correct_column", scope: !2527, file: !58, line: 48, type: !14)
!2650 = !DILocation(line: 99, column: 63, scope: !2645)
!2651 = !DILocation(line: 99, column: 48, scope: !2645)
!2652 = !DILocation(line: 99, column: 46, scope: !2645)
!2653 = !DILocalVariable(name: "u", scope: !2645, file: !58, line: 99, type: !14)
!2654 = !DILocation(line: 0, scope: !2645)
!2655 = !DILocation(line: 100, column: 13, scope: !2645)
!2656 = !DILocation(line: 100, column: 20, scope: !2645)
!2657 = !DILocalVariable(name: "i", scope: !2658, file: !58, line: 102, type: !45)
!2658 = distinct !DILexicalBlock(scope: !2645, file: !58, line: 102, column: 13)
!2659 = !DILocation(line: 0, scope: !2658)
!2660 = !DILocation(line: 102, column: 18, scope: !2658)
!2661 = !DILocation(line: 102, scope: !2658)
!2662 = !DILocation(line: 102, column: 31, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !58, line: 102, column: 13)
!2664 = !DILocation(line: 102, column: 13, scope: !2658)
!2665 = !DILocation(line: 103, column: 53, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !58, line: 102, column: 46)
!2667 = !DILocation(line: 103, column: 45, scope: !2666)
!2668 = !DILocation(line: 103, column: 34, scope: !2666)
!2669 = !DILocation(line: 103, column: 95, scope: !2666)
!2670 = !DILocation(line: 103, column: 99, scope: !2666)
!2671 = !DILocation(line: 103, column: 91, scope: !2666)
!2672 = !DILocation(line: 103, column: 80, scope: !2666)
!2673 = !DILocation(line: 103, column: 115, scope: !2666)
!2674 = !DILocation(line: 103, column: 76, scope: !2666)
!2675 = !DILocation(line: 104, column: 49, scope: !2666)
!2676 = !DILocation(line: 104, column: 53, scope: !2666)
!2677 = !DILocation(line: 104, column: 45, scope: !2666)
!2678 = !DILocation(line: 104, column: 34, scope: !2666)
!2679 = !DILocation(line: 104, column: 69, scope: !2666)
!2680 = !DILocation(line: 104, column: 30, scope: !2666)
!2681 = !DILocation(line: 104, column: 95, scope: !2666)
!2682 = !DILocation(line: 104, column: 99, scope: !2666)
!2683 = !DILocation(line: 104, column: 91, scope: !2666)
!2684 = !DILocation(line: 104, column: 80, scope: !2666)
!2685 = !DILocation(line: 104, column: 115, scope: !2666)
!2686 = !DILocation(line: 104, column: 76, scope: !2666)
!2687 = !DILocation(line: 105, column: 49, scope: !2666)
!2688 = !DILocation(line: 105, column: 53, scope: !2666)
!2689 = !DILocation(line: 105, column: 45, scope: !2666)
!2690 = !DILocation(line: 105, column: 34, scope: !2666)
!2691 = !DILocation(line: 105, column: 69, scope: !2666)
!2692 = !DILocation(line: 105, column: 30, scope: !2666)
!2693 = !DILocation(line: 105, column: 95, scope: !2666)
!2694 = !DILocation(line: 105, column: 99, scope: !2666)
!2695 = !DILocation(line: 105, column: 91, scope: !2666)
!2696 = !DILocation(line: 105, column: 80, scope: !2666)
!2697 = !DILocation(line: 105, column: 115, scope: !2666)
!2698 = !DILocation(line: 105, column: 76, scope: !2666)
!2699 = !DILocation(line: 106, column: 49, scope: !2666)
!2700 = !DILocation(line: 106, column: 53, scope: !2666)
!2701 = !DILocation(line: 106, column: 45, scope: !2666)
!2702 = !DILocation(line: 106, column: 34, scope: !2666)
!2703 = !DILocation(line: 106, column: 69, scope: !2666)
!2704 = !DILocation(line: 106, column: 30, scope: !2666)
!2705 = !DILocation(line: 106, column: 95, scope: !2666)
!2706 = !DILocation(line: 106, column: 99, scope: !2666)
!2707 = !DILocation(line: 106, column: 91, scope: !2666)
!2708 = !DILocation(line: 106, column: 80, scope: !2666)
!2709 = !DILocation(line: 106, column: 115, scope: !2666)
!2710 = !DILocation(line: 106, column: 76, scope: !2666)
!2711 = !DILocalVariable(name: "tmp", scope: !2666, file: !58, line: 103, type: !6)
!2712 = !DILocation(line: 0, scope: !2666)
!2713 = !DILocation(line: 108, column: 23, scope: !2666)
!2714 = !DILocation(line: 110, column: 34, scope: !2666)
!2715 = !DILocation(line: 110, column: 17, scope: !2666)
!2716 = !DILocation(line: 110, column: 48, scope: !2666)
!2717 = !DILocation(line: 111, column: 56, scope: !2666)
!2718 = !DILocation(line: 111, column: 34, scope: !2666)
!2719 = !DILocation(line: 111, column: 17, scope: !2666)
!2720 = !DILocation(line: 111, column: 48, scope: !2666)
!2721 = !DILocation(line: 112, column: 56, scope: !2666)
!2722 = !DILocation(line: 112, column: 34, scope: !2666)
!2723 = !DILocation(line: 112, column: 17, scope: !2666)
!2724 = !DILocation(line: 112, column: 48, scope: !2666)
!2725 = !DILocation(line: 113, column: 56, scope: !2666)
!2726 = !DILocation(line: 113, column: 34, scope: !2666)
!2727 = !DILocation(line: 113, column: 17, scope: !2666)
!2728 = !DILocation(line: 113, column: 48, scope: !2666)
!2729 = !DILocation(line: 114, column: 56, scope: !2666)
!2730 = !DILocation(line: 114, column: 34, scope: !2666)
!2731 = !DILocation(line: 114, column: 17, scope: !2666)
!2732 = !DILocation(line: 114, column: 48, scope: !2666)
!2733 = !DILocation(line: 115, column: 56, scope: !2666)
!2734 = !DILocation(line: 115, column: 34, scope: !2666)
!2735 = !DILocation(line: 115, column: 17, scope: !2666)
!2736 = !DILocation(line: 115, column: 48, scope: !2666)
!2737 = !DILocation(line: 116, column: 56, scope: !2666)
!2738 = !DILocation(line: 116, column: 34, scope: !2666)
!2739 = !DILocation(line: 116, column: 17, scope: !2666)
!2740 = !DILocation(line: 116, column: 48, scope: !2666)
!2741 = !DILocation(line: 117, column: 56, scope: !2666)
!2742 = !DILocation(line: 117, column: 34, scope: !2666)
!2743 = !DILocation(line: 117, column: 17, scope: !2666)
!2744 = !DILocation(line: 117, column: 48, scope: !2666)
!2745 = !DILocation(line: 102, column: 40, scope: !2663)
!2746 = !DILocation(line: 102, column: 13, scope: !2663)
!2747 = distinct !{!2747, !2664, !2748, !303}
!2748 = !DILocation(line: 118, column: 13, scope: !2658)
!2749 = !DILocation(line: 120, column: 33, scope: !2645)
!2750 = !DILocation(line: 93, column: 56, scope: !2642)
!2751 = !DILocation(line: 93, column: 9, scope: !2642)
!2752 = distinct !{!2752, !2643, !2753, !303}
!2753 = !DILocation(line: 121, column: 9, scope: !2636)
!2754 = !DILocation(line: 124, column: 1, scope: !2527)
!2755 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1437, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2756 = !DILocalVariable(name: "a", arg: 1, scope: !2755, file: !493, line: 79, type: !49)
!2757 = !DILocation(line: 0, scope: !2755)
!2758 = !DILocalVariable(name: "b", arg: 2, scope: !2755, file: !493, line: 79, type: !49)
!2759 = !DILocalVariable(name: "c", arg: 3, scope: !2755, file: !493, line: 80, type: !18)
!2760 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2755, file: !493, line: 80, type: !45)
!2761 = !DILocalVariable(name: "row_a", arg: 5, scope: !2755, file: !493, line: 80, type: !45)
!2762 = !DILocalVariable(name: "col_b", arg: 6, scope: !2755, file: !493, line: 80, type: !45)
!2763 = !DILocalVariable(name: "i", scope: !2764, file: !493, line: 81, type: !45)
!2764 = distinct !DILexicalBlock(scope: !2755, file: !493, line: 81, column: 5)
!2765 = !DILocation(line: 0, scope: !2764)
!2766 = !DILocation(line: 81, column: 10, scope: !2764)
!2767 = !DILocation(line: 81, scope: !2764)
!2768 = !DILocation(line: 81, column: 23, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !493, line: 81, column: 5)
!2770 = !DILocation(line: 81, column: 5, scope: !2764)
!2771 = !DILocation(line: 82, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !493, line: 82, column: 9)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !493, line: 81, column: 53)
!2774 = !DILocation(line: 82, scope: !2772)
!2775 = !DILocalVariable(name: "j", scope: !2772, file: !493, line: 82, type: !45)
!2776 = !DILocation(line: 0, scope: !2772)
!2777 = !DILocation(line: 83, column: 18, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !493, line: 82, column: 46)
!2779 = distinct !DILexicalBlock(scope: !2772, file: !493, line: 82, column: 9)
!2780 = !DILocation(line: 83, column: 16, scope: !2778)
!2781 = !DILocation(line: 82, column: 41, scope: !2779)
!2782 = !DILocation(line: 82, column: 9, scope: !2779)
!2783 = distinct !{!2783, !2771, !2784, !303}
!2784 = !DILocation(line: 84, column: 9, scope: !2772)
!2785 = !DILocation(line: 81, column: 32, scope: !2769)
!2786 = !DILocation(line: 81, column: 39, scope: !2769)
!2787 = !DILocation(line: 81, column: 5, scope: !2769)
!2788 = distinct !{!2788, !2770, !2789, !303}
!2789 = !DILocation(line: 85, column: 5, scope: !2764)
!2790 = !DILocation(line: 86, column: 1, scope: !2755)
!2791 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1536, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2792 = !DILocalVariable(name: "a", arg: 1, scope: !2791, file: !493, line: 48, type: !14)
!2793 = !DILocation(line: 0, scope: !2791)
!2794 = !DILocalVariable(name: "b", arg: 2, scope: !2791, file: !493, line: 48, type: !14)
!2795 = !DILocation(line: 49, column: 14, scope: !2791)
!2796 = !DILocation(line: 49, column: 5, scope: !2791)
!2797 = distinct !DISubprogram(name: "EF", scope: !2798, file: !2798, line: 60, type: !2799, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2798 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !18, !45, !45}
!2801 = !DILocalVariable(name: "A", arg: 1, scope: !2797, file: !2798, line: 60, type: !18)
!2802 = !DILocation(line: 0, scope: !2797)
!2803 = !DILocalVariable(name: "nrows", arg: 2, scope: !2797, file: !2798, line: 60, type: !45)
!2804 = !DILocalVariable(name: "ncols", arg: 3, scope: !2797, file: !2798, line: 60, type: !45)
!2805 = !DILocalVariable(name: "_pivot_row", scope: !2797, file: !2798, line: 62, type: !2806, align: 256)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, elements: !2807)
!2807 = !{!2808}
!2808 = !DISubrange(count: 6)
!2809 = !DILocation(line: 62, column: 27, scope: !2797)
!2810 = !DILocalVariable(name: "_pivot_row2", scope: !2797, file: !2798, line: 63, type: !2806, align: 256)
!2811 = !DILocation(line: 63, column: 27, scope: !2797)
!2812 = !DILocalVariable(name: "packed_A", scope: !2797, file: !2798, line: 64, type: !2813, align: 256)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 29952, elements: !2814)
!2814 = !{!2815}
!2815 = !DISubrange(count: 468)
!2816 = !DILocation(line: 64, column: 27, scope: !2797)
!2817 = !DILocation(line: 66, column: 26, scope: !2797)
!2818 = !DILocation(line: 66, column: 32, scope: !2797)
!2819 = !DILocalVariable(name: "row_len", scope: !2797, file: !2798, line: 66, type: !45)
!2820 = !DILocalVariable(name: "i", scope: !2821, file: !2798, line: 69, type: !45)
!2821 = distinct !DILexicalBlock(scope: !2797, file: !2798, line: 69, column: 5)
!2822 = !DILocation(line: 0, scope: !2821)
!2823 = !DILocation(line: 69, column: 10, scope: !2821)
!2824 = !DILocation(line: 69, scope: !2821)
!2825 = !DILocation(line: 69, column: 23, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2821, file: !2798, line: 69, column: 5)
!2827 = !DILocation(line: 69, column: 5, scope: !2821)
!2828 = !DILocation(line: 77, column: 5, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2797, file: !2798, line: 77, column: 5)
!2830 = !DILocation(line: 70, column: 29, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2826, file: !2798, line: 69, column: 37)
!2832 = !DILocation(line: 70, column: 25, scope: !2831)
!2833 = !DILocation(line: 70, column: 51, scope: !2831)
!2834 = !DILocation(line: 70, column: 47, scope: !2831)
!2835 = !DILocation(line: 70, column: 9, scope: !2831)
!2836 = !DILocation(line: 69, column: 33, scope: !2826)
!2837 = !DILocation(line: 69, column: 5, scope: !2826)
!2838 = distinct !{!2838, !2827, !2839, !303}
!2839 = !DILocation(line: 71, column: 5, scope: !2821)
!2840 = !DILocation(line: 77, scope: !2829)
!2841 = !DILocalVariable(name: "pivot_row", scope: !2797, file: !2798, line: 76, type: !45)
!2842 = !DILocalVariable(name: "pivot_col", scope: !2829, file: !2798, line: 77, type: !45)
!2843 = !DILocation(line: 0, scope: !2829)
!2844 = !DILocation(line: 77, column: 39, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2829, file: !2798, line: 77, column: 5)
!2846 = !DILocation(line: 138, column: 5, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2797, file: !2798, line: 138, column: 5)
!2848 = !DILocation(line: 79, column: 37, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !2798, line: 77, column: 61)
!2850 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2849, file: !2798, line: 79, type: !45)
!2851 = !DILocation(line: 0, scope: !2849)
!2852 = !DILocation(line: 80, column: 37, scope: !2849)
!2853 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2849, file: !2798, line: 80, type: !45)
!2854 = !DILocalVariable(name: "i", scope: !2855, file: !2798, line: 85, type: !45)
!2855 = distinct !DILexicalBlock(scope: !2849, file: !2798, line: 85, column: 9)
!2856 = !DILocation(line: 0, scope: !2855)
!2857 = !DILocation(line: 85, column: 14, scope: !2855)
!2858 = !DILocation(line: 85, scope: !2855)
!2859 = !DILocation(line: 85, column: 27, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2855, file: !2798, line: 85, column: 9)
!2861 = !DILocation(line: 85, column: 9, scope: !2855)
!2862 = !DILocation(line: 93, column: 9, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2849, file: !2798, line: 93, column: 9)
!2864 = !DILocation(line: 86, column: 13, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !2798, line: 85, column: 43)
!2866 = !DILocation(line: 86, column: 27, scope: !2865)
!2867 = !DILocation(line: 87, column: 13, scope: !2865)
!2868 = !DILocation(line: 87, column: 28, scope: !2865)
!2869 = !DILocation(line: 85, column: 39, scope: !2860)
!2870 = !DILocation(line: 85, column: 9, scope: !2860)
!2871 = distinct !{!2871, !2861, !2872, !303}
!2872 = !DILocation(line: 88, column: 9, scope: !2855)
!2873 = !DILocation(line: 0, scope: !2863)
!2874 = !DILocalVariable(name: "row", scope: !2863, file: !2798, line: 93, type: !45)
!2875 = !DILocalVariable(name: "pivot", scope: !2849, file: !2798, line: 91, type: !14)
!2876 = !DILocalVariable(name: "pivot_is_zero", scope: !2849, file: !2798, line: 92, type: !6)
!2877 = !DILocation(line: 94, column: 24, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2863, file: !2798, line: 93, column: 9)
!2879 = !DILocation(line: 94, column: 21, scope: !2878)
!2880 = !DILocation(line: 96, column: 38, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !2798, line: 94, column: 80)
!2882 = !DILocation(line: 96, column: 37, scope: !2881)
!2883 = !DILocalVariable(name: "is_pivot_row", scope: !2881, file: !2798, line: 96, type: !6)
!2884 = !DILocation(line: 0, scope: !2881)
!2885 = !DILocation(line: 97, column: 40, scope: !2881)
!2886 = !DILocalVariable(name: "below_pivot_row", scope: !2881, file: !2798, line: 97, type: !6)
!2887 = !DILocalVariable(name: "j", scope: !2888, file: !2798, line: 99, type: !45)
!2888 = distinct !DILexicalBlock(scope: !2881, file: !2798, line: 99, column: 13)
!2889 = !DILocation(line: 0, scope: !2888)
!2890 = !DILocation(line: 99, column: 18, scope: !2888)
!2891 = !DILocation(line: 99, scope: !2888)
!2892 = !DILocation(line: 99, column: 31, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2888, file: !2798, line: 99, column: 13)
!2894 = !DILocation(line: 99, column: 13, scope: !2888)
!2895 = !DILocation(line: 100, column: 67, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !2798, line: 99, column: 47)
!2897 = !DILocation(line: 100, column: 48, scope: !2896)
!2898 = !DILocation(line: 101, column: 47, scope: !2896)
!2899 = !DILocation(line: 101, column: 57, scope: !2896)
!2900 = !DILocation(line: 101, column: 34, scope: !2896)
!2901 = !DILocation(line: 100, column: 85, scope: !2896)
!2902 = !DILocation(line: 100, column: 17, scope: !2896)
!2903 = !DILocation(line: 100, column: 31, scope: !2896)
!2904 = !DILocation(line: 99, column: 43, scope: !2893)
!2905 = !DILocation(line: 99, column: 13, scope: !2893)
!2906 = distinct !{!2906, !2894, !2907, !303}
!2907 = !DILocation(line: 102, column: 13, scope: !2888)
!2908 = !DILocation(line: 103, column: 21, scope: !2881)
!2909 = !DILocation(line: 104, column: 44, scope: !2881)
!2910 = !DILocation(line: 104, column: 30, scope: !2881)
!2911 = !DILocation(line: 104, column: 29, scope: !2881)
!2912 = !DILocation(line: 94, column: 76, scope: !2878)
!2913 = !DILocation(line: 93, column: 9, scope: !2878)
!2914 = distinct !{!2914, !2862, !2915, !303}
!2915 = !DILocation(line: 105, column: 9, scope: !2863)
!2916 = !DILocation(line: 108, column: 19, scope: !2849)
!2917 = !DILocalVariable(name: "inverse", scope: !2797, file: !2798, line: 75, type: !14)
!2918 = !DILocation(line: 109, column: 9, scope: !2849)
!2919 = !DILocalVariable(name: "row", scope: !2920, file: !2798, line: 113, type: !45)
!2920 = distinct !DILexicalBlock(scope: !2849, file: !2798, line: 113, column: 9)
!2921 = !DILocation(line: 0, scope: !2920)
!2922 = !DILocation(line: 113, column: 14, scope: !2920)
!2923 = !DILocation(line: 113, scope: !2920)
!2924 = !DILocation(line: 113, column: 51, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !2798, line: 113, column: 9)
!2926 = !DILocation(line: 113, column: 9, scope: !2920)
!2927 = !DILocation(line: 124, column: 9, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2849, file: !2798, line: 124, column: 9)
!2929 = !DILocation(line: 114, column: 33, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2925, file: !2798, line: 113, column: 84)
!2931 = !DILocation(line: 114, column: 63, scope: !2930)
!2932 = !DILocalVariable(name: "do_copy", scope: !2930, file: !2798, line: 114, type: !6)
!2933 = !DILocation(line: 0, scope: !2930)
!2934 = !DILocalVariable(name: "do_not_copy", scope: !2930, file: !2798, line: 115, type: !6)
!2935 = !DILocalVariable(name: "col", scope: !2936, file: !2798, line: 116, type: !45)
!2936 = distinct !DILexicalBlock(scope: !2930, file: !2798, line: 116, column: 13)
!2937 = !DILocation(line: 0, scope: !2936)
!2938 = !DILocation(line: 116, column: 18, scope: !2936)
!2939 = !DILocation(line: 116, scope: !2936)
!2940 = !DILocation(line: 116, column: 35, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2936, file: !2798, line: 116, column: 13)
!2942 = !DILocation(line: 116, column: 13, scope: !2936)
!2943 = !DILocation(line: 118, column: 49, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !2798, line: 116, column: 53)
!2945 = !DILocation(line: 118, column: 59, scope: !2944)
!2946 = !DILocation(line: 118, column: 36, scope: !2944)
!2947 = !DILocation(line: 118, column: 34, scope: !2944)
!2948 = !DILocation(line: 119, column: 32, scope: !2944)
!2949 = !DILocation(line: 119, column: 30, scope: !2944)
!2950 = !DILocation(line: 118, column: 67, scope: !2944)
!2951 = !DILocation(line: 117, column: 30, scope: !2944)
!2952 = !DILocation(line: 117, column: 40, scope: !2944)
!2953 = !DILocation(line: 117, column: 17, scope: !2944)
!2954 = !DILocation(line: 117, column: 47, scope: !2944)
!2955 = !DILocation(line: 116, column: 49, scope: !2941)
!2956 = !DILocation(line: 116, column: 13, scope: !2941)
!2957 = distinct !{!2957, !2942, !2958, !303}
!2958 = !DILocation(line: 120, column: 13, scope: !2936)
!2959 = !DILocation(line: 113, column: 80, scope: !2925)
!2960 = !DILocation(line: 113, column: 9, scope: !2925)
!2961 = distinct !{!2961, !2926, !2962, !303}
!2962 = !DILocation(line: 121, column: 9, scope: !2920)
!2963 = !DILocation(line: 124, scope: !2928)
!2964 = !DILocalVariable(name: "row", scope: !2928, file: !2798, line: 124, type: !45)
!2965 = !DILocation(line: 0, scope: !2928)
!2966 = !DILocation(line: 124, column: 51, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2928, file: !2798, line: 124, column: 9)
!2968 = !DILocation(line: 125, column: 46, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2967, file: !2798, line: 124, column: 67)
!2970 = !DILocalVariable(name: "below_pivot", scope: !2969, file: !2798, line: 125, type: !14)
!2971 = !DILocation(line: 0, scope: !2969)
!2972 = !DILocation(line: 126, column: 74, scope: !2969)
!2973 = !DILocation(line: 126, column: 68, scope: !2969)
!2974 = !DILocation(line: 126, column: 41, scope: !2969)
!2975 = !DILocalVariable(name: "elt_to_elim", scope: !2969, file: !2798, line: 126, type: !14)
!2976 = !DILocation(line: 128, column: 63, scope: !2969)
!2977 = !DILocation(line: 129, column: 52, scope: !2969)
!2978 = !DILocation(line: 129, column: 46, scope: !2969)
!2979 = !DILocation(line: 128, column: 13, scope: !2969)
!2980 = !DILocation(line: 124, column: 63, scope: !2967)
!2981 = !DILocation(line: 124, column: 9, scope: !2967)
!2982 = distinct !{!2982, !2927, !2983, !303}
!2983 = !DILocation(line: 130, column: 9, scope: !2928)
!2984 = !DILocation(line: 132, column: 19, scope: !2849)
!2985 = !DILocation(line: 77, column: 57, scope: !2845)
!2986 = !DILocation(line: 77, column: 5, scope: !2845)
!2987 = distinct !{!2987, !2828, !2988, !303}
!2988 = !DILocation(line: 133, column: 5, scope: !2829)
!2989 = !DILocation(line: 138, scope: !2847)
!2990 = !DILocalVariable(name: "i", scope: !2847, file: !2798, line: 138, type: !45)
!2991 = !DILocation(line: 0, scope: !2847)
!2992 = !DILocation(line: 138, column: 23, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2847, file: !2798, line: 138, column: 5)
!2994 = !DILocation(line: 139, column: 47, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2993, file: !2798, line: 138, column: 37)
!2996 = !DILocation(line: 139, column: 43, scope: !2995)
!2997 = !DILocation(line: 139, column: 9, scope: !2995)
!2998 = !DILocalVariable(name: "j", scope: !2999, file: !2798, line: 140, type: !45)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !2798, line: 140, column: 9)
!3000 = !DILocation(line: 0, scope: !2999)
!3001 = !DILocation(line: 140, column: 14, scope: !2999)
!3002 = !DILocation(line: 140, scope: !2999)
!3003 = !DILocation(line: 140, column: 27, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !2798, line: 140, column: 9)
!3005 = !DILocation(line: 140, column: 9, scope: !2999)
!3006 = !DILocation(line: 141, column: 32, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3004, file: !2798, line: 140, column: 41)
!3008 = !DILocation(line: 141, column: 17, scope: !3007)
!3009 = !DILocation(line: 141, column: 13, scope: !3007)
!3010 = !DILocation(line: 141, column: 30, scope: !3007)
!3011 = !DILocation(line: 140, column: 37, scope: !3004)
!3012 = !DILocation(line: 140, column: 9, scope: !3004)
!3013 = distinct !{!3013, !3005, !3014, !303}
!3014 = !DILocation(line: 142, column: 9, scope: !2999)
!3015 = !DILocation(line: 138, column: 33, scope: !2993)
!3016 = !DILocation(line: 138, column: 5, scope: !2993)
!3017 = distinct !{!3017, !2846, !3018, !303}
!3018 = !DILocation(line: 143, column: 5, scope: !2847)
!3019 = !DILocation(line: 145, column: 5, scope: !2797)
!3020 = !DILocation(line: 146, column: 5, scope: !2797)
!3021 = !DILocation(line: 147, column: 5, scope: !2797)
!3022 = !DILocation(line: 148, column: 5, scope: !2797)
!3023 = !DILocation(line: 149, column: 1, scope: !2797)
!3024 = distinct !DISubprogram(name: "ct_compare_8", scope: !3025, file: !3025, line: 51, type: !1536, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3025 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3026 = !DILocalVariable(name: "a", arg: 1, scope: !3024, file: !3025, line: 51, type: !14)
!3027 = !DILocation(line: 0, scope: !3024)
!3028 = !DILocalVariable(name: "b", arg: 2, scope: !3024, file: !3025, line: 51, type: !14)
!3029 = !DILocation(line: 52, column: 42, scope: !3024)
!3030 = !DILocation(line: 52, column: 13, scope: !3024)
!3031 = !DILocation(line: 52, column: 71, scope: !3024)
!3032 = !DILocation(line: 52, column: 69, scope: !3024)
!3033 = !DILocation(line: 52, column: 5, scope: !3024)
!3034 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !3035, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!6, !14, !6}
!3037 = !DILocalVariable(name: "a", arg: 1, scope: !3034, file: !493, line: 28, type: !14)
!3038 = !DILocation(line: 0, scope: !3034)
!3039 = !DILocalVariable(name: "b", arg: 2, scope: !3034, file: !493, line: 28, type: !6)
!3040 = !DILocation(line: 31, column: 13, scope: !3034)
!3041 = !DILocation(line: 31, column: 10, scope: !3034)
!3042 = !DILocation(line: 31, column: 17, scope: !3034)
!3043 = !DILocalVariable(name: "p", scope: !3034, file: !493, line: 30, type: !6)
!3044 = !DILocation(line: 32, column: 13, scope: !3034)
!3045 = !DILocation(line: 32, column: 10, scope: !3034)
!3046 = !DILocation(line: 32, column: 17, scope: !3034)
!3047 = !DILocation(line: 32, column: 7, scope: !3034)
!3048 = !DILocation(line: 33, column: 13, scope: !3034)
!3049 = !DILocation(line: 33, column: 10, scope: !3034)
!3050 = !DILocation(line: 33, column: 17, scope: !3034)
!3051 = !DILocation(line: 33, column: 7, scope: !3034)
!3052 = !DILocation(line: 34, column: 13, scope: !3034)
!3053 = !DILocation(line: 34, column: 10, scope: !3034)
!3054 = !DILocation(line: 34, column: 17, scope: !3034)
!3055 = !DILocation(line: 34, column: 7, scope: !3034)
!3056 = !DILocalVariable(name: "top_p", scope: !3034, file: !493, line: 37, type: !6)
!3057 = !DILocation(line: 38, column: 32, scope: !3034)
!3058 = !DILocation(line: 38, column: 47, scope: !3034)
!3059 = !DILocation(line: 38, column: 38, scope: !3034)
!3060 = !DILocation(line: 38, column: 54, scope: !3034)
!3061 = !DILocalVariable(name: "out", scope: !3034, file: !493, line: 38, type: !6)
!3062 = !DILocation(line: 39, column: 5, scope: !3034)
!3063 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2798, file: !2798, line: 24, type: !3064, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !49, !5, !45}
!3066 = !DILocalVariable(name: "in", arg: 1, scope: !3063, file: !2798, line: 24, type: !49)
!3067 = !DILocation(line: 0, scope: !3063)
!3068 = !DILocalVariable(name: "out", arg: 2, scope: !3063, file: !2798, line: 24, type: !5)
!3069 = !DILocalVariable(name: "ncols", arg: 3, scope: !3063, file: !2798, line: 24, type: !45)
!3070 = !DILocalVariable(name: "out8", scope: !3063, file: !2798, line: 26, type: !18)
!3071 = !DILocalVariable(name: "i", scope: !3063, file: !2798, line: 25, type: !45)
!3072 = !DILocation(line: 27, column: 9, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3063, file: !2798, line: 27, column: 5)
!3074 = !DILocation(line: 27, scope: !3073)
!3075 = !DILocation(line: 27, column: 17, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !2798, line: 27, column: 5)
!3077 = !DILocation(line: 27, column: 20, scope: !3076)
!3078 = !DILocation(line: 27, column: 5, scope: !3073)
!3079 = !DILocation(line: 31, column: 23, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !2798, line: 27, column: 36)
!3081 = !DILocation(line: 31, column: 44, scope: !3080)
!3082 = !DILocation(line: 31, column: 40, scope: !3080)
!3083 = !DILocation(line: 31, column: 48, scope: !3080)
!3084 = !DILocation(line: 31, column: 37, scope: !3080)
!3085 = !DILocation(line: 31, column: 15, scope: !3080)
!3086 = !DILocation(line: 31, column: 9, scope: !3080)
!3087 = !DILocation(line: 31, column: 20, scope: !3080)
!3088 = !DILocation(line: 27, column: 31, scope: !3076)
!3089 = !DILocation(line: 27, column: 5, scope: !3076)
!3090 = distinct !{!3090, !3078, !3091, !303}
!3091 = !DILocation(line: 33, column: 5, scope: !3073)
!3092 = !DILocation(line: 34, column: 19, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3063, file: !2798, line: 34, column: 9)
!3094 = !DILocation(line: 38, column: 23, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3093, file: !2798, line: 34, column: 24)
!3096 = !DILocation(line: 38, column: 15, scope: !3095)
!3097 = !DILocation(line: 38, column: 9, scope: !3095)
!3098 = !DILocation(line: 38, column: 20, scope: !3095)
!3099 = !DILocation(line: 40, column: 5, scope: !3095)
!3100 = !DILocation(line: 41, column: 1, scope: !3063)
!3101 = distinct !DISubprogram(name: "ct_compare_64", scope: !3025, file: !3025, line: 46, type: !3102, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!6, !45, !45}
!3104 = !DILocalVariable(name: "a", arg: 1, scope: !3101, file: !3025, line: 46, type: !45)
!3105 = !DILocation(line: 0, scope: !3101)
!3106 = !DILocalVariable(name: "b", arg: 2, scope: !3101, file: !3025, line: 46, type: !45)
!3107 = !DILocation(line: 47, column: 38, scope: !3101)
!3108 = !DILocation(line: 47, column: 44, scope: !3101)
!3109 = !DILocation(line: 47, column: 73, scope: !3101)
!3110 = !DILocation(line: 47, column: 71, scope: !3101)
!3111 = !DILocation(line: 47, column: 5, scope: !3101)
!3112 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3025, file: !3025, line: 35, type: !3102, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3113 = !DILocalVariable(name: "a", arg: 1, scope: !3112, file: !3025, line: 35, type: !45)
!3114 = !DILocation(line: 0, scope: !3112)
!3115 = !DILocalVariable(name: "b", arg: 2, scope: !3112, file: !3025, line: 35, type: !45)
!3116 = !DILocalVariable(name: "diff", scope: !3112, file: !3025, line: 36, type: !46)
!3117 = !DILocation(line: 37, column: 30, scope: !3112)
!3118 = !DILocation(line: 37, column: 59, scope: !3112)
!3119 = !DILocation(line: 37, column: 57, scope: !3112)
!3120 = !DILocation(line: 37, column: 5, scope: !3112)
!3121 = distinct !DISubprogram(name: "m_extract_element", scope: !2798, file: !2798, line: 16, type: !3122, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!14, !326, !45}
!3124 = !DILocalVariable(name: "in", arg: 1, scope: !3121, file: !2798, line: 16, type: !326)
!3125 = !DILocation(line: 0, scope: !3121)
!3126 = !DILocalVariable(name: "index", arg: 2, scope: !3121, file: !2798, line: 16, type: !45)
!3127 = !DILocation(line: 17, column: 27, scope: !3121)
!3128 = !DILocalVariable(name: "leg", scope: !3121, file: !2798, line: 17, type: !239)
!3129 = !DILocation(line: 18, column: 30, scope: !3121)
!3130 = !DILocalVariable(name: "offset", scope: !3121, file: !2798, line: 18, type: !239)
!3131 = !DILocation(line: 20, column: 13, scope: !3121)
!3132 = !DILocation(line: 20, column: 31, scope: !3121)
!3133 = !DILocation(line: 20, column: 21, scope: !3121)
!3134 = !DILocation(line: 20, column: 12, scope: !3121)
!3135 = !DILocation(line: 20, column: 5, scope: !3121)
!3136 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3137, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!14, !14}
!3139 = !DILocalVariable(name: "a", arg: 1, scope: !3136, file: !493, line: 57, type: !14)
!3140 = !DILocation(line: 0, scope: !3136)
!3141 = !DILocation(line: 61, column: 24, scope: !3136)
!3142 = !DILocalVariable(name: "a2", scope: !3136, file: !493, line: 61, type: !14)
!3143 = !DILocation(line: 62, column: 24, scope: !3136)
!3144 = !DILocalVariable(name: "a4", scope: !3136, file: !493, line: 62, type: !14)
!3145 = !DILocation(line: 63, column: 24, scope: !3136)
!3146 = !DILocalVariable(name: "a8", scope: !3136, file: !493, line: 63, type: !14)
!3147 = !DILocation(line: 64, column: 24, scope: !3136)
!3148 = !DILocalVariable(name: "a6", scope: !3136, file: !493, line: 64, type: !14)
!3149 = !DILocation(line: 65, column: 25, scope: !3136)
!3150 = !DILocalVariable(name: "a14", scope: !3136, file: !493, line: 65, type: !14)
!3151 = !DILocation(line: 67, column: 5, scope: !3136)
!3152 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3025, file: !3025, line: 94, type: !3153, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !239, !326, !14, !5}
!3155 = !DILocalVariable(name: "legs", arg: 1, scope: !3152, file: !3025, line: 94, type: !239)
!3156 = !DILocation(line: 0, scope: !3152)
!3157 = !DILocalVariable(name: "in", arg: 2, scope: !3152, file: !3025, line: 94, type: !326)
!3158 = !DILocalVariable(name: "a", arg: 3, scope: !3152, file: !3025, line: 94, type: !14)
!3159 = !DILocalVariable(name: "acc", arg: 4, scope: !3152, file: !3025, line: 94, type: !5)
!3160 = !DILocation(line: 95, column: 20, scope: !3152)
!3161 = !DILocalVariable(name: "tab", scope: !3152, file: !3025, line: 95, type: !19)
!3162 = !DILocalVariable(name: "lsb_ask", scope: !3152, file: !3025, line: 97, type: !6)
!3163 = !DILocalVariable(name: "i", scope: !3164, file: !3025, line: 99, type: !45)
!3164 = distinct !DILexicalBlock(scope: !3152, file: !3025, line: 99, column: 5)
!3165 = !DILocation(line: 0, scope: !3164)
!3166 = !DILocation(line: 99, column: 9, scope: !3164)
!3167 = !DILocation(line: 99, scope: !3164)
!3168 = !DILocation(line: 99, column: 20, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3164, file: !3025, line: 99, column: 5)
!3170 = !DILocation(line: 99, column: 5, scope: !3164)
!3171 = !DILocation(line: 100, column: 21, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3169, file: !3025, line: 99, column: 32)
!3173 = !DILocation(line: 100, column: 33, scope: !3172)
!3174 = !DILocation(line: 100, column: 51, scope: !3172)
!3175 = !DILocation(line: 100, column: 46, scope: !3172)
!3176 = !DILocation(line: 100, column: 44, scope: !3172)
!3177 = !DILocation(line: 101, column: 27, scope: !3172)
!3178 = !DILocation(line: 101, column: 33, scope: !3172)
!3179 = !DILocation(line: 101, column: 52, scope: !3172)
!3180 = !DILocation(line: 101, column: 59, scope: !3172)
!3181 = !DILocation(line: 101, column: 46, scope: !3172)
!3182 = !DILocation(line: 101, column: 44, scope: !3172)
!3183 = !DILocation(line: 101, column: 17, scope: !3172)
!3184 = !DILocation(line: 102, column: 21, scope: !3172)
!3185 = !DILocation(line: 102, column: 27, scope: !3172)
!3186 = !DILocation(line: 102, column: 33, scope: !3172)
!3187 = !DILocation(line: 102, column: 52, scope: !3172)
!3188 = !DILocation(line: 102, column: 59, scope: !3172)
!3189 = !DILocation(line: 102, column: 46, scope: !3172)
!3190 = !DILocation(line: 102, column: 44, scope: !3172)
!3191 = !DILocation(line: 102, column: 17, scope: !3172)
!3192 = !DILocation(line: 103, column: 21, scope: !3172)
!3193 = !DILocation(line: 103, column: 27, scope: !3172)
!3194 = !DILocation(line: 103, column: 33, scope: !3172)
!3195 = !DILocation(line: 103, column: 52, scope: !3172)
!3196 = !DILocation(line: 103, column: 59, scope: !3172)
!3197 = !DILocation(line: 103, column: 46, scope: !3172)
!3198 = !DILocation(line: 103, column: 44, scope: !3172)
!3199 = !DILocation(line: 103, column: 17, scope: !3172)
!3200 = !DILocation(line: 100, column: 9, scope: !3172)
!3201 = !DILocation(line: 100, column: 16, scope: !3172)
!3202 = !DILocation(line: 99, column: 29, scope: !3169)
!3203 = !DILocation(line: 99, column: 5, scope: !3169)
!3204 = distinct !{!3204, !3170, !3205, !303}
!3205 = !DILocation(line: 104, column: 5, scope: !3164)
!3206 = !DILocation(line: 105, column: 1, scope: !3152)
!3207 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2798, file: !2798, line: 44, type: !3208, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !45, !326, !18}
!3210 = !DILocalVariable(name: "legs", arg: 1, scope: !3207, file: !2798, line: 44, type: !45)
!3211 = !DILocation(line: 0, scope: !3207)
!3212 = !DILocalVariable(name: "in", arg: 2, scope: !3207, file: !2798, line: 44, type: !326)
!3213 = !DILocalVariable(name: "out", arg: 3, scope: !3207, file: !2798, line: 44, type: !18)
!3214 = !DILocalVariable(name: "in8", scope: !3207, file: !2798, line: 45, type: !49)
!3215 = !DILocalVariable(name: "i", scope: !3216, file: !2798, line: 46, type: !45)
!3216 = distinct !DILexicalBlock(scope: !3207, file: !2798, line: 46, column: 5)
!3217 = !DILocation(line: 0, scope: !3216)
!3218 = !DILocation(line: 46, column: 9, scope: !3216)
!3219 = !DILocation(line: 46, scope: !3216)
!3220 = !DILocation(line: 46, column: 29, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3216, file: !2798, line: 46, column: 5)
!3222 = !DILocation(line: 46, column: 22, scope: !3221)
!3223 = !DILocation(line: 46, column: 5, scope: !3216)
!3224 = !DILocation(line: 51, column: 26, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !2798, line: 46, column: 42)
!3226 = !DILocation(line: 51, column: 21, scope: !3225)
!3227 = !DILocation(line: 51, column: 31, scope: !3225)
!3228 = !DILocation(line: 51, column: 9, scope: !3225)
!3229 = !DILocation(line: 51, column: 18, scope: !3225)
!3230 = !DILocation(line: 52, column: 26, scope: !3225)
!3231 = !DILocation(line: 52, column: 21, scope: !3225)
!3232 = !DILocation(line: 52, column: 30, scope: !3225)
!3233 = !DILocation(line: 52, column: 14, scope: !3225)
!3234 = !DILocation(line: 52, column: 9, scope: !3225)
!3235 = !DILocation(line: 52, column: 18, scope: !3225)
!3236 = !DILocation(line: 46, column: 37, scope: !3221)
!3237 = !DILocation(line: 46, column: 5, scope: !3221)
!3238 = distinct !{!3238, !3223, !3239, !303}
!3239 = !DILocation(line: 54, column: 5, scope: !3216)
!3240 = !DILocation(line: 55, column: 1, scope: !3207)
!3241 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3242 = !DILocalVariable(name: "b", arg: 1, scope: !3241, file: !493, line: 129, type: !12)
!3243 = !DILocation(line: 0, scope: !3241)
!3244 = !DILocation(line: 130, column: 19, scope: !3241)
!3245 = !DILocation(line: 130, column: 33, scope: !3241)
!3246 = !DILocalVariable(name: "x", scope: !3241, file: !493, line: 130, type: !19)
!3247 = !DILocalVariable(name: "high_nibble_mask", scope: !3241, file: !493, line: 132, type: !19)
!3248 = !DILocation(line: 134, column: 28, scope: !3241)
!3249 = !DILocalVariable(name: "high_half", scope: !3241, file: !493, line: 134, type: !19)
!3250 = !DILocation(line: 135, column: 28, scope: !3241)
!3251 = !DILocation(line: 135, column: 47, scope: !3241)
!3252 = !DILocation(line: 135, column: 34, scope: !3241)
!3253 = !DILocation(line: 135, column: 5, scope: !3241)
!3254 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1536, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3255 = !DILocalVariable(name: "a", arg: 1, scope: !3254, file: !493, line: 9, type: !14)
!3256 = !DILocation(line: 0, scope: !3254)
!3257 = !DILocalVariable(name: "b", arg: 2, scope: !3254, file: !493, line: 9, type: !14)
!3258 = !DILocation(line: 14, column: 10, scope: !3254)
!3259 = !DILocation(line: 14, column: 7, scope: !3254)
!3260 = !DILocation(line: 17, column: 17, scope: !3254)
!3261 = !DILocalVariable(name: "p", scope: !3254, file: !493, line: 11, type: !14)
!3262 = !DILocation(line: 18, column: 13, scope: !3254)
!3263 = !DILocation(line: 18, column: 17, scope: !3254)
!3264 = !DILocation(line: 18, column: 7, scope: !3254)
!3265 = !DILocation(line: 19, column: 13, scope: !3254)
!3266 = !DILocation(line: 19, column: 17, scope: !3254)
!3267 = !DILocation(line: 19, column: 7, scope: !3254)
!3268 = !DILocation(line: 20, column: 13, scope: !3254)
!3269 = !DILocation(line: 20, column: 17, scope: !3254)
!3270 = !DILocation(line: 20, column: 7, scope: !3254)
!3271 = !DILocalVariable(name: "top_p", scope: !3254, file: !493, line: 23, type: !14)
!3272 = !DILocation(line: 24, column: 37, scope: !3254)
!3273 = !DILocation(line: 24, column: 52, scope: !3254)
!3274 = !DILocation(line: 24, column: 43, scope: !3254)
!3275 = !DILocation(line: 24, column: 59, scope: !3254)
!3276 = !DILocalVariable(name: "out", scope: !3254, file: !493, line: 24, type: !14)
!3277 = !DILocation(line: 25, column: 5, scope: !3254)
!3278 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1544, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3279 = !DILocalVariable(name: "a", arg: 1, scope: !3278, file: !493, line: 70, type: !49)
!3280 = !DILocation(line: 0, scope: !3278)
!3281 = !DILocalVariable(name: "b", arg: 2, scope: !3278, file: !493, line: 71, type: !49)
!3282 = !DILocalVariable(name: "n", arg: 3, scope: !3278, file: !493, line: 71, type: !45)
!3283 = !DILocalVariable(name: "m", arg: 4, scope: !3278, file: !493, line: 71, type: !45)
!3284 = !DILocalVariable(name: "ret", scope: !3278, file: !493, line: 72, type: !14)
!3285 = !DILocalVariable(name: "i", scope: !3286, file: !493, line: 73, type: !45)
!3286 = distinct !DILexicalBlock(scope: !3278, file: !493, line: 73, column: 5)
!3287 = !DILocation(line: 0, scope: !3286)
!3288 = !DILocation(line: 73, column: 10, scope: !3286)
!3289 = !DILocation(line: 73, scope: !3286)
!3290 = !DILocation(line: 73, column: 23, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3286, file: !493, line: 73, column: 5)
!3292 = !DILocation(line: 73, column: 5, scope: !3286)
!3293 = !DILocation(line: 74, column: 27, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !493, line: 73, column: 41)
!3295 = !DILocation(line: 74, column: 33, scope: !3294)
!3296 = !DILocation(line: 74, column: 21, scope: !3294)
!3297 = !DILocation(line: 74, column: 15, scope: !3294)
!3298 = !DILocation(line: 73, column: 28, scope: !3291)
!3299 = !DILocation(line: 73, column: 35, scope: !3291)
!3300 = !DILocation(line: 73, column: 5, scope: !3291)
!3301 = distinct !{!3301, !3292, !3302, !303}
!3302 = !DILocation(line: 75, column: 5, scope: !3286)
!3303 = !DILocation(line: 76, column: 5, scope: !3278)
!3304 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1536, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3305 = !DILocalVariable(name: "a", arg: 1, scope: !3304, file: !493, line: 43, type: !14)
!3306 = !DILocation(line: 0, scope: !3304)
!3307 = !DILocalVariable(name: "b", arg: 2, scope: !3304, file: !493, line: 43, type: !14)
!3308 = !DILocation(line: 44, column: 14, scope: !3304)
!3309 = !DILocation(line: 44, column: 5, scope: !3304)
