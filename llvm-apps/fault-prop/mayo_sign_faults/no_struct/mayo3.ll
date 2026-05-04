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
  store i8 0, ptr %add.ptr24, align 1, !dbg !798
  %call32 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 649, ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !799
    #dbg_value(i32 0, !800, !DIExpression(), !802)
  br label %for.cond, !dbg !803

for.cond:                                         ; preds = %for.body, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ], !dbg !804
    #dbg_value(i32 %i.0, !800, !DIExpression(), !802)
  %exitcond = icmp ne i32 %i.0, 11, !dbg !805
  br i1 %exitcond, label %for.body, label %for.end, !dbg !807

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 54, !dbg !808
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !810
  %mul37 = mul nuw nsw i32 %i.0, 108, !dbg !811
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !812
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 108) #6, !dbg !813
  %inc = add nuw nsw i32 %i.0, 1, !dbg !814
    #dbg_value(i32 %inc, !800, !DIExpression(), !802)
  br label %for.cond, !dbg !815, !llvm.loop !816

for.end:                                          ; preds = %for.cond
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !818
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !819
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !820
    #dbg_value(i32 0, !821, !DIExpression(), !823)
  br label %for.cond48, !dbg !824

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !825
    #dbg_value(i32 %i47.0, !821, !DIExpression(), !823)
  %exitcond1 = icmp ne i32 %i47.0, 108, !dbg !826
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !828

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 111, !dbg !829
  %sub = add nuw nsw i32 %0, 110, !dbg !831
  %arrayidx = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub, !dbg !832
  store i8 0, ptr %arrayidx, align 1, !dbg !833
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !834
    #dbg_value(i32 %inc53, !821, !DIExpression(), !823)
  br label %for.cond48, !dbg !835, !llvm.loop !836

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 594, !dbg !838
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 110) #6, !dbg !839
  %call62 = call i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 11, i32 noundef 10, i32 noundef 108, i32 noundef 111) #6, !dbg !840
  %tobool.not = icmp eq i32 %call62, 0, !dbg !840
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !840

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 6160) #8, !dbg !842
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 12432) #8, !dbg !844
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !845, !DIExpression(), !847)
  br label %for.cond70, !dbg !848

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !849
    #dbg_value(i32 %i69.0, !845, !DIExpression(), !847)
  %exitcond2 = icmp ne i32 %i69.0, 11, !dbg !850
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !852

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 108, !dbg !853
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !855
    #dbg_value(ptr %add.ptr75, !856, !DIExpression(), !704)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !857
  %mul80 = mul nuw nsw i32 %i69.0, 10, !dbg !858
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !859
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 10, i32 noundef 108, i32 noundef 1) #6, !dbg !860
  %mul85 = mul nuw nsw i32 %i69.0, 118, !dbg !861
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !862
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 108, i32 noundef 1) #6, !dbg !863
  %mul88 = mul nuw nsw i32 %i69.0, 118, !dbg !864
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !865
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 108, !dbg !866
  %mul92 = mul nuw nsw i32 %i69.0, 10, !dbg !867
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !868
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 10) #8, !dbg !869
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !870
    #dbg_value(i32 %inc96, !845, !DIExpression(), !847)
  br label %for.cond70, !dbg !871, !llvm.loop !872

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1298) #6, !dbg !874
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !875
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 32) #8, !dbg !876
  store i32 681, ptr %siglen, align 4, !dbg !877
  br label %err, !dbg !878

err:                                              ; preds = %entry, %for.end97
  %ret.0 = phi i32 [ 0, %for.end97 ], [ 1, %entry ], !dbg !704
    #dbg_value(i32 %ret.0, !710, !DIExpression(), !704)
    #dbg_label(!879, !880)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 649) #8, !dbg !881
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1188) #8, !dbg !882
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 12432) #8, !dbg !883
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 111) #8, !dbg !884
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !885
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1080) #8, !dbg !886
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 391176) #8, !dbg !887
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 108) #8, !dbg !888
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !889
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 6160) #8, !dbg !890
  ret i32 %ret.0, !dbg !891
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !892 {
entry:
  %Pv = alloca [8316 x i64], align 8
    #dbg_value(ptr %p, !895, !DIExpression(), !896)
    #dbg_value(ptr %Vdec, !897, !DIExpression(), !896)
    #dbg_value(ptr %L, !898, !DIExpression(), !896)
    #dbg_value(ptr %P1, !899, !DIExpression(), !896)
    #dbg_value(ptr %VL, !900, !DIExpression(), !896)
    #dbg_value(ptr %VP1V, !901, !DIExpression(), !896)
    #dbg_value(i32 11, !902, !DIExpression(), !896)
    #dbg_value(i32 108, !903, !DIExpression(), !896)
    #dbg_value(i32 10, !904, !DIExpression(), !896)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 11, i32 noundef 108, i32 noundef 10) #6, !dbg !905
    #dbg_declare(ptr %Pv, !906, !DIExpression(), !910)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(66528) %Pv, i8 0, i32 66528, i1 false), !dbg !910
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !911
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 11, i32 noundef 108, i32 noundef 11) #6, !dbg !912
  ret void, !dbg !913
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !914 {
entry:
  %temp = alloca [7 x i64], align 8
    #dbg_value(ptr %p, !917, !DIExpression(), !918)
    #dbg_value(ptr %vPv, !919, !DIExpression(), !918)
    #dbg_value(ptr %t, !920, !DIExpression(), !918)
    #dbg_value(ptr %y, !921, !DIExpression(), !918)
    #dbg_value(i32 44, !922, !DIExpression(), !918)
    #dbg_value(i32 7, !924, !DIExpression(), !918)
    #dbg_value(i64 1, !925, !DIExpression(), !928)
    #dbg_value(i64 281474976710656, !925, !DIExpression(), !928)
    #dbg_value(i64 281474976710655, !925, !DIExpression(), !928)
    #dbg_value(i32 0, !929, !DIExpression(), !931)
  br label %for.cond, !dbg !932

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !933
    #dbg_value(i32 %i.0, !929, !DIExpression(), !931)
  %exitcond = icmp ne i32 %i.0, 121, !dbg !934
  br i1 %exitcond, label %for.body, label %for.end, !dbg !936

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 56, !dbg !937
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !937
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !937
  %1 = load i64, ptr %arrayidx, align 8, !dbg !939
  %and = and i64 %1, 281474976710655, !dbg !939
  store i64 %and, ptr %arrayidx, align 8, !dbg !939
  %inc = add nuw nsw i32 %i.0, 1, !dbg !940
    #dbg_value(i32 %inc, !929, !DIExpression(), !931)
  br label %for.cond, !dbg !941, !llvm.loop !942

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !944, !DIExpression(), !945)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %temp, i8 0, i32 56, i1 false), !dbg !945
    #dbg_value(ptr %temp, !946, !DIExpression(), !918)
    #dbg_value(i32 10, !947, !DIExpression(), !949)
  br label %for.cond3, !dbg !950

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 10, %for.end ], [ %dec78, %for.inc77 ], !dbg !951
    #dbg_value(i32 %i2.0, !947, !DIExpression(), !949)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !952
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !954

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !955

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !958

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !960
    #dbg_value(i32 %j.0, !961, !DIExpression(), !962)
  %exitcond10 = icmp ne i32 %j.0, 11, !dbg !963
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !955

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !965
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !965
  %shr = lshr i64 %2, 44, !dbg !967
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !968
    #dbg_value(i8 %rem1, !969, !DIExpression(), !970)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !971
  %shl11 = shl i64 %2, 4, !dbg !972
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !972
    #dbg_value(i32 5, !973, !DIExpression(), !975)
  br label %for.cond12, !dbg !976

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 5, %for.body8 ], [ %dec, %for.body15 ], !dbg !977
    #dbg_value(i32 %k.0, !973, !DIExpression(), !975)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !978
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !980

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !968
  br label %for.cond24, !dbg !981

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !983
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !983
  %shr17 = lshr i64 %3, 60, !dbg !985
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !986
  %arrayidx19 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %add18, !dbg !987
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !988
  %xor = xor i64 %4, %shr17, !dbg !988
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !988
  %arrayidx20 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !989
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !990
  %shl21 = shl i64 %5, 4, !dbg !990
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !990
  %dec = add nsw i32 %k.0, -1, !dbg !991
    #dbg_value(i32 %dec, !973, !DIExpression(), !975)
  br label %for.cond12, !dbg !992, !llvm.loop !993

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !995
    #dbg_value(i32 %jj.0, !996, !DIExpression(), !997)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !998
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !981

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1000

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1002
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1005
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1005

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1006
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1006
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #6, !dbg !1008
  %div = lshr exact i32 %jj.0, 1, !dbg !1009
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1010
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1011
  %xor356 = xor i8 %7, %call, !dbg !1011
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1011
  br label %for.inc46, !dbg !1012

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1013
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1013
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #6, !dbg !1015
  %shl40 = shl nuw i8 %call38, 4, !dbg !1016
  %div415 = lshr i32 %jj.0, 1, !dbg !1017
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1018
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1019
  %xor44 = xor i8 %shl40, %9, !dbg !1019
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1019
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1020
    #dbg_value(i32 %inc47, !996, !DIExpression(), !997)
  br label %for.cond24, !dbg !1021, !llvm.loop !1022

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1024
    #dbg_value(i32 %k49.0, !1025, !DIExpression(), !1026)
  %exitcond9 = icmp ne i32 %k49.0, 7, !dbg !1027
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1000

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 11, !dbg !1029
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1031
  %.idx = mul nsw i32 %add55, 56, !dbg !1032
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1032
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1032
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1032
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1033
  %mul62 = mul nuw nsw i32 %j.0, 11, !dbg !1034
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1035
  %.idx4 = mul nsw i32 %add63, 56, !dbg !1036
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1036
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1036
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1036
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1037
  %xor68 = xor i64 %11, %mul67, !dbg !1038
  %arrayidx69 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1039
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1040
  %xor70 = xor i64 %14, %xor68, !dbg !1040
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1040
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1041
    #dbg_value(i32 %inc72, !1025, !DIExpression(), !1026)
  br label %for.cond50, !dbg !1042, !llvm.loop !1043

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1045
    #dbg_value(i32 %inc75, !961, !DIExpression(), !962)
  br label %for.cond6, !dbg !1046, !llvm.loop !1047

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1049
    #dbg_value(i32 %dec78, !947, !DIExpression(), !949)
  br label %for.cond3, !dbg !1050, !llvm.loop !1051

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1053
    #dbg_value(i32 %i80.0, !1054, !DIExpression(), !1055)
  %cmp82 = icmp samesign ult i32 %i80.0, 108, !dbg !1056
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !958

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1058
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1058
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1060
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1061
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1061
  %17 = and i8 %16, 15, !dbg !1062
  %xor912 = xor i8 %15, %17, !dbg !1063
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1064
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1065
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1066
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1067
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1067
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1068
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1069
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1069
  %20 = lshr i8 %19, 4, !dbg !1070
  %xor1013 = xor i8 %18, %20, !dbg !1071
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1072
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1073
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1074
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1075
    #dbg_value(i32 %add106, !1054, !DIExpression(), !1055)
  br label %for.cond81, !dbg !1076, !llvm.loop !1077

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1079
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1080 {
entry:
  %A = alloca [1568 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1083, !DIExpression(), !1084)
    #dbg_value(ptr %VtL, !1085, !DIExpression(), !1084)
    #dbg_value(ptr %A_out, !1086, !DIExpression(), !1084)
    #dbg_value(i32 0, !1087, !DIExpression(), !1084)
    #dbg_value(i32 0, !1088, !DIExpression(), !1084)
    #dbg_value(i32 7, !1089, !DIExpression(), !1084)
    #dbg_declare(ptr %A, !1090, !DIExpression(), !1094)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12544) %A, i8 0, i32 12544, i1 false), !dbg !1094
    #dbg_value(i32 112, !1095, !DIExpression(), !1084)
    #dbg_value(i64 1, !1096, !DIExpression(), !1099)
    #dbg_value(i64 281474976710656, !1096, !DIExpression(), !1099)
    #dbg_value(i64 281474976710655, !1096, !DIExpression(), !1099)
    #dbg_value(i32 0, !1100, !DIExpression(), !1102)
  br label %for.cond, !dbg !1103

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1104
    #dbg_value(i32 %i.0, !1100, !DIExpression(), !1102)
  %exitcond = icmp ne i32 %i.0, 110, !dbg !1105
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1107

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1108

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 56, !dbg !1110
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1110
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1110
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1112
  %and = and i64 %1, 281474976710655, !dbg !1112
  store i64 %and, ptr %arrayidx, align 8, !dbg !1112
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1113
    #dbg_value(i32 %inc, !1100, !DIExpression(), !1102)
  br label %for.cond, !dbg !1114, !llvm.loop !1115

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1117
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1118
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1119
    #dbg_value(i32 %bits_to_shift.0, !1087, !DIExpression(), !1084)
    #dbg_value(i32 %words_to_shift.0, !1088, !DIExpression(), !1084)
    #dbg_value(i32 %i2.0, !1120, !DIExpression(), !1121)
  %exitcond8 = icmp ne i32 %i2.0, 11, !dbg !1122
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1108

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1124

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1127

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 10, %for.cond6.preheader ], !dbg !1129
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1084
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1084
    #dbg_value(i32 %bits_to_shift.1, !1087, !DIExpression(), !1084)
    #dbg_value(i32 %words_to_shift.1, !1088, !DIExpression(), !1084)
    #dbg_value(i32 %j.0, !1130, !DIExpression(), !1131)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1132
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1124

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 560, !dbg !1134
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1134
    #dbg_value(ptr %add.ptr, !1136, !DIExpression(), !1084)
    #dbg_value(i32 0, !1137, !DIExpression(), !1139)
  br label %for.cond11, !dbg !1140

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1141
    #dbg_value(i32 %c.0, !1137, !DIExpression(), !1139)
  %exitcond5 = icmp ne i32 %c.0, 10, !dbg !1142
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1144

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1145

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1148
    #dbg_value(i32 %k.0, !1149, !DIExpression(), !1150)
  %exitcond4 = icmp ne i32 %k.0, 7, !dbg !1151
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1145

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1153
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 56, !dbg !1153
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1153
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1153
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1155
  %shl20 = shl i64 %3, %sh_prom, !dbg !1155
  %mul21 = mul nuw nsw i32 %i2.0, 10, !dbg !1156
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1157
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1158
  %mul24 = mul i32 %add23, 112, !dbg !1159
  %add25 = add i32 %add22, %mul24, !dbg !1160
  %arrayidx26 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25, !dbg !1161
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1162
  %xor = xor i64 %4, %shl20, !dbg !1162
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1162
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1163
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1163

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1165
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 56, !dbg !1165
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1165
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1165
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1167
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1168
  %shr = lshr i64 %6, %sh_prom32, !dbg !1168
  %mul33 = mul nuw nsw i32 %i2.0, 10, !dbg !1169
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1170
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1171
  %7 = mul i32 %add35, 112, !dbg !1172
  %mul37 = add i32 %7, 112, !dbg !1172
  %add38 = add i32 %add34, %mul37, !dbg !1173
  %arrayidx39 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38, !dbg !1174
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1175
  %xor40 = xor i64 %8, %shr, !dbg !1175
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1175
  br label %for.inc41, !dbg !1176

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1177
    #dbg_value(i32 %inc42, !1149, !DIExpression(), !1150)
  br label %for.cond14, !dbg !1178, !llvm.loop !1179

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1181
    #dbg_value(i32 %inc45, !1137, !DIExpression(), !1139)
  br label %for.cond11, !dbg !1182, !llvm.loop !1183

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1185
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1185

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 560, !dbg !1187
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1187
    #dbg_value(ptr %add.ptr51, !1189, !DIExpression(), !1084)
    #dbg_value(i32 0, !1190, !DIExpression(), !1192)
  br label %for.cond53, !dbg !1193

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1194
    #dbg_value(i32 %c52.0, !1190, !DIExpression(), !1192)
  %exitcond7 = icmp ne i32 %c52.0, 10, !dbg !1195
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1197

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1198

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1201
    #dbg_value(i32 %k56.0, !1202, !DIExpression(), !1203)
  %exitcond6 = icmp ne i32 %k56.0, 7, !dbg !1204
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1198

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1206
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1206
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1206
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1206
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1208
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1208
  %mul65 = mul nsw i32 %j.0, 10, !dbg !1209
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1210
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1211
  %mul68 = mul i32 %add67, 112, !dbg !1212
  %add69 = add i32 %add66, %mul68, !dbg !1213
  %arrayidx70 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69, !dbg !1214
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1215
  %xor71 = xor i64 %11, %shl64, !dbg !1215
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1215
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1216
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1216

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1218
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1218
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1218
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1218
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1220
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1221
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1221
  %mul80 = mul nsw i32 %j.0, 10, !dbg !1222
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1223
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1224
  %14 = mul i32 %add82, 112, !dbg !1225
  %mul84 = add i32 %14, 112, !dbg !1225
  %add85 = add i32 %add81, %mul84, !dbg !1226
  %arrayidx86 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85, !dbg !1227
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1228
  %xor87 = xor i64 %15, %shr79, !dbg !1228
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1228
  br label %for.inc89, !dbg !1229

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1230
    #dbg_value(i32 %inc90, !1202, !DIExpression(), !1203)
  br label %for.cond57, !dbg !1231, !llvm.loop !1232

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1234
    #dbg_value(i32 %inc93, !1190, !DIExpression(), !1192)
  br label %for.cond53, !dbg !1235, !llvm.loop !1236

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1238

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1238
    #dbg_value(i32 %add96, !1087, !DIExpression(), !1084)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1239
  %inc99 = zext i1 %cmp97 to i32, !dbg !1239
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1239
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1239
    #dbg_value(i32 %spec.select3, !1087, !DIExpression(), !1084)
    #dbg_value(i32 %spec.select, !1088, !DIExpression(), !1084)
  %dec = add nsw i32 %j.0, -1, !dbg !1241
    #dbg_value(i32 %dec, !1130, !DIExpression(), !1131)
  br label %for.cond6, !dbg !1242, !llvm.loop !1243

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1084
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1084
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1245
    #dbg_value(i32 %inc104, !1120, !DIExpression(), !1121)
  br label %for.cond3, !dbg !1246, !llvm.loop !1247

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1249
    #dbg_value(i32 %c106.0, !1250, !DIExpression(), !1251)
  %cmp109 = icmp samesign ult i32 %c106.0, 1232, !dbg !1252
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1127

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1254
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1256
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1257
    #dbg_value(i32 %add113, !1250, !DIExpression(), !1251)
  br label %for.cond107, !dbg !1258, !llvm.loop !1259

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1261, !DIExpression(), !1265)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1265
    #dbg_value(i32 0, !1266, !DIExpression(), !1268)
  br label %for.cond116, !dbg !1269

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1270
    #dbg_value(i32 %i115.0, !1266, !DIExpression(), !1268)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1271
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1273

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1274

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1276
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1276
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1278
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1279
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1280
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1281
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1282
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1283
  %add125 = or disjoint i32 %mul124, 1, !dbg !1284
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1285
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1286
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1287
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1287
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1288
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1289
  %add130 = or disjoint i32 %mul129, 2, !dbg !1290
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1291
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1292
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1293
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1293
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1294
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1295
  %add135 = or disjoint i32 %mul134, 3, !dbg !1296
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1297
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1298
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1299
    #dbg_value(i32 %inc138, !1266, !DIExpression(), !1268)
  br label %for.cond116, !dbg !1300, !llvm.loop !1301

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1303
    #dbg_value(i32 %c140.0, !1304, !DIExpression(), !1305)
  %cmp142 = icmp samesign ult i32 %c140.0, 112, !dbg !1306
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1274

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1308

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1311

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 108, %for.cond144.preheader ], !dbg !1313
    #dbg_value(i32 %r.0, !1314, !DIExpression(), !1315)
  %exitcond11 = icmp ne i32 %r.0, 174, !dbg !1316
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1308

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1318
  %mul147 = mul nuw nsw i32 %div1, 112, !dbg !1320
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1321
  %rem = and i32 %r.0, 15, !dbg !1322
  %add149 = or disjoint i32 %add148, %rem, !dbg !1323
    #dbg_value(i32 %add149, !1324, !DIExpression(), !1325)
  %arrayidx150 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1326
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1326
  %and151 = and i64 %19, 1229782938247303441, !dbg !1327
    #dbg_value(i64 %and151, !1328, !DIExpression(), !1325)
  %shr153 = lshr i64 %19, 1, !dbg !1329
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1330
    #dbg_value(i64 %and154, !1331, !DIExpression(), !1325)
  %shr156 = lshr i64 %19, 2, !dbg !1332
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1333
    #dbg_value(i64 %and157, !1334, !DIExpression(), !1325)
  %arrayidx158 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1335
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1335
  %shr159 = lshr i64 %20, 3, !dbg !1336
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1337
    #dbg_value(i64 %and160, !1338, !DIExpression(), !1325)
    #dbg_value(i32 0, !1339, !DIExpression(), !1341)
  br label %for.cond161, !dbg !1342

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1343
    #dbg_value(i32 %t.0, !1339, !DIExpression(), !1341)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1344
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1346

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1347
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1349
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1349
  %conv = zext i8 %21 to i64, !dbg !1349
  %mul167 = mul i64 %and151, %conv, !dbg !1350
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1351
  %add169 = or disjoint i32 %mul168, 1, !dbg !1352
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1353
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1353
  %conv171 = zext i8 %22 to i64, !dbg !1353
  %mul172 = mul i64 %and154, %conv171, !dbg !1354
  %xor173 = xor i64 %mul167, %mul172, !dbg !1355
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1356
  %add175 = or disjoint i32 %mul174, 2, !dbg !1357
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1358
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1358
  %conv177 = zext i8 %23 to i64, !dbg !1358
  %mul178 = mul i64 %and157, %conv177, !dbg !1359
  %xor179 = xor i64 %xor173, %mul178, !dbg !1360
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1361
  %add181 = or disjoint i32 %mul180, 3, !dbg !1362
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1363
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1363
  %conv183 = zext i8 %24 to i64, !dbg !1363
  %mul184 = mul i64 %and160, %conv183, !dbg !1364
  %xor185 = xor i64 %xor179, %mul184, !dbg !1365
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1366
  %sub187 = add nsw i32 %add186, -108, !dbg !1367
  %div1882 = lshr i32 %sub187, 4, !dbg !1368
  %mul189 = mul i32 %div1882, 112, !dbg !1369
  %add190 = add i32 %mul189, %c140.0, !dbg !1370
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1371
  %sub192 = add nuw nsw i32 %add191, 4, !dbg !1372
  %rem193 = and i32 %sub192, 15, !dbg !1373
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1374
  %arrayidx195 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194, !dbg !1375
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1376
  %xor196 = xor i64 %25, %xor185, !dbg !1376
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1376
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1377
    #dbg_value(i32 %inc198, !1339, !DIExpression(), !1341)
  br label %for.cond161, !dbg !1378, !llvm.loop !1379

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1381
    #dbg_value(i32 %inc201, !1314, !DIExpression(), !1315)
  br label %for.cond144, !dbg !1382, !llvm.loop !1383

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1385
    #dbg_value(i32 %add204, !1304, !DIExpression(), !1305)
  br label %for.cond141, !dbg !1386, !llvm.loop !1387

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 108, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1389
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1389
    #dbg_value(i32 %r206.0, !1390, !DIExpression(), !1391)
  %cmp208 = icmp samesign ult i32 %r206.0, 108, !dbg !1392
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1311

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1394

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1397
    #dbg_value(i32 %c211.0, !1398, !DIExpression(), !1399)
  %cmp213 = icmp samesign ult i32 %c211.0, 110, !dbg !1400
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1394

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1402

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1405
    #dbg_value(i32 %i216.0, !1406, !DIExpression(), !1407)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1408
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1402

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 7, !dbg !1410
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1412
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1413
  %arrayidx226 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225, !dbg !1414
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1415
  %mul228 = mul nuw nsw i32 %add227, 111, !dbg !1416
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1417
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1418
  %cmp232 = icmp samesign ult i32 %c211.0, 94, !dbg !1419
  %sub234 = sub nsw i32 110, %c211.0, !dbg !1419
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1419
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #6, !dbg !1420
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1421
    #dbg_value(i32 %inc236, !1406, !DIExpression(), !1407)
  br label %for.cond217, !dbg !1422, !llvm.loop !1423

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1425
    #dbg_value(i32 %add239, !1398, !DIExpression(), !1399)
  br label %for.cond212, !dbg !1426, !llvm.loop !1427

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1429
    #dbg_value(i32 %add242, !1390, !DIExpression(), !1391)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1430
  br label %for.cond207, !dbg !1430, !llvm.loop !1431

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1433
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1434 {
entry:
    #dbg_value(ptr %a, !1437, !DIExpression(), !1438)
    #dbg_value(ptr %b, !1439, !DIExpression(), !1438)
    #dbg_value(ptr %c, !1440, !DIExpression(), !1438)
    #dbg_value(i32 10, !1441, !DIExpression(), !1438)
    #dbg_value(i32 108, !1442, !DIExpression(), !1438)
    #dbg_value(i32 1, !1443, !DIExpression(), !1438)
    #dbg_value(i32 0, !1444, !DIExpression(), !1446)
  br label %for.cond, !dbg !1447

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1448
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1437, !DIExpression(), !1438)
    #dbg_value(ptr %c.addr.0, !1440, !DIExpression(), !1438)
    #dbg_value(i32 %i.0, !1444, !DIExpression(), !1446)
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1449
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1451

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1452

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1455
    #dbg_value(i32 poison, !1456, !DIExpression(), !1457)
    #dbg_value(ptr %c.addr.1, !1440, !DIExpression(), !1438)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1452

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 10, i32 noundef 1) #6, !dbg !1458
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1461
    #dbg_value(i32 1, !1456, !DIExpression(), !1457)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1462
    #dbg_value(ptr %incdec.ptr, !1440, !DIExpression(), !1438)
  br label %for.cond1, !dbg !1463, !llvm.loop !1464

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1466
    #dbg_value(i32 %inc5, !1444, !DIExpression(), !1446)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 10, !dbg !1467
    #dbg_value(ptr %add.ptr6, !1437, !DIExpression(), !1438)
  br label %for.cond, !dbg !1468, !llvm.loop !1469

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1471
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1472 {
entry:
    #dbg_value(ptr %a, !1475, !DIExpression(), !1476)
    #dbg_value(ptr %b, !1477, !DIExpression(), !1476)
    #dbg_value(ptr %c, !1478, !DIExpression(), !1476)
    #dbg_value(i32 108, !1479, !DIExpression(), !1476)
    #dbg_value(i32 1, !1480, !DIExpression(), !1476)
    #dbg_value(i32 0, !1481, !DIExpression(), !1483)
  br label %for.cond, !dbg !1484

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1485
    #dbg_value(i32 %i.0, !1481, !DIExpression(), !1483)
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1486
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1488

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1489, !DIExpression(), !1492)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1493
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1496
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1497
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1498
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1499
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1500
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1501
    #dbg_value(i32 1, !1489, !DIExpression(), !1492)
    #dbg_value(i32 poison, !1489, !DIExpression(), !1492)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1502
    #dbg_value(i32 %inc12, !1481, !DIExpression(), !1483)
  br label %for.cond, !dbg !1503, !llvm.loop !1504

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1506
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1507 {
entry:
    #dbg_value(ptr %m, !1508, !DIExpression(), !1509)
    #dbg_value(ptr %menc, !1510, !DIExpression(), !1509)
    #dbg_value(i32 1298, !1511, !DIExpression(), !1509)
    #dbg_value(i32 0, !1512, !DIExpression(), !1509)
  br label %for.cond, !dbg !1513

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1515
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1508, !DIExpression(), !1509)
    #dbg_value(i32 %i.0, !1512, !DIExpression(), !1509)
  %exitcond = icmp ne i32 %i.0, 649, !dbg !1516
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1518

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1519
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1521
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1522
  %shl = shl i8 %1, 4, !dbg !1523
  %or = or i8 %shl, %0, !dbg !1524
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1525
  store i8 %or, ptr %arrayidx, align 1, !dbg !1526
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1527
    #dbg_value(i32 %inc, !1512, !DIExpression(), !1509)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1528
    #dbg_value(ptr %add.ptr3, !1508, !DIExpression(), !1509)
  br label %for.cond, !dbg !1529, !llvm.loop !1530

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1532
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1533 {
entry:
    #dbg_value(i8 %a, !1536, !DIExpression(), !1537)
    #dbg_value(i8 %b, !1538, !DIExpression(), !1537)
  %xor1 = xor i8 %a, %b, !dbg !1539
  ret i8 %xor1, !dbg !1540
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1541 {
entry:
    #dbg_value(ptr %a, !1544, !DIExpression(), !1545)
    #dbg_value(ptr %b, !1546, !DIExpression(), !1545)
    #dbg_value(i32 10, !1547, !DIExpression(), !1545)
    #dbg_value(i32 1, !1548, !DIExpression(), !1545)
    #dbg_value(i8 0, !1549, !DIExpression(), !1545)
    #dbg_value(i32 0, !1550, !DIExpression(), !1552)
  br label %for.cond, !dbg !1553

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1545
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1554
    #dbg_value(i32 %i.0, !1550, !DIExpression(), !1552)
    #dbg_value(ptr %b.addr.0, !1546, !DIExpression(), !1545)
    #dbg_value(i8 %ret.0, !1549, !DIExpression(), !1545)
  %exitcond = icmp ne i32 %i.0, 10, !dbg !1555
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1557

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1558
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1558
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1560
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1561
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1562
    #dbg_value(i8 %call1, !1549, !DIExpression(), !1545)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1563
    #dbg_value(i32 %inc, !1550, !DIExpression(), !1552)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1564
    #dbg_value(ptr %add.ptr, !1546, !DIExpression(), !1545)
  br label %for.cond, !dbg !1565, !llvm.loop !1566

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1545
  ret i8 %ret.0.lcssa, !dbg !1568
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1569 {
entry:
    #dbg_value(i8 %a, !1570, !DIExpression(), !1571)
    #dbg_value(i8 %b, !1572, !DIExpression(), !1571)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !1573
  %xor1 = xor i8 %a, %0, !dbg !1574
    #dbg_value(i8 %xor1, !1570, !DIExpression(), !1571)
  %1 = trunc i8 %xor1 to i1, !dbg !1575
    #dbg_value(i8 poison, !1576, !DIExpression(), !1571)
  %2 = and i8 %xor1, 2, !dbg !1577
  %mul9 = mul i8 %2, %b, !dbg !1578
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1575
  %xor11 = xor i8 %conv10, %mul9, !dbg !1579
    #dbg_value(i8 %xor11, !1576, !DIExpression(), !1571)
  %3 = and i8 %xor1, 4, !dbg !1580
  %mul16 = mul i8 %3, %b, !dbg !1581
  %xor18 = xor i8 %mul16, %xor11, !dbg !1582
    #dbg_value(i8 %xor18, !1576, !DIExpression(), !1571)
  %4 = and i8 %xor1, 8, !dbg !1583
  %mul23 = mul i8 %4, %b, !dbg !1584
  %xor25 = xor i8 %mul23, %xor18, !dbg !1585
    #dbg_value(i8 %xor25, !1576, !DIExpression(), !1571)
    #dbg_value(i8 %xor25, !1586, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1571)
  %5 = lshr i8 %xor25, 4, !dbg !1587
  %6 = lshr i8 %xor25, 3, !dbg !1588
  %7 = and i8 %6, 14, !dbg !1588
  %8 = xor i8 %5, %7, !dbg !1589
  %xor25.masked = and i8 %xor25, 15, !dbg !1590
  %9 = xor i8 %8, %xor25.masked, !dbg !1590
    #dbg_value(i8 %9, !1591, !DIExpression(), !1571)
  ret i8 %9, !dbg !1592
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1593, !DIExpression(), !1594)
    #dbg_value(i32 0, !1595, !DIExpression(), !1597)
  br label %for.cond, !dbg !1598

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1599
    #dbg_value(i32 %i.0, !1595, !DIExpression(), !1597)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1600
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1602

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1603

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1605
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1605
  %shr = lshr i64 %0, 4, !dbg !1607
  %add = or disjoint i32 %i.0, 1, !dbg !1608
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1609
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1609
  %xor = xor i64 %shr, %1, !dbg !1610
  %and = and i64 %xor, 1085102592571150095, !dbg !1611
    #dbg_value(i64 %and, !1612, !DIExpression(), !1613)
  %shl = shl nuw i64 %and, 4, !dbg !1614
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1615
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1616
  %xor3 = xor i64 %2, %shl, !dbg !1616
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1616
  %add4 = or disjoint i32 %i.0, 1, !dbg !1617
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1618
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1619
  %xor6 = xor i64 %3, %and, !dbg !1619
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1619
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1620
    #dbg_value(i32 %add7, !1595, !DIExpression(), !1597)
  br label %for.cond, !dbg !1621, !llvm.loop !1622

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1624
    #dbg_value(i32 %i8.0, !1625, !DIExpression(), !1626)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1627
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1603

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1629

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1631
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1631
  %shr13 = lshr i64 %4, 8, !dbg !1633
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1634
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1635
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1635
  %xor16 = xor i64 %shr13, %5, !dbg !1636
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1637
    #dbg_value(i64 %and17, !1638, !DIExpression(), !1639)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1640
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1641
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1641
  %shr20 = lshr i64 %6, 8, !dbg !1642
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1643
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1644
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1644
  %xor23 = xor i64 %shr20, %7, !dbg !1645
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1646
    #dbg_value(i64 %and24, !1647, !DIExpression(), !1639)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1648
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1649
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1650
  %xor27 = xor i64 %8, %shl25, !dbg !1650
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1650
  %shl28 = shl nuw i64 %and24, 8, !dbg !1651
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1652
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1653
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1654
  %xor31 = xor i64 %9, %shl28, !dbg !1654
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1654
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1655
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1656
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1657
  %xor34 = xor i64 %10, %and17, !dbg !1657
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1657
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1658
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1659
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1660
  %xor37 = xor i64 %11, %and24, !dbg !1660
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1660
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1661
    #dbg_value(i32 %add39, !1625, !DIExpression(), !1626)
  br label %for.cond9, !dbg !1662, !llvm.loop !1663

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1665
    #dbg_value(i32 %i41.0, !1666, !DIExpression(), !1667)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1668
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1629

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1670

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1672
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1672
  %shr47 = lshr i64 %12, 16, !dbg !1674
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1675
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1676
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1676
  %xor50 = xor i64 %shr47, %13, !dbg !1677
  %and51 = and i64 %xor50, 281470681808895, !dbg !1678
    #dbg_value(i64 %and51, !1679, !DIExpression(), !1680)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1681
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1682
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1682
  %shr55 = lshr i64 %14, 16, !dbg !1683
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1684
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1685
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1685
  %xor58 = xor i64 %shr55, %15, !dbg !1686
  %and59 = and i64 %xor58, 281470681808895, !dbg !1687
    #dbg_value(i64 %and59, !1688, !DIExpression(), !1680)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1689
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1690
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1691
  %xor62 = xor i64 %16, %shl60, !dbg !1691
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1691
  %shl63 = shl nuw i64 %and59, 16, !dbg !1692
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1693
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1694
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1695
  %xor66 = xor i64 %17, %shl63, !dbg !1695
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1695
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1696
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1697
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1698
  %xor69 = xor i64 %18, %and51, !dbg !1698
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1698
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1699
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1700
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1701
  %xor72 = xor i64 %19, %and59, !dbg !1701
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1701
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1702
    #dbg_value(i32 %inc, !1666, !DIExpression(), !1667)
  br label %for.cond42, !dbg !1703, !llvm.loop !1704

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1706
    #dbg_value(i32 %i75.0, !1707, !DIExpression(), !1708)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1709
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1670

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1711
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1711
  %shr81 = lshr i64 %20, 32, !dbg !1713
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1714
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1715
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1715
  %.masked = and i64 %21, 4294967295, !dbg !1716
  %and85 = xor i64 %shr81, %.masked, !dbg !1716
    #dbg_value(i64 %and85, !1717, !DIExpression(), !1718)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1719
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1720
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1721
  %xor88 = xor i64 %22, %shl86, !dbg !1721
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1721
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1722
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1723
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1724
  %xor91 = xor i64 %23, %and85, !dbg !1724
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1724
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1725
    #dbg_value(i32 %inc93, !1707, !DIExpression(), !1708)
  br label %for.cond76, !dbg !1726, !llvm.loop !1727

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1729
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 10, 12) %bs_mat_cols) unnamed_addr #0 !dbg !1730 {
entry:
    #dbg_value(i32 7, !1731, !DIExpression(), !1732)
    #dbg_value(ptr %mat, !1733, !DIExpression(), !1732)
    #dbg_value(ptr %bs_mat, !1734, !DIExpression(), !1732)
    #dbg_value(ptr %acc, !1735, !DIExpression(), !1732)
    #dbg_value(i32 11, !1736, !DIExpression(), !1732)
    #dbg_value(i32 108, !1737, !DIExpression(), !1732)
    #dbg_value(i32 %bs_mat_cols, !1738, !DIExpression(), !1732)
    #dbg_value(i32 0, !1739, !DIExpression(), !1741)
  br label %for.cond, !dbg !1742

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1743
    #dbg_value(i32 %r.0, !1739, !DIExpression(), !1741)
  %exitcond2 = icmp ne i32 %r.0, 11, !dbg !1744
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1746

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1747

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1750
    #dbg_value(i32 %c.0, !1751, !DIExpression(), !1752)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !1753
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1747

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1755

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1758
    #dbg_value(i32 %k.0, !1759, !DIExpression(), !1760)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1761
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1755

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1763
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1765
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !1766
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1766
  %mul8 = mul nuw nsw i32 %r.0, 108, !dbg !1767
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1768
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1768
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1768
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1769
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1770
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !1771
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1771
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #6, !dbg !1772
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1773
    #dbg_value(i32 %add14, !1759, !DIExpression(), !1760)
  br label %for.cond4, !dbg !1774, !llvm.loop !1775

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1777
    #dbg_value(i32 %inc, !1751, !DIExpression(), !1752)
  br label %for.cond1, !dbg !1778, !llvm.loop !1779

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1781
    #dbg_value(i32 %inc18, !1739, !DIExpression(), !1741)
  br label %for.cond, !dbg !1782, !llvm.loop !1783

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1785
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1786 {
entry:
    #dbg_value(ptr %p, !1787, !DIExpression(), !1788)
    #dbg_value(ptr %P1, !1789, !DIExpression(), !1788)
    #dbg_value(ptr %V, !1790, !DIExpression(), !1788)
    #dbg_value(ptr %acc, !1791, !DIExpression(), !1788)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 7, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 11, i32 noundef 1) #6, !dbg !1792
  ret void, !dbg !1793
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1794 {
entry:
    #dbg_value(i32 7, !1795, !DIExpression(), !1796)
    #dbg_value(ptr %bs_mat, !1797, !DIExpression(), !1796)
    #dbg_value(ptr %mat, !1798, !DIExpression(), !1796)
    #dbg_value(ptr %acc, !1799, !DIExpression(), !1796)
    #dbg_value(i32 108, !1800, !DIExpression(), !1796)
    #dbg_value(i32 108, !1801, !DIExpression(), !1796)
    #dbg_value(i32 11, !1802, !DIExpression(), !1796)
    #dbg_value(i32 1, !1803, !DIExpression(), !1796)
    #dbg_value(i32 0, !1804, !DIExpression(), !1796)
    #dbg_value(i32 0, !1805, !DIExpression(), !1807)
  br label %for.cond, !dbg !1808

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !1809
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1809
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1810
    #dbg_value(i32 %r.0, !1805, !DIExpression(), !1807)
    #dbg_value(i32 %bs_mat_entries_used.0, !1804, !DIExpression(), !1796)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !1811
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1813

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1814
  br label %for.cond1, !dbg !1814

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1796
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1817
    #dbg_value(i32 %c.0, !1818, !DIExpression(), !1819)
    #dbg_value(i32 %bs_mat_entries_used.1, !1804, !DIExpression(), !1796)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1820
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1814

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1822

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1825
    #dbg_value(i32 %k.0, !1826, !DIExpression(), !1827)
  %exitcond = icmp ne i32 %k.0, 11, !dbg !1828
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1822

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !1830
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1830
  %mul8 = mul nuw nsw i32 %k.0, 108, !dbg !1832
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1833
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1833
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1833
  %mul9 = mul nuw nsw i32 %r.0, 11, !dbg !1834
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1835
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !1836
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1836
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #6, !dbg !1837
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1838
    #dbg_value(i32 %add13, !1826, !DIExpression(), !1827)
  br label %for.cond4, !dbg !1839, !llvm.loop !1840

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1804, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1796)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1842
    #dbg_value(i32 %add14, !1804, !DIExpression(), !1796)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1843
    #dbg_value(i32 %inc, !1818, !DIExpression(), !1819)
  br label %for.cond1, !dbg !1844, !llvm.loop !1845

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1796
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1847
    #dbg_value(i32 %inc18, !1805, !DIExpression(), !1807)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1848
  br label %for.cond, !dbg !1848, !llvm.loop !1849

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1851
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1852 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1853, !DIExpression(), !1854)
    #dbg_value(ptr %sm, !1855, !DIExpression(), !1854)
    #dbg_value(ptr %smlen, !1856, !DIExpression(), !1854)
    #dbg_value(ptr %m, !1857, !DIExpression(), !1854)
    #dbg_value(i32 %mlen, !1858, !DIExpression(), !1854)
    #dbg_value(ptr %csk, !1859, !DIExpression(), !1854)
    #dbg_value(i32 0, !1860, !DIExpression(), !1854)
    #dbg_value(i32 681, !1861, !DIExpression(), !1854)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1862
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1863
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1864
    #dbg_value(ptr %siglen, !1865, !DIExpression(DW_OP_deref), !1854)
  %call2 = call i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1866
    #dbg_value(i32 %call2, !1860, !DIExpression(), !1854)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1867
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1865, !DIExpression(), !1854)
  %cmp3.not = icmp eq i32 %0, 681
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1869
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1869

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1870
    #dbg_value(i32 %1, !1865, !DIExpression(), !1854)
  %add = add i32 %1, %mlen, !dbg !1872
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1873
  br label %err, !dbg !1874

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1875
    #dbg_value(i32 %2, !1865, !DIExpression(), !1854)
  %add5 = add i32 %2, %mlen, !dbg !1876
  store i32 %add5, ptr %smlen, align 4, !dbg !1877
  br label %err, !dbg !1878

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1879, !1880)
  ret i32 %call2, !dbg !1881
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1882 {
entry:
    #dbg_value(ptr %p, !1883, !DIExpression(), !1884)
    #dbg_value(ptr %m, !1885, !DIExpression(), !1884)
    #dbg_value(ptr %mlen, !1886, !DIExpression(), !1884)
    #dbg_value(ptr %sm, !1887, !DIExpression(), !1884)
    #dbg_value(i32 %smlen, !1888, !DIExpression(), !1884)
    #dbg_value(ptr %pk, !1889, !DIExpression(), !1884)
    #dbg_value(i32 681, !1890, !DIExpression(), !1884)
  %cmp = icmp ult i32 %smlen, 681, !dbg !1891
  br i1 %cmp, label %return, label %if.end, !dbg !1891

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1893
  %sub = add i32 %smlen, -681, !dbg !1894
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1895
    #dbg_value(i32 %call, !1896, !DIExpression(), !1884)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1897
  br i1 %cmp1, label %if.then2, label %return, !dbg !1897

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -681, !dbg !1899
  store i32 %sub3, ptr %mlen, align 4, !dbg !1901
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1902
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1903
  br label %return, !dbg !1904

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1884
  ret i32 %retval.0, !dbg !1905
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1906 {
entry:
  %tEnc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [216 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %pk = alloca [49147 x i64], align 8
  %tmp = alloca [80 x i8], align 1
    #dbg_value(ptr %p, !1909, !DIExpression(), !1910)
    #dbg_value(ptr %m, !1911, !DIExpression(), !1910)
    #dbg_value(i32 %mlen, !1912, !DIExpression(), !1910)
    #dbg_value(ptr %sig, !1913, !DIExpression(), !1910)
    #dbg_value(ptr %cpk, !1914, !DIExpression(), !1910)
    #dbg_declare(ptr %tEnc, !1915, !DIExpression(), !1916)
    #dbg_declare(ptr %t, !1917, !DIExpression(), !1918)
    #dbg_declare(ptr %y, !1919, !DIExpression(), !1923)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(216) %y, i8 0, i32 216, i1 false), !dbg !1923
    #dbg_declare(ptr %s, !1924, !DIExpression(), !1925)
    #dbg_declare(ptr %pk, !1926, !DIExpression(), !1927)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(393176) %pk, i8 0, i32 393176, i1 false), !dbg !1927
    #dbg_declare(ptr %tmp, !1928, !DIExpression(), !1932)
    #dbg_value(i32 108, !1933, !DIExpression(), !1910)
    #dbg_value(i32 118, !1934, !DIExpression(), !1910)
    #dbg_value(i32 11, !1935, !DIExpression(), !1910)
    #dbg_value(i32 54, !1936, !DIExpression(), !1910)
    #dbg_value(i32 681, !1937, !DIExpression(), !1910)
    #dbg_value(i32 48, !1938, !DIExpression(), !1910)
    #dbg_value(i32 32, !1939, !DIExpression(), !1910)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1940
    #dbg_value(i32 0, !1941, !DIExpression(), !1910)
    #dbg_value(ptr %pk, !1942, !DIExpression(), !1910)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 329616, !dbg !1943
    #dbg_value(ptr %add.ptr, !1944, !DIExpression(), !1910)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1945
    #dbg_value(ptr %add.ptr2, !1946, !DIExpression(), !1910)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1947
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !1948
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !1949
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 32) #8, !dbg !1950
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !1951
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !1952
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1298) #6, !dbg !1953
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1954
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 108) #8, !dbg !1955
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1957
  %. = zext i1 %cmp21 to i32, !dbg !1910
  ret i32 %., !dbg !1958
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1959 {
entry:
    #dbg_value(ptr %p, !1960, !DIExpression(), !1961)
    #dbg_value(ptr %cpk, !1962, !DIExpression(), !1961)
    #dbg_value(ptr %pk, !1963, !DIExpression(), !1961)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1964
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1965
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1966
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 55, i32 noundef 108) #6, !dbg !1967
  ret i32 0, !dbg !1968
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !1969 {
entry:
  %SPS = alloca [847 x i64], align 8
  %zero = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !1972, !DIExpression(), !1973)
    #dbg_value(ptr %s, !1974, !DIExpression(), !1973)
    #dbg_value(ptr %P1, !1975, !DIExpression(), !1973)
    #dbg_value(ptr %P2, !1976, !DIExpression(), !1973)
    #dbg_value(ptr %P3, !1977, !DIExpression(), !1973)
    #dbg_value(ptr %eval, !1978, !DIExpression(), !1973)
    #dbg_declare(ptr %SPS, !1979, !DIExpression(), !1983)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6776) %SPS, i8 0, i32 6776, i1 false), !dbg !1983
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1984
    #dbg_declare(ptr %zero, !1985, !DIExpression(), !1986)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(108) %zero, i8 0, i32 108, i1 false), !dbg !1986
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1987
  ret void, !dbg !1988
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !1989 {
entry:
  %PS = alloca [9086 x i64], align 8
    #dbg_value(ptr %p, !1992, !DIExpression(), !1993)
    #dbg_value(ptr %P1, !1994, !DIExpression(), !1993)
    #dbg_value(ptr %P2, !1995, !DIExpression(), !1993)
    #dbg_value(ptr %P3, !1996, !DIExpression(), !1993)
    #dbg_value(ptr %s, !1997, !DIExpression(), !1993)
    #dbg_value(ptr %SPS, !1998, !DIExpression(), !1993)
    #dbg_declare(ptr %PS, !1999, !DIExpression(), !2003)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72688) %PS, i8 0, i32 72688, i1 false), !dbg !2003
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 11, ptr noundef nonnull %PS) #6, !dbg !2004
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 108, i32 noundef 11, i32 noundef 118, ptr noundef %SPS) #6, !dbg !2005
  ret void, !dbg !2006
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2007 {
entry:
  %accumulator = alloca [145376 x i64], align 8
    #dbg_value(ptr %P1, !2010, !DIExpression(), !2011)
    #dbg_value(ptr %P2, !2012, !DIExpression(), !2011)
    #dbg_value(ptr %P3, !2013, !DIExpression(), !2011)
    #dbg_value(ptr %S, !2014, !DIExpression(), !2011)
    #dbg_value(i32 108, !2015, !DIExpression(), !2011)
    #dbg_value(i32 108, !2016, !DIExpression(), !2011)
    #dbg_value(i32 10, !2017, !DIExpression(), !2011)
    #dbg_value(i32 11, !2018, !DIExpression(), !2011)
    #dbg_value(ptr %PS, !2019, !DIExpression(), !2011)
    #dbg_value(i32 118, !2020, !DIExpression(), !2011)
    #dbg_value(i32 7, !2021, !DIExpression(), !2011)
    #dbg_declare(ptr %accumulator, !2022, !DIExpression(), !2026)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(1163008) %accumulator, i8 0, i32 1163008, i1 false), !dbg !2026
    #dbg_value(i32 0, !2027, !DIExpression(), !2011)
    #dbg_value(i32 0, !2028, !DIExpression(), !2030)
  br label %for.cond, !dbg !2031

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 108, %entry ], !dbg !2032
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2032
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2033
    #dbg_value(i32 %row.0, !2028, !DIExpression(), !2030)
    #dbg_value(i32 %P1_used.0, !2027, !DIExpression(), !2011)
  %exitcond4 = icmp ne i32 %row.0, 108, !dbg !2034
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2036

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2037
  br label %for.cond2, !dbg !2037

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2040

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2011
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2042
    #dbg_value(i32 %j.0, !2043, !DIExpression(), !2044)
    #dbg_value(i32 %P1_used.1, !2027, !DIExpression(), !2011)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2045
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2037

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2011
  br label %for.cond21, !dbg !2047

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2049

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2052
    #dbg_value(i32 %col.0, !2053, !DIExpression(), !2054)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2055
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2049

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 56, !dbg !2057
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2057
  %mul8 = mul nuw nsw i32 %row.0, 11, !dbg !2059
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2060
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2061
  %mul11 = mul nuw nsw i32 %col.0, 118, !dbg !2062
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2063
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2063
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2063
  %conv = zext i8 %2 to i32, !dbg !2063
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2064
  %add.ptr15.idx = mul nuw nsw i32 %add13, 56, !dbg !2065
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2065
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2066
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2067
    #dbg_value(i32 %inc, !2053, !DIExpression(), !2054)
  br label %for.cond5, !dbg !2068, !llvm.loop !2069

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2027, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2011)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2071
    #dbg_value(i32 %inc16, !2027, !DIExpression(), !2011)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2072
    #dbg_value(i32 %inc18, !2043, !DIExpression(), !2044)
  br label %for.cond2, !dbg !2073, !llvm.loop !2074

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2076
    #dbg_value(i32 %j20.0, !2077, !DIExpression(), !2078)
  %exitcond3 = icmp ne i32 %j20.0, 10, !dbg !2079
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2047

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2081

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2084
    #dbg_value(i32 %col25.0, !2085, !DIExpression(), !2086)
  %exitcond2 = icmp ne i32 %col25.0, 11, !dbg !2087
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2081

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 10, !dbg !2089
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2091
  %add.ptr33.idx = mul nuw nsw i32 %add31, 56, !dbg !2092
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2092
  %mul35 = mul nuw nsw i32 %row.0, 11, !dbg !2093
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2094
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2095
  %mul38 = mul nuw nsw i32 %col25.0, 118, !dbg !2096
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2097
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2097
  %arrayidx41 = getelementptr i8, ptr %4, i32 108, !dbg !2097
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2097
  %conv42 = zext i8 %5 to i32, !dbg !2097
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2098
  %add.ptr45.idx = mul nuw nsw i32 %add43, 56, !dbg !2099
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2099
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2100
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2101
    #dbg_value(i32 %inc47, !2085, !DIExpression(), !2086)
  br label %for.cond26, !dbg !2102, !llvm.loop !2103

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2105
    #dbg_value(i32 %inc50, !2077, !DIExpression(), !2078)
  br label %for.cond21, !dbg !2106, !llvm.loop !2107

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2109
    #dbg_value(i32 %inc53, !2028, !DIExpression(), !2030)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2110
  br label %for.cond, !dbg !2110, !llvm.loop !2111

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 10, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2113
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2113
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 108, %for.cond56.preheader ], !dbg !2114
    #dbg_value(i32 %row55.0, !2115, !DIExpression(), !2116)
    #dbg_value(i32 %P3_used.0, !2117, !DIExpression(), !2011)
  %exitcond9 = icmp ne i32 %row55.0, 118, !dbg !2118
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2040

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2120
  br label %for.cond61, !dbg !2120

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2123

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2011
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2124
    #dbg_value(i32 %j60.0, !2125, !DIExpression(), !2126)
    #dbg_value(i32 %P3_used.1, !2117, !DIExpression(), !2011)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2127
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2120

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2129

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2132
    #dbg_value(i32 %col65.0, !2133, !DIExpression(), !2134)
  %exitcond5 = icmp ne i32 %col65.0, 11, !dbg !2135
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2129

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 56, !dbg !2137
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2137
  %mul73 = mul nuw nsw i32 %row55.0, 11, !dbg !2139
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2140
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2141
  %mul76 = mul nuw nsw i32 %col65.0, 118, !dbg !2142
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2143
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2143
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2143
  %conv79 = zext i8 %8 to i32, !dbg !2143
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2144
  %add.ptr82.idx = mul nuw nsw i32 %add80, 56, !dbg !2145
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2145
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2146
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2147
    #dbg_value(i32 %inc84, !2133, !DIExpression(), !2134)
  br label %for.cond66, !dbg !2148, !llvm.loop !2149

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2117, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2011)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2151
    #dbg_value(i32 %inc86, !2117, !DIExpression(), !2011)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2152
    #dbg_value(i32 %inc88, !2125, !DIExpression(), !2126)
  br label %for.cond61, !dbg !2153, !llvm.loop !2154

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2011
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2156
    #dbg_value(i32 %inc91, !2115, !DIExpression(), !2116)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2157
  br label %for.cond56, !dbg !2157, !llvm.loop !2158

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2011
    #dbg_value(i32 %i.0, !2160, !DIExpression(), !2011)
  %exitcond10 = icmp ne i32 %i.0, 1298, !dbg !2161
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2123

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 896, !dbg !2162
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2162
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 56, !dbg !2164
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2164
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2165
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2166
    #dbg_value(i32 %inc102, !2160, !DIExpression(), !2011)
  br label %while.cond, !dbg !2123, !llvm.loop !2167

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2169
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2170 {
entry:
  %accumulator = alloca [13552 x i64], align 8
    #dbg_value(ptr %PS, !2173, !DIExpression(), !2174)
    #dbg_value(ptr %S, !2175, !DIExpression(), !2174)
    #dbg_value(i32 108, !2176, !DIExpression(), !2174)
    #dbg_value(i32 11, !2177, !DIExpression(), !2174)
    #dbg_value(i32 118, !2178, !DIExpression(), !2174)
    #dbg_value(ptr %SPS, !2179, !DIExpression(), !2174)
    #dbg_declare(ptr %accumulator, !2180, !DIExpression(), !2184)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(108416) %accumulator, i8 0, i32 108416, i1 false), !dbg !2184
    #dbg_value(i32 7, !2185, !DIExpression(), !2174)
    #dbg_value(i32 0, !2186, !DIExpression(), !2188)
  br label %for.cond, !dbg !2189

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2190
    #dbg_value(i32 %row.0, !2186, !DIExpression(), !2188)
  %exitcond2 = icmp ne i32 %row.0, 11, !dbg !2191
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2193

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2194

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2197

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2198
    #dbg_value(i32 %j.0, !2199, !DIExpression(), !2200)
  %exitcond1 = icmp ne i32 %j.0, 118, !dbg !2201
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2194

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2203

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2206
    #dbg_value(i32 %col.0, !2207, !DIExpression(), !2208)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2209
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2203

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 11, !dbg !2211
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2213
  %add.ptr.idx = mul nuw nsw i32 %add7, 56, !dbg !2214
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2214
  %mul9 = mul nuw nsw i32 %row.0, 11, !dbg !2215
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2216
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2217
  %mul12 = mul nuw nsw i32 %row.0, 118, !dbg !2218
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2219
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2219
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2219
  %conv = zext i8 %1 to i32, !dbg !2219
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2220
  %add.ptr16.idx = mul nuw nsw i32 %add14, 56, !dbg !2221
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2221
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2222
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2223
    #dbg_value(i32 %add17, !2207, !DIExpression(), !2208)
  br label %for.cond4, !dbg !2224, !llvm.loop !2225

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2227
    #dbg_value(i32 %inc, !2199, !DIExpression(), !2200)
  br label %for.cond1, !dbg !2228, !llvm.loop !2229

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2231
    #dbg_value(i32 %inc21, !2186, !DIExpression(), !2188)
  br label %for.cond, !dbg !2232, !llvm.loop !2233

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2174
    #dbg_value(i32 %i.0, !2235, !DIExpression(), !2174)
  %exitcond3 = icmp ne i32 %i.0, 121, !dbg !2236
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2197

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 896, !dbg !2237
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2237
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 56, !dbg !2239
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2239
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2240
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2241
    #dbg_value(i32 %inc32, !2235, !DIExpression(), !2174)
  br label %while.cond, !dbg !2197, !llvm.loop !2242

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2244
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2245 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2248, !DIExpression(), !2249)
    #dbg_value(ptr %in, !2250, !DIExpression(), !2249)
    #dbg_value(ptr %acc, !2251, !DIExpression(), !2249)
    #dbg_value(i32 0, !2252, !DIExpression(), !2254)
  br label %for.cond, !dbg !2255

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2256
    #dbg_value(i32 %i.0, !2252, !DIExpression(), !2254)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2257
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2259

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2260
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2260
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2262
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2263
  %xor = xor i64 %1, %0, !dbg !2263
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2263
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2264
    #dbg_value(i32 %inc, !2252, !DIExpression(), !2254)
  br label %for.cond, !dbg !2265, !llvm.loop !2266

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2268
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2269 {
entry:
    #dbg_value(i32 7, !2272, !DIExpression(), !2273)
    #dbg_value(ptr %bins, !2274, !DIExpression(), !2273)
    #dbg_value(ptr %out, !2275, !DIExpression(), !2273)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2276
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2277
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2278
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 616, !dbg !2279
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2280
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2281
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2282
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2283
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2284
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2285
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2286
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2287
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2288
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2289
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2290
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2291
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2292
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2293
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2294
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2295
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2296
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2297
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2298
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2299
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2300
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2301
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2302
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2303
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2304
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2305
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2306
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2307
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2308
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2309
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2310
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2311
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2312
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2313
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2314
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2315
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2316
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2317
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2318
  call fastcc void @m_vec_copy(i32 noundef 7, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2319
  ret void, !dbg !2320
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2321 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2322, !DIExpression(), !2323)
    #dbg_value(ptr %in, !2324, !DIExpression(), !2323)
    #dbg_value(ptr %acc, !2325, !DIExpression(), !2323)
    #dbg_value(i64 1229782938247303441, !2326, !DIExpression(), !2323)
    #dbg_value(i32 0, !2327, !DIExpression(), !2329)
  br label %for.cond, !dbg !2330

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2331
    #dbg_value(i32 %i.0, !2327, !DIExpression(), !2329)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2332
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2334

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2335
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2335
  %and = and i64 %0, 1229782938247303441, !dbg !2337
    #dbg_value(i64 %and, !2338, !DIExpression(), !2339)
  %xor = lshr i64 %0, 1, !dbg !2340
  %shr = and i64 %xor, 8608480567731124087, !dbg !2340
  %mul = mul nuw i64 %and, 9, !dbg !2341
  %xor2 = xor i64 %shr, %mul, !dbg !2342
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
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2350 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2351, !DIExpression(), !2352)
    #dbg_value(ptr %in, !2353, !DIExpression(), !2352)
    #dbg_value(ptr %acc, !2354, !DIExpression(), !2352)
    #dbg_value(i64 -8608480567731124088, !2355, !DIExpression(), !2352)
    #dbg_value(i32 0, !2356, !DIExpression(), !2358)
  br label %for.cond, !dbg !2359

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2360
    #dbg_value(i32 %i.0, !2356, !DIExpression(), !2358)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2361
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2363

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2364
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2364
    #dbg_value(i64 %0, !2366, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2367)
  %xor = shl i64 %0, 1, !dbg !2368
  %shl = and i64 %xor, -1229782938247303442, !dbg !2368
  %and = lshr i64 %0, 3, !dbg !2369
  %shr = and i64 %and, 1229782938247303441, !dbg !2369
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2370
  %xor2 = xor i64 %shl, %mul, !dbg !2371
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2372
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2373
  %xor4 = xor i64 %1, %xor2, !dbg !2373
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2373
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2374
    #dbg_value(i32 %inc, !2356, !DIExpression(), !2358)
  br label %for.cond, !dbg !2375, !llvm.loop !2376

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2378
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2379 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2380, !DIExpression(), !2381)
    #dbg_value(ptr %in, !2382, !DIExpression(), !2381)
    #dbg_value(ptr %out, !2383, !DIExpression(), !2381)
    #dbg_value(i32 0, !2384, !DIExpression(), !2386)
  br label %for.cond, !dbg !2387

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2388
    #dbg_value(i32 %i.0, !2384, !DIExpression(), !2386)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2389
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2391

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2392
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2392
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2394
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2395
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2396
    #dbg_value(i32 %inc, !2384, !DIExpression(), !2386)
  br label %for.cond, !dbg !2397, !llvm.loop !2398

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2400
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2401 {
entry:
    #dbg_value(ptr %p, !2432, !DIExpression(), !2433)
    #dbg_value(ptr %in, !2434, !DIExpression(), !2433)
    #dbg_value(ptr %out, !2435, !DIExpression(), !2433)
    #dbg_value(i32 %size, !2436, !DIExpression(), !2433)
    #dbg_value(i32 7, !2437, !DIExpression(), !2433)
    #dbg_value(i32 0, !2438, !DIExpression(), !2433)
    #dbg_value(i32 0, !2439, !DIExpression(), !2441)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2442
  br label %for.cond, !dbg !2442

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2443
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2443
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2444
    #dbg_value(i32 %r.0, !2439, !DIExpression(), !2441)
    #dbg_value(i32 %m_vecs_stored.0, !2438, !DIExpression(), !2433)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2445
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2447

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2448
  br label %for.cond1, !dbg !2448

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2433
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2451
    #dbg_value(i32 %c.0, !2452, !DIExpression(), !2453)
    #dbg_value(i32 %m_vecs_stored.1, !2438, !DIExpression(), !2433)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2454
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2448

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2456
  %add = add nsw i32 %mul, %c.0, !dbg !2458
  %add.ptr.idx = mul nsw i32 %add, 56, !dbg !2459
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2459
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2460
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2460
  call fastcc void @m_vec_copy.17(i32 noundef 7, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2461
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2462
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2462

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2464
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2466
  %add.ptr11.idx = mul nsw i32 %add9, 56, !dbg !2467
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2467
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2468
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2468
  call fastcc void @m_vec_add.18(i32 noundef 7, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2469
  br label %for.inc, !dbg !2470

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2438, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2433)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2471
    #dbg_value(i32 %inc, !2438, !DIExpression(), !2433)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2472
    #dbg_value(i32 %inc14, !2452, !DIExpression(), !2453)
  br label %for.cond1, !dbg !2473, !llvm.loop !2474

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2433
  %inc16 = add nuw i32 %r.0, 1, !dbg !2476
    #dbg_value(i32 %inc16, !2439, !DIExpression(), !2441)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2477
  br label %for.cond, !dbg !2477, !llvm.loop !2478

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2480
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2481 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2482, !DIExpression(), !2483)
    #dbg_value(ptr %in, !2484, !DIExpression(), !2483)
    #dbg_value(ptr %out, !2485, !DIExpression(), !2483)
    #dbg_value(i32 0, !2486, !DIExpression(), !2488)
  br label %for.cond, !dbg !2489

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2490
    #dbg_value(i32 %i.0, !2486, !DIExpression(), !2488)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2491
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2493

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2494
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2494
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2496
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2497
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2498
    #dbg_value(i32 %inc, !2486, !DIExpression(), !2488)
  br label %for.cond, !dbg !2499, !llvm.loop !2500

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2502
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2503 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2504, !DIExpression(), !2505)
    #dbg_value(ptr %in, !2506, !DIExpression(), !2505)
    #dbg_value(ptr %acc, !2507, !DIExpression(), !2505)
    #dbg_value(i32 0, !2508, !DIExpression(), !2510)
  br label %for.cond, !dbg !2511

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2512
    #dbg_value(i32 %i.0, !2508, !DIExpression(), !2510)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2513
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2515

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2516
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2516
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2518
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2519
  %xor = xor i64 %1, %0, !dbg !2519
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2519
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2520
    #dbg_value(i32 %inc, !2508, !DIExpression(), !2510)
  br label %for.cond, !dbg !2521, !llvm.loop !2522

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2524
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2525 {
entry:
  %Ar = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2528, !DIExpression(), !2529)
    #dbg_value(ptr %A, !2530, !DIExpression(), !2529)
    #dbg_value(ptr %y, !2531, !DIExpression(), !2529)
    #dbg_value(ptr %r, !2532, !DIExpression(), !2529)
    #dbg_value(ptr %x, !2533, !DIExpression(), !2529)
    #dbg_value(i32 %k, !2534, !DIExpression(), !2529)
    #dbg_value(i32 %o, !2535, !DIExpression(), !2529)
    #dbg_value(i32 %m, !2536, !DIExpression(), !2529)
    #dbg_value(i32 %A_cols, !2537, !DIExpression(), !2529)
    #dbg_value(i32 0, !2538, !DIExpression(), !2540)
  %0 = mul nsw i32 %o, %k, !dbg !2541
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2541
  br label %for.cond, !dbg !2541

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2542
    #dbg_value(i32 %i.0, !2538, !DIExpression(), !2540)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2543
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2545

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2546
  br label %for.cond3, !dbg !2546

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2548
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2548
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2550
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2551
  %inc = add nuw i32 %i.0, 1, !dbg !2552
    #dbg_value(i32 %inc, !2538, !DIExpression(), !2540)
  br label %for.cond, !dbg !2553, !llvm.loop !2554

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2556
    #dbg_value(i32 %i2.0, !2557, !DIExpression(), !2558)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2559
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2546

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2561
  %mul7 = mul nsw i32 %k, %o, !dbg !2563
  %add = add nsw i32 %mul7, 1, !dbg !2564
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2565
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2566
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2566
  store i8 0, ptr %arrayidx10, align 1, !dbg !2567
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2568
    #dbg_value(i32 %inc12, !2557, !DIExpression(), !2558)
  br label %for.cond3, !dbg !2569, !llvm.loop !2570

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2572
  %add15 = add nsw i32 %mul14, 1, !dbg !2573
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2574
    #dbg_value(i32 0, !2575, !DIExpression(), !2577)
  br label %for.cond17, !dbg !2578

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2579
    #dbg_value(i32 %i16.0, !2575, !DIExpression(), !2577)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2580
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2582

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2583
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2583
  %arrayidx21 = getelementptr inbounds nuw [108 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2585
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2585
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2586
  %mul22 = mul nsw i32 %k, %o, !dbg !2587
  %mul23 = mul nsw i32 %k, %o, !dbg !2588
  %add24 = add nsw i32 %mul23, 1, !dbg !2589
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2590
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2591
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2591
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2592
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2593
    #dbg_value(i32 %inc29, !2575, !DIExpression(), !2577)
  br label %for.cond17, !dbg !2594, !llvm.loop !2595

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2597
  %add32 = add nsw i32 %mul31, 1, !dbg !2598
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2599
    #dbg_value(i8 0, !2600, !DIExpression(), !2529)
    #dbg_value(i32 0, !2601, !DIExpression(), !2603)
  %6 = add i32 %A_cols, -1, !dbg !2604
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2604
  br label %for.cond34, !dbg !2604

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2529
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2605
    #dbg_value(i32 %i33.0, !2601, !DIExpression(), !2603)
    #dbg_value(i8 %full_rank.0, !2600, !DIExpression(), !2529)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2606
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2608

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2529)
  %sub37 = add nsw i32 %m, -1, !dbg !2609
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2611
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2612
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2612
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2612
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2529)
  %or12 = or i8 %full_rank.0, %8, !dbg !2613
    #dbg_value(i8 %or12, !2600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2529)
    #dbg_value(i8 %or12, !2600, !DIExpression(), !2529)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2614
    #dbg_value(i32 %inc44, !2601, !DIExpression(), !2603)
  br label %for.cond34, !dbg !2615, !llvm.loop !2616

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2529
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2618
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2618

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2620

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2620, !llvm.loop !2622

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2624
    #dbg_value(i32 %row.0, !2625, !DIExpression(), !2626)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2627
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2620

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2629, !DIExpression(), !2529)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2630
  %div = sdiv i32 32, %sub54, !dbg !2630
  %add55 = add nsw i32 %row.0, %div, !dbg !2630
  %mul56 = mul nsw i32 %k, %o, !dbg !2630
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2630
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2630

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2630
  %div60 = sdiv i32 32, %sub59, !dbg !2630
  %add61 = add nsw i32 %row.0, %div60, !dbg !2630
  br label %cond.end, !dbg !2630

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2630
  br label %cond.end, !dbg !2630

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2630
    #dbg_value(i32 %cond, !2632, !DIExpression(), !2529)
    #dbg_value(i32 %row.0, !2633, !DIExpression(), !2635)
  br label %for.cond63, !dbg !2636

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2637
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2638
    #dbg_value(i32 %col.0, !2633, !DIExpression(), !2635)
    #dbg_value(i8 %finished.0, !2629, !DIExpression(), !2529)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2639
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2641

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2642
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2644
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2644
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2644
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2645
  %not = xor i8 %finished.0, -1, !dbg !2646
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2647, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2529)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2648
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2649
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2649
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2649
  %13 = and i8 %12, %not, !dbg !2650
  %and801 = and i8 %13, %call70, !dbg !2650
    #dbg_value(i8 %and801, !2651, !DIExpression(), !2652)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2653
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2654
  %xor2 = xor i8 %14, %and801, !dbg !2654
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2654
    #dbg_value(i32 0, !2655, !DIExpression(), !2657)
  br label %for.cond87, !dbg !2658

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2659
    #dbg_value(i32 %i86.0, !2655, !DIExpression(), !2657)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2660
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2662

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2663
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2665
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2665
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2665
  %conv94 = zext i8 %16 to i64, !dbg !2666
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2667
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2668
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2669
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2669
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2669
  %conv99 = zext i8 %18 to i64, !dbg !2670
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2671
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2672
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2673
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2674
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2675
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2675
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2675
  %conv106 = zext i8 %20 to i64, !dbg !2676
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2677
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2678
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2679
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2680
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2681
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2681
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2681
  %conv113 = zext i8 %22 to i64, !dbg !2682
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2683
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2684
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2685
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2686
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2687
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2687
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2687
  %conv120 = zext i8 %24 to i64, !dbg !2688
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2689
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2690
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2691
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2692
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2693
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2693
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2693
  %conv127 = zext i8 %26 to i64, !dbg !2694
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2695
  %xor129 = xor i64 %xor122, %shl128, !dbg !2696
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2697
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2698
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2699
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2699
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2699
  %conv134 = zext i8 %28 to i64, !dbg !2700
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2701
  %xor136 = xor i64 %xor129, %shl135, !dbg !2702
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2703
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2704
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2705
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2705
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2705
  %conv141 = zext i8 %30 to i64, !dbg !2706
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2707
  %xor143 = xor i64 %xor136, %shl142, !dbg !2708
    #dbg_value(i64 %xor143, !2709, !DIExpression(), !2710)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2711
    #dbg_value(i64 %call144, !2709, !DIExpression(), !2710)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2712
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2712
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2713
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2713
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2714
  %33 = trunc i64 %call144 to i8, !dbg !2714
  %34 = and i8 %33, 15, !dbg !2714
  %conv152 = xor i8 %34, %32, !dbg !2714
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2714
  %shr = lshr i64 %call144, 8, !dbg !2715
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2716
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2716
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2717
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2717
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2718
  %37 = trunc i64 %shr to i8, !dbg !2718
  %38 = and i8 %37, 15, !dbg !2718
  %conv161 = xor i8 %38, %36, !dbg !2718
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2718
  %shr162 = lshr i64 %call144, 16, !dbg !2719
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2720
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2720
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2721
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2721
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2722
  %41 = trunc i64 %shr162 to i8, !dbg !2722
  %42 = and i8 %41, 15, !dbg !2722
  %conv171 = xor i8 %42, %40, !dbg !2722
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2722
  %shr172 = lshr i64 %call144, 24, !dbg !2723
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2724
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2724
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2725
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2725
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2726
  %45 = trunc i64 %shr172 to i8, !dbg !2726
  %46 = and i8 %45, 15, !dbg !2726
  %conv181 = xor i8 %46, %44, !dbg !2726
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2726
  %shr182 = lshr i64 %call144, 32, !dbg !2727
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2728
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2728
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2729
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2729
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2730
  %49 = trunc i64 %shr182 to i8, !dbg !2730
  %50 = and i8 %49, 15, !dbg !2730
  %conv191 = xor i8 %50, %48, !dbg !2730
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2730
  %shr192 = lshr i64 %call144, 40, !dbg !2731
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2732
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2732
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2733
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2733
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2734
  %53 = trunc i64 %shr192 to i8, !dbg !2734
  %54 = and i8 %53, 15, !dbg !2734
  %conv201 = xor i8 %54, %52, !dbg !2734
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2734
  %shr202 = lshr i64 %call144, 48, !dbg !2735
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2736
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2736
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2737
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2737
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2738
  %57 = trunc i64 %shr202 to i8, !dbg !2738
  %58 = and i8 %57, 15, !dbg !2738
  %conv211 = xor i8 %58, %56, !dbg !2738
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2738
  %shr212 = lshr i64 %call144, 56, !dbg !2739
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2740
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2740
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2741
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2741
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2742
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2742
  %conv221 = xor i8 %60, %61, !dbg !2742
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2742
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2743
    #dbg_value(i32 %add223, !2655, !DIExpression(), !2657)
  br label %for.cond87, !dbg !2744, !llvm.loop !2745

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2629, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2529)
  %or2273 = or i8 %finished.0, %call70, !dbg !2747
    #dbg_value(i8 %or2273, !2629, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2529)
    #dbg_value(i8 %or2273, !2629, !DIExpression(), !2529)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2748
    #dbg_value(i32 %inc230, !2633, !DIExpression(), !2635)
  br label %for.cond63, !dbg !2749, !llvm.loop !2750

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2752

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2529
  ret i32 %retval.0, !dbg !2752
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2753 {
entry:
    #dbg_value(ptr %a, !2754, !DIExpression(), !2755)
    #dbg_value(ptr %b, !2756, !DIExpression(), !2755)
    #dbg_value(ptr %c, !2757, !DIExpression(), !2755)
    #dbg_value(i32 %colrow_ab, !2758, !DIExpression(), !2755)
    #dbg_value(i32 %row_a, !2759, !DIExpression(), !2755)
    #dbg_value(i32 1, !2760, !DIExpression(), !2755)
    #dbg_value(i32 0, !2761, !DIExpression(), !2763)
  %smax = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2764
  br label %for.cond, !dbg !2764

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2765
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2754, !DIExpression(), !2755)
    #dbg_value(ptr %c.addr.0, !2757, !DIExpression(), !2755)
    #dbg_value(i32 %i.0, !2761, !DIExpression(), !2763)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2766
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2768

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2769

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2772
    #dbg_value(i32 poison, !2773, !DIExpression(), !2774)
    #dbg_value(ptr %c.addr.1, !2757, !DIExpression(), !2755)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2769

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #6, !dbg !2775
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2778
    #dbg_value(i32 1, !2773, !DIExpression(), !2774)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2779
    #dbg_value(ptr %incdec.ptr, !2757, !DIExpression(), !2755)
  br label %for.cond1, !dbg !2780, !llvm.loop !2781

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2783
    #dbg_value(i32 %inc5, !2761, !DIExpression(), !2763)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2784
    #dbg_value(ptr %add.ptr6, !2754, !DIExpression(), !2755)
  br label %for.cond, !dbg !2785, !llvm.loop !2786

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2788
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2789 {
entry:
    #dbg_value(i8 %a, !2790, !DIExpression(), !2791)
    #dbg_value(i8 %b, !2792, !DIExpression(), !2791)
  %xor1 = xor i8 %a, %b, !dbg !2793
  ret i8 %xor1, !dbg !2794
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2795 {
entry:
  %_pivot_row = alloca [7 x i64], align 32
  %_pivot_row2 = alloca [7 x i64], align 32
  %packed_A = alloca [756 x i64], align 32
  %temp = alloca [126 x i8], align 1
    #dbg_value(ptr %A, !2799, !DIExpression(), !2800)
    #dbg_value(i32 %nrows, !2801, !DIExpression(), !2800)
    #dbg_value(i32 %ncols, !2802, !DIExpression(), !2800)
    #dbg_declare(ptr %_pivot_row, !2803, !DIExpression(), !2804)
    #dbg_declare(ptr %_pivot_row2, !2805, !DIExpression(), !2806)
    #dbg_declare(ptr %packed_A, !2807, !DIExpression(), !2811)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(6048) %packed_A, i8 0, i32 6048, i1 false), !dbg !2811
  %add = add nsw i32 %ncols, 15, !dbg !2812
  %div = sdiv i32 %add, 16, !dbg !2813
    #dbg_value(i32 %div, !2814, !DIExpression(), !2800)
    #dbg_value(i32 0, !2815, !DIExpression(), !2817)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2818
  br label %for.cond, !dbg !2818

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2819
    #dbg_value(i32 %i.0, !2815, !DIExpression(), !2817)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2820
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2822

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2823
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2823
  br label %for.cond3, !dbg !2823

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2825
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2827
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2828
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2829
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2830
  %inc = add nuw i32 %i.0, 1, !dbg !2831
    #dbg_value(i32 %inc, !2815, !DIExpression(), !2817)
  br label %for.cond, !dbg !2832, !llvm.loop !2833

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2835
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2800
    #dbg_value(i32 %pivot_row.0, !2836, !DIExpression(), !2800)
    #dbg_value(i32 %pivot_col.0, !2837, !DIExpression(), !2838)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2839
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2823

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2841

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2843
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2843
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2843
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2843
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2843
    #dbg_value(i32 %cond, !2845, !DIExpression(), !2846)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2847
    #dbg_value(i32 %cond16, !2848, !DIExpression(), !2846)
    #dbg_value(i32 0, !2849, !DIExpression(), !2851)
  br label %for.cond18, !dbg !2852

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2853
    #dbg_value(i32 %i17.0, !2849, !DIExpression(), !2851)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !2854
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2856

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2847
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2847
  br label %for.cond25, !dbg !2857

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2859
  store i64 0, ptr %arrayidx, align 8, !dbg !2861
  %arrayidx21 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2862
  store i64 0, ptr %arrayidx21, align 8, !dbg !2863
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2864
    #dbg_value(i32 %inc23, !2849, !DIExpression(), !2851)
  br label %for.cond18, !dbg !2865, !llvm.loop !2866

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2846
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2846
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2868
    #dbg_value(i32 %row.0, !2869, !DIExpression(), !2868)
    #dbg_value(i8 %pivot.0, !2870, !DIExpression(), !2846)
    #dbg_value(i64 %pivot_is_zero.0, !2871, !DIExpression(), !2846)
  %add27 = add nsw i32 %cond16, 32, !dbg !2872
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2872
  %sub30 = add nsw i32 %nrows, -1, !dbg !2872
  %add32 = add nsw i32 %cond16, 32, !dbg !2872
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2872
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2874
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2857

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2875
  %not = xor i64 %call, -1, !dbg !2877
    #dbg_value(i64 %not, !2878, !DIExpression(), !2879)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2880
    #dbg_value(i64 %call37, !2881, !DIExpression(), !2879)
    #dbg_value(i32 0, !2882, !DIExpression(), !2884)
  br label %for.cond38, !dbg !2885

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2886
    #dbg_value(i32 %j.0, !2882, !DIExpression(), !2884)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !2887
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2889

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2890
  %or = or i64 %and, %not, !dbg !2892
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2893
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2894
  %arrayidx43 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2895
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2895
  %and44 = and i64 %or, %0, !dbg !2896
  %arrayidx45 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2897
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2898
  %xor = xor i64 %1, %and44, !dbg !2898
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2898
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2899
    #dbg_value(i32 %inc47, !2882, !DIExpression(), !2884)
  br label %for.cond38, !dbg !2900, !llvm.loop !2901

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2903
    #dbg_value(i8 %call50, !2870, !DIExpression(), !2846)
  %conv = zext nneg i8 %call50 to i32, !dbg !2904
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2905
    #dbg_value(i64 %call51, !2871, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2846)
  %not52 = xor i64 %call51, -1, !dbg !2906
    #dbg_value(i64 %not52, !2871, !DIExpression(), !2846)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2907
    #dbg_value(i32 %inc54, !2869, !DIExpression(), !2868)
  br label %for.cond25, !dbg !2908, !llvm.loop !2909

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2846
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2846
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !2911
    #dbg_value(i8 %call56, !2912, !DIExpression(), !2800)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2913
    #dbg_value(i32 %cond, !2914, !DIExpression(), !2916)
  br label %for.cond60, !dbg !2917

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2918
    #dbg_value(i32 %row59.0, !2914, !DIExpression(), !2916)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2919
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2921

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2922

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2924
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2926
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2926
    #dbg_value(i64 %and67, !2927, !DIExpression(), !2928)
    #dbg_value(i64 %and67.demorgan, !2929, !DIExpression(), !2928)
    #dbg_value(i32 0, !2930, !DIExpression(), !2932)
  br label %for.cond69, !dbg !2933

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2934
    #dbg_value(i32 %col.0, !2930, !DIExpression(), !2932)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !2935
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2937

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2938
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2940
  %arrayidx75 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2941
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2941
  %and76 = and i64 %and67.demorgan, %2, !dbg !2942
  %arrayidx77 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2943
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2943
  %and78 = and i64 %3, %and67, !dbg !2944
  %add79 = add i64 %and76, %and78, !dbg !2945
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2946
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2947
  %arrayidx82 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2948
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2949
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2950
    #dbg_value(i32 %inc84, !2930, !DIExpression(), !2932)
  br label %for.cond69, !dbg !2951, !llvm.loop !2952

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2954
    #dbg_value(i32 %inc87, !2914, !DIExpression(), !2916)
  br label %for.cond60, !dbg !2955, !llvm.loop !2956

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !2958
    #dbg_value(i32 %row89.0, !2959, !DIExpression(), !2960)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2961
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2922

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2963
    #dbg_value(i1 %cmp94, !2965, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2966)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2967
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2968
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2969
    #dbg_value(i8 %call100, !2970, !DIExpression(), !2966)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2971
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2972
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2973
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2974
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2975
    #dbg_value(i32 %inc110, !2959, !DIExpression(), !2960)
  br label %for.cond90, !dbg !2976, !llvm.loop !2977

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2800)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !2979
  %5 = add i32 %4, 1, !dbg !2979
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2979
    #dbg_value(i32 %conv116, !2836, !DIExpression(), !2800)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2980
    #dbg_value(i32 %inc118, !2837, !DIExpression(), !2838)
  br label %for.cond3, !dbg !2981, !llvm.loop !2982

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !2984
    #dbg_value(i32 %i120.0, !2985, !DIExpression(), !2986)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !2987
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2841

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2989
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2991
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2992
    #dbg_value(i32 0, !2993, !DIExpression(), !2995)
  br label %for.cond130, !dbg !2996

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2997
    #dbg_value(i32 %j129.0, !2993, !DIExpression(), !2995)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !2998
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3000

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [126 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3001
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3001
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3003
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3004
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3004
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3005
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3006
    #dbg_value(i32 %inc139, !2993, !DIExpression(), !2995)
  br label %for.cond130, !dbg !3007, !llvm.loop !3008

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3010
    #dbg_value(i32 %inc142, !2985, !DIExpression(), !2986)
  br label %for.cond121, !dbg !3011, !llvm.loop !3012

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 126) #8, !dbg !3014
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 56) #8, !dbg !3015
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 56) #8, !dbg !3016
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 6048) #8, !dbg !3017
  ret void, !dbg !3018
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3019 {
entry:
    #dbg_value(i8 %a, !3021, !DIExpression(), !3022)
    #dbg_value(i8 0, !3023, !DIExpression(), !3022)
  %0 = icmp ne i8 %a, 0, !dbg !3024
  %conv3 = sext i1 %0 to i8, !dbg !3025
  %1 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3026
  %xor5 = xor i8 %1, %conv3, !dbg !3027
  ret i8 %xor5, !dbg !3028
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3029 {
entry:
    #dbg_value(i8 %a, !3032, !DIExpression(), !3033)
    #dbg_value(i64 %b, !3034, !DIExpression(), !3033)
  %0 = and i8 %a, 1, !dbg !3035
  %conv1 = zext nneg i8 %0 to i64, !dbg !3036
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3037
    #dbg_value(i64 %mul, !3038, !DIExpression(), !3033)
  %1 = and i8 %a, 2, !dbg !3039
  %conv4 = zext nneg i8 %1 to i64, !dbg !3040
  %mul5 = mul i64 %b, %conv4, !dbg !3041
  %xor = xor i64 %mul, %mul5, !dbg !3042
    #dbg_value(i64 %xor, !3038, !DIExpression(), !3033)
  %2 = and i8 %a, 4, !dbg !3043
  %conv8 = zext nneg i8 %2 to i64, !dbg !3044
  %mul9 = mul i64 %b, %conv8, !dbg !3045
  %xor10 = xor i64 %xor, %mul9, !dbg !3046
    #dbg_value(i64 %xor10, !3038, !DIExpression(), !3033)
  %3 = and i8 %a, 8, !dbg !3047
  %conv13 = zext nneg i8 %3 to i64, !dbg !3048
  %mul14 = mul i64 %b, %conv13, !dbg !3049
  %xor15 = xor i64 %xor10, %mul14, !dbg !3050
    #dbg_value(i64 %xor15, !3038, !DIExpression(), !3033)
    #dbg_value(i64 %xor15, !3051, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3033)
  %shr = lshr i64 %xor15, 4, !dbg !3052
  %and16 = lshr i64 %xor15, 3, !dbg !3053
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3053
  %4 = xor i64 %shr, %shr18, !dbg !3054
  %xor19 = xor i64 %4, %xor15, !dbg !3054
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3055
    #dbg_value(i64 %and20, !3056, !DIExpression(), !3033)
  ret i64 %and20, !dbg !3057
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3058 {
entry:
    #dbg_value(ptr %in, !3061, !DIExpression(), !3062)
    #dbg_value(ptr %out, !3063, !DIExpression(), !3062)
    #dbg_value(i32 %ncols, !3064, !DIExpression(), !3062)
    #dbg_value(ptr %out, !3065, !DIExpression(), !3062)
    #dbg_value(i32 0, !3066, !DIExpression(), !3062)
  br label %for.cond, !dbg !3067

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3069
    #dbg_value(i32 %i.0, !3066, !DIExpression(), !3062)
  %add = or disjoint i32 %i.0, 1, !dbg !3070
  %cmp = icmp slt i32 %add, %ncols, !dbg !3072
  br i1 %cmp, label %for.body, label %for.end, !dbg !3073

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3074
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3074
  %add2 = or disjoint i32 %i.0, 1, !dbg !3076
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3077
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3077
  %shl5 = shl i8 %1, 4, !dbg !3078
  %or = or i8 %shl5, %0, !dbg !3079
  %div = lshr exact i32 %i.0, 1, !dbg !3080
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3081
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3082
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3083
    #dbg_value(i32 %add8, !3066, !DIExpression(), !3062)
  br label %for.cond, !dbg !3084, !llvm.loop !3085

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3069
  %2 = and i32 %ncols, -2147483647, !dbg !3087
  %cmp9 = icmp eq i32 %2, 1, !dbg !3087
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3087

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3089
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3089
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3091
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3092
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3093
  br label %if.end, !dbg !3094

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3095
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3096 {
entry:
    #dbg_value(i32 %a, !3099, !DIExpression(), !3100)
    #dbg_value(i32 %b, !3101, !DIExpression(), !3100)
  %xor = xor i32 %a, %b, !dbg !3102
  %0 = icmp sgt i32 %xor, 0, !dbg !3103
  %shr = sext i1 %0 to i64, !dbg !3103
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3104
  %xor1 = xor i64 %1, %shr, !dbg !3105
  ret i64 %xor1, !dbg !3106
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3107 {
entry:
    #dbg_value(i32 %a, !3108, !DIExpression(), !3109)
    #dbg_value(i32 %b, !3110, !DIExpression(), !3109)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3109)
  %0 = icmp slt i32 %b, %a, !dbg !3112
  %shr = sext i1 %0 to i64, !dbg !3112
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3113
  %xor = xor i64 %1, %shr, !dbg !3114
  ret i64 %xor, !dbg !3115
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3116 {
entry:
    #dbg_value(ptr %in, !3119, !DIExpression(), !3120)
    #dbg_value(i32 %index, !3121, !DIExpression(), !3120)
  %div = sdiv i32 %index, 16, !dbg !3122
    #dbg_value(i32 %div, !3123, !DIExpression(), !3120)
  %rem = srem i32 %index, 16, !dbg !3124
    #dbg_value(i32 %rem, !3125, !DIExpression(), !3120)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3126
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3126
  %mul = shl nsw i32 %rem, 2, !dbg !3127
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3128
  %shr = lshr i64 %0, %sh_prom, !dbg !3128
  %1 = trunc i64 %shr to i8, !dbg !3129
  %conv = and i8 %1, 15, !dbg !3129
  ret i8 %conv, !dbg !3130
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3131 {
entry:
    #dbg_value(i8 %a, !3134, !DIExpression(), !3135)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3136
    #dbg_value(i8 %call, !3137, !DIExpression(), !3135)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3138
    #dbg_value(i8 %call1, !3139, !DIExpression(), !3135)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3140
    #dbg_value(i8 %call2, !3141, !DIExpression(), !3135)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3142
    #dbg_value(i8 %call3, !3143, !DIExpression(), !3135)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3144
    #dbg_value(i8 %call4, !3145, !DIExpression(), !3135)
  ret i8 %call4, !dbg !3146
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3147 {
entry:
    #dbg_value(i32 %legs, !3150, !DIExpression(), !3151)
    #dbg_value(ptr %in, !3152, !DIExpression(), !3151)
    #dbg_value(i8 %a, !3153, !DIExpression(), !3151)
    #dbg_value(ptr %acc, !3154, !DIExpression(), !3151)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3155
    #dbg_value(i32 %call, !3156, !DIExpression(), !3151)
    #dbg_value(i64 1229782938247303441, !3157, !DIExpression(), !3151)
    #dbg_value(i32 0, !3158, !DIExpression(), !3160)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3161
  br label %for.cond, !dbg !3161

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3162
    #dbg_value(i32 %i.0, !3158, !DIExpression(), !3160)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3163
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3165

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3166
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3166
  %and = and i64 %0, 1229782938247303441, !dbg !3168
  %and1 = and i32 %call, 255, !dbg !3169
  %conv = zext nneg i32 %and1 to i64, !dbg !3170
  %mul = mul i64 %and, %conv, !dbg !3171
  %shr = lshr i64 %0, 1, !dbg !3172
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3173
  %shr4 = lshr i32 %call, 8, !dbg !3174
  %and5 = and i32 %shr4, 15, !dbg !3175
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3176
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3177
  %xor = xor i64 %mul, %mul7, !dbg !3178
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3179
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3179
  %shr9 = lshr i64 %1, 2, !dbg !3180
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3181
  %shr11 = lshr i32 %call, 16, !dbg !3182
  %and12 = and i32 %shr11, 15, !dbg !3183
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3184
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3185
  %xor15 = xor i64 %xor, %mul14, !dbg !3186
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3187
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3187
  %shr17 = lshr i64 %2, 3, !dbg !3188
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3189
  %shr19 = lshr i32 %call, 24, !dbg !3190
  %and20 = and i32 %shr19, 15, !dbg !3191
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3192
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3193
  %xor23 = xor i64 %xor15, %mul22, !dbg !3194
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3195
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3196
  %xor25 = xor i64 %3, %xor23, !dbg !3196
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3196
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3197
    #dbg_value(i32 %inc, !3158, !DIExpression(), !3160)
  br label %for.cond, !dbg !3198, !llvm.loop !3199

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3201
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3202 {
entry:
    #dbg_value(i32 %legs, !3205, !DIExpression(), !3206)
    #dbg_value(ptr %in, !3207, !DIExpression(), !3206)
    #dbg_value(ptr %out, !3208, !DIExpression(), !3206)
    #dbg_value(ptr %in, !3209, !DIExpression(), !3206)
    #dbg_value(i32 0, !3210, !DIExpression(), !3212)
  br label %for.cond, !dbg !3213

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3214
    #dbg_value(i32 %i.0, !3210, !DIExpression(), !3212)
  %mul = shl nsw i32 %legs, 4, !dbg !3215
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3217
  br i1 %cmp, label %for.body, label %for.end, !dbg !3218

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3219
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3221
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3221
  %1 = and i8 %0, 15, !dbg !3222
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3223
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3224
  %div3 = lshr exact i32 %i.0, 1, !dbg !3225
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3226
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3226
  %3 = lshr i8 %2, 4, !dbg !3227
  %add = or disjoint i32 %i.0, 1, !dbg !3228
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3229
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3230
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3231
    #dbg_value(i32 %add8, !3210, !DIExpression(), !3212)
  br label %for.cond, !dbg !3232, !llvm.loop !3233

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3235
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3236 {
entry:
    #dbg_value(i8 %b, !3237, !DIExpression(), !3238)
  %conv = zext nneg i8 %b to i32, !dbg !3239
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3240
    #dbg_value(i32 %mul, !3241, !DIExpression(), !3238)
    #dbg_value(i32 -252645136, !3242, !DIExpression(), !3238)
  %and = and i32 %mul, 1894838512, !dbg !3243
    #dbg_value(i32 %and, !3244, !DIExpression(), !3238)
  %shr = lshr exact i32 %and, 4, !dbg !3245
  %shr1 = lshr exact i32 %and, 3, !dbg !3246
  %0 = xor i32 %shr, %shr1, !dbg !3247
  %xor2 = xor i32 %0, %mul, !dbg !3247
  ret i32 %xor2, !dbg !3248
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3249 {
entry:
    #dbg_value(i8 %a, !3250, !DIExpression(), !3251)
    #dbg_value(i8 %b, !3252, !DIExpression(), !3251)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3253
  %xor1 = xor i8 %a, %0, !dbg !3254
    #dbg_value(i8 %xor1, !3250, !DIExpression(), !3251)
  %1 = trunc i8 %xor1 to i1, !dbg !3255
    #dbg_value(i8 poison, !3256, !DIExpression(), !3251)
  %2 = and i8 %xor1, 2, !dbg !3257
  %mul9 = mul i8 %2, %b, !dbg !3258
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3255
  %xor11 = xor i8 %conv10, %mul9, !dbg !3259
    #dbg_value(i8 %xor11, !3256, !DIExpression(), !3251)
  %3 = and i8 %xor1, 4, !dbg !3260
  %mul16 = mul i8 %3, %b, !dbg !3261
  %xor18 = xor i8 %mul16, %xor11, !dbg !3262
    #dbg_value(i8 %xor18, !3256, !DIExpression(), !3251)
  %4 = and i8 %xor1, 8, !dbg !3263
  %mul23 = mul i8 %4, %b, !dbg !3264
  %xor25 = xor i8 %mul23, %xor18, !dbg !3265
    #dbg_value(i8 %xor25, !3256, !DIExpression(), !3251)
    #dbg_value(i8 %xor25, !3266, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3251)
  %5 = lshr i8 %xor25, 4, !dbg !3267
  %6 = lshr i8 %xor25, 3, !dbg !3268
  %7 = and i8 %6, 14, !dbg !3268
  %8 = xor i8 %5, %7, !dbg !3269
  %xor25.masked = and i8 %xor25, 15, !dbg !3270
  %9 = xor i8 %8, %xor25.masked, !dbg !3270
    #dbg_value(i8 %9, !3271, !DIExpression(), !3251)
  ret i8 %9, !dbg !3272
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3273 {
entry:
    #dbg_value(ptr %a, !3274, !DIExpression(), !3275)
    #dbg_value(ptr %b, !3276, !DIExpression(), !3275)
    #dbg_value(i32 %n, !3277, !DIExpression(), !3275)
    #dbg_value(i32 1, !3278, !DIExpression(), !3275)
    #dbg_value(i8 0, !3279, !DIExpression(), !3275)
    #dbg_value(i32 0, !3280, !DIExpression(), !3282)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3283
  br label %for.cond, !dbg !3283

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3275
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3284
    #dbg_value(i32 %i.0, !3280, !DIExpression(), !3282)
    #dbg_value(ptr %b.addr.0, !3276, !DIExpression(), !3275)
    #dbg_value(i8 %ret.0, !3279, !DIExpression(), !3275)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3285
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3287

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3288
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3288
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3290
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3291
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3292
    #dbg_value(i8 %call1, !3279, !DIExpression(), !3275)
  %inc = add nuw i32 %i.0, 1, !dbg !3293
    #dbg_value(i32 %inc, !3280, !DIExpression(), !3282)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3294
    #dbg_value(ptr %add.ptr, !3276, !DIExpression(), !3275)
  br label %for.cond, !dbg !3295, !llvm.loop !3296

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3275
  ret i8 %ret.0.lcssa, !dbg !3298
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3299 {
entry:
    #dbg_value(i8 %a, !3300, !DIExpression(), !3301)
    #dbg_value(i8 %b, !3302, !DIExpression(), !3301)
  %xor1 = xor i8 %a, %b, !dbg !3303
  ret i8 %xor1, !dbg !3304
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
!211 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !172, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!212 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !25, line: 537, type: !174)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "cpk", arg: 2, scope: !211, file: !25, line: 537, type: !18)
!215 = !DILocalVariable(name: "csk", arg: 3, scope: !211, file: !25, line: 538, type: !18)
!216 = !DILocalVariable(name: "ret", scope: !211, file: !25, line: 539, type: !45)
!217 = !DILocalVariable(name: "seed_sk", scope: !211, file: !25, line: 540, type: !18)
!218 = !DILocalVariable(name: "S", scope: !211, file: !25, line: 541, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4448, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 556)
!222 = !DILocation(line: 541, column: 19, scope: !211)
!223 = !DILocalVariable(name: "P", scope: !211, file: !25, line: 542, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3120768, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 48762)
!227 = !DILocation(line: 542, column: 14, scope: !211)
!228 = !DILocalVariable(name: "P3", scope: !211, file: !25, line: 543, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44800, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 700)
!232 = !DILocation(line: 543, column: 14, scope: !211)
!233 = !DILocalVariable(name: "O", scope: !211, file: !25, line: 546, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8640, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 1080)
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
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24640, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 385)
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
!798 = !DILocation(line: 445, column: 18, scope: !699)
!799 = !DILocation(line: 447, column: 9, scope: !699)
!800 = !DILocalVariable(name: "i", scope: !801, file: !25, line: 451, type: !45)
!801 = distinct !DILexicalBlock(scope: !699, file: !25, line: 451, column: 9)
!802 = !DILocation(line: 0, scope: !801)
!803 = !DILocation(line: 451, column: 14, scope: !801)
!804 = !DILocation(line: 451, scope: !801)
!805 = !DILocation(line: 451, column: 27, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !25, line: 451, column: 9)
!807 = !DILocation(line: 451, column: 9, scope: !801)
!808 = !DILocation(line: 452, column: 26, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !25, line: 451, column: 48)
!810 = !DILocation(line: 452, column: 22, scope: !809)
!811 = !DILocation(line: 452, column: 52, scope: !809)
!812 = !DILocation(line: 452, column: 48, scope: !809)
!813 = !DILocation(line: 452, column: 13, scope: !809)
!814 = !DILocation(line: 451, column: 43, scope: !806)
!815 = !DILocation(line: 451, column: 9, scope: !806)
!816 = distinct !{!816, !807, !817, !303}
!817 = !DILocation(line: 453, column: 9, scope: !801)
!818 = !DILocation(line: 455, column: 9, scope: !699)
!819 = !DILocation(line: 457, column: 9, scope: !699)
!820 = !DILocation(line: 458, column: 9, scope: !699)
!821 = !DILocalVariable(name: "i", scope: !822, file: !25, line: 460, type: !45)
!822 = distinct !DILexicalBlock(scope: !699, file: !25, line: 460, column: 9)
!823 = !DILocation(line: 0, scope: !822)
!824 = !DILocation(line: 460, column: 14, scope: !822)
!825 = !DILocation(line: 460, scope: !822)
!826 = !DILocation(line: 460, column: 27, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !25, line: 460, column: 9)
!828 = !DILocation(line: 460, column: 9, scope: !822)
!829 = !DILocation(line: 462, column: 20, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !25, line: 461, column: 9)
!831 = !DILocation(line: 462, column: 43, scope: !830)
!832 = !DILocation(line: 462, column: 13, scope: !830)
!833 = !DILocation(line: 462, column: 48, scope: !830)
!834 = !DILocation(line: 460, column: 39, scope: !827)
!835 = !DILocation(line: 460, column: 9, scope: !827)
!836 = distinct !{!836, !828, !837, !303}
!837 = !DILocation(line: 463, column: 9, scope: !822)
!838 = !DILocation(line: 465, column: 18, scope: !699)
!839 = !DILocation(line: 465, column: 9, scope: !699)
!840 = !DILocation(line: 469, column: 13, scope: !841)
!841 = distinct !DILexicalBlock(scope: !699, file: !25, line: 469, column: 13)
!842 = !DILocation(line: 472, column: 13, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !25, line: 471, column: 16)
!844 = !DILocation(line: 473, column: 13, scope: !843)
!845 = !DILocalVariable(name: "i", scope: !846, file: !25, line: 477, type: !45)
!846 = distinct !DILexicalBlock(scope: !699, file: !25, line: 477, column: 5)
!847 = !DILocation(line: 0, scope: !846)
!848 = !DILocation(line: 477, column: 10, scope: !846)
!849 = !DILocation(line: 477, scope: !846)
!850 = !DILocation(line: 477, column: 23, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !25, line: 477, column: 5)
!852 = !DILocation(line: 477, column: 5, scope: !846)
!853 = !DILocation(line: 478, column: 23, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !25, line: 477, column: 44)
!855 = !DILocation(line: 478, column: 19, scope: !854)
!856 = !DILocalVariable(name: "vi", scope: !699, file: !25, line: 376, type: !18)
!857 = !DILocation(line: 479, column: 17, scope: !854)
!858 = !DILocation(line: 479, column: 33, scope: !854)
!859 = !DILocation(line: 479, column: 29, scope: !854)
!860 = !DILocation(line: 479, column: 9, scope: !854)
!861 = !DILocation(line: 480, column: 31, scope: !854)
!862 = !DILocation(line: 480, column: 27, scope: !854)
!863 = !DILocation(line: 480, column: 9, scope: !854)
!864 = !DILocation(line: 481, column: 22, scope: !854)
!865 = !DILocation(line: 481, column: 18, scope: !854)
!866 = !DILocation(line: 481, column: 32, scope: !854)
!867 = !DILocation(line: 481, column: 61, scope: !854)
!868 = !DILocation(line: 481, column: 57, scope: !854)
!869 = !DILocation(line: 481, column: 9, scope: !854)
!870 = !DILocation(line: 477, column: 39, scope: !851)
!871 = !DILocation(line: 477, column: 5, scope: !851)
!872 = distinct !{!872, !852, !873, !303}
!873 = !DILocation(line: 482, column: 5, scope: !846)
!874 = !DILocation(line: 483, column: 5, scope: !699)
!875 = !DILocation(line: 485, column: 34, scope: !699)
!876 = !DILocation(line: 485, column: 5, scope: !699)
!877 = !DILocation(line: 486, column: 13, scope: !699)
!878 = !DILocation(line: 486, column: 5, scope: !699)
!879 = !DILabel(scope: !699, name: "err", file: !25, line: 488)
!880 = !DILocation(line: 488, column: 1, scope: !699)
!881 = !DILocation(line: 489, column: 5, scope: !699)
!882 = !DILocation(line: 490, column: 5, scope: !699)
!883 = !DILocation(line: 491, column: 5, scope: !699)
!884 = !DILocation(line: 492, column: 5, scope: !699)
!885 = !DILocation(line: 493, column: 23, scope: !699)
!886 = !DILocation(line: 493, column: 5, scope: !699)
!887 = !DILocation(line: 494, column: 5, scope: !699)
!888 = !DILocation(line: 495, column: 5, scope: !699)
!889 = !DILocation(line: 496, column: 5, scope: !699)
!890 = !DILocation(line: 497, column: 5, scope: !699)
!891 = !DILocation(line: 498, column: 5, scope: !699)
!892 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !323, file: !323, line: 244, type: !893, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !174, !49, !326, !326, !5, !5}
!895 = !DILocalVariable(name: "p", arg: 1, scope: !892, file: !323, line: 244, type: !174)
!896 = !DILocation(line: 0, scope: !892)
!897 = !DILocalVariable(name: "Vdec", arg: 2, scope: !892, file: !323, line: 244, type: !49)
!898 = !DILocalVariable(name: "L", arg: 3, scope: !892, file: !323, line: 244, type: !326)
!899 = !DILocalVariable(name: "P1", arg: 4, scope: !892, file: !323, line: 244, type: !326)
!900 = !DILocalVariable(name: "VL", arg: 5, scope: !892, file: !323, line: 244, type: !5)
!901 = !DILocalVariable(name: "VP1V", arg: 6, scope: !892, file: !323, line: 244, type: !5)
!902 = !DILocalVariable(name: "param_k", scope: !892, file: !323, line: 246, type: !239)
!903 = !DILocalVariable(name: "param_v", scope: !892, file: !323, line: 247, type: !239)
!904 = !DILocalVariable(name: "param_o", scope: !892, file: !323, line: 248, type: !239)
!905 = !DILocation(line: 251, column: 5, scope: !892)
!906 = !DILocalVariable(name: "Pv", scope: !892, file: !323, line: 254, type: !907)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 532224, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 8316)
!910 = !DILocation(line: 254, column: 14, scope: !892)
!911 = !DILocation(line: 255, column: 5, scope: !892)
!912 = !DILocation(line: 256, column: 5, scope: !892)
!913 = !DILocation(line: 257, column: 1, scope: !892)
!914 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !915, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !174, !5, !49, !18}
!917 = !DILocalVariable(name: "p", arg: 1, scope: !914, file: !25, line: 43, type: !174)
!918 = !DILocation(line: 0, scope: !914)
!919 = !DILocalVariable(name: "vPv", arg: 2, scope: !914, file: !25, line: 43, type: !5)
!920 = !DILocalVariable(name: "t", arg: 3, scope: !914, file: !25, line: 43, type: !49)
!921 = !DILocalVariable(name: "y", arg: 4, scope: !914, file: !25, line: 43, type: !18)
!922 = !DILocalVariable(name: "top_pos", scope: !914, file: !25, line: 48, type: !923)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!924 = !DILocalVariable(name: "m_vec_limbs", scope: !914, file: !25, line: 49, type: !923)
!925 = !DILocalVariable(name: "mask", scope: !926, file: !25, line: 53, type: !6)
!926 = distinct !DILexicalBlock(scope: !927, file: !25, line: 52, column: 29)
!927 = distinct !DILexicalBlock(scope: !914, file: !25, line: 52, column: 8)
!928 = !DILocation(line: 0, scope: !926)
!929 = !DILocalVariable(name: "i", scope: !930, file: !25, line: 56, type: !45)
!930 = distinct !DILexicalBlock(scope: !926, file: !25, line: 56, column: 9)
!931 = !DILocation(line: 0, scope: !930)
!932 = !DILocation(line: 56, column: 14, scope: !930)
!933 = !DILocation(line: 56, scope: !930)
!934 = !DILocation(line: 56, column: 27, scope: !935)
!935 = distinct !DILexicalBlock(scope: !930, file: !25, line: 56, column: 9)
!936 = !DILocation(line: 56, column: 9, scope: !930)
!937 = !DILocation(line: 58, column: 13, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !25, line: 57, column: 9)
!939 = !DILocation(line: 58, column: 50, scope: !938)
!940 = !DILocation(line: 56, column: 53, scope: !935)
!941 = !DILocation(line: 56, column: 9, scope: !935)
!942 = distinct !{!942, !936, !943, !303}
!943 = !DILocation(line: 59, column: 9, scope: !930)
!944 = !DILocalVariable(name: "temp", scope: !914, file: !25, line: 62, type: !579)
!945 = !DILocation(line: 62, column: 14, scope: !914)
!946 = !DILocalVariable(name: "temp_bytes", scope: !914, file: !25, line: 63, type: !18)
!947 = !DILocalVariable(name: "i", scope: !948, file: !25, line: 64, type: !45)
!948 = distinct !DILexicalBlock(scope: !914, file: !25, line: 64, column: 5)
!949 = !DILocation(line: 0, scope: !948)
!950 = !DILocation(line: 64, column: 10, scope: !948)
!951 = !DILocation(line: 64, scope: !948)
!952 = !DILocation(line: 64, column: 36, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !25, line: 64, column: 5)
!954 = !DILocation(line: 64, column: 5, scope: !948)
!955 = !DILocation(line: 65, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !25, line: 65, column: 9)
!957 = distinct !DILexicalBlock(scope: !953, file: !25, line: 64, column: 48)
!958 = !DILocation(line: 99, column: 5, scope: !959)
!959 = distinct !DILexicalBlock(scope: !914, file: !25, line: 99, column: 5)
!960 = !DILocation(line: 65, scope: !956)
!961 = !DILocalVariable(name: "j", scope: !956, file: !25, line: 65, type: !45)
!962 = !DILocation(line: 0, scope: !956)
!963 = !DILocation(line: 65, column: 27, scope: !964)
!964 = distinct !DILexicalBlock(scope: !956, file: !25, line: 65, column: 9)
!965 = !DILocation(line: 67, column: 34, scope: !966)
!966 = distinct !DILexicalBlock(scope: !964, file: !25, line: 65, column: 46)
!967 = !DILocation(line: 67, column: 54, scope: !966)
!968 = !DILocation(line: 67, column: 66, scope: !966)
!969 = !DILocalVariable(name: "top", scope: !966, file: !25, line: 67, type: !14)
!970 = !DILocation(line: 0, scope: !966)
!971 = !DILocation(line: 68, column: 13, scope: !966)
!972 = !DILocation(line: 68, column: 33, scope: !966)
!973 = !DILocalVariable(name: "k", scope: !974, file: !25, line: 69, type: !45)
!974 = distinct !DILexicalBlock(scope: !966, file: !25, line: 69, column: 13)
!975 = !DILocation(line: 0, scope: !974)
!976 = !DILocation(line: 69, column: 17, scope: !974)
!977 = !DILocation(line: 69, scope: !974)
!978 = !DILocation(line: 69, column: 43, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !25, line: 69, column: 13)
!980 = !DILocation(line: 69, column: 13, scope: !974)
!981 = !DILocation(line: 74, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !966, file: !25, line: 74, column: 13)
!983 = !DILocation(line: 70, column: 30, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !25, line: 69, column: 52)
!985 = !DILocation(line: 70, column: 38, scope: !984)
!986 = !DILocation(line: 70, column: 23, scope: !984)
!987 = !DILocation(line: 70, column: 17, scope: !984)
!988 = !DILocation(line: 70, column: 27, scope: !984)
!989 = !DILocation(line: 71, column: 17, scope: !984)
!990 = !DILocation(line: 71, column: 25, scope: !984)
!991 = !DILocation(line: 69, column: 49, scope: !979)
!992 = !DILocation(line: 69, column: 13, scope: !979)
!993 = distinct !{!993, !980, !994, !303}
!994 = !DILocation(line: 72, column: 13, scope: !974)
!995 = !DILocation(line: 74, scope: !982)
!996 = !DILocalVariable(name: "jj", scope: !982, file: !25, line: 74, type: !45)
!997 = !DILocation(line: 0, scope: !982)
!998 = !DILocation(line: 74, column: 33, scope: !999)
!999 = distinct !DILexicalBlock(scope: !982, file: !25, line: 74, column: 13)
!1000 = !DILocation(line: 92, column: 13, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !966, file: !25, line: 92, column: 13)
!1002 = !DILocation(line: 75, column: 22, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !25, line: 75, column: 20)
!1004 = distinct !DILexicalBlock(scope: !999, file: !25, line: 74, column: 53)
!1005 = !DILocation(line: 75, column: 25, scope: !1003)
!1006 = !DILocation(line: 79, column: 52, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !25, line: 75, column: 30)
!1008 = !DILocation(line: 79, column: 41, scope: !1007)
!1009 = !DILocation(line: 79, column: 34, scope: !1007)
!1010 = !DILocation(line: 79, column: 21, scope: !1007)
!1011 = !DILocation(line: 79, column: 38, scope: !1007)
!1012 = !DILocation(line: 81, column: 17, scope: !1007)
!1013 = !DILocation(line: 86, column: 52, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1003, file: !25, line: 82, column: 22)
!1015 = !DILocation(line: 86, column: 41, scope: !1014)
!1016 = !DILocation(line: 86, column: 73, scope: !1014)
!1017 = !DILocation(line: 86, column: 34, scope: !1014)
!1018 = !DILocation(line: 86, column: 21, scope: !1014)
!1019 = !DILocation(line: 86, column: 38, scope: !1014)
!1020 = !DILocation(line: 74, column: 49, scope: !999)
!1021 = !DILocation(line: 74, column: 13, scope: !999)
!1022 = distinct !{!1022, !981, !1023, !303}
!1023 = !DILocation(line: 89, column: 13, scope: !982)
!1024 = !DILocation(line: 92, scope: !1001)
!1025 = !DILocalVariable(name: "k", scope: !1001, file: !25, line: 92, type: !15)
!1026 = !DILocation(line: 0, scope: !1001)
!1027 = !DILocation(line: 92, column: 31, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1001, file: !25, line: 92, column: 13)
!1029 = !DILocation(line: 93, column: 36, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1028, file: !25, line: 92, column: 51)
!1031 = !DILocation(line: 93, column: 49, scope: !1030)
!1032 = !DILocation(line: 93, column: 28, scope: !1030)
!1033 = !DILocation(line: 93, column: 78, scope: !1030)
!1034 = !DILocation(line: 93, column: 91, scope: !1030)
!1035 = !DILocation(line: 93, column: 104, scope: !1030)
!1036 = !DILocation(line: 93, column: 83, scope: !1030)
!1037 = !DILocation(line: 93, column: 82, scope: !1030)
!1038 = !DILocation(line: 93, column: 73, scope: !1030)
!1039 = !DILocation(line: 93, column: 17, scope: !1030)
!1040 = !DILocation(line: 93, column: 25, scope: !1030)
!1041 = !DILocation(line: 92, column: 48, scope: !1028)
!1042 = !DILocation(line: 92, column: 13, scope: !1028)
!1043 = distinct !{!1043, !1000, !1044, !303}
!1044 = !DILocation(line: 94, column: 13, scope: !1001)
!1045 = !DILocation(line: 65, column: 42, scope: !964)
!1046 = !DILocation(line: 65, column: 9, scope: !964)
!1047 = distinct !{!1047, !955, !1048, !303}
!1048 = !DILocation(line: 95, column: 9, scope: !956)
!1049 = !DILocation(line: 64, column: 44, scope: !953)
!1050 = !DILocation(line: 64, column: 5, scope: !953)
!1051 = distinct !{!1051, !954, !1052, !303}
!1052 = !DILocation(line: 96, column: 5, scope: !948)
!1053 = !DILocation(line: 99, scope: !959)
!1054 = !DILocalVariable(name: "i", scope: !959, file: !25, line: 99, type: !45)
!1055 = !DILocation(line: 0, scope: !959)
!1056 = !DILocation(line: 99, column: 23, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !959, file: !25, line: 99, column: 5)
!1058 = !DILocation(line: 105, column: 18, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !25, line: 100, column: 5)
!1060 = !DILocation(line: 105, column: 40, scope: !1059)
!1061 = !DILocation(line: 105, column: 28, scope: !1059)
!1062 = !DILocation(line: 105, column: 44, scope: !1059)
!1063 = !DILocation(line: 105, column: 25, scope: !1059)
!1064 = !DILocation(line: 105, column: 9, scope: !1059)
!1065 = !DILocation(line: 105, column: 16, scope: !1059)
!1066 = !DILocation(line: 106, column: 21, scope: !1059)
!1067 = !DILocation(line: 106, column: 18, scope: !1059)
!1068 = !DILocation(line: 106, column: 40, scope: !1059)
!1069 = !DILocation(line: 106, column: 28, scope: !1059)
!1070 = !DILocation(line: 106, column: 44, scope: !1059)
!1071 = !DILocation(line: 106, column: 25, scope: !1059)
!1072 = !DILocation(line: 106, column: 12, scope: !1059)
!1073 = !DILocation(line: 106, column: 9, scope: !1059)
!1074 = !DILocation(line: 106, column: 16, scope: !1059)
!1075 = !DILocation(line: 99, column: 38, scope: !1057)
!1076 = !DILocation(line: 99, column: 5, scope: !1057)
!1077 = distinct !{!1077, !958, !1078, !303}
!1078 = !DILocation(line: 108, column: 5, scope: !959)
!1079 = !DILocation(line: 109, column: 1, scope: !914)
!1080 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1081, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !174, !5, !18}
!1083 = !DILocalVariable(name: "p", arg: 1, scope: !1080, file: !25, line: 154, type: !174)
!1084 = !DILocation(line: 0, scope: !1080)
!1085 = !DILocalVariable(name: "VtL", arg: 2, scope: !1080, file: !25, line: 154, type: !5)
!1086 = !DILocalVariable(name: "A_out", arg: 3, scope: !1080, file: !25, line: 154, type: !18)
!1087 = !DILocalVariable(name: "bits_to_shift", scope: !1080, file: !25, line: 159, type: !45)
!1088 = !DILocalVariable(name: "words_to_shift", scope: !1080, file: !25, line: 160, type: !45)
!1089 = !DILocalVariable(name: "m_vec_limbs", scope: !1080, file: !25, line: 161, type: !239)
!1090 = !DILocalVariable(name: "A", scope: !1080, file: !25, line: 162, type: !1091)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 100352, elements: !1092)
!1092 = !{!1093}
!1093 = !DISubrange(count: 1568)
!1094 = !DILocation(line: 162, column: 14, scope: !1080)
!1095 = !DILocalVariable(name: "A_width", scope: !1080, file: !25, line: 163, type: !15)
!1096 = !DILocalVariable(name: "mask", scope: !1097, file: !25, line: 168, type: !6)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !25, line: 167, column: 29)
!1098 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 167, column: 8)
!1099 = !DILocation(line: 0, scope: !1097)
!1100 = !DILocalVariable(name: "i", scope: !1101, file: !25, line: 171, type: !45)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !25, line: 171, column: 9)
!1102 = !DILocation(line: 0, scope: !1101)
!1103 = !DILocation(line: 171, column: 14, scope: !1101)
!1104 = !DILocation(line: 171, scope: !1101)
!1105 = !DILocation(line: 171, column: 27, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !25, line: 171, column: 9)
!1107 = !DILocation(line: 171, column: 9, scope: !1101)
!1108 = !DILocation(line: 177, column: 5, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 177, column: 5)
!1110 = !DILocation(line: 173, column: 13, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !25, line: 172, column: 9)
!1112 = !DILocation(line: 173, column: 50, scope: !1111)
!1113 = !DILocation(line: 171, column: 53, scope: !1106)
!1114 = !DILocation(line: 171, column: 9, scope: !1106)
!1115 = distinct !{!1115, !1107, !1116, !303}
!1116 = !DILocation(line: 174, column: 9, scope: !1101)
!1117 = !DILocation(line: 177, scope: !1109)
!1118 = !DILocation(line: 160, column: 9, scope: !1080)
!1119 = !DILocation(line: 159, column: 9, scope: !1080)
!1120 = !DILocalVariable(name: "i", scope: !1109, file: !25, line: 177, type: !45)
!1121 = !DILocation(line: 0, scope: !1109)
!1122 = !DILocation(line: 177, column: 23, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1109, file: !25, line: 177, column: 5)
!1124 = !DILocation(line: 178, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !25, line: 178, column: 9)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !25, line: 177, column: 47)
!1127 = !DILocation(line: 212, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 212, column: 5)
!1129 = !DILocation(line: 178, scope: !1125)
!1130 = !DILocalVariable(name: "j", scope: !1125, file: !25, line: 178, type: !45)
!1131 = !DILocation(line: 0, scope: !1125)
!1132 = !DILocation(line: 178, column: 40, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1125, file: !25, line: 178, column: 9)
!1134 = !DILocation(line: 180, column: 22, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !25, line: 178, column: 51)
!1136 = !DILocalVariable(name: "Mj", scope: !1080, file: !25, line: 164, type: !326)
!1137 = !DILocalVariable(name: "c", scope: !1138, file: !25, line: 181, type: !45)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !25, line: 181, column: 13)
!1139 = !DILocation(line: 0, scope: !1138)
!1140 = !DILocation(line: 181, column: 18, scope: !1138)
!1141 = !DILocation(line: 181, scope: !1138)
!1142 = !DILocation(line: 181, column: 31, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !25, line: 181, column: 13)
!1144 = !DILocation(line: 181, column: 13, scope: !1138)
!1145 = !DILocation(line: 182, column: 17, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !25, line: 182, column: 17)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !25, line: 181, column: 50)
!1148 = !DILocation(line: 182, scope: !1146)
!1149 = !DILocalVariable(name: "k", scope: !1146, file: !25, line: 182, type: !45)
!1150 = !DILocation(line: 0, scope: !1146)
!1151 = !DILocation(line: 182, column: 35, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1146, file: !25, line: 182, column: 17)
!1153 = !DILocation(line: 184, column: 78, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !25, line: 183, column: 17)
!1155 = !DILocation(line: 184, column: 100, scope: !1154)
!1156 = !DILocation(line: 184, column: 35, scope: !1154)
!1157 = !DILocation(line: 184, column: 39, scope: !1154)
!1158 = !DILocation(line: 184, column: 48, scope: !1154)
!1159 = !DILocation(line: 184, column: 65, scope: !1154)
!1160 = !DILocation(line: 184, column: 43, scope: !1154)
!1161 = !DILocation(line: 184, column: 21, scope: !1154)
!1162 = !DILocation(line: 184, column: 75, scope: !1154)
!1163 = !DILocation(line: 185, column: 38, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1154, file: !25, line: 185, column: 24)
!1165 = !DILocation(line: 186, column: 86, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1164, file: !25, line: 185, column: 42)
!1167 = !DILocation(line: 186, column: 114, scope: !1166)
!1168 = !DILocation(line: 186, column: 108, scope: !1166)
!1169 = !DILocation(line: 186, column: 39, scope: !1166)
!1170 = !DILocation(line: 186, column: 43, scope: !1166)
!1171 = !DILocation(line: 186, column: 52, scope: !1166)
!1172 = !DILocation(line: 186, column: 73, scope: !1166)
!1173 = !DILocation(line: 186, column: 47, scope: !1166)
!1174 = !DILocation(line: 186, column: 25, scope: !1166)
!1175 = !DILocation(line: 186, column: 83, scope: !1166)
!1176 = !DILocation(line: 187, column: 21, scope: !1166)
!1177 = !DILocation(line: 182, column: 51, scope: !1152)
!1178 = !DILocation(line: 182, column: 17, scope: !1152)
!1179 = distinct !{!1179, !1145, !1180, !303}
!1180 = !DILocation(line: 188, column: 17, scope: !1146)
!1181 = !DILocation(line: 181, column: 46, scope: !1143)
!1182 = !DILocation(line: 181, column: 13, scope: !1143)
!1183 = distinct !{!1183, !1144, !1184, !303}
!1184 = !DILocation(line: 189, column: 13, scope: !1138)
!1185 = !DILocation(line: 191, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1135, file: !25, line: 191, column: 17)
!1187 = !DILocation(line: 192, column: 26, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1186, file: !25, line: 191, column: 25)
!1189 = !DILocalVariable(name: "Mi", scope: !1080, file: !25, line: 164, type: !326)
!1190 = !DILocalVariable(name: "c", scope: !1191, file: !25, line: 193, type: !45)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !25, line: 193, column: 17)
!1192 = !DILocation(line: 0, scope: !1191)
!1193 = !DILocation(line: 193, column: 22, scope: !1191)
!1194 = !DILocation(line: 193, scope: !1191)
!1195 = !DILocation(line: 193, column: 35, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !25, line: 193, column: 17)
!1197 = !DILocation(line: 193, column: 17, scope: !1191)
!1198 = !DILocation(line: 194, column: 21, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !25, line: 194, column: 21)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !25, line: 193, column: 54)
!1201 = !DILocation(line: 194, scope: !1199)
!1202 = !DILocalVariable(name: "k", scope: !1199, file: !25, line: 194, type: !45)
!1203 = !DILocation(line: 0, scope: !1199)
!1204 = !DILocation(line: 194, column: 39, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !25, line: 194, column: 21)
!1206 = !DILocation(line: 196, column: 81, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1205, file: !25, line: 195, column: 21)
!1208 = !DILocation(line: 196, column: 103, scope: !1207)
!1209 = !DILocation(line: 196, column: 38, scope: !1207)
!1210 = !DILocation(line: 196, column: 42, scope: !1207)
!1211 = !DILocation(line: 196, column: 51, scope: !1207)
!1212 = !DILocation(line: 196, column: 68, scope: !1207)
!1213 = !DILocation(line: 196, column: 46, scope: !1207)
!1214 = !DILocation(line: 196, column: 25, scope: !1207)
!1215 = !DILocation(line: 196, column: 78, scope: !1207)
!1216 = !DILocation(line: 197, column: 42, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1207, file: !25, line: 197, column: 28)
!1218 = !DILocation(line: 198, column: 89, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1217, file: !25, line: 197, column: 46)
!1220 = !DILocation(line: 198, column: 117, scope: !1219)
!1221 = !DILocation(line: 198, column: 111, scope: !1219)
!1222 = !DILocation(line: 198, column: 42, scope: !1219)
!1223 = !DILocation(line: 198, column: 46, scope: !1219)
!1224 = !DILocation(line: 198, column: 55, scope: !1219)
!1225 = !DILocation(line: 198, column: 76, scope: !1219)
!1226 = !DILocation(line: 198, column: 50, scope: !1219)
!1227 = !DILocation(line: 198, column: 29, scope: !1219)
!1228 = !DILocation(line: 198, column: 86, scope: !1219)
!1229 = !DILocation(line: 199, column: 25, scope: !1219)
!1230 = !DILocation(line: 194, column: 55, scope: !1205)
!1231 = !DILocation(line: 194, column: 21, scope: !1205)
!1232 = distinct !{!1232, !1198, !1233, !303}
!1233 = !DILocation(line: 200, column: 21, scope: !1199)
!1234 = !DILocation(line: 193, column: 50, scope: !1196)
!1235 = !DILocation(line: 193, column: 17, scope: !1196)
!1236 = distinct !{!1236, !1197, !1237, !303}
!1237 = !DILocation(line: 201, column: 17, scope: !1191)
!1238 = !DILocation(line: 204, column: 27, scope: !1135)
!1239 = !DILocation(line: 205, column: 30, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1135, file: !25, line: 205, column: 16)
!1241 = !DILocation(line: 178, column: 46, scope: !1133)
!1242 = !DILocation(line: 178, column: 9, scope: !1133)
!1243 = distinct !{!1243, !1124, !1244, !303}
!1244 = !DILocation(line: 209, column: 9, scope: !1125)
!1245 = !DILocation(line: 177, column: 42, scope: !1123)
!1246 = !DILocation(line: 177, column: 5, scope: !1123)
!1247 = distinct !{!1247, !1108, !1248, !303}
!1248 = !DILocation(line: 210, column: 5, scope: !1109)
!1249 = !DILocation(line: 212, scope: !1128)
!1250 = !DILocalVariable(name: "c", scope: !1128, file: !25, line: 212, type: !15)
!1251 = !DILocation(line: 0, scope: !1128)
!1252 = !DILocation(line: 212, column: 26, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1128, file: !25, line: 212, column: 5)
!1254 = !DILocation(line: 214, column: 35, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1253, file: !25, line: 213, column: 5)
!1256 = !DILocation(line: 214, column: 9, scope: !1255)
!1257 = !DILocation(line: 212, column: 91, scope: !1253)
!1258 = !DILocation(line: 212, column: 5, scope: !1253)
!1259 = distinct !{!1259, !1127, !1260, !303}
!1260 = !DILocation(line: 215, column: 5, scope: !1128)
!1261 = !DILocalVariable(name: "tab", scope: !1080, file: !25, line: 217, type: !1262)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1263)
!1263 = !{!1264}
!1264 = !DISubrange(count: 16)
!1265 = !DILocation(line: 217, column: 19, scope: !1080)
!1266 = !DILocalVariable(name: "i", scope: !1267, file: !25, line: 218, type: !15)
!1267 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 218, column: 5)
!1268 = !DILocation(line: 0, scope: !1267)
!1269 = !DILocation(line: 218, column: 10, scope: !1267)
!1270 = !DILocation(line: 218, scope: !1267)
!1271 = !DILocation(line: 218, column: 26, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1267, file: !25, line: 218, column: 5)
!1273 = !DILocation(line: 218, column: 5, scope: !1267)
!1274 = !DILocation(line: 228, column: 5, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 228, column: 5)
!1276 = !DILocation(line: 220, column: 28, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !25, line: 219, column: 5)
!1278 = !DILocation(line: 220, column: 22, scope: !1277)
!1279 = !DILocation(line: 220, column: 14, scope: !1277)
!1280 = !DILocation(line: 220, column: 9, scope: !1277)
!1281 = !DILocation(line: 220, column: 20, scope: !1277)
!1282 = !DILocation(line: 221, column: 22, scope: !1277)
!1283 = !DILocation(line: 221, column: 14, scope: !1277)
!1284 = !DILocation(line: 221, column: 16, scope: !1277)
!1285 = !DILocation(line: 221, column: 9, scope: !1277)
!1286 = !DILocation(line: 221, column: 20, scope: !1277)
!1287 = !DILocation(line: 222, column: 28, scope: !1277)
!1288 = !DILocation(line: 222, column: 22, scope: !1277)
!1289 = !DILocation(line: 222, column: 14, scope: !1277)
!1290 = !DILocation(line: 222, column: 16, scope: !1277)
!1291 = !DILocation(line: 222, column: 9, scope: !1277)
!1292 = !DILocation(line: 222, column: 20, scope: !1277)
!1293 = !DILocation(line: 223, column: 28, scope: !1277)
!1294 = !DILocation(line: 223, column: 22, scope: !1277)
!1295 = !DILocation(line: 223, column: 14, scope: !1277)
!1296 = !DILocation(line: 223, column: 16, scope: !1277)
!1297 = !DILocation(line: 223, column: 9, scope: !1277)
!1298 = !DILocation(line: 223, column: 20, scope: !1277)
!1299 = !DILocation(line: 218, column: 41, scope: !1272)
!1300 = !DILocation(line: 218, column: 5, scope: !1272)
!1301 = distinct !{!1301, !1273, !1302, !303}
!1302 = !DILocation(line: 224, column: 5, scope: !1267)
!1303 = !DILocation(line: 228, scope: !1275)
!1304 = !DILocalVariable(name: "c", scope: !1275, file: !25, line: 228, type: !15)
!1305 = !DILocation(line: 0, scope: !1275)
!1306 = !DILocation(line: 228, column: 26, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1275, file: !25, line: 228, column: 5)
!1308 = !DILocation(line: 230, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !25, line: 230, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !25, line: 229, column: 5)
!1311 = !DILocation(line: 250, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 250, column: 5)
!1313 = !DILocation(line: 230, scope: !1309)
!1314 = !DILocalVariable(name: "r", scope: !1309, file: !25, line: 230, type: !45)
!1315 = !DILocation(line: 0, scope: !1309)
!1316 = !DILocation(line: 230, column: 36, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1309, file: !25, line: 230, column: 9)
!1318 = !DILocation(line: 232, column: 28, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !25, line: 231, column: 9)
!1320 = !DILocation(line: 232, column: 32, scope: !1319)
!1321 = !DILocation(line: 232, column: 41, scope: !1319)
!1322 = !DILocation(line: 232, column: 49, scope: !1319)
!1323 = !DILocation(line: 232, column: 45, scope: !1319)
!1324 = !DILocalVariable(name: "pos", scope: !1319, file: !25, line: 232, type: !15)
!1325 = !DILocation(line: 0, scope: !1319)
!1326 = !DILocation(line: 233, column: 28, scope: !1319)
!1327 = !DILocation(line: 233, column: 41, scope: !1319)
!1328 = !DILocalVariable(name: "t0", scope: !1319, file: !25, line: 233, type: !6)
!1329 = !DILocation(line: 234, column: 35, scope: !1319)
!1330 = !DILocation(line: 234, column: 41, scope: !1319)
!1331 = !DILocalVariable(name: "t1", scope: !1319, file: !25, line: 234, type: !6)
!1332 = !DILocation(line: 235, column: 35, scope: !1319)
!1333 = !DILocation(line: 235, column: 41, scope: !1319)
!1334 = !DILocalVariable(name: "t2", scope: !1319, file: !25, line: 235, type: !6)
!1335 = !DILocation(line: 236, column: 28, scope: !1319)
!1336 = !DILocation(line: 236, column: 35, scope: !1319)
!1337 = !DILocation(line: 236, column: 41, scope: !1319)
!1338 = !DILocalVariable(name: "t3", scope: !1319, file: !25, line: 236, type: !6)
!1339 = !DILocalVariable(name: "t", scope: !1340, file: !25, line: 237, type: !15)
!1340 = distinct !DILexicalBlock(scope: !1319, file: !25, line: 237, column: 13)
!1341 = !DILocation(line: 0, scope: !1340)
!1342 = !DILocation(line: 237, column: 18, scope: !1340)
!1343 = !DILocation(line: 237, scope: !1340)
!1344 = !DILocation(line: 237, column: 34, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !25, line: 237, column: 13)
!1346 = !DILocation(line: 237, column: 13, scope: !1340)
!1347 = !DILocation(line: 239, column: 89, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !25, line: 238, column: 13)
!1349 = !DILocation(line: 239, column: 84, scope: !1348)
!1350 = !DILocation(line: 239, column: 83, scope: !1348)
!1351 = !DILocation(line: 239, column: 105, scope: !1348)
!1352 = !DILocation(line: 239, column: 107, scope: !1348)
!1353 = !DILocation(line: 239, column: 100, scope: !1348)
!1354 = !DILocation(line: 239, column: 99, scope: !1348)
!1355 = !DILocation(line: 239, column: 95, scope: !1348)
!1356 = !DILocation(line: 239, column: 121, scope: !1348)
!1357 = !DILocation(line: 239, column: 123, scope: !1348)
!1358 = !DILocation(line: 239, column: 116, scope: !1348)
!1359 = !DILocation(line: 239, column: 115, scope: !1348)
!1360 = !DILocation(line: 239, column: 111, scope: !1348)
!1361 = !DILocation(line: 239, column: 137, scope: !1348)
!1362 = !DILocation(line: 239, column: 139, scope: !1348)
!1363 = !DILocation(line: 239, column: 132, scope: !1348)
!1364 = !DILocation(line: 239, column: 131, scope: !1348)
!1365 = !DILocation(line: 239, column: 127, scope: !1348)
!1366 = !DILocation(line: 239, column: 22, scope: !1348)
!1367 = !DILocation(line: 239, column: 24, scope: !1348)
!1368 = !DILocation(line: 239, column: 36, scope: !1348)
!1369 = !DILocation(line: 239, column: 40, scope: !1348)
!1370 = !DILocation(line: 239, column: 49, scope: !1348)
!1371 = !DILocation(line: 239, column: 58, scope: !1348)
!1372 = !DILocation(line: 239, column: 60, scope: !1348)
!1373 = !DILocation(line: 239, column: 72, scope: !1348)
!1374 = !DILocation(line: 239, column: 53, scope: !1348)
!1375 = !DILocation(line: 239, column: 17, scope: !1348)
!1376 = !DILocation(line: 239, column: 78, scope: !1348)
!1377 = !DILocation(line: 237, column: 49, scope: !1345)
!1378 = !DILocation(line: 237, column: 13, scope: !1345)
!1379 = distinct !{!1379, !1346, !1380, !303}
!1380 = !DILocation(line: 240, column: 13, scope: !1340)
!1381 = !DILocation(line: 230, column: 82, scope: !1317)
!1382 = !DILocation(line: 230, column: 9, scope: !1317)
!1383 = distinct !{!1383, !1308, !1384, !303}
!1384 = !DILocation(line: 241, column: 9, scope: !1309)
!1385 = !DILocation(line: 228, column: 38, scope: !1307)
!1386 = !DILocation(line: 228, column: 5, scope: !1307)
!1387 = distinct !{!1387, !1274, !1388, !303}
!1388 = !DILocation(line: 242, column: 5, scope: !1275)
!1389 = !DILocation(line: 250, scope: !1312)
!1390 = !DILocalVariable(name: "r", scope: !1312, file: !25, line: 250, type: !45)
!1391 = !DILocation(line: 0, scope: !1312)
!1392 = !DILocation(line: 250, column: 23, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1312, file: !25, line: 250, column: 5)
!1394 = !DILocation(line: 252, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !25, line: 252, column: 9)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !25, line: 251, column: 5)
!1397 = !DILocation(line: 252, scope: !1395)
!1398 = !DILocalVariable(name: "c", scope: !1395, file: !25, line: 252, type: !45)
!1399 = !DILocation(line: 0, scope: !1395)
!1400 = !DILocation(line: 252, column: 27, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !25, line: 252, column: 9)
!1402 = !DILocation(line: 254, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !25, line: 254, column: 13)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !25, line: 253, column: 9)
!1405 = !DILocation(line: 254, scope: !1403)
!1406 = !DILocalVariable(name: "i", scope: !1403, file: !25, line: 254, type: !45)
!1407 = !DILocation(line: 0, scope: !1403)
!1408 = !DILocation(line: 254, column: 35, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !25, line: 254, column: 13)
!1410 = !DILocation(line: 256, column: 55, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !25, line: 255, column: 13)
!1412 = !DILocation(line: 256, column: 59, scope: !1411)
!1413 = !DILocation(line: 256, column: 63, scope: !1411)
!1414 = !DILocation(line: 256, column: 44, scope: !1411)
!1415 = !DILocation(line: 256, column: 95, scope: !1411)
!1416 = !DILocation(line: 256, column: 92, scope: !1411)
!1417 = !DILocation(line: 256, column: 75, scope: !1411)
!1418 = !DILocation(line: 256, column: 99, scope: !1411)
!1419 = !DILocation(line: 256, column: 104, scope: !1411)
!1420 = !DILocation(line: 256, column: 17, scope: !1411)
!1421 = !DILocation(line: 254, column: 50, scope: !1409)
!1422 = !DILocation(line: 254, column: 13, scope: !1409)
!1423 = distinct !{!1423, !1402, !1424, !303}
!1424 = !DILocation(line: 257, column: 13, scope: !1403)
!1425 = !DILocation(line: 252, column: 50, scope: !1401)
!1426 = !DILocation(line: 252, column: 9, scope: !1401)
!1427 = distinct !{!1427, !1394, !1428, !303}
!1428 = !DILocation(line: 258, column: 9, scope: !1395)
!1429 = !DILocation(line: 250, column: 38, scope: !1393)
!1430 = !DILocation(line: 250, column: 5, scope: !1393)
!1431 = distinct !{!1431, !1311, !1432, !303}
!1432 = !DILocation(line: 259, column: 5, scope: !1312)
!1433 = !DILocation(line: 260, column: 1, scope: !1080)
!1434 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1435, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !49, !49, !18, !45, !45, !45}
!1437 = !DILocalVariable(name: "a", arg: 1, scope: !1434, file: !493, line: 79, type: !49)
!1438 = !DILocation(line: 0, scope: !1434)
!1439 = !DILocalVariable(name: "b", arg: 2, scope: !1434, file: !493, line: 79, type: !49)
!1440 = !DILocalVariable(name: "c", arg: 3, scope: !1434, file: !493, line: 80, type: !18)
!1441 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1434, file: !493, line: 80, type: !45)
!1442 = !DILocalVariable(name: "row_a", arg: 5, scope: !1434, file: !493, line: 80, type: !45)
!1443 = !DILocalVariable(name: "col_b", arg: 6, scope: !1434, file: !493, line: 80, type: !45)
!1444 = !DILocalVariable(name: "i", scope: !1445, file: !493, line: 81, type: !45)
!1445 = distinct !DILexicalBlock(scope: !1434, file: !493, line: 81, column: 5)
!1446 = !DILocation(line: 0, scope: !1445)
!1447 = !DILocation(line: 81, column: 10, scope: !1445)
!1448 = !DILocation(line: 81, scope: !1445)
!1449 = !DILocation(line: 81, column: 23, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !493, line: 81, column: 5)
!1451 = !DILocation(line: 81, column: 5, scope: !1445)
!1452 = !DILocation(line: 82, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !493, line: 82, column: 9)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !493, line: 81, column: 53)
!1455 = !DILocation(line: 82, scope: !1453)
!1456 = !DILocalVariable(name: "j", scope: !1453, file: !493, line: 82, type: !45)
!1457 = !DILocation(line: 0, scope: !1453)
!1458 = !DILocation(line: 83, column: 18, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !493, line: 82, column: 46)
!1460 = distinct !DILexicalBlock(scope: !1453, file: !493, line: 82, column: 9)
!1461 = !DILocation(line: 83, column: 16, scope: !1459)
!1462 = !DILocation(line: 82, column: 41, scope: !1460)
!1463 = !DILocation(line: 82, column: 9, scope: !1460)
!1464 = distinct !{!1464, !1452, !1465, !303}
!1465 = !DILocation(line: 84, column: 9, scope: !1453)
!1466 = !DILocation(line: 81, column: 32, scope: !1450)
!1467 = !DILocation(line: 81, column: 39, scope: !1450)
!1468 = !DILocation(line: 81, column: 5, scope: !1450)
!1469 = distinct !{!1469, !1451, !1470, !303}
!1470 = !DILocation(line: 85, column: 5, scope: !1445)
!1471 = !DILocation(line: 86, column: 1, scope: !1434)
!1472 = distinct !DISubprogram(name: "mat_add", scope: !493, file: !493, line: 88, type: !1473, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !49, !49, !18, !45, !45}
!1475 = !DILocalVariable(name: "a", arg: 1, scope: !1472, file: !493, line: 88, type: !49)
!1476 = !DILocation(line: 0, scope: !1472)
!1477 = !DILocalVariable(name: "b", arg: 2, scope: !1472, file: !493, line: 88, type: !49)
!1478 = !DILocalVariable(name: "c", arg: 3, scope: !1472, file: !493, line: 89, type: !18)
!1479 = !DILocalVariable(name: "m", arg: 4, scope: !1472, file: !493, line: 89, type: !45)
!1480 = !DILocalVariable(name: "n", arg: 5, scope: !1472, file: !493, line: 89, type: !45)
!1481 = !DILocalVariable(name: "i", scope: !1482, file: !493, line: 90, type: !45)
!1482 = distinct !DILexicalBlock(scope: !1472, file: !493, line: 90, column: 5)
!1483 = !DILocation(line: 0, scope: !1482)
!1484 = !DILocation(line: 90, column: 10, scope: !1482)
!1485 = !DILocation(line: 90, scope: !1482)
!1486 = !DILocation(line: 90, column: 23, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !493, line: 90, column: 5)
!1488 = !DILocation(line: 90, column: 5, scope: !1482)
!1489 = !DILocalVariable(name: "j", scope: !1490, file: !493, line: 91, type: !45)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !493, line: 91, column: 9)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !493, line: 90, column: 33)
!1492 = !DILocation(line: 0, scope: !1490)
!1493 = !DILocation(line: 92, column: 42, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !493, line: 91, column: 37)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !493, line: 91, column: 9)
!1496 = !DILocation(line: 92, column: 38, scope: !1494)
!1497 = !DILocation(line: 92, column: 60, scope: !1494)
!1498 = !DILocation(line: 92, column: 56, scope: !1494)
!1499 = !DILocation(line: 92, column: 32, scope: !1494)
!1500 = !DILocation(line: 92, column: 17, scope: !1494)
!1501 = !DILocation(line: 92, column: 30, scope: !1494)
!1502 = !DILocation(line: 90, column: 28, scope: !1487)
!1503 = !DILocation(line: 90, column: 5, scope: !1487)
!1504 = distinct !{!1504, !1488, !1505, !303}
!1505 = !DILocation(line: 94, column: 5, scope: !1482)
!1506 = !DILocation(line: 95, column: 1, scope: !1472)
!1507 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !276, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1508 = !DILocalVariable(name: "m", arg: 1, scope: !1507, file: !25, line: 32, type: !49)
!1509 = !DILocation(line: 0, scope: !1507)
!1510 = !DILocalVariable(name: "menc", arg: 2, scope: !1507, file: !25, line: 32, type: !18)
!1511 = !DILocalVariable(name: "mlen", arg: 3, scope: !1507, file: !25, line: 32, type: !45)
!1512 = !DILocalVariable(name: "i", scope: !1507, file: !25, line: 33, type: !45)
!1513 = !DILocation(line: 34, column: 10, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1507, file: !25, line: 34, column: 5)
!1515 = !DILocation(line: 34, scope: !1514)
!1516 = !DILocation(line: 34, column: 19, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !25, line: 34, column: 5)
!1518 = !DILocation(line: 34, column: 5, scope: !1514)
!1519 = !DILocation(line: 35, column: 20, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !25, line: 34, column: 44)
!1521 = !DILocation(line: 35, column: 31, scope: !1520)
!1522 = !DILocation(line: 35, column: 27, scope: !1520)
!1523 = !DILocation(line: 35, column: 36, scope: !1520)
!1524 = !DILocation(line: 35, column: 24, scope: !1520)
!1525 = !DILocation(line: 35, column: 9, scope: !1520)
!1526 = !DILocation(line: 35, column: 17, scope: !1520)
!1527 = !DILocation(line: 34, column: 31, scope: !1517)
!1528 = !DILocation(line: 34, column: 38, scope: !1517)
!1529 = !DILocation(line: 34, column: 5, scope: !1517)
!1530 = distinct !{!1530, !1518, !1531, !303}
!1531 = !DILocation(line: 36, column: 5, scope: !1514)
!1532 = !DILocation(line: 41, column: 1, scope: !1507)
!1533 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1534, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!14, !14, !14}
!1536 = !DILocalVariable(name: "a", arg: 1, scope: !1533, file: !493, line: 43, type: !14)
!1537 = !DILocation(line: 0, scope: !1533)
!1538 = !DILocalVariable(name: "b", arg: 2, scope: !1533, file: !493, line: 43, type: !14)
!1539 = !DILocation(line: 44, column: 14, scope: !1533)
!1540 = !DILocation(line: 44, column: 5, scope: !1533)
!1541 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1542, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!14, !49, !49, !45, !45}
!1544 = !DILocalVariable(name: "a", arg: 1, scope: !1541, file: !493, line: 70, type: !49)
!1545 = !DILocation(line: 0, scope: !1541)
!1546 = !DILocalVariable(name: "b", arg: 2, scope: !1541, file: !493, line: 71, type: !49)
!1547 = !DILocalVariable(name: "n", arg: 3, scope: !1541, file: !493, line: 71, type: !45)
!1548 = !DILocalVariable(name: "m", arg: 4, scope: !1541, file: !493, line: 71, type: !45)
!1549 = !DILocalVariable(name: "ret", scope: !1541, file: !493, line: 72, type: !14)
!1550 = !DILocalVariable(name: "i", scope: !1551, file: !493, line: 73, type: !45)
!1551 = distinct !DILexicalBlock(scope: !1541, file: !493, line: 73, column: 5)
!1552 = !DILocation(line: 0, scope: !1551)
!1553 = !DILocation(line: 73, column: 10, scope: !1551)
!1554 = !DILocation(line: 73, scope: !1551)
!1555 = !DILocation(line: 73, column: 23, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !493, line: 73, column: 5)
!1557 = !DILocation(line: 73, column: 5, scope: !1551)
!1558 = !DILocation(line: 74, column: 27, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !493, line: 73, column: 41)
!1560 = !DILocation(line: 74, column: 33, scope: !1559)
!1561 = !DILocation(line: 74, column: 21, scope: !1559)
!1562 = !DILocation(line: 74, column: 15, scope: !1559)
!1563 = !DILocation(line: 73, column: 28, scope: !1556)
!1564 = !DILocation(line: 73, column: 35, scope: !1556)
!1565 = !DILocation(line: 73, column: 5, scope: !1556)
!1566 = distinct !{!1566, !1557, !1567, !303}
!1567 = !DILocation(line: 75, column: 5, scope: !1551)
!1568 = !DILocation(line: 76, column: 5, scope: !1541)
!1569 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1534, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1570 = !DILocalVariable(name: "a", arg: 1, scope: !1569, file: !493, line: 9, type: !14)
!1571 = !DILocation(line: 0, scope: !1569)
!1572 = !DILocalVariable(name: "b", arg: 2, scope: !1569, file: !493, line: 9, type: !14)
!1573 = !DILocation(line: 14, column: 10, scope: !1569)
!1574 = !DILocation(line: 14, column: 7, scope: !1569)
!1575 = !DILocation(line: 17, column: 17, scope: !1569)
!1576 = !DILocalVariable(name: "p", scope: !1569, file: !493, line: 11, type: !14)
!1577 = !DILocation(line: 18, column: 13, scope: !1569)
!1578 = !DILocation(line: 18, column: 17, scope: !1569)
!1579 = !DILocation(line: 18, column: 7, scope: !1569)
!1580 = !DILocation(line: 19, column: 13, scope: !1569)
!1581 = !DILocation(line: 19, column: 17, scope: !1569)
!1582 = !DILocation(line: 19, column: 7, scope: !1569)
!1583 = !DILocation(line: 20, column: 13, scope: !1569)
!1584 = !DILocation(line: 20, column: 17, scope: !1569)
!1585 = !DILocation(line: 20, column: 7, scope: !1569)
!1586 = !DILocalVariable(name: "top_p", scope: !1569, file: !493, line: 23, type: !14)
!1587 = !DILocation(line: 24, column: 37, scope: !1569)
!1588 = !DILocation(line: 24, column: 52, scope: !1569)
!1589 = !DILocation(line: 24, column: 43, scope: !1569)
!1590 = !DILocation(line: 24, column: 59, scope: !1569)
!1591 = !DILocalVariable(name: "out", scope: !1569, file: !493, line: 24, type: !14)
!1592 = !DILocation(line: 25, column: 5, scope: !1569)
!1593 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1594 = !DILocation(line: 0, scope: !24)
!1595 = !DILocalVariable(name: "i", scope: !1596, file: !25, line: 117, type: !15)
!1596 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1597 = !DILocation(line: 0, scope: !1596)
!1598 = !DILocation(line: 117, column: 10, scope: !1596)
!1599 = !DILocation(line: 117, scope: !1596)
!1600 = !DILocation(line: 117, column: 26, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !25, line: 117, column: 5)
!1602 = !DILocation(line: 117, column: 5, scope: !1596)
!1603 = !DILocation(line: 124, column: 5, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1605 = !DILocation(line: 119, column: 24, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !25, line: 118, column: 5)
!1607 = !DILocation(line: 119, column: 29, scope: !1606)
!1608 = !DILocation(line: 119, column: 41, scope: !1606)
!1609 = !DILocation(line: 119, column: 38, scope: !1606)
!1610 = !DILocation(line: 119, column: 36, scope: !1606)
!1611 = !DILocation(line: 119, column: 46, scope: !1606)
!1612 = !DILocalVariable(name: "t", scope: !1606, file: !25, line: 119, type: !6)
!1613 = !DILocation(line: 0, scope: !1606)
!1614 = !DILocation(line: 120, column: 21, scope: !1606)
!1615 = !DILocation(line: 120, column: 9, scope: !1606)
!1616 = !DILocation(line: 120, column: 16, scope: !1606)
!1617 = !DILocation(line: 121, column: 12, scope: !1606)
!1618 = !DILocation(line: 121, column: 9, scope: !1606)
!1619 = !DILocation(line: 121, column: 16, scope: !1606)
!1620 = !DILocation(line: 117, column: 33, scope: !1601)
!1621 = !DILocation(line: 117, column: 5, scope: !1601)
!1622 = distinct !{!1622, !1602, !1623, !303}
!1623 = !DILocation(line: 122, column: 5, scope: !1596)
!1624 = !DILocation(line: 124, scope: !1604)
!1625 = !DILocalVariable(name: "i", scope: !1604, file: !25, line: 124, type: !15)
!1626 = !DILocation(line: 0, scope: !1604)
!1627 = !DILocation(line: 124, column: 26, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1604, file: !25, line: 124, column: 5)
!1629 = !DILocation(line: 134, column: 5, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1631 = !DILocation(line: 126, column: 25, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !25, line: 125, column: 5)
!1633 = !DILocation(line: 126, column: 32, scope: !1632)
!1634 = !DILocation(line: 126, column: 43, scope: !1632)
!1635 = !DILocation(line: 126, column: 40, scope: !1632)
!1636 = !DILocation(line: 126, column: 38, scope: !1632)
!1637 = !DILocation(line: 126, column: 48, scope: !1632)
!1638 = !DILocalVariable(name: "t0", scope: !1632, file: !25, line: 126, type: !6)
!1639 = !DILocation(line: 0, scope: !1632)
!1640 = !DILocation(line: 127, column: 28, scope: !1632)
!1641 = !DILocation(line: 127, column: 25, scope: !1632)
!1642 = !DILocation(line: 127, column: 32, scope: !1632)
!1643 = !DILocation(line: 127, column: 43, scope: !1632)
!1644 = !DILocation(line: 127, column: 40, scope: !1632)
!1645 = !DILocation(line: 127, column: 38, scope: !1632)
!1646 = !DILocation(line: 127, column: 48, scope: !1632)
!1647 = !DILocalVariable(name: "t1", scope: !1632, file: !25, line: 127, type: !6)
!1648 = !DILocation(line: 128, column: 23, scope: !1632)
!1649 = !DILocation(line: 128, column: 9, scope: !1632)
!1650 = !DILocation(line: 128, column: 16, scope: !1632)
!1651 = !DILocation(line: 129, column: 23, scope: !1632)
!1652 = !DILocation(line: 129, column: 12, scope: !1632)
!1653 = !DILocation(line: 129, column: 9, scope: !1632)
!1654 = !DILocation(line: 129, column: 16, scope: !1632)
!1655 = !DILocation(line: 130, column: 12, scope: !1632)
!1656 = !DILocation(line: 130, column: 9, scope: !1632)
!1657 = !DILocation(line: 130, column: 16, scope: !1632)
!1658 = !DILocation(line: 131, column: 12, scope: !1632)
!1659 = !DILocation(line: 131, column: 9, scope: !1632)
!1660 = !DILocation(line: 131, column: 16, scope: !1632)
!1661 = !DILocation(line: 124, column: 33, scope: !1628)
!1662 = !DILocation(line: 124, column: 5, scope: !1628)
!1663 = distinct !{!1663, !1603, !1664, !303}
!1664 = !DILocation(line: 132, column: 5, scope: !1604)
!1665 = !DILocation(line: 134, scope: !1630)
!1666 = !DILocalVariable(name: "i", scope: !1630, file: !25, line: 134, type: !15)
!1667 = !DILocation(line: 0, scope: !1630)
!1668 = !DILocation(line: 134, column: 26, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1630, file: !25, line: 134, column: 5)
!1670 = !DILocation(line: 145, column: 5, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1672 = !DILocation(line: 136, column: 25, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !25, line: 135, column: 5)
!1674 = !DILocation(line: 136, column: 32, scope: !1673)
!1675 = !DILocation(line: 136, column: 44, scope: !1673)
!1676 = !DILocation(line: 136, column: 41, scope: !1673)
!1677 = !DILocation(line: 136, column: 39, scope: !1673)
!1678 = !DILocation(line: 136, column: 50, scope: !1673)
!1679 = !DILocalVariable(name: "t0", scope: !1673, file: !25, line: 136, type: !6)
!1680 = !DILocation(line: 0, scope: !1673)
!1681 = !DILocation(line: 137, column: 28, scope: !1673)
!1682 = !DILocation(line: 137, column: 25, scope: !1673)
!1683 = !DILocation(line: 137, column: 32, scope: !1673)
!1684 = !DILocation(line: 137, column: 44, scope: !1673)
!1685 = !DILocation(line: 137, column: 41, scope: !1673)
!1686 = !DILocation(line: 137, column: 39, scope: !1673)
!1687 = !DILocation(line: 137, column: 50, scope: !1673)
!1688 = !DILocalVariable(name: "t1", scope: !1673, file: !25, line: 137, type: !6)
!1689 = !DILocation(line: 139, column: 23, scope: !1673)
!1690 = !DILocation(line: 139, column: 9, scope: !1673)
!1691 = !DILocation(line: 139, column: 17, scope: !1673)
!1692 = !DILocation(line: 140, column: 23, scope: !1673)
!1693 = !DILocation(line: 140, column: 12, scope: !1673)
!1694 = !DILocation(line: 140, column: 9, scope: !1673)
!1695 = !DILocation(line: 140, column: 17, scope: !1673)
!1696 = !DILocation(line: 141, column: 12, scope: !1673)
!1697 = !DILocation(line: 141, column: 9, scope: !1673)
!1698 = !DILocation(line: 141, column: 17, scope: !1673)
!1699 = !DILocation(line: 142, column: 12, scope: !1673)
!1700 = !DILocation(line: 142, column: 9, scope: !1673)
!1701 = !DILocation(line: 142, column: 17, scope: !1673)
!1702 = !DILocation(line: 134, column: 32, scope: !1669)
!1703 = !DILocation(line: 134, column: 5, scope: !1669)
!1704 = distinct !{!1704, !1629, !1705, !303}
!1705 = !DILocation(line: 143, column: 5, scope: !1630)
!1706 = !DILocation(line: 145, scope: !1671)
!1707 = !DILocalVariable(name: "i", scope: !1671, file: !25, line: 145, type: !15)
!1708 = !DILocation(line: 0, scope: !1671)
!1709 = !DILocation(line: 145, column: 26, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1671, file: !25, line: 145, column: 5)
!1711 = !DILocation(line: 147, column: 24, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1710, file: !25, line: 146, column: 5)
!1713 = !DILocation(line: 147, column: 28, scope: !1712)
!1714 = !DILocation(line: 147, column: 39, scope: !1712)
!1715 = !DILocation(line: 147, column: 36, scope: !1712)
!1716 = !DILocation(line: 147, column: 44, scope: !1712)
!1717 = !DILocalVariable(name: "t", scope: !1712, file: !25, line: 147, type: !6)
!1718 = !DILocation(line: 0, scope: !1712)
!1719 = !DILocation(line: 148, column: 21, scope: !1712)
!1720 = !DILocation(line: 148, column: 9, scope: !1712)
!1721 = !DILocation(line: 148, column: 16, scope: !1712)
!1722 = !DILocation(line: 149, column: 12, scope: !1712)
!1723 = !DILocation(line: 149, column: 9, scope: !1712)
!1724 = !DILocation(line: 149, column: 16, scope: !1712)
!1725 = !DILocation(line: 145, column: 32, scope: !1710)
!1726 = !DILocation(line: 145, column: 5, scope: !1710)
!1727 = distinct !{!1727, !1670, !1728, !303}
!1728 = !DILocation(line: 150, column: 5, scope: !1671)
!1729 = !DILocation(line: 151, column: 1, scope: !24)
!1730 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !323, file: !323, line: 61, type: !379, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1731 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1730, file: !323, line: 61, type: !239)
!1732 = !DILocation(line: 0, scope: !1730)
!1733 = !DILocalVariable(name: "mat", arg: 2, scope: !1730, file: !323, line: 61, type: !49)
!1734 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1730, file: !323, line: 61, type: !326)
!1735 = !DILocalVariable(name: "acc", arg: 4, scope: !1730, file: !323, line: 61, type: !5)
!1736 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1730, file: !323, line: 62, type: !239)
!1737 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1730, file: !323, line: 62, type: !239)
!1738 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1730, file: !323, line: 62, type: !239)
!1739 = !DILocalVariable(name: "r", scope: !1740, file: !323, line: 64, type: !45)
!1740 = distinct !DILexicalBlock(scope: !1730, file: !323, line: 64, column: 5)
!1741 = !DILocation(line: 0, scope: !1740)
!1742 = !DILocation(line: 64, column: 10, scope: !1740)
!1743 = !DILocation(line: 64, scope: !1740)
!1744 = !DILocation(line: 64, column: 23, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !323, line: 64, column: 5)
!1746 = !DILocation(line: 64, column: 5, scope: !1740)
!1747 = !DILocation(line: 65, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !323, line: 65, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !323, line: 64, column: 40)
!1750 = !DILocation(line: 65, scope: !1748)
!1751 = !DILocalVariable(name: "c", scope: !1748, file: !323, line: 65, type: !45)
!1752 = !DILocation(line: 0, scope: !1748)
!1753 = !DILocation(line: 65, column: 27, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1748, file: !323, line: 65, column: 9)
!1755 = !DILocation(line: 66, column: 13, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !323, line: 66, column: 13)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !323, line: 65, column: 44)
!1758 = !DILocation(line: 66, scope: !1756)
!1759 = !DILocalVariable(name: "k", scope: !1756, file: !323, line: 66, type: !45)
!1760 = !DILocation(line: 0, scope: !1756)
!1761 = !DILocation(line: 66, column: 31, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !323, line: 66, column: 13)
!1763 = !DILocation(line: 67, column: 70, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1762, file: !323, line: 66, column: 54)
!1765 = !DILocation(line: 67, column: 84, scope: !1764)
!1766 = !DILocation(line: 67, column: 51, scope: !1764)
!1767 = !DILocation(line: 67, column: 96, scope: !1764)
!1768 = !DILocation(line: 67, column: 90, scope: !1764)
!1769 = !DILocation(line: 67, column: 136, scope: !1764)
!1770 = !DILocation(line: 67, column: 150, scope: !1764)
!1771 = !DILocation(line: 67, column: 117, scope: !1764)
!1772 = !DILocation(line: 67, column: 17, scope: !1764)
!1773 = !DILocation(line: 66, column: 48, scope: !1762)
!1774 = !DILocation(line: 66, column: 13, scope: !1762)
!1775 = distinct !{!1775, !1755, !1776, !303}
!1776 = !DILocation(line: 68, column: 13, scope: !1756)
!1777 = !DILocation(line: 65, column: 40, scope: !1754)
!1778 = !DILocation(line: 65, column: 9, scope: !1754)
!1779 = distinct !{!1779, !1747, !1780, !303}
!1780 = !DILocation(line: 69, column: 9, scope: !1748)
!1781 = !DILocation(line: 64, column: 36, scope: !1745)
!1782 = !DILocation(line: 64, column: 5, scope: !1745)
!1783 = distinct !{!1783, !1746, !1784, !303}
!1784 = !DILocation(line: 70, column: 5, scope: !1740)
!1785 = !DILocation(line: 71, column: 1, scope: !1730)
!1786 = distinct !DISubprogram(name: "P1_times_Vt", scope: !323, file: !323, line: 82, type: !369, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1787 = !DILocalVariable(name: "p", arg: 1, scope: !1786, file: !323, line: 82, type: !174)
!1788 = !DILocation(line: 0, scope: !1786)
!1789 = !DILocalVariable(name: "P1", arg: 2, scope: !1786, file: !323, line: 82, type: !326)
!1790 = !DILocalVariable(name: "V", arg: 3, scope: !1786, file: !323, line: 82, type: !49)
!1791 = !DILocalVariable(name: "acc", arg: 4, scope: !1786, file: !323, line: 82, type: !5)
!1792 = !DILocation(line: 86, column: 5, scope: !1786)
!1793 = !DILocation(line: 87, column: 1, scope: !1786)
!1794 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !323, file: !323, line: 32, type: !509, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1795 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1794, file: !323, line: 32, type: !239)
!1796 = !DILocation(line: 0, scope: !1794)
!1797 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1794, file: !323, line: 32, type: !326)
!1798 = !DILocalVariable(name: "mat", arg: 3, scope: !1794, file: !323, line: 32, type: !49)
!1799 = !DILocalVariable(name: "acc", arg: 4, scope: !1794, file: !323, line: 32, type: !5)
!1800 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1794, file: !323, line: 33, type: !239)
!1801 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1794, file: !323, line: 33, type: !239)
!1802 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1794, file: !323, line: 33, type: !239)
!1803 = !DILocalVariable(name: "triangular", arg: 8, scope: !1794, file: !323, line: 33, type: !239)
!1804 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1794, file: !323, line: 34, type: !45)
!1805 = !DILocalVariable(name: "r", scope: !1806, file: !323, line: 35, type: !45)
!1806 = distinct !DILexicalBlock(scope: !1794, file: !323, line: 35, column: 5)
!1807 = !DILocation(line: 0, scope: !1806)
!1808 = !DILocation(line: 35, column: 10, scope: !1806)
!1809 = !DILocation(line: 34, column: 9, scope: !1794)
!1810 = !DILocation(line: 35, scope: !1806)
!1811 = !DILocation(line: 35, column: 23, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !323, line: 35, column: 5)
!1813 = !DILocation(line: 35, column: 5, scope: !1806)
!1814 = !DILocation(line: 36, column: 9, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !323, line: 36, column: 9)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !323, line: 35, column: 43)
!1817 = !DILocation(line: 36, scope: !1815)
!1818 = !DILocalVariable(name: "c", scope: !1815, file: !323, line: 36, type: !45)
!1819 = !DILocation(line: 0, scope: !1815)
!1820 = !DILocation(line: 36, column: 40, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !323, line: 36, column: 9)
!1822 = !DILocation(line: 37, column: 13, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !323, line: 37, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !323, line: 36, column: 60)
!1825 = !DILocation(line: 37, scope: !1823)
!1826 = !DILocalVariable(name: "k", scope: !1823, file: !323, line: 37, type: !45)
!1827 = !DILocation(line: 0, scope: !1823)
!1828 = !DILocation(line: 37, column: 31, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !323, line: 37, column: 13)
!1830 = !DILocation(line: 38, column: 51, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1829, file: !323, line: 37, column: 51)
!1832 = !DILocation(line: 38, column: 94, scope: !1831)
!1833 = !DILocation(line: 38, column: 88, scope: !1831)
!1834 = !DILocation(line: 38, column: 137, scope: !1831)
!1835 = !DILocation(line: 38, column: 148, scope: !1831)
!1836 = !DILocation(line: 38, column: 118, scope: !1831)
!1837 = !DILocation(line: 38, column: 17, scope: !1831)
!1838 = !DILocation(line: 37, column: 45, scope: !1829)
!1839 = !DILocation(line: 37, column: 13, scope: !1829)
!1840 = distinct !{!1840, !1822, !1841, !303}
!1841 = !DILocation(line: 39, column: 13, scope: !1823)
!1842 = !DILocation(line: 40, column: 33, scope: !1824)
!1843 = !DILocation(line: 36, column: 56, scope: !1821)
!1844 = !DILocation(line: 36, column: 9, scope: !1821)
!1845 = distinct !{!1845, !1814, !1846, !303}
!1846 = !DILocation(line: 41, column: 9, scope: !1815)
!1847 = !DILocation(line: 35, column: 39, scope: !1812)
!1848 = !DILocation(line: 35, column: 5, scope: !1812)
!1849 = distinct !{!1849, !1813, !1850, !303}
!1850 = !DILocation(line: 42, column: 5, scope: !1806)
!1851 = !DILocation(line: 43, column: 1, scope: !1794)
!1852 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !700, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1853 = !DILocalVariable(name: "p", arg: 1, scope: !1852, file: !25, line: 501, type: !174)
!1854 = !DILocation(line: 0, scope: !1852)
!1855 = !DILocalVariable(name: "sm", arg: 2, scope: !1852, file: !25, line: 501, type: !18)
!1856 = !DILocalVariable(name: "smlen", arg: 3, scope: !1852, file: !25, line: 502, type: !702)
!1857 = !DILocalVariable(name: "m", arg: 4, scope: !1852, file: !25, line: 502, type: !49)
!1858 = !DILocalVariable(name: "mlen", arg: 5, scope: !1852, file: !25, line: 503, type: !15)
!1859 = !DILocalVariable(name: "csk", arg: 6, scope: !1852, file: !25, line: 503, type: !49)
!1860 = !DILocalVariable(name: "ret", scope: !1852, file: !25, line: 504, type: !45)
!1861 = !DILocalVariable(name: "param_sig_bytes", scope: !1852, file: !25, line: 505, type: !239)
!1862 = !DILocation(line: 507, column: 16, scope: !1852)
!1863 = !DILocation(line: 507, column: 5, scope: !1852)
!1864 = !DILocation(line: 508, column: 50, scope: !1852)
!1865 = !DILocalVariable(name: "siglen", scope: !1852, file: !25, line: 506, type: !15)
!1866 = !DILocation(line: 508, column: 11, scope: !1852)
!1867 = !DILocation(line: 509, column: 13, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1852, file: !25, line: 509, column: 9)
!1869 = !DILocation(line: 509, column: 24, scope: !1868)
!1870 = !DILocation(line: 510, column: 23, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !25, line: 509, column: 62)
!1872 = !DILocation(line: 510, column: 30, scope: !1871)
!1873 = !DILocation(line: 510, column: 9, scope: !1871)
!1874 = !DILocation(line: 511, column: 9, scope: !1871)
!1875 = !DILocation(line: 514, column: 14, scope: !1852)
!1876 = !DILocation(line: 514, column: 21, scope: !1852)
!1877 = !DILocation(line: 514, column: 12, scope: !1852)
!1878 = !DILocation(line: 514, column: 5, scope: !1852)
!1879 = !DILabel(scope: !1852, name: "err", file: !25, line: 515)
!1880 = !DILocation(line: 515, column: 1, scope: !1852)
!1881 = !DILocation(line: 516, column: 5, scope: !1852)
!1882 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_open", scope: !25, file: !25, line: 519, type: !700, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1883 = !DILocalVariable(name: "p", arg: 1, scope: !1882, file: !25, line: 519, type: !174)
!1884 = !DILocation(line: 0, scope: !1882)
!1885 = !DILocalVariable(name: "m", arg: 2, scope: !1882, file: !25, line: 519, type: !18)
!1886 = !DILocalVariable(name: "mlen", arg: 3, scope: !1882, file: !25, line: 520, type: !702)
!1887 = !DILocalVariable(name: "sm", arg: 4, scope: !1882, file: !25, line: 520, type: !49)
!1888 = !DILocalVariable(name: "smlen", arg: 5, scope: !1882, file: !25, line: 521, type: !15)
!1889 = !DILocalVariable(name: "pk", arg: 6, scope: !1882, file: !25, line: 521, type: !49)
!1890 = !DILocalVariable(name: "param_sig_bytes", scope: !1882, file: !25, line: 522, type: !239)
!1891 = !DILocation(line: 523, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1882, file: !25, line: 523, column: 9)
!1893 = !DILocation(line: 526, column: 36, scope: !1882)
!1894 = !DILocation(line: 526, column: 61, scope: !1882)
!1895 = !DILocation(line: 526, column: 18, scope: !1882)
!1896 = !DILocalVariable(name: "result", scope: !1882, file: !25, line: 526, type: !45)
!1897 = !DILocation(line: 529, column: 16, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1882, file: !25, line: 529, column: 9)
!1899 = !DILocation(line: 530, column: 23, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1898, file: !25, line: 529, column: 28)
!1901 = !DILocation(line: 530, column: 15, scope: !1900)
!1902 = !DILocation(line: 531, column: 23, scope: !1900)
!1903 = !DILocation(line: 531, column: 9, scope: !1900)
!1904 = !DILocation(line: 532, column: 5, scope: !1900)
!1905 = !DILocation(line: 535, column: 1, scope: !1882)
!1906 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1907, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!45, !174, !49, !15, !49, !49}
!1909 = !DILocalVariable(name: "p", arg: 1, scope: !1906, file: !25, line: 616, type: !174)
!1910 = !DILocation(line: 0, scope: !1906)
!1911 = !DILocalVariable(name: "m", arg: 2, scope: !1906, file: !25, line: 616, type: !49)
!1912 = !DILocalVariable(name: "mlen", arg: 3, scope: !1906, file: !25, line: 617, type: !15)
!1913 = !DILocalVariable(name: "sig", arg: 4, scope: !1906, file: !25, line: 617, type: !49)
!1914 = !DILocalVariable(name: "cpk", arg: 5, scope: !1906, file: !25, line: 618, type: !49)
!1915 = !DILocalVariable(name: "tEnc", scope: !1906, file: !25, line: 619, type: !712)
!1916 = !DILocation(line: 619, column: 19, scope: !1906)
!1917 = !DILocalVariable(name: "t", scope: !1906, file: !25, line: 620, type: !717)
!1918 = !DILocation(line: 620, column: 19, scope: !1906)
!1919 = !DILocalVariable(name: "y", scope: !1906, file: !25, line: 621, type: !1920)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1728, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 216)
!1923 = !DILocation(line: 621, column: 19, scope: !1906)
!1924 = !DILocalVariable(name: "s", scope: !1906, file: !25, line: 622, type: !741)
!1925 = !DILocation(line: 622, column: 19, scope: !1906)
!1926 = !DILocalVariable(name: "pk", scope: !1906, file: !25, line: 623, type: !123)
!1927 = !DILocation(line: 623, column: 14, scope: !1906)
!1928 = !DILocalVariable(name: "tmp", scope: !1906, file: !25, line: 624, type: !1929)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !1930)
!1930 = !{!1931}
!1931 = !DISubrange(count: 80)
!1932 = !DILocation(line: 624, column: 19, scope: !1906)
!1933 = !DILocalVariable(name: "param_m", scope: !1906, file: !25, line: 626, type: !239)
!1934 = !DILocalVariable(name: "param_n", scope: !1906, file: !25, line: 627, type: !239)
!1935 = !DILocalVariable(name: "param_k", scope: !1906, file: !25, line: 628, type: !239)
!1936 = !DILocalVariable(name: "param_m_bytes", scope: !1906, file: !25, line: 629, type: !239)
!1937 = !DILocalVariable(name: "param_sig_bytes", scope: !1906, file: !25, line: 630, type: !239)
!1938 = !DILocalVariable(name: "param_digest_bytes", scope: !1906, file: !25, line: 631, type: !239)
!1939 = !DILocalVariable(name: "param_salt_bytes", scope: !1906, file: !25, line: 632, type: !239)
!1940 = !DILocation(line: 634, column: 15, scope: !1906)
!1941 = !DILocalVariable(name: "ret", scope: !1906, file: !25, line: 634, type: !45)
!1942 = !DILocalVariable(name: "P1", scope: !1906, file: !25, line: 639, type: !5)
!1943 = !DILocation(line: 640, column: 23, scope: !1906)
!1944 = !DILocalVariable(name: "P2", scope: !1906, file: !25, line: 640, type: !5)
!1945 = !DILocation(line: 641, column: 23, scope: !1906)
!1946 = !DILocalVariable(name: "P3", scope: !1906, file: !25, line: 641, type: !5)
!1947 = !DILocation(line: 656, column: 5, scope: !1906)
!1948 = !DILocation(line: 659, column: 16, scope: !1906)
!1949 = !DILocation(line: 659, column: 60, scope: !1906)
!1950 = !DILocation(line: 659, column: 5, scope: !1906)
!1951 = !DILocation(line: 661, column: 5, scope: !1906)
!1952 = !DILocation(line: 662, column: 5, scope: !1906)
!1953 = !DILocation(line: 665, column: 5, scope: !1906)
!1954 = !DILocation(line: 667, column: 5, scope: !1906)
!1955 = !DILocation(line: 669, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1906, file: !25, line: 669, column: 9)
!1957 = !DILocation(line: 669, column: 31, scope: !1956)
!1958 = !DILocation(line: 673, column: 1, scope: !1906)
!1959 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !603, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1960 = !DILocalVariable(name: "p", arg: 1, scope: !1959, file: !25, line: 607, type: !174)
!1961 = !DILocation(line: 0, scope: !1959)
!1962 = !DILocalVariable(name: "cpk", arg: 2, scope: !1959, file: !25, line: 607, type: !49)
!1963 = !DILocalVariable(name: "pk", arg: 3, scope: !1959, file: !25, line: 608, type: !5)
!1964 = !DILocation(line: 609, column: 5, scope: !1959)
!1965 = !DILocation(line: 611, column: 23, scope: !1959)
!1966 = !DILocation(line: 611, column: 72, scope: !1959)
!1967 = !DILocation(line: 611, column: 5, scope: !1959)
!1968 = !DILocation(line: 613, column: 5, scope: !1959)
!1969 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1970, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !174, !49, !326, !326, !326, !18}
!1972 = !DILocalVariable(name: "p", arg: 1, scope: !1969, file: !25, line: 288, type: !174)
!1973 = !DILocation(line: 0, scope: !1969)
!1974 = !DILocalVariable(name: "s", arg: 2, scope: !1969, file: !25, line: 288, type: !49)
!1975 = !DILocalVariable(name: "P1", arg: 3, scope: !1969, file: !25, line: 288, type: !326)
!1976 = !DILocalVariable(name: "P2", arg: 4, scope: !1969, file: !25, line: 288, type: !326)
!1977 = !DILocalVariable(name: "P3", arg: 5, scope: !1969, file: !25, line: 288, type: !326)
!1978 = !DILocalVariable(name: "eval", arg: 6, scope: !1969, file: !25, line: 288, type: !18)
!1979 = !DILocalVariable(name: "SPS", scope: !1969, file: !25, line: 289, type: !1980)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 54208, elements: !1981)
!1981 = !{!1982}
!1982 = !DISubrange(count: 847)
!1983 = !DILocation(line: 289, column: 14, scope: !1969)
!1984 = !DILocation(line: 291, column: 5, scope: !1969)
!1985 = !DILocalVariable(name: "zero", scope: !1969, file: !25, line: 292, type: !717)
!1986 = !DILocation(line: 292, column: 19, scope: !1969)
!1987 = !DILocation(line: 293, column: 5, scope: !1969)
!1988 = !DILocation(line: 294, column: 1, scope: !1969)
!1989 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !323, file: !323, line: 277, type: !1990, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !174, !326, !326, !326, !49, !5}
!1992 = !DILocalVariable(name: "p", arg: 1, scope: !1989, file: !323, line: 277, type: !174)
!1993 = !DILocation(line: 0, scope: !1989)
!1994 = !DILocalVariable(name: "P1", arg: 2, scope: !1989, file: !323, line: 277, type: !326)
!1995 = !DILocalVariable(name: "P2", arg: 3, scope: !1989, file: !323, line: 277, type: !326)
!1996 = !DILocalVariable(name: "P3", arg: 4, scope: !1989, file: !323, line: 277, type: !326)
!1997 = !DILocalVariable(name: "s", arg: 5, scope: !1989, file: !323, line: 277, type: !49)
!1998 = !DILocalVariable(name: "SPS", arg: 6, scope: !1989, file: !323, line: 278, type: !5)
!1999 = !DILocalVariable(name: "PS", scope: !1989, file: !323, line: 286, type: !2000)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 581504, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 9086)
!2003 = !DILocation(line: 286, column: 14, scope: !1989)
!2004 = !DILocation(line: 287, column: 5, scope: !1989)
!2005 = !DILocation(line: 290, column: 5, scope: !1989)
!2006 = !DILocation(line: 292, column: 1, scope: !1989)
!2007 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !323, file: !323, line: 151, type: !2008, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !326, !326, !326, !49, !239, !239, !239, !239, !5}
!2010 = !DILocalVariable(name: "P1", arg: 1, scope: !2007, file: !323, line: 151, type: !326)
!2011 = !DILocation(line: 0, scope: !2007)
!2012 = !DILocalVariable(name: "P2", arg: 2, scope: !2007, file: !323, line: 151, type: !326)
!2013 = !DILocalVariable(name: "P3", arg: 3, scope: !2007, file: !323, line: 151, type: !326)
!2014 = !DILocalVariable(name: "S", arg: 4, scope: !2007, file: !323, line: 151, type: !49)
!2015 = !DILocalVariable(name: "m", arg: 5, scope: !2007, file: !323, line: 152, type: !239)
!2016 = !DILocalVariable(name: "v", arg: 6, scope: !2007, file: !323, line: 152, type: !239)
!2017 = !DILocalVariable(name: "o", arg: 7, scope: !2007, file: !323, line: 152, type: !239)
!2018 = !DILocalVariable(name: "k", arg: 8, scope: !2007, file: !323, line: 152, type: !239)
!2019 = !DILocalVariable(name: "PS", arg: 9, scope: !2007, file: !323, line: 152, type: !5)
!2020 = !DILocalVariable(name: "n", scope: !2007, file: !323, line: 154, type: !239)
!2021 = !DILocalVariable(name: "m_vec_limbs", scope: !2007, file: !323, line: 155, type: !239)
!2022 = !DILocalVariable(name: "accumulator", scope: !2007, file: !323, line: 157, type: !2023)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 9304064, elements: !2024)
!2024 = !{!2025}
!2025 = !DISubrange(count: 145376)
!2026 = !DILocation(line: 157, column: 14, scope: !2007)
!2027 = !DILocalVariable(name: "P1_used", scope: !2007, file: !323, line: 158, type: !45)
!2028 = !DILocalVariable(name: "row", scope: !2029, file: !323, line: 159, type: !45)
!2029 = distinct !DILexicalBlock(scope: !2007, file: !323, line: 159, column: 5)
!2030 = !DILocation(line: 0, scope: !2029)
!2031 = !DILocation(line: 159, column: 10, scope: !2029)
!2032 = !DILocation(line: 158, column: 9, scope: !2007)
!2033 = !DILocation(line: 159, scope: !2029)
!2034 = !DILocation(line: 159, column: 27, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !323, line: 159, column: 5)
!2036 = !DILocation(line: 159, column: 5, scope: !2029)
!2037 = !DILocation(line: 160, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !323, line: 160, column: 9)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !323, line: 159, column: 39)
!2040 = !DILocation(line: 175, column: 5, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2007, file: !323, line: 175, column: 5)
!2042 = !DILocation(line: 160, scope: !2038)
!2043 = !DILocalVariable(name: "j", scope: !2038, file: !323, line: 160, type: !45)
!2044 = !DILocation(line: 0, scope: !2038)
!2045 = !DILocation(line: 160, column: 29, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2038, file: !323, line: 160, column: 9)
!2047 = !DILocation(line: 167, column: 9, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2039, file: !323, line: 167, column: 9)
!2049 = !DILocation(line: 161, column: 13, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !323, line: 161, column: 13)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !323, line: 160, column: 39)
!2052 = !DILocation(line: 161, scope: !2050)
!2053 = !DILocalVariable(name: "col", scope: !2050, file: !323, line: 161, type: !45)
!2054 = !DILocation(line: 0, scope: !2050)
!2055 = !DILocation(line: 161, column: 35, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2050, file: !323, line: 161, column: 13)
!2057 = !DILocation(line: 162, column: 43, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !323, line: 161, column: 47)
!2059 = !DILocation(line: 162, column: 91, scope: !2058)
!2060 = !DILocation(line: 162, column: 95, scope: !2058)
!2061 = !DILocation(line: 162, column: 102, scope: !2058)
!2062 = !DILocation(line: 162, column: 115, scope: !2058)
!2063 = !DILocation(line: 162, column: 109, scope: !2058)
!2064 = !DILocation(line: 162, column: 107, scope: !2058)
!2065 = !DILocation(line: 162, column: 82, scope: !2058)
!2066 = !DILocation(line: 162, column: 17, scope: !2058)
!2067 = !DILocation(line: 161, column: 43, scope: !2056)
!2068 = !DILocation(line: 161, column: 13, scope: !2056)
!2069 = distinct !{!2069, !2049, !2070, !303}
!2070 = !DILocation(line: 163, column: 13, scope: !2050)
!2071 = !DILocation(line: 164, column: 21, scope: !2051)
!2072 = !DILocation(line: 160, column: 35, scope: !2046)
!2073 = !DILocation(line: 160, column: 9, scope: !2046)
!2074 = distinct !{!2074, !2037, !2075, !303}
!2075 = !DILocation(line: 165, column: 9, scope: !2038)
!2076 = !DILocation(line: 167, scope: !2048)
!2077 = !DILocalVariable(name: "j", scope: !2048, file: !323, line: 167, type: !45)
!2078 = !DILocation(line: 0, scope: !2048)
!2079 = !DILocation(line: 167, column: 27, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2048, file: !323, line: 167, column: 9)
!2081 = !DILocation(line: 168, column: 13, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !323, line: 168, column: 13)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !323, line: 167, column: 37)
!2084 = !DILocation(line: 168, scope: !2082)
!2085 = !DILocalVariable(name: "col", scope: !2082, file: !323, line: 168, type: !45)
!2086 = !DILocation(line: 0, scope: !2082)
!2087 = !DILocation(line: 168, column: 35, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2082, file: !323, line: 168, column: 13)
!2089 = !DILocation(line: 169, column: 50, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2088, file: !323, line: 168, column: 47)
!2091 = !DILocation(line: 169, column: 54, scope: !2090)
!2092 = !DILocation(line: 169, column: 43, scope: !2090)
!2093 = !DILocation(line: 169, column: 93, scope: !2090)
!2094 = !DILocation(line: 169, column: 97, scope: !2090)
!2095 = !DILocation(line: 169, column: 104, scope: !2090)
!2096 = !DILocation(line: 169, column: 118, scope: !2090)
!2097 = !DILocation(line: 169, column: 111, scope: !2090)
!2098 = !DILocation(line: 169, column: 109, scope: !2090)
!2099 = !DILocation(line: 169, column: 84, scope: !2090)
!2100 = !DILocation(line: 169, column: 17, scope: !2090)
!2101 = !DILocation(line: 168, column: 43, scope: !2088)
!2102 = !DILocation(line: 168, column: 13, scope: !2088)
!2103 = distinct !{!2103, !2081, !2104, !303}
!2104 = !DILocation(line: 170, column: 13, scope: !2082)
!2105 = !DILocation(line: 167, column: 33, scope: !2080)
!2106 = !DILocation(line: 167, column: 9, scope: !2080)
!2107 = distinct !{!2107, !2047, !2108, !303}
!2108 = !DILocation(line: 171, column: 9, scope: !2048)
!2109 = !DILocation(line: 159, column: 35, scope: !2035)
!2110 = !DILocation(line: 159, column: 5, scope: !2035)
!2111 = distinct !{!2111, !2036, !2112, !303}
!2112 = !DILocation(line: 172, column: 5, scope: !2029)
!2113 = !DILocation(line: 174, column: 9, scope: !2007)
!2114 = !DILocation(line: 175, scope: !2041)
!2115 = !DILocalVariable(name: "row", scope: !2041, file: !323, line: 175, type: !45)
!2116 = !DILocation(line: 0, scope: !2041)
!2117 = !DILocalVariable(name: "P3_used", scope: !2007, file: !323, line: 174, type: !45)
!2118 = !DILocation(line: 175, column: 27, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2041, file: !323, line: 175, column: 5)
!2120 = !DILocation(line: 176, column: 9, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !323, line: 176, column: 9)
!2122 = distinct !DILexicalBlock(scope: !2119, file: !323, line: 175, column: 39)
!2123 = !DILocation(line: 186, column: 5, scope: !2007)
!2124 = !DILocation(line: 176, scope: !2121)
!2125 = !DILocalVariable(name: "j", scope: !2121, file: !323, line: 176, type: !45)
!2126 = !DILocation(line: 0, scope: !2121)
!2127 = !DILocation(line: 176, column: 29, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2121, file: !323, line: 176, column: 9)
!2129 = !DILocation(line: 177, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !323, line: 177, column: 13)
!2131 = distinct !DILexicalBlock(scope: !2128, file: !323, line: 176, column: 39)
!2132 = !DILocation(line: 177, scope: !2130)
!2133 = !DILocalVariable(name: "col", scope: !2130, file: !323, line: 177, type: !45)
!2134 = !DILocation(line: 0, scope: !2130)
!2135 = !DILocation(line: 177, column: 35, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !323, line: 177, column: 13)
!2137 = !DILocation(line: 178, column: 43, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2136, file: !323, line: 177, column: 47)
!2139 = !DILocation(line: 178, column: 89, scope: !2138)
!2140 = !DILocation(line: 178, column: 93, scope: !2138)
!2141 = !DILocation(line: 178, column: 100, scope: !2138)
!2142 = !DILocation(line: 178, column: 113, scope: !2138)
!2143 = !DILocation(line: 178, column: 107, scope: !2138)
!2144 = !DILocation(line: 178, column: 105, scope: !2138)
!2145 = !DILocation(line: 178, column: 80, scope: !2138)
!2146 = !DILocation(line: 178, column: 17, scope: !2138)
!2147 = !DILocation(line: 177, column: 43, scope: !2136)
!2148 = !DILocation(line: 177, column: 13, scope: !2136)
!2149 = distinct !{!2149, !2129, !2150, !303}
!2150 = !DILocation(line: 179, column: 13, scope: !2130)
!2151 = !DILocation(line: 180, column: 21, scope: !2131)
!2152 = !DILocation(line: 176, column: 35, scope: !2128)
!2153 = !DILocation(line: 176, column: 9, scope: !2128)
!2154 = distinct !{!2154, !2120, !2155, !303}
!2155 = !DILocation(line: 181, column: 9, scope: !2121)
!2156 = !DILocation(line: 175, column: 35, scope: !2119)
!2157 = !DILocation(line: 175, column: 5, scope: !2119)
!2158 = distinct !{!2158, !2040, !2159, !303}
!2159 = !DILocation(line: 182, column: 5, scope: !2041)
!2160 = !DILocalVariable(name: "i", scope: !2007, file: !323, line: 185, type: !45)
!2161 = !DILocation(line: 186, column: 14, scope: !2007)
!2162 = !DILocation(line: 187, column: 54, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2007, file: !323, line: 186, column: 23)
!2164 = !DILocation(line: 187, column: 81, scope: !2163)
!2165 = !DILocation(line: 187, column: 9, scope: !2163)
!2166 = !DILocation(line: 188, column: 10, scope: !2163)
!2167 = distinct !{!2167, !2123, !2168, !303}
!2168 = !DILocation(line: 189, column: 5, scope: !2007)
!2169 = !DILocation(line: 191, column: 1, scope: !2007)
!2170 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !323, file: !323, line: 195, type: !2171, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !326, !49, !45, !45, !45, !5}
!2173 = !DILocalVariable(name: "PS", arg: 1, scope: !2170, file: !323, line: 195, type: !326)
!2174 = !DILocation(line: 0, scope: !2170)
!2175 = !DILocalVariable(name: "S", arg: 2, scope: !2170, file: !323, line: 195, type: !49)
!2176 = !DILocalVariable(name: "m", arg: 3, scope: !2170, file: !323, line: 195, type: !45)
!2177 = !DILocalVariable(name: "k", arg: 4, scope: !2170, file: !323, line: 195, type: !45)
!2178 = !DILocalVariable(name: "n", arg: 5, scope: !2170, file: !323, line: 195, type: !45)
!2179 = !DILocalVariable(name: "SPS", arg: 6, scope: !2170, file: !323, line: 195, type: !5)
!2180 = !DILocalVariable(name: "accumulator", scope: !2170, file: !323, line: 196, type: !2181)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 867328, elements: !2182)
!2182 = !{!2183}
!2183 = !DISubrange(count: 13552)
!2184 = !DILocation(line: 196, column: 14, scope: !2170)
!2185 = !DILocalVariable(name: "m_vec_limbs", scope: !2170, file: !323, line: 197, type: !239)
!2186 = !DILocalVariable(name: "row", scope: !2187, file: !323, line: 198, type: !45)
!2187 = distinct !DILexicalBlock(scope: !2170, file: !323, line: 198, column: 5)
!2188 = !DILocation(line: 0, scope: !2187)
!2189 = !DILocation(line: 198, column: 10, scope: !2187)
!2190 = !DILocation(line: 198, scope: !2187)
!2191 = !DILocation(line: 198, column: 27, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2187, file: !323, line: 198, column: 5)
!2193 = !DILocation(line: 198, column: 5, scope: !2187)
!2194 = !DILocation(line: 199, column: 9, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !323, line: 199, column: 9)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !323, line: 198, column: 39)
!2197 = !DILocation(line: 208, column: 5, scope: !2170)
!2198 = !DILocation(line: 199, scope: !2195)
!2199 = !DILocalVariable(name: "j", scope: !2195, file: !323, line: 199, type: !45)
!2200 = !DILocation(line: 0, scope: !2195)
!2201 = !DILocation(line: 199, column: 27, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2195, file: !323, line: 199, column: 9)
!2203 = !DILocation(line: 200, column: 13, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !323, line: 200, column: 13)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !323, line: 199, column: 37)
!2206 = !DILocation(line: 200, scope: !2204)
!2207 = !DILocalVariable(name: "col", scope: !2204, file: !323, line: 200, type: !45)
!2208 = !DILocation(line: 0, scope: !2204)
!2209 = !DILocation(line: 200, column: 35, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2204, file: !323, line: 200, column: 13)
!2211 = !DILocation(line: 201, column: 52, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2210, file: !323, line: 200, column: 50)
!2213 = !DILocation(line: 201, column: 56, scope: !2212)
!2214 = !DILocation(line: 201, column: 47, scope: !2212)
!2215 = !DILocation(line: 201, column: 99, scope: !2212)
!2216 = !DILocation(line: 201, column: 103, scope: !2212)
!2217 = !DILocation(line: 201, column: 110, scope: !2212)
!2218 = !DILocation(line: 201, column: 123, scope: !2212)
!2219 = !DILocation(line: 201, column: 117, scope: !2212)
!2220 = !DILocation(line: 201, column: 115, scope: !2212)
!2221 = !DILocation(line: 201, column: 90, scope: !2212)
!2222 = !DILocation(line: 201, column: 21, scope: !2212)
!2223 = !DILocation(line: 200, column: 44, scope: !2210)
!2224 = !DILocation(line: 200, column: 13, scope: !2210)
!2225 = distinct !{!2225, !2203, !2226, !303}
!2226 = !DILocation(line: 202, column: 13, scope: !2204)
!2227 = !DILocation(line: 199, column: 33, scope: !2202)
!2228 = !DILocation(line: 199, column: 9, scope: !2202)
!2229 = distinct !{!2229, !2194, !2230, !303}
!2230 = !DILocation(line: 203, column: 9, scope: !2195)
!2231 = !DILocation(line: 198, column: 35, scope: !2192)
!2232 = !DILocation(line: 198, column: 5, scope: !2192)
!2233 = distinct !{!2233, !2193, !2234, !303}
!2234 = !DILocation(line: 204, column: 5, scope: !2187)
!2235 = !DILocalVariable(name: "i", scope: !2170, file: !323, line: 207, type: !45)
!2236 = !DILocation(line: 208, column: 14, scope: !2170)
!2237 = !DILocation(line: 209, column: 54, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2170, file: !323, line: 208, column: 21)
!2239 = !DILocation(line: 209, column: 82, scope: !2238)
!2240 = !DILocation(line: 209, column: 9, scope: !2238)
!2241 = !DILocation(line: 210, column: 10, scope: !2238)
!2242 = distinct !{!2242, !2197, !2243, !303}
!2243 = !DILocation(line: 211, column: 5, scope: !2170)
!2244 = !DILocation(line: 212, column: 1, scope: !2170)
!2245 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2246, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !45, !326, !5}
!2248 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2245, file: !437, line: 22, type: !45)
!2249 = !DILocation(line: 0, scope: !2245)
!2250 = !DILocalVariable(name: "in", arg: 2, scope: !2245, file: !437, line: 22, type: !326)
!2251 = !DILocalVariable(name: "acc", arg: 3, scope: !2245, file: !437, line: 22, type: !5)
!2252 = !DILocalVariable(name: "i", scope: !2253, file: !437, line: 24, type: !15)
!2253 = distinct !DILexicalBlock(scope: !2245, file: !437, line: 24, column: 5)
!2254 = !DILocation(line: 0, scope: !2253)
!2255 = !DILocation(line: 24, column: 10, scope: !2253)
!2256 = !DILocation(line: 24, scope: !2253)
!2257 = !DILocation(line: 24, column: 26, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2253, file: !437, line: 24, column: 5)
!2259 = !DILocation(line: 24, column: 5, scope: !2253)
!2260 = !DILocation(line: 26, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !437, line: 25, column: 5)
!2262 = !DILocation(line: 26, column: 9, scope: !2261)
!2263 = !DILocation(line: 26, column: 16, scope: !2261)
!2264 = !DILocation(line: 24, column: 46, scope: !2258)
!2265 = !DILocation(line: 24, column: 5, scope: !2258)
!2266 = distinct !{!2266, !2259, !2267, !303}
!2267 = !DILocation(line: 27, column: 5, scope: !2253)
!2268 = !DILocation(line: 28, column: 1, scope: !2245)
!2269 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !437, file: !437, line: 66, type: !2270, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !45, !5, !5}
!2272 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2269, file: !437, line: 66, type: !45)
!2273 = !DILocation(line: 0, scope: !2269)
!2274 = !DILocalVariable(name: "bins", arg: 2, scope: !2269, file: !437, line: 66, type: !5)
!2275 = !DILocalVariable(name: "out", arg: 3, scope: !2269, file: !437, line: 66, type: !5)
!2276 = !DILocation(line: 67, column: 44, scope: !2269)
!2277 = !DILocation(line: 67, column: 73, scope: !2269)
!2278 = !DILocation(line: 67, column: 5, scope: !2269)
!2279 = !DILocation(line: 68, column: 40, scope: !2269)
!2280 = !DILocation(line: 68, column: 69, scope: !2269)
!2281 = !DILocation(line: 68, column: 5, scope: !2269)
!2282 = !DILocation(line: 69, column: 44, scope: !2269)
!2283 = !DILocation(line: 69, column: 74, scope: !2269)
!2284 = !DILocation(line: 69, column: 5, scope: !2269)
!2285 = !DILocation(line: 70, column: 40, scope: !2269)
!2286 = !DILocation(line: 70, column: 69, scope: !2269)
!2287 = !DILocation(line: 70, column: 5, scope: !2269)
!2288 = !DILocation(line: 71, column: 44, scope: !2269)
!2289 = !DILocation(line: 71, column: 73, scope: !2269)
!2290 = !DILocation(line: 71, column: 5, scope: !2269)
!2291 = !DILocation(line: 72, column: 40, scope: !2269)
!2292 = !DILocation(line: 72, column: 69, scope: !2269)
!2293 = !DILocation(line: 72, column: 5, scope: !2269)
!2294 = !DILocation(line: 73, column: 44, scope: !2269)
!2295 = !DILocation(line: 73, column: 74, scope: !2269)
!2296 = !DILocation(line: 73, column: 5, scope: !2269)
!2297 = !DILocation(line: 74, column: 40, scope: !2269)
!2298 = !DILocation(line: 74, column: 69, scope: !2269)
!2299 = !DILocation(line: 74, column: 5, scope: !2269)
!2300 = !DILocation(line: 75, column: 44, scope: !2269)
!2301 = !DILocation(line: 75, column: 74, scope: !2269)
!2302 = !DILocation(line: 75, column: 5, scope: !2269)
!2303 = !DILocation(line: 76, column: 40, scope: !2269)
!2304 = !DILocation(line: 76, column: 69, scope: !2269)
!2305 = !DILocation(line: 76, column: 5, scope: !2269)
!2306 = !DILocation(line: 77, column: 44, scope: !2269)
!2307 = !DILocation(line: 77, column: 74, scope: !2269)
!2308 = !DILocation(line: 77, column: 5, scope: !2269)
!2309 = !DILocation(line: 78, column: 40, scope: !2269)
!2310 = !DILocation(line: 78, column: 69, scope: !2269)
!2311 = !DILocation(line: 78, column: 5, scope: !2269)
!2312 = !DILocation(line: 79, column: 44, scope: !2269)
!2313 = !DILocation(line: 79, column: 74, scope: !2269)
!2314 = !DILocation(line: 79, column: 5, scope: !2269)
!2315 = !DILocation(line: 80, column: 40, scope: !2269)
!2316 = !DILocation(line: 80, column: 69, scope: !2269)
!2317 = !DILocation(line: 80, column: 5, scope: !2269)
!2318 = !DILocation(line: 81, column: 35, scope: !2269)
!2319 = !DILocation(line: 81, column: 5, scope: !2269)
!2320 = !DILocation(line: 82, column: 1, scope: !2269)
!2321 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !437, file: !437, line: 56, type: !2246, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2322 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2321, file: !437, line: 56, type: !45)
!2323 = !DILocation(line: 0, scope: !2321)
!2324 = !DILocalVariable(name: "in", arg: 2, scope: !2321, file: !437, line: 56, type: !326)
!2325 = !DILocalVariable(name: "acc", arg: 3, scope: !2321, file: !437, line: 56, type: !5)
!2326 = !DILocalVariable(name: "mask_lsb", scope: !2321, file: !437, line: 58, type: !6)
!2327 = !DILocalVariable(name: "i", scope: !2328, file: !437, line: 59, type: !45)
!2328 = distinct !DILexicalBlock(scope: !2321, file: !437, line: 59, column: 5)
!2329 = !DILocation(line: 0, scope: !2328)
!2330 = !DILocation(line: 59, column: 9, scope: !2328)
!2331 = !DILocation(line: 59, scope: !2328)
!2332 = !DILocation(line: 59, column: 20, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2328, file: !437, line: 59, column: 5)
!2334 = !DILocation(line: 59, column: 5, scope: !2328)
!2335 = !DILocation(line: 60, column: 22, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !437, line: 59, column: 43)
!2337 = !DILocation(line: 60, column: 28, scope: !2336)
!2338 = !DILocalVariable(name: "t", scope: !2336, file: !437, line: 60, type: !6)
!2339 = !DILocation(line: 0, scope: !2336)
!2340 = !DILocation(line: 61, column: 32, scope: !2336)
!2341 = !DILocation(line: 61, column: 43, scope: !2336)
!2342 = !DILocation(line: 61, column: 38, scope: !2336)
!2343 = !DILocation(line: 61, column: 9, scope: !2336)
!2344 = !DILocation(line: 61, column: 16, scope: !2336)
!2345 = !DILocation(line: 59, column: 40, scope: !2333)
!2346 = !DILocation(line: 59, column: 5, scope: !2333)
!2347 = distinct !{!2347, !2334, !2348, !303}
!2348 = !DILocation(line: 62, column: 5, scope: !2328)
!2349 = !DILocation(line: 63, column: 1, scope: !2321)
!2350 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !437, file: !437, line: 46, type: !2246, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2351 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2350, file: !437, line: 46, type: !45)
!2352 = !DILocation(line: 0, scope: !2350)
!2353 = !DILocalVariable(name: "in", arg: 2, scope: !2350, file: !437, line: 46, type: !326)
!2354 = !DILocalVariable(name: "acc", arg: 3, scope: !2350, file: !437, line: 46, type: !5)
!2355 = !DILocalVariable(name: "mask_msb", scope: !2350, file: !437, line: 48, type: !6)
!2356 = !DILocalVariable(name: "i", scope: !2357, file: !437, line: 49, type: !45)
!2357 = distinct !DILexicalBlock(scope: !2350, file: !437, line: 49, column: 5)
!2358 = !DILocation(line: 0, scope: !2357)
!2359 = !DILocation(line: 49, column: 9, scope: !2357)
!2360 = !DILocation(line: 49, scope: !2357)
!2361 = !DILocation(line: 49, column: 20, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !437, line: 49, column: 5)
!2363 = !DILocation(line: 49, column: 5, scope: !2357)
!2364 = !DILocation(line: 50, column: 22, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2362, file: !437, line: 49, column: 43)
!2366 = !DILocalVariable(name: "t", scope: !2365, file: !437, line: 50, type: !6)
!2367 = !DILocation(line: 0, scope: !2365)
!2368 = !DILocation(line: 51, column: 32, scope: !2365)
!2369 = !DILocation(line: 51, column: 44, scope: !2365)
!2370 = !DILocation(line: 51, column: 50, scope: !2365)
!2371 = !DILocation(line: 51, column: 38, scope: !2365)
!2372 = !DILocation(line: 51, column: 9, scope: !2365)
!2373 = !DILocation(line: 51, column: 16, scope: !2365)
!2374 = !DILocation(line: 49, column: 40, scope: !2362)
!2375 = !DILocation(line: 49, column: 5, scope: !2362)
!2376 = distinct !{!2376, !2363, !2377, !303}
!2377 = !DILocation(line: 52, column: 5, scope: !2357)
!2378 = !DILocation(line: 53, column: 1, scope: !2350)
!2379 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2246, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2380 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2379, file: !437, line: 13, type: !45)
!2381 = !DILocation(line: 0, scope: !2379)
!2382 = !DILocalVariable(name: "in", arg: 2, scope: !2379, file: !437, line: 13, type: !326)
!2383 = !DILocalVariable(name: "out", arg: 3, scope: !2379, file: !437, line: 13, type: !5)
!2384 = !DILocalVariable(name: "i", scope: !2385, file: !437, line: 15, type: !15)
!2385 = distinct !DILexicalBlock(scope: !2379, file: !437, line: 15, column: 5)
!2386 = !DILocation(line: 0, scope: !2385)
!2387 = !DILocation(line: 15, column: 10, scope: !2385)
!2388 = !DILocation(line: 15, scope: !2385)
!2389 = !DILocation(line: 15, column: 26, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !437, line: 15, column: 5)
!2391 = !DILocation(line: 15, column: 5, scope: !2385)
!2392 = !DILocation(line: 17, column: 18, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !437, line: 16, column: 5)
!2394 = !DILocation(line: 17, column: 9, scope: !2393)
!2395 = !DILocation(line: 17, column: 16, scope: !2393)
!2396 = !DILocation(line: 15, column: 46, scope: !2390)
!2397 = !DILocation(line: 15, column: 5, scope: !2390)
!2398 = distinct !{!2398, !2391, !2399, !303}
!2399 = !DILocation(line: 18, column: 5, scope: !2385)
!2400 = !DILocation(line: 19, column: 1, scope: !2379)
!2401 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_m_upper", scope: !58, file: !58, line: 14, type: !2402, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !2404, !326, !5, !45}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2407, file: !36, line: 266, baseType: !45, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2407, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2407, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2407, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2407, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2407, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2407, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2407, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2407, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2407, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2407, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2407, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2407, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2407, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2407, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2407, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2407, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2407, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2407, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2407, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2407, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2407, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2407, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2432 = !DILocalVariable(name: "p", arg: 1, scope: !2401, file: !58, line: 14, type: !2404)
!2433 = !DILocation(line: 0, scope: !2401)
!2434 = !DILocalVariable(name: "in", arg: 2, scope: !2401, file: !58, line: 14, type: !326)
!2435 = !DILocalVariable(name: "out", arg: 3, scope: !2401, file: !58, line: 14, type: !5)
!2436 = !DILocalVariable(name: "size", arg: 4, scope: !2401, file: !58, line: 14, type: !45)
!2437 = !DILocalVariable(name: "m_vec_limbs", scope: !2401, file: !58, line: 19, type: !239)
!2438 = !DILocalVariable(name: "m_vecs_stored", scope: !2401, file: !58, line: 20, type: !45)
!2439 = !DILocalVariable(name: "r", scope: !2440, file: !58, line: 21, type: !45)
!2440 = distinct !DILexicalBlock(scope: !2401, file: !58, line: 21, column: 5)
!2441 = !DILocation(line: 0, scope: !2440)
!2442 = !DILocation(line: 21, column: 10, scope: !2440)
!2443 = !DILocation(line: 20, column: 9, scope: !2401)
!2444 = !DILocation(line: 21, scope: !2440)
!2445 = !DILocation(line: 21, column: 23, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2440, file: !58, line: 21, column: 5)
!2447 = !DILocation(line: 21, column: 5, scope: !2440)
!2448 = !DILocation(line: 22, column: 9, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !58, line: 22, column: 9)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 21, column: 36)
!2451 = !DILocation(line: 22, scope: !2449)
!2452 = !DILocalVariable(name: "c", scope: !2449, file: !58, line: 22, type: !45)
!2453 = !DILocation(line: 0, scope: !2449)
!2454 = !DILocation(line: 22, column: 27, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2449, file: !58, line: 22, column: 9)
!2456 = !DILocation(line: 23, column: 59, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2455, file: !58, line: 22, column: 40)
!2458 = !DILocation(line: 23, column: 66, scope: !2457)
!2459 = !DILocation(line: 23, column: 40, scope: !2457)
!2460 = !DILocation(line: 23, column: 76, scope: !2457)
!2461 = !DILocation(line: 23, column: 13, scope: !2457)
!2462 = !DILocation(line: 24, column: 19, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2457, file: !58, line: 24, column: 17)
!2464 = !DILocation(line: 25, column: 62, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2463, file: !58, line: 24, column: 25)
!2466 = !DILocation(line: 25, column: 69, scope: !2465)
!2467 = !DILocation(line: 25, column: 43, scope: !2465)
!2468 = !DILocation(line: 25, column: 79, scope: !2465)
!2469 = !DILocation(line: 25, column: 17, scope: !2465)
!2470 = !DILocation(line: 26, column: 13, scope: !2465)
!2471 = !DILocation(line: 27, column: 27, scope: !2457)
!2472 = !DILocation(line: 22, column: 36, scope: !2455)
!2473 = !DILocation(line: 22, column: 9, scope: !2455)
!2474 = distinct !{!2474, !2448, !2475, !303}
!2475 = !DILocation(line: 28, column: 9, scope: !2449)
!2476 = !DILocation(line: 21, column: 32, scope: !2446)
!2477 = !DILocation(line: 21, column: 5, scope: !2446)
!2478 = distinct !{!2478, !2447, !2479, !303}
!2479 = !DILocation(line: 29, column: 5, scope: !2440)
!2480 = !DILocation(line: 30, column: 1, scope: !2401)
!2481 = distinct !DISubprogram(name: "m_vec_copy", scope: !437, file: !437, line: 13, type: !2246, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2482 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2481, file: !437, line: 13, type: !45)
!2483 = !DILocation(line: 0, scope: !2481)
!2484 = !DILocalVariable(name: "in", arg: 2, scope: !2481, file: !437, line: 13, type: !326)
!2485 = !DILocalVariable(name: "out", arg: 3, scope: !2481, file: !437, line: 13, type: !5)
!2486 = !DILocalVariable(name: "i", scope: !2487, file: !437, line: 15, type: !15)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !437, line: 15, column: 5)
!2488 = !DILocation(line: 0, scope: !2487)
!2489 = !DILocation(line: 15, column: 10, scope: !2487)
!2490 = !DILocation(line: 15, scope: !2487)
!2491 = !DILocation(line: 15, column: 26, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2487, file: !437, line: 15, column: 5)
!2493 = !DILocation(line: 15, column: 5, scope: !2487)
!2494 = !DILocation(line: 17, column: 18, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !437, line: 16, column: 5)
!2496 = !DILocation(line: 17, column: 9, scope: !2495)
!2497 = !DILocation(line: 17, column: 16, scope: !2495)
!2498 = !DILocation(line: 15, column: 46, scope: !2492)
!2499 = !DILocation(line: 15, column: 5, scope: !2492)
!2500 = distinct !{!2500, !2493, !2501, !303}
!2501 = !DILocation(line: 18, column: 5, scope: !2487)
!2502 = !DILocation(line: 19, column: 1, scope: !2481)
!2503 = distinct !DISubprogram(name: "m_vec_add", scope: !437, file: !437, line: 22, type: !2246, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2504 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2503, file: !437, line: 22, type: !45)
!2505 = !DILocation(line: 0, scope: !2503)
!2506 = !DILocalVariable(name: "in", arg: 2, scope: !2503, file: !437, line: 22, type: !326)
!2507 = !DILocalVariable(name: "acc", arg: 3, scope: !2503, file: !437, line: 22, type: !5)
!2508 = !DILocalVariable(name: "i", scope: !2509, file: !437, line: 24, type: !15)
!2509 = distinct !DILexicalBlock(scope: !2503, file: !437, line: 24, column: 5)
!2510 = !DILocation(line: 0, scope: !2509)
!2511 = !DILocation(line: 24, column: 10, scope: !2509)
!2512 = !DILocation(line: 24, scope: !2509)
!2513 = !DILocation(line: 24, column: 26, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2509, file: !437, line: 24, column: 5)
!2515 = !DILocation(line: 24, column: 5, scope: !2509)
!2516 = !DILocation(line: 26, column: 19, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !437, line: 25, column: 5)
!2518 = !DILocation(line: 26, column: 9, scope: !2517)
!2519 = !DILocation(line: 26, column: 16, scope: !2517)
!2520 = !DILocation(line: 24, column: 46, scope: !2514)
!2521 = !DILocation(line: 24, column: 5, scope: !2514)
!2522 = distinct !{!2522, !2515, !2523, !303}
!2523 = !DILocation(line: 27, column: 5, scope: !2509)
!2524 = !DILocation(line: 28, column: 1, scope: !2503)
!2525 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2526, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!45, !2404, !18, !49, !49, !18, !45, !45, !45, !45}
!2528 = !DILocalVariable(name: "p", arg: 1, scope: !2525, file: !58, line: 40, type: !2404)
!2529 = !DILocation(line: 0, scope: !2525)
!2530 = !DILocalVariable(name: "A", arg: 2, scope: !2525, file: !58, line: 40, type: !18)
!2531 = !DILocalVariable(name: "y", arg: 3, scope: !2525, file: !58, line: 41, type: !49)
!2532 = !DILocalVariable(name: "r", arg: 4, scope: !2525, file: !58, line: 41, type: !49)
!2533 = !DILocalVariable(name: "x", arg: 5, scope: !2525, file: !58, line: 42, type: !18)
!2534 = !DILocalVariable(name: "k", arg: 6, scope: !2525, file: !58, line: 42, type: !45)
!2535 = !DILocalVariable(name: "o", arg: 7, scope: !2525, file: !58, line: 42, type: !45)
!2536 = !DILocalVariable(name: "m", arg: 8, scope: !2525, file: !58, line: 42, type: !45)
!2537 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2525, file: !58, line: 42, type: !45)
!2538 = !DILocalVariable(name: "i", scope: !2539, file: !58, line: 51, type: !45)
!2539 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 51, column: 5)
!2540 = !DILocation(line: 0, scope: !2539)
!2541 = !DILocation(line: 51, column: 10, scope: !2539)
!2542 = !DILocation(line: 51, scope: !2539)
!2543 = !DILocation(line: 51, column: 23, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2539, file: !58, line: 51, column: 5)
!2545 = !DILocation(line: 51, column: 5, scope: !2539)
!2546 = !DILocation(line: 57, column: 5, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 57, column: 5)
!2548 = !DILocation(line: 52, column: 16, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2544, file: !58, line: 51, column: 37)
!2550 = !DILocation(line: 52, column: 9, scope: !2549)
!2551 = !DILocation(line: 52, column: 14, scope: !2549)
!2552 = !DILocation(line: 51, column: 33, scope: !2544)
!2553 = !DILocation(line: 51, column: 5, scope: !2544)
!2554 = distinct !{!2554, !2545, !2555, !303}
!2555 = !DILocation(line: 53, column: 5, scope: !2539)
!2556 = !DILocation(line: 57, scope: !2547)
!2557 = !DILocalVariable(name: "i", scope: !2547, file: !58, line: 57, type: !45)
!2558 = !DILocation(line: 0, scope: !2547)
!2559 = !DILocation(line: 57, column: 23, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2547, file: !58, line: 57, column: 5)
!2561 = !DILocation(line: 58, column: 13, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2560, file: !58, line: 57, column: 33)
!2563 = !DILocation(line: 58, column: 26, scope: !2562)
!2564 = !DILocation(line: 58, column: 30, scope: !2562)
!2565 = !DILocation(line: 58, column: 21, scope: !2562)
!2566 = !DILocation(line: 58, column: 9, scope: !2562)
!2567 = !DILocation(line: 58, column: 36, scope: !2562)
!2568 = !DILocation(line: 57, column: 29, scope: !2560)
!2569 = !DILocation(line: 57, column: 5, scope: !2560)
!2570 = distinct !{!2570, !2546, !2571, !303}
!2571 = !DILocation(line: 59, column: 5, scope: !2547)
!2572 = !DILocation(line: 60, column: 25, scope: !2525)
!2573 = !DILocation(line: 60, column: 29, scope: !2525)
!2574 = !DILocation(line: 60, column: 5, scope: !2525)
!2575 = !DILocalVariable(name: "i", scope: !2576, file: !58, line: 63, type: !45)
!2576 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 63, column: 5)
!2577 = !DILocation(line: 0, scope: !2576)
!2578 = !DILocation(line: 63, column: 10, scope: !2576)
!2579 = !DILocation(line: 63, scope: !2576)
!2580 = !DILocation(line: 63, column: 23, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2576, file: !58, line: 63, column: 5)
!2582 = !DILocation(line: 63, column: 5, scope: !2576)
!2583 = !DILocation(line: 64, column: 44, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !58, line: 63, column: 33)
!2585 = !DILocation(line: 64, column: 50, scope: !2584)
!2586 = !DILocation(line: 64, column: 38, scope: !2584)
!2587 = !DILocation(line: 64, column: 13, scope: !2584)
!2588 = !DILocation(line: 64, column: 26, scope: !2584)
!2589 = !DILocation(line: 64, column: 30, scope: !2584)
!2590 = !DILocation(line: 64, column: 21, scope: !2584)
!2591 = !DILocation(line: 64, column: 9, scope: !2584)
!2592 = !DILocation(line: 64, column: 36, scope: !2584)
!2593 = !DILocation(line: 63, column: 29, scope: !2581)
!2594 = !DILocation(line: 63, column: 5, scope: !2581)
!2595 = distinct !{!2595, !2582, !2596, !303}
!2596 = !DILocation(line: 65, column: 5, scope: !2576)
!2597 = !DILocation(line: 67, column: 16, scope: !2525)
!2598 = !DILocation(line: 67, column: 20, scope: !2525)
!2599 = !DILocation(line: 67, column: 5, scope: !2525)
!2600 = !DILocalVariable(name: "full_rank", scope: !2525, file: !58, line: 70, type: !14)
!2601 = !DILocalVariable(name: "i", scope: !2602, file: !58, line: 71, type: !45)
!2602 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 71, column: 5)
!2603 = !DILocation(line: 0, scope: !2602)
!2604 = !DILocation(line: 71, column: 10, scope: !2602)
!2605 = !DILocation(line: 71, scope: !2602)
!2606 = !DILocation(line: 71, column: 23, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !58, line: 71, column: 5)
!2608 = !DILocation(line: 71, column: 5, scope: !2602)
!2609 = !DILocation(line: 72, column: 27, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !58, line: 71, column: 42)
!2611 = !DILocation(line: 72, column: 32, scope: !2610)
!2612 = !DILocation(line: 72, column: 22, scope: !2610)
!2613 = !DILocation(line: 72, column: 19, scope: !2610)
!2614 = !DILocation(line: 71, column: 38, scope: !2607)
!2615 = !DILocation(line: 71, column: 5, scope: !2607)
!2616 = distinct !{!2616, !2608, !2617, !303}
!2617 = !DILocation(line: 73, column: 5, scope: !2602)
!2618 = !DILocation(line: 80, column: 19, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 80, column: 9)
!2620 = !DILocation(line: 88, column: 5, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 88, column: 5)
!2622 = distinct !{!2622, !2620, !2623, !303}
!2623 = !DILocation(line: 122, column: 5, scope: !2621)
!2624 = !DILocation(line: 88, scope: !2621)
!2625 = !DILocalVariable(name: "row", scope: !2621, file: !58, line: 88, type: !45)
!2626 = !DILocation(line: 0, scope: !2621)
!2627 = !DILocation(line: 88, column: 31, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 88, column: 5)
!2629 = !DILocalVariable(name: "finished", scope: !2525, file: !58, line: 46, type: !14)
!2630 = !DILocation(line: 90, column: 27, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !58, line: 88, column: 44)
!2632 = !DILocalVariable(name: "col_upper_bound", scope: !2525, file: !58, line: 47, type: !45)
!2633 = !DILocalVariable(name: "col", scope: !2634, file: !58, line: 93, type: !45)
!2634 = distinct !DILexicalBlock(scope: !2631, file: !58, line: 93, column: 9)
!2635 = !DILocation(line: 0, scope: !2634)
!2636 = !DILocation(line: 93, column: 14, scope: !2634)
!2637 = !DILocation(line: 0, scope: !2631)
!2638 = !DILocation(line: 93, scope: !2634)
!2639 = !DILocation(line: 93, column: 33, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2634, file: !58, line: 93, column: 9)
!2641 = !DILocation(line: 93, column: 9, scope: !2634)
!2642 = !DILocation(line: 97, column: 50, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !58, line: 93, column: 60)
!2644 = !DILocation(line: 97, column: 44, scope: !2643)
!2645 = !DILocation(line: 97, column: 30, scope: !2643)
!2646 = !DILocation(line: 97, column: 73, scope: !2643)
!2647 = !DILocalVariable(name: "correct_column", scope: !2525, file: !58, line: 48, type: !14)
!2648 = !DILocation(line: 99, column: 63, scope: !2643)
!2649 = !DILocation(line: 99, column: 48, scope: !2643)
!2650 = !DILocation(line: 99, column: 46, scope: !2643)
!2651 = !DILocalVariable(name: "u", scope: !2643, file: !58, line: 99, type: !14)
!2652 = !DILocation(line: 0, scope: !2643)
!2653 = !DILocation(line: 100, column: 13, scope: !2643)
!2654 = !DILocation(line: 100, column: 20, scope: !2643)
!2655 = !DILocalVariable(name: "i", scope: !2656, file: !58, line: 102, type: !45)
!2656 = distinct !DILexicalBlock(scope: !2643, file: !58, line: 102, column: 13)
!2657 = !DILocation(line: 0, scope: !2656)
!2658 = !DILocation(line: 102, column: 18, scope: !2656)
!2659 = !DILocation(line: 102, scope: !2656)
!2660 = !DILocation(line: 102, column: 31, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2656, file: !58, line: 102, column: 13)
!2662 = !DILocation(line: 102, column: 13, scope: !2656)
!2663 = !DILocation(line: 103, column: 53, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !58, line: 102, column: 46)
!2665 = !DILocation(line: 103, column: 45, scope: !2664)
!2666 = !DILocation(line: 103, column: 34, scope: !2664)
!2667 = !DILocation(line: 103, column: 95, scope: !2664)
!2668 = !DILocation(line: 103, column: 99, scope: !2664)
!2669 = !DILocation(line: 103, column: 91, scope: !2664)
!2670 = !DILocation(line: 103, column: 80, scope: !2664)
!2671 = !DILocation(line: 103, column: 115, scope: !2664)
!2672 = !DILocation(line: 103, column: 76, scope: !2664)
!2673 = !DILocation(line: 104, column: 49, scope: !2664)
!2674 = !DILocation(line: 104, column: 53, scope: !2664)
!2675 = !DILocation(line: 104, column: 45, scope: !2664)
!2676 = !DILocation(line: 104, column: 34, scope: !2664)
!2677 = !DILocation(line: 104, column: 69, scope: !2664)
!2678 = !DILocation(line: 104, column: 30, scope: !2664)
!2679 = !DILocation(line: 104, column: 95, scope: !2664)
!2680 = !DILocation(line: 104, column: 99, scope: !2664)
!2681 = !DILocation(line: 104, column: 91, scope: !2664)
!2682 = !DILocation(line: 104, column: 80, scope: !2664)
!2683 = !DILocation(line: 104, column: 115, scope: !2664)
!2684 = !DILocation(line: 104, column: 76, scope: !2664)
!2685 = !DILocation(line: 105, column: 49, scope: !2664)
!2686 = !DILocation(line: 105, column: 53, scope: !2664)
!2687 = !DILocation(line: 105, column: 45, scope: !2664)
!2688 = !DILocation(line: 105, column: 34, scope: !2664)
!2689 = !DILocation(line: 105, column: 69, scope: !2664)
!2690 = !DILocation(line: 105, column: 30, scope: !2664)
!2691 = !DILocation(line: 105, column: 95, scope: !2664)
!2692 = !DILocation(line: 105, column: 99, scope: !2664)
!2693 = !DILocation(line: 105, column: 91, scope: !2664)
!2694 = !DILocation(line: 105, column: 80, scope: !2664)
!2695 = !DILocation(line: 105, column: 115, scope: !2664)
!2696 = !DILocation(line: 105, column: 76, scope: !2664)
!2697 = !DILocation(line: 106, column: 49, scope: !2664)
!2698 = !DILocation(line: 106, column: 53, scope: !2664)
!2699 = !DILocation(line: 106, column: 45, scope: !2664)
!2700 = !DILocation(line: 106, column: 34, scope: !2664)
!2701 = !DILocation(line: 106, column: 69, scope: !2664)
!2702 = !DILocation(line: 106, column: 30, scope: !2664)
!2703 = !DILocation(line: 106, column: 95, scope: !2664)
!2704 = !DILocation(line: 106, column: 99, scope: !2664)
!2705 = !DILocation(line: 106, column: 91, scope: !2664)
!2706 = !DILocation(line: 106, column: 80, scope: !2664)
!2707 = !DILocation(line: 106, column: 115, scope: !2664)
!2708 = !DILocation(line: 106, column: 76, scope: !2664)
!2709 = !DILocalVariable(name: "tmp", scope: !2664, file: !58, line: 103, type: !6)
!2710 = !DILocation(line: 0, scope: !2664)
!2711 = !DILocation(line: 108, column: 23, scope: !2664)
!2712 = !DILocation(line: 110, column: 34, scope: !2664)
!2713 = !DILocation(line: 110, column: 17, scope: !2664)
!2714 = !DILocation(line: 110, column: 48, scope: !2664)
!2715 = !DILocation(line: 111, column: 56, scope: !2664)
!2716 = !DILocation(line: 111, column: 34, scope: !2664)
!2717 = !DILocation(line: 111, column: 17, scope: !2664)
!2718 = !DILocation(line: 111, column: 48, scope: !2664)
!2719 = !DILocation(line: 112, column: 56, scope: !2664)
!2720 = !DILocation(line: 112, column: 34, scope: !2664)
!2721 = !DILocation(line: 112, column: 17, scope: !2664)
!2722 = !DILocation(line: 112, column: 48, scope: !2664)
!2723 = !DILocation(line: 113, column: 56, scope: !2664)
!2724 = !DILocation(line: 113, column: 34, scope: !2664)
!2725 = !DILocation(line: 113, column: 17, scope: !2664)
!2726 = !DILocation(line: 113, column: 48, scope: !2664)
!2727 = !DILocation(line: 114, column: 56, scope: !2664)
!2728 = !DILocation(line: 114, column: 34, scope: !2664)
!2729 = !DILocation(line: 114, column: 17, scope: !2664)
!2730 = !DILocation(line: 114, column: 48, scope: !2664)
!2731 = !DILocation(line: 115, column: 56, scope: !2664)
!2732 = !DILocation(line: 115, column: 34, scope: !2664)
!2733 = !DILocation(line: 115, column: 17, scope: !2664)
!2734 = !DILocation(line: 115, column: 48, scope: !2664)
!2735 = !DILocation(line: 116, column: 56, scope: !2664)
!2736 = !DILocation(line: 116, column: 34, scope: !2664)
!2737 = !DILocation(line: 116, column: 17, scope: !2664)
!2738 = !DILocation(line: 116, column: 48, scope: !2664)
!2739 = !DILocation(line: 117, column: 56, scope: !2664)
!2740 = !DILocation(line: 117, column: 34, scope: !2664)
!2741 = !DILocation(line: 117, column: 17, scope: !2664)
!2742 = !DILocation(line: 117, column: 48, scope: !2664)
!2743 = !DILocation(line: 102, column: 40, scope: !2661)
!2744 = !DILocation(line: 102, column: 13, scope: !2661)
!2745 = distinct !{!2745, !2662, !2746, !303}
!2746 = !DILocation(line: 118, column: 13, scope: !2656)
!2747 = !DILocation(line: 120, column: 33, scope: !2643)
!2748 = !DILocation(line: 93, column: 56, scope: !2640)
!2749 = !DILocation(line: 93, column: 9, scope: !2640)
!2750 = distinct !{!2750, !2641, !2751, !303}
!2751 = !DILocation(line: 121, column: 9, scope: !2634)
!2752 = !DILocation(line: 124, column: 1, scope: !2525)
!2753 = distinct !DISubprogram(name: "mat_mul", scope: !493, file: !493, line: 79, type: !1435, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2754 = !DILocalVariable(name: "a", arg: 1, scope: !2753, file: !493, line: 79, type: !49)
!2755 = !DILocation(line: 0, scope: !2753)
!2756 = !DILocalVariable(name: "b", arg: 2, scope: !2753, file: !493, line: 79, type: !49)
!2757 = !DILocalVariable(name: "c", arg: 3, scope: !2753, file: !493, line: 80, type: !18)
!2758 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2753, file: !493, line: 80, type: !45)
!2759 = !DILocalVariable(name: "row_a", arg: 5, scope: !2753, file: !493, line: 80, type: !45)
!2760 = !DILocalVariable(name: "col_b", arg: 6, scope: !2753, file: !493, line: 80, type: !45)
!2761 = !DILocalVariable(name: "i", scope: !2762, file: !493, line: 81, type: !45)
!2762 = distinct !DILexicalBlock(scope: !2753, file: !493, line: 81, column: 5)
!2763 = !DILocation(line: 0, scope: !2762)
!2764 = !DILocation(line: 81, column: 10, scope: !2762)
!2765 = !DILocation(line: 81, scope: !2762)
!2766 = !DILocation(line: 81, column: 23, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2762, file: !493, line: 81, column: 5)
!2768 = !DILocation(line: 81, column: 5, scope: !2762)
!2769 = !DILocation(line: 82, column: 9, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !493, line: 82, column: 9)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !493, line: 81, column: 53)
!2772 = !DILocation(line: 82, scope: !2770)
!2773 = !DILocalVariable(name: "j", scope: !2770, file: !493, line: 82, type: !45)
!2774 = !DILocation(line: 0, scope: !2770)
!2775 = !DILocation(line: 83, column: 18, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !493, line: 82, column: 46)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !493, line: 82, column: 9)
!2778 = !DILocation(line: 83, column: 16, scope: !2776)
!2779 = !DILocation(line: 82, column: 41, scope: !2777)
!2780 = !DILocation(line: 82, column: 9, scope: !2777)
!2781 = distinct !{!2781, !2769, !2782, !303}
!2782 = !DILocation(line: 84, column: 9, scope: !2770)
!2783 = !DILocation(line: 81, column: 32, scope: !2767)
!2784 = !DILocation(line: 81, column: 39, scope: !2767)
!2785 = !DILocation(line: 81, column: 5, scope: !2767)
!2786 = distinct !{!2786, !2768, !2787, !303}
!2787 = !DILocation(line: 85, column: 5, scope: !2762)
!2788 = !DILocation(line: 86, column: 1, scope: !2753)
!2789 = distinct !DISubprogram(name: "sub_f", scope: !493, file: !493, line: 48, type: !1534, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2790 = !DILocalVariable(name: "a", arg: 1, scope: !2789, file: !493, line: 48, type: !14)
!2791 = !DILocation(line: 0, scope: !2789)
!2792 = !DILocalVariable(name: "b", arg: 2, scope: !2789, file: !493, line: 48, type: !14)
!2793 = !DILocation(line: 49, column: 14, scope: !2789)
!2794 = !DILocation(line: 49, column: 5, scope: !2789)
!2795 = distinct !DISubprogram(name: "EF", scope: !2796, file: !2796, line: 60, type: !2797, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2796 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !18, !45, !45}
!2799 = !DILocalVariable(name: "A", arg: 1, scope: !2795, file: !2796, line: 60, type: !18)
!2800 = !DILocation(line: 0, scope: !2795)
!2801 = !DILocalVariable(name: "nrows", arg: 2, scope: !2795, file: !2796, line: 60, type: !45)
!2802 = !DILocalVariable(name: "ncols", arg: 3, scope: !2795, file: !2796, line: 60, type: !45)
!2803 = !DILocalVariable(name: "_pivot_row", scope: !2795, file: !2796, line: 62, type: !579, align: 256)
!2804 = !DILocation(line: 62, column: 27, scope: !2795)
!2805 = !DILocalVariable(name: "_pivot_row2", scope: !2795, file: !2796, line: 63, type: !579, align: 256)
!2806 = !DILocation(line: 63, column: 27, scope: !2795)
!2807 = !DILocalVariable(name: "packed_A", scope: !2795, file: !2796, line: 64, type: !2808, align: 256)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 48384, elements: !2809)
!2809 = !{!2810}
!2810 = !DISubrange(count: 756)
!2811 = !DILocation(line: 64, column: 27, scope: !2795)
!2812 = !DILocation(line: 66, column: 26, scope: !2795)
!2813 = !DILocation(line: 66, column: 32, scope: !2795)
!2814 = !DILocalVariable(name: "row_len", scope: !2795, file: !2796, line: 66, type: !45)
!2815 = !DILocalVariable(name: "i", scope: !2816, file: !2796, line: 69, type: !45)
!2816 = distinct !DILexicalBlock(scope: !2795, file: !2796, line: 69, column: 5)
!2817 = !DILocation(line: 0, scope: !2816)
!2818 = !DILocation(line: 69, column: 10, scope: !2816)
!2819 = !DILocation(line: 69, scope: !2816)
!2820 = !DILocation(line: 69, column: 23, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2816, file: !2796, line: 69, column: 5)
!2822 = !DILocation(line: 69, column: 5, scope: !2816)
!2823 = !DILocation(line: 77, column: 5, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2795, file: !2796, line: 77, column: 5)
!2825 = !DILocation(line: 70, column: 29, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2821, file: !2796, line: 69, column: 37)
!2827 = !DILocation(line: 70, column: 25, scope: !2826)
!2828 = !DILocation(line: 70, column: 51, scope: !2826)
!2829 = !DILocation(line: 70, column: 47, scope: !2826)
!2830 = !DILocation(line: 70, column: 9, scope: !2826)
!2831 = !DILocation(line: 69, column: 33, scope: !2821)
!2832 = !DILocation(line: 69, column: 5, scope: !2821)
!2833 = distinct !{!2833, !2822, !2834, !303}
!2834 = !DILocation(line: 71, column: 5, scope: !2816)
!2835 = !DILocation(line: 77, scope: !2824)
!2836 = !DILocalVariable(name: "pivot_row", scope: !2795, file: !2796, line: 76, type: !45)
!2837 = !DILocalVariable(name: "pivot_col", scope: !2824, file: !2796, line: 77, type: !45)
!2838 = !DILocation(line: 0, scope: !2824)
!2839 = !DILocation(line: 77, column: 39, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2824, file: !2796, line: 77, column: 5)
!2841 = !DILocation(line: 138, column: 5, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2795, file: !2796, line: 138, column: 5)
!2843 = !DILocation(line: 79, column: 37, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !2796, line: 77, column: 61)
!2845 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2844, file: !2796, line: 79, type: !45)
!2846 = !DILocation(line: 0, scope: !2844)
!2847 = !DILocation(line: 80, column: 37, scope: !2844)
!2848 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2844, file: !2796, line: 80, type: !45)
!2849 = !DILocalVariable(name: "i", scope: !2850, file: !2796, line: 85, type: !45)
!2850 = distinct !DILexicalBlock(scope: !2844, file: !2796, line: 85, column: 9)
!2851 = !DILocation(line: 0, scope: !2850)
!2852 = !DILocation(line: 85, column: 14, scope: !2850)
!2853 = !DILocation(line: 85, scope: !2850)
!2854 = !DILocation(line: 85, column: 27, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2850, file: !2796, line: 85, column: 9)
!2856 = !DILocation(line: 85, column: 9, scope: !2850)
!2857 = !DILocation(line: 93, column: 9, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2844, file: !2796, line: 93, column: 9)
!2859 = !DILocation(line: 86, column: 13, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2855, file: !2796, line: 85, column: 43)
!2861 = !DILocation(line: 86, column: 27, scope: !2860)
!2862 = !DILocation(line: 87, column: 13, scope: !2860)
!2863 = !DILocation(line: 87, column: 28, scope: !2860)
!2864 = !DILocation(line: 85, column: 39, scope: !2855)
!2865 = !DILocation(line: 85, column: 9, scope: !2855)
!2866 = distinct !{!2866, !2856, !2867, !303}
!2867 = !DILocation(line: 88, column: 9, scope: !2850)
!2868 = !DILocation(line: 0, scope: !2858)
!2869 = !DILocalVariable(name: "row", scope: !2858, file: !2796, line: 93, type: !45)
!2870 = !DILocalVariable(name: "pivot", scope: !2844, file: !2796, line: 91, type: !14)
!2871 = !DILocalVariable(name: "pivot_is_zero", scope: !2844, file: !2796, line: 92, type: !6)
!2872 = !DILocation(line: 94, column: 24, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2858, file: !2796, line: 93, column: 9)
!2874 = !DILocation(line: 94, column: 21, scope: !2873)
!2875 = !DILocation(line: 96, column: 38, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !2796, line: 94, column: 80)
!2877 = !DILocation(line: 96, column: 37, scope: !2876)
!2878 = !DILocalVariable(name: "is_pivot_row", scope: !2876, file: !2796, line: 96, type: !6)
!2879 = !DILocation(line: 0, scope: !2876)
!2880 = !DILocation(line: 97, column: 40, scope: !2876)
!2881 = !DILocalVariable(name: "below_pivot_row", scope: !2876, file: !2796, line: 97, type: !6)
!2882 = !DILocalVariable(name: "j", scope: !2883, file: !2796, line: 99, type: !45)
!2883 = distinct !DILexicalBlock(scope: !2876, file: !2796, line: 99, column: 13)
!2884 = !DILocation(line: 0, scope: !2883)
!2885 = !DILocation(line: 99, column: 18, scope: !2883)
!2886 = !DILocation(line: 99, scope: !2883)
!2887 = !DILocation(line: 99, column: 31, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2883, file: !2796, line: 99, column: 13)
!2889 = !DILocation(line: 99, column: 13, scope: !2883)
!2890 = !DILocation(line: 100, column: 67, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !2796, line: 99, column: 47)
!2892 = !DILocation(line: 100, column: 48, scope: !2891)
!2893 = !DILocation(line: 101, column: 47, scope: !2891)
!2894 = !DILocation(line: 101, column: 57, scope: !2891)
!2895 = !DILocation(line: 101, column: 34, scope: !2891)
!2896 = !DILocation(line: 100, column: 85, scope: !2891)
!2897 = !DILocation(line: 100, column: 17, scope: !2891)
!2898 = !DILocation(line: 100, column: 31, scope: !2891)
!2899 = !DILocation(line: 99, column: 43, scope: !2888)
!2900 = !DILocation(line: 99, column: 13, scope: !2888)
!2901 = distinct !{!2901, !2889, !2902, !303}
!2902 = !DILocation(line: 102, column: 13, scope: !2883)
!2903 = !DILocation(line: 103, column: 21, scope: !2876)
!2904 = !DILocation(line: 104, column: 44, scope: !2876)
!2905 = !DILocation(line: 104, column: 30, scope: !2876)
!2906 = !DILocation(line: 104, column: 29, scope: !2876)
!2907 = !DILocation(line: 94, column: 76, scope: !2873)
!2908 = !DILocation(line: 93, column: 9, scope: !2873)
!2909 = distinct !{!2909, !2857, !2910, !303}
!2910 = !DILocation(line: 105, column: 9, scope: !2858)
!2911 = !DILocation(line: 108, column: 19, scope: !2844)
!2912 = !DILocalVariable(name: "inverse", scope: !2795, file: !2796, line: 75, type: !14)
!2913 = !DILocation(line: 109, column: 9, scope: !2844)
!2914 = !DILocalVariable(name: "row", scope: !2915, file: !2796, line: 113, type: !45)
!2915 = distinct !DILexicalBlock(scope: !2844, file: !2796, line: 113, column: 9)
!2916 = !DILocation(line: 0, scope: !2915)
!2917 = !DILocation(line: 113, column: 14, scope: !2915)
!2918 = !DILocation(line: 113, scope: !2915)
!2919 = !DILocation(line: 113, column: 51, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !2796, line: 113, column: 9)
!2921 = !DILocation(line: 113, column: 9, scope: !2915)
!2922 = !DILocation(line: 124, column: 9, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2844, file: !2796, line: 124, column: 9)
!2924 = !DILocation(line: 114, column: 33, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !2796, line: 113, column: 84)
!2926 = !DILocation(line: 114, column: 63, scope: !2925)
!2927 = !DILocalVariable(name: "do_copy", scope: !2925, file: !2796, line: 114, type: !6)
!2928 = !DILocation(line: 0, scope: !2925)
!2929 = !DILocalVariable(name: "do_not_copy", scope: !2925, file: !2796, line: 115, type: !6)
!2930 = !DILocalVariable(name: "col", scope: !2931, file: !2796, line: 116, type: !45)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !2796, line: 116, column: 13)
!2932 = !DILocation(line: 0, scope: !2931)
!2933 = !DILocation(line: 116, column: 18, scope: !2931)
!2934 = !DILocation(line: 116, scope: !2931)
!2935 = !DILocation(line: 116, column: 35, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2931, file: !2796, line: 116, column: 13)
!2937 = !DILocation(line: 116, column: 13, scope: !2931)
!2938 = !DILocation(line: 118, column: 49, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !2796, line: 116, column: 53)
!2940 = !DILocation(line: 118, column: 59, scope: !2939)
!2941 = !DILocation(line: 118, column: 36, scope: !2939)
!2942 = !DILocation(line: 118, column: 34, scope: !2939)
!2943 = !DILocation(line: 119, column: 32, scope: !2939)
!2944 = !DILocation(line: 119, column: 30, scope: !2939)
!2945 = !DILocation(line: 118, column: 67, scope: !2939)
!2946 = !DILocation(line: 117, column: 30, scope: !2939)
!2947 = !DILocation(line: 117, column: 40, scope: !2939)
!2948 = !DILocation(line: 117, column: 17, scope: !2939)
!2949 = !DILocation(line: 117, column: 47, scope: !2939)
!2950 = !DILocation(line: 116, column: 49, scope: !2936)
!2951 = !DILocation(line: 116, column: 13, scope: !2936)
!2952 = distinct !{!2952, !2937, !2953, !303}
!2953 = !DILocation(line: 120, column: 13, scope: !2931)
!2954 = !DILocation(line: 113, column: 80, scope: !2920)
!2955 = !DILocation(line: 113, column: 9, scope: !2920)
!2956 = distinct !{!2956, !2921, !2957, !303}
!2957 = !DILocation(line: 121, column: 9, scope: !2915)
!2958 = !DILocation(line: 124, scope: !2923)
!2959 = !DILocalVariable(name: "row", scope: !2923, file: !2796, line: 124, type: !45)
!2960 = !DILocation(line: 0, scope: !2923)
!2961 = !DILocation(line: 124, column: 51, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2923, file: !2796, line: 124, column: 9)
!2963 = !DILocation(line: 125, column: 46, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2962, file: !2796, line: 124, column: 67)
!2965 = !DILocalVariable(name: "below_pivot", scope: !2964, file: !2796, line: 125, type: !14)
!2966 = !DILocation(line: 0, scope: !2964)
!2967 = !DILocation(line: 126, column: 74, scope: !2964)
!2968 = !DILocation(line: 126, column: 68, scope: !2964)
!2969 = !DILocation(line: 126, column: 41, scope: !2964)
!2970 = !DILocalVariable(name: "elt_to_elim", scope: !2964, file: !2796, line: 126, type: !14)
!2971 = !DILocation(line: 128, column: 63, scope: !2964)
!2972 = !DILocation(line: 129, column: 52, scope: !2964)
!2973 = !DILocation(line: 129, column: 46, scope: !2964)
!2974 = !DILocation(line: 128, column: 13, scope: !2964)
!2975 = !DILocation(line: 124, column: 63, scope: !2962)
!2976 = !DILocation(line: 124, column: 9, scope: !2962)
!2977 = distinct !{!2977, !2922, !2978, !303}
!2978 = !DILocation(line: 130, column: 9, scope: !2923)
!2979 = !DILocation(line: 132, column: 19, scope: !2844)
!2980 = !DILocation(line: 77, column: 57, scope: !2840)
!2981 = !DILocation(line: 77, column: 5, scope: !2840)
!2982 = distinct !{!2982, !2823, !2983, !303}
!2983 = !DILocation(line: 133, column: 5, scope: !2824)
!2984 = !DILocation(line: 138, scope: !2842)
!2985 = !DILocalVariable(name: "i", scope: !2842, file: !2796, line: 138, type: !45)
!2986 = !DILocation(line: 0, scope: !2842)
!2987 = !DILocation(line: 138, column: 23, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2842, file: !2796, line: 138, column: 5)
!2989 = !DILocation(line: 139, column: 47, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2988, file: !2796, line: 138, column: 37)
!2991 = !DILocation(line: 139, column: 43, scope: !2990)
!2992 = !DILocation(line: 139, column: 9, scope: !2990)
!2993 = !DILocalVariable(name: "j", scope: !2994, file: !2796, line: 140, type: !45)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !2796, line: 140, column: 9)
!2995 = !DILocation(line: 0, scope: !2994)
!2996 = !DILocation(line: 140, column: 14, scope: !2994)
!2997 = !DILocation(line: 140, scope: !2994)
!2998 = !DILocation(line: 140, column: 27, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !2796, line: 140, column: 9)
!3000 = !DILocation(line: 140, column: 9, scope: !2994)
!3001 = !DILocation(line: 141, column: 32, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !2796, line: 140, column: 41)
!3003 = !DILocation(line: 141, column: 17, scope: !3002)
!3004 = !DILocation(line: 141, column: 13, scope: !3002)
!3005 = !DILocation(line: 141, column: 30, scope: !3002)
!3006 = !DILocation(line: 140, column: 37, scope: !2999)
!3007 = !DILocation(line: 140, column: 9, scope: !2999)
!3008 = distinct !{!3008, !3000, !3009, !303}
!3009 = !DILocation(line: 142, column: 9, scope: !2994)
!3010 = !DILocation(line: 138, column: 33, scope: !2988)
!3011 = !DILocation(line: 138, column: 5, scope: !2988)
!3012 = distinct !{!3012, !2841, !3013, !303}
!3013 = !DILocation(line: 143, column: 5, scope: !2842)
!3014 = !DILocation(line: 145, column: 5, scope: !2795)
!3015 = !DILocation(line: 146, column: 5, scope: !2795)
!3016 = !DILocation(line: 147, column: 5, scope: !2795)
!3017 = !DILocation(line: 148, column: 5, scope: !2795)
!3018 = !DILocation(line: 149, column: 1, scope: !2795)
!3019 = distinct !DISubprogram(name: "ct_compare_8", scope: !3020, file: !3020, line: 51, type: !1534, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3020 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3021 = !DILocalVariable(name: "a", arg: 1, scope: !3019, file: !3020, line: 51, type: !14)
!3022 = !DILocation(line: 0, scope: !3019)
!3023 = !DILocalVariable(name: "b", arg: 2, scope: !3019, file: !3020, line: 51, type: !14)
!3024 = !DILocation(line: 52, column: 42, scope: !3019)
!3025 = !DILocation(line: 52, column: 13, scope: !3019)
!3026 = !DILocation(line: 52, column: 71, scope: !3019)
!3027 = !DILocation(line: 52, column: 69, scope: !3019)
!3028 = !DILocation(line: 52, column: 5, scope: !3019)
!3029 = distinct !DISubprogram(name: "mul_fx8", scope: !493, file: !493, line: 28, type: !3030, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!6, !14, !6}
!3032 = !DILocalVariable(name: "a", arg: 1, scope: !3029, file: !493, line: 28, type: !14)
!3033 = !DILocation(line: 0, scope: !3029)
!3034 = !DILocalVariable(name: "b", arg: 2, scope: !3029, file: !493, line: 28, type: !6)
!3035 = !DILocation(line: 31, column: 13, scope: !3029)
!3036 = !DILocation(line: 31, column: 10, scope: !3029)
!3037 = !DILocation(line: 31, column: 17, scope: !3029)
!3038 = !DILocalVariable(name: "p", scope: !3029, file: !493, line: 30, type: !6)
!3039 = !DILocation(line: 32, column: 13, scope: !3029)
!3040 = !DILocation(line: 32, column: 10, scope: !3029)
!3041 = !DILocation(line: 32, column: 17, scope: !3029)
!3042 = !DILocation(line: 32, column: 7, scope: !3029)
!3043 = !DILocation(line: 33, column: 13, scope: !3029)
!3044 = !DILocation(line: 33, column: 10, scope: !3029)
!3045 = !DILocation(line: 33, column: 17, scope: !3029)
!3046 = !DILocation(line: 33, column: 7, scope: !3029)
!3047 = !DILocation(line: 34, column: 13, scope: !3029)
!3048 = !DILocation(line: 34, column: 10, scope: !3029)
!3049 = !DILocation(line: 34, column: 17, scope: !3029)
!3050 = !DILocation(line: 34, column: 7, scope: !3029)
!3051 = !DILocalVariable(name: "top_p", scope: !3029, file: !493, line: 37, type: !6)
!3052 = !DILocation(line: 38, column: 32, scope: !3029)
!3053 = !DILocation(line: 38, column: 47, scope: !3029)
!3054 = !DILocation(line: 38, column: 38, scope: !3029)
!3055 = !DILocation(line: 38, column: 54, scope: !3029)
!3056 = !DILocalVariable(name: "out", scope: !3029, file: !493, line: 38, type: !6)
!3057 = !DILocation(line: 39, column: 5, scope: !3029)
!3058 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2796, file: !2796, line: 24, type: !3059, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !49, !5, !45}
!3061 = !DILocalVariable(name: "in", arg: 1, scope: !3058, file: !2796, line: 24, type: !49)
!3062 = !DILocation(line: 0, scope: !3058)
!3063 = !DILocalVariable(name: "out", arg: 2, scope: !3058, file: !2796, line: 24, type: !5)
!3064 = !DILocalVariable(name: "ncols", arg: 3, scope: !3058, file: !2796, line: 24, type: !45)
!3065 = !DILocalVariable(name: "out8", scope: !3058, file: !2796, line: 26, type: !18)
!3066 = !DILocalVariable(name: "i", scope: !3058, file: !2796, line: 25, type: !45)
!3067 = !DILocation(line: 27, column: 9, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3058, file: !2796, line: 27, column: 5)
!3069 = !DILocation(line: 27, scope: !3068)
!3070 = !DILocation(line: 27, column: 17, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !2796, line: 27, column: 5)
!3072 = !DILocation(line: 27, column: 20, scope: !3071)
!3073 = !DILocation(line: 27, column: 5, scope: !3068)
!3074 = !DILocation(line: 31, column: 23, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !2796, line: 27, column: 36)
!3076 = !DILocation(line: 31, column: 44, scope: !3075)
!3077 = !DILocation(line: 31, column: 40, scope: !3075)
!3078 = !DILocation(line: 31, column: 48, scope: !3075)
!3079 = !DILocation(line: 31, column: 37, scope: !3075)
!3080 = !DILocation(line: 31, column: 15, scope: !3075)
!3081 = !DILocation(line: 31, column: 9, scope: !3075)
!3082 = !DILocation(line: 31, column: 20, scope: !3075)
!3083 = !DILocation(line: 27, column: 31, scope: !3071)
!3084 = !DILocation(line: 27, column: 5, scope: !3071)
!3085 = distinct !{!3085, !3073, !3086, !303}
!3086 = !DILocation(line: 33, column: 5, scope: !3068)
!3087 = !DILocation(line: 34, column: 19, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3058, file: !2796, line: 34, column: 9)
!3089 = !DILocation(line: 38, column: 23, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3088, file: !2796, line: 34, column: 24)
!3091 = !DILocation(line: 38, column: 15, scope: !3090)
!3092 = !DILocation(line: 38, column: 9, scope: !3090)
!3093 = !DILocation(line: 38, column: 20, scope: !3090)
!3094 = !DILocation(line: 40, column: 5, scope: !3090)
!3095 = !DILocation(line: 41, column: 1, scope: !3058)
!3096 = distinct !DISubprogram(name: "ct_compare_64", scope: !3020, file: !3020, line: 46, type: !3097, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!6, !45, !45}
!3099 = !DILocalVariable(name: "a", arg: 1, scope: !3096, file: !3020, line: 46, type: !45)
!3100 = !DILocation(line: 0, scope: !3096)
!3101 = !DILocalVariable(name: "b", arg: 2, scope: !3096, file: !3020, line: 46, type: !45)
!3102 = !DILocation(line: 47, column: 38, scope: !3096)
!3103 = !DILocation(line: 47, column: 44, scope: !3096)
!3104 = !DILocation(line: 47, column: 73, scope: !3096)
!3105 = !DILocation(line: 47, column: 71, scope: !3096)
!3106 = !DILocation(line: 47, column: 5, scope: !3096)
!3107 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3020, file: !3020, line: 35, type: !3097, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3108 = !DILocalVariable(name: "a", arg: 1, scope: !3107, file: !3020, line: 35, type: !45)
!3109 = !DILocation(line: 0, scope: !3107)
!3110 = !DILocalVariable(name: "b", arg: 2, scope: !3107, file: !3020, line: 35, type: !45)
!3111 = !DILocalVariable(name: "diff", scope: !3107, file: !3020, line: 36, type: !46)
!3112 = !DILocation(line: 37, column: 30, scope: !3107)
!3113 = !DILocation(line: 37, column: 59, scope: !3107)
!3114 = !DILocation(line: 37, column: 57, scope: !3107)
!3115 = !DILocation(line: 37, column: 5, scope: !3107)
!3116 = distinct !DISubprogram(name: "m_extract_element", scope: !2796, file: !2796, line: 16, type: !3117, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!14, !326, !45}
!3119 = !DILocalVariable(name: "in", arg: 1, scope: !3116, file: !2796, line: 16, type: !326)
!3120 = !DILocation(line: 0, scope: !3116)
!3121 = !DILocalVariable(name: "index", arg: 2, scope: !3116, file: !2796, line: 16, type: !45)
!3122 = !DILocation(line: 17, column: 27, scope: !3116)
!3123 = !DILocalVariable(name: "leg", scope: !3116, file: !2796, line: 17, type: !239)
!3124 = !DILocation(line: 18, column: 30, scope: !3116)
!3125 = !DILocalVariable(name: "offset", scope: !3116, file: !2796, line: 18, type: !239)
!3126 = !DILocation(line: 20, column: 13, scope: !3116)
!3127 = !DILocation(line: 20, column: 31, scope: !3116)
!3128 = !DILocation(line: 20, column: 21, scope: !3116)
!3129 = !DILocation(line: 20, column: 12, scope: !3116)
!3130 = !DILocation(line: 20, column: 5, scope: !3116)
!3131 = distinct !DISubprogram(name: "inverse_f", scope: !493, file: !493, line: 57, type: !3132, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!14, !14}
!3134 = !DILocalVariable(name: "a", arg: 1, scope: !3131, file: !493, line: 57, type: !14)
!3135 = !DILocation(line: 0, scope: !3131)
!3136 = !DILocation(line: 61, column: 24, scope: !3131)
!3137 = !DILocalVariable(name: "a2", scope: !3131, file: !493, line: 61, type: !14)
!3138 = !DILocation(line: 62, column: 24, scope: !3131)
!3139 = !DILocalVariable(name: "a4", scope: !3131, file: !493, line: 62, type: !14)
!3140 = !DILocation(line: 63, column: 24, scope: !3131)
!3141 = !DILocalVariable(name: "a8", scope: !3131, file: !493, line: 63, type: !14)
!3142 = !DILocation(line: 64, column: 24, scope: !3131)
!3143 = !DILocalVariable(name: "a6", scope: !3131, file: !493, line: 64, type: !14)
!3144 = !DILocation(line: 65, column: 25, scope: !3131)
!3145 = !DILocalVariable(name: "a14", scope: !3131, file: !493, line: 65, type: !14)
!3146 = !DILocation(line: 67, column: 5, scope: !3131)
!3147 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3020, file: !3020, line: 94, type: !3148, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !239, !326, !14, !5}
!3150 = !DILocalVariable(name: "legs", arg: 1, scope: !3147, file: !3020, line: 94, type: !239)
!3151 = !DILocation(line: 0, scope: !3147)
!3152 = !DILocalVariable(name: "in", arg: 2, scope: !3147, file: !3020, line: 94, type: !326)
!3153 = !DILocalVariable(name: "a", arg: 3, scope: !3147, file: !3020, line: 94, type: !14)
!3154 = !DILocalVariable(name: "acc", arg: 4, scope: !3147, file: !3020, line: 94, type: !5)
!3155 = !DILocation(line: 95, column: 20, scope: !3147)
!3156 = !DILocalVariable(name: "tab", scope: !3147, file: !3020, line: 95, type: !19)
!3157 = !DILocalVariable(name: "lsb_ask", scope: !3147, file: !3020, line: 97, type: !6)
!3158 = !DILocalVariable(name: "i", scope: !3159, file: !3020, line: 99, type: !45)
!3159 = distinct !DILexicalBlock(scope: !3147, file: !3020, line: 99, column: 5)
!3160 = !DILocation(line: 0, scope: !3159)
!3161 = !DILocation(line: 99, column: 9, scope: !3159)
!3162 = !DILocation(line: 99, scope: !3159)
!3163 = !DILocation(line: 99, column: 20, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3159, file: !3020, line: 99, column: 5)
!3165 = !DILocation(line: 99, column: 5, scope: !3159)
!3166 = !DILocation(line: 100, column: 21, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !3020, line: 99, column: 32)
!3168 = !DILocation(line: 100, column: 33, scope: !3167)
!3169 = !DILocation(line: 100, column: 51, scope: !3167)
!3170 = !DILocation(line: 100, column: 46, scope: !3167)
!3171 = !DILocation(line: 100, column: 44, scope: !3167)
!3172 = !DILocation(line: 101, column: 27, scope: !3167)
!3173 = !DILocation(line: 101, column: 33, scope: !3167)
!3174 = !DILocation(line: 101, column: 52, scope: !3167)
!3175 = !DILocation(line: 101, column: 59, scope: !3167)
!3176 = !DILocation(line: 101, column: 46, scope: !3167)
!3177 = !DILocation(line: 101, column: 44, scope: !3167)
!3178 = !DILocation(line: 101, column: 17, scope: !3167)
!3179 = !DILocation(line: 102, column: 21, scope: !3167)
!3180 = !DILocation(line: 102, column: 27, scope: !3167)
!3181 = !DILocation(line: 102, column: 33, scope: !3167)
!3182 = !DILocation(line: 102, column: 52, scope: !3167)
!3183 = !DILocation(line: 102, column: 59, scope: !3167)
!3184 = !DILocation(line: 102, column: 46, scope: !3167)
!3185 = !DILocation(line: 102, column: 44, scope: !3167)
!3186 = !DILocation(line: 102, column: 17, scope: !3167)
!3187 = !DILocation(line: 103, column: 21, scope: !3167)
!3188 = !DILocation(line: 103, column: 27, scope: !3167)
!3189 = !DILocation(line: 103, column: 33, scope: !3167)
!3190 = !DILocation(line: 103, column: 52, scope: !3167)
!3191 = !DILocation(line: 103, column: 59, scope: !3167)
!3192 = !DILocation(line: 103, column: 46, scope: !3167)
!3193 = !DILocation(line: 103, column: 44, scope: !3167)
!3194 = !DILocation(line: 103, column: 17, scope: !3167)
!3195 = !DILocation(line: 100, column: 9, scope: !3167)
!3196 = !DILocation(line: 100, column: 16, scope: !3167)
!3197 = !DILocation(line: 99, column: 29, scope: !3164)
!3198 = !DILocation(line: 99, column: 5, scope: !3164)
!3199 = distinct !{!3199, !3165, !3200, !303}
!3200 = !DILocation(line: 104, column: 5, scope: !3159)
!3201 = !DILocation(line: 105, column: 1, scope: !3147)
!3202 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2796, file: !2796, line: 44, type: !3203, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{null, !45, !326, !18}
!3205 = !DILocalVariable(name: "legs", arg: 1, scope: !3202, file: !2796, line: 44, type: !45)
!3206 = !DILocation(line: 0, scope: !3202)
!3207 = !DILocalVariable(name: "in", arg: 2, scope: !3202, file: !2796, line: 44, type: !326)
!3208 = !DILocalVariable(name: "out", arg: 3, scope: !3202, file: !2796, line: 44, type: !18)
!3209 = !DILocalVariable(name: "in8", scope: !3202, file: !2796, line: 45, type: !49)
!3210 = !DILocalVariable(name: "i", scope: !3211, file: !2796, line: 46, type: !45)
!3211 = distinct !DILexicalBlock(scope: !3202, file: !2796, line: 46, column: 5)
!3212 = !DILocation(line: 0, scope: !3211)
!3213 = !DILocation(line: 46, column: 9, scope: !3211)
!3214 = !DILocation(line: 46, scope: !3211)
!3215 = !DILocation(line: 46, column: 29, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !2796, line: 46, column: 5)
!3217 = !DILocation(line: 46, column: 22, scope: !3216)
!3218 = !DILocation(line: 46, column: 5, scope: !3211)
!3219 = !DILocation(line: 51, column: 26, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3216, file: !2796, line: 46, column: 42)
!3221 = !DILocation(line: 51, column: 21, scope: !3220)
!3222 = !DILocation(line: 51, column: 31, scope: !3220)
!3223 = !DILocation(line: 51, column: 9, scope: !3220)
!3224 = !DILocation(line: 51, column: 18, scope: !3220)
!3225 = !DILocation(line: 52, column: 26, scope: !3220)
!3226 = !DILocation(line: 52, column: 21, scope: !3220)
!3227 = !DILocation(line: 52, column: 30, scope: !3220)
!3228 = !DILocation(line: 52, column: 14, scope: !3220)
!3229 = !DILocation(line: 52, column: 9, scope: !3220)
!3230 = !DILocation(line: 52, column: 18, scope: !3220)
!3231 = !DILocation(line: 46, column: 37, scope: !3216)
!3232 = !DILocation(line: 46, column: 5, scope: !3216)
!3233 = distinct !{!3233, !3218, !3234, !303}
!3234 = !DILocation(line: 54, column: 5, scope: !3211)
!3235 = !DILocation(line: 55, column: 1, scope: !3202)
!3236 = distinct !DISubprogram(name: "mul_table", scope: !493, file: !493, line: 129, type: !494, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3237 = !DILocalVariable(name: "b", arg: 1, scope: !3236, file: !493, line: 129, type: !12)
!3238 = !DILocation(line: 0, scope: !3236)
!3239 = !DILocation(line: 130, column: 19, scope: !3236)
!3240 = !DILocation(line: 130, column: 33, scope: !3236)
!3241 = !DILocalVariable(name: "x", scope: !3236, file: !493, line: 130, type: !19)
!3242 = !DILocalVariable(name: "high_nibble_mask", scope: !3236, file: !493, line: 132, type: !19)
!3243 = !DILocation(line: 134, column: 28, scope: !3236)
!3244 = !DILocalVariable(name: "high_half", scope: !3236, file: !493, line: 134, type: !19)
!3245 = !DILocation(line: 135, column: 28, scope: !3236)
!3246 = !DILocation(line: 135, column: 47, scope: !3236)
!3247 = !DILocation(line: 135, column: 34, scope: !3236)
!3248 = !DILocation(line: 135, column: 5, scope: !3236)
!3249 = distinct !DISubprogram(name: "mul_f", scope: !493, file: !493, line: 9, type: !1534, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3250 = !DILocalVariable(name: "a", arg: 1, scope: !3249, file: !493, line: 9, type: !14)
!3251 = !DILocation(line: 0, scope: !3249)
!3252 = !DILocalVariable(name: "b", arg: 2, scope: !3249, file: !493, line: 9, type: !14)
!3253 = !DILocation(line: 14, column: 10, scope: !3249)
!3254 = !DILocation(line: 14, column: 7, scope: !3249)
!3255 = !DILocation(line: 17, column: 17, scope: !3249)
!3256 = !DILocalVariable(name: "p", scope: !3249, file: !493, line: 11, type: !14)
!3257 = !DILocation(line: 18, column: 13, scope: !3249)
!3258 = !DILocation(line: 18, column: 17, scope: !3249)
!3259 = !DILocation(line: 18, column: 7, scope: !3249)
!3260 = !DILocation(line: 19, column: 13, scope: !3249)
!3261 = !DILocation(line: 19, column: 17, scope: !3249)
!3262 = !DILocation(line: 19, column: 7, scope: !3249)
!3263 = !DILocation(line: 20, column: 13, scope: !3249)
!3264 = !DILocation(line: 20, column: 17, scope: !3249)
!3265 = !DILocation(line: 20, column: 7, scope: !3249)
!3266 = !DILocalVariable(name: "top_p", scope: !3249, file: !493, line: 23, type: !14)
!3267 = !DILocation(line: 24, column: 37, scope: !3249)
!3268 = !DILocation(line: 24, column: 52, scope: !3249)
!3269 = !DILocation(line: 24, column: 43, scope: !3249)
!3270 = !DILocation(line: 24, column: 59, scope: !3249)
!3271 = !DILocalVariable(name: "out", scope: !3249, file: !493, line: 24, type: !14)
!3272 = !DILocation(line: 25, column: 5, scope: !3249)
!3273 = distinct !DISubprogram(name: "lincomb", scope: !493, file: !493, line: 70, type: !1542, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3274 = !DILocalVariable(name: "a", arg: 1, scope: !3273, file: !493, line: 70, type: !49)
!3275 = !DILocation(line: 0, scope: !3273)
!3276 = !DILocalVariable(name: "b", arg: 2, scope: !3273, file: !493, line: 71, type: !49)
!3277 = !DILocalVariable(name: "n", arg: 3, scope: !3273, file: !493, line: 71, type: !45)
!3278 = !DILocalVariable(name: "m", arg: 4, scope: !3273, file: !493, line: 71, type: !45)
!3279 = !DILocalVariable(name: "ret", scope: !3273, file: !493, line: 72, type: !14)
!3280 = !DILocalVariable(name: "i", scope: !3281, file: !493, line: 73, type: !45)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !493, line: 73, column: 5)
!3282 = !DILocation(line: 0, scope: !3281)
!3283 = !DILocation(line: 73, column: 10, scope: !3281)
!3284 = !DILocation(line: 73, scope: !3281)
!3285 = !DILocation(line: 73, column: 23, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !493, line: 73, column: 5)
!3287 = !DILocation(line: 73, column: 5, scope: !3281)
!3288 = !DILocation(line: 74, column: 27, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3286, file: !493, line: 73, column: 41)
!3290 = !DILocation(line: 74, column: 33, scope: !3289)
!3291 = !DILocation(line: 74, column: 21, scope: !3289)
!3292 = !DILocation(line: 74, column: 15, scope: !3289)
!3293 = !DILocation(line: 73, column: 28, scope: !3286)
!3294 = !DILocation(line: 73, column: 35, scope: !3286)
!3295 = !DILocation(line: 73, column: 5, scope: !3286)
!3296 = distinct !{!3296, !3287, !3297, !303}
!3297 = !DILocation(line: 75, column: 5, scope: !3281)
!3298 = !DILocation(line: 76, column: 5, scope: !3273)
!3299 = distinct !DISubprogram(name: "add_f", scope: !493, file: !493, line: 43, type: !1534, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3300 = !DILocalVariable(name: "a", arg: 1, scope: !3299, file: !493, line: 43, type: !14)
!3301 = !DILocation(line: 0, scope: !3299)
!3302 = !DILocalVariable(name: "b", arg: 2, scope: !3299, file: !493, line: 43, type: !14)
!3303 = !DILocation(line: 44, column: 14, scope: !3299)
!3304 = !DILocation(line: 44, column: 5, scope: !3299)
