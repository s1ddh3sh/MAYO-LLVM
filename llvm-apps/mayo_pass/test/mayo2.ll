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
    #dbg_value(ptr %p, !111, !DIExpression(), !112)
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
  %call4 = call i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 %call5, !145, !DIExpression(), !112)
  %cmp6.not = icmp eq i32 %call5, 0, !dbg !149
  br i1 %cmp6.not, label %if.end9, label %err, !dbg !149

if.end9:                                          ; preds = %if.end
  %call11 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !151
    #dbg_value(i32 %call11, !145, !DIExpression(), !112)
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !152
  br i1 %cmp12.not, label %if.end15, label %err, !dbg !152

if.end15:                                         ; preds = %if.end9
  %1 = load i32, ptr %msglen, align 4, !dbg !154
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !155
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !156
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !156

if.end21:                                         ; preds = %if.end15
  %2 = load i32, ptr %smlen, align 4, !dbg !158
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !159
    #dbg_value(i32 %call23, !145, !DIExpression(), !112)
  %cmp24.not = icmp eq i32 %call23, 0, !dbg !160
  br i1 %cmp24.not, label %lor.lhs.false, label %err, !dbg !162

lor.lhs.false:                                    ; preds = %if.end21
  %3 = load i32, ptr %msglen, align 4, !dbg !163
    #dbg_value(i32 %3, !113, !DIExpression(), !112)
  %call27 = call i32 @memcmp(ptr noundef nonnull %msg, ptr noundef nonnull %msg2, i32 noundef %3) #8, !dbg !164
  %tobool.not = icmp eq i32 %call27, 0, !dbg !164
  br i1 %tobool.not, label %if.end30, label %err, !dbg !162

if.end30:                                         ; preds = %lor.lhs.false
    #dbg_value(i32 0, !145, !DIExpression(), !112)
  %4 = load i32, ptr %msglen, align 4, !dbg !165
    #dbg_value(i32 %4, !113, !DIExpression(), !112)
  %call32 = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !166
    #dbg_value(i32 %call32, !145, !DIExpression(), !112)
  %sext = sub nsw i32 0, %call32, !dbg !167
  br label %err, !dbg !167

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end15, %if.end9, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end9 ], [ -1, %if.end15 ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !112
    #dbg_value(i32 %res.0, !145, !DIExpression(), !112)
    #dbg_label(!169, !170)
  call void @free(ptr noundef %call) #8, !dbg !171
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 24) #8, !dbg !172
  call void @free(ptr noundef %call3) #8, !dbg !173
  ret i32 %res.0, !dbg !174
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !175 {
entry:
    #dbg_value(ptr %p, !206, !DIExpression(), !207)
    #dbg_value(ptr %pk, !208, !DIExpression(), !207)
    #dbg_value(ptr %sk, !209, !DIExpression(), !207)
    #dbg_value(i32 0, !210, !DIExpression(), !207)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !211
    #dbg_value(i32 %call, !210, !DIExpression(), !207)
    #dbg_label(!212, !213)
  ret i32 %call, !dbg !214
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !215 {
entry:
  %S = alloca [560 x i8], align 1
  %P = alloca [12672 x i64], align 8
  %P3 = alloca [1156 x i64], align 8
  %O = alloca [1088 x i8], align 1
  %P3_upper = alloca [612 x i64], align 8
    #dbg_value(ptr %p, !216, !DIExpression(), !217)
    #dbg_value(ptr %cpk, !218, !DIExpression(), !217)
    #dbg_value(ptr %csk, !219, !DIExpression(), !217)
    #dbg_value(i32 0, !220, !DIExpression(), !217)
    #dbg_value(ptr %csk, !221, !DIExpression(), !217)
    #dbg_declare(ptr %S, !222, !DIExpression(), !226)
    #dbg_declare(ptr %P, !227, !DIExpression(), !231)
    #dbg_declare(ptr %P3, !232, !DIExpression(), !236)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(9248) %P3, i8 0, i32 9248, i1 false), !dbg !236
    #dbg_declare(ptr %O, !237, !DIExpression(), !241)
    #dbg_value(i32 4, !242, !DIExpression(), !217)
    #dbg_value(i32 64, !244, !DIExpression(), !217)
    #dbg_value(i32 64, !245, !DIExpression(), !217)
    #dbg_value(i32 17, !246, !DIExpression(), !217)
    #dbg_value(i32 544, !247, !DIExpression(), !217)
    #dbg_value(i32 8320, !248, !DIExpression(), !217)
    #dbg_value(i32 612, !249, !DIExpression(), !217)
    #dbg_value(i32 16, !250, !DIExpression(), !217)
    #dbg_value(i32 24, !251, !DIExpression(), !217)
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 66560, !dbg !253
    #dbg_value(ptr %add.ptr, !254, !DIExpression(), !217)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #8, !dbg !255
  %cmp.not = icmp eq i32 %call, 0, !dbg !257
  br i1 %cmp.not, label %if.end, label %err, !dbg !257

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #8, !dbg !258
    #dbg_value(ptr %S, !259, !DIExpression(), !217)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !260
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1088) #6, !dbg !261
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !262
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !263
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !264
    #dbg_declare(ptr %P3_upper, !265, !DIExpression(), !269)
  call void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 17) #6, !dbg !270
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !271
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 153, i32 noundef 64) #6, !dbg !272
  br label %err, !dbg !272

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !217
    #dbg_value(i32 %ret.0, !220, !DIExpression(), !217)
    #dbg_label(!273, !274)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1088) #8, !dbg !275
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 34816) #8, !dbg !276
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 9248) #8, !dbg !277
  ret i32 %ret.0, !dbg !278
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef %mdeclen) unnamed_addr #0 !dbg !279 {
entry:
    #dbg_value(ptr %m, !282, !DIExpression(), !283)
    #dbg_value(ptr %mdec, !284, !DIExpression(), !283)
    #dbg_value(i32 %mdeclen, !285, !DIExpression(), !283)
    #dbg_value(i32 0, !286, !DIExpression(), !283)
  br label %for.cond, !dbg !287

for.cond:                                         ; preds = %for.body, %entry
  %mdec.addr.0 = phi ptr [ %mdec, %entry ], [ %incdec.ptr5, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !289
    #dbg_value(i32 %i.0, !286, !DIExpression(), !283)
    #dbg_value(ptr %mdec.addr.0, !284, !DIExpression(), !283)
  %div = sdiv i32 %mdeclen, 2, !dbg !290
  %cmp = icmp slt i32 %i.0, %div, !dbg !292
  br i1 %cmp, label %for.body, label %for.end, !dbg !293

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !294
  %0 = load i8, ptr %arrayidx, align 1, !dbg !294
  %1 = and i8 %0, 15, !dbg !296
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 1, !dbg !297
    #dbg_value(ptr %incdec.ptr, !284, !DIExpression(), !283)
  store i8 %1, ptr %mdec.addr.0, align 1, !dbg !298
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !299
  %2 = load i8, ptr %arrayidx2, align 1, !dbg !299
  %3 = lshr i8 %2, 4, !dbg !300
    #dbg_value(ptr %incdec.ptr, !284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !283)
  store i8 %3, ptr %incdec.ptr, align 1, !dbg !301
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 2, !dbg !302
    #dbg_value(ptr %incdec.ptr5, !284, !DIExpression(), !283)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !303
    #dbg_value(i32 %inc, !286, !DIExpression(), !283)
  br label %for.cond, !dbg !304, !llvm.loop !305

for.end:                                          ; preds = %for.cond
  %4 = and i32 %mdeclen, -2147483647, !dbg !308
  %cmp6 = icmp eq i32 %4, 1, !dbg !308
  br i1 %cmp6, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %for.end
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !310
  %5 = load i8, ptr %arrayidx8, align 1, !dbg !310
  %6 = and i8 %5, 15, !dbg !312
    #dbg_value(ptr %mdec.addr.0, !284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !283)
  store i8 %6, ptr %mdec.addr.0, align 1, !dbg !313
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !315
}

; Function Attrs: nounwind
define internal fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) unnamed_addr #0 !dbg !316 {
entry:
    #dbg_value(ptr %p, !319, !DIExpression(), !320)
    #dbg_value(ptr %P, !321, !DIExpression(), !320)
    #dbg_value(ptr %seed_pk, !322, !DIExpression(), !320)
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 101376, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !323
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3168, i32 noundef 64) #6, !dbg !324
  ret void, !dbg !325
}

; Function Attrs: nounwind
define internal fastcc void @compute_P3(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %O, ptr noundef %P3) unnamed_addr #0 !dbg !326 {
entry:
    #dbg_value(ptr %p, !331, !DIExpression(), !332)
    #dbg_value(ptr %P1, !333, !DIExpression(), !332)
    #dbg_value(ptr %P2, !334, !DIExpression(), !332)
    #dbg_value(ptr %O, !335, !DIExpression(), !332)
    #dbg_value(ptr %P3, !336, !DIExpression(), !332)
    #dbg_value(i32 4, !337, !DIExpression(), !332)
    #dbg_value(i32 64, !338, !DIExpression(), !332)
    #dbg_value(i32 17, !339, !DIExpression(), !332)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !340
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 4, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 64, i32 noundef 17, i32 noundef 17) #6, !dbg !341
  ret void, !dbg !342
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !343 {
entry:
    #dbg_value(ptr %in, !346, !DIExpression(), !347)
    #dbg_value(ptr %out, !348, !DIExpression(), !347)
    #dbg_value(i32 %vecs, !349, !DIExpression(), !347)
    #dbg_value(i32 %m, !350, !DIExpression(), !347)
  %add = add nsw i32 %m, 15, !dbg !351
  %div = sdiv i32 %add, 16, !dbg !352
    #dbg_value(i32 %div, !353, !DIExpression(), !347)
    #dbg_value(ptr %in, !354, !DIExpression(), !347)
    #dbg_value(i32 0, !355, !DIExpression(), !357)
  %smax = call i32 @llvm.smax.i32(i32 %vecs, i32 0), !dbg !358
  br label %for.cond, !dbg !358

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !359
    #dbg_value(i32 %i.0, !355, !DIExpression(), !357)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !360
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !362

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %m, !dbg !363
  %div1 = sdiv i32 %mul, 2, !dbg !365
  %add.ptr = getelementptr inbounds i8, ptr %out, i32 %div1, !dbg !366
  %mul2 = mul nsw i32 %i.0, %div, !dbg !367
  %mul3 = shl i32 %mul2, 3, !dbg !368
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !369
  %div5 = sdiv i32 %m, 2, !dbg !370
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %div5) #8, !dbg !371
  %inc = add nuw i32 %i.0, 1, !dbg !372
    #dbg_value(i32 %inc, !355, !DIExpression(), !357)
  br label %for.cond, !dbg !373, !llvm.loop !374

for.end:                                          ; preds = %for.cond
  ret void, !dbg !376
}

declare dso_local void @mayo_secure_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !377 {
entry:
    #dbg_value(ptr %p, !380, !DIExpression(), !381)
    #dbg_value(ptr %P1, !382, !DIExpression(), !381)
    #dbg_value(ptr %O, !383, !DIExpression(), !381)
    #dbg_value(ptr %acc, !384, !DIExpression(), !381)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 4, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 1) #6, !dbg !385
  ret void, !dbg !386
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !387 {
entry:
    #dbg_value(i32 %m_vec_limbs, !390, !DIExpression(), !391)
    #dbg_value(ptr %mat, !392, !DIExpression(), !391)
    #dbg_value(ptr %bs_mat, !393, !DIExpression(), !391)
    #dbg_value(ptr %acc, !394, !DIExpression(), !391)
    #dbg_value(i32 %mat_rows, !395, !DIExpression(), !391)
    #dbg_value(i32 %mat_cols, !396, !DIExpression(), !391)
    #dbg_value(i32 %bs_mat_cols, !397, !DIExpression(), !391)
    #dbg_value(i32 0, !398, !DIExpression(), !400)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !401
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !401
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !401
  br label %for.cond, !dbg !401

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !402
    #dbg_value(i32 %r.0, !398, !DIExpression(), !400)
  %exitcond4.not = icmp eq i32 %r.0, %smax3, !dbg !403
  br i1 %exitcond4.not, label %for.end19, label %for.cond1, !dbg !405

for.cond1:                                        ; preds = %for.cond, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond ], !dbg !406
    #dbg_value(i32 %c.0, !409, !DIExpression(), !410)
  %exitcond2.not = icmp eq i32 %c.0, %smax1, !dbg !411
  br i1 %exitcond2.not, label %for.inc17, label %for.cond4, !dbg !413

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond1 ], !dbg !414
    #dbg_value(i32 %k.0, !417, !DIExpression(), !418)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !419
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !421

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !422
  %add = add nsw i32 %mul, %k.0, !dbg !424
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !425
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !426
  %mul8 = mul nsw i32 %c.0, %mat_cols, !dbg !427
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !428
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !428
  %1 = load i8, ptr %arrayidx, align 1, !dbg !428
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !429
  %add11 = add nsw i32 %mul10, %k.0, !dbg !430
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !431
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !432
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !433
  %add14 = add nuw i32 %k.0, 1, !dbg !434
    #dbg_value(i32 %add14, !417, !DIExpression(), !418)
  br label %for.cond4, !dbg !435, !llvm.loop !436

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !438
    #dbg_value(i32 %inc, !409, !DIExpression(), !410)
  br label %for.cond1, !dbg !439, !llvm.loop !440

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !442
    #dbg_value(i32 %inc18, !398, !DIExpression(), !400)
  br label %for.cond, !dbg !443, !llvm.loop !444

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !446
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !447 {
entry:
    #dbg_value(i32 %m_vec_limbs, !451, !DIExpression(), !452)
    #dbg_value(ptr %in, !453, !DIExpression(), !452)
    #dbg_value(i8 %a, !454, !DIExpression(), !452)
    #dbg_value(ptr %acc, !455, !DIExpression(), !452)
  %call = call fastcc i32 @mul_table(i8 noundef zeroext %a) #6, !dbg !456
    #dbg_value(i32 %call, !457, !DIExpression(), !452)
    #dbg_value(i64 1229782938247303441, !458, !DIExpression(), !452)
    #dbg_value(i32 0, !459, !DIExpression(), !461)
    #dbg_value(i32 0, !459, !DIExpression(), !461)
  %0 = load i64, ptr %in, align 8, !dbg !462
  %and = and i64 %0, 1229782938247303441, !dbg !465
  %and1 = and i32 %call, 255, !dbg !466
  %conv = zext nneg i32 %and1 to i64, !dbg !467
  %mul = mul i64 %and, %conv, !dbg !468
  %shr = lshr i64 %0, 1, !dbg !469
  %and3 = and i64 %shr, 1229782938247303441, !dbg !470
  %shr4 = lshr i32 %call, 8, !dbg !471
  %and5 = and i32 %shr4, 15, !dbg !472
  %conv6 = zext nneg i32 %and5 to i64, !dbg !473
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !474
  %xor = xor i64 %mul, %mul7, !dbg !475
  %1 = load i64, ptr %in, align 8, !dbg !476
  %shr9 = lshr i64 %1, 2, !dbg !477
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !478
  %shr11 = lshr i32 %call, 16, !dbg !479
  %and12 = and i32 %shr11, 15, !dbg !480
  %conv13 = zext nneg i32 %and12 to i64, !dbg !481
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !482
  %xor15 = xor i64 %xor, %mul14, !dbg !483
  %2 = load i64, ptr %in, align 8, !dbg !484
  %shr17 = lshr i64 %2, 3, !dbg !485
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !486
  %shr19 = lshr i32 %call, 24, !dbg !487
  %and20 = and i32 %shr19, 15, !dbg !488
  %conv21 = zext nneg i32 %and20 to i64, !dbg !489
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !490
  %xor23 = xor i64 %xor15, %mul22, !dbg !491
  %3 = load i64, ptr %acc, align 8, !dbg !492
  %xor25 = xor i64 %3, %xor23, !dbg !492
  store i64 %xor25, ptr %acc, align 8, !dbg !492
    #dbg_value(i32 1, !459, !DIExpression(), !461)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !462
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !462
  %and.1 = and i64 %4, 1229782938247303441, !dbg !465
  %and1.1 = and i32 %call, 255, !dbg !466
  %conv.1 = zext nneg i32 %and1.1 to i64, !dbg !467
  %mul.1 = mul i64 %and.1, %conv.1, !dbg !468
  %shr.1 = lshr i64 %4, 1, !dbg !469
  %and3.1 = and i64 %shr.1, 1229782938247303441, !dbg !470
  %shr4.1 = lshr i32 %call, 8, !dbg !471
  %and5.1 = and i32 %shr4.1, 15, !dbg !472
  %conv6.1 = zext nneg i32 %and5.1 to i64, !dbg !473
  %mul7.1 = mul nuw i64 %and3.1, %conv6.1, !dbg !474
  %xor.1 = xor i64 %mul.1, %mul7.1, !dbg !475
  %arrayidx8.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !476
  %5 = load i64, ptr %arrayidx8.1, align 8, !dbg !476
  %shr9.1 = lshr i64 %5, 2, !dbg !477
  %and10.1 = and i64 %shr9.1, 1229782938247303441, !dbg !478
  %shr11.1 = lshr i32 %call, 16, !dbg !479
  %and12.1 = and i32 %shr11.1, 15, !dbg !480
  %conv13.1 = zext nneg i32 %and12.1 to i64, !dbg !481
  %mul14.1 = mul nuw i64 %and10.1, %conv13.1, !dbg !482
  %xor15.1 = xor i64 %xor.1, %mul14.1, !dbg !483
  %arrayidx16.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !484
  %6 = load i64, ptr %arrayidx16.1, align 8, !dbg !484
  %shr17.1 = lshr i64 %6, 3, !dbg !485
  %and18.1 = and i64 %shr17.1, 1229782938247303441, !dbg !486
  %shr19.1 = lshr i32 %call, 24, !dbg !487
  %and20.1 = and i32 %shr19.1, 15, !dbg !488
  %conv21.1 = zext nneg i32 %and20.1 to i64, !dbg !489
  %mul22.1 = mul nuw i64 %and18.1, %conv21.1, !dbg !490
  %xor23.1 = xor i64 %xor15.1, %mul22.1, !dbg !491
  %arrayidx24.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !493
  %7 = load i64, ptr %arrayidx24.1, align 8, !dbg !492
  %xor25.1 = xor i64 %7, %xor23.1, !dbg !492
  store i64 %xor25.1, ptr %arrayidx24.1, align 8, !dbg !492
    #dbg_value(i32 2, !459, !DIExpression(), !461)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !462
  %8 = load i64, ptr %arrayidx.2, align 8, !dbg !462
  %and.2 = and i64 %8, 1229782938247303441, !dbg !465
  %and1.2 = and i32 %call, 255, !dbg !466
  %conv.2 = zext nneg i32 %and1.2 to i64, !dbg !467
  %mul.2 = mul i64 %and.2, %conv.2, !dbg !468
  %shr.2 = lshr i64 %8, 1, !dbg !469
  %and3.2 = and i64 %shr.2, 1229782938247303441, !dbg !470
  %shr4.2 = lshr i32 %call, 8, !dbg !471
  %and5.2 = and i32 %shr4.2, 15, !dbg !472
  %conv6.2 = zext nneg i32 %and5.2 to i64, !dbg !473
  %mul7.2 = mul nuw i64 %and3.2, %conv6.2, !dbg !474
  %xor.2 = xor i64 %mul.2, %mul7.2, !dbg !475
  %arrayidx8.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !476
  %9 = load i64, ptr %arrayidx8.2, align 8, !dbg !476
  %shr9.2 = lshr i64 %9, 2, !dbg !477
  %and10.2 = and i64 %shr9.2, 1229782938247303441, !dbg !478
  %shr11.2 = lshr i32 %call, 16, !dbg !479
  %and12.2 = and i32 %shr11.2, 15, !dbg !480
  %conv13.2 = zext nneg i32 %and12.2 to i64, !dbg !481
  %mul14.2 = mul nuw i64 %and10.2, %conv13.2, !dbg !482
  %xor15.2 = xor i64 %xor.2, %mul14.2, !dbg !483
  %arrayidx16.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !484
  %10 = load i64, ptr %arrayidx16.2, align 8, !dbg !484
  %shr17.2 = lshr i64 %10, 3, !dbg !485
  %and18.2 = and i64 %shr17.2, 1229782938247303441, !dbg !486
  %shr19.2 = lshr i32 %call, 24, !dbg !487
  %and20.2 = and i32 %shr19.2, 15, !dbg !488
  %conv21.2 = zext nneg i32 %and20.2 to i64, !dbg !489
  %mul22.2 = mul nuw i64 %and18.2, %conv21.2, !dbg !490
  %xor23.2 = xor i64 %xor15.2, %mul22.2, !dbg !491
  %arrayidx24.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !493
  %11 = load i64, ptr %arrayidx24.2, align 8, !dbg !492
  %xor25.2 = xor i64 %11, %xor23.2, !dbg !492
  store i64 %xor25.2, ptr %arrayidx24.2, align 8, !dbg !492
    #dbg_value(i32 3, !459, !DIExpression(), !461)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !462
  %12 = load i64, ptr %arrayidx.3, align 8, !dbg !462
  %and.3 = and i64 %12, 1229782938247303441, !dbg !465
  %and1.3 = and i32 %call, 255, !dbg !466
  %conv.3 = zext nneg i32 %and1.3 to i64, !dbg !467
  %mul.3 = mul i64 %and.3, %conv.3, !dbg !468
  %shr.3 = lshr i64 %12, 1, !dbg !469
  %and3.3 = and i64 %shr.3, 1229782938247303441, !dbg !470
  %shr4.3 = lshr i32 %call, 8, !dbg !471
  %and5.3 = and i32 %shr4.3, 15, !dbg !472
  %conv6.3 = zext nneg i32 %and5.3 to i64, !dbg !473
  %mul7.3 = mul nuw i64 %and3.3, %conv6.3, !dbg !474
  %xor.3 = xor i64 %mul.3, %mul7.3, !dbg !475
  %arrayidx8.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !476
  %13 = load i64, ptr %arrayidx8.3, align 8, !dbg !476
  %shr9.3 = lshr i64 %13, 2, !dbg !477
  %and10.3 = and i64 %shr9.3, 1229782938247303441, !dbg !478
  %shr11.3 = lshr i32 %call, 16, !dbg !479
  %and12.3 = and i32 %shr11.3, 15, !dbg !480
  %conv13.3 = zext nneg i32 %and12.3 to i64, !dbg !481
  %mul14.3 = mul nuw i64 %and10.3, %conv13.3, !dbg !482
  %xor15.3 = xor i64 %xor.3, %mul14.3, !dbg !483
  %arrayidx16.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !484
  %14 = load i64, ptr %arrayidx16.3, align 8, !dbg !484
  %shr17.3 = lshr i64 %14, 3, !dbg !485
  %and18.3 = and i64 %shr17.3, 1229782938247303441, !dbg !486
  %shr19.3 = lshr i32 %call, 24, !dbg !487
  %and20.3 = and i32 %shr19.3, 15, !dbg !488
  %conv21.3 = zext nneg i32 %and20.3 to i64, !dbg !489
  %mul22.3 = mul nuw i64 %and18.3, %conv21.3, !dbg !490
  %xor23.3 = xor i64 %xor15.3, %mul22.3, !dbg !491
  %arrayidx24.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !493
  %15 = load i64, ptr %arrayidx24.3, align 8, !dbg !492
  %xor25.3 = xor i64 %15, %xor23.3, !dbg !492
  store i64 %xor25.3, ptr %arrayidx24.3, align 8, !dbg !492
    #dbg_value(i32 4, !459, !DIExpression(), !461)
  ret void, !dbg !494
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table(i8 noundef zeroext %b) unnamed_addr #0 !dbg !495 {
entry:
    #dbg_value(i8 %b, !499, !DIExpression(), !500)
  %conv = zext i8 %b to i32, !dbg !501
  %mul = mul i32 %conv, 134480385, !dbg !502
    #dbg_value(i32 %mul, !503, !DIExpression(), !500)
    #dbg_value(i32 -252645136, !504, !DIExpression(), !500)
  %and = and i32 %mul, -252645136, !dbg !505
    #dbg_value(i32 %and, !506, !DIExpression(), !500)
  %shr = lshr exact i32 %and, 4, !dbg !507
  %shr1 = lshr exact i32 %and, 3, !dbg !508
  %0 = xor i32 %shr, %shr1, !dbg !509
  %xor2 = xor i32 %0, %mul, !dbg !509
  ret i32 %xor2, !dbg !510
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) unnamed_addr #0 !dbg !511 {
entry:
    #dbg_value(i32 %m_vec_limbs, !514, !DIExpression(), !515)
    #dbg_value(ptr %bs_mat, !516, !DIExpression(), !515)
    #dbg_value(ptr %mat, !517, !DIExpression(), !515)
    #dbg_value(ptr %acc, !518, !DIExpression(), !515)
    #dbg_value(i32 %bs_mat_rows, !519, !DIExpression(), !515)
    #dbg_value(i32 %bs_mat_cols, !520, !DIExpression(), !515)
    #dbg_value(i32 %mat_cols, !521, !DIExpression(), !515)
    #dbg_value(i32 %triangular, !522, !DIExpression(), !515)
    #dbg_value(i32 0, !523, !DIExpression(), !515)
    #dbg_value(i32 0, !524, !DIExpression(), !526)
  %smax = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !527
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !527
  br label %for.cond, !dbg !527

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1, %for.inc17 ], !dbg !528
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !529
    #dbg_value(i32 %r.0, !524, !DIExpression(), !526)
    #dbg_value(i32 %bs_mat_entries_used.0, !523, !DIExpression(), !515)
  %exitcond2.not = icmp eq i32 %r.0, %smax1, !dbg !530
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !532

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !533
    #dbg_value(i32 %mul, !536, !DIExpression(), !537)
  br label %for.cond1, !dbg !538

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !515
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !539
    #dbg_value(i32 %c.0, !536, !DIExpression(), !537)
    #dbg_value(i32 %bs_mat_entries_used.1, !523, !DIExpression(), !515)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !540
  br i1 %cmp2, label %for.cond4, label %for.inc17, !dbg !542

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond1 ], !dbg !543
    #dbg_value(i32 %k.0, !546, !DIExpression(), !547)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !548
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !550

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !551
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !553
  %mul8 = mul nsw i32 %c.0, %mat_cols, !dbg !554
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !555
  %arrayidx = getelementptr i8, ptr %0, i32 %k.0, !dbg !555
  %1 = load i8, ptr %arrayidx, align 1, !dbg !555
  %mul9 = mul nsw i32 %r.0, %mat_cols, !dbg !556
  %add10 = add nsw i32 %mul9, %k.0, !dbg !557
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !558
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !559
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !560
  %add13 = add nuw i32 %k.0, 1, !dbg !561
    #dbg_value(i32 %add13, !546, !DIExpression(), !547)
  br label %for.cond4, !dbg !562, !llvm.loop !563

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !523, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !515)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !565
    #dbg_value(i32 %add14, !523, !DIExpression(), !515)
  %inc = add nsw i32 %c.0, 1, !dbg !566
    #dbg_value(i32 %inc, !536, !DIExpression(), !537)
  br label %for.cond1, !dbg !567, !llvm.loop !568

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !570
    #dbg_value(i32 %inc18, !524, !DIExpression(), !526)
  br label %for.cond, !dbg !571, !llvm.loop !572

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !574
}

declare dso_local i32 @AES_128_CTR(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !575 {
entry:
  %tmp = alloca [4 x i64], align 8
    #dbg_value(ptr %in, !578, !DIExpression(), !579)
    #dbg_value(ptr %out, !580, !DIExpression(), !579)
    #dbg_value(i32 %vecs, !581, !DIExpression(), !579)
    #dbg_value(i32 %m, !582, !DIExpression(), !579)
  %add = add nsw i32 %m, 15, !dbg !583
  %div = sdiv i32 %add, 16, !dbg !584
    #dbg_value(i32 %div, !585, !DIExpression(), !579)
    #dbg_value(ptr %out, !586, !DIExpression(), !579)
    #dbg_declare(ptr %tmp, !587, !DIExpression(), !589)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %tmp, i8 0, i32 32, i1 false), !dbg !589
    #dbg_value(i32 %vecs, !590, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !592)
  br label %for.cond, !dbg !593

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !590, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !592)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !594
  br i1 %cmp, label %for.body, label %for.end, !dbg !596

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !597
    #dbg_value(i32 %i.0, !590, !DIExpression(), !592)
  %mul = mul nsw i32 %i.0, %m, !dbg !598
  %div1 = sdiv i32 %mul, 2, !dbg !600
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !601
  %div2 = sdiv i32 %m, 2, !dbg !602
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef %div2) #8, !dbg !603
  %mul3 = mul nsw i32 %i.0, %div, !dbg !604
  %mul4 = shl i32 %mul3, 3, !dbg !605
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !606
  %mul7 = shl nsw i32 %div, 3, !dbg !607
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef %mul7) #8, !dbg !608
    #dbg_value(i32 %i.0, !590, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !592)
  br label %for.cond, !dbg !609, !llvm.loop !610

for.end:                                          ; preds = %for.cond
  ret void, !dbg !612
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !613 {
entry:
  %S = alloca [560 x i8], align 1
    #dbg_value(ptr %p, !616, !DIExpression(), !617)
    #dbg_value(ptr %csk, !618, !DIExpression(), !617)
    #dbg_value(ptr %sk, !619, !DIExpression(), !617)
    #dbg_value(i32 0, !620, !DIExpression(), !617)
    #dbg_declare(ptr %S, !621, !DIExpression(), !622)
    #dbg_value(ptr %sk, !623, !DIExpression(), !617)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !624
    #dbg_value(ptr %add.ptr1, !625, !DIExpression(), !617)
    #dbg_value(i32 17, !626, !DIExpression(), !617)
    #dbg_value(i32 64, !627, !DIExpression(), !617)
    #dbg_value(i32 544, !628, !DIExpression(), !617)
    #dbg_value(i32 16, !629, !DIExpression(), !617)
    #dbg_value(i32 24, !630, !DIExpression(), !617)
    #dbg_value(ptr %csk, !631, !DIExpression(), !617)
    #dbg_value(ptr %S, !632, !DIExpression(), !617)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #8, !dbg !633
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !634
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1088) #6, !dbg !635
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !636
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !637
    #dbg_value(ptr %add.ptr5, !638, !DIExpression(), !617)
    #dbg_value(ptr %sk, !639, !DIExpression(), !617)
    #dbg_value(ptr %add.ptr5, !640, !DIExpression(), !617)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !641
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 560) #8, !dbg !642
  ret i32 0, !dbg !643
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !644 {
entry:
    #dbg_value(ptr %p, !645, !DIExpression(), !646)
    #dbg_value(ptr %P1, !647, !DIExpression(), !646)
    #dbg_value(ptr %O, !648, !DIExpression(), !646)
    #dbg_value(ptr %acc, !649, !DIExpression(), !646)
    #dbg_value(i32 17, !650, !DIExpression(), !646)
    #dbg_value(i32 64, !651, !DIExpression(), !646)
    #dbg_value(i32 4, !652, !DIExpression(), !646)
    #dbg_value(i32 0, !653, !DIExpression(), !646)
    #dbg_value(i32 0, !654, !DIExpression(), !656)
  br label %for.cond, !dbg !657

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 64, %entry ], !dbg !658
  %bs_mat_entries_used.0 = phi i32 [ %bs_mat_entries_used.1, %for.inc27 ], [ 0, %entry ], !dbg !658
  %r.0 = phi i32 [ %inc28, %for.inc27 ], [ 0, %entry ], !dbg !659
    #dbg_value(i32 %r.0, !654, !DIExpression(), !656)
    #dbg_value(i32 %bs_mat_entries_used.0, !653, !DIExpression(), !646)
  %exitcond2.not = icmp eq i32 %r.0, 64, !dbg !660
  br i1 %exitcond2.not, label %for.end29, label %for.cond1.preheader, !dbg !662

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !663
  br label %for.cond1, !dbg !663

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !646
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !666
    #dbg_value(i32 %c.0, !667, !DIExpression(), !668)
    #dbg_value(i32 %bs_mat_entries_used.1, !653, !DIExpression(), !646)
  %exitcond1.not = icmp eq i32 %bs_mat_entries_used.1, %0, !dbg !669
  br i1 %exitcond1.not, label %for.inc27, label %for.body3, !dbg !663

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !671
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !671

for.cond5.preheader:                              ; preds = %for.body3
  %add.ptr.idx.4 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !674
  %add.ptr.4 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.4, !dbg !674
  %mul8.4 = mul nuw nsw i32 %c.0, 17, !dbg !678
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.4, !dbg !679
  br label %for.cond5, !dbg !680

for.cond5:                                        ; preds = %for.body7.5, %for.cond5.preheader
  %k.0 = phi i32 [ 0, %for.cond5.preheader ], [ %add23.5, %for.body7.5 ], !dbg !681
    #dbg_value(i32 %k.0, !682, !DIExpression(), !683)
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !674
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !674
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !678
  %2 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !679
  %arrayidx = getelementptr inbounds nuw i8, ptr %2, i32 %k.0, !dbg !679
  %3 = load i8, ptr %arrayidx, align 1, !dbg !679
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !684
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !685
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !686
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !686
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext %3, ptr noundef %add.ptr13) #6, !dbg !687
  %add.ptr15.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !688
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !688
  %mul16 = mul nuw nsw i32 %r.0, 17, !dbg !689
  %4 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !690
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %4, i32 %k.0, !dbg !690
  %5 = load i8, ptr %arrayidx18, align 1, !dbg !690
  %mul19 = mul nuw nsw i32 %c.0, 17, !dbg !691
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !692
  %add.ptr22.idx = shl nuw nsw i32 %add20, 5, !dbg !693
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !693
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15, i8 noundef zeroext %5, ptr noundef %add.ptr22) #6, !dbg !694
    #dbg_value(i32 %k.0, !682, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !683)
  %add23 = or disjoint i32 %k.0, 1, !dbg !695
    #dbg_value(i32 %add23, !682, !DIExpression(), !683)
  %add.ptr.idx.1 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !674
  %add.ptr.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.1, !dbg !674
  %mul8.1 = mul nuw nsw i32 %c.0, 17, !dbg !678
  %6 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.1, !dbg !679
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %6, i32 %add23, !dbg !679
  %7 = load i8, ptr %arrayidx.1, align 1, !dbg !679
  %mul10.1 = mul nuw nsw i32 %r.0, 17, !dbg !684
  %add11.1 = add nuw nsw i32 %mul10.1, %add23, !dbg !685
  %add.ptr13.idx.1 = shl nuw nsw i32 %add11.1, 5, !dbg !686
  %add.ptr13.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.1, !dbg !686
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr.1, i8 noundef zeroext %7, ptr noundef nonnull %add.ptr13.1) #6, !dbg !687
  %add.ptr15.idx.1 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !688
  %add.ptr15.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.1, !dbg !688
  %mul16.1 = mul nuw nsw i32 %r.0, 17, !dbg !689
  %8 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.1, !dbg !690
  %arrayidx18.1 = getelementptr inbounds nuw i8, ptr %8, i32 %add23, !dbg !690
  %9 = load i8, ptr %arrayidx18.1, align 1, !dbg !690
  %mul19.1 = mul nuw nsw i32 %c.0, 17, !dbg !691
  %add20.1 = add nuw nsw i32 %mul19.1, %add23, !dbg !692
  %add.ptr22.idx.1 = shl nuw nsw i32 %add20.1, 5, !dbg !693
  %add.ptr22.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.1, !dbg !693
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15.1, i8 noundef zeroext %9, ptr noundef nonnull %add.ptr22.1) #6, !dbg !694
    #dbg_value(i32 %k.0, !682, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !683)
  %add23.1 = add nuw nsw i32 %k.0, 2, !dbg !695
    #dbg_value(i32 %add23.1, !682, !DIExpression(), !683)
  %add.ptr.idx.2 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !674
  %add.ptr.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.2, !dbg !674
  %mul8.2 = mul nuw nsw i32 %c.0, 17, !dbg !678
  %10 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.2, !dbg !679
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %10, i32 %add23.1, !dbg !679
  %11 = load i8, ptr %arrayidx.2, align 1, !dbg !679
  %mul10.2 = mul nuw nsw i32 %r.0, 17, !dbg !684
  %add11.2 = add nuw nsw i32 %mul10.2, %add23.1, !dbg !685
  %add.ptr13.idx.2 = shl nuw nsw i32 %add11.2, 5, !dbg !686
  %add.ptr13.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.2, !dbg !686
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr.2, i8 noundef zeroext %11, ptr noundef nonnull %add.ptr13.2) #6, !dbg !687
  %add.ptr15.idx.2 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !688
  %add.ptr15.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.2, !dbg !688
  %mul16.2 = mul nuw nsw i32 %r.0, 17, !dbg !689
  %12 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.2, !dbg !690
  %arrayidx18.2 = getelementptr inbounds nuw i8, ptr %12, i32 %add23.1, !dbg !690
  %13 = load i8, ptr %arrayidx18.2, align 1, !dbg !690
  %mul19.2 = mul nuw nsw i32 %c.0, 17, !dbg !691
  %add20.2 = add nuw nsw i32 %mul19.2, %add23.1, !dbg !692
  %add.ptr22.idx.2 = shl nuw nsw i32 %add20.2, 5, !dbg !693
  %add.ptr22.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.2, !dbg !693
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15.2, i8 noundef zeroext %13, ptr noundef nonnull %add.ptr22.2) #6, !dbg !694
    #dbg_value(i32 %k.0, !682, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !683)
  %add23.2 = add nuw nsw i32 %k.0, 3, !dbg !695
    #dbg_value(i32 %add23.2, !682, !DIExpression(), !683)
  %add.ptr.idx.3 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !674
  %add.ptr.3 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.3, !dbg !674
  %mul8.3 = mul nuw nsw i32 %c.0, 17, !dbg !678
  %14 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.3, !dbg !679
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %14, i32 %add23.2, !dbg !679
  %15 = load i8, ptr %arrayidx.3, align 1, !dbg !679
  %mul10.3 = mul nuw nsw i32 %r.0, 17, !dbg !684
  %add11.3 = add nuw nsw i32 %mul10.3, %add23.2, !dbg !685
  %add.ptr13.idx.3 = shl nuw nsw i32 %add11.3, 5, !dbg !686
  %add.ptr13.3 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.3, !dbg !686
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr.3, i8 noundef zeroext %15, ptr noundef nonnull %add.ptr13.3) #6, !dbg !687
  %add.ptr15.idx.3 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !688
  %add.ptr15.3 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.3, !dbg !688
  %mul16.3 = mul nuw nsw i32 %r.0, 17, !dbg !689
  %16 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.3, !dbg !690
  %arrayidx18.3 = getelementptr inbounds nuw i8, ptr %16, i32 %add23.2, !dbg !690
  %17 = load i8, ptr %arrayidx18.3, align 1, !dbg !690
  %mul19.3 = mul nuw nsw i32 %c.0, 17, !dbg !691
  %add20.3 = add nuw nsw i32 %mul19.3, %add23.2, !dbg !692
  %add.ptr22.idx.3 = shl nuw nsw i32 %add20.3, 5, !dbg !693
  %add.ptr22.3 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.3, !dbg !693
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15.3, i8 noundef zeroext %17, ptr noundef nonnull %add.ptr22.3) #6, !dbg !694
    #dbg_value(i32 %k.0, !682, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !683)
  %add23.3 = add nuw nsw i32 %k.0, 4, !dbg !695
    #dbg_value(i32 %add23.3, !682, !DIExpression(), !683)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %1, i32 %add23.3, !dbg !679
  %18 = load i8, ptr %arrayidx.4, align 1, !dbg !679
  %mul10.4 = mul nuw nsw i32 %r.0, 17, !dbg !684
  %add11.4 = add nuw nsw i32 %mul10.4, %add23.3, !dbg !685
  %add.ptr13.idx.4 = shl nuw nsw i32 %add11.4, 5, !dbg !686
  %add.ptr13.4 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.4, !dbg !686
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr.4, i8 noundef zeroext %18, ptr noundef nonnull %add.ptr13.4) #6, !dbg !687
  %add.ptr15.idx.4 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !688
  %add.ptr15.4 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.4, !dbg !688
  %mul16.4 = mul nuw nsw i32 %r.0, 17, !dbg !689
  %19 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.4, !dbg !690
  %arrayidx18.4 = getelementptr inbounds nuw i8, ptr %19, i32 %add23.3, !dbg !690
  %20 = load i8, ptr %arrayidx18.4, align 1, !dbg !690
  %mul19.4 = mul nuw nsw i32 %c.0, 17, !dbg !691
  %add20.4 = add nuw nsw i32 %mul19.4, %add23.3, !dbg !692
  %add.ptr22.idx.4 = shl nuw nsw i32 %add20.4, 5, !dbg !693
  %add.ptr22.4 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.4, !dbg !693
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15.4, i8 noundef zeroext %20, ptr noundef nonnull %add.ptr22.4) #6, !dbg !694
  %add23.4 = add nuw nsw i32 %k.0, 5, !dbg !695
    #dbg_value(i32 %add23.4, !682, !DIExpression(), !683)
  %exitcond.5.not = icmp eq i32 %add23.4, 17, !dbg !696
  br i1 %exitcond.5.not, label %for.inc25, label %for.body7.5, !dbg !680

for.body7.5:                                      ; preds = %for.cond5
  %add.ptr.idx.5 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !674
  %add.ptr.5 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.5, !dbg !674
  %mul8.5 = mul nuw nsw i32 %c.0, 17, !dbg !678
  %21 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.5, !dbg !679
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %21, i32 %add23.4, !dbg !679
  %22 = load i8, ptr %arrayidx.5, align 1, !dbg !679
  %mul10.5 = mul nuw nsw i32 %r.0, 17, !dbg !684
  %add11.5 = add nuw nsw i32 %mul10.5, %add23.4, !dbg !685
  %add.ptr13.idx.5 = shl nuw nsw i32 %add11.5, 5, !dbg !686
  %add.ptr13.5 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.5, !dbg !686
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr.5, i8 noundef zeroext %22, ptr noundef nonnull %add.ptr13.5) #6, !dbg !687
  %add.ptr15.idx.5 = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !688
  %add.ptr15.5 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.5, !dbg !688
  %mul16.5 = mul nuw nsw i32 %r.0, 17, !dbg !689
  %23 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.5, !dbg !690
  %arrayidx18.5 = getelementptr inbounds nuw i8, ptr %23, i32 %add23.4, !dbg !690
  %24 = load i8, ptr %arrayidx18.5, align 1, !dbg !690
  %mul19.5 = mul nuw nsw i32 %c.0, 17, !dbg !691
  %add20.5 = add nuw nsw i32 %mul19.5, %add23.4, !dbg !692
  %add.ptr22.idx.5 = shl nuw nsw i32 %add20.5, 5, !dbg !693
  %add.ptr22.5 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.5, !dbg !693
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15.5, i8 noundef zeroext %24, ptr noundef nonnull %add.ptr22.5) #6, !dbg !694
  %add23.5 = add nuw nsw i32 %k.0, 6, !dbg !695
    #dbg_value(i32 %add23.5, !682, !DIExpression(), !683)
  br label %for.cond5, !dbg !697, !llvm.loop !698

for.inc25:                                        ; preds = %for.cond5, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !700
    #dbg_value(i32 %bs_mat_entries_used.2, !653, !DIExpression(), !646)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !701
    #dbg_value(i32 %inc, !667, !DIExpression(), !668)
  br label %for.cond1, !dbg !702, !llvm.loop !703

for.inc27:                                        ; preds = %for.cond1
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !705
    #dbg_value(i32 %inc28, !654, !DIExpression(), !656)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !706
  br label %for.cond, !dbg !706, !llvm.loop !707

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !709
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !710 {
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
    #dbg_value(ptr %p, !714, !DIExpression(), !715)
    #dbg_value(ptr %sig, !716, !DIExpression(), !715)
    #dbg_value(ptr %siglen, !717, !DIExpression(), !715)
    #dbg_value(ptr %m, !718, !DIExpression(), !715)
    #dbg_value(i32 %mlen, !719, !DIExpression(), !715)
    #dbg_value(ptr %csk, !720, !DIExpression(), !715)
    #dbg_value(i32 0, !721, !DIExpression(), !715)
    #dbg_declare(ptr %tenc, !722, !DIExpression(), !723)
    #dbg_declare(ptr %t, !724, !DIExpression(), !728)
    #dbg_declare(ptr %y, !729, !DIExpression(), !730)
    #dbg_declare(ptr %salt, !731, !DIExpression(), !735)
    #dbg_declare(ptr %V, !736, !DIExpression(), !740)
    #dbg_declare(ptr %Vdec, !741, !DIExpression(), !745)
    #dbg_declare(ptr %A, !746, !DIExpression(), !750)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(4416) %A, i8 0, i32 4416, i1 false), !dbg !750
    #dbg_declare(ptr %x, !751, !DIExpression(), !755)
    #dbg_declare(ptr %r, !756, !DIExpression(), !760)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(69) %r, i8 0, i32 69, i1 false), !dbg !760
    #dbg_declare(ptr %s, !761, !DIExpression(), !762)
    #dbg_declare(ptr %sk, !763, !DIExpression(), !764)
    #dbg_declare(ptr %Ox, !765, !DIExpression(), !766)
    #dbg_declare(ptr %tmp, !767, !DIExpression(), !771)
    #dbg_value(i32 64, !772, !DIExpression(), !715)
    #dbg_value(i32 81, !773, !DIExpression(), !715)
    #dbg_value(i32 17, !774, !DIExpression(), !715)
    #dbg_value(i32 4, !775, !DIExpression(), !715)
    #dbg_value(i32 64, !776, !DIExpression(), !715)
    #dbg_value(i32 32, !777, !DIExpression(), !715)
    #dbg_value(i32 32, !778, !DIExpression(), !715)
    #dbg_value(i32 34, !779, !DIExpression(), !715)
    #dbg_value(i32 186, !780, !DIExpression(), !715)
    #dbg_value(i32 69, !781, !DIExpression(), !715)
    #dbg_value(i32 32, !782, !DIExpression(), !715)
    #dbg_value(i32 24, !783, !DIExpression(), !715)
    #dbg_value(i32 24, !784, !DIExpression(), !715)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !785
    #dbg_value(i32 %call, !721, !DIExpression(), !715)
  %cmp.not = icmp eq i32 %call, 0, !dbg !786
  br i1 %cmp.not, label %if.end, label %err, !dbg !786

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !788, !DIExpression(), !715)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !789
    #dbg_value(ptr %sk, !790, !DIExpression(), !715)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !791
    #dbg_value(ptr %add.ptr, !792, !DIExpression(), !715)
    #dbg_declare(ptr %Mtmp, !793, !DIExpression(), !797)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2176) %Mtmp, i8 0, i32 2176, i1 false), !dbg !797
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !798
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #8, !dbg !800
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !801
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !801

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !802
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #8, !dbg !803
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !804
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !805
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !806
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !807
    #dbg_value(ptr %add.ptr24, !808, !DIExpression(), !715)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !809
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !810
    #dbg_value(i32 0, !811, !DIExpression(), !813)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 128, !dbg !814
  br label %for.cond, !dbg !817

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !818
    #dbg_value(i32 %ctr.0, !811, !DIExpression(), !813)
  %exitcond2.not = icmp eq i32 %ctr.0, 256, !dbg !819
  br i1 %exitcond2.not, label %for.end76, label %for.body, !dbg !820

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !821
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !822
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 162, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !823
    #dbg_value(i32 0, !824, !DIExpression(), !826)
    #dbg_value(i32 0, !824, !DIExpression(), !826)
  call fastcc void @decode(ptr noundef nonnull %V, ptr noundef nonnull %Vdec, i32 noundef 64) #6, !dbg !827
    #dbg_value(i32 1, !824, !DIExpression(), !826)
  %add.ptr39.1 = getelementptr inbounds nuw i8, ptr %V, i32 32, !dbg !830
  %add.ptr42.1 = getelementptr inbounds nuw i8, ptr %Vdec, i32 64, !dbg !831
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.1, ptr noundef nonnull %add.ptr42.1, i32 noundef 64) #6, !dbg !827
    #dbg_value(i32 2, !824, !DIExpression(), !826)
  %add.ptr39.2 = getelementptr inbounds nuw i8, ptr %V, i32 64, !dbg !830
  %add.ptr42.2 = getelementptr inbounds nuw i8, ptr %Vdec, i32 128, !dbg !831
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.2, ptr noundef nonnull %add.ptr42.2, i32 noundef 64) #6, !dbg !827
    #dbg_value(i32 3, !824, !DIExpression(), !826)
  %add.ptr39.3 = getelementptr inbounds nuw i8, ptr %V, i32 96, !dbg !830
  %add.ptr42.3 = getelementptr inbounds nuw i8, ptr %Vdec, i32 192, !dbg !831
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.3, ptr noundef nonnull %add.ptr42.3, i32 noundef 64) #6, !dbg !827
    #dbg_value(i32 4, !824, !DIExpression(), !826)
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !832
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !833
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !834
    #dbg_value(i32 0, !835, !DIExpression(), !837)
  br label %for.cond52, !dbg !838

for.cond52:                                       ; preds = %for.body55.12, %for.body
  %i51.0 = phi i32 [ 0, %for.body ], [ %inc58.12, %for.body55.12 ], !dbg !839
    #dbg_value(i32 %i51.0, !835, !DIExpression(), !837)
  %0 = mul nuw nsw i32 %i51.0, 69, !dbg !840
  %sub = add nuw nsw i32 %0, 68, !dbg !843
  %arrayidx = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub, !dbg !844
  store i8 0, ptr %arrayidx, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !837)
  %1 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.1 = add nuw i32 %1, 137, !dbg !843
  %arrayidx.1 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.1, !dbg !844
  store i8 0, ptr %arrayidx.1, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !837)
  %2 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.2 = add nuw i32 %2, 206, !dbg !843
  %arrayidx.2 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.2, !dbg !844
  store i8 0, ptr %arrayidx.2, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !837)
  %3 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.3 = add nuw i32 %3, 275, !dbg !843
  %arrayidx.3 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.3, !dbg !844
  store i8 0, ptr %arrayidx.3, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !837)
  %4 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.4 = add nuw i32 %4, 344, !dbg !843
  %arrayidx.4 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.4, !dbg !844
  store i8 0, ptr %arrayidx.4, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !837)
  %5 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.5 = add nuw i32 %5, 413, !dbg !843
  %arrayidx.5 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.5, !dbg !844
  store i8 0, ptr %arrayidx.5, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !837)
  %6 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.6 = add nuw i32 %6, 482, !dbg !843
  %arrayidx.6 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.6, !dbg !844
  store i8 0, ptr %arrayidx.6, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !837)
  %7 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.7 = add nuw i32 %7, 551, !dbg !843
  %arrayidx.7 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.7, !dbg !844
  store i8 0, ptr %arrayidx.7, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !837)
  %8 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.8 = add nuw i32 %8, 620, !dbg !843
  %arrayidx.8 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.8, !dbg !844
  store i8 0, ptr %arrayidx.8, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !837)
  %9 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.9 = add nuw i32 %9, 689, !dbg !843
  %arrayidx.9 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.9, !dbg !844
  store i8 0, ptr %arrayidx.9, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !837)
  %10 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.10 = add nuw i32 %10, 758, !dbg !843
  %arrayidx.10 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.10, !dbg !844
  store i8 0, ptr %arrayidx.10, align 1, !dbg !845
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !837)
    #dbg_value(i32 %i51.0, !835, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !837)
  %11 = mul nuw i32 %i51.0, 69, !dbg !840
  %sub.11 = add nuw i32 %11, 827, !dbg !843
  %arrayidx.11 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.11, !dbg !844
  store i8 0, ptr %arrayidx.11, align 1, !dbg !845
  %inc58.11 = add nuw nsw i32 %i51.0, 12, !dbg !846
    #dbg_value(i32 %inc58.11, !835, !DIExpression(), !837)
  %exitcond1.12.not = icmp eq i32 %inc58.11, 64, !dbg !847
  br i1 %exitcond1.12.not, label %for.end59, label %for.body55.12, !dbg !848

for.body55.12:                                    ; preds = %for.cond52
  %12 = mul nuw nsw i32 %inc58.11, 69, !dbg !840
  %sub.12 = add nuw nsw i32 %12, 68, !dbg !843
  %arrayidx.12 = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub.12, !dbg !844
  store i8 0, ptr %arrayidx.12, align 1, !dbg !845
  %inc58.12 = add nuw nsw i32 %i51.0, 13, !dbg !846
    #dbg_value(i32 %inc58.12, !835, !DIExpression(), !837)
  br label %for.cond52, !dbg !849, !llvm.loop !850

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 68) #6, !dbg !852
  %call67 = call i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 4, i32 noundef 17, i32 noundef 64, i32 noundef 69) #6, !dbg !853
  %tobool.not = icmp eq i32 %call67, 0, !dbg !853
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !853

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 2176) #8, !dbg !855
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 4416) #8, !dbg !857
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !858
    #dbg_value(i32 %inc75, !811, !DIExpression(), !813)
  br label %for.cond, !dbg !859, !llvm.loop !860

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !862, !DIExpression(), !864)
  br label %for.cond78, !dbg !865

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !866
    #dbg_value(i32 %i77.0, !862, !DIExpression(), !864)
  %exitcond3.not = icmp eq i32 %i77.0, 4, !dbg !867
  br i1 %exitcond3.not, label %for.end106, label %for.body81, !dbg !869

for.body81:                                       ; preds = %for.cond78
  %mul83 = shl nuw nsw i32 %i77.0, 6, !dbg !870
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !872
    #dbg_value(ptr %add.ptr84, !873, !DIExpression(), !715)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !874
  %mul89 = mul nuw nsw i32 %i77.0, 17, !dbg !875
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !876
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 17, i32 noundef 64, i32 noundef 1) #6, !dbg !877
  %mul94 = mul nuw nsw i32 %i77.0, 81, !dbg !878
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !879
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 64, i32 noundef 1) #6, !dbg !880
  %mul97 = mul nuw nsw i32 %i77.0, 81, !dbg !881
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !882
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 64, !dbg !883
  %mul101 = mul nuw nsw i32 %i77.0, 17, !dbg !884
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !885
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 17) #8, !dbg !886
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !887
    #dbg_value(i32 %inc105, !862, !DIExpression(), !864)
  br label %for.cond78, !dbg !888, !llvm.loop !889

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 324) #6, !dbg !891
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !892
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !893
  store i32 186, ptr %siglen, align 4, !dbg !894
  br label %err, !dbg !895

err:                                              ; preds = %if.end, %entry, %for.end106
  %ret.0 = phi i32 [ %call, %for.end106 ], [ %call, %entry ], [ 1, %if.end ], !dbg !715
    #dbg_value(i32 %ret.0, !721, !DIExpression(), !715)
    #dbg_label(!896, !897)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 162) #8, !dbg !898
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 256) #8, !dbg !899
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 4416) #8, !dbg !900
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 69) #8, !dbg !901
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 1088) #8, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 102464) #8, !dbg !904
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 64) #8, !dbg !905
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !906
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 2176) #8, !dbg !907
  ret i32 %ret.0, !dbg !908
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !909 {
entry:
  %Pv = alloca [1024 x i64], align 8
    #dbg_value(ptr %p, !912, !DIExpression(), !913)
    #dbg_value(ptr %Vdec, !914, !DIExpression(), !913)
    #dbg_value(ptr %L, !915, !DIExpression(), !913)
    #dbg_value(ptr %P1, !916, !DIExpression(), !913)
    #dbg_value(ptr %VL, !917, !DIExpression(), !913)
    #dbg_value(ptr %VP1V, !918, !DIExpression(), !913)
    #dbg_value(i32 4, !919, !DIExpression(), !913)
    #dbg_value(i32 64, !920, !DIExpression(), !913)
    #dbg_value(i32 17, !921, !DIExpression(), !913)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 4, i32 noundef 64, i32 noundef 17) #6, !dbg !922
    #dbg_declare(ptr %Pv, !923, !DIExpression(), !927)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %Pv, i8 0, i32 8192, i1 false), !dbg !927
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !928
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 4, i32 noundef 64, i32 noundef 4) #6, !dbg !929
  ret void, !dbg !930
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !931 {
entry:
  %temp = alloca [4 x i64], align 8
    #dbg_value(ptr %p, !934, !DIExpression(), !935)
    #dbg_value(ptr %vPv, !936, !DIExpression(), !935)
    #dbg_value(ptr %t, !937, !DIExpression(), !935)
    #dbg_value(ptr %y, !938, !DIExpression(), !935)
    #dbg_value(i32 60, !939, !DIExpression(), !935)
    #dbg_value(i32 4, !941, !DIExpression(), !935)
    #dbg_declare(ptr %temp, !942, !DIExpression(), !943)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %temp, i8 0, i32 32, i1 false), !dbg !943
    #dbg_value(ptr %temp, !944, !DIExpression(), !935)
    #dbg_value(i32 3, !945, !DIExpression(), !947)
  br label %for.cond, !dbg !948

for.cond:                                         ; preds = %for.inc65, %entry
  %i.0 = phi i32 [ 3, %entry ], [ %dec66, %for.inc65 ], !dbg !949
    #dbg_value(i32 %i.0, !945, !DIExpression(), !947)
  %cmp = icmp sgt i32 %i.0, -1, !dbg !950
  br i1 %cmp, label %for.cond1, label %for.cond69, !dbg !952

for.cond1:                                        ; preds = %for.cond, %for.body3
  %j.0 = phi i32 [ %inc63, %for.body3 ], [ %i.0, %for.cond ], !dbg !953
    #dbg_value(i32 %j.0, !956, !DIExpression(), !957)
  %exitcond6.not = icmp eq i32 %j.0, 4, !dbg !958
  br i1 %exitcond6.not, label %for.inc65, label %for.body3, !dbg !960

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !961
  %0 = load i64, ptr %arrayidx, align 8, !dbg !961
  %shr = lshr i64 %0, 60, !dbg !963
    #dbg_value(i8 %conv, !964, !DIExpression(), !965)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !966
  %shl = shl i64 %0, 4, !dbg !967
  store i64 %shl, ptr %arrayidx4, align 8, !dbg !967
    #dbg_value(i32 2, !968, !DIExpression(), !970)
    #dbg_value(i32 2, !968, !DIExpression(), !970)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !971
  %1 = load i64, ptr %arrayidx9, align 8, !dbg !971
  %shr10 = lshr i64 %1, 60, !dbg !974
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !975
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !976
  %xor = xor i64 %2, %shr10, !dbg !976
  store i64 %xor, ptr %arrayidx11, align 8, !dbg !976
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !977
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !978
  %shl13 = shl i64 %3, 4, !dbg !978
  store i64 %shl13, ptr %arrayidx12, align 8, !dbg !978
    #dbg_value(i32 1, !968, !DIExpression(), !970)
  %arrayidx9.1 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !971
  %4 = load i64, ptr %arrayidx9.1, align 8, !dbg !971
  %shr10.1 = lshr i64 %4, 60, !dbg !974
  %arrayidx11.1 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !975
  %5 = load i64, ptr %arrayidx11.1, align 8, !dbg !976
  %xor.1 = xor i64 %5, %shr10.1, !dbg !976
  store i64 %xor.1, ptr %arrayidx11.1, align 8, !dbg !976
  %arrayidx12.1 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !977
  %6 = load i64, ptr %arrayidx12.1, align 8, !dbg !978
  %shl13.1 = shl i64 %6, 4, !dbg !978
  store i64 %shl13.1, ptr %arrayidx12.1, align 8, !dbg !978
    #dbg_value(i32 0, !968, !DIExpression(), !970)
  %7 = load i64, ptr %temp, align 8, !dbg !971
  %shr10.2 = lshr i64 %7, 60, !dbg !974
  %arrayidx11.2 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !975
  %8 = load i64, ptr %arrayidx11.2, align 8, !dbg !976
  %xor.2 = xor i64 %8, %shr10.2, !dbg !976
  store i64 %xor.2, ptr %arrayidx11.2, align 8, !dbg !976
  %shl13.2 = shl i64 %7, 4, !dbg !978
  store i64 %shl13.2, ptr %temp, align 8, !dbg !978
    #dbg_value(i32 -1, !968, !DIExpression(), !970)
  %conv = trunc nuw nsw i64 %shr to i8, !dbg !979
    #dbg_value(i32 0, !980, !DIExpression(), !982)
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext 8) #6, !dbg !983
  %9 = load i8, ptr %temp, align 1, !dbg !988
  %xor254 = xor i8 %9, %call, !dbg !988
  store i8 %xor254, ptr %temp, align 1, !dbg !988
    #dbg_value(i32 1, !980, !DIExpression(), !982)
  %call28.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext 0) #6, !dbg !989
  %shl30.1 = shl nuw i8 %call28.1, 4, !dbg !991
  %10 = load i8, ptr %temp, align 1, !dbg !992
  %xor34.1 = xor i8 %shl30.1, %10, !dbg !992
  store i8 %xor34.1, ptr %temp, align 1, !dbg !992
    #dbg_value(i32 2, !980, !DIExpression(), !982)
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext 2) #6, !dbg !983
  %arrayidx23.2 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !993
  %11 = load i8, ptr %arrayidx23.2, align 1, !dbg !988
  %xor254.2 = xor i8 %11, %call.2, !dbg !988
  store i8 %xor254.2, ptr %arrayidx23.2, align 1, !dbg !988
    #dbg_value(i32 3, !980, !DIExpression(), !982)
  %call28.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext 8) #6, !dbg !989
  %shl30.3 = shl nuw i8 %call28.3, 4, !dbg !991
  %arrayidx32.3 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !994
  %12 = load i8, ptr %arrayidx32.3, align 1, !dbg !992
  %xor34.3 = xor i8 %shl30.3, %12, !dbg !992
  store i8 %xor34.3, ptr %arrayidx32.3, align 1, !dbg !992
    #dbg_value(i32 4, !980, !DIExpression(), !982)
    #dbg_value(i32 0, !995, !DIExpression(), !997)
  %.idx = shl i32 %i.0, 7, !dbg !998
  %13 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !998
  %arrayidx46.idx = shl i32 %j.0, 5, !dbg !998
  %arrayidx46 = getelementptr i8, ptr %13, i32 %arrayidx46.idx, !dbg !998
  %14 = load i64, ptr %arrayidx46, align 8, !dbg !998
  %cmp47.not = icmp eq i32 %i.0, %j.0, !dbg !1001
  %.idx13 = shl i32 %j.0, 7, !dbg !1002
  %15 = getelementptr i8, ptr %vPv, i32 %.idx13, !dbg !1002
  %arrayidx54.idx = shl i32 %i.0, 5, !dbg !1002
  %arrayidx54 = getelementptr i8, ptr %15, i32 %arrayidx54.idx, !dbg !1002
  %16 = load i64, ptr %arrayidx54, align 8, !dbg !1002
  %mul55 = select i1 %cmp47.not, i64 0, i64 %16, !dbg !1003
  %xor56 = xor i64 %14, %mul55, !dbg !1004
  %17 = load i64, ptr %temp, align 8, !dbg !1005
  %xor58 = xor i64 %17, %xor56, !dbg !1005
  store i64 %xor58, ptr %temp, align 8, !dbg !1005
    #dbg_value(i32 1, !995, !DIExpression(), !997)
  %18 = shl i32 %i.0, 4, !dbg !1006
  %19 = shl i32 %j.0, 2, !dbg !1006
  %mul44.1 = add nsw i32 %18, %19, !dbg !1006
  %add45.1 = or disjoint i32 %mul44.1, 1, !dbg !1007
  %arrayidx46.1 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45.1, !dbg !998
  %20 = load i64, ptr %arrayidx46.1, align 8, !dbg !998
  %cmp47.not.1 = icmp eq i32 %i.0, %j.0, !dbg !1001
  %21 = shl i32 %j.0, 4, !dbg !1008
  %22 = shl i32 %i.0, 2, !dbg !1008
  %mul52.1 = add nsw i32 %21, %22, !dbg !1008
  %add53.1 = or disjoint i32 %mul52.1, 1, !dbg !1009
  %arrayidx54.1 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53.1, !dbg !1002
  %23 = load i64, ptr %arrayidx54.1, align 8, !dbg !1002
  %mul55.1 = select i1 %cmp47.not.1, i64 0, i64 %23, !dbg !1003
  %xor56.1 = xor i64 %20, %mul55.1, !dbg !1004
  %arrayidx57.1 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !1010
  %24 = load i64, ptr %arrayidx57.1, align 8, !dbg !1005
  %xor58.1 = xor i64 %24, %xor56.1, !dbg !1005
  store i64 %xor58.1, ptr %arrayidx57.1, align 8, !dbg !1005
    #dbg_value(i32 2, !995, !DIExpression(), !997)
  %25 = shl i32 %i.0, 4, !dbg !1006
  %26 = shl i32 %j.0, 2, !dbg !1006
  %mul44.2 = add nsw i32 %25, %26, !dbg !1006
  %add45.2 = or disjoint i32 %mul44.2, 2, !dbg !1007
  %arrayidx46.2 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45.2, !dbg !998
  %27 = load i64, ptr %arrayidx46.2, align 8, !dbg !998
  %cmp47.not.2 = icmp eq i32 %i.0, %j.0, !dbg !1001
  %28 = shl i32 %j.0, 4, !dbg !1008
  %29 = shl i32 %i.0, 2, !dbg !1008
  %mul52.2 = add nsw i32 %28, %29, !dbg !1008
  %add53.2 = or disjoint i32 %mul52.2, 2, !dbg !1009
  %arrayidx54.2 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53.2, !dbg !1002
  %30 = load i64, ptr %arrayidx54.2, align 8, !dbg !1002
  %mul55.2 = select i1 %cmp47.not.2, i64 0, i64 %30, !dbg !1003
  %xor56.2 = xor i64 %27, %mul55.2, !dbg !1004
  %arrayidx57.2 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !1010
  %31 = load i64, ptr %arrayidx57.2, align 8, !dbg !1005
  %xor58.2 = xor i64 %31, %xor56.2, !dbg !1005
  store i64 %xor58.2, ptr %arrayidx57.2, align 8, !dbg !1005
    #dbg_value(i32 3, !995, !DIExpression(), !997)
  %32 = shl i32 %i.0, 4, !dbg !1006
  %33 = shl i32 %j.0, 2, !dbg !1006
  %mul44.3 = add nsw i32 %32, %33, !dbg !1006
  %add45.3 = or disjoint i32 %mul44.3, 3, !dbg !1007
  %arrayidx46.3 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45.3, !dbg !998
  %34 = load i64, ptr %arrayidx46.3, align 8, !dbg !998
  %cmp47.not.3 = icmp eq i32 %i.0, %j.0, !dbg !1001
  %35 = shl i32 %j.0, 4, !dbg !1008
  %36 = shl i32 %i.0, 2, !dbg !1008
  %mul52.3 = add nsw i32 %35, %36, !dbg !1008
  %add53.3 = or disjoint i32 %mul52.3, 3, !dbg !1009
  %arrayidx54.3 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53.3, !dbg !1002
  %37 = load i64, ptr %arrayidx54.3, align 8, !dbg !1002
  %mul55.3 = select i1 %cmp47.not.3, i64 0, i64 %37, !dbg !1003
  %xor56.3 = xor i64 %34, %mul55.3, !dbg !1004
  %arrayidx57.3 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1010
  %38 = load i64, ptr %arrayidx57.3, align 8, !dbg !1005
  %xor58.3 = xor i64 %38, %xor56.3, !dbg !1005
  store i64 %xor58.3, ptr %arrayidx57.3, align 8, !dbg !1005
    #dbg_value(i32 4, !995, !DIExpression(), !997)
  %inc63 = add nuw nsw i32 %j.0, 1, !dbg !1011
    #dbg_value(i32 %inc63, !956, !DIExpression(), !957)
  br label %for.cond1, !dbg !1012, !llvm.loop !1013

for.inc65:                                        ; preds = %for.cond1
  %dec66 = add nsw i32 %i.0, -1, !dbg !1015
    #dbg_value(i32 %dec66, !945, !DIExpression(), !947)
  br label %for.cond, !dbg !1016, !llvm.loop !1017

for.cond69:                                       ; preds = %for.cond, %for.body72.2
  %i68.0 = phi i32 [ %add93.2, %for.body72.2 ], [ 0, %for.cond ], !dbg !1019
    #dbg_value(i32 %i68.0, !1021, !DIExpression(), !1022)
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %t, i32 %i68.0, !dbg !1023
  %39 = load i8, ptr %arrayidx73, align 1, !dbg !1023
  %div75 = lshr exact i32 %i68.0, 1, !dbg !1026
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75, !dbg !1027
  %40 = load i8, ptr %arrayidx76, align 1, !dbg !1027
  %41 = and i8 %40, 15, !dbg !1028
  %xor781 = xor i8 %39, %41, !dbg !1029
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %y, i32 %i68.0, !dbg !1030
  store i8 %xor781, ptr %arrayidx80, align 1, !dbg !1031
  %add81 = or disjoint i32 %i68.0, 1, !dbg !1032
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %t, i32 %add81, !dbg !1033
  %42 = load i8, ptr %arrayidx82, align 1, !dbg !1033
  %43 = lshr i8 %40, 4, !dbg !1034
  %xor882 = xor i8 %42, %43, !dbg !1035
  %add90 = or disjoint i32 %i68.0, 1, !dbg !1036
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %y, i32 %add90, !dbg !1037
  store i8 %xor882, ptr %arrayidx91, align 1, !dbg !1038
    #dbg_value(i32 %i68.0, !1021, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1022)
  %add93 = add nuw nsw i32 %i68.0, 2, !dbg !1039
    #dbg_value(i32 %add93, !1021, !DIExpression(), !1022)
  %arrayidx73.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add93, !dbg !1023
  %44 = load i8, ptr %arrayidx73.1, align 1, !dbg !1023
  %div75.1 = lshr exact i32 %add93, 1, !dbg !1026
  %arrayidx76.1 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75.1, !dbg !1027
  %45 = load i8, ptr %arrayidx76.1, align 1, !dbg !1027
  %46 = and i8 %45, 15, !dbg !1028
  %xor781.1 = xor i8 %44, %46, !dbg !1029
  %arrayidx80.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add93, !dbg !1030
  store i8 %xor781.1, ptr %arrayidx80.1, align 1, !dbg !1031
  %add81.1 = or disjoint i32 %add93, 1, !dbg !1032
  %arrayidx82.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add81.1, !dbg !1033
  %47 = load i8, ptr %arrayidx82.1, align 1, !dbg !1033
  %48 = lshr i8 %45, 4, !dbg !1034
  %xor882.1 = xor i8 %47, %48, !dbg !1035
  %add90.1 = or disjoint i32 %add93, 1, !dbg !1036
  %arrayidx91.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add90.1, !dbg !1037
  store i8 %xor882.1, ptr %arrayidx91.1, align 1, !dbg !1038
    #dbg_value(i32 %i68.0, !1021, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1022)
  %cmp70.2 = icmp samesign ult i32 %i68.0, 60, !dbg !1040
  br i1 %cmp70.2, label %for.body72.2, label %for.end94, !dbg !1041

for.body72.2:                                     ; preds = %for.cond69
  %add93.1 = add nuw nsw i32 %i68.0, 4, !dbg !1039
    #dbg_value(i32 %add93.1, !1021, !DIExpression(), !1022)
  %arrayidx73.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add93.1, !dbg !1023
  %49 = load i8, ptr %arrayidx73.2, align 1, !dbg !1023
  %div75.2 = lshr exact i32 %add93.1, 1, !dbg !1026
  %arrayidx76.2 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75.2, !dbg !1027
  %50 = load i8, ptr %arrayidx76.2, align 1, !dbg !1027
  %51 = and i8 %50, 15, !dbg !1028
  %xor781.2 = xor i8 %49, %51, !dbg !1029
  %arrayidx80.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add93.1, !dbg !1030
  store i8 %xor781.2, ptr %arrayidx80.2, align 1, !dbg !1031
  %add81.2 = or disjoint i32 %add93.1, 1, !dbg !1032
  %arrayidx82.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add81.2, !dbg !1033
  %52 = load i8, ptr %arrayidx82.2, align 1, !dbg !1033
  %53 = lshr i8 %50, 4, !dbg !1034
  %xor882.2 = xor i8 %52, %53, !dbg !1035
  %add90.2 = or disjoint i32 %add93.1, 1, !dbg !1036
  %arrayidx91.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add90.2, !dbg !1037
  store i8 %xor882.2, ptr %arrayidx91.2, align 1, !dbg !1038
  %add93.2 = add nuw nsw i32 %i68.0, 6, !dbg !1039
    #dbg_value(i32 %add93.2, !1021, !DIExpression(), !1022)
  br label %for.cond69, !dbg !1042, !llvm.loop !1043

for.end94:                                        ; preds = %for.cond69
  ret void, !dbg !1045
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1046 {
entry:
  %A = alloca [640 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1049, !DIExpression(), !1050)
    #dbg_value(ptr %VtL, !1051, !DIExpression(), !1050)
    #dbg_value(ptr %A_out, !1052, !DIExpression(), !1050)
    #dbg_value(i32 0, !1053, !DIExpression(), !1050)
    #dbg_value(i32 0, !1054, !DIExpression(), !1050)
    #dbg_value(i32 4, !1055, !DIExpression(), !1050)
    #dbg_declare(ptr %A, !1056, !DIExpression(), !1060)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5120) %A, i8 0, i32 5120, i1 false), !dbg !1060
    #dbg_value(i32 80, !1061, !DIExpression(), !1050)
    #dbg_value(i32 0, !1062, !DIExpression(), !1064)
  br label %for.cond, !dbg !1065

for.cond:                                         ; preds = %for.inc90, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc91, %for.inc90 ], !dbg !1066
  %words_to_shift.0 = phi i32 [ 0, %entry ], [ %words_to_shift.1, %for.inc90 ], !dbg !1067
  %bits_to_shift.0 = phi i32 [ 0, %entry ], [ %bits_to_shift.1, %for.inc90 ], !dbg !1068
    #dbg_value(i32 %bits_to_shift.0, !1053, !DIExpression(), !1050)
    #dbg_value(i32 %words_to_shift.0, !1054, !DIExpression(), !1050)
    #dbg_value(i32 %i.0, !1062, !DIExpression(), !1064)
  %exitcond7.not = icmp eq i32 %i.0, 4, !dbg !1069
  br i1 %exitcond7.not, label %for.cond94, label %for.cond1, !dbg !1071

for.cond1:                                        ; preds = %for.cond, %if.end82
  %j.0 = phi i32 [ %dec, %if.end82 ], [ 3, %for.cond ], !dbg !1072
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end82 ], [ %words_to_shift.0, %for.cond ], !dbg !1050
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end82 ], [ %bits_to_shift.0, %for.cond ], !dbg !1050
    #dbg_value(i32 %bits_to_shift.1, !1053, !DIExpression(), !1050)
    #dbg_value(i32 %words_to_shift.1, !1054, !DIExpression(), !1050)
    #dbg_value(i32 %j.0, !1075, !DIExpression(), !1076)
  %cmp2.not = icmp slt i32 %j.0, %i.0, !dbg !1077
  br i1 %cmp2.not, label %for.inc90, label %for.body3, !dbg !1079

for.body3:                                        ; preds = %for.cond1
  %add.ptr.idx = mul nsw i32 %j.0, 544, !dbg !1080
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1080
    #dbg_value(ptr %add.ptr, !1082, !DIExpression(), !1050)
    #dbg_value(i32 0, !1083, !DIExpression(), !1085)
  br label %for.cond5, !dbg !1086

for.cond5:                                        ; preds = %for.inc31, %for.body3
  %c.0 = phi i32 [ 0, %for.body3 ], [ %inc32, %for.inc31 ], !dbg !1087
    #dbg_value(i32 %c.0, !1083, !DIExpression(), !1085)
  %exitcond4.not = icmp eq i32 %c.0, 17, !dbg !1088
  br i1 %exitcond4.not, label %for.end33, label %for.body10, !dbg !1090

for.body10:                                       ; preds = %for.cond5
    #dbg_value(i32 0, !1091, !DIExpression(), !1094)
  %arrayidx.idx = shl nuw nsw i32 %c.0, 5, !dbg !1095
  %arrayidx = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %arrayidx.idx, !dbg !1095
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1095
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1098
  %shl = shl i64 %0, %sh_prom, !dbg !1098
  %mul12 = mul nuw nsw i32 %i.0, 17, !dbg !1099
  %add13 = add nuw nsw i32 %mul12, %c.0, !dbg !1100
  %mul15 = mul i32 %words_to_shift.1, 80, !dbg !1101
  %add16 = add i32 %add13, %mul15, !dbg !1102
  %arrayidx17 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16, !dbg !1103
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !1104
  %xor = xor i64 %1, %shl, !dbg !1104
  store i64 %xor, ptr %arrayidx17, align 8, !dbg !1104
  %cmp18 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1105
  br i1 %cmp18, label %if.then, label %for.body10.1, !dbg !1105

if.then:                                          ; preds = %for.body10
  %arrayidx21.idx = shl nuw nsw i32 %c.0, 5, !dbg !1107
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %arrayidx21.idx, !dbg !1107
  %2 = load i64, ptr %arrayidx21, align 8, !dbg !1107
  %sub = sub nsw i32 64, %bits_to_shift.1, !dbg !1109
  %sh_prom22 = zext nneg i32 %sub to i64, !dbg !1110
  %shr = lshr i64 %2, %sh_prom22, !dbg !1110
  %mul23 = mul nuw nsw i32 %i.0, 17, !dbg !1111
  %add24 = add nuw nsw i32 %mul23, %c.0, !dbg !1112
  %3 = mul i32 %words_to_shift.1, 80, !dbg !1113
  %mul27 = add i32 %3, 80, !dbg !1113
  %add28 = add i32 %add24, %mul27, !dbg !1114
  %arrayidx29 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28, !dbg !1115
  %4 = load i64, ptr %arrayidx29, align 8, !dbg !1116
  %xor30 = xor i64 %4, %shr, !dbg !1116
  store i64 %xor30, ptr %arrayidx29, align 8, !dbg !1116
  br label %for.body10.1, !dbg !1117

for.body10.1:                                     ; preds = %if.then, %for.body10
    #dbg_value(i32 1, !1091, !DIExpression(), !1094)
  %mul11.1 = shl nuw nsw i32 %c.0, 2, !dbg !1118
  %add.1 = or disjoint i32 %mul11.1, 1, !dbg !1119
  %arrayidx.1 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add.1, !dbg !1095
  %5 = load i64, ptr %arrayidx.1, align 8, !dbg !1095
  %sh_prom.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1098
  %shl.1 = shl i64 %5, %sh_prom.1, !dbg !1098
  %mul12.1 = mul nuw nsw i32 %i.0, 17, !dbg !1099
  %add13.1 = add nuw nsw i32 %mul12.1, %c.0, !dbg !1100
  %6 = mul i32 %words_to_shift.1, 80, !dbg !1101
  %mul15.1 = add i32 %6, 80, !dbg !1101
  %add16.1 = add i32 %add13.1, %mul15.1, !dbg !1102
  %arrayidx17.1 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16.1, !dbg !1103
  %7 = load i64, ptr %arrayidx17.1, align 8, !dbg !1104
  %xor.1 = xor i64 %7, %shl.1, !dbg !1104
  store i64 %xor.1, ptr %arrayidx17.1, align 8, !dbg !1104
  %cmp18.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1105
  br i1 %cmp18.1, label %if.then.1, label %for.body10.2, !dbg !1105

if.then.1:                                        ; preds = %for.body10.1
  %mul19.1 = shl nuw nsw i32 %c.0, 2, !dbg !1120
  %add20.1 = or disjoint i32 %mul19.1, 1, !dbg !1121
  %arrayidx21.1 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20.1, !dbg !1107
  %8 = load i64, ptr %arrayidx21.1, align 8, !dbg !1107
  %sub.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1109
  %sh_prom22.1 = zext nneg i32 %sub.1 to i64, !dbg !1110
  %shr.1 = lshr i64 %8, %sh_prom22.1, !dbg !1110
  %mul23.1 = mul nuw nsw i32 %i.0, 17, !dbg !1111
  %add24.1 = add nuw nsw i32 %mul23.1, %c.0, !dbg !1112
  %9 = mul i32 %words_to_shift.1, 80, !dbg !1113
  %mul27.1 = add i32 %9, 160, !dbg !1113
  %add28.1 = add i32 %add24.1, %mul27.1, !dbg !1114
  %arrayidx29.1 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28.1, !dbg !1115
  %10 = load i64, ptr %arrayidx29.1, align 8, !dbg !1116
  %xor30.1 = xor i64 %10, %shr.1, !dbg !1116
  store i64 %xor30.1, ptr %arrayidx29.1, align 8, !dbg !1116
  br label %for.body10.2, !dbg !1117

for.body10.2:                                     ; preds = %for.body10.1, %if.then.1
    #dbg_value(i32 2, !1091, !DIExpression(), !1094)
  %mul11.2 = shl nuw nsw i32 %c.0, 2, !dbg !1118
  %add.2 = or disjoint i32 %mul11.2, 2, !dbg !1119
  %arrayidx.2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add.2, !dbg !1095
  %11 = load i64, ptr %arrayidx.2, align 8, !dbg !1095
  %sh_prom.2 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1098
  %shl.2 = shl i64 %11, %sh_prom.2, !dbg !1098
  %mul12.2 = mul nuw nsw i32 %i.0, 17, !dbg !1099
  %add13.2 = add nuw nsw i32 %mul12.2, %c.0, !dbg !1100
  %12 = mul i32 %words_to_shift.1, 80, !dbg !1101
  %mul15.2 = add i32 %12, 160, !dbg !1101
  %add16.2 = add i32 %add13.2, %mul15.2, !dbg !1102
  %arrayidx17.2 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16.2, !dbg !1103
  %13 = load i64, ptr %arrayidx17.2, align 8, !dbg !1104
  %xor.2 = xor i64 %13, %shl.2, !dbg !1104
  store i64 %xor.2, ptr %arrayidx17.2, align 8, !dbg !1104
  %cmp18.2 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1105
  br i1 %cmp18.2, label %if.then.2, label %for.body10.3, !dbg !1105

if.then.2:                                        ; preds = %for.body10.2
  %mul19.2 = shl nuw nsw i32 %c.0, 2, !dbg !1120
  %add20.2 = or disjoint i32 %mul19.2, 2, !dbg !1121
  %arrayidx21.2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20.2, !dbg !1107
  %14 = load i64, ptr %arrayidx21.2, align 8, !dbg !1107
  %sub.2 = sub nsw i32 64, %bits_to_shift.1, !dbg !1109
  %sh_prom22.2 = zext nneg i32 %sub.2 to i64, !dbg !1110
  %shr.2 = lshr i64 %14, %sh_prom22.2, !dbg !1110
  %mul23.2 = mul nuw nsw i32 %i.0, 17, !dbg !1111
  %add24.2 = add nuw nsw i32 %mul23.2, %c.0, !dbg !1112
  %15 = mul i32 %words_to_shift.1, 80, !dbg !1113
  %mul27.2 = add i32 %15, 240, !dbg !1113
  %add28.2 = add i32 %add24.2, %mul27.2, !dbg !1114
  %arrayidx29.2 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28.2, !dbg !1115
  %16 = load i64, ptr %arrayidx29.2, align 8, !dbg !1116
  %xor30.2 = xor i64 %16, %shr.2, !dbg !1116
  store i64 %xor30.2, ptr %arrayidx29.2, align 8, !dbg !1116
  br label %for.body10.3, !dbg !1117

for.body10.3:                                     ; preds = %for.body10.2, %if.then.2
    #dbg_value(i32 3, !1091, !DIExpression(), !1094)
  %mul11.3 = shl nuw nsw i32 %c.0, 2, !dbg !1118
  %add.3 = or disjoint i32 %mul11.3, 3, !dbg !1119
  %arrayidx.3 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add.3, !dbg !1095
  %17 = load i64, ptr %arrayidx.3, align 8, !dbg !1095
  %sh_prom.3 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1098
  %shl.3 = shl i64 %17, %sh_prom.3, !dbg !1098
  %mul12.3 = mul nuw nsw i32 %i.0, 17, !dbg !1099
  %add13.3 = add nuw nsw i32 %mul12.3, %c.0, !dbg !1100
  %18 = mul i32 %words_to_shift.1, 80, !dbg !1101
  %mul15.3 = add i32 %18, 240, !dbg !1101
  %add16.3 = add i32 %add13.3, %mul15.3, !dbg !1102
  %arrayidx17.3 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16.3, !dbg !1103
  %19 = load i64, ptr %arrayidx17.3, align 8, !dbg !1104
  %xor.3 = xor i64 %19, %shl.3, !dbg !1104
  store i64 %xor.3, ptr %arrayidx17.3, align 8, !dbg !1104
  %cmp18.3 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1105
  br i1 %cmp18.3, label %if.then.3, label %for.inc31, !dbg !1105

if.then.3:                                        ; preds = %for.body10.3
  %mul19.3 = shl nuw nsw i32 %c.0, 2, !dbg !1120
  %add20.3 = or disjoint i32 %mul19.3, 3, !dbg !1121
  %arrayidx21.3 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20.3, !dbg !1107
  %20 = load i64, ptr %arrayidx21.3, align 8, !dbg !1107
  %sub.3 = sub nsw i32 64, %bits_to_shift.1, !dbg !1109
  %sh_prom22.3 = zext nneg i32 %sub.3 to i64, !dbg !1110
  %shr.3 = lshr i64 %20, %sh_prom22.3, !dbg !1110
  %mul23.3 = mul nuw nsw i32 %i.0, 17, !dbg !1111
  %add24.3 = add nuw nsw i32 %mul23.3, %c.0, !dbg !1112
  %21 = mul i32 %words_to_shift.1, 80, !dbg !1113
  %mul27.3 = add i32 %21, 320, !dbg !1113
  %add28.3 = add i32 %add24.3, %mul27.3, !dbg !1114
  %arrayidx29.3 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28.3, !dbg !1115
  %22 = load i64, ptr %arrayidx29.3, align 8, !dbg !1116
  %xor30.3 = xor i64 %22, %shr.3, !dbg !1116
  store i64 %xor30.3, ptr %arrayidx29.3, align 8, !dbg !1116
  br label %for.inc31, !dbg !1117

for.inc31:                                        ; preds = %for.body10.3, %if.then.3
    #dbg_value(i32 4, !1091, !DIExpression(), !1094)
  %inc32 = add nuw nsw i32 %c.0, 1, !dbg !1122
    #dbg_value(i32 %inc32, !1083, !DIExpression(), !1085)
  br label %for.cond5, !dbg !1123, !llvm.loop !1124

for.end33:                                        ; preds = %for.cond5
  %cmp34.not = icmp eq i32 %i.0, %j.0, !dbg !1126
  br i1 %cmp34.not, label %if.end82, label %if.then35, !dbg !1126

if.then35:                                        ; preds = %for.end33
  %add.ptr38.idx = mul nuw nsw i32 %i.0, 544, !dbg !1128
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr38.idx, !dbg !1128
    #dbg_value(ptr %add.ptr38, !1130, !DIExpression(), !1050)
    #dbg_value(i32 0, !1131, !DIExpression(), !1133)
  br label %for.cond40, !dbg !1134

for.cond40:                                       ; preds = %for.inc79, %if.then35
  %c39.0 = phi i32 [ 0, %if.then35 ], [ %inc80, %for.inc79 ], !dbg !1135
    #dbg_value(i32 %c39.0, !1131, !DIExpression(), !1133)
  %exitcond6.not = icmp eq i32 %c39.0, 17, !dbg !1136
  br i1 %exitcond6.not, label %if.end82, label %for.body46, !dbg !1138

for.body46:                                       ; preds = %for.cond40
    #dbg_value(i32 0, !1139, !DIExpression(), !1142)
  %arrayidx49.idx = shl nuw nsw i32 %c39.0, 5, !dbg !1143
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %arrayidx49.idx, !dbg !1143
  %23 = load i64, ptr %arrayidx49, align 8, !dbg !1143
  %sh_prom50 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1146
  %shl51 = shl i64 %23, %sh_prom50, !dbg !1146
  %mul52 = mul nsw i32 %j.0, 17, !dbg !1147
  %add53 = add nsw i32 %mul52, %c39.0, !dbg !1148
  %mul55 = mul i32 %words_to_shift.1, 80, !dbg !1149
  %add56 = add i32 %add53, %mul55, !dbg !1150
  %arrayidx57 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56, !dbg !1151
  %24 = load i64, ptr %arrayidx57, align 8, !dbg !1152
  %xor58 = xor i64 %24, %shl51, !dbg !1152
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1152
  %cmp59 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1153
  br i1 %cmp59, label %if.then60, label %for.body46.1, !dbg !1153

if.then60:                                        ; preds = %for.body46
  %arrayidx63.idx = shl nuw nsw i32 %c39.0, 5, !dbg !1155
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %arrayidx63.idx, !dbg !1155
  %25 = load i64, ptr %arrayidx63, align 8, !dbg !1155
  %sub64 = sub nsw i32 64, %bits_to_shift.1, !dbg !1157
  %sh_prom65 = zext nneg i32 %sub64 to i64, !dbg !1158
  %shr66 = lshr i64 %25, %sh_prom65, !dbg !1158
  %mul67 = mul nsw i32 %j.0, 17, !dbg !1159
  %add68 = add nsw i32 %mul67, %c39.0, !dbg !1160
  %26 = mul i32 %words_to_shift.1, 80, !dbg !1161
  %mul71 = add i32 %26, 80, !dbg !1161
  %add72 = add i32 %add68, %mul71, !dbg !1162
  %arrayidx73 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72, !dbg !1163
  %27 = load i64, ptr %arrayidx73, align 8, !dbg !1164
  %xor74 = xor i64 %27, %shr66, !dbg !1164
  store i64 %xor74, ptr %arrayidx73, align 8, !dbg !1164
  br label %for.body46.1, !dbg !1165

for.body46.1:                                     ; preds = %if.then60, %for.body46
    #dbg_value(i32 1, !1139, !DIExpression(), !1142)
  %mul47.1 = shl nuw nsw i32 %c39.0, 2, !dbg !1166
  %add48.1 = or disjoint i32 %mul47.1, 1, !dbg !1167
  %arrayidx49.1 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48.1, !dbg !1143
  %28 = load i64, ptr %arrayidx49.1, align 8, !dbg !1143
  %sh_prom50.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1146
  %shl51.1 = shl i64 %28, %sh_prom50.1, !dbg !1146
  %mul52.1 = mul nsw i32 %j.0, 17, !dbg !1147
  %add53.1 = add nsw i32 %mul52.1, %c39.0, !dbg !1148
  %29 = mul i32 %words_to_shift.1, 80, !dbg !1149
  %mul55.1 = add i32 %29, 80, !dbg !1149
  %add56.1 = add i32 %add53.1, %mul55.1, !dbg !1150
  %arrayidx57.1 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56.1, !dbg !1151
  %30 = load i64, ptr %arrayidx57.1, align 8, !dbg !1152
  %xor58.1 = xor i64 %30, %shl51.1, !dbg !1152
  store i64 %xor58.1, ptr %arrayidx57.1, align 8, !dbg !1152
  %cmp59.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1153
  br i1 %cmp59.1, label %if.then60.1, label %for.body46.2, !dbg !1153

if.then60.1:                                      ; preds = %for.body46.1
  %mul61.1 = shl nuw nsw i32 %c39.0, 2, !dbg !1168
  %add62.1 = or disjoint i32 %mul61.1, 1, !dbg !1169
  %arrayidx63.1 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62.1, !dbg !1155
  %31 = load i64, ptr %arrayidx63.1, align 8, !dbg !1155
  %sub64.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1157
  %sh_prom65.1 = zext nneg i32 %sub64.1 to i64, !dbg !1158
  %shr66.1 = lshr i64 %31, %sh_prom65.1, !dbg !1158
  %mul67.1 = mul nsw i32 %j.0, 17, !dbg !1159
  %add68.1 = add nsw i32 %mul67.1, %c39.0, !dbg !1160
  %32 = mul i32 %words_to_shift.1, 80, !dbg !1161
  %mul71.1 = add i32 %32, 160, !dbg !1161
  %add72.1 = add i32 %add68.1, %mul71.1, !dbg !1162
  %arrayidx73.1 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72.1, !dbg !1163
  %33 = load i64, ptr %arrayidx73.1, align 8, !dbg !1164
  %xor74.1 = xor i64 %33, %shr66.1, !dbg !1164
  store i64 %xor74.1, ptr %arrayidx73.1, align 8, !dbg !1164
  br label %for.body46.2, !dbg !1165

for.body46.2:                                     ; preds = %for.body46.1, %if.then60.1
    #dbg_value(i32 2, !1139, !DIExpression(), !1142)
  %mul47.2 = shl nuw nsw i32 %c39.0, 2, !dbg !1166
  %add48.2 = or disjoint i32 %mul47.2, 2, !dbg !1167
  %arrayidx49.2 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48.2, !dbg !1143
  %34 = load i64, ptr %arrayidx49.2, align 8, !dbg !1143
  %sh_prom50.2 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1146
  %shl51.2 = shl i64 %34, %sh_prom50.2, !dbg !1146
  %mul52.2 = mul nsw i32 %j.0, 17, !dbg !1147
  %add53.2 = add nsw i32 %mul52.2, %c39.0, !dbg !1148
  %35 = mul i32 %words_to_shift.1, 80, !dbg !1149
  %mul55.2 = add i32 %35, 160, !dbg !1149
  %add56.2 = add i32 %add53.2, %mul55.2, !dbg !1150
  %arrayidx57.2 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56.2, !dbg !1151
  %36 = load i64, ptr %arrayidx57.2, align 8, !dbg !1152
  %xor58.2 = xor i64 %36, %shl51.2, !dbg !1152
  store i64 %xor58.2, ptr %arrayidx57.2, align 8, !dbg !1152
  %cmp59.2 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1153
  br i1 %cmp59.2, label %if.then60.2, label %for.body46.3, !dbg !1153

if.then60.2:                                      ; preds = %for.body46.2
  %mul61.2 = shl nuw nsw i32 %c39.0, 2, !dbg !1168
  %add62.2 = or disjoint i32 %mul61.2, 2, !dbg !1169
  %arrayidx63.2 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62.2, !dbg !1155
  %37 = load i64, ptr %arrayidx63.2, align 8, !dbg !1155
  %sub64.2 = sub nsw i32 64, %bits_to_shift.1, !dbg !1157
  %sh_prom65.2 = zext nneg i32 %sub64.2 to i64, !dbg !1158
  %shr66.2 = lshr i64 %37, %sh_prom65.2, !dbg !1158
  %mul67.2 = mul nsw i32 %j.0, 17, !dbg !1159
  %add68.2 = add nsw i32 %mul67.2, %c39.0, !dbg !1160
  %38 = mul i32 %words_to_shift.1, 80, !dbg !1161
  %mul71.2 = add i32 %38, 240, !dbg !1161
  %add72.2 = add i32 %add68.2, %mul71.2, !dbg !1162
  %arrayidx73.2 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72.2, !dbg !1163
  %39 = load i64, ptr %arrayidx73.2, align 8, !dbg !1164
  %xor74.2 = xor i64 %39, %shr66.2, !dbg !1164
  store i64 %xor74.2, ptr %arrayidx73.2, align 8, !dbg !1164
  br label %for.body46.3, !dbg !1165

for.body46.3:                                     ; preds = %for.body46.2, %if.then60.2
    #dbg_value(i32 3, !1139, !DIExpression(), !1142)
  %mul47.3 = shl nuw nsw i32 %c39.0, 2, !dbg !1166
  %add48.3 = or disjoint i32 %mul47.3, 3, !dbg !1167
  %arrayidx49.3 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48.3, !dbg !1143
  %40 = load i64, ptr %arrayidx49.3, align 8, !dbg !1143
  %sh_prom50.3 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1146
  %shl51.3 = shl i64 %40, %sh_prom50.3, !dbg !1146
  %mul52.3 = mul nsw i32 %j.0, 17, !dbg !1147
  %add53.3 = add nsw i32 %mul52.3, %c39.0, !dbg !1148
  %41 = mul i32 %words_to_shift.1, 80, !dbg !1149
  %mul55.3 = add i32 %41, 240, !dbg !1149
  %add56.3 = add i32 %add53.3, %mul55.3, !dbg !1150
  %arrayidx57.3 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56.3, !dbg !1151
  %42 = load i64, ptr %arrayidx57.3, align 8, !dbg !1152
  %xor58.3 = xor i64 %42, %shl51.3, !dbg !1152
  store i64 %xor58.3, ptr %arrayidx57.3, align 8, !dbg !1152
  %cmp59.3 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1153
  br i1 %cmp59.3, label %if.then60.3, label %for.inc79, !dbg !1153

if.then60.3:                                      ; preds = %for.body46.3
  %mul61.3 = shl nuw nsw i32 %c39.0, 2, !dbg !1168
  %add62.3 = or disjoint i32 %mul61.3, 3, !dbg !1169
  %arrayidx63.3 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62.3, !dbg !1155
  %43 = load i64, ptr %arrayidx63.3, align 8, !dbg !1155
  %sub64.3 = sub nsw i32 64, %bits_to_shift.1, !dbg !1157
  %sh_prom65.3 = zext nneg i32 %sub64.3 to i64, !dbg !1158
  %shr66.3 = lshr i64 %43, %sh_prom65.3, !dbg !1158
  %mul67.3 = mul nsw i32 %j.0, 17, !dbg !1159
  %add68.3 = add nsw i32 %mul67.3, %c39.0, !dbg !1160
  %44 = mul i32 %words_to_shift.1, 80, !dbg !1161
  %mul71.3 = add i32 %44, 320, !dbg !1161
  %add72.3 = add i32 %add68.3, %mul71.3, !dbg !1162
  %arrayidx73.3 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72.3, !dbg !1163
  %45 = load i64, ptr %arrayidx73.3, align 8, !dbg !1164
  %xor74.3 = xor i64 %45, %shr66.3, !dbg !1164
  store i64 %xor74.3, ptr %arrayidx73.3, align 8, !dbg !1164
  br label %for.inc79, !dbg !1165

for.inc79:                                        ; preds = %for.body46.3, %if.then60.3
    #dbg_value(i32 4, !1139, !DIExpression(), !1142)
  %inc80 = add nuw nsw i32 %c39.0, 1, !dbg !1170
    #dbg_value(i32 %inc80, !1131, !DIExpression(), !1133)
  br label %for.cond40, !dbg !1171, !llvm.loop !1172

if.end82:                                         ; preds = %for.cond40, %for.end33
  %add83 = add nsw i32 %bits_to_shift.1, 4, !dbg !1174
    #dbg_value(i32 %add83, !1053, !DIExpression(), !1050)
  %cmp84 = icmp eq i32 %add83, 64, !dbg !1175
  %inc86 = zext i1 %cmp84 to i32, !dbg !1175
  %spec.select = add nsw i32 %words_to_shift.1, %inc86, !dbg !1175
  %spec.select3 = select i1 %cmp84, i32 0, i32 %add83, !dbg !1175
    #dbg_value(i32 %spec.select3, !1053, !DIExpression(), !1050)
    #dbg_value(i32 %spec.select, !1054, !DIExpression(), !1050)
  %dec = add nsw i32 %j.0, -1, !dbg !1177
    #dbg_value(i32 %dec, !1075, !DIExpression(), !1076)
  br label %for.cond1, !dbg !1178, !llvm.loop !1179

for.inc90:                                        ; preds = %for.cond1
  %inc91 = add nuw nsw i32 %i.0, 1, !dbg !1181
    #dbg_value(i32 %inc91, !1062, !DIExpression(), !1064)
  br label %for.cond, !dbg !1182, !llvm.loop !1183

for.cond94:                                       ; preds = %for.cond, %for.body97
  %c93.0 = phi i32 [ %add100, %for.body97 ], [ 0, %for.cond ], !dbg !1185
    #dbg_value(i32 %c93.0, !1187, !DIExpression(), !1188)
  %cmp96 = icmp samesign ult i32 %c93.0, 400, !dbg !1189
  br i1 %cmp96, label %for.body97, label %for.end101, !dbg !1191

for.body97:                                       ; preds = %for.cond94
  %add.ptr98 = getelementptr inbounds nuw i64, ptr %A, i32 %c93.0, !dbg !1192
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr98) #6, !dbg !1194
  %add100 = add nuw nsw i32 %c93.0, 16, !dbg !1195
    #dbg_value(i32 %add100, !1187, !DIExpression(), !1188)
  br label %for.cond94, !dbg !1196, !llvm.loop !1197

for.end101:                                       ; preds = %for.cond94
    #dbg_declare(ptr %tab, !1199, !DIExpression(), !1203)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1203
    #dbg_value(i32 0, !1204, !DIExpression(), !1206)
  br label %for.cond103, !dbg !1207

for.cond103:                                      ; preds = %for.body105, %for.end101
  %i102.0 = phi i32 [ 0, %for.end101 ], [ %inc125.3, %for.body105 ], !dbg !1208
    #dbg_value(i32 %i102.0, !1204, !DIExpression(), !1206)
  %exitcond8.not = icmp eq i32 %i102.0, 4, !dbg !1209
  br i1 %exitcond8.not, label %for.cond128, label %for.body105, !dbg !1211

for.body105:                                      ; preds = %for.cond103
  %arrayidx106 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1212
  %46 = load i8, ptr %arrayidx106, align 1, !dbg !1212
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %46, i8 noundef zeroext 1) #6, !dbg !1214
  %mul107 = shl nuw nsw i32 %i102.0, 2, !dbg !1215
  %arrayidx108 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107, !dbg !1216
  store i8 %call, ptr %arrayidx108, align 1, !dbg !1217
  %call110 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %46, i8 noundef zeroext 2) #6, !dbg !1218
  %mul111 = shl nuw nsw i32 %i102.0, 2, !dbg !1219
  %add112 = or disjoint i32 %mul111, 1, !dbg !1220
  %arrayidx113 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112, !dbg !1221
  store i8 %call110, ptr %arrayidx113, align 1, !dbg !1222
  %call115 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %46, i8 noundef zeroext 4) #6, !dbg !1223
  %mul116 = shl nuw nsw i32 %i102.0, 2, !dbg !1224
  %add117 = or disjoint i32 %mul116, 2, !dbg !1225
  %arrayidx118 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117, !dbg !1226
  store i8 %call115, ptr %arrayidx118, align 1, !dbg !1227
  %call120 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %46, i8 noundef zeroext 8) #6, !dbg !1228
  %mul121 = shl nuw nsw i32 %i102.0, 2, !dbg !1229
  %add122 = or disjoint i32 %mul121, 3, !dbg !1230
  %arrayidx123 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122, !dbg !1231
  store i8 %call120, ptr %arrayidx123, align 1, !dbg !1232
    #dbg_value(i32 %i102.0, !1204, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1206)
  %inc125 = or disjoint i32 %i102.0, 1, !dbg !1233
    #dbg_value(i32 %inc125, !1204, !DIExpression(), !1206)
  %arrayidx106.1 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc125, !dbg !1212
  %47 = load i8, ptr %arrayidx106.1, align 1, !dbg !1212
  %call.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %47, i8 noundef zeroext 1) #6, !dbg !1214
  %mul107.1 = shl nuw nsw i32 %inc125, 2, !dbg !1215
  %arrayidx108.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107.1, !dbg !1216
  store i8 %call.1, ptr %arrayidx108.1, align 1, !dbg !1217
  %call110.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %47, i8 noundef zeroext 2) #6, !dbg !1218
  %mul111.1 = shl nuw nsw i32 %inc125, 2, !dbg !1219
  %add112.1 = or disjoint i32 %mul111.1, 1, !dbg !1220
  %arrayidx113.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112.1, !dbg !1221
  store i8 %call110.1, ptr %arrayidx113.1, align 1, !dbg !1222
  %call115.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %47, i8 noundef zeroext 4) #6, !dbg !1223
  %mul116.1 = shl nuw nsw i32 %inc125, 2, !dbg !1224
  %add117.1 = or disjoint i32 %mul116.1, 2, !dbg !1225
  %arrayidx118.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117.1, !dbg !1226
  store i8 %call115.1, ptr %arrayidx118.1, align 1, !dbg !1227
  %call120.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %47, i8 noundef zeroext 8) #6, !dbg !1228
  %mul121.1 = shl nuw nsw i32 %inc125, 2, !dbg !1229
  %add122.1 = or disjoint i32 %mul121.1, 3, !dbg !1230
  %arrayidx123.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122.1, !dbg !1231
  store i8 %call120.1, ptr %arrayidx123.1, align 1, !dbg !1232
    #dbg_value(i32 %i102.0, !1204, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1206)
  %inc125.1 = or disjoint i32 %i102.0, 2, !dbg !1233
    #dbg_value(i32 %inc125.1, !1204, !DIExpression(), !1206)
  %arrayidx106.2 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc125.1, !dbg !1212
  %48 = load i8, ptr %arrayidx106.2, align 1, !dbg !1212
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %48, i8 noundef zeroext 1) #6, !dbg !1214
  %mul107.2 = shl nuw nsw i32 %inc125.1, 2, !dbg !1215
  %arrayidx108.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107.2, !dbg !1216
  store i8 %call.2, ptr %arrayidx108.2, align 1, !dbg !1217
  %call110.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %48, i8 noundef zeroext 2) #6, !dbg !1218
  %mul111.2 = shl nuw nsw i32 %inc125.1, 2, !dbg !1219
  %add112.2 = or disjoint i32 %mul111.2, 1, !dbg !1220
  %arrayidx113.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112.2, !dbg !1221
  store i8 %call110.2, ptr %arrayidx113.2, align 1, !dbg !1222
  %call115.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %48, i8 noundef zeroext 4) #6, !dbg !1223
  %mul116.2 = shl nuw nsw i32 %inc125.1, 2, !dbg !1224
  %add117.2 = or disjoint i32 %mul116.2, 2, !dbg !1225
  %arrayidx118.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117.2, !dbg !1226
  store i8 %call115.2, ptr %arrayidx118.2, align 1, !dbg !1227
  %call120.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %48, i8 noundef zeroext 8) #6, !dbg !1228
  %mul121.2 = shl nuw nsw i32 %inc125.1, 2, !dbg !1229
  %add122.2 = or disjoint i32 %mul121.2, 3, !dbg !1230
  %arrayidx123.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122.2, !dbg !1231
  store i8 %call120.2, ptr %arrayidx123.2, align 1, !dbg !1232
    #dbg_value(i32 %i102.0, !1204, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1206)
  %inc125.2 = or disjoint i32 %i102.0, 3, !dbg !1233
    #dbg_value(i32 %inc125.2, !1204, !DIExpression(), !1206)
  %arrayidx106.3 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc125.2, !dbg !1212
  %49 = load i8, ptr %arrayidx106.3, align 1, !dbg !1212
  %call.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %49, i8 noundef zeroext 1) #6, !dbg !1214
  %mul107.3 = shl nuw nsw i32 %inc125.2, 2, !dbg !1215
  %arrayidx108.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107.3, !dbg !1216
  store i8 %call.3, ptr %arrayidx108.3, align 1, !dbg !1217
  %call110.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %49, i8 noundef zeroext 2) #6, !dbg !1218
  %mul111.3 = shl nuw nsw i32 %inc125.2, 2, !dbg !1219
  %add112.3 = or disjoint i32 %mul111.3, 1, !dbg !1220
  %arrayidx113.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112.3, !dbg !1221
  store i8 %call110.3, ptr %arrayidx113.3, align 1, !dbg !1222
  %call115.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %49, i8 noundef zeroext 4) #6, !dbg !1223
  %mul116.3 = shl nuw nsw i32 %inc125.2, 2, !dbg !1224
  %add117.3 = or disjoint i32 %mul116.3, 2, !dbg !1225
  %arrayidx118.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117.3, !dbg !1226
  store i8 %call115.3, ptr %arrayidx118.3, align 1, !dbg !1227
  %call120.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %49, i8 noundef zeroext 8) #6, !dbg !1228
  %mul121.3 = shl nuw nsw i32 %inc125.2, 2, !dbg !1229
  %add122.3 = or disjoint i32 %mul121.3, 3, !dbg !1230
  %arrayidx123.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122.3, !dbg !1231
  store i8 %call120.3, ptr %arrayidx123.3, align 1, !dbg !1232
  %inc125.3 = add nuw nsw i32 %i102.0, 4, !dbg !1233
    #dbg_value(i32 %inc125.3, !1204, !DIExpression(), !1206)
  br label %for.cond103, !dbg !1234, !llvm.loop !1235

for.cond128:                                      ; preds = %for.cond103, %for.inc189
  %c127.0 = phi i32 [ %add190, %for.inc189 ], [ 0, %for.cond103 ], !dbg !1237
    #dbg_value(i32 %c127.0, !1239, !DIExpression(), !1240)
  %cmp129 = icmp samesign ult i32 %c127.0, 80, !dbg !1241
  br i1 %cmp129, label %for.cond131, label %for.cond193, !dbg !1243

for.cond131:                                      ; preds = %for.cond128, %for.body133
  %r.0 = phi i32 [ %inc187, %for.body133 ], [ 64, %for.cond128 ], !dbg !1244
    #dbg_value(i32 %r.0, !1247, !DIExpression(), !1248)
  %exitcond10.not = icmp eq i32 %r.0, 74, !dbg !1249
  br i1 %exitcond10.not, label %for.inc189, label %for.body133, !dbg !1251

for.body133:                                      ; preds = %for.cond131
  %div1 = lshr i32 %r.0, 4, !dbg !1252
  %mul134 = mul nuw nsw i32 %div1, 80, !dbg !1254
  %add135 = add nuw nsw i32 %mul134, %c127.0, !dbg !1255
  %rem = and i32 %r.0, 15, !dbg !1256
  %add136 = or disjoint i32 %add135, %rem, !dbg !1257
    #dbg_value(i32 %add136, !1258, !DIExpression(), !1259)
  %arrayidx137 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1260
  %50 = load i64, ptr %arrayidx137, align 8, !dbg !1260
  %and = and i64 %50, 1229782938247303441, !dbg !1261
    #dbg_value(i64 %and, !1262, !DIExpression(), !1259)
  %shr139 = lshr i64 %50, 1, !dbg !1263
  %and140 = and i64 %shr139, 1229782938247303441, !dbg !1264
    #dbg_value(i64 %and140, !1265, !DIExpression(), !1259)
  %shr142 = lshr i64 %50, 2, !dbg !1266
  %and143 = and i64 %shr142, 1229782938247303441, !dbg !1267
    #dbg_value(i64 %and143, !1268, !DIExpression(), !1259)
  %arrayidx144 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1269
  %51 = load i64, ptr %arrayidx144, align 8, !dbg !1269
  %shr145 = lshr i64 %51, 3, !dbg !1270
  %and146 = and i64 %shr145, 1229782938247303441, !dbg !1271
    #dbg_value(i64 %and146, !1272, !DIExpression(), !1259)
    #dbg_value(i32 0, !1273, !DIExpression(), !1275)
    #dbg_value(i32 0, !1273, !DIExpression(), !1275)
  %52 = load i8, ptr %tab, align 1, !dbg !1276
  %conv = zext i8 %52 to i64, !dbg !1276
  %mul153 = mul i64 %and, %conv, !dbg !1279
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %tab, i32 1, !dbg !1280
  %53 = load i8, ptr %arrayidx156, align 1, !dbg !1280
  %conv157 = zext i8 %53 to i64, !dbg !1280
  %mul158 = mul i64 %and140, %conv157, !dbg !1281
  %xor159 = xor i64 %mul153, %mul158, !dbg !1282
  %arrayidx162 = getelementptr inbounds nuw i8, ptr %tab, i32 2, !dbg !1283
  %54 = load i8, ptr %arrayidx162, align 1, !dbg !1283
  %conv163 = zext i8 %54 to i64, !dbg !1283
  %mul164 = mul i64 %and143, %conv163, !dbg !1284
  %xor165 = xor i64 %xor159, %mul164, !dbg !1285
  %arrayidx168 = getelementptr inbounds nuw i8, ptr %tab, i32 3, !dbg !1286
  %55 = load i8, ptr %arrayidx168, align 1, !dbg !1286
  %conv169 = zext i8 %55 to i64, !dbg !1286
  %mul170 = mul i64 %and146, %conv169, !dbg !1287
  %xor171 = xor i64 %xor165, %mul170, !dbg !1288
  %sub173 = add nsw i32 %r.0, -64, !dbg !1289
  %div1742 = lshr i32 %sub173, 4, !dbg !1290
  %mul175 = mul i32 %div1742, 80, !dbg !1291
  %add176 = add i32 %mul175, %c127.0, !dbg !1292
  %rem179 = and i32 %r.0, 15, !dbg !1293
  %add180 = or disjoint i32 %add176, %rem179, !dbg !1294
  %arrayidx181 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180, !dbg !1295
  %56 = load i64, ptr %arrayidx181, align 8, !dbg !1296
  %xor182 = xor i64 %56, %xor171, !dbg !1296
  store i64 %xor182, ptr %arrayidx181, align 8, !dbg !1296
    #dbg_value(i32 1, !1273, !DIExpression(), !1275)
  %arrayidx152.1 = getelementptr inbounds nuw i8, ptr %tab, i32 4, !dbg !1276
  %57 = load i8, ptr %arrayidx152.1, align 1, !dbg !1276
  %conv.1 = zext i8 %57 to i64, !dbg !1276
  %mul153.1 = mul i64 %and, %conv.1, !dbg !1279
  %arrayidx156.1 = getelementptr inbounds nuw i8, ptr %tab, i32 5, !dbg !1280
  %58 = load i8, ptr %arrayidx156.1, align 1, !dbg !1280
  %conv157.1 = zext i8 %58 to i64, !dbg !1280
  %mul158.1 = mul i64 %and140, %conv157.1, !dbg !1281
  %xor159.1 = xor i64 %mul153.1, %mul158.1, !dbg !1282
  %arrayidx162.1 = getelementptr inbounds nuw i8, ptr %tab, i32 6, !dbg !1283
  %59 = load i8, ptr %arrayidx162.1, align 1, !dbg !1283
  %conv163.1 = zext i8 %59 to i64, !dbg !1283
  %mul164.1 = mul i64 %and143, %conv163.1, !dbg !1284
  %xor165.1 = xor i64 %xor159.1, %mul164.1, !dbg !1285
  %arrayidx168.1 = getelementptr inbounds nuw i8, ptr %tab, i32 7, !dbg !1286
  %60 = load i8, ptr %arrayidx168.1, align 1, !dbg !1286
  %conv169.1 = zext i8 %60 to i64, !dbg !1286
  %mul170.1 = mul i64 %and146, %conv169.1, !dbg !1287
  %xor171.1 = xor i64 %xor165.1, %mul170.1, !dbg !1288
  %sub173.1 = add nsw i32 %r.0, -63, !dbg !1289
  %div1742.1 = lshr i32 %sub173.1, 4, !dbg !1290
  %mul175.1 = mul i32 %div1742.1, 80, !dbg !1291
  %add176.1 = add i32 %mul175.1, %c127.0, !dbg !1292
  %add177.1 = add nuw nsw i32 %r.0, 1, !dbg !1297
  %rem179.1 = and i32 %add177.1, 15, !dbg !1293
  %add180.1 = or disjoint i32 %add176.1, %rem179.1, !dbg !1294
  %arrayidx181.1 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180.1, !dbg !1295
  %61 = load i64, ptr %arrayidx181.1, align 8, !dbg !1296
  %xor182.1 = xor i64 %61, %xor171.1, !dbg !1296
  store i64 %xor182.1, ptr %arrayidx181.1, align 8, !dbg !1296
    #dbg_value(i32 2, !1273, !DIExpression(), !1275)
  %arrayidx152.2 = getelementptr inbounds nuw i8, ptr %tab, i32 8, !dbg !1276
  %62 = load i8, ptr %arrayidx152.2, align 1, !dbg !1276
  %conv.2 = zext i8 %62 to i64, !dbg !1276
  %mul153.2 = mul i64 %and, %conv.2, !dbg !1279
  %arrayidx156.2 = getelementptr inbounds nuw i8, ptr %tab, i32 9, !dbg !1280
  %63 = load i8, ptr %arrayidx156.2, align 1, !dbg !1280
  %conv157.2 = zext i8 %63 to i64, !dbg !1280
  %mul158.2 = mul i64 %and140, %conv157.2, !dbg !1281
  %xor159.2 = xor i64 %mul153.2, %mul158.2, !dbg !1282
  %arrayidx162.2 = getelementptr inbounds nuw i8, ptr %tab, i32 10, !dbg !1283
  %64 = load i8, ptr %arrayidx162.2, align 1, !dbg !1283
  %conv163.2 = zext i8 %64 to i64, !dbg !1283
  %mul164.2 = mul i64 %and143, %conv163.2, !dbg !1284
  %xor165.2 = xor i64 %xor159.2, %mul164.2, !dbg !1285
  %arrayidx168.2 = getelementptr inbounds nuw i8, ptr %tab, i32 11, !dbg !1286
  %65 = load i8, ptr %arrayidx168.2, align 1, !dbg !1286
  %conv169.2 = zext i8 %65 to i64, !dbg !1286
  %mul170.2 = mul i64 %and146, %conv169.2, !dbg !1287
  %xor171.2 = xor i64 %xor165.2, %mul170.2, !dbg !1288
  %sub173.2 = add nsw i32 %r.0, -62, !dbg !1289
  %div1742.2 = lshr i32 %sub173.2, 4, !dbg !1290
  %mul175.2 = mul i32 %div1742.2, 80, !dbg !1291
  %add176.2 = add i32 %mul175.2, %c127.0, !dbg !1292
  %add177.2 = add nuw nsw i32 %r.0, 2, !dbg !1297
  %rem179.2 = and i32 %add177.2, 15, !dbg !1293
  %add180.2 = or disjoint i32 %add176.2, %rem179.2, !dbg !1294
  %arrayidx181.2 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180.2, !dbg !1295
  %66 = load i64, ptr %arrayidx181.2, align 8, !dbg !1296
  %xor182.2 = xor i64 %66, %xor171.2, !dbg !1296
  store i64 %xor182.2, ptr %arrayidx181.2, align 8, !dbg !1296
    #dbg_value(i32 3, !1273, !DIExpression(), !1275)
  %arrayidx152.3 = getelementptr inbounds nuw i8, ptr %tab, i32 12, !dbg !1276
  %67 = load i8, ptr %arrayidx152.3, align 1, !dbg !1276
  %conv.3 = zext i8 %67 to i64, !dbg !1276
  %mul153.3 = mul i64 %and, %conv.3, !dbg !1279
  %arrayidx156.3 = getelementptr inbounds nuw i8, ptr %tab, i32 13, !dbg !1280
  %68 = load i8, ptr %arrayidx156.3, align 1, !dbg !1280
  %conv157.3 = zext i8 %68 to i64, !dbg !1280
  %mul158.3 = mul i64 %and140, %conv157.3, !dbg !1281
  %xor159.3 = xor i64 %mul153.3, %mul158.3, !dbg !1282
  %arrayidx162.3 = getelementptr inbounds nuw i8, ptr %tab, i32 14, !dbg !1283
  %69 = load i8, ptr %arrayidx162.3, align 1, !dbg !1283
  %conv163.3 = zext i8 %69 to i64, !dbg !1283
  %mul164.3 = mul i64 %and143, %conv163.3, !dbg !1284
  %xor165.3 = xor i64 %xor159.3, %mul164.3, !dbg !1285
  %arrayidx168.3 = getelementptr inbounds nuw i8, ptr %tab, i32 15, !dbg !1286
  %70 = load i8, ptr %arrayidx168.3, align 1, !dbg !1286
  %conv169.3 = zext i8 %70 to i64, !dbg !1286
  %mul170.3 = mul i64 %and146, %conv169.3, !dbg !1287
  %xor171.3 = xor i64 %xor165.3, %mul170.3, !dbg !1288
  %sub173.3 = add nsw i32 %r.0, -61, !dbg !1289
  %div1742.3 = lshr i32 %sub173.3, 4, !dbg !1290
  %mul175.3 = mul i32 %div1742.3, 80, !dbg !1291
  %add176.3 = add i32 %mul175.3, %c127.0, !dbg !1292
  %add177.3 = add nuw nsw i32 %r.0, 3, !dbg !1297
  %rem179.3 = and i32 %add177.3, 15, !dbg !1293
  %add180.3 = or disjoint i32 %add176.3, %rem179.3, !dbg !1294
  %arrayidx181.3 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180.3, !dbg !1295
  %71 = load i64, ptr %arrayidx181.3, align 8, !dbg !1296
  %xor182.3 = xor i64 %71, %xor171.3, !dbg !1296
  store i64 %xor182.3, ptr %arrayidx181.3, align 8, !dbg !1296
    #dbg_value(i32 4, !1273, !DIExpression(), !1275)
  %inc187 = add nuw nsw i32 %r.0, 1, !dbg !1298
    #dbg_value(i32 %inc187, !1247, !DIExpression(), !1248)
  br label %for.cond131, !dbg !1299, !llvm.loop !1300

for.inc189:                                       ; preds = %for.cond131
  %add190 = add nuw nsw i32 %c127.0, 16, !dbg !1302
    #dbg_value(i32 %add190, !1239, !DIExpression(), !1240)
  br label %for.cond128, !dbg !1303, !llvm.loop !1304

for.cond193:                                      ; preds = %for.cond128, %for.inc227
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc227 ], [ 64, %for.cond128 ], !dbg !1306
  %r192.0 = phi i32 [ %add228, %for.inc227 ], [ 0, %for.cond128 ], !dbg !1306
    #dbg_value(i32 %r192.0, !1308, !DIExpression(), !1309)
  %cmp194 = icmp samesign ult i32 %r192.0, 64, !dbg !1310
  br i1 %cmp194, label %for.cond203, label %for.end229, !dbg !1312

for.cond203:                                      ; preds = %for.cond193, %for.body207
  %i202.0 = phi i32 [ %inc222, %for.body207 ], [ 0, %for.cond193 ], !dbg !1313
    #dbg_value(i32 %i202.0, !1319, !DIExpression(), !1320)
  %exitcond11.not = icmp eq i32 %i202.0, %indvars.iv, !dbg !1321
  br i1 %exitcond11.not, label %for.cond203.1, label %for.body207, !dbg !1323

for.body207:                                      ; preds = %for.cond203
  %div209 = mul nuw nsw i32 %r192.0, 5, !dbg !1324
  %add211 = add nuw nsw i32 %div209, %i202.0, !dbg !1326
  %arrayidx212 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211, !dbg !1327
  %add213 = add nuw nsw i32 %r192.0, %i202.0, !dbg !1328
  %mul214 = mul nuw nsw i32 %add213, 69, !dbg !1329
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214, !dbg !1330
  call fastcc void @decode(ptr noundef nonnull %arrayidx212, ptr noundef %add.ptr215, i32 noundef 16) #6, !dbg !1331
  %inc222 = add nuw nsw i32 %i202.0, 1, !dbg !1332
    #dbg_value(i32 %inc222, !1319, !DIExpression(), !1320)
  br label %for.cond203, !dbg !1333, !llvm.loop !1334

for.cond203.1:                                    ; preds = %for.cond203, %for.body207.1
  %i202.0.1 = phi i32 [ %inc222.1, %for.body207.1 ], [ 0, %for.cond203 ], !dbg !1313
    #dbg_value(i32 %i202.0.1, !1319, !DIExpression(), !1320)
  %exitcond11.1.not = icmp eq i32 %i202.0.1, %indvars.iv, !dbg !1321
  br i1 %exitcond11.1.not, label %for.cond203.2, label %for.body207.1, !dbg !1323

for.body207.1:                                    ; preds = %for.cond203.1
  %div209.1 = mul nuw nsw i32 %r192.0, 5, !dbg !1324
  %add210.1 = add nuw nsw i32 %div209.1, 16, !dbg !1336
  %add211.1 = add nuw nsw i32 %add210.1, %i202.0.1, !dbg !1326
  %arrayidx212.1 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211.1, !dbg !1327
  %add213.1 = add nuw nsw i32 %r192.0, %i202.0.1, !dbg !1328
  %mul214.1 = mul nuw nsw i32 %add213.1, 69, !dbg !1329
  %add.ptr215.1 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214.1, !dbg !1330
  %add.ptr216.1 = getelementptr inbounds nuw i8, ptr %add.ptr215.1, i32 16, !dbg !1337
  call fastcc void @decode(ptr noundef nonnull %arrayidx212.1, ptr noundef nonnull %add.ptr216.1, i32 noundef 16) #6, !dbg !1331
  %inc222.1 = add nuw nsw i32 %i202.0.1, 1, !dbg !1332
    #dbg_value(i32 %inc222.1, !1319, !DIExpression(), !1320)
  br label %for.cond203.1, !dbg !1333, !llvm.loop !1334

for.cond203.2:                                    ; preds = %for.cond203.1, %for.body207.2
  %i202.0.2 = phi i32 [ %inc222.2, %for.body207.2 ], [ 0, %for.cond203.1 ], !dbg !1313
    #dbg_value(i32 %i202.0.2, !1319, !DIExpression(), !1320)
  %exitcond11.2.not = icmp eq i32 %i202.0.2, %indvars.iv, !dbg !1321
  br i1 %exitcond11.2.not, label %for.cond203.3, label %for.body207.2, !dbg !1323

for.body207.2:                                    ; preds = %for.cond203.2
  %div209.2 = mul nuw nsw i32 %r192.0, 5, !dbg !1324
  %add210.2 = add nuw nsw i32 %div209.2, 32, !dbg !1336
  %add211.2 = add nuw nsw i32 %add210.2, %i202.0.2, !dbg !1326
  %arrayidx212.2 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211.2, !dbg !1327
  %add213.2 = add nuw nsw i32 %r192.0, %i202.0.2, !dbg !1328
  %mul214.2 = mul nuw nsw i32 %add213.2, 69, !dbg !1329
  %add.ptr215.2 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214.2, !dbg !1330
  %add.ptr216.2 = getelementptr inbounds nuw i8, ptr %add.ptr215.2, i32 32, !dbg !1337
  call fastcc void @decode(ptr noundef nonnull %arrayidx212.2, ptr noundef nonnull %add.ptr216.2, i32 noundef 16) #6, !dbg !1331
  %inc222.2 = add nuw nsw i32 %i202.0.2, 1, !dbg !1332
    #dbg_value(i32 %inc222.2, !1319, !DIExpression(), !1320)
  br label %for.cond203.2, !dbg !1333, !llvm.loop !1334

for.cond203.3:                                    ; preds = %for.cond203.2, %for.body207.3
  %i202.0.3 = phi i32 [ %inc222.3, %for.body207.3 ], [ 0, %for.cond203.2 ], !dbg !1313
    #dbg_value(i32 %i202.0.3, !1319, !DIExpression(), !1320)
  %exitcond11.3.not = icmp eq i32 %i202.0.3, %indvars.iv, !dbg !1321
  br i1 %exitcond11.3.not, label %for.cond203.4, label %for.body207.3, !dbg !1323

for.body207.3:                                    ; preds = %for.cond203.3
  %div209.3 = mul nuw nsw i32 %r192.0, 5, !dbg !1324
  %add210.3 = add nuw nsw i32 %div209.3, 48, !dbg !1336
  %add211.3 = add nuw nsw i32 %add210.3, %i202.0.3, !dbg !1326
  %arrayidx212.3 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211.3, !dbg !1327
  %add213.3 = add nuw nsw i32 %r192.0, %i202.0.3, !dbg !1328
  %mul214.3 = mul nuw nsw i32 %add213.3, 69, !dbg !1329
  %add.ptr215.3 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214.3, !dbg !1330
  %add.ptr216.3 = getelementptr inbounds nuw i8, ptr %add.ptr215.3, i32 48, !dbg !1337
  call fastcc void @decode(ptr noundef nonnull %arrayidx212.3, ptr noundef nonnull %add.ptr216.3, i32 noundef 16) #6, !dbg !1331
  %inc222.3 = add nuw nsw i32 %i202.0.3, 1, !dbg !1332
    #dbg_value(i32 %inc222.3, !1319, !DIExpression(), !1320)
  br label %for.cond203.3, !dbg !1333, !llvm.loop !1334

for.cond203.4:                                    ; preds = %for.cond203.3, %for.body207.4
  %i202.0.4 = phi i32 [ %inc222.4, %for.body207.4 ], [ 0, %for.cond203.3 ], !dbg !1313
    #dbg_value(i32 %i202.0.4, !1319, !DIExpression(), !1320)
  %exitcond11.4.not = icmp eq i32 %i202.0.4, %indvars.iv, !dbg !1321
  br i1 %exitcond11.4.not, label %for.inc227, label %for.body207.4, !dbg !1323

for.body207.4:                                    ; preds = %for.cond203.4
  %div209.4 = mul nuw nsw i32 %r192.0, 5, !dbg !1324
  %add210.4 = add nuw nsw i32 %div209.4, 64, !dbg !1336
  %add211.4 = add nuw nsw i32 %add210.4, %i202.0.4, !dbg !1326
  %arrayidx212.4 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211.4, !dbg !1327
  %add213.4 = add nuw nsw i32 %r192.0, %i202.0.4, !dbg !1328
  %mul214.4 = mul nuw nsw i32 %add213.4, 69, !dbg !1329
  %add.ptr215.4 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214.4, !dbg !1330
  %add.ptr216.4 = getelementptr inbounds nuw i8, ptr %add.ptr215.4, i32 64, !dbg !1337
  call fastcc void @decode(ptr noundef nonnull %arrayidx212.4, ptr noundef nonnull %add.ptr216.4, i32 noundef 4) #6, !dbg !1331
  %inc222.4 = add nuw nsw i32 %i202.0.4, 1, !dbg !1332
    #dbg_value(i32 %inc222.4, !1319, !DIExpression(), !1320)
  br label %for.cond203.4, !dbg !1333, !llvm.loop !1334

for.inc227:                                       ; preds = %for.cond203.4
    #dbg_value(i32 80, !1338, !DIExpression(), !1339)
  %add228 = add nuw nsw i32 %r192.0, 16, !dbg !1340
    #dbg_value(i32 %add228, !1308, !DIExpression(), !1309)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1341
  br label %for.cond193, !dbg !1341, !llvm.loop !1342

for.end229:                                       ; preds = %for.cond193
  ret void, !dbg !1344
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1345 {
entry:
    #dbg_value(ptr %a, !1348, !DIExpression(), !1349)
    #dbg_value(ptr %b, !1350, !DIExpression(), !1349)
    #dbg_value(ptr %c, !1351, !DIExpression(), !1349)
    #dbg_value(i32 %colrow_ab, !1352, !DIExpression(), !1349)
    #dbg_value(i32 %row_a, !1353, !DIExpression(), !1349)
    #dbg_value(i32 %col_b, !1354, !DIExpression(), !1349)
    #dbg_value(i32 0, !1355, !DIExpression(), !1357)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1358
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1358
  br label %for.cond, !dbg !1358

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1359
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1348, !DIExpression(), !1349)
    #dbg_value(ptr %c.addr.0, !1351, !DIExpression(), !1349)
    #dbg_value(i32 %i.0, !1355, !DIExpression(), !1357)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1360
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !1362

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1363
    #dbg_value(i32 %j.0, !1366, !DIExpression(), !1367)
    #dbg_value(ptr %c.addr.1, !1351, !DIExpression(), !1349)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1368
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !1370

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1371
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1373
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1374
  %inc = add nuw i32 %j.0, 1, !dbg !1375
    #dbg_value(i32 %inc, !1366, !DIExpression(), !1367)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1376
    #dbg_value(ptr %incdec.ptr, !1351, !DIExpression(), !1349)
  br label %for.cond1, !dbg !1377, !llvm.loop !1378

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !1380
    #dbg_value(i32 %inc5, !1355, !DIExpression(), !1357)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1381
    #dbg_value(ptr %add.ptr6, !1348, !DIExpression(), !1349)
  br label %for.cond, !dbg !1382, !llvm.loop !1383

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1385
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1386 {
entry:
    #dbg_value(ptr %a, !1389, !DIExpression(), !1390)
    #dbg_value(ptr %b, !1391, !DIExpression(), !1390)
    #dbg_value(ptr %c, !1392, !DIExpression(), !1390)
    #dbg_value(i32 %m, !1393, !DIExpression(), !1390)
    #dbg_value(i32 %n, !1394, !DIExpression(), !1390)
    #dbg_value(i32 0, !1395, !DIExpression(), !1397)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1398
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1398
  br label %for.cond, !dbg !1398

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1399
    #dbg_value(i32 %i.0, !1395, !DIExpression(), !1397)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1400
  br i1 %exitcond2.not, label %for.end13, label %for.cond1, !dbg !1402

for.cond1:                                        ; preds = %for.cond, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1403
    #dbg_value(i32 %j.0, !1406, !DIExpression(), !1407)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1408
  br i1 %exitcond.not, label %for.inc11, label %for.body3, !dbg !1410

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1411
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1413
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1414
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1415
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1416
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1417
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1418
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1419
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1420
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1421
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1422
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1423
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1424
  %inc = add nuw i32 %j.0, 1, !dbg !1425
    #dbg_value(i32 %inc, !1406, !DIExpression(), !1407)
  br label %for.cond1, !dbg !1426, !llvm.loop !1427

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1429
    #dbg_value(i32 %inc12, !1395, !DIExpression(), !1397)
  br label %for.cond, !dbg !1430, !llvm.loop !1431

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1433
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1434 {
entry:
    #dbg_value(ptr %m, !1435, !DIExpression(), !1436)
    #dbg_value(ptr %menc, !1437, !DIExpression(), !1436)
    #dbg_value(i32 %mlen, !1438, !DIExpression(), !1436)
    #dbg_value(i32 0, !1439, !DIExpression(), !1436)
  br label %for.cond, !dbg !1440

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1442
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1435, !DIExpression(), !1436)
    #dbg_value(i32 %i.0, !1439, !DIExpression(), !1436)
  %div = sdiv i32 %mlen, 2, !dbg !1443
  %cmp = icmp slt i32 %i.0, %div, !dbg !1445
  br i1 %cmp, label %for.body, label %for.end, !dbg !1446

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1447
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1449
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1450
  %shl = shl i8 %1, 4, !dbg !1451
  %or = or i8 %shl, %0, !dbg !1452
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1453
  store i8 %or, ptr %arrayidx, align 1, !dbg !1454
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1455
    #dbg_value(i32 %inc, !1439, !DIExpression(), !1436)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1456
    #dbg_value(ptr %add.ptr3, !1435, !DIExpression(), !1436)
  br label %for.cond, !dbg !1457, !llvm.loop !1458

for.end:                                          ; preds = %for.cond
  %2 = and i32 %mlen, -2147483647, !dbg !1460
  %cmp4 = icmp eq i32 %2, 1, !dbg !1460
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1460

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0, align 1, !dbg !1462
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1464
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1465
  br label %if.end, !dbg !1466

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !1467
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1468 {
entry:
    #dbg_value(i8 %a, !1471, !DIExpression(), !1472)
    #dbg_value(i8 %b, !1473, !DIExpression(), !1472)
  %xor1 = xor i8 %a, %b, !dbg !1474
  ret i8 %xor1, !dbg !1475
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1476 {
entry:
    #dbg_value(ptr %a, !1479, !DIExpression(), !1480)
    #dbg_value(ptr %b, !1481, !DIExpression(), !1480)
    #dbg_value(i32 %n, !1482, !DIExpression(), !1480)
    #dbg_value(i32 %m, !1483, !DIExpression(), !1480)
    #dbg_value(i8 0, !1484, !DIExpression(), !1480)
    #dbg_value(i32 0, !1485, !DIExpression(), !1487)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1488
  br label %for.cond, !dbg !1488

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1480
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1489
    #dbg_value(i32 %i.0, !1485, !DIExpression(), !1487)
    #dbg_value(ptr %b.addr.0, !1481, !DIExpression(), !1480)
    #dbg_value(i8 %ret.0, !1484, !DIExpression(), !1480)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !1490
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1492

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1493
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1493
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1495
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1496
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1497
    #dbg_value(i8 %call1, !1484, !DIExpression(), !1480)
  %inc = add nuw i32 %i.0, 1, !dbg !1498
    #dbg_value(i32 %inc, !1485, !DIExpression(), !1487)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1499
    #dbg_value(ptr %add.ptr, !1481, !DIExpression(), !1480)
  br label %for.cond, !dbg !1500, !llvm.loop !1501

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !1503
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1504 {
entry:
    #dbg_value(i8 %a, !1505, !DIExpression(), !1506)
    #dbg_value(i8 %b, !1507, !DIExpression(), !1506)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !1508
  %xor1 = xor i8 %a, %0, !dbg !1509
    #dbg_value(i8 %xor1, !1505, !DIExpression(), !1506)
  %1 = trunc i8 %xor1 to i1, !dbg !1510
    #dbg_value(i8 poison, !1511, !DIExpression(), !1506)
  %2 = and i8 %xor1, 2, !dbg !1512
  %mul9 = mul i8 %2, %b, !dbg !1513
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1510
  %xor11 = xor i8 %conv10, %mul9, !dbg !1514
    #dbg_value(i8 %xor11, !1511, !DIExpression(), !1506)
  %3 = and i8 %xor1, 4, !dbg !1515
  %mul16 = mul i8 %3, %b, !dbg !1516
  %xor18 = xor i8 %mul16, %xor11, !dbg !1517
    #dbg_value(i8 %xor18, !1511, !DIExpression(), !1506)
  %4 = and i8 %xor1, 8, !dbg !1518
  %mul23 = mul i8 %4, %b, !dbg !1519
  %xor25 = xor i8 %mul23, %xor18, !dbg !1520
    #dbg_value(i8 %xor25, !1511, !DIExpression(), !1506)
    #dbg_value(i8 %xor25, !1521, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1506)
  %5 = lshr i8 %xor25, 4, !dbg !1522
  %6 = lshr i8 %xor25, 3, !dbg !1523
  %7 = and i8 %6, 14, !dbg !1523
  %8 = xor i8 %5, %7, !dbg !1524
  %xor25.masked = and i8 %xor25, 15, !dbg !1525
  %9 = xor i8 %8, %xor25.masked, !dbg !1525
    #dbg_value(i8 %9, !1526, !DIExpression(), !1506)
  ret i8 %9, !dbg !1527
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1528, !DIExpression(), !1529)
    #dbg_value(i32 0, !1530, !DIExpression(), !1532)
    #dbg_value(i32 0, !1530, !DIExpression(), !1532)
  %0 = load i64, ptr %M, align 8, !dbg !1533
  %shr = lshr i64 %0, 4, !dbg !1536
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1537
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1537
  %xor = xor i64 %shr, %1, !dbg !1538
  %and = and i64 %xor, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and, !1540, !DIExpression(), !1541)
  %shl = shl nuw i64 %and, 4, !dbg !1542
  %2 = load i64, ptr %M, align 8, !dbg !1543
  %xor3 = xor i64 %2, %shl, !dbg !1543
  store i64 %xor3, ptr %M, align 8, !dbg !1543
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1544
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1545
  %xor6 = xor i64 %3, %and, !dbg !1545
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1545
    #dbg_value(i32 2, !1530, !DIExpression(), !1532)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1533
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !1533
  %shr.1 = lshr i64 %4, 4, !dbg !1536
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1537
  %5 = load i64, ptr %arrayidx1.1, align 8, !dbg !1537
  %xor.1 = xor i64 %shr.1, %5, !dbg !1538
  %and.1 = and i64 %xor.1, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and.1, !1540, !DIExpression(), !1541)
  %shl.1 = shl nuw i64 %and.1, 4, !dbg !1542
  %arrayidx2.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1546
  %6 = load i64, ptr %arrayidx2.1, align 8, !dbg !1543
  %xor3.1 = xor i64 %6, %shl.1, !dbg !1543
  store i64 %xor3.1, ptr %arrayidx2.1, align 8, !dbg !1543
  %arrayidx5.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1544
  %7 = load i64, ptr %arrayidx5.1, align 8, !dbg !1545
  %xor6.1 = xor i64 %7, %and.1, !dbg !1545
  store i64 %xor6.1, ptr %arrayidx5.1, align 8, !dbg !1545
    #dbg_value(i32 4, !1530, !DIExpression(), !1532)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1533
  %8 = load i64, ptr %arrayidx.2, align 8, !dbg !1533
  %shr.2 = lshr i64 %8, 4, !dbg !1536
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1537
  %9 = load i64, ptr %arrayidx1.2, align 8, !dbg !1537
  %xor.2 = xor i64 %shr.2, %9, !dbg !1538
  %and.2 = and i64 %xor.2, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and.2, !1540, !DIExpression(), !1541)
  %shl.2 = shl nuw i64 %and.2, 4, !dbg !1542
  %arrayidx2.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1546
  %10 = load i64, ptr %arrayidx2.2, align 8, !dbg !1543
  %xor3.2 = xor i64 %10, %shl.2, !dbg !1543
  store i64 %xor3.2, ptr %arrayidx2.2, align 8, !dbg !1543
  %arrayidx5.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1544
  %11 = load i64, ptr %arrayidx5.2, align 8, !dbg !1545
  %xor6.2 = xor i64 %11, %and.2, !dbg !1545
  store i64 %xor6.2, ptr %arrayidx5.2, align 8, !dbg !1545
    #dbg_value(i32 6, !1530, !DIExpression(), !1532)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1533
  %12 = load i64, ptr %arrayidx.3, align 8, !dbg !1533
  %shr.3 = lshr i64 %12, 4, !dbg !1536
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1537
  %13 = load i64, ptr %arrayidx1.3, align 8, !dbg !1537
  %xor.3 = xor i64 %shr.3, %13, !dbg !1538
  %and.3 = and i64 %xor.3, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and.3, !1540, !DIExpression(), !1541)
  %shl.3 = shl nuw i64 %and.3, 4, !dbg !1542
  %arrayidx2.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1546
  %14 = load i64, ptr %arrayidx2.3, align 8, !dbg !1543
  %xor3.3 = xor i64 %14, %shl.3, !dbg !1543
  store i64 %xor3.3, ptr %arrayidx2.3, align 8, !dbg !1543
  %arrayidx5.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1544
  %15 = load i64, ptr %arrayidx5.3, align 8, !dbg !1545
  %xor6.3 = xor i64 %15, %and.3, !dbg !1545
  store i64 %xor6.3, ptr %arrayidx5.3, align 8, !dbg !1545
    #dbg_value(i32 8, !1530, !DIExpression(), !1532)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1533
  %16 = load i64, ptr %arrayidx.4, align 8, !dbg !1533
  %shr.4 = lshr i64 %16, 4, !dbg !1536
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1537
  %17 = load i64, ptr %arrayidx1.4, align 8, !dbg !1537
  %xor.4 = xor i64 %shr.4, %17, !dbg !1538
  %and.4 = and i64 %xor.4, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and.4, !1540, !DIExpression(), !1541)
  %shl.4 = shl nuw i64 %and.4, 4, !dbg !1542
  %arrayidx2.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1546
  %18 = load i64, ptr %arrayidx2.4, align 8, !dbg !1543
  %xor3.4 = xor i64 %18, %shl.4, !dbg !1543
  store i64 %xor3.4, ptr %arrayidx2.4, align 8, !dbg !1543
  %arrayidx5.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1544
  %19 = load i64, ptr %arrayidx5.4, align 8, !dbg !1545
  %xor6.4 = xor i64 %19, %and.4, !dbg !1545
  store i64 %xor6.4, ptr %arrayidx5.4, align 8, !dbg !1545
    #dbg_value(i32 10, !1530, !DIExpression(), !1532)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1533
  %20 = load i64, ptr %arrayidx.5, align 8, !dbg !1533
  %shr.5 = lshr i64 %20, 4, !dbg !1536
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1537
  %21 = load i64, ptr %arrayidx1.5, align 8, !dbg !1537
  %xor.5 = xor i64 %shr.5, %21, !dbg !1538
  %and.5 = and i64 %xor.5, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and.5, !1540, !DIExpression(), !1541)
  %shl.5 = shl nuw i64 %and.5, 4, !dbg !1542
  %arrayidx2.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1546
  %22 = load i64, ptr %arrayidx2.5, align 8, !dbg !1543
  %xor3.5 = xor i64 %22, %shl.5, !dbg !1543
  store i64 %xor3.5, ptr %arrayidx2.5, align 8, !dbg !1543
  %arrayidx5.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1544
  %23 = load i64, ptr %arrayidx5.5, align 8, !dbg !1545
  %xor6.5 = xor i64 %23, %and.5, !dbg !1545
  store i64 %xor6.5, ptr %arrayidx5.5, align 8, !dbg !1545
    #dbg_value(i32 12, !1530, !DIExpression(), !1532)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1533
  %24 = load i64, ptr %arrayidx.6, align 8, !dbg !1533
  %shr.6 = lshr i64 %24, 4, !dbg !1536
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1537
  %25 = load i64, ptr %arrayidx1.6, align 8, !dbg !1537
  %xor.6 = xor i64 %shr.6, %25, !dbg !1538
  %and.6 = and i64 %xor.6, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and.6, !1540, !DIExpression(), !1541)
  %shl.6 = shl nuw i64 %and.6, 4, !dbg !1542
  %arrayidx2.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1546
  %26 = load i64, ptr %arrayidx2.6, align 8, !dbg !1543
  %xor3.6 = xor i64 %26, %shl.6, !dbg !1543
  store i64 %xor3.6, ptr %arrayidx2.6, align 8, !dbg !1543
  %arrayidx5.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1544
  %27 = load i64, ptr %arrayidx5.6, align 8, !dbg !1545
  %xor6.6 = xor i64 %27, %and.6, !dbg !1545
  store i64 %xor6.6, ptr %arrayidx5.6, align 8, !dbg !1545
    #dbg_value(i32 14, !1530, !DIExpression(), !1532)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1533
  %28 = load i64, ptr %arrayidx.7, align 8, !dbg !1533
  %shr.7 = lshr i64 %28, 4, !dbg !1536
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1537
  %29 = load i64, ptr %arrayidx1.7, align 8, !dbg !1537
  %xor.7 = xor i64 %shr.7, %29, !dbg !1538
  %and.7 = and i64 %xor.7, 1085102592571150095, !dbg !1539
    #dbg_value(i64 %and.7, !1540, !DIExpression(), !1541)
  %shl.7 = shl nuw i64 %and.7, 4, !dbg !1542
  %arrayidx2.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1546
  %30 = load i64, ptr %arrayidx2.7, align 8, !dbg !1543
  %xor3.7 = xor i64 %30, %shl.7, !dbg !1543
  store i64 %xor3.7, ptr %arrayidx2.7, align 8, !dbg !1543
  %arrayidx5.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1544
  %31 = load i64, ptr %arrayidx5.7, align 8, !dbg !1545
  %xor6.7 = xor i64 %31, %and.7, !dbg !1545
  store i64 %xor6.7, ptr %arrayidx5.7, align 8, !dbg !1545
    #dbg_value(i32 16, !1530, !DIExpression(), !1532)
    #dbg_value(i32 0, !1547, !DIExpression(), !1549)
  %32 = load i64, ptr %M, align 8, !dbg !1550
  %shr13 = lshr i64 %32, 8, !dbg !1553
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1554
  %33 = load i64, ptr %arrayidx15, align 8, !dbg !1554
  %xor16 = xor i64 %shr13, %33, !dbg !1555
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1556
    #dbg_value(i64 %and17, !1557, !DIExpression(), !1558)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1559
  %34 = load i64, ptr %arrayidx19, align 8, !dbg !1559
  %shr20 = lshr i64 %34, 8, !dbg !1560
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1561
  %35 = load i64, ptr %arrayidx22, align 8, !dbg !1561
  %xor23 = xor i64 %shr20, %35, !dbg !1562
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1563
    #dbg_value(i64 %and24, !1564, !DIExpression(), !1558)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1565
  %36 = load i64, ptr %M, align 8, !dbg !1566
  %xor27 = xor i64 %36, %shl25, !dbg !1566
  store i64 %xor27, ptr %M, align 8, !dbg !1566
  %shl28 = shl nuw i64 %and24, 8, !dbg !1567
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1568
  %37 = load i64, ptr %arrayidx30, align 8, !dbg !1569
  %xor31 = xor i64 %37, %shl28, !dbg !1569
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1569
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1570
  %38 = load i64, ptr %arrayidx33, align 8, !dbg !1571
  %xor34 = xor i64 %38, %and17, !dbg !1571
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1571
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1572
  %39 = load i64, ptr %arrayidx36, align 8, !dbg !1573
  %xor37 = xor i64 %39, %and24, !dbg !1573
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1573
    #dbg_value(i32 4, !1547, !DIExpression(), !1549)
  %arrayidx12.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1550
  %40 = load i64, ptr %arrayidx12.1, align 8, !dbg !1550
  %shr13.1 = lshr i64 %40, 8, !dbg !1553
  %arrayidx15.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1554
  %41 = load i64, ptr %arrayidx15.1, align 8, !dbg !1554
  %xor16.1 = xor i64 %shr13.1, %41, !dbg !1555
  %and17.1 = and i64 %xor16.1, 71777214294589695, !dbg !1556
    #dbg_value(i64 %and17.1, !1557, !DIExpression(), !1558)
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1559
  %42 = load i64, ptr %arrayidx19.1, align 8, !dbg !1559
  %shr20.1 = lshr i64 %42, 8, !dbg !1560
  %arrayidx22.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1561
  %43 = load i64, ptr %arrayidx22.1, align 8, !dbg !1561
  %xor23.1 = xor i64 %shr20.1, %43, !dbg !1562
  %and24.1 = and i64 %xor23.1, 71777214294589695, !dbg !1563
    #dbg_value(i64 %and24.1, !1564, !DIExpression(), !1558)
  %shl25.1 = shl nuw i64 %and17.1, 8, !dbg !1565
  %arrayidx26.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1574
  %44 = load i64, ptr %arrayidx26.1, align 8, !dbg !1566
  %xor27.1 = xor i64 %44, %shl25.1, !dbg !1566
  store i64 %xor27.1, ptr %arrayidx26.1, align 8, !dbg !1566
  %shl28.1 = shl nuw i64 %and24.1, 8, !dbg !1567
  %arrayidx30.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1568
  %45 = load i64, ptr %arrayidx30.1, align 8, !dbg !1569
  %xor31.1 = xor i64 %45, %shl28.1, !dbg !1569
  store i64 %xor31.1, ptr %arrayidx30.1, align 8, !dbg !1569
  %arrayidx33.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1570
  %46 = load i64, ptr %arrayidx33.1, align 8, !dbg !1571
  %xor34.1 = xor i64 %46, %and17.1, !dbg !1571
  store i64 %xor34.1, ptr %arrayidx33.1, align 8, !dbg !1571
  %arrayidx36.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1572
  %47 = load i64, ptr %arrayidx36.1, align 8, !dbg !1573
  %xor37.1 = xor i64 %47, %and24.1, !dbg !1573
  store i64 %xor37.1, ptr %arrayidx36.1, align 8, !dbg !1573
    #dbg_value(i32 8, !1547, !DIExpression(), !1549)
  %arrayidx12.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1550
  %48 = load i64, ptr %arrayidx12.2, align 8, !dbg !1550
  %shr13.2 = lshr i64 %48, 8, !dbg !1553
  %arrayidx15.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1554
  %49 = load i64, ptr %arrayidx15.2, align 8, !dbg !1554
  %xor16.2 = xor i64 %shr13.2, %49, !dbg !1555
  %and17.2 = and i64 %xor16.2, 71777214294589695, !dbg !1556
    #dbg_value(i64 %and17.2, !1557, !DIExpression(), !1558)
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1559
  %50 = load i64, ptr %arrayidx19.2, align 8, !dbg !1559
  %shr20.2 = lshr i64 %50, 8, !dbg !1560
  %arrayidx22.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1561
  %51 = load i64, ptr %arrayidx22.2, align 8, !dbg !1561
  %xor23.2 = xor i64 %shr20.2, %51, !dbg !1562
  %and24.2 = and i64 %xor23.2, 71777214294589695, !dbg !1563
    #dbg_value(i64 %and24.2, !1564, !DIExpression(), !1558)
  %shl25.2 = shl nuw i64 %and17.2, 8, !dbg !1565
  %arrayidx26.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1574
  %52 = load i64, ptr %arrayidx26.2, align 8, !dbg !1566
  %xor27.2 = xor i64 %52, %shl25.2, !dbg !1566
  store i64 %xor27.2, ptr %arrayidx26.2, align 8, !dbg !1566
  %shl28.2 = shl nuw i64 %and24.2, 8, !dbg !1567
  %arrayidx30.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1568
  %53 = load i64, ptr %arrayidx30.2, align 8, !dbg !1569
  %xor31.2 = xor i64 %53, %shl28.2, !dbg !1569
  store i64 %xor31.2, ptr %arrayidx30.2, align 8, !dbg !1569
  %arrayidx33.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1570
  %54 = load i64, ptr %arrayidx33.2, align 8, !dbg !1571
  %xor34.2 = xor i64 %54, %and17.2, !dbg !1571
  store i64 %xor34.2, ptr %arrayidx33.2, align 8, !dbg !1571
  %arrayidx36.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1572
  %55 = load i64, ptr %arrayidx36.2, align 8, !dbg !1573
  %xor37.2 = xor i64 %55, %and24.2, !dbg !1573
  store i64 %xor37.2, ptr %arrayidx36.2, align 8, !dbg !1573
    #dbg_value(i32 12, !1547, !DIExpression(), !1549)
  %arrayidx12.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1550
  %56 = load i64, ptr %arrayidx12.3, align 8, !dbg !1550
  %shr13.3 = lshr i64 %56, 8, !dbg !1553
  %arrayidx15.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1554
  %57 = load i64, ptr %arrayidx15.3, align 8, !dbg !1554
  %xor16.3 = xor i64 %shr13.3, %57, !dbg !1555
  %and17.3 = and i64 %xor16.3, 71777214294589695, !dbg !1556
    #dbg_value(i64 %and17.3, !1557, !DIExpression(), !1558)
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1559
  %58 = load i64, ptr %arrayidx19.3, align 8, !dbg !1559
  %shr20.3 = lshr i64 %58, 8, !dbg !1560
  %arrayidx22.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1561
  %59 = load i64, ptr %arrayidx22.3, align 8, !dbg !1561
  %xor23.3 = xor i64 %shr20.3, %59, !dbg !1562
  %and24.3 = and i64 %xor23.3, 71777214294589695, !dbg !1563
    #dbg_value(i64 %and24.3, !1564, !DIExpression(), !1558)
  %shl25.3 = shl nuw i64 %and17.3, 8, !dbg !1565
  %arrayidx26.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1574
  %60 = load i64, ptr %arrayidx26.3, align 8, !dbg !1566
  %xor27.3 = xor i64 %60, %shl25.3, !dbg !1566
  store i64 %xor27.3, ptr %arrayidx26.3, align 8, !dbg !1566
  %shl28.3 = shl nuw i64 %and24.3, 8, !dbg !1567
  %arrayidx30.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1568
  %61 = load i64, ptr %arrayidx30.3, align 8, !dbg !1569
  %xor31.3 = xor i64 %61, %shl28.3, !dbg !1569
  store i64 %xor31.3, ptr %arrayidx30.3, align 8, !dbg !1569
  %arrayidx33.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1570
  %62 = load i64, ptr %arrayidx33.3, align 8, !dbg !1571
  %xor34.3 = xor i64 %62, %and17.3, !dbg !1571
  store i64 %xor34.3, ptr %arrayidx33.3, align 8, !dbg !1571
  %arrayidx36.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1572
  %63 = load i64, ptr %arrayidx36.3, align 8, !dbg !1573
  %xor37.3 = xor i64 %63, %and24.3, !dbg !1573
  store i64 %xor37.3, ptr %arrayidx36.3, align 8, !dbg !1573
    #dbg_value(i32 16, !1547, !DIExpression(), !1549)
    #dbg_value(i32 0, !1575, !DIExpression(), !1577)
  %64 = load i64, ptr %M, align 8, !dbg !1578
  %shr47 = lshr i64 %64, 16, !dbg !1581
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1582
  %65 = load i64, ptr %arrayidx49, align 8, !dbg !1582
  %xor50 = xor i64 %shr47, %65, !dbg !1583
  %and51 = and i64 %xor50, 281470681808895, !dbg !1584
    #dbg_value(i64 %and51, !1585, !DIExpression(), !1586)
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1587
  %66 = load i64, ptr %arrayidx54, align 8, !dbg !1587
  %shr55 = lshr i64 %66, 16, !dbg !1588
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1589
  %67 = load i64, ptr %arrayidx57, align 8, !dbg !1589
  %xor58 = xor i64 %shr55, %67, !dbg !1590
  %and59 = and i64 %xor58, 281470681808895, !dbg !1591
    #dbg_value(i64 %and59, !1592, !DIExpression(), !1586)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1593
  %68 = load i64, ptr %M, align 8, !dbg !1594
  %xor62 = xor i64 %68, %shl60, !dbg !1594
  store i64 %xor62, ptr %M, align 8, !dbg !1594
  %shl63 = shl nuw i64 %and59, 16, !dbg !1595
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1596
  %69 = load i64, ptr %arrayidx65, align 8, !dbg !1597
  %xor66 = xor i64 %69, %shl63, !dbg !1597
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1597
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1598
  %70 = load i64, ptr %arrayidx68, align 8, !dbg !1599
  %xor69 = xor i64 %70, %and51, !dbg !1599
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1599
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1600
  %71 = load i64, ptr %arrayidx71, align 8, !dbg !1601
  %xor72 = xor i64 %71, %and59, !dbg !1601
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1601
    #dbg_value(i32 1, !1575, !DIExpression(), !1577)
  %arrayidx46.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1578
  %72 = load i64, ptr %arrayidx46.1, align 8, !dbg !1578
  %shr47.1 = lshr i64 %72, 16, !dbg !1581
  %arrayidx49.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1582
  %73 = load i64, ptr %arrayidx49.1, align 8, !dbg !1582
  %xor50.1 = xor i64 %shr47.1, %73, !dbg !1583
  %and51.1 = and i64 %xor50.1, 281470681808895, !dbg !1584
    #dbg_value(i64 %and51.1, !1585, !DIExpression(), !1586)
  %arrayidx54.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1587
  %74 = load i64, ptr %arrayidx54.1, align 8, !dbg !1587
  %shr55.1 = lshr i64 %74, 16, !dbg !1588
  %arrayidx57.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1589
  %75 = load i64, ptr %arrayidx57.1, align 8, !dbg !1589
  %xor58.1 = xor i64 %shr55.1, %75, !dbg !1590
  %and59.1 = and i64 %xor58.1, 281470681808895, !dbg !1591
    #dbg_value(i64 %and59.1, !1592, !DIExpression(), !1586)
  %shl60.1 = shl nuw i64 %and51.1, 16, !dbg !1593
  %arrayidx61.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1602
  %76 = load i64, ptr %arrayidx61.1, align 8, !dbg !1594
  %xor62.1 = xor i64 %76, %shl60.1, !dbg !1594
  store i64 %xor62.1, ptr %arrayidx61.1, align 8, !dbg !1594
  %shl63.1 = shl nuw i64 %and59.1, 16, !dbg !1595
  %arrayidx65.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1596
  %77 = load i64, ptr %arrayidx65.1, align 8, !dbg !1597
  %xor66.1 = xor i64 %77, %shl63.1, !dbg !1597
  store i64 %xor66.1, ptr %arrayidx65.1, align 8, !dbg !1597
  %arrayidx68.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1598
  %78 = load i64, ptr %arrayidx68.1, align 8, !dbg !1599
  %xor69.1 = xor i64 %78, %and51.1, !dbg !1599
  store i64 %xor69.1, ptr %arrayidx68.1, align 8, !dbg !1599
  %arrayidx71.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1600
  %79 = load i64, ptr %arrayidx71.1, align 8, !dbg !1601
  %xor72.1 = xor i64 %79, %and59.1, !dbg !1601
  store i64 %xor72.1, ptr %arrayidx71.1, align 8, !dbg !1601
    #dbg_value(i32 2, !1575, !DIExpression(), !1577)
  %arrayidx46.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1578
  %80 = load i64, ptr %arrayidx46.2, align 8, !dbg !1578
  %shr47.2 = lshr i64 %80, 16, !dbg !1581
  %arrayidx49.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1582
  %81 = load i64, ptr %arrayidx49.2, align 8, !dbg !1582
  %xor50.2 = xor i64 %shr47.2, %81, !dbg !1583
  %and51.2 = and i64 %xor50.2, 281470681808895, !dbg !1584
    #dbg_value(i64 %and51.2, !1585, !DIExpression(), !1586)
  %arrayidx54.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1587
  %82 = load i64, ptr %arrayidx54.2, align 8, !dbg !1587
  %shr55.2 = lshr i64 %82, 16, !dbg !1588
  %arrayidx57.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1589
  %83 = load i64, ptr %arrayidx57.2, align 8, !dbg !1589
  %xor58.2 = xor i64 %shr55.2, %83, !dbg !1590
  %and59.2 = and i64 %xor58.2, 281470681808895, !dbg !1591
    #dbg_value(i64 %and59.2, !1592, !DIExpression(), !1586)
  %shl60.2 = shl nuw i64 %and51.2, 16, !dbg !1593
  %arrayidx61.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1602
  %84 = load i64, ptr %arrayidx61.2, align 8, !dbg !1594
  %xor62.2 = xor i64 %84, %shl60.2, !dbg !1594
  store i64 %xor62.2, ptr %arrayidx61.2, align 8, !dbg !1594
  %shl63.2 = shl nuw i64 %and59.2, 16, !dbg !1595
  %arrayidx65.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1596
  %85 = load i64, ptr %arrayidx65.2, align 8, !dbg !1597
  %xor66.2 = xor i64 %85, %shl63.2, !dbg !1597
  store i64 %xor66.2, ptr %arrayidx65.2, align 8, !dbg !1597
  %arrayidx68.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1598
  %86 = load i64, ptr %arrayidx68.2, align 8, !dbg !1599
  %xor69.2 = xor i64 %86, %and51.2, !dbg !1599
  store i64 %xor69.2, ptr %arrayidx68.2, align 8, !dbg !1599
  %arrayidx71.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1600
  %87 = load i64, ptr %arrayidx71.2, align 8, !dbg !1601
  %xor72.2 = xor i64 %87, %and59.2, !dbg !1601
  store i64 %xor72.2, ptr %arrayidx71.2, align 8, !dbg !1601
    #dbg_value(i32 3, !1575, !DIExpression(), !1577)
  %arrayidx46.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1578
  %88 = load i64, ptr %arrayidx46.3, align 8, !dbg !1578
  %shr47.3 = lshr i64 %88, 16, !dbg !1581
  %arrayidx49.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1582
  %89 = load i64, ptr %arrayidx49.3, align 8, !dbg !1582
  %xor50.3 = xor i64 %shr47.3, %89, !dbg !1583
  %and51.3 = and i64 %xor50.3, 281470681808895, !dbg !1584
    #dbg_value(i64 %and51.3, !1585, !DIExpression(), !1586)
  %arrayidx54.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1587
  %90 = load i64, ptr %arrayidx54.3, align 8, !dbg !1587
  %shr55.3 = lshr i64 %90, 16, !dbg !1588
  %arrayidx57.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1589
  %91 = load i64, ptr %arrayidx57.3, align 8, !dbg !1589
  %xor58.3 = xor i64 %shr55.3, %91, !dbg !1590
  %and59.3 = and i64 %xor58.3, 281470681808895, !dbg !1591
    #dbg_value(i64 %and59.3, !1592, !DIExpression(), !1586)
  %shl60.3 = shl nuw i64 %and51.3, 16, !dbg !1593
  %arrayidx61.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1602
  %92 = load i64, ptr %arrayidx61.3, align 8, !dbg !1594
  %xor62.3 = xor i64 %92, %shl60.3, !dbg !1594
  store i64 %xor62.3, ptr %arrayidx61.3, align 8, !dbg !1594
  %shl63.3 = shl nuw i64 %and59.3, 16, !dbg !1595
  %arrayidx65.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1596
  %93 = load i64, ptr %arrayidx65.3, align 8, !dbg !1597
  %xor66.3 = xor i64 %93, %shl63.3, !dbg !1597
  store i64 %xor66.3, ptr %arrayidx65.3, align 8, !dbg !1597
  %arrayidx68.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1598
  %94 = load i64, ptr %arrayidx68.3, align 8, !dbg !1599
  %xor69.3 = xor i64 %94, %and51.3, !dbg !1599
  store i64 %xor69.3, ptr %arrayidx68.3, align 8, !dbg !1599
  %arrayidx71.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1600
  %95 = load i64, ptr %arrayidx71.3, align 8, !dbg !1601
  %xor72.3 = xor i64 %95, %and59.3, !dbg !1601
  store i64 %xor72.3, ptr %arrayidx71.3, align 8, !dbg !1601
    #dbg_value(i32 4, !1575, !DIExpression(), !1577)
    #dbg_value(i32 0, !1603, !DIExpression(), !1605)
  %96 = load i64, ptr %M, align 8, !dbg !1606
  %shr81 = lshr i64 %96, 32, !dbg !1609
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1610
  %97 = load i64, ptr %arrayidx83, align 8, !dbg !1610
  %.masked = and i64 %97, 4294967295, !dbg !1611
  %and85 = xor i64 %shr81, %.masked, !dbg !1611
    #dbg_value(i64 %and85, !1612, !DIExpression(), !1613)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1614
  %98 = load i64, ptr %M, align 8, !dbg !1615
  %xor88 = xor i64 %98, %shl86, !dbg !1615
  store i64 %xor88, ptr %M, align 8, !dbg !1615
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1616
  %99 = load i64, ptr %arrayidx90, align 8, !dbg !1617
  %xor91 = xor i64 %99, %and85, !dbg !1617
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1617
    #dbg_value(i32 1, !1603, !DIExpression(), !1605)
  %arrayidx80.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1606
  %100 = load i64, ptr %arrayidx80.1, align 8, !dbg !1606
  %shr81.1 = lshr i64 %100, 32, !dbg !1609
  %arrayidx83.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1610
  %101 = load i64, ptr %arrayidx83.1, align 8, !dbg !1610
  %.masked.1 = and i64 %101, 4294967295, !dbg !1611
  %and85.1 = xor i64 %shr81.1, %.masked.1, !dbg !1611
    #dbg_value(i64 %and85.1, !1612, !DIExpression(), !1613)
  %shl86.1 = shl nuw i64 %and85.1, 32, !dbg !1614
  %arrayidx87.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1618
  %102 = load i64, ptr %arrayidx87.1, align 8, !dbg !1615
  %xor88.1 = xor i64 %102, %shl86.1, !dbg !1615
  store i64 %xor88.1, ptr %arrayidx87.1, align 8, !dbg !1615
  %arrayidx90.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1616
  %103 = load i64, ptr %arrayidx90.1, align 8, !dbg !1617
  %xor91.1 = xor i64 %103, %and85.1, !dbg !1617
  store i64 %xor91.1, ptr %arrayidx90.1, align 8, !dbg !1617
    #dbg_value(i32 2, !1603, !DIExpression(), !1605)
  %arrayidx80.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1606
  %104 = load i64, ptr %arrayidx80.2, align 8, !dbg !1606
  %shr81.2 = lshr i64 %104, 32, !dbg !1609
  %arrayidx83.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1610
  %105 = load i64, ptr %arrayidx83.2, align 8, !dbg !1610
  %.masked.2 = and i64 %105, 4294967295, !dbg !1611
  %and85.2 = xor i64 %shr81.2, %.masked.2, !dbg !1611
    #dbg_value(i64 %and85.2, !1612, !DIExpression(), !1613)
  %shl86.2 = shl nuw i64 %and85.2, 32, !dbg !1614
  %arrayidx87.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1618
  %106 = load i64, ptr %arrayidx87.2, align 8, !dbg !1615
  %xor88.2 = xor i64 %106, %shl86.2, !dbg !1615
  store i64 %xor88.2, ptr %arrayidx87.2, align 8, !dbg !1615
  %arrayidx90.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1616
  %107 = load i64, ptr %arrayidx90.2, align 8, !dbg !1617
  %xor91.2 = xor i64 %107, %and85.2, !dbg !1617
  store i64 %xor91.2, ptr %arrayidx90.2, align 8, !dbg !1617
    #dbg_value(i32 3, !1603, !DIExpression(), !1605)
  %arrayidx80.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1606
  %108 = load i64, ptr %arrayidx80.3, align 8, !dbg !1606
  %shr81.3 = lshr i64 %108, 32, !dbg !1609
  %arrayidx83.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1610
  %109 = load i64, ptr %arrayidx83.3, align 8, !dbg !1610
  %.masked.3 = and i64 %109, 4294967295, !dbg !1611
  %and85.3 = xor i64 %shr81.3, %.masked.3, !dbg !1611
    #dbg_value(i64 %and85.3, !1612, !DIExpression(), !1613)
  %shl86.3 = shl nuw i64 %and85.3, 32, !dbg !1614
  %arrayidx87.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1618
  %110 = load i64, ptr %arrayidx87.3, align 8, !dbg !1615
  %xor88.3 = xor i64 %110, %shl86.3, !dbg !1615
  store i64 %xor88.3, ptr %arrayidx87.3, align 8, !dbg !1615
  %arrayidx90.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1616
  %111 = load i64, ptr %arrayidx90.3, align 8, !dbg !1617
  %xor91.3 = xor i64 %111, %and85.3, !dbg !1617
  store i64 %xor91.3, ptr %arrayidx90.3, align 8, !dbg !1617
    #dbg_value(i32 4, !1603, !DIExpression(), !1605)
  %arrayidx80.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1606
  %112 = load i64, ptr %arrayidx80.4, align 8, !dbg !1606
  %shr81.4 = lshr i64 %112, 32, !dbg !1609
  %arrayidx83.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1610
  %113 = load i64, ptr %arrayidx83.4, align 8, !dbg !1610
  %.masked.4 = and i64 %113, 4294967295, !dbg !1611
  %and85.4 = xor i64 %shr81.4, %.masked.4, !dbg !1611
    #dbg_value(i64 %and85.4, !1612, !DIExpression(), !1613)
  %shl86.4 = shl nuw i64 %and85.4, 32, !dbg !1614
  %arrayidx87.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1618
  %114 = load i64, ptr %arrayidx87.4, align 8, !dbg !1615
  %xor88.4 = xor i64 %114, %shl86.4, !dbg !1615
  store i64 %xor88.4, ptr %arrayidx87.4, align 8, !dbg !1615
  %arrayidx90.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1616
  %115 = load i64, ptr %arrayidx90.4, align 8, !dbg !1617
  %xor91.4 = xor i64 %115, %and85.4, !dbg !1617
  store i64 %xor91.4, ptr %arrayidx90.4, align 8, !dbg !1617
    #dbg_value(i32 5, !1603, !DIExpression(), !1605)
  %arrayidx80.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1606
  %116 = load i64, ptr %arrayidx80.5, align 8, !dbg !1606
  %shr81.5 = lshr i64 %116, 32, !dbg !1609
  %arrayidx83.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1610
  %117 = load i64, ptr %arrayidx83.5, align 8, !dbg !1610
  %.masked.5 = and i64 %117, 4294967295, !dbg !1611
  %and85.5 = xor i64 %shr81.5, %.masked.5, !dbg !1611
    #dbg_value(i64 %and85.5, !1612, !DIExpression(), !1613)
  %shl86.5 = shl nuw i64 %and85.5, 32, !dbg !1614
  %arrayidx87.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1618
  %118 = load i64, ptr %arrayidx87.5, align 8, !dbg !1615
  %xor88.5 = xor i64 %118, %shl86.5, !dbg !1615
  store i64 %xor88.5, ptr %arrayidx87.5, align 8, !dbg !1615
  %arrayidx90.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1616
  %119 = load i64, ptr %arrayidx90.5, align 8, !dbg !1617
  %xor91.5 = xor i64 %119, %and85.5, !dbg !1617
  store i64 %xor91.5, ptr %arrayidx90.5, align 8, !dbg !1617
    #dbg_value(i32 6, !1603, !DIExpression(), !1605)
  %arrayidx80.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1606
  %120 = load i64, ptr %arrayidx80.6, align 8, !dbg !1606
  %shr81.6 = lshr i64 %120, 32, !dbg !1609
  %arrayidx83.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1610
  %121 = load i64, ptr %arrayidx83.6, align 8, !dbg !1610
  %.masked.6 = and i64 %121, 4294967295, !dbg !1611
  %and85.6 = xor i64 %shr81.6, %.masked.6, !dbg !1611
    #dbg_value(i64 %and85.6, !1612, !DIExpression(), !1613)
  %shl86.6 = shl nuw i64 %and85.6, 32, !dbg !1614
  %arrayidx87.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1618
  %122 = load i64, ptr %arrayidx87.6, align 8, !dbg !1615
  %xor88.6 = xor i64 %122, %shl86.6, !dbg !1615
  store i64 %xor88.6, ptr %arrayidx87.6, align 8, !dbg !1615
  %arrayidx90.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1616
  %123 = load i64, ptr %arrayidx90.6, align 8, !dbg !1617
  %xor91.6 = xor i64 %123, %and85.6, !dbg !1617
  store i64 %xor91.6, ptr %arrayidx90.6, align 8, !dbg !1617
    #dbg_value(i32 7, !1603, !DIExpression(), !1605)
  %arrayidx80.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1606
  %124 = load i64, ptr %arrayidx80.7, align 8, !dbg !1606
  %shr81.7 = lshr i64 %124, 32, !dbg !1609
  %arrayidx83.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1610
  %125 = load i64, ptr %arrayidx83.7, align 8, !dbg !1610
  %.masked.7 = and i64 %125, 4294967295, !dbg !1611
  %and85.7 = xor i64 %shr81.7, %.masked.7, !dbg !1611
    #dbg_value(i64 %and85.7, !1612, !DIExpression(), !1613)
  %shl86.7 = shl nuw i64 %and85.7, 32, !dbg !1614
  %arrayidx87.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1618
  %126 = load i64, ptr %arrayidx87.7, align 8, !dbg !1615
  %xor88.7 = xor i64 %126, %shl86.7, !dbg !1615
  store i64 %xor88.7, ptr %arrayidx87.7, align 8, !dbg !1615
  %arrayidx90.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1616
  %127 = load i64, ptr %arrayidx90.7, align 8, !dbg !1617
  %xor91.7 = xor i64 %127, %and85.7, !dbg !1617
  store i64 %xor91.7, ptr %arrayidx90.7, align 8, !dbg !1617
    #dbg_value(i32 8, !1603, !DIExpression(), !1605)
  ret void, !dbg !1619
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1620 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1621, !DIExpression(), !1622)
    #dbg_value(ptr %mat, !1623, !DIExpression(), !1622)
    #dbg_value(ptr %bs_mat, !1624, !DIExpression(), !1622)
    #dbg_value(ptr %acc, !1625, !DIExpression(), !1622)
    #dbg_value(i32 %mat_rows, !1626, !DIExpression(), !1622)
    #dbg_value(i32 %mat_cols, !1627, !DIExpression(), !1622)
    #dbg_value(i32 %bs_mat_cols, !1628, !DIExpression(), !1622)
    #dbg_value(i32 0, !1629, !DIExpression(), !1631)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1632
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1632
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1632
  br label %for.cond, !dbg !1632

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1633
    #dbg_value(i32 %r.0, !1629, !DIExpression(), !1631)
  %exitcond4.not = icmp eq i32 %r.0, %smax3, !dbg !1634
  br i1 %exitcond4.not, label %for.end19, label %for.cond1, !dbg !1636

for.cond1:                                        ; preds = %for.cond, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond ], !dbg !1637
    #dbg_value(i32 %c.0, !1640, !DIExpression(), !1641)
  %exitcond2.not = icmp eq i32 %c.0, %smax1, !dbg !1642
  br i1 %exitcond2.not, label %for.inc17, label %for.cond4, !dbg !1644

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond1 ], !dbg !1645
    #dbg_value(i32 %k.0, !1648, !DIExpression(), !1649)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1650
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1652

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1653
  %add = add nsw i32 %mul, %k.0, !dbg !1655
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1656
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1657
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1658
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1659
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1659
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1659
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1660
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1661
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1662
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1663
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1664
  %add14 = add nuw i32 %k.0, 1, !dbg !1665
    #dbg_value(i32 %add14, !1648, !DIExpression(), !1649)
  br label %for.cond4, !dbg !1666, !llvm.loop !1667

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1669
    #dbg_value(i32 %inc, !1640, !DIExpression(), !1641)
  br label %for.cond1, !dbg !1670, !llvm.loop !1671

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1673
    #dbg_value(i32 %inc18, !1629, !DIExpression(), !1631)
  br label %for.cond, !dbg !1674, !llvm.loop !1675

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1677
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1678 {
entry:
    #dbg_value(ptr %p, !1679, !DIExpression(), !1680)
    #dbg_value(ptr %P1, !1681, !DIExpression(), !1680)
    #dbg_value(ptr %V, !1682, !DIExpression(), !1680)
    #dbg_value(ptr %acc, !1683, !DIExpression(), !1680)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 4, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 4, i32 noundef 1) #6, !dbg !1684
  ret void, !dbg !1685
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1686 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1687, !DIExpression(), !1688)
    #dbg_value(ptr %bs_mat, !1689, !DIExpression(), !1688)
    #dbg_value(ptr %mat, !1690, !DIExpression(), !1688)
    #dbg_value(ptr %acc, !1691, !DIExpression(), !1688)
    #dbg_value(i32 %bs_mat_rows, !1692, !DIExpression(), !1688)
    #dbg_value(i32 %bs_mat_cols, !1693, !DIExpression(), !1688)
    #dbg_value(i32 %mat_rows, !1694, !DIExpression(), !1688)
    #dbg_value(i32 %triangular, !1695, !DIExpression(), !1688)
    #dbg_value(i32 0, !1696, !DIExpression(), !1688)
    #dbg_value(i32 0, !1697, !DIExpression(), !1699)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1700
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1700
  br label %for.cond, !dbg !1700

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1, %for.inc17 ], !dbg !1701
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1702
    #dbg_value(i32 %r.0, !1697, !DIExpression(), !1699)
    #dbg_value(i32 %bs_mat_entries_used.0, !1696, !DIExpression(), !1688)
  %exitcond2.not = icmp eq i32 %r.0, %smax1, !dbg !1703
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !1705

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1706
    #dbg_value(i32 %mul, !1709, !DIExpression(), !1710)
  br label %for.cond1, !dbg !1711

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1688
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1712
    #dbg_value(i32 %c.0, !1709, !DIExpression(), !1710)
    #dbg_value(i32 %bs_mat_entries_used.1, !1696, !DIExpression(), !1688)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1713
  br i1 %cmp2, label %for.cond4, label %for.inc17, !dbg !1715

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond1 ], !dbg !1716
    #dbg_value(i32 %k.0, !1719, !DIExpression(), !1720)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1721
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1723

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1724
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1726
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1727
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1728
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1728
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1728
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1729
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1730
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1731
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1732
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1733
  %add13 = add nuw i32 %k.0, 1, !dbg !1734
    #dbg_value(i32 %add13, !1719, !DIExpression(), !1720)
  br label %for.cond4, !dbg !1735, !llvm.loop !1736

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1688)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1738
    #dbg_value(i32 %add14, !1696, !DIExpression(), !1688)
  %inc = add nsw i32 %c.0, 1, !dbg !1739
    #dbg_value(i32 %inc, !1709, !DIExpression(), !1710)
  br label %for.cond1, !dbg !1740, !llvm.loop !1741

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1743
    #dbg_value(i32 %inc18, !1697, !DIExpression(), !1699)
  br label %for.cond, !dbg !1744, !llvm.loop !1745

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1747
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1748 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1749, !DIExpression(), !1750)
    #dbg_value(ptr %sm, !1751, !DIExpression(), !1750)
    #dbg_value(ptr %smlen, !1752, !DIExpression(), !1750)
    #dbg_value(ptr %m, !1753, !DIExpression(), !1750)
    #dbg_value(i32 %mlen, !1754, !DIExpression(), !1750)
    #dbg_value(ptr %csk, !1755, !DIExpression(), !1750)
    #dbg_value(i32 0, !1756, !DIExpression(), !1750)
    #dbg_value(i32 186, !1757, !DIExpression(), !1750)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1758
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1759
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1760
    #dbg_value(ptr %siglen, !1761, !DIExpression(DW_OP_deref), !1750)
  %call2 = call i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1762
    #dbg_value(i32 %call2, !1756, !DIExpression(), !1750)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1763
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1761, !DIExpression(), !1750)
  %cmp3.not = icmp eq i32 %0, 186
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1765
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1765

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1766
    #dbg_value(i32 %1, !1761, !DIExpression(), !1750)
  %add = add i32 %1, %mlen, !dbg !1768
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1769
  br label %err, !dbg !1770

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1771
    #dbg_value(i32 %2, !1761, !DIExpression(), !1750)
  %add5 = add i32 %2, %mlen, !dbg !1772
  store i32 %add5, ptr %smlen, align 4, !dbg !1773
  br label %err, !dbg !1774

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1775, !1776)
  ret i32 %call2, !dbg !1777
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1778 {
entry:
    #dbg_value(ptr %p, !1779, !DIExpression(), !1780)
    #dbg_value(ptr %m, !1781, !DIExpression(), !1780)
    #dbg_value(ptr %mlen, !1782, !DIExpression(), !1780)
    #dbg_value(ptr %sm, !1783, !DIExpression(), !1780)
    #dbg_value(i32 %smlen, !1784, !DIExpression(), !1780)
    #dbg_value(ptr %pk, !1785, !DIExpression(), !1780)
    #dbg_value(i32 186, !1786, !DIExpression(), !1780)
  %cmp = icmp ult i32 %smlen, 186, !dbg !1787
  br i1 %cmp, label %return, label %if.end, !dbg !1787

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1789
  %sub = add i32 %smlen, -186, !dbg !1790
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1791
    #dbg_value(i32 %call, !1792, !DIExpression(), !1780)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1793
  br i1 %cmp1, label %if.then2, label %return, !dbg !1793

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -186, !dbg !1795
  store i32 %sub3, ptr %mlen, align 4, !dbg !1797
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1798
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1799
  br label %return, !dbg !1800

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %call, %if.then2 ], [ %call, %if.end ], !dbg !1780
  ret i32 %retval.0, !dbg !1801
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1802 {
entry:
  %tEnc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [128 x i8], align 1
  %s = alloca [324 x i8], align 1
  %pk = alloca [13284 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1805, !DIExpression(), !1806)
    #dbg_value(ptr %m, !1807, !DIExpression(), !1806)
    #dbg_value(i32 %mlen, !1808, !DIExpression(), !1806)
    #dbg_value(ptr %sig, !1809, !DIExpression(), !1806)
    #dbg_value(ptr %cpk, !1810, !DIExpression(), !1806)
    #dbg_declare(ptr %tEnc, !1811, !DIExpression(), !1812)
    #dbg_declare(ptr %t, !1813, !DIExpression(), !1814)
    #dbg_declare(ptr %y, !1815, !DIExpression(), !1819)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %y, i8 0, i32 128, i1 false), !dbg !1819
    #dbg_declare(ptr %s, !1820, !DIExpression(), !1821)
    #dbg_declare(ptr %pk, !1822, !DIExpression(), !1823)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(106272) %pk, i8 0, i32 106272, i1 false), !dbg !1823
    #dbg_declare(ptr %tmp, !1824, !DIExpression(), !1828)
    #dbg_value(i32 64, !1829, !DIExpression(), !1806)
    #dbg_value(i32 81, !1830, !DIExpression(), !1806)
    #dbg_value(i32 4, !1831, !DIExpression(), !1806)
    #dbg_value(i32 32, !1832, !DIExpression(), !1806)
    #dbg_value(i32 186, !1833, !DIExpression(), !1806)
    #dbg_value(i32 32, !1834, !DIExpression(), !1806)
    #dbg_value(i32 24, !1835, !DIExpression(), !1806)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1836
    #dbg_value(i32 %call, !1837, !DIExpression(), !1806)
  %cmp.not = icmp eq i32 %call, 0, !dbg !1838
  br i1 %cmp.not, label %if.end, label %return, !dbg !1838

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !1840, !DIExpression(), !1806)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 66560, !dbg !1841
    #dbg_value(ptr %add.ptr, !1842, !DIExpression(), !1806)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1843
    #dbg_value(ptr %add.ptr2, !1844, !DIExpression(), !1806)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1845
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1846
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !1847
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !1848
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !1849
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !1850
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 324) #6, !dbg !1851
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1852
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 64) #8, !dbg !1853
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1855
  %. = zext i1 %cmp21 to i32, !dbg !1806
  br label %return, !dbg !1806

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !1806
  ret i32 %retval.0, !dbg !1856
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1857 {
entry:
    #dbg_value(ptr %p, !1858, !DIExpression(), !1859)
    #dbg_value(ptr %cpk, !1860, !DIExpression(), !1859)
    #dbg_value(ptr %pk, !1861, !DIExpression(), !1859)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1862
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1863
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !1864
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 153, i32 noundef 64) #6, !dbg !1865
  ret i32 0, !dbg !1866
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !1867 {
entry:
  %SPS = alloca [64 x i64], align 8
  %zero = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !1870, !DIExpression(), !1871)
    #dbg_value(ptr %s, !1872, !DIExpression(), !1871)
    #dbg_value(ptr %P1, !1873, !DIExpression(), !1871)
    #dbg_value(ptr %P2, !1874, !DIExpression(), !1871)
    #dbg_value(ptr %P3, !1875, !DIExpression(), !1871)
    #dbg_value(ptr %eval, !1876, !DIExpression(), !1871)
    #dbg_declare(ptr %SPS, !1877, !DIExpression(), !1879)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %SPS, i8 0, i32 512, i1 false), !dbg !1879
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1880
    #dbg_declare(ptr %zero, !1881, !DIExpression(), !1882)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %zero, i8 0, i32 64, i1 false), !dbg !1882
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1883
  ret void, !dbg !1884
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !1885 {
entry:
  %PS = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !1888, !DIExpression(), !1889)
    #dbg_value(ptr %P1, !1890, !DIExpression(), !1889)
    #dbg_value(ptr %P2, !1891, !DIExpression(), !1889)
    #dbg_value(ptr %P3, !1892, !DIExpression(), !1889)
    #dbg_value(ptr %s, !1893, !DIExpression(), !1889)
    #dbg_value(ptr %SPS, !1894, !DIExpression(), !1889)
    #dbg_declare(ptr %PS, !1895, !DIExpression(), !1899)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %PS, i8 0, i32 10368, i1 false), !dbg !1899
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %PS) #6, !dbg !1900
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 64, i32 noundef 4, i32 noundef 81, ptr noundef %SPS) #6, !dbg !1901
  ret void, !dbg !1902
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !1903 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %P1, !1906, !DIExpression(), !1907)
    #dbg_value(ptr %P2, !1908, !DIExpression(), !1907)
    #dbg_value(ptr %P3, !1909, !DIExpression(), !1907)
    #dbg_value(ptr %S, !1910, !DIExpression(), !1907)
    #dbg_value(i32 %m, !1911, !DIExpression(), !1907)
    #dbg_value(i32 %v, !1912, !DIExpression(), !1907)
    #dbg_value(i32 %o, !1913, !DIExpression(), !1907)
    #dbg_value(i32 %k, !1914, !DIExpression(), !1907)
    #dbg_value(ptr %PS, !1915, !DIExpression(), !1907)
  %add = add i32 %o, %v, !dbg !1916
    #dbg_value(i32 %add, !1917, !DIExpression(), !1907)
  %add1 = add nsw i32 %m, 15, !dbg !1918
  %div = sdiv i32 %add1, 16, !dbg !1919
    #dbg_value(i32 %div, !1920, !DIExpression(), !1907)
    #dbg_declare(ptr %accumulator, !1921, !DIExpression(), !1925)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !1925
    #dbg_value(i32 0, !1926, !DIExpression(), !1907)
    #dbg_value(i32 0, !1927, !DIExpression(), !1929)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !1930
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !1930
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !1930
  br label %for.cond, !dbg !1930

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !1931
  %P1_used.0 = phi i32 [ %P1_used.1, %for.inc52 ], [ 0, %entry ], !dbg !1931
  %row.0 = phi i32 [ %inc53, %for.inc52 ], [ 0, %entry ], !dbg !1932
    #dbg_value(i32 %row.0, !1927, !DIExpression(), !1929)
    #dbg_value(i32 %P1_used.0, !1926, !DIExpression(), !1907)
  %exitcond6.not = icmp eq i32 %row.0, %smax5, !dbg !1933
  br i1 %exitcond6.not, label %for.cond56.preheader, label %for.cond2.preheader, !dbg !1935

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !1936
  br label %for.cond2, !dbg !1936

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !1939
  br label %for.cond56, !dbg !1939

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !1907
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !1941
    #dbg_value(i32 %j.0, !1942, !DIExpression(), !1943)
    #dbg_value(i32 %P1_used.1, !1926, !DIExpression(), !1907)
  %exitcond1.not = icmp eq i32 %P1_used.1, %0, !dbg !1944
  br i1 %exitcond1.not, label %for.cond21, label %for.cond5, !dbg !1936

for.cond5:                                        ; preds = %for.cond2, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond2 ], !dbg !1946
    #dbg_value(i32 %col.0, !1949, !DIExpression(), !1950)
  %exitcond.not = icmp eq i32 %col.0, %smax, !dbg !1951
  br i1 %exitcond.not, label %for.inc17, label %for.body7, !dbg !1953

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !1954
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !1956
  %mul8 = mul nsw i32 %row.0, %k, !dbg !1957
  %add9 = add nsw i32 %mul8, %col.0, !dbg !1958
  %mul10 = shl nsw i32 %add9, 4, !dbg !1959
  %mul11 = mul nsw i32 %col.0, %add, !dbg !1960
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !1961
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !1961
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1961
  %conv = zext i8 %2 to i32, !dbg !1961
  %add13 = add nsw i32 %mul10, %conv, !dbg !1962
  %mul14 = mul nsw i32 %add13, %div, !dbg !1963
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !1964
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !1965
  %inc = add nuw i32 %col.0, 1, !dbg !1966
    #dbg_value(i32 %inc, !1949, !DIExpression(), !1950)
  br label %for.cond5, !dbg !1967, !llvm.loop !1968

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !1926, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1907)
  %inc16 = add i32 %P1_used.1, 1, !dbg !1970
    #dbg_value(i32 %inc16, !1926, !DIExpression(), !1907)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !1971
    #dbg_value(i32 %inc18, !1942, !DIExpression(), !1943)
  br label %for.cond2, !dbg !1972, !llvm.loop !1973

for.cond21:                                       ; preds = %for.cond2, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond2 ], !dbg !1975
    #dbg_value(i32 %j20.0, !1977, !DIExpression(), !1978)
  %exitcond4.not = icmp eq i32 %j20.0, %smax3, !dbg !1979
  br i1 %exitcond4.not, label %for.inc52, label %for.cond26, !dbg !1981

for.cond26:                                       ; preds = %for.cond21, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond21 ], !dbg !1982
    #dbg_value(i32 %col25.0, !1985, !DIExpression(), !1986)
  %exitcond2.not = icmp eq i32 %col25.0, %smax, !dbg !1987
  br i1 %exitcond2.not, label %for.inc49, label %for.body29, !dbg !1989

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !1990
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !1992
  %mul32 = mul nsw i32 %add31, %div, !dbg !1993
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !1994
  %mul35 = mul nsw i32 %row.0, %k, !dbg !1995
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !1996
  %mul37 = shl nsw i32 %add36, 4, !dbg !1997
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !1998
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !1999
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !1999
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !1999
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !1999
  %conv42 = zext i8 %5 to i32, !dbg !1999
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2000
  %mul44 = mul nsw i32 %add43, %div, !dbg !2001
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2002
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2003
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2004
    #dbg_value(i32 %inc47, !1985, !DIExpression(), !1986)
  br label %for.cond26, !dbg !2005, !llvm.loop !2006

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2008
    #dbg_value(i32 %inc50, !1977, !DIExpression(), !1978)
  br label %for.cond21, !dbg !2009, !llvm.loop !2010

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2012
    #dbg_value(i32 %inc53, !1927, !DIExpression(), !1929)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2013
  br label %for.cond, !dbg !2013, !llvm.loop !2014

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2016
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2017
    #dbg_value(i32 %row55.0, !2018, !DIExpression(), !2019)
    #dbg_value(i32 %P3_used.0, !2020, !DIExpression(), !1907)
  %exitcond9.not = icmp eq i32 %row55.0, %smax8, !dbg !2021
  br i1 %exitcond9.not, label %while.cond.preheader, label %for.cond61, !dbg !1939

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2023
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2023
  br label %while.cond, !dbg !2023

for.cond61:                                       ; preds = %for.cond56, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond56 ], !dbg !1907
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond56 ], !dbg !2024
    #dbg_value(i32 %j60.0, !2027, !DIExpression(), !2028)
    #dbg_value(i32 %P3_used.1, !2020, !DIExpression(), !1907)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2029
  br i1 %cmp62, label %for.cond66, label %for.inc90, !dbg !2031

for.cond66:                                       ; preds = %for.cond61, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond61 ], !dbg !2032
    #dbg_value(i32 %col65.0, !2035, !DIExpression(), !2036)
  %exitcond7.not = icmp eq i32 %col65.0, %smax, !dbg !2037
  br i1 %exitcond7.not, label %for.inc87, label %for.body69, !dbg !2039

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2040
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2042
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2043
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2044
  %mul75 = shl nsw i32 %add74, 4, !dbg !2045
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2046
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2047
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2047
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2047
  %conv79 = zext i8 %8 to i32, !dbg !2047
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2048
  %mul81 = mul nsw i32 %add80, %div, !dbg !2049
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2050
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2051
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2052
    #dbg_value(i32 %inc84, !2035, !DIExpression(), !2036)
  br label %for.cond66, !dbg !2053, !llvm.loop !2054

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2020, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1907)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2056
    #dbg_value(i32 %inc86, !2020, !DIExpression(), !1907)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2057
    #dbg_value(i32 %inc88, !2027, !DIExpression(), !2028)
  br label %for.cond61, !dbg !2058, !llvm.loop !2059

for.inc90:                                        ; preds = %for.cond61
  %inc91 = add i32 %row55.0, 1, !dbg !2061
    #dbg_value(i32 %inc91, !2018, !DIExpression(), !2019)
  br label %for.cond56, !dbg !2062, !llvm.loop !2063

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !1907
    #dbg_value(i32 %i.0, !2065, !DIExpression(), !1907)
  %exitcond11.not = icmp eq i32 %i.0, %smax10, !dbg !2066
  br i1 %exitcond11.not, label %while.end, label %while.body, !dbg !2023

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2067
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2069
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2070
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2071
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2072
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2073
  %inc102 = add nuw i32 %i.0, 1, !dbg !2074
    #dbg_value(i32 %inc102, !2065, !DIExpression(), !1907)
  br label %while.cond, !dbg !2023, !llvm.loop !2075

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2077
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2078 {
entry:
  %accumulator = alloca [1024 x i64], align 8
    #dbg_value(ptr %PS, !2081, !DIExpression(), !2082)
    #dbg_value(ptr %S, !2083, !DIExpression(), !2082)
    #dbg_value(i32 %m, !2084, !DIExpression(), !2082)
    #dbg_value(i32 %k, !2085, !DIExpression(), !2082)
    #dbg_value(i32 %n, !2086, !DIExpression(), !2082)
    #dbg_value(ptr %SPS, !2087, !DIExpression(), !2082)
    #dbg_declare(ptr %accumulator, !2088, !DIExpression(), !2089)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %accumulator, i8 0, i32 8192, i1 false), !dbg !2089
  %add = add nsw i32 %m, 15, !dbg !2090
  %div = sdiv i32 %add, 16, !dbg !2091
    #dbg_value(i32 %div, !2092, !DIExpression(), !2082)
    #dbg_value(i32 0, !2093, !DIExpression(), !2095)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2096
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2096
  br label %for.cond, !dbg !2096

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2097
    #dbg_value(i32 %row.0, !2093, !DIExpression(), !2095)
  %exitcond3.not = icmp eq i32 %row.0, %smax2, !dbg !2098
  br i1 %exitcond3.not, label %while.cond.preheader, label %for.cond1, !dbg !2100

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2101
  br label %while.cond, !dbg !2101

for.cond1:                                        ; preds = %for.cond, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond ], !dbg !2102
    #dbg_value(i32 %j.0, !2105, !DIExpression(), !2106)
  %exitcond1.not = icmp eq i32 %j.0, %smax, !dbg !2107
  br i1 %exitcond1.not, label %for.inc20, label %for.cond4, !dbg !2109

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond1 ], !dbg !2110
    #dbg_value(i32 %col.0, !2113, !DIExpression(), !2114)
  %exitcond.not = icmp eq i32 %col.0, %k, !dbg !2115
  br i1 %exitcond.not, label %for.inc18, label %for.body6, !dbg !2117

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2118
  %add7 = add nsw i32 %mul, %col.0, !dbg !2120
  %mul8 = mul nsw i32 %add7, %div, !dbg !2121
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2122
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2123
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2124
  %mul11 = shl nsw i32 %add10, 4, !dbg !2125
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2126
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2127
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2127
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2127
  %conv = zext i8 %2 to i32, !dbg !2127
  %add14 = add nsw i32 %mul11, %conv, !dbg !2128
  %mul15 = mul nsw i32 %add14, %div, !dbg !2129
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2130
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2131
  %add17 = add nuw i32 %col.0, 1, !dbg !2132
    #dbg_value(i32 %add17, !2113, !DIExpression(), !2114)
  br label %for.cond4, !dbg !2133, !llvm.loop !2134

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2136
    #dbg_value(i32 %inc, !2105, !DIExpression(), !2106)
  br label %for.cond1, !dbg !2137, !llvm.loop !2138

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2140
    #dbg_value(i32 %inc21, !2093, !DIExpression(), !2095)
  br label %for.cond, !dbg !2141, !llvm.loop !2142

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2082
    #dbg_value(i32 %i.0, !2144, !DIExpression(), !2082)
  %exitcond4.not = icmp eq i32 %i.0, %0, !dbg !2145
  br i1 %exitcond4.not, label %while.end, label %while.body, !dbg !2101

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2146
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2148
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2149
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2150
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2151
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2152
  %inc32 = add nuw i32 %i.0, 1, !dbg !2153
    #dbg_value(i32 %inc32, !2144, !DIExpression(), !2082)
  br label %while.cond, !dbg !2101, !llvm.loop !2154

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2156
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2157 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2160, !DIExpression(), !2161)
    #dbg_value(ptr %in, !2162, !DIExpression(), !2161)
    #dbg_value(ptr %acc, !2163, !DIExpression(), !2161)
    #dbg_value(i32 0, !2164, !DIExpression(), !2166)
    #dbg_value(i32 0, !2164, !DIExpression(), !2166)
  %0 = load i64, ptr %in, align 8, !dbg !2167
  %1 = load i64, ptr %acc, align 8, !dbg !2170
  %xor = xor i64 %1, %0, !dbg !2170
  store i64 %xor, ptr %acc, align 8, !dbg !2170
    #dbg_value(i32 1, !2164, !DIExpression(), !2166)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2167
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2167
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2171
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2170
  %xor.1 = xor i64 %3, %2, !dbg !2170
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2170
    #dbg_value(i32 2, !2164, !DIExpression(), !2166)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2167
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2167
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2171
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2170
  %xor.2 = xor i64 %5, %4, !dbg !2170
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2170
    #dbg_value(i32 3, !2164, !DIExpression(), !2166)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2167
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2167
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2171
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2170
  %xor.3 = xor i64 %7, %6, !dbg !2170
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2170
    #dbg_value(i32 4, !2164, !DIExpression(), !2166)
  ret void, !dbg !2172
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2173 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2176, !DIExpression(), !2177)
    #dbg_value(ptr %bins, !2178, !DIExpression(), !2177)
    #dbg_value(ptr %out, !2179, !DIExpression(), !2177)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2180
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2181
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2182
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 352, !dbg !2183
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2184
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2185
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2186
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2187
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2188
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2189
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2190
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2191
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2192
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2193
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2194
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2195
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2196
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2197
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2198
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2199
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2200
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2201
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2202
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2203
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2204
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2205
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2206
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2207
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2208
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2209
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2210
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2211
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2212
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2213
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2214
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2215
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2216
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2217
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2218
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2219
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2220
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2221
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2222
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2223
  ret void, !dbg !2224
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2225 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2226, !DIExpression(), !2227)
    #dbg_value(ptr %in, !2228, !DIExpression(), !2227)
    #dbg_value(ptr %acc, !2229, !DIExpression(), !2227)
    #dbg_value(i64 1229782938247303441, !2230, !DIExpression(), !2227)
    #dbg_value(i32 0, !2231, !DIExpression(), !2233)
    #dbg_value(i32 0, !2231, !DIExpression(), !2233)
  %0 = load i64, ptr %in, align 8, !dbg !2234
  %and = and i64 %0, 1229782938247303441, !dbg !2237
    #dbg_value(i64 %and, !2238, !DIExpression(), !2239)
  %xor = lshr i64 %0, 1, !dbg !2240
  %shr = and i64 %xor, 8608480567731124087, !dbg !2240
  %mul = mul nuw i64 %and, 9, !dbg !2241
  %xor2 = xor i64 %shr, %mul, !dbg !2242
  %1 = load i64, ptr %acc, align 8, !dbg !2243
  %xor4 = xor i64 %1, %xor2, !dbg !2243
  store i64 %xor4, ptr %acc, align 8, !dbg !2243
    #dbg_value(i32 1, !2231, !DIExpression(), !2233)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2234
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2234
  %and.1 = and i64 %2, 1229782938247303441, !dbg !2237
    #dbg_value(i64 %and.1, !2238, !DIExpression(), !2239)
  %xor.1 = lshr i64 %2, 1, !dbg !2240
  %shr.1 = and i64 %xor.1, 8608480567731124087, !dbg !2240
  %mul.1 = mul nuw i64 %and.1, 9, !dbg !2241
  %xor2.1 = xor i64 %shr.1, %mul.1, !dbg !2242
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2244
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2243
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2243
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2243
    #dbg_value(i32 2, !2231, !DIExpression(), !2233)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2234
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2234
  %and.2 = and i64 %4, 1229782938247303441, !dbg !2237
    #dbg_value(i64 %and.2, !2238, !DIExpression(), !2239)
  %xor.2 = lshr i64 %4, 1, !dbg !2240
  %shr.2 = and i64 %xor.2, 8608480567731124087, !dbg !2240
  %mul.2 = mul nuw i64 %and.2, 9, !dbg !2241
  %xor2.2 = xor i64 %shr.2, %mul.2, !dbg !2242
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2244
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2243
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2243
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2243
    #dbg_value(i32 3, !2231, !DIExpression(), !2233)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2234
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2234
  %and.3 = and i64 %6, 1229782938247303441, !dbg !2237
    #dbg_value(i64 %and.3, !2238, !DIExpression(), !2239)
  %xor.3 = lshr i64 %6, 1, !dbg !2240
  %shr.3 = and i64 %xor.3, 8608480567731124087, !dbg !2240
  %mul.3 = mul nuw i64 %and.3, 9, !dbg !2241
  %xor2.3 = xor i64 %shr.3, %mul.3, !dbg !2242
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2244
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2243
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2243
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2243
    #dbg_value(i32 4, !2231, !DIExpression(), !2233)
  ret void, !dbg !2245
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2246 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2247, !DIExpression(), !2248)
    #dbg_value(ptr %in, !2249, !DIExpression(), !2248)
    #dbg_value(ptr %acc, !2250, !DIExpression(), !2248)
    #dbg_value(i64 -8608480567731124088, !2251, !DIExpression(), !2248)
    #dbg_value(i32 0, !2252, !DIExpression(), !2254)
    #dbg_value(i32 0, !2252, !DIExpression(), !2254)
  %0 = load i64, ptr %in, align 8, !dbg !2255
    #dbg_value(i64 %0, !2258, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2259)
  %xor = shl i64 %0, 1, !dbg !2260
  %shl = and i64 %xor, -1229782938247303442, !dbg !2260
  %and = lshr i64 %0, 3, !dbg !2261
  %shr = and i64 %and, 1229782938247303441, !dbg !2261
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2262
  %xor2 = xor i64 %shl, %mul, !dbg !2263
  %1 = load i64, ptr %acc, align 8, !dbg !2264
  %xor4 = xor i64 %1, %xor2, !dbg !2264
  store i64 %xor4, ptr %acc, align 8, !dbg !2264
    #dbg_value(i32 1, !2252, !DIExpression(), !2254)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2255
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2255
    #dbg_value(i64 %2, !2258, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2259)
  %xor.1 = shl i64 %2, 1, !dbg !2260
  %shl.1 = and i64 %xor.1, -1229782938247303442, !dbg !2260
  %and.1 = lshr i64 %2, 3, !dbg !2261
  %shr.1 = and i64 %and.1, 1229782938247303441, !dbg !2261
  %mul.1 = mul nuw nsw i64 %shr.1, 3, !dbg !2262
  %xor2.1 = xor i64 %shl.1, %mul.1, !dbg !2263
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2265
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2264
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2264
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2264
    #dbg_value(i32 2, !2252, !DIExpression(), !2254)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2255
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2255
    #dbg_value(i64 %4, !2258, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2259)
  %xor.2 = shl i64 %4, 1, !dbg !2260
  %shl.2 = and i64 %xor.2, -1229782938247303442, !dbg !2260
  %and.2 = lshr i64 %4, 3, !dbg !2261
  %shr.2 = and i64 %and.2, 1229782938247303441, !dbg !2261
  %mul.2 = mul nuw nsw i64 %shr.2, 3, !dbg !2262
  %xor2.2 = xor i64 %shl.2, %mul.2, !dbg !2263
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2265
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2264
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2264
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2264
    #dbg_value(i32 3, !2252, !DIExpression(), !2254)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2255
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2255
    #dbg_value(i64 %6, !2258, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2259)
  %xor.3 = shl i64 %6, 1, !dbg !2260
  %shl.3 = and i64 %xor.3, -1229782938247303442, !dbg !2260
  %and.3 = lshr i64 %6, 3, !dbg !2261
  %shr.3 = and i64 %and.3, 1229782938247303441, !dbg !2261
  %mul.3 = mul nuw nsw i64 %shr.3, 3, !dbg !2262
  %xor2.3 = xor i64 %shl.3, %mul.3, !dbg !2263
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2265
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2264
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2264
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2264
    #dbg_value(i32 4, !2252, !DIExpression(), !2254)
  ret void, !dbg !2266
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2267 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2268, !DIExpression(), !2269)
    #dbg_value(ptr %in, !2270, !DIExpression(), !2269)
    #dbg_value(ptr %out, !2271, !DIExpression(), !2269)
    #dbg_value(i32 0, !2272, !DIExpression(), !2274)
    #dbg_value(i32 0, !2272, !DIExpression(), !2274)
  %0 = load i64, ptr %in, align 8, !dbg !2275
  store i64 %0, ptr %out, align 8, !dbg !2278
    #dbg_value(i32 1, !2272, !DIExpression(), !2274)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2275
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2275
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2279
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2278
    #dbg_value(i32 2, !2272, !DIExpression(), !2274)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2275
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2275
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2279
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2278
    #dbg_value(i32 3, !2272, !DIExpression(), !2274)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2275
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2275
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2279
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2278
    #dbg_value(i32 4, !2272, !DIExpression(), !2274)
  ret void, !dbg !2280
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2281 {
entry:
    #dbg_value(ptr %p, !2312, !DIExpression(), !2313)
    #dbg_value(ptr %in, !2314, !DIExpression(), !2313)
    #dbg_value(ptr %out, !2315, !DIExpression(), !2313)
    #dbg_value(i32 %size, !2316, !DIExpression(), !2313)
    #dbg_value(i32 4, !2317, !DIExpression(), !2313)
    #dbg_value(i32 0, !2318, !DIExpression(), !2313)
    #dbg_value(i32 0, !2319, !DIExpression(), !2321)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2322
  br label %for.cond, !dbg !2322

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2323
  %m_vecs_stored.0 = phi i32 [ %m_vecs_stored.1, %for.inc15 ], [ 0, %entry ], !dbg !2323
  %r.0 = phi i32 [ %inc16, %for.inc15 ], [ 0, %entry ], !dbg !2324
    #dbg_value(i32 %r.0, !2319, !DIExpression(), !2321)
    #dbg_value(i32 %m_vecs_stored.0, !2318, !DIExpression(), !2313)
  %exitcond1.not = icmp eq i32 %r.0, %smax, !dbg !2325
  br i1 %exitcond1.not, label %for.end17, label %for.cond1.preheader, !dbg !2327

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2328
  br label %for.cond1, !dbg !2328

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2313
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2331
    #dbg_value(i32 %c.0, !2332, !DIExpression(), !2333)
    #dbg_value(i32 %m_vecs_stored.1, !2318, !DIExpression(), !2313)
  %exitcond.not = icmp eq i32 %m_vecs_stored.1, %0, !dbg !2334
  br i1 %exitcond.not, label %for.inc15, label %for.body3, !dbg !2328

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2336
  %add = add nsw i32 %mul, %c.0, !dbg !2338
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !2339
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2339
  %add.ptr6.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2340
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2340
  call fastcc void @m_vec_copy.17(i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2341
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2342
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2342

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2344
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2346
  %add.ptr11.idx = shl nsw i32 %add9, 5, !dbg !2347
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2347
  %add.ptr13.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2348
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2348
  call fastcc void @m_vec_add.18(i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2349
  br label %for.inc, !dbg !2350

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2318, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2313)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2351
    #dbg_value(i32 %inc, !2318, !DIExpression(), !2313)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2352
    #dbg_value(i32 %inc14, !2332, !DIExpression(), !2333)
  br label %for.cond1, !dbg !2353, !llvm.loop !2354

for.inc15:                                        ; preds = %for.cond1
  %inc16 = add nuw i32 %r.0, 1, !dbg !2356
    #dbg_value(i32 %inc16, !2319, !DIExpression(), !2321)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2357
  br label %for.cond, !dbg !2357, !llvm.loop !2358

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2360
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2361 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2362, !DIExpression(), !2363)
    #dbg_value(ptr %in, !2364, !DIExpression(), !2363)
    #dbg_value(ptr %out, !2365, !DIExpression(), !2363)
    #dbg_value(i32 0, !2366, !DIExpression(), !2368)
    #dbg_value(i32 0, !2366, !DIExpression(), !2368)
  %0 = load i64, ptr %in, align 8, !dbg !2369
  store i64 %0, ptr %out, align 8, !dbg !2372
    #dbg_value(i32 1, !2366, !DIExpression(), !2368)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2369
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2369
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2373
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2372
    #dbg_value(i32 2, !2366, !DIExpression(), !2368)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2369
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2369
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2373
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2372
    #dbg_value(i32 3, !2366, !DIExpression(), !2368)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2369
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2369
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2373
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2372
    #dbg_value(i32 4, !2366, !DIExpression(), !2368)
  ret void, !dbg !2374
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2375 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2376, !DIExpression(), !2377)
    #dbg_value(ptr %in, !2378, !DIExpression(), !2377)
    #dbg_value(ptr %acc, !2379, !DIExpression(), !2377)
    #dbg_value(i32 0, !2380, !DIExpression(), !2382)
    #dbg_value(i32 0, !2380, !DIExpression(), !2382)
  %0 = load i64, ptr %in, align 8, !dbg !2383
  %1 = load i64, ptr %acc, align 8, !dbg !2386
  %xor = xor i64 %1, %0, !dbg !2386
  store i64 %xor, ptr %acc, align 8, !dbg !2386
    #dbg_value(i32 1, !2380, !DIExpression(), !2382)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2383
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2383
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2387
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2386
  %xor.1 = xor i64 %3, %2, !dbg !2386
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2386
    #dbg_value(i32 2, !2380, !DIExpression(), !2382)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2383
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2383
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2387
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2386
  %xor.2 = xor i64 %5, %4, !dbg !2386
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2386
    #dbg_value(i32 3, !2380, !DIExpression(), !2382)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2383
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2383
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2387
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2386
  %xor.3 = xor i64 %7, %6, !dbg !2386
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2386
    #dbg_value(i32 4, !2380, !DIExpression(), !2382)
  ret void, !dbg !2388
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2389 {
entry:
  %Ar = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2392, !DIExpression(), !2393)
    #dbg_value(ptr %A, !2394, !DIExpression(), !2393)
    #dbg_value(ptr %y, !2395, !DIExpression(), !2393)
    #dbg_value(ptr %r, !2396, !DIExpression(), !2393)
    #dbg_value(ptr %x, !2397, !DIExpression(), !2393)
    #dbg_value(i32 %k, !2398, !DIExpression(), !2393)
    #dbg_value(i32 %o, !2399, !DIExpression(), !2393)
    #dbg_value(i32 %m, !2400, !DIExpression(), !2393)
    #dbg_value(i32 %A_cols, !2401, !DIExpression(), !2393)
    #dbg_value(i32 0, !2402, !DIExpression(), !2404)
  %0 = mul nsw i32 %o, %k, !dbg !2405
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2405
  br label %for.cond, !dbg !2405

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2406
    #dbg_value(i32 %i.0, !2402, !DIExpression(), !2404)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2407
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2409

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2410
  br label %for.cond3, !dbg !2410

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2412
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2412
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2414
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2415
  %inc = add nuw i32 %i.0, 1, !dbg !2416
    #dbg_value(i32 %inc, !2402, !DIExpression(), !2404)
  br label %for.cond, !dbg !2417, !llvm.loop !2418

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2420
    #dbg_value(i32 %i2.0, !2421, !DIExpression(), !2422)
  %exitcond14.not = icmp eq i32 %i2.0, %smax13, !dbg !2423
  br i1 %exitcond14.not, label %for.end13, label %for.body5, !dbg !2410

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2425
  %mul7 = mul nsw i32 %k, %o, !dbg !2427
  %add = add nsw i32 %mul7, 1, !dbg !2428
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2429
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2430
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2430
  store i8 0, ptr %arrayidx10, align 1, !dbg !2431
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2432
    #dbg_value(i32 %inc12, !2421, !DIExpression(), !2422)
  br label %for.cond3, !dbg !2433, !llvm.loop !2434

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2436
  %add15 = add nsw i32 %mul14, 1, !dbg !2437
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2438
    #dbg_value(i32 0, !2439, !DIExpression(), !2441)
  br label %for.cond17, !dbg !2442

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2443
    #dbg_value(i32 %i16.0, !2439, !DIExpression(), !2441)
  %exitcond15.not = icmp eq i32 %i16.0, %smax13, !dbg !2444
  br i1 %exitcond15.not, label %for.end30, label %for.body19, !dbg !2446

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2447
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2447
  %arrayidx21 = getelementptr inbounds nuw [64 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2449
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2449
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2450
  %mul22 = mul nsw i32 %k, %o, !dbg !2451
  %mul23 = mul nsw i32 %k, %o, !dbg !2452
  %add24 = add nsw i32 %mul23, 1, !dbg !2453
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2454
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2455
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2455
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2456
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2457
    #dbg_value(i32 %inc29, !2439, !DIExpression(), !2441)
  br label %for.cond17, !dbg !2458, !llvm.loop !2459

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2461
  %add32 = add nsw i32 %mul31, 1, !dbg !2462
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2463
    #dbg_value(i8 0, !2464, !DIExpression(), !2393)
    #dbg_value(i32 0, !2465, !DIExpression(), !2467)
  %6 = add i32 %A_cols, -1, !dbg !2468
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2468
  br label %for.cond34, !dbg !2468

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2393
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2469
    #dbg_value(i32 %i33.0, !2465, !DIExpression(), !2467)
    #dbg_value(i8 %full_rank.0, !2464, !DIExpression(), !2393)
  %exitcond17.not = icmp eq i32 %i33.0, %smax16, !dbg !2470
  br i1 %exitcond17.not, label %for.end45, label %for.inc43, !dbg !2472

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2393)
  %sub37 = add nsw i32 %m, -1, !dbg !2473
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2475
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2476
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2476
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2476
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2393)
  %or12 = or i8 %full_rank.0, %8, !dbg !2477
    #dbg_value(i8 %or12, !2464, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2393)
    #dbg_value(i8 %or12, !2464, !DIExpression(), !2393)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2478
    #dbg_value(i32 %inc44, !2465, !DIExpression(), !2467)
  br label %for.cond34, !dbg !2479, !llvm.loop !2480

for.end45:                                        ; preds = %for.cond34
  %cmp47 = icmp eq i8 %full_rank.0, 0, !dbg !2482
  br i1 %cmp47, label %return, label %for.cond50, !dbg !2482

for.cond50:                                       ; preds = %for.cond63, %for.end45
  %row.0.in = phi i32 [ %m, %for.end45 ], [ %row.0, %for.cond63 ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2484
    #dbg_value(i32 %row.0, !2486, !DIExpression(), !2487)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2488
  br i1 %cmp51, label %for.body53, label %return, !dbg !2490

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2491, !DIExpression(), !2393)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2492
  %div = sdiv i32 32, %sub54, !dbg !2492
  %add55 = add nsw i32 %row.0, %div, !dbg !2492
  %mul56 = mul nsw i32 %k, %o, !dbg !2492
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2492
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2492

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2492
  %div60 = sdiv i32 32, %sub59, !dbg !2492
  %add61 = add nsw i32 %row.0, %div60, !dbg !2492
  br label %cond.end, !dbg !2492

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2492
  br label %cond.end, !dbg !2492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2492
    #dbg_value(i32 %cond, !2494, !DIExpression(), !2393)
    #dbg_value(i32 %row.0, !2495, !DIExpression(), !2497)
  br label %for.cond63, !dbg !2498

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2499
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2500
    #dbg_value(i32 %col.0, !2495, !DIExpression(), !2497)
    #dbg_value(i8 %finished.0, !2491, !DIExpression(), !2393)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2501
  br i1 %cmp64.not, label %for.cond50, label %for.body66, !dbg !2503, !llvm.loop !2504

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2506
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2508
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2508
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2508
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2509
  %not = xor i8 %finished.0, -1, !dbg !2510
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2393)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2512
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2513
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2513
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2513
  %13 = and i8 %12, %not, !dbg !2514
  %and801 = and i8 %13, %call70, !dbg !2514
    #dbg_value(i8 %and801, !2515, !DIExpression(), !2516)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2517
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2518
  %xor2 = xor i8 %14, %and801, !dbg !2518
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2518
    #dbg_value(i32 0, !2519, !DIExpression(), !2521)
  br label %for.cond87, !dbg !2522

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2523
    #dbg_value(i32 %i86.0, !2519, !DIExpression(), !2521)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2524
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2526

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2527
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2529
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2529
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2529
  %conv94 = zext i8 %16 to i64, !dbg !2530
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2531
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2532
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2533
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2533
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2533
  %conv99 = zext i8 %18 to i64, !dbg !2534
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2535
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2536
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2537
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2538
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2539
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2539
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2539
  %conv106 = zext i8 %20 to i64, !dbg !2540
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2541
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2542
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2543
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2544
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2545
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2545
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2545
  %conv113 = zext i8 %22 to i64, !dbg !2546
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2547
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2548
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2549
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2550
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2551
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2551
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2551
  %conv120 = zext i8 %24 to i64, !dbg !2552
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2553
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2554
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2555
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2556
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2557
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2557
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2557
  %conv127 = zext i8 %26 to i64, !dbg !2558
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2559
  %xor129 = xor i64 %xor122, %shl128, !dbg !2560
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2561
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2562
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2563
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2563
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2563
  %conv134 = zext i8 %28 to i64, !dbg !2564
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2565
  %xor136 = xor i64 %xor129, %shl135, !dbg !2566
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2567
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2568
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2569
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2569
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2569
  %conv141 = zext i8 %30 to i64, !dbg !2570
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2571
  %xor143 = xor i64 %xor136, %shl142, !dbg !2572
    #dbg_value(i64 %xor143, !2573, !DIExpression(), !2574)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2575
    #dbg_value(i64 %call144, !2573, !DIExpression(), !2574)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2576
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2576
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2577
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2577
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2578
  %33 = trunc i64 %call144 to i8, !dbg !2578
  %34 = and i8 %33, 15, !dbg !2578
  %conv152 = xor i8 %34, %32, !dbg !2578
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2578
  %shr = lshr i64 %call144, 8, !dbg !2579
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2580
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2580
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2581
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2581
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2582
  %37 = trunc i64 %shr to i8, !dbg !2582
  %38 = and i8 %37, 15, !dbg !2582
  %conv161 = xor i8 %38, %36, !dbg !2582
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2582
  %shr162 = lshr i64 %call144, 16, !dbg !2583
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2584
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2584
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2585
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2585
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2586
  %41 = trunc i64 %shr162 to i8, !dbg !2586
  %42 = and i8 %41, 15, !dbg !2586
  %conv171 = xor i8 %42, %40, !dbg !2586
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2586
  %shr172 = lshr i64 %call144, 24, !dbg !2587
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2588
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2588
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2589
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2589
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2590
  %45 = trunc i64 %shr172 to i8, !dbg !2590
  %46 = and i8 %45, 15, !dbg !2590
  %conv181 = xor i8 %46, %44, !dbg !2590
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2590
  %shr182 = lshr i64 %call144, 32, !dbg !2591
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2592
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2592
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2593
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2593
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2594
  %49 = trunc i64 %shr182 to i8, !dbg !2594
  %50 = and i8 %49, 15, !dbg !2594
  %conv191 = xor i8 %50, %48, !dbg !2594
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2594
  %shr192 = lshr i64 %call144, 40, !dbg !2595
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2596
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2596
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2597
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2597
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2598
  %53 = trunc i64 %shr192 to i8, !dbg !2598
  %54 = and i8 %53, 15, !dbg !2598
  %conv201 = xor i8 %54, %52, !dbg !2598
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2598
  %shr202 = lshr i64 %call144, 48, !dbg !2599
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2600
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2600
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2601
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2601
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2602
  %57 = trunc i64 %shr202 to i8, !dbg !2602
  %58 = and i8 %57, 15, !dbg !2602
  %conv211 = xor i8 %58, %56, !dbg !2602
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2602
  %shr212 = lshr i64 %call144, 56, !dbg !2603
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2604
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2604
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2605
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2605
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2606
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2606
  %conv221 = xor i8 %60, %61, !dbg !2606
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2606
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2607
    #dbg_value(i32 %add223, !2519, !DIExpression(), !2521)
  br label %for.cond87, !dbg !2608, !llvm.loop !2609

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2393)
  %or2273 = or i8 %finished.0, %call70, !dbg !2611
    #dbg_value(i8 %or2273, !2491, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2393)
    #dbg_value(i8 %or2273, !2491, !DIExpression(), !2393)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2612
    #dbg_value(i32 %inc230, !2495, !DIExpression(), !2497)
  br label %for.cond63, !dbg !2613, !llvm.loop !2614

return:                                           ; preds = %for.cond50, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %for.cond50 ], !dbg !2393
  ret i32 %retval.0, !dbg !2616
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2617 {
entry:
    #dbg_value(ptr %a, !2618, !DIExpression(), !2619)
    #dbg_value(ptr %b, !2620, !DIExpression(), !2619)
    #dbg_value(ptr %c, !2621, !DIExpression(), !2619)
    #dbg_value(i32 %colrow_ab, !2622, !DIExpression(), !2619)
    #dbg_value(i32 %row_a, !2623, !DIExpression(), !2619)
    #dbg_value(i32 %col_b, !2624, !DIExpression(), !2619)
    #dbg_value(i32 0, !2625, !DIExpression(), !2627)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2628
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2628
  br label %for.cond, !dbg !2628

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2629
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2618, !DIExpression(), !2619)
    #dbg_value(ptr %c.addr.0, !2621, !DIExpression(), !2619)
    #dbg_value(i32 %i.0, !2625, !DIExpression(), !2627)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !2630
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !2632

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !2633
    #dbg_value(i32 %j.0, !2636, !DIExpression(), !2637)
    #dbg_value(ptr %c.addr.1, !2621, !DIExpression(), !2619)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !2638
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !2640

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2641
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2643
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2644
  %inc = add nuw i32 %j.0, 1, !dbg !2645
    #dbg_value(i32 %inc, !2636, !DIExpression(), !2637)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2646
    #dbg_value(ptr %incdec.ptr, !2621, !DIExpression(), !2619)
  br label %for.cond1, !dbg !2647, !llvm.loop !2648

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !2650
    #dbg_value(i32 %inc5, !2625, !DIExpression(), !2627)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2651
    #dbg_value(ptr %add.ptr6, !2618, !DIExpression(), !2619)
  br label %for.cond, !dbg !2652, !llvm.loop !2653

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2655
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2656 {
entry:
    #dbg_value(i8 %a, !2657, !DIExpression(), !2658)
    #dbg_value(i8 %b, !2659, !DIExpression(), !2658)
  %xor1 = xor i8 %a, %b, !dbg !2660
  ret i8 %xor1, !dbg !2661
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2662 {
entry:
  %_pivot_row = alloca [5 x i64], align 32
  %_pivot_row2 = alloca [5 x i64], align 32
  %packed_A = alloca [320 x i64], align 32
  %temp = alloca [84 x i8], align 1
    #dbg_value(ptr %A, !2666, !DIExpression(), !2667)
    #dbg_value(i32 %nrows, !2668, !DIExpression(), !2667)
    #dbg_value(i32 %ncols, !2669, !DIExpression(), !2667)
    #dbg_declare(ptr %_pivot_row, !2670, !DIExpression(), !2674)
    #dbg_declare(ptr %_pivot_row2, !2675, !DIExpression(), !2676)
    #dbg_declare(ptr %packed_A, !2677, !DIExpression(), !2681)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(2560) %packed_A, i8 0, i32 2560, i1 false), !dbg !2681
  %add = add nsw i32 %ncols, 15, !dbg !2682
  %div = sdiv i32 %add, 16, !dbg !2683
    #dbg_value(i32 %div, !2684, !DIExpression(), !2667)
    #dbg_value(i32 0, !2685, !DIExpression(), !2687)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2688
  br label %for.cond, !dbg !2688

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2689
    #dbg_value(i32 %i.0, !2685, !DIExpression(), !2687)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2690
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2692

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2693
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2693
  br label %for.cond3, !dbg !2693

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2695
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2697
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2698
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2699
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2700
  %inc = add nuw i32 %i.0, 1, !dbg !2701
    #dbg_value(i32 %inc, !2685, !DIExpression(), !2687)
  br label %for.cond, !dbg !2702, !llvm.loop !2703

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2705
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2667
    #dbg_value(i32 %pivot_row.0, !2706, !DIExpression(), !2667)
    #dbg_value(i32 %pivot_col.0, !2707, !DIExpression(), !2708)
  %exitcond6.not = icmp eq i32 %pivot_col.0, %smax5, !dbg !2709
  br i1 %exitcond6.not, label %for.cond121, label %for.body5, !dbg !2693

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2711
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2711
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2711
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2711
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2711
    #dbg_value(i32 %cond, !2713, !DIExpression(), !2714)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2715
    #dbg_value(i32 %cond16, !2716, !DIExpression(), !2714)
    #dbg_value(i32 0, !2717, !DIExpression(), !2719)
  br label %for.cond18, !dbg !2720

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2721
    #dbg_value(i32 %i17.0, !2717, !DIExpression(), !2719)
  %exitcond2.not = icmp eq i32 %i17.0, %smax1, !dbg !2722
  br i1 %exitcond2.not, label %for.cond25.preheader, label %for.body20, !dbg !2724

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2715
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2715
  br label %for.cond25, !dbg !2725

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2727
  store i64 0, ptr %arrayidx, align 8, !dbg !2729
  %arrayidx21 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2730
  store i64 0, ptr %arrayidx21, align 8, !dbg !2731
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2732
    #dbg_value(i32 %inc23, !2717, !DIExpression(), !2719)
  br label %for.cond18, !dbg !2733, !llvm.loop !2734

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2714
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2714
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2736
    #dbg_value(i32 %row.0, !2737, !DIExpression(), !2736)
    #dbg_value(i8 %pivot.0, !2738, !DIExpression(), !2714)
    #dbg_value(i64 %pivot_is_zero.0, !2739, !DIExpression(), !2714)
  %add27 = add nsw i32 %cond16, 32, !dbg !2740
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2740
  %sub30 = add nsw i32 %nrows, -1, !dbg !2740
  %add32 = add nsw i32 %cond16, 32, !dbg !2740
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2740
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2742
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2725

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2743
  %not = xor i64 %call, -1, !dbg !2745
    #dbg_value(i64 %not, !2746, !DIExpression(), !2747)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2748
    #dbg_value(i64 %call37, !2749, !DIExpression(), !2747)
    #dbg_value(i32 0, !2750, !DIExpression(), !2752)
  br label %for.cond38, !dbg !2753

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2754
    #dbg_value(i32 %j.0, !2750, !DIExpression(), !2752)
  %exitcond3.not = icmp eq i32 %j.0, %smax1, !dbg !2755
  br i1 %exitcond3.not, label %for.end48, label %for.body40, !dbg !2757

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2758
  %or = or i64 %and, %not, !dbg !2760
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2761
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2762
  %arrayidx43 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2763
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2763
  %and44 = and i64 %or, %0, !dbg !2764
  %arrayidx45 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2765
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2766
  %xor = xor i64 %1, %and44, !dbg !2766
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2766
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2767
    #dbg_value(i32 %inc47, !2750, !DIExpression(), !2752)
  br label %for.cond38, !dbg !2768, !llvm.loop !2769

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2771
    #dbg_value(i8 %call50, !2738, !DIExpression(), !2714)
  %conv = zext nneg i8 %call50 to i32, !dbg !2772
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2773
    #dbg_value(i64 %call51, !2739, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2714)
  %not52 = xor i64 %call51, -1, !dbg !2774
    #dbg_value(i64 %not52, !2739, !DIExpression(), !2714)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2775
    #dbg_value(i32 %inc54, !2737, !DIExpression(), !2736)
  br label %for.cond25, !dbg !2776, !llvm.loop !2777

for.end55:                                        ; preds = %for.cond25
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0) #6, !dbg !2779
    #dbg_value(i8 %call56, !2780, !DIExpression(), !2667)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2781
    #dbg_value(i32 %cond, !2782, !DIExpression(), !2784)
  br label %for.cond60, !dbg !2785

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2786
    #dbg_value(i32 %row59.0, !2782, !DIExpression(), !2784)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2787
  br i1 %cmp61.not, label %for.cond90, label %for.body63, !dbg !2789

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2790
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0, !dbg !2792
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2792
    #dbg_value(i64 %and67, !2793, !DIExpression(), !2794)
    #dbg_value(i64 %and67.demorgan, !2795, !DIExpression(), !2794)
    #dbg_value(i32 0, !2796, !DIExpression(), !2798)
  br label %for.cond69, !dbg !2799

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2800
    #dbg_value(i32 %col.0, !2796, !DIExpression(), !2798)
  %exitcond4.not = icmp eq i32 %col.0, %smax1, !dbg !2801
  br i1 %exitcond4.not, label %for.inc86, label %for.body72, !dbg !2803

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2804
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2806
  %arrayidx75 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2807
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2807
  %and76 = and i64 %and67.demorgan, %2, !dbg !2808
  %arrayidx77 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2809
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2809
  %and78 = and i64 %3, %and67, !dbg !2810
  %add79 = add i64 %and76, %and78, !dbg !2811
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2812
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2813
  %arrayidx82 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2814
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2815
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2816
    #dbg_value(i32 %inc84, !2796, !DIExpression(), !2798)
  br label %for.cond69, !dbg !2817, !llvm.loop !2818

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2820
    #dbg_value(i32 %inc87, !2782, !DIExpression(), !2784)
  br label %for.cond60, !dbg !2821, !llvm.loop !2822

for.cond90:                                       ; preds = %for.cond60, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond60 ], !dbg !2824
    #dbg_value(i32 %row89.0, !2826, !DIExpression(), !2827)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2828
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2830

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2831
    #dbg_value(i1 %cmp94, !2833, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2834)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2835
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2836
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2837
    #dbg_value(i8 %call100, !2838, !DIExpression(), !2834)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2839
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2840
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2841
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2842
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2843
    #dbg_value(i32 %inc110, !2826, !DIExpression(), !2827)
  br label %for.cond90, !dbg !2844, !llvm.loop !2845

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0, i32 %pivot_row.0), !2706, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2667)
  %4 = trunc i64 %pivot_is_zero.0 to i32, !dbg !2847
  %5 = add i32 %4, 1, !dbg !2847
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2847
    #dbg_value(i32 %conv116, !2706, !DIExpression(), !2667)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2848
    #dbg_value(i32 %inc118, !2707, !DIExpression(), !2708)
  br label %for.cond3, !dbg !2849, !llvm.loop !2850

for.cond121:                                      ; preds = %for.cond3, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond3 ], !dbg !2852
    #dbg_value(i32 %i120.0, !2854, !DIExpression(), !2855)
  %exitcond8.not = icmp eq i32 %i120.0, %smax, !dbg !2856
  br i1 %exitcond8.not, label %for.end143, label %for.body124, !dbg !2858

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2859
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2861
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2862
    #dbg_value(i32 0, !2863, !DIExpression(), !2865)
  br label %for.cond130, !dbg !2866

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2867
    #dbg_value(i32 %j129.0, !2863, !DIExpression(), !2865)
  %exitcond7.not = icmp eq i32 %j129.0, %smax5, !dbg !2868
  br i1 %exitcond7.not, label %for.inc141, label %for.body133, !dbg !2870

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [84 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2871
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2871
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2873
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2874
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2874
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2875
  %inc139 = add nuw i32 %j129.0, 1, !dbg !2876
    #dbg_value(i32 %inc139, !2863, !DIExpression(), !2865)
  br label %for.cond130, !dbg !2877, !llvm.loop !2878

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !2880
    #dbg_value(i32 %inc142, !2854, !DIExpression(), !2855)
  br label %for.cond121, !dbg !2881, !llvm.loop !2882

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 84) #8, !dbg !2884
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 40) #8, !dbg !2885
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 40) #8, !dbg !2886
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 2560) #8, !dbg !2887
  ret void, !dbg !2888
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2889 {
entry:
    #dbg_value(i8 %a, !2891, !DIExpression(), !2892)
    #dbg_value(i8 %b, !2893, !DIExpression(), !2892)
  %0 = icmp ne i8 %a, %b, !dbg !2894
  %conv3 = sext i1 %0 to i8, !dbg !2895
  %1 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !2896
  %xor5 = xor i8 %1, %conv3, !dbg !2897
  ret i8 %xor5, !dbg !2898
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !2899 {
entry:
    #dbg_value(i8 %a, !2902, !DIExpression(), !2903)
    #dbg_value(i64 %b, !2904, !DIExpression(), !2903)
  %0 = and i8 %a, 1, !dbg !2905
  %conv1 = zext nneg i8 %0 to i64, !dbg !2906
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !2907
    #dbg_value(i64 %mul, !2908, !DIExpression(), !2903)
  %1 = and i8 %a, 2, !dbg !2909
  %conv4 = zext nneg i8 %1 to i64, !dbg !2910
  %mul5 = mul i64 %b, %conv4, !dbg !2911
  %xor = xor i64 %mul, %mul5, !dbg !2912
    #dbg_value(i64 %xor, !2908, !DIExpression(), !2903)
  %2 = and i8 %a, 4, !dbg !2913
  %conv8 = zext nneg i8 %2 to i64, !dbg !2914
  %mul9 = mul i64 %b, %conv8, !dbg !2915
  %xor10 = xor i64 %xor, %mul9, !dbg !2916
    #dbg_value(i64 %xor10, !2908, !DIExpression(), !2903)
  %3 = and i8 %a, 8, !dbg !2917
  %conv13 = zext nneg i8 %3 to i64, !dbg !2918
  %mul14 = mul i64 %b, %conv13, !dbg !2919
  %xor15 = xor i64 %xor10, %mul14, !dbg !2920
    #dbg_value(i64 %xor15, !2908, !DIExpression(), !2903)
    #dbg_value(i64 %xor15, !2921, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !2903)
  %shr = lshr i64 %xor15, 4, !dbg !2922
  %and16 = lshr i64 %xor15, 3, !dbg !2923
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !2923
  %4 = xor i64 %shr, %shr18, !dbg !2924
  %xor19 = xor i64 %4, %xor15, !dbg !2924
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !2925
    #dbg_value(i64 %and20, !2926, !DIExpression(), !2903)
  ret i64 %and20, !dbg !2927
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !2928 {
entry:
    #dbg_value(ptr %in, !2931, !DIExpression(), !2932)
    #dbg_value(ptr %out, !2933, !DIExpression(), !2932)
    #dbg_value(i32 %ncols, !2934, !DIExpression(), !2932)
    #dbg_value(ptr %out, !2935, !DIExpression(), !2932)
    #dbg_value(i32 0, !2936, !DIExpression(), !2932)
  br label %for.cond, !dbg !2937

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !2939
    #dbg_value(i32 %i.0, !2936, !DIExpression(), !2932)
  %add = or disjoint i32 %i.0, 1, !dbg !2940
  %cmp = icmp slt i32 %add, %ncols, !dbg !2942
  br i1 %cmp, label %for.body, label %for.end, !dbg !2943

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !2944
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2944
  %add2 = or disjoint i32 %i.0, 1, !dbg !2946
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !2947
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !2947
  %shl5 = shl i8 %1, 4, !dbg !2948
  %or = or i8 %shl5, %0, !dbg !2949
  %div = lshr exact i32 %i.0, 1, !dbg !2950
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !2951
  store i8 %or, ptr %arrayidx7, align 1, !dbg !2952
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !2953
    #dbg_value(i32 %add8, !2936, !DIExpression(), !2932)
  br label %for.cond, !dbg !2954, !llvm.loop !2955

for.end:                                          ; preds = %for.cond
  %2 = and i32 %ncols, -2147483647, !dbg !2957
  %cmp9 = icmp eq i32 %2, 1, !dbg !2957
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2957

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !2959
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !2959
  %div16 = lshr exact i32 %i.0, 1, !dbg !2961
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !2962
  store i8 %3, ptr %arrayidx17, align 1, !dbg !2963
  br label %if.end, !dbg !2964

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !2965
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !2966 {
entry:
    #dbg_value(i32 %a, !2969, !DIExpression(), !2970)
    #dbg_value(i32 %b, !2971, !DIExpression(), !2970)
  %xor = xor i32 %a, %b, !dbg !2972
  %0 = icmp sgt i32 %xor, 0, !dbg !2973
  %shr = sext i1 %0 to i64, !dbg !2973
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !2974
  %xor1 = xor i64 %1, %shr, !dbg !2975
  ret i64 %xor1, !dbg !2976
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !2977 {
entry:
    #dbg_value(i32 %a, !2978, !DIExpression(), !2979)
    #dbg_value(i32 %b, !2980, !DIExpression(), !2979)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !2979)
  %0 = icmp slt i32 %b, %a, !dbg !2982
  %shr = sext i1 %0 to i64, !dbg !2982
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !2983
  %xor = xor i64 %1, %shr, !dbg !2984
  ret i64 %xor, !dbg !2985
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !2986 {
entry:
    #dbg_value(ptr %in, !2989, !DIExpression(), !2990)
    #dbg_value(i32 %index, !2991, !DIExpression(), !2990)
  %div = sdiv i32 %index, 16, !dbg !2992
    #dbg_value(i32 %div, !2993, !DIExpression(), !2990)
  %rem = srem i32 %index, 16, !dbg !2994
    #dbg_value(i32 %rem, !2995, !DIExpression(), !2990)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !2996
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2996
  %mul = shl nsw i32 %rem, 2, !dbg !2997
  %sh_prom = zext nneg i32 %mul to i64, !dbg !2998
  %shr = lshr i64 %0, %sh_prom, !dbg !2998
  %1 = trunc i64 %shr to i8, !dbg !2999
  %conv = and i8 %1, 15, !dbg !2999
  ret i8 %conv, !dbg !3000
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3001 {
entry:
    #dbg_value(i8 %a, !3004, !DIExpression(), !3005)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3006
    #dbg_value(i8 %call, !3007, !DIExpression(), !3005)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3008
    #dbg_value(i8 %call1, !3009, !DIExpression(), !3005)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3010
    #dbg_value(i8 %call2, !3011, !DIExpression(), !3005)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3012
    #dbg_value(i8 %call3, !3013, !DIExpression(), !3005)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3014
    #dbg_value(i8 %call4, !3015, !DIExpression(), !3005)
  ret i8 %call4, !dbg !3016
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3017 {
entry:
    #dbg_value(i32 %legs, !3020, !DIExpression(), !3021)
    #dbg_value(ptr %in, !3022, !DIExpression(), !3021)
    #dbg_value(i8 %a, !3023, !DIExpression(), !3021)
    #dbg_value(ptr %acc, !3024, !DIExpression(), !3021)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3025
    #dbg_value(i32 %call, !3026, !DIExpression(), !3021)
    #dbg_value(i64 1229782938247303441, !3027, !DIExpression(), !3021)
    #dbg_value(i32 0, !3028, !DIExpression(), !3030)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3031
  br label %for.cond, !dbg !3031

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3032
    #dbg_value(i32 %i.0, !3028, !DIExpression(), !3030)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3033
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3035

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3036
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3036
  %and = and i64 %0, 1229782938247303441, !dbg !3038
  %and1 = and i32 %call, 255, !dbg !3039
  %conv = zext nneg i32 %and1 to i64, !dbg !3040
  %mul = mul i64 %and, %conv, !dbg !3041
  %shr = lshr i64 %0, 1, !dbg !3042
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3043
  %shr4 = lshr i32 %call, 8, !dbg !3044
  %and5 = and i32 %shr4, 15, !dbg !3045
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3046
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3047
  %xor = xor i64 %mul, %mul7, !dbg !3048
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3049
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3049
  %shr9 = lshr i64 %1, 2, !dbg !3050
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3051
  %shr11 = lshr i32 %call, 16, !dbg !3052
  %and12 = and i32 %shr11, 15, !dbg !3053
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3054
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3055
  %xor15 = xor i64 %xor, %mul14, !dbg !3056
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3057
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3057
  %shr17 = lshr i64 %2, 3, !dbg !3058
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3059
  %shr19 = lshr i32 %call, 24, !dbg !3060
  %and20 = and i32 %shr19, 15, !dbg !3061
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3062
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3063
  %xor23 = xor i64 %xor15, %mul22, !dbg !3064
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3065
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3066
  %xor25 = xor i64 %3, %xor23, !dbg !3066
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3066
  %inc = add nuw i32 %i.0, 1, !dbg !3067
    #dbg_value(i32 %inc, !3028, !DIExpression(), !3030)
  br label %for.cond, !dbg !3068, !llvm.loop !3069

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3071
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3072 {
entry:
    #dbg_value(i32 %legs, !3075, !DIExpression(), !3076)
    #dbg_value(ptr %in, !3077, !DIExpression(), !3076)
    #dbg_value(ptr %out, !3078, !DIExpression(), !3076)
    #dbg_value(ptr %in, !3079, !DIExpression(), !3076)
    #dbg_value(i32 0, !3080, !DIExpression(), !3082)
  br label %for.cond, !dbg !3083

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3084
    #dbg_value(i32 %i.0, !3080, !DIExpression(), !3082)
  %mul = shl nsw i32 %legs, 4, !dbg !3085
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3087
  br i1 %cmp, label %for.body, label %for.end, !dbg !3088

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3089
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3091
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3091
  %1 = and i8 %0, 15, !dbg !3092
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3093
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3094
  %div3 = lshr exact i32 %i.0, 1, !dbg !3095
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3096
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3096
  %3 = lshr i8 %2, 4, !dbg !3097
  %add = or disjoint i32 %i.0, 1, !dbg !3098
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3099
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3100
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3101
    #dbg_value(i32 %add8, !3080, !DIExpression(), !3082)
  br label %for.cond, !dbg !3102, !llvm.loop !3103

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3105
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3106 {
entry:
    #dbg_value(i8 %b, !3107, !DIExpression(), !3108)
  %conv = zext i8 %b to i32, !dbg !3109
  %mul = mul i32 %conv, 134480385, !dbg !3110
    #dbg_value(i32 %mul, !3111, !DIExpression(), !3108)
    #dbg_value(i32 -252645136, !3112, !DIExpression(), !3108)
  %and = and i32 %mul, -252645136, !dbg !3113
    #dbg_value(i32 %and, !3114, !DIExpression(), !3108)
  %shr = lshr exact i32 %and, 4, !dbg !3115
  %shr1 = lshr exact i32 %and, 3, !dbg !3116
  %0 = xor i32 %shr, %shr1, !dbg !3117
  %xor2 = xor i32 %0, %mul, !dbg !3117
  ret i32 %xor2, !dbg !3118
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3119 {
entry:
    #dbg_value(i8 %a, !3120, !DIExpression(), !3121)
    #dbg_value(i8 %b, !3122, !DIExpression(), !3121)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3123
  %xor1 = xor i8 %a, %0, !dbg !3124
    #dbg_value(i8 %xor1, !3120, !DIExpression(), !3121)
  %1 = trunc i8 %xor1 to i1, !dbg !3125
    #dbg_value(i8 poison, !3126, !DIExpression(), !3121)
  %2 = and i8 %xor1, 2, !dbg !3127
  %mul9 = mul i8 %2, %b, !dbg !3128
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3125
  %xor11 = xor i8 %conv10, %mul9, !dbg !3129
    #dbg_value(i8 %xor11, !3126, !DIExpression(), !3121)
  %3 = and i8 %xor1, 4, !dbg !3130
  %mul16 = mul i8 %3, %b, !dbg !3131
  %xor18 = xor i8 %mul16, %xor11, !dbg !3132
    #dbg_value(i8 %xor18, !3126, !DIExpression(), !3121)
  %4 = and i8 %xor1, 8, !dbg !3133
  %mul23 = mul i8 %4, %b, !dbg !3134
  %xor25 = xor i8 %mul23, %xor18, !dbg !3135
    #dbg_value(i8 %xor25, !3126, !DIExpression(), !3121)
    #dbg_value(i8 %xor25, !3136, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3121)
  %5 = lshr i8 %xor25, 4, !dbg !3137
  %6 = lshr i8 %xor25, 3, !dbg !3138
  %7 = and i8 %6, 14, !dbg !3138
  %8 = xor i8 %5, %7, !dbg !3139
  %xor25.masked = and i8 %xor25, 15, !dbg !3140
  %9 = xor i8 %8, %xor25.masked, !dbg !3140
    #dbg_value(i8 %9, !3141, !DIExpression(), !3121)
  ret i8 %9, !dbg !3142
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3143 {
entry:
    #dbg_value(ptr %a, !3144, !DIExpression(), !3145)
    #dbg_value(ptr %b, !3146, !DIExpression(), !3145)
    #dbg_value(i32 %n, !3147, !DIExpression(), !3145)
    #dbg_value(i32 %m, !3148, !DIExpression(), !3145)
    #dbg_value(i8 0, !3149, !DIExpression(), !3145)
    #dbg_value(i32 0, !3150, !DIExpression(), !3152)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3153
  br label %for.cond, !dbg !3153

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3145
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3154
    #dbg_value(i32 %i.0, !3150, !DIExpression(), !3152)
    #dbg_value(ptr %b.addr.0, !3146, !DIExpression(), !3145)
    #dbg_value(i8 %ret.0, !3149, !DIExpression(), !3145)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3155
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3157

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3158
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3158
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3160
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3161
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3162
    #dbg_value(i8 %call1, !3149, !DIExpression(), !3145)
  %inc = add nuw i32 %i.0, 1, !dbg !3163
    #dbg_value(i32 %inc, !3150, !DIExpression(), !3152)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3164
    #dbg_value(ptr %add.ptr, !3146, !DIExpression(), !3145)
  br label %for.cond, !dbg !3165, !llvm.loop !3166

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !3168
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3169 {
entry:
    #dbg_value(i8 %a, !3170, !DIExpression(), !3171)
    #dbg_value(i8 %b, !3172, !DIExpression(), !3171)
  %xor1 = xor i8 %a, %b, !dbg !3173
  ret i8 %xor1, !dbg !3174
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
!149 = !DILocation(line: 49, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !77, file: !72, line: 49, column: 9)
!151 = !DILocation(line: 55, column: 11, scope: !77)
!152 = !DILocation(line: 56, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !77, file: !72, line: 56, column: 9)
!154 = !DILocation(line: 62, column: 42, scope: !77)
!155 = !DILocation(line: 62, column: 11, scope: !77)
!156 = !DILocation(line: 63, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !77, file: !72, line: 63, column: 9)
!158 = !DILocation(line: 69, column: 44, scope: !77)
!159 = !DILocation(line: 69, column: 11, scope: !77)
!160 = !DILocation(line: 70, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !77, file: !72, line: 70, column: 9)
!162 = !DILocation(line: 70, column: 24, scope: !161)
!163 = !DILocation(line: 70, column: 45, scope: !161)
!164 = !DILocation(line: 70, column: 27, scope: !161)
!165 = !DILocation(line: 77, column: 31, scope: !77)
!166 = !DILocation(line: 77, column: 11, scope: !77)
!167 = !DILocation(line: 78, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !77, file: !72, line: 78, column: 9)
!169 = !DILabel(scope: !77, name: "err", file: !72, line: 109)
!170 = !DILocation(line: 109, column: 1, scope: !77)
!171 = !DILocation(line: 110, column: 5, scope: !77)
!172 = !DILocation(line: 111, column: 5, scope: !77)
!173 = !DILocation(line: 112, column: 5, scope: !77)
!174 = !DILocation(line: 113, column: 5, scope: !77)
!175 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !176, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!176 = !DISubroutineType(types: !177)
!177 = !{!45, !178, !18, !18}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !181, file: !36, line: 266, baseType: !45, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !181, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !181, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !181, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !181, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !181, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !181, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !181, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !181, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !181, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !181, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !181, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !181, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !181, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !181, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !181, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !181, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !181, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !181, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !181, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !181, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !181, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!206 = !DILocalVariable(name: "p", arg: 1, scope: !175, file: !25, line: 298, type: !178)
!207 = !DILocation(line: 0, scope: !175)
!208 = !DILocalVariable(name: "pk", arg: 2, scope: !175, file: !25, line: 298, type: !18)
!209 = !DILocalVariable(name: "sk", arg: 3, scope: !175, file: !25, line: 298, type: !18)
!210 = !DILocalVariable(name: "ret", scope: !175, file: !25, line: 299, type: !45)
!211 = !DILocation(line: 301, column: 11, scope: !175)
!212 = !DILabel(scope: !175, name: "err", file: !25, line: 306)
!213 = !DILocation(line: 306, column: 1, scope: !175)
!214 = !DILocation(line: 307, column: 5, scope: !175)
!215 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !176, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!216 = !DILocalVariable(name: "p", arg: 1, scope: !215, file: !25, line: 538, type: !178)
!217 = !DILocation(line: 0, scope: !215)
!218 = !DILocalVariable(name: "cpk", arg: 2, scope: !215, file: !25, line: 538, type: !18)
!219 = !DILocalVariable(name: "csk", arg: 3, scope: !215, file: !25, line: 539, type: !18)
!220 = !DILocalVariable(name: "ret", scope: !215, file: !25, line: 540, type: !45)
!221 = !DILocalVariable(name: "seed_sk", scope: !215, file: !25, line: 541, type: !18)
!222 = !DILocalVariable(name: "S", scope: !215, file: !25, line: 542, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4480, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 560)
!226 = !DILocation(line: 542, column: 19, scope: !215)
!227 = !DILocalVariable(name: "P", scope: !215, file: !25, line: 543, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 811008, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 12672)
!231 = !DILocation(line: 543, column: 14, scope: !215)
!232 = !DILocalVariable(name: "P3", scope: !215, file: !25, line: 544, type: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 73984, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 1156)
!236 = !DILocation(line: 544, column: 14, scope: !215)
!237 = !DILocalVariable(name: "O", scope: !215, file: !25, line: 547, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8704, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 1088)
!241 = !DILocation(line: 547, column: 19, scope: !215)
!242 = !DILocalVariable(name: "m_vec_limbs", scope: !215, file: !25, line: 549, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!244 = !DILocalVariable(name: "param_m", scope: !215, file: !25, line: 550, type: !243)
!245 = !DILocalVariable(name: "param_v", scope: !215, file: !25, line: 551, type: !243)
!246 = !DILocalVariable(name: "param_o", scope: !215, file: !25, line: 552, type: !243)
!247 = !DILocalVariable(name: "param_O_bytes", scope: !215, file: !25, line: 553, type: !243)
!248 = !DILocalVariable(name: "param_P1_limbs", scope: !215, file: !25, line: 554, type: !243)
!249 = !DILocalVariable(name: "param_P3_limbs", scope: !215, file: !25, line: 555, type: !243)
!250 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !215, file: !25, line: 556, type: !243)
!251 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !215, file: !25, line: 557, type: !243)
!252 = !DILocalVariable(name: "P1", scope: !215, file: !25, line: 559, type: !5)
!253 = !DILocation(line: 560, column: 22, scope: !215)
!254 = !DILocalVariable(name: "P2", scope: !215, file: !25, line: 560, type: !5)
!255 = !DILocation(line: 566, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !215, file: !25, line: 566, column: 9)
!257 = !DILocation(line: 566, column: 51, scope: !256)
!258 = !DILocation(line: 573, column: 5, scope: !215)
!259 = !DILocalVariable(name: "seed_pk", scope: !215, file: !25, line: 546, type: !18)
!260 = !DILocation(line: 579, column: 14, scope: !215)
!261 = !DILocation(line: 579, column: 5, scope: !215)
!262 = !DILocation(line: 585, column: 5, scope: !215)
!263 = !DILocation(line: 588, column: 5, scope: !215)
!264 = !DILocation(line: 591, column: 5, scope: !215)
!265 = !DILocalVariable(name: "P3_upper", scope: !215, file: !25, line: 593, type: !266)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 39168, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 612)
!269 = !DILocation(line: 593, column: 14, scope: !215)
!270 = !DILocation(line: 596, column: 5, scope: !215)
!271 = !DILocation(line: 597, column: 31, scope: !215)
!272 = !DILocation(line: 597, column: 5, scope: !215)
!273 = !DILabel(scope: !215, name: "err", file: !25, line: 600)
!274 = !DILocation(line: 600, column: 5, scope: !215)
!275 = !DILocation(line: 602, column: 5, scope: !215)
!276 = !DILocation(line: 603, column: 5, scope: !215)
!277 = !DILocation(line: 604, column: 5, scope: !215)
!278 = !DILocation(line: 605, column: 5, scope: !215)
!279 = distinct !DISubprogram(name: "decode", scope: !25, file: !25, line: 20, type: !280, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !49, !18, !45}
!282 = !DILocalVariable(name: "m", arg: 1, scope: !279, file: !25, line: 20, type: !49)
!283 = !DILocation(line: 0, scope: !279)
!284 = !DILocalVariable(name: "mdec", arg: 2, scope: !279, file: !25, line: 20, type: !18)
!285 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !279, file: !25, line: 20, type: !45)
!286 = !DILocalVariable(name: "i", scope: !279, file: !25, line: 21, type: !45)
!287 = !DILocation(line: 22, column: 10, scope: !288)
!288 = distinct !DILexicalBlock(scope: !279, file: !25, line: 22, column: 5)
!289 = !DILocation(line: 22, scope: !288)
!290 = !DILocation(line: 22, column: 29, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !25, line: 22, column: 5)
!292 = !DILocation(line: 22, column: 19, scope: !291)
!293 = !DILocation(line: 22, column: 5, scope: !288)
!294 = !DILocation(line: 23, column: 19, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !25, line: 22, column: 39)
!296 = !DILocation(line: 23, column: 24, scope: !295)
!297 = !DILocation(line: 23, column: 14, scope: !295)
!298 = !DILocation(line: 23, column: 17, scope: !295)
!299 = !DILocation(line: 24, column: 19, scope: !295)
!300 = !DILocation(line: 24, column: 24, scope: !295)
!301 = !DILocation(line: 24, column: 17, scope: !295)
!302 = !DILocation(line: 24, column: 14, scope: !295)
!303 = !DILocation(line: 22, column: 34, scope: !291)
!304 = !DILocation(line: 22, column: 5, scope: !291)
!305 = distinct !{!305, !293, !306, !307}
!306 = !DILocation(line: 25, column: 5, scope: !288)
!307 = !{!"llvm.loop.mustprogress"}
!308 = !DILocation(line: 27, column: 21, scope: !309)
!309 = distinct !DILexicalBlock(scope: !279, file: !25, line: 27, column: 9)
!310 = !DILocation(line: 28, column: 19, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !25, line: 27, column: 27)
!312 = !DILocation(line: 28, column: 24, scope: !311)
!313 = !DILocation(line: 28, column: 17, scope: !311)
!314 = !DILocation(line: 29, column: 5, scope: !311)
!315 = !DILocation(line: 30, column: 1, scope: !279)
!316 = distinct !DISubprogram(name: "expand_P1_P2", scope: !25, file: !25, line: 280, type: !317, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !178, !5, !49}
!319 = !DILocalVariable(name: "p", arg: 1, scope: !316, file: !25, line: 280, type: !178)
!320 = !DILocation(line: 0, scope: !316)
!321 = !DILocalVariable(name: "P", arg: 2, scope: !316, file: !25, line: 280, type: !5)
!322 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !316, file: !25, line: 280, type: !49)
!323 = !DILocation(line: 284, column: 5, scope: !316)
!324 = !DILocation(line: 285, column: 5, scope: !316)
!325 = !DILocation(line: 286, column: 1, scope: !316)
!326 = distinct !DISubprogram(name: "compute_P3", scope: !327, file: !327, line: 260, type: !328, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!327 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!328 = !DISubroutineType(types: !329)
!329 = !{null, !178, !330, !5, !49, !5}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!331 = !DILocalVariable(name: "p", arg: 1, scope: !326, file: !327, line: 260, type: !178)
!332 = !DILocation(line: 0, scope: !326)
!333 = !DILocalVariable(name: "P1", arg: 2, scope: !326, file: !327, line: 260, type: !330)
!334 = !DILocalVariable(name: "P2", arg: 3, scope: !326, file: !327, line: 260, type: !5)
!335 = !DILocalVariable(name: "O", arg: 4, scope: !326, file: !327, line: 260, type: !49)
!336 = !DILocalVariable(name: "P3", arg: 5, scope: !326, file: !327, line: 260, type: !5)
!337 = !DILocalVariable(name: "m_vec_limbs", scope: !326, file: !327, line: 262, type: !243)
!338 = !DILocalVariable(name: "param_v", scope: !326, file: !327, line: 263, type: !243)
!339 = !DILocalVariable(name: "param_o", scope: !326, file: !327, line: 264, type: !243)
!340 = !DILocation(line: 267, column: 5, scope: !326)
!341 = !DILocation(line: 270, column: 5, scope: !326)
!342 = !DILocation(line: 271, column: 1, scope: !326)
!343 = distinct !DISubprogram(name: "pack_m_vecs", scope: !25, file: !25, line: 272, type: !344, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !330, !18, !45, !45}
!346 = !DILocalVariable(name: "in", arg: 1, scope: !343, file: !25, line: 272, type: !330)
!347 = !DILocation(line: 0, scope: !343)
!348 = !DILocalVariable(name: "out", arg: 2, scope: !343, file: !25, line: 272, type: !18)
!349 = !DILocalVariable(name: "vecs", arg: 3, scope: !343, file: !25, line: 272, type: !45)
!350 = !DILocalVariable(name: "m", arg: 4, scope: !343, file: !25, line: 272, type: !45)
!351 = !DILocation(line: 273, column: 32, scope: !343)
!352 = !DILocation(line: 273, column: 38, scope: !343)
!353 = !DILocalVariable(name: "m_vec_limbs", scope: !343, file: !25, line: 273, type: !243)
!354 = !DILocalVariable(name: "_in", scope: !343, file: !25, line: 274, type: !18)
!355 = !DILocalVariable(name: "i", scope: !356, file: !25, line: 275, type: !45)
!356 = distinct !DILexicalBlock(scope: !343, file: !25, line: 275, column: 5)
!357 = !DILocation(line: 0, scope: !356)
!358 = !DILocation(line: 275, column: 10, scope: !356)
!359 = !DILocation(line: 275, scope: !356)
!360 = !DILocation(line: 275, column: 23, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !25, line: 275, column: 5)
!362 = !DILocation(line: 275, column: 5, scope: !356)
!363 = !DILocation(line: 277, column: 25, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !25, line: 276, column: 5)
!365 = !DILocation(line: 277, column: 27, scope: !364)
!366 = !DILocation(line: 277, column: 21, scope: !364)
!367 = !DILocation(line: 277, column: 39, scope: !364)
!368 = !DILocation(line: 277, column: 51, scope: !364)
!369 = !DILocation(line: 277, column: 36, scope: !364)
!370 = !DILocation(line: 277, column: 71, scope: !364)
!371 = !DILocation(line: 277, column: 9, scope: !364)
!372 = !DILocation(line: 275, column: 32, scope: !361)
!373 = !DILocation(line: 275, column: 5, scope: !361)
!374 = distinct !{!374, !362, !375, !307}
!375 = !DILocation(line: 278, column: 5, scope: !356)
!376 = !DILocation(line: 279, column: 1, scope: !343)
!377 = distinct !DISubprogram(name: "P1_times_O", scope: !327, file: !327, line: 74, type: !378, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !178, !330, !49, !5}
!380 = !DILocalVariable(name: "p", arg: 1, scope: !377, file: !327, line: 74, type: !178)
!381 = !DILocation(line: 0, scope: !377)
!382 = !DILocalVariable(name: "P1", arg: 2, scope: !377, file: !327, line: 74, type: !330)
!383 = !DILocalVariable(name: "O", arg: 3, scope: !377, file: !327, line: 74, type: !49)
!384 = !DILocalVariable(name: "acc", arg: 4, scope: !377, file: !327, line: 74, type: !5)
!385 = !DILocation(line: 78, column: 5, scope: !377)
!386 = !DILocation(line: 79, column: 1, scope: !377)
!387 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !327, file: !327, line: 47, type: !388, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !243, !49, !330, !5, !243, !243, !243}
!390 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !387, file: !327, line: 47, type: !243)
!391 = !DILocation(line: 0, scope: !387)
!392 = !DILocalVariable(name: "mat", arg: 2, scope: !387, file: !327, line: 47, type: !49)
!393 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !387, file: !327, line: 47, type: !330)
!394 = !DILocalVariable(name: "acc", arg: 4, scope: !387, file: !327, line: 47, type: !5)
!395 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !387, file: !327, line: 48, type: !243)
!396 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !387, file: !327, line: 48, type: !243)
!397 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !387, file: !327, line: 48, type: !243)
!398 = !DILocalVariable(name: "r", scope: !399, file: !327, line: 50, type: !45)
!399 = distinct !DILexicalBlock(scope: !387, file: !327, line: 50, column: 5)
!400 = !DILocation(line: 0, scope: !399)
!401 = !DILocation(line: 50, column: 10, scope: !399)
!402 = !DILocation(line: 50, scope: !399)
!403 = !DILocation(line: 50, column: 23, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !327, line: 50, column: 5)
!405 = !DILocation(line: 50, column: 5, scope: !399)
!406 = !DILocation(line: 51, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !327, line: 51, column: 9)
!408 = distinct !DILexicalBlock(scope: !404, file: !327, line: 50, column: 40)
!409 = !DILocalVariable(name: "c", scope: !407, file: !327, line: 51, type: !45)
!410 = !DILocation(line: 0, scope: !407)
!411 = !DILocation(line: 51, column: 27, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !327, line: 51, column: 9)
!413 = !DILocation(line: 51, column: 9, scope: !407)
!414 = !DILocation(line: 52, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !327, line: 52, column: 13)
!416 = distinct !DILexicalBlock(scope: !412, file: !327, line: 51, column: 44)
!417 = !DILocalVariable(name: "k", scope: !415, file: !327, line: 52, type: !45)
!418 = !DILocation(line: 0, scope: !415)
!419 = !DILocation(line: 52, column: 31, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !327, line: 52, column: 13)
!421 = !DILocation(line: 52, column: 13, scope: !415)
!422 = !DILocation(line: 53, column: 70, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !327, line: 52, column: 54)
!424 = !DILocation(line: 53, column: 84, scope: !423)
!425 = !DILocation(line: 53, column: 65, scope: !423)
!426 = !DILocation(line: 53, column: 51, scope: !423)
!427 = !DILocation(line: 53, column: 96, scope: !423)
!428 = !DILocation(line: 53, column: 90, scope: !423)
!429 = !DILocation(line: 53, column: 136, scope: !423)
!430 = !DILocation(line: 53, column: 150, scope: !423)
!431 = !DILocation(line: 53, column: 131, scope: !423)
!432 = !DILocation(line: 53, column: 117, scope: !423)
!433 = !DILocation(line: 53, column: 17, scope: !423)
!434 = !DILocation(line: 52, column: 48, scope: !420)
!435 = !DILocation(line: 52, column: 13, scope: !420)
!436 = distinct !{!436, !421, !437, !307}
!437 = !DILocation(line: 54, column: 13, scope: !415)
!438 = !DILocation(line: 51, column: 40, scope: !412)
!439 = !DILocation(line: 51, column: 9, scope: !412)
!440 = distinct !{!440, !413, !441, !307}
!441 = !DILocation(line: 55, column: 9, scope: !407)
!442 = !DILocation(line: 50, column: 36, scope: !404)
!443 = !DILocation(line: 50, column: 5, scope: !404)
!444 = distinct !{!444, !405, !445, !307}
!445 = !DILocation(line: 56, column: 5, scope: !399)
!446 = !DILocation(line: 57, column: 1, scope: !387)
!447 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !448, file: !448, line: 31, type: !449, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!448 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!449 = !DISubroutineType(types: !450)
!450 = !{null, !45, !330, !14, !5}
!451 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !447, file: !448, line: 31, type: !45)
!452 = !DILocation(line: 0, scope: !447)
!453 = !DILocalVariable(name: "in", arg: 2, scope: !447, file: !448, line: 31, type: !330)
!454 = !DILocalVariable(name: "a", arg: 3, scope: !447, file: !448, line: 31, type: !14)
!455 = !DILocalVariable(name: "acc", arg: 4, scope: !447, file: !448, line: 31, type: !5)
!456 = !DILocation(line: 33, column: 20, scope: !447)
!457 = !DILocalVariable(name: "tab", scope: !447, file: !448, line: 33, type: !19)
!458 = !DILocalVariable(name: "lsb_ask", scope: !447, file: !448, line: 35, type: !6)
!459 = !DILocalVariable(name: "i", scope: !460, file: !448, line: 37, type: !45)
!460 = distinct !DILexicalBlock(scope: !447, file: !448, line: 37, column: 5)
!461 = !DILocation(line: 0, scope: !460)
!462 = !DILocation(line: 38, column: 21, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !448, line: 37, column: 43)
!464 = distinct !DILexicalBlock(scope: !460, file: !448, line: 37, column: 5)
!465 = !DILocation(line: 38, column: 33, scope: !463)
!466 = !DILocation(line: 38, column: 51, scope: !463)
!467 = !DILocation(line: 38, column: 46, scope: !463)
!468 = !DILocation(line: 38, column: 44, scope: !463)
!469 = !DILocation(line: 39, column: 27, scope: !463)
!470 = !DILocation(line: 39, column: 33, scope: !463)
!471 = !DILocation(line: 39, column: 52, scope: !463)
!472 = !DILocation(line: 39, column: 59, scope: !463)
!473 = !DILocation(line: 39, column: 46, scope: !463)
!474 = !DILocation(line: 39, column: 44, scope: !463)
!475 = !DILocation(line: 39, column: 17, scope: !463)
!476 = !DILocation(line: 40, column: 21, scope: !463)
!477 = !DILocation(line: 40, column: 27, scope: !463)
!478 = !DILocation(line: 40, column: 33, scope: !463)
!479 = !DILocation(line: 40, column: 52, scope: !463)
!480 = !DILocation(line: 40, column: 59, scope: !463)
!481 = !DILocation(line: 40, column: 46, scope: !463)
!482 = !DILocation(line: 40, column: 44, scope: !463)
!483 = !DILocation(line: 40, column: 17, scope: !463)
!484 = !DILocation(line: 41, column: 21, scope: !463)
!485 = !DILocation(line: 41, column: 27, scope: !463)
!486 = !DILocation(line: 41, column: 33, scope: !463)
!487 = !DILocation(line: 41, column: 52, scope: !463)
!488 = !DILocation(line: 41, column: 59, scope: !463)
!489 = !DILocation(line: 41, column: 46, scope: !463)
!490 = !DILocation(line: 41, column: 44, scope: !463)
!491 = !DILocation(line: 41, column: 17, scope: !463)
!492 = !DILocation(line: 38, column: 16, scope: !463)
!493 = !DILocation(line: 38, column: 9, scope: !463)
!494 = !DILocation(line: 43, column: 1, scope: !447)
!495 = distinct !DISubprogram(name: "mul_table", scope: !496, file: !496, line: 129, type: !497, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!496 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!497 = !DISubroutineType(types: !498)
!498 = !{!19, !12}
!499 = !DILocalVariable(name: "b", arg: 1, scope: !495, file: !496, line: 129, type: !12)
!500 = !DILocation(line: 0, scope: !495)
!501 = !DILocation(line: 130, column: 19, scope: !495)
!502 = !DILocation(line: 130, column: 33, scope: !495)
!503 = !DILocalVariable(name: "x", scope: !495, file: !496, line: 130, type: !19)
!504 = !DILocalVariable(name: "high_nibble_mask", scope: !495, file: !496, line: 132, type: !19)
!505 = !DILocation(line: 134, column: 28, scope: !495)
!506 = !DILocalVariable(name: "high_half", scope: !495, file: !496, line: 134, type: !19)
!507 = !DILocation(line: 135, column: 28, scope: !495)
!508 = !DILocation(line: 135, column: 47, scope: !495)
!509 = !DILocation(line: 135, column: 34, scope: !495)
!510 = !DILocation(line: 135, column: 5, scope: !495)
!511 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !327, file: !327, line: 16, type: !512, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !243, !330, !49, !5, !243, !243, !243, !243}
!514 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !511, file: !327, line: 16, type: !243)
!515 = !DILocation(line: 0, scope: !511)
!516 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !511, file: !327, line: 16, type: !330)
!517 = !DILocalVariable(name: "mat", arg: 3, scope: !511, file: !327, line: 16, type: !49)
!518 = !DILocalVariable(name: "acc", arg: 4, scope: !511, file: !327, line: 16, type: !5)
!519 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !511, file: !327, line: 17, type: !243)
!520 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !511, file: !327, line: 17, type: !243)
!521 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !511, file: !327, line: 17, type: !243)
!522 = !DILocalVariable(name: "triangular", arg: 8, scope: !511, file: !327, line: 17, type: !243)
!523 = !DILocalVariable(name: "bs_mat_entries_used", scope: !511, file: !327, line: 19, type: !45)
!524 = !DILocalVariable(name: "r", scope: !525, file: !327, line: 20, type: !45)
!525 = distinct !DILexicalBlock(scope: !511, file: !327, line: 20, column: 5)
!526 = !DILocation(line: 0, scope: !525)
!527 = !DILocation(line: 20, column: 10, scope: !525)
!528 = !DILocation(line: 19, column: 9, scope: !511)
!529 = !DILocation(line: 20, scope: !525)
!530 = !DILocation(line: 20, column: 23, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !327, line: 20, column: 5)
!532 = !DILocation(line: 20, column: 5, scope: !525)
!533 = !DILocation(line: 21, column: 33, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !327, line: 21, column: 9)
!535 = distinct !DILexicalBlock(scope: !531, file: !327, line: 20, column: 43)
!536 = !DILocalVariable(name: "c", scope: !534, file: !327, line: 21, type: !45)
!537 = !DILocation(line: 0, scope: !534)
!538 = !DILocation(line: 21, column: 14, scope: !534)
!539 = !DILocation(line: 21, scope: !534)
!540 = !DILocation(line: 21, column: 40, scope: !541)
!541 = distinct !DILexicalBlock(scope: !534, file: !327, line: 21, column: 9)
!542 = !DILocation(line: 21, column: 9, scope: !534)
!543 = !DILocation(line: 22, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !327, line: 22, column: 13)
!545 = distinct !DILexicalBlock(scope: !541, file: !327, line: 21, column: 60)
!546 = !DILocalVariable(name: "k", scope: !544, file: !327, line: 22, type: !45)
!547 = !DILocation(line: 0, scope: !544)
!548 = !DILocation(line: 22, column: 31, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !327, line: 22, column: 13)
!550 = !DILocation(line: 22, column: 13, scope: !544)
!551 = !DILocation(line: 23, column: 65, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !327, line: 22, column: 51)
!553 = !DILocation(line: 23, column: 51, scope: !552)
!554 = !DILocation(line: 23, column: 94, scope: !552)
!555 = !DILocation(line: 23, column: 88, scope: !552)
!556 = !DILocation(line: 23, column: 134, scope: !552)
!557 = !DILocation(line: 23, column: 145, scope: !552)
!558 = !DILocation(line: 23, column: 129, scope: !552)
!559 = !DILocation(line: 23, column: 115, scope: !552)
!560 = !DILocation(line: 23, column: 17, scope: !552)
!561 = !DILocation(line: 22, column: 45, scope: !549)
!562 = !DILocation(line: 22, column: 13, scope: !549)
!563 = distinct !{!563, !550, !564, !307}
!564 = !DILocation(line: 24, column: 13, scope: !544)
!565 = !DILocation(line: 25, column: 33, scope: !545)
!566 = !DILocation(line: 21, column: 56, scope: !541)
!567 = !DILocation(line: 21, column: 9, scope: !541)
!568 = distinct !{!568, !542, !569, !307}
!569 = !DILocation(line: 26, column: 9, scope: !534)
!570 = !DILocation(line: 20, column: 39, scope: !531)
!571 = !DILocation(line: 20, column: 5, scope: !531)
!572 = distinct !{!572, !532, !573, !307}
!573 = !DILocation(line: 27, column: 5, scope: !525)
!574 = !DILocation(line: 28, column: 1, scope: !511)
!575 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !25, file: !25, line: 262, type: !576, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !49, !5, !45, !45}
!578 = !DILocalVariable(name: "in", arg: 1, scope: !575, file: !25, line: 262, type: !49)
!579 = !DILocation(line: 0, scope: !575)
!580 = !DILocalVariable(name: "out", arg: 2, scope: !575, file: !25, line: 262, type: !5)
!581 = !DILocalVariable(name: "vecs", arg: 3, scope: !575, file: !25, line: 262, type: !45)
!582 = !DILocalVariable(name: "m", arg: 4, scope: !575, file: !25, line: 262, type: !45)
!583 = !DILocation(line: 263, column: 32, scope: !575)
!584 = !DILocation(line: 263, column: 38, scope: !575)
!585 = !DILocalVariable(name: "m_vec_limbs", scope: !575, file: !25, line: 263, type: !243)
!586 = !DILocalVariable(name: "_out", scope: !575, file: !25, line: 264, type: !18)
!587 = !DILocalVariable(name: "tmp", scope: !575, file: !25, line: 265, type: !588)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !39)
!589 = !DILocation(line: 265, column: 14, scope: !575)
!590 = !DILocalVariable(name: "i", scope: !591, file: !25, line: 266, type: !45)
!591 = distinct !DILexicalBlock(scope: !575, file: !25, line: 266, column: 5)
!592 = !DILocation(line: 0, scope: !591)
!593 = !DILocation(line: 266, column: 10, scope: !591)
!594 = !DILocation(line: 266, column: 28, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !25, line: 266, column: 5)
!596 = !DILocation(line: 266, column: 5, scope: !591)
!597 = !DILocation(line: 266, scope: !591)
!598 = !DILocation(line: 268, column: 27, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !25, line: 267, column: 5)
!600 = !DILocation(line: 268, column: 29, scope: !599)
!601 = !DILocation(line: 268, column: 24, scope: !599)
!602 = !DILocation(line: 268, column: 34, scope: !599)
!603 = !DILocation(line: 268, column: 9, scope: !599)
!604 = !DILocation(line: 269, column: 24, scope: !599)
!605 = !DILocation(line: 269, column: 36, scope: !599)
!606 = !DILocation(line: 269, column: 21, scope: !599)
!607 = !DILocation(line: 269, column: 71, scope: !599)
!608 = !DILocation(line: 269, column: 9, scope: !599)
!609 = !DILocation(line: 266, column: 5, scope: !595)
!610 = distinct !{!610, !596, !611, !307}
!611 = !DILocation(line: 270, column: 5, scope: !591)
!612 = !DILocation(line: 271, column: 1, scope: !575)
!613 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !614, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!614 = !DISubroutineType(types: !615)
!615 = !{!45, !178, !49, !5}
!616 = !DILocalVariable(name: "p", arg: 1, scope: !613, file: !25, line: 310, type: !178)
!617 = !DILocation(line: 0, scope: !613)
!618 = !DILocalVariable(name: "csk", arg: 2, scope: !613, file: !25, line: 310, type: !49)
!619 = !DILocalVariable(name: "sk", arg: 3, scope: !613, file: !25, line: 311, type: !5)
!620 = !DILocalVariable(name: "ret", scope: !613, file: !25, line: 312, type: !45)
!621 = !DILocalVariable(name: "S", scope: !613, file: !25, line: 313, type: !223)
!622 = !DILocation(line: 313, column: 19, scope: !613)
!623 = !DILocalVariable(name: "P", scope: !613, file: !25, line: 314, type: !5)
!624 = !DILocation(line: 315, column: 24, scope: !613)
!625 = !DILocalVariable(name: "O", scope: !613, file: !25, line: 315, type: !18)
!626 = !DILocalVariable(name: "param_o", scope: !613, file: !25, line: 317, type: !243)
!627 = !DILocalVariable(name: "param_v", scope: !613, file: !25, line: 318, type: !243)
!628 = !DILocalVariable(name: "param_O_bytes", scope: !613, file: !25, line: 319, type: !243)
!629 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !613, file: !25, line: 320, type: !243)
!630 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !613, file: !25, line: 321, type: !243)
!631 = !DILocalVariable(name: "seed_sk", scope: !613, file: !25, line: 323, type: !49)
!632 = !DILocalVariable(name: "seed_pk", scope: !613, file: !25, line: 324, type: !18)
!633 = !DILocation(line: 326, column: 5, scope: !613)
!634 = !DILocation(line: 328, column: 14, scope: !613)
!635 = !DILocation(line: 328, column: 5, scope: !613)
!636 = !DILocation(line: 334, column: 5, scope: !613)
!637 = !DILocation(line: 341, column: 22, scope: !613)
!638 = !DILocalVariable(name: "P2", scope: !613, file: !25, line: 341, type: !5)
!639 = !DILocalVariable(name: "P1", scope: !613, file: !25, line: 343, type: !5)
!640 = !DILocalVariable(name: "L", scope: !613, file: !25, line: 346, type: !5)
!641 = !DILocation(line: 347, column: 5, scope: !613)
!642 = !DILocation(line: 355, column: 5, scope: !613)
!643 = !DILocation(line: 356, column: 5, scope: !613)
!644 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !327, file: !327, line: 218, type: !378, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!645 = !DILocalVariable(name: "p", arg: 1, scope: !644, file: !327, line: 218, type: !178)
!646 = !DILocation(line: 0, scope: !644)
!647 = !DILocalVariable(name: "P1", arg: 2, scope: !644, file: !327, line: 218, type: !330)
!648 = !DILocalVariable(name: "O", arg: 3, scope: !644, file: !327, line: 218, type: !49)
!649 = !DILocalVariable(name: "acc", arg: 4, scope: !644, file: !327, line: 218, type: !5)
!650 = !DILocalVariable(name: "param_o", scope: !644, file: !327, line: 222, type: !243)
!651 = !DILocalVariable(name: "param_v", scope: !644, file: !327, line: 223, type: !243)
!652 = !DILocalVariable(name: "m_vec_limbs", scope: !644, file: !327, line: 224, type: !243)
!653 = !DILocalVariable(name: "bs_mat_entries_used", scope: !644, file: !327, line: 226, type: !45)
!654 = !DILocalVariable(name: "r", scope: !655, file: !327, line: 227, type: !45)
!655 = distinct !DILexicalBlock(scope: !644, file: !327, line: 227, column: 5)
!656 = !DILocation(line: 0, scope: !655)
!657 = !DILocation(line: 227, column: 10, scope: !655)
!658 = !DILocation(line: 226, column: 9, scope: !644)
!659 = !DILocation(line: 227, scope: !655)
!660 = !DILocation(line: 227, column: 23, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !327, line: 227, column: 5)
!662 = !DILocation(line: 227, column: 5, scope: !655)
!663 = !DILocation(line: 228, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !327, line: 228, column: 9)
!665 = distinct !DILexicalBlock(scope: !661, file: !327, line: 227, column: 39)
!666 = !DILocation(line: 228, scope: !664)
!667 = !DILocalVariable(name: "c", scope: !664, file: !327, line: 228, type: !45)
!668 = !DILocation(line: 0, scope: !664)
!669 = !DILocation(line: 228, column: 27, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !327, line: 228, column: 9)
!671 = !DILocation(line: 229, column: 17, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !327, line: 229, column: 16)
!673 = distinct !DILexicalBlock(scope: !670, file: !327, line: 228, column: 43)
!674 = !DILocation(line: 234, column: 47, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !327, line: 233, column: 50)
!676 = distinct !DILexicalBlock(scope: !677, file: !327, line: 233, column: 13)
!677 = distinct !DILexicalBlock(scope: !673, file: !327, line: 233, column: 13)
!678 = !DILocation(line: 234, column: 88, scope: !675)
!679 = !DILocation(line: 234, column: 84, scope: !675)
!680 = !DILocation(line: 233, column: 13, scope: !677)
!681 = !DILocation(line: 233, scope: !677)
!682 = !DILocalVariable(name: "k", scope: !677, file: !327, line: 233, type: !45)
!683 = !DILocation(line: 0, scope: !677)
!684 = !DILocation(line: 234, column: 127, scope: !675)
!685 = !DILocation(line: 234, column: 137, scope: !675)
!686 = !DILocation(line: 234, column: 108, scope: !675)
!687 = !DILocation(line: 234, column: 17, scope: !675)
!688 = !DILocation(line: 235, column: 47, scope: !675)
!689 = !DILocation(line: 235, column: 88, scope: !675)
!690 = !DILocation(line: 235, column: 84, scope: !675)
!691 = !DILocation(line: 235, column: 127, scope: !675)
!692 = !DILocation(line: 235, column: 137, scope: !675)
!693 = !DILocation(line: 235, column: 108, scope: !675)
!694 = !DILocation(line: 235, column: 17, scope: !675)
!695 = !DILocation(line: 233, column: 44, scope: !676)
!696 = !DILocation(line: 233, column: 31, scope: !676)
!697 = !DILocation(line: 233, column: 13, scope: !676)
!698 = distinct !{!698, !680, !699, !307}
!699 = !DILocation(line: 236, column: 13, scope: !677)
!700 = !DILocation(line: 0, scope: !673)
!701 = !DILocation(line: 228, column: 39, scope: !670)
!702 = !DILocation(line: 228, column: 9, scope: !670)
!703 = distinct !{!703, !663, !704, !307}
!704 = !DILocation(line: 238, column: 9, scope: !664)
!705 = !DILocation(line: 227, column: 35, scope: !661)
!706 = !DILocation(line: 227, column: 5, scope: !661)
!707 = distinct !{!707, !662, !708, !307}
!708 = !DILocation(line: 239, column: 5, scope: !655)
!709 = !DILocation(line: 240, column: 1, scope: !644)
!710 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !711, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!711 = !DISubroutineType(types: !712)
!712 = !{!45, !178, !18, !713, !49, !15, !49}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!714 = !DILocalVariable(name: "p", arg: 1, scope: !710, file: !25, line: 359, type: !178)
!715 = !DILocation(line: 0, scope: !710)
!716 = !DILocalVariable(name: "sig", arg: 2, scope: !710, file: !25, line: 359, type: !18)
!717 = !DILocalVariable(name: "siglen", arg: 3, scope: !710, file: !25, line: 360, type: !713)
!718 = !DILocalVariable(name: "m", arg: 4, scope: !710, file: !25, line: 360, type: !49)
!719 = !DILocalVariable(name: "mlen", arg: 5, scope: !710, file: !25, line: 361, type: !15)
!720 = !DILocalVariable(name: "csk", arg: 6, scope: !710, file: !25, line: 361, type: !49)
!721 = !DILocalVariable(name: "ret", scope: !710, file: !25, line: 362, type: !45)
!722 = !DILocalVariable(name: "tenc", scope: !710, file: !25, line: 363, type: !138)
!723 = !DILocation(line: 363, column: 19, scope: !710)
!724 = !DILocalVariable(name: "t", scope: !710, file: !25, line: 363, type: !725)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 64)
!728 = !DILocation(line: 363, column: 38, scope: !710)
!729 = !DILocalVariable(name: "y", scope: !710, file: !25, line: 364, type: !725)
!730 = !DILocation(line: 364, column: 19, scope: !710)
!731 = !DILocalVariable(name: "salt", scope: !710, file: !25, line: 365, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 24)
!735 = !DILocation(line: 365, column: 19, scope: !710)
!736 = !DILocalVariable(name: "V", scope: !710, file: !25, line: 366, type: !737)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1296, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 162)
!740 = !DILocation(line: 366, column: 19, scope: !710)
!741 = !DILocalVariable(name: "Vdec", scope: !710, file: !25, line: 366, type: !742)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 256)
!745 = !DILocation(line: 366, column: 57, scope: !710)
!746 = !DILocalVariable(name: "A", scope: !710, file: !25, line: 367, type: !747)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 35328, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 4416)
!750 = !DILocation(line: 367, column: 19, scope: !710)
!751 = !DILocalVariable(name: "x", scope: !710, file: !25, line: 368, type: !752)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2592, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 324)
!755 = !DILocation(line: 368, column: 19, scope: !710)
!756 = !DILocalVariable(name: "r", scope: !710, file: !25, line: 369, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 552, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 69)
!760 = !DILocation(line: 369, column: 19, scope: !710)
!761 = !DILocalVariable(name: "s", scope: !710, file: !25, line: 370, type: !752)
!762 = !DILocation(line: 370, column: 19, scope: !710)
!763 = !DILocalVariable(name: "sk", scope: !710, file: !25, line: 372, type: !128, align: 256)
!764 = !DILocation(line: 372, column: 22, scope: !710)
!765 = !DILocalVariable(name: "Ox", scope: !710, file: !25, line: 373, type: !725)
!766 = !DILocation(line: 373, column: 19, scope: !710)
!767 = !DILocalVariable(name: "tmp", scope: !710, file: !25, line: 374, type: !768)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 81)
!771 = !DILocation(line: 374, column: 19, scope: !710)
!772 = !DILocalVariable(name: "param_m", scope: !710, file: !25, line: 378, type: !243)
!773 = !DILocalVariable(name: "param_n", scope: !710, file: !25, line: 379, type: !243)
!774 = !DILocalVariable(name: "param_o", scope: !710, file: !25, line: 380, type: !243)
!775 = !DILocalVariable(name: "param_k", scope: !710, file: !25, line: 381, type: !243)
!776 = !DILocalVariable(name: "param_v", scope: !710, file: !25, line: 382, type: !243)
!777 = !DILocalVariable(name: "param_m_bytes", scope: !710, file: !25, line: 383, type: !243)
!778 = !DILocalVariable(name: "param_v_bytes", scope: !710, file: !25, line: 384, type: !243)
!779 = !DILocalVariable(name: "param_r_bytes", scope: !710, file: !25, line: 385, type: !243)
!780 = !DILocalVariable(name: "param_sig_bytes", scope: !710, file: !25, line: 386, type: !243)
!781 = !DILocalVariable(name: "param_A_cols", scope: !710, file: !25, line: 387, type: !243)
!782 = !DILocalVariable(name: "param_digest_bytes", scope: !710, file: !25, line: 388, type: !243)
!783 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !710, file: !25, line: 389, type: !243)
!784 = !DILocalVariable(name: "param_salt_bytes", scope: !710, file: !25, line: 390, type: !243)
!785 = !DILocation(line: 392, column: 11, scope: !710)
!786 = !DILocation(line: 393, column: 13, scope: !787)
!787 = distinct !DILexicalBlock(scope: !710, file: !25, line: 393, column: 9)
!788 = !DILocalVariable(name: "seed_sk", scope: !710, file: !25, line: 371, type: !49)
!789 = !DILocation(line: 401, column: 5, scope: !710)
!790 = !DILocalVariable(name: "P1", scope: !710, file: !25, line: 403, type: !5)
!791 = !DILocation(line: 404, column: 23, scope: !710)
!792 = !DILocalVariable(name: "L", scope: !710, file: !25, line: 404, type: !5)
!793 = !DILocalVariable(name: "Mtmp", scope: !710, file: !25, line: 405, type: !794)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17408, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 272)
!797 = !DILocation(line: 405, column: 14, scope: !710)
!798 = !DILocation(line: 420, column: 25, scope: !799)
!799 = distinct !DILexicalBlock(scope: !710, file: !25, line: 420, column: 9)
!800 = !DILocation(line: 420, column: 9, scope: !799)
!801 = !DILocation(line: 420, column: 65, scope: !799)
!802 = !DILocation(line: 427, column: 37, scope: !710)
!803 = !DILocation(line: 427, column: 5, scope: !710)
!804 = !DILocation(line: 429, column: 5, scope: !710)
!805 = !DILocation(line: 437, column: 16, scope: !710)
!806 = !DILocation(line: 437, column: 5, scope: !710)
!807 = !DILocation(line: 438, column: 59, scope: !710)
!808 = !DILocalVariable(name: "ctrbyte", scope: !710, file: !25, line: 375, type: !18)
!809 = !DILocation(line: 440, column: 5, scope: !710)
!810 = !DILocation(line: 442, column: 5, scope: !710)
!811 = !DILocalVariable(name: "ctr", scope: !812, file: !25, line: 444, type: !45)
!812 = distinct !DILexicalBlock(scope: !710, file: !25, line: 444, column: 5)
!813 = !DILocation(line: 0, scope: !812)
!814 = !DILocation(line: 466, column: 18, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !25, line: 444, column: 42)
!816 = distinct !DILexicalBlock(scope: !812, file: !25, line: 444, column: 5)
!817 = !DILocation(line: 444, column: 10, scope: !812)
!818 = !DILocation(line: 444, scope: !812)
!819 = !DILocation(line: 444, column: 27, scope: !816)
!820 = !DILocation(line: 444, column: 5, scope: !812)
!821 = !DILocation(line: 445, column: 20, scope: !815)
!822 = !DILocation(line: 445, column: 18, scope: !815)
!823 = !DILocation(line: 447, column: 9, scope: !815)
!824 = !DILocalVariable(name: "i", scope: !825, file: !25, line: 451, type: !45)
!825 = distinct !DILexicalBlock(scope: !815, file: !25, line: 451, column: 9)
!826 = !DILocation(line: 0, scope: !825)
!827 = !DILocation(line: 452, column: 13, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !25, line: 451, column: 48)
!829 = distinct !DILexicalBlock(scope: !825, file: !25, line: 451, column: 9)
!830 = !DILocation(line: 452, column: 22, scope: !828)
!831 = !DILocation(line: 452, column: 48, scope: !828)
!832 = !DILocation(line: 456, column: 9, scope: !815)
!833 = !DILocation(line: 458, column: 9, scope: !815)
!834 = !DILocation(line: 459, column: 9, scope: !815)
!835 = !DILocalVariable(name: "i", scope: !836, file: !25, line: 461, type: !45)
!836 = distinct !DILexicalBlock(scope: !815, file: !25, line: 461, column: 9)
!837 = !DILocation(line: 0, scope: !836)
!838 = !DILocation(line: 461, column: 14, scope: !836)
!839 = !DILocation(line: 461, scope: !836)
!840 = !DILocation(line: 463, column: 20, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !25, line: 462, column: 9)
!842 = distinct !DILexicalBlock(scope: !836, file: !25, line: 461, column: 9)
!843 = !DILocation(line: 463, column: 43, scope: !841)
!844 = !DILocation(line: 463, column: 13, scope: !841)
!845 = !DILocation(line: 463, column: 48, scope: !841)
!846 = !DILocation(line: 461, column: 39, scope: !842)
!847 = !DILocation(line: 461, column: 27, scope: !842)
!848 = !DILocation(line: 461, column: 9, scope: !836)
!849 = !DILocation(line: 461, column: 9, scope: !842)
!850 = distinct !{!850, !848, !851, !307}
!851 = !DILocation(line: 464, column: 9, scope: !836)
!852 = !DILocation(line: 466, column: 9, scope: !815)
!853 = !DILocation(line: 470, column: 13, scope: !854)
!854 = distinct !DILexicalBlock(scope: !815, file: !25, line: 470, column: 13)
!855 = !DILocation(line: 473, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !854, file: !25, line: 472, column: 16)
!857 = !DILocation(line: 474, column: 13, scope: !856)
!858 = !DILocation(line: 444, column: 35, scope: !816)
!859 = !DILocation(line: 444, column: 5, scope: !816)
!860 = distinct !{!860, !820, !861, !307}
!861 = !DILocation(line: 476, column: 5, scope: !812)
!862 = !DILocalVariable(name: "i", scope: !863, file: !25, line: 478, type: !45)
!863 = distinct !DILexicalBlock(scope: !710, file: !25, line: 478, column: 5)
!864 = !DILocation(line: 0, scope: !863)
!865 = !DILocation(line: 478, column: 10, scope: !863)
!866 = !DILocation(line: 478, scope: !863)
!867 = !DILocation(line: 478, column: 23, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !25, line: 478, column: 5)
!869 = !DILocation(line: 478, column: 5, scope: !863)
!870 = !DILocation(line: 479, column: 23, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !25, line: 478, column: 44)
!872 = !DILocation(line: 479, column: 19, scope: !871)
!873 = !DILocalVariable(name: "vi", scope: !710, file: !25, line: 376, type: !18)
!874 = !DILocation(line: 480, column: 17, scope: !871)
!875 = !DILocation(line: 480, column: 33, scope: !871)
!876 = !DILocation(line: 480, column: 29, scope: !871)
!877 = !DILocation(line: 480, column: 9, scope: !871)
!878 = !DILocation(line: 481, column: 31, scope: !871)
!879 = !DILocation(line: 481, column: 27, scope: !871)
!880 = !DILocation(line: 481, column: 9, scope: !871)
!881 = !DILocation(line: 482, column: 22, scope: !871)
!882 = !DILocation(line: 482, column: 18, scope: !871)
!883 = !DILocation(line: 482, column: 32, scope: !871)
!884 = !DILocation(line: 482, column: 61, scope: !871)
!885 = !DILocation(line: 482, column: 57, scope: !871)
!886 = !DILocation(line: 482, column: 9, scope: !871)
!887 = !DILocation(line: 478, column: 39, scope: !868)
!888 = !DILocation(line: 478, column: 5, scope: !868)
!889 = distinct !{!889, !869, !890, !307}
!890 = !DILocation(line: 483, column: 5, scope: !863)
!891 = !DILocation(line: 484, column: 5, scope: !710)
!892 = !DILocation(line: 486, column: 34, scope: !710)
!893 = !DILocation(line: 486, column: 5, scope: !710)
!894 = !DILocation(line: 487, column: 13, scope: !710)
!895 = !DILocation(line: 487, column: 5, scope: !710)
!896 = !DILabel(scope: !710, name: "err", file: !25, line: 489)
!897 = !DILocation(line: 489, column: 1, scope: !710)
!898 = !DILocation(line: 490, column: 5, scope: !710)
!899 = !DILocation(line: 491, column: 5, scope: !710)
!900 = !DILocation(line: 492, column: 5, scope: !710)
!901 = !DILocation(line: 493, column: 5, scope: !710)
!902 = !DILocation(line: 494, column: 23, scope: !710)
!903 = !DILocation(line: 494, column: 5, scope: !710)
!904 = !DILocation(line: 495, column: 5, scope: !710)
!905 = !DILocation(line: 496, column: 5, scope: !710)
!906 = !DILocation(line: 497, column: 5, scope: !710)
!907 = !DILocation(line: 498, column: 5, scope: !710)
!908 = !DILocation(line: 499, column: 5, scope: !710)
!909 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !327, file: !327, line: 244, type: !910, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !178, !49, !330, !330, !5, !5}
!912 = !DILocalVariable(name: "p", arg: 1, scope: !909, file: !327, line: 244, type: !178)
!913 = !DILocation(line: 0, scope: !909)
!914 = !DILocalVariable(name: "Vdec", arg: 2, scope: !909, file: !327, line: 244, type: !49)
!915 = !DILocalVariable(name: "L", arg: 3, scope: !909, file: !327, line: 244, type: !330)
!916 = !DILocalVariable(name: "P1", arg: 4, scope: !909, file: !327, line: 244, type: !330)
!917 = !DILocalVariable(name: "VL", arg: 5, scope: !909, file: !327, line: 244, type: !5)
!918 = !DILocalVariable(name: "VP1V", arg: 6, scope: !909, file: !327, line: 244, type: !5)
!919 = !DILocalVariable(name: "param_k", scope: !909, file: !327, line: 246, type: !243)
!920 = !DILocalVariable(name: "param_v", scope: !909, file: !327, line: 247, type: !243)
!921 = !DILocalVariable(name: "param_o", scope: !909, file: !327, line: 248, type: !243)
!922 = !DILocation(line: 251, column: 5, scope: !909)
!923 = !DILocalVariable(name: "Pv", scope: !909, file: !327, line: 254, type: !924)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 65536, elements: !925)
!925 = !{!926}
!926 = !DISubrange(count: 1024)
!927 = !DILocation(line: 254, column: 14, scope: !909)
!928 = !DILocation(line: 255, column: 5, scope: !909)
!929 = !DILocation(line: 256, column: 5, scope: !909)
!930 = !DILocation(line: 257, column: 1, scope: !909)
!931 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !932, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !178, !5, !49, !18}
!934 = !DILocalVariable(name: "p", arg: 1, scope: !931, file: !25, line: 43, type: !178)
!935 = !DILocation(line: 0, scope: !931)
!936 = !DILocalVariable(name: "vPv", arg: 2, scope: !931, file: !25, line: 43, type: !5)
!937 = !DILocalVariable(name: "t", arg: 3, scope: !931, file: !25, line: 43, type: !49)
!938 = !DILocalVariable(name: "y", arg: 4, scope: !931, file: !25, line: 43, type: !18)
!939 = !DILocalVariable(name: "top_pos", scope: !931, file: !25, line: 48, type: !940)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!941 = !DILocalVariable(name: "m_vec_limbs", scope: !931, file: !25, line: 49, type: !940)
!942 = !DILocalVariable(name: "temp", scope: !931, file: !25, line: 62, type: !588)
!943 = !DILocation(line: 62, column: 14, scope: !931)
!944 = !DILocalVariable(name: "temp_bytes", scope: !931, file: !25, line: 63, type: !18)
!945 = !DILocalVariable(name: "i", scope: !946, file: !25, line: 64, type: !45)
!946 = distinct !DILexicalBlock(scope: !931, file: !25, line: 64, column: 5)
!947 = !DILocation(line: 0, scope: !946)
!948 = !DILocation(line: 64, column: 10, scope: !946)
!949 = !DILocation(line: 64, scope: !946)
!950 = !DILocation(line: 64, column: 36, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !25, line: 64, column: 5)
!952 = !DILocation(line: 64, column: 5, scope: !946)
!953 = !DILocation(line: 65, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !25, line: 65, column: 9)
!955 = distinct !DILexicalBlock(scope: !951, file: !25, line: 64, column: 48)
!956 = !DILocalVariable(name: "j", scope: !954, file: !25, line: 65, type: !45)
!957 = !DILocation(line: 0, scope: !954)
!958 = !DILocation(line: 65, column: 27, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !25, line: 65, column: 9)
!960 = !DILocation(line: 65, column: 9, scope: !954)
!961 = !DILocation(line: 67, column: 34, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !25, line: 65, column: 46)
!963 = !DILocation(line: 67, column: 54, scope: !962)
!964 = !DILocalVariable(name: "top", scope: !962, file: !25, line: 67, type: !14)
!965 = !DILocation(line: 0, scope: !962)
!966 = !DILocation(line: 68, column: 13, scope: !962)
!967 = !DILocation(line: 68, column: 33, scope: !962)
!968 = !DILocalVariable(name: "k", scope: !969, file: !25, line: 69, type: !45)
!969 = distinct !DILexicalBlock(scope: !962, file: !25, line: 69, column: 13)
!970 = !DILocation(line: 0, scope: !969)
!971 = !DILocation(line: 70, column: 30, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !25, line: 69, column: 52)
!973 = distinct !DILexicalBlock(scope: !969, file: !25, line: 69, column: 13)
!974 = !DILocation(line: 70, column: 38, scope: !972)
!975 = !DILocation(line: 70, column: 17, scope: !972)
!976 = !DILocation(line: 70, column: 27, scope: !972)
!977 = !DILocation(line: 71, column: 17, scope: !972)
!978 = !DILocation(line: 71, column: 25, scope: !972)
!979 = !DILocation(line: 67, column: 33, scope: !962)
!980 = !DILocalVariable(name: "jj", scope: !981, file: !25, line: 74, type: !45)
!981 = distinct !DILexicalBlock(scope: !962, file: !25, line: 74, column: 13)
!982 = !DILocation(line: 0, scope: !981)
!983 = !DILocation(line: 79, column: 41, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !25, line: 75, column: 30)
!985 = distinct !DILexicalBlock(scope: !986, file: !25, line: 75, column: 20)
!986 = distinct !DILexicalBlock(scope: !987, file: !25, line: 74, column: 53)
!987 = distinct !DILexicalBlock(scope: !981, file: !25, line: 74, column: 13)
!988 = !DILocation(line: 79, column: 38, scope: !984)
!989 = !DILocation(line: 86, column: 41, scope: !990)
!990 = distinct !DILexicalBlock(scope: !985, file: !25, line: 82, column: 22)
!991 = !DILocation(line: 86, column: 73, scope: !990)
!992 = !DILocation(line: 86, column: 38, scope: !990)
!993 = !DILocation(line: 79, column: 21, scope: !984)
!994 = !DILocation(line: 86, column: 21, scope: !990)
!995 = !DILocalVariable(name: "k", scope: !996, file: !25, line: 92, type: !15)
!996 = distinct !DILexicalBlock(scope: !962, file: !25, line: 92, column: 13)
!997 = !DILocation(line: 0, scope: !996)
!998 = !DILocation(line: 93, column: 28, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !25, line: 92, column: 51)
!1000 = distinct !DILexicalBlock(scope: !996, file: !25, line: 92, column: 13)
!1001 = !DILocation(line: 93, column: 78, scope: !999)
!1002 = !DILocation(line: 93, column: 83, scope: !999)
!1003 = !DILocation(line: 93, column: 82, scope: !999)
!1004 = !DILocation(line: 93, column: 73, scope: !999)
!1005 = !DILocation(line: 93, column: 25, scope: !999)
!1006 = !DILocation(line: 93, column: 54, scope: !999)
!1007 = !DILocation(line: 93, column: 68, scope: !999)
!1008 = !DILocation(line: 93, column: 109, scope: !999)
!1009 = !DILocation(line: 93, column: 123, scope: !999)
!1010 = !DILocation(line: 93, column: 17, scope: !999)
!1011 = !DILocation(line: 65, column: 42, scope: !959)
!1012 = !DILocation(line: 65, column: 9, scope: !959)
!1013 = distinct !{!1013, !960, !1014, !307}
!1014 = !DILocation(line: 95, column: 9, scope: !954)
!1015 = !DILocation(line: 64, column: 44, scope: !951)
!1016 = !DILocation(line: 64, column: 5, scope: !951)
!1017 = distinct !{!1017, !952, !1018, !307}
!1018 = !DILocation(line: 96, column: 5, scope: !946)
!1019 = !DILocation(line: 99, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !931, file: !25, line: 99, column: 5)
!1021 = !DILocalVariable(name: "i", scope: !1020, file: !25, line: 99, type: !45)
!1022 = !DILocation(line: 0, scope: !1020)
!1023 = !DILocation(line: 105, column: 18, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !25, line: 100, column: 5)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !25, line: 99, column: 5)
!1026 = !DILocation(line: 105, column: 40, scope: !1024)
!1027 = !DILocation(line: 105, column: 28, scope: !1024)
!1028 = !DILocation(line: 105, column: 44, scope: !1024)
!1029 = !DILocation(line: 105, column: 25, scope: !1024)
!1030 = !DILocation(line: 105, column: 9, scope: !1024)
!1031 = !DILocation(line: 105, column: 16, scope: !1024)
!1032 = !DILocation(line: 106, column: 21, scope: !1024)
!1033 = !DILocation(line: 106, column: 18, scope: !1024)
!1034 = !DILocation(line: 106, column: 44, scope: !1024)
!1035 = !DILocation(line: 106, column: 25, scope: !1024)
!1036 = !DILocation(line: 106, column: 12, scope: !1024)
!1037 = !DILocation(line: 106, column: 9, scope: !1024)
!1038 = !DILocation(line: 106, column: 16, scope: !1024)
!1039 = !DILocation(line: 99, column: 38, scope: !1025)
!1040 = !DILocation(line: 99, column: 23, scope: !1025)
!1041 = !DILocation(line: 99, column: 5, scope: !1020)
!1042 = !DILocation(line: 99, column: 5, scope: !1025)
!1043 = distinct !{!1043, !1041, !1044, !307}
!1044 = !DILocation(line: 108, column: 5, scope: !1020)
!1045 = !DILocation(line: 109, column: 1, scope: !931)
!1046 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1047, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !178, !5, !18}
!1049 = !DILocalVariable(name: "p", arg: 1, scope: !1046, file: !25, line: 154, type: !178)
!1050 = !DILocation(line: 0, scope: !1046)
!1051 = !DILocalVariable(name: "VtL", arg: 2, scope: !1046, file: !25, line: 154, type: !5)
!1052 = !DILocalVariable(name: "A_out", arg: 3, scope: !1046, file: !25, line: 154, type: !18)
!1053 = !DILocalVariable(name: "bits_to_shift", scope: !1046, file: !25, line: 159, type: !45)
!1054 = !DILocalVariable(name: "words_to_shift", scope: !1046, file: !25, line: 160, type: !45)
!1055 = !DILocalVariable(name: "m_vec_limbs", scope: !1046, file: !25, line: 161, type: !243)
!1056 = !DILocalVariable(name: "A", scope: !1046, file: !25, line: 162, type: !1057)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40960, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 640)
!1060 = !DILocation(line: 162, column: 14, scope: !1046)
!1061 = !DILocalVariable(name: "A_width", scope: !1046, file: !25, line: 163, type: !15)
!1062 = !DILocalVariable(name: "i", scope: !1063, file: !25, line: 177, type: !45)
!1063 = distinct !DILexicalBlock(scope: !1046, file: !25, line: 177, column: 5)
!1064 = !DILocation(line: 0, scope: !1063)
!1065 = !DILocation(line: 177, column: 10, scope: !1063)
!1066 = !DILocation(line: 177, scope: !1063)
!1067 = !DILocation(line: 160, column: 9, scope: !1046)
!1068 = !DILocation(line: 159, column: 9, scope: !1046)
!1069 = !DILocation(line: 177, column: 23, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !25, line: 177, column: 5)
!1071 = !DILocation(line: 177, column: 5, scope: !1063)
!1072 = !DILocation(line: 178, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 178, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !25, line: 177, column: 47)
!1075 = !DILocalVariable(name: "j", scope: !1073, file: !25, line: 178, type: !45)
!1076 = !DILocation(line: 0, scope: !1073)
!1077 = !DILocation(line: 178, column: 40, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 178, column: 9)
!1079 = !DILocation(line: 178, column: 9, scope: !1073)
!1080 = !DILocation(line: 180, column: 22, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !25, line: 178, column: 51)
!1082 = !DILocalVariable(name: "Mj", scope: !1046, file: !25, line: 164, type: !330)
!1083 = !DILocalVariable(name: "c", scope: !1084, file: !25, line: 181, type: !45)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !25, line: 181, column: 13)
!1085 = !DILocation(line: 0, scope: !1084)
!1086 = !DILocation(line: 181, column: 18, scope: !1084)
!1087 = !DILocation(line: 181, scope: !1084)
!1088 = !DILocation(line: 181, column: 31, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !25, line: 181, column: 13)
!1090 = !DILocation(line: 181, column: 13, scope: !1084)
!1091 = !DILocalVariable(name: "k", scope: !1092, file: !25, line: 182, type: !45)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !25, line: 182, column: 17)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !25, line: 181, column: 50)
!1094 = !DILocation(line: 0, scope: !1092)
!1095 = !DILocation(line: 184, column: 78, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !25, line: 183, column: 17)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !25, line: 182, column: 17)
!1098 = !DILocation(line: 184, column: 100, scope: !1096)
!1099 = !DILocation(line: 184, column: 35, scope: !1096)
!1100 = !DILocation(line: 184, column: 39, scope: !1096)
!1101 = !DILocation(line: 184, column: 65, scope: !1096)
!1102 = !DILocation(line: 184, column: 43, scope: !1096)
!1103 = !DILocation(line: 184, column: 21, scope: !1096)
!1104 = !DILocation(line: 184, column: 75, scope: !1096)
!1105 = !DILocation(line: 185, column: 38, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 185, column: 24)
!1107 = !DILocation(line: 186, column: 86, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1106, file: !25, line: 185, column: 42)
!1109 = !DILocation(line: 186, column: 114, scope: !1108)
!1110 = !DILocation(line: 186, column: 108, scope: !1108)
!1111 = !DILocation(line: 186, column: 39, scope: !1108)
!1112 = !DILocation(line: 186, column: 43, scope: !1108)
!1113 = !DILocation(line: 186, column: 73, scope: !1108)
!1114 = !DILocation(line: 186, column: 47, scope: !1108)
!1115 = !DILocation(line: 186, column: 25, scope: !1108)
!1116 = !DILocation(line: 186, column: 83, scope: !1108)
!1117 = !DILocation(line: 187, column: 21, scope: !1108)
!1118 = !DILocation(line: 184, column: 86, scope: !1096)
!1119 = !DILocation(line: 184, column: 83, scope: !1096)
!1120 = !DILocation(line: 186, column: 94, scope: !1108)
!1121 = !DILocation(line: 186, column: 91, scope: !1108)
!1122 = !DILocation(line: 181, column: 46, scope: !1089)
!1123 = !DILocation(line: 181, column: 13, scope: !1089)
!1124 = distinct !{!1124, !1090, !1125, !307}
!1125 = !DILocation(line: 189, column: 13, scope: !1084)
!1126 = !DILocation(line: 191, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1081, file: !25, line: 191, column: 17)
!1128 = !DILocation(line: 192, column: 26, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !25, line: 191, column: 25)
!1130 = !DILocalVariable(name: "Mi", scope: !1046, file: !25, line: 164, type: !330)
!1131 = !DILocalVariable(name: "c", scope: !1132, file: !25, line: 193, type: !45)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !25, line: 193, column: 17)
!1133 = !DILocation(line: 0, scope: !1132)
!1134 = !DILocation(line: 193, column: 22, scope: !1132)
!1135 = !DILocation(line: 193, scope: !1132)
!1136 = !DILocation(line: 193, column: 35, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !25, line: 193, column: 17)
!1138 = !DILocation(line: 193, column: 17, scope: !1132)
!1139 = !DILocalVariable(name: "k", scope: !1140, file: !25, line: 194, type: !45)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !25, line: 194, column: 21)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 193, column: 54)
!1142 = !DILocation(line: 0, scope: !1140)
!1143 = !DILocation(line: 196, column: 81, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 195, column: 21)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !25, line: 194, column: 21)
!1146 = !DILocation(line: 196, column: 103, scope: !1144)
!1147 = !DILocation(line: 196, column: 38, scope: !1144)
!1148 = !DILocation(line: 196, column: 42, scope: !1144)
!1149 = !DILocation(line: 196, column: 68, scope: !1144)
!1150 = !DILocation(line: 196, column: 46, scope: !1144)
!1151 = !DILocation(line: 196, column: 25, scope: !1144)
!1152 = !DILocation(line: 196, column: 78, scope: !1144)
!1153 = !DILocation(line: 197, column: 42, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1144, file: !25, line: 197, column: 28)
!1155 = !DILocation(line: 198, column: 89, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !25, line: 197, column: 46)
!1157 = !DILocation(line: 198, column: 117, scope: !1156)
!1158 = !DILocation(line: 198, column: 111, scope: !1156)
!1159 = !DILocation(line: 198, column: 42, scope: !1156)
!1160 = !DILocation(line: 198, column: 46, scope: !1156)
!1161 = !DILocation(line: 198, column: 76, scope: !1156)
!1162 = !DILocation(line: 198, column: 50, scope: !1156)
!1163 = !DILocation(line: 198, column: 29, scope: !1156)
!1164 = !DILocation(line: 198, column: 86, scope: !1156)
!1165 = !DILocation(line: 199, column: 25, scope: !1156)
!1166 = !DILocation(line: 196, column: 89, scope: !1144)
!1167 = !DILocation(line: 196, column: 86, scope: !1144)
!1168 = !DILocation(line: 198, column: 97, scope: !1156)
!1169 = !DILocation(line: 198, column: 94, scope: !1156)
!1170 = !DILocation(line: 193, column: 50, scope: !1137)
!1171 = !DILocation(line: 193, column: 17, scope: !1137)
!1172 = distinct !{!1172, !1138, !1173, !307}
!1173 = !DILocation(line: 201, column: 17, scope: !1132)
!1174 = !DILocation(line: 204, column: 27, scope: !1081)
!1175 = !DILocation(line: 205, column: 30, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1081, file: !25, line: 205, column: 16)
!1177 = !DILocation(line: 178, column: 46, scope: !1078)
!1178 = !DILocation(line: 178, column: 9, scope: !1078)
!1179 = distinct !{!1179, !1079, !1180, !307}
!1180 = !DILocation(line: 209, column: 9, scope: !1073)
!1181 = !DILocation(line: 177, column: 42, scope: !1070)
!1182 = !DILocation(line: 177, column: 5, scope: !1070)
!1183 = distinct !{!1183, !1071, !1184, !307}
!1184 = !DILocation(line: 210, column: 5, scope: !1063)
!1185 = !DILocation(line: 212, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1046, file: !25, line: 212, column: 5)
!1187 = !DILocalVariable(name: "c", scope: !1186, file: !25, line: 212, type: !15)
!1188 = !DILocation(line: 0, scope: !1186)
!1189 = !DILocation(line: 212, column: 26, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !25, line: 212, column: 5)
!1191 = !DILocation(line: 212, column: 5, scope: !1186)
!1192 = !DILocation(line: 214, column: 35, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !25, line: 213, column: 5)
!1194 = !DILocation(line: 214, column: 9, scope: !1193)
!1195 = !DILocation(line: 212, column: 91, scope: !1190)
!1196 = !DILocation(line: 212, column: 5, scope: !1190)
!1197 = distinct !{!1197, !1191, !1198, !307}
!1198 = !DILocation(line: 215, column: 5, scope: !1186)
!1199 = !DILocalVariable(name: "tab", scope: !1046, file: !25, line: 217, type: !1200)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 16)
!1203 = !DILocation(line: 217, column: 19, scope: !1046)
!1204 = !DILocalVariable(name: "i", scope: !1205, file: !25, line: 218, type: !15)
!1205 = distinct !DILexicalBlock(scope: !1046, file: !25, line: 218, column: 5)
!1206 = !DILocation(line: 0, scope: !1205)
!1207 = !DILocation(line: 218, column: 10, scope: !1205)
!1208 = !DILocation(line: 218, scope: !1205)
!1209 = !DILocation(line: 218, column: 26, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !25, line: 218, column: 5)
!1211 = !DILocation(line: 218, column: 5, scope: !1205)
!1212 = !DILocation(line: 220, column: 28, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !25, line: 219, column: 5)
!1214 = !DILocation(line: 220, column: 22, scope: !1213)
!1215 = !DILocation(line: 220, column: 14, scope: !1213)
!1216 = !DILocation(line: 220, column: 9, scope: !1213)
!1217 = !DILocation(line: 220, column: 20, scope: !1213)
!1218 = !DILocation(line: 221, column: 22, scope: !1213)
!1219 = !DILocation(line: 221, column: 14, scope: !1213)
!1220 = !DILocation(line: 221, column: 16, scope: !1213)
!1221 = !DILocation(line: 221, column: 9, scope: !1213)
!1222 = !DILocation(line: 221, column: 20, scope: !1213)
!1223 = !DILocation(line: 222, column: 22, scope: !1213)
!1224 = !DILocation(line: 222, column: 14, scope: !1213)
!1225 = !DILocation(line: 222, column: 16, scope: !1213)
!1226 = !DILocation(line: 222, column: 9, scope: !1213)
!1227 = !DILocation(line: 222, column: 20, scope: !1213)
!1228 = !DILocation(line: 223, column: 22, scope: !1213)
!1229 = !DILocation(line: 223, column: 14, scope: !1213)
!1230 = !DILocation(line: 223, column: 16, scope: !1213)
!1231 = !DILocation(line: 223, column: 9, scope: !1213)
!1232 = !DILocation(line: 223, column: 20, scope: !1213)
!1233 = !DILocation(line: 218, column: 41, scope: !1210)
!1234 = !DILocation(line: 218, column: 5, scope: !1210)
!1235 = distinct !{!1235, !1211, !1236, !307}
!1236 = !DILocation(line: 224, column: 5, scope: !1205)
!1237 = !DILocation(line: 228, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1046, file: !25, line: 228, column: 5)
!1239 = !DILocalVariable(name: "c", scope: !1238, file: !25, line: 228, type: !15)
!1240 = !DILocation(line: 0, scope: !1238)
!1241 = !DILocation(line: 228, column: 26, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !25, line: 228, column: 5)
!1243 = !DILocation(line: 228, column: 5, scope: !1238)
!1244 = !DILocation(line: 230, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !25, line: 230, column: 9)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !25, line: 229, column: 5)
!1247 = !DILocalVariable(name: "r", scope: !1245, file: !25, line: 230, type: !45)
!1248 = !DILocation(line: 0, scope: !1245)
!1249 = !DILocation(line: 230, column: 36, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !25, line: 230, column: 9)
!1251 = !DILocation(line: 230, column: 9, scope: !1245)
!1252 = !DILocation(line: 232, column: 28, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !25, line: 231, column: 9)
!1254 = !DILocation(line: 232, column: 32, scope: !1253)
!1255 = !DILocation(line: 232, column: 41, scope: !1253)
!1256 = !DILocation(line: 232, column: 49, scope: !1253)
!1257 = !DILocation(line: 232, column: 45, scope: !1253)
!1258 = !DILocalVariable(name: "pos", scope: !1253, file: !25, line: 232, type: !15)
!1259 = !DILocation(line: 0, scope: !1253)
!1260 = !DILocation(line: 233, column: 28, scope: !1253)
!1261 = !DILocation(line: 233, column: 41, scope: !1253)
!1262 = !DILocalVariable(name: "t0", scope: !1253, file: !25, line: 233, type: !6)
!1263 = !DILocation(line: 234, column: 35, scope: !1253)
!1264 = !DILocation(line: 234, column: 41, scope: !1253)
!1265 = !DILocalVariable(name: "t1", scope: !1253, file: !25, line: 234, type: !6)
!1266 = !DILocation(line: 235, column: 35, scope: !1253)
!1267 = !DILocation(line: 235, column: 41, scope: !1253)
!1268 = !DILocalVariable(name: "t2", scope: !1253, file: !25, line: 235, type: !6)
!1269 = !DILocation(line: 236, column: 28, scope: !1253)
!1270 = !DILocation(line: 236, column: 35, scope: !1253)
!1271 = !DILocation(line: 236, column: 41, scope: !1253)
!1272 = !DILocalVariable(name: "t3", scope: !1253, file: !25, line: 236, type: !6)
!1273 = !DILocalVariable(name: "t", scope: !1274, file: !25, line: 237, type: !15)
!1274 = distinct !DILexicalBlock(scope: !1253, file: !25, line: 237, column: 13)
!1275 = !DILocation(line: 0, scope: !1274)
!1276 = !DILocation(line: 239, column: 84, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !25, line: 238, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !25, line: 237, column: 13)
!1279 = !DILocation(line: 239, column: 83, scope: !1277)
!1280 = !DILocation(line: 239, column: 100, scope: !1277)
!1281 = !DILocation(line: 239, column: 99, scope: !1277)
!1282 = !DILocation(line: 239, column: 95, scope: !1277)
!1283 = !DILocation(line: 239, column: 116, scope: !1277)
!1284 = !DILocation(line: 239, column: 115, scope: !1277)
!1285 = !DILocation(line: 239, column: 111, scope: !1277)
!1286 = !DILocation(line: 239, column: 132, scope: !1277)
!1287 = !DILocation(line: 239, column: 131, scope: !1277)
!1288 = !DILocation(line: 239, column: 127, scope: !1277)
!1289 = !DILocation(line: 239, column: 24, scope: !1277)
!1290 = !DILocation(line: 239, column: 36, scope: !1277)
!1291 = !DILocation(line: 239, column: 40, scope: !1277)
!1292 = !DILocation(line: 239, column: 49, scope: !1277)
!1293 = !DILocation(line: 239, column: 72, scope: !1277)
!1294 = !DILocation(line: 239, column: 53, scope: !1277)
!1295 = !DILocation(line: 239, column: 17, scope: !1277)
!1296 = !DILocation(line: 239, column: 78, scope: !1277)
!1297 = !DILocation(line: 239, column: 58, scope: !1277)
!1298 = !DILocation(line: 230, column: 82, scope: !1250)
!1299 = !DILocation(line: 230, column: 9, scope: !1250)
!1300 = distinct !{!1300, !1251, !1301, !307}
!1301 = !DILocation(line: 241, column: 9, scope: !1245)
!1302 = !DILocation(line: 228, column: 38, scope: !1242)
!1303 = !DILocation(line: 228, column: 5, scope: !1242)
!1304 = distinct !{!1304, !1243, !1305, !307}
!1305 = !DILocation(line: 242, column: 5, scope: !1238)
!1306 = !DILocation(line: 250, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1046, file: !25, line: 250, column: 5)
!1308 = !DILocalVariable(name: "r", scope: !1307, file: !25, line: 250, type: !45)
!1309 = !DILocation(line: 0, scope: !1307)
!1310 = !DILocation(line: 250, column: 23, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !25, line: 250, column: 5)
!1312 = !DILocation(line: 250, column: 5, scope: !1307)
!1313 = !DILocation(line: 254, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !25, line: 254, column: 13)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !25, line: 253, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !25, line: 252, column: 9)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !25, line: 252, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1311, file: !25, line: 251, column: 5)
!1319 = !DILocalVariable(name: "i", scope: !1314, file: !25, line: 254, type: !45)
!1320 = !DILocation(line: 0, scope: !1314)
!1321 = !DILocation(line: 254, column: 35, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1314, file: !25, line: 254, column: 13)
!1323 = !DILocation(line: 254, column: 13, scope: !1314)
!1324 = !DILocation(line: 256, column: 55, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !25, line: 255, column: 13)
!1326 = !DILocation(line: 256, column: 63, scope: !1325)
!1327 = !DILocation(line: 256, column: 44, scope: !1325)
!1328 = !DILocation(line: 256, column: 95, scope: !1325)
!1329 = !DILocation(line: 256, column: 92, scope: !1325)
!1330 = !DILocation(line: 256, column: 75, scope: !1325)
!1331 = !DILocation(line: 256, column: 17, scope: !1325)
!1332 = !DILocation(line: 254, column: 50, scope: !1322)
!1333 = !DILocation(line: 254, column: 13, scope: !1322)
!1334 = distinct !{!1334, !1323, !1335, !307}
!1335 = !DILocation(line: 257, column: 13, scope: !1314)
!1336 = !DILocation(line: 256, column: 59, scope: !1325)
!1337 = !DILocation(line: 256, column: 99, scope: !1325)
!1338 = !DILocalVariable(name: "c", scope: !1317, file: !25, line: 252, type: !45)
!1339 = !DILocation(line: 0, scope: !1317)
!1340 = !DILocation(line: 250, column: 38, scope: !1311)
!1341 = !DILocation(line: 250, column: 5, scope: !1311)
!1342 = distinct !{!1342, !1312, !1343, !307}
!1343 = !DILocation(line: 259, column: 5, scope: !1307)
!1344 = !DILocation(line: 260, column: 1, scope: !1046)
!1345 = distinct !DISubprogram(name: "mat_mul", scope: !496, file: !496, line: 79, type: !1346, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !49, !49, !18, !45, !45, !45}
!1348 = !DILocalVariable(name: "a", arg: 1, scope: !1345, file: !496, line: 79, type: !49)
!1349 = !DILocation(line: 0, scope: !1345)
!1350 = !DILocalVariable(name: "b", arg: 2, scope: !1345, file: !496, line: 79, type: !49)
!1351 = !DILocalVariable(name: "c", arg: 3, scope: !1345, file: !496, line: 80, type: !18)
!1352 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1345, file: !496, line: 80, type: !45)
!1353 = !DILocalVariable(name: "row_a", arg: 5, scope: !1345, file: !496, line: 80, type: !45)
!1354 = !DILocalVariable(name: "col_b", arg: 6, scope: !1345, file: !496, line: 80, type: !45)
!1355 = !DILocalVariable(name: "i", scope: !1356, file: !496, line: 81, type: !45)
!1356 = distinct !DILexicalBlock(scope: !1345, file: !496, line: 81, column: 5)
!1357 = !DILocation(line: 0, scope: !1356)
!1358 = !DILocation(line: 81, column: 10, scope: !1356)
!1359 = !DILocation(line: 81, scope: !1356)
!1360 = !DILocation(line: 81, column: 23, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !496, line: 81, column: 5)
!1362 = !DILocation(line: 81, column: 5, scope: !1356)
!1363 = !DILocation(line: 82, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !496, line: 82, column: 9)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !496, line: 81, column: 53)
!1366 = !DILocalVariable(name: "j", scope: !1364, file: !496, line: 82, type: !45)
!1367 = !DILocation(line: 0, scope: !1364)
!1368 = !DILocation(line: 82, column: 27, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !496, line: 82, column: 9)
!1370 = !DILocation(line: 82, column: 9, scope: !1364)
!1371 = !DILocation(line: 83, column: 31, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !496, line: 82, column: 46)
!1373 = !DILocation(line: 83, column: 18, scope: !1372)
!1374 = !DILocation(line: 83, column: 16, scope: !1372)
!1375 = !DILocation(line: 82, column: 36, scope: !1369)
!1376 = !DILocation(line: 82, column: 41, scope: !1369)
!1377 = !DILocation(line: 82, column: 9, scope: !1369)
!1378 = distinct !{!1378, !1370, !1379, !307}
!1379 = !DILocation(line: 84, column: 9, scope: !1364)
!1380 = !DILocation(line: 81, column: 32, scope: !1361)
!1381 = !DILocation(line: 81, column: 39, scope: !1361)
!1382 = !DILocation(line: 81, column: 5, scope: !1361)
!1383 = distinct !{!1383, !1362, !1384, !307}
!1384 = !DILocation(line: 85, column: 5, scope: !1356)
!1385 = !DILocation(line: 86, column: 1, scope: !1345)
!1386 = distinct !DISubprogram(name: "mat_add", scope: !496, file: !496, line: 88, type: !1387, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !49, !49, !18, !45, !45}
!1389 = !DILocalVariable(name: "a", arg: 1, scope: !1386, file: !496, line: 88, type: !49)
!1390 = !DILocation(line: 0, scope: !1386)
!1391 = !DILocalVariable(name: "b", arg: 2, scope: !1386, file: !496, line: 88, type: !49)
!1392 = !DILocalVariable(name: "c", arg: 3, scope: !1386, file: !496, line: 89, type: !18)
!1393 = !DILocalVariable(name: "m", arg: 4, scope: !1386, file: !496, line: 89, type: !45)
!1394 = !DILocalVariable(name: "n", arg: 5, scope: !1386, file: !496, line: 89, type: !45)
!1395 = !DILocalVariable(name: "i", scope: !1396, file: !496, line: 90, type: !45)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !496, line: 90, column: 5)
!1397 = !DILocation(line: 0, scope: !1396)
!1398 = !DILocation(line: 90, column: 10, scope: !1396)
!1399 = !DILocation(line: 90, scope: !1396)
!1400 = !DILocation(line: 90, column: 23, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !496, line: 90, column: 5)
!1402 = !DILocation(line: 90, column: 5, scope: !1396)
!1403 = !DILocation(line: 91, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !496, line: 91, column: 9)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !496, line: 90, column: 33)
!1406 = !DILocalVariable(name: "j", scope: !1404, file: !496, line: 91, type: !45)
!1407 = !DILocation(line: 0, scope: !1404)
!1408 = !DILocation(line: 91, column: 27, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !496, line: 91, column: 9)
!1410 = !DILocation(line: 91, column: 9, scope: !1404)
!1411 = !DILocation(line: 92, column: 46, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !496, line: 91, column: 37)
!1413 = !DILocation(line: 92, column: 42, scope: !1412)
!1414 = !DILocation(line: 92, column: 50, scope: !1412)
!1415 = !DILocation(line: 92, column: 38, scope: !1412)
!1416 = !DILocation(line: 92, column: 64, scope: !1412)
!1417 = !DILocation(line: 92, column: 60, scope: !1412)
!1418 = !DILocation(line: 92, column: 68, scope: !1412)
!1419 = !DILocation(line: 92, column: 56, scope: !1412)
!1420 = !DILocation(line: 92, column: 32, scope: !1412)
!1421 = !DILocation(line: 92, column: 21, scope: !1412)
!1422 = !DILocation(line: 92, column: 17, scope: !1412)
!1423 = !DILocation(line: 92, column: 25, scope: !1412)
!1424 = !DILocation(line: 92, column: 30, scope: !1412)
!1425 = !DILocation(line: 91, column: 32, scope: !1409)
!1426 = !DILocation(line: 91, column: 9, scope: !1409)
!1427 = distinct !{!1427, !1410, !1428, !307}
!1428 = !DILocation(line: 93, column: 9, scope: !1404)
!1429 = !DILocation(line: 90, column: 28, scope: !1401)
!1430 = !DILocation(line: 90, column: 5, scope: !1401)
!1431 = distinct !{!1431, !1402, !1432, !307}
!1432 = !DILocation(line: 94, column: 5, scope: !1396)
!1433 = !DILocation(line: 95, column: 1, scope: !1386)
!1434 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !280, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1435 = !DILocalVariable(name: "m", arg: 1, scope: !1434, file: !25, line: 32, type: !49)
!1436 = !DILocation(line: 0, scope: !1434)
!1437 = !DILocalVariable(name: "menc", arg: 2, scope: !1434, file: !25, line: 32, type: !18)
!1438 = !DILocalVariable(name: "mlen", arg: 3, scope: !1434, file: !25, line: 32, type: !45)
!1439 = !DILocalVariable(name: "i", scope: !1434, file: !25, line: 33, type: !45)
!1440 = !DILocation(line: 34, column: 10, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1434, file: !25, line: 34, column: 5)
!1442 = !DILocation(line: 34, scope: !1441)
!1443 = !DILocation(line: 34, column: 26, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !25, line: 34, column: 5)
!1445 = !DILocation(line: 34, column: 19, scope: !1444)
!1446 = !DILocation(line: 34, column: 5, scope: !1441)
!1447 = !DILocation(line: 35, column: 20, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !25, line: 34, column: 44)
!1449 = !DILocation(line: 35, column: 31, scope: !1448)
!1450 = !DILocation(line: 35, column: 27, scope: !1448)
!1451 = !DILocation(line: 35, column: 36, scope: !1448)
!1452 = !DILocation(line: 35, column: 24, scope: !1448)
!1453 = !DILocation(line: 35, column: 9, scope: !1448)
!1454 = !DILocation(line: 35, column: 17, scope: !1448)
!1455 = !DILocation(line: 34, column: 31, scope: !1444)
!1456 = !DILocation(line: 34, column: 38, scope: !1444)
!1457 = !DILocation(line: 34, column: 5, scope: !1444)
!1458 = distinct !{!1458, !1446, !1459, !307}
!1459 = !DILocation(line: 36, column: 5, scope: !1441)
!1460 = !DILocation(line: 38, column: 18, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1434, file: !25, line: 38, column: 9)
!1462 = !DILocation(line: 39, column: 20, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1461, file: !25, line: 38, column: 24)
!1464 = !DILocation(line: 39, column: 9, scope: !1463)
!1465 = !DILocation(line: 39, column: 17, scope: !1463)
!1466 = !DILocation(line: 40, column: 5, scope: !1463)
!1467 = !DILocation(line: 41, column: 1, scope: !1434)
!1468 = distinct !DISubprogram(name: "add_f", scope: !496, file: !496, line: 43, type: !1469, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!14, !14, !14}
!1471 = !DILocalVariable(name: "a", arg: 1, scope: !1468, file: !496, line: 43, type: !14)
!1472 = !DILocation(line: 0, scope: !1468)
!1473 = !DILocalVariable(name: "b", arg: 2, scope: !1468, file: !496, line: 43, type: !14)
!1474 = !DILocation(line: 44, column: 14, scope: !1468)
!1475 = !DILocation(line: 44, column: 5, scope: !1468)
!1476 = distinct !DISubprogram(name: "lincomb", scope: !496, file: !496, line: 70, type: !1477, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!14, !49, !49, !45, !45}
!1479 = !DILocalVariable(name: "a", arg: 1, scope: !1476, file: !496, line: 70, type: !49)
!1480 = !DILocation(line: 0, scope: !1476)
!1481 = !DILocalVariable(name: "b", arg: 2, scope: !1476, file: !496, line: 71, type: !49)
!1482 = !DILocalVariable(name: "n", arg: 3, scope: !1476, file: !496, line: 71, type: !45)
!1483 = !DILocalVariable(name: "m", arg: 4, scope: !1476, file: !496, line: 71, type: !45)
!1484 = !DILocalVariable(name: "ret", scope: !1476, file: !496, line: 72, type: !14)
!1485 = !DILocalVariable(name: "i", scope: !1486, file: !496, line: 73, type: !45)
!1486 = distinct !DILexicalBlock(scope: !1476, file: !496, line: 73, column: 5)
!1487 = !DILocation(line: 0, scope: !1486)
!1488 = !DILocation(line: 73, column: 10, scope: !1486)
!1489 = !DILocation(line: 73, scope: !1486)
!1490 = !DILocation(line: 73, column: 23, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !496, line: 73, column: 5)
!1492 = !DILocation(line: 73, column: 5, scope: !1486)
!1493 = !DILocation(line: 74, column: 27, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1491, file: !496, line: 73, column: 41)
!1495 = !DILocation(line: 74, column: 33, scope: !1494)
!1496 = !DILocation(line: 74, column: 21, scope: !1494)
!1497 = !DILocation(line: 74, column: 15, scope: !1494)
!1498 = !DILocation(line: 73, column: 28, scope: !1491)
!1499 = !DILocation(line: 73, column: 35, scope: !1491)
!1500 = !DILocation(line: 73, column: 5, scope: !1491)
!1501 = distinct !{!1501, !1492, !1502, !307}
!1502 = !DILocation(line: 75, column: 5, scope: !1486)
!1503 = !DILocation(line: 76, column: 5, scope: !1476)
!1504 = distinct !DISubprogram(name: "mul_f", scope: !496, file: !496, line: 9, type: !1469, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1505 = !DILocalVariable(name: "a", arg: 1, scope: !1504, file: !496, line: 9, type: !14)
!1506 = !DILocation(line: 0, scope: !1504)
!1507 = !DILocalVariable(name: "b", arg: 2, scope: !1504, file: !496, line: 9, type: !14)
!1508 = !DILocation(line: 14, column: 10, scope: !1504)
!1509 = !DILocation(line: 14, column: 7, scope: !1504)
!1510 = !DILocation(line: 17, column: 17, scope: !1504)
!1511 = !DILocalVariable(name: "p", scope: !1504, file: !496, line: 11, type: !14)
!1512 = !DILocation(line: 18, column: 13, scope: !1504)
!1513 = !DILocation(line: 18, column: 17, scope: !1504)
!1514 = !DILocation(line: 18, column: 7, scope: !1504)
!1515 = !DILocation(line: 19, column: 13, scope: !1504)
!1516 = !DILocation(line: 19, column: 17, scope: !1504)
!1517 = !DILocation(line: 19, column: 7, scope: !1504)
!1518 = !DILocation(line: 20, column: 13, scope: !1504)
!1519 = !DILocation(line: 20, column: 17, scope: !1504)
!1520 = !DILocation(line: 20, column: 7, scope: !1504)
!1521 = !DILocalVariable(name: "top_p", scope: !1504, file: !496, line: 23, type: !14)
!1522 = !DILocation(line: 24, column: 37, scope: !1504)
!1523 = !DILocation(line: 24, column: 52, scope: !1504)
!1524 = !DILocation(line: 24, column: 43, scope: !1504)
!1525 = !DILocation(line: 24, column: 59, scope: !1504)
!1526 = !DILocalVariable(name: "out", scope: !1504, file: !496, line: 24, type: !14)
!1527 = !DILocation(line: 25, column: 5, scope: !1504)
!1528 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1529 = !DILocation(line: 0, scope: !24)
!1530 = !DILocalVariable(name: "i", scope: !1531, file: !25, line: 117, type: !15)
!1531 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1532 = !DILocation(line: 0, scope: !1531)
!1533 = !DILocation(line: 119, column: 24, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !25, line: 118, column: 5)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !25, line: 117, column: 5)
!1536 = !DILocation(line: 119, column: 29, scope: !1534)
!1537 = !DILocation(line: 119, column: 38, scope: !1534)
!1538 = !DILocation(line: 119, column: 36, scope: !1534)
!1539 = !DILocation(line: 119, column: 46, scope: !1534)
!1540 = !DILocalVariable(name: "t", scope: !1534, file: !25, line: 119, type: !6)
!1541 = !DILocation(line: 0, scope: !1534)
!1542 = !DILocation(line: 120, column: 21, scope: !1534)
!1543 = !DILocation(line: 120, column: 16, scope: !1534)
!1544 = !DILocation(line: 121, column: 9, scope: !1534)
!1545 = !DILocation(line: 121, column: 16, scope: !1534)
!1546 = !DILocation(line: 120, column: 9, scope: !1534)
!1547 = !DILocalVariable(name: "i", scope: !1548, file: !25, line: 124, type: !15)
!1548 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1549 = !DILocation(line: 0, scope: !1548)
!1550 = !DILocation(line: 126, column: 25, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !25, line: 125, column: 5)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !25, line: 124, column: 5)
!1553 = !DILocation(line: 126, column: 32, scope: !1551)
!1554 = !DILocation(line: 126, column: 40, scope: !1551)
!1555 = !DILocation(line: 126, column: 38, scope: !1551)
!1556 = !DILocation(line: 126, column: 48, scope: !1551)
!1557 = !DILocalVariable(name: "t0", scope: !1551, file: !25, line: 126, type: !6)
!1558 = !DILocation(line: 0, scope: !1551)
!1559 = !DILocation(line: 127, column: 25, scope: !1551)
!1560 = !DILocation(line: 127, column: 32, scope: !1551)
!1561 = !DILocation(line: 127, column: 40, scope: !1551)
!1562 = !DILocation(line: 127, column: 38, scope: !1551)
!1563 = !DILocation(line: 127, column: 48, scope: !1551)
!1564 = !DILocalVariable(name: "t1", scope: !1551, file: !25, line: 127, type: !6)
!1565 = !DILocation(line: 128, column: 23, scope: !1551)
!1566 = !DILocation(line: 128, column: 16, scope: !1551)
!1567 = !DILocation(line: 129, column: 23, scope: !1551)
!1568 = !DILocation(line: 129, column: 9, scope: !1551)
!1569 = !DILocation(line: 129, column: 16, scope: !1551)
!1570 = !DILocation(line: 130, column: 9, scope: !1551)
!1571 = !DILocation(line: 130, column: 16, scope: !1551)
!1572 = !DILocation(line: 131, column: 9, scope: !1551)
!1573 = !DILocation(line: 131, column: 16, scope: !1551)
!1574 = !DILocation(line: 128, column: 9, scope: !1551)
!1575 = !DILocalVariable(name: "i", scope: !1576, file: !25, line: 134, type: !15)
!1576 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1577 = !DILocation(line: 0, scope: !1576)
!1578 = !DILocation(line: 136, column: 25, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !25, line: 135, column: 5)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !25, line: 134, column: 5)
!1581 = !DILocation(line: 136, column: 32, scope: !1579)
!1582 = !DILocation(line: 136, column: 41, scope: !1579)
!1583 = !DILocation(line: 136, column: 39, scope: !1579)
!1584 = !DILocation(line: 136, column: 50, scope: !1579)
!1585 = !DILocalVariable(name: "t0", scope: !1579, file: !25, line: 136, type: !6)
!1586 = !DILocation(line: 0, scope: !1579)
!1587 = !DILocation(line: 137, column: 25, scope: !1579)
!1588 = !DILocation(line: 137, column: 32, scope: !1579)
!1589 = !DILocation(line: 137, column: 41, scope: !1579)
!1590 = !DILocation(line: 137, column: 39, scope: !1579)
!1591 = !DILocation(line: 137, column: 50, scope: !1579)
!1592 = !DILocalVariable(name: "t1", scope: !1579, file: !25, line: 137, type: !6)
!1593 = !DILocation(line: 139, column: 23, scope: !1579)
!1594 = !DILocation(line: 139, column: 17, scope: !1579)
!1595 = !DILocation(line: 140, column: 23, scope: !1579)
!1596 = !DILocation(line: 140, column: 9, scope: !1579)
!1597 = !DILocation(line: 140, column: 17, scope: !1579)
!1598 = !DILocation(line: 141, column: 9, scope: !1579)
!1599 = !DILocation(line: 141, column: 17, scope: !1579)
!1600 = !DILocation(line: 142, column: 9, scope: !1579)
!1601 = !DILocation(line: 142, column: 17, scope: !1579)
!1602 = !DILocation(line: 139, column: 9, scope: !1579)
!1603 = !DILocalVariable(name: "i", scope: !1604, file: !25, line: 145, type: !15)
!1604 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1605 = !DILocation(line: 0, scope: !1604)
!1606 = !DILocation(line: 147, column: 24, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !25, line: 146, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !25, line: 145, column: 5)
!1609 = !DILocation(line: 147, column: 28, scope: !1607)
!1610 = !DILocation(line: 147, column: 36, scope: !1607)
!1611 = !DILocation(line: 147, column: 44, scope: !1607)
!1612 = !DILocalVariable(name: "t", scope: !1607, file: !25, line: 147, type: !6)
!1613 = !DILocation(line: 0, scope: !1607)
!1614 = !DILocation(line: 148, column: 21, scope: !1607)
!1615 = !DILocation(line: 148, column: 16, scope: !1607)
!1616 = !DILocation(line: 149, column: 9, scope: !1607)
!1617 = !DILocation(line: 149, column: 16, scope: !1607)
!1618 = !DILocation(line: 148, column: 9, scope: !1607)
!1619 = !DILocation(line: 151, column: 1, scope: !24)
!1620 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !327, file: !327, line: 61, type: !388, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1621 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1620, file: !327, line: 61, type: !243)
!1622 = !DILocation(line: 0, scope: !1620)
!1623 = !DILocalVariable(name: "mat", arg: 2, scope: !1620, file: !327, line: 61, type: !49)
!1624 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1620, file: !327, line: 61, type: !330)
!1625 = !DILocalVariable(name: "acc", arg: 4, scope: !1620, file: !327, line: 61, type: !5)
!1626 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1620, file: !327, line: 62, type: !243)
!1627 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1620, file: !327, line: 62, type: !243)
!1628 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1620, file: !327, line: 62, type: !243)
!1629 = !DILocalVariable(name: "r", scope: !1630, file: !327, line: 64, type: !45)
!1630 = distinct !DILexicalBlock(scope: !1620, file: !327, line: 64, column: 5)
!1631 = !DILocation(line: 0, scope: !1630)
!1632 = !DILocation(line: 64, column: 10, scope: !1630)
!1633 = !DILocation(line: 64, scope: !1630)
!1634 = !DILocation(line: 64, column: 23, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !327, line: 64, column: 5)
!1636 = !DILocation(line: 64, column: 5, scope: !1630)
!1637 = !DILocation(line: 65, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !327, line: 65, column: 9)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !327, line: 64, column: 40)
!1640 = !DILocalVariable(name: "c", scope: !1638, file: !327, line: 65, type: !45)
!1641 = !DILocation(line: 0, scope: !1638)
!1642 = !DILocation(line: 65, column: 27, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !327, line: 65, column: 9)
!1644 = !DILocation(line: 65, column: 9, scope: !1638)
!1645 = !DILocation(line: 66, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !327, line: 66, column: 13)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !327, line: 65, column: 44)
!1648 = !DILocalVariable(name: "k", scope: !1646, file: !327, line: 66, type: !45)
!1649 = !DILocation(line: 0, scope: !1646)
!1650 = !DILocation(line: 66, column: 31, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !327, line: 66, column: 13)
!1652 = !DILocation(line: 66, column: 13, scope: !1646)
!1653 = !DILocation(line: 67, column: 70, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1651, file: !327, line: 66, column: 54)
!1655 = !DILocation(line: 67, column: 84, scope: !1654)
!1656 = !DILocation(line: 67, column: 65, scope: !1654)
!1657 = !DILocation(line: 67, column: 51, scope: !1654)
!1658 = !DILocation(line: 67, column: 96, scope: !1654)
!1659 = !DILocation(line: 67, column: 90, scope: !1654)
!1660 = !DILocation(line: 67, column: 136, scope: !1654)
!1661 = !DILocation(line: 67, column: 150, scope: !1654)
!1662 = !DILocation(line: 67, column: 131, scope: !1654)
!1663 = !DILocation(line: 67, column: 117, scope: !1654)
!1664 = !DILocation(line: 67, column: 17, scope: !1654)
!1665 = !DILocation(line: 66, column: 48, scope: !1651)
!1666 = !DILocation(line: 66, column: 13, scope: !1651)
!1667 = distinct !{!1667, !1652, !1668, !307}
!1668 = !DILocation(line: 68, column: 13, scope: !1646)
!1669 = !DILocation(line: 65, column: 40, scope: !1643)
!1670 = !DILocation(line: 65, column: 9, scope: !1643)
!1671 = distinct !{!1671, !1644, !1672, !307}
!1672 = !DILocation(line: 69, column: 9, scope: !1638)
!1673 = !DILocation(line: 64, column: 36, scope: !1635)
!1674 = !DILocation(line: 64, column: 5, scope: !1635)
!1675 = distinct !{!1675, !1636, !1676, !307}
!1676 = !DILocation(line: 70, column: 5, scope: !1630)
!1677 = !DILocation(line: 71, column: 1, scope: !1620)
!1678 = distinct !DISubprogram(name: "P1_times_Vt", scope: !327, file: !327, line: 82, type: !378, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1679 = !DILocalVariable(name: "p", arg: 1, scope: !1678, file: !327, line: 82, type: !178)
!1680 = !DILocation(line: 0, scope: !1678)
!1681 = !DILocalVariable(name: "P1", arg: 2, scope: !1678, file: !327, line: 82, type: !330)
!1682 = !DILocalVariable(name: "V", arg: 3, scope: !1678, file: !327, line: 82, type: !49)
!1683 = !DILocalVariable(name: "acc", arg: 4, scope: !1678, file: !327, line: 82, type: !5)
!1684 = !DILocation(line: 86, column: 5, scope: !1678)
!1685 = !DILocation(line: 87, column: 1, scope: !1678)
!1686 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !327, file: !327, line: 32, type: !512, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1687 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1686, file: !327, line: 32, type: !243)
!1688 = !DILocation(line: 0, scope: !1686)
!1689 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1686, file: !327, line: 32, type: !330)
!1690 = !DILocalVariable(name: "mat", arg: 3, scope: !1686, file: !327, line: 32, type: !49)
!1691 = !DILocalVariable(name: "acc", arg: 4, scope: !1686, file: !327, line: 32, type: !5)
!1692 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1686, file: !327, line: 33, type: !243)
!1693 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1686, file: !327, line: 33, type: !243)
!1694 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1686, file: !327, line: 33, type: !243)
!1695 = !DILocalVariable(name: "triangular", arg: 8, scope: !1686, file: !327, line: 33, type: !243)
!1696 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1686, file: !327, line: 34, type: !45)
!1697 = !DILocalVariable(name: "r", scope: !1698, file: !327, line: 35, type: !45)
!1698 = distinct !DILexicalBlock(scope: !1686, file: !327, line: 35, column: 5)
!1699 = !DILocation(line: 0, scope: !1698)
!1700 = !DILocation(line: 35, column: 10, scope: !1698)
!1701 = !DILocation(line: 34, column: 9, scope: !1686)
!1702 = !DILocation(line: 35, scope: !1698)
!1703 = !DILocation(line: 35, column: 23, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !327, line: 35, column: 5)
!1705 = !DILocation(line: 35, column: 5, scope: !1698)
!1706 = !DILocation(line: 36, column: 33, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !327, line: 36, column: 9)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !327, line: 35, column: 43)
!1709 = !DILocalVariable(name: "c", scope: !1707, file: !327, line: 36, type: !45)
!1710 = !DILocation(line: 0, scope: !1707)
!1711 = !DILocation(line: 36, column: 14, scope: !1707)
!1712 = !DILocation(line: 36, scope: !1707)
!1713 = !DILocation(line: 36, column: 40, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1707, file: !327, line: 36, column: 9)
!1715 = !DILocation(line: 36, column: 9, scope: !1707)
!1716 = !DILocation(line: 37, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !327, line: 37, column: 13)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !327, line: 36, column: 60)
!1719 = !DILocalVariable(name: "k", scope: !1717, file: !327, line: 37, type: !45)
!1720 = !DILocation(line: 0, scope: !1717)
!1721 = !DILocation(line: 37, column: 31, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !327, line: 37, column: 13)
!1723 = !DILocation(line: 37, column: 13, scope: !1717)
!1724 = !DILocation(line: 38, column: 65, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !327, line: 37, column: 51)
!1726 = !DILocation(line: 38, column: 51, scope: !1725)
!1727 = !DILocation(line: 38, column: 94, scope: !1725)
!1728 = !DILocation(line: 38, column: 88, scope: !1725)
!1729 = !DILocation(line: 38, column: 137, scope: !1725)
!1730 = !DILocation(line: 38, column: 148, scope: !1725)
!1731 = !DILocation(line: 38, column: 132, scope: !1725)
!1732 = !DILocation(line: 38, column: 118, scope: !1725)
!1733 = !DILocation(line: 38, column: 17, scope: !1725)
!1734 = !DILocation(line: 37, column: 45, scope: !1722)
!1735 = !DILocation(line: 37, column: 13, scope: !1722)
!1736 = distinct !{!1736, !1723, !1737, !307}
!1737 = !DILocation(line: 39, column: 13, scope: !1717)
!1738 = !DILocation(line: 40, column: 33, scope: !1718)
!1739 = !DILocation(line: 36, column: 56, scope: !1714)
!1740 = !DILocation(line: 36, column: 9, scope: !1714)
!1741 = distinct !{!1741, !1715, !1742, !307}
!1742 = !DILocation(line: 41, column: 9, scope: !1707)
!1743 = !DILocation(line: 35, column: 39, scope: !1704)
!1744 = !DILocation(line: 35, column: 5, scope: !1704)
!1745 = distinct !{!1745, !1705, !1746, !307}
!1746 = !DILocation(line: 42, column: 5, scope: !1698)
!1747 = !DILocation(line: 43, column: 1, scope: !1686)
!1748 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !711, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1749 = !DILocalVariable(name: "p", arg: 1, scope: !1748, file: !25, line: 502, type: !178)
!1750 = !DILocation(line: 0, scope: !1748)
!1751 = !DILocalVariable(name: "sm", arg: 2, scope: !1748, file: !25, line: 502, type: !18)
!1752 = !DILocalVariable(name: "smlen", arg: 3, scope: !1748, file: !25, line: 503, type: !713)
!1753 = !DILocalVariable(name: "m", arg: 4, scope: !1748, file: !25, line: 503, type: !49)
!1754 = !DILocalVariable(name: "mlen", arg: 5, scope: !1748, file: !25, line: 504, type: !15)
!1755 = !DILocalVariable(name: "csk", arg: 6, scope: !1748, file: !25, line: 504, type: !49)
!1756 = !DILocalVariable(name: "ret", scope: !1748, file: !25, line: 505, type: !45)
!1757 = !DILocalVariable(name: "param_sig_bytes", scope: !1748, file: !25, line: 506, type: !243)
!1758 = !DILocation(line: 508, column: 16, scope: !1748)
!1759 = !DILocation(line: 508, column: 5, scope: !1748)
!1760 = !DILocation(line: 509, column: 50, scope: !1748)
!1761 = !DILocalVariable(name: "siglen", scope: !1748, file: !25, line: 507, type: !15)
!1762 = !DILocation(line: 509, column: 11, scope: !1748)
!1763 = !DILocation(line: 510, column: 13, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1748, file: !25, line: 510, column: 9)
!1765 = !DILocation(line: 510, column: 24, scope: !1764)
!1766 = !DILocation(line: 511, column: 23, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !25, line: 510, column: 62)
!1768 = !DILocation(line: 511, column: 30, scope: !1767)
!1769 = !DILocation(line: 511, column: 9, scope: !1767)
!1770 = !DILocation(line: 512, column: 9, scope: !1767)
!1771 = !DILocation(line: 515, column: 14, scope: !1748)
!1772 = !DILocation(line: 515, column: 21, scope: !1748)
!1773 = !DILocation(line: 515, column: 12, scope: !1748)
!1774 = !DILocation(line: 515, column: 5, scope: !1748)
!1775 = !DILabel(scope: !1748, name: "err", file: !25, line: 516)
!1776 = !DILocation(line: 516, column: 1, scope: !1748)
!1777 = !DILocation(line: 517, column: 5, scope: !1748)
!1778 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_open", scope: !25, file: !25, line: 520, type: !711, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1779 = !DILocalVariable(name: "p", arg: 1, scope: !1778, file: !25, line: 520, type: !178)
!1780 = !DILocation(line: 0, scope: !1778)
!1781 = !DILocalVariable(name: "m", arg: 2, scope: !1778, file: !25, line: 520, type: !18)
!1782 = !DILocalVariable(name: "mlen", arg: 3, scope: !1778, file: !25, line: 521, type: !713)
!1783 = !DILocalVariable(name: "sm", arg: 4, scope: !1778, file: !25, line: 521, type: !49)
!1784 = !DILocalVariable(name: "smlen", arg: 5, scope: !1778, file: !25, line: 522, type: !15)
!1785 = !DILocalVariable(name: "pk", arg: 6, scope: !1778, file: !25, line: 522, type: !49)
!1786 = !DILocalVariable(name: "param_sig_bytes", scope: !1778, file: !25, line: 523, type: !243)
!1787 = !DILocation(line: 524, column: 15, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1778, file: !25, line: 524, column: 9)
!1789 = !DILocation(line: 527, column: 36, scope: !1778)
!1790 = !DILocation(line: 527, column: 61, scope: !1778)
!1791 = !DILocation(line: 527, column: 18, scope: !1778)
!1792 = !DILocalVariable(name: "result", scope: !1778, file: !25, line: 527, type: !45)
!1793 = !DILocation(line: 530, column: 16, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1778, file: !25, line: 530, column: 9)
!1795 = !DILocation(line: 531, column: 23, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1794, file: !25, line: 530, column: 28)
!1797 = !DILocation(line: 531, column: 15, scope: !1796)
!1798 = !DILocation(line: 532, column: 23, scope: !1796)
!1799 = !DILocation(line: 532, column: 9, scope: !1796)
!1800 = !DILocation(line: 533, column: 5, scope: !1796)
!1801 = !DILocation(line: 536, column: 1, scope: !1778)
!1802 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1803, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!45, !178, !49, !15, !49, !49}
!1805 = !DILocalVariable(name: "p", arg: 1, scope: !1802, file: !25, line: 617, type: !178)
!1806 = !DILocation(line: 0, scope: !1802)
!1807 = !DILocalVariable(name: "m", arg: 2, scope: !1802, file: !25, line: 617, type: !49)
!1808 = !DILocalVariable(name: "mlen", arg: 3, scope: !1802, file: !25, line: 618, type: !15)
!1809 = !DILocalVariable(name: "sig", arg: 4, scope: !1802, file: !25, line: 618, type: !49)
!1810 = !DILocalVariable(name: "cpk", arg: 5, scope: !1802, file: !25, line: 619, type: !49)
!1811 = !DILocalVariable(name: "tEnc", scope: !1802, file: !25, line: 620, type: !138)
!1812 = !DILocation(line: 620, column: 19, scope: !1802)
!1813 = !DILocalVariable(name: "t", scope: !1802, file: !25, line: 621, type: !725)
!1814 = !DILocation(line: 621, column: 19, scope: !1802)
!1815 = !DILocalVariable(name: "y", scope: !1802, file: !25, line: 622, type: !1816)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !1817)
!1817 = !{!1818}
!1818 = !DISubrange(count: 128)
!1819 = !DILocation(line: 622, column: 19, scope: !1802)
!1820 = !DILocalVariable(name: "s", scope: !1802, file: !25, line: 623, type: !752)
!1821 = !DILocation(line: 623, column: 19, scope: !1802)
!1822 = !DILocalVariable(name: "pk", scope: !1802, file: !25, line: 624, type: !123)
!1823 = !DILocation(line: 624, column: 14, scope: !1802)
!1824 = !DILocalVariable(name: "tmp", scope: !1802, file: !25, line: 625, type: !1825)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1826)
!1826 = !{!1827}
!1827 = !DISubrange(count: 56)
!1828 = !DILocation(line: 625, column: 19, scope: !1802)
!1829 = !DILocalVariable(name: "param_m", scope: !1802, file: !25, line: 627, type: !243)
!1830 = !DILocalVariable(name: "param_n", scope: !1802, file: !25, line: 628, type: !243)
!1831 = !DILocalVariable(name: "param_k", scope: !1802, file: !25, line: 629, type: !243)
!1832 = !DILocalVariable(name: "param_m_bytes", scope: !1802, file: !25, line: 630, type: !243)
!1833 = !DILocalVariable(name: "param_sig_bytes", scope: !1802, file: !25, line: 631, type: !243)
!1834 = !DILocalVariable(name: "param_digest_bytes", scope: !1802, file: !25, line: 632, type: !243)
!1835 = !DILocalVariable(name: "param_salt_bytes", scope: !1802, file: !25, line: 633, type: !243)
!1836 = !DILocation(line: 635, column: 15, scope: !1802)
!1837 = !DILocalVariable(name: "ret", scope: !1802, file: !25, line: 635, type: !45)
!1838 = !DILocation(line: 636, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1802, file: !25, line: 636, column: 9)
!1840 = !DILocalVariable(name: "P1", scope: !1802, file: !25, line: 640, type: !5)
!1841 = !DILocation(line: 641, column: 23, scope: !1802)
!1842 = !DILocalVariable(name: "P2", scope: !1802, file: !25, line: 641, type: !5)
!1843 = !DILocation(line: 642, column: 23, scope: !1802)
!1844 = !DILocalVariable(name: "P3", scope: !1802, file: !25, line: 642, type: !5)
!1845 = !DILocation(line: 657, column: 5, scope: !1802)
!1846 = !DILocation(line: 660, column: 16, scope: !1802)
!1847 = !DILocation(line: 660, column: 60, scope: !1802)
!1848 = !DILocation(line: 660, column: 5, scope: !1802)
!1849 = !DILocation(line: 662, column: 5, scope: !1802)
!1850 = !DILocation(line: 663, column: 5, scope: !1802)
!1851 = !DILocation(line: 666, column: 5, scope: !1802)
!1852 = !DILocation(line: 668, column: 5, scope: !1802)
!1853 = !DILocation(line: 670, column: 9, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1802, file: !25, line: 670, column: 9)
!1855 = !DILocation(line: 670, column: 31, scope: !1854)
!1856 = !DILocation(line: 674, column: 1, scope: !1802)
!1857 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !614, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1858 = !DILocalVariable(name: "p", arg: 1, scope: !1857, file: !25, line: 608, type: !178)
!1859 = !DILocation(line: 0, scope: !1857)
!1860 = !DILocalVariable(name: "cpk", arg: 2, scope: !1857, file: !25, line: 608, type: !49)
!1861 = !DILocalVariable(name: "pk", arg: 3, scope: !1857, file: !25, line: 609, type: !5)
!1862 = !DILocation(line: 610, column: 5, scope: !1857)
!1863 = !DILocation(line: 612, column: 23, scope: !1857)
!1864 = !DILocation(line: 612, column: 72, scope: !1857)
!1865 = !DILocation(line: 612, column: 5, scope: !1857)
!1866 = !DILocation(line: 614, column: 5, scope: !1857)
!1867 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1868, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !178, !49, !330, !330, !330, !18}
!1870 = !DILocalVariable(name: "p", arg: 1, scope: !1867, file: !25, line: 288, type: !178)
!1871 = !DILocation(line: 0, scope: !1867)
!1872 = !DILocalVariable(name: "s", arg: 2, scope: !1867, file: !25, line: 288, type: !49)
!1873 = !DILocalVariable(name: "P1", arg: 3, scope: !1867, file: !25, line: 288, type: !330)
!1874 = !DILocalVariable(name: "P2", arg: 4, scope: !1867, file: !25, line: 288, type: !330)
!1875 = !DILocalVariable(name: "P3", arg: 5, scope: !1867, file: !25, line: 288, type: !330)
!1876 = !DILocalVariable(name: "eval", arg: 6, scope: !1867, file: !25, line: 288, type: !18)
!1877 = !DILocalVariable(name: "SPS", scope: !1867, file: !25, line: 289, type: !1878)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, elements: !726)
!1879 = !DILocation(line: 289, column: 14, scope: !1867)
!1880 = !DILocation(line: 291, column: 5, scope: !1867)
!1881 = !DILocalVariable(name: "zero", scope: !1867, file: !25, line: 292, type: !725)
!1882 = !DILocation(line: 292, column: 19, scope: !1867)
!1883 = !DILocation(line: 293, column: 5, scope: !1867)
!1884 = !DILocation(line: 294, column: 1, scope: !1867)
!1885 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !327, file: !327, line: 277, type: !1886, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !178, !330, !330, !330, !49, !5}
!1888 = !DILocalVariable(name: "p", arg: 1, scope: !1885, file: !327, line: 277, type: !178)
!1889 = !DILocation(line: 0, scope: !1885)
!1890 = !DILocalVariable(name: "P1", arg: 2, scope: !1885, file: !327, line: 277, type: !330)
!1891 = !DILocalVariable(name: "P2", arg: 3, scope: !1885, file: !327, line: 277, type: !330)
!1892 = !DILocalVariable(name: "P3", arg: 4, scope: !1885, file: !327, line: 277, type: !330)
!1893 = !DILocalVariable(name: "s", arg: 5, scope: !1885, file: !327, line: 277, type: !49)
!1894 = !DILocalVariable(name: "SPS", arg: 6, scope: !1885, file: !327, line: 278, type: !5)
!1895 = !DILocalVariable(name: "PS", scope: !1885, file: !327, line: 286, type: !1896)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 1296)
!1899 = !DILocation(line: 286, column: 14, scope: !1885)
!1900 = !DILocation(line: 287, column: 5, scope: !1885)
!1901 = !DILocation(line: 290, column: 5, scope: !1885)
!1902 = !DILocation(line: 292, column: 1, scope: !1885)
!1903 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !327, file: !327, line: 151, type: !1904, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !330, !330, !330, !49, !243, !243, !243, !243, !5}
!1906 = !DILocalVariable(name: "P1", arg: 1, scope: !1903, file: !327, line: 151, type: !330)
!1907 = !DILocation(line: 0, scope: !1903)
!1908 = !DILocalVariable(name: "P2", arg: 2, scope: !1903, file: !327, line: 151, type: !330)
!1909 = !DILocalVariable(name: "P3", arg: 3, scope: !1903, file: !327, line: 151, type: !330)
!1910 = !DILocalVariable(name: "S", arg: 4, scope: !1903, file: !327, line: 151, type: !49)
!1911 = !DILocalVariable(name: "m", arg: 5, scope: !1903, file: !327, line: 152, type: !243)
!1912 = !DILocalVariable(name: "v", arg: 6, scope: !1903, file: !327, line: 152, type: !243)
!1913 = !DILocalVariable(name: "o", arg: 7, scope: !1903, file: !327, line: 152, type: !243)
!1914 = !DILocalVariable(name: "k", arg: 8, scope: !1903, file: !327, line: 152, type: !243)
!1915 = !DILocalVariable(name: "PS", arg: 9, scope: !1903, file: !327, line: 152, type: !5)
!1916 = !DILocation(line: 154, column: 21, scope: !1903)
!1917 = !DILocalVariable(name: "n", scope: !1903, file: !327, line: 154, type: !243)
!1918 = !DILocation(line: 155, column: 32, scope: !1903)
!1919 = !DILocation(line: 155, column: 37, scope: !1903)
!1920 = !DILocalVariable(name: "m_vec_limbs", scope: !1903, file: !327, line: 155, type: !243)
!1921 = !DILocalVariable(name: "accumulator", scope: !1903, file: !327, line: 157, type: !1922)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !1923)
!1923 = !{!1924}
!1924 = !DISubrange(count: 20736)
!1925 = !DILocation(line: 157, column: 14, scope: !1903)
!1926 = !DILocalVariable(name: "P1_used", scope: !1903, file: !327, line: 158, type: !45)
!1927 = !DILocalVariable(name: "row", scope: !1928, file: !327, line: 159, type: !45)
!1928 = distinct !DILexicalBlock(scope: !1903, file: !327, line: 159, column: 5)
!1929 = !DILocation(line: 0, scope: !1928)
!1930 = !DILocation(line: 159, column: 10, scope: !1928)
!1931 = !DILocation(line: 158, column: 9, scope: !1903)
!1932 = !DILocation(line: 159, scope: !1928)
!1933 = !DILocation(line: 159, column: 27, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1928, file: !327, line: 159, column: 5)
!1935 = !DILocation(line: 159, column: 5, scope: !1928)
!1936 = !DILocation(line: 160, column: 9, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !327, line: 160, column: 9)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !327, line: 159, column: 39)
!1939 = !DILocation(line: 175, column: 5, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1903, file: !327, line: 175, column: 5)
!1941 = !DILocation(line: 160, scope: !1937)
!1942 = !DILocalVariable(name: "j", scope: !1937, file: !327, line: 160, type: !45)
!1943 = !DILocation(line: 0, scope: !1937)
!1944 = !DILocation(line: 160, column: 29, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1937, file: !327, line: 160, column: 9)
!1946 = !DILocation(line: 161, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !327, line: 161, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !327, line: 160, column: 39)
!1949 = !DILocalVariable(name: "col", scope: !1947, file: !327, line: 161, type: !45)
!1950 = !DILocation(line: 0, scope: !1947)
!1951 = !DILocation(line: 161, column: 35, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !327, line: 161, column: 13)
!1953 = !DILocation(line: 161, column: 13, scope: !1947)
!1954 = !DILocation(line: 162, column: 54, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1952, file: !327, line: 161, column: 47)
!1956 = !DILocation(line: 162, column: 43, scope: !1955)
!1957 = !DILocation(line: 162, column: 91, scope: !1955)
!1958 = !DILocation(line: 162, column: 95, scope: !1955)
!1959 = !DILocation(line: 162, column: 102, scope: !1955)
!1960 = !DILocation(line: 162, column: 115, scope: !1955)
!1961 = !DILocation(line: 162, column: 109, scope: !1955)
!1962 = !DILocation(line: 162, column: 107, scope: !1955)
!1963 = !DILocation(line: 162, column: 125, scope: !1955)
!1964 = !DILocation(line: 162, column: 82, scope: !1955)
!1965 = !DILocation(line: 162, column: 17, scope: !1955)
!1966 = !DILocation(line: 161, column: 43, scope: !1952)
!1967 = !DILocation(line: 161, column: 13, scope: !1952)
!1968 = distinct !{!1968, !1953, !1969, !307}
!1969 = !DILocation(line: 163, column: 13, scope: !1947)
!1970 = !DILocation(line: 164, column: 21, scope: !1948)
!1971 = !DILocation(line: 160, column: 35, scope: !1945)
!1972 = !DILocation(line: 160, column: 9, scope: !1945)
!1973 = distinct !{!1973, !1936, !1974, !307}
!1974 = !DILocation(line: 165, column: 9, scope: !1937)
!1975 = !DILocation(line: 167, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1938, file: !327, line: 167, column: 9)
!1977 = !DILocalVariable(name: "j", scope: !1976, file: !327, line: 167, type: !45)
!1978 = !DILocation(line: 0, scope: !1976)
!1979 = !DILocation(line: 167, column: 27, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !327, line: 167, column: 9)
!1981 = !DILocation(line: 167, column: 9, scope: !1976)
!1982 = !DILocation(line: 168, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !327, line: 168, column: 13)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !327, line: 167, column: 37)
!1985 = !DILocalVariable(name: "col", scope: !1983, file: !327, line: 168, type: !45)
!1986 = !DILocation(line: 0, scope: !1983)
!1987 = !DILocation(line: 168, column: 35, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !327, line: 168, column: 13)
!1989 = !DILocation(line: 168, column: 13, scope: !1983)
!1990 = !DILocation(line: 169, column: 50, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !327, line: 168, column: 47)
!1992 = !DILocation(line: 169, column: 54, scope: !1991)
!1993 = !DILocation(line: 169, column: 58, scope: !1991)
!1994 = !DILocation(line: 169, column: 43, scope: !1991)
!1995 = !DILocation(line: 169, column: 93, scope: !1991)
!1996 = !DILocation(line: 169, column: 97, scope: !1991)
!1997 = !DILocation(line: 169, column: 104, scope: !1991)
!1998 = !DILocation(line: 169, column: 118, scope: !1991)
!1999 = !DILocation(line: 169, column: 111, scope: !1991)
!2000 = !DILocation(line: 169, column: 109, scope: !1991)
!2001 = !DILocation(line: 169, column: 133, scope: !1991)
!2002 = !DILocation(line: 169, column: 84, scope: !1991)
!2003 = !DILocation(line: 169, column: 17, scope: !1991)
!2004 = !DILocation(line: 168, column: 43, scope: !1988)
!2005 = !DILocation(line: 168, column: 13, scope: !1988)
!2006 = distinct !{!2006, !1989, !2007, !307}
!2007 = !DILocation(line: 170, column: 13, scope: !1983)
!2008 = !DILocation(line: 167, column: 33, scope: !1980)
!2009 = !DILocation(line: 167, column: 9, scope: !1980)
!2010 = distinct !{!2010, !1981, !2011, !307}
!2011 = !DILocation(line: 171, column: 9, scope: !1976)
!2012 = !DILocation(line: 159, column: 35, scope: !1934)
!2013 = !DILocation(line: 159, column: 5, scope: !1934)
!2014 = distinct !{!2014, !1935, !2015, !307}
!2015 = !DILocation(line: 172, column: 5, scope: !1928)
!2016 = !DILocation(line: 174, column: 9, scope: !1903)
!2017 = !DILocation(line: 175, scope: !1940)
!2018 = !DILocalVariable(name: "row", scope: !1940, file: !327, line: 175, type: !45)
!2019 = !DILocation(line: 0, scope: !1940)
!2020 = !DILocalVariable(name: "P3_used", scope: !1903, file: !327, line: 174, type: !45)
!2021 = !DILocation(line: 175, column: 27, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1940, file: !327, line: 175, column: 5)
!2023 = !DILocation(line: 186, column: 5, scope: !1903)
!2024 = !DILocation(line: 176, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !327, line: 176, column: 9)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !327, line: 175, column: 39)
!2027 = !DILocalVariable(name: "j", scope: !2025, file: !327, line: 176, type: !45)
!2028 = !DILocation(line: 0, scope: !2025)
!2029 = !DILocation(line: 176, column: 29, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !327, line: 176, column: 9)
!2031 = !DILocation(line: 176, column: 9, scope: !2025)
!2032 = !DILocation(line: 177, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !327, line: 177, column: 13)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !327, line: 176, column: 39)
!2035 = !DILocalVariable(name: "col", scope: !2033, file: !327, line: 177, type: !45)
!2036 = !DILocation(line: 0, scope: !2033)
!2037 = !DILocation(line: 177, column: 35, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !327, line: 177, column: 13)
!2039 = !DILocation(line: 177, column: 13, scope: !2033)
!2040 = !DILocation(line: 178, column: 53, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2038, file: !327, line: 177, column: 47)
!2042 = !DILocation(line: 178, column: 43, scope: !2041)
!2043 = !DILocation(line: 178, column: 89, scope: !2041)
!2044 = !DILocation(line: 178, column: 93, scope: !2041)
!2045 = !DILocation(line: 178, column: 100, scope: !2041)
!2046 = !DILocation(line: 178, column: 113, scope: !2041)
!2047 = !DILocation(line: 178, column: 107, scope: !2041)
!2048 = !DILocation(line: 178, column: 105, scope: !2041)
!2049 = !DILocation(line: 178, column: 123, scope: !2041)
!2050 = !DILocation(line: 178, column: 80, scope: !2041)
!2051 = !DILocation(line: 178, column: 17, scope: !2041)
!2052 = !DILocation(line: 177, column: 43, scope: !2038)
!2053 = !DILocation(line: 177, column: 13, scope: !2038)
!2054 = distinct !{!2054, !2039, !2055, !307}
!2055 = !DILocation(line: 179, column: 13, scope: !2033)
!2056 = !DILocation(line: 180, column: 21, scope: !2034)
!2057 = !DILocation(line: 176, column: 35, scope: !2030)
!2058 = !DILocation(line: 176, column: 9, scope: !2030)
!2059 = distinct !{!2059, !2031, !2060, !307}
!2060 = !DILocation(line: 181, column: 9, scope: !2025)
!2061 = !DILocation(line: 175, column: 35, scope: !2022)
!2062 = !DILocation(line: 175, column: 5, scope: !2022)
!2063 = distinct !{!2063, !1939, !2064, !307}
!2064 = !DILocation(line: 182, column: 5, scope: !1940)
!2065 = !DILocalVariable(name: "i", scope: !1903, file: !327, line: 185, type: !45)
!2066 = !DILocation(line: 186, column: 14, scope: !1903)
!2067 = !DILocation(line: 187, column: 58, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1903, file: !327, line: 186, column: 23)
!2069 = !DILocation(line: 187, column: 63, scope: !2068)
!2070 = !DILocation(line: 187, column: 54, scope: !2068)
!2071 = !DILocation(line: 187, column: 85, scope: !2068)
!2072 = !DILocation(line: 187, column: 81, scope: !2068)
!2073 = !DILocation(line: 187, column: 9, scope: !2068)
!2074 = !DILocation(line: 188, column: 10, scope: !2068)
!2075 = distinct !{!2075, !2023, !2076, !307}
!2076 = !DILocation(line: 189, column: 5, scope: !1903)
!2077 = !DILocation(line: 191, column: 1, scope: !1903)
!2078 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !327, file: !327, line: 195, type: !2079, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !330, !49, !45, !45, !45, !5}
!2081 = !DILocalVariable(name: "PS", arg: 1, scope: !2078, file: !327, line: 195, type: !330)
!2082 = !DILocation(line: 0, scope: !2078)
!2083 = !DILocalVariable(name: "S", arg: 2, scope: !2078, file: !327, line: 195, type: !49)
!2084 = !DILocalVariable(name: "m", arg: 3, scope: !2078, file: !327, line: 195, type: !45)
!2085 = !DILocalVariable(name: "k", arg: 4, scope: !2078, file: !327, line: 195, type: !45)
!2086 = !DILocalVariable(name: "n", arg: 5, scope: !2078, file: !327, line: 195, type: !45)
!2087 = !DILocalVariable(name: "SPS", arg: 6, scope: !2078, file: !327, line: 195, type: !5)
!2088 = !DILocalVariable(name: "accumulator", scope: !2078, file: !327, line: 196, type: !924)
!2089 = !DILocation(line: 196, column: 14, scope: !2078)
!2090 = !DILocation(line: 197, column: 32, scope: !2078)
!2091 = !DILocation(line: 197, column: 37, scope: !2078)
!2092 = !DILocalVariable(name: "m_vec_limbs", scope: !2078, file: !327, line: 197, type: !243)
!2093 = !DILocalVariable(name: "row", scope: !2094, file: !327, line: 198, type: !45)
!2094 = distinct !DILexicalBlock(scope: !2078, file: !327, line: 198, column: 5)
!2095 = !DILocation(line: 0, scope: !2094)
!2096 = !DILocation(line: 198, column: 10, scope: !2094)
!2097 = !DILocation(line: 198, scope: !2094)
!2098 = !DILocation(line: 198, column: 27, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !327, line: 198, column: 5)
!2100 = !DILocation(line: 198, column: 5, scope: !2094)
!2101 = !DILocation(line: 208, column: 5, scope: !2078)
!2102 = !DILocation(line: 199, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !327, line: 199, column: 9)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !327, line: 198, column: 39)
!2105 = !DILocalVariable(name: "j", scope: !2103, file: !327, line: 199, type: !45)
!2106 = !DILocation(line: 0, scope: !2103)
!2107 = !DILocation(line: 199, column: 27, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !327, line: 199, column: 9)
!2109 = !DILocation(line: 199, column: 9, scope: !2103)
!2110 = !DILocation(line: 200, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !327, line: 200, column: 13)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !327, line: 199, column: 37)
!2113 = !DILocalVariable(name: "col", scope: !2111, file: !327, line: 200, type: !45)
!2114 = !DILocation(line: 0, scope: !2111)
!2115 = !DILocation(line: 200, column: 35, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2111, file: !327, line: 200, column: 13)
!2117 = !DILocation(line: 200, column: 13, scope: !2111)
!2118 = !DILocation(line: 201, column: 52, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !327, line: 200, column: 50)
!2120 = !DILocation(line: 201, column: 56, scope: !2119)
!2121 = !DILocation(line: 201, column: 63, scope: !2119)
!2122 = !DILocation(line: 201, column: 47, scope: !2119)
!2123 = !DILocation(line: 201, column: 99, scope: !2119)
!2124 = !DILocation(line: 201, column: 103, scope: !2119)
!2125 = !DILocation(line: 201, column: 110, scope: !2119)
!2126 = !DILocation(line: 201, column: 123, scope: !2119)
!2127 = !DILocation(line: 201, column: 117, scope: !2119)
!2128 = !DILocation(line: 201, column: 115, scope: !2119)
!2129 = !DILocation(line: 201, column: 133, scope: !2119)
!2130 = !DILocation(line: 201, column: 90, scope: !2119)
!2131 = !DILocation(line: 201, column: 21, scope: !2119)
!2132 = !DILocation(line: 200, column: 44, scope: !2116)
!2133 = !DILocation(line: 200, column: 13, scope: !2116)
!2134 = distinct !{!2134, !2117, !2135, !307}
!2135 = !DILocation(line: 202, column: 13, scope: !2111)
!2136 = !DILocation(line: 199, column: 33, scope: !2108)
!2137 = !DILocation(line: 199, column: 9, scope: !2108)
!2138 = distinct !{!2138, !2109, !2139, !307}
!2139 = !DILocation(line: 203, column: 9, scope: !2103)
!2140 = !DILocation(line: 198, column: 35, scope: !2099)
!2141 = !DILocation(line: 198, column: 5, scope: !2099)
!2142 = distinct !{!2142, !2100, !2143, !307}
!2143 = !DILocation(line: 204, column: 5, scope: !2094)
!2144 = !DILocalVariable(name: "i", scope: !2078, file: !327, line: 207, type: !45)
!2145 = !DILocation(line: 208, column: 14, scope: !2078)
!2146 = !DILocation(line: 209, column: 58, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2078, file: !327, line: 208, column: 21)
!2148 = !DILocation(line: 209, column: 63, scope: !2147)
!2149 = !DILocation(line: 209, column: 54, scope: !2147)
!2150 = !DILocation(line: 209, column: 86, scope: !2147)
!2151 = !DILocation(line: 209, column: 82, scope: !2147)
!2152 = !DILocation(line: 209, column: 9, scope: !2147)
!2153 = !DILocation(line: 210, column: 10, scope: !2147)
!2154 = distinct !{!2154, !2101, !2155, !307}
!2155 = !DILocation(line: 211, column: 5, scope: !2078)
!2156 = !DILocation(line: 212, column: 1, scope: !2078)
!2157 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2158, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !45, !330, !5}
!2160 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2157, file: !448, line: 22, type: !45)
!2161 = !DILocation(line: 0, scope: !2157)
!2162 = !DILocalVariable(name: "in", arg: 2, scope: !2157, file: !448, line: 22, type: !330)
!2163 = !DILocalVariable(name: "acc", arg: 3, scope: !2157, file: !448, line: 22, type: !5)
!2164 = !DILocalVariable(name: "i", scope: !2165, file: !448, line: 24, type: !15)
!2165 = distinct !DILexicalBlock(scope: !2157, file: !448, line: 24, column: 5)
!2166 = !DILocation(line: 0, scope: !2165)
!2167 = !DILocation(line: 26, column: 19, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !448, line: 25, column: 5)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !448, line: 24, column: 5)
!2170 = !DILocation(line: 26, column: 16, scope: !2168)
!2171 = !DILocation(line: 26, column: 9, scope: !2168)
!2172 = !DILocation(line: 28, column: 1, scope: !2157)
!2173 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !448, file: !448, line: 66, type: !2174, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !45, !5, !5}
!2176 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2173, file: !448, line: 66, type: !45)
!2177 = !DILocation(line: 0, scope: !2173)
!2178 = !DILocalVariable(name: "bins", arg: 2, scope: !2173, file: !448, line: 66, type: !5)
!2179 = !DILocalVariable(name: "out", arg: 3, scope: !2173, file: !448, line: 66, type: !5)
!2180 = !DILocation(line: 67, column: 44, scope: !2173)
!2181 = !DILocation(line: 67, column: 73, scope: !2173)
!2182 = !DILocation(line: 67, column: 5, scope: !2173)
!2183 = !DILocation(line: 68, column: 40, scope: !2173)
!2184 = !DILocation(line: 68, column: 69, scope: !2173)
!2185 = !DILocation(line: 68, column: 5, scope: !2173)
!2186 = !DILocation(line: 69, column: 44, scope: !2173)
!2187 = !DILocation(line: 69, column: 74, scope: !2173)
!2188 = !DILocation(line: 69, column: 5, scope: !2173)
!2189 = !DILocation(line: 70, column: 40, scope: !2173)
!2190 = !DILocation(line: 70, column: 69, scope: !2173)
!2191 = !DILocation(line: 70, column: 5, scope: !2173)
!2192 = !DILocation(line: 71, column: 44, scope: !2173)
!2193 = !DILocation(line: 71, column: 73, scope: !2173)
!2194 = !DILocation(line: 71, column: 5, scope: !2173)
!2195 = !DILocation(line: 72, column: 40, scope: !2173)
!2196 = !DILocation(line: 72, column: 69, scope: !2173)
!2197 = !DILocation(line: 72, column: 5, scope: !2173)
!2198 = !DILocation(line: 73, column: 44, scope: !2173)
!2199 = !DILocation(line: 73, column: 74, scope: !2173)
!2200 = !DILocation(line: 73, column: 5, scope: !2173)
!2201 = !DILocation(line: 74, column: 40, scope: !2173)
!2202 = !DILocation(line: 74, column: 69, scope: !2173)
!2203 = !DILocation(line: 74, column: 5, scope: !2173)
!2204 = !DILocation(line: 75, column: 44, scope: !2173)
!2205 = !DILocation(line: 75, column: 74, scope: !2173)
!2206 = !DILocation(line: 75, column: 5, scope: !2173)
!2207 = !DILocation(line: 76, column: 40, scope: !2173)
!2208 = !DILocation(line: 76, column: 69, scope: !2173)
!2209 = !DILocation(line: 76, column: 5, scope: !2173)
!2210 = !DILocation(line: 77, column: 44, scope: !2173)
!2211 = !DILocation(line: 77, column: 74, scope: !2173)
!2212 = !DILocation(line: 77, column: 5, scope: !2173)
!2213 = !DILocation(line: 78, column: 40, scope: !2173)
!2214 = !DILocation(line: 78, column: 69, scope: !2173)
!2215 = !DILocation(line: 78, column: 5, scope: !2173)
!2216 = !DILocation(line: 79, column: 44, scope: !2173)
!2217 = !DILocation(line: 79, column: 74, scope: !2173)
!2218 = !DILocation(line: 79, column: 5, scope: !2173)
!2219 = !DILocation(line: 80, column: 40, scope: !2173)
!2220 = !DILocation(line: 80, column: 69, scope: !2173)
!2221 = !DILocation(line: 80, column: 5, scope: !2173)
!2222 = !DILocation(line: 81, column: 35, scope: !2173)
!2223 = !DILocation(line: 81, column: 5, scope: !2173)
!2224 = !DILocation(line: 82, column: 1, scope: !2173)
!2225 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !448, file: !448, line: 56, type: !2158, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2226 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2225, file: !448, line: 56, type: !45)
!2227 = !DILocation(line: 0, scope: !2225)
!2228 = !DILocalVariable(name: "in", arg: 2, scope: !2225, file: !448, line: 56, type: !330)
!2229 = !DILocalVariable(name: "acc", arg: 3, scope: !2225, file: !448, line: 56, type: !5)
!2230 = !DILocalVariable(name: "mask_lsb", scope: !2225, file: !448, line: 58, type: !6)
!2231 = !DILocalVariable(name: "i", scope: !2232, file: !448, line: 59, type: !45)
!2232 = distinct !DILexicalBlock(scope: !2225, file: !448, line: 59, column: 5)
!2233 = !DILocation(line: 0, scope: !2232)
!2234 = !DILocation(line: 60, column: 22, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !448, line: 59, column: 43)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !448, line: 59, column: 5)
!2237 = !DILocation(line: 60, column: 28, scope: !2235)
!2238 = !DILocalVariable(name: "t", scope: !2235, file: !448, line: 60, type: !6)
!2239 = !DILocation(line: 0, scope: !2235)
!2240 = !DILocation(line: 61, column: 32, scope: !2235)
!2241 = !DILocation(line: 61, column: 43, scope: !2235)
!2242 = !DILocation(line: 61, column: 38, scope: !2235)
!2243 = !DILocation(line: 61, column: 16, scope: !2235)
!2244 = !DILocation(line: 61, column: 9, scope: !2235)
!2245 = !DILocation(line: 63, column: 1, scope: !2225)
!2246 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !448, file: !448, line: 46, type: !2158, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2247 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2246, file: !448, line: 46, type: !45)
!2248 = !DILocation(line: 0, scope: !2246)
!2249 = !DILocalVariable(name: "in", arg: 2, scope: !2246, file: !448, line: 46, type: !330)
!2250 = !DILocalVariable(name: "acc", arg: 3, scope: !2246, file: !448, line: 46, type: !5)
!2251 = !DILocalVariable(name: "mask_msb", scope: !2246, file: !448, line: 48, type: !6)
!2252 = !DILocalVariable(name: "i", scope: !2253, file: !448, line: 49, type: !45)
!2253 = distinct !DILexicalBlock(scope: !2246, file: !448, line: 49, column: 5)
!2254 = !DILocation(line: 0, scope: !2253)
!2255 = !DILocation(line: 50, column: 22, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !448, line: 49, column: 43)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !448, line: 49, column: 5)
!2258 = !DILocalVariable(name: "t", scope: !2256, file: !448, line: 50, type: !6)
!2259 = !DILocation(line: 0, scope: !2256)
!2260 = !DILocation(line: 51, column: 32, scope: !2256)
!2261 = !DILocation(line: 51, column: 44, scope: !2256)
!2262 = !DILocation(line: 51, column: 50, scope: !2256)
!2263 = !DILocation(line: 51, column: 38, scope: !2256)
!2264 = !DILocation(line: 51, column: 16, scope: !2256)
!2265 = !DILocation(line: 51, column: 9, scope: !2256)
!2266 = !DILocation(line: 53, column: 1, scope: !2246)
!2267 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2158, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2268 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2267, file: !448, line: 13, type: !45)
!2269 = !DILocation(line: 0, scope: !2267)
!2270 = !DILocalVariable(name: "in", arg: 2, scope: !2267, file: !448, line: 13, type: !330)
!2271 = !DILocalVariable(name: "out", arg: 3, scope: !2267, file: !448, line: 13, type: !5)
!2272 = !DILocalVariable(name: "i", scope: !2273, file: !448, line: 15, type: !15)
!2273 = distinct !DILexicalBlock(scope: !2267, file: !448, line: 15, column: 5)
!2274 = !DILocation(line: 0, scope: !2273)
!2275 = !DILocation(line: 17, column: 18, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !448, line: 16, column: 5)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !448, line: 15, column: 5)
!2278 = !DILocation(line: 17, column: 16, scope: !2276)
!2279 = !DILocation(line: 17, column: 9, scope: !2276)
!2280 = !DILocation(line: 19, column: 1, scope: !2267)
!2281 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_m_upper", scope: !58, file: !58, line: 14, type: !2282, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2284, !330, !5, !45}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2287, file: !36, line: 266, baseType: !45, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2287, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2287, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2287, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2287, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2287, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2287, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2287, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2287, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2287, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2287, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2287, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2287, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2287, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2287, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2287, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2287, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2287, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2287, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2287, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2287, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2287, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2287, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2312 = !DILocalVariable(name: "p", arg: 1, scope: !2281, file: !58, line: 14, type: !2284)
!2313 = !DILocation(line: 0, scope: !2281)
!2314 = !DILocalVariable(name: "in", arg: 2, scope: !2281, file: !58, line: 14, type: !330)
!2315 = !DILocalVariable(name: "out", arg: 3, scope: !2281, file: !58, line: 14, type: !5)
!2316 = !DILocalVariable(name: "size", arg: 4, scope: !2281, file: !58, line: 14, type: !45)
!2317 = !DILocalVariable(name: "m_vec_limbs", scope: !2281, file: !58, line: 19, type: !243)
!2318 = !DILocalVariable(name: "m_vecs_stored", scope: !2281, file: !58, line: 20, type: !45)
!2319 = !DILocalVariable(name: "r", scope: !2320, file: !58, line: 21, type: !45)
!2320 = distinct !DILexicalBlock(scope: !2281, file: !58, line: 21, column: 5)
!2321 = !DILocation(line: 0, scope: !2320)
!2322 = !DILocation(line: 21, column: 10, scope: !2320)
!2323 = !DILocation(line: 20, column: 9, scope: !2281)
!2324 = !DILocation(line: 21, scope: !2320)
!2325 = !DILocation(line: 21, column: 23, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2320, file: !58, line: 21, column: 5)
!2327 = !DILocation(line: 21, column: 5, scope: !2320)
!2328 = !DILocation(line: 22, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !58, line: 22, column: 9)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !58, line: 21, column: 36)
!2331 = !DILocation(line: 22, scope: !2329)
!2332 = !DILocalVariable(name: "c", scope: !2329, file: !58, line: 22, type: !45)
!2333 = !DILocation(line: 0, scope: !2329)
!2334 = !DILocation(line: 22, column: 27, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !58, line: 22, column: 9)
!2336 = !DILocation(line: 23, column: 59, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2335, file: !58, line: 22, column: 40)
!2338 = !DILocation(line: 23, column: 66, scope: !2337)
!2339 = !DILocation(line: 23, column: 40, scope: !2337)
!2340 = !DILocation(line: 23, column: 76, scope: !2337)
!2341 = !DILocation(line: 23, column: 13, scope: !2337)
!2342 = !DILocation(line: 24, column: 19, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2337, file: !58, line: 24, column: 17)
!2344 = !DILocation(line: 25, column: 62, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2343, file: !58, line: 24, column: 25)
!2346 = !DILocation(line: 25, column: 69, scope: !2345)
!2347 = !DILocation(line: 25, column: 43, scope: !2345)
!2348 = !DILocation(line: 25, column: 79, scope: !2345)
!2349 = !DILocation(line: 25, column: 17, scope: !2345)
!2350 = !DILocation(line: 26, column: 13, scope: !2345)
!2351 = !DILocation(line: 27, column: 27, scope: !2337)
!2352 = !DILocation(line: 22, column: 36, scope: !2335)
!2353 = !DILocation(line: 22, column: 9, scope: !2335)
!2354 = distinct !{!2354, !2328, !2355, !307}
!2355 = !DILocation(line: 28, column: 9, scope: !2329)
!2356 = !DILocation(line: 21, column: 32, scope: !2326)
!2357 = !DILocation(line: 21, column: 5, scope: !2326)
!2358 = distinct !{!2358, !2327, !2359, !307}
!2359 = !DILocation(line: 29, column: 5, scope: !2320)
!2360 = !DILocation(line: 30, column: 1, scope: !2281)
!2361 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2158, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2362 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2361, file: !448, line: 13, type: !45)
!2363 = !DILocation(line: 0, scope: !2361)
!2364 = !DILocalVariable(name: "in", arg: 2, scope: !2361, file: !448, line: 13, type: !330)
!2365 = !DILocalVariable(name: "out", arg: 3, scope: !2361, file: !448, line: 13, type: !5)
!2366 = !DILocalVariable(name: "i", scope: !2367, file: !448, line: 15, type: !15)
!2367 = distinct !DILexicalBlock(scope: !2361, file: !448, line: 15, column: 5)
!2368 = !DILocation(line: 0, scope: !2367)
!2369 = !DILocation(line: 17, column: 18, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !448, line: 16, column: 5)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !448, line: 15, column: 5)
!2372 = !DILocation(line: 17, column: 16, scope: !2370)
!2373 = !DILocation(line: 17, column: 9, scope: !2370)
!2374 = !DILocation(line: 19, column: 1, scope: !2361)
!2375 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2158, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2376 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2375, file: !448, line: 22, type: !45)
!2377 = !DILocation(line: 0, scope: !2375)
!2378 = !DILocalVariable(name: "in", arg: 2, scope: !2375, file: !448, line: 22, type: !330)
!2379 = !DILocalVariable(name: "acc", arg: 3, scope: !2375, file: !448, line: 22, type: !5)
!2380 = !DILocalVariable(name: "i", scope: !2381, file: !448, line: 24, type: !15)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !448, line: 24, column: 5)
!2382 = !DILocation(line: 0, scope: !2381)
!2383 = !DILocation(line: 26, column: 19, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !448, line: 25, column: 5)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !448, line: 24, column: 5)
!2386 = !DILocation(line: 26, column: 16, scope: !2384)
!2387 = !DILocation(line: 26, column: 9, scope: !2384)
!2388 = !DILocation(line: 28, column: 1, scope: !2375)
!2389 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2390, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!45, !2284, !18, !49, !49, !18, !45, !45, !45, !45}
!2392 = !DILocalVariable(name: "p", arg: 1, scope: !2389, file: !58, line: 40, type: !2284)
!2393 = !DILocation(line: 0, scope: !2389)
!2394 = !DILocalVariable(name: "A", arg: 2, scope: !2389, file: !58, line: 40, type: !18)
!2395 = !DILocalVariable(name: "y", arg: 3, scope: !2389, file: !58, line: 41, type: !49)
!2396 = !DILocalVariable(name: "r", arg: 4, scope: !2389, file: !58, line: 41, type: !49)
!2397 = !DILocalVariable(name: "x", arg: 5, scope: !2389, file: !58, line: 42, type: !18)
!2398 = !DILocalVariable(name: "k", arg: 6, scope: !2389, file: !58, line: 42, type: !45)
!2399 = !DILocalVariable(name: "o", arg: 7, scope: !2389, file: !58, line: 42, type: !45)
!2400 = !DILocalVariable(name: "m", arg: 8, scope: !2389, file: !58, line: 42, type: !45)
!2401 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2389, file: !58, line: 42, type: !45)
!2402 = !DILocalVariable(name: "i", scope: !2403, file: !58, line: 51, type: !45)
!2403 = distinct !DILexicalBlock(scope: !2389, file: !58, line: 51, column: 5)
!2404 = !DILocation(line: 0, scope: !2403)
!2405 = !DILocation(line: 51, column: 10, scope: !2403)
!2406 = !DILocation(line: 51, scope: !2403)
!2407 = !DILocation(line: 51, column: 23, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !58, line: 51, column: 5)
!2409 = !DILocation(line: 51, column: 5, scope: !2403)
!2410 = !DILocation(line: 57, column: 5, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2389, file: !58, line: 57, column: 5)
!2412 = !DILocation(line: 52, column: 16, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2408, file: !58, line: 51, column: 37)
!2414 = !DILocation(line: 52, column: 9, scope: !2413)
!2415 = !DILocation(line: 52, column: 14, scope: !2413)
!2416 = !DILocation(line: 51, column: 33, scope: !2408)
!2417 = !DILocation(line: 51, column: 5, scope: !2408)
!2418 = distinct !{!2418, !2409, !2419, !307}
!2419 = !DILocation(line: 53, column: 5, scope: !2403)
!2420 = !DILocation(line: 57, scope: !2411)
!2421 = !DILocalVariable(name: "i", scope: !2411, file: !58, line: 57, type: !45)
!2422 = !DILocation(line: 0, scope: !2411)
!2423 = !DILocation(line: 57, column: 23, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2411, file: !58, line: 57, column: 5)
!2425 = !DILocation(line: 58, column: 13, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2424, file: !58, line: 57, column: 33)
!2427 = !DILocation(line: 58, column: 26, scope: !2426)
!2428 = !DILocation(line: 58, column: 30, scope: !2426)
!2429 = !DILocation(line: 58, column: 21, scope: !2426)
!2430 = !DILocation(line: 58, column: 9, scope: !2426)
!2431 = !DILocation(line: 58, column: 36, scope: !2426)
!2432 = !DILocation(line: 57, column: 29, scope: !2424)
!2433 = !DILocation(line: 57, column: 5, scope: !2424)
!2434 = distinct !{!2434, !2410, !2435, !307}
!2435 = !DILocation(line: 59, column: 5, scope: !2411)
!2436 = !DILocation(line: 60, column: 25, scope: !2389)
!2437 = !DILocation(line: 60, column: 29, scope: !2389)
!2438 = !DILocation(line: 60, column: 5, scope: !2389)
!2439 = !DILocalVariable(name: "i", scope: !2440, file: !58, line: 63, type: !45)
!2440 = distinct !DILexicalBlock(scope: !2389, file: !58, line: 63, column: 5)
!2441 = !DILocation(line: 0, scope: !2440)
!2442 = !DILocation(line: 63, column: 10, scope: !2440)
!2443 = !DILocation(line: 63, scope: !2440)
!2444 = !DILocation(line: 63, column: 23, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !58, line: 63, column: 5)
!2446 = !DILocation(line: 63, column: 5, scope: !2440)
!2447 = !DILocation(line: 64, column: 44, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !58, line: 63, column: 33)
!2449 = !DILocation(line: 64, column: 50, scope: !2448)
!2450 = !DILocation(line: 64, column: 38, scope: !2448)
!2451 = !DILocation(line: 64, column: 13, scope: !2448)
!2452 = !DILocation(line: 64, column: 26, scope: !2448)
!2453 = !DILocation(line: 64, column: 30, scope: !2448)
!2454 = !DILocation(line: 64, column: 21, scope: !2448)
!2455 = !DILocation(line: 64, column: 9, scope: !2448)
!2456 = !DILocation(line: 64, column: 36, scope: !2448)
!2457 = !DILocation(line: 63, column: 29, scope: !2445)
!2458 = !DILocation(line: 63, column: 5, scope: !2445)
!2459 = distinct !{!2459, !2446, !2460, !307}
!2460 = !DILocation(line: 65, column: 5, scope: !2440)
!2461 = !DILocation(line: 67, column: 16, scope: !2389)
!2462 = !DILocation(line: 67, column: 20, scope: !2389)
!2463 = !DILocation(line: 67, column: 5, scope: !2389)
!2464 = !DILocalVariable(name: "full_rank", scope: !2389, file: !58, line: 70, type: !14)
!2465 = !DILocalVariable(name: "i", scope: !2466, file: !58, line: 71, type: !45)
!2466 = distinct !DILexicalBlock(scope: !2389, file: !58, line: 71, column: 5)
!2467 = !DILocation(line: 0, scope: !2466)
!2468 = !DILocation(line: 71, column: 10, scope: !2466)
!2469 = !DILocation(line: 71, scope: !2466)
!2470 = !DILocation(line: 71, column: 23, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !58, line: 71, column: 5)
!2472 = !DILocation(line: 71, column: 5, scope: !2466)
!2473 = !DILocation(line: 72, column: 27, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !58, line: 71, column: 42)
!2475 = !DILocation(line: 72, column: 32, scope: !2474)
!2476 = !DILocation(line: 72, column: 22, scope: !2474)
!2477 = !DILocation(line: 72, column: 19, scope: !2474)
!2478 = !DILocation(line: 71, column: 38, scope: !2471)
!2479 = !DILocation(line: 71, column: 5, scope: !2471)
!2480 = distinct !{!2480, !2472, !2481, !307}
!2481 = !DILocation(line: 73, column: 5, scope: !2466)
!2482 = !DILocation(line: 80, column: 19, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2389, file: !58, line: 80, column: 9)
!2484 = !DILocation(line: 88, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2389, file: !58, line: 88, column: 5)
!2486 = !DILocalVariable(name: "row", scope: !2485, file: !58, line: 88, type: !45)
!2487 = !DILocation(line: 0, scope: !2485)
!2488 = !DILocation(line: 88, column: 31, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !58, line: 88, column: 5)
!2490 = !DILocation(line: 88, column: 5, scope: !2485)
!2491 = !DILocalVariable(name: "finished", scope: !2389, file: !58, line: 46, type: !14)
!2492 = !DILocation(line: 90, column: 27, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !58, line: 88, column: 44)
!2494 = !DILocalVariable(name: "col_upper_bound", scope: !2389, file: !58, line: 47, type: !45)
!2495 = !DILocalVariable(name: "col", scope: !2496, file: !58, line: 93, type: !45)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !58, line: 93, column: 9)
!2497 = !DILocation(line: 0, scope: !2496)
!2498 = !DILocation(line: 93, column: 14, scope: !2496)
!2499 = !DILocation(line: 0, scope: !2493)
!2500 = !DILocation(line: 93, scope: !2496)
!2501 = !DILocation(line: 93, column: 33, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 93, column: 9)
!2503 = !DILocation(line: 93, column: 9, scope: !2496)
!2504 = distinct !{!2504, !2490, !2505, !307}
!2505 = !DILocation(line: 122, column: 5, scope: !2485)
!2506 = !DILocation(line: 97, column: 50, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2502, file: !58, line: 93, column: 60)
!2508 = !DILocation(line: 97, column: 44, scope: !2507)
!2509 = !DILocation(line: 97, column: 30, scope: !2507)
!2510 = !DILocation(line: 97, column: 73, scope: !2507)
!2511 = !DILocalVariable(name: "correct_column", scope: !2389, file: !58, line: 48, type: !14)
!2512 = !DILocation(line: 99, column: 63, scope: !2507)
!2513 = !DILocation(line: 99, column: 48, scope: !2507)
!2514 = !DILocation(line: 99, column: 46, scope: !2507)
!2515 = !DILocalVariable(name: "u", scope: !2507, file: !58, line: 99, type: !14)
!2516 = !DILocation(line: 0, scope: !2507)
!2517 = !DILocation(line: 100, column: 13, scope: !2507)
!2518 = !DILocation(line: 100, column: 20, scope: !2507)
!2519 = !DILocalVariable(name: "i", scope: !2520, file: !58, line: 102, type: !45)
!2520 = distinct !DILexicalBlock(scope: !2507, file: !58, line: 102, column: 13)
!2521 = !DILocation(line: 0, scope: !2520)
!2522 = !DILocation(line: 102, column: 18, scope: !2520)
!2523 = !DILocation(line: 102, scope: !2520)
!2524 = !DILocation(line: 102, column: 31, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !58, line: 102, column: 13)
!2526 = !DILocation(line: 102, column: 13, scope: !2520)
!2527 = !DILocation(line: 103, column: 53, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 102, column: 46)
!2529 = !DILocation(line: 103, column: 45, scope: !2528)
!2530 = !DILocation(line: 103, column: 34, scope: !2528)
!2531 = !DILocation(line: 103, column: 95, scope: !2528)
!2532 = !DILocation(line: 103, column: 99, scope: !2528)
!2533 = !DILocation(line: 103, column: 91, scope: !2528)
!2534 = !DILocation(line: 103, column: 80, scope: !2528)
!2535 = !DILocation(line: 103, column: 115, scope: !2528)
!2536 = !DILocation(line: 103, column: 76, scope: !2528)
!2537 = !DILocation(line: 104, column: 49, scope: !2528)
!2538 = !DILocation(line: 104, column: 53, scope: !2528)
!2539 = !DILocation(line: 104, column: 45, scope: !2528)
!2540 = !DILocation(line: 104, column: 34, scope: !2528)
!2541 = !DILocation(line: 104, column: 69, scope: !2528)
!2542 = !DILocation(line: 104, column: 30, scope: !2528)
!2543 = !DILocation(line: 104, column: 95, scope: !2528)
!2544 = !DILocation(line: 104, column: 99, scope: !2528)
!2545 = !DILocation(line: 104, column: 91, scope: !2528)
!2546 = !DILocation(line: 104, column: 80, scope: !2528)
!2547 = !DILocation(line: 104, column: 115, scope: !2528)
!2548 = !DILocation(line: 104, column: 76, scope: !2528)
!2549 = !DILocation(line: 105, column: 49, scope: !2528)
!2550 = !DILocation(line: 105, column: 53, scope: !2528)
!2551 = !DILocation(line: 105, column: 45, scope: !2528)
!2552 = !DILocation(line: 105, column: 34, scope: !2528)
!2553 = !DILocation(line: 105, column: 69, scope: !2528)
!2554 = !DILocation(line: 105, column: 30, scope: !2528)
!2555 = !DILocation(line: 105, column: 95, scope: !2528)
!2556 = !DILocation(line: 105, column: 99, scope: !2528)
!2557 = !DILocation(line: 105, column: 91, scope: !2528)
!2558 = !DILocation(line: 105, column: 80, scope: !2528)
!2559 = !DILocation(line: 105, column: 115, scope: !2528)
!2560 = !DILocation(line: 105, column: 76, scope: !2528)
!2561 = !DILocation(line: 106, column: 49, scope: !2528)
!2562 = !DILocation(line: 106, column: 53, scope: !2528)
!2563 = !DILocation(line: 106, column: 45, scope: !2528)
!2564 = !DILocation(line: 106, column: 34, scope: !2528)
!2565 = !DILocation(line: 106, column: 69, scope: !2528)
!2566 = !DILocation(line: 106, column: 30, scope: !2528)
!2567 = !DILocation(line: 106, column: 95, scope: !2528)
!2568 = !DILocation(line: 106, column: 99, scope: !2528)
!2569 = !DILocation(line: 106, column: 91, scope: !2528)
!2570 = !DILocation(line: 106, column: 80, scope: !2528)
!2571 = !DILocation(line: 106, column: 115, scope: !2528)
!2572 = !DILocation(line: 106, column: 76, scope: !2528)
!2573 = !DILocalVariable(name: "tmp", scope: !2528, file: !58, line: 103, type: !6)
!2574 = !DILocation(line: 0, scope: !2528)
!2575 = !DILocation(line: 108, column: 23, scope: !2528)
!2576 = !DILocation(line: 110, column: 34, scope: !2528)
!2577 = !DILocation(line: 110, column: 17, scope: !2528)
!2578 = !DILocation(line: 110, column: 48, scope: !2528)
!2579 = !DILocation(line: 111, column: 56, scope: !2528)
!2580 = !DILocation(line: 111, column: 34, scope: !2528)
!2581 = !DILocation(line: 111, column: 17, scope: !2528)
!2582 = !DILocation(line: 111, column: 48, scope: !2528)
!2583 = !DILocation(line: 112, column: 56, scope: !2528)
!2584 = !DILocation(line: 112, column: 34, scope: !2528)
!2585 = !DILocation(line: 112, column: 17, scope: !2528)
!2586 = !DILocation(line: 112, column: 48, scope: !2528)
!2587 = !DILocation(line: 113, column: 56, scope: !2528)
!2588 = !DILocation(line: 113, column: 34, scope: !2528)
!2589 = !DILocation(line: 113, column: 17, scope: !2528)
!2590 = !DILocation(line: 113, column: 48, scope: !2528)
!2591 = !DILocation(line: 114, column: 56, scope: !2528)
!2592 = !DILocation(line: 114, column: 34, scope: !2528)
!2593 = !DILocation(line: 114, column: 17, scope: !2528)
!2594 = !DILocation(line: 114, column: 48, scope: !2528)
!2595 = !DILocation(line: 115, column: 56, scope: !2528)
!2596 = !DILocation(line: 115, column: 34, scope: !2528)
!2597 = !DILocation(line: 115, column: 17, scope: !2528)
!2598 = !DILocation(line: 115, column: 48, scope: !2528)
!2599 = !DILocation(line: 116, column: 56, scope: !2528)
!2600 = !DILocation(line: 116, column: 34, scope: !2528)
!2601 = !DILocation(line: 116, column: 17, scope: !2528)
!2602 = !DILocation(line: 116, column: 48, scope: !2528)
!2603 = !DILocation(line: 117, column: 56, scope: !2528)
!2604 = !DILocation(line: 117, column: 34, scope: !2528)
!2605 = !DILocation(line: 117, column: 17, scope: !2528)
!2606 = !DILocation(line: 117, column: 48, scope: !2528)
!2607 = !DILocation(line: 102, column: 40, scope: !2525)
!2608 = !DILocation(line: 102, column: 13, scope: !2525)
!2609 = distinct !{!2609, !2526, !2610, !307}
!2610 = !DILocation(line: 118, column: 13, scope: !2520)
!2611 = !DILocation(line: 120, column: 33, scope: !2507)
!2612 = !DILocation(line: 93, column: 56, scope: !2502)
!2613 = !DILocation(line: 93, column: 9, scope: !2502)
!2614 = distinct !{!2614, !2503, !2615, !307}
!2615 = !DILocation(line: 121, column: 9, scope: !2496)
!2616 = !DILocation(line: 124, column: 1, scope: !2389)
!2617 = distinct !DISubprogram(name: "mat_mul", scope: !496, file: !496, line: 79, type: !1346, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2618 = !DILocalVariable(name: "a", arg: 1, scope: !2617, file: !496, line: 79, type: !49)
!2619 = !DILocation(line: 0, scope: !2617)
!2620 = !DILocalVariable(name: "b", arg: 2, scope: !2617, file: !496, line: 79, type: !49)
!2621 = !DILocalVariable(name: "c", arg: 3, scope: !2617, file: !496, line: 80, type: !18)
!2622 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2617, file: !496, line: 80, type: !45)
!2623 = !DILocalVariable(name: "row_a", arg: 5, scope: !2617, file: !496, line: 80, type: !45)
!2624 = !DILocalVariable(name: "col_b", arg: 6, scope: !2617, file: !496, line: 80, type: !45)
!2625 = !DILocalVariable(name: "i", scope: !2626, file: !496, line: 81, type: !45)
!2626 = distinct !DILexicalBlock(scope: !2617, file: !496, line: 81, column: 5)
!2627 = !DILocation(line: 0, scope: !2626)
!2628 = !DILocation(line: 81, column: 10, scope: !2626)
!2629 = !DILocation(line: 81, scope: !2626)
!2630 = !DILocation(line: 81, column: 23, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !496, line: 81, column: 5)
!2632 = !DILocation(line: 81, column: 5, scope: !2626)
!2633 = !DILocation(line: 82, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !496, line: 82, column: 9)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !496, line: 81, column: 53)
!2636 = !DILocalVariable(name: "j", scope: !2634, file: !496, line: 82, type: !45)
!2637 = !DILocation(line: 0, scope: !2634)
!2638 = !DILocation(line: 82, column: 27, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !496, line: 82, column: 9)
!2640 = !DILocation(line: 82, column: 9, scope: !2634)
!2641 = !DILocation(line: 83, column: 31, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2639, file: !496, line: 82, column: 46)
!2643 = !DILocation(line: 83, column: 18, scope: !2642)
!2644 = !DILocation(line: 83, column: 16, scope: !2642)
!2645 = !DILocation(line: 82, column: 36, scope: !2639)
!2646 = !DILocation(line: 82, column: 41, scope: !2639)
!2647 = !DILocation(line: 82, column: 9, scope: !2639)
!2648 = distinct !{!2648, !2640, !2649, !307}
!2649 = !DILocation(line: 84, column: 9, scope: !2634)
!2650 = !DILocation(line: 81, column: 32, scope: !2631)
!2651 = !DILocation(line: 81, column: 39, scope: !2631)
!2652 = !DILocation(line: 81, column: 5, scope: !2631)
!2653 = distinct !{!2653, !2632, !2654, !307}
!2654 = !DILocation(line: 85, column: 5, scope: !2626)
!2655 = !DILocation(line: 86, column: 1, scope: !2617)
!2656 = distinct !DISubprogram(name: "sub_f", scope: !496, file: !496, line: 48, type: !1469, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2657 = !DILocalVariable(name: "a", arg: 1, scope: !2656, file: !496, line: 48, type: !14)
!2658 = !DILocation(line: 0, scope: !2656)
!2659 = !DILocalVariable(name: "b", arg: 2, scope: !2656, file: !496, line: 48, type: !14)
!2660 = !DILocation(line: 49, column: 14, scope: !2656)
!2661 = !DILocation(line: 49, column: 5, scope: !2656)
!2662 = distinct !DISubprogram(name: "EF", scope: !2663, file: !2663, line: 60, type: !2664, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2663 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !18, !45, !45}
!2666 = !DILocalVariable(name: "A", arg: 1, scope: !2662, file: !2663, line: 60, type: !18)
!2667 = !DILocation(line: 0, scope: !2662)
!2668 = !DILocalVariable(name: "nrows", arg: 2, scope: !2662, file: !2663, line: 60, type: !45)
!2669 = !DILocalVariable(name: "ncols", arg: 3, scope: !2662, file: !2663, line: 60, type: !45)
!2670 = !DILocalVariable(name: "_pivot_row", scope: !2662, file: !2663, line: 62, type: !2671, align: 256)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !2672)
!2672 = !{!2673}
!2673 = !DISubrange(count: 5)
!2674 = !DILocation(line: 62, column: 27, scope: !2662)
!2675 = !DILocalVariable(name: "_pivot_row2", scope: !2662, file: !2663, line: 63, type: !2671, align: 256)
!2676 = !DILocation(line: 63, column: 27, scope: !2662)
!2677 = !DILocalVariable(name: "packed_A", scope: !2662, file: !2663, line: 64, type: !2678, align: 256)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !2679)
!2679 = !{!2680}
!2680 = !DISubrange(count: 320)
!2681 = !DILocation(line: 64, column: 27, scope: !2662)
!2682 = !DILocation(line: 66, column: 26, scope: !2662)
!2683 = !DILocation(line: 66, column: 32, scope: !2662)
!2684 = !DILocalVariable(name: "row_len", scope: !2662, file: !2663, line: 66, type: !45)
!2685 = !DILocalVariable(name: "i", scope: !2686, file: !2663, line: 69, type: !45)
!2686 = distinct !DILexicalBlock(scope: !2662, file: !2663, line: 69, column: 5)
!2687 = !DILocation(line: 0, scope: !2686)
!2688 = !DILocation(line: 69, column: 10, scope: !2686)
!2689 = !DILocation(line: 69, scope: !2686)
!2690 = !DILocation(line: 69, column: 23, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2686, file: !2663, line: 69, column: 5)
!2692 = !DILocation(line: 69, column: 5, scope: !2686)
!2693 = !DILocation(line: 77, column: 5, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2662, file: !2663, line: 77, column: 5)
!2695 = !DILocation(line: 70, column: 29, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2691, file: !2663, line: 69, column: 37)
!2697 = !DILocation(line: 70, column: 25, scope: !2696)
!2698 = !DILocation(line: 70, column: 51, scope: !2696)
!2699 = !DILocation(line: 70, column: 47, scope: !2696)
!2700 = !DILocation(line: 70, column: 9, scope: !2696)
!2701 = !DILocation(line: 69, column: 33, scope: !2691)
!2702 = !DILocation(line: 69, column: 5, scope: !2691)
!2703 = distinct !{!2703, !2692, !2704, !307}
!2704 = !DILocation(line: 71, column: 5, scope: !2686)
!2705 = !DILocation(line: 77, scope: !2694)
!2706 = !DILocalVariable(name: "pivot_row", scope: !2662, file: !2663, line: 76, type: !45)
!2707 = !DILocalVariable(name: "pivot_col", scope: !2694, file: !2663, line: 77, type: !45)
!2708 = !DILocation(line: 0, scope: !2694)
!2709 = !DILocation(line: 77, column: 39, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2694, file: !2663, line: 77, column: 5)
!2711 = !DILocation(line: 79, column: 37, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2710, file: !2663, line: 77, column: 61)
!2713 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2712, file: !2663, line: 79, type: !45)
!2714 = !DILocation(line: 0, scope: !2712)
!2715 = !DILocation(line: 80, column: 37, scope: !2712)
!2716 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2712, file: !2663, line: 80, type: !45)
!2717 = !DILocalVariable(name: "i", scope: !2718, file: !2663, line: 85, type: !45)
!2718 = distinct !DILexicalBlock(scope: !2712, file: !2663, line: 85, column: 9)
!2719 = !DILocation(line: 0, scope: !2718)
!2720 = !DILocation(line: 85, column: 14, scope: !2718)
!2721 = !DILocation(line: 85, scope: !2718)
!2722 = !DILocation(line: 85, column: 27, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2718, file: !2663, line: 85, column: 9)
!2724 = !DILocation(line: 85, column: 9, scope: !2718)
!2725 = !DILocation(line: 93, column: 9, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2712, file: !2663, line: 93, column: 9)
!2727 = !DILocation(line: 86, column: 13, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2723, file: !2663, line: 85, column: 43)
!2729 = !DILocation(line: 86, column: 27, scope: !2728)
!2730 = !DILocation(line: 87, column: 13, scope: !2728)
!2731 = !DILocation(line: 87, column: 28, scope: !2728)
!2732 = !DILocation(line: 85, column: 39, scope: !2723)
!2733 = !DILocation(line: 85, column: 9, scope: !2723)
!2734 = distinct !{!2734, !2724, !2735, !307}
!2735 = !DILocation(line: 88, column: 9, scope: !2718)
!2736 = !DILocation(line: 0, scope: !2726)
!2737 = !DILocalVariable(name: "row", scope: !2726, file: !2663, line: 93, type: !45)
!2738 = !DILocalVariable(name: "pivot", scope: !2712, file: !2663, line: 91, type: !14)
!2739 = !DILocalVariable(name: "pivot_is_zero", scope: !2712, file: !2663, line: 92, type: !6)
!2740 = !DILocation(line: 94, column: 24, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2726, file: !2663, line: 93, column: 9)
!2742 = !DILocation(line: 94, column: 21, scope: !2741)
!2743 = !DILocation(line: 96, column: 38, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2741, file: !2663, line: 94, column: 80)
!2745 = !DILocation(line: 96, column: 37, scope: !2744)
!2746 = !DILocalVariable(name: "is_pivot_row", scope: !2744, file: !2663, line: 96, type: !6)
!2747 = !DILocation(line: 0, scope: !2744)
!2748 = !DILocation(line: 97, column: 40, scope: !2744)
!2749 = !DILocalVariable(name: "below_pivot_row", scope: !2744, file: !2663, line: 97, type: !6)
!2750 = !DILocalVariable(name: "j", scope: !2751, file: !2663, line: 99, type: !45)
!2751 = distinct !DILexicalBlock(scope: !2744, file: !2663, line: 99, column: 13)
!2752 = !DILocation(line: 0, scope: !2751)
!2753 = !DILocation(line: 99, column: 18, scope: !2751)
!2754 = !DILocation(line: 99, scope: !2751)
!2755 = !DILocation(line: 99, column: 31, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !2663, line: 99, column: 13)
!2757 = !DILocation(line: 99, column: 13, scope: !2751)
!2758 = !DILocation(line: 100, column: 67, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2756, file: !2663, line: 99, column: 47)
!2760 = !DILocation(line: 100, column: 48, scope: !2759)
!2761 = !DILocation(line: 101, column: 47, scope: !2759)
!2762 = !DILocation(line: 101, column: 57, scope: !2759)
!2763 = !DILocation(line: 101, column: 34, scope: !2759)
!2764 = !DILocation(line: 100, column: 85, scope: !2759)
!2765 = !DILocation(line: 100, column: 17, scope: !2759)
!2766 = !DILocation(line: 100, column: 31, scope: !2759)
!2767 = !DILocation(line: 99, column: 43, scope: !2756)
!2768 = !DILocation(line: 99, column: 13, scope: !2756)
!2769 = distinct !{!2769, !2757, !2770, !307}
!2770 = !DILocation(line: 102, column: 13, scope: !2751)
!2771 = !DILocation(line: 103, column: 21, scope: !2744)
!2772 = !DILocation(line: 104, column: 44, scope: !2744)
!2773 = !DILocation(line: 104, column: 30, scope: !2744)
!2774 = !DILocation(line: 104, column: 29, scope: !2744)
!2775 = !DILocation(line: 94, column: 76, scope: !2741)
!2776 = !DILocation(line: 93, column: 9, scope: !2741)
!2777 = distinct !{!2777, !2725, !2778, !307}
!2778 = !DILocation(line: 105, column: 9, scope: !2726)
!2779 = !DILocation(line: 108, column: 19, scope: !2712)
!2780 = !DILocalVariable(name: "inverse", scope: !2662, file: !2663, line: 75, type: !14)
!2781 = !DILocation(line: 109, column: 9, scope: !2712)
!2782 = !DILocalVariable(name: "row", scope: !2783, file: !2663, line: 113, type: !45)
!2783 = distinct !DILexicalBlock(scope: !2712, file: !2663, line: 113, column: 9)
!2784 = !DILocation(line: 0, scope: !2783)
!2785 = !DILocation(line: 113, column: 14, scope: !2783)
!2786 = !DILocation(line: 113, scope: !2783)
!2787 = !DILocation(line: 113, column: 51, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2783, file: !2663, line: 113, column: 9)
!2789 = !DILocation(line: 113, column: 9, scope: !2783)
!2790 = !DILocation(line: 114, column: 33, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !2663, line: 113, column: 84)
!2792 = !DILocation(line: 114, column: 63, scope: !2791)
!2793 = !DILocalVariable(name: "do_copy", scope: !2791, file: !2663, line: 114, type: !6)
!2794 = !DILocation(line: 0, scope: !2791)
!2795 = !DILocalVariable(name: "do_not_copy", scope: !2791, file: !2663, line: 115, type: !6)
!2796 = !DILocalVariable(name: "col", scope: !2797, file: !2663, line: 116, type: !45)
!2797 = distinct !DILexicalBlock(scope: !2791, file: !2663, line: 116, column: 13)
!2798 = !DILocation(line: 0, scope: !2797)
!2799 = !DILocation(line: 116, column: 18, scope: !2797)
!2800 = !DILocation(line: 116, scope: !2797)
!2801 = !DILocation(line: 116, column: 35, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2797, file: !2663, line: 116, column: 13)
!2803 = !DILocation(line: 116, column: 13, scope: !2797)
!2804 = !DILocation(line: 118, column: 49, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !2663, line: 116, column: 53)
!2806 = !DILocation(line: 118, column: 59, scope: !2805)
!2807 = !DILocation(line: 118, column: 36, scope: !2805)
!2808 = !DILocation(line: 118, column: 34, scope: !2805)
!2809 = !DILocation(line: 119, column: 32, scope: !2805)
!2810 = !DILocation(line: 119, column: 30, scope: !2805)
!2811 = !DILocation(line: 118, column: 67, scope: !2805)
!2812 = !DILocation(line: 117, column: 30, scope: !2805)
!2813 = !DILocation(line: 117, column: 40, scope: !2805)
!2814 = !DILocation(line: 117, column: 17, scope: !2805)
!2815 = !DILocation(line: 117, column: 47, scope: !2805)
!2816 = !DILocation(line: 116, column: 49, scope: !2802)
!2817 = !DILocation(line: 116, column: 13, scope: !2802)
!2818 = distinct !{!2818, !2803, !2819, !307}
!2819 = !DILocation(line: 120, column: 13, scope: !2797)
!2820 = !DILocation(line: 113, column: 80, scope: !2788)
!2821 = !DILocation(line: 113, column: 9, scope: !2788)
!2822 = distinct !{!2822, !2789, !2823, !307}
!2823 = !DILocation(line: 121, column: 9, scope: !2783)
!2824 = !DILocation(line: 124, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2712, file: !2663, line: 124, column: 9)
!2826 = !DILocalVariable(name: "row", scope: !2825, file: !2663, line: 124, type: !45)
!2827 = !DILocation(line: 0, scope: !2825)
!2828 = !DILocation(line: 124, column: 51, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !2663, line: 124, column: 9)
!2830 = !DILocation(line: 124, column: 9, scope: !2825)
!2831 = !DILocation(line: 125, column: 46, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2829, file: !2663, line: 124, column: 67)
!2833 = !DILocalVariable(name: "below_pivot", scope: !2832, file: !2663, line: 125, type: !14)
!2834 = !DILocation(line: 0, scope: !2832)
!2835 = !DILocation(line: 126, column: 74, scope: !2832)
!2836 = !DILocation(line: 126, column: 68, scope: !2832)
!2837 = !DILocation(line: 126, column: 41, scope: !2832)
!2838 = !DILocalVariable(name: "elt_to_elim", scope: !2832, file: !2663, line: 126, type: !14)
!2839 = !DILocation(line: 128, column: 63, scope: !2832)
!2840 = !DILocation(line: 129, column: 52, scope: !2832)
!2841 = !DILocation(line: 129, column: 46, scope: !2832)
!2842 = !DILocation(line: 128, column: 13, scope: !2832)
!2843 = !DILocation(line: 124, column: 63, scope: !2829)
!2844 = !DILocation(line: 124, column: 9, scope: !2829)
!2845 = distinct !{!2845, !2830, !2846, !307}
!2846 = !DILocation(line: 130, column: 9, scope: !2825)
!2847 = !DILocation(line: 132, column: 19, scope: !2712)
!2848 = !DILocation(line: 77, column: 57, scope: !2710)
!2849 = !DILocation(line: 77, column: 5, scope: !2710)
!2850 = distinct !{!2850, !2693, !2851, !307}
!2851 = !DILocation(line: 133, column: 5, scope: !2694)
!2852 = !DILocation(line: 138, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2662, file: !2663, line: 138, column: 5)
!2854 = !DILocalVariable(name: "i", scope: !2853, file: !2663, line: 138, type: !45)
!2855 = !DILocation(line: 0, scope: !2853)
!2856 = !DILocation(line: 138, column: 23, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !2663, line: 138, column: 5)
!2858 = !DILocation(line: 138, column: 5, scope: !2853)
!2859 = !DILocation(line: 139, column: 47, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !2663, line: 138, column: 37)
!2861 = !DILocation(line: 139, column: 43, scope: !2860)
!2862 = !DILocation(line: 139, column: 9, scope: !2860)
!2863 = !DILocalVariable(name: "j", scope: !2864, file: !2663, line: 140, type: !45)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !2663, line: 140, column: 9)
!2865 = !DILocation(line: 0, scope: !2864)
!2866 = !DILocation(line: 140, column: 14, scope: !2864)
!2867 = !DILocation(line: 140, scope: !2864)
!2868 = !DILocation(line: 140, column: 27, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !2663, line: 140, column: 9)
!2870 = !DILocation(line: 140, column: 9, scope: !2864)
!2871 = !DILocation(line: 141, column: 32, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !2663, line: 140, column: 41)
!2873 = !DILocation(line: 141, column: 17, scope: !2872)
!2874 = !DILocation(line: 141, column: 13, scope: !2872)
!2875 = !DILocation(line: 141, column: 30, scope: !2872)
!2876 = !DILocation(line: 140, column: 37, scope: !2869)
!2877 = !DILocation(line: 140, column: 9, scope: !2869)
!2878 = distinct !{!2878, !2870, !2879, !307}
!2879 = !DILocation(line: 142, column: 9, scope: !2864)
!2880 = !DILocation(line: 138, column: 33, scope: !2857)
!2881 = !DILocation(line: 138, column: 5, scope: !2857)
!2882 = distinct !{!2882, !2858, !2883, !307}
!2883 = !DILocation(line: 143, column: 5, scope: !2853)
!2884 = !DILocation(line: 145, column: 5, scope: !2662)
!2885 = !DILocation(line: 146, column: 5, scope: !2662)
!2886 = !DILocation(line: 147, column: 5, scope: !2662)
!2887 = !DILocation(line: 148, column: 5, scope: !2662)
!2888 = !DILocation(line: 149, column: 1, scope: !2662)
!2889 = distinct !DISubprogram(name: "ct_compare_8", scope: !2890, file: !2890, line: 51, type: !1469, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2890 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2891 = !DILocalVariable(name: "a", arg: 1, scope: !2889, file: !2890, line: 51, type: !14)
!2892 = !DILocation(line: 0, scope: !2889)
!2893 = !DILocalVariable(name: "b", arg: 2, scope: !2889, file: !2890, line: 51, type: !14)
!2894 = !DILocation(line: 52, column: 42, scope: !2889)
!2895 = !DILocation(line: 52, column: 13, scope: !2889)
!2896 = !DILocation(line: 52, column: 71, scope: !2889)
!2897 = !DILocation(line: 52, column: 69, scope: !2889)
!2898 = !DILocation(line: 52, column: 5, scope: !2889)
!2899 = distinct !DISubprogram(name: "mul_fx8", scope: !496, file: !496, line: 28, type: !2900, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!6, !14, !6}
!2902 = !DILocalVariable(name: "a", arg: 1, scope: !2899, file: !496, line: 28, type: !14)
!2903 = !DILocation(line: 0, scope: !2899)
!2904 = !DILocalVariable(name: "b", arg: 2, scope: !2899, file: !496, line: 28, type: !6)
!2905 = !DILocation(line: 31, column: 13, scope: !2899)
!2906 = !DILocation(line: 31, column: 10, scope: !2899)
!2907 = !DILocation(line: 31, column: 17, scope: !2899)
!2908 = !DILocalVariable(name: "p", scope: !2899, file: !496, line: 30, type: !6)
!2909 = !DILocation(line: 32, column: 13, scope: !2899)
!2910 = !DILocation(line: 32, column: 10, scope: !2899)
!2911 = !DILocation(line: 32, column: 17, scope: !2899)
!2912 = !DILocation(line: 32, column: 7, scope: !2899)
!2913 = !DILocation(line: 33, column: 13, scope: !2899)
!2914 = !DILocation(line: 33, column: 10, scope: !2899)
!2915 = !DILocation(line: 33, column: 17, scope: !2899)
!2916 = !DILocation(line: 33, column: 7, scope: !2899)
!2917 = !DILocation(line: 34, column: 13, scope: !2899)
!2918 = !DILocation(line: 34, column: 10, scope: !2899)
!2919 = !DILocation(line: 34, column: 17, scope: !2899)
!2920 = !DILocation(line: 34, column: 7, scope: !2899)
!2921 = !DILocalVariable(name: "top_p", scope: !2899, file: !496, line: 37, type: !6)
!2922 = !DILocation(line: 38, column: 32, scope: !2899)
!2923 = !DILocation(line: 38, column: 47, scope: !2899)
!2924 = !DILocation(line: 38, column: 38, scope: !2899)
!2925 = !DILocation(line: 38, column: 54, scope: !2899)
!2926 = !DILocalVariable(name: "out", scope: !2899, file: !496, line: 38, type: !6)
!2927 = !DILocation(line: 39, column: 5, scope: !2899)
!2928 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2663, file: !2663, line: 24, type: !2929, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !49, !5, !45}
!2931 = !DILocalVariable(name: "in", arg: 1, scope: !2928, file: !2663, line: 24, type: !49)
!2932 = !DILocation(line: 0, scope: !2928)
!2933 = !DILocalVariable(name: "out", arg: 2, scope: !2928, file: !2663, line: 24, type: !5)
!2934 = !DILocalVariable(name: "ncols", arg: 3, scope: !2928, file: !2663, line: 24, type: !45)
!2935 = !DILocalVariable(name: "out8", scope: !2928, file: !2663, line: 26, type: !18)
!2936 = !DILocalVariable(name: "i", scope: !2928, file: !2663, line: 25, type: !45)
!2937 = !DILocation(line: 27, column: 9, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2928, file: !2663, line: 27, column: 5)
!2939 = !DILocation(line: 27, scope: !2938)
!2940 = !DILocation(line: 27, column: 17, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !2663, line: 27, column: 5)
!2942 = !DILocation(line: 27, column: 20, scope: !2941)
!2943 = !DILocation(line: 27, column: 5, scope: !2938)
!2944 = !DILocation(line: 31, column: 23, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2941, file: !2663, line: 27, column: 36)
!2946 = !DILocation(line: 31, column: 44, scope: !2945)
!2947 = !DILocation(line: 31, column: 40, scope: !2945)
!2948 = !DILocation(line: 31, column: 48, scope: !2945)
!2949 = !DILocation(line: 31, column: 37, scope: !2945)
!2950 = !DILocation(line: 31, column: 15, scope: !2945)
!2951 = !DILocation(line: 31, column: 9, scope: !2945)
!2952 = !DILocation(line: 31, column: 20, scope: !2945)
!2953 = !DILocation(line: 27, column: 31, scope: !2941)
!2954 = !DILocation(line: 27, column: 5, scope: !2941)
!2955 = distinct !{!2955, !2943, !2956, !307}
!2956 = !DILocation(line: 33, column: 5, scope: !2938)
!2957 = !DILocation(line: 34, column: 19, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2928, file: !2663, line: 34, column: 9)
!2959 = !DILocation(line: 38, column: 23, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2958, file: !2663, line: 34, column: 24)
!2961 = !DILocation(line: 38, column: 15, scope: !2960)
!2962 = !DILocation(line: 38, column: 9, scope: !2960)
!2963 = !DILocation(line: 38, column: 20, scope: !2960)
!2964 = !DILocation(line: 40, column: 5, scope: !2960)
!2965 = !DILocation(line: 41, column: 1, scope: !2928)
!2966 = distinct !DISubprogram(name: "ct_compare_64", scope: !2890, file: !2890, line: 46, type: !2967, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!6, !45, !45}
!2969 = !DILocalVariable(name: "a", arg: 1, scope: !2966, file: !2890, line: 46, type: !45)
!2970 = !DILocation(line: 0, scope: !2966)
!2971 = !DILocalVariable(name: "b", arg: 2, scope: !2966, file: !2890, line: 46, type: !45)
!2972 = !DILocation(line: 47, column: 38, scope: !2966)
!2973 = !DILocation(line: 47, column: 44, scope: !2966)
!2974 = !DILocation(line: 47, column: 73, scope: !2966)
!2975 = !DILocation(line: 47, column: 71, scope: !2966)
!2976 = !DILocation(line: 47, column: 5, scope: !2966)
!2977 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !2890, file: !2890, line: 35, type: !2967, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2978 = !DILocalVariable(name: "a", arg: 1, scope: !2977, file: !2890, line: 35, type: !45)
!2979 = !DILocation(line: 0, scope: !2977)
!2980 = !DILocalVariable(name: "b", arg: 2, scope: !2977, file: !2890, line: 35, type: !45)
!2981 = !DILocalVariable(name: "diff", scope: !2977, file: !2890, line: 36, type: !46)
!2982 = !DILocation(line: 37, column: 30, scope: !2977)
!2983 = !DILocation(line: 37, column: 59, scope: !2977)
!2984 = !DILocation(line: 37, column: 57, scope: !2977)
!2985 = !DILocation(line: 37, column: 5, scope: !2977)
!2986 = distinct !DISubprogram(name: "m_extract_element", scope: !2663, file: !2663, line: 16, type: !2987, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!14, !330, !45}
!2989 = !DILocalVariable(name: "in", arg: 1, scope: !2986, file: !2663, line: 16, type: !330)
!2990 = !DILocation(line: 0, scope: !2986)
!2991 = !DILocalVariable(name: "index", arg: 2, scope: !2986, file: !2663, line: 16, type: !45)
!2992 = !DILocation(line: 17, column: 27, scope: !2986)
!2993 = !DILocalVariable(name: "leg", scope: !2986, file: !2663, line: 17, type: !243)
!2994 = !DILocation(line: 18, column: 30, scope: !2986)
!2995 = !DILocalVariable(name: "offset", scope: !2986, file: !2663, line: 18, type: !243)
!2996 = !DILocation(line: 20, column: 13, scope: !2986)
!2997 = !DILocation(line: 20, column: 31, scope: !2986)
!2998 = !DILocation(line: 20, column: 21, scope: !2986)
!2999 = !DILocation(line: 20, column: 12, scope: !2986)
!3000 = !DILocation(line: 20, column: 5, scope: !2986)
!3001 = distinct !DISubprogram(name: "inverse_f", scope: !496, file: !496, line: 57, type: !3002, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!14, !14}
!3004 = !DILocalVariable(name: "a", arg: 1, scope: !3001, file: !496, line: 57, type: !14)
!3005 = !DILocation(line: 0, scope: !3001)
!3006 = !DILocation(line: 61, column: 24, scope: !3001)
!3007 = !DILocalVariable(name: "a2", scope: !3001, file: !496, line: 61, type: !14)
!3008 = !DILocation(line: 62, column: 24, scope: !3001)
!3009 = !DILocalVariable(name: "a4", scope: !3001, file: !496, line: 62, type: !14)
!3010 = !DILocation(line: 63, column: 24, scope: !3001)
!3011 = !DILocalVariable(name: "a8", scope: !3001, file: !496, line: 63, type: !14)
!3012 = !DILocation(line: 64, column: 24, scope: !3001)
!3013 = !DILocalVariable(name: "a6", scope: !3001, file: !496, line: 64, type: !14)
!3014 = !DILocation(line: 65, column: 25, scope: !3001)
!3015 = !DILocalVariable(name: "a14", scope: !3001, file: !496, line: 65, type: !14)
!3016 = !DILocation(line: 67, column: 5, scope: !3001)
!3017 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !2890, file: !2890, line: 94, type: !3018, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !243, !330, !14, !5}
!3020 = !DILocalVariable(name: "legs", arg: 1, scope: !3017, file: !2890, line: 94, type: !243)
!3021 = !DILocation(line: 0, scope: !3017)
!3022 = !DILocalVariable(name: "in", arg: 2, scope: !3017, file: !2890, line: 94, type: !330)
!3023 = !DILocalVariable(name: "a", arg: 3, scope: !3017, file: !2890, line: 94, type: !14)
!3024 = !DILocalVariable(name: "acc", arg: 4, scope: !3017, file: !2890, line: 94, type: !5)
!3025 = !DILocation(line: 95, column: 20, scope: !3017)
!3026 = !DILocalVariable(name: "tab", scope: !3017, file: !2890, line: 95, type: !19)
!3027 = !DILocalVariable(name: "lsb_ask", scope: !3017, file: !2890, line: 97, type: !6)
!3028 = !DILocalVariable(name: "i", scope: !3029, file: !2890, line: 99, type: !45)
!3029 = distinct !DILexicalBlock(scope: !3017, file: !2890, line: 99, column: 5)
!3030 = !DILocation(line: 0, scope: !3029)
!3031 = !DILocation(line: 99, column: 9, scope: !3029)
!3032 = !DILocation(line: 99, scope: !3029)
!3033 = !DILocation(line: 99, column: 20, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !2890, line: 99, column: 5)
!3035 = !DILocation(line: 99, column: 5, scope: !3029)
!3036 = !DILocation(line: 100, column: 21, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !2890, line: 99, column: 32)
!3038 = !DILocation(line: 100, column: 33, scope: !3037)
!3039 = !DILocation(line: 100, column: 51, scope: !3037)
!3040 = !DILocation(line: 100, column: 46, scope: !3037)
!3041 = !DILocation(line: 100, column: 44, scope: !3037)
!3042 = !DILocation(line: 101, column: 27, scope: !3037)
!3043 = !DILocation(line: 101, column: 33, scope: !3037)
!3044 = !DILocation(line: 101, column: 52, scope: !3037)
!3045 = !DILocation(line: 101, column: 59, scope: !3037)
!3046 = !DILocation(line: 101, column: 46, scope: !3037)
!3047 = !DILocation(line: 101, column: 44, scope: !3037)
!3048 = !DILocation(line: 101, column: 17, scope: !3037)
!3049 = !DILocation(line: 102, column: 21, scope: !3037)
!3050 = !DILocation(line: 102, column: 27, scope: !3037)
!3051 = !DILocation(line: 102, column: 33, scope: !3037)
!3052 = !DILocation(line: 102, column: 52, scope: !3037)
!3053 = !DILocation(line: 102, column: 59, scope: !3037)
!3054 = !DILocation(line: 102, column: 46, scope: !3037)
!3055 = !DILocation(line: 102, column: 44, scope: !3037)
!3056 = !DILocation(line: 102, column: 17, scope: !3037)
!3057 = !DILocation(line: 103, column: 21, scope: !3037)
!3058 = !DILocation(line: 103, column: 27, scope: !3037)
!3059 = !DILocation(line: 103, column: 33, scope: !3037)
!3060 = !DILocation(line: 103, column: 52, scope: !3037)
!3061 = !DILocation(line: 103, column: 59, scope: !3037)
!3062 = !DILocation(line: 103, column: 46, scope: !3037)
!3063 = !DILocation(line: 103, column: 44, scope: !3037)
!3064 = !DILocation(line: 103, column: 17, scope: !3037)
!3065 = !DILocation(line: 100, column: 9, scope: !3037)
!3066 = !DILocation(line: 100, column: 16, scope: !3037)
!3067 = !DILocation(line: 99, column: 29, scope: !3034)
!3068 = !DILocation(line: 99, column: 5, scope: !3034)
!3069 = distinct !{!3069, !3035, !3070, !307}
!3070 = !DILocation(line: 104, column: 5, scope: !3029)
!3071 = !DILocation(line: 105, column: 1, scope: !3017)
!3072 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2663, file: !2663, line: 44, type: !3073, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !45, !330, !18}
!3075 = !DILocalVariable(name: "legs", arg: 1, scope: !3072, file: !2663, line: 44, type: !45)
!3076 = !DILocation(line: 0, scope: !3072)
!3077 = !DILocalVariable(name: "in", arg: 2, scope: !3072, file: !2663, line: 44, type: !330)
!3078 = !DILocalVariable(name: "out", arg: 3, scope: !3072, file: !2663, line: 44, type: !18)
!3079 = !DILocalVariable(name: "in8", scope: !3072, file: !2663, line: 45, type: !49)
!3080 = !DILocalVariable(name: "i", scope: !3081, file: !2663, line: 46, type: !45)
!3081 = distinct !DILexicalBlock(scope: !3072, file: !2663, line: 46, column: 5)
!3082 = !DILocation(line: 0, scope: !3081)
!3083 = !DILocation(line: 46, column: 9, scope: !3081)
!3084 = !DILocation(line: 46, scope: !3081)
!3085 = !DILocation(line: 46, column: 29, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !2663, line: 46, column: 5)
!3087 = !DILocation(line: 46, column: 22, scope: !3086)
!3088 = !DILocation(line: 46, column: 5, scope: !3081)
!3089 = !DILocation(line: 51, column: 26, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !2663, line: 46, column: 42)
!3091 = !DILocation(line: 51, column: 21, scope: !3090)
!3092 = !DILocation(line: 51, column: 31, scope: !3090)
!3093 = !DILocation(line: 51, column: 9, scope: !3090)
!3094 = !DILocation(line: 51, column: 18, scope: !3090)
!3095 = !DILocation(line: 52, column: 26, scope: !3090)
!3096 = !DILocation(line: 52, column: 21, scope: !3090)
!3097 = !DILocation(line: 52, column: 30, scope: !3090)
!3098 = !DILocation(line: 52, column: 14, scope: !3090)
!3099 = !DILocation(line: 52, column: 9, scope: !3090)
!3100 = !DILocation(line: 52, column: 18, scope: !3090)
!3101 = !DILocation(line: 46, column: 37, scope: !3086)
!3102 = !DILocation(line: 46, column: 5, scope: !3086)
!3103 = distinct !{!3103, !3088, !3104, !307}
!3104 = !DILocation(line: 54, column: 5, scope: !3081)
!3105 = !DILocation(line: 55, column: 1, scope: !3072)
!3106 = distinct !DISubprogram(name: "mul_table", scope: !496, file: !496, line: 129, type: !497, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3107 = !DILocalVariable(name: "b", arg: 1, scope: !3106, file: !496, line: 129, type: !12)
!3108 = !DILocation(line: 0, scope: !3106)
!3109 = !DILocation(line: 130, column: 19, scope: !3106)
!3110 = !DILocation(line: 130, column: 33, scope: !3106)
!3111 = !DILocalVariable(name: "x", scope: !3106, file: !496, line: 130, type: !19)
!3112 = !DILocalVariable(name: "high_nibble_mask", scope: !3106, file: !496, line: 132, type: !19)
!3113 = !DILocation(line: 134, column: 28, scope: !3106)
!3114 = !DILocalVariable(name: "high_half", scope: !3106, file: !496, line: 134, type: !19)
!3115 = !DILocation(line: 135, column: 28, scope: !3106)
!3116 = !DILocation(line: 135, column: 47, scope: !3106)
!3117 = !DILocation(line: 135, column: 34, scope: !3106)
!3118 = !DILocation(line: 135, column: 5, scope: !3106)
!3119 = distinct !DISubprogram(name: "mul_f", scope: !496, file: !496, line: 9, type: !1469, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3120 = !DILocalVariable(name: "a", arg: 1, scope: !3119, file: !496, line: 9, type: !14)
!3121 = !DILocation(line: 0, scope: !3119)
!3122 = !DILocalVariable(name: "b", arg: 2, scope: !3119, file: !496, line: 9, type: !14)
!3123 = !DILocation(line: 14, column: 10, scope: !3119)
!3124 = !DILocation(line: 14, column: 7, scope: !3119)
!3125 = !DILocation(line: 17, column: 17, scope: !3119)
!3126 = !DILocalVariable(name: "p", scope: !3119, file: !496, line: 11, type: !14)
!3127 = !DILocation(line: 18, column: 13, scope: !3119)
!3128 = !DILocation(line: 18, column: 17, scope: !3119)
!3129 = !DILocation(line: 18, column: 7, scope: !3119)
!3130 = !DILocation(line: 19, column: 13, scope: !3119)
!3131 = !DILocation(line: 19, column: 17, scope: !3119)
!3132 = !DILocation(line: 19, column: 7, scope: !3119)
!3133 = !DILocation(line: 20, column: 13, scope: !3119)
!3134 = !DILocation(line: 20, column: 17, scope: !3119)
!3135 = !DILocation(line: 20, column: 7, scope: !3119)
!3136 = !DILocalVariable(name: "top_p", scope: !3119, file: !496, line: 23, type: !14)
!3137 = !DILocation(line: 24, column: 37, scope: !3119)
!3138 = !DILocation(line: 24, column: 52, scope: !3119)
!3139 = !DILocation(line: 24, column: 43, scope: !3119)
!3140 = !DILocation(line: 24, column: 59, scope: !3119)
!3141 = !DILocalVariable(name: "out", scope: !3119, file: !496, line: 24, type: !14)
!3142 = !DILocation(line: 25, column: 5, scope: !3119)
!3143 = distinct !DISubprogram(name: "lincomb", scope: !496, file: !496, line: 70, type: !1477, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3144 = !DILocalVariable(name: "a", arg: 1, scope: !3143, file: !496, line: 70, type: !49)
!3145 = !DILocation(line: 0, scope: !3143)
!3146 = !DILocalVariable(name: "b", arg: 2, scope: !3143, file: !496, line: 71, type: !49)
!3147 = !DILocalVariable(name: "n", arg: 3, scope: !3143, file: !496, line: 71, type: !45)
!3148 = !DILocalVariable(name: "m", arg: 4, scope: !3143, file: !496, line: 71, type: !45)
!3149 = !DILocalVariable(name: "ret", scope: !3143, file: !496, line: 72, type: !14)
!3150 = !DILocalVariable(name: "i", scope: !3151, file: !496, line: 73, type: !45)
!3151 = distinct !DILexicalBlock(scope: !3143, file: !496, line: 73, column: 5)
!3152 = !DILocation(line: 0, scope: !3151)
!3153 = !DILocation(line: 73, column: 10, scope: !3151)
!3154 = !DILocation(line: 73, scope: !3151)
!3155 = !DILocation(line: 73, column: 23, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3151, file: !496, line: 73, column: 5)
!3157 = !DILocation(line: 73, column: 5, scope: !3151)
!3158 = !DILocation(line: 74, column: 27, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3156, file: !496, line: 73, column: 41)
!3160 = !DILocation(line: 74, column: 33, scope: !3159)
!3161 = !DILocation(line: 74, column: 21, scope: !3159)
!3162 = !DILocation(line: 74, column: 15, scope: !3159)
!3163 = !DILocation(line: 73, column: 28, scope: !3156)
!3164 = !DILocation(line: 73, column: 35, scope: !3156)
!3165 = !DILocation(line: 73, column: 5, scope: !3156)
!3166 = distinct !{!3166, !3157, !3167, !307}
!3167 = !DILocation(line: 75, column: 5, scope: !3151)
!3168 = !DILocation(line: 76, column: 5, scope: !3143)
!3169 = distinct !DISubprogram(name: "add_f", scope: !496, file: !496, line: 43, type: !1469, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3170 = !DILocalVariable(name: "a", arg: 1, scope: !3169, file: !496, line: 43, type: !14)
!3171 = !DILocation(line: 0, scope: !3169)
!3172 = !DILocalVariable(name: "b", arg: 2, scope: !3169, file: !496, line: 43, type: !14)
!3173 = !DILocation(line: 44, column: 14, scope: !3169)
!3174 = !DILocation(line: 44, column: 5, scope: !3169)
