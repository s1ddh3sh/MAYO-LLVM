; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\01\07", align 1, !dbg !0
@pqmayo_MAYO_3_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_3_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_3_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60

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
  %epk = alloca [49147 x i64], align 8
  %esk = alloca [48897 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !111, !DIExpression(), !112)
    #dbg_value(i32 32, !113, !DIExpression(), !112)
  store i32 32, ptr %msglen, align 4, !dbg !114
    #dbg_value(i32 32, !113, !DIExpression(), !112)
    #dbg_value(i32 713, !115, !DIExpression(), !112)
  store i32 713, ptr %smlen, align 4, !dbg !116
  %call = call dereferenceable_or_null(2986) ptr @calloc(i32 noundef 2986, i32 noundef 1) #7, !dbg !117
    #dbg_value(ptr %call, !118, !DIExpression(), !112)
  %call1 = call dereferenceable_or_null(32) ptr @calloc(i32 noundef 32, i32 noundef 1) #7, !dbg !119
    #dbg_value(ptr %call1, !120, !DIExpression(), !112)
    #dbg_declare(ptr %epk, !121, !DIExpression(), !126)
    #dbg_declare(ptr %esk, !127, !DIExpression(), !132)
  %0 = load i32, ptr %msglen, align 4, !dbg !133
    #dbg_value(i32 %0, !113, !DIExpression(), !112)
  %add2 = add i32 %0, 681, !dbg !134
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #7, !dbg !135
    #dbg_value(ptr %call3, !136, !DIExpression(), !112)
    #dbg_declare(ptr %msg, !137, !DIExpression(), !141)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !141
    #dbg_declare(ptr %msg2, !142, !DIExpression(), !143)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !143
  %call4 = call i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %call11 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !149
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %1 = load i32, ptr %msglen, align 4, !dbg !150
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !151
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !152
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !152

if.end21:                                         ; preds = %if.end
  %2 = load i32, ptr %smlen, align 4, !dbg !154
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !155
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
  %call32 = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !162
    #dbg_value(i32 %call32, !145, !DIExpression(), !112)
  %sext = sub nsw i32 0, %call32, !dbg !163
  br label %err, !dbg !163

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !112
    #dbg_value(i32 %res.0, !145, !DIExpression(), !112)
    #dbg_label(!165, !166)
  call void @free(ptr noundef %call) #8, !dbg !167
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 32) #8, !dbg !168
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !171 {
entry:
    #dbg_value(ptr %p, !202, !DIExpression(), !203)
    #dbg_value(ptr %pk, !204, !DIExpression(), !203)
    #dbg_value(ptr %sk, !205, !DIExpression(), !203)
    #dbg_value(i32 0, !206, !DIExpression(), !203)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !207
    #dbg_value(i32 %call, !206, !DIExpression(), !203)
    #dbg_label(!208, !209)
  ret i32 %call, !dbg !210
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !211 {
entry:
  %S = alloca [556 x i8], align 1
  %P = alloca [48762 x i64], align 8
  %P3 = alloca [700 x i64], align 8
  %O = alloca [1080 x i8], align 1
  %P3_upper = alloca [385 x i64], align 8
    #dbg_value(ptr %p, !212, !DIExpression(), !213)
    #dbg_value(ptr %cpk, !214, !DIExpression(), !213)
    #dbg_value(ptr %csk, !215, !DIExpression(), !213)
    #dbg_value(i32 0, !216, !DIExpression(), !213)
    #dbg_value(ptr %csk, !217, !DIExpression(), !213)
    #dbg_declare(ptr %S, !218, !DIExpression(), !222)
    #dbg_declare(ptr %P, !223, !DIExpression(), !227)
    #dbg_declare(ptr %P3, !228, !DIExpression(), !232)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5600) %P3, i8 0, i32 5600, i1 false), !dbg !232
    #dbg_declare(ptr %O, !233, !DIExpression(), !237)
    #dbg_value(i32 7, !238, !DIExpression(), !213)
    #dbg_value(i32 108, !240, !DIExpression(), !213)
    #dbg_value(i32 108, !241, !DIExpression(), !213)
    #dbg_value(i32 10, !242, !DIExpression(), !213)
    #dbg_value(i32 540, !243, !DIExpression(), !213)
    #dbg_value(i32 41202, !244, !DIExpression(), !213)
    #dbg_value(i32 385, !245, !DIExpression(), !213)
    #dbg_value(i32 16, !246, !DIExpression(), !213)
    #dbg_value(i32 32, !247, !DIExpression(), !213)
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 329616, !dbg !249
    #dbg_value(ptr %add.ptr, !250, !DIExpression(), !213)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 32) #8, !dbg !251
  %cmp.not = icmp eq i32 %call, 0, !dbg !253
  br i1 %cmp.not, label %if.end, label %err, !dbg !253

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !248, !DIExpression(), !213)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #8, !dbg !254
    #dbg_value(ptr %S, !255, !DIExpression(), !213)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !256
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1080) #6, !dbg !257
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !258
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !259
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !260
    #dbg_declare(ptr %P3_upper, !261, !DIExpression(), !265)
  call void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 10) #6, !dbg !266
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !267
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 55, i32 noundef 108) #6, !dbg !268
  br label %err, !dbg !268

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !213
    #dbg_value(i32 %ret.0, !216, !DIExpression(), !213)
    #dbg_label(!269, !270)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1080) #8, !dbg !271
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 60480) #8, !dbg !272
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 5600) #8, !dbg !273
  ret i32 %ret.0, !dbg !274
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483537, -2147483648) %mdeclen) unnamed_addr #0 !dbg !275 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 376164, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !319
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 6966, i32 noundef 108) #6, !dbg !320
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
    #dbg_value(i32 7, !333, !DIExpression(), !328)
    #dbg_value(i32 108, !334, !DIExpression(), !328)
    #dbg_value(i32 10, !335, !DIExpression(), !328)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !336
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 7, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 108, i32 noundef 10, i32 noundef 10) #6, !dbg !337
  ret void, !dbg !338
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !339 {
entry:
    #dbg_value(ptr %in, !342, !DIExpression(), !343)
    #dbg_value(ptr %out, !344, !DIExpression(), !343)
    #dbg_value(i32 55, !345, !DIExpression(), !343)
    #dbg_value(i32 108, !346, !DIExpression(), !343)
    #dbg_value(i32 7, !347, !DIExpression(), !343)
    #dbg_value(ptr %in, !348, !DIExpression(), !343)
    #dbg_value(i32 0, !349, !DIExpression(), !351)
  br label %for.cond, !dbg !352

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !353
    #dbg_value(i32 %i.0, !349, !DIExpression(), !351)
  %exitcond = icmp ne i32 %i.0, 55, !dbg !354
  br i1 %exitcond, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 54, !dbg !357
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !359
  %mul3 = mul nuw nsw i32 %i.0, 56, !dbg !360
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !361
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 54) #8, !dbg !362
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 7, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 1) #6, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !378 {
entry:
    #dbg_value(i32 7, !381, !DIExpression(), !382)
    #dbg_value(ptr %mat, !383, !DIExpression(), !382)
    #dbg_value(ptr %bs_mat, !384, !DIExpression(), !382)
    #dbg_value(ptr %acc, !385, !DIExpression(), !382)
    #dbg_value(i32 108, !386, !DIExpression(), !382)
    #dbg_value(i32 10, !387, !DIExpression(), !382)
    #dbg_value(i32 10, !388, !DIExpression(), !382)
    #dbg_value(i32 0, !389, !DIExpression(), !391)
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !393
    #dbg_value(i32 %r.0, !389, !DIExpression(), !391)
  %exitcond2 = icmp ne i32 %r.0, 10, !dbg !394
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !396

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !397

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !400
    #dbg_value(i32 %c.0, !401, !DIExpression(), !402)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !403
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !397

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !405

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !408
    #dbg_value(i32 %k.0, !409, !DIExpression(), !410)
  %exitcond = icmp ne i32 %k.0, 10, !dbg !411
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !405

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 10, !dbg !413
  %add = add nuw nsw i32 %mul, %k.0, !dbg !415
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !416
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !416
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !417
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !418
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !418
  %1 = load i8, ptr %arrayidx, align 1, !dbg !418
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !419
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !420
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !421
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !421
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !422
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !453
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
    #dbg_value(i32 7, !511, !DIExpression(), !512)
    #dbg_value(ptr %bs_mat, !513, !DIExpression(), !512)
    #dbg_value(ptr %mat, !514, !DIExpression(), !512)
    #dbg_value(ptr %acc, !515, !DIExpression(), !512)
    #dbg_value(i32 108, !516, !DIExpression(), !512)
    #dbg_value(i32 108, !517, !DIExpression(), !512)
    #dbg_value(i32 10, !518, !DIExpression(), !512)
    #dbg_value(i32 1, !519, !DIExpression(), !512)
    #dbg_value(i32 0, !520, !DIExpression(), !512)
    #dbg_value(i32 0, !521, !DIExpression(), !523)
  br label %for.cond, !dbg !524

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !525
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !525
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !526
    #dbg_value(i32 %r.0, !521, !DIExpression(), !523)
    #dbg_value(i32 %bs_mat_entries_used.0, !520, !DIExpression(), !512)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !527
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
  %exitcond = icmp ne i32 %k.0, 10, !dbg !544
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !538

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !546
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !546
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !548
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !549
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !549
  %2 = load i8, ptr %arrayidx, align 1, !dbg !549
  %mul9 = mul nuw nsw i32 %r.0, 10, !dbg !550
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !551
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !552
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !552
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !553
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 55, 6967) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !568 {
entry:
  %tmp = alloca [7 x i64], align 8
    #dbg_value(ptr %in, !571, !DIExpression(), !572)
    #dbg_value(ptr %out, !573, !DIExpression(), !572)
    #dbg_value(i32 %vecs, !574, !DIExpression(), !572)
    #dbg_value(i32 108, !575, !DIExpression(), !572)
    #dbg_value(i32 7, !576, !DIExpression(), !572)
    #dbg_value(ptr %out, !577, !DIExpression(), !572)
    #dbg_declare(ptr %tmp, !578, !DIExpression(), !582)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %tmp, i8 0, i32 56, i1 false), !dbg !582
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
  %div1 = mul nsw i32 %i.0, 54, !dbg !591
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !593
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 54) #8, !dbg !594
  %mul4 = mul nsw i32 %i.0, 56, !dbg !595
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !596
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !597
    #dbg_value(i32 %i.0, !583, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !585)
  br label %for.cond, !dbg !598, !llvm.loop !599

for.end:                                          ; preds = %for.cond
  ret void, !dbg !601
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !602 {
entry:
  %S = alloca [556 x i8], align 1
    #dbg_value(ptr %p, !605, !DIExpression(), !606)
    #dbg_value(ptr %csk, !607, !DIExpression(), !606)
    #dbg_value(ptr %sk, !608, !DIExpression(), !606)
    #dbg_value(i32 0, !609, !DIExpression(), !606)
    #dbg_declare(ptr %S, !610, !DIExpression(), !611)
    #dbg_value(ptr %sk, !612, !DIExpression(), !606)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !613
    #dbg_value(ptr %add.ptr1, !614, !DIExpression(), !606)
    #dbg_value(i32 10, !615, !DIExpression(), !606)
    #dbg_value(i32 108, !616, !DIExpression(), !606)
    #dbg_value(i32 540, !617, !DIExpression(), !606)
    #dbg_value(i32 16, !618, !DIExpression(), !606)
    #dbg_value(i32 32, !619, !DIExpression(), !606)
    #dbg_value(ptr %csk, !620, !DIExpression(), !606)
    #dbg_value(ptr %S, !621, !DIExpression(), !606)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #8, !dbg !622
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !623
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1080) #6, !dbg !624
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !625
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !626
    #dbg_value(ptr %add.ptr5, !627, !DIExpression(), !606)
    #dbg_value(ptr %sk, !628, !DIExpression(), !606)
    #dbg_value(ptr %add.ptr5, !629, !DIExpression(), !606)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !630
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 556) #8, !dbg !631
  ret i32 0, !dbg !632
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !633 {
entry:
    #dbg_value(ptr %p, !634, !DIExpression(), !635)
    #dbg_value(ptr %P1, !636, !DIExpression(), !635)
    #dbg_value(ptr %O, !637, !DIExpression(), !635)
    #dbg_value(ptr %acc, !638, !DIExpression(), !635)
    #dbg_value(i32 10, !639, !DIExpression(), !635)
    #dbg_value(i32 108, !640, !DIExpression(), !635)
    #dbg_value(i32 7, !641, !DIExpression(), !635)
    #dbg_value(i32 0, !642, !DIExpression(), !635)
    #dbg_value(i32 0, !643, !DIExpression(), !645)
  br label %for.cond, !dbg !646

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 108, %entry ], !dbg !647
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !647
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !648
    #dbg_value(i32 %r.0, !643, !DIExpression(), !645)
    #dbg_value(i32 %bs_mat_entries_used.0, !642, !DIExpression(), !635)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !649
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
  %exitcond = icmp ne i32 %k.0, 10, !dbg !668
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !663

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !670
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !670
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !672
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !673
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !673
  %2 = load i8, ptr %arrayidx, align 1, !dbg !673
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !674
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !675
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !676
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !676
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #6, !dbg !677
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !678
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !678
  %mul16 = mul nuw nsw i32 %r.0, 10, !dbg !679
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !680
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !680
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !680
  %mul19 = mul nuw nsw i32 %c.0, 10, !dbg !681
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !682
  %add.ptr22.idx = mul nuw nsw i32 %add20, 56, !dbg !683
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !683
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #6, !dbg !684
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !699 {
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
    #dbg_declare(ptr %salt, !723, !DIExpression(), !724)
    #dbg_declare(ptr %V, !725, !DIExpression(), !729)
    #dbg_declare(ptr %Vdec, !730, !DIExpression(), !734)
    #dbg_declare(ptr %A, !735, !DIExpression(), !739)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12432) %A, i8 0, i32 12432, i1 false), !dbg !739
    #dbg_declare(ptr %x, !740, !DIExpression(), !744)
    #dbg_declare(ptr %r, !745, !DIExpression(), !749)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(111) %r, i8 0, i32 111, i1 false), !dbg !749
    #dbg_declare(ptr %s, !750, !DIExpression(), !751)
    #dbg_declare(ptr %sk, !752, !DIExpression(), !753)
    #dbg_declare(ptr %Ox, !754, !DIExpression(), !755)
    #dbg_declare(ptr %tmp, !756, !DIExpression(), !760)
    #dbg_value(i32 108, !761, !DIExpression(), !704)
    #dbg_value(i32 118, !762, !DIExpression(), !704)
    #dbg_value(i32 10, !763, !DIExpression(), !704)
    #dbg_value(i32 11, !764, !DIExpression(), !704)
    #dbg_value(i32 108, !765, !DIExpression(), !704)
    #dbg_value(i32 54, !766, !DIExpression(), !704)
    #dbg_value(i32 54, !767, !DIExpression(), !704)
    #dbg_value(i32 55, !768, !DIExpression(), !704)
    #dbg_value(i32 681, !769, !DIExpression(), !704)
    #dbg_value(i32 111, !770, !DIExpression(), !704)
    #dbg_value(i32 48, !771, !DIExpression(), !704)
    #dbg_value(i32 32, !772, !DIExpression(), !704)
    #dbg_value(i32 32, !773, !DIExpression(), !704)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !774
    #dbg_value(i32 0, !710, !DIExpression(), !704)
    #dbg_value(ptr %csk, !775, !DIExpression(), !704)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #8, !dbg !776
    #dbg_value(ptr %sk, !777, !DIExpression(), !704)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !778
    #dbg_value(ptr %add.ptr, !779, !DIExpression(), !704)
    #dbg_declare(ptr %Mtmp, !780, !DIExpression(), !784)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6160) %Mtmp, i8 0, i32 6160, i1 false), !dbg !784
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !785
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 32) #8, !dbg !787
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !788
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !788

if.end9:                                          ; preds = %entry
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !789
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 32) #8, !dbg !790
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 112) #8, !dbg !791
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !792
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 32) #8, !dbg !793
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 112, !dbg !794
    #dbg_value(ptr %add.ptr24, !795, !DIExpression(), !704)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !796
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !797
    #dbg_value(i32 0, !798, !DIExpression(), !800)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 594, !dbg !801
  br label %for.cond, !dbg !804

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !805
    #dbg_value(i32 %ctr.0, !798, !DIExpression(), !800)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !806
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !807

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !808
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !809
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 649, ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !810
    #dbg_value(i32 0, !811, !DIExpression(), !813)
  br label %for.cond34, !dbg !814

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !815
    #dbg_value(i32 %i.0, !811, !DIExpression(), !813)
  %exitcond = icmp ne i32 %i.0, 11, !dbg !816
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !818

for.body37:                                       ; preds = %for.cond34
  %mul = mul nuw nsw i32 %i.0, 54, !dbg !819
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !821
  %mul41 = mul nuw nsw i32 %i.0, 108, !dbg !822
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !823
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 108) #6, !dbg !824
  %inc = add nuw nsw i32 %i.0, 1, !dbg !825
    #dbg_value(i32 %inc, !811, !DIExpression(), !813)
  br label %for.cond34, !dbg !826, !llvm.loop !827

for.end:                                          ; preds = %for.cond34
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !829
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !830
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !831
    #dbg_value(i32 0, !832, !DIExpression(), !834)
  br label %for.cond52, !dbg !835

for.cond52:                                       ; preds = %for.body55, %for.end
  %i51.0 = phi i32 [ 0, %for.end ], [ %inc58, %for.body55 ], !dbg !836
    #dbg_value(i32 %i51.0, !832, !DIExpression(), !834)
  %exitcond1 = icmp ne i32 %i51.0, 108, !dbg !837
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !839

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 111, !dbg !840
  %sub = add nuw nsw i32 %0, 110, !dbg !842
  %arrayidx = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub, !dbg !843
  store i8 0, ptr %arrayidx, align 1, !dbg !844
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !845
    #dbg_value(i32 %inc58, !832, !DIExpression(), !834)
  br label %for.cond52, !dbg !846, !llvm.loop !847

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 110) #6, !dbg !849
  %call67 = call i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 11, i32 noundef 10, i32 noundef 108, i32 noundef 111) #6, !dbg !850
  %tobool.not = icmp eq i32 %call67, 0, !dbg !850
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !850

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 6160) #8, !dbg !852
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 12432) #8, !dbg !854
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !855
    #dbg_value(i32 %inc75, !798, !DIExpression(), !800)
  br label %for.cond, !dbg !856, !llvm.loop !857

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !859, !DIExpression(), !861)
  br label %for.cond78, !dbg !862

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !863
    #dbg_value(i32 %i77.0, !859, !DIExpression(), !861)
  %exitcond3 = icmp ne i32 %i77.0, 11, !dbg !864
  br i1 %exitcond3, label %for.body81, label %for.end106, !dbg !866

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 108, !dbg !867
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !869
    #dbg_value(ptr %add.ptr84, !870, !DIExpression(), !704)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !871
  %mul89 = mul nuw nsw i32 %i77.0, 10, !dbg !872
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !873
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 10, i32 noundef 108, i32 noundef 1) #6, !dbg !874
  %mul94 = mul nuw nsw i32 %i77.0, 118, !dbg !875
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !876
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 108, i32 noundef 1) #6, !dbg !877
  %mul97 = mul nuw nsw i32 %i77.0, 118, !dbg !878
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !879
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 108, !dbg !880
  %mul101 = mul nuw nsw i32 %i77.0, 10, !dbg !881
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !882
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 10) #8, !dbg !883
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !884
    #dbg_value(i32 %inc105, !859, !DIExpression(), !861)
  br label %for.cond78, !dbg !885, !llvm.loop !886

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1298) #6, !dbg !888
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !889
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 32) #8, !dbg !890
  store i32 681, ptr %siglen, align 4, !dbg !891
  br label %err, !dbg !892

err:                                              ; preds = %entry, %for.end106
  %ret.0 = phi i32 [ 0, %for.end106 ], [ 1, %entry ], !dbg !704
    #dbg_value(i32 %ret.0, !710, !DIExpression(), !704)
    #dbg_label(!893, !894)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 649) #8, !dbg !895
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1188) #8, !dbg !896
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 12432) #8, !dbg !897
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 111) #8, !dbg !898
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !899
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 1080) #8, !dbg !900
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 391176) #8, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 108) #8, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 6160) #8, !dbg !904
  ret i32 %ret.0, !dbg !905
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !906 {
entry:
  %Pv = alloca [8316 x i64], align 8
    #dbg_value(ptr %p, !909, !DIExpression(), !910)
    #dbg_value(ptr %Vdec, !911, !DIExpression(), !910)
    #dbg_value(ptr %L, !912, !DIExpression(), !910)
    #dbg_value(ptr %P1, !913, !DIExpression(), !910)
    #dbg_value(ptr %VL, !914, !DIExpression(), !910)
    #dbg_value(ptr %VP1V, !915, !DIExpression(), !910)
    #dbg_value(i32 11, !916, !DIExpression(), !910)
    #dbg_value(i32 108, !917, !DIExpression(), !910)
    #dbg_value(i32 10, !918, !DIExpression(), !910)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 11, i32 noundef 108, i32 noundef 10) #6, !dbg !919
    #dbg_declare(ptr %Pv, !920, !DIExpression(), !924)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(66528) %Pv, i8 0, i32 66528, i1 false), !dbg !924
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !925
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 11, i32 noundef 108, i32 noundef 11) #6, !dbg !926
  ret void, !dbg !927
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !928 {
entry:
  %temp = alloca [7 x i64], align 8
    #dbg_value(ptr %p, !931, !DIExpression(), !932)
    #dbg_value(ptr %vPv, !933, !DIExpression(), !932)
    #dbg_value(ptr %t, !934, !DIExpression(), !932)
    #dbg_value(ptr %y, !935, !DIExpression(), !932)
    #dbg_value(i32 44, !936, !DIExpression(), !932)
    #dbg_value(i32 7, !938, !DIExpression(), !932)
    #dbg_value(i64 1, !939, !DIExpression(), !942)
    #dbg_value(i64 281474976710656, !939, !DIExpression(), !942)
    #dbg_value(i64 281474976710655, !939, !DIExpression(), !942)
    #dbg_value(i32 0, !943, !DIExpression(), !945)
  br label %for.cond, !dbg !946

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !947
    #dbg_value(i32 %i.0, !943, !DIExpression(), !945)
  %exitcond = icmp ne i32 %i.0, 121, !dbg !948
  br i1 %exitcond, label %for.body, label %for.end, !dbg !950

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 56, !dbg !951
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !951
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !951
  %1 = load i64, ptr %arrayidx, align 8, !dbg !953
  %and = and i64 %1, 281474976710655, !dbg !953
  store i64 %and, ptr %arrayidx, align 8, !dbg !953
  %inc = add nuw nsw i32 %i.0, 1, !dbg !954
    #dbg_value(i32 %inc, !943, !DIExpression(), !945)
  br label %for.cond, !dbg !955, !llvm.loop !956

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !958, !DIExpression(), !959)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %temp, i8 0, i32 56, i1 false), !dbg !959
    #dbg_value(ptr %temp, !960, !DIExpression(), !932)
    #dbg_value(i32 10, !961, !DIExpression(), !963)
  br label %for.cond3, !dbg !964

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 10, %for.end ], [ %dec78, %for.inc77 ], !dbg !965
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
  %exitcond10 = icmp ne i32 %j.0, 11, !dbg !977
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !969

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !979
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !979
  %shr = lshr i64 %2, 44, !dbg !981
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !982
    #dbg_value(i8 %rem1, !983, !DIExpression(), !984)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !985
  %shl11 = shl i64 %2, 4, !dbg !986
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !986
    #dbg_value(i32 5, !987, !DIExpression(), !989)
  br label %for.cond12, !dbg !990

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 5, %for.body8 ], [ %dec, %for.body15 ], !dbg !991
    #dbg_value(i32 %k.0, !987, !DIExpression(), !989)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !992
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !994

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !982
  br label %for.cond24, !dbg !995

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !997
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !997
  %shr17 = lshr i64 %3, 60, !dbg !999
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1000
  %arrayidx19 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1001
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1002
  %xor = xor i64 %4, %shr17, !dbg !1002
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1002
  %arrayidx20 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1003
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
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #6, !dbg !1022
  %div = lshr exact i32 %jj.0, 1, !dbg !1023
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1024
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1025
  %xor356 = xor i8 %7, %call, !dbg !1025
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1025
  br label %for.inc46, !dbg !1026

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1027
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1027
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #6, !dbg !1029
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
  %exitcond9 = icmp ne i32 %k49.0, 7, !dbg !1041
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1014

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 11, !dbg !1043
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1045
  %.idx = mul nsw i32 %add55, 56, !dbg !1046
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1046
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1046
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1046
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1047
  %mul62 = mul nuw nsw i32 %j.0, 11, !dbg !1048
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1049
  %.idx4 = mul nsw i32 %add63, 56, !dbg !1050
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1050
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1050
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1050
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1051
  %xor68 = xor i64 %11, %mul67, !dbg !1052
  %arrayidx69 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1053
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
  %cmp82 = icmp samesign ult i32 %i80.0, 108, !dbg !1070
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
  %A = alloca [1568 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1097, !DIExpression(), !1098)
    #dbg_value(ptr %VtL, !1099, !DIExpression(), !1098)
    #dbg_value(ptr %A_out, !1100, !DIExpression(), !1098)
    #dbg_value(i32 0, !1101, !DIExpression(), !1098)
    #dbg_value(i32 0, !1102, !DIExpression(), !1098)
    #dbg_value(i32 7, !1103, !DIExpression(), !1098)
    #dbg_declare(ptr %A, !1104, !DIExpression(), !1108)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12544) %A, i8 0, i32 12544, i1 false), !dbg !1108
    #dbg_value(i32 112, !1109, !DIExpression(), !1098)
    #dbg_value(i64 1, !1110, !DIExpression(), !1113)
    #dbg_value(i64 281474976710656, !1110, !DIExpression(), !1113)
    #dbg_value(i64 281474976710655, !1110, !DIExpression(), !1113)
    #dbg_value(i32 0, !1114, !DIExpression(), !1116)
  br label %for.cond, !dbg !1117

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1118
    #dbg_value(i32 %i.0, !1114, !DIExpression(), !1116)
  %exitcond = icmp ne i32 %i.0, 110, !dbg !1119
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1121

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1122

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 56, !dbg !1124
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1124
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1124
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1126
  %and = and i64 %1, 281474976710655, !dbg !1126
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
  %exitcond8 = icmp ne i32 %i2.0, 11, !dbg !1136
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1122

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1138

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1141

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 10, %for.cond6.preheader ], !dbg !1143
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1098
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1098
    #dbg_value(i32 %bits_to_shift.1, !1101, !DIExpression(), !1098)
    #dbg_value(i32 %words_to_shift.1, !1102, !DIExpression(), !1098)
    #dbg_value(i32 %j.0, !1144, !DIExpression(), !1145)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1146
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1138

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 560, !dbg !1148
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1148
    #dbg_value(ptr %add.ptr, !1150, !DIExpression(), !1098)
    #dbg_value(i32 0, !1151, !DIExpression(), !1153)
  br label %for.cond11, !dbg !1154

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1155
    #dbg_value(i32 %c.0, !1151, !DIExpression(), !1153)
  %exitcond5 = icmp ne i32 %c.0, 10, !dbg !1156
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1158

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1159

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1162
    #dbg_value(i32 %k.0, !1163, !DIExpression(), !1164)
  %exitcond4 = icmp ne i32 %k.0, 7, !dbg !1165
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1159

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1167
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 56, !dbg !1167
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1167
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1167
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1169
  %shl20 = shl i64 %3, %sh_prom, !dbg !1169
  %mul21 = mul nuw nsw i32 %i2.0, 10, !dbg !1170
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1171
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1172
  %mul24 = mul i32 %add23, 112, !dbg !1173
  %add25 = add i32 %add22, %mul24, !dbg !1174
  %arrayidx26 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25, !dbg !1175
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1176
  %xor = xor i64 %4, %shl20, !dbg !1176
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1176
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1177
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1177

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1179
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 56, !dbg !1179
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1179
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1179
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1181
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1182
  %shr = lshr i64 %6, %sh_prom32, !dbg !1182
  %mul33 = mul nuw nsw i32 %i2.0, 10, !dbg !1183
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1184
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1185
  %7 = mul i32 %add35, 112, !dbg !1186
  %mul37 = add i32 %7, 112, !dbg !1186
  %add38 = add i32 %add34, %mul37, !dbg !1187
  %arrayidx39 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38, !dbg !1188
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
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 560, !dbg !1201
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1201
    #dbg_value(ptr %add.ptr51, !1203, !DIExpression(), !1098)
    #dbg_value(i32 0, !1204, !DIExpression(), !1206)
  br label %for.cond53, !dbg !1207

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1208
    #dbg_value(i32 %c52.0, !1204, !DIExpression(), !1206)
  %exitcond7 = icmp ne i32 %c52.0, 10, !dbg !1209
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1211

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1212

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1215
    #dbg_value(i32 %k56.0, !1216, !DIExpression(), !1217)
  %exitcond6 = icmp ne i32 %k56.0, 7, !dbg !1218
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1212

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1220
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1220
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1220
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1220
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1222
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1222
  %mul65 = mul nsw i32 %j.0, 10, !dbg !1223
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1224
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1225
  %mul68 = mul i32 %add67, 112, !dbg !1226
  %add69 = add i32 %add66, %mul68, !dbg !1227
  %arrayidx70 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69, !dbg !1228
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1229
  %xor71 = xor i64 %11, %shl64, !dbg !1229
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1229
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1230
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1230

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1232
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1232
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1232
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1232
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1234
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1235
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1235
  %mul80 = mul nsw i32 %j.0, 10, !dbg !1236
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1237
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1238
  %14 = mul i32 %add82, 112, !dbg !1239
  %mul84 = add i32 %14, 112, !dbg !1239
  %add85 = add i32 %add81, %mul84, !dbg !1240
  %arrayidx86 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85, !dbg !1241
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
  %cmp109 = icmp samesign ult i32 %c106.0, 1232, !dbg !1266
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1141

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1268
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1270
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
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1292
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1293
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1294
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1295
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1296
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1297
  %add125 = or disjoint i32 %mul124, 1, !dbg !1298
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1299
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1300
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1301
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1301
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1302
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1303
  %add130 = or disjoint i32 %mul129, 2, !dbg !1304
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1305
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1306
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1307
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1307
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1308
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
  %cmp142 = icmp samesign ult i32 %c140.0, 112, !dbg !1320
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1288

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1322

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1325

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 108, %for.cond144.preheader ], !dbg !1327
    #dbg_value(i32 %r.0, !1328, !DIExpression(), !1329)
  %exitcond11 = icmp ne i32 %r.0, 174, !dbg !1330
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1322

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1332
  %mul147 = mul nuw nsw i32 %div1, 112, !dbg !1334
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1335
  %rem = and i32 %r.0, 15, !dbg !1336
  %add149 = or disjoint i32 %add148, %rem, !dbg !1337
    #dbg_value(i32 %add149, !1338, !DIExpression(), !1339)
  %arrayidx150 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1340
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1340
  %and151 = and i64 %19, 1229782938247303441, !dbg !1341
    #dbg_value(i64 %and151, !1342, !DIExpression(), !1339)
  %shr153 = lshr i64 %19, 1, !dbg !1343
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1344
    #dbg_value(i64 %and154, !1345, !DIExpression(), !1339)
  %shr156 = lshr i64 %19, 2, !dbg !1346
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1347
    #dbg_value(i64 %and157, !1348, !DIExpression(), !1339)
  %arrayidx158 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1349
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
  %sub187 = add nsw i32 %add186, -108, !dbg !1381
  %div1882 = lshr i32 %sub187, 4, !dbg !1382
  %mul189 = mul i32 %div1882, 112, !dbg !1383
  %add190 = add i32 %mul189, %c140.0, !dbg !1384
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1385
  %sub192 = add nuw nsw i32 %add191, 4, !dbg !1386
  %rem193 = and i32 %sub192, 15, !dbg !1387
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1388
  %arrayidx195 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194, !dbg !1389
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
  %indvars.iv = phi i32 [ 108, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1403
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1403
    #dbg_value(i32 %r206.0, !1404, !DIExpression(), !1405)
  %cmp208 = icmp samesign ult i32 %r206.0, 108, !dbg !1406
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1325

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1408

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1411
    #dbg_value(i32 %c211.0, !1412, !DIExpression(), !1413)
  %cmp213 = icmp samesign ult i32 %c211.0, 110, !dbg !1414
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1408

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1416

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1419
    #dbg_value(i32 %i216.0, !1420, !DIExpression(), !1421)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1422
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1416

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 7, !dbg !1424
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1426
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1427
  %arrayidx226 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225, !dbg !1428
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1429
  %mul228 = mul nuw nsw i32 %add227, 111, !dbg !1430
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1431
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1432
  %cmp232 = icmp samesign ult i32 %c211.0, 94, !dbg !1433
  %sub234 = sub nsw i32 110, %c211.0, !dbg !1433
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1433
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #6, !dbg !1434
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
    #dbg_value(i32 10, !1455, !DIExpression(), !1452)
    #dbg_value(i32 108, !1456, !DIExpression(), !1452)
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
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1463
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
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 10, i32 noundef 1) #6, !dbg !1472
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1475
    #dbg_value(i32 1, !1470, !DIExpression(), !1471)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1476
    #dbg_value(ptr %incdec.ptr, !1454, !DIExpression(), !1452)
  br label %for.cond1, !dbg !1477, !llvm.loop !1478

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1480
    #dbg_value(i32 %inc5, !1458, !DIExpression(), !1460)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 10, !dbg !1481
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
    #dbg_value(i32 108, !1493, !DIExpression(), !1490)
    #dbg_value(i32 1, !1494, !DIExpression(), !1490)
    #dbg_value(i32 0, !1495, !DIExpression(), !1497)
  br label %for.cond, !dbg !1498

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1499
    #dbg_value(i32 %i.0, !1495, !DIExpression(), !1497)
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1500
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1502

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1503, !DIExpression(), !1506)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1507
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1510
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1511
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1512
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1513
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
    #dbg_value(i32 1298, !1525, !DIExpression(), !1523)
    #dbg_value(i32 0, !1526, !DIExpression(), !1523)
  br label %for.cond, !dbg !1527

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1529
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1522, !DIExpression(), !1523)
    #dbg_value(i32 %i.0, !1526, !DIExpression(), !1523)
  %exitcond = icmp ne i32 %i.0, 649, !dbg !1530
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
    #dbg_value(i32 10, !1561, !DIExpression(), !1559)
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
  %exitcond = icmp ne i32 %i.0, 10, !dbg !1569
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1571

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1572
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1572
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1574
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1575
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1576
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
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !1587
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
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 10, 12) %bs_mat_cols) unnamed_addr #0 !dbg !1744 {
entry:
    #dbg_value(i32 7, !1745, !DIExpression(), !1746)
    #dbg_value(ptr %mat, !1747, !DIExpression(), !1746)
    #dbg_value(ptr %bs_mat, !1748, !DIExpression(), !1746)
    #dbg_value(ptr %acc, !1749, !DIExpression(), !1746)
    #dbg_value(i32 11, !1750, !DIExpression(), !1746)
    #dbg_value(i32 108, !1751, !DIExpression(), !1746)
    #dbg_value(i32 %bs_mat_cols, !1752, !DIExpression(), !1746)
    #dbg_value(i32 0, !1753, !DIExpression(), !1755)
  br label %for.cond, !dbg !1756

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1757
    #dbg_value(i32 %r.0, !1753, !DIExpression(), !1755)
  %exitcond2 = icmp ne i32 %r.0, 11, !dbg !1758
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1760

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1761

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1764
    #dbg_value(i32 %c.0, !1765, !DIExpression(), !1766)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !1767
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1761

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1769

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1772
    #dbg_value(i32 %k.0, !1773, !DIExpression(), !1774)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1775
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1769

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1777
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1779
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !1780
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1780
  %mul8 = mul nuw nsw i32 %r.0, 108, !dbg !1781
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1782
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1782
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1782
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1783
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1784
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !1785
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1785
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1786
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 7, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 11, i32 noundef 1) #6, !dbg !1806
  ret void, !dbg !1807
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1808 {
entry:
    #dbg_value(i32 7, !1809, !DIExpression(), !1810)
    #dbg_value(ptr %bs_mat, !1811, !DIExpression(), !1810)
    #dbg_value(ptr %mat, !1812, !DIExpression(), !1810)
    #dbg_value(ptr %acc, !1813, !DIExpression(), !1810)
    #dbg_value(i32 108, !1814, !DIExpression(), !1810)
    #dbg_value(i32 108, !1815, !DIExpression(), !1810)
    #dbg_value(i32 11, !1816, !DIExpression(), !1810)
    #dbg_value(i32 1, !1817, !DIExpression(), !1810)
    #dbg_value(i32 0, !1818, !DIExpression(), !1810)
    #dbg_value(i32 0, !1819, !DIExpression(), !1821)
  br label %for.cond, !dbg !1822

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !1823
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1823
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1824
    #dbg_value(i32 %r.0, !1819, !DIExpression(), !1821)
    #dbg_value(i32 %bs_mat_entries_used.0, !1818, !DIExpression(), !1810)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !1825
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
  %exitcond = icmp ne i32 %k.0, 11, !dbg !1842
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1836

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !1844
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1844
  %mul8 = mul nuw nsw i32 %k.0, 108, !dbg !1846
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1847
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1847
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1847
  %mul9 = mul nuw nsw i32 %r.0, 11, !dbg !1848
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1849
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !1850
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1850
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1851
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1866 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1867, !DIExpression(), !1868)
    #dbg_value(ptr %sm, !1869, !DIExpression(), !1868)
    #dbg_value(ptr %smlen, !1870, !DIExpression(), !1868)
    #dbg_value(ptr %m, !1871, !DIExpression(), !1868)
    #dbg_value(i32 %mlen, !1872, !DIExpression(), !1868)
    #dbg_value(ptr %csk, !1873, !DIExpression(), !1868)
    #dbg_value(i32 0, !1874, !DIExpression(), !1868)
    #dbg_value(i32 681, !1875, !DIExpression(), !1868)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1876
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1877
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1878
    #dbg_value(ptr %siglen, !1879, !DIExpression(DW_OP_deref), !1868)
  %call2 = call i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1880
    #dbg_value(i32 %call2, !1874, !DIExpression(), !1868)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1881
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1879, !DIExpression(), !1868)
  %cmp3.not = icmp eq i32 %0, 681
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1883
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1883

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1884
    #dbg_value(i32 %1, !1879, !DIExpression(), !1868)
  %add = add i32 %1, %mlen, !dbg !1886
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1887
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1896 {
entry:
    #dbg_value(ptr %p, !1897, !DIExpression(), !1898)
    #dbg_value(ptr %m, !1899, !DIExpression(), !1898)
    #dbg_value(ptr %mlen, !1900, !DIExpression(), !1898)
    #dbg_value(ptr %sm, !1901, !DIExpression(), !1898)
    #dbg_value(i32 %smlen, !1902, !DIExpression(), !1898)
    #dbg_value(ptr %pk, !1903, !DIExpression(), !1898)
    #dbg_value(i32 681, !1904, !DIExpression(), !1898)
  %cmp = icmp ult i32 %smlen, 681, !dbg !1905
  br i1 %cmp, label %return, label %if.end, !dbg !1905

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1907
  %sub = add i32 %smlen, -681, !dbg !1908
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1909
    #dbg_value(i32 %call, !1910, !DIExpression(), !1898)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1911
  br i1 %cmp1, label %if.then2, label %return, !dbg !1911

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -681, !dbg !1913
  store i32 %sub3, ptr %mlen, align 4, !dbg !1915
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1916
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1917
  br label %return, !dbg !1918

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1898
  ret i32 %retval.0, !dbg !1919
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1920 {
entry:
  %tEnc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [216 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %pk = alloca [49147 x i64], align 8
  %tmp = alloca [80 x i8], align 1
    #dbg_value(ptr %p, !1923, !DIExpression(), !1924)
    #dbg_value(ptr %m, !1925, !DIExpression(), !1924)
    #dbg_value(i32 %mlen, !1926, !DIExpression(), !1924)
    #dbg_value(ptr %sig, !1927, !DIExpression(), !1924)
    #dbg_value(ptr %cpk, !1928, !DIExpression(), !1924)
    #dbg_declare(ptr %tEnc, !1929, !DIExpression(), !1930)
    #dbg_declare(ptr %t, !1931, !DIExpression(), !1932)
    #dbg_declare(ptr %y, !1933, !DIExpression(), !1937)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(216) %y, i8 0, i32 216, i1 false), !dbg !1937
    #dbg_declare(ptr %s, !1938, !DIExpression(), !1939)
    #dbg_declare(ptr %pk, !1940, !DIExpression(), !1941)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(393176) %pk, i8 0, i32 393176, i1 false), !dbg !1941
    #dbg_declare(ptr %tmp, !1942, !DIExpression(), !1946)
    #dbg_value(i32 108, !1947, !DIExpression(), !1924)
    #dbg_value(i32 118, !1948, !DIExpression(), !1924)
    #dbg_value(i32 11, !1949, !DIExpression(), !1924)
    #dbg_value(i32 54, !1950, !DIExpression(), !1924)
    #dbg_value(i32 681, !1951, !DIExpression(), !1924)
    #dbg_value(i32 48, !1952, !DIExpression(), !1924)
    #dbg_value(i32 32, !1953, !DIExpression(), !1924)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1954
    #dbg_value(i32 0, !1955, !DIExpression(), !1924)
    #dbg_value(ptr %pk, !1956, !DIExpression(), !1924)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 329616, !dbg !1957
    #dbg_value(ptr %add.ptr, !1958, !DIExpression(), !1924)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1959
    #dbg_value(ptr %add.ptr2, !1960, !DIExpression(), !1924)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1961
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !1962
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !1963
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 32) #8, !dbg !1964
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !1965
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !1966
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1298) #6, !dbg !1967
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1968
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 108) #8, !dbg !1969
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1971
  %. = zext i1 %cmp21 to i32, !dbg !1924
  ret i32 %., !dbg !1972
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1973 {
entry:
    #dbg_value(ptr %p, !1974, !DIExpression(), !1975)
    #dbg_value(ptr %cpk, !1976, !DIExpression(), !1975)
    #dbg_value(ptr %pk, !1977, !DIExpression(), !1975)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1978
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1979
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1980
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 55, i32 noundef 108) #6, !dbg !1981
  ret i32 0, !dbg !1982
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1983 {
entry:
  %SPS = alloca [847 x i64], align 8
  %zero = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !1986, !DIExpression(), !1987)
    #dbg_value(ptr %s, !1988, !DIExpression(), !1987)
    #dbg_value(ptr %P1, !1989, !DIExpression(), !1987)
    #dbg_value(ptr %P2, !1990, !DIExpression(), !1987)
    #dbg_value(ptr %P3, !1991, !DIExpression(), !1987)
    #dbg_value(ptr %eval, !1992, !DIExpression(), !1987)
    #dbg_declare(ptr %SPS, !1993, !DIExpression(), !1997)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6776) %SPS, i8 0, i32 6776, i1 false), !dbg !1997
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1998
    #dbg_declare(ptr %zero, !1999, !DIExpression(), !2000)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(108) %zero, i8 0, i32 108, i1 false), !dbg !2000
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !2001
  ret void, !dbg !2002
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2003 {
entry:
  %PS = alloca [9086 x i64], align 8
    #dbg_value(ptr %p, !2006, !DIExpression(), !2007)
    #dbg_value(ptr %P1, !2008, !DIExpression(), !2007)
    #dbg_value(ptr %P2, !2009, !DIExpression(), !2007)
    #dbg_value(ptr %P3, !2010, !DIExpression(), !2007)
    #dbg_value(ptr %s, !2011, !DIExpression(), !2007)
    #dbg_value(ptr %SPS, !2012, !DIExpression(), !2007)
    #dbg_declare(ptr %PS, !2013, !DIExpression(), !2017)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72688) %PS, i8 0, i32 72688, i1 false), !dbg !2017
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 11, ptr noundef nonnull %PS) #6, !dbg !2018
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 108, i32 noundef 11, i32 noundef 118, ptr noundef %SPS) #6, !dbg !2019
  ret void, !dbg !2020
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2021 {
entry:
  %accumulator = alloca [145376 x i64], align 8
    #dbg_value(ptr %P1, !2024, !DIExpression(), !2025)
    #dbg_value(ptr %P2, !2026, !DIExpression(), !2025)
    #dbg_value(ptr %P3, !2027, !DIExpression(), !2025)
    #dbg_value(ptr %S, !2028, !DIExpression(), !2025)
    #dbg_value(i32 108, !2029, !DIExpression(), !2025)
    #dbg_value(i32 108, !2030, !DIExpression(), !2025)
    #dbg_value(i32 10, !2031, !DIExpression(), !2025)
    #dbg_value(i32 11, !2032, !DIExpression(), !2025)
    #dbg_value(ptr %PS, !2033, !DIExpression(), !2025)
    #dbg_value(i32 118, !2034, !DIExpression(), !2025)
    #dbg_value(i32 7, !2035, !DIExpression(), !2025)
    #dbg_declare(ptr %accumulator, !2036, !DIExpression(), !2040)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(1163008) %accumulator, i8 0, i32 1163008, i1 false), !dbg !2040
    #dbg_value(i32 0, !2041, !DIExpression(), !2025)
    #dbg_value(i32 0, !2042, !DIExpression(), !2044)
  br label %for.cond, !dbg !2045

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 108, %entry ], !dbg !2046
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2046
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2047
    #dbg_value(i32 %row.0, !2042, !DIExpression(), !2044)
    #dbg_value(i32 %P1_used.0, !2041, !DIExpression(), !2025)
  %exitcond4 = icmp ne i32 %row.0, 108, !dbg !2048
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2050

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2051
  br label %for.cond2, !dbg !2051

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2054

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2025
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2056
    #dbg_value(i32 %j.0, !2057, !DIExpression(), !2058)
    #dbg_value(i32 %P1_used.1, !2041, !DIExpression(), !2025)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2059
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2051

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2025
  br label %for.cond21, !dbg !2061

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2063

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2066
    #dbg_value(i32 %col.0, !2067, !DIExpression(), !2068)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2069
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2063

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 56, !dbg !2071
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2071
  %mul8 = mul nuw nsw i32 %row.0, 11, !dbg !2073
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2074
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2075
  %mul11 = mul nuw nsw i32 %col.0, 118, !dbg !2076
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2077
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2077
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2077
  %conv = zext i8 %2 to i32, !dbg !2077
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2078
  %add.ptr15.idx = mul nuw nsw i32 %add13, 56, !dbg !2079
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2079
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2080
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2081
    #dbg_value(i32 %inc, !2067, !DIExpression(), !2068)
  br label %for.cond5, !dbg !2082, !llvm.loop !2083

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2041, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2025)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2085
    #dbg_value(i32 %inc16, !2041, !DIExpression(), !2025)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2086
    #dbg_value(i32 %inc18, !2057, !DIExpression(), !2058)
  br label %for.cond2, !dbg !2087, !llvm.loop !2088

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2090
    #dbg_value(i32 %j20.0, !2091, !DIExpression(), !2092)
  %exitcond3 = icmp ne i32 %j20.0, 10, !dbg !2093
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2061

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2095

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2098
    #dbg_value(i32 %col25.0, !2099, !DIExpression(), !2100)
  %exitcond2 = icmp ne i32 %col25.0, 11, !dbg !2101
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2095

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 10, !dbg !2103
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2105
  %add.ptr33.idx = mul nuw nsw i32 %add31, 56, !dbg !2106
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2106
  %mul35 = mul nuw nsw i32 %row.0, 11, !dbg !2107
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2108
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2109
  %mul38 = mul nuw nsw i32 %col25.0, 118, !dbg !2110
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2111
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2111
  %arrayidx41 = getelementptr i8, ptr %4, i32 108, !dbg !2111
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2111
  %conv42 = zext i8 %5 to i32, !dbg !2111
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2112
  %add.ptr45.idx = mul nuw nsw i32 %add43, 56, !dbg !2113
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2113
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2114
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2115
    #dbg_value(i32 %inc47, !2099, !DIExpression(), !2100)
  br label %for.cond26, !dbg !2116, !llvm.loop !2117

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2119
    #dbg_value(i32 %inc50, !2091, !DIExpression(), !2092)
  br label %for.cond21, !dbg !2120, !llvm.loop !2121

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2123
    #dbg_value(i32 %inc53, !2042, !DIExpression(), !2044)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2124
  br label %for.cond, !dbg !2124, !llvm.loop !2125

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 10, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2127
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2127
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 108, %for.cond56.preheader ], !dbg !2128
    #dbg_value(i32 %row55.0, !2129, !DIExpression(), !2130)
    #dbg_value(i32 %P3_used.0, !2131, !DIExpression(), !2025)
  %exitcond9 = icmp ne i32 %row55.0, 118, !dbg !2132
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2054

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2134
  br label %for.cond61, !dbg !2134

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2137

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2025
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2138
    #dbg_value(i32 %j60.0, !2139, !DIExpression(), !2140)
    #dbg_value(i32 %P3_used.1, !2131, !DIExpression(), !2025)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2141
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2134

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2143

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2146
    #dbg_value(i32 %col65.0, !2147, !DIExpression(), !2148)
  %exitcond5 = icmp ne i32 %col65.0, 11, !dbg !2149
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2143

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 56, !dbg !2151
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2151
  %mul73 = mul nuw nsw i32 %row55.0, 11, !dbg !2153
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2154
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2155
  %mul76 = mul nuw nsw i32 %col65.0, 118, !dbg !2156
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2157
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2157
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2157
  %conv79 = zext i8 %8 to i32, !dbg !2157
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2158
  %add.ptr82.idx = mul nuw nsw i32 %add80, 56, !dbg !2159
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2159
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2160
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2161
    #dbg_value(i32 %inc84, !2147, !DIExpression(), !2148)
  br label %for.cond66, !dbg !2162, !llvm.loop !2163

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2131, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2025)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2165
    #dbg_value(i32 %inc86, !2131, !DIExpression(), !2025)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2166
    #dbg_value(i32 %inc88, !2139, !DIExpression(), !2140)
  br label %for.cond61, !dbg !2167, !llvm.loop !2168

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2025
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2170
    #dbg_value(i32 %inc91, !2129, !DIExpression(), !2130)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2171
  br label %for.cond56, !dbg !2171, !llvm.loop !2172

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2025
    #dbg_value(i32 %i.0, !2174, !DIExpression(), !2025)
  %exitcond10 = icmp ne i32 %i.0, 1298, !dbg !2175
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2137

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 896, !dbg !2176
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2176
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 56, !dbg !2178
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2178
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2179
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2180
    #dbg_value(i32 %inc102, !2174, !DIExpression(), !2025)
  br label %while.cond, !dbg !2137, !llvm.loop !2181

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2183
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2184 {
entry:
  %accumulator = alloca [13552 x i64], align 8
    #dbg_value(ptr %PS, !2187, !DIExpression(), !2188)
    #dbg_value(ptr %S, !2189, !DIExpression(), !2188)
    #dbg_value(i32 108, !2190, !DIExpression(), !2188)
    #dbg_value(i32 11, !2191, !DIExpression(), !2188)
    #dbg_value(i32 118, !2192, !DIExpression(), !2188)
    #dbg_value(ptr %SPS, !2193, !DIExpression(), !2188)
    #dbg_declare(ptr %accumulator, !2194, !DIExpression(), !2198)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(108416) %accumulator, i8 0, i32 108416, i1 false), !dbg !2198
    #dbg_value(i32 7, !2199, !DIExpression(), !2188)
    #dbg_value(i32 0, !2200, !DIExpression(), !2202)
  br label %for.cond, !dbg !2203

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2204
    #dbg_value(i32 %row.0, !2200, !DIExpression(), !2202)
  %exitcond2 = icmp ne i32 %row.0, 11, !dbg !2205
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2207

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2208

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2211

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2212
    #dbg_value(i32 %j.0, !2213, !DIExpression(), !2214)
  %exitcond1 = icmp ne i32 %j.0, 118, !dbg !2215
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2208

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2217

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2220
    #dbg_value(i32 %col.0, !2221, !DIExpression(), !2222)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2223
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2217

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 11, !dbg !2225
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2227
  %add.ptr.idx = mul nuw nsw i32 %add7, 56, !dbg !2228
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2228
  %mul9 = mul nuw nsw i32 %row.0, 11, !dbg !2229
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2230
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2231
  %mul12 = mul nuw nsw i32 %row.0, 118, !dbg !2232
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2233
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2233
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2233
  %conv = zext i8 %1 to i32, !dbg !2233
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2234
  %add.ptr16.idx = mul nuw nsw i32 %add14, 56, !dbg !2235
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2235
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2236
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2237
    #dbg_value(i32 %add17, !2221, !DIExpression(), !2222)
  br label %for.cond4, !dbg !2238, !llvm.loop !2239

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2241
    #dbg_value(i32 %inc, !2213, !DIExpression(), !2214)
  br label %for.cond1, !dbg !2242, !llvm.loop !2243

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2245
    #dbg_value(i32 %inc21, !2200, !DIExpression(), !2202)
  br label %for.cond, !dbg !2246, !llvm.loop !2247

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2188
    #dbg_value(i32 %i.0, !2249, !DIExpression(), !2188)
  %exitcond3 = icmp ne i32 %i.0, 121, !dbg !2250
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2211

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 896, !dbg !2251
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2251
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 56, !dbg !2253
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2253
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2254
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2255
    #dbg_value(i32 %inc32, !2249, !DIExpression(), !2188)
  br label %while.cond, !dbg !2211, !llvm.loop !2256

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2258
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2259 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2262, !DIExpression(), !2263)
    #dbg_value(ptr %in, !2264, !DIExpression(), !2263)
    #dbg_value(ptr %acc, !2265, !DIExpression(), !2263)
    #dbg_value(i32 0, !2266, !DIExpression(), !2268)
  br label %for.cond, !dbg !2269

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2270
    #dbg_value(i32 %i.0, !2266, !DIExpression(), !2268)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2271
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2273

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2274
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2274
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2276
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2277
  %xor = xor i64 %1, %0, !dbg !2277
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2277
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2278
    #dbg_value(i32 %inc, !2266, !DIExpression(), !2268)
  br label %for.cond, !dbg !2279, !llvm.loop !2280

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2282
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2283 {
entry:
    #dbg_value(i32 7, !2286, !DIExpression(), !2287)
    #dbg_value(ptr %bins, !2288, !DIExpression(), !2287)
    #dbg_value(ptr %out, !2289, !DIExpression(), !2287)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2290
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2291
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2292
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 616, !dbg !2293
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2294
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2295
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2296
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2297
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2298
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2299
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2300
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2301
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2302
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2303
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2304
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2305
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2306
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2307
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2308
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2309
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2310
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2311
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2312
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2313
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2314
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2315
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2316
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2317
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2318
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2319
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2320
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2321
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2322
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2323
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2324
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2325
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2326
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2327
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2328
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2329
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2330
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2331
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2332
  call fastcc void @m_vec_copy(i32 noundef 7, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2333
  ret void, !dbg !2334
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2335 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2336, !DIExpression(), !2337)
    #dbg_value(ptr %in, !2338, !DIExpression(), !2337)
    #dbg_value(ptr %acc, !2339, !DIExpression(), !2337)
    #dbg_value(i64 1229782938247303441, !2340, !DIExpression(), !2337)
    #dbg_value(i32 0, !2341, !DIExpression(), !2343)
  br label %for.cond, !dbg !2344

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2345
    #dbg_value(i32 %i.0, !2341, !DIExpression(), !2343)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2346
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2348

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2349
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2349
  %and = and i64 %0, 1229782938247303441, !dbg !2351
    #dbg_value(i64 %and, !2352, !DIExpression(), !2353)
  %xor = lshr i64 %0, 1, !dbg !2354
  %shr = and i64 %xor, 8608480567731124087, !dbg !2354
  %mul = mul nuw i64 %and, 9, !dbg !2355
  %xor2 = xor i64 %shr, %mul, !dbg !2356
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2357
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2358
  %xor4 = xor i64 %1, %xor2, !dbg !2358
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2358
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2359
    #dbg_value(i32 %inc, !2341, !DIExpression(), !2343)
  br label %for.cond, !dbg !2360, !llvm.loop !2361

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2363
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2364 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2365, !DIExpression(), !2366)
    #dbg_value(ptr %in, !2367, !DIExpression(), !2366)
    #dbg_value(ptr %acc, !2368, !DIExpression(), !2366)
    #dbg_value(i64 -8608480567731124088, !2369, !DIExpression(), !2366)
    #dbg_value(i32 0, !2370, !DIExpression(), !2372)
  br label %for.cond, !dbg !2373

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2374
    #dbg_value(i32 %i.0, !2370, !DIExpression(), !2372)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2375
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2377

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2378
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2378
    #dbg_value(i64 %0, !2380, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2381)
  %xor = shl i64 %0, 1, !dbg !2382
  %shl = and i64 %xor, -1229782938247303442, !dbg !2382
  %and = lshr i64 %0, 3, !dbg !2383
  %shr = and i64 %and, 1229782938247303441, !dbg !2383
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2384
  %xor2 = xor i64 %shl, %mul, !dbg !2385
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2386
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2387
  %xor4 = xor i64 %1, %xor2, !dbg !2387
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2387
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2388
    #dbg_value(i32 %inc, !2370, !DIExpression(), !2372)
  br label %for.cond, !dbg !2389, !llvm.loop !2390

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2392
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2393 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2394, !DIExpression(), !2395)
    #dbg_value(ptr %in, !2396, !DIExpression(), !2395)
    #dbg_value(ptr %out, !2397, !DIExpression(), !2395)
    #dbg_value(i32 0, !2398, !DIExpression(), !2400)
  br label %for.cond, !dbg !2401

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2402
    #dbg_value(i32 %i.0, !2398, !DIExpression(), !2400)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2403
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2405

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2406
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2406
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2408
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2409
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2410
    #dbg_value(i32 %inc, !2398, !DIExpression(), !2400)
  br label %for.cond, !dbg !2411, !llvm.loop !2412

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2414
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2415 {
entry:
    #dbg_value(ptr %p, !2446, !DIExpression(), !2447)
    #dbg_value(ptr %in, !2448, !DIExpression(), !2447)
    #dbg_value(ptr %out, !2449, !DIExpression(), !2447)
    #dbg_value(i32 %size, !2450, !DIExpression(), !2447)
    #dbg_value(i32 7, !2451, !DIExpression(), !2447)
    #dbg_value(i32 0, !2452, !DIExpression(), !2447)
    #dbg_value(i32 0, !2453, !DIExpression(), !2455)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2456
  br label %for.cond, !dbg !2456

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2457
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2457
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2458
    #dbg_value(i32 %r.0, !2453, !DIExpression(), !2455)
    #dbg_value(i32 %m_vecs_stored.0, !2452, !DIExpression(), !2447)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2459
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2461

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2462
  br label %for.cond1, !dbg !2462

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2447
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2465
    #dbg_value(i32 %c.0, !2466, !DIExpression(), !2467)
    #dbg_value(i32 %m_vecs_stored.1, !2452, !DIExpression(), !2447)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2468
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2462

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2470
  %add = add nsw i32 %mul, %c.0, !dbg !2472
  %add.ptr.idx = mul nsw i32 %add, 56, !dbg !2473
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2473
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2474
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2474
  call fastcc void @m_vec_copy.17(i32 noundef 7, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2475
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2476
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2476

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2478
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2480
  %add.ptr11.idx = mul nsw i32 %add9, 56, !dbg !2481
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2481
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2482
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2482
  call fastcc void @m_vec_add.18(i32 noundef 7, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2483
  br label %for.inc, !dbg !2484

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2452, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2447)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2485
    #dbg_value(i32 %inc, !2452, !DIExpression(), !2447)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2486
    #dbg_value(i32 %inc14, !2466, !DIExpression(), !2467)
  br label %for.cond1, !dbg !2487, !llvm.loop !2488

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2447
  %inc16 = add nuw i32 %r.0, 1, !dbg !2490
    #dbg_value(i32 %inc16, !2453, !DIExpression(), !2455)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2491
  br label %for.cond, !dbg !2491, !llvm.loop !2492

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2494
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2495 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2496, !DIExpression(), !2497)
    #dbg_value(ptr %in, !2498, !DIExpression(), !2497)
    #dbg_value(ptr %out, !2499, !DIExpression(), !2497)
    #dbg_value(i32 0, !2500, !DIExpression(), !2502)
  br label %for.cond, !dbg !2503

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2504
    #dbg_value(i32 %i.0, !2500, !DIExpression(), !2502)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2505
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2507

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2508
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2508
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2510
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2511
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2512
    #dbg_value(i32 %inc, !2500, !DIExpression(), !2502)
  br label %for.cond, !dbg !2513, !llvm.loop !2514

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2516
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2517 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2518, !DIExpression(), !2519)
    #dbg_value(ptr %in, !2520, !DIExpression(), !2519)
    #dbg_value(ptr %acc, !2521, !DIExpression(), !2519)
    #dbg_value(i32 0, !2522, !DIExpression(), !2524)
  br label %for.cond, !dbg !2525

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2526
    #dbg_value(i32 %i.0, !2522, !DIExpression(), !2524)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2527
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2529

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2530
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2530
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2532
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2533
  %xor = xor i64 %1, %0, !dbg !2533
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2533
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2534
    #dbg_value(i32 %inc, !2522, !DIExpression(), !2524)
  br label %for.cond, !dbg !2535, !llvm.loop !2536

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2538
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2539 {
entry:
  %Ar = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2542, !DIExpression(), !2543)
    #dbg_value(ptr %A, !2544, !DIExpression(), !2543)
    #dbg_value(ptr %y, !2545, !DIExpression(), !2543)
    #dbg_value(ptr %r, !2546, !DIExpression(), !2543)
    #dbg_value(ptr %x, !2547, !DIExpression(), !2543)
    #dbg_value(i32 %k, !2548, !DIExpression(), !2543)
    #dbg_value(i32 %o, !2549, !DIExpression(), !2543)
    #dbg_value(i32 %m, !2550, !DIExpression(), !2543)
    #dbg_value(i32 %A_cols, !2551, !DIExpression(), !2543)
    #dbg_value(i32 0, !2552, !DIExpression(), !2554)
  %0 = mul nsw i32 %o, %k, !dbg !2555
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2555
  br label %for.cond, !dbg !2555

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2556
    #dbg_value(i32 %i.0, !2552, !DIExpression(), !2554)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2557
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2559

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2560
  br label %for.cond3, !dbg !2560

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2562
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2562
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2564
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2565
  %inc = add nuw i32 %i.0, 1, !dbg !2566
    #dbg_value(i32 %inc, !2552, !DIExpression(), !2554)
  br label %for.cond, !dbg !2567, !llvm.loop !2568

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2570
    #dbg_value(i32 %i2.0, !2571, !DIExpression(), !2572)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2573
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2560

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2575
  %mul7 = mul nsw i32 %k, %o, !dbg !2577
  %add = add nsw i32 %mul7, 1, !dbg !2578
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2579
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2580
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2580
  store i8 0, ptr %arrayidx10, align 1, !dbg !2581
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2582
    #dbg_value(i32 %inc12, !2571, !DIExpression(), !2572)
  br label %for.cond3, !dbg !2583, !llvm.loop !2584

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2586
  %add15 = add nsw i32 %mul14, 1, !dbg !2587
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2588
    #dbg_value(i32 0, !2589, !DIExpression(), !2591)
  br label %for.cond17, !dbg !2592

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2593
    #dbg_value(i32 %i16.0, !2589, !DIExpression(), !2591)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2594
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2596

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2597
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2597
  %arrayidx21 = getelementptr inbounds nuw [108 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2599
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2599
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2600
  %mul22 = mul nsw i32 %k, %o, !dbg !2601
  %mul23 = mul nsw i32 %k, %o, !dbg !2602
  %add24 = add nsw i32 %mul23, 1, !dbg !2603
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2604
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2605
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2605
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2606
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2607
    #dbg_value(i32 %inc29, !2589, !DIExpression(), !2591)
  br label %for.cond17, !dbg !2608, !llvm.loop !2609

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2611
  %add32 = add nsw i32 %mul31, 1, !dbg !2612
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2613
    #dbg_value(i8 0, !2614, !DIExpression(), !2543)
    #dbg_value(i32 0, !2615, !DIExpression(), !2617)
  %6 = add i32 %A_cols, -1, !dbg !2618
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2618
  br label %for.cond34, !dbg !2618

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2543
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2619
    #dbg_value(i32 %i33.0, !2615, !DIExpression(), !2617)
    #dbg_value(i8 %full_rank.0, !2614, !DIExpression(), !2543)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2620
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2622

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2543)
  %sub37 = add nsw i32 %m, -1, !dbg !2623
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2625
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2626
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2626
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2626
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2543)
  %or12 = or i8 %full_rank.0, %8, !dbg !2627
    #dbg_value(i8 %or12, !2614, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2543)
    #dbg_value(i8 %or12, !2614, !DIExpression(), !2543)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2628
    #dbg_value(i32 %inc44, !2615, !DIExpression(), !2617)
  br label %for.cond34, !dbg !2629, !llvm.loop !2630

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2543
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2632
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2632

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2634

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2634, !llvm.loop !2636

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2638
    #dbg_value(i32 %row.0, !2639, !DIExpression(), !2640)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2641
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2634

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2643, !DIExpression(), !2543)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2644
  %div = sdiv i32 32, %sub54, !dbg !2644
  %add55 = add nsw i32 %row.0, %div, !dbg !2644
  %mul56 = mul nsw i32 %k, %o, !dbg !2644
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2644
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2644

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2644
  %div60 = sdiv i32 32, %sub59, !dbg !2644
  %add61 = add nsw i32 %row.0, %div60, !dbg !2644
  br label %cond.end, !dbg !2644

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2644
  br label %cond.end, !dbg !2644

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2644
    #dbg_value(i32 %cond, !2646, !DIExpression(), !2543)
    #dbg_value(i32 %row.0, !2647, !DIExpression(), !2649)
  br label %for.cond63, !dbg !2650

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2651
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2652
    #dbg_value(i32 %col.0, !2647, !DIExpression(), !2649)
    #dbg_value(i8 %finished.0, !2643, !DIExpression(), !2543)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2653
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2655

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2656
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2658
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2658
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2658
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2659
  %not = xor i8 %finished.0, -1, !dbg !2660
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2543)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2662
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2663
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2663
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2663
  %13 = and i8 %12, %not, !dbg !2664
  %and801 = and i8 %13, %call70, !dbg !2664
    #dbg_value(i8 %and801, !2665, !DIExpression(), !2666)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2667
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2668
  %xor2 = xor i8 %14, %and801, !dbg !2668
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2668
    #dbg_value(i32 0, !2669, !DIExpression(), !2671)
  br label %for.cond87, !dbg !2672

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2673
    #dbg_value(i32 %i86.0, !2669, !DIExpression(), !2671)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2674
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2676

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2677
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2679
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2679
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2679
  %conv94 = zext i8 %16 to i64, !dbg !2680
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2681
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2682
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2683
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2683
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2683
  %conv99 = zext i8 %18 to i64, !dbg !2684
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2685
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2686
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2687
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2688
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2689
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2689
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2689
  %conv106 = zext i8 %20 to i64, !dbg !2690
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2691
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2692
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2693
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2694
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2695
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2695
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2695
  %conv113 = zext i8 %22 to i64, !dbg !2696
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2697
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2698
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2699
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2700
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2701
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2701
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2701
  %conv120 = zext i8 %24 to i64, !dbg !2702
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2703
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2704
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2705
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2706
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2707
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2707
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2707
  %conv127 = zext i8 %26 to i64, !dbg !2708
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2709
  %xor129 = xor i64 %xor122, %shl128, !dbg !2710
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2711
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2712
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2713
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2713
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2713
  %conv134 = zext i8 %28 to i64, !dbg !2714
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2715
  %xor136 = xor i64 %xor129, %shl135, !dbg !2716
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2717
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2718
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2719
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2719
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2719
  %conv141 = zext i8 %30 to i64, !dbg !2720
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2721
  %xor143 = xor i64 %xor136, %shl142, !dbg !2722
    #dbg_value(i64 %xor143, !2723, !DIExpression(), !2724)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2725
    #dbg_value(i64 %call144, !2723, !DIExpression(), !2724)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2726
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2726
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2727
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2727
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2728
  %33 = trunc i64 %call144 to i8, !dbg !2728
  %34 = and i8 %33, 15, !dbg !2728
  %conv152 = xor i8 %34, %32, !dbg !2728
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2728
  %shr = lshr i64 %call144, 8, !dbg !2729
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2730
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2730
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2731
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2731
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2732
  %37 = trunc i64 %shr to i8, !dbg !2732
  %38 = and i8 %37, 15, !dbg !2732
  %conv161 = xor i8 %38, %36, !dbg !2732
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2732
  %shr162 = lshr i64 %call144, 16, !dbg !2733
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2734
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2734
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2735
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2735
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2736
  %41 = trunc i64 %shr162 to i8, !dbg !2736
  %42 = and i8 %41, 15, !dbg !2736
  %conv171 = xor i8 %42, %40, !dbg !2736
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2736
  %shr172 = lshr i64 %call144, 24, !dbg !2737
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2738
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2738
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2739
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2739
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2740
  %45 = trunc i64 %shr172 to i8, !dbg !2740
  %46 = and i8 %45, 15, !dbg !2740
  %conv181 = xor i8 %46, %44, !dbg !2740
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2740
  %shr182 = lshr i64 %call144, 32, !dbg !2741
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2742
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2742
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2743
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2743
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2744
  %49 = trunc i64 %shr182 to i8, !dbg !2744
  %50 = and i8 %49, 15, !dbg !2744
  %conv191 = xor i8 %50, %48, !dbg !2744
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2744
  %shr192 = lshr i64 %call144, 40, !dbg !2745
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2746
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2746
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2747
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2747
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2748
  %53 = trunc i64 %shr192 to i8, !dbg !2748
  %54 = and i8 %53, 15, !dbg !2748
  %conv201 = xor i8 %54, %52, !dbg !2748
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2748
  %shr202 = lshr i64 %call144, 48, !dbg !2749
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2750
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2750
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2751
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2751
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2752
  %57 = trunc i64 %shr202 to i8, !dbg !2752
  %58 = and i8 %57, 15, !dbg !2752
  %conv211 = xor i8 %58, %56, !dbg !2752
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2752
  %shr212 = lshr i64 %call144, 56, !dbg !2753
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2754
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2754
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2755
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2755
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2756
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2756
  %conv221 = xor i8 %60, %61, !dbg !2756
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2756
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2757
    #dbg_value(i32 %add223, !2669, !DIExpression(), !2671)
  br label %for.cond87, !dbg !2758, !llvm.loop !2759

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2643, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2543)
  %or2273 = or i8 %finished.0, %call70, !dbg !2761
    #dbg_value(i8 %or2273, !2643, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2543)
    #dbg_value(i8 %or2273, !2643, !DIExpression(), !2543)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2762
    #dbg_value(i32 %inc230, !2647, !DIExpression(), !2649)
  br label %for.cond63, !dbg !2763, !llvm.loop !2764

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2766

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2543
  ret i32 %retval.0, !dbg !2766
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2767 {
entry:
    #dbg_value(ptr %a, !2768, !DIExpression(), !2769)
    #dbg_value(ptr %b, !2770, !DIExpression(), !2769)
    #dbg_value(ptr %c, !2771, !DIExpression(), !2769)
    #dbg_value(i32 %colrow_ab, !2772, !DIExpression(), !2769)
    #dbg_value(i32 %row_a, !2773, !DIExpression(), !2769)
    #dbg_value(i32 1, !2774, !DIExpression(), !2769)
    #dbg_value(i32 0, !2775, !DIExpression(), !2777)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2778
  br label %for.cond, !dbg !2778

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2779
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2768, !DIExpression(), !2769)
    #dbg_value(ptr %c.addr.0, !2771, !DIExpression(), !2769)
    #dbg_value(i32 %i.0, !2775, !DIExpression(), !2777)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2780
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2782

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2783

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2786
    #dbg_value(i32 poison, !2787, !DIExpression(), !2788)
    #dbg_value(ptr %c.addr.1, !2771, !DIExpression(), !2769)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2783

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2789
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2792
    #dbg_value(i32 1, !2787, !DIExpression(), !2788)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2793
    #dbg_value(ptr %incdec.ptr, !2771, !DIExpression(), !2769)
  br label %for.cond1, !dbg !2794, !llvm.loop !2795

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2797
    #dbg_value(i32 %inc5, !2775, !DIExpression(), !2777)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2798
    #dbg_value(ptr %add.ptr6, !2768, !DIExpression(), !2769)
  br label %for.cond, !dbg !2799, !llvm.loop !2800

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2802
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2803 {
entry:
    #dbg_value(i8 %a, !2804, !DIExpression(), !2805)
    #dbg_value(i8 %b, !2806, !DIExpression(), !2805)
  %xor1 = xor i8 %a, %b, !dbg !2807
  ret i8 %xor1, !dbg !2808
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2809 {
entry:
  %_pivot_row = alloca [7 x i64], align 32
  %_pivot_row2 = alloca [7 x i64], align 32
  %packed_A = alloca [756 x i64], align 32
  %temp = alloca [126 x i8], align 1
    #dbg_value(ptr %A, !2813, !DIExpression(), !2814)
    #dbg_value(i32 %nrows, !2815, !DIExpression(), !2814)
    #dbg_value(i32 %ncols, !2816, !DIExpression(), !2814)
    #dbg_declare(ptr %_pivot_row, !2817, !DIExpression(), !2818)
    #dbg_declare(ptr %_pivot_row2, !2819, !DIExpression(), !2820)
    #dbg_declare(ptr %packed_A, !2821, !DIExpression(), !2825)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(6048) %packed_A, i8 0, i32 6048, i1 false), !dbg !2825
  %add = add nsw i32 %ncols, 15, !dbg !2826
  %div = sdiv i32 %add, 16, !dbg !2827
    #dbg_value(i32 %div, !2828, !DIExpression(), !2814)
    #dbg_value(i32 0, !2829, !DIExpression(), !2831)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2832
  br label %for.cond, !dbg !2832

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2833
    #dbg_value(i32 %i.0, !2829, !DIExpression(), !2831)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2834
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2836

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2837
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2837
  br label %for.cond3, !dbg !2837

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2839
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2841
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2842
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2843
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2844
  %inc = add nuw i32 %i.0, 1, !dbg !2845
    #dbg_value(i32 %inc, !2829, !DIExpression(), !2831)
  br label %for.cond, !dbg !2846, !llvm.loop !2847

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2849
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2814
    #dbg_value(i32 %pivot_row.0, !2850, !DIExpression(), !2814)
    #dbg_value(i32 %pivot_col.0, !2851, !DIExpression(), !2852)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2853
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2837

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2855

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2857
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2857
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2857
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2857
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2857
    #dbg_value(i32 %cond, !2859, !DIExpression(), !2860)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2861
    #dbg_value(i32 %cond16, !2862, !DIExpression(), !2860)
    #dbg_value(i32 0, !2863, !DIExpression(), !2865)
  br label %for.cond18, !dbg !2866

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2867
    #dbg_value(i32 %i17.0, !2863, !DIExpression(), !2865)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2868
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2870

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2861
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2861
  br label %for.cond25, !dbg !2871

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2873
  store i64 0, ptr %arrayidx, align 8, !dbg !2875
  %arrayidx21 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2876
  store i64 0, ptr %arrayidx21, align 8, !dbg !2877
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2878
    #dbg_value(i32 %inc23, !2863, !DIExpression(), !2865)
  br label %for.cond18, !dbg !2879, !llvm.loop !2880

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2860
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2860
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2882
    #dbg_value(i32 %row.0, !2883, !DIExpression(), !2882)
    #dbg_value(i8 %pivot.0, !2884, !DIExpression(), !2860)
    #dbg_value(i64 %pivot_is_zero.0, !2885, !DIExpression(), !2860)
  %add27 = add nsw i32 %cond16, 32, !dbg !2886
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2886
  %sub30 = add nsw i32 %nrows, -1, !dbg !2886
  %add32 = add nsw i32 %cond16, 32, !dbg !2886
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2886
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2888
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2871

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2889
  %not = xor i64 %call, -1, !dbg !2891
    #dbg_value(i64 %not, !2892, !DIExpression(), !2893)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2894
    #dbg_value(i64 %call37, !2895, !DIExpression(), !2893)
    #dbg_value(i32 0, !2896, !DIExpression(), !2898)
  br label %for.cond38, !dbg !2899

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2900
    #dbg_value(i32 %j.0, !2896, !DIExpression(), !2898)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2901
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2903

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2904
  %or = or i64 %and, %not, !dbg !2906
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2907
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2908
  %arrayidx43 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2909
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2909
  %and44 = and i64 %or, %0, !dbg !2910
  %arrayidx45 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2911
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2912
  %xor = xor i64 %1, %and44, !dbg !2912
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2912
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2913
    #dbg_value(i32 %inc47, !2896, !DIExpression(), !2898)
  br label %for.cond38, !dbg !2914, !llvm.loop !2915

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2917
    #dbg_value(i8 %call50, !2884, !DIExpression(), !2860)
  %conv = zext nneg i8 %call50 to i32, !dbg !2918
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2919
    #dbg_value(i64 %call51, !2885, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2860)
  %not52 = xor i64 %call51, -1, !dbg !2920
    #dbg_value(i64 %not52, !2885, !DIExpression(), !2860)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2921
    #dbg_value(i32 %inc54, !2883, !DIExpression(), !2882)
  br label %for.cond25, !dbg !2922, !llvm.loop !2923

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2860
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2860
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2925
    #dbg_value(i8 %call56, !2926, !DIExpression(), !2814)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2927
    #dbg_value(i32 %cond, !2928, !DIExpression(), !2930)
  br label %for.cond60, !dbg !2931

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2932
    #dbg_value(i32 %row59.0, !2928, !DIExpression(), !2930)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2933
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2935

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2936

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2938
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2940
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2940
    #dbg_value(i64 %and67, !2941, !DIExpression(), !2942)
    #dbg_value(i64 %and67.demorgan, !2943, !DIExpression(), !2942)
    #dbg_value(i32 0, !2944, !DIExpression(), !2946)
  br label %for.cond69, !dbg !2947

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2948
    #dbg_value(i32 %col.0, !2944, !DIExpression(), !2946)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2949
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2951

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2952
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2954
  %arrayidx75 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2955
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2955
  %and76 = and i64 %and67.demorgan, %2, !dbg !2956
  %arrayidx77 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2957
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2957
  %and78 = and i64 %3, %and67, !dbg !2958
  %add79 = add i64 %and76, %and78, !dbg !2959
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2960
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2961
  %arrayidx82 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2962
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2963
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2964
    #dbg_value(i32 %inc84, !2944, !DIExpression(), !2946)
  br label %for.cond69, !dbg !2965, !llvm.loop !2966

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2968
    #dbg_value(i32 %inc87, !2928, !DIExpression(), !2930)
  br label %for.cond60, !dbg !2969, !llvm.loop !2970

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2972
    #dbg_value(i32 %row89.0, !2973, !DIExpression(), !2974)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2975
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2936

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2977
    #dbg_value(i1 %cmp94, !2979, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2980)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2981
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2982
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2983
    #dbg_value(i8 %call100, !2984, !DIExpression(), !2980)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2985
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2986
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2987
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2988
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2989
    #dbg_value(i32 %inc110, !2973, !DIExpression(), !2974)
  br label %for.cond90, !dbg !2990, !llvm.loop !2991

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2814)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2993
  %5 = add i32 %4, 1, !dbg !2993
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2993
    #dbg_value(i32 %conv116, !2850, !DIExpression(), !2814)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2994
    #dbg_value(i32 %inc118, !2851, !DIExpression(), !2852)
  br label %for.cond3, !dbg !2995, !llvm.loop !2996

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2998
    #dbg_value(i32 %i120.0, !2999, !DIExpression(), !3000)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3001
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2855

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3003
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3005
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !3006
    #dbg_value(i32 0, !3007, !DIExpression(), !3009)
  br label %for.cond130, !dbg !3010

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3011
    #dbg_value(i32 %j129.0, !3007, !DIExpression(), !3009)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3012
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3014

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [126 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3015
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3015
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3017
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3018
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3018
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3019
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3020
    #dbg_value(i32 %inc139, !3007, !DIExpression(), !3009)
  br label %for.cond130, !dbg !3021, !llvm.loop !3022

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3024
    #dbg_value(i32 %inc142, !2999, !DIExpression(), !3000)
  br label %for.cond121, !dbg !3025, !llvm.loop !3026

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 126) #8, !dbg !3028
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 56) #8, !dbg !3029
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 56) #8, !dbg !3030
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 6048) #8, !dbg !3031
  ret void, !dbg !3032
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3033 {
entry:
    #dbg_value(i8 %a, !3035, !DIExpression(), !3036)
    #dbg_value(i8 0, !3037, !DIExpression(), !3036)
  %0 = icmp ne i8 %a, 0, !dbg !3038
  %conv3 = sext i1 %0 to i8, !dbg !3039
  %1 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3040
  %xor5 = xor i8 %1, %conv3, !dbg !3041
  ret i8 %xor5, !dbg !3042
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3043 {
entry:
    #dbg_value(i8 %a, !3046, !DIExpression(), !3047)
    #dbg_value(i64 %b, !3048, !DIExpression(), !3047)
  %0 = and i8 %a, 1, !dbg !3049
  %conv1 = zext nneg i8 %0 to i64, !dbg !3050
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3051
    #dbg_value(i64 %mul, !3052, !DIExpression(), !3047)
  %1 = and i8 %a, 2, !dbg !3053
  %conv4 = zext nneg i8 %1 to i64, !dbg !3054
  %mul5 = mul i64 %b, %conv4, !dbg !3055
  %xor = xor i64 %mul, %mul5, !dbg !3056
    #dbg_value(i64 %xor, !3052, !DIExpression(), !3047)
  %2 = and i8 %a, 4, !dbg !3057
  %conv8 = zext nneg i8 %2 to i64, !dbg !3058
  %mul9 = mul i64 %b, %conv8, !dbg !3059
  %xor10 = xor i64 %xor, %mul9, !dbg !3060
    #dbg_value(i64 %xor10, !3052, !DIExpression(), !3047)
  %3 = and i8 %a, 8, !dbg !3061
  %conv13 = zext nneg i8 %3 to i64, !dbg !3062
  %mul14 = mul i64 %b, %conv13, !dbg !3063
  %xor15 = xor i64 %xor10, %mul14, !dbg !3064
    #dbg_value(i64 %xor15, !3052, !DIExpression(), !3047)
    #dbg_value(i64 %xor15, !3065, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3047)
  %shr = lshr i64 %xor15, 4, !dbg !3066
  %and16 = lshr i64 %xor15, 3, !dbg !3067
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3067
  %4 = xor i64 %shr, %shr18, !dbg !3068
  %xor19 = xor i64 %4, %xor15, !dbg !3068
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3069
    #dbg_value(i64 %and20, !3070, !DIExpression(), !3047)
  ret i64 %and20, !dbg !3071
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3072 {
entry:
    #dbg_value(ptr %in, !3075, !DIExpression(), !3076)
    #dbg_value(ptr %out, !3077, !DIExpression(), !3076)
    #dbg_value(i32 %ncols, !3078, !DIExpression(), !3076)
    #dbg_value(ptr %out, !3079, !DIExpression(), !3076)
    #dbg_value(i32 0, !3080, !DIExpression(), !3076)
  br label %for.cond, !dbg !3081

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3083
    #dbg_value(i32 %i.0, !3080, !DIExpression(), !3076)
  %add = or disjoint i32 %i.0, 1, !dbg !3084
  %cmp = icmp slt i32 %add, %ncols, !dbg !3086
  br i1 %cmp, label %for.body, label %for.end, !dbg !3087

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3088
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3088
  %add2 = or disjoint i32 %i.0, 1, !dbg !3090
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3091
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3091
  %shl5 = shl i8 %1, 4, !dbg !3092
  %or = or i8 %shl5, %0, !dbg !3093
  %div = lshr exact i32 %i.0, 1, !dbg !3094
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3095
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3096
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3097
    #dbg_value(i32 %add8, !3080, !DIExpression(), !3076)
  br label %for.cond, !dbg !3098, !llvm.loop !3099

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3083
  %2 = and i32 %ncols, -2147483647, !dbg !3101
  %cmp9 = icmp eq i32 %2, 1, !dbg !3101
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3101

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3103
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3103
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3105
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3106
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3107
  br label %if.end, !dbg !3108

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3109
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3110 {
entry:
    #dbg_value(i32 %a, !3113, !DIExpression(), !3114)
    #dbg_value(i32 %b, !3115, !DIExpression(), !3114)
  %xor = xor i32 %a, %b, !dbg !3116
  %0 = icmp sgt i32 %xor, 0, !dbg !3117
  %shr = sext i1 %0 to i64, !dbg !3117
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3118
  %xor1 = xor i64 %1, %shr, !dbg !3119
  ret i64 %xor1, !dbg !3120
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3121 {
entry:
    #dbg_value(i32 %a, !3122, !DIExpression(), !3123)
    #dbg_value(i32 %b, !3124, !DIExpression(), !3123)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3123)
  %0 = icmp slt i32 %b, %a, !dbg !3126
  %shr = sext i1 %0 to i64, !dbg !3126
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3127
  %xor = xor i64 %1, %shr, !dbg !3128
  ret i64 %xor, !dbg !3129
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3130 {
entry:
    #dbg_value(ptr %in, !3133, !DIExpression(), !3134)
    #dbg_value(i32 %index, !3135, !DIExpression(), !3134)
  %div = sdiv i32 %index, 16, !dbg !3136
    #dbg_value(i32 %div, !3137, !DIExpression(), !3134)
  %rem = srem i32 %index, 16, !dbg !3138
    #dbg_value(i32 %rem, !3139, !DIExpression(), !3134)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3140
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3140
  %mul = shl nsw i32 %rem, 2, !dbg !3141
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3142
  %shr = lshr i64 %0, %sh_prom, !dbg !3142
  %1 = trunc i64 %shr to i8, !dbg !3143
  %conv = and i8 %1, 15, !dbg !3143
  ret i8 %conv, !dbg !3144
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3145 {
entry:
    #dbg_value(i8 %a, !3148, !DIExpression(), !3149)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3150
    #dbg_value(i8 %call, !3151, !DIExpression(), !3149)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3152
    #dbg_value(i8 %call1, !3153, !DIExpression(), !3149)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3154
    #dbg_value(i8 %call2, !3155, !DIExpression(), !3149)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3156
    #dbg_value(i8 %call3, !3157, !DIExpression(), !3149)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3158
    #dbg_value(i8 %call4, !3159, !DIExpression(), !3149)
  ret i8 %call4, !dbg !3160
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3161 {
entry:
    #dbg_value(i32 %legs, !3164, !DIExpression(), !3165)
    #dbg_value(ptr %in, !3166, !DIExpression(), !3165)
    #dbg_value(i8 %a, !3167, !DIExpression(), !3165)
    #dbg_value(ptr %acc, !3168, !DIExpression(), !3165)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3169
    #dbg_value(i32 %call, !3170, !DIExpression(), !3165)
    #dbg_value(i64 1229782938247303441, !3171, !DIExpression(), !3165)
    #dbg_value(i32 0, !3172, !DIExpression(), !3174)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3175
  br label %for.cond, !dbg !3175

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3176
    #dbg_value(i32 %i.0, !3172, !DIExpression(), !3174)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3177
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3179

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3180
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3180
  %and = and i64 %0, 1229782938247303441, !dbg !3182
  %and1 = and i32 %call, 255, !dbg !3183
  %conv = zext nneg i32 %and1 to i64, !dbg !3184
  %mul = mul i64 %and, %conv, !dbg !3185
  %shr = lshr i64 %0, 1, !dbg !3186
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3187
  %shr4 = lshr i32 %call, 8, !dbg !3188
  %and5 = and i32 %shr4, 15, !dbg !3189
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3190
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3191
  %xor = xor i64 %mul, %mul7, !dbg !3192
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3193
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3193
  %shr9 = lshr i64 %1, 2, !dbg !3194
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3195
  %shr11 = lshr i32 %call, 16, !dbg !3196
  %and12 = and i32 %shr11, 15, !dbg !3197
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3198
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3199
  %xor15 = xor i64 %xor, %mul14, !dbg !3200
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3201
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3201
  %shr17 = lshr i64 %2, 3, !dbg !3202
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3203
  %shr19 = lshr i32 %call, 24, !dbg !3204
  %and20 = and i32 %shr19, 15, !dbg !3205
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3206
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3207
  %xor23 = xor i64 %xor15, %mul22, !dbg !3208
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3209
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3210
  %xor25 = xor i64 %3, %xor23, !dbg !3210
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3210
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3211
    #dbg_value(i32 %inc, !3172, !DIExpression(), !3174)
  br label %for.cond, !dbg !3212, !llvm.loop !3213

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3215
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3216 {
entry:
    #dbg_value(i32 %legs, !3219, !DIExpression(), !3220)
    #dbg_value(ptr %in, !3221, !DIExpression(), !3220)
    #dbg_value(ptr %out, !3222, !DIExpression(), !3220)
    #dbg_value(ptr %in, !3223, !DIExpression(), !3220)
    #dbg_value(i32 0, !3224, !DIExpression(), !3226)
  br label %for.cond, !dbg !3227

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3228
    #dbg_value(i32 %i.0, !3224, !DIExpression(), !3226)
  %mul = shl nsw i32 %legs, 4, !dbg !3229
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3231
  br i1 %cmp, label %for.body, label %for.end, !dbg !3232

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3233
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3235
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3235
  %1 = and i8 %0, 15, !dbg !3236
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3237
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3238
  %div3 = lshr exact i32 %i.0, 1, !dbg !3239
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3240
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3240
  %3 = lshr i8 %2, 4, !dbg !3241
  %add = or disjoint i32 %i.0, 1, !dbg !3242
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3243
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3244
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3245
    #dbg_value(i32 %add8, !3224, !DIExpression(), !3226)
  br label %for.cond, !dbg !3246, !llvm.loop !3247

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3249
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3250 {
entry:
    #dbg_value(i8 %b, !3251, !DIExpression(), !3252)
  %conv = zext nneg i8 %b to i32, !dbg !3253
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3254
    #dbg_value(i32 %mul, !3255, !DIExpression(), !3252)
    #dbg_value(i32 -252645136, !3256, !DIExpression(), !3252)
  %and = and i32 %mul, 1894838512, !dbg !3257
    #dbg_value(i32 %and, !3258, !DIExpression(), !3252)
  %shr = lshr exact i32 %and, 4, !dbg !3259
  %shr1 = lshr exact i32 %and, 3, !dbg !3260
  %0 = xor i32 %shr, %shr1, !dbg !3261
  %xor2 = xor i32 %0, %mul, !dbg !3261
  ret i32 %xor2, !dbg !3262
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3263 {
entry:
    #dbg_value(i8 %a, !3264, !DIExpression(), !3265)
    #dbg_value(i8 %b, !3266, !DIExpression(), !3265)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3267
  %xor1 = xor i8 %a, %0, !dbg !3268
    #dbg_value(i8 %xor1, !3264, !DIExpression(), !3265)
  %1 = trunc i8 %xor1 to i1, !dbg !3269
    #dbg_value(i8 poison, !3270, !DIExpression(), !3265)
  %2 = and i8 %xor1, 2, !dbg !3271
  %mul9 = mul i8 %2, %b, !dbg !3272
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3269
  %xor11 = xor i8 %conv10, %mul9, !dbg !3273
    #dbg_value(i8 %xor11, !3270, !DIExpression(), !3265)
  %3 = and i8 %xor1, 4, !dbg !3274
  %mul16 = mul i8 %3, %b, !dbg !3275
  %xor18 = xor i8 %mul16, %xor11, !dbg !3276
    #dbg_value(i8 %xor18, !3270, !DIExpression(), !3265)
  %4 = and i8 %xor1, 8, !dbg !3277
  %mul23 = mul i8 %4, %b, !dbg !3278
  %xor25 = xor i8 %mul23, %xor18, !dbg !3279
    #dbg_value(i8 %xor25, !3270, !DIExpression(), !3265)
    #dbg_value(i8 %xor25, !3280, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3265)
  %5 = lshr i8 %xor25, 4, !dbg !3281
  %6 = lshr i8 %xor25, 3, !dbg !3282
  %7 = and i8 %6, 14, !dbg !3282
  %8 = xor i8 %5, %7, !dbg !3283
  %xor25.masked = and i8 %xor25, 15, !dbg !3284
  %9 = xor i8 %8, %xor25.masked, !dbg !3284
    #dbg_value(i8 %9, !3285, !DIExpression(), !3265)
  ret i8 %9, !dbg !3286
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3287 {
entry:
    #dbg_value(ptr %a, !3288, !DIExpression(), !3289)
    #dbg_value(ptr %b, !3290, !DIExpression(), !3289)
    #dbg_value(i32 %n, !3291, !DIExpression(), !3289)
    #dbg_value(i32 1, !3292, !DIExpression(), !3289)
    #dbg_value(i8 0, !3293, !DIExpression(), !3289)
    #dbg_value(i32 0, !3294, !DIExpression(), !3296)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3297
  br label %for.cond, !dbg !3297

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3289
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3298
    #dbg_value(i32 %i.0, !3294, !DIExpression(), !3296)
    #dbg_value(ptr %b.addr.0, !3290, !DIExpression(), !3289)
    #dbg_value(i8 %ret.0, !3293, !DIExpression(), !3289)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3299
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3301

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3302
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3302
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3304
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3305
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3306
    #dbg_value(i8 %call1, !3293, !DIExpression(), !3289)
  %inc = add nuw i32 %i.0, 1, !dbg !3307
    #dbg_value(i32 %inc, !3294, !DIExpression(), !3296)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3308
    #dbg_value(ptr %add.ptr, !3290, !DIExpression(), !3289)
  br label %for.cond, !dbg !3309, !llvm.loop !3310

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3289
  ret i8 %ret.0.lcssa, !dbg !3312
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3313 {
entry:
    #dbg_value(i8 %a, !3314, !DIExpression(), !3315)
    #dbg_value(i8 %b, !3316, !DIExpression(), !3315)
  %xor1 = xor i8 %a, %b, !dbg !3317
  ret i8 %xor1, !dbg !3318
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
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3145408, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 49147)
!126 = !DILocation(line: 32, column: 10, scope: !77)
!127 = !DILocalVariable(name: "esk", scope: !77, file: !72, line: 33, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3129408, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 48897)
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
!171 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !172, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !172, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 538, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 538, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 539, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 540, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 541, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 542, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4448, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 556)
!222 = !DILocation(line: 542, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 543, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3120768, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 48762)
!227 = !DILocation(line: 543, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 544, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44800, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 700)
!232 = !DILocation(line: 544, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 547, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8640, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 1080)
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
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24640, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 385)
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
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 448, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 7)
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
!602 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !603, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!699 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !700, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 432, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 54)
!715 = !DILocation(line: 363, column: 19, scope: !699)
!716 = !DILocalVariable(name: "t", scope: !699, file: !25, line: 363, type: !717)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 864, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 108)
!720 = !DILocation(line: 363, column: 38, scope: !699)
!721 = !DILocalVariable(name: "y", scope: !699, file: !25, line: 364, type: !717)
!722 = !DILocation(line: 364, column: 19, scope: !699)
!723 = !DILocalVariable(name: "salt", scope: !699, file: !25, line: 365, type: !138)
!724 = !DILocation(line: 365, column: 19, scope: !699)
!725 = !DILocalVariable(name: "V", scope: !699, file: !25, line: 366, type: !726)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5192, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 649)
!729 = !DILocation(line: 366, column: 19, scope: !699)
!730 = !DILocalVariable(name: "Vdec", scope: !699, file: !25, line: 366, type: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 9504, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 1188)
!734 = !DILocation(line: 366, column: 57, scope: !699)
!735 = !DILocalVariable(name: "A", scope: !699, file: !25, line: 367, type: !736)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 99456, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 12432)
!739 = !DILocation(line: 367, column: 19, scope: !699)
!740 = !DILocalVariable(name: "x", scope: !699, file: !25, line: 368, type: !741)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 10384, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 1298)
!744 = !DILocation(line: 368, column: 19, scope: !699)
!745 = !DILocalVariable(name: "r", scope: !699, file: !25, line: 369, type: !746)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 888, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 111)
!749 = !DILocation(line: 369, column: 19, scope: !699)
!750 = !DILocalVariable(name: "s", scope: !699, file: !25, line: 370, type: !741)
!751 = !DILocation(line: 370, column: 19, scope: !699)
!752 = !DILocalVariable(name: "sk", scope: !699, file: !25, line: 372, type: !128, align: 256)
!753 = !DILocation(line: 372, column: 22, scope: !699)
!754 = !DILocalVariable(name: "Ox", scope: !699, file: !25, line: 373, type: !717)
!755 = !DILocation(line: 373, column: 19, scope: !699)
!756 = !DILocalVariable(name: "tmp", scope: !699, file: !25, line: 374, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 904, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 113)
!760 = !DILocation(line: 374, column: 19, scope: !699)
!761 = !DILocalVariable(name: "param_m", scope: !699, file: !25, line: 378, type: !239)
!762 = !DILocalVariable(name: "param_n", scope: !699, file: !25, line: 379, type: !239)
!763 = !DILocalVariable(name: "param_o", scope: !699, file: !25, line: 380, type: !239)
!764 = !DILocalVariable(name: "param_k", scope: !699, file: !25, line: 381, type: !239)
!765 = !DILocalVariable(name: "param_v", scope: !699, file: !25, line: 382, type: !239)
!766 = !DILocalVariable(name: "param_m_bytes", scope: !699, file: !25, line: 383, type: !239)
!767 = !DILocalVariable(name: "param_v_bytes", scope: !699, file: !25, line: 384, type: !239)
!768 = !DILocalVariable(name: "param_r_bytes", scope: !699, file: !25, line: 385, type: !239)
!769 = !DILocalVariable(name: "param_sig_bytes", scope: !699, file: !25, line: 386, type: !239)
!770 = !DILocalVariable(name: "param_A_cols", scope: !699, file: !25, line: 387, type: !239)
!771 = !DILocalVariable(name: "param_digest_bytes", scope: !699, file: !25, line: 388, type: !239)
!772 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !699, file: !25, line: 389, type: !239)
!773 = !DILocalVariable(name: "param_salt_bytes", scope: !699, file: !25, line: 390, type: !239)
!774 = !DILocation(line: 392, column: 11, scope: !699)
!775 = !DILocalVariable(name: "seed_sk", scope: !699, file: !25, line: 371, type: !49)
!776 = !DILocation(line: 401, column: 5, scope: !699)
!777 = !DILocalVariable(name: "P1", scope: !699, file: !25, line: 403, type: !5)
!778 = !DILocation(line: 404, column: 23, scope: !699)
!779 = !DILocalVariable(name: "L", scope: !699, file: !25, line: 404, type: !5)
!780 = !DILocalVariable(name: "Mtmp", scope: !699, file: !25, line: 405, type: !781)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 49280, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 770)
!784 = !DILocation(line: 405, column: 14, scope: !699)
!785 = !DILocation(line: 420, column: 25, scope: !786)
!786 = distinct !DILexicalBlock(scope: !699, file: !25, line: 420, column: 9)
!787 = !DILocation(line: 420, column: 9, scope: !786)
!788 = !DILocation(line: 420, column: 65, scope: !786)
!789 = !DILocation(line: 427, column: 37, scope: !699)
!790 = !DILocation(line: 427, column: 5, scope: !699)
!791 = !DILocation(line: 429, column: 5, scope: !699)
!792 = !DILocation(line: 437, column: 16, scope: !699)
!793 = !DILocation(line: 437, column: 5, scope: !699)
!794 = !DILocation(line: 438, column: 59, scope: !699)
!795 = !DILocalVariable(name: "ctrbyte", scope: !699, file: !25, line: 375, type: !18)
!796 = !DILocation(line: 440, column: 5, scope: !699)
!797 = !DILocation(line: 442, column: 5, scope: !699)
!798 = !DILocalVariable(name: "ctr", scope: !799, file: !25, line: 444, type: !45)
!799 = distinct !DILexicalBlock(scope: !699, file: !25, line: 444, column: 5)
!800 = !DILocation(line: 0, scope: !799)
!801 = !DILocation(line: 466, column: 18, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !25, line: 444, column: 42)
!803 = distinct !DILexicalBlock(scope: !799, file: !25, line: 444, column: 5)
!804 = !DILocation(line: 444, column: 10, scope: !799)
!805 = !DILocation(line: 444, scope: !799)
!806 = !DILocation(line: 444, column: 27, scope: !803)
!807 = !DILocation(line: 444, column: 5, scope: !799)
!808 = !DILocation(line: 445, column: 20, scope: !802)
!809 = !DILocation(line: 445, column: 18, scope: !802)
!810 = !DILocation(line: 447, column: 9, scope: !802)
!811 = !DILocalVariable(name: "i", scope: !812, file: !25, line: 451, type: !45)
!812 = distinct !DILexicalBlock(scope: !802, file: !25, line: 451, column: 9)
!813 = !DILocation(line: 0, scope: !812)
!814 = !DILocation(line: 451, column: 14, scope: !812)
!815 = !DILocation(line: 451, scope: !812)
!816 = !DILocation(line: 451, column: 27, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !25, line: 451, column: 9)
!818 = !DILocation(line: 451, column: 9, scope: !812)
!819 = !DILocation(line: 452, column: 26, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !25, line: 451, column: 48)
!821 = !DILocation(line: 452, column: 22, scope: !820)
!822 = !DILocation(line: 452, column: 52, scope: !820)
!823 = !DILocation(line: 452, column: 48, scope: !820)
!824 = !DILocation(line: 452, column: 13, scope: !820)
!825 = !DILocation(line: 451, column: 43, scope: !817)
!826 = !DILocation(line: 451, column: 9, scope: !817)
!827 = distinct !{!827, !818, !828, !303}
!828 = !DILocation(line: 453, column: 9, scope: !812)
!829 = !DILocation(line: 456, column: 9, scope: !802)
!830 = !DILocation(line: 458, column: 9, scope: !802)
!831 = !DILocation(line: 459, column: 9, scope: !802)
!832 = !DILocalVariable(name: "i", scope: !833, file: !25, line: 461, type: !45)
!833 = distinct !DILexicalBlock(scope: !802, file: !25, line: 461, column: 9)
!834 = !DILocation(line: 0, scope: !833)
!835 = !DILocation(line: 461, column: 14, scope: !833)
!836 = !DILocation(line: 461, scope: !833)
!837 = !DILocation(line: 461, column: 27, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !25, line: 461, column: 9)
!839 = !DILocation(line: 461, column: 9, scope: !833)
!840 = !DILocation(line: 463, column: 20, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !25, line: 462, column: 9)
!842 = !DILocation(line: 463, column: 43, scope: !841)
!843 = !DILocation(line: 463, column: 13, scope: !841)
!844 = !DILocation(line: 463, column: 48, scope: !841)
!845 = !DILocation(line: 461, column: 39, scope: !838)
!846 = !DILocation(line: 461, column: 9, scope: !838)
!847 = distinct !{!847, !839, !848, !303}
!848 = !DILocation(line: 464, column: 9, scope: !833)
!849 = !DILocation(line: 466, column: 9, scope: !802)
!850 = !DILocation(line: 470, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !802, file: !25, line: 470, column: 13)
!852 = !DILocation(line: 473, column: 13, scope: !853)
!853 = distinct !DILexicalBlock(scope: !851, file: !25, line: 472, column: 16)
!854 = !DILocation(line: 474, column: 13, scope: !853)
!855 = !DILocation(line: 444, column: 35, scope: !803)
!856 = !DILocation(line: 444, column: 5, scope: !803)
!857 = distinct !{!857, !807, !858, !303}
!858 = !DILocation(line: 476, column: 5, scope: !799)
!859 = !DILocalVariable(name: "i", scope: !860, file: !25, line: 478, type: !45)
!860 = distinct !DILexicalBlock(scope: !699, file: !25, line: 478, column: 5)
!861 = !DILocation(line: 0, scope: !860)
!862 = !DILocation(line: 478, column: 10, scope: !860)
!863 = !DILocation(line: 478, scope: !860)
!864 = !DILocation(line: 478, column: 23, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !25, line: 478, column: 5)
!866 = !DILocation(line: 478, column: 5, scope: !860)
!867 = !DILocation(line: 479, column: 23, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !25, line: 478, column: 44)
!869 = !DILocation(line: 479, column: 19, scope: !868)
!870 = !DILocalVariable(name: "vi", scope: !699, file: !25, line: 376, type: !18)
!871 = !DILocation(line: 480, column: 17, scope: !868)
!872 = !DILocation(line: 480, column: 33, scope: !868)
!873 = !DILocation(line: 480, column: 29, scope: !868)
!874 = !DILocation(line: 480, column: 9, scope: !868)
!875 = !DILocation(line: 481, column: 31, scope: !868)
!876 = !DILocation(line: 481, column: 27, scope: !868)
!877 = !DILocation(line: 481, column: 9, scope: !868)
!878 = !DILocation(line: 482, column: 22, scope: !868)
!879 = !DILocation(line: 482, column: 18, scope: !868)
!880 = !DILocation(line: 482, column: 32, scope: !868)
!881 = !DILocation(line: 482, column: 61, scope: !868)
!882 = !DILocation(line: 482, column: 57, scope: !868)
!883 = !DILocation(line: 482, column: 9, scope: !868)
!884 = !DILocation(line: 478, column: 39, scope: !865)
!885 = !DILocation(line: 478, column: 5, scope: !865)
!886 = distinct !{!886, !866, !887, !303}
!887 = !DILocation(line: 483, column: 5, scope: !860)
!888 = !DILocation(line: 484, column: 5, scope: !699)
!889 = !DILocation(line: 486, column: 34, scope: !699)
!890 = !DILocation(line: 486, column: 5, scope: !699)
!891 = !DILocation(line: 487, column: 13, scope: !699)
!892 = !DILocation(line: 487, column: 5, scope: !699)
!893 = !DILabel(scope: !699, name: "err", file: !25, line: 489)
!894 = !DILocation(line: 489, column: 1, scope: !699)
!895 = !DILocation(line: 490, column: 5, scope: !699)
!896 = !DILocation(line: 491, column: 5, scope: !699)
!897 = !DILocation(line: 492, column: 5, scope: !699)
!898 = !DILocation(line: 493, column: 5, scope: !699)
!899 = !DILocation(line: 494, column: 23, scope: !699)
!900 = !DILocation(line: 494, column: 5, scope: !699)
!901 = !DILocation(line: 495, column: 5, scope: !699)
!902 = !DILocation(line: 496, column: 5, scope: !699)
!903 = !DILocation(line: 497, column: 5, scope: !699)
!904 = !DILocation(line: 498, column: 5, scope: !699)
!905 = !DILocation(line: 499, column: 5, scope: !699)
!906 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !907, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !174, !49, !326, !326, !5, !5}
!909 = !DILocalVariable(name: "p", arg: 1, scope: !906, file: !323, line: 244, type: !174)
!910 = !DILocation(line: 0, scope: !906)
!911 = !DILocalVariable(name: "Vdec", arg: 2, scope: !906, file: !323, line: 244, type: !49)
!912 = !DILocalVariable(name: "L", arg: 3, scope: !906, file: !323, line: 244, type: !326)
!913 = !DILocalVariable(name: "P1", arg: 4, scope: !906, file: !323, line: 244, type: !326)
!914 = !DILocalVariable(name: "VL", arg: 5, scope: !906, file: !323, line: 244, type: !5)
!915 = !DILocalVariable(name: "VP1V", arg: 6, scope: !906, file: !323, line: 244, type: !5)
!916 = !DILocalVariable(name: "param_k", scope: !906, file: !323, line: 246, type: !239)
!917 = !DILocalVariable(name: "param_v", scope: !906, file: !323, line: 247, type: !239)
!918 = !DILocalVariable(name: "param_o", scope: !906, file: !323, line: 248, type: !239)
!919 = !DILocation(line: 251, column: 5, scope: !906)
!920 = !DILocalVariable(name: "Pv", scope: !906, file: !323, line: 254, type: !921)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 532224, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 8316)
!924 = !DILocation(line: 254, column: 14, scope: !906)
!925 = !DILocation(line: 255, column: 5, scope: !906)
!926 = !DILocation(line: 256, column: 5, scope: !906)
!927 = !DILocation(line: 257, column: 1, scope: !906)
!928 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !929, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !174, !5, !49, !18}
!931 = !DILocalVariable(name: "p", arg: 1, scope: !928, file: !25, line: 43, type: !174)
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
!956 = distinct !{!956, !950, !957, !303}
!957 = !DILocation(line: 59, column: 9, scope: !944)
!958 = !DILocalVariable(name: "temp", scope: !928, file: !25, line: 62, type: !579)
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
!1007 = distinct !{!1007, !994, !1008, !303}
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
!1036 = distinct !{!1036, !995, !1037, !303}
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
!1057 = distinct !{!1057, !1014, !1058, !303}
!1058 = !DILocation(line: 94, column: 13, scope: !1015)
!1059 = !DILocation(line: 65, column: 42, scope: !978)
!1060 = !DILocation(line: 65, column: 9, scope: !978)
!1061 = distinct !{!1061, !969, !1062, !303}
!1062 = !DILocation(line: 95, column: 9, scope: !970)
!1063 = !DILocation(line: 64, column: 44, scope: !967)
!1064 = !DILocation(line: 64, column: 5, scope: !967)
!1065 = distinct !{!1065, !968, !1066, !303}
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
!1091 = distinct !{!1091, !972, !1092, !303}
!1092 = !DILocation(line: 108, column: 5, scope: !973)
!1093 = !DILocation(line: 109, column: 1, scope: !928)
!1094 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1095, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !174, !5, !18}
!1097 = !DILocalVariable(name: "p", arg: 1, scope: !1094, file: !25, line: 154, type: !174)
!1098 = !DILocation(line: 0, scope: !1094)
!1099 = !DILocalVariable(name: "VtL", arg: 2, scope: !1094, file: !25, line: 154, type: !5)
!1100 = !DILocalVariable(name: "A_out", arg: 3, scope: !1094, file: !25, line: 154, type: !18)
!1101 = !DILocalVariable(name: "bits_to_shift", scope: !1094, file: !25, line: 159, type: !45)
!1102 = !DILocalVariable(name: "words_to_shift", scope: !1094, file: !25, line: 160, type: !45)
!1103 = !DILocalVariable(name: "m_vec_limbs", scope: !1094, file: !25, line: 161, type: !239)
!1104 = !DILocalVariable(name: "A", scope: !1094, file: !25, line: 162, type: !1105)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 100352, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 1568)
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
!1129 = distinct !{!1129, !1121, !1130, !303}
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
!1150 = !DILocalVariable(name: "Mj", scope: !1094, file: !25, line: 164, type: !326)
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
!1193 = distinct !{!1193, !1159, !1194, !303}
!1194 = !DILocation(line: 188, column: 17, scope: !1160)
!1195 = !DILocation(line: 181, column: 46, scope: !1157)
!1196 = !DILocation(line: 181, column: 13, scope: !1157)
!1197 = distinct !{!1197, !1158, !1198, !303}
!1198 = !DILocation(line: 189, column: 13, scope: !1152)
!1199 = !DILocation(line: 191, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 191, column: 17)
!1201 = !DILocation(line: 192, column: 26, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !25, line: 191, column: 25)
!1203 = !DILocalVariable(name: "Mi", scope: !1094, file: !25, line: 164, type: !326)
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
!1246 = distinct !{!1246, !1212, !1247, !303}
!1247 = !DILocation(line: 200, column: 21, scope: !1213)
!1248 = !DILocation(line: 193, column: 50, scope: !1210)
!1249 = !DILocation(line: 193, column: 17, scope: !1210)
!1250 = distinct !{!1250, !1211, !1251, !303}
!1251 = !DILocation(line: 201, column: 17, scope: !1205)
!1252 = !DILocation(line: 204, column: 27, scope: !1149)
!1253 = !DILocation(line: 205, column: 30, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 205, column: 16)
!1255 = !DILocation(line: 178, column: 46, scope: !1147)
!1256 = !DILocation(line: 178, column: 9, scope: !1147)
!1257 = distinct !{!1257, !1138, !1258, !303}
!1258 = !DILocation(line: 209, column: 9, scope: !1139)
!1259 = !DILocation(line: 177, column: 42, scope: !1137)
!1260 = !DILocation(line: 177, column: 5, scope: !1137)
!1261 = distinct !{!1261, !1122, !1262, !303}
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
!1273 = distinct !{!1273, !1141, !1274, !303}
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
!1315 = distinct !{!1315, !1287, !1316, !303}
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
!1393 = distinct !{!1393, !1360, !1394, !303}
!1394 = !DILocation(line: 240, column: 13, scope: !1354)
!1395 = !DILocation(line: 230, column: 82, scope: !1331)
!1396 = !DILocation(line: 230, column: 9, scope: !1331)
!1397 = distinct !{!1397, !1322, !1398, !303}
!1398 = !DILocation(line: 241, column: 9, scope: !1323)
!1399 = !DILocation(line: 228, column: 38, scope: !1321)
!1400 = !DILocation(line: 228, column: 5, scope: !1321)
!1401 = distinct !{!1401, !1288, !1402, !303}
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
!1437 = distinct !{!1437, !1416, !1438, !303}
!1438 = !DILocation(line: 257, column: 13, scope: !1417)
!1439 = !DILocation(line: 252, column: 50, scope: !1415)
!1440 = !DILocation(line: 252, column: 9, scope: !1415)
!1441 = distinct !{!1441, !1408, !1442, !303}
!1442 = !DILocation(line: 258, column: 9, scope: !1409)
!1443 = !DILocation(line: 250, column: 38, scope: !1407)
!1444 = !DILocation(line: 250, column: 5, scope: !1407)
!1445 = distinct !{!1445, !1325, !1446, !303}
!1446 = !DILocation(line: 259, column: 5, scope: !1326)
!1447 = !DILocation(line: 260, column: 1, scope: !1094)
!1448 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1449, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !49, !49, !18, !45, !45, !45}
!1451 = !DILocalVariable(name: "a", arg: 1, scope: !1448, file: !493, line: 79, type: !49)
!1452 = !DILocation(line: 0, scope: !1448)
!1453 = !DILocalVariable(name: "b", arg: 2, scope: !1448, file: !493, line: 79, type: !49)
!1454 = !DILocalVariable(name: "c", arg: 3, scope: !1448, file: !493, line: 80, type: !18)
!1455 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1448, file: !493, line: 80, type: !45)
!1456 = !DILocalVariable(name: "row_a", arg: 5, scope: !1448, file: !493, line: 80, type: !45)
!1457 = !DILocalVariable(name: "col_b", arg: 6, scope: !1448, file: !493, line: 80, type: !45)
!1458 = !DILocalVariable(name: "i", scope: !1459, file: !493, line: 81, type: !45)
!1459 = distinct !DILexicalBlock(scope: !1448, file: !493, line: 81, column: 5)
!1460 = !DILocation(line: 0, scope: !1459)
!1461 = !DILocation(line: 81, column: 10, scope: !1459)
!1462 = !DILocation(line: 81, scope: !1459)
!1463 = !DILocation(line: 81, column: 23, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !493, line: 81, column: 5)
!1465 = !DILocation(line: 81, column: 5, scope: !1459)
!1466 = !DILocation(line: 82, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !493, line: 82, column: 9)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !493, line: 81, column: 53)
!1469 = !DILocation(line: 82, scope: !1467)
!1470 = !DILocalVariable(name: "j", scope: !1467, file: !493, line: 82, type: !45)
!1471 = !DILocation(line: 0, scope: !1467)
!1472 = !DILocation(line: 83, column: 18, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !493, line: 82, column: 46)
!1474 = distinct !DILexicalBlock(scope: !1467, file: !493, line: 82, column: 9)
!1475 = !DILocation(line: 83, column: 16, scope: !1473)
!1476 = !DILocation(line: 82, column: 41, scope: !1474)
!1477 = !DILocation(line: 82, column: 9, scope: !1474)
!1478 = distinct !{!1478, !1466, !1479, !303}
!1479 = !DILocation(line: 84, column: 9, scope: !1467)
!1480 = !DILocation(line: 81, column: 32, scope: !1464)
!1481 = !DILocation(line: 81, column: 39, scope: !1464)
!1482 = !DILocation(line: 81, column: 5, scope: !1464)
!1483 = distinct !{!1483, !1465, !1484, !303}
!1484 = !DILocation(line: 85, column: 5, scope: !1459)
!1485 = !DILocation(line: 86, column: 1, scope: !1448)
!1486 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1487, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !49, !49, !18, !45, !45}
!1489 = !DILocalVariable(name: "a", arg: 1, scope: !1486, file: !493, line: 88, type: !49)
!1490 = !DILocation(line: 0, scope: !1486)
!1491 = !DILocalVariable(name: "b", arg: 2, scope: !1486, file: !493, line: 88, type: !49)
!1492 = !DILocalVariable(name: "c", arg: 3, scope: !1486, file: !493, line: 89, type: !18)
!1493 = !DILocalVariable(name: "m", arg: 4, scope: !1486, file: !493, line: 89, type: !45)
!1494 = !DILocalVariable(name: "n", arg: 5, scope: !1486, file: !493, line: 89, type: !45)
!1495 = !DILocalVariable(name: "i", scope: !1496, file: !493, line: 90, type: !45)
!1496 = distinct !DILexicalBlock(scope: !1486, file: !493, line: 90, column: 5)
!1497 = !DILocation(line: 0, scope: !1496)
!1498 = !DILocation(line: 90, column: 10, scope: !1496)
!1499 = !DILocation(line: 90, scope: !1496)
!1500 = !DILocation(line: 90, column: 23, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !493, line: 90, column: 5)
!1502 = !DILocation(line: 90, column: 5, scope: !1496)
!1503 = !DILocalVariable(name: "j", scope: !1504, file: !493, line: 91, type: !45)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !493, line: 91, column: 9)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !493, line: 90, column: 33)
!1506 = !DILocation(line: 0, scope: !1504)
!1507 = !DILocation(line: 92, column: 42, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !493, line: 91, column: 37)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !493, line: 91, column: 9)
!1510 = !DILocation(line: 92, column: 38, scope: !1508)
!1511 = !DILocation(line: 92, column: 60, scope: !1508)
!1512 = !DILocation(line: 92, column: 56, scope: !1508)
!1513 = !DILocation(line: 92, column: 32, scope: !1508)
!1514 = !DILocation(line: 92, column: 17, scope: !1508)
!1515 = !DILocation(line: 92, column: 30, scope: !1508)
!1516 = !DILocation(line: 90, column: 28, scope: !1501)
!1517 = !DILocation(line: 90, column: 5, scope: !1501)
!1518 = distinct !{!1518, !1502, !1519, !303}
!1519 = !DILocation(line: 94, column: 5, scope: !1496)
!1520 = !DILocation(line: 95, column: 1, scope: !1486)
!1521 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!1544 = distinct !{!1544, !1532, !1545, !303}
!1545 = !DILocation(line: 36, column: 5, scope: !1528)
!1546 = !DILocation(line: 41, column: 1, scope: !1521)
!1547 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1548, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!14, !14, !14}
!1550 = !DILocalVariable(name: "a", arg: 1, scope: !1547, file: !493, line: 43, type: !14)
!1551 = !DILocation(line: 0, scope: !1547)
!1552 = !DILocalVariable(name: "b", arg: 2, scope: !1547, file: !493, line: 43, type: !14)
!1553 = !DILocation(line: 44, column: 14, scope: !1547)
!1554 = !DILocation(line: 44, column: 5, scope: !1547)
!1555 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1556, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!14, !49, !49, !45, !45}
!1558 = !DILocalVariable(name: "a", arg: 1, scope: !1555, file: !493, line: 70, type: !49)
!1559 = !DILocation(line: 0, scope: !1555)
!1560 = !DILocalVariable(name: "b", arg: 2, scope: !1555, file: !493, line: 71, type: !49)
!1561 = !DILocalVariable(name: "n", arg: 3, scope: !1555, file: !493, line: 71, type: !45)
!1562 = !DILocalVariable(name: "m", arg: 4, scope: !1555, file: !493, line: 71, type: !45)
!1563 = !DILocalVariable(name: "ret", scope: !1555, file: !493, line: 72, type: !14)
!1564 = !DILocalVariable(name: "i", scope: !1565, file: !493, line: 73, type: !45)
!1565 = distinct !DILexicalBlock(scope: !1555, file: !493, line: 73, column: 5)
!1566 = !DILocation(line: 0, scope: !1565)
!1567 = !DILocation(line: 73, column: 10, scope: !1565)
!1568 = !DILocation(line: 73, scope: !1565)
!1569 = !DILocation(line: 73, column: 23, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !493, line: 73, column: 5)
!1571 = !DILocation(line: 73, column: 5, scope: !1565)
!1572 = !DILocation(line: 74, column: 27, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !493, line: 73, column: 41)
!1574 = !DILocation(line: 74, column: 33, scope: !1573)
!1575 = !DILocation(line: 74, column: 21, scope: !1573)
!1576 = !DILocation(line: 74, column: 15, scope: !1573)
!1577 = !DILocation(line: 73, column: 28, scope: !1570)
!1578 = !DILocation(line: 73, column: 35, scope: !1570)
!1579 = !DILocation(line: 73, column: 5, scope: !1570)
!1580 = distinct !{!1580, !1571, !1581, !303}
!1581 = !DILocation(line: 75, column: 5, scope: !1565)
!1582 = !DILocation(line: 76, column: 5, scope: !1555)
!1583 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1548, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1584 = !DILocalVariable(name: "a", arg: 1, scope: !1583, file: !493, line: 9, type: !14)
!1585 = !DILocation(line: 0, scope: !1583)
!1586 = !DILocalVariable(name: "b", arg: 2, scope: !1583, file: !493, line: 9, type: !14)
!1587 = !DILocation(line: 14, column: 10, scope: !1583)
!1588 = !DILocation(line: 14, column: 7, scope: !1583)
!1589 = !DILocation(line: 17, column: 17, scope: !1583)
!1590 = !DILocalVariable(name: "p", scope: !1583, file: !493, line: 11, type: !14)
!1591 = !DILocation(line: 18, column: 13, scope: !1583)
!1592 = !DILocation(line: 18, column: 17, scope: !1583)
!1593 = !DILocation(line: 18, column: 7, scope: !1583)
!1594 = !DILocation(line: 19, column: 13, scope: !1583)
!1595 = !DILocation(line: 19, column: 17, scope: !1583)
!1596 = !DILocation(line: 19, column: 7, scope: !1583)
!1597 = !DILocation(line: 20, column: 13, scope: !1583)
!1598 = !DILocation(line: 20, column: 17, scope: !1583)
!1599 = !DILocation(line: 20, column: 7, scope: !1583)
!1600 = !DILocalVariable(name: "top_p", scope: !1583, file: !493, line: 23, type: !14)
!1601 = !DILocation(line: 24, column: 37, scope: !1583)
!1602 = !DILocation(line: 24, column: 52, scope: !1583)
!1603 = !DILocation(line: 24, column: 43, scope: !1583)
!1604 = !DILocation(line: 24, column: 59, scope: !1583)
!1605 = !DILocalVariable(name: "out", scope: !1583, file: !493, line: 24, type: !14)
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
!1636 = distinct !{!1636, !1616, !1637, !303}
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
!1677 = distinct !{!1677, !1617, !1678, !303}
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
!1718 = distinct !{!1718, !1643, !1719, !303}
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
!1741 = distinct !{!1741, !1684, !1742, !303}
!1742 = !DILocation(line: 150, column: 5, scope: !1685)
!1743 = !DILocation(line: 151, column: 1, scope: !24)
!1744 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1745 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1744, file: !323, line: 61, type: !239)
!1746 = !DILocation(line: 0, scope: !1744)
!1747 = !DILocalVariable(name: "mat", arg: 2, scope: !1744, file: !323, line: 61, type: !49)
!1748 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1744, file: !323, line: 61, type: !326)
!1749 = !DILocalVariable(name: "acc", arg: 4, scope: !1744, file: !323, line: 61, type: !5)
!1750 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1744, file: !323, line: 62, type: !239)
!1751 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1744, file: !323, line: 62, type: !239)
!1752 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1744, file: !323, line: 62, type: !239)
!1753 = !DILocalVariable(name: "r", scope: !1754, file: !323, line: 64, type: !45)
!1754 = distinct !DILexicalBlock(scope: !1744, file: !323, line: 64, column: 5)
!1755 = !DILocation(line: 0, scope: !1754)
!1756 = !DILocation(line: 64, column: 10, scope: !1754)
!1757 = !DILocation(line: 64, scope: !1754)
!1758 = !DILocation(line: 64, column: 23, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !323, line: 64, column: 5)
!1760 = !DILocation(line: 64, column: 5, scope: !1754)
!1761 = !DILocation(line: 65, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !323, line: 65, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !323, line: 64, column: 40)
!1764 = !DILocation(line: 65, scope: !1762)
!1765 = !DILocalVariable(name: "c", scope: !1762, file: !323, line: 65, type: !45)
!1766 = !DILocation(line: 0, scope: !1762)
!1767 = !DILocation(line: 65, column: 27, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1762, file: !323, line: 65, column: 9)
!1769 = !DILocation(line: 66, column: 13, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !323, line: 66, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !323, line: 65, column: 44)
!1772 = !DILocation(line: 66, scope: !1770)
!1773 = !DILocalVariable(name: "k", scope: !1770, file: !323, line: 66, type: !45)
!1774 = !DILocation(line: 0, scope: !1770)
!1775 = !DILocation(line: 66, column: 31, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1770, file: !323, line: 66, column: 13)
!1777 = !DILocation(line: 67, column: 70, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !323, line: 66, column: 54)
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
!1789 = distinct !{!1789, !1769, !1790, !303}
!1790 = !DILocation(line: 68, column: 13, scope: !1770)
!1791 = !DILocation(line: 65, column: 40, scope: !1768)
!1792 = !DILocation(line: 65, column: 9, scope: !1768)
!1793 = distinct !{!1793, !1761, !1794, !303}
!1794 = !DILocation(line: 69, column: 9, scope: !1762)
!1795 = !DILocation(line: 64, column: 36, scope: !1759)
!1796 = !DILocation(line: 64, column: 5, scope: !1759)
!1797 = distinct !{!1797, !1760, !1798, !303}
!1798 = !DILocation(line: 70, column: 5, scope: !1754)
!1799 = !DILocation(line: 71, column: 1, scope: !1744)
!1800 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1801 = !DILocalVariable(name: "p", arg: 1, scope: !1800, file: !323, line: 82, type: !174)
!1802 = !DILocation(line: 0, scope: !1800)
!1803 = !DILocalVariable(name: "P1", arg: 2, scope: !1800, file: !323, line: 82, type: !326)
!1804 = !DILocalVariable(name: "V", arg: 3, scope: !1800, file: !323, line: 82, type: !49)
!1805 = !DILocalVariable(name: "acc", arg: 4, scope: !1800, file: !323, line: 82, type: !5)
!1806 = !DILocation(line: 86, column: 5, scope: !1800)
!1807 = !DILocation(line: 87, column: 1, scope: !1800)
!1808 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1809 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1808, file: !323, line: 32, type: !239)
!1810 = !DILocation(line: 0, scope: !1808)
!1811 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1808, file: !323, line: 32, type: !326)
!1812 = !DILocalVariable(name: "mat", arg: 3, scope: !1808, file: !323, line: 32, type: !49)
!1813 = !DILocalVariable(name: "acc", arg: 4, scope: !1808, file: !323, line: 32, type: !5)
!1814 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1808, file: !323, line: 33, type: !239)
!1815 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1808, file: !323, line: 33, type: !239)
!1816 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1808, file: !323, line: 33, type: !239)
!1817 = !DILocalVariable(name: "triangular", arg: 8, scope: !1808, file: !323, line: 33, type: !239)
!1818 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1808, file: !323, line: 34, type: !45)
!1819 = !DILocalVariable(name: "r", scope: !1820, file: !323, line: 35, type: !45)
!1820 = distinct !DILexicalBlock(scope: !1808, file: !323, line: 35, column: 5)
!1821 = !DILocation(line: 0, scope: !1820)
!1822 = !DILocation(line: 35, column: 10, scope: !1820)
!1823 = !DILocation(line: 34, column: 9, scope: !1808)
!1824 = !DILocation(line: 35, scope: !1820)
!1825 = !DILocation(line: 35, column: 23, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !323, line: 35, column: 5)
!1827 = !DILocation(line: 35, column: 5, scope: !1820)
!1828 = !DILocation(line: 36, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !323, line: 36, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !323, line: 35, column: 43)
!1831 = !DILocation(line: 36, scope: !1829)
!1832 = !DILocalVariable(name: "c", scope: !1829, file: !323, line: 36, type: !45)
!1833 = !DILocation(line: 0, scope: !1829)
!1834 = !DILocation(line: 36, column: 40, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1829, file: !323, line: 36, column: 9)
!1836 = !DILocation(line: 37, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !323, line: 37, column: 13)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !323, line: 36, column: 60)
!1839 = !DILocation(line: 37, scope: !1837)
!1840 = !DILocalVariable(name: "k", scope: !1837, file: !323, line: 37, type: !45)
!1841 = !DILocation(line: 0, scope: !1837)
!1842 = !DILocation(line: 37, column: 31, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !323, line: 37, column: 13)
!1844 = !DILocation(line: 38, column: 51, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1843, file: !323, line: 37, column: 51)
!1846 = !DILocation(line: 38, column: 94, scope: !1845)
!1847 = !DILocation(line: 38, column: 88, scope: !1845)
!1848 = !DILocation(line: 38, column: 137, scope: !1845)
!1849 = !DILocation(line: 38, column: 148, scope: !1845)
!1850 = !DILocation(line: 38, column: 118, scope: !1845)
!1851 = !DILocation(line: 38, column: 17, scope: !1845)
!1852 = !DILocation(line: 37, column: 45, scope: !1843)
!1853 = !DILocation(line: 37, column: 13, scope: !1843)
!1854 = distinct !{!1854, !1836, !1855, !303}
!1855 = !DILocation(line: 39, column: 13, scope: !1837)
!1856 = !DILocation(line: 40, column: 33, scope: !1838)
!1857 = !DILocation(line: 36, column: 56, scope: !1835)
!1858 = !DILocation(line: 36, column: 9, scope: !1835)
!1859 = distinct !{!1859, !1828, !1860, !303}
!1860 = !DILocation(line: 41, column: 9, scope: !1829)
!1861 = !DILocation(line: 35, column: 39, scope: !1826)
!1862 = !DILocation(line: 35, column: 5, scope: !1826)
!1863 = distinct !{!1863, !1827, !1864, !303}
!1864 = !DILocation(line: 42, column: 5, scope: !1820)
!1865 = !DILocation(line: 43, column: 1, scope: !1808)
!1866 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !700, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1867 = !DILocalVariable(name: "p", arg: 1, scope: !1866, file: !25, line: 502, type: !174)
!1868 = !DILocation(line: 0, scope: !1866)
!1869 = !DILocalVariable(name: "sm", arg: 2, scope: !1866, file: !25, line: 502, type: !18)
!1870 = !DILocalVariable(name: "smlen", arg: 3, scope: !1866, file: !25, line: 503, type: !702)
!1871 = !DILocalVariable(name: "m", arg: 4, scope: !1866, file: !25, line: 503, type: !49)
!1872 = !DILocalVariable(name: "mlen", arg: 5, scope: !1866, file: !25, line: 504, type: !15)
!1873 = !DILocalVariable(name: "csk", arg: 6, scope: !1866, file: !25, line: 504, type: !49)
!1874 = !DILocalVariable(name: "ret", scope: !1866, file: !25, line: 505, type: !45)
!1875 = !DILocalVariable(name: "param_sig_bytes", scope: !1866, file: !25, line: 506, type: !239)
!1876 = !DILocation(line: 508, column: 16, scope: !1866)
!1877 = !DILocation(line: 508, column: 5, scope: !1866)
!1878 = !DILocation(line: 509, column: 50, scope: !1866)
!1879 = !DILocalVariable(name: "siglen", scope: !1866, file: !25, line: 507, type: !15)
!1880 = !DILocation(line: 509, column: 11, scope: !1866)
!1881 = !DILocation(line: 510, column: 13, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1866, file: !25, line: 510, column: 9)
!1883 = !DILocation(line: 510, column: 24, scope: !1882)
!1884 = !DILocation(line: 511, column: 23, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !25, line: 510, column: 62)
!1886 = !DILocation(line: 511, column: 30, scope: !1885)
!1887 = !DILocation(line: 511, column: 9, scope: !1885)
!1888 = !DILocation(line: 512, column: 9, scope: !1885)
!1889 = !DILocation(line: 515, column: 14, scope: !1866)
!1890 = !DILocation(line: 515, column: 21, scope: !1866)
!1891 = !DILocation(line: 515, column: 12, scope: !1866)
!1892 = !DILocation(line: 515, column: 5, scope: !1866)
!1893 = !DILabel(scope: !1866, name: "err", file: !25, line: 516)
!1894 = !DILocation(line: 516, column: 1, scope: !1866)
!1895 = !DILocation(line: 517, column: 5, scope: !1866)
!1896 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_open", scope: !25, file: !25, line: 520, type: !700, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1897 = !DILocalVariable(name: "p", arg: 1, scope: !1896, file: !25, line: 520, type: !174)
!1898 = !DILocation(line: 0, scope: !1896)
!1899 = !DILocalVariable(name: "m", arg: 2, scope: !1896, file: !25, line: 520, type: !18)
!1900 = !DILocalVariable(name: "mlen", arg: 3, scope: !1896, file: !25, line: 521, type: !702)
!1901 = !DILocalVariable(name: "sm", arg: 4, scope: !1896, file: !25, line: 521, type: !49)
!1902 = !DILocalVariable(name: "smlen", arg: 5, scope: !1896, file: !25, line: 522, type: !15)
!1903 = !DILocalVariable(name: "pk", arg: 6, scope: !1896, file: !25, line: 522, type: !49)
!1904 = !DILocalVariable(name: "param_sig_bytes", scope: !1896, file: !25, line: 523, type: !239)
!1905 = !DILocation(line: 524, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1896, file: !25, line: 524, column: 9)
!1907 = !DILocation(line: 527, column: 36, scope: !1896)
!1908 = !DILocation(line: 527, column: 61, scope: !1896)
!1909 = !DILocation(line: 527, column: 18, scope: !1896)
!1910 = !DILocalVariable(name: "result", scope: !1896, file: !25, line: 527, type: !45)
!1911 = !DILocation(line: 530, column: 16, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1896, file: !25, line: 530, column: 9)
!1913 = !DILocation(line: 531, column: 23, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1912, file: !25, line: 530, column: 28)
!1915 = !DILocation(line: 531, column: 15, scope: !1914)
!1916 = !DILocation(line: 532, column: 23, scope: !1914)
!1917 = !DILocation(line: 532, column: 9, scope: !1914)
!1918 = !DILocation(line: 533, column: 5, scope: !1914)
!1919 = !DILocation(line: 536, column: 1, scope: !1896)
!1920 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1921, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!45, !174, !49, !15, !49, !49}
!1923 = !DILocalVariable(name: "p", arg: 1, scope: !1920, file: !25, line: 617, type: !174)
!1924 = !DILocation(line: 0, scope: !1920)
!1925 = !DILocalVariable(name: "m", arg: 2, scope: !1920, file: !25, line: 617, type: !49)
!1926 = !DILocalVariable(name: "mlen", arg: 3, scope: !1920, file: !25, line: 618, type: !15)
!1927 = !DILocalVariable(name: "sig", arg: 4, scope: !1920, file: !25, line: 618, type: !49)
!1928 = !DILocalVariable(name: "cpk", arg: 5, scope: !1920, file: !25, line: 619, type: !49)
!1929 = !DILocalVariable(name: "tEnc", scope: !1920, file: !25, line: 620, type: !712)
!1930 = !DILocation(line: 620, column: 19, scope: !1920)
!1931 = !DILocalVariable(name: "t", scope: !1920, file: !25, line: 621, type: !717)
!1932 = !DILocation(line: 621, column: 19, scope: !1920)
!1933 = !DILocalVariable(name: "y", scope: !1920, file: !25, line: 622, type: !1934)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1728, elements: !1935)
!1935 = !{!1936}
!1936 = !DISubrange(count: 216)
!1937 = !DILocation(line: 622, column: 19, scope: !1920)
!1938 = !DILocalVariable(name: "s", scope: !1920, file: !25, line: 623, type: !741)
!1939 = !DILocation(line: 623, column: 19, scope: !1920)
!1940 = !DILocalVariable(name: "pk", scope: !1920, file: !25, line: 624, type: !123)
!1941 = !DILocation(line: 624, column: 14, scope: !1920)
!1942 = !DILocalVariable(name: "tmp", scope: !1920, file: !25, line: 625, type: !1943)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !1944)
!1944 = !{!1945}
!1945 = !DISubrange(count: 80)
!1946 = !DILocation(line: 625, column: 19, scope: !1920)
!1947 = !DILocalVariable(name: "param_m", scope: !1920, file: !25, line: 627, type: !239)
!1948 = !DILocalVariable(name: "param_n", scope: !1920, file: !25, line: 628, type: !239)
!1949 = !DILocalVariable(name: "param_k", scope: !1920, file: !25, line: 629, type: !239)
!1950 = !DILocalVariable(name: "param_m_bytes", scope: !1920, file: !25, line: 630, type: !239)
!1951 = !DILocalVariable(name: "param_sig_bytes", scope: !1920, file: !25, line: 631, type: !239)
!1952 = !DILocalVariable(name: "param_digest_bytes", scope: !1920, file: !25, line: 632, type: !239)
!1953 = !DILocalVariable(name: "param_salt_bytes", scope: !1920, file: !25, line: 633, type: !239)
!1954 = !DILocation(line: 635, column: 15, scope: !1920)
!1955 = !DILocalVariable(name: "ret", scope: !1920, file: !25, line: 635, type: !45)
!1956 = !DILocalVariable(name: "P1", scope: !1920, file: !25, line: 640, type: !5)
!1957 = !DILocation(line: 641, column: 23, scope: !1920)
!1958 = !DILocalVariable(name: "P2", scope: !1920, file: !25, line: 641, type: !5)
!1959 = !DILocation(line: 642, column: 23, scope: !1920)
!1960 = !DILocalVariable(name: "P3", scope: !1920, file: !25, line: 642, type: !5)
!1961 = !DILocation(line: 657, column: 5, scope: !1920)
!1962 = !DILocation(line: 660, column: 16, scope: !1920)
!1963 = !DILocation(line: 660, column: 60, scope: !1920)
!1964 = !DILocation(line: 660, column: 5, scope: !1920)
!1965 = !DILocation(line: 662, column: 5, scope: !1920)
!1966 = !DILocation(line: 663, column: 5, scope: !1920)
!1967 = !DILocation(line: 666, column: 5, scope: !1920)
!1968 = !DILocation(line: 668, column: 5, scope: !1920)
!1969 = !DILocation(line: 670, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1920, file: !25, line: 670, column: 9)
!1971 = !DILocation(line: 670, column: 31, scope: !1970)
!1972 = !DILocation(line: 674, column: 1, scope: !1920)
!1973 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !603, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1974 = !DILocalVariable(name: "p", arg: 1, scope: !1973, file: !25, line: 608, type: !174)
!1975 = !DILocation(line: 0, scope: !1973)
!1976 = !DILocalVariable(name: "cpk", arg: 2, scope: !1973, file: !25, line: 608, type: !49)
!1977 = !DILocalVariable(name: "pk", arg: 3, scope: !1973, file: !25, line: 609, type: !5)
!1978 = !DILocation(line: 610, column: 5, scope: !1973)
!1979 = !DILocation(line: 612, column: 23, scope: !1973)
!1980 = !DILocation(line: 612, column: 72, scope: !1973)
!1981 = !DILocation(line: 612, column: 5, scope: !1973)
!1982 = !DILocation(line: 614, column: 5, scope: !1973)
!1983 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1984, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !174, !49, !326, !326, !326, !18}
!1986 = !DILocalVariable(name: "p", arg: 1, scope: !1983, file: !25, line: 288, type: !174)
!1987 = !DILocation(line: 0, scope: !1983)
!1988 = !DILocalVariable(name: "s", arg: 2, scope: !1983, file: !25, line: 288, type: !49)
!1989 = !DILocalVariable(name: "P1", arg: 3, scope: !1983, file: !25, line: 288, type: !326)
!1990 = !DILocalVariable(name: "P2", arg: 4, scope: !1983, file: !25, line: 288, type: !326)
!1991 = !DILocalVariable(name: "P3", arg: 5, scope: !1983, file: !25, line: 288, type: !326)
!1992 = !DILocalVariable(name: "eval", arg: 6, scope: !1983, file: !25, line: 288, type: !18)
!1993 = !DILocalVariable(name: "SPS", scope: !1983, file: !25, line: 289, type: !1994)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 54208, elements: !1995)
!1995 = !{!1996}
!1996 = !DISubrange(count: 847)
!1997 = !DILocation(line: 289, column: 14, scope: !1983)
!1998 = !DILocation(line: 291, column: 5, scope: !1983)
!1999 = !DILocalVariable(name: "zero", scope: !1983, file: !25, line: 292, type: !717)
!2000 = !DILocation(line: 292, column: 19, scope: !1983)
!2001 = !DILocation(line: 293, column: 5, scope: !1983)
!2002 = !DILocation(line: 294, column: 1, scope: !1983)
!2003 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !2004, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !174, !326, !326, !326, !49, !5}
!2006 = !DILocalVariable(name: "p", arg: 1, scope: !2003, file: !323, line: 277, type: !174)
!2007 = !DILocation(line: 0, scope: !2003)
!2008 = !DILocalVariable(name: "P1", arg: 2, scope: !2003, file: !323, line: 277, type: !326)
!2009 = !DILocalVariable(name: "P2", arg: 3, scope: !2003, file: !323, line: 277, type: !326)
!2010 = !DILocalVariable(name: "P3", arg: 4, scope: !2003, file: !323, line: 277, type: !326)
!2011 = !DILocalVariable(name: "s", arg: 5, scope: !2003, file: !323, line: 277, type: !49)
!2012 = !DILocalVariable(name: "SPS", arg: 6, scope: !2003, file: !323, line: 278, type: !5)
!2013 = !DILocalVariable(name: "PS", scope: !2003, file: !323, line: 286, type: !2014)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 581504, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 9086)
!2017 = !DILocation(line: 286, column: 14, scope: !2003)
!2018 = !DILocation(line: 287, column: 5, scope: !2003)
!2019 = !DILocation(line: 290, column: 5, scope: !2003)
!2020 = !DILocation(line: 292, column: 1, scope: !2003)
!2021 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !2022, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!2024 = !DILocalVariable(name: "P1", arg: 1, scope: !2021, file: !323, line: 151, type: !326)
!2025 = !DILocation(line: 0, scope: !2021)
!2026 = !DILocalVariable(name: "P2", arg: 2, scope: !2021, file: !323, line: 151, type: !326)
!2027 = !DILocalVariable(name: "P3", arg: 3, scope: !2021, file: !323, line: 151, type: !326)
!2028 = !DILocalVariable(name: "S", arg: 4, scope: !2021, file: !323, line: 151, type: !49)
!2029 = !DILocalVariable(name: "m", arg: 5, scope: !2021, file: !323, line: 152, type: !239)
!2030 = !DILocalVariable(name: "v", arg: 6, scope: !2021, file: !323, line: 152, type: !239)
!2031 = !DILocalVariable(name: "o", arg: 7, scope: !2021, file: !323, line: 152, type: !239)
!2032 = !DILocalVariable(name: "k", arg: 8, scope: !2021, file: !323, line: 152, type: !239)
!2033 = !DILocalVariable(name: "PS", arg: 9, scope: !2021, file: !323, line: 152, type: !5)
!2034 = !DILocalVariable(name: "n", scope: !2021, file: !323, line: 154, type: !239)
!2035 = !DILocalVariable(name: "m_vec_limbs", scope: !2021, file: !323, line: 155, type: !239)
!2036 = !DILocalVariable(name: "accumulator", scope: !2021, file: !323, line: 157, type: !2037)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 9304064, elements: !2038)
!2038 = !{!2039}
!2039 = !DISubrange(count: 145376)
!2040 = !DILocation(line: 157, column: 14, scope: !2021)
!2041 = !DILocalVariable(name: "P1_used", scope: !2021, file: !323, line: 158, type: !45)
!2042 = !DILocalVariable(name: "row", scope: !2043, file: !323, line: 159, type: !45)
!2043 = distinct !DILexicalBlock(scope: !2021, file: !323, line: 159, column: 5)
!2044 = !DILocation(line: 0, scope: !2043)
!2045 = !DILocation(line: 159, column: 10, scope: !2043)
!2046 = !DILocation(line: 158, column: 9, scope: !2021)
!2047 = !DILocation(line: 159, scope: !2043)
!2048 = !DILocation(line: 159, column: 27, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2043, file: !323, line: 159, column: 5)
!2050 = !DILocation(line: 159, column: 5, scope: !2043)
!2051 = !DILocation(line: 160, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !323, line: 160, column: 9)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !323, line: 159, column: 39)
!2054 = !DILocation(line: 175, column: 5, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2021, file: !323, line: 175, column: 5)
!2056 = !DILocation(line: 160, scope: !2052)
!2057 = !DILocalVariable(name: "j", scope: !2052, file: !323, line: 160, type: !45)
!2058 = !DILocation(line: 0, scope: !2052)
!2059 = !DILocation(line: 160, column: 29, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2052, file: !323, line: 160, column: 9)
!2061 = !DILocation(line: 167, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2053, file: !323, line: 167, column: 9)
!2063 = !DILocation(line: 161, column: 13, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !323, line: 161, column: 13)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !323, line: 160, column: 39)
!2066 = !DILocation(line: 161, scope: !2064)
!2067 = !DILocalVariable(name: "col", scope: !2064, file: !323, line: 161, type: !45)
!2068 = !DILocation(line: 0, scope: !2064)
!2069 = !DILocation(line: 161, column: 35, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !323, line: 161, column: 13)
!2071 = !DILocation(line: 162, column: 43, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2070, file: !323, line: 161, column: 47)
!2073 = !DILocation(line: 162, column: 91, scope: !2072)
!2074 = !DILocation(line: 162, column: 95, scope: !2072)
!2075 = !DILocation(line: 162, column: 102, scope: !2072)
!2076 = !DILocation(line: 162, column: 115, scope: !2072)
!2077 = !DILocation(line: 162, column: 109, scope: !2072)
!2078 = !DILocation(line: 162, column: 107, scope: !2072)
!2079 = !DILocation(line: 162, column: 82, scope: !2072)
!2080 = !DILocation(line: 162, column: 17, scope: !2072)
!2081 = !DILocation(line: 161, column: 43, scope: !2070)
!2082 = !DILocation(line: 161, column: 13, scope: !2070)
!2083 = distinct !{!2083, !2063, !2084, !303}
!2084 = !DILocation(line: 163, column: 13, scope: !2064)
!2085 = !DILocation(line: 164, column: 21, scope: !2065)
!2086 = !DILocation(line: 160, column: 35, scope: !2060)
!2087 = !DILocation(line: 160, column: 9, scope: !2060)
!2088 = distinct !{!2088, !2051, !2089, !303}
!2089 = !DILocation(line: 165, column: 9, scope: !2052)
!2090 = !DILocation(line: 167, scope: !2062)
!2091 = !DILocalVariable(name: "j", scope: !2062, file: !323, line: 167, type: !45)
!2092 = !DILocation(line: 0, scope: !2062)
!2093 = !DILocation(line: 167, column: 27, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2062, file: !323, line: 167, column: 9)
!2095 = !DILocation(line: 168, column: 13, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !323, line: 168, column: 13)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !323, line: 167, column: 37)
!2098 = !DILocation(line: 168, scope: !2096)
!2099 = !DILocalVariable(name: "col", scope: !2096, file: !323, line: 168, type: !45)
!2100 = !DILocation(line: 0, scope: !2096)
!2101 = !DILocation(line: 168, column: 35, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2096, file: !323, line: 168, column: 13)
!2103 = !DILocation(line: 169, column: 50, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2102, file: !323, line: 168, column: 47)
!2105 = !DILocation(line: 169, column: 54, scope: !2104)
!2106 = !DILocation(line: 169, column: 43, scope: !2104)
!2107 = !DILocation(line: 169, column: 93, scope: !2104)
!2108 = !DILocation(line: 169, column: 97, scope: !2104)
!2109 = !DILocation(line: 169, column: 104, scope: !2104)
!2110 = !DILocation(line: 169, column: 118, scope: !2104)
!2111 = !DILocation(line: 169, column: 111, scope: !2104)
!2112 = !DILocation(line: 169, column: 109, scope: !2104)
!2113 = !DILocation(line: 169, column: 84, scope: !2104)
!2114 = !DILocation(line: 169, column: 17, scope: !2104)
!2115 = !DILocation(line: 168, column: 43, scope: !2102)
!2116 = !DILocation(line: 168, column: 13, scope: !2102)
!2117 = distinct !{!2117, !2095, !2118, !303}
!2118 = !DILocation(line: 170, column: 13, scope: !2096)
!2119 = !DILocation(line: 167, column: 33, scope: !2094)
!2120 = !DILocation(line: 167, column: 9, scope: !2094)
!2121 = distinct !{!2121, !2061, !2122, !303}
!2122 = !DILocation(line: 171, column: 9, scope: !2062)
!2123 = !DILocation(line: 159, column: 35, scope: !2049)
!2124 = !DILocation(line: 159, column: 5, scope: !2049)
!2125 = distinct !{!2125, !2050, !2126, !303}
!2126 = !DILocation(line: 172, column: 5, scope: !2043)
!2127 = !DILocation(line: 174, column: 9, scope: !2021)
!2128 = !DILocation(line: 175, scope: !2055)
!2129 = !DILocalVariable(name: "row", scope: !2055, file: !323, line: 175, type: !45)
!2130 = !DILocation(line: 0, scope: !2055)
!2131 = !DILocalVariable(name: "P3_used", scope: !2021, file: !323, line: 174, type: !45)
!2132 = !DILocation(line: 175, column: 27, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2055, file: !323, line: 175, column: 5)
!2134 = !DILocation(line: 176, column: 9, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !323, line: 176, column: 9)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !323, line: 175, column: 39)
!2137 = !DILocation(line: 186, column: 5, scope: !2021)
!2138 = !DILocation(line: 176, scope: !2135)
!2139 = !DILocalVariable(name: "j", scope: !2135, file: !323, line: 176, type: !45)
!2140 = !DILocation(line: 0, scope: !2135)
!2141 = !DILocation(line: 176, column: 29, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2135, file: !323, line: 176, column: 9)
!2143 = !DILocation(line: 177, column: 13, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !323, line: 177, column: 13)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !323, line: 176, column: 39)
!2146 = !DILocation(line: 177, scope: !2144)
!2147 = !DILocalVariable(name: "col", scope: !2144, file: !323, line: 177, type: !45)
!2148 = !DILocation(line: 0, scope: !2144)
!2149 = !DILocation(line: 177, column: 35, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2144, file: !323, line: 177, column: 13)
!2151 = !DILocation(line: 178, column: 43, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2150, file: !323, line: 177, column: 47)
!2153 = !DILocation(line: 178, column: 89, scope: !2152)
!2154 = !DILocation(line: 178, column: 93, scope: !2152)
!2155 = !DILocation(line: 178, column: 100, scope: !2152)
!2156 = !DILocation(line: 178, column: 113, scope: !2152)
!2157 = !DILocation(line: 178, column: 107, scope: !2152)
!2158 = !DILocation(line: 178, column: 105, scope: !2152)
!2159 = !DILocation(line: 178, column: 80, scope: !2152)
!2160 = !DILocation(line: 178, column: 17, scope: !2152)
!2161 = !DILocation(line: 177, column: 43, scope: !2150)
!2162 = !DILocation(line: 177, column: 13, scope: !2150)
!2163 = distinct !{!2163, !2143, !2164, !303}
!2164 = !DILocation(line: 179, column: 13, scope: !2144)
!2165 = !DILocation(line: 180, column: 21, scope: !2145)
!2166 = !DILocation(line: 176, column: 35, scope: !2142)
!2167 = !DILocation(line: 176, column: 9, scope: !2142)
!2168 = distinct !{!2168, !2134, !2169, !303}
!2169 = !DILocation(line: 181, column: 9, scope: !2135)
!2170 = !DILocation(line: 175, column: 35, scope: !2133)
!2171 = !DILocation(line: 175, column: 5, scope: !2133)
!2172 = distinct !{!2172, !2054, !2173, !303}
!2173 = !DILocation(line: 182, column: 5, scope: !2055)
!2174 = !DILocalVariable(name: "i", scope: !2021, file: !323, line: 185, type: !45)
!2175 = !DILocation(line: 186, column: 14, scope: !2021)
!2176 = !DILocation(line: 187, column: 54, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2021, file: !323, line: 186, column: 23)
!2178 = !DILocation(line: 187, column: 81, scope: !2177)
!2179 = !DILocation(line: 187, column: 9, scope: !2177)
!2180 = !DILocation(line: 188, column: 10, scope: !2177)
!2181 = distinct !{!2181, !2137, !2182, !303}
!2182 = !DILocation(line: 189, column: 5, scope: !2021)
!2183 = !DILocation(line: 191, column: 1, scope: !2021)
!2184 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2185, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !326, !49, !45, !45, !45, !5}
!2187 = !DILocalVariable(name: "PS", arg: 1, scope: !2184, file: !323, line: 195, type: !326)
!2188 = !DILocation(line: 0, scope: !2184)
!2189 = !DILocalVariable(name: "S", arg: 2, scope: !2184, file: !323, line: 195, type: !49)
!2190 = !DILocalVariable(name: "m", arg: 3, scope: !2184, file: !323, line: 195, type: !45)
!2191 = !DILocalVariable(name: "k", arg: 4, scope: !2184, file: !323, line: 195, type: !45)
!2192 = !DILocalVariable(name: "n", arg: 5, scope: !2184, file: !323, line: 195, type: !45)
!2193 = !DILocalVariable(name: "SPS", arg: 6, scope: !2184, file: !323, line: 195, type: !5)
!2194 = !DILocalVariable(name: "accumulator", scope: !2184, file: !323, line: 196, type: !2195)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 867328, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 13552)
!2198 = !DILocation(line: 196, column: 14, scope: !2184)
!2199 = !DILocalVariable(name: "m_vec_limbs", scope: !2184, file: !323, line: 197, type: !239)
!2200 = !DILocalVariable(name: "row", scope: !2201, file: !323, line: 198, type: !45)
!2201 = distinct !DILexicalBlock(scope: !2184, file: !323, line: 198, column: 5)
!2202 = !DILocation(line: 0, scope: !2201)
!2203 = !DILocation(line: 198, column: 10, scope: !2201)
!2204 = !DILocation(line: 198, scope: !2201)
!2205 = !DILocation(line: 198, column: 27, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2201, file: !323, line: 198, column: 5)
!2207 = !DILocation(line: 198, column: 5, scope: !2201)
!2208 = !DILocation(line: 199, column: 9, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !323, line: 199, column: 9)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !323, line: 198, column: 39)
!2211 = !DILocation(line: 208, column: 5, scope: !2184)
!2212 = !DILocation(line: 199, scope: !2209)
!2213 = !DILocalVariable(name: "j", scope: !2209, file: !323, line: 199, type: !45)
!2214 = !DILocation(line: 0, scope: !2209)
!2215 = !DILocation(line: 199, column: 27, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2209, file: !323, line: 199, column: 9)
!2217 = !DILocation(line: 200, column: 13, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !323, line: 200, column: 13)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !323, line: 199, column: 37)
!2220 = !DILocation(line: 200, scope: !2218)
!2221 = !DILocalVariable(name: "col", scope: !2218, file: !323, line: 200, type: !45)
!2222 = !DILocation(line: 0, scope: !2218)
!2223 = !DILocation(line: 200, column: 35, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2218, file: !323, line: 200, column: 13)
!2225 = !DILocation(line: 201, column: 52, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2224, file: !323, line: 200, column: 50)
!2227 = !DILocation(line: 201, column: 56, scope: !2226)
!2228 = !DILocation(line: 201, column: 47, scope: !2226)
!2229 = !DILocation(line: 201, column: 99, scope: !2226)
!2230 = !DILocation(line: 201, column: 103, scope: !2226)
!2231 = !DILocation(line: 201, column: 110, scope: !2226)
!2232 = !DILocation(line: 201, column: 123, scope: !2226)
!2233 = !DILocation(line: 201, column: 117, scope: !2226)
!2234 = !DILocation(line: 201, column: 115, scope: !2226)
!2235 = !DILocation(line: 201, column: 90, scope: !2226)
!2236 = !DILocation(line: 201, column: 21, scope: !2226)
!2237 = !DILocation(line: 200, column: 44, scope: !2224)
!2238 = !DILocation(line: 200, column: 13, scope: !2224)
!2239 = distinct !{!2239, !2217, !2240, !303}
!2240 = !DILocation(line: 202, column: 13, scope: !2218)
!2241 = !DILocation(line: 199, column: 33, scope: !2216)
!2242 = !DILocation(line: 199, column: 9, scope: !2216)
!2243 = distinct !{!2243, !2208, !2244, !303}
!2244 = !DILocation(line: 203, column: 9, scope: !2209)
!2245 = !DILocation(line: 198, column: 35, scope: !2206)
!2246 = !DILocation(line: 198, column: 5, scope: !2206)
!2247 = distinct !{!2247, !2207, !2248, !303}
!2248 = !DILocation(line: 204, column: 5, scope: !2201)
!2249 = !DILocalVariable(name: "i", scope: !2184, file: !323, line: 207, type: !45)
!2250 = !DILocation(line: 208, column: 14, scope: !2184)
!2251 = !DILocation(line: 209, column: 54, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2184, file: !323, line: 208, column: 21)
!2253 = !DILocation(line: 209, column: 82, scope: !2252)
!2254 = !DILocation(line: 209, column: 9, scope: !2252)
!2255 = !DILocation(line: 210, column: 10, scope: !2252)
!2256 = distinct !{!2256, !2211, !2257, !303}
!2257 = !DILocation(line: 211, column: 5, scope: !2184)
!2258 = !DILocation(line: 212, column: 1, scope: !2184)
!2259 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2260, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !45, !326, !5}
!2262 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2259, file: !437, line: 22, type: !45)
!2263 = !DILocation(line: 0, scope: !2259)
!2264 = !DILocalVariable(name: "in", arg: 2, scope: !2259, file: !437, line: 22, type: !326)
!2265 = !DILocalVariable(name: "acc", arg: 3, scope: !2259, file: !437, line: 22, type: !5)
!2266 = !DILocalVariable(name: "i", scope: !2267, file: !437, line: 24, type: !15)
!2267 = distinct !DILexicalBlock(scope: !2259, file: !437, line: 24, column: 5)
!2268 = !DILocation(line: 0, scope: !2267)
!2269 = !DILocation(line: 24, column: 10, scope: !2267)
!2270 = !DILocation(line: 24, scope: !2267)
!2271 = !DILocation(line: 24, column: 26, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !437, line: 24, column: 5)
!2273 = !DILocation(line: 24, column: 5, scope: !2267)
!2274 = !DILocation(line: 26, column: 19, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !437, line: 25, column: 5)
!2276 = !DILocation(line: 26, column: 9, scope: !2275)
!2277 = !DILocation(line: 26, column: 16, scope: !2275)
!2278 = !DILocation(line: 24, column: 46, scope: !2272)
!2279 = !DILocation(line: 24, column: 5, scope: !2272)
!2280 = distinct !{!2280, !2273, !2281, !303}
!2281 = !DILocation(line: 27, column: 5, scope: !2267)
!2282 = !DILocation(line: 28, column: 1, scope: !2259)
!2283 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2284, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !45, !5, !5}
!2286 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2283, file: !437, line: 66, type: !45)
!2287 = !DILocation(line: 0, scope: !2283)
!2288 = !DILocalVariable(name: "bins", arg: 2, scope: !2283, file: !437, line: 66, type: !5)
!2289 = !DILocalVariable(name: "out", arg: 3, scope: !2283, file: !437, line: 66, type: !5)
!2290 = !DILocation(line: 67, column: 44, scope: !2283)
!2291 = !DILocation(line: 67, column: 73, scope: !2283)
!2292 = !DILocation(line: 67, column: 5, scope: !2283)
!2293 = !DILocation(line: 68, column: 40, scope: !2283)
!2294 = !DILocation(line: 68, column: 69, scope: !2283)
!2295 = !DILocation(line: 68, column: 5, scope: !2283)
!2296 = !DILocation(line: 69, column: 44, scope: !2283)
!2297 = !DILocation(line: 69, column: 74, scope: !2283)
!2298 = !DILocation(line: 69, column: 5, scope: !2283)
!2299 = !DILocation(line: 70, column: 40, scope: !2283)
!2300 = !DILocation(line: 70, column: 69, scope: !2283)
!2301 = !DILocation(line: 70, column: 5, scope: !2283)
!2302 = !DILocation(line: 71, column: 44, scope: !2283)
!2303 = !DILocation(line: 71, column: 73, scope: !2283)
!2304 = !DILocation(line: 71, column: 5, scope: !2283)
!2305 = !DILocation(line: 72, column: 40, scope: !2283)
!2306 = !DILocation(line: 72, column: 69, scope: !2283)
!2307 = !DILocation(line: 72, column: 5, scope: !2283)
!2308 = !DILocation(line: 73, column: 44, scope: !2283)
!2309 = !DILocation(line: 73, column: 74, scope: !2283)
!2310 = !DILocation(line: 73, column: 5, scope: !2283)
!2311 = !DILocation(line: 74, column: 40, scope: !2283)
!2312 = !DILocation(line: 74, column: 69, scope: !2283)
!2313 = !DILocation(line: 74, column: 5, scope: !2283)
!2314 = !DILocation(line: 75, column: 44, scope: !2283)
!2315 = !DILocation(line: 75, column: 74, scope: !2283)
!2316 = !DILocation(line: 75, column: 5, scope: !2283)
!2317 = !DILocation(line: 76, column: 40, scope: !2283)
!2318 = !DILocation(line: 76, column: 69, scope: !2283)
!2319 = !DILocation(line: 76, column: 5, scope: !2283)
!2320 = !DILocation(line: 77, column: 44, scope: !2283)
!2321 = !DILocation(line: 77, column: 74, scope: !2283)
!2322 = !DILocation(line: 77, column: 5, scope: !2283)
!2323 = !DILocation(line: 78, column: 40, scope: !2283)
!2324 = !DILocation(line: 78, column: 69, scope: !2283)
!2325 = !DILocation(line: 78, column: 5, scope: !2283)
!2326 = !DILocation(line: 79, column: 44, scope: !2283)
!2327 = !DILocation(line: 79, column: 74, scope: !2283)
!2328 = !DILocation(line: 79, column: 5, scope: !2283)
!2329 = !DILocation(line: 80, column: 40, scope: !2283)
!2330 = !DILocation(line: 80, column: 69, scope: !2283)
!2331 = !DILocation(line: 80, column: 5, scope: !2283)
!2332 = !DILocation(line: 81, column: 35, scope: !2283)
!2333 = !DILocation(line: 81, column: 5, scope: !2283)
!2334 = !DILocation(line: 82, column: 1, scope: !2283)
!2335 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2260, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2336 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2335, file: !437, line: 56, type: !45)
!2337 = !DILocation(line: 0, scope: !2335)
!2338 = !DILocalVariable(name: "in", arg: 2, scope: !2335, file: !437, line: 56, type: !326)
!2339 = !DILocalVariable(name: "acc", arg: 3, scope: !2335, file: !437, line: 56, type: !5)
!2340 = !DILocalVariable(name: "mask_lsb", scope: !2335, file: !437, line: 58, type: !6)
!2341 = !DILocalVariable(name: "i", scope: !2342, file: !437, line: 59, type: !45)
!2342 = distinct !DILexicalBlock(scope: !2335, file: !437, line: 59, column: 5)
!2343 = !DILocation(line: 0, scope: !2342)
!2344 = !DILocation(line: 59, column: 9, scope: !2342)
!2345 = !DILocation(line: 59, scope: !2342)
!2346 = !DILocation(line: 59, column: 20, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !437, line: 59, column: 5)
!2348 = !DILocation(line: 59, column: 5, scope: !2342)
!2349 = !DILocation(line: 60, column: 22, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !437, line: 59, column: 43)
!2351 = !DILocation(line: 60, column: 28, scope: !2350)
!2352 = !DILocalVariable(name: "t", scope: !2350, file: !437, line: 60, type: !6)
!2353 = !DILocation(line: 0, scope: !2350)
!2354 = !DILocation(line: 61, column: 32, scope: !2350)
!2355 = !DILocation(line: 61, column: 43, scope: !2350)
!2356 = !DILocation(line: 61, column: 38, scope: !2350)
!2357 = !DILocation(line: 61, column: 9, scope: !2350)
!2358 = !DILocation(line: 61, column: 16, scope: !2350)
!2359 = !DILocation(line: 59, column: 40, scope: !2347)
!2360 = !DILocation(line: 59, column: 5, scope: !2347)
!2361 = distinct !{!2361, !2348, !2362, !303}
!2362 = !DILocation(line: 62, column: 5, scope: !2342)
!2363 = !DILocation(line: 63, column: 1, scope: !2335)
!2364 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2260, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2365 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2364, file: !437, line: 46, type: !45)
!2366 = !DILocation(line: 0, scope: !2364)
!2367 = !DILocalVariable(name: "in", arg: 2, scope: !2364, file: !437, line: 46, type: !326)
!2368 = !DILocalVariable(name: "acc", arg: 3, scope: !2364, file: !437, line: 46, type: !5)
!2369 = !DILocalVariable(name: "mask_msb", scope: !2364, file: !437, line: 48, type: !6)
!2370 = !DILocalVariable(name: "i", scope: !2371, file: !437, line: 49, type: !45)
!2371 = distinct !DILexicalBlock(scope: !2364, file: !437, line: 49, column: 5)
!2372 = !DILocation(line: 0, scope: !2371)
!2373 = !DILocation(line: 49, column: 9, scope: !2371)
!2374 = !DILocation(line: 49, scope: !2371)
!2375 = !DILocation(line: 49, column: 20, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2371, file: !437, line: 49, column: 5)
!2377 = !DILocation(line: 49, column: 5, scope: !2371)
!2378 = !DILocation(line: 50, column: 22, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !437, line: 49, column: 43)
!2380 = !DILocalVariable(name: "t", scope: !2379, file: !437, line: 50, type: !6)
!2381 = !DILocation(line: 0, scope: !2379)
!2382 = !DILocation(line: 51, column: 32, scope: !2379)
!2383 = !DILocation(line: 51, column: 44, scope: !2379)
!2384 = !DILocation(line: 51, column: 50, scope: !2379)
!2385 = !DILocation(line: 51, column: 38, scope: !2379)
!2386 = !DILocation(line: 51, column: 9, scope: !2379)
!2387 = !DILocation(line: 51, column: 16, scope: !2379)
!2388 = !DILocation(line: 49, column: 40, scope: !2376)
!2389 = !DILocation(line: 49, column: 5, scope: !2376)
!2390 = distinct !{!2390, !2377, !2391, !303}
!2391 = !DILocation(line: 52, column: 5, scope: !2371)
!2392 = !DILocation(line: 53, column: 1, scope: !2364)
!2393 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2260, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2394 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2393, file: !437, line: 13, type: !45)
!2395 = !DILocation(line: 0, scope: !2393)
!2396 = !DILocalVariable(name: "in", arg: 2, scope: !2393, file: !437, line: 13, type: !326)
!2397 = !DILocalVariable(name: "out", arg: 3, scope: !2393, file: !437, line: 13, type: !5)
!2398 = !DILocalVariable(name: "i", scope: !2399, file: !437, line: 15, type: !15)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !437, line: 15, column: 5)
!2400 = !DILocation(line: 0, scope: !2399)
!2401 = !DILocation(line: 15, column: 10, scope: !2399)
!2402 = !DILocation(line: 15, scope: !2399)
!2403 = !DILocation(line: 15, column: 26, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !437, line: 15, column: 5)
!2405 = !DILocation(line: 15, column: 5, scope: !2399)
!2406 = !DILocation(line: 17, column: 18, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !437, line: 16, column: 5)
!2408 = !DILocation(line: 17, column: 9, scope: !2407)
!2409 = !DILocation(line: 17, column: 16, scope: !2407)
!2410 = !DILocation(line: 15, column: 46, scope: !2404)
!2411 = !DILocation(line: 15, column: 5, scope: !2404)
!2412 = distinct !{!2412, !2405, !2413, !303}
!2413 = !DILocation(line: 18, column: 5, scope: !2399)
!2414 = !DILocation(line: 19, column: 1, scope: !2393)
!2415 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_m_upper", scope: !58, file: !58, line: 14, type: !2416, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2418, !326, !5, !45}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2421)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2421, file: !36, line: 266, baseType: !45, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2421, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2421, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2421, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2421, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2421, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2421, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2421, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2421, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2421, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2421, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2421, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2421, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2421, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2421, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2421, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2421, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2421, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2421, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2421, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2421, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2421, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2421, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2446 = !DILocalVariable(name: "p", arg: 1, scope: !2415, file: !58, line: 14, type: !2418)
!2447 = !DILocation(line: 0, scope: !2415)
!2448 = !DILocalVariable(name: "in", arg: 2, scope: !2415, file: !58, line: 14, type: !326)
!2449 = !DILocalVariable(name: "out", arg: 3, scope: !2415, file: !58, line: 14, type: !5)
!2450 = !DILocalVariable(name: "size", arg: 4, scope: !2415, file: !58, line: 14, type: !45)
!2451 = !DILocalVariable(name: "m_vec_limbs", scope: !2415, file: !58, line: 19, type: !239)
!2452 = !DILocalVariable(name: "m_vecs_stored", scope: !2415, file: !58, line: 20, type: !45)
!2453 = !DILocalVariable(name: "r", scope: !2454, file: !58, line: 21, type: !45)
!2454 = distinct !DILexicalBlock(scope: !2415, file: !58, line: 21, column: 5)
!2455 = !DILocation(line: 0, scope: !2454)
!2456 = !DILocation(line: 21, column: 10, scope: !2454)
!2457 = !DILocation(line: 20, column: 9, scope: !2415)
!2458 = !DILocation(line: 21, scope: !2454)
!2459 = !DILocation(line: 21, column: 23, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2454, file: !58, line: 21, column: 5)
!2461 = !DILocation(line: 21, column: 5, scope: !2454)
!2462 = !DILocation(line: 22, column: 9, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !58, line: 22, column: 9)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !58, line: 21, column: 36)
!2465 = !DILocation(line: 22, scope: !2463)
!2466 = !DILocalVariable(name: "c", scope: !2463, file: !58, line: 22, type: !45)
!2467 = !DILocation(line: 0, scope: !2463)
!2468 = !DILocation(line: 22, column: 27, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2463, file: !58, line: 22, column: 9)
!2470 = !DILocation(line: 23, column: 59, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2469, file: !58, line: 22, column: 40)
!2472 = !DILocation(line: 23, column: 66, scope: !2471)
!2473 = !DILocation(line: 23, column: 40, scope: !2471)
!2474 = !DILocation(line: 23, column: 76, scope: !2471)
!2475 = !DILocation(line: 23, column: 13, scope: !2471)
!2476 = !DILocation(line: 24, column: 19, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2471, file: !58, line: 24, column: 17)
!2478 = !DILocation(line: 25, column: 62, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2477, file: !58, line: 24, column: 25)
!2480 = !DILocation(line: 25, column: 69, scope: !2479)
!2481 = !DILocation(line: 25, column: 43, scope: !2479)
!2482 = !DILocation(line: 25, column: 79, scope: !2479)
!2483 = !DILocation(line: 25, column: 17, scope: !2479)
!2484 = !DILocation(line: 26, column: 13, scope: !2479)
!2485 = !DILocation(line: 27, column: 27, scope: !2471)
!2486 = !DILocation(line: 22, column: 36, scope: !2469)
!2487 = !DILocation(line: 22, column: 9, scope: !2469)
!2488 = distinct !{!2488, !2462, !2489, !303}
!2489 = !DILocation(line: 28, column: 9, scope: !2463)
!2490 = !DILocation(line: 21, column: 32, scope: !2460)
!2491 = !DILocation(line: 21, column: 5, scope: !2460)
!2492 = distinct !{!2492, !2461, !2493, !303}
!2493 = !DILocation(line: 29, column: 5, scope: !2454)
!2494 = !DILocation(line: 30, column: 1, scope: !2415)
!2495 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2260, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2496 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2495, file: !437, line: 13, type: !45)
!2497 = !DILocation(line: 0, scope: !2495)
!2498 = !DILocalVariable(name: "in", arg: 2, scope: !2495, file: !437, line: 13, type: !326)
!2499 = !DILocalVariable(name: "out", arg: 3, scope: !2495, file: !437, line: 13, type: !5)
!2500 = !DILocalVariable(name: "i", scope: !2501, file: !437, line: 15, type: !15)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !437, line: 15, column: 5)
!2502 = !DILocation(line: 0, scope: !2501)
!2503 = !DILocation(line: 15, column: 10, scope: !2501)
!2504 = !DILocation(line: 15, scope: !2501)
!2505 = !DILocation(line: 15, column: 26, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !437, line: 15, column: 5)
!2507 = !DILocation(line: 15, column: 5, scope: !2501)
!2508 = !DILocation(line: 17, column: 18, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !437, line: 16, column: 5)
!2510 = !DILocation(line: 17, column: 9, scope: !2509)
!2511 = !DILocation(line: 17, column: 16, scope: !2509)
!2512 = !DILocation(line: 15, column: 46, scope: !2506)
!2513 = !DILocation(line: 15, column: 5, scope: !2506)
!2514 = distinct !{!2514, !2507, !2515, !303}
!2515 = !DILocation(line: 18, column: 5, scope: !2501)
!2516 = !DILocation(line: 19, column: 1, scope: !2495)
!2517 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2260, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2518 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2517, file: !437, line: 22, type: !45)
!2519 = !DILocation(line: 0, scope: !2517)
!2520 = !DILocalVariable(name: "in", arg: 2, scope: !2517, file: !437, line: 22, type: !326)
!2521 = !DILocalVariable(name: "acc", arg: 3, scope: !2517, file: !437, line: 22, type: !5)
!2522 = !DILocalVariable(name: "i", scope: !2523, file: !437, line: 24, type: !15)
!2523 = distinct !DILexicalBlock(scope: !2517, file: !437, line: 24, column: 5)
!2524 = !DILocation(line: 0, scope: !2523)
!2525 = !DILocation(line: 24, column: 10, scope: !2523)
!2526 = !DILocation(line: 24, scope: !2523)
!2527 = !DILocation(line: 24, column: 26, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2523, file: !437, line: 24, column: 5)
!2529 = !DILocation(line: 24, column: 5, scope: !2523)
!2530 = !DILocation(line: 26, column: 19, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !437, line: 25, column: 5)
!2532 = !DILocation(line: 26, column: 9, scope: !2531)
!2533 = !DILocation(line: 26, column: 16, scope: !2531)
!2534 = !DILocation(line: 24, column: 46, scope: !2528)
!2535 = !DILocation(line: 24, column: 5, scope: !2528)
!2536 = distinct !{!2536, !2529, !2537, !303}
!2537 = !DILocation(line: 27, column: 5, scope: !2523)
!2538 = !DILocation(line: 28, column: 1, scope: !2517)
!2539 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2540, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!45, !2418, !18, !49, !49, !18, !45, !45, !45, !45}
!2542 = !DILocalVariable(name: "p", arg: 1, scope: !2539, file: !58, line: 40, type: !2418)
!2543 = !DILocation(line: 0, scope: !2539)
!2544 = !DILocalVariable(name: "A", arg: 2, scope: !2539, file: !58, line: 40, type: !18)
!2545 = !DILocalVariable(name: "y", arg: 3, scope: !2539, file: !58, line: 41, type: !49)
!2546 = !DILocalVariable(name: "r", arg: 4, scope: !2539, file: !58, line: 41, type: !49)
!2547 = !DILocalVariable(name: "x", arg: 5, scope: !2539, file: !58, line: 42, type: !18)
!2548 = !DILocalVariable(name: "k", arg: 6, scope: !2539, file: !58, line: 42, type: !45)
!2549 = !DILocalVariable(name: "o", arg: 7, scope: !2539, file: !58, line: 42, type: !45)
!2550 = !DILocalVariable(name: "m", arg: 8, scope: !2539, file: !58, line: 42, type: !45)
!2551 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2539, file: !58, line: 42, type: !45)
!2552 = !DILocalVariable(name: "i", scope: !2553, file: !58, line: 51, type: !45)
!2553 = distinct !DILexicalBlock(scope: !2539, file: !58, line: 51, column: 5)
!2554 = !DILocation(line: 0, scope: !2553)
!2555 = !DILocation(line: 51, column: 10, scope: !2553)
!2556 = !DILocation(line: 51, scope: !2553)
!2557 = !DILocation(line: 51, column: 23, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !58, line: 51, column: 5)
!2559 = !DILocation(line: 51, column: 5, scope: !2553)
!2560 = !DILocation(line: 57, column: 5, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2539, file: !58, line: 57, column: 5)
!2562 = !DILocation(line: 52, column: 16, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2558, file: !58, line: 51, column: 37)
!2564 = !DILocation(line: 52, column: 9, scope: !2563)
!2565 = !DILocation(line: 52, column: 14, scope: !2563)
!2566 = !DILocation(line: 51, column: 33, scope: !2558)
!2567 = !DILocation(line: 51, column: 5, scope: !2558)
!2568 = distinct !{!2568, !2559, !2569, !303}
!2569 = !DILocation(line: 53, column: 5, scope: !2553)
!2570 = !DILocation(line: 57, scope: !2561)
!2571 = !DILocalVariable(name: "i", scope: !2561, file: !58, line: 57, type: !45)
!2572 = !DILocation(line: 0, scope: !2561)
!2573 = !DILocation(line: 57, column: 23, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2561, file: !58, line: 57, column: 5)
!2575 = !DILocation(line: 58, column: 13, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2574, file: !58, line: 57, column: 33)
!2577 = !DILocation(line: 58, column: 26, scope: !2576)
!2578 = !DILocation(line: 58, column: 30, scope: !2576)
!2579 = !DILocation(line: 58, column: 21, scope: !2576)
!2580 = !DILocation(line: 58, column: 9, scope: !2576)
!2581 = !DILocation(line: 58, column: 36, scope: !2576)
!2582 = !DILocation(line: 57, column: 29, scope: !2574)
!2583 = !DILocation(line: 57, column: 5, scope: !2574)
!2584 = distinct !{!2584, !2560, !2585, !303}
!2585 = !DILocation(line: 59, column: 5, scope: !2561)
!2586 = !DILocation(line: 60, column: 25, scope: !2539)
!2587 = !DILocation(line: 60, column: 29, scope: !2539)
!2588 = !DILocation(line: 60, column: 5, scope: !2539)
!2589 = !DILocalVariable(name: "i", scope: !2590, file: !58, line: 63, type: !45)
!2590 = distinct !DILexicalBlock(scope: !2539, file: !58, line: 63, column: 5)
!2591 = !DILocation(line: 0, scope: !2590)
!2592 = !DILocation(line: 63, column: 10, scope: !2590)
!2593 = !DILocation(line: 63, scope: !2590)
!2594 = !DILocation(line: 63, column: 23, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !58, line: 63, column: 5)
!2596 = !DILocation(line: 63, column: 5, scope: !2590)
!2597 = !DILocation(line: 64, column: 44, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2595, file: !58, line: 63, column: 33)
!2599 = !DILocation(line: 64, column: 50, scope: !2598)
!2600 = !DILocation(line: 64, column: 38, scope: !2598)
!2601 = !DILocation(line: 64, column: 13, scope: !2598)
!2602 = !DILocation(line: 64, column: 26, scope: !2598)
!2603 = !DILocation(line: 64, column: 30, scope: !2598)
!2604 = !DILocation(line: 64, column: 21, scope: !2598)
!2605 = !DILocation(line: 64, column: 9, scope: !2598)
!2606 = !DILocation(line: 64, column: 36, scope: !2598)
!2607 = !DILocation(line: 63, column: 29, scope: !2595)
!2608 = !DILocation(line: 63, column: 5, scope: !2595)
!2609 = distinct !{!2609, !2596, !2610, !303}
!2610 = !DILocation(line: 65, column: 5, scope: !2590)
!2611 = !DILocation(line: 67, column: 16, scope: !2539)
!2612 = !DILocation(line: 67, column: 20, scope: !2539)
!2613 = !DILocation(line: 67, column: 5, scope: !2539)
!2614 = !DILocalVariable(name: "full_rank", scope: !2539, file: !58, line: 70, type: !14)
!2615 = !DILocalVariable(name: "i", scope: !2616, file: !58, line: 71, type: !45)
!2616 = distinct !DILexicalBlock(scope: !2539, file: !58, line: 71, column: 5)
!2617 = !DILocation(line: 0, scope: !2616)
!2618 = !DILocation(line: 71, column: 10, scope: !2616)
!2619 = !DILocation(line: 71, scope: !2616)
!2620 = !DILocation(line: 71, column: 23, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2616, file: !58, line: 71, column: 5)
!2622 = !DILocation(line: 71, column: 5, scope: !2616)
!2623 = !DILocation(line: 72, column: 27, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 71, column: 42)
!2625 = !DILocation(line: 72, column: 32, scope: !2624)
!2626 = !DILocation(line: 72, column: 22, scope: !2624)
!2627 = !DILocation(line: 72, column: 19, scope: !2624)
!2628 = !DILocation(line: 71, column: 38, scope: !2621)
!2629 = !DILocation(line: 71, column: 5, scope: !2621)
!2630 = distinct !{!2630, !2622, !2631, !303}
!2631 = !DILocation(line: 73, column: 5, scope: !2616)
!2632 = !DILocation(line: 80, column: 19, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2539, file: !58, line: 80, column: 9)
!2634 = !DILocation(line: 88, column: 5, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2539, file: !58, line: 88, column: 5)
!2636 = distinct !{!2636, !2634, !2637, !303}
!2637 = !DILocation(line: 122, column: 5, scope: !2635)
!2638 = !DILocation(line: 88, scope: !2635)
!2639 = !DILocalVariable(name: "row", scope: !2635, file: !58, line: 88, type: !45)
!2640 = !DILocation(line: 0, scope: !2635)
!2641 = !DILocation(line: 88, column: 31, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2635, file: !58, line: 88, column: 5)
!2643 = !DILocalVariable(name: "finished", scope: !2539, file: !58, line: 46, type: !14)
!2644 = !DILocation(line: 90, column: 27, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !58, line: 88, column: 44)
!2646 = !DILocalVariable(name: "col_upper_bound", scope: !2539, file: !58, line: 47, type: !45)
!2647 = !DILocalVariable(name: "col", scope: !2648, file: !58, line: 93, type: !45)
!2648 = distinct !DILexicalBlock(scope: !2645, file: !58, line: 93, column: 9)
!2649 = !DILocation(line: 0, scope: !2648)
!2650 = !DILocation(line: 93, column: 14, scope: !2648)
!2651 = !DILocation(line: 0, scope: !2645)
!2652 = !DILocation(line: 93, scope: !2648)
!2653 = !DILocation(line: 93, column: 33, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2648, file: !58, line: 93, column: 9)
!2655 = !DILocation(line: 93, column: 9, scope: !2648)
!2656 = !DILocation(line: 97, column: 50, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !58, line: 93, column: 60)
!2658 = !DILocation(line: 97, column: 44, scope: !2657)
!2659 = !DILocation(line: 97, column: 30, scope: !2657)
!2660 = !DILocation(line: 97, column: 73, scope: !2657)
!2661 = !DILocalVariable(name: "correct_column", scope: !2539, file: !58, line: 48, type: !14)
!2662 = !DILocation(line: 99, column: 63, scope: !2657)
!2663 = !DILocation(line: 99, column: 48, scope: !2657)
!2664 = !DILocation(line: 99, column: 46, scope: !2657)
!2665 = !DILocalVariable(name: "u", scope: !2657, file: !58, line: 99, type: !14)
!2666 = !DILocation(line: 0, scope: !2657)
!2667 = !DILocation(line: 100, column: 13, scope: !2657)
!2668 = !DILocation(line: 100, column: 20, scope: !2657)
!2669 = !DILocalVariable(name: "i", scope: !2670, file: !58, line: 102, type: !45)
!2670 = distinct !DILexicalBlock(scope: !2657, file: !58, line: 102, column: 13)
!2671 = !DILocation(line: 0, scope: !2670)
!2672 = !DILocation(line: 102, column: 18, scope: !2670)
!2673 = !DILocation(line: 102, scope: !2670)
!2674 = !DILocation(line: 102, column: 31, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !58, line: 102, column: 13)
!2676 = !DILocation(line: 102, column: 13, scope: !2670)
!2677 = !DILocation(line: 103, column: 53, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !58, line: 102, column: 46)
!2679 = !DILocation(line: 103, column: 45, scope: !2678)
!2680 = !DILocation(line: 103, column: 34, scope: !2678)
!2681 = !DILocation(line: 103, column: 95, scope: !2678)
!2682 = !DILocation(line: 103, column: 99, scope: !2678)
!2683 = !DILocation(line: 103, column: 91, scope: !2678)
!2684 = !DILocation(line: 103, column: 80, scope: !2678)
!2685 = !DILocation(line: 103, column: 115, scope: !2678)
!2686 = !DILocation(line: 103, column: 76, scope: !2678)
!2687 = !DILocation(line: 104, column: 49, scope: !2678)
!2688 = !DILocation(line: 104, column: 53, scope: !2678)
!2689 = !DILocation(line: 104, column: 45, scope: !2678)
!2690 = !DILocation(line: 104, column: 34, scope: !2678)
!2691 = !DILocation(line: 104, column: 69, scope: !2678)
!2692 = !DILocation(line: 104, column: 30, scope: !2678)
!2693 = !DILocation(line: 104, column: 95, scope: !2678)
!2694 = !DILocation(line: 104, column: 99, scope: !2678)
!2695 = !DILocation(line: 104, column: 91, scope: !2678)
!2696 = !DILocation(line: 104, column: 80, scope: !2678)
!2697 = !DILocation(line: 104, column: 115, scope: !2678)
!2698 = !DILocation(line: 104, column: 76, scope: !2678)
!2699 = !DILocation(line: 105, column: 49, scope: !2678)
!2700 = !DILocation(line: 105, column: 53, scope: !2678)
!2701 = !DILocation(line: 105, column: 45, scope: !2678)
!2702 = !DILocation(line: 105, column: 34, scope: !2678)
!2703 = !DILocation(line: 105, column: 69, scope: !2678)
!2704 = !DILocation(line: 105, column: 30, scope: !2678)
!2705 = !DILocation(line: 105, column: 95, scope: !2678)
!2706 = !DILocation(line: 105, column: 99, scope: !2678)
!2707 = !DILocation(line: 105, column: 91, scope: !2678)
!2708 = !DILocation(line: 105, column: 80, scope: !2678)
!2709 = !DILocation(line: 105, column: 115, scope: !2678)
!2710 = !DILocation(line: 105, column: 76, scope: !2678)
!2711 = !DILocation(line: 106, column: 49, scope: !2678)
!2712 = !DILocation(line: 106, column: 53, scope: !2678)
!2713 = !DILocation(line: 106, column: 45, scope: !2678)
!2714 = !DILocation(line: 106, column: 34, scope: !2678)
!2715 = !DILocation(line: 106, column: 69, scope: !2678)
!2716 = !DILocation(line: 106, column: 30, scope: !2678)
!2717 = !DILocation(line: 106, column: 95, scope: !2678)
!2718 = !DILocation(line: 106, column: 99, scope: !2678)
!2719 = !DILocation(line: 106, column: 91, scope: !2678)
!2720 = !DILocation(line: 106, column: 80, scope: !2678)
!2721 = !DILocation(line: 106, column: 115, scope: !2678)
!2722 = !DILocation(line: 106, column: 76, scope: !2678)
!2723 = !DILocalVariable(name: "tmp", scope: !2678, file: !58, line: 103, type: !6)
!2724 = !DILocation(line: 0, scope: !2678)
!2725 = !DILocation(line: 108, column: 23, scope: !2678)
!2726 = !DILocation(line: 110, column: 34, scope: !2678)
!2727 = !DILocation(line: 110, column: 17, scope: !2678)
!2728 = !DILocation(line: 110, column: 48, scope: !2678)
!2729 = !DILocation(line: 111, column: 56, scope: !2678)
!2730 = !DILocation(line: 111, column: 34, scope: !2678)
!2731 = !DILocation(line: 111, column: 17, scope: !2678)
!2732 = !DILocation(line: 111, column: 48, scope: !2678)
!2733 = !DILocation(line: 112, column: 56, scope: !2678)
!2734 = !DILocation(line: 112, column: 34, scope: !2678)
!2735 = !DILocation(line: 112, column: 17, scope: !2678)
!2736 = !DILocation(line: 112, column: 48, scope: !2678)
!2737 = !DILocation(line: 113, column: 56, scope: !2678)
!2738 = !DILocation(line: 113, column: 34, scope: !2678)
!2739 = !DILocation(line: 113, column: 17, scope: !2678)
!2740 = !DILocation(line: 113, column: 48, scope: !2678)
!2741 = !DILocation(line: 114, column: 56, scope: !2678)
!2742 = !DILocation(line: 114, column: 34, scope: !2678)
!2743 = !DILocation(line: 114, column: 17, scope: !2678)
!2744 = !DILocation(line: 114, column: 48, scope: !2678)
!2745 = !DILocation(line: 115, column: 56, scope: !2678)
!2746 = !DILocation(line: 115, column: 34, scope: !2678)
!2747 = !DILocation(line: 115, column: 17, scope: !2678)
!2748 = !DILocation(line: 115, column: 48, scope: !2678)
!2749 = !DILocation(line: 116, column: 56, scope: !2678)
!2750 = !DILocation(line: 116, column: 34, scope: !2678)
!2751 = !DILocation(line: 116, column: 17, scope: !2678)
!2752 = !DILocation(line: 116, column: 48, scope: !2678)
!2753 = !DILocation(line: 117, column: 56, scope: !2678)
!2754 = !DILocation(line: 117, column: 34, scope: !2678)
!2755 = !DILocation(line: 117, column: 17, scope: !2678)
!2756 = !DILocation(line: 117, column: 48, scope: !2678)
!2757 = !DILocation(line: 102, column: 40, scope: !2675)
!2758 = !DILocation(line: 102, column: 13, scope: !2675)
!2759 = distinct !{!2759, !2676, !2760, !303}
!2760 = !DILocation(line: 118, column: 13, scope: !2670)
!2761 = !DILocation(line: 120, column: 33, scope: !2657)
!2762 = !DILocation(line: 93, column: 56, scope: !2654)
!2763 = !DILocation(line: 93, column: 9, scope: !2654)
!2764 = distinct !{!2764, !2655, !2765, !303}
!2765 = !DILocation(line: 121, column: 9, scope: !2648)
!2766 = !DILocation(line: 124, column: 1, scope: !2539)
!2767 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1449, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2768 = !DILocalVariable(name: "a", arg: 1, scope: !2767, file: !493, line: 79, type: !49)
!2769 = !DILocation(line: 0, scope: !2767)
!2770 = !DILocalVariable(name: "b", arg: 2, scope: !2767, file: !493, line: 79, type: !49)
!2771 = !DILocalVariable(name: "c", arg: 3, scope: !2767, file: !493, line: 80, type: !18)
!2772 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2767, file: !493, line: 80, type: !45)
!2773 = !DILocalVariable(name: "row_a", arg: 5, scope: !2767, file: !493, line: 80, type: !45)
!2774 = !DILocalVariable(name: "col_b", arg: 6, scope: !2767, file: !493, line: 80, type: !45)
!2775 = !DILocalVariable(name: "i", scope: !2776, file: !493, line: 81, type: !45)
!2776 = distinct !DILexicalBlock(scope: !2767, file: !493, line: 81, column: 5)
!2777 = !DILocation(line: 0, scope: !2776)
!2778 = !DILocation(line: 81, column: 10, scope: !2776)
!2779 = !DILocation(line: 81, scope: !2776)
!2780 = !DILocation(line: 81, column: 23, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !493, line: 81, column: 5)
!2782 = !DILocation(line: 81, column: 5, scope: !2776)
!2783 = !DILocation(line: 82, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !493, line: 82, column: 9)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !493, line: 81, column: 53)
!2786 = !DILocation(line: 82, scope: !2784)
!2787 = !DILocalVariable(name: "j", scope: !2784, file: !493, line: 82, type: !45)
!2788 = !DILocation(line: 0, scope: !2784)
!2789 = !DILocation(line: 83, column: 18, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !493, line: 82, column: 46)
!2791 = distinct !DILexicalBlock(scope: !2784, file: !493, line: 82, column: 9)
!2792 = !DILocation(line: 83, column: 16, scope: !2790)
!2793 = !DILocation(line: 82, column: 41, scope: !2791)
!2794 = !DILocation(line: 82, column: 9, scope: !2791)
!2795 = distinct !{!2795, !2783, !2796, !303}
!2796 = !DILocation(line: 84, column: 9, scope: !2784)
!2797 = !DILocation(line: 81, column: 32, scope: !2781)
!2798 = !DILocation(line: 81, column: 39, scope: !2781)
!2799 = !DILocation(line: 81, column: 5, scope: !2781)
!2800 = distinct !{!2800, !2782, !2801, !303}
!2801 = !DILocation(line: 85, column: 5, scope: !2776)
!2802 = !DILocation(line: 86, column: 1, scope: !2767)
!2803 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1548, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2804 = !DILocalVariable(name: "a", arg: 1, scope: !2803, file: !493, line: 48, type: !14)
!2805 = !DILocation(line: 0, scope: !2803)
!2806 = !DILocalVariable(name: "b", arg: 2, scope: !2803, file: !493, line: 48, type: !14)
!2807 = !DILocation(line: 49, column: 14, scope: !2803)
!2808 = !DILocation(line: 49, column: 5, scope: !2803)
!2809 = distinct !DISubprogram(name: "EF", scope: !2810, file: !2810, line: 60, type: !2811, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2810 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !18, !45, !45}
!2813 = !DILocalVariable(name: "A", arg: 1, scope: !2809, file: !2810, line: 60, type: !18)
!2814 = !DILocation(line: 0, scope: !2809)
!2815 = !DILocalVariable(name: "nrows", arg: 2, scope: !2809, file: !2810, line: 60, type: !45)
!2816 = !DILocalVariable(name: "ncols", arg: 3, scope: !2809, file: !2810, line: 60, type: !45)
!2817 = !DILocalVariable(name: "_pivot_row", scope: !2809, file: !2810, line: 62, type: !579, align: 256)
!2818 = !DILocation(line: 62, column: 27, scope: !2809)
!2819 = !DILocalVariable(name: "_pivot_row2", scope: !2809, file: !2810, line: 63, type: !579, align: 256)
!2820 = !DILocation(line: 63, column: 27, scope: !2809)
!2821 = !DILocalVariable(name: "packed_A", scope: !2809, file: !2810, line: 64, type: !2822, align: 256)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 48384, elements: !2823)
!2823 = !{!2824}
!2824 = !DISubrange(count: 756)
!2825 = !DILocation(line: 64, column: 27, scope: !2809)
!2826 = !DILocation(line: 66, column: 26, scope: !2809)
!2827 = !DILocation(line: 66, column: 32, scope: !2809)
!2828 = !DILocalVariable(name: "row_len", scope: !2809, file: !2810, line: 66, type: !45)
!2829 = !DILocalVariable(name: "i", scope: !2830, file: !2810, line: 69, type: !45)
!2830 = distinct !DILexicalBlock(scope: !2809, file: !2810, line: 69, column: 5)
!2831 = !DILocation(line: 0, scope: !2830)
!2832 = !DILocation(line: 69, column: 10, scope: !2830)
!2833 = !DILocation(line: 69, scope: !2830)
!2834 = !DILocation(line: 69, column: 23, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !2810, line: 69, column: 5)
!2836 = !DILocation(line: 69, column: 5, scope: !2830)
!2837 = !DILocation(line: 77, column: 5, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2809, file: !2810, line: 77, column: 5)
!2839 = !DILocation(line: 70, column: 29, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !2810, line: 69, column: 37)
!2841 = !DILocation(line: 70, column: 25, scope: !2840)
!2842 = !DILocation(line: 70, column: 51, scope: !2840)
!2843 = !DILocation(line: 70, column: 47, scope: !2840)
!2844 = !DILocation(line: 70, column: 9, scope: !2840)
!2845 = !DILocation(line: 69, column: 33, scope: !2835)
!2846 = !DILocation(line: 69, column: 5, scope: !2835)
!2847 = distinct !{!2847, !2836, !2848, !303}
!2848 = !DILocation(line: 71, column: 5, scope: !2830)
!2849 = !DILocation(line: 77, scope: !2838)
!2850 = !DILocalVariable(name: "pivot_row", scope: !2809, file: !2810, line: 76, type: !45)
!2851 = !DILocalVariable(name: "pivot_col", scope: !2838, file: !2810, line: 77, type: !45)
!2852 = !DILocation(line: 0, scope: !2838)
!2853 = !DILocation(line: 77, column: 39, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2838, file: !2810, line: 77, column: 5)
!2855 = !DILocation(line: 138, column: 5, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2809, file: !2810, line: 138, column: 5)
!2857 = !DILocation(line: 79, column: 37, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !2810, line: 77, column: 61)
!2859 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2858, file: !2810, line: 79, type: !45)
!2860 = !DILocation(line: 0, scope: !2858)
!2861 = !DILocation(line: 80, column: 37, scope: !2858)
!2862 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2858, file: !2810, line: 80, type: !45)
!2863 = !DILocalVariable(name: "i", scope: !2864, file: !2810, line: 85, type: !45)
!2864 = distinct !DILexicalBlock(scope: !2858, file: !2810, line: 85, column: 9)
!2865 = !DILocation(line: 0, scope: !2864)
!2866 = !DILocation(line: 85, column: 14, scope: !2864)
!2867 = !DILocation(line: 85, scope: !2864)
!2868 = !DILocation(line: 85, column: 27, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !2810, line: 85, column: 9)
!2870 = !DILocation(line: 85, column: 9, scope: !2864)
!2871 = !DILocation(line: 93, column: 9, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2858, file: !2810, line: 93, column: 9)
!2873 = !DILocation(line: 86, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !2810, line: 85, column: 43)
!2875 = !DILocation(line: 86, column: 27, scope: !2874)
!2876 = !DILocation(line: 87, column: 13, scope: !2874)
!2877 = !DILocation(line: 87, column: 28, scope: !2874)
!2878 = !DILocation(line: 85, column: 39, scope: !2869)
!2879 = !DILocation(line: 85, column: 9, scope: !2869)
!2880 = distinct !{!2880, !2870, !2881, !303}
!2881 = !DILocation(line: 88, column: 9, scope: !2864)
!2882 = !DILocation(line: 0, scope: !2872)
!2883 = !DILocalVariable(name: "row", scope: !2872, file: !2810, line: 93, type: !45)
!2884 = !DILocalVariable(name: "pivot", scope: !2858, file: !2810, line: 91, type: !14)
!2885 = !DILocalVariable(name: "pivot_is_zero", scope: !2858, file: !2810, line: 92, type: !6)
!2886 = !DILocation(line: 94, column: 24, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2872, file: !2810, line: 93, column: 9)
!2888 = !DILocation(line: 94, column: 21, scope: !2887)
!2889 = !DILocation(line: 96, column: 38, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2887, file: !2810, line: 94, column: 80)
!2891 = !DILocation(line: 96, column: 37, scope: !2890)
!2892 = !DILocalVariable(name: "is_pivot_row", scope: !2890, file: !2810, line: 96, type: !6)
!2893 = !DILocation(line: 0, scope: !2890)
!2894 = !DILocation(line: 97, column: 40, scope: !2890)
!2895 = !DILocalVariable(name: "below_pivot_row", scope: !2890, file: !2810, line: 97, type: !6)
!2896 = !DILocalVariable(name: "j", scope: !2897, file: !2810, line: 99, type: !45)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !2810, line: 99, column: 13)
!2898 = !DILocation(line: 0, scope: !2897)
!2899 = !DILocation(line: 99, column: 18, scope: !2897)
!2900 = !DILocation(line: 99, scope: !2897)
!2901 = !DILocation(line: 99, column: 31, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2897, file: !2810, line: 99, column: 13)
!2903 = !DILocation(line: 99, column: 13, scope: !2897)
!2904 = !DILocation(line: 100, column: 67, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2902, file: !2810, line: 99, column: 47)
!2906 = !DILocation(line: 100, column: 48, scope: !2905)
!2907 = !DILocation(line: 101, column: 47, scope: !2905)
!2908 = !DILocation(line: 101, column: 57, scope: !2905)
!2909 = !DILocation(line: 101, column: 34, scope: !2905)
!2910 = !DILocation(line: 100, column: 85, scope: !2905)
!2911 = !DILocation(line: 100, column: 17, scope: !2905)
!2912 = !DILocation(line: 100, column: 31, scope: !2905)
!2913 = !DILocation(line: 99, column: 43, scope: !2902)
!2914 = !DILocation(line: 99, column: 13, scope: !2902)
!2915 = distinct !{!2915, !2903, !2916, !303}
!2916 = !DILocation(line: 102, column: 13, scope: !2897)
!2917 = !DILocation(line: 103, column: 21, scope: !2890)
!2918 = !DILocation(line: 104, column: 44, scope: !2890)
!2919 = !DILocation(line: 104, column: 30, scope: !2890)
!2920 = !DILocation(line: 104, column: 29, scope: !2890)
!2921 = !DILocation(line: 94, column: 76, scope: !2887)
!2922 = !DILocation(line: 93, column: 9, scope: !2887)
!2923 = distinct !{!2923, !2871, !2924, !303}
!2924 = !DILocation(line: 105, column: 9, scope: !2872)
!2925 = !DILocation(line: 108, column: 19, scope: !2858)
!2926 = !DILocalVariable(name: "inverse", scope: !2809, file: !2810, line: 75, type: !14)
!2927 = !DILocation(line: 109, column: 9, scope: !2858)
!2928 = !DILocalVariable(name: "row", scope: !2929, file: !2810, line: 113, type: !45)
!2929 = distinct !DILexicalBlock(scope: !2858, file: !2810, line: 113, column: 9)
!2930 = !DILocation(line: 0, scope: !2929)
!2931 = !DILocation(line: 113, column: 14, scope: !2929)
!2932 = !DILocation(line: 113, scope: !2929)
!2933 = !DILocation(line: 113, column: 51, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !2810, line: 113, column: 9)
!2935 = !DILocation(line: 113, column: 9, scope: !2929)
!2936 = !DILocation(line: 124, column: 9, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2858, file: !2810, line: 124, column: 9)
!2938 = !DILocation(line: 114, column: 33, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !2810, line: 113, column: 84)
!2940 = !DILocation(line: 114, column: 63, scope: !2939)
!2941 = !DILocalVariable(name: "do_copy", scope: !2939, file: !2810, line: 114, type: !6)
!2942 = !DILocation(line: 0, scope: !2939)
!2943 = !DILocalVariable(name: "do_not_copy", scope: !2939, file: !2810, line: 115, type: !6)
!2944 = !DILocalVariable(name: "col", scope: !2945, file: !2810, line: 116, type: !45)
!2945 = distinct !DILexicalBlock(scope: !2939, file: !2810, line: 116, column: 13)
!2946 = !DILocation(line: 0, scope: !2945)
!2947 = !DILocation(line: 116, column: 18, scope: !2945)
!2948 = !DILocation(line: 116, scope: !2945)
!2949 = !DILocation(line: 116, column: 35, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2945, file: !2810, line: 116, column: 13)
!2951 = !DILocation(line: 116, column: 13, scope: !2945)
!2952 = !DILocation(line: 118, column: 49, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !2810, line: 116, column: 53)
!2954 = !DILocation(line: 118, column: 59, scope: !2953)
!2955 = !DILocation(line: 118, column: 36, scope: !2953)
!2956 = !DILocation(line: 118, column: 34, scope: !2953)
!2957 = !DILocation(line: 119, column: 32, scope: !2953)
!2958 = !DILocation(line: 119, column: 30, scope: !2953)
!2959 = !DILocation(line: 118, column: 67, scope: !2953)
!2960 = !DILocation(line: 117, column: 30, scope: !2953)
!2961 = !DILocation(line: 117, column: 40, scope: !2953)
!2962 = !DILocation(line: 117, column: 17, scope: !2953)
!2963 = !DILocation(line: 117, column: 47, scope: !2953)
!2964 = !DILocation(line: 116, column: 49, scope: !2950)
!2965 = !DILocation(line: 116, column: 13, scope: !2950)
!2966 = distinct !{!2966, !2951, !2967, !303}
!2967 = !DILocation(line: 120, column: 13, scope: !2945)
!2968 = !DILocation(line: 113, column: 80, scope: !2934)
!2969 = !DILocation(line: 113, column: 9, scope: !2934)
!2970 = distinct !{!2970, !2935, !2971, !303}
!2971 = !DILocation(line: 121, column: 9, scope: !2929)
!2972 = !DILocation(line: 124, scope: !2937)
!2973 = !DILocalVariable(name: "row", scope: !2937, file: !2810, line: 124, type: !45)
!2974 = !DILocation(line: 0, scope: !2937)
!2975 = !DILocation(line: 124, column: 51, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2937, file: !2810, line: 124, column: 9)
!2977 = !DILocation(line: 125, column: 46, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2976, file: !2810, line: 124, column: 67)
!2979 = !DILocalVariable(name: "below_pivot", scope: !2978, file: !2810, line: 125, type: !14)
!2980 = !DILocation(line: 0, scope: !2978)
!2981 = !DILocation(line: 126, column: 74, scope: !2978)
!2982 = !DILocation(line: 126, column: 68, scope: !2978)
!2983 = !DILocation(line: 126, column: 41, scope: !2978)
!2984 = !DILocalVariable(name: "elt_to_elim", scope: !2978, file: !2810, line: 126, type: !14)
!2985 = !DILocation(line: 128, column: 63, scope: !2978)
!2986 = !DILocation(line: 129, column: 52, scope: !2978)
!2987 = !DILocation(line: 129, column: 46, scope: !2978)
!2988 = !DILocation(line: 128, column: 13, scope: !2978)
!2989 = !DILocation(line: 124, column: 63, scope: !2976)
!2990 = !DILocation(line: 124, column: 9, scope: !2976)
!2991 = distinct !{!2991, !2936, !2992, !303}
!2992 = !DILocation(line: 130, column: 9, scope: !2937)
!2993 = !DILocation(line: 132, column: 19, scope: !2858)
!2994 = !DILocation(line: 77, column: 57, scope: !2854)
!2995 = !DILocation(line: 77, column: 5, scope: !2854)
!2996 = distinct !{!2996, !2837, !2997, !303}
!2997 = !DILocation(line: 133, column: 5, scope: !2838)
!2998 = !DILocation(line: 138, scope: !2856)
!2999 = !DILocalVariable(name: "i", scope: !2856, file: !2810, line: 138, type: !45)
!3000 = !DILocation(line: 0, scope: !2856)
!3001 = !DILocation(line: 138, column: 23, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2856, file: !2810, line: 138, column: 5)
!3003 = !DILocation(line: 139, column: 47, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3002, file: !2810, line: 138, column: 37)
!3005 = !DILocation(line: 139, column: 43, scope: !3004)
!3006 = !DILocation(line: 139, column: 9, scope: !3004)
!3007 = !DILocalVariable(name: "j", scope: !3008, file: !2810, line: 140, type: !45)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !2810, line: 140, column: 9)
!3009 = !DILocation(line: 0, scope: !3008)
!3010 = !DILocation(line: 140, column: 14, scope: !3008)
!3011 = !DILocation(line: 140, scope: !3008)
!3012 = !DILocation(line: 140, column: 27, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !2810, line: 140, column: 9)
!3014 = !DILocation(line: 140, column: 9, scope: !3008)
!3015 = !DILocation(line: 141, column: 32, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3013, file: !2810, line: 140, column: 41)
!3017 = !DILocation(line: 141, column: 17, scope: !3016)
!3018 = !DILocation(line: 141, column: 13, scope: !3016)
!3019 = !DILocation(line: 141, column: 30, scope: !3016)
!3020 = !DILocation(line: 140, column: 37, scope: !3013)
!3021 = !DILocation(line: 140, column: 9, scope: !3013)
!3022 = distinct !{!3022, !3014, !3023, !303}
!3023 = !DILocation(line: 142, column: 9, scope: !3008)
!3024 = !DILocation(line: 138, column: 33, scope: !3002)
!3025 = !DILocation(line: 138, column: 5, scope: !3002)
!3026 = distinct !{!3026, !2855, !3027, !303}
!3027 = !DILocation(line: 143, column: 5, scope: !2856)
!3028 = !DILocation(line: 145, column: 5, scope: !2809)
!3029 = !DILocation(line: 146, column: 5, scope: !2809)
!3030 = !DILocation(line: 147, column: 5, scope: !2809)
!3031 = !DILocation(line: 148, column: 5, scope: !2809)
!3032 = !DILocation(line: 149, column: 1, scope: !2809)
!3033 = distinct !DISubprogram(name: "ct_compare_8", scope: !3034, file: !3034, line: 51, type: !1548, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3034 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3035 = !DILocalVariable(name: "a", arg: 1, scope: !3033, file: !3034, line: 51, type: !14)
!3036 = !DILocation(line: 0, scope: !3033)
!3037 = !DILocalVariable(name: "b", arg: 2, scope: !3033, file: !3034, line: 51, type: !14)
!3038 = !DILocation(line: 52, column: 42, scope: !3033)
!3039 = !DILocation(line: 52, column: 13, scope: !3033)
!3040 = !DILocation(line: 52, column: 71, scope: !3033)
!3041 = !DILocation(line: 52, column: 69, scope: !3033)
!3042 = !DILocation(line: 52, column: 5, scope: !3033)
!3043 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !3044, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!6, !14, !6}
!3046 = !DILocalVariable(name: "a", arg: 1, scope: !3043, file: !493, line: 28, type: !14)
!3047 = !DILocation(line: 0, scope: !3043)
!3048 = !DILocalVariable(name: "b", arg: 2, scope: !3043, file: !493, line: 28, type: !6)
!3049 = !DILocation(line: 31, column: 13, scope: !3043)
!3050 = !DILocation(line: 31, column: 10, scope: !3043)
!3051 = !DILocation(line: 31, column: 17, scope: !3043)
!3052 = !DILocalVariable(name: "p", scope: !3043, file: !493, line: 30, type: !6)
!3053 = !DILocation(line: 32, column: 13, scope: !3043)
!3054 = !DILocation(line: 32, column: 10, scope: !3043)
!3055 = !DILocation(line: 32, column: 17, scope: !3043)
!3056 = !DILocation(line: 32, column: 7, scope: !3043)
!3057 = !DILocation(line: 33, column: 13, scope: !3043)
!3058 = !DILocation(line: 33, column: 10, scope: !3043)
!3059 = !DILocation(line: 33, column: 17, scope: !3043)
!3060 = !DILocation(line: 33, column: 7, scope: !3043)
!3061 = !DILocation(line: 34, column: 13, scope: !3043)
!3062 = !DILocation(line: 34, column: 10, scope: !3043)
!3063 = !DILocation(line: 34, column: 17, scope: !3043)
!3064 = !DILocation(line: 34, column: 7, scope: !3043)
!3065 = !DILocalVariable(name: "top_p", scope: !3043, file: !493, line: 37, type: !6)
!3066 = !DILocation(line: 38, column: 32, scope: !3043)
!3067 = !DILocation(line: 38, column: 47, scope: !3043)
!3068 = !DILocation(line: 38, column: 38, scope: !3043)
!3069 = !DILocation(line: 38, column: 54, scope: !3043)
!3070 = !DILocalVariable(name: "out", scope: !3043, file: !493, line: 38, type: !6)
!3071 = !DILocation(line: 39, column: 5, scope: !3043)
!3072 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2810, file: !2810, line: 24, type: !3073, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !49, !5, !45}
!3075 = !DILocalVariable(name: "in", arg: 1, scope: !3072, file: !2810, line: 24, type: !49)
!3076 = !DILocation(line: 0, scope: !3072)
!3077 = !DILocalVariable(name: "out", arg: 2, scope: !3072, file: !2810, line: 24, type: !5)
!3078 = !DILocalVariable(name: "ncols", arg: 3, scope: !3072, file: !2810, line: 24, type: !45)
!3079 = !DILocalVariable(name: "out8", scope: !3072, file: !2810, line: 26, type: !18)
!3080 = !DILocalVariable(name: "i", scope: !3072, file: !2810, line: 25, type: !45)
!3081 = !DILocation(line: 27, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3072, file: !2810, line: 27, column: 5)
!3083 = !DILocation(line: 27, scope: !3082)
!3084 = !DILocation(line: 27, column: 17, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3082, file: !2810, line: 27, column: 5)
!3086 = !DILocation(line: 27, column: 20, scope: !3085)
!3087 = !DILocation(line: 27, column: 5, scope: !3082)
!3088 = !DILocation(line: 31, column: 23, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !2810, line: 27, column: 36)
!3090 = !DILocation(line: 31, column: 44, scope: !3089)
!3091 = !DILocation(line: 31, column: 40, scope: !3089)
!3092 = !DILocation(line: 31, column: 48, scope: !3089)
!3093 = !DILocation(line: 31, column: 37, scope: !3089)
!3094 = !DILocation(line: 31, column: 15, scope: !3089)
!3095 = !DILocation(line: 31, column: 9, scope: !3089)
!3096 = !DILocation(line: 31, column: 20, scope: !3089)
!3097 = !DILocation(line: 27, column: 31, scope: !3085)
!3098 = !DILocation(line: 27, column: 5, scope: !3085)
!3099 = distinct !{!3099, !3087, !3100, !303}
!3100 = !DILocation(line: 33, column: 5, scope: !3082)
!3101 = !DILocation(line: 34, column: 19, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3072, file: !2810, line: 34, column: 9)
!3103 = !DILocation(line: 38, column: 23, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3102, file: !2810, line: 34, column: 24)
!3105 = !DILocation(line: 38, column: 15, scope: !3104)
!3106 = !DILocation(line: 38, column: 9, scope: !3104)
!3107 = !DILocation(line: 38, column: 20, scope: !3104)
!3108 = !DILocation(line: 40, column: 5, scope: !3104)
!3109 = !DILocation(line: 41, column: 1, scope: !3072)
!3110 = distinct !DISubprogram(name: "ct_compare_64", scope: !3034, file: !3034, line: 46, type: !3111, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!6, !45, !45}
!3113 = !DILocalVariable(name: "a", arg: 1, scope: !3110, file: !3034, line: 46, type: !45)
!3114 = !DILocation(line: 0, scope: !3110)
!3115 = !DILocalVariable(name: "b", arg: 2, scope: !3110, file: !3034, line: 46, type: !45)
!3116 = !DILocation(line: 47, column: 38, scope: !3110)
!3117 = !DILocation(line: 47, column: 44, scope: !3110)
!3118 = !DILocation(line: 47, column: 73, scope: !3110)
!3119 = !DILocation(line: 47, column: 71, scope: !3110)
!3120 = !DILocation(line: 47, column: 5, scope: !3110)
!3121 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3034, file: !3034, line: 35, type: !3111, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3122 = !DILocalVariable(name: "a", arg: 1, scope: !3121, file: !3034, line: 35, type: !45)
!3123 = !DILocation(line: 0, scope: !3121)
!3124 = !DILocalVariable(name: "b", arg: 2, scope: !3121, file: !3034, line: 35, type: !45)
!3125 = !DILocalVariable(name: "diff", scope: !3121, file: !3034, line: 36, type: !46)
!3126 = !DILocation(line: 37, column: 30, scope: !3121)
!3127 = !DILocation(line: 37, column: 59, scope: !3121)
!3128 = !DILocation(line: 37, column: 57, scope: !3121)
!3129 = !DILocation(line: 37, column: 5, scope: !3121)
!3130 = distinct !DISubprogram(name: "m_extract_element", scope: !2810, file: !2810, line: 16, type: !3131, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!14, !326, !45}
!3133 = !DILocalVariable(name: "in", arg: 1, scope: !3130, file: !2810, line: 16, type: !326)
!3134 = !DILocation(line: 0, scope: !3130)
!3135 = !DILocalVariable(name: "index", arg: 2, scope: !3130, file: !2810, line: 16, type: !45)
!3136 = !DILocation(line: 17, column: 27, scope: !3130)
!3137 = !DILocalVariable(name: "leg", scope: !3130, file: !2810, line: 17, type: !239)
!3138 = !DILocation(line: 18, column: 30, scope: !3130)
!3139 = !DILocalVariable(name: "offset", scope: !3130, file: !2810, line: 18, type: !239)
!3140 = !DILocation(line: 20, column: 13, scope: !3130)
!3141 = !DILocation(line: 20, column: 31, scope: !3130)
!3142 = !DILocation(line: 20, column: 21, scope: !3130)
!3143 = !DILocation(line: 20, column: 12, scope: !3130)
!3144 = !DILocation(line: 20, column: 5, scope: !3130)
!3145 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3146, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!14, !14}
!3148 = !DILocalVariable(name: "a", arg: 1, scope: !3145, file: !493, line: 57, type: !14)
!3149 = !DILocation(line: 0, scope: !3145)
!3150 = !DILocation(line: 61, column: 24, scope: !3145)
!3151 = !DILocalVariable(name: "a2", scope: !3145, file: !493, line: 61, type: !14)
!3152 = !DILocation(line: 62, column: 24, scope: !3145)
!3153 = !DILocalVariable(name: "a4", scope: !3145, file: !493, line: 62, type: !14)
!3154 = !DILocation(line: 63, column: 24, scope: !3145)
!3155 = !DILocalVariable(name: "a8", scope: !3145, file: !493, line: 63, type: !14)
!3156 = !DILocation(line: 64, column: 24, scope: !3145)
!3157 = !DILocalVariable(name: "a6", scope: !3145, file: !493, line: 64, type: !14)
!3158 = !DILocation(line: 65, column: 25, scope: !3145)
!3159 = !DILocalVariable(name: "a14", scope: !3145, file: !493, line: 65, type: !14)
!3160 = !DILocation(line: 67, column: 5, scope: !3145)
!3161 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3034, file: !3034, line: 94, type: !3162, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !239, !326, !14, !5}
!3164 = !DILocalVariable(name: "legs", arg: 1, scope: !3161, file: !3034, line: 94, type: !239)
!3165 = !DILocation(line: 0, scope: !3161)
!3166 = !DILocalVariable(name: "in", arg: 2, scope: !3161, file: !3034, line: 94, type: !326)
!3167 = !DILocalVariable(name: "a", arg: 3, scope: !3161, file: !3034, line: 94, type: !14)
!3168 = !DILocalVariable(name: "acc", arg: 4, scope: !3161, file: !3034, line: 94, type: !5)
!3169 = !DILocation(line: 95, column: 20, scope: !3161)
!3170 = !DILocalVariable(name: "tab", scope: !3161, file: !3034, line: 95, type: !19)
!3171 = !DILocalVariable(name: "lsb_ask", scope: !3161, file: !3034, line: 97, type: !6)
!3172 = !DILocalVariable(name: "i", scope: !3173, file: !3034, line: 99, type: !45)
!3173 = distinct !DILexicalBlock(scope: !3161, file: !3034, line: 99, column: 5)
!3174 = !DILocation(line: 0, scope: !3173)
!3175 = !DILocation(line: 99, column: 9, scope: !3173)
!3176 = !DILocation(line: 99, scope: !3173)
!3177 = !DILocation(line: 99, column: 20, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !3034, line: 99, column: 5)
!3179 = !DILocation(line: 99, column: 5, scope: !3173)
!3180 = !DILocation(line: 100, column: 21, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !3034, line: 99, column: 32)
!3182 = !DILocation(line: 100, column: 33, scope: !3181)
!3183 = !DILocation(line: 100, column: 51, scope: !3181)
!3184 = !DILocation(line: 100, column: 46, scope: !3181)
!3185 = !DILocation(line: 100, column: 44, scope: !3181)
!3186 = !DILocation(line: 101, column: 27, scope: !3181)
!3187 = !DILocation(line: 101, column: 33, scope: !3181)
!3188 = !DILocation(line: 101, column: 52, scope: !3181)
!3189 = !DILocation(line: 101, column: 59, scope: !3181)
!3190 = !DILocation(line: 101, column: 46, scope: !3181)
!3191 = !DILocation(line: 101, column: 44, scope: !3181)
!3192 = !DILocation(line: 101, column: 17, scope: !3181)
!3193 = !DILocation(line: 102, column: 21, scope: !3181)
!3194 = !DILocation(line: 102, column: 27, scope: !3181)
!3195 = !DILocation(line: 102, column: 33, scope: !3181)
!3196 = !DILocation(line: 102, column: 52, scope: !3181)
!3197 = !DILocation(line: 102, column: 59, scope: !3181)
!3198 = !DILocation(line: 102, column: 46, scope: !3181)
!3199 = !DILocation(line: 102, column: 44, scope: !3181)
!3200 = !DILocation(line: 102, column: 17, scope: !3181)
!3201 = !DILocation(line: 103, column: 21, scope: !3181)
!3202 = !DILocation(line: 103, column: 27, scope: !3181)
!3203 = !DILocation(line: 103, column: 33, scope: !3181)
!3204 = !DILocation(line: 103, column: 52, scope: !3181)
!3205 = !DILocation(line: 103, column: 59, scope: !3181)
!3206 = !DILocation(line: 103, column: 46, scope: !3181)
!3207 = !DILocation(line: 103, column: 44, scope: !3181)
!3208 = !DILocation(line: 103, column: 17, scope: !3181)
!3209 = !DILocation(line: 100, column: 9, scope: !3181)
!3210 = !DILocation(line: 100, column: 16, scope: !3181)
!3211 = !DILocation(line: 99, column: 29, scope: !3178)
!3212 = !DILocation(line: 99, column: 5, scope: !3178)
!3213 = distinct !{!3213, !3179, !3214, !303}
!3214 = !DILocation(line: 104, column: 5, scope: !3173)
!3215 = !DILocation(line: 105, column: 1, scope: !3161)
!3216 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2810, file: !2810, line: 44, type: !3217, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !45, !326, !18}
!3219 = !DILocalVariable(name: "legs", arg: 1, scope: !3216, file: !2810, line: 44, type: !45)
!3220 = !DILocation(line: 0, scope: !3216)
!3221 = !DILocalVariable(name: "in", arg: 2, scope: !3216, file: !2810, line: 44, type: !326)
!3222 = !DILocalVariable(name: "out", arg: 3, scope: !3216, file: !2810, line: 44, type: !18)
!3223 = !DILocalVariable(name: "in8", scope: !3216, file: !2810, line: 45, type: !49)
!3224 = !DILocalVariable(name: "i", scope: !3225, file: !2810, line: 46, type: !45)
!3225 = distinct !DILexicalBlock(scope: !3216, file: !2810, line: 46, column: 5)
!3226 = !DILocation(line: 0, scope: !3225)
!3227 = !DILocation(line: 46, column: 9, scope: !3225)
!3228 = !DILocation(line: 46, scope: !3225)
!3229 = !DILocation(line: 46, column: 29, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3225, file: !2810, line: 46, column: 5)
!3231 = !DILocation(line: 46, column: 22, scope: !3230)
!3232 = !DILocation(line: 46, column: 5, scope: !3225)
!3233 = !DILocation(line: 51, column: 26, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3230, file: !2810, line: 46, column: 42)
!3235 = !DILocation(line: 51, column: 21, scope: !3234)
!3236 = !DILocation(line: 51, column: 31, scope: !3234)
!3237 = !DILocation(line: 51, column: 9, scope: !3234)
!3238 = !DILocation(line: 51, column: 18, scope: !3234)
!3239 = !DILocation(line: 52, column: 26, scope: !3234)
!3240 = !DILocation(line: 52, column: 21, scope: !3234)
!3241 = !DILocation(line: 52, column: 30, scope: !3234)
!3242 = !DILocation(line: 52, column: 14, scope: !3234)
!3243 = !DILocation(line: 52, column: 9, scope: !3234)
!3244 = !DILocation(line: 52, column: 18, scope: !3234)
!3245 = !DILocation(line: 46, column: 37, scope: !3230)
!3246 = !DILocation(line: 46, column: 5, scope: !3230)
!3247 = distinct !{!3247, !3232, !3248, !303}
!3248 = !DILocation(line: 54, column: 5, scope: !3225)
!3249 = !DILocation(line: 55, column: 1, scope: !3216)
!3250 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3251 = !DILocalVariable(name: "b", arg: 1, scope: !3250, file: !493, line: 129, type: !12)
!3252 = !DILocation(line: 0, scope: !3250)
!3253 = !DILocation(line: 130, column: 19, scope: !3250)
!3254 = !DILocation(line: 130, column: 33, scope: !3250)
!3255 = !DILocalVariable(name: "x", scope: !3250, file: !493, line: 130, type: !19)
!3256 = !DILocalVariable(name: "high_nibble_mask", scope: !3250, file: !493, line: 132, type: !19)
!3257 = !DILocation(line: 134, column: 28, scope: !3250)
!3258 = !DILocalVariable(name: "high_half", scope: !3250, file: !493, line: 134, type: !19)
!3259 = !DILocation(line: 135, column: 28, scope: !3250)
!3260 = !DILocation(line: 135, column: 47, scope: !3250)
!3261 = !DILocation(line: 135, column: 34, scope: !3250)
!3262 = !DILocation(line: 135, column: 5, scope: !3250)
!3263 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1548, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3264 = !DILocalVariable(name: "a", arg: 1, scope: !3263, file: !493, line: 9, type: !14)
!3265 = !DILocation(line: 0, scope: !3263)
!3266 = !DILocalVariable(name: "b", arg: 2, scope: !3263, file: !493, line: 9, type: !14)
!3267 = !DILocation(line: 14, column: 10, scope: !3263)
!3268 = !DILocation(line: 14, column: 7, scope: !3263)
!3269 = !DILocation(line: 17, column: 17, scope: !3263)
!3270 = !DILocalVariable(name: "p", scope: !3263, file: !493, line: 11, type: !14)
!3271 = !DILocation(line: 18, column: 13, scope: !3263)
!3272 = !DILocation(line: 18, column: 17, scope: !3263)
!3273 = !DILocation(line: 18, column: 7, scope: !3263)
!3274 = !DILocation(line: 19, column: 13, scope: !3263)
!3275 = !DILocation(line: 19, column: 17, scope: !3263)
!3276 = !DILocation(line: 19, column: 7, scope: !3263)
!3277 = !DILocation(line: 20, column: 13, scope: !3263)
!3278 = !DILocation(line: 20, column: 17, scope: !3263)
!3279 = !DILocation(line: 20, column: 7, scope: !3263)
!3280 = !DILocalVariable(name: "top_p", scope: !3263, file: !493, line: 23, type: !14)
!3281 = !DILocation(line: 24, column: 37, scope: !3263)
!3282 = !DILocation(line: 24, column: 52, scope: !3263)
!3283 = !DILocation(line: 24, column: 43, scope: !3263)
!3284 = !DILocation(line: 24, column: 59, scope: !3263)
!3285 = !DILocalVariable(name: "out", scope: !3263, file: !493, line: 24, type: !14)
!3286 = !DILocation(line: 25, column: 5, scope: !3263)
!3287 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1556, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3288 = !DILocalVariable(name: "a", arg: 1, scope: !3287, file: !493, line: 70, type: !49)
!3289 = !DILocation(line: 0, scope: !3287)
!3290 = !DILocalVariable(name: "b", arg: 2, scope: !3287, file: !493, line: 71, type: !49)
!3291 = !DILocalVariable(name: "n", arg: 3, scope: !3287, file: !493, line: 71, type: !45)
!3292 = !DILocalVariable(name: "m", arg: 4, scope: !3287, file: !493, line: 71, type: !45)
!3293 = !DILocalVariable(name: "ret", scope: !3287, file: !493, line: 72, type: !14)
!3294 = !DILocalVariable(name: "i", scope: !3295, file: !493, line: 73, type: !45)
!3295 = distinct !DILexicalBlock(scope: !3287, file: !493, line: 73, column: 5)
!3296 = !DILocation(line: 0, scope: !3295)
!3297 = !DILocation(line: 73, column: 10, scope: !3295)
!3298 = !DILocation(line: 73, scope: !3295)
!3299 = !DILocation(line: 73, column: 23, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3295, file: !493, line: 73, column: 5)
!3301 = !DILocation(line: 73, column: 5, scope: !3295)
!3302 = !DILocation(line: 74, column: 27, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !493, line: 73, column: 41)
!3304 = !DILocation(line: 74, column: 33, scope: !3303)
!3305 = !DILocation(line: 74, column: 21, scope: !3303)
!3306 = !DILocation(line: 74, column: 15, scope: !3303)
!3307 = !DILocation(line: 73, column: 28, scope: !3300)
!3308 = !DILocation(line: 73, column: 35, scope: !3300)
!3309 = !DILocation(line: 73, column: 5, scope: !3300)
!3310 = distinct !{!3310, !3301, !3311, !303}
!3311 = !DILocation(line: 75, column: 5, scope: !3295)
!3312 = !DILocation(line: 76, column: 5, scope: !3287)
!3313 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1548, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3314 = !DILocalVariable(name: "a", arg: 1, scope: !3313, file: !493, line: 43, type: !14)
!3315 = !DILocation(line: 0, scope: !3313)
!3316 = !DILocalVariable(name: "b", arg: 2, scope: !3313, file: !493, line: 43, type: !14)
!3317 = !DILocation(line: 44, column: 14, scope: !3313)
!3318 = !DILocation(line: 44, column: 5, scope: !3313)
