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
    #dbg_value(ptr %p, !111, !DIExpression(), !112)
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
  %call4 = call i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 %call5, !145, !DIExpression(), !112)
  %cmp6.not = icmp eq i32 %call5, 0, !dbg !149
  br i1 %cmp6.not, label %if.end9, label %err, !dbg !149

if.end9:                                          ; preds = %if.end
  %call11 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !151
    #dbg_value(i32 %call11, !145, !DIExpression(), !112)
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !152
  br i1 %cmp12.not, label %if.end15, label %err, !dbg !152

if.end15:                                         ; preds = %if.end9
  %1 = load i32, ptr %msglen, align 4, !dbg !154
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !155
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !156
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !156

if.end21:                                         ; preds = %if.end15
  %2 = load i32, ptr %smlen, align 4, !dbg !158
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !159
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
  %call32 = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !166
    #dbg_value(i32 %call32, !145, !DIExpression(), !112)
  %sext = sub nsw i32 0, %call32, !dbg !167
  br label %err, !dbg !167

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end15, %if.end9, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end9 ], [ -1, %if.end15 ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !112
    #dbg_value(i32 %res.0, !145, !DIExpression(), !112)
    #dbg_label(!169, !170)
  call void @free(ptr noundef %call) #8, !dbg !171
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 40) #8, !dbg !172
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !175 {
entry:
    #dbg_value(ptr %p, !206, !DIExpression(), !207)
    #dbg_value(ptr %pk, !208, !DIExpression(), !207)
    #dbg_value(ptr %sk, !209, !DIExpression(), !207)
    #dbg_value(i32 0, !210, !DIExpression(), !207)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !211
    #dbg_value(i32 %call, !210, !DIExpression(), !207)
    #dbg_label(!212, !213)
  ret i32 %call, !dbg !214
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !215 {
entry:
  %S = alloca [868 x i8], align 1
  %P = alloca [106713 x i64], align 8
  %P3 = alloca [1296 x i64], align 8
  %O = alloca [1704 x i8], align 1
  %P3_upper = alloca [702 x i64], align 8
    #dbg_value(ptr %p, !216, !DIExpression(), !217)
    #dbg_value(ptr %cpk, !218, !DIExpression(), !217)
    #dbg_value(ptr %csk, !219, !DIExpression(), !217)
    #dbg_value(i32 0, !220, !DIExpression(), !217)
    #dbg_value(ptr %csk, !221, !DIExpression(), !217)
    #dbg_declare(ptr %S, !222, !DIExpression(), !226)
    #dbg_declare(ptr %P, !227, !DIExpression(), !231)
    #dbg_declare(ptr %P3, !232, !DIExpression(), !236)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %P3, i8 0, i32 10368, i1 false), !dbg !236
    #dbg_declare(ptr %O, !237, !DIExpression(), !241)
    #dbg_value(i32 9, !242, !DIExpression(), !217)
    #dbg_value(i32 142, !244, !DIExpression(), !217)
    #dbg_value(i32 142, !245, !DIExpression(), !217)
    #dbg_value(i32 12, !246, !DIExpression(), !217)
    #dbg_value(i32 852, !247, !DIExpression(), !217)
    #dbg_value(i32 91377, !248, !DIExpression(), !217)
    #dbg_value(i32 702, !249, !DIExpression(), !217)
    #dbg_value(i32 16, !250, !DIExpression(), !217)
    #dbg_value(i32 40, !251, !DIExpression(), !217)
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 731016, !dbg !253
    #dbg_value(ptr %add.ptr, !254, !DIExpression(), !217)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 40) #8, !dbg !255
  %cmp.not = icmp eq i32 %call, 0, !dbg !257
  br i1 %cmp.not, label %if.end, label %err, !dbg !257

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #8, !dbg !258
    #dbg_value(ptr %S, !259, !DIExpression(), !217)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !260
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1704) #6, !dbg !261
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !262
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !263
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !264
    #dbg_declare(ptr %P3_upper, !265, !DIExpression(), !269)
  call void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 12) #6, !dbg !270
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !271
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 78, i32 noundef 142) #6, !dbg !272
  br label %err, !dbg !272

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !217
    #dbg_value(i32 %ret.0, !220, !DIExpression(), !217)
    #dbg_label(!273, !274)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1704) #8, !dbg !275
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 122688) #8, !dbg !276
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 10368) #8, !dbg !277
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 841847, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !323
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 11857, i32 noundef 142) #6, !dbg !324
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
    #dbg_value(i32 9, !337, !DIExpression(), !332)
    #dbg_value(i32 142, !338, !DIExpression(), !332)
    #dbg_value(i32 12, !339, !DIExpression(), !332)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !340
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 9, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 142, i32 noundef 12, i32 noundef 12) #6, !dbg !341
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 9, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #6, !dbg !385
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
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.body.1, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.1, %for.body.1 ], !dbg !463
    #dbg_value(i32 %i.0, !459, !DIExpression(), !461)
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !464
  %0 = load i64, ptr %arrayidx, align 8, !dbg !464
  %and = and i64 %0, 1229782938247303441, !dbg !467
  %and1 = and i32 %call, 255, !dbg !468
  %conv = zext nneg i32 %and1 to i64, !dbg !469
  %mul = mul i64 %and, %conv, !dbg !470
  %shr = lshr i64 %0, 1, !dbg !471
  %and3 = and i64 %shr, 1229782938247303441, !dbg !472
  %shr4 = lshr i32 %call, 8, !dbg !473
  %and5 = and i32 %shr4, 15, !dbg !474
  %conv6 = zext nneg i32 %and5 to i64, !dbg !475
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !476
  %xor = xor i64 %mul, %mul7, !dbg !477
  %shr9 = lshr i64 %0, 2, !dbg !478
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !479
  %shr11 = lshr i32 %call, 16, !dbg !480
  %and12 = and i32 %shr11, 15, !dbg !481
  %conv13 = zext nneg i32 %and12 to i64, !dbg !482
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !483
  %xor15 = xor i64 %xor, %mul14, !dbg !484
  %shr17 = lshr i64 %0, 3, !dbg !485
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !486
  %shr19 = lshr i32 %call, 24, !dbg !487
  %and20 = and i32 %shr19, 15, !dbg !488
  %conv21 = zext nneg i32 %and20 to i64, !dbg !489
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !490
  %xor23 = xor i64 %xor15, %mul22, !dbg !491
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !492
  %1 = load i64, ptr %arrayidx24, align 8, !dbg !493
  %xor25 = xor i64 %1, %xor23, !dbg !493
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !493
    #dbg_value(i32 %i.0, !459, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !461)
  %exitcond.1.not = icmp eq i32 %i.0, 8, !dbg !494
  br i1 %exitcond.1.not, label %for.end, label %for.body.1, !dbg !495

for.body.1:                                       ; preds = %for.cond
  %inc = or disjoint i32 %i.0, 1, !dbg !496
    #dbg_value(i32 %inc, !459, !DIExpression(), !461)
  %arrayidx.1 = getelementptr inbounds nuw i64, ptr %in, i32 %inc, !dbg !464
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !464
  %and.1 = and i64 %2, 1229782938247303441, !dbg !467
  %and1.1 = and i32 %call, 255, !dbg !468
  %conv.1 = zext nneg i32 %and1.1 to i64, !dbg !469
  %mul.1 = mul i64 %and.1, %conv.1, !dbg !470
  %shr.1 = lshr i64 %2, 1, !dbg !471
  %and3.1 = and i64 %shr.1, 1229782938247303441, !dbg !472
  %shr4.1 = lshr i32 %call, 8, !dbg !473
  %and5.1 = and i32 %shr4.1, 15, !dbg !474
  %conv6.1 = zext nneg i32 %and5.1 to i64, !dbg !475
  %mul7.1 = mul nuw i64 %and3.1, %conv6.1, !dbg !476
  %xor.1 = xor i64 %mul.1, %mul7.1, !dbg !477
  %shr9.1 = lshr i64 %2, 2, !dbg !478
  %and10.1 = and i64 %shr9.1, 1229782938247303441, !dbg !479
  %shr11.1 = lshr i32 %call, 16, !dbg !480
  %and12.1 = and i32 %shr11.1, 15, !dbg !481
  %conv13.1 = zext nneg i32 %and12.1 to i64, !dbg !482
  %mul14.1 = mul nuw i64 %and10.1, %conv13.1, !dbg !483
  %xor15.1 = xor i64 %xor.1, %mul14.1, !dbg !484
  %shr17.1 = lshr i64 %2, 3, !dbg !485
  %and18.1 = and i64 %shr17.1, 1229782938247303441, !dbg !486
  %shr19.1 = lshr i32 %call, 24, !dbg !487
  %and20.1 = and i32 %shr19.1, 15, !dbg !488
  %conv21.1 = zext nneg i32 %and20.1 to i64, !dbg !489
  %mul22.1 = mul nuw i64 %and18.1, %conv21.1, !dbg !490
  %xor23.1 = xor i64 %xor15.1, %mul22.1, !dbg !491
  %arrayidx24.1 = getelementptr inbounds nuw i64, ptr %acc, i32 %inc, !dbg !492
  %3 = load i64, ptr %arrayidx24.1, align 8, !dbg !493
  %xor25.1 = xor i64 %3, %xor23.1, !dbg !493
  store i64 %xor25.1, ptr %arrayidx24.1, align 8, !dbg !493
  %inc.1 = add nuw nsw i32 %i.0, 2, !dbg !496
    #dbg_value(i32 %inc.1, !459, !DIExpression(), !461)
  br label %for.cond, !dbg !497, !llvm.loop !498

for.end:                                          ; preds = %for.cond
  ret void, !dbg !500
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table(i8 noundef zeroext %b) unnamed_addr #0 !dbg !501 {
entry:
    #dbg_value(i8 %b, !505, !DIExpression(), !506)
  %conv = zext i8 %b to i32, !dbg !507
  %mul = mul i32 %conv, 134480385, !dbg !508
    #dbg_value(i32 %mul, !509, !DIExpression(), !506)
    #dbg_value(i32 -252645136, !510, !DIExpression(), !506)
  %and = and i32 %mul, -252645136, !dbg !511
    #dbg_value(i32 %and, !512, !DIExpression(), !506)
  %shr = lshr exact i32 %and, 4, !dbg !513
  %shr1 = lshr exact i32 %and, 3, !dbg !514
  %0 = xor i32 %shr, %shr1, !dbg !515
  %xor2 = xor i32 %0, %mul, !dbg !515
  ret i32 %xor2, !dbg !516
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) unnamed_addr #0 !dbg !517 {
entry:
    #dbg_value(i32 %m_vec_limbs, !520, !DIExpression(), !521)
    #dbg_value(ptr %bs_mat, !522, !DIExpression(), !521)
    #dbg_value(ptr %mat, !523, !DIExpression(), !521)
    #dbg_value(ptr %acc, !524, !DIExpression(), !521)
    #dbg_value(i32 %bs_mat_rows, !525, !DIExpression(), !521)
    #dbg_value(i32 %bs_mat_cols, !526, !DIExpression(), !521)
    #dbg_value(i32 %mat_cols, !527, !DIExpression(), !521)
    #dbg_value(i32 %triangular, !528, !DIExpression(), !521)
    #dbg_value(i32 0, !529, !DIExpression(), !521)
    #dbg_value(i32 0, !530, !DIExpression(), !532)
  %smax = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !533
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !533
  br label %for.cond, !dbg !533

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1, %for.inc17 ], !dbg !534
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !535
    #dbg_value(i32 %r.0, !530, !DIExpression(), !532)
    #dbg_value(i32 %bs_mat_entries_used.0, !529, !DIExpression(), !521)
  %exitcond2.not = icmp eq i32 %r.0, %smax1, !dbg !536
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !538

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !539
    #dbg_value(i32 %mul, !542, !DIExpression(), !543)
  br label %for.cond1, !dbg !544

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !521
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !545
    #dbg_value(i32 %c.0, !542, !DIExpression(), !543)
    #dbg_value(i32 %bs_mat_entries_used.1, !529, !DIExpression(), !521)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !546
  br i1 %cmp2, label %for.cond4, label %for.inc17, !dbg !548

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond1 ], !dbg !549
    #dbg_value(i32 %k.0, !552, !DIExpression(), !553)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !554
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !556

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !557
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !559
  %mul8 = mul nsw i32 %c.0, %mat_cols, !dbg !560
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !561
  %arrayidx = getelementptr i8, ptr %0, i32 %k.0, !dbg !561
  %1 = load i8, ptr %arrayidx, align 1, !dbg !561
  %mul9 = mul nsw i32 %r.0, %mat_cols, !dbg !562
  %add10 = add nsw i32 %mul9, %k.0, !dbg !563
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !564
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !565
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !566
  %add13 = add nuw i32 %k.0, 1, !dbg !567
    #dbg_value(i32 %add13, !552, !DIExpression(), !553)
  br label %for.cond4, !dbg !568, !llvm.loop !569

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !529, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !521)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !571
    #dbg_value(i32 %add14, !529, !DIExpression(), !521)
  %inc = add nsw i32 %c.0, 1, !dbg !572
    #dbg_value(i32 %inc, !542, !DIExpression(), !543)
  br label %for.cond1, !dbg !573, !llvm.loop !574

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !576
    #dbg_value(i32 %inc18, !530, !DIExpression(), !532)
  br label %for.cond, !dbg !577, !llvm.loop !578

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !580
}

declare dso_local i32 @AES_128_CTR(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !581 {
entry:
  %tmp = alloca [9 x i64], align 8
    #dbg_value(ptr %in, !584, !DIExpression(), !585)
    #dbg_value(ptr %out, !586, !DIExpression(), !585)
    #dbg_value(i32 %vecs, !587, !DIExpression(), !585)
    #dbg_value(i32 %m, !588, !DIExpression(), !585)
  %add = add nsw i32 %m, 15, !dbg !589
  %div = sdiv i32 %add, 16, !dbg !590
    #dbg_value(i32 %div, !591, !DIExpression(), !585)
    #dbg_value(ptr %out, !592, !DIExpression(), !585)
    #dbg_declare(ptr %tmp, !593, !DIExpression(), !597)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %tmp, i8 0, i32 72, i1 false), !dbg !597
    #dbg_value(i32 %vecs, !598, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !600)
  br label %for.cond, !dbg !601

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !598, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !600)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !602
  br i1 %cmp, label %for.body, label %for.end, !dbg !604

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !605
    #dbg_value(i32 %i.0, !598, !DIExpression(), !600)
  %mul = mul nsw i32 %i.0, %m, !dbg !606
  %div1 = sdiv i32 %mul, 2, !dbg !608
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !609
  %div2 = sdiv i32 %m, 2, !dbg !610
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef %div2) #8, !dbg !611
  %mul3 = mul nsw i32 %i.0, %div, !dbg !612
  %mul4 = shl i32 %mul3, 3, !dbg !613
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !614
  %mul7 = shl nsw i32 %div, 3, !dbg !615
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef %mul7) #8, !dbg !616
    #dbg_value(i32 %i.0, !598, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !600)
  br label %for.cond, !dbg !617, !llvm.loop !618

for.end:                                          ; preds = %for.cond
  ret void, !dbg !620
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !621 {
entry:
  %S = alloca [868 x i8], align 1
    #dbg_value(ptr %p, !624, !DIExpression(), !625)
    #dbg_value(ptr %csk, !626, !DIExpression(), !625)
    #dbg_value(ptr %sk, !627, !DIExpression(), !625)
    #dbg_value(i32 0, !628, !DIExpression(), !625)
    #dbg_declare(ptr %S, !629, !DIExpression(), !630)
    #dbg_value(ptr %sk, !631, !DIExpression(), !625)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !632
    #dbg_value(ptr %add.ptr1, !633, !DIExpression(), !625)
    #dbg_value(i32 12, !634, !DIExpression(), !625)
    #dbg_value(i32 142, !635, !DIExpression(), !625)
    #dbg_value(i32 852, !636, !DIExpression(), !625)
    #dbg_value(i32 16, !637, !DIExpression(), !625)
    #dbg_value(i32 40, !638, !DIExpression(), !625)
    #dbg_value(ptr %csk, !639, !DIExpression(), !625)
    #dbg_value(ptr %S, !640, !DIExpression(), !625)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #8, !dbg !641
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !642
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1704) #6, !dbg !643
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !644
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !645
    #dbg_value(ptr %add.ptr5, !646, !DIExpression(), !625)
    #dbg_value(ptr %sk, !647, !DIExpression(), !625)
    #dbg_value(ptr %add.ptr5, !648, !DIExpression(), !625)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !649
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 868) #8, !dbg !650
  ret i32 0, !dbg !651
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !652 {
entry:
    #dbg_value(ptr %p, !653, !DIExpression(), !654)
    #dbg_value(ptr %P1, !655, !DIExpression(), !654)
    #dbg_value(ptr %O, !656, !DIExpression(), !654)
    #dbg_value(ptr %acc, !657, !DIExpression(), !654)
    #dbg_value(i32 12, !658, !DIExpression(), !654)
    #dbg_value(i32 142, !659, !DIExpression(), !654)
    #dbg_value(i32 9, !660, !DIExpression(), !654)
    #dbg_value(i32 0, !661, !DIExpression(), !654)
    #dbg_value(i32 0, !662, !DIExpression(), !664)
  br label %for.cond, !dbg !665

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 142, %entry ], !dbg !666
  %bs_mat_entries_used.0 = phi i32 [ %bs_mat_entries_used.1, %for.inc27 ], [ 0, %entry ], !dbg !666
  %r.0 = phi i32 [ %inc28, %for.inc27 ], [ 0, %entry ], !dbg !667
    #dbg_value(i32 %r.0, !662, !DIExpression(), !664)
    #dbg_value(i32 %bs_mat_entries_used.0, !661, !DIExpression(), !654)
  %exitcond2.not = icmp eq i32 %r.0, 142, !dbg !668
  br i1 %exitcond2.not, label %for.end29, label %for.cond1.preheader, !dbg !670

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !671
  br label %for.cond1, !dbg !671

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !654
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !674
    #dbg_value(i32 %c.0, !675, !DIExpression(), !676)
    #dbg_value(i32 %bs_mat_entries_used.1, !661, !DIExpression(), !654)
  %exitcond1.not = icmp eq i32 %bs_mat_entries_used.1, %0, !dbg !677
  br i1 %exitcond1.not, label %for.inc27, label %for.body3, !dbg !671

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !679
  br i1 %cmp4, label %for.inc25, label %for.cond5, !dbg !679

for.cond5:                                        ; preds = %for.body3, %for.body7
  %k.0 = phi i32 [ %add23.3, %for.body7 ], [ 0, %for.body3 ], !dbg !682
    #dbg_value(i32 %k.0, !684, !DIExpression(), !685)
  %exitcond.not = icmp eq i32 %k.0, 12, !dbg !686
  br i1 %exitcond.not, label %for.inc25, label %for.body7, !dbg !688

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !689
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !689
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !691
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !692
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !692
  %2 = load i8, ptr %arrayidx, align 1, !dbg !692
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !693
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !694
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !695
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #6, !dbg !696
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !697
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !697
  %mul16 = mul nuw nsw i32 %r.0, 12, !dbg !698
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !699
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !699
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !699
  %mul19 = mul nuw nsw i32 %c.0, 12, !dbg !700
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !701
  %add.ptr22.idx = mul nuw nsw i32 %add20, 72, !dbg !702
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !702
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #6, !dbg !703
    #dbg_value(i32 %k.0, !684, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !685)
  %add23 = or disjoint i32 %k.0, 1, !dbg !704
    #dbg_value(i32 %add23, !684, !DIExpression(), !685)
  %add.ptr.idx.1 = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !689
  %add.ptr.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.1, !dbg !689
  %mul8.1 = mul nuw nsw i32 %c.0, 12, !dbg !691
  %5 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.1, !dbg !692
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %5, i32 %add23, !dbg !692
  %6 = load i8, ptr %arrayidx.1, align 1, !dbg !692
  %mul10.1 = mul nuw nsw i32 %r.0, 12, !dbg !693
  %add11.1 = add nuw nsw i32 %mul10.1, %add23, !dbg !694
  %add.ptr13.idx.1 = mul nuw nsw i32 %add11.1, 72, !dbg !695
  %add.ptr13.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.1, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr.1, i8 noundef zeroext %6, ptr noundef nonnull %add.ptr13.1) #6, !dbg !696
  %add.ptr15.idx.1 = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !697
  %add.ptr15.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.1, !dbg !697
  %mul16.1 = mul nuw nsw i32 %r.0, 12, !dbg !698
  %7 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.1, !dbg !699
  %arrayidx18.1 = getelementptr inbounds nuw i8, ptr %7, i32 %add23, !dbg !699
  %8 = load i8, ptr %arrayidx18.1, align 1, !dbg !699
  %mul19.1 = mul nuw nsw i32 %c.0, 12, !dbg !700
  %add20.1 = add nuw nsw i32 %mul19.1, %add23, !dbg !701
  %add.ptr22.idx.1 = mul nuw nsw i32 %add20.1, 72, !dbg !702
  %add.ptr22.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.1, !dbg !702
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15.1, i8 noundef zeroext %8, ptr noundef nonnull %add.ptr22.1) #6, !dbg !703
    #dbg_value(i32 %k.0, !684, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !685)
  %add23.1 = or disjoint i32 %k.0, 2, !dbg !704
    #dbg_value(i32 %add23.1, !684, !DIExpression(), !685)
  %add.ptr.idx.2 = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !689
  %add.ptr.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.2, !dbg !689
  %mul8.2 = mul nuw nsw i32 %c.0, 12, !dbg !691
  %9 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.2, !dbg !692
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %9, i32 %add23.1, !dbg !692
  %10 = load i8, ptr %arrayidx.2, align 1, !dbg !692
  %mul10.2 = mul nuw nsw i32 %r.0, 12, !dbg !693
  %add11.2 = add nuw nsw i32 %mul10.2, %add23.1, !dbg !694
  %add.ptr13.idx.2 = mul nuw nsw i32 %add11.2, 72, !dbg !695
  %add.ptr13.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.2, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr.2, i8 noundef zeroext %10, ptr noundef nonnull %add.ptr13.2) #6, !dbg !696
  %add.ptr15.idx.2 = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !697
  %add.ptr15.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.2, !dbg !697
  %mul16.2 = mul nuw nsw i32 %r.0, 12, !dbg !698
  %11 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.2, !dbg !699
  %arrayidx18.2 = getelementptr inbounds nuw i8, ptr %11, i32 %add23.1, !dbg !699
  %12 = load i8, ptr %arrayidx18.2, align 1, !dbg !699
  %mul19.2 = mul nuw nsw i32 %c.0, 12, !dbg !700
  %add20.2 = add nuw nsw i32 %mul19.2, %add23.1, !dbg !701
  %add.ptr22.idx.2 = mul nuw nsw i32 %add20.2, 72, !dbg !702
  %add.ptr22.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.2, !dbg !702
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15.2, i8 noundef zeroext %12, ptr noundef nonnull %add.ptr22.2) #6, !dbg !703
    #dbg_value(i32 %k.0, !684, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !685)
  %add23.2 = or disjoint i32 %k.0, 3, !dbg !704
    #dbg_value(i32 %add23.2, !684, !DIExpression(), !685)
  %add.ptr.idx.3 = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !689
  %add.ptr.3 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.3, !dbg !689
  %mul8.3 = mul nuw nsw i32 %c.0, 12, !dbg !691
  %13 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.3, !dbg !692
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %13, i32 %add23.2, !dbg !692
  %14 = load i8, ptr %arrayidx.3, align 1, !dbg !692
  %mul10.3 = mul nuw nsw i32 %r.0, 12, !dbg !693
  %add11.3 = add nuw nsw i32 %mul10.3, %add23.2, !dbg !694
  %add.ptr13.idx.3 = mul nuw nsw i32 %add11.3, 72, !dbg !695
  %add.ptr13.3 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.3, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr.3, i8 noundef zeroext %14, ptr noundef nonnull %add.ptr13.3) #6, !dbg !696
  %add.ptr15.idx.3 = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !697
  %add.ptr15.3 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.3, !dbg !697
  %mul16.3 = mul nuw nsw i32 %r.0, 12, !dbg !698
  %15 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.3, !dbg !699
  %arrayidx18.3 = getelementptr inbounds nuw i8, ptr %15, i32 %add23.2, !dbg !699
  %16 = load i8, ptr %arrayidx18.3, align 1, !dbg !699
  %mul19.3 = mul nuw nsw i32 %c.0, 12, !dbg !700
  %add20.3 = add nuw nsw i32 %mul19.3, %add23.2, !dbg !701
  %add.ptr22.idx.3 = mul nuw nsw i32 %add20.3, 72, !dbg !702
  %add.ptr22.3 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.3, !dbg !702
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15.3, i8 noundef zeroext %16, ptr noundef nonnull %add.ptr22.3) #6, !dbg !703
  %add23.3 = add nuw nsw i32 %k.0, 4, !dbg !704
    #dbg_value(i32 %add23.3, !684, !DIExpression(), !685)
  br label %for.cond5, !dbg !705, !llvm.loop !706

for.inc25:                                        ; preds = %for.cond5, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !708
    #dbg_value(i32 %bs_mat_entries_used.2, !661, !DIExpression(), !654)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !709
    #dbg_value(i32 %inc, !675, !DIExpression(), !676)
  br label %for.cond1, !dbg !710, !llvm.loop !711

for.inc27:                                        ; preds = %for.cond1
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !713
    #dbg_value(i32 %inc28, !662, !DIExpression(), !664)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !714
  br label %for.cond, !dbg !714, !llvm.loop !715

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !717
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !718 {
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
    #dbg_value(ptr %p, !722, !DIExpression(), !723)
    #dbg_value(ptr %sig, !724, !DIExpression(), !723)
    #dbg_value(ptr %siglen, !725, !DIExpression(), !723)
    #dbg_value(ptr %m, !726, !DIExpression(), !723)
    #dbg_value(i32 %mlen, !727, !DIExpression(), !723)
    #dbg_value(ptr %csk, !728, !DIExpression(), !723)
    #dbg_value(i32 0, !729, !DIExpression(), !723)
    #dbg_declare(ptr %tenc, !730, !DIExpression(), !734)
    #dbg_declare(ptr %t, !735, !DIExpression(), !739)
    #dbg_declare(ptr %y, !740, !DIExpression(), !741)
    #dbg_declare(ptr %salt, !742, !DIExpression(), !746)
    #dbg_declare(ptr %V, !747, !DIExpression(), !751)
    #dbg_declare(ptr %Vdec, !752, !DIExpression(), !753)
    #dbg_declare(ptr %A, !754, !DIExpression(), !758)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20880) %A, i8 0, i32 20880, i1 false), !dbg !758
    #dbg_declare(ptr %x, !759, !DIExpression(), !763)
    #dbg_declare(ptr %r, !764, !DIExpression(), !768)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(145) %r, i8 0, i32 145, i1 false), !dbg !768
    #dbg_declare(ptr %s, !769, !DIExpression(), !770)
    #dbg_declare(ptr %sk, !771, !DIExpression(), !772)
    #dbg_declare(ptr %Ox, !773, !DIExpression(), !774)
    #dbg_declare(ptr %tmp, !775, !DIExpression(), !776)
    #dbg_value(i32 142, !777, !DIExpression(), !723)
    #dbg_value(i32 154, !778, !DIExpression(), !723)
    #dbg_value(i32 12, !779, !DIExpression(), !723)
    #dbg_value(i32 12, !780, !DIExpression(), !723)
    #dbg_value(i32 142, !781, !DIExpression(), !723)
    #dbg_value(i32 71, !782, !DIExpression(), !723)
    #dbg_value(i32 71, !783, !DIExpression(), !723)
    #dbg_value(i32 72, !784, !DIExpression(), !723)
    #dbg_value(i32 964, !785, !DIExpression(), !723)
    #dbg_value(i32 145, !786, !DIExpression(), !723)
    #dbg_value(i32 64, !787, !DIExpression(), !723)
    #dbg_value(i32 40, !788, !DIExpression(), !723)
    #dbg_value(i32 40, !789, !DIExpression(), !723)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !790
    #dbg_value(i32 %call, !729, !DIExpression(), !723)
  %cmp.not = icmp eq i32 %call, 0, !dbg !791
  br i1 %cmp.not, label %if.end, label %err, !dbg !791

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !793, !DIExpression(), !723)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #8, !dbg !794
    #dbg_value(ptr %sk, !795, !DIExpression(), !723)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !796
    #dbg_value(ptr %add.ptr, !797, !DIExpression(), !723)
    #dbg_declare(ptr %Mtmp, !798, !DIExpression(), !799)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %Mtmp, i8 0, i32 10368, i1 false), !dbg !799
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !800
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 40) #8, !dbg !802
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !803
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !803

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 104, !dbg !804
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 40) #8, !dbg !805
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 40, ptr noundef nonnull %tmp, i32 noundef 144) #8, !dbg !806
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !807
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 40) #8, !dbg !808
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 144, !dbg !809
    #dbg_value(ptr %add.ptr24, !810, !DIExpression(), !723)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #8, !dbg !811
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !812
    #dbg_value(i32 0, !813, !DIExpression(), !815)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 852, !dbg !816
  br label %for.cond, !dbg !819

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !820
    #dbg_value(i32 %ctr.0, !813, !DIExpression(), !815)
  %exitcond2.not = icmp eq i32 %ctr.0, 256, !dbg !821
  br i1 %exitcond2.not, label %for.end76, label %for.body, !dbg !822

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !823
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !824
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 924, ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !825
    #dbg_value(i32 0, !826, !DIExpression(), !828)
    #dbg_value(i32 0, !826, !DIExpression(), !828)
  call fastcc void @decode(ptr noundef nonnull %V, ptr noundef nonnull %Vdec, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 1, !826, !DIExpression(), !828)
  %add.ptr39.1 = getelementptr inbounds nuw i8, ptr %V, i32 71, !dbg !832
  %add.ptr42.1 = getelementptr inbounds nuw i8, ptr %Vdec, i32 142, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.1, ptr noundef nonnull %add.ptr42.1, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 2, !826, !DIExpression(), !828)
  %add.ptr39.2 = getelementptr inbounds nuw i8, ptr %V, i32 142, !dbg !832
  %add.ptr42.2 = getelementptr inbounds nuw i8, ptr %Vdec, i32 284, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.2, ptr noundef nonnull %add.ptr42.2, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 3, !826, !DIExpression(), !828)
  %add.ptr39.3 = getelementptr inbounds nuw i8, ptr %V, i32 213, !dbg !832
  %add.ptr42.3 = getelementptr inbounds nuw i8, ptr %Vdec, i32 426, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.3, ptr noundef nonnull %add.ptr42.3, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 4, !826, !DIExpression(), !828)
  %add.ptr39.4 = getelementptr inbounds nuw i8, ptr %V, i32 284, !dbg !832
  %add.ptr42.4 = getelementptr inbounds nuw i8, ptr %Vdec, i32 568, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.4, ptr noundef nonnull %add.ptr42.4, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 5, !826, !DIExpression(), !828)
  %add.ptr39.5 = getelementptr inbounds nuw i8, ptr %V, i32 355, !dbg !832
  %add.ptr42.5 = getelementptr inbounds nuw i8, ptr %Vdec, i32 710, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.5, ptr noundef nonnull %add.ptr42.5, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 6, !826, !DIExpression(), !828)
  %add.ptr39.6 = getelementptr inbounds nuw i8, ptr %V, i32 426, !dbg !832
  %add.ptr42.6 = getelementptr inbounds nuw i8, ptr %Vdec, i32 852, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.6, ptr noundef nonnull %add.ptr42.6, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 7, !826, !DIExpression(), !828)
  %add.ptr39.7 = getelementptr inbounds nuw i8, ptr %V, i32 497, !dbg !832
  %add.ptr42.7 = getelementptr inbounds nuw i8, ptr %Vdec, i32 994, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.7, ptr noundef nonnull %add.ptr42.7, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 8, !826, !DIExpression(), !828)
  %add.ptr39.8 = getelementptr inbounds nuw i8, ptr %V, i32 568, !dbg !832
  %add.ptr42.8 = getelementptr inbounds nuw i8, ptr %Vdec, i32 1136, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.8, ptr noundef nonnull %add.ptr42.8, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 9, !826, !DIExpression(), !828)
  %add.ptr39.9 = getelementptr inbounds nuw i8, ptr %V, i32 639, !dbg !832
  %add.ptr42.9 = getelementptr inbounds nuw i8, ptr %Vdec, i32 1278, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.9, ptr noundef nonnull %add.ptr42.9, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 10, !826, !DIExpression(), !828)
  %add.ptr39.10 = getelementptr inbounds nuw i8, ptr %V, i32 710, !dbg !832
  %add.ptr42.10 = getelementptr inbounds nuw i8, ptr %Vdec, i32 1420, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.10, ptr noundef nonnull %add.ptr42.10, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 11, !826, !DIExpression(), !828)
  %add.ptr39.11 = getelementptr inbounds nuw i8, ptr %V, i32 781, !dbg !832
  %add.ptr42.11 = getelementptr inbounds nuw i8, ptr %Vdec, i32 1562, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.11, ptr noundef nonnull %add.ptr42.11, i32 noundef 142) #6, !dbg !829
    #dbg_value(i32 12, !826, !DIExpression(), !828)
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !834
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !835
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !836
    #dbg_value(i32 0, !837, !DIExpression(), !839)
  br label %for.cond52, !dbg !840

for.cond52:                                       ; preds = %for.body55.12, %for.body
  %i51.0 = phi i32 [ 0, %for.body ], [ %inc58.12, %for.body55.12 ], !dbg !841
    #dbg_value(i32 %i51.0, !837, !DIExpression(), !839)
  %0 = mul nuw nsw i32 %i51.0, 145, !dbg !842
  %sub = add nuw nsw i32 %0, 144, !dbg !845
  %arrayidx = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub, !dbg !846
  store i8 0, ptr %arrayidx, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !839)
  %1 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.1 = add nuw i32 %1, 289, !dbg !845
  %arrayidx.1 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.1, !dbg !846
  store i8 0, ptr %arrayidx.1, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !839)
  %2 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.2 = add nuw i32 %2, 434, !dbg !845
  %arrayidx.2 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.2, !dbg !846
  store i8 0, ptr %arrayidx.2, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !839)
  %3 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.3 = add nuw i32 %3, 579, !dbg !845
  %arrayidx.3 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.3, !dbg !846
  store i8 0, ptr %arrayidx.3, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !839)
  %4 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.4 = add nuw i32 %4, 724, !dbg !845
  %arrayidx.4 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.4, !dbg !846
  store i8 0, ptr %arrayidx.4, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !839)
  %5 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.5 = add nuw i32 %5, 869, !dbg !845
  %arrayidx.5 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.5, !dbg !846
  store i8 0, ptr %arrayidx.5, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !839)
  %6 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.6 = add nuw i32 %6, 1014, !dbg !845
  %arrayidx.6 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.6, !dbg !846
  store i8 0, ptr %arrayidx.6, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !839)
  %7 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.7 = add nuw i32 %7, 1159, !dbg !845
  %arrayidx.7 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.7, !dbg !846
  store i8 0, ptr %arrayidx.7, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !839)
  %8 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.8 = add nuw i32 %8, 1304, !dbg !845
  %arrayidx.8 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.8, !dbg !846
  store i8 0, ptr %arrayidx.8, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !839)
  %9 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.9 = add nuw i32 %9, 1449, !dbg !845
  %arrayidx.9 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.9, !dbg !846
  store i8 0, ptr %arrayidx.9, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !839)
  %10 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.10 = add nuw i32 %10, 1594, !dbg !845
  %arrayidx.10 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.10, !dbg !846
  store i8 0, ptr %arrayidx.10, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !839)
  %11 = mul nuw i32 %i51.0, 145, !dbg !842
  %sub.11 = add nuw i32 %11, 1739, !dbg !845
  %arrayidx.11 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.11, !dbg !846
  store i8 0, ptr %arrayidx.11, align 1, !dbg !847
  %inc58.11 = add nuw nsw i32 %i51.0, 12, !dbg !848
    #dbg_value(i32 %inc58.11, !837, !DIExpression(), !839)
  %exitcond1.12.not = icmp eq i32 %inc58.11, 142, !dbg !849
  br i1 %exitcond1.12.not, label %for.end59, label %for.body55.12, !dbg !850

for.body55.12:                                    ; preds = %for.cond52
  %12 = mul nuw nsw i32 %inc58.11, 145, !dbg !842
  %sub.12 = add nuw nsw i32 %12, 144, !dbg !845
  %arrayidx.12 = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub.12, !dbg !846
  store i8 0, ptr %arrayidx.12, align 1, !dbg !847
  %inc58.12 = add nuw nsw i32 %i51.0, 13, !dbg !848
    #dbg_value(i32 %inc58.12, !837, !DIExpression(), !839)
  br label %for.cond52, !dbg !851, !llvm.loop !852

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 144) #6, !dbg !854
  %call67 = call i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 12, i32 noundef 12, i32 noundef 142, i32 noundef 145) #6, !dbg !855
  %tobool.not = icmp eq i32 %call67, 0, !dbg !855
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !855

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 10368) #8, !dbg !857
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 20880) #8, !dbg !859
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !860
    #dbg_value(i32 %inc75, !813, !DIExpression(), !815)
  br label %for.cond, !dbg !861, !llvm.loop !862

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !864, !DIExpression(), !866)
  br label %for.cond78, !dbg !867

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !868
    #dbg_value(i32 %i77.0, !864, !DIExpression(), !866)
  %exitcond3.not = icmp eq i32 %i77.0, 12, !dbg !869
  br i1 %exitcond3.not, label %for.end106, label %for.body81, !dbg !871

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 142, !dbg !872
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !874
    #dbg_value(ptr %add.ptr84, !875, !DIExpression(), !723)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !876
  %mul89 = mul nuw nsw i32 %i77.0, 12, !dbg !877
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !878
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 12, i32 noundef 142, i32 noundef 1) #6, !dbg !879
  %mul94 = mul nuw nsw i32 %i77.0, 154, !dbg !880
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !881
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 142, i32 noundef 1) #6, !dbg !882
  %mul97 = mul nuw nsw i32 %i77.0, 154, !dbg !883
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !884
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 142, !dbg !885
  %mul101 = mul nuw nsw i32 %i77.0, 12, !dbg !886
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !887
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 12) #8, !dbg !888
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !889
    #dbg_value(i32 %inc105, !864, !DIExpression(), !866)
  br label %for.cond78, !dbg !890, !llvm.loop !891

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1848) #6, !dbg !893
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !894
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 40) #8, !dbg !895
  store i32 964, ptr %siglen, align 4, !dbg !896
  br label %err, !dbg !897

err:                                              ; preds = %if.end, %entry, %for.end106
  %ret.0 = phi i32 [ %call, %for.end106 ], [ %call, %entry ], [ 1, %if.end ], !dbg !723
    #dbg_value(i32 %ret.0, !729, !DIExpression(), !723)
    #dbg_label(!898, !899)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 924) #8, !dbg !900
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1704) #8, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 20880) #8, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 145) #8, !dbg !903
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !904
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 1704) #8, !dbg !905
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 855408) #8, !dbg !906
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 142) #8, !dbg !907
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !908
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 10368) #8, !dbg !909
  ret i32 %ret.0, !dbg !910
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !911 {
entry:
  %Pv = alloca [15336 x i64], align 8
    #dbg_value(ptr %p, !914, !DIExpression(), !915)
    #dbg_value(ptr %Vdec, !916, !DIExpression(), !915)
    #dbg_value(ptr %L, !917, !DIExpression(), !915)
    #dbg_value(ptr %P1, !918, !DIExpression(), !915)
    #dbg_value(ptr %VL, !919, !DIExpression(), !915)
    #dbg_value(ptr %VP1V, !920, !DIExpression(), !915)
    #dbg_value(i32 12, !921, !DIExpression(), !915)
    #dbg_value(i32 142, !922, !DIExpression(), !915)
    #dbg_value(i32 12, !923, !DIExpression(), !915)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !924
    #dbg_declare(ptr %Pv, !925, !DIExpression(), !929)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(122688) %Pv, i8 0, i32 122688, i1 false), !dbg !929
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !930
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !931
  ret void, !dbg !932
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !933 {
entry:
  %temp = alloca [9 x i64], align 8
    #dbg_value(ptr %p, !936, !DIExpression(), !937)
    #dbg_value(ptr %vPv, !938, !DIExpression(), !937)
    #dbg_value(ptr %t, !939, !DIExpression(), !937)
    #dbg_value(ptr %y, !940, !DIExpression(), !937)
    #dbg_value(i32 52, !941, !DIExpression(), !937)
    #dbg_value(i32 9, !943, !DIExpression(), !937)
    #dbg_value(i64 1, !944, !DIExpression(), !947)
    #dbg_value(i64 72057594037927936, !944, !DIExpression(), !947)
    #dbg_value(i64 72057594037927935, !944, !DIExpression(), !947)
    #dbg_value(i32 0, !948, !DIExpression(), !950)
  br label %for.cond, !dbg !951

for.cond:                                         ; preds = %for.body.4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.4, %for.body.4 ], !dbg !952
    #dbg_value(i32 %i.0, !948, !DIExpression(), !950)
  %.idx7 = mul nuw nsw i32 %i.0, 72, !dbg !953
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !953
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !953
  %1 = load i64, ptr %arrayidx, align 8, !dbg !956
  %and = and i64 %1, 72057594037927935, !dbg !956
  store i64 %and, ptr %arrayidx, align 8, !dbg !956
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !950)
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !950)
  %2 = mul nuw i32 %i.0, 72, !dbg !953
  %3 = getelementptr i8, ptr %vPv, i32 %2, !dbg !953
  %arrayidx.1 = getelementptr i8, ptr %3, i32 136, !dbg !953
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !956
  %and.1 = and i64 %4, 72057594037927935, !dbg !956
  store i64 %and.1, ptr %arrayidx.1, align 8, !dbg !956
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !950)
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !950)
  %5 = mul nuw i32 %i.0, 72, !dbg !953
  %6 = getelementptr i8, ptr %vPv, i32 %5, !dbg !953
  %arrayidx.2 = getelementptr i8, ptr %6, i32 208, !dbg !953
  %7 = load i64, ptr %arrayidx.2, align 8, !dbg !956
  %and.2 = and i64 %7, 72057594037927935, !dbg !956
  store i64 %and.2, ptr %arrayidx.2, align 8, !dbg !956
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !950)
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !950)
  %8 = mul nuw i32 %i.0, 72, !dbg !953
  %9 = getelementptr i8, ptr %vPv, i32 %8, !dbg !953
  %arrayidx.3 = getelementptr i8, ptr %9, i32 280, !dbg !953
  %10 = load i64, ptr %arrayidx.3, align 8, !dbg !956
  %and.3 = and i64 %10, 72057594037927935, !dbg !956
  store i64 %and.3, ptr %arrayidx.3, align 8, !dbg !956
  %inc.3 = add nuw nsw i32 %i.0, 4, !dbg !957
    #dbg_value(i32 %inc.3, !948, !DIExpression(), !950)
  %exitcond.4.not = icmp eq i32 %inc.3, 144, !dbg !958
  br i1 %exitcond.4.not, label %for.end, label %for.body.4, !dbg !959

for.body.4:                                       ; preds = %for.cond
  %.idx7.4 = mul nuw nsw i32 %inc.3, 72, !dbg !953
  %11 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7.4, !dbg !953
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %11, i32 64, !dbg !953
  %12 = load i64, ptr %arrayidx.4, align 8, !dbg !956
  %and.4 = and i64 %12, 72057594037927935, !dbg !956
  store i64 %and.4, ptr %arrayidx.4, align 8, !dbg !956
  %inc.4 = add nuw nsw i32 %i.0, 5, !dbg !957
    #dbg_value(i32 %inc.4, !948, !DIExpression(), !950)
  br label %for.cond, !dbg !960, !llvm.loop !961

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !963, !DIExpression(), !964)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %temp, i8 0, i32 72, i1 false), !dbg !964
    #dbg_value(ptr %temp, !965, !DIExpression(), !937)
    #dbg_value(i32 11, !966, !DIExpression(), !968)
  br label %for.cond3, !dbg !969

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 11, %for.end ], [ %dec78, %for.inc77 ], !dbg !970
    #dbg_value(i32 %i2.0, !966, !DIExpression(), !968)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !971
  br i1 %cmp4, label %for.cond6, label %for.cond81, !dbg !973

for.cond6:                                        ; preds = %for.cond3, %for.body8
  %j.0 = phi i32 [ %inc75, %for.body8 ], [ %i2.0, %for.cond3 ], !dbg !974
    #dbg_value(i32 %j.0, !977, !DIExpression(), !978)
  %exitcond10.not = icmp eq i32 %j.0, 12, !dbg !979
  br i1 %exitcond10.not, label %for.inc77, label %for.body8, !dbg !981

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !982
  %13 = load i64, ptr %arrayidx9, align 8, !dbg !982
  %shr = lshr i64 %13, 52, !dbg !984
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !985
    #dbg_value(i8 %rem1, !986, !DIExpression(), !987)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !988
  %shl11 = shl i64 %13, 4, !dbg !989
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !989
    #dbg_value(i32 7, !990, !DIExpression(), !992)
    #dbg_value(i32 7, !990, !DIExpression(), !992)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %temp, i32 56, !dbg !993
  %14 = load i64, ptr %arrayidx16, align 8, !dbg !993
  %shr17 = lshr i64 %14, 60, !dbg !996
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !997
  %15 = load i64, ptr %arrayidx19, align 8, !dbg !998
  %xor = xor i64 %15, %shr17, !dbg !998
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !998
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %temp, i32 56, !dbg !999
  %16 = load i64, ptr %arrayidx20, align 8, !dbg !1000
  %shl21 = shl i64 %16, 4, !dbg !1000
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1000
    #dbg_value(i32 6, !990, !DIExpression(), !992)
  %arrayidx16.1 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !993
  %17 = load i64, ptr %arrayidx16.1, align 8, !dbg !993
  %shr17.1 = lshr i64 %17, 60, !dbg !996
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %temp, i32 56, !dbg !997
  %18 = load i64, ptr %arrayidx19.1, align 8, !dbg !998
  %xor.1 = xor i64 %18, %shr17.1, !dbg !998
  store i64 %xor.1, ptr %arrayidx19.1, align 8, !dbg !998
  %arrayidx20.1 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !999
  %19 = load i64, ptr %arrayidx20.1, align 8, !dbg !1000
  %shl21.1 = shl i64 %19, 4, !dbg !1000
  store i64 %shl21.1, ptr %arrayidx20.1, align 8, !dbg !1000
    #dbg_value(i32 5, !990, !DIExpression(), !992)
  %arrayidx16.2 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !993
  %20 = load i64, ptr %arrayidx16.2, align 8, !dbg !993
  %shr17.2 = lshr i64 %20, 60, !dbg !996
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !997
  %21 = load i64, ptr %arrayidx19.2, align 8, !dbg !998
  %xor.2 = xor i64 %21, %shr17.2, !dbg !998
  store i64 %xor.2, ptr %arrayidx19.2, align 8, !dbg !998
  %arrayidx20.2 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !999
  %22 = load i64, ptr %arrayidx20.2, align 8, !dbg !1000
  %shl21.2 = shl i64 %22, 4, !dbg !1000
  store i64 %shl21.2, ptr %arrayidx20.2, align 8, !dbg !1000
    #dbg_value(i32 4, !990, !DIExpression(), !992)
  %arrayidx16.3 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !993
  %23 = load i64, ptr %arrayidx16.3, align 8, !dbg !993
  %shr17.3 = lshr i64 %23, 60, !dbg !996
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !997
  %24 = load i64, ptr %arrayidx19.3, align 8, !dbg !998
  %xor.3 = xor i64 %24, %shr17.3, !dbg !998
  store i64 %xor.3, ptr %arrayidx19.3, align 8, !dbg !998
  %arrayidx20.3 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !999
  %25 = load i64, ptr %arrayidx20.3, align 8, !dbg !1000
  %shl21.3 = shl i64 %25, 4, !dbg !1000
  store i64 %shl21.3, ptr %arrayidx20.3, align 8, !dbg !1000
    #dbg_value(i32 3, !990, !DIExpression(), !992)
  %arrayidx16.4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !993
  %26 = load i64, ptr %arrayidx16.4, align 8, !dbg !993
  %shr17.4 = lshr i64 %26, 60, !dbg !996
  %arrayidx19.4 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !997
  %27 = load i64, ptr %arrayidx19.4, align 8, !dbg !998
  %xor.4 = xor i64 %27, %shr17.4, !dbg !998
  store i64 %xor.4, ptr %arrayidx19.4, align 8, !dbg !998
  %arrayidx20.4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !999
  %28 = load i64, ptr %arrayidx20.4, align 8, !dbg !1000
  %shl21.4 = shl i64 %28, 4, !dbg !1000
  store i64 %shl21.4, ptr %arrayidx20.4, align 8, !dbg !1000
    #dbg_value(i32 2, !990, !DIExpression(), !992)
  %arrayidx16.5 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !993
  %29 = load i64, ptr %arrayidx16.5, align 8, !dbg !993
  %shr17.5 = lshr i64 %29, 60, !dbg !996
  %arrayidx19.5 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !997
  %30 = load i64, ptr %arrayidx19.5, align 8, !dbg !998
  %xor.5 = xor i64 %30, %shr17.5, !dbg !998
  store i64 %xor.5, ptr %arrayidx19.5, align 8, !dbg !998
  %arrayidx20.5 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !999
  %31 = load i64, ptr %arrayidx20.5, align 8, !dbg !1000
  %shl21.5 = shl i64 %31, 4, !dbg !1000
  store i64 %shl21.5, ptr %arrayidx20.5, align 8, !dbg !1000
    #dbg_value(i32 1, !990, !DIExpression(), !992)
  %arrayidx16.6 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !993
  %32 = load i64, ptr %arrayidx16.6, align 8, !dbg !993
  %shr17.6 = lshr i64 %32, 60, !dbg !996
  %arrayidx19.6 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !997
  %33 = load i64, ptr %arrayidx19.6, align 8, !dbg !998
  %xor.6 = xor i64 %33, %shr17.6, !dbg !998
  store i64 %xor.6, ptr %arrayidx19.6, align 8, !dbg !998
  %arrayidx20.6 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !999
  %34 = load i64, ptr %arrayidx20.6, align 8, !dbg !1000
  %shl21.6 = shl i64 %34, 4, !dbg !1000
  store i64 %shl21.6, ptr %arrayidx20.6, align 8, !dbg !1000
    #dbg_value(i32 0, !990, !DIExpression(), !992)
  %35 = load i64, ptr %temp, align 8, !dbg !993
  %shr17.7 = lshr i64 %35, 60, !dbg !996
  %arrayidx19.7 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !997
  %36 = load i64, ptr %arrayidx19.7, align 8, !dbg !998
  %xor.7 = xor i64 %36, %shr17.7, !dbg !998
  store i64 %xor.7, ptr %arrayidx19.7, align 8, !dbg !998
  %shl21.7 = shl i64 %35, 4, !dbg !1000
  store i64 %shl21.7, ptr %temp, align 8, !dbg !1000
    #dbg_value(i32 -1, !990, !DIExpression(), !992)
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !985
    #dbg_value(i32 0, !1001, !DIExpression(), !1003)
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 4) #6, !dbg !1004
  %37 = load i8, ptr %temp, align 1, !dbg !1009
  %xor356 = xor i8 %37, %call, !dbg !1009
  store i8 %xor356, ptr %temp, align 1, !dbg !1009
    #dbg_value(i32 1, !1001, !DIExpression(), !1003)
  %call38.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 0) #6, !dbg !1010
  %shl40.1 = shl nuw i8 %call38.1, 4, !dbg !1012
  %38 = load i8, ptr %temp, align 1, !dbg !1013
  %xor44.1 = xor i8 %shl40.1, %38, !dbg !1013
  store i8 %xor44.1, ptr %temp, align 1, !dbg !1013
    #dbg_value(i32 2, !1001, !DIExpression(), !1003)
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 8) #6, !dbg !1004
  %arrayidx33.2 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !1014
  %39 = load i8, ptr %arrayidx33.2, align 1, !dbg !1009
  %xor356.2 = xor i8 %39, %call.2, !dbg !1009
  store i8 %xor356.2, ptr %arrayidx33.2, align 1, !dbg !1009
    #dbg_value(i32 3, !1001, !DIExpression(), !1003)
  %call38.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 1) #6, !dbg !1010
  %shl40.3 = shl nuw i8 %call38.3, 4, !dbg !1012
  %arrayidx42.3 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !1015
  %40 = load i8, ptr %arrayidx42.3, align 1, !dbg !1013
  %xor44.3 = xor i8 %shl40.3, %40, !dbg !1013
  store i8 %xor44.3, ptr %arrayidx42.3, align 1, !dbg !1013
    #dbg_value(i32 4, !1001, !DIExpression(), !1003)
    #dbg_value(i32 0, !1016, !DIExpression(), !1018)
  %mul54 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1022
  %.idx = mul nuw nsw i32 %add55, 72, !dbg !1023
  %41 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1023
  %42 = load i64, ptr %41, align 8, !dbg !1023
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1026
  %.idx4 = mul nuw nsw i32 %add63, 72, !dbg !1027
  %43 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1027
  %44 = load i64, ptr %43, align 8, !dbg !1027
  %mul67 = select i1 %cmp59.not, i64 0, i64 %44, !dbg !1028
  %xor68 = xor i64 %42, %mul67, !dbg !1029
  %45 = load i64, ptr %temp, align 8, !dbg !1030
  %xor70 = xor i64 %45, %xor68, !dbg !1030
  store i64 %xor70, ptr %temp, align 8, !dbg !1030
    #dbg_value(i32 1, !1016, !DIExpression(), !1018)
  %mul54.1 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.1 = add nuw nsw i32 %mul54.1, %j.0, !dbg !1022
  %.idx.1 = mul nuw nsw i32 %add55.1, 72, !dbg !1023
  %46 = getelementptr i8, ptr %vPv, i32 %.idx.1, !dbg !1023
  %arrayidx58.1 = getelementptr i8, ptr %46, i32 8, !dbg !1023
  %47 = load i64, ptr %arrayidx58.1, align 8, !dbg !1023
  %cmp59.not.1 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.1 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.1 = add nuw nsw i32 %mul62.1, %i2.0, !dbg !1026
  %.idx4.1 = mul nuw nsw i32 %add63.1, 72, !dbg !1027
  %48 = getelementptr i8, ptr %vPv, i32 %.idx4.1, !dbg !1027
  %arrayidx66.1 = getelementptr i8, ptr %48, i32 8, !dbg !1027
  %49 = load i64, ptr %arrayidx66.1, align 8, !dbg !1027
  %mul67.1 = select i1 %cmp59.not.1, i64 0, i64 %49, !dbg !1028
  %xor68.1 = xor i64 %47, %mul67.1, !dbg !1029
  %arrayidx69.1 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !1031
  %50 = load i64, ptr %arrayidx69.1, align 8, !dbg !1030
  %xor70.1 = xor i64 %50, %xor68.1, !dbg !1030
  store i64 %xor70.1, ptr %arrayidx69.1, align 8, !dbg !1030
    #dbg_value(i32 2, !1016, !DIExpression(), !1018)
  %mul54.2 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.2 = add nuw nsw i32 %mul54.2, %j.0, !dbg !1022
  %.idx.2 = mul nuw nsw i32 %add55.2, 72, !dbg !1023
  %51 = getelementptr i8, ptr %vPv, i32 %.idx.2, !dbg !1023
  %arrayidx58.2 = getelementptr i8, ptr %51, i32 16, !dbg !1023
  %52 = load i64, ptr %arrayidx58.2, align 8, !dbg !1023
  %cmp59.not.2 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.2 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.2 = add nuw nsw i32 %mul62.2, %i2.0, !dbg !1026
  %.idx4.2 = mul nuw nsw i32 %add63.2, 72, !dbg !1027
  %53 = getelementptr i8, ptr %vPv, i32 %.idx4.2, !dbg !1027
  %arrayidx66.2 = getelementptr i8, ptr %53, i32 16, !dbg !1027
  %54 = load i64, ptr %arrayidx66.2, align 8, !dbg !1027
  %mul67.2 = select i1 %cmp59.not.2, i64 0, i64 %54, !dbg !1028
  %xor68.2 = xor i64 %52, %mul67.2, !dbg !1029
  %arrayidx69.2 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !1031
  %55 = load i64, ptr %arrayidx69.2, align 8, !dbg !1030
  %xor70.2 = xor i64 %55, %xor68.2, !dbg !1030
  store i64 %xor70.2, ptr %arrayidx69.2, align 8, !dbg !1030
    #dbg_value(i32 3, !1016, !DIExpression(), !1018)
  %mul54.3 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.3 = add nuw nsw i32 %mul54.3, %j.0, !dbg !1022
  %.idx.3 = mul nuw nsw i32 %add55.3, 72, !dbg !1023
  %56 = getelementptr i8, ptr %vPv, i32 %.idx.3, !dbg !1023
  %arrayidx58.3 = getelementptr i8, ptr %56, i32 24, !dbg !1023
  %57 = load i64, ptr %arrayidx58.3, align 8, !dbg !1023
  %cmp59.not.3 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.3 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.3 = add nuw nsw i32 %mul62.3, %i2.0, !dbg !1026
  %.idx4.3 = mul nuw nsw i32 %add63.3, 72, !dbg !1027
  %58 = getelementptr i8, ptr %vPv, i32 %.idx4.3, !dbg !1027
  %arrayidx66.3 = getelementptr i8, ptr %58, i32 24, !dbg !1027
  %59 = load i64, ptr %arrayidx66.3, align 8, !dbg !1027
  %mul67.3 = select i1 %cmp59.not.3, i64 0, i64 %59, !dbg !1028
  %xor68.3 = xor i64 %57, %mul67.3, !dbg !1029
  %arrayidx69.3 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1031
  %60 = load i64, ptr %arrayidx69.3, align 8, !dbg !1030
  %xor70.3 = xor i64 %60, %xor68.3, !dbg !1030
  store i64 %xor70.3, ptr %arrayidx69.3, align 8, !dbg !1030
    #dbg_value(i32 4, !1016, !DIExpression(), !1018)
  %mul54.4 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.4 = add nuw nsw i32 %mul54.4, %j.0, !dbg !1022
  %.idx.4 = mul nuw nsw i32 %add55.4, 72, !dbg !1023
  %61 = getelementptr i8, ptr %vPv, i32 %.idx.4, !dbg !1023
  %arrayidx58.4 = getelementptr i8, ptr %61, i32 32, !dbg !1023
  %62 = load i64, ptr %arrayidx58.4, align 8, !dbg !1023
  %cmp59.not.4 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.4 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.4 = add nuw nsw i32 %mul62.4, %i2.0, !dbg !1026
  %.idx4.4 = mul nuw nsw i32 %add63.4, 72, !dbg !1027
  %63 = getelementptr i8, ptr %vPv, i32 %.idx4.4, !dbg !1027
  %arrayidx66.4 = getelementptr i8, ptr %63, i32 32, !dbg !1027
  %64 = load i64, ptr %arrayidx66.4, align 8, !dbg !1027
  %mul67.4 = select i1 %cmp59.not.4, i64 0, i64 %64, !dbg !1028
  %xor68.4 = xor i64 %62, %mul67.4, !dbg !1029
  %arrayidx69.4 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !1031
  %65 = load i64, ptr %arrayidx69.4, align 8, !dbg !1030
  %xor70.4 = xor i64 %65, %xor68.4, !dbg !1030
  store i64 %xor70.4, ptr %arrayidx69.4, align 8, !dbg !1030
    #dbg_value(i32 5, !1016, !DIExpression(), !1018)
  %mul54.5 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.5 = add nuw nsw i32 %mul54.5, %j.0, !dbg !1022
  %.idx.5 = mul nuw nsw i32 %add55.5, 72, !dbg !1023
  %66 = getelementptr i8, ptr %vPv, i32 %.idx.5, !dbg !1023
  %arrayidx58.5 = getelementptr i8, ptr %66, i32 40, !dbg !1023
  %67 = load i64, ptr %arrayidx58.5, align 8, !dbg !1023
  %cmp59.not.5 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.5 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.5 = add nuw nsw i32 %mul62.5, %i2.0, !dbg !1026
  %.idx4.5 = mul nuw nsw i32 %add63.5, 72, !dbg !1027
  %68 = getelementptr i8, ptr %vPv, i32 %.idx4.5, !dbg !1027
  %arrayidx66.5 = getelementptr i8, ptr %68, i32 40, !dbg !1027
  %69 = load i64, ptr %arrayidx66.5, align 8, !dbg !1027
  %mul67.5 = select i1 %cmp59.not.5, i64 0, i64 %69, !dbg !1028
  %xor68.5 = xor i64 %67, %mul67.5, !dbg !1029
  %arrayidx69.5 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !1031
  %70 = load i64, ptr %arrayidx69.5, align 8, !dbg !1030
  %xor70.5 = xor i64 %70, %xor68.5, !dbg !1030
  store i64 %xor70.5, ptr %arrayidx69.5, align 8, !dbg !1030
    #dbg_value(i32 6, !1016, !DIExpression(), !1018)
  %mul54.6 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.6 = add nuw nsw i32 %mul54.6, %j.0, !dbg !1022
  %.idx.6 = mul nuw nsw i32 %add55.6, 72, !dbg !1023
  %71 = getelementptr i8, ptr %vPv, i32 %.idx.6, !dbg !1023
  %arrayidx58.6 = getelementptr i8, ptr %71, i32 48, !dbg !1023
  %72 = load i64, ptr %arrayidx58.6, align 8, !dbg !1023
  %cmp59.not.6 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.6 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.6 = add nuw nsw i32 %mul62.6, %i2.0, !dbg !1026
  %.idx4.6 = mul nuw nsw i32 %add63.6, 72, !dbg !1027
  %73 = getelementptr i8, ptr %vPv, i32 %.idx4.6, !dbg !1027
  %arrayidx66.6 = getelementptr i8, ptr %73, i32 48, !dbg !1027
  %74 = load i64, ptr %arrayidx66.6, align 8, !dbg !1027
  %mul67.6 = select i1 %cmp59.not.6, i64 0, i64 %74, !dbg !1028
  %xor68.6 = xor i64 %72, %mul67.6, !dbg !1029
  %arrayidx69.6 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !1031
  %75 = load i64, ptr %arrayidx69.6, align 8, !dbg !1030
  %xor70.6 = xor i64 %75, %xor68.6, !dbg !1030
  store i64 %xor70.6, ptr %arrayidx69.6, align 8, !dbg !1030
    #dbg_value(i32 7, !1016, !DIExpression(), !1018)
  %mul54.7 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.7 = add nuw nsw i32 %mul54.7, %j.0, !dbg !1022
  %.idx.7 = mul nuw nsw i32 %add55.7, 72, !dbg !1023
  %76 = getelementptr i8, ptr %vPv, i32 %.idx.7, !dbg !1023
  %arrayidx58.7 = getelementptr i8, ptr %76, i32 56, !dbg !1023
  %77 = load i64, ptr %arrayidx58.7, align 8, !dbg !1023
  %cmp59.not.7 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.7 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.7 = add nuw nsw i32 %mul62.7, %i2.0, !dbg !1026
  %.idx4.7 = mul nuw nsw i32 %add63.7, 72, !dbg !1027
  %78 = getelementptr i8, ptr %vPv, i32 %.idx4.7, !dbg !1027
  %arrayidx66.7 = getelementptr i8, ptr %78, i32 56, !dbg !1027
  %79 = load i64, ptr %arrayidx66.7, align 8, !dbg !1027
  %mul67.7 = select i1 %cmp59.not.7, i64 0, i64 %79, !dbg !1028
  %xor68.7 = xor i64 %77, %mul67.7, !dbg !1029
  %arrayidx69.7 = getelementptr inbounds nuw i8, ptr %temp, i32 56, !dbg !1031
  %80 = load i64, ptr %arrayidx69.7, align 8, !dbg !1030
  %xor70.7 = xor i64 %80, %xor68.7, !dbg !1030
  store i64 %xor70.7, ptr %arrayidx69.7, align 8, !dbg !1030
    #dbg_value(i32 8, !1016, !DIExpression(), !1018)
  %mul54.8 = mul nuw nsw i32 %i2.0, 12, !dbg !1019
  %add55.8 = add nuw nsw i32 %mul54.8, %j.0, !dbg !1022
  %.idx.8 = mul nuw nsw i32 %add55.8, 72, !dbg !1023
  %81 = getelementptr i8, ptr %vPv, i32 %.idx.8, !dbg !1023
  %arrayidx58.8 = getelementptr i8, ptr %81, i32 64, !dbg !1023
  %82 = load i64, ptr %arrayidx58.8, align 8, !dbg !1023
  %cmp59.not.8 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.8 = mul nuw nsw i32 %j.0, 12, !dbg !1025
  %add63.8 = add nuw nsw i32 %mul62.8, %i2.0, !dbg !1026
  %.idx4.8 = mul nuw nsw i32 %add63.8, 72, !dbg !1027
  %83 = getelementptr i8, ptr %vPv, i32 %.idx4.8, !dbg !1027
  %arrayidx66.8 = getelementptr i8, ptr %83, i32 64, !dbg !1027
  %84 = load i64, ptr %arrayidx66.8, align 8, !dbg !1027
  %mul67.8 = select i1 %cmp59.not.8, i64 0, i64 %84, !dbg !1028
  %xor68.8 = xor i64 %82, %mul67.8, !dbg !1029
  %arrayidx69.8 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !1031
  %85 = load i64, ptr %arrayidx69.8, align 8, !dbg !1030
  %xor70.8 = xor i64 %85, %xor68.8, !dbg !1030
  store i64 %xor70.8, ptr %arrayidx69.8, align 8, !dbg !1030
    #dbg_value(i32 9, !1016, !DIExpression(), !1018)
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1032
    #dbg_value(i32 %inc75, !977, !DIExpression(), !978)
  br label %for.cond6, !dbg !1033, !llvm.loop !1034

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1036
    #dbg_value(i32 %dec78, !966, !DIExpression(), !968)
  br label %for.cond3, !dbg !1037, !llvm.loop !1038

for.cond81:                                       ; preds = %for.cond3, %for.body84.8
  %i80.0 = phi i32 [ %add106.8, %for.body84.8 ], [ 0, %for.cond3 ], !dbg !1040
    #dbg_value(i32 %i80.0, !1042, !DIExpression(), !1043)
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1044
  %86 = load i8, ptr %arrayidx85, align 1, !dbg !1044
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1047
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1048
  %87 = load i8, ptr %arrayidx88, align 1, !dbg !1048
  %88 = and i8 %87, 15, !dbg !1049
  %xor912 = xor i8 %86, %88, !dbg !1050
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1051
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1052
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1053
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1054
  %89 = load i8, ptr %arrayidx95, align 1, !dbg !1054
  %90 = lshr i8 %87, 4, !dbg !1055
  %xor1013 = xor i8 %89, %90, !dbg !1056
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1057
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1058
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1043)
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1060
    #dbg_value(i32 %add106, !1042, !DIExpression(), !1043)
  %arrayidx85.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add106, !dbg !1044
  %91 = load i8, ptr %arrayidx85.1, align 1, !dbg !1044
  %div87.1 = lshr exact i32 %add106, 1, !dbg !1047
  %arrayidx88.1 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.1, !dbg !1048
  %92 = load i8, ptr %arrayidx88.1, align 1, !dbg !1048
  %93 = and i8 %92, 15, !dbg !1049
  %xor912.1 = xor i8 %91, %93, !dbg !1050
  %arrayidx93.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add106, !dbg !1051
  store i8 %xor912.1, ptr %arrayidx93.1, align 1, !dbg !1052
  %add94.1 = or disjoint i32 %add106, 1, !dbg !1053
  %arrayidx95.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.1, !dbg !1054
  %94 = load i8, ptr %arrayidx95.1, align 1, !dbg !1054
  %95 = lshr i8 %92, 4, !dbg !1055
  %xor1013.1 = xor i8 %94, %95, !dbg !1056
  %add103.1 = or disjoint i32 %add106, 1, !dbg !1057
  %arrayidx104.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.1, !dbg !1058
  store i8 %xor1013.1, ptr %arrayidx104.1, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1043)
  %add106.1 = add nuw nsw i32 %i80.0, 4, !dbg !1060
    #dbg_value(i32 %add106.1, !1042, !DIExpression(), !1043)
  %arrayidx85.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.1, !dbg !1044
  %96 = load i8, ptr %arrayidx85.2, align 1, !dbg !1044
  %div87.2 = lshr exact i32 %add106.1, 1, !dbg !1047
  %arrayidx88.2 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.2, !dbg !1048
  %97 = load i8, ptr %arrayidx88.2, align 1, !dbg !1048
  %98 = and i8 %97, 15, !dbg !1049
  %xor912.2 = xor i8 %96, %98, !dbg !1050
  %arrayidx93.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.1, !dbg !1051
  store i8 %xor912.2, ptr %arrayidx93.2, align 1, !dbg !1052
  %add94.2 = or disjoint i32 %add106.1, 1, !dbg !1053
  %arrayidx95.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.2, !dbg !1054
  %99 = load i8, ptr %arrayidx95.2, align 1, !dbg !1054
  %100 = lshr i8 %97, 4, !dbg !1055
  %xor1013.2 = xor i8 %99, %100, !dbg !1056
  %add103.2 = or disjoint i32 %add106.1, 1, !dbg !1057
  %arrayidx104.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.2, !dbg !1058
  store i8 %xor1013.2, ptr %arrayidx104.2, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !1043)
  %add106.2 = add nuw nsw i32 %i80.0, 6, !dbg !1060
    #dbg_value(i32 %add106.2, !1042, !DIExpression(), !1043)
  %arrayidx85.3 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.2, !dbg !1044
  %101 = load i8, ptr %arrayidx85.3, align 1, !dbg !1044
  %div87.3 = lshr exact i32 %add106.2, 1, !dbg !1047
  %arrayidx88.3 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.3, !dbg !1048
  %102 = load i8, ptr %arrayidx88.3, align 1, !dbg !1048
  %103 = and i8 %102, 15, !dbg !1049
  %xor912.3 = xor i8 %101, %103, !dbg !1050
  %arrayidx93.3 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.2, !dbg !1051
  store i8 %xor912.3, ptr %arrayidx93.3, align 1, !dbg !1052
  %add94.3 = or disjoint i32 %add106.2, 1, !dbg !1053
  %arrayidx95.3 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.3, !dbg !1054
  %104 = load i8, ptr %arrayidx95.3, align 1, !dbg !1054
  %105 = lshr i8 %102, 4, !dbg !1055
  %xor1013.3 = xor i8 %104, %105, !dbg !1056
  %add103.3 = or disjoint i32 %add106.2, 1, !dbg !1057
  %arrayidx104.3 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.3, !dbg !1058
  store i8 %xor1013.3, ptr %arrayidx104.3, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1043)
  %add106.3 = add nuw nsw i32 %i80.0, 8, !dbg !1060
    #dbg_value(i32 %add106.3, !1042, !DIExpression(), !1043)
  %arrayidx85.4 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.3, !dbg !1044
  %106 = load i8, ptr %arrayidx85.4, align 1, !dbg !1044
  %div87.4 = lshr exact i32 %add106.3, 1, !dbg !1047
  %arrayidx88.4 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.4, !dbg !1048
  %107 = load i8, ptr %arrayidx88.4, align 1, !dbg !1048
  %108 = and i8 %107, 15, !dbg !1049
  %xor912.4 = xor i8 %106, %108, !dbg !1050
  %arrayidx93.4 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.3, !dbg !1051
  store i8 %xor912.4, ptr %arrayidx93.4, align 1, !dbg !1052
  %add94.4 = or disjoint i32 %add106.3, 1, !dbg !1053
  %arrayidx95.4 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.4, !dbg !1054
  %109 = load i8, ptr %arrayidx95.4, align 1, !dbg !1054
  %110 = lshr i8 %107, 4, !dbg !1055
  %xor1013.4 = xor i8 %109, %110, !dbg !1056
  %add103.4 = or disjoint i32 %add106.3, 1, !dbg !1057
  %arrayidx104.4 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.4, !dbg !1058
  store i8 %xor1013.4, ptr %arrayidx104.4, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !1043)
  %add106.4 = add nuw nsw i32 %i80.0, 10, !dbg !1060
    #dbg_value(i32 %add106.4, !1042, !DIExpression(), !1043)
  %arrayidx85.5 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.4, !dbg !1044
  %111 = load i8, ptr %arrayidx85.5, align 1, !dbg !1044
  %div87.5 = lshr exact i32 %add106.4, 1, !dbg !1047
  %arrayidx88.5 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.5, !dbg !1048
  %112 = load i8, ptr %arrayidx88.5, align 1, !dbg !1048
  %113 = and i8 %112, 15, !dbg !1049
  %xor912.5 = xor i8 %111, %113, !dbg !1050
  %arrayidx93.5 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.4, !dbg !1051
  store i8 %xor912.5, ptr %arrayidx93.5, align 1, !dbg !1052
  %add94.5 = or disjoint i32 %add106.4, 1, !dbg !1053
  %arrayidx95.5 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.5, !dbg !1054
  %114 = load i8, ptr %arrayidx95.5, align 1, !dbg !1054
  %115 = lshr i8 %112, 4, !dbg !1055
  %xor1013.5 = xor i8 %114, %115, !dbg !1056
  %add103.5 = or disjoint i32 %add106.4, 1, !dbg !1057
  %arrayidx104.5 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.5, !dbg !1058
  store i8 %xor1013.5, ptr %arrayidx104.5, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !1043)
  %add106.5 = add nuw nsw i32 %i80.0, 12, !dbg !1060
    #dbg_value(i32 %add106.5, !1042, !DIExpression(), !1043)
  %arrayidx85.6 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.5, !dbg !1044
  %116 = load i8, ptr %arrayidx85.6, align 1, !dbg !1044
  %div87.6 = lshr exact i32 %add106.5, 1, !dbg !1047
  %arrayidx88.6 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.6, !dbg !1048
  %117 = load i8, ptr %arrayidx88.6, align 1, !dbg !1048
  %118 = and i8 %117, 15, !dbg !1049
  %xor912.6 = xor i8 %116, %118, !dbg !1050
  %arrayidx93.6 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.5, !dbg !1051
  store i8 %xor912.6, ptr %arrayidx93.6, align 1, !dbg !1052
  %add94.6 = or disjoint i32 %add106.5, 1, !dbg !1053
  %arrayidx95.6 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.6, !dbg !1054
  %119 = load i8, ptr %arrayidx95.6, align 1, !dbg !1054
  %120 = lshr i8 %117, 4, !dbg !1055
  %xor1013.6 = xor i8 %119, %120, !dbg !1056
  %add103.6 = or disjoint i32 %add106.5, 1, !dbg !1057
  %arrayidx104.6 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.6, !dbg !1058
  store i8 %xor1013.6, ptr %arrayidx104.6, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value), !1043)
  %add106.6 = add nuw nsw i32 %i80.0, 14, !dbg !1060
    #dbg_value(i32 %add106.6, !1042, !DIExpression(), !1043)
  %arrayidx85.7 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.6, !dbg !1044
  %121 = load i8, ptr %arrayidx85.7, align 1, !dbg !1044
  %div87.7 = lshr exact i32 %add106.6, 1, !dbg !1047
  %arrayidx88.7 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.7, !dbg !1048
  %122 = load i8, ptr %arrayidx88.7, align 1, !dbg !1048
  %123 = and i8 %122, 15, !dbg !1049
  %xor912.7 = xor i8 %121, %123, !dbg !1050
  %arrayidx93.7 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.6, !dbg !1051
  store i8 %xor912.7, ptr %arrayidx93.7, align 1, !dbg !1052
  %add94.7 = or disjoint i32 %add106.6, 1, !dbg !1053
  %arrayidx95.7 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.7, !dbg !1054
  %124 = load i8, ptr %arrayidx95.7, align 1, !dbg !1054
  %125 = lshr i8 %122, 4, !dbg !1055
  %xor1013.7 = xor i8 %124, %125, !dbg !1056
  %add103.7 = or disjoint i32 %add106.6, 1, !dbg !1057
  %arrayidx104.7 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.7, !dbg !1058
  store i8 %xor1013.7, ptr %arrayidx104.7, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1043)
  %cmp82.8 = icmp samesign ult i32 %i80.0, 126, !dbg !1061
  br i1 %cmp82.8, label %for.body84.8, label %for.end107, !dbg !1062

for.body84.8:                                     ; preds = %for.cond81
  %add106.7 = add nuw nsw i32 %i80.0, 16, !dbg !1060
    #dbg_value(i32 %add106.7, !1042, !DIExpression(), !1043)
  %arrayidx85.8 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.7, !dbg !1044
  %126 = load i8, ptr %arrayidx85.8, align 1, !dbg !1044
  %div87.8 = lshr exact i32 %add106.7, 1, !dbg !1047
  %arrayidx88.8 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.8, !dbg !1048
  %127 = load i8, ptr %arrayidx88.8, align 1, !dbg !1048
  %128 = and i8 %127, 15, !dbg !1049
  %xor912.8 = xor i8 %126, %128, !dbg !1050
  %arrayidx93.8 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.7, !dbg !1051
  store i8 %xor912.8, ptr %arrayidx93.8, align 1, !dbg !1052
  %add94.8 = or disjoint i32 %add106.7, 1, !dbg !1053
  %arrayidx95.8 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.8, !dbg !1054
  %129 = load i8, ptr %arrayidx95.8, align 1, !dbg !1054
  %130 = lshr i8 %127, 4, !dbg !1055
  %xor1013.8 = xor i8 %129, %130, !dbg !1056
  %add103.8 = or disjoint i32 %add106.7, 1, !dbg !1057
  %arrayidx104.8 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.8, !dbg !1058
  store i8 %xor1013.8, ptr %arrayidx104.8, align 1, !dbg !1059
  %add106.8 = add nuw nsw i32 %i80.0, 18, !dbg !1060
    #dbg_value(i32 %add106.8, !1042, !DIExpression(), !1043)
  br label %for.cond81, !dbg !1063, !llvm.loop !1064

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1066
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1067 {
entry:
  %A = alloca [2592 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1070, !DIExpression(), !1071)
    #dbg_value(ptr %VtL, !1072, !DIExpression(), !1071)
    #dbg_value(ptr %A_out, !1073, !DIExpression(), !1071)
    #dbg_value(i32 0, !1074, !DIExpression(), !1071)
    #dbg_value(i32 0, !1075, !DIExpression(), !1071)
    #dbg_value(i32 9, !1076, !DIExpression(), !1071)
    #dbg_declare(ptr %A, !1077, !DIExpression(), !1081)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20736) %A, i8 0, i32 20736, i1 false), !dbg !1081
    #dbg_value(i32 144, !1082, !DIExpression(), !1071)
    #dbg_value(i64 1, !1083, !DIExpression(), !1086)
    #dbg_value(i64 72057594037927936, !1083, !DIExpression(), !1086)
    #dbg_value(i64 72057594037927935, !1083, !DIExpression(), !1086)
    #dbg_value(i32 0, !1087, !DIExpression(), !1089)
  br label %for.cond, !dbg !1090

for.cond:                                         ; preds = %for.body.4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.4, %for.body.4 ], !dbg !1091
    #dbg_value(i32 %i.0, !1087, !DIExpression(), !1089)
  %.idx = mul nuw nsw i32 %i.0, 72, !dbg !1092
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1092
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1092
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1095
  %and = and i64 %1, 72057594037927935, !dbg !1095
  store i64 %and, ptr %arrayidx, align 8, !dbg !1095
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1089)
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1089)
  %2 = mul nuw i32 %i.0, 72, !dbg !1092
  %3 = getelementptr i8, ptr %VtL, i32 %2, !dbg !1092
  %arrayidx.1 = getelementptr i8, ptr %3, i32 136, !dbg !1092
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !1095
  %and.1 = and i64 %4, 72057594037927935, !dbg !1095
  store i64 %and.1, ptr %arrayidx.1, align 8, !dbg !1095
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1089)
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1089)
  %5 = mul nuw i32 %i.0, 72, !dbg !1092
  %6 = getelementptr i8, ptr %VtL, i32 %5, !dbg !1092
  %arrayidx.2 = getelementptr i8, ptr %6, i32 208, !dbg !1092
  %7 = load i64, ptr %arrayidx.2, align 8, !dbg !1095
  %and.2 = and i64 %7, 72057594037927935, !dbg !1095
  store i64 %and.2, ptr %arrayidx.2, align 8, !dbg !1095
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1089)
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1089)
  %8 = mul nuw i32 %i.0, 72, !dbg !1092
  %9 = getelementptr i8, ptr %VtL, i32 %8, !dbg !1092
  %arrayidx.3 = getelementptr i8, ptr %9, i32 280, !dbg !1092
  %10 = load i64, ptr %arrayidx.3, align 8, !dbg !1095
  %and.3 = and i64 %10, 72057594037927935, !dbg !1095
  store i64 %and.3, ptr %arrayidx.3, align 8, !dbg !1095
  %inc.3 = add nuw nsw i32 %i.0, 4, !dbg !1096
    #dbg_value(i32 %inc.3, !1087, !DIExpression(), !1089)
  %exitcond.4.not = icmp eq i32 %inc.3, 144, !dbg !1097
  br i1 %exitcond.4.not, label %for.cond3, label %for.body.4, !dbg !1098

for.body.4:                                       ; preds = %for.cond
  %.idx.4 = mul nuw nsw i32 %inc.3, 72, !dbg !1092
  %11 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx.4, !dbg !1092
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %11, i32 64, !dbg !1092
  %12 = load i64, ptr %arrayidx.4, align 8, !dbg !1095
  %and.4 = and i64 %12, 72057594037927935, !dbg !1095
  store i64 %and.4, ptr %arrayidx.4, align 8, !dbg !1095
  %inc.4 = add nuw nsw i32 %i.0, 5, !dbg !1096
    #dbg_value(i32 %inc.4, !1087, !DIExpression(), !1089)
  br label %for.cond, !dbg !1099, !llvm.loop !1100

for.cond3:                                        ; preds = %for.cond, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond ], !dbg !1102
  %words_to_shift.0 = phi i32 [ %words_to_shift.1, %for.inc103 ], [ 0, %for.cond ], !dbg !1104
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1, %for.inc103 ], [ 0, %for.cond ], !dbg !1105
    #dbg_value(i32 %bits_to_shift.0, !1074, !DIExpression(), !1071)
    #dbg_value(i32 %words_to_shift.0, !1075, !DIExpression(), !1071)
    #dbg_value(i32 %i2.0, !1106, !DIExpression(), !1107)
  %exitcond8.not = icmp eq i32 %i2.0, 12, !dbg !1108
  br i1 %exitcond8.not, label %for.cond107, label %for.cond6, !dbg !1110

for.cond6:                                        ; preds = %for.cond3, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 11, %for.cond3 ], !dbg !1111
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond3 ], !dbg !1071
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond3 ], !dbg !1071
    #dbg_value(i32 %bits_to_shift.1, !1074, !DIExpression(), !1071)
    #dbg_value(i32 %words_to_shift.1, !1075, !DIExpression(), !1071)
    #dbg_value(i32 %j.0, !1114, !DIExpression(), !1115)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1116
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1118

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 864, !dbg !1119
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1119
    #dbg_value(ptr %add.ptr, !1121, !DIExpression(), !1071)
    #dbg_value(i32 0, !1122, !DIExpression(), !1124)
  br label %for.cond11, !dbg !1125

for.cond11:                                       ; preds = %for.inc44.1, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45.1, %for.inc44.1 ], !dbg !1126
    #dbg_value(i32 %c.0, !1122, !DIExpression(), !1124)
  %exitcond5.not = icmp eq i32 %c.0, 12, !dbg !1127
  br i1 %exitcond5.not, label %for.end46, label %for.cond14, !dbg !1129

for.cond14:                                       ; preds = %for.cond11, %for.inc41.1
  %k.0 = phi i32 [ %inc42.1, %for.inc41.1 ], [ 0, %for.cond11 ], !dbg !1130
    #dbg_value(i32 %k.0, !1133, !DIExpression(), !1134)
  %13 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1135
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 72, !dbg !1135
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %13, i32 %arrayidx19.idx, !dbg !1135
  %14 = load i64, ptr %arrayidx19, align 8, !dbg !1135
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1138
  %shl20 = shl i64 %14, %sh_prom, !dbg !1138
  %mul21 = mul nuw nsw i32 %i2.0, 12, !dbg !1139
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1140
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1141
  %mul24 = mul i32 %add23, 144, !dbg !1142
  %add25 = add i32 %add22, %mul24, !dbg !1143
  %arrayidx26 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25, !dbg !1144
  %15 = load i64, ptr %arrayidx26, align 8, !dbg !1145
  %xor = xor i64 %15, %shl20, !dbg !1145
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1145
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1146

if.then:                                          ; preds = %for.cond14
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1150
  %shr = lshr i64 %14, %sh_prom32, !dbg !1150
  %mul33 = mul nuw nsw i32 %i2.0, 12, !dbg !1151
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1152
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1153
  %16 = mul i32 %add35, 144, !dbg !1154
  %mul37 = add i32 %16, 144, !dbg !1154
  %add38 = add i32 %add34, %mul37, !dbg !1155
  %arrayidx39 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38, !dbg !1156
  %17 = load i64, ptr %arrayidx39, align 8, !dbg !1157
  %xor40 = xor i64 %17, %shr, !dbg !1157
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1157
  br label %for.inc41, !dbg !1158

for.inc41:                                        ; preds = %for.cond14, %if.then
  %inc42 = or disjoint i32 %k.0, 1, !dbg !1159
    #dbg_value(i32 %inc42, !1133, !DIExpression(), !1134)
  %exitcond4.1.not = icmp eq i32 %k.0, 8, !dbg !1160
  br i1 %exitcond4.1.not, label %for.inc44, label %for.body16.1, !dbg !1161

for.body16.1:                                     ; preds = %for.inc41
  %18 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %inc42, !dbg !1135
  %arrayidx19.idx.1 = mul nuw nsw i32 %c.0, 72, !dbg !1135
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %18, i32 %arrayidx19.idx.1, !dbg !1135
  %19 = load i64, ptr %arrayidx19.1, align 8, !dbg !1135
  %sh_prom.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1138
  %shl20.1 = shl i64 %19, %sh_prom.1, !dbg !1138
  %mul21.1 = mul nuw nsw i32 %i2.0, 12, !dbg !1139
  %add22.1 = add nuw nsw i32 %mul21.1, %c.0, !dbg !1140
  %add23.1 = add nsw i32 %inc42, %words_to_shift.1, !dbg !1141
  %mul24.1 = mul i32 %add23.1, 144, !dbg !1142
  %add25.1 = add i32 %add22.1, %mul24.1, !dbg !1143
  %arrayidx26.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25.1, !dbg !1144
  %20 = load i64, ptr %arrayidx26.1, align 8, !dbg !1145
  %xor.1 = xor i64 %20, %shl20.1, !dbg !1145
  store i64 %xor.1, ptr %arrayidx26.1, align 8, !dbg !1145
  %cmp27.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27.1, label %if.then.1, label %for.inc41.1, !dbg !1146

if.then.1:                                        ; preds = %for.body16.1
  %sub31.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.1 = zext nneg i32 %sub31.1 to i64, !dbg !1150
  %shr.1 = lshr i64 %19, %sh_prom32.1, !dbg !1150
  %mul33.1 = mul nuw nsw i32 %i2.0, 12, !dbg !1151
  %add34.1 = add nuw nsw i32 %mul33.1, %c.0, !dbg !1152
  %add35.1 = add nsw i32 %inc42, %words_to_shift.1, !dbg !1153
  %21 = mul i32 %add35.1, 144, !dbg !1154
  %mul37.1 = add i32 %21, 144, !dbg !1154
  %add38.1 = add i32 %add34.1, %mul37.1, !dbg !1155
  %arrayidx39.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38.1, !dbg !1156
  %22 = load i64, ptr %arrayidx39.1, align 8, !dbg !1157
  %xor40.1 = xor i64 %22, %shr.1, !dbg !1157
  store i64 %xor40.1, ptr %arrayidx39.1, align 8, !dbg !1157
  br label %for.inc41.1, !dbg !1158

for.inc41.1:                                      ; preds = %if.then.1, %for.body16.1
  %inc42.1 = add nuw nsw i32 %k.0, 2, !dbg !1159
    #dbg_value(i32 %inc42.1, !1133, !DIExpression(), !1134)
  br label %for.cond14, !dbg !1162, !llvm.loop !1163

for.inc44:                                        ; preds = %for.inc41
  %inc45 = or disjoint i32 %c.0, 1, !dbg !1165
    #dbg_value(i32 %inc45, !1122, !DIExpression(), !1124)
  br label %for.cond14.1, !dbg !1161

for.cond14.1:                                     ; preds = %for.inc41.1.1, %for.inc44
  %k.0.1 = phi i32 [ 0, %for.inc44 ], [ %inc42.1.1, %for.inc41.1.1 ], !dbg !1130
    #dbg_value(i32 %k.0.1, !1133, !DIExpression(), !1134)
  %23 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0.1, !dbg !1135
  %arrayidx19.idx.113 = mul nuw nsw i32 %inc45, 72, !dbg !1135
  %arrayidx19.114 = getelementptr inbounds nuw i8, ptr %23, i32 %arrayidx19.idx.113, !dbg !1135
  %24 = load i64, ptr %arrayidx19.114, align 8, !dbg !1135
  %sh_prom.115 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1138
  %shl20.116 = shl i64 %24, %sh_prom.115, !dbg !1138
  %mul21.117 = mul nuw nsw i32 %i2.0, 12, !dbg !1139
  %add22.118 = add nuw nsw i32 %mul21.117, %inc45, !dbg !1140
  %add23.119 = add nsw i32 %k.0.1, %words_to_shift.1, !dbg !1141
  %mul24.120 = mul i32 %add23.119, 144, !dbg !1142
  %add25.121 = add i32 %add22.118, %mul24.120, !dbg !1143
  %arrayidx26.122 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25.121, !dbg !1144
  %25 = load i64, ptr %arrayidx26.122, align 8, !dbg !1145
  %xor.123 = xor i64 %25, %shl20.116, !dbg !1145
  store i64 %xor.123, ptr %arrayidx26.122, align 8, !dbg !1145
  %cmp27.124 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27.124, label %if.then.136, label %for.inc41.138, !dbg !1146

if.then.136:                                      ; preds = %for.cond14.1
  %sub31.126 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.127 = zext nneg i32 %sub31.126 to i64, !dbg !1150
  %shr.128 = lshr i64 %24, %sh_prom32.127, !dbg !1150
  %mul33.129 = mul nuw nsw i32 %i2.0, 12, !dbg !1151
  %add34.130 = add nuw nsw i32 %mul33.129, %inc45, !dbg !1152
  %add35.131 = add nsw i32 %k.0.1, %words_to_shift.1, !dbg !1153
  %26 = mul i32 %add35.131, 144, !dbg !1154
  %mul37.132 = add i32 %26, 144, !dbg !1154
  %add38.133 = add i32 %add34.130, %mul37.132, !dbg !1155
  %arrayidx39.134 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38.133, !dbg !1156
  %27 = load i64, ptr %arrayidx39.134, align 8, !dbg !1157
  %xor40.135 = xor i64 %27, %shr.128, !dbg !1157
  store i64 %xor40.135, ptr %arrayidx39.134, align 8, !dbg !1157
  br label %for.inc41.138, !dbg !1158

for.inc41.138:                                    ; preds = %if.then.136, %for.cond14.1
  %inc42.137 = or disjoint i32 %k.0.1, 1, !dbg !1159
    #dbg_value(i32 %inc42.137, !1133, !DIExpression(), !1134)
  %exitcond4.1.1.not = icmp eq i32 %k.0.1, 8, !dbg !1160
  br i1 %exitcond4.1.1.not, label %for.inc44.1, label %for.body16.1.1, !dbg !1161

for.inc44.1:                                      ; preds = %for.inc41.138
  %inc45.1 = add nuw nsw i32 %c.0, 2, !dbg !1165
    #dbg_value(i32 %inc45.1, !1122, !DIExpression(), !1124)
  br label %for.cond11, !dbg !1166, !llvm.loop !1167

for.body16.1.1:                                   ; preds = %for.inc41.138
  %28 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %inc42.137, !dbg !1135
  %arrayidx19.idx.1.1 = mul nuw nsw i32 %inc45, 72, !dbg !1135
  %arrayidx19.1.1 = getelementptr inbounds nuw i8, ptr %28, i32 %arrayidx19.idx.1.1, !dbg !1135
  %29 = load i64, ptr %arrayidx19.1.1, align 8, !dbg !1135
  %sh_prom.1.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1138
  %shl20.1.1 = shl i64 %29, %sh_prom.1.1, !dbg !1138
  %mul21.1.1 = mul nuw nsw i32 %i2.0, 12, !dbg !1139
  %add22.1.1 = add nuw nsw i32 %mul21.1.1, %inc45, !dbg !1140
  %add23.1.1 = add nsw i32 %inc42.137, %words_to_shift.1, !dbg !1141
  %mul24.1.1 = mul i32 %add23.1.1, 144, !dbg !1142
  %add25.1.1 = add i32 %add22.1.1, %mul24.1.1, !dbg !1143
  %arrayidx26.1.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25.1.1, !dbg !1144
  %30 = load i64, ptr %arrayidx26.1.1, align 8, !dbg !1145
  %xor.1.1 = xor i64 %30, %shl20.1.1, !dbg !1145
  store i64 %xor.1.1, ptr %arrayidx26.1.1, align 8, !dbg !1145
  %cmp27.1.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27.1.1, label %if.then.1.1, label %for.inc41.1.1, !dbg !1146

if.then.1.1:                                      ; preds = %for.body16.1.1
  %sub31.1.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.1.1 = zext nneg i32 %sub31.1.1 to i64, !dbg !1150
  %shr.1.1 = lshr i64 %29, %sh_prom32.1.1, !dbg !1150
  %mul33.1.1 = mul nuw nsw i32 %i2.0, 12, !dbg !1151
  %add34.1.1 = add nuw nsw i32 %mul33.1.1, %inc45, !dbg !1152
  %add35.1.1 = add nsw i32 %inc42.137, %words_to_shift.1, !dbg !1153
  %31 = mul i32 %add35.1.1, 144, !dbg !1154
  %mul37.1.1 = add i32 %31, 144, !dbg !1154
  %add38.1.1 = add i32 %add34.1.1, %mul37.1.1, !dbg !1155
  %arrayidx39.1.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38.1.1, !dbg !1156
  %32 = load i64, ptr %arrayidx39.1.1, align 8, !dbg !1157
  %xor40.1.1 = xor i64 %32, %shr.1.1, !dbg !1157
  store i64 %xor40.1.1, ptr %arrayidx39.1.1, align 8, !dbg !1157
  br label %for.inc41.1.1, !dbg !1158

for.inc41.1.1:                                    ; preds = %if.then.1.1, %for.body16.1.1
  %inc42.1.1 = add nuw nsw i32 %k.0.1, 2, !dbg !1159
    #dbg_value(i32 %inc42.1.1, !1133, !DIExpression(), !1134)
  br label %for.cond14.1, !dbg !1162, !llvm.loop !1163

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1169
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1169

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 864, !dbg !1171
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1171
    #dbg_value(ptr %add.ptr51, !1173, !DIExpression(), !1071)
    #dbg_value(i32 0, !1174, !DIExpression(), !1176)
  br label %for.cond53, !dbg !1177

for.cond53:                                       ; preds = %for.inc92.1, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93.1, %for.inc92.1 ], !dbg !1178
    #dbg_value(i32 %c52.0, !1174, !DIExpression(), !1176)
  %exitcond7.not = icmp eq i32 %c52.0, 12, !dbg !1179
  br i1 %exitcond7.not, label %if.end95, label %for.cond57, !dbg !1181

for.cond57:                                       ; preds = %for.cond53, %for.inc89.1
  %k56.0 = phi i32 [ %inc90.1, %for.inc89.1 ], [ 0, %for.cond53 ], !dbg !1182
    #dbg_value(i32 %k56.0, !1185, !DIExpression(), !1186)
  %33 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1187
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1187
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %33, i32 %arrayidx62.idx, !dbg !1187
  %34 = load i64, ptr %arrayidx62, align 8, !dbg !1187
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1190
  %shl64 = shl i64 %34, %sh_prom63, !dbg !1190
  %mul65 = mul nsw i32 %j.0, 12, !dbg !1191
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1192
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1193
  %mul68 = mul i32 %add67, 144, !dbg !1194
  %add69 = add i32 %add66, %mul68, !dbg !1195
  %arrayidx70 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69, !dbg !1196
  %35 = load i64, ptr %arrayidx70, align 8, !dbg !1197
  %xor71 = xor i64 %35, %shl64, !dbg !1197
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1197
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1198
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1198

if.then73:                                        ; preds = %for.cond57
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1200
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1202
  %shr79 = lshr i64 %34, %sh_prom78, !dbg !1202
  %mul80 = mul nsw i32 %j.0, 12, !dbg !1203
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1204
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1205
  %36 = mul i32 %add82, 144, !dbg !1206
  %mul84 = add i32 %36, 144, !dbg !1206
  %add85 = add i32 %add81, %mul84, !dbg !1207
  %arrayidx86 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85, !dbg !1208
  %37 = load i64, ptr %arrayidx86, align 8, !dbg !1209
  %xor87 = xor i64 %37, %shr79, !dbg !1209
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1209
  br label %for.inc89, !dbg !1210

for.inc89:                                        ; preds = %for.cond57, %if.then73
  %inc90 = or disjoint i32 %k56.0, 1, !dbg !1211
    #dbg_value(i32 %inc90, !1185, !DIExpression(), !1186)
  %exitcond6.1.not = icmp eq i32 %k56.0, 8, !dbg !1212
  br i1 %exitcond6.1.not, label %for.inc92, label %for.body59.1, !dbg !1213

for.body59.1:                                     ; preds = %for.inc89
  %38 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %inc90, !dbg !1187
  %arrayidx62.idx.1 = mul nuw nsw i32 %c52.0, 72, !dbg !1187
  %arrayidx62.1 = getelementptr inbounds nuw i8, ptr %38, i32 %arrayidx62.idx.1, !dbg !1187
  %39 = load i64, ptr %arrayidx62.1, align 8, !dbg !1187
  %sh_prom63.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1190
  %shl64.1 = shl i64 %39, %sh_prom63.1, !dbg !1190
  %mul65.1 = mul nsw i32 %j.0, 12, !dbg !1191
  %add66.1 = add nsw i32 %mul65.1, %c52.0, !dbg !1192
  %add67.1 = add nsw i32 %inc90, %words_to_shift.1, !dbg !1193
  %mul68.1 = mul i32 %add67.1, 144, !dbg !1194
  %add69.1 = add i32 %add66.1, %mul68.1, !dbg !1195
  %arrayidx70.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69.1, !dbg !1196
  %40 = load i64, ptr %arrayidx70.1, align 8, !dbg !1197
  %xor71.1 = xor i64 %40, %shl64.1, !dbg !1197
  store i64 %xor71.1, ptr %arrayidx70.1, align 8, !dbg !1197
  %cmp72.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1198
  br i1 %cmp72.1, label %if.then73.1, label %for.inc89.1, !dbg !1198

if.then73.1:                                      ; preds = %for.body59.1
  %sub77.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1200
  %sh_prom78.1 = zext nneg i32 %sub77.1 to i64, !dbg !1202
  %shr79.1 = lshr i64 %39, %sh_prom78.1, !dbg !1202
  %mul80.1 = mul nsw i32 %j.0, 12, !dbg !1203
  %add81.1 = add nsw i32 %mul80.1, %c52.0, !dbg !1204
  %add82.1 = add nsw i32 %inc90, %words_to_shift.1, !dbg !1205
  %41 = mul i32 %add82.1, 144, !dbg !1206
  %mul84.1 = add i32 %41, 144, !dbg !1206
  %add85.1 = add i32 %add81.1, %mul84.1, !dbg !1207
  %arrayidx86.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85.1, !dbg !1208
  %42 = load i64, ptr %arrayidx86.1, align 8, !dbg !1209
  %xor87.1 = xor i64 %42, %shr79.1, !dbg !1209
  store i64 %xor87.1, ptr %arrayidx86.1, align 8, !dbg !1209
  br label %for.inc89.1, !dbg !1210

for.inc89.1:                                      ; preds = %if.then73.1, %for.body59.1
  %inc90.1 = add nuw nsw i32 %k56.0, 2, !dbg !1211
    #dbg_value(i32 %inc90.1, !1185, !DIExpression(), !1186)
  br label %for.cond57, !dbg !1214, !llvm.loop !1215

for.inc92:                                        ; preds = %for.inc89
  %inc93 = or disjoint i32 %c52.0, 1, !dbg !1217
    #dbg_value(i32 %inc93, !1174, !DIExpression(), !1176)
  br label %for.cond57.1, !dbg !1213

for.cond57.1:                                     ; preds = %for.inc89.1.1, %for.inc92
  %k56.0.1 = phi i32 [ 0, %for.inc92 ], [ %inc90.1.1, %for.inc89.1.1 ], !dbg !1182
    #dbg_value(i32 %k56.0.1, !1185, !DIExpression(), !1186)
  %43 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0.1, !dbg !1187
  %arrayidx62.idx.139 = mul nuw nsw i32 %inc93, 72, !dbg !1187
  %arrayidx62.140 = getelementptr inbounds nuw i8, ptr %43, i32 %arrayidx62.idx.139, !dbg !1187
  %44 = load i64, ptr %arrayidx62.140, align 8, !dbg !1187
  %sh_prom63.141 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1190
  %shl64.142 = shl i64 %44, %sh_prom63.141, !dbg !1190
  %mul65.143 = mul nsw i32 %j.0, 12, !dbg !1191
  %add66.144 = add nsw i32 %mul65.143, %inc93, !dbg !1192
  %add67.145 = add nsw i32 %k56.0.1, %words_to_shift.1, !dbg !1193
  %mul68.146 = mul i32 %add67.145, 144, !dbg !1194
  %add69.147 = add i32 %add66.144, %mul68.146, !dbg !1195
  %arrayidx70.148 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69.147, !dbg !1196
  %45 = load i64, ptr %arrayidx70.148, align 8, !dbg !1197
  %xor71.149 = xor i64 %45, %shl64.142, !dbg !1197
  store i64 %xor71.149, ptr %arrayidx70.148, align 8, !dbg !1197
  %cmp72.150 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1198
  br i1 %cmp72.150, label %if.then73.162, label %for.inc89.164, !dbg !1198

if.then73.162:                                    ; preds = %for.cond57.1
  %sub77.152 = sub nsw i32 64, %bits_to_shift.1, !dbg !1200
  %sh_prom78.153 = zext nneg i32 %sub77.152 to i64, !dbg !1202
  %shr79.154 = lshr i64 %44, %sh_prom78.153, !dbg !1202
  %mul80.155 = mul nsw i32 %j.0, 12, !dbg !1203
  %add81.156 = add nsw i32 %mul80.155, %inc93, !dbg !1204
  %add82.157 = add nsw i32 %k56.0.1, %words_to_shift.1, !dbg !1205
  %46 = mul i32 %add82.157, 144, !dbg !1206
  %mul84.158 = add i32 %46, 144, !dbg !1206
  %add85.159 = add i32 %add81.156, %mul84.158, !dbg !1207
  %arrayidx86.160 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85.159, !dbg !1208
  %47 = load i64, ptr %arrayidx86.160, align 8, !dbg !1209
  %xor87.161 = xor i64 %47, %shr79.154, !dbg !1209
  store i64 %xor87.161, ptr %arrayidx86.160, align 8, !dbg !1209
  br label %for.inc89.164, !dbg !1210

for.inc89.164:                                    ; preds = %if.then73.162, %for.cond57.1
  %inc90.163 = or disjoint i32 %k56.0.1, 1, !dbg !1211
    #dbg_value(i32 %inc90.163, !1185, !DIExpression(), !1186)
  %exitcond6.1.1.not = icmp eq i32 %k56.0.1, 8, !dbg !1212
  br i1 %exitcond6.1.1.not, label %for.inc92.1, label %for.body59.1.1, !dbg !1213

for.inc92.1:                                      ; preds = %for.inc89.164
  %inc93.1 = add nuw nsw i32 %c52.0, 2, !dbg !1217
    #dbg_value(i32 %inc93.1, !1174, !DIExpression(), !1176)
  br label %for.cond53, !dbg !1218, !llvm.loop !1219

for.body59.1.1:                                   ; preds = %for.inc89.164
  %48 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %inc90.163, !dbg !1187
  %arrayidx62.idx.1.1 = mul nuw nsw i32 %inc93, 72, !dbg !1187
  %arrayidx62.1.1 = getelementptr inbounds nuw i8, ptr %48, i32 %arrayidx62.idx.1.1, !dbg !1187
  %49 = load i64, ptr %arrayidx62.1.1, align 8, !dbg !1187
  %sh_prom63.1.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1190
  %shl64.1.1 = shl i64 %49, %sh_prom63.1.1, !dbg !1190
  %mul65.1.1 = mul nsw i32 %j.0, 12, !dbg !1191
  %add66.1.1 = add nsw i32 %mul65.1.1, %inc93, !dbg !1192
  %add67.1.1 = add nsw i32 %inc90.163, %words_to_shift.1, !dbg !1193
  %mul68.1.1 = mul i32 %add67.1.1, 144, !dbg !1194
  %add69.1.1 = add i32 %add66.1.1, %mul68.1.1, !dbg !1195
  %arrayidx70.1.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69.1.1, !dbg !1196
  %50 = load i64, ptr %arrayidx70.1.1, align 8, !dbg !1197
  %xor71.1.1 = xor i64 %50, %shl64.1.1, !dbg !1197
  store i64 %xor71.1.1, ptr %arrayidx70.1.1, align 8, !dbg !1197
  %cmp72.1.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1198
  br i1 %cmp72.1.1, label %if.then73.1.1, label %for.inc89.1.1, !dbg !1198

if.then73.1.1:                                    ; preds = %for.body59.1.1
  %sub77.1.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1200
  %sh_prom78.1.1 = zext nneg i32 %sub77.1.1 to i64, !dbg !1202
  %shr79.1.1 = lshr i64 %49, %sh_prom78.1.1, !dbg !1202
  %mul80.1.1 = mul nsw i32 %j.0, 12, !dbg !1203
  %add81.1.1 = add nsw i32 %mul80.1.1, %inc93, !dbg !1204
  %add82.1.1 = add nsw i32 %inc90.163, %words_to_shift.1, !dbg !1205
  %51 = mul i32 %add82.1.1, 144, !dbg !1206
  %mul84.1.1 = add i32 %51, 144, !dbg !1206
  %add85.1.1 = add i32 %add81.1.1, %mul84.1.1, !dbg !1207
  %arrayidx86.1.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85.1.1, !dbg !1208
  %52 = load i64, ptr %arrayidx86.1.1, align 8, !dbg !1209
  %xor87.1.1 = xor i64 %52, %shr79.1.1, !dbg !1209
  store i64 %xor87.1.1, ptr %arrayidx86.1.1, align 8, !dbg !1209
  br label %for.inc89.1.1, !dbg !1210

for.inc89.1.1:                                    ; preds = %if.then73.1.1, %for.body59.1.1
  %inc90.1.1 = add nuw nsw i32 %k56.0.1, 2, !dbg !1211
    #dbg_value(i32 %inc90.1.1, !1185, !DIExpression(), !1186)
  br label %for.cond57.1, !dbg !1214, !llvm.loop !1215

if.end95:                                         ; preds = %for.cond53, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1221
    #dbg_value(i32 %add96, !1074, !DIExpression(), !1071)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1222
  %inc99 = zext i1 %cmp97 to i32, !dbg !1222
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1222
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1222
    #dbg_value(i32 %spec.select3, !1074, !DIExpression(), !1071)
    #dbg_value(i32 %spec.select, !1075, !DIExpression(), !1071)
  %dec = add nsw i32 %j.0, -1, !dbg !1224
    #dbg_value(i32 %dec, !1114, !DIExpression(), !1115)
  br label %for.cond6, !dbg !1225, !llvm.loop !1226

for.inc103:                                       ; preds = %for.cond6
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1228
    #dbg_value(i32 %inc104, !1106, !DIExpression(), !1107)
  br label %for.cond3, !dbg !1229, !llvm.loop !1230

for.cond107:                                      ; preds = %for.cond3, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond3 ], !dbg !1232
    #dbg_value(i32 %c106.0, !1234, !DIExpression(), !1235)
  %cmp109 = icmp samesign ult i32 %c106.0, 2016, !dbg !1236
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1238

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1239
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1241
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1242
    #dbg_value(i32 %add113, !1234, !DIExpression(), !1235)
  br label %for.cond107, !dbg !1243, !llvm.loop !1244

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1246, !DIExpression(), !1250)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1250
    #dbg_value(i32 0, !1251, !DIExpression(), !1253)
  br label %for.cond116, !dbg !1254

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138.3, %for.body118 ], !dbg !1255
    #dbg_value(i32 %i115.0, !1251, !DIExpression(), !1253)
  %exitcond9.not = icmp eq i32 %i115.0, 4, !dbg !1256
  br i1 %exitcond9.not, label %for.cond141, label %for.body118, !dbg !1258

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1259
  %53 = load i8, ptr %arrayidx119, align 1, !dbg !1259
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %53, i8 noundef zeroext 1) #6, !dbg !1261
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1262
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1263
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1264
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %53, i8 noundef zeroext 2) #6, !dbg !1265
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1266
  %add125 = or disjoint i32 %mul124, 1, !dbg !1267
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1268
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1269
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %53, i8 noundef zeroext 4) #6, !dbg !1270
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1271
  %add130 = or disjoint i32 %mul129, 2, !dbg !1272
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1273
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1274
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %53, i8 noundef zeroext 8) #6, !dbg !1275
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1276
  %add135 = or disjoint i32 %mul134, 3, !dbg !1277
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1278
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1279
    #dbg_value(i32 %i115.0, !1251, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1253)
  %inc138 = or disjoint i32 %i115.0, 1, !dbg !1280
    #dbg_value(i32 %inc138, !1251, !DIExpression(), !1253)
  %arrayidx119.1 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138, !dbg !1259
  %54 = load i8, ptr %arrayidx119.1, align 1, !dbg !1259
  %call.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %54, i8 noundef zeroext 1) #6, !dbg !1261
  %mul120.1 = shl nuw nsw i32 %inc138, 2, !dbg !1262
  %arrayidx121.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.1, !dbg !1263
  store i8 %call.1, ptr %arrayidx121.1, align 1, !dbg !1264
  %call123.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %54, i8 noundef zeroext 2) #6, !dbg !1265
  %mul124.1 = shl nuw nsw i32 %inc138, 2, !dbg !1266
  %add125.1 = or disjoint i32 %mul124.1, 1, !dbg !1267
  %arrayidx126.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.1, !dbg !1268
  store i8 %call123.1, ptr %arrayidx126.1, align 1, !dbg !1269
  %call128.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %54, i8 noundef zeroext 4) #6, !dbg !1270
  %mul129.1 = shl nuw nsw i32 %inc138, 2, !dbg !1271
  %add130.1 = or disjoint i32 %mul129.1, 2, !dbg !1272
  %arrayidx131.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.1, !dbg !1273
  store i8 %call128.1, ptr %arrayidx131.1, align 1, !dbg !1274
  %call133.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %54, i8 noundef zeroext 8) #6, !dbg !1275
  %mul134.1 = shl nuw nsw i32 %inc138, 2, !dbg !1276
  %add135.1 = or disjoint i32 %mul134.1, 3, !dbg !1277
  %arrayidx136.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.1, !dbg !1278
  store i8 %call133.1, ptr %arrayidx136.1, align 1, !dbg !1279
    #dbg_value(i32 %i115.0, !1251, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1253)
  %inc138.1 = or disjoint i32 %i115.0, 2, !dbg !1280
    #dbg_value(i32 %inc138.1, !1251, !DIExpression(), !1253)
  %arrayidx119.2 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138.1, !dbg !1259
  %55 = load i8, ptr %arrayidx119.2, align 1, !dbg !1259
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %55, i8 noundef zeroext 1) #6, !dbg !1261
  %mul120.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1262
  %arrayidx121.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.2, !dbg !1263
  store i8 %call.2, ptr %arrayidx121.2, align 1, !dbg !1264
  %call123.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %55, i8 noundef zeroext 2) #6, !dbg !1265
  %mul124.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1266
  %add125.2 = or disjoint i32 %mul124.2, 1, !dbg !1267
  %arrayidx126.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.2, !dbg !1268
  store i8 %call123.2, ptr %arrayidx126.2, align 1, !dbg !1269
  %call128.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %55, i8 noundef zeroext 4) #6, !dbg !1270
  %mul129.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1271
  %add130.2 = or disjoint i32 %mul129.2, 2, !dbg !1272
  %arrayidx131.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.2, !dbg !1273
  store i8 %call128.2, ptr %arrayidx131.2, align 1, !dbg !1274
  %call133.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %55, i8 noundef zeroext 8) #6, !dbg !1275
  %mul134.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1276
  %add135.2 = or disjoint i32 %mul134.2, 3, !dbg !1277
  %arrayidx136.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.2, !dbg !1278
  store i8 %call133.2, ptr %arrayidx136.2, align 1, !dbg !1279
    #dbg_value(i32 %i115.0, !1251, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1253)
  %inc138.2 = or disjoint i32 %i115.0, 3, !dbg !1280
    #dbg_value(i32 %inc138.2, !1251, !DIExpression(), !1253)
  %arrayidx119.3 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138.2, !dbg !1259
  %56 = load i8, ptr %arrayidx119.3, align 1, !dbg !1259
  %call.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %56, i8 noundef zeroext 1) #6, !dbg !1261
  %mul120.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1262
  %arrayidx121.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.3, !dbg !1263
  store i8 %call.3, ptr %arrayidx121.3, align 1, !dbg !1264
  %call123.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %56, i8 noundef zeroext 2) #6, !dbg !1265
  %mul124.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1266
  %add125.3 = or disjoint i32 %mul124.3, 1, !dbg !1267
  %arrayidx126.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.3, !dbg !1268
  store i8 %call123.3, ptr %arrayidx126.3, align 1, !dbg !1269
  %call128.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %56, i8 noundef zeroext 4) #6, !dbg !1270
  %mul129.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1271
  %add130.3 = or disjoint i32 %mul129.3, 2, !dbg !1272
  %arrayidx131.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.3, !dbg !1273
  store i8 %call128.3, ptr %arrayidx131.3, align 1, !dbg !1274
  %call133.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %56, i8 noundef zeroext 8) #6, !dbg !1275
  %mul134.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1276
  %add135.3 = or disjoint i32 %mul134.3, 3, !dbg !1277
  %arrayidx136.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.3, !dbg !1278
  store i8 %call133.3, ptr %arrayidx136.3, align 1, !dbg !1279
  %inc138.3 = add nuw nsw i32 %i115.0, 4, !dbg !1280
    #dbg_value(i32 %inc138.3, !1251, !DIExpression(), !1253)
  br label %for.cond116, !dbg !1281, !llvm.loop !1282

for.cond141:                                      ; preds = %for.cond116, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond116 ], !dbg !1284
    #dbg_value(i32 %c140.0, !1286, !DIExpression(), !1287)
  %cmp142 = icmp samesign ult i32 %c140.0, 144, !dbg !1288
  br i1 %cmp142, label %for.cond144, label %for.cond207, !dbg !1290

for.cond144:                                      ; preds = %for.cond141, %for.body146
  %r.0 = phi i32 [ %inc201, %for.body146 ], [ 142, %for.cond141 ], !dbg !1291
    #dbg_value(i32 %r.0, !1294, !DIExpression(), !1295)
  %exitcond11.not = icmp eq i32 %r.0, 220, !dbg !1296
  br i1 %exitcond11.not, label %for.inc203, label %for.body146, !dbg !1298

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1299
  %mul147 = mul nuw nsw i32 %div1, 144, !dbg !1301
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1302
  %rem = and i32 %r.0, 15, !dbg !1303
  %add149 = or disjoint i32 %add148, %rem, !dbg !1304
    #dbg_value(i32 %add149, !1305, !DIExpression(), !1306)
  %arrayidx150 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1307
  %57 = load i64, ptr %arrayidx150, align 8, !dbg !1307
  %and151 = and i64 %57, 1229782938247303441, !dbg !1308
    #dbg_value(i64 %and151, !1309, !DIExpression(), !1306)
  %shr153 = lshr i64 %57, 1, !dbg !1310
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1311
    #dbg_value(i64 %and154, !1312, !DIExpression(), !1306)
  %shr156 = lshr i64 %57, 2, !dbg !1313
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1314
    #dbg_value(i64 %and157, !1315, !DIExpression(), !1306)
  %arrayidx158 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1316
  %58 = load i64, ptr %arrayidx158, align 8, !dbg !1316
  %shr159 = lshr i64 %58, 3, !dbg !1317
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1318
    #dbg_value(i64 %and160, !1319, !DIExpression(), !1306)
    #dbg_value(i32 0, !1320, !DIExpression(), !1322)
    #dbg_value(i32 0, !1320, !DIExpression(), !1322)
  %59 = load i8, ptr %tab, align 1, !dbg !1323
  %conv = zext i8 %59 to i64, !dbg !1323
  %mul167 = mul i64 %and151, %conv, !dbg !1326
  %arrayidx170 = getelementptr inbounds nuw i8, ptr %tab, i32 1, !dbg !1327
  %60 = load i8, ptr %arrayidx170, align 1, !dbg !1327
  %conv171 = zext i8 %60 to i64, !dbg !1327
  %mul172 = mul i64 %and154, %conv171, !dbg !1328
  %xor173 = xor i64 %mul167, %mul172, !dbg !1329
  %arrayidx176 = getelementptr inbounds nuw i8, ptr %tab, i32 2, !dbg !1330
  %61 = load i8, ptr %arrayidx176, align 1, !dbg !1330
  %conv177 = zext i8 %61 to i64, !dbg !1330
  %mul178 = mul i64 %and157, %conv177, !dbg !1331
  %xor179 = xor i64 %xor173, %mul178, !dbg !1332
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %tab, i32 3, !dbg !1333
  %62 = load i8, ptr %arrayidx182, align 1, !dbg !1333
  %conv183 = zext i8 %62 to i64, !dbg !1333
  %mul184 = mul i64 %and160, %conv183, !dbg !1334
  %xor185 = xor i64 %xor179, %mul184, !dbg !1335
  %sub187 = add nsw i32 %r.0, -142, !dbg !1336
  %div1882 = lshr i32 %sub187, 4, !dbg !1337
  %mul189 = mul i32 %div1882, 144, !dbg !1338
  %add190 = add i32 %mul189, %c140.0, !dbg !1339
  %sub192 = add nuw nsw i32 %r.0, 2, !dbg !1340
  %rem193 = and i32 %sub192, 15, !dbg !1341
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1342
  %arrayidx195 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194, !dbg !1343
  %63 = load i64, ptr %arrayidx195, align 8, !dbg !1344
  %xor196 = xor i64 %63, %xor185, !dbg !1344
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1344
    #dbg_value(i32 1, !1320, !DIExpression(), !1322)
  %arrayidx166.1 = getelementptr inbounds nuw i8, ptr %tab, i32 4, !dbg !1323
  %64 = load i8, ptr %arrayidx166.1, align 1, !dbg !1323
  %conv.1 = zext i8 %64 to i64, !dbg !1323
  %mul167.1 = mul i64 %and151, %conv.1, !dbg !1326
  %arrayidx170.1 = getelementptr inbounds nuw i8, ptr %tab, i32 5, !dbg !1327
  %65 = load i8, ptr %arrayidx170.1, align 1, !dbg !1327
  %conv171.1 = zext i8 %65 to i64, !dbg !1327
  %mul172.1 = mul i64 %and154, %conv171.1, !dbg !1328
  %xor173.1 = xor i64 %mul167.1, %mul172.1, !dbg !1329
  %arrayidx176.1 = getelementptr inbounds nuw i8, ptr %tab, i32 6, !dbg !1330
  %66 = load i8, ptr %arrayidx176.1, align 1, !dbg !1330
  %conv177.1 = zext i8 %66 to i64, !dbg !1330
  %mul178.1 = mul i64 %and157, %conv177.1, !dbg !1331
  %xor179.1 = xor i64 %xor173.1, %mul178.1, !dbg !1332
  %arrayidx182.1 = getelementptr inbounds nuw i8, ptr %tab, i32 7, !dbg !1333
  %67 = load i8, ptr %arrayidx182.1, align 1, !dbg !1333
  %conv183.1 = zext i8 %67 to i64, !dbg !1333
  %mul184.1 = mul i64 %and160, %conv183.1, !dbg !1334
  %xor185.1 = xor i64 %xor179.1, %mul184.1, !dbg !1335
  %sub187.1 = add nsw i32 %r.0, -141, !dbg !1336
  %div1882.1 = lshr i32 %sub187.1, 4, !dbg !1337
  %mul189.1 = mul i32 %div1882.1, 144, !dbg !1338
  %add190.1 = add i32 %mul189.1, %c140.0, !dbg !1339
  %sub192.1 = add nuw nsw i32 %r.0, 3, !dbg !1340
  %rem193.1 = and i32 %sub192.1, 15, !dbg !1341
  %add194.1 = or disjoint i32 %add190.1, %rem193.1, !dbg !1342
  %arrayidx195.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194.1, !dbg !1343
  %68 = load i64, ptr %arrayidx195.1, align 8, !dbg !1344
  %xor196.1 = xor i64 %68, %xor185.1, !dbg !1344
  store i64 %xor196.1, ptr %arrayidx195.1, align 8, !dbg !1344
    #dbg_value(i32 2, !1320, !DIExpression(), !1322)
  %arrayidx166.2 = getelementptr inbounds nuw i8, ptr %tab, i32 8, !dbg !1323
  %69 = load i8, ptr %arrayidx166.2, align 1, !dbg !1323
  %conv.2 = zext i8 %69 to i64, !dbg !1323
  %mul167.2 = mul i64 %and151, %conv.2, !dbg !1326
  %arrayidx170.2 = getelementptr inbounds nuw i8, ptr %tab, i32 9, !dbg !1327
  %70 = load i8, ptr %arrayidx170.2, align 1, !dbg !1327
  %conv171.2 = zext i8 %70 to i64, !dbg !1327
  %mul172.2 = mul i64 %and154, %conv171.2, !dbg !1328
  %xor173.2 = xor i64 %mul167.2, %mul172.2, !dbg !1329
  %arrayidx176.2 = getelementptr inbounds nuw i8, ptr %tab, i32 10, !dbg !1330
  %71 = load i8, ptr %arrayidx176.2, align 1, !dbg !1330
  %conv177.2 = zext i8 %71 to i64, !dbg !1330
  %mul178.2 = mul i64 %and157, %conv177.2, !dbg !1331
  %xor179.2 = xor i64 %xor173.2, %mul178.2, !dbg !1332
  %arrayidx182.2 = getelementptr inbounds nuw i8, ptr %tab, i32 11, !dbg !1333
  %72 = load i8, ptr %arrayidx182.2, align 1, !dbg !1333
  %conv183.2 = zext i8 %72 to i64, !dbg !1333
  %mul184.2 = mul i64 %and160, %conv183.2, !dbg !1334
  %xor185.2 = xor i64 %xor179.2, %mul184.2, !dbg !1335
  %sub187.2 = add nsw i32 %r.0, -140, !dbg !1336
  %div1882.2 = lshr i32 %sub187.2, 4, !dbg !1337
  %mul189.2 = mul i32 %div1882.2, 144, !dbg !1338
  %add190.2 = add i32 %mul189.2, %c140.0, !dbg !1339
  %sub192.2 = add nuw nsw i32 %r.0, 4, !dbg !1340
  %rem193.2 = and i32 %sub192.2, 15, !dbg !1341
  %add194.2 = or disjoint i32 %add190.2, %rem193.2, !dbg !1342
  %arrayidx195.2 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194.2, !dbg !1343
  %73 = load i64, ptr %arrayidx195.2, align 8, !dbg !1344
  %xor196.2 = xor i64 %73, %xor185.2, !dbg !1344
  store i64 %xor196.2, ptr %arrayidx195.2, align 8, !dbg !1344
    #dbg_value(i32 3, !1320, !DIExpression(), !1322)
  %arrayidx166.3 = getelementptr inbounds nuw i8, ptr %tab, i32 12, !dbg !1323
  %74 = load i8, ptr %arrayidx166.3, align 1, !dbg !1323
  %conv.3 = zext i8 %74 to i64, !dbg !1323
  %mul167.3 = mul i64 %and151, %conv.3, !dbg !1326
  %arrayidx170.3 = getelementptr inbounds nuw i8, ptr %tab, i32 13, !dbg !1327
  %75 = load i8, ptr %arrayidx170.3, align 1, !dbg !1327
  %conv171.3 = zext i8 %75 to i64, !dbg !1327
  %mul172.3 = mul i64 %and154, %conv171.3, !dbg !1328
  %xor173.3 = xor i64 %mul167.3, %mul172.3, !dbg !1329
  %arrayidx176.3 = getelementptr inbounds nuw i8, ptr %tab, i32 14, !dbg !1330
  %76 = load i8, ptr %arrayidx176.3, align 1, !dbg !1330
  %conv177.3 = zext i8 %76 to i64, !dbg !1330
  %mul178.3 = mul i64 %and157, %conv177.3, !dbg !1331
  %xor179.3 = xor i64 %xor173.3, %mul178.3, !dbg !1332
  %arrayidx182.3 = getelementptr inbounds nuw i8, ptr %tab, i32 15, !dbg !1333
  %77 = load i8, ptr %arrayidx182.3, align 1, !dbg !1333
  %conv183.3 = zext i8 %77 to i64, !dbg !1333
  %mul184.3 = mul i64 %and160, %conv183.3, !dbg !1334
  %xor185.3 = xor i64 %xor179.3, %mul184.3, !dbg !1335
  %sub187.3 = add nsw i32 %r.0, -139, !dbg !1336
  %div1882.3 = lshr i32 %sub187.3, 4, !dbg !1337
  %mul189.3 = mul i32 %div1882.3, 144, !dbg !1338
  %add190.3 = add i32 %mul189.3, %c140.0, !dbg !1339
  %sub192.3 = add nuw nsw i32 %r.0, 5, !dbg !1340
  %rem193.3 = and i32 %sub192.3, 15, !dbg !1341
  %add194.3 = or disjoint i32 %add190.3, %rem193.3, !dbg !1342
  %arrayidx195.3 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194.3, !dbg !1343
  %78 = load i64, ptr %arrayidx195.3, align 8, !dbg !1344
  %xor196.3 = xor i64 %78, %xor185.3, !dbg !1344
  store i64 %xor196.3, ptr %arrayidx195.3, align 8, !dbg !1344
    #dbg_value(i32 4, !1320, !DIExpression(), !1322)
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1345
    #dbg_value(i32 %inc201, !1294, !DIExpression(), !1295)
  br label %for.cond144, !dbg !1346, !llvm.loop !1347

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1349
    #dbg_value(i32 %add204, !1286, !DIExpression(), !1287)
  br label %for.cond141, !dbg !1350, !llvm.loop !1351

for.cond207:                                      ; preds = %for.cond141, %for.inc241
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc241 ], [ 142, %for.cond141 ], !dbg !1353
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond141 ], !dbg !1353
    #dbg_value(i32 %r206.0, !1355, !DIExpression(), !1356)
  %cmp208 = icmp samesign ult i32 %r206.0, 142, !dbg !1357
  br i1 %cmp208, label %for.cond212, label %for.end243, !dbg !1359

for.cond212:                                      ; preds = %for.cond207, %for.inc238.4
  %c211.0 = phi i32 [ %add239.4, %for.inc238.4 ], [ 0, %for.cond207 ], !dbg !1360
    #dbg_value(i32 %c211.0, !1363, !DIExpression(), !1364)
  br label %for.cond217, !dbg !1365

for.cond217:                                      ; preds = %for.cond212, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond212 ], !dbg !1369
    #dbg_value(i32 %i216.0, !1370, !DIExpression(), !1371)
  %exitcond12.not = icmp eq i32 %i216.0, %indvars.iv, !dbg !1372
  br i1 %exitcond12.not, label %for.inc238, label %for.body221, !dbg !1365

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 9, !dbg !1374
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1376
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1377
  %arrayidx226 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225, !dbg !1378
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1379
  %mul228 = mul nuw nsw i32 %add227, 145, !dbg !1380
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1381
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1382
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef %add.ptr230, i32 noundef 16) #6, !dbg !1383
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1384
    #dbg_value(i32 %inc236, !1370, !DIExpression(), !1371)
  br label %for.cond217, !dbg !1385, !llvm.loop !1386

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1388
    #dbg_value(i32 %add239, !1363, !DIExpression(), !1364)
  br label %for.cond217.1, !dbg !1365

for.cond217.1:                                    ; preds = %for.body221.1, %for.inc238
  %i216.0.1 = phi i32 [ %inc236.1, %for.body221.1 ], [ 0, %for.inc238 ], !dbg !1369
    #dbg_value(i32 %i216.0.1, !1370, !DIExpression(), !1371)
  %exitcond12.1.not = icmp eq i32 %i216.0.1, %indvars.iv, !dbg !1372
  br i1 %exitcond12.1.not, label %for.inc238.1, label %for.body221.1, !dbg !1365

for.inc238.1:                                     ; preds = %for.cond217.1
  %add239.1 = add nuw nsw i32 %c211.0, 32, !dbg !1388
    #dbg_value(i32 %add239.1, !1363, !DIExpression(), !1364)
  br label %for.cond217.2, !dbg !1365

for.body221.1:                                    ; preds = %for.cond217.1
  %div223.1 = mul nuw nsw i32 %r206.0, 9, !dbg !1374
  %add224.1 = add nuw nsw i32 %div223.1, %add239, !dbg !1376
  %add225.1 = add nuw nsw i32 %add224.1, %i216.0.1, !dbg !1377
  %arrayidx226.1 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225.1, !dbg !1378
  %add227.1 = add nuw nsw i32 %r206.0, %i216.0.1, !dbg !1379
  %mul228.1 = mul nuw nsw i32 %add227.1, 145, !dbg !1380
  %add.ptr229.1 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.1, !dbg !1381
  %add.ptr230.1 = getelementptr inbounds nuw i8, ptr %add.ptr229.1, i32 %add239, !dbg !1382
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.1, ptr noundef nonnull %add.ptr230.1, i32 noundef 16) #6, !dbg !1383
  %inc236.1 = add nuw nsw i32 %i216.0.1, 1, !dbg !1384
    #dbg_value(i32 %inc236.1, !1370, !DIExpression(), !1371)
  br label %for.cond217.1, !dbg !1385, !llvm.loop !1386

for.cond217.2:                                    ; preds = %for.body221.2, %for.inc238.1
  %i216.0.2 = phi i32 [ %inc236.2, %for.body221.2 ], [ 0, %for.inc238.1 ], !dbg !1369
    #dbg_value(i32 %i216.0.2, !1370, !DIExpression(), !1371)
  %exitcond12.2.not = icmp eq i32 %i216.0.2, %indvars.iv, !dbg !1372
  br i1 %exitcond12.2.not, label %for.inc238.2, label %for.body221.2, !dbg !1365

for.inc238.2:                                     ; preds = %for.cond217.2
  %add239.2 = add nuw nsw i32 %c211.0, 48, !dbg !1388
    #dbg_value(i32 %add239.2, !1363, !DIExpression(), !1364)
  br label %for.cond217.3, !dbg !1365

for.body221.2:                                    ; preds = %for.cond217.2
  %div223.2 = mul nuw nsw i32 %r206.0, 9, !dbg !1374
  %add224.2 = add nuw nsw i32 %div223.2, %add239.1, !dbg !1376
  %add225.2 = add nuw nsw i32 %add224.2, %i216.0.2, !dbg !1377
  %arrayidx226.2 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225.2, !dbg !1378
  %add227.2 = add nuw nsw i32 %r206.0, %i216.0.2, !dbg !1379
  %mul228.2 = mul nuw nsw i32 %add227.2, 145, !dbg !1380
  %add.ptr229.2 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.2, !dbg !1381
  %add.ptr230.2 = getelementptr inbounds nuw i8, ptr %add.ptr229.2, i32 %add239.1, !dbg !1382
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.2, ptr noundef nonnull %add.ptr230.2, i32 noundef 16) #6, !dbg !1383
  %inc236.2 = add nuw nsw i32 %i216.0.2, 1, !dbg !1384
    #dbg_value(i32 %inc236.2, !1370, !DIExpression(), !1371)
  br label %for.cond217.2, !dbg !1385, !llvm.loop !1386

for.cond217.3:                                    ; preds = %for.body221.3, %for.inc238.2
  %i216.0.3 = phi i32 [ %inc236.3, %for.body221.3 ], [ 0, %for.inc238.2 ], !dbg !1369
    #dbg_value(i32 %i216.0.3, !1370, !DIExpression(), !1371)
  %exitcond12.3.not = icmp eq i32 %i216.0.3, %indvars.iv, !dbg !1372
  br i1 %exitcond12.3.not, label %for.inc238.3, label %for.body221.3, !dbg !1365

for.inc238.3:                                     ; preds = %for.cond217.3
  %add239.3 = add nuw nsw i32 %c211.0, 64, !dbg !1388
    #dbg_value(i32 %add239.3, !1363, !DIExpression(), !1364)
  %cmp213.4 = icmp samesign ult i32 %c211.0, 80, !dbg !1389
  br i1 %cmp213.4, label %for.cond217.4, label %for.inc241, !dbg !1390

for.body221.3:                                    ; preds = %for.cond217.3
  %div223.3 = mul nuw nsw i32 %r206.0, 9, !dbg !1374
  %add224.3 = add nuw nsw i32 %div223.3, %add239.2, !dbg !1376
  %add225.3 = add nuw nsw i32 %add224.3, %i216.0.3, !dbg !1377
  %arrayidx226.3 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225.3, !dbg !1378
  %add227.3 = add nuw nsw i32 %r206.0, %i216.0.3, !dbg !1379
  %mul228.3 = mul nuw nsw i32 %add227.3, 145, !dbg !1380
  %add.ptr229.3 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.3, !dbg !1381
  %add.ptr230.3 = getelementptr inbounds nuw i8, ptr %add.ptr229.3, i32 %add239.2, !dbg !1382
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.3, ptr noundef nonnull %add.ptr230.3, i32 noundef 16) #6, !dbg !1383
  %inc236.3 = add nuw nsw i32 %i216.0.3, 1, !dbg !1384
    #dbg_value(i32 %inc236.3, !1370, !DIExpression(), !1371)
  br label %for.cond217.3, !dbg !1385, !llvm.loop !1386

for.cond217.4:                                    ; preds = %for.inc238.3, %for.body221.4
  %i216.0.4 = phi i32 [ %inc236.4, %for.body221.4 ], [ 0, %for.inc238.3 ], !dbg !1369
    #dbg_value(i32 %i216.0.4, !1370, !DIExpression(), !1371)
  %exitcond12.4.not = icmp eq i32 %i216.0.4, %indvars.iv, !dbg !1372
  br i1 %exitcond12.4.not, label %for.inc238.4, label %for.body221.4, !dbg !1365

for.inc238.4:                                     ; preds = %for.cond217.4
  %add239.4 = add nuw nsw i32 %c211.0, 80, !dbg !1388
    #dbg_value(i32 %add239.4, !1363, !DIExpression(), !1364)
  br label %for.cond212, !dbg !1391, !llvm.loop !1392

for.body221.4:                                    ; preds = %for.cond217.4
  %div223.4 = mul nuw nsw i32 %r206.0, 9, !dbg !1374
  %add224.4 = add nuw nsw i32 %div223.4, %add239.3, !dbg !1376
  %add225.4 = add nuw nsw i32 %add224.4, %i216.0.4, !dbg !1377
  %arrayidx226.4 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225.4, !dbg !1378
  %add227.4 = add nuw nsw i32 %r206.0, %i216.0.4, !dbg !1379
  %mul228.4 = mul nuw nsw i32 %add227.4, 145, !dbg !1380
  %add.ptr229.4 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.4, !dbg !1381
  %add.ptr230.4 = getelementptr inbounds nuw i8, ptr %add.ptr229.4, i32 %add239.3, !dbg !1382
  %cmp232.4 = icmp samesign ult i32 %c211.0, 64, !dbg !1394
  %sub234.4 = sub nuw nsw i32 80, %c211.0, !dbg !1394
  %cond.4 = select i1 %cmp232.4, i32 16, i32 %sub234.4, !dbg !1394
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.4, ptr noundef nonnull %add.ptr230.4, i32 noundef %cond.4) #6, !dbg !1383
  %inc236.4 = add nuw nsw i32 %i216.0.4, 1, !dbg !1384
    #dbg_value(i32 %inc236.4, !1370, !DIExpression(), !1371)
  br label %for.cond217.4, !dbg !1385, !llvm.loop !1386

for.inc241:                                       ; preds = %for.inc238.3
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1395
    #dbg_value(i32 %add242, !1355, !DIExpression(), !1356)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1396
  br label %for.cond207, !dbg !1396, !llvm.loop !1397

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1399
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1400 {
entry:
    #dbg_value(ptr %a, !1403, !DIExpression(), !1404)
    #dbg_value(ptr %b, !1405, !DIExpression(), !1404)
    #dbg_value(ptr %c, !1406, !DIExpression(), !1404)
    #dbg_value(i32 %colrow_ab, !1407, !DIExpression(), !1404)
    #dbg_value(i32 %row_a, !1408, !DIExpression(), !1404)
    #dbg_value(i32 %col_b, !1409, !DIExpression(), !1404)
    #dbg_value(i32 0, !1410, !DIExpression(), !1412)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1413
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1413
  br label %for.cond, !dbg !1413

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1414
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1403, !DIExpression(), !1404)
    #dbg_value(ptr %c.addr.0, !1406, !DIExpression(), !1404)
    #dbg_value(i32 %i.0, !1410, !DIExpression(), !1412)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1415
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !1417

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1418
    #dbg_value(i32 %j.0, !1421, !DIExpression(), !1422)
    #dbg_value(ptr %c.addr.1, !1406, !DIExpression(), !1404)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1423
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !1425

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1426
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1428
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1429
  %inc = add nuw i32 %j.0, 1, !dbg !1430
    #dbg_value(i32 %inc, !1421, !DIExpression(), !1422)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1431
    #dbg_value(ptr %incdec.ptr, !1406, !DIExpression(), !1404)
  br label %for.cond1, !dbg !1432, !llvm.loop !1433

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !1435
    #dbg_value(i32 %inc5, !1410, !DIExpression(), !1412)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1436
    #dbg_value(ptr %add.ptr6, !1403, !DIExpression(), !1404)
  br label %for.cond, !dbg !1437, !llvm.loop !1438

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1440
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1441 {
entry:
    #dbg_value(ptr %a, !1444, !DIExpression(), !1445)
    #dbg_value(ptr %b, !1446, !DIExpression(), !1445)
    #dbg_value(ptr %c, !1447, !DIExpression(), !1445)
    #dbg_value(i32 %m, !1448, !DIExpression(), !1445)
    #dbg_value(i32 %n, !1449, !DIExpression(), !1445)
    #dbg_value(i32 0, !1450, !DIExpression(), !1452)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1453
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1453
  br label %for.cond, !dbg !1453

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1454
    #dbg_value(i32 %i.0, !1450, !DIExpression(), !1452)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1455
  br i1 %exitcond2.not, label %for.end13, label %for.cond1, !dbg !1457

for.cond1:                                        ; preds = %for.cond, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1458
    #dbg_value(i32 %j.0, !1461, !DIExpression(), !1462)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1463
  br i1 %exitcond.not, label %for.inc11, label %for.body3, !dbg !1465

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1466
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1468
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1469
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1470
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1471
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1472
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1473
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1474
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1475
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1476
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1477
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1478
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1479
  %inc = add nuw i32 %j.0, 1, !dbg !1480
    #dbg_value(i32 %inc, !1461, !DIExpression(), !1462)
  br label %for.cond1, !dbg !1481, !llvm.loop !1482

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1484
    #dbg_value(i32 %inc12, !1450, !DIExpression(), !1452)
  br label %for.cond, !dbg !1485, !llvm.loop !1486

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1488
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1489 {
entry:
    #dbg_value(ptr %m, !1490, !DIExpression(), !1491)
    #dbg_value(ptr %menc, !1492, !DIExpression(), !1491)
    #dbg_value(i32 %mlen, !1493, !DIExpression(), !1491)
    #dbg_value(i32 0, !1494, !DIExpression(), !1491)
  br label %for.cond, !dbg !1495

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1497
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1490, !DIExpression(), !1491)
    #dbg_value(i32 %i.0, !1494, !DIExpression(), !1491)
  %div = sdiv i32 %mlen, 2, !dbg !1498
  %cmp = icmp slt i32 %i.0, %div, !dbg !1500
  br i1 %cmp, label %for.body, label %for.end, !dbg !1501

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1502
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1504
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1505
  %shl = shl i8 %1, 4, !dbg !1506
  %or = or i8 %shl, %0, !dbg !1507
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1508
  store i8 %or, ptr %arrayidx, align 1, !dbg !1509
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1510
    #dbg_value(i32 %inc, !1494, !DIExpression(), !1491)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1511
    #dbg_value(ptr %add.ptr3, !1490, !DIExpression(), !1491)
  br label %for.cond, !dbg !1512, !llvm.loop !1513

for.end:                                          ; preds = %for.cond
  %2 = and i32 %mlen, -2147483647, !dbg !1515
  %cmp4 = icmp eq i32 %2, 1, !dbg !1515
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1515

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0, align 1, !dbg !1517
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1519
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1520
  br label %if.end, !dbg !1521

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !1522
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1523 {
entry:
    #dbg_value(i8 %a, !1526, !DIExpression(), !1527)
    #dbg_value(i8 %b, !1528, !DIExpression(), !1527)
  %xor1 = xor i8 %a, %b, !dbg !1529
  ret i8 %xor1, !dbg !1530
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1531 {
entry:
    #dbg_value(ptr %a, !1534, !DIExpression(), !1535)
    #dbg_value(ptr %b, !1536, !DIExpression(), !1535)
    #dbg_value(i32 %n, !1537, !DIExpression(), !1535)
    #dbg_value(i32 %m, !1538, !DIExpression(), !1535)
    #dbg_value(i8 0, !1539, !DIExpression(), !1535)
    #dbg_value(i32 0, !1540, !DIExpression(), !1542)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1543
  br label %for.cond, !dbg !1543

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1535
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1544
    #dbg_value(i32 %i.0, !1540, !DIExpression(), !1542)
    #dbg_value(ptr %b.addr.0, !1536, !DIExpression(), !1535)
    #dbg_value(i8 %ret.0, !1539, !DIExpression(), !1535)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !1545
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1547

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1548
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1548
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1550
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1551
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1552
    #dbg_value(i8 %call1, !1539, !DIExpression(), !1535)
  %inc = add nuw i32 %i.0, 1, !dbg !1553
    #dbg_value(i32 %inc, !1540, !DIExpression(), !1542)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1554
    #dbg_value(ptr %add.ptr, !1536, !DIExpression(), !1535)
  br label %for.cond, !dbg !1555, !llvm.loop !1556

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !1558
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1559 {
entry:
    #dbg_value(i8 %a, !1560, !DIExpression(), !1561)
    #dbg_value(i8 %b, !1562, !DIExpression(), !1561)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !1563
  %xor1 = xor i8 %a, %0, !dbg !1564
    #dbg_value(i8 %xor1, !1560, !DIExpression(), !1561)
  %1 = trunc i8 %xor1 to i1, !dbg !1565
    #dbg_value(i8 poison, !1566, !DIExpression(), !1561)
  %2 = and i8 %xor1, 2, !dbg !1567
  %mul9 = mul i8 %2, %b, !dbg !1568
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1565
  %xor11 = xor i8 %conv10, %mul9, !dbg !1569
    #dbg_value(i8 %xor11, !1566, !DIExpression(), !1561)
  %3 = and i8 %xor1, 4, !dbg !1570
  %mul16 = mul i8 %3, %b, !dbg !1571
  %xor18 = xor i8 %mul16, %xor11, !dbg !1572
    #dbg_value(i8 %xor18, !1566, !DIExpression(), !1561)
  %4 = and i8 %xor1, 8, !dbg !1573
  %mul23 = mul i8 %4, %b, !dbg !1574
  %xor25 = xor i8 %mul23, %xor18, !dbg !1575
    #dbg_value(i8 %xor25, !1566, !DIExpression(), !1561)
    #dbg_value(i8 %xor25, !1576, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1561)
  %5 = lshr i8 %xor25, 4, !dbg !1577
  %6 = lshr i8 %xor25, 3, !dbg !1578
  %7 = and i8 %6, 14, !dbg !1578
  %8 = xor i8 %5, %7, !dbg !1579
  %xor25.masked = and i8 %xor25, 15, !dbg !1580
  %9 = xor i8 %8, %xor25.masked, !dbg !1580
    #dbg_value(i8 %9, !1581, !DIExpression(), !1561)
  ret i8 %9, !dbg !1582
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1583, !DIExpression(), !1584)
    #dbg_value(i32 0, !1585, !DIExpression(), !1587)
    #dbg_value(i32 0, !1585, !DIExpression(), !1587)
  %0 = load i64, ptr %M, align 8, !dbg !1588
  %shr = lshr i64 %0, 4, !dbg !1591
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1592
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1592
  %xor = xor i64 %shr, %1, !dbg !1593
  %and = and i64 %xor, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and, !1595, !DIExpression(), !1596)
  %shl = shl nuw i64 %and, 4, !dbg !1597
  %2 = load i64, ptr %M, align 8, !dbg !1598
  %xor3 = xor i64 %2, %shl, !dbg !1598
  store i64 %xor3, ptr %M, align 8, !dbg !1598
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1599
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1600
  %xor6 = xor i64 %3, %and, !dbg !1600
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1600
    #dbg_value(i32 2, !1585, !DIExpression(), !1587)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1588
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !1588
  %shr.1 = lshr i64 %4, 4, !dbg !1591
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1592
  %5 = load i64, ptr %arrayidx1.1, align 8, !dbg !1592
  %xor.1 = xor i64 %shr.1, %5, !dbg !1593
  %and.1 = and i64 %xor.1, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and.1, !1595, !DIExpression(), !1596)
  %shl.1 = shl nuw i64 %and.1, 4, !dbg !1597
  %arrayidx2.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1601
  %6 = load i64, ptr %arrayidx2.1, align 8, !dbg !1598
  %xor3.1 = xor i64 %6, %shl.1, !dbg !1598
  store i64 %xor3.1, ptr %arrayidx2.1, align 8, !dbg !1598
  %arrayidx5.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1599
  %7 = load i64, ptr %arrayidx5.1, align 8, !dbg !1600
  %xor6.1 = xor i64 %7, %and.1, !dbg !1600
  store i64 %xor6.1, ptr %arrayidx5.1, align 8, !dbg !1600
    #dbg_value(i32 4, !1585, !DIExpression(), !1587)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1588
  %8 = load i64, ptr %arrayidx.2, align 8, !dbg !1588
  %shr.2 = lshr i64 %8, 4, !dbg !1591
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1592
  %9 = load i64, ptr %arrayidx1.2, align 8, !dbg !1592
  %xor.2 = xor i64 %shr.2, %9, !dbg !1593
  %and.2 = and i64 %xor.2, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and.2, !1595, !DIExpression(), !1596)
  %shl.2 = shl nuw i64 %and.2, 4, !dbg !1597
  %arrayidx2.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1601
  %10 = load i64, ptr %arrayidx2.2, align 8, !dbg !1598
  %xor3.2 = xor i64 %10, %shl.2, !dbg !1598
  store i64 %xor3.2, ptr %arrayidx2.2, align 8, !dbg !1598
  %arrayidx5.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1599
  %11 = load i64, ptr %arrayidx5.2, align 8, !dbg !1600
  %xor6.2 = xor i64 %11, %and.2, !dbg !1600
  store i64 %xor6.2, ptr %arrayidx5.2, align 8, !dbg !1600
    #dbg_value(i32 6, !1585, !DIExpression(), !1587)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1588
  %12 = load i64, ptr %arrayidx.3, align 8, !dbg !1588
  %shr.3 = lshr i64 %12, 4, !dbg !1591
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1592
  %13 = load i64, ptr %arrayidx1.3, align 8, !dbg !1592
  %xor.3 = xor i64 %shr.3, %13, !dbg !1593
  %and.3 = and i64 %xor.3, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and.3, !1595, !DIExpression(), !1596)
  %shl.3 = shl nuw i64 %and.3, 4, !dbg !1597
  %arrayidx2.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1601
  %14 = load i64, ptr %arrayidx2.3, align 8, !dbg !1598
  %xor3.3 = xor i64 %14, %shl.3, !dbg !1598
  store i64 %xor3.3, ptr %arrayidx2.3, align 8, !dbg !1598
  %arrayidx5.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1599
  %15 = load i64, ptr %arrayidx5.3, align 8, !dbg !1600
  %xor6.3 = xor i64 %15, %and.3, !dbg !1600
  store i64 %xor6.3, ptr %arrayidx5.3, align 8, !dbg !1600
    #dbg_value(i32 8, !1585, !DIExpression(), !1587)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1588
  %16 = load i64, ptr %arrayidx.4, align 8, !dbg !1588
  %shr.4 = lshr i64 %16, 4, !dbg !1591
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1592
  %17 = load i64, ptr %arrayidx1.4, align 8, !dbg !1592
  %xor.4 = xor i64 %shr.4, %17, !dbg !1593
  %and.4 = and i64 %xor.4, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and.4, !1595, !DIExpression(), !1596)
  %shl.4 = shl nuw i64 %and.4, 4, !dbg !1597
  %arrayidx2.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1601
  %18 = load i64, ptr %arrayidx2.4, align 8, !dbg !1598
  %xor3.4 = xor i64 %18, %shl.4, !dbg !1598
  store i64 %xor3.4, ptr %arrayidx2.4, align 8, !dbg !1598
  %arrayidx5.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1599
  %19 = load i64, ptr %arrayidx5.4, align 8, !dbg !1600
  %xor6.4 = xor i64 %19, %and.4, !dbg !1600
  store i64 %xor6.4, ptr %arrayidx5.4, align 8, !dbg !1600
    #dbg_value(i32 10, !1585, !DIExpression(), !1587)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1588
  %20 = load i64, ptr %arrayidx.5, align 8, !dbg !1588
  %shr.5 = lshr i64 %20, 4, !dbg !1591
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1592
  %21 = load i64, ptr %arrayidx1.5, align 8, !dbg !1592
  %xor.5 = xor i64 %shr.5, %21, !dbg !1593
  %and.5 = and i64 %xor.5, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and.5, !1595, !DIExpression(), !1596)
  %shl.5 = shl nuw i64 %and.5, 4, !dbg !1597
  %arrayidx2.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1601
  %22 = load i64, ptr %arrayidx2.5, align 8, !dbg !1598
  %xor3.5 = xor i64 %22, %shl.5, !dbg !1598
  store i64 %xor3.5, ptr %arrayidx2.5, align 8, !dbg !1598
  %arrayidx5.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1599
  %23 = load i64, ptr %arrayidx5.5, align 8, !dbg !1600
  %xor6.5 = xor i64 %23, %and.5, !dbg !1600
  store i64 %xor6.5, ptr %arrayidx5.5, align 8, !dbg !1600
    #dbg_value(i32 12, !1585, !DIExpression(), !1587)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1588
  %24 = load i64, ptr %arrayidx.6, align 8, !dbg !1588
  %shr.6 = lshr i64 %24, 4, !dbg !1591
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1592
  %25 = load i64, ptr %arrayidx1.6, align 8, !dbg !1592
  %xor.6 = xor i64 %shr.6, %25, !dbg !1593
  %and.6 = and i64 %xor.6, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and.6, !1595, !DIExpression(), !1596)
  %shl.6 = shl nuw i64 %and.6, 4, !dbg !1597
  %arrayidx2.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1601
  %26 = load i64, ptr %arrayidx2.6, align 8, !dbg !1598
  %xor3.6 = xor i64 %26, %shl.6, !dbg !1598
  store i64 %xor3.6, ptr %arrayidx2.6, align 8, !dbg !1598
  %arrayidx5.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1599
  %27 = load i64, ptr %arrayidx5.6, align 8, !dbg !1600
  %xor6.6 = xor i64 %27, %and.6, !dbg !1600
  store i64 %xor6.6, ptr %arrayidx5.6, align 8, !dbg !1600
    #dbg_value(i32 14, !1585, !DIExpression(), !1587)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1588
  %28 = load i64, ptr %arrayidx.7, align 8, !dbg !1588
  %shr.7 = lshr i64 %28, 4, !dbg !1591
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1592
  %29 = load i64, ptr %arrayidx1.7, align 8, !dbg !1592
  %xor.7 = xor i64 %shr.7, %29, !dbg !1593
  %and.7 = and i64 %xor.7, 1085102592571150095, !dbg !1594
    #dbg_value(i64 %and.7, !1595, !DIExpression(), !1596)
  %shl.7 = shl nuw i64 %and.7, 4, !dbg !1597
  %arrayidx2.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1601
  %30 = load i64, ptr %arrayidx2.7, align 8, !dbg !1598
  %xor3.7 = xor i64 %30, %shl.7, !dbg !1598
  store i64 %xor3.7, ptr %arrayidx2.7, align 8, !dbg !1598
  %arrayidx5.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1599
  %31 = load i64, ptr %arrayidx5.7, align 8, !dbg !1600
  %xor6.7 = xor i64 %31, %and.7, !dbg !1600
  store i64 %xor6.7, ptr %arrayidx5.7, align 8, !dbg !1600
    #dbg_value(i32 16, !1585, !DIExpression(), !1587)
    #dbg_value(i32 0, !1602, !DIExpression(), !1604)
  %32 = load i64, ptr %M, align 8, !dbg !1605
  %shr13 = lshr i64 %32, 8, !dbg !1608
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1609
  %33 = load i64, ptr %arrayidx15, align 8, !dbg !1609
  %xor16 = xor i64 %shr13, %33, !dbg !1610
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1611
    #dbg_value(i64 %and17, !1612, !DIExpression(), !1613)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1614
  %34 = load i64, ptr %arrayidx19, align 8, !dbg !1614
  %shr20 = lshr i64 %34, 8, !dbg !1615
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1616
  %35 = load i64, ptr %arrayidx22, align 8, !dbg !1616
  %xor23 = xor i64 %shr20, %35, !dbg !1617
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1618
    #dbg_value(i64 %and24, !1619, !DIExpression(), !1613)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1620
  %36 = load i64, ptr %M, align 8, !dbg !1621
  %xor27 = xor i64 %36, %shl25, !dbg !1621
  store i64 %xor27, ptr %M, align 8, !dbg !1621
  %shl28 = shl nuw i64 %and24, 8, !dbg !1622
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1623
  %37 = load i64, ptr %arrayidx30, align 8, !dbg !1624
  %xor31 = xor i64 %37, %shl28, !dbg !1624
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1624
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1625
  %38 = load i64, ptr %arrayidx33, align 8, !dbg !1626
  %xor34 = xor i64 %38, %and17, !dbg !1626
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1626
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1627
  %39 = load i64, ptr %arrayidx36, align 8, !dbg !1628
  %xor37 = xor i64 %39, %and24, !dbg !1628
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1628
    #dbg_value(i32 4, !1602, !DIExpression(), !1604)
  %arrayidx12.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1605
  %40 = load i64, ptr %arrayidx12.1, align 8, !dbg !1605
  %shr13.1 = lshr i64 %40, 8, !dbg !1608
  %arrayidx15.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1609
  %41 = load i64, ptr %arrayidx15.1, align 8, !dbg !1609
  %xor16.1 = xor i64 %shr13.1, %41, !dbg !1610
  %and17.1 = and i64 %xor16.1, 71777214294589695, !dbg !1611
    #dbg_value(i64 %and17.1, !1612, !DIExpression(), !1613)
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1614
  %42 = load i64, ptr %arrayidx19.1, align 8, !dbg !1614
  %shr20.1 = lshr i64 %42, 8, !dbg !1615
  %arrayidx22.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1616
  %43 = load i64, ptr %arrayidx22.1, align 8, !dbg !1616
  %xor23.1 = xor i64 %shr20.1, %43, !dbg !1617
  %and24.1 = and i64 %xor23.1, 71777214294589695, !dbg !1618
    #dbg_value(i64 %and24.1, !1619, !DIExpression(), !1613)
  %shl25.1 = shl nuw i64 %and17.1, 8, !dbg !1620
  %arrayidx26.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1629
  %44 = load i64, ptr %arrayidx26.1, align 8, !dbg !1621
  %xor27.1 = xor i64 %44, %shl25.1, !dbg !1621
  store i64 %xor27.1, ptr %arrayidx26.1, align 8, !dbg !1621
  %shl28.1 = shl nuw i64 %and24.1, 8, !dbg !1622
  %arrayidx30.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1623
  %45 = load i64, ptr %arrayidx30.1, align 8, !dbg !1624
  %xor31.1 = xor i64 %45, %shl28.1, !dbg !1624
  store i64 %xor31.1, ptr %arrayidx30.1, align 8, !dbg !1624
  %arrayidx33.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1625
  %46 = load i64, ptr %arrayidx33.1, align 8, !dbg !1626
  %xor34.1 = xor i64 %46, %and17.1, !dbg !1626
  store i64 %xor34.1, ptr %arrayidx33.1, align 8, !dbg !1626
  %arrayidx36.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1627
  %47 = load i64, ptr %arrayidx36.1, align 8, !dbg !1628
  %xor37.1 = xor i64 %47, %and24.1, !dbg !1628
  store i64 %xor37.1, ptr %arrayidx36.1, align 8, !dbg !1628
    #dbg_value(i32 8, !1602, !DIExpression(), !1604)
  %arrayidx12.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1605
  %48 = load i64, ptr %arrayidx12.2, align 8, !dbg !1605
  %shr13.2 = lshr i64 %48, 8, !dbg !1608
  %arrayidx15.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1609
  %49 = load i64, ptr %arrayidx15.2, align 8, !dbg !1609
  %xor16.2 = xor i64 %shr13.2, %49, !dbg !1610
  %and17.2 = and i64 %xor16.2, 71777214294589695, !dbg !1611
    #dbg_value(i64 %and17.2, !1612, !DIExpression(), !1613)
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1614
  %50 = load i64, ptr %arrayidx19.2, align 8, !dbg !1614
  %shr20.2 = lshr i64 %50, 8, !dbg !1615
  %arrayidx22.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1616
  %51 = load i64, ptr %arrayidx22.2, align 8, !dbg !1616
  %xor23.2 = xor i64 %shr20.2, %51, !dbg !1617
  %and24.2 = and i64 %xor23.2, 71777214294589695, !dbg !1618
    #dbg_value(i64 %and24.2, !1619, !DIExpression(), !1613)
  %shl25.2 = shl nuw i64 %and17.2, 8, !dbg !1620
  %arrayidx26.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1629
  %52 = load i64, ptr %arrayidx26.2, align 8, !dbg !1621
  %xor27.2 = xor i64 %52, %shl25.2, !dbg !1621
  store i64 %xor27.2, ptr %arrayidx26.2, align 8, !dbg !1621
  %shl28.2 = shl nuw i64 %and24.2, 8, !dbg !1622
  %arrayidx30.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1623
  %53 = load i64, ptr %arrayidx30.2, align 8, !dbg !1624
  %xor31.2 = xor i64 %53, %shl28.2, !dbg !1624
  store i64 %xor31.2, ptr %arrayidx30.2, align 8, !dbg !1624
  %arrayidx33.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1625
  %54 = load i64, ptr %arrayidx33.2, align 8, !dbg !1626
  %xor34.2 = xor i64 %54, %and17.2, !dbg !1626
  store i64 %xor34.2, ptr %arrayidx33.2, align 8, !dbg !1626
  %arrayidx36.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1627
  %55 = load i64, ptr %arrayidx36.2, align 8, !dbg !1628
  %xor37.2 = xor i64 %55, %and24.2, !dbg !1628
  store i64 %xor37.2, ptr %arrayidx36.2, align 8, !dbg !1628
    #dbg_value(i32 12, !1602, !DIExpression(), !1604)
  %arrayidx12.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1605
  %56 = load i64, ptr %arrayidx12.3, align 8, !dbg !1605
  %shr13.3 = lshr i64 %56, 8, !dbg !1608
  %arrayidx15.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1609
  %57 = load i64, ptr %arrayidx15.3, align 8, !dbg !1609
  %xor16.3 = xor i64 %shr13.3, %57, !dbg !1610
  %and17.3 = and i64 %xor16.3, 71777214294589695, !dbg !1611
    #dbg_value(i64 %and17.3, !1612, !DIExpression(), !1613)
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1614
  %58 = load i64, ptr %arrayidx19.3, align 8, !dbg !1614
  %shr20.3 = lshr i64 %58, 8, !dbg !1615
  %arrayidx22.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1616
  %59 = load i64, ptr %arrayidx22.3, align 8, !dbg !1616
  %xor23.3 = xor i64 %shr20.3, %59, !dbg !1617
  %and24.3 = and i64 %xor23.3, 71777214294589695, !dbg !1618
    #dbg_value(i64 %and24.3, !1619, !DIExpression(), !1613)
  %shl25.3 = shl nuw i64 %and17.3, 8, !dbg !1620
  %arrayidx26.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1629
  %60 = load i64, ptr %arrayidx26.3, align 8, !dbg !1621
  %xor27.3 = xor i64 %60, %shl25.3, !dbg !1621
  store i64 %xor27.3, ptr %arrayidx26.3, align 8, !dbg !1621
  %shl28.3 = shl nuw i64 %and24.3, 8, !dbg !1622
  %arrayidx30.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1623
  %61 = load i64, ptr %arrayidx30.3, align 8, !dbg !1624
  %xor31.3 = xor i64 %61, %shl28.3, !dbg !1624
  store i64 %xor31.3, ptr %arrayidx30.3, align 8, !dbg !1624
  %arrayidx33.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1625
  %62 = load i64, ptr %arrayidx33.3, align 8, !dbg !1626
  %xor34.3 = xor i64 %62, %and17.3, !dbg !1626
  store i64 %xor34.3, ptr %arrayidx33.3, align 8, !dbg !1626
  %arrayidx36.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1627
  %63 = load i64, ptr %arrayidx36.3, align 8, !dbg !1628
  %xor37.3 = xor i64 %63, %and24.3, !dbg !1628
  store i64 %xor37.3, ptr %arrayidx36.3, align 8, !dbg !1628
    #dbg_value(i32 16, !1602, !DIExpression(), !1604)
    #dbg_value(i32 0, !1630, !DIExpression(), !1632)
  %64 = load i64, ptr %M, align 8, !dbg !1633
  %shr47 = lshr i64 %64, 16, !dbg !1636
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1637
  %65 = load i64, ptr %arrayidx49, align 8, !dbg !1637
  %xor50 = xor i64 %shr47, %65, !dbg !1638
  %and51 = and i64 %xor50, 281470681808895, !dbg !1639
    #dbg_value(i64 %and51, !1640, !DIExpression(), !1641)
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1642
  %66 = load i64, ptr %arrayidx54, align 8, !dbg !1642
  %shr55 = lshr i64 %66, 16, !dbg !1643
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1644
  %67 = load i64, ptr %arrayidx57, align 8, !dbg !1644
  %xor58 = xor i64 %shr55, %67, !dbg !1645
  %and59 = and i64 %xor58, 281470681808895, !dbg !1646
    #dbg_value(i64 %and59, !1647, !DIExpression(), !1641)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1648
  %68 = load i64, ptr %M, align 8, !dbg !1649
  %xor62 = xor i64 %68, %shl60, !dbg !1649
  store i64 %xor62, ptr %M, align 8, !dbg !1649
  %shl63 = shl nuw i64 %and59, 16, !dbg !1650
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1651
  %69 = load i64, ptr %arrayidx65, align 8, !dbg !1652
  %xor66 = xor i64 %69, %shl63, !dbg !1652
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1652
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1653
  %70 = load i64, ptr %arrayidx68, align 8, !dbg !1654
  %xor69 = xor i64 %70, %and51, !dbg !1654
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1654
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1655
  %71 = load i64, ptr %arrayidx71, align 8, !dbg !1656
  %xor72 = xor i64 %71, %and59, !dbg !1656
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1656
    #dbg_value(i32 1, !1630, !DIExpression(), !1632)
  %arrayidx46.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1633
  %72 = load i64, ptr %arrayidx46.1, align 8, !dbg !1633
  %shr47.1 = lshr i64 %72, 16, !dbg !1636
  %arrayidx49.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1637
  %73 = load i64, ptr %arrayidx49.1, align 8, !dbg !1637
  %xor50.1 = xor i64 %shr47.1, %73, !dbg !1638
  %and51.1 = and i64 %xor50.1, 281470681808895, !dbg !1639
    #dbg_value(i64 %and51.1, !1640, !DIExpression(), !1641)
  %arrayidx54.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1642
  %74 = load i64, ptr %arrayidx54.1, align 8, !dbg !1642
  %shr55.1 = lshr i64 %74, 16, !dbg !1643
  %arrayidx57.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1644
  %75 = load i64, ptr %arrayidx57.1, align 8, !dbg !1644
  %xor58.1 = xor i64 %shr55.1, %75, !dbg !1645
  %and59.1 = and i64 %xor58.1, 281470681808895, !dbg !1646
    #dbg_value(i64 %and59.1, !1647, !DIExpression(), !1641)
  %shl60.1 = shl nuw i64 %and51.1, 16, !dbg !1648
  %arrayidx61.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1657
  %76 = load i64, ptr %arrayidx61.1, align 8, !dbg !1649
  %xor62.1 = xor i64 %76, %shl60.1, !dbg !1649
  store i64 %xor62.1, ptr %arrayidx61.1, align 8, !dbg !1649
  %shl63.1 = shl nuw i64 %and59.1, 16, !dbg !1650
  %arrayidx65.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1651
  %77 = load i64, ptr %arrayidx65.1, align 8, !dbg !1652
  %xor66.1 = xor i64 %77, %shl63.1, !dbg !1652
  store i64 %xor66.1, ptr %arrayidx65.1, align 8, !dbg !1652
  %arrayidx68.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1653
  %78 = load i64, ptr %arrayidx68.1, align 8, !dbg !1654
  %xor69.1 = xor i64 %78, %and51.1, !dbg !1654
  store i64 %xor69.1, ptr %arrayidx68.1, align 8, !dbg !1654
  %arrayidx71.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1655
  %79 = load i64, ptr %arrayidx71.1, align 8, !dbg !1656
  %xor72.1 = xor i64 %79, %and59.1, !dbg !1656
  store i64 %xor72.1, ptr %arrayidx71.1, align 8, !dbg !1656
    #dbg_value(i32 2, !1630, !DIExpression(), !1632)
  %arrayidx46.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1633
  %80 = load i64, ptr %arrayidx46.2, align 8, !dbg !1633
  %shr47.2 = lshr i64 %80, 16, !dbg !1636
  %arrayidx49.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1637
  %81 = load i64, ptr %arrayidx49.2, align 8, !dbg !1637
  %xor50.2 = xor i64 %shr47.2, %81, !dbg !1638
  %and51.2 = and i64 %xor50.2, 281470681808895, !dbg !1639
    #dbg_value(i64 %and51.2, !1640, !DIExpression(), !1641)
  %arrayidx54.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1642
  %82 = load i64, ptr %arrayidx54.2, align 8, !dbg !1642
  %shr55.2 = lshr i64 %82, 16, !dbg !1643
  %arrayidx57.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1644
  %83 = load i64, ptr %arrayidx57.2, align 8, !dbg !1644
  %xor58.2 = xor i64 %shr55.2, %83, !dbg !1645
  %and59.2 = and i64 %xor58.2, 281470681808895, !dbg !1646
    #dbg_value(i64 %and59.2, !1647, !DIExpression(), !1641)
  %shl60.2 = shl nuw i64 %and51.2, 16, !dbg !1648
  %arrayidx61.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1657
  %84 = load i64, ptr %arrayidx61.2, align 8, !dbg !1649
  %xor62.2 = xor i64 %84, %shl60.2, !dbg !1649
  store i64 %xor62.2, ptr %arrayidx61.2, align 8, !dbg !1649
  %shl63.2 = shl nuw i64 %and59.2, 16, !dbg !1650
  %arrayidx65.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1651
  %85 = load i64, ptr %arrayidx65.2, align 8, !dbg !1652
  %xor66.2 = xor i64 %85, %shl63.2, !dbg !1652
  store i64 %xor66.2, ptr %arrayidx65.2, align 8, !dbg !1652
  %arrayidx68.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1653
  %86 = load i64, ptr %arrayidx68.2, align 8, !dbg !1654
  %xor69.2 = xor i64 %86, %and51.2, !dbg !1654
  store i64 %xor69.2, ptr %arrayidx68.2, align 8, !dbg !1654
  %arrayidx71.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1655
  %87 = load i64, ptr %arrayidx71.2, align 8, !dbg !1656
  %xor72.2 = xor i64 %87, %and59.2, !dbg !1656
  store i64 %xor72.2, ptr %arrayidx71.2, align 8, !dbg !1656
    #dbg_value(i32 3, !1630, !DIExpression(), !1632)
  %arrayidx46.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1633
  %88 = load i64, ptr %arrayidx46.3, align 8, !dbg !1633
  %shr47.3 = lshr i64 %88, 16, !dbg !1636
  %arrayidx49.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1637
  %89 = load i64, ptr %arrayidx49.3, align 8, !dbg !1637
  %xor50.3 = xor i64 %shr47.3, %89, !dbg !1638
  %and51.3 = and i64 %xor50.3, 281470681808895, !dbg !1639
    #dbg_value(i64 %and51.3, !1640, !DIExpression(), !1641)
  %arrayidx54.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1642
  %90 = load i64, ptr %arrayidx54.3, align 8, !dbg !1642
  %shr55.3 = lshr i64 %90, 16, !dbg !1643
  %arrayidx57.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1644
  %91 = load i64, ptr %arrayidx57.3, align 8, !dbg !1644
  %xor58.3 = xor i64 %shr55.3, %91, !dbg !1645
  %and59.3 = and i64 %xor58.3, 281470681808895, !dbg !1646
    #dbg_value(i64 %and59.3, !1647, !DIExpression(), !1641)
  %shl60.3 = shl nuw i64 %and51.3, 16, !dbg !1648
  %arrayidx61.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1657
  %92 = load i64, ptr %arrayidx61.3, align 8, !dbg !1649
  %xor62.3 = xor i64 %92, %shl60.3, !dbg !1649
  store i64 %xor62.3, ptr %arrayidx61.3, align 8, !dbg !1649
  %shl63.3 = shl nuw i64 %and59.3, 16, !dbg !1650
  %arrayidx65.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1651
  %93 = load i64, ptr %arrayidx65.3, align 8, !dbg !1652
  %xor66.3 = xor i64 %93, %shl63.3, !dbg !1652
  store i64 %xor66.3, ptr %arrayidx65.3, align 8, !dbg !1652
  %arrayidx68.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1653
  %94 = load i64, ptr %arrayidx68.3, align 8, !dbg !1654
  %xor69.3 = xor i64 %94, %and51.3, !dbg !1654
  store i64 %xor69.3, ptr %arrayidx68.3, align 8, !dbg !1654
  %arrayidx71.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1655
  %95 = load i64, ptr %arrayidx71.3, align 8, !dbg !1656
  %xor72.3 = xor i64 %95, %and59.3, !dbg !1656
  store i64 %xor72.3, ptr %arrayidx71.3, align 8, !dbg !1656
    #dbg_value(i32 4, !1630, !DIExpression(), !1632)
    #dbg_value(i32 0, !1658, !DIExpression(), !1660)
  %96 = load i64, ptr %M, align 8, !dbg !1661
  %shr81 = lshr i64 %96, 32, !dbg !1664
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1665
  %97 = load i64, ptr %arrayidx83, align 8, !dbg !1665
  %.masked = and i64 %97, 4294967295, !dbg !1666
  %and85 = xor i64 %shr81, %.masked, !dbg !1666
    #dbg_value(i64 %and85, !1667, !DIExpression(), !1668)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1669
  %98 = load i64, ptr %M, align 8, !dbg !1670
  %xor88 = xor i64 %98, %shl86, !dbg !1670
  store i64 %xor88, ptr %M, align 8, !dbg !1670
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1671
  %99 = load i64, ptr %arrayidx90, align 8, !dbg !1672
  %xor91 = xor i64 %99, %and85, !dbg !1672
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1672
    #dbg_value(i32 1, !1658, !DIExpression(), !1660)
  %arrayidx80.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1661
  %100 = load i64, ptr %arrayidx80.1, align 8, !dbg !1661
  %shr81.1 = lshr i64 %100, 32, !dbg !1664
  %arrayidx83.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1665
  %101 = load i64, ptr %arrayidx83.1, align 8, !dbg !1665
  %.masked.1 = and i64 %101, 4294967295, !dbg !1666
  %and85.1 = xor i64 %shr81.1, %.masked.1, !dbg !1666
    #dbg_value(i64 %and85.1, !1667, !DIExpression(), !1668)
  %shl86.1 = shl nuw i64 %and85.1, 32, !dbg !1669
  %arrayidx87.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1673
  %102 = load i64, ptr %arrayidx87.1, align 8, !dbg !1670
  %xor88.1 = xor i64 %102, %shl86.1, !dbg !1670
  store i64 %xor88.1, ptr %arrayidx87.1, align 8, !dbg !1670
  %arrayidx90.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1671
  %103 = load i64, ptr %arrayidx90.1, align 8, !dbg !1672
  %xor91.1 = xor i64 %103, %and85.1, !dbg !1672
  store i64 %xor91.1, ptr %arrayidx90.1, align 8, !dbg !1672
    #dbg_value(i32 2, !1658, !DIExpression(), !1660)
  %arrayidx80.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1661
  %104 = load i64, ptr %arrayidx80.2, align 8, !dbg !1661
  %shr81.2 = lshr i64 %104, 32, !dbg !1664
  %arrayidx83.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1665
  %105 = load i64, ptr %arrayidx83.2, align 8, !dbg !1665
  %.masked.2 = and i64 %105, 4294967295, !dbg !1666
  %and85.2 = xor i64 %shr81.2, %.masked.2, !dbg !1666
    #dbg_value(i64 %and85.2, !1667, !DIExpression(), !1668)
  %shl86.2 = shl nuw i64 %and85.2, 32, !dbg !1669
  %arrayidx87.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1673
  %106 = load i64, ptr %arrayidx87.2, align 8, !dbg !1670
  %xor88.2 = xor i64 %106, %shl86.2, !dbg !1670
  store i64 %xor88.2, ptr %arrayidx87.2, align 8, !dbg !1670
  %arrayidx90.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1671
  %107 = load i64, ptr %arrayidx90.2, align 8, !dbg !1672
  %xor91.2 = xor i64 %107, %and85.2, !dbg !1672
  store i64 %xor91.2, ptr %arrayidx90.2, align 8, !dbg !1672
    #dbg_value(i32 3, !1658, !DIExpression(), !1660)
  %arrayidx80.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1661
  %108 = load i64, ptr %arrayidx80.3, align 8, !dbg !1661
  %shr81.3 = lshr i64 %108, 32, !dbg !1664
  %arrayidx83.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1665
  %109 = load i64, ptr %arrayidx83.3, align 8, !dbg !1665
  %.masked.3 = and i64 %109, 4294967295, !dbg !1666
  %and85.3 = xor i64 %shr81.3, %.masked.3, !dbg !1666
    #dbg_value(i64 %and85.3, !1667, !DIExpression(), !1668)
  %shl86.3 = shl nuw i64 %and85.3, 32, !dbg !1669
  %arrayidx87.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1673
  %110 = load i64, ptr %arrayidx87.3, align 8, !dbg !1670
  %xor88.3 = xor i64 %110, %shl86.3, !dbg !1670
  store i64 %xor88.3, ptr %arrayidx87.3, align 8, !dbg !1670
  %arrayidx90.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1671
  %111 = load i64, ptr %arrayidx90.3, align 8, !dbg !1672
  %xor91.3 = xor i64 %111, %and85.3, !dbg !1672
  store i64 %xor91.3, ptr %arrayidx90.3, align 8, !dbg !1672
    #dbg_value(i32 4, !1658, !DIExpression(), !1660)
  %arrayidx80.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1661
  %112 = load i64, ptr %arrayidx80.4, align 8, !dbg !1661
  %shr81.4 = lshr i64 %112, 32, !dbg !1664
  %arrayidx83.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1665
  %113 = load i64, ptr %arrayidx83.4, align 8, !dbg !1665
  %.masked.4 = and i64 %113, 4294967295, !dbg !1666
  %and85.4 = xor i64 %shr81.4, %.masked.4, !dbg !1666
    #dbg_value(i64 %and85.4, !1667, !DIExpression(), !1668)
  %shl86.4 = shl nuw i64 %and85.4, 32, !dbg !1669
  %arrayidx87.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1673
  %114 = load i64, ptr %arrayidx87.4, align 8, !dbg !1670
  %xor88.4 = xor i64 %114, %shl86.4, !dbg !1670
  store i64 %xor88.4, ptr %arrayidx87.4, align 8, !dbg !1670
  %arrayidx90.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1671
  %115 = load i64, ptr %arrayidx90.4, align 8, !dbg !1672
  %xor91.4 = xor i64 %115, %and85.4, !dbg !1672
  store i64 %xor91.4, ptr %arrayidx90.4, align 8, !dbg !1672
    #dbg_value(i32 5, !1658, !DIExpression(), !1660)
  %arrayidx80.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1661
  %116 = load i64, ptr %arrayidx80.5, align 8, !dbg !1661
  %shr81.5 = lshr i64 %116, 32, !dbg !1664
  %arrayidx83.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1665
  %117 = load i64, ptr %arrayidx83.5, align 8, !dbg !1665
  %.masked.5 = and i64 %117, 4294967295, !dbg !1666
  %and85.5 = xor i64 %shr81.5, %.masked.5, !dbg !1666
    #dbg_value(i64 %and85.5, !1667, !DIExpression(), !1668)
  %shl86.5 = shl nuw i64 %and85.5, 32, !dbg !1669
  %arrayidx87.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1673
  %118 = load i64, ptr %arrayidx87.5, align 8, !dbg !1670
  %xor88.5 = xor i64 %118, %shl86.5, !dbg !1670
  store i64 %xor88.5, ptr %arrayidx87.5, align 8, !dbg !1670
  %arrayidx90.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1671
  %119 = load i64, ptr %arrayidx90.5, align 8, !dbg !1672
  %xor91.5 = xor i64 %119, %and85.5, !dbg !1672
  store i64 %xor91.5, ptr %arrayidx90.5, align 8, !dbg !1672
    #dbg_value(i32 6, !1658, !DIExpression(), !1660)
  %arrayidx80.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1661
  %120 = load i64, ptr %arrayidx80.6, align 8, !dbg !1661
  %shr81.6 = lshr i64 %120, 32, !dbg !1664
  %arrayidx83.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1665
  %121 = load i64, ptr %arrayidx83.6, align 8, !dbg !1665
  %.masked.6 = and i64 %121, 4294967295, !dbg !1666
  %and85.6 = xor i64 %shr81.6, %.masked.6, !dbg !1666
    #dbg_value(i64 %and85.6, !1667, !DIExpression(), !1668)
  %shl86.6 = shl nuw i64 %and85.6, 32, !dbg !1669
  %arrayidx87.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1673
  %122 = load i64, ptr %arrayidx87.6, align 8, !dbg !1670
  %xor88.6 = xor i64 %122, %shl86.6, !dbg !1670
  store i64 %xor88.6, ptr %arrayidx87.6, align 8, !dbg !1670
  %arrayidx90.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1671
  %123 = load i64, ptr %arrayidx90.6, align 8, !dbg !1672
  %xor91.6 = xor i64 %123, %and85.6, !dbg !1672
  store i64 %xor91.6, ptr %arrayidx90.6, align 8, !dbg !1672
    #dbg_value(i32 7, !1658, !DIExpression(), !1660)
  %arrayidx80.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1661
  %124 = load i64, ptr %arrayidx80.7, align 8, !dbg !1661
  %shr81.7 = lshr i64 %124, 32, !dbg !1664
  %arrayidx83.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1665
  %125 = load i64, ptr %arrayidx83.7, align 8, !dbg !1665
  %.masked.7 = and i64 %125, 4294967295, !dbg !1666
  %and85.7 = xor i64 %shr81.7, %.masked.7, !dbg !1666
    #dbg_value(i64 %and85.7, !1667, !DIExpression(), !1668)
  %shl86.7 = shl nuw i64 %and85.7, 32, !dbg !1669
  %arrayidx87.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1673
  %126 = load i64, ptr %arrayidx87.7, align 8, !dbg !1670
  %xor88.7 = xor i64 %126, %shl86.7, !dbg !1670
  store i64 %xor88.7, ptr %arrayidx87.7, align 8, !dbg !1670
  %arrayidx90.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1671
  %127 = load i64, ptr %arrayidx90.7, align 8, !dbg !1672
  %xor91.7 = xor i64 %127, %and85.7, !dbg !1672
  store i64 %xor91.7, ptr %arrayidx90.7, align 8, !dbg !1672
    #dbg_value(i32 8, !1658, !DIExpression(), !1660)
  ret void, !dbg !1674
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1675 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1676, !DIExpression(), !1677)
    #dbg_value(ptr %mat, !1678, !DIExpression(), !1677)
    #dbg_value(ptr %bs_mat, !1679, !DIExpression(), !1677)
    #dbg_value(ptr %acc, !1680, !DIExpression(), !1677)
    #dbg_value(i32 %mat_rows, !1681, !DIExpression(), !1677)
    #dbg_value(i32 %mat_cols, !1682, !DIExpression(), !1677)
    #dbg_value(i32 %bs_mat_cols, !1683, !DIExpression(), !1677)
    #dbg_value(i32 0, !1684, !DIExpression(), !1686)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1687
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1687
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1687
  br label %for.cond, !dbg !1687

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1688
    #dbg_value(i32 %r.0, !1684, !DIExpression(), !1686)
  %exitcond4.not = icmp eq i32 %r.0, %smax3, !dbg !1689
  br i1 %exitcond4.not, label %for.end19, label %for.cond1, !dbg !1691

for.cond1:                                        ; preds = %for.cond, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond ], !dbg !1692
    #dbg_value(i32 %c.0, !1695, !DIExpression(), !1696)
  %exitcond2.not = icmp eq i32 %c.0, %smax1, !dbg !1697
  br i1 %exitcond2.not, label %for.inc17, label %for.cond4, !dbg !1699

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond1 ], !dbg !1700
    #dbg_value(i32 %k.0, !1703, !DIExpression(), !1704)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1705
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1707

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1708
  %add = add nsw i32 %mul, %k.0, !dbg !1710
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1711
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1712
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1713
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1714
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1714
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1714
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1715
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1716
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1717
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1718
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1719
  %add14 = add nuw i32 %k.0, 1, !dbg !1720
    #dbg_value(i32 %add14, !1703, !DIExpression(), !1704)
  br label %for.cond4, !dbg !1721, !llvm.loop !1722

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1724
    #dbg_value(i32 %inc, !1695, !DIExpression(), !1696)
  br label %for.cond1, !dbg !1725, !llvm.loop !1726

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1728
    #dbg_value(i32 %inc18, !1684, !DIExpression(), !1686)
  br label %for.cond, !dbg !1729, !llvm.loop !1730

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1732
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1733 {
entry:
    #dbg_value(ptr %p, !1734, !DIExpression(), !1735)
    #dbg_value(ptr %P1, !1736, !DIExpression(), !1735)
    #dbg_value(ptr %V, !1737, !DIExpression(), !1735)
    #dbg_value(ptr %acc, !1738, !DIExpression(), !1735)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 9, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #6, !dbg !1739
  ret void, !dbg !1740
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1741 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1742, !DIExpression(), !1743)
    #dbg_value(ptr %bs_mat, !1744, !DIExpression(), !1743)
    #dbg_value(ptr %mat, !1745, !DIExpression(), !1743)
    #dbg_value(ptr %acc, !1746, !DIExpression(), !1743)
    #dbg_value(i32 %bs_mat_rows, !1747, !DIExpression(), !1743)
    #dbg_value(i32 %bs_mat_cols, !1748, !DIExpression(), !1743)
    #dbg_value(i32 %mat_rows, !1749, !DIExpression(), !1743)
    #dbg_value(i32 %triangular, !1750, !DIExpression(), !1743)
    #dbg_value(i32 0, !1751, !DIExpression(), !1743)
    #dbg_value(i32 0, !1752, !DIExpression(), !1754)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1755
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1755
  br label %for.cond, !dbg !1755

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1, %for.inc17 ], !dbg !1756
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1757
    #dbg_value(i32 %r.0, !1752, !DIExpression(), !1754)
    #dbg_value(i32 %bs_mat_entries_used.0, !1751, !DIExpression(), !1743)
  %exitcond2.not = icmp eq i32 %r.0, %smax1, !dbg !1758
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !1760

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1761
    #dbg_value(i32 %mul, !1764, !DIExpression(), !1765)
  br label %for.cond1, !dbg !1766

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1743
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1767
    #dbg_value(i32 %c.0, !1764, !DIExpression(), !1765)
    #dbg_value(i32 %bs_mat_entries_used.1, !1751, !DIExpression(), !1743)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1768
  br i1 %cmp2, label %for.cond4, label %for.inc17, !dbg !1770

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond1 ], !dbg !1771
    #dbg_value(i32 %k.0, !1774, !DIExpression(), !1775)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1776
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1778

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1779
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1781
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1782
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1783
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1783
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1783
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1784
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1785
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1786
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1787
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1788
  %add13 = add nuw i32 %k.0, 1, !dbg !1789
    #dbg_value(i32 %add13, !1774, !DIExpression(), !1775)
  br label %for.cond4, !dbg !1790, !llvm.loop !1791

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1751, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1743)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1793
    #dbg_value(i32 %add14, !1751, !DIExpression(), !1743)
  %inc = add nsw i32 %c.0, 1, !dbg !1794
    #dbg_value(i32 %inc, !1764, !DIExpression(), !1765)
  br label %for.cond1, !dbg !1795, !llvm.loop !1796

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1798
    #dbg_value(i32 %inc18, !1752, !DIExpression(), !1754)
  br label %for.cond, !dbg !1799, !llvm.loop !1800

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1802
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1803 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1804, !DIExpression(), !1805)
    #dbg_value(ptr %sm, !1806, !DIExpression(), !1805)
    #dbg_value(ptr %smlen, !1807, !DIExpression(), !1805)
    #dbg_value(ptr %m, !1808, !DIExpression(), !1805)
    #dbg_value(i32 %mlen, !1809, !DIExpression(), !1805)
    #dbg_value(ptr %csk, !1810, !DIExpression(), !1805)
    #dbg_value(i32 0, !1811, !DIExpression(), !1805)
    #dbg_value(i32 964, !1812, !DIExpression(), !1805)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1813
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1814
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1815
    #dbg_value(ptr %siglen, !1816, !DIExpression(DW_OP_deref), !1805)
  %call2 = call i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1817
    #dbg_value(i32 %call2, !1811, !DIExpression(), !1805)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1818
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1816, !DIExpression(), !1805)
  %cmp3.not = icmp eq i32 %0, 964
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1820
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1820

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1821
    #dbg_value(i32 %1, !1816, !DIExpression(), !1805)
  %add = add i32 %1, %mlen, !dbg !1823
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1824
  br label %err, !dbg !1825

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1826
    #dbg_value(i32 %2, !1816, !DIExpression(), !1805)
  %add5 = add i32 %2, %mlen, !dbg !1827
  store i32 %add5, ptr %smlen, align 4, !dbg !1828
  br label %err, !dbg !1829

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1830, !1831)
  ret i32 %call2, !dbg !1832
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1833 {
entry:
    #dbg_value(ptr %p, !1834, !DIExpression(), !1835)
    #dbg_value(ptr %m, !1836, !DIExpression(), !1835)
    #dbg_value(ptr %mlen, !1837, !DIExpression(), !1835)
    #dbg_value(ptr %sm, !1838, !DIExpression(), !1835)
    #dbg_value(i32 %smlen, !1839, !DIExpression(), !1835)
    #dbg_value(ptr %pk, !1840, !DIExpression(), !1835)
    #dbg_value(i32 964, !1841, !DIExpression(), !1835)
  %cmp = icmp ult i32 %smlen, 964, !dbg !1842
  br i1 %cmp, label %return, label %if.end, !dbg !1842

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1844
  %sub = add i32 %smlen, -964, !dbg !1845
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1846
    #dbg_value(i32 %call, !1847, !DIExpression(), !1835)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1848
  br i1 %cmp1, label %if.then2, label %return, !dbg !1848

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -964, !dbg !1850
  store i32 %sub3, ptr %mlen, align 4, !dbg !1852
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1853
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1854
  br label %return, !dbg !1855

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %call, %if.then2 ], [ %call, %if.end ], !dbg !1835
  ret i32 %retval.0, !dbg !1856
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1857 {
entry:
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [107415 x i64], align 8
  %tmp = alloca [104 x i8], align 1
    #dbg_value(ptr %p, !1860, !DIExpression(), !1861)
    #dbg_value(ptr %m, !1862, !DIExpression(), !1861)
    #dbg_value(i32 %mlen, !1863, !DIExpression(), !1861)
    #dbg_value(ptr %sig, !1864, !DIExpression(), !1861)
    #dbg_value(ptr %cpk, !1865, !DIExpression(), !1861)
    #dbg_declare(ptr %tEnc, !1866, !DIExpression(), !1867)
    #dbg_declare(ptr %t, !1868, !DIExpression(), !1869)
    #dbg_declare(ptr %y, !1870, !DIExpression(), !1874)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(284) %y, i8 0, i32 284, i1 false), !dbg !1874
    #dbg_declare(ptr %s, !1875, !DIExpression(), !1876)
    #dbg_declare(ptr %pk, !1877, !DIExpression(), !1878)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(859320) %pk, i8 0, i32 859320, i1 false), !dbg !1878
    #dbg_declare(ptr %tmp, !1879, !DIExpression(), !1883)
    #dbg_value(i32 142, !1884, !DIExpression(), !1861)
    #dbg_value(i32 154, !1885, !DIExpression(), !1861)
    #dbg_value(i32 12, !1886, !DIExpression(), !1861)
    #dbg_value(i32 71, !1887, !DIExpression(), !1861)
    #dbg_value(i32 964, !1888, !DIExpression(), !1861)
    #dbg_value(i32 64, !1889, !DIExpression(), !1861)
    #dbg_value(i32 40, !1890, !DIExpression(), !1861)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1891
    #dbg_value(i32 %call, !1892, !DIExpression(), !1861)
  %cmp.not = icmp eq i32 %call, 0, !dbg !1893
  br i1 %cmp.not, label %if.end, label %return, !dbg !1893

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !1895, !DIExpression(), !1861)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 731016, !dbg !1896
    #dbg_value(ptr %add.ptr, !1897, !DIExpression(), !1861)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1898
    #dbg_value(ptr %add.ptr2, !1899, !DIExpression(), !1861)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1900
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !1901
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !1902
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 40) #8, !dbg !1903
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #8, !dbg !1904
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !1905
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1848) #6, !dbg !1906
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1907
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 142) #8, !dbg !1908
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1910
  %. = zext i1 %cmp21 to i32, !dbg !1861
  br label %return, !dbg !1861

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !1861
  ret i32 %retval.0, !dbg !1911
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1912 {
entry:
    #dbg_value(ptr %p, !1913, !DIExpression(), !1914)
    #dbg_value(ptr %cpk, !1915, !DIExpression(), !1914)
    #dbg_value(ptr %pk, !1916, !DIExpression(), !1914)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1917
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1918
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !1919
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 78, i32 noundef 142) #6, !dbg !1920
  ret i32 0, !dbg !1921
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !1922 {
entry:
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !1925, !DIExpression(), !1926)
    #dbg_value(ptr %s, !1927, !DIExpression(), !1926)
    #dbg_value(ptr %P1, !1928, !DIExpression(), !1926)
    #dbg_value(ptr %P2, !1929, !DIExpression(), !1926)
    #dbg_value(ptr %P3, !1930, !DIExpression(), !1926)
    #dbg_value(ptr %eval, !1931, !DIExpression(), !1926)
    #dbg_declare(ptr %SPS, !1932, !DIExpression(), !1933)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %SPS, i8 0, i32 10368, i1 false), !dbg !1933
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1934
    #dbg_declare(ptr %zero, !1935, !DIExpression(), !1936)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(142) %zero, i8 0, i32 142, i1 false), !dbg !1936
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1937
  ret void, !dbg !1938
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !1939 {
entry:
  %PS = alloca [16632 x i64], align 8
    #dbg_value(ptr %p, !1942, !DIExpression(), !1943)
    #dbg_value(ptr %P1, !1944, !DIExpression(), !1943)
    #dbg_value(ptr %P2, !1945, !DIExpression(), !1943)
    #dbg_value(ptr %P3, !1946, !DIExpression(), !1943)
    #dbg_value(ptr %s, !1947, !DIExpression(), !1943)
    #dbg_value(ptr %SPS, !1948, !DIExpression(), !1943)
    #dbg_declare(ptr %PS, !1949, !DIExpression(), !1953)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(133056) %PS, i8 0, i32 133056, i1 false), !dbg !1953
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 12, ptr noundef nonnull %PS) #6, !dbg !1954
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 142, i32 noundef 12, i32 noundef 154, ptr noundef %SPS) #6, !dbg !1955
  ret void, !dbg !1956
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !1957 {
entry:
  %accumulator = alloca [266112 x i64], align 8
    #dbg_value(ptr %P1, !1960, !DIExpression(), !1961)
    #dbg_value(ptr %P2, !1962, !DIExpression(), !1961)
    #dbg_value(ptr %P3, !1963, !DIExpression(), !1961)
    #dbg_value(ptr %S, !1964, !DIExpression(), !1961)
    #dbg_value(i32 %m, !1965, !DIExpression(), !1961)
    #dbg_value(i32 %v, !1966, !DIExpression(), !1961)
    #dbg_value(i32 %o, !1967, !DIExpression(), !1961)
    #dbg_value(i32 %k, !1968, !DIExpression(), !1961)
    #dbg_value(ptr %PS, !1969, !DIExpression(), !1961)
  %add = add i32 %o, %v, !dbg !1970
    #dbg_value(i32 %add, !1971, !DIExpression(), !1961)
  %add1 = add nsw i32 %m, 15, !dbg !1972
  %div = sdiv i32 %add1, 16, !dbg !1973
    #dbg_value(i32 %div, !1974, !DIExpression(), !1961)
    #dbg_declare(ptr %accumulator, !1975, !DIExpression(), !1979)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2128896) %accumulator, i8 0, i32 2128896, i1 false), !dbg !1979
    #dbg_value(i32 0, !1980, !DIExpression(), !1961)
    #dbg_value(i32 0, !1981, !DIExpression(), !1983)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !1984
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !1984
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !1984
  br label %for.cond, !dbg !1984

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !1985
  %P1_used.0 = phi i32 [ %P1_used.1, %for.inc52 ], [ 0, %entry ], !dbg !1985
  %row.0 = phi i32 [ %inc53, %for.inc52 ], [ 0, %entry ], !dbg !1986
    #dbg_value(i32 %row.0, !1981, !DIExpression(), !1983)
    #dbg_value(i32 %P1_used.0, !1980, !DIExpression(), !1961)
  %exitcond6.not = icmp eq i32 %row.0, %smax5, !dbg !1987
  br i1 %exitcond6.not, label %for.cond56.preheader, label %for.cond2.preheader, !dbg !1989

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !1990
  br label %for.cond2, !dbg !1990

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !1993
  br label %for.cond56, !dbg !1993

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !1961
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !1995
    #dbg_value(i32 %j.0, !1996, !DIExpression(), !1997)
    #dbg_value(i32 %P1_used.1, !1980, !DIExpression(), !1961)
  %exitcond1.not = icmp eq i32 %P1_used.1, %0, !dbg !1998
  br i1 %exitcond1.not, label %for.cond21, label %for.cond5, !dbg !1990

for.cond5:                                        ; preds = %for.cond2, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond2 ], !dbg !2000
    #dbg_value(i32 %col.0, !2003, !DIExpression(), !2004)
  %exitcond.not = icmp eq i32 %col.0, %smax, !dbg !2005
  br i1 %exitcond.not, label %for.inc17, label %for.body7, !dbg !2007

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !2008
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !2010
  %mul8 = mul nsw i32 %row.0, %k, !dbg !2011
  %add9 = add nsw i32 %mul8, %col.0, !dbg !2012
  %mul10 = shl nsw i32 %add9, 4, !dbg !2013
  %mul11 = mul nsw i32 %col.0, %add, !dbg !2014
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2015
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2015
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2015
  %conv = zext i8 %2 to i32, !dbg !2015
  %add13 = add nsw i32 %mul10, %conv, !dbg !2016
  %mul14 = mul nsw i32 %add13, %div, !dbg !2017
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !2018
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2019
  %inc = add nuw i32 %col.0, 1, !dbg !2020
    #dbg_value(i32 %inc, !2003, !DIExpression(), !2004)
  br label %for.cond5, !dbg !2021, !llvm.loop !2022

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !1980, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1961)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2024
    #dbg_value(i32 %inc16, !1980, !DIExpression(), !1961)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2025
    #dbg_value(i32 %inc18, !1996, !DIExpression(), !1997)
  br label %for.cond2, !dbg !2026, !llvm.loop !2027

for.cond21:                                       ; preds = %for.cond2, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond2 ], !dbg !2029
    #dbg_value(i32 %j20.0, !2031, !DIExpression(), !2032)
  %exitcond4.not = icmp eq i32 %j20.0, %smax3, !dbg !2033
  br i1 %exitcond4.not, label %for.inc52, label %for.cond26, !dbg !2035

for.cond26:                                       ; preds = %for.cond21, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond21 ], !dbg !2036
    #dbg_value(i32 %col25.0, !2039, !DIExpression(), !2040)
  %exitcond2.not = icmp eq i32 %col25.0, %smax, !dbg !2041
  br i1 %exitcond2.not, label %for.inc49, label %for.body29, !dbg !2043

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !2044
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !2046
  %mul32 = mul nsw i32 %add31, %div, !dbg !2047
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !2048
  %mul35 = mul nsw i32 %row.0, %k, !dbg !2049
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !2050
  %mul37 = shl nsw i32 %add36, 4, !dbg !2051
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !2052
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2053
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2053
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !2053
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2053
  %conv42 = zext i8 %5 to i32, !dbg !2053
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2054
  %mul44 = mul nsw i32 %add43, %div, !dbg !2055
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2056
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2057
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2058
    #dbg_value(i32 %inc47, !2039, !DIExpression(), !2040)
  br label %for.cond26, !dbg !2059, !llvm.loop !2060

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2062
    #dbg_value(i32 %inc50, !2031, !DIExpression(), !2032)
  br label %for.cond21, !dbg !2063, !llvm.loop !2064

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2066
    #dbg_value(i32 %inc53, !1981, !DIExpression(), !1983)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2067
  br label %for.cond, !dbg !2067, !llvm.loop !2068

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2070
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2071
    #dbg_value(i32 %row55.0, !2072, !DIExpression(), !2073)
    #dbg_value(i32 %P3_used.0, !2074, !DIExpression(), !1961)
  %exitcond9.not = icmp eq i32 %row55.0, %smax8, !dbg !2075
  br i1 %exitcond9.not, label %while.cond.preheader, label %for.cond61, !dbg !1993

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2077
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2077
  br label %while.cond, !dbg !2077

for.cond61:                                       ; preds = %for.cond56, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond56 ], !dbg !1961
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond56 ], !dbg !2078
    #dbg_value(i32 %j60.0, !2081, !DIExpression(), !2082)
    #dbg_value(i32 %P3_used.1, !2074, !DIExpression(), !1961)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2083
  br i1 %cmp62, label %for.cond66, label %for.inc90, !dbg !2085

for.cond66:                                       ; preds = %for.cond61, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond61 ], !dbg !2086
    #dbg_value(i32 %col65.0, !2089, !DIExpression(), !2090)
  %exitcond7.not = icmp eq i32 %col65.0, %smax, !dbg !2091
  br i1 %exitcond7.not, label %for.inc87, label %for.body69, !dbg !2093

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2094
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2096
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2097
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2098
  %mul75 = shl nsw i32 %add74, 4, !dbg !2099
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2100
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2101
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2101
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2101
  %conv79 = zext i8 %8 to i32, !dbg !2101
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2102
  %mul81 = mul nsw i32 %add80, %div, !dbg !2103
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2104
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2105
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2106
    #dbg_value(i32 %inc84, !2089, !DIExpression(), !2090)
  br label %for.cond66, !dbg !2107, !llvm.loop !2108

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2074, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1961)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2110
    #dbg_value(i32 %inc86, !2074, !DIExpression(), !1961)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2111
    #dbg_value(i32 %inc88, !2081, !DIExpression(), !2082)
  br label %for.cond61, !dbg !2112, !llvm.loop !2113

for.inc90:                                        ; preds = %for.cond61
  %inc91 = add i32 %row55.0, 1, !dbg !2115
    #dbg_value(i32 %inc91, !2072, !DIExpression(), !2073)
  br label %for.cond56, !dbg !2116, !llvm.loop !2117

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !1961
    #dbg_value(i32 %i.0, !2119, !DIExpression(), !1961)
  %exitcond11.not = icmp eq i32 %i.0, %smax10, !dbg !2120
  br i1 %exitcond11.not, label %while.end, label %while.body, !dbg !2077

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2121
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2123
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2124
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2125
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2126
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2127
  %inc102 = add nuw i32 %i.0, 1, !dbg !2128
    #dbg_value(i32 %inc102, !2119, !DIExpression(), !1961)
  br label %while.cond, !dbg !2077, !llvm.loop !2129

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2131
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2132 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %PS, !2135, !DIExpression(), !2136)
    #dbg_value(ptr %S, !2137, !DIExpression(), !2136)
    #dbg_value(i32 %m, !2138, !DIExpression(), !2136)
    #dbg_value(i32 %k, !2139, !DIExpression(), !2136)
    #dbg_value(i32 %n, !2140, !DIExpression(), !2136)
    #dbg_value(ptr %SPS, !2141, !DIExpression(), !2136)
    #dbg_declare(ptr %accumulator, !2142, !DIExpression(), !2146)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2146
  %add = add nsw i32 %m, 15, !dbg !2147
  %div = sdiv i32 %add, 16, !dbg !2148
    #dbg_value(i32 %div, !2149, !DIExpression(), !2136)
    #dbg_value(i32 0, !2150, !DIExpression(), !2152)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2153
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2153
  br label %for.cond, !dbg !2153

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2154
    #dbg_value(i32 %row.0, !2150, !DIExpression(), !2152)
  %exitcond3.not = icmp eq i32 %row.0, %smax2, !dbg !2155
  br i1 %exitcond3.not, label %while.cond.preheader, label %for.cond1, !dbg !2157

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2158
  br label %while.cond, !dbg !2158

for.cond1:                                        ; preds = %for.cond, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond ], !dbg !2159
    #dbg_value(i32 %j.0, !2162, !DIExpression(), !2163)
  %exitcond1.not = icmp eq i32 %j.0, %smax, !dbg !2164
  br i1 %exitcond1.not, label %for.inc20, label %for.cond4, !dbg !2166

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond1 ], !dbg !2167
    #dbg_value(i32 %col.0, !2170, !DIExpression(), !2171)
  %exitcond.not = icmp eq i32 %col.0, %k, !dbg !2172
  br i1 %exitcond.not, label %for.inc18, label %for.body6, !dbg !2174

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2175
  %add7 = add nsw i32 %mul, %col.0, !dbg !2177
  %mul8 = mul nsw i32 %add7, %div, !dbg !2178
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2179
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2180
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2181
  %mul11 = shl nsw i32 %add10, 4, !dbg !2182
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2183
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2184
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2184
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2184
  %conv = zext i8 %2 to i32, !dbg !2184
  %add14 = add nsw i32 %mul11, %conv, !dbg !2185
  %mul15 = mul nsw i32 %add14, %div, !dbg !2186
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2187
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2188
  %add17 = add nuw i32 %col.0, 1, !dbg !2189
    #dbg_value(i32 %add17, !2170, !DIExpression(), !2171)
  br label %for.cond4, !dbg !2190, !llvm.loop !2191

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2193
    #dbg_value(i32 %inc, !2162, !DIExpression(), !2163)
  br label %for.cond1, !dbg !2194, !llvm.loop !2195

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2197
    #dbg_value(i32 %inc21, !2150, !DIExpression(), !2152)
  br label %for.cond, !dbg !2198, !llvm.loop !2199

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2136
    #dbg_value(i32 %i.0, !2201, !DIExpression(), !2136)
  %exitcond4.not = icmp eq i32 %i.0, %0, !dbg !2202
  br i1 %exitcond4.not, label %while.end, label %while.body, !dbg !2158

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2203
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2205
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2206
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2207
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2208
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2209
  %inc32 = add nuw i32 %i.0, 1, !dbg !2210
    #dbg_value(i32 %inc32, !2201, !DIExpression(), !2136)
  br label %while.cond, !dbg !2158, !llvm.loop !2211

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2213
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2214 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2217, !DIExpression(), !2218)
    #dbg_value(ptr %in, !2219, !DIExpression(), !2218)
    #dbg_value(ptr %acc, !2220, !DIExpression(), !2218)
    #dbg_value(i32 0, !2221, !DIExpression(), !2223)
    #dbg_value(i32 0, !2221, !DIExpression(), !2223)
  %0 = load i64, ptr %in, align 8, !dbg !2224
  %1 = load i64, ptr %acc, align 8, !dbg !2227
  %xor = xor i64 %1, %0, !dbg !2227
  store i64 %xor, ptr %acc, align 8, !dbg !2227
    #dbg_value(i32 1, !2221, !DIExpression(), !2223)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2224
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2224
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2228
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2227
  %xor.1 = xor i64 %3, %2, !dbg !2227
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2227
    #dbg_value(i32 2, !2221, !DIExpression(), !2223)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2224
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2224
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2228
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2227
  %xor.2 = xor i64 %5, %4, !dbg !2227
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2227
    #dbg_value(i32 3, !2221, !DIExpression(), !2223)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2224
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2224
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2228
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2227
  %xor.3 = xor i64 %7, %6, !dbg !2227
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2227
    #dbg_value(i32 4, !2221, !DIExpression(), !2223)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2224
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2224
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2228
  %9 = load i64, ptr %arrayidx1.4, align 8, !dbg !2227
  %xor.4 = xor i64 %9, %8, !dbg !2227
  store i64 %xor.4, ptr %arrayidx1.4, align 8, !dbg !2227
    #dbg_value(i32 5, !2221, !DIExpression(), !2223)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2224
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2224
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2228
  %11 = load i64, ptr %arrayidx1.5, align 8, !dbg !2227
  %xor.5 = xor i64 %11, %10, !dbg !2227
  store i64 %xor.5, ptr %arrayidx1.5, align 8, !dbg !2227
    #dbg_value(i32 6, !2221, !DIExpression(), !2223)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2224
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2224
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2228
  %13 = load i64, ptr %arrayidx1.6, align 8, !dbg !2227
  %xor.6 = xor i64 %13, %12, !dbg !2227
  store i64 %xor.6, ptr %arrayidx1.6, align 8, !dbg !2227
    #dbg_value(i32 7, !2221, !DIExpression(), !2223)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %in, i32 56, !dbg !2224
  %14 = load i64, ptr %arrayidx.7, align 8, !dbg !2224
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %acc, i32 56, !dbg !2228
  %15 = load i64, ptr %arrayidx1.7, align 8, !dbg !2227
  %xor.7 = xor i64 %15, %14, !dbg !2227
  store i64 %xor.7, ptr %arrayidx1.7, align 8, !dbg !2227
    #dbg_value(i32 8, !2221, !DIExpression(), !2223)
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %in, i32 64, !dbg !2224
  %16 = load i64, ptr %arrayidx.8, align 8, !dbg !2224
  %arrayidx1.8 = getelementptr inbounds nuw i8, ptr %acc, i32 64, !dbg !2228
  %17 = load i64, ptr %arrayidx1.8, align 8, !dbg !2227
  %xor.8 = xor i64 %17, %16, !dbg !2227
  store i64 %xor.8, ptr %arrayidx1.8, align 8, !dbg !2227
    #dbg_value(i32 9, !2221, !DIExpression(), !2223)
  ret void, !dbg !2229
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2230 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2233, !DIExpression(), !2234)
    #dbg_value(ptr %bins, !2235, !DIExpression(), !2234)
    #dbg_value(ptr %out, !2236, !DIExpression(), !2234)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2237
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2238
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2239
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 792, !dbg !2240
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2241
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2242
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2243
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2244
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2245
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2246
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2247
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2248
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2249
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2250
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2251
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2252
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2253
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2254
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2255
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2256
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2257
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2258
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2259
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2260
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2261
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2262
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2263
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2264
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2265
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2266
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2267
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2268
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2269
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2270
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2271
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2272
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2273
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2274
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2275
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2276
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2277
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2278
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2279
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2280
  ret void, !dbg !2281
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2282 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2283, !DIExpression(), !2284)
    #dbg_value(ptr %in, !2285, !DIExpression(), !2284)
    #dbg_value(ptr %acc, !2286, !DIExpression(), !2284)
    #dbg_value(i64 1229782938247303441, !2287, !DIExpression(), !2284)
    #dbg_value(i32 0, !2288, !DIExpression(), !2290)
    #dbg_value(i32 0, !2288, !DIExpression(), !2290)
  %0 = load i64, ptr %in, align 8, !dbg !2291
  %and = and i64 %0, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and, !2295, !DIExpression(), !2296)
  %xor = lshr i64 %0, 1, !dbg !2297
  %shr = and i64 %xor, 8608480567731124087, !dbg !2297
  %mul = mul nuw i64 %and, 9, !dbg !2298
  %xor2 = xor i64 %shr, %mul, !dbg !2299
  %1 = load i64, ptr %acc, align 8, !dbg !2300
  %xor4 = xor i64 %1, %xor2, !dbg !2300
  store i64 %xor4, ptr %acc, align 8, !dbg !2300
    #dbg_value(i32 1, !2288, !DIExpression(), !2290)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2291
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2291
  %and.1 = and i64 %2, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.1, !2295, !DIExpression(), !2296)
  %xor.1 = lshr i64 %2, 1, !dbg !2297
  %shr.1 = and i64 %xor.1, 8608480567731124087, !dbg !2297
  %mul.1 = mul nuw i64 %and.1, 9, !dbg !2298
  %xor2.1 = xor i64 %shr.1, %mul.1, !dbg !2299
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2301
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2300
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2300
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2300
    #dbg_value(i32 2, !2288, !DIExpression(), !2290)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2291
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2291
  %and.2 = and i64 %4, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.2, !2295, !DIExpression(), !2296)
  %xor.2 = lshr i64 %4, 1, !dbg !2297
  %shr.2 = and i64 %xor.2, 8608480567731124087, !dbg !2297
  %mul.2 = mul nuw i64 %and.2, 9, !dbg !2298
  %xor2.2 = xor i64 %shr.2, %mul.2, !dbg !2299
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2301
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2300
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2300
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2300
    #dbg_value(i32 3, !2288, !DIExpression(), !2290)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2291
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2291
  %and.3 = and i64 %6, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.3, !2295, !DIExpression(), !2296)
  %xor.3 = lshr i64 %6, 1, !dbg !2297
  %shr.3 = and i64 %xor.3, 8608480567731124087, !dbg !2297
  %mul.3 = mul nuw i64 %and.3, 9, !dbg !2298
  %xor2.3 = xor i64 %shr.3, %mul.3, !dbg !2299
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2301
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2300
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2300
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2300
    #dbg_value(i32 4, !2288, !DIExpression(), !2290)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2291
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2291
  %and.4 = and i64 %8, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.4, !2295, !DIExpression(), !2296)
  %xor.4 = lshr i64 %8, 1, !dbg !2297
  %shr.4 = and i64 %xor.4, 8608480567731124087, !dbg !2297
  %mul.4 = mul nuw i64 %and.4, 9, !dbg !2298
  %xor2.4 = xor i64 %shr.4, %mul.4, !dbg !2299
  %arrayidx3.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2301
  %9 = load i64, ptr %arrayidx3.4, align 8, !dbg !2300
  %xor4.4 = xor i64 %9, %xor2.4, !dbg !2300
  store i64 %xor4.4, ptr %arrayidx3.4, align 8, !dbg !2300
    #dbg_value(i32 5, !2288, !DIExpression(), !2290)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2291
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2291
  %and.5 = and i64 %10, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.5, !2295, !DIExpression(), !2296)
  %xor.5 = lshr i64 %10, 1, !dbg !2297
  %shr.5 = and i64 %xor.5, 8608480567731124087, !dbg !2297
  %mul.5 = mul nuw i64 %and.5, 9, !dbg !2298
  %xor2.5 = xor i64 %shr.5, %mul.5, !dbg !2299
  %arrayidx3.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2301
  %11 = load i64, ptr %arrayidx3.5, align 8, !dbg !2300
  %xor4.5 = xor i64 %11, %xor2.5, !dbg !2300
  store i64 %xor4.5, ptr %arrayidx3.5, align 8, !dbg !2300
    #dbg_value(i32 6, !2288, !DIExpression(), !2290)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2291
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2291
  %and.6 = and i64 %12, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.6, !2295, !DIExpression(), !2296)
  %xor.6 = lshr i64 %12, 1, !dbg !2297
  %shr.6 = and i64 %xor.6, 8608480567731124087, !dbg !2297
  %mul.6 = mul nuw i64 %and.6, 9, !dbg !2298
  %xor2.6 = xor i64 %shr.6, %mul.6, !dbg !2299
  %arrayidx3.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2301
  %13 = load i64, ptr %arrayidx3.6, align 8, !dbg !2300
  %xor4.6 = xor i64 %13, %xor2.6, !dbg !2300
  store i64 %xor4.6, ptr %arrayidx3.6, align 8, !dbg !2300
    #dbg_value(i32 7, !2288, !DIExpression(), !2290)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %in, i32 56, !dbg !2291
  %14 = load i64, ptr %arrayidx.7, align 8, !dbg !2291
  %and.7 = and i64 %14, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.7, !2295, !DIExpression(), !2296)
  %xor.7 = lshr i64 %14, 1, !dbg !2297
  %shr.7 = and i64 %xor.7, 8608480567731124087, !dbg !2297
  %mul.7 = mul nuw i64 %and.7, 9, !dbg !2298
  %xor2.7 = xor i64 %shr.7, %mul.7, !dbg !2299
  %arrayidx3.7 = getelementptr inbounds nuw i8, ptr %acc, i32 56, !dbg !2301
  %15 = load i64, ptr %arrayidx3.7, align 8, !dbg !2300
  %xor4.7 = xor i64 %15, %xor2.7, !dbg !2300
  store i64 %xor4.7, ptr %arrayidx3.7, align 8, !dbg !2300
    #dbg_value(i32 8, !2288, !DIExpression(), !2290)
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %in, i32 64, !dbg !2291
  %16 = load i64, ptr %arrayidx.8, align 8, !dbg !2291
  %and.8 = and i64 %16, 1229782938247303441, !dbg !2294
    #dbg_value(i64 %and.8, !2295, !DIExpression(), !2296)
  %xor.8 = lshr i64 %16, 1, !dbg !2297
  %shr.8 = and i64 %xor.8, 8608480567731124087, !dbg !2297
  %mul.8 = mul nuw i64 %and.8, 9, !dbg !2298
  %xor2.8 = xor i64 %shr.8, %mul.8, !dbg !2299
  %arrayidx3.8 = getelementptr inbounds nuw i8, ptr %acc, i32 64, !dbg !2301
  %17 = load i64, ptr %arrayidx3.8, align 8, !dbg !2300
  %xor4.8 = xor i64 %17, %xor2.8, !dbg !2300
  store i64 %xor4.8, ptr %arrayidx3.8, align 8, !dbg !2300
    #dbg_value(i32 9, !2288, !DIExpression(), !2290)
  ret void, !dbg !2302
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2303 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2304, !DIExpression(), !2305)
    #dbg_value(ptr %in, !2306, !DIExpression(), !2305)
    #dbg_value(ptr %acc, !2307, !DIExpression(), !2305)
    #dbg_value(i64 -8608480567731124088, !2308, !DIExpression(), !2305)
    #dbg_value(i32 0, !2309, !DIExpression(), !2311)
    #dbg_value(i32 0, !2309, !DIExpression(), !2311)
  %0 = load i64, ptr %in, align 8, !dbg !2312
    #dbg_value(i64 %0, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor = shl i64 %0, 1, !dbg !2317
  %shl = and i64 %xor, -1229782938247303442, !dbg !2317
  %and = lshr i64 %0, 3, !dbg !2318
  %shr = and i64 %and, 1229782938247303441, !dbg !2318
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2319
  %xor2 = xor i64 %shl, %mul, !dbg !2320
  %1 = load i64, ptr %acc, align 8, !dbg !2321
  %xor4 = xor i64 %1, %xor2, !dbg !2321
  store i64 %xor4, ptr %acc, align 8, !dbg !2321
    #dbg_value(i32 1, !2309, !DIExpression(), !2311)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2312
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2312
    #dbg_value(i64 %2, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.1 = shl i64 %2, 1, !dbg !2317
  %shl.1 = and i64 %xor.1, -1229782938247303442, !dbg !2317
  %and.1 = lshr i64 %2, 3, !dbg !2318
  %shr.1 = and i64 %and.1, 1229782938247303441, !dbg !2318
  %mul.1 = mul nuw nsw i64 %shr.1, 3, !dbg !2319
  %xor2.1 = xor i64 %shl.1, %mul.1, !dbg !2320
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2322
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2321
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2321
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2321
    #dbg_value(i32 2, !2309, !DIExpression(), !2311)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2312
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2312
    #dbg_value(i64 %4, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.2 = shl i64 %4, 1, !dbg !2317
  %shl.2 = and i64 %xor.2, -1229782938247303442, !dbg !2317
  %and.2 = lshr i64 %4, 3, !dbg !2318
  %shr.2 = and i64 %and.2, 1229782938247303441, !dbg !2318
  %mul.2 = mul nuw nsw i64 %shr.2, 3, !dbg !2319
  %xor2.2 = xor i64 %shl.2, %mul.2, !dbg !2320
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2322
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2321
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2321
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2321
    #dbg_value(i32 3, !2309, !DIExpression(), !2311)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2312
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2312
    #dbg_value(i64 %6, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.3 = shl i64 %6, 1, !dbg !2317
  %shl.3 = and i64 %xor.3, -1229782938247303442, !dbg !2317
  %and.3 = lshr i64 %6, 3, !dbg !2318
  %shr.3 = and i64 %and.3, 1229782938247303441, !dbg !2318
  %mul.3 = mul nuw nsw i64 %shr.3, 3, !dbg !2319
  %xor2.3 = xor i64 %shl.3, %mul.3, !dbg !2320
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2322
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2321
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2321
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2321
    #dbg_value(i32 4, !2309, !DIExpression(), !2311)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2312
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2312
    #dbg_value(i64 %8, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.4 = shl i64 %8, 1, !dbg !2317
  %shl.4 = and i64 %xor.4, -1229782938247303442, !dbg !2317
  %and.4 = lshr i64 %8, 3, !dbg !2318
  %shr.4 = and i64 %and.4, 1229782938247303441, !dbg !2318
  %mul.4 = mul nuw nsw i64 %shr.4, 3, !dbg !2319
  %xor2.4 = xor i64 %shl.4, %mul.4, !dbg !2320
  %arrayidx3.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2322
  %9 = load i64, ptr %arrayidx3.4, align 8, !dbg !2321
  %xor4.4 = xor i64 %9, %xor2.4, !dbg !2321
  store i64 %xor4.4, ptr %arrayidx3.4, align 8, !dbg !2321
    #dbg_value(i32 5, !2309, !DIExpression(), !2311)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2312
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2312
    #dbg_value(i64 %10, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.5 = shl i64 %10, 1, !dbg !2317
  %shl.5 = and i64 %xor.5, -1229782938247303442, !dbg !2317
  %and.5 = lshr i64 %10, 3, !dbg !2318
  %shr.5 = and i64 %and.5, 1229782938247303441, !dbg !2318
  %mul.5 = mul nuw nsw i64 %shr.5, 3, !dbg !2319
  %xor2.5 = xor i64 %shl.5, %mul.5, !dbg !2320
  %arrayidx3.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2322
  %11 = load i64, ptr %arrayidx3.5, align 8, !dbg !2321
  %xor4.5 = xor i64 %11, %xor2.5, !dbg !2321
  store i64 %xor4.5, ptr %arrayidx3.5, align 8, !dbg !2321
    #dbg_value(i32 6, !2309, !DIExpression(), !2311)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2312
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2312
    #dbg_value(i64 %12, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.6 = shl i64 %12, 1, !dbg !2317
  %shl.6 = and i64 %xor.6, -1229782938247303442, !dbg !2317
  %and.6 = lshr i64 %12, 3, !dbg !2318
  %shr.6 = and i64 %and.6, 1229782938247303441, !dbg !2318
  %mul.6 = mul nuw nsw i64 %shr.6, 3, !dbg !2319
  %xor2.6 = xor i64 %shl.6, %mul.6, !dbg !2320
  %arrayidx3.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2322
  %13 = load i64, ptr %arrayidx3.6, align 8, !dbg !2321
  %xor4.6 = xor i64 %13, %xor2.6, !dbg !2321
  store i64 %xor4.6, ptr %arrayidx3.6, align 8, !dbg !2321
    #dbg_value(i32 7, !2309, !DIExpression(), !2311)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %in, i32 56, !dbg !2312
  %14 = load i64, ptr %arrayidx.7, align 8, !dbg !2312
    #dbg_value(i64 %14, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.7 = shl i64 %14, 1, !dbg !2317
  %shl.7 = and i64 %xor.7, -1229782938247303442, !dbg !2317
  %and.7 = lshr i64 %14, 3, !dbg !2318
  %shr.7 = and i64 %and.7, 1229782938247303441, !dbg !2318
  %mul.7 = mul nuw nsw i64 %shr.7, 3, !dbg !2319
  %xor2.7 = xor i64 %shl.7, %mul.7, !dbg !2320
  %arrayidx3.7 = getelementptr inbounds nuw i8, ptr %acc, i32 56, !dbg !2322
  %15 = load i64, ptr %arrayidx3.7, align 8, !dbg !2321
  %xor4.7 = xor i64 %15, %xor2.7, !dbg !2321
  store i64 %xor4.7, ptr %arrayidx3.7, align 8, !dbg !2321
    #dbg_value(i32 8, !2309, !DIExpression(), !2311)
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %in, i32 64, !dbg !2312
  %16 = load i64, ptr %arrayidx.8, align 8, !dbg !2312
    #dbg_value(i64 %16, !2315, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2316)
  %xor.8 = shl i64 %16, 1, !dbg !2317
  %shl.8 = and i64 %xor.8, -1229782938247303442, !dbg !2317
  %and.8 = lshr i64 %16, 3, !dbg !2318
  %shr.8 = and i64 %and.8, 1229782938247303441, !dbg !2318
  %mul.8 = mul nuw nsw i64 %shr.8, 3, !dbg !2319
  %xor2.8 = xor i64 %shl.8, %mul.8, !dbg !2320
  %arrayidx3.8 = getelementptr inbounds nuw i8, ptr %acc, i32 64, !dbg !2322
  %17 = load i64, ptr %arrayidx3.8, align 8, !dbg !2321
  %xor4.8 = xor i64 %17, %xor2.8, !dbg !2321
  store i64 %xor4.8, ptr %arrayidx3.8, align 8, !dbg !2321
    #dbg_value(i32 9, !2309, !DIExpression(), !2311)
  ret void, !dbg !2323
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2324 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2325, !DIExpression(), !2326)
    #dbg_value(ptr %in, !2327, !DIExpression(), !2326)
    #dbg_value(ptr %out, !2328, !DIExpression(), !2326)
    #dbg_value(i32 0, !2329, !DIExpression(), !2331)
    #dbg_value(i32 0, !2329, !DIExpression(), !2331)
  %0 = load i64, ptr %in, align 8, !dbg !2332
  store i64 %0, ptr %out, align 8, !dbg !2335
    #dbg_value(i32 1, !2329, !DIExpression(), !2331)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2332
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2332
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2336
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2335
    #dbg_value(i32 2, !2329, !DIExpression(), !2331)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2332
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2332
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2336
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2335
    #dbg_value(i32 3, !2329, !DIExpression(), !2331)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2332
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2332
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2336
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2335
    #dbg_value(i32 4, !2329, !DIExpression(), !2331)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2332
  %4 = load i64, ptr %arrayidx.4, align 8, !dbg !2332
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %out, i32 32, !dbg !2336
  store i64 %4, ptr %arrayidx1.4, align 8, !dbg !2335
    #dbg_value(i32 5, !2329, !DIExpression(), !2331)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2332
  %5 = load i64, ptr %arrayidx.5, align 8, !dbg !2332
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %out, i32 40, !dbg !2336
  store i64 %5, ptr %arrayidx1.5, align 8, !dbg !2335
    #dbg_value(i32 6, !2329, !DIExpression(), !2331)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2332
  %6 = load i64, ptr %arrayidx.6, align 8, !dbg !2332
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %out, i32 48, !dbg !2336
  store i64 %6, ptr %arrayidx1.6, align 8, !dbg !2335
    #dbg_value(i32 7, !2329, !DIExpression(), !2331)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %in, i32 56, !dbg !2332
  %7 = load i64, ptr %arrayidx.7, align 8, !dbg !2332
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %out, i32 56, !dbg !2336
  store i64 %7, ptr %arrayidx1.7, align 8, !dbg !2335
    #dbg_value(i32 8, !2329, !DIExpression(), !2331)
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %in, i32 64, !dbg !2332
  %8 = load i64, ptr %arrayidx.8, align 8, !dbg !2332
  %arrayidx1.8 = getelementptr inbounds nuw i8, ptr %out, i32 64, !dbg !2336
  store i64 %8, ptr %arrayidx1.8, align 8, !dbg !2335
    #dbg_value(i32 9, !2329, !DIExpression(), !2331)
  ret void, !dbg !2337
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2338 {
entry:
    #dbg_value(ptr %p, !2369, !DIExpression(), !2370)
    #dbg_value(ptr %in, !2371, !DIExpression(), !2370)
    #dbg_value(ptr %out, !2372, !DIExpression(), !2370)
    #dbg_value(i32 %size, !2373, !DIExpression(), !2370)
    #dbg_value(i32 9, !2374, !DIExpression(), !2370)
    #dbg_value(i32 0, !2375, !DIExpression(), !2370)
    #dbg_value(i32 0, !2376, !DIExpression(), !2378)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2379
  br label %for.cond, !dbg !2379

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2380
  %m_vecs_stored.0 = phi i32 [ %m_vecs_stored.1, %for.inc15 ], [ 0, %entry ], !dbg !2380
  %r.0 = phi i32 [ %inc16, %for.inc15 ], [ 0, %entry ], !dbg !2381
    #dbg_value(i32 %r.0, !2376, !DIExpression(), !2378)
    #dbg_value(i32 %m_vecs_stored.0, !2375, !DIExpression(), !2370)
  %exitcond1.not = icmp eq i32 %r.0, %smax, !dbg !2382
  br i1 %exitcond1.not, label %for.end17, label %for.cond1.preheader, !dbg !2384

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2385
  br label %for.cond1, !dbg !2385

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2370
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2388
    #dbg_value(i32 %c.0, !2389, !DIExpression(), !2390)
    #dbg_value(i32 %m_vecs_stored.1, !2375, !DIExpression(), !2370)
  %exitcond.not = icmp eq i32 %m_vecs_stored.1, %0, !dbg !2391
  br i1 %exitcond.not, label %for.inc15, label %for.body3, !dbg !2385

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2393
  %add = add nsw i32 %mul, %c.0, !dbg !2395
  %add.ptr.idx = mul nsw i32 %add, 72, !dbg !2396
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2396
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2397
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2397
  call fastcc void @m_vec_copy.17(i32 noundef 9, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2398
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2399
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2399

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2401
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2403
  %add.ptr11.idx = mul nsw i32 %add9, 72, !dbg !2404
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2404
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2405
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2405
  call fastcc void @m_vec_add.18(i32 noundef 9, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2406
  br label %for.inc, !dbg !2407

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2375, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2370)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2408
    #dbg_value(i32 %inc, !2375, !DIExpression(), !2370)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2409
    #dbg_value(i32 %inc14, !2389, !DIExpression(), !2390)
  br label %for.cond1, !dbg !2410, !llvm.loop !2411

for.inc15:                                        ; preds = %for.cond1
  %inc16 = add nuw i32 %r.0, 1, !dbg !2413
    #dbg_value(i32 %inc16, !2376, !DIExpression(), !2378)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2414
  br label %for.cond, !dbg !2414, !llvm.loop !2415

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2417
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2418 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2419, !DIExpression(), !2420)
    #dbg_value(ptr %in, !2421, !DIExpression(), !2420)
    #dbg_value(ptr %out, !2422, !DIExpression(), !2420)
    #dbg_value(i32 0, !2423, !DIExpression(), !2425)
    #dbg_value(i32 0, !2423, !DIExpression(), !2425)
  %0 = load i64, ptr %in, align 8, !dbg !2426
  store i64 %0, ptr %out, align 8, !dbg !2429
    #dbg_value(i32 1, !2423, !DIExpression(), !2425)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2426
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2426
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2430
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2429
    #dbg_value(i32 2, !2423, !DIExpression(), !2425)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2426
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2426
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2430
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2429
    #dbg_value(i32 3, !2423, !DIExpression(), !2425)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2426
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2426
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2430
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2429
    #dbg_value(i32 4, !2423, !DIExpression(), !2425)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2426
  %4 = load i64, ptr %arrayidx.4, align 8, !dbg !2426
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %out, i32 32, !dbg !2430
  store i64 %4, ptr %arrayidx1.4, align 8, !dbg !2429
    #dbg_value(i32 5, !2423, !DIExpression(), !2425)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2426
  %5 = load i64, ptr %arrayidx.5, align 8, !dbg !2426
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %out, i32 40, !dbg !2430
  store i64 %5, ptr %arrayidx1.5, align 8, !dbg !2429
    #dbg_value(i32 6, !2423, !DIExpression(), !2425)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2426
  %6 = load i64, ptr %arrayidx.6, align 8, !dbg !2426
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %out, i32 48, !dbg !2430
  store i64 %6, ptr %arrayidx1.6, align 8, !dbg !2429
    #dbg_value(i32 7, !2423, !DIExpression(), !2425)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %in, i32 56, !dbg !2426
  %7 = load i64, ptr %arrayidx.7, align 8, !dbg !2426
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %out, i32 56, !dbg !2430
  store i64 %7, ptr %arrayidx1.7, align 8, !dbg !2429
    #dbg_value(i32 8, !2423, !DIExpression(), !2425)
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %in, i32 64, !dbg !2426
  %8 = load i64, ptr %arrayidx.8, align 8, !dbg !2426
  %arrayidx1.8 = getelementptr inbounds nuw i8, ptr %out, i32 64, !dbg !2430
  store i64 %8, ptr %arrayidx1.8, align 8, !dbg !2429
    #dbg_value(i32 9, !2423, !DIExpression(), !2425)
  ret void, !dbg !2431
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2432 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2433, !DIExpression(), !2434)
    #dbg_value(ptr %in, !2435, !DIExpression(), !2434)
    #dbg_value(ptr %acc, !2436, !DIExpression(), !2434)
    #dbg_value(i32 0, !2437, !DIExpression(), !2439)
    #dbg_value(i32 0, !2437, !DIExpression(), !2439)
  %0 = load i64, ptr %in, align 8, !dbg !2440
  %1 = load i64, ptr %acc, align 8, !dbg !2443
  %xor = xor i64 %1, %0, !dbg !2443
  store i64 %xor, ptr %acc, align 8, !dbg !2443
    #dbg_value(i32 1, !2437, !DIExpression(), !2439)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2440
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2440
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2444
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2443
  %xor.1 = xor i64 %3, %2, !dbg !2443
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2443
    #dbg_value(i32 2, !2437, !DIExpression(), !2439)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2440
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2440
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2444
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2443
  %xor.2 = xor i64 %5, %4, !dbg !2443
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2443
    #dbg_value(i32 3, !2437, !DIExpression(), !2439)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2440
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2440
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2444
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2443
  %xor.3 = xor i64 %7, %6, !dbg !2443
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2443
    #dbg_value(i32 4, !2437, !DIExpression(), !2439)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2440
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2440
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2444
  %9 = load i64, ptr %arrayidx1.4, align 8, !dbg !2443
  %xor.4 = xor i64 %9, %8, !dbg !2443
  store i64 %xor.4, ptr %arrayidx1.4, align 8, !dbg !2443
    #dbg_value(i32 5, !2437, !DIExpression(), !2439)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2440
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2440
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2444
  %11 = load i64, ptr %arrayidx1.5, align 8, !dbg !2443
  %xor.5 = xor i64 %11, %10, !dbg !2443
  store i64 %xor.5, ptr %arrayidx1.5, align 8, !dbg !2443
    #dbg_value(i32 6, !2437, !DIExpression(), !2439)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2440
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2440
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2444
  %13 = load i64, ptr %arrayidx1.6, align 8, !dbg !2443
  %xor.6 = xor i64 %13, %12, !dbg !2443
  store i64 %xor.6, ptr %arrayidx1.6, align 8, !dbg !2443
    #dbg_value(i32 7, !2437, !DIExpression(), !2439)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %in, i32 56, !dbg !2440
  %14 = load i64, ptr %arrayidx.7, align 8, !dbg !2440
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %acc, i32 56, !dbg !2444
  %15 = load i64, ptr %arrayidx1.7, align 8, !dbg !2443
  %xor.7 = xor i64 %15, %14, !dbg !2443
  store i64 %xor.7, ptr %arrayidx1.7, align 8, !dbg !2443
    #dbg_value(i32 8, !2437, !DIExpression(), !2439)
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %in, i32 64, !dbg !2440
  %16 = load i64, ptr %arrayidx.8, align 8, !dbg !2440
  %arrayidx1.8 = getelementptr inbounds nuw i8, ptr %acc, i32 64, !dbg !2444
  %17 = load i64, ptr %arrayidx1.8, align 8, !dbg !2443
  %xor.8 = xor i64 %17, %16, !dbg !2443
  store i64 %xor.8, ptr %arrayidx1.8, align 8, !dbg !2443
    #dbg_value(i32 9, !2437, !DIExpression(), !2439)
  ret void, !dbg !2445
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2446 {
entry:
  %Ar = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2449, !DIExpression(), !2450)
    #dbg_value(ptr %A, !2451, !DIExpression(), !2450)
    #dbg_value(ptr %y, !2452, !DIExpression(), !2450)
    #dbg_value(ptr %r, !2453, !DIExpression(), !2450)
    #dbg_value(ptr %x, !2454, !DIExpression(), !2450)
    #dbg_value(i32 %k, !2455, !DIExpression(), !2450)
    #dbg_value(i32 %o, !2456, !DIExpression(), !2450)
    #dbg_value(i32 %m, !2457, !DIExpression(), !2450)
    #dbg_value(i32 %A_cols, !2458, !DIExpression(), !2450)
    #dbg_value(i32 0, !2459, !DIExpression(), !2461)
  %0 = mul nsw i32 %o, %k, !dbg !2462
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2462
  br label %for.cond, !dbg !2462

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2463
    #dbg_value(i32 %i.0, !2459, !DIExpression(), !2461)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2464
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2466

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2467
  br label %for.cond3, !dbg !2467

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2469
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2469
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2471
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2472
  %inc = add nuw i32 %i.0, 1, !dbg !2473
    #dbg_value(i32 %inc, !2459, !DIExpression(), !2461)
  br label %for.cond, !dbg !2474, !llvm.loop !2475

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2477
    #dbg_value(i32 %i2.0, !2478, !DIExpression(), !2479)
  %exitcond14.not = icmp eq i32 %i2.0, %smax13, !dbg !2480
  br i1 %exitcond14.not, label %for.end13, label %for.body5, !dbg !2467

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2482
  %mul7 = mul nsw i32 %k, %o, !dbg !2484
  %add = add nsw i32 %mul7, 1, !dbg !2485
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2486
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2487
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2487
  store i8 0, ptr %arrayidx10, align 1, !dbg !2488
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2489
    #dbg_value(i32 %inc12, !2478, !DIExpression(), !2479)
  br label %for.cond3, !dbg !2490, !llvm.loop !2491

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2493
  %add15 = add nsw i32 %mul14, 1, !dbg !2494
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2495
    #dbg_value(i32 0, !2496, !DIExpression(), !2498)
  br label %for.cond17, !dbg !2499

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2500
    #dbg_value(i32 %i16.0, !2496, !DIExpression(), !2498)
  %exitcond15.not = icmp eq i32 %i16.0, %smax13, !dbg !2501
  br i1 %exitcond15.not, label %for.end30, label %for.body19, !dbg !2503

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2504
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2504
  %arrayidx21 = getelementptr inbounds nuw [142 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2506
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2506
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2507
  %mul22 = mul nsw i32 %k, %o, !dbg !2508
  %mul23 = mul nsw i32 %k, %o, !dbg !2509
  %add24 = add nsw i32 %mul23, 1, !dbg !2510
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2511
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2512
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2512
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2513
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2514
    #dbg_value(i32 %inc29, !2496, !DIExpression(), !2498)
  br label %for.cond17, !dbg !2515, !llvm.loop !2516

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2518
  %add32 = add nsw i32 %mul31, 1, !dbg !2519
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2520
    #dbg_value(i8 0, !2521, !DIExpression(), !2450)
    #dbg_value(i32 0, !2522, !DIExpression(), !2524)
  %6 = add i32 %A_cols, -1, !dbg !2525
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2525
  br label %for.cond34, !dbg !2525

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2450
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2526
    #dbg_value(i32 %i33.0, !2522, !DIExpression(), !2524)
    #dbg_value(i8 %full_rank.0, !2521, !DIExpression(), !2450)
  %exitcond17.not = icmp eq i32 %i33.0, %smax16, !dbg !2527
  br i1 %exitcond17.not, label %for.end45, label %for.inc43, !dbg !2529

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2450)
  %sub37 = add nsw i32 %m, -1, !dbg !2530
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2532
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2533
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2533
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2533
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2450)
  %or12 = or i8 %full_rank.0, %8, !dbg !2534
    #dbg_value(i8 %or12, !2521, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2450)
    #dbg_value(i8 %or12, !2521, !DIExpression(), !2450)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2535
    #dbg_value(i32 %inc44, !2522, !DIExpression(), !2524)
  br label %for.cond34, !dbg !2536, !llvm.loop !2537

for.end45:                                        ; preds = %for.cond34
  %cmp47 = icmp eq i8 %full_rank.0, 0, !dbg !2539
  br i1 %cmp47, label %return, label %for.cond50, !dbg !2539

for.cond50:                                       ; preds = %for.cond63, %for.end45
  %row.0.in = phi i32 [ %m, %for.end45 ], [ %row.0, %for.cond63 ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2541
    #dbg_value(i32 %row.0, !2543, !DIExpression(), !2544)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2545
  br i1 %cmp51, label %for.body53, label %return, !dbg !2547

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2548, !DIExpression(), !2450)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2549
  %div = sdiv i32 32, %sub54, !dbg !2549
  %add55 = add nsw i32 %row.0, %div, !dbg !2549
  %mul56 = mul nsw i32 %k, %o, !dbg !2549
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2549
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2549

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2549
  %div60 = sdiv i32 32, %sub59, !dbg !2549
  %add61 = add nsw i32 %row.0, %div60, !dbg !2549
  br label %cond.end, !dbg !2549

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2549
  br label %cond.end, !dbg !2549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2549
    #dbg_value(i32 %cond, !2551, !DIExpression(), !2450)
    #dbg_value(i32 %row.0, !2552, !DIExpression(), !2554)
  br label %for.cond63, !dbg !2555

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2556
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2557
    #dbg_value(i32 %col.0, !2552, !DIExpression(), !2554)
    #dbg_value(i8 %finished.0, !2548, !DIExpression(), !2450)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2558
  br i1 %cmp64.not, label %for.cond50, label %for.body66, !dbg !2560, !llvm.loop !2561

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2563
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2565
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2565
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2565
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2566
  %not = xor i8 %finished.0, -1, !dbg !2567
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2450)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2569
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2570
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2570
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2570
  %13 = and i8 %12, %not, !dbg !2571
  %and801 = and i8 %13, %call70, !dbg !2571
    #dbg_value(i8 %and801, !2572, !DIExpression(), !2573)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2574
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2575
  %xor2 = xor i8 %14, %and801, !dbg !2575
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2575
    #dbg_value(i32 0, !2576, !DIExpression(), !2578)
  br label %for.cond87, !dbg !2579

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2580
    #dbg_value(i32 %i86.0, !2576, !DIExpression(), !2578)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2581
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2583

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2584
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2586
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2586
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2586
  %conv94 = zext i8 %16 to i64, !dbg !2587
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2588
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2589
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2590
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2590
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2590
  %conv99 = zext i8 %18 to i64, !dbg !2591
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2592
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2593
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2594
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2595
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2596
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2596
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2596
  %conv106 = zext i8 %20 to i64, !dbg !2597
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2598
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2599
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2600
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2601
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2602
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2602
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2602
  %conv113 = zext i8 %22 to i64, !dbg !2603
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2604
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2605
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2606
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2607
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2608
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2608
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2608
  %conv120 = zext i8 %24 to i64, !dbg !2609
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2610
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2611
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2612
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2613
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2614
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2614
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2614
  %conv127 = zext i8 %26 to i64, !dbg !2615
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2616
  %xor129 = xor i64 %xor122, %shl128, !dbg !2617
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2618
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2619
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2620
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2620
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2620
  %conv134 = zext i8 %28 to i64, !dbg !2621
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2622
  %xor136 = xor i64 %xor129, %shl135, !dbg !2623
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2624
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2625
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2626
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2626
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2626
  %conv141 = zext i8 %30 to i64, !dbg !2627
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2628
  %xor143 = xor i64 %xor136, %shl142, !dbg !2629
    #dbg_value(i64 %xor143, !2630, !DIExpression(), !2631)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2632
    #dbg_value(i64 %call144, !2630, !DIExpression(), !2631)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2633
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2633
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2634
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2634
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2635
  %33 = trunc i64 %call144 to i8, !dbg !2635
  %34 = and i8 %33, 15, !dbg !2635
  %conv152 = xor i8 %34, %32, !dbg !2635
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2635
  %shr = lshr i64 %call144, 8, !dbg !2636
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2637
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2637
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2638
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2638
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2639
  %37 = trunc i64 %shr to i8, !dbg !2639
  %38 = and i8 %37, 15, !dbg !2639
  %conv161 = xor i8 %38, %36, !dbg !2639
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2639
  %shr162 = lshr i64 %call144, 16, !dbg !2640
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2641
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2641
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2642
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2642
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2643
  %41 = trunc i64 %shr162 to i8, !dbg !2643
  %42 = and i8 %41, 15, !dbg !2643
  %conv171 = xor i8 %42, %40, !dbg !2643
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2643
  %shr172 = lshr i64 %call144, 24, !dbg !2644
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2645
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2645
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2646
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2646
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2647
  %45 = trunc i64 %shr172 to i8, !dbg !2647
  %46 = and i8 %45, 15, !dbg !2647
  %conv181 = xor i8 %46, %44, !dbg !2647
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2647
  %shr182 = lshr i64 %call144, 32, !dbg !2648
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2649
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2649
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2650
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2650
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2651
  %49 = trunc i64 %shr182 to i8, !dbg !2651
  %50 = and i8 %49, 15, !dbg !2651
  %conv191 = xor i8 %50, %48, !dbg !2651
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2651
  %shr192 = lshr i64 %call144, 40, !dbg !2652
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2653
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2653
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2654
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2654
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2655
  %53 = trunc i64 %shr192 to i8, !dbg !2655
  %54 = and i8 %53, 15, !dbg !2655
  %conv201 = xor i8 %54, %52, !dbg !2655
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2655
  %shr202 = lshr i64 %call144, 48, !dbg !2656
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2657
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2657
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2658
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2658
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2659
  %57 = trunc i64 %shr202 to i8, !dbg !2659
  %58 = and i8 %57, 15, !dbg !2659
  %conv211 = xor i8 %58, %56, !dbg !2659
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2659
  %shr212 = lshr i64 %call144, 56, !dbg !2660
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2661
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2661
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2662
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2662
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2663
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2663
  %conv221 = xor i8 %60, %61, !dbg !2663
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2663
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2664
    #dbg_value(i32 %add223, !2576, !DIExpression(), !2578)
  br label %for.cond87, !dbg !2665, !llvm.loop !2666

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2450)
  %or2273 = or i8 %finished.0, %call70, !dbg !2668
    #dbg_value(i8 %or2273, !2548, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2450)
    #dbg_value(i8 %or2273, !2548, !DIExpression(), !2450)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2669
    #dbg_value(i32 %inc230, !2552, !DIExpression(), !2554)
  br label %for.cond63, !dbg !2670, !llvm.loop !2671

return:                                           ; preds = %for.cond50, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %for.cond50 ], !dbg !2450
  ret i32 %retval.0, !dbg !2673
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2674 {
entry:
    #dbg_value(ptr %a, !2675, !DIExpression(), !2676)
    #dbg_value(ptr %b, !2677, !DIExpression(), !2676)
    #dbg_value(ptr %c, !2678, !DIExpression(), !2676)
    #dbg_value(i32 %colrow_ab, !2679, !DIExpression(), !2676)
    #dbg_value(i32 %row_a, !2680, !DIExpression(), !2676)
    #dbg_value(i32 %col_b, !2681, !DIExpression(), !2676)
    #dbg_value(i32 0, !2682, !DIExpression(), !2684)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2685
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2685
  br label %for.cond, !dbg !2685

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2686
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2675, !DIExpression(), !2676)
    #dbg_value(ptr %c.addr.0, !2678, !DIExpression(), !2676)
    #dbg_value(i32 %i.0, !2682, !DIExpression(), !2684)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !2687
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !2689

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !2690
    #dbg_value(i32 %j.0, !2693, !DIExpression(), !2694)
    #dbg_value(ptr %c.addr.1, !2678, !DIExpression(), !2676)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !2695
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !2697

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2698
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2700
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2701
  %inc = add nuw i32 %j.0, 1, !dbg !2702
    #dbg_value(i32 %inc, !2693, !DIExpression(), !2694)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2703
    #dbg_value(ptr %incdec.ptr, !2678, !DIExpression(), !2676)
  br label %for.cond1, !dbg !2704, !llvm.loop !2705

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !2707
    #dbg_value(i32 %inc5, !2682, !DIExpression(), !2684)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2708
    #dbg_value(ptr %add.ptr6, !2675, !DIExpression(), !2676)
  br label %for.cond, !dbg !2709, !llvm.loop !2710

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2712
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2713 {
entry:
    #dbg_value(i8 %a, !2714, !DIExpression(), !2715)
    #dbg_value(i8 %b, !2716, !DIExpression(), !2715)
  %xor1 = xor i8 %a, %b, !dbg !2717
  ret i8 %xor1, !dbg !2718
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2719 {
entry:
  %_pivot_row = alloca [10 x i64], align 32
  %_pivot_row2 = alloca [10 x i64], align 32
  %packed_A = alloca [1420 x i64], align 32
  %temp = alloca [160 x i8], align 1
    #dbg_value(ptr %A, !2723, !DIExpression(), !2724)
    #dbg_value(i32 %nrows, !2725, !DIExpression(), !2724)
    #dbg_value(i32 %ncols, !2726, !DIExpression(), !2724)
    #dbg_declare(ptr %_pivot_row, !2727, !DIExpression(), !2731)
    #dbg_declare(ptr %_pivot_row2, !2732, !DIExpression(), !2733)
    #dbg_declare(ptr %packed_A, !2734, !DIExpression(), !2738)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(11360) %packed_A, i8 0, i32 11360, i1 false), !dbg !2738
  %add = add nsw i32 %ncols, 15, !dbg !2739
  %div = sdiv i32 %add, 16, !dbg !2740
    #dbg_value(i32 %div, !2741, !DIExpression(), !2724)
    #dbg_value(i32 0, !2742, !DIExpression(), !2744)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2745
  br label %for.cond, !dbg !2745

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2746
    #dbg_value(i32 %i.0, !2742, !DIExpression(), !2744)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2747
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2749

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2750
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2750
  br label %for.cond3, !dbg !2750

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2752
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2754
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2755
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2756
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2757
  %inc = add nuw i32 %i.0, 1, !dbg !2758
    #dbg_value(i32 %inc, !2742, !DIExpression(), !2744)
  br label %for.cond, !dbg !2759, !llvm.loop !2760

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2762
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2724
    #dbg_value(i32 %pivot_row.0, !2763, !DIExpression(), !2724)
    #dbg_value(i32 %pivot_col.0, !2764, !DIExpression(), !2765)
  %exitcond6.not = icmp eq i32 %pivot_col.0, %smax5, !dbg !2766
  br i1 %exitcond6.not, label %for.cond121, label %for.body5, !dbg !2750

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2768
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2768
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2768
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2768
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2768
    #dbg_value(i32 %cond, !2770, !DIExpression(), !2771)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2772
    #dbg_value(i32 %cond16, !2773, !DIExpression(), !2771)
    #dbg_value(i32 0, !2774, !DIExpression(), !2776)
  br label %for.cond18, !dbg !2777

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2778
    #dbg_value(i32 %i17.0, !2774, !DIExpression(), !2776)
  %exitcond2.not = icmp eq i32 %i17.0, %smax1, !dbg !2779
  br i1 %exitcond2.not, label %for.cond25.preheader, label %for.body20, !dbg !2781

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2772
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2772
  br label %for.cond25, !dbg !2782

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2784
  store i64 0, ptr %arrayidx, align 8, !dbg !2786
  %arrayidx21 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2787
  store i64 0, ptr %arrayidx21, align 8, !dbg !2788
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2789
    #dbg_value(i32 %inc23, !2774, !DIExpression(), !2776)
  br label %for.cond18, !dbg !2790, !llvm.loop !2791

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2771
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2771
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2793
    #dbg_value(i32 %row.0, !2794, !DIExpression(), !2793)
    #dbg_value(i8 %pivot.0, !2795, !DIExpression(), !2771)
    #dbg_value(i64 %pivot_is_zero.0, !2796, !DIExpression(), !2771)
  %add27 = add nsw i32 %cond16, 32, !dbg !2797
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2797
  %sub30 = add nsw i32 %nrows, -1, !dbg !2797
  %add32 = add nsw i32 %cond16, 32, !dbg !2797
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2797
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2799
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2782

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2800
  %not = xor i64 %call, -1, !dbg !2802
    #dbg_value(i64 %not, !2803, !DIExpression(), !2804)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2805
    #dbg_value(i64 %call37, !2806, !DIExpression(), !2804)
    #dbg_value(i32 0, !2807, !DIExpression(), !2809)
  br label %for.cond38, !dbg !2810

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2811
    #dbg_value(i32 %j.0, !2807, !DIExpression(), !2809)
  %exitcond3.not = icmp eq i32 %j.0, %smax1, !dbg !2812
  br i1 %exitcond3.not, label %for.end48, label %for.body40, !dbg !2814

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2815
  %or = or i64 %and, %not, !dbg !2817
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2818
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2819
  %arrayidx43 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2820
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2820
  %and44 = and i64 %or, %0, !dbg !2821
  %arrayidx45 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2822
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2823
  %xor = xor i64 %1, %and44, !dbg !2823
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2823
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2824
    #dbg_value(i32 %inc47, !2807, !DIExpression(), !2809)
  br label %for.cond38, !dbg !2825, !llvm.loop !2826

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2828
    #dbg_value(i8 %call50, !2795, !DIExpression(), !2771)
  %conv = zext nneg i8 %call50 to i32, !dbg !2829
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2830
    #dbg_value(i64 %call51, !2796, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2771)
  %not52 = xor i64 %call51, -1, !dbg !2831
    #dbg_value(i64 %not52, !2796, !DIExpression(), !2771)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2832
    #dbg_value(i32 %inc54, !2794, !DIExpression(), !2793)
  br label %for.cond25, !dbg !2833, !llvm.loop !2834

for.end55:                                        ; preds = %for.cond25
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0) #6, !dbg !2836
    #dbg_value(i8 %call56, !2837, !DIExpression(), !2724)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2838
    #dbg_value(i32 %cond, !2839, !DIExpression(), !2841)
  br label %for.cond60, !dbg !2842

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2843
    #dbg_value(i32 %row59.0, !2839, !DIExpression(), !2841)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2844
  br i1 %cmp61.not, label %for.cond90, label %for.body63, !dbg !2846

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2847
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0, !dbg !2849
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2849
    #dbg_value(i64 %and67, !2850, !DIExpression(), !2851)
    #dbg_value(i64 %and67.demorgan, !2852, !DIExpression(), !2851)
    #dbg_value(i32 0, !2853, !DIExpression(), !2855)
  br label %for.cond69, !dbg !2856

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2857
    #dbg_value(i32 %col.0, !2853, !DIExpression(), !2855)
  %exitcond4.not = icmp eq i32 %col.0, %smax1, !dbg !2858
  br i1 %exitcond4.not, label %for.inc86, label %for.body72, !dbg !2860

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2861
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2863
  %arrayidx75 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2864
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2864
  %and76 = and i64 %and67.demorgan, %2, !dbg !2865
  %arrayidx77 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2866
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2866
  %and78 = and i64 %3, %and67, !dbg !2867
  %add79 = add i64 %and76, %and78, !dbg !2868
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2869
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2870
  %arrayidx82 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2871
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2872
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2873
    #dbg_value(i32 %inc84, !2853, !DIExpression(), !2855)
  br label %for.cond69, !dbg !2874, !llvm.loop !2875

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2877
    #dbg_value(i32 %inc87, !2839, !DIExpression(), !2841)
  br label %for.cond60, !dbg !2878, !llvm.loop !2879

for.cond90:                                       ; preds = %for.cond60, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond60 ], !dbg !2881
    #dbg_value(i32 %row89.0, !2883, !DIExpression(), !2884)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2885
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2887

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2888
    #dbg_value(i1 %cmp94, !2890, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2891)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2892
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2893
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2894
    #dbg_value(i8 %call100, !2895, !DIExpression(), !2891)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2896
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2897
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2898
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2899
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2900
    #dbg_value(i32 %inc110, !2883, !DIExpression(), !2884)
  br label %for.cond90, !dbg !2901, !llvm.loop !2902

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0, i32 %pivot_row.0), !2763, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2724)
  %4 = trunc i64 %pivot_is_zero.0 to i32, !dbg !2904
  %5 = add i32 %4, 1, !dbg !2904
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2904
    #dbg_value(i32 %conv116, !2763, !DIExpression(), !2724)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2905
    #dbg_value(i32 %inc118, !2764, !DIExpression(), !2765)
  br label %for.cond3, !dbg !2906, !llvm.loop !2907

for.cond121:                                      ; preds = %for.cond3, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond3 ], !dbg !2909
    #dbg_value(i32 %i120.0, !2911, !DIExpression(), !2912)
  %exitcond8.not = icmp eq i32 %i120.0, %smax, !dbg !2913
  br i1 %exitcond8.not, label %for.end143, label %for.body124, !dbg !2915

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2916
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2918
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2919
    #dbg_value(i32 0, !2920, !DIExpression(), !2922)
  br label %for.cond130, !dbg !2923

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2924
    #dbg_value(i32 %j129.0, !2920, !DIExpression(), !2922)
  %exitcond7.not = icmp eq i32 %j129.0, %smax5, !dbg !2925
  br i1 %exitcond7.not, label %for.inc141, label %for.body133, !dbg !2927

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [160 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2928
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2928
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2930
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2931
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2931
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2932
  %inc139 = add nuw i32 %j129.0, 1, !dbg !2933
    #dbg_value(i32 %inc139, !2920, !DIExpression(), !2922)
  br label %for.cond130, !dbg !2934, !llvm.loop !2935

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !2937
    #dbg_value(i32 %inc142, !2911, !DIExpression(), !2912)
  br label %for.cond121, !dbg !2938, !llvm.loop !2939

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 160) #8, !dbg !2941
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 80) #8, !dbg !2942
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 80) #8, !dbg !2943
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 11360) #8, !dbg !2944
  ret void, !dbg !2945
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2946 {
entry:
    #dbg_value(i8 %a, !2948, !DIExpression(), !2949)
    #dbg_value(i8 %b, !2950, !DIExpression(), !2949)
  %0 = icmp ne i8 %a, %b, !dbg !2951
  %conv3 = sext i1 %0 to i8, !dbg !2952
  %1 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !2953
  %xor5 = xor i8 %1, %conv3, !dbg !2954
  ret i8 %xor5, !dbg !2955
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !2956 {
entry:
    #dbg_value(i8 %a, !2959, !DIExpression(), !2960)
    #dbg_value(i64 %b, !2961, !DIExpression(), !2960)
  %0 = and i8 %a, 1, !dbg !2962
  %conv1 = zext nneg i8 %0 to i64, !dbg !2963
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !2964
    #dbg_value(i64 %mul, !2965, !DIExpression(), !2960)
  %1 = and i8 %a, 2, !dbg !2966
  %conv4 = zext nneg i8 %1 to i64, !dbg !2967
  %mul5 = mul i64 %b, %conv4, !dbg !2968
  %xor = xor i64 %mul, %mul5, !dbg !2969
    #dbg_value(i64 %xor, !2965, !DIExpression(), !2960)
  %2 = and i8 %a, 4, !dbg !2970
  %conv8 = zext nneg i8 %2 to i64, !dbg !2971
  %mul9 = mul i64 %b, %conv8, !dbg !2972
  %xor10 = xor i64 %xor, %mul9, !dbg !2973
    #dbg_value(i64 %xor10, !2965, !DIExpression(), !2960)
  %3 = and i8 %a, 8, !dbg !2974
  %conv13 = zext nneg i8 %3 to i64, !dbg !2975
  %mul14 = mul i64 %b, %conv13, !dbg !2976
  %xor15 = xor i64 %xor10, %mul14, !dbg !2977
    #dbg_value(i64 %xor15, !2965, !DIExpression(), !2960)
    #dbg_value(i64 %xor15, !2978, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !2960)
  %shr = lshr i64 %xor15, 4, !dbg !2979
  %and16 = lshr i64 %xor15, 3, !dbg !2980
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !2980
  %4 = xor i64 %shr, %shr18, !dbg !2981
  %xor19 = xor i64 %4, %xor15, !dbg !2981
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !2982
    #dbg_value(i64 %and20, !2983, !DIExpression(), !2960)
  ret i64 %and20, !dbg !2984
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !2985 {
entry:
    #dbg_value(ptr %in, !2988, !DIExpression(), !2989)
    #dbg_value(ptr %out, !2990, !DIExpression(), !2989)
    #dbg_value(i32 %ncols, !2991, !DIExpression(), !2989)
    #dbg_value(ptr %out, !2992, !DIExpression(), !2989)
    #dbg_value(i32 0, !2993, !DIExpression(), !2989)
  br label %for.cond, !dbg !2994

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !2996
    #dbg_value(i32 %i.0, !2993, !DIExpression(), !2989)
  %add = or disjoint i32 %i.0, 1, !dbg !2997
  %cmp = icmp slt i32 %add, %ncols, !dbg !2999
  br i1 %cmp, label %for.body, label %for.end, !dbg !3000

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3001
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3001
  %add2 = or disjoint i32 %i.0, 1, !dbg !3003
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3004
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3004
  %shl5 = shl i8 %1, 4, !dbg !3005
  %or = or i8 %shl5, %0, !dbg !3006
  %div = lshr exact i32 %i.0, 1, !dbg !3007
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3008
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3009
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3010
    #dbg_value(i32 %add8, !2993, !DIExpression(), !2989)
  br label %for.cond, !dbg !3011, !llvm.loop !3012

for.end:                                          ; preds = %for.cond
  %2 = and i32 %ncols, -2147483647, !dbg !3014
  %cmp9 = icmp eq i32 %2, 1, !dbg !3014
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3014

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3016
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3016
  %div16 = lshr exact i32 %i.0, 1, !dbg !3018
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3019
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3020
  br label %if.end, !dbg !3021

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3022
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3023 {
entry:
    #dbg_value(i32 %a, !3026, !DIExpression(), !3027)
    #dbg_value(i32 %b, !3028, !DIExpression(), !3027)
  %xor = xor i32 %a, %b, !dbg !3029
  %0 = icmp sgt i32 %xor, 0, !dbg !3030
  %shr = sext i1 %0 to i64, !dbg !3030
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3031
  %xor1 = xor i64 %1, %shr, !dbg !3032
  ret i64 %xor1, !dbg !3033
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3034 {
entry:
    #dbg_value(i32 %a, !3035, !DIExpression(), !3036)
    #dbg_value(i32 %b, !3037, !DIExpression(), !3036)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3036)
  %0 = icmp slt i32 %b, %a, !dbg !3039
  %shr = sext i1 %0 to i64, !dbg !3039
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3040
  %xor = xor i64 %1, %shr, !dbg !3041
  ret i64 %xor, !dbg !3042
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !3043 {
entry:
    #dbg_value(ptr %in, !3046, !DIExpression(), !3047)
    #dbg_value(i32 %index, !3048, !DIExpression(), !3047)
  %div = sdiv i32 %index, 16, !dbg !3049
    #dbg_value(i32 %div, !3050, !DIExpression(), !3047)
  %rem = srem i32 %index, 16, !dbg !3051
    #dbg_value(i32 %rem, !3052, !DIExpression(), !3047)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3053
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3053
  %mul = shl nsw i32 %rem, 2, !dbg !3054
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3055
  %shr = lshr i64 %0, %sh_prom, !dbg !3055
  %1 = trunc i64 %shr to i8, !dbg !3056
  %conv = and i8 %1, 15, !dbg !3056
  ret i8 %conv, !dbg !3057
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3058 {
entry:
    #dbg_value(i8 %a, !3061, !DIExpression(), !3062)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3063
    #dbg_value(i8 %call, !3064, !DIExpression(), !3062)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3065
    #dbg_value(i8 %call1, !3066, !DIExpression(), !3062)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3067
    #dbg_value(i8 %call2, !3068, !DIExpression(), !3062)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3069
    #dbg_value(i8 %call3, !3070, !DIExpression(), !3062)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3071
    #dbg_value(i8 %call4, !3072, !DIExpression(), !3062)
  ret i8 %call4, !dbg !3073
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3074 {
entry:
    #dbg_value(i32 %legs, !3077, !DIExpression(), !3078)
    #dbg_value(ptr %in, !3079, !DIExpression(), !3078)
    #dbg_value(i8 %a, !3080, !DIExpression(), !3078)
    #dbg_value(ptr %acc, !3081, !DIExpression(), !3078)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3082
    #dbg_value(i32 %call, !3083, !DIExpression(), !3078)
    #dbg_value(i64 1229782938247303441, !3084, !DIExpression(), !3078)
    #dbg_value(i32 0, !3085, !DIExpression(), !3087)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3088
  br label %for.cond, !dbg !3088

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3089
    #dbg_value(i32 %i.0, !3085, !DIExpression(), !3087)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3090
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3092

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3093
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3093
  %and = and i64 %0, 1229782938247303441, !dbg !3095
  %and1 = and i32 %call, 255, !dbg !3096
  %conv = zext nneg i32 %and1 to i64, !dbg !3097
  %mul = mul i64 %and, %conv, !dbg !3098
  %shr = lshr i64 %0, 1, !dbg !3099
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3100
  %shr4 = lshr i32 %call, 8, !dbg !3101
  %and5 = and i32 %shr4, 15, !dbg !3102
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3103
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3104
  %xor = xor i64 %mul, %mul7, !dbg !3105
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3106
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3106
  %shr9 = lshr i64 %1, 2, !dbg !3107
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3108
  %shr11 = lshr i32 %call, 16, !dbg !3109
  %and12 = and i32 %shr11, 15, !dbg !3110
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3111
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3112
  %xor15 = xor i64 %xor, %mul14, !dbg !3113
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3114
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3114
  %shr17 = lshr i64 %2, 3, !dbg !3115
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3116
  %shr19 = lshr i32 %call, 24, !dbg !3117
  %and20 = and i32 %shr19, 15, !dbg !3118
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3119
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3120
  %xor23 = xor i64 %xor15, %mul22, !dbg !3121
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3122
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3123
  %xor25 = xor i64 %3, %xor23, !dbg !3123
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3123
  %inc = add nuw i32 %i.0, 1, !dbg !3124
    #dbg_value(i32 %inc, !3085, !DIExpression(), !3087)
  br label %for.cond, !dbg !3125, !llvm.loop !3126

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3128
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3129 {
entry:
    #dbg_value(i32 %legs, !3132, !DIExpression(), !3133)
    #dbg_value(ptr %in, !3134, !DIExpression(), !3133)
    #dbg_value(ptr %out, !3135, !DIExpression(), !3133)
    #dbg_value(ptr %in, !3136, !DIExpression(), !3133)
    #dbg_value(i32 0, !3137, !DIExpression(), !3139)
  br label %for.cond, !dbg !3140

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3141
    #dbg_value(i32 %i.0, !3137, !DIExpression(), !3139)
  %mul = shl nsw i32 %legs, 4, !dbg !3142
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3144
  br i1 %cmp, label %for.body, label %for.end, !dbg !3145

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3146
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3148
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3148
  %1 = and i8 %0, 15, !dbg !3149
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3150
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3151
  %div3 = lshr exact i32 %i.0, 1, !dbg !3152
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3153
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3153
  %3 = lshr i8 %2, 4, !dbg !3154
  %add = or disjoint i32 %i.0, 1, !dbg !3155
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3156
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3157
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3158
    #dbg_value(i32 %add8, !3137, !DIExpression(), !3139)
  br label %for.cond, !dbg !3159, !llvm.loop !3160

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3162
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3163 {
entry:
    #dbg_value(i8 %b, !3164, !DIExpression(), !3165)
  %conv = zext i8 %b to i32, !dbg !3166
  %mul = mul i32 %conv, 134480385, !dbg !3167
    #dbg_value(i32 %mul, !3168, !DIExpression(), !3165)
    #dbg_value(i32 -252645136, !3169, !DIExpression(), !3165)
  %and = and i32 %mul, -252645136, !dbg !3170
    #dbg_value(i32 %and, !3171, !DIExpression(), !3165)
  %shr = lshr exact i32 %and, 4, !dbg !3172
  %shr1 = lshr exact i32 %and, 3, !dbg !3173
  %0 = xor i32 %shr, %shr1, !dbg !3174
  %xor2 = xor i32 %0, %mul, !dbg !3174
  ret i32 %xor2, !dbg !3175
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3176 {
entry:
    #dbg_value(i8 %a, !3177, !DIExpression(), !3178)
    #dbg_value(i8 %b, !3179, !DIExpression(), !3178)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3180
  %xor1 = xor i8 %a, %0, !dbg !3181
    #dbg_value(i8 %xor1, !3177, !DIExpression(), !3178)
  %1 = trunc i8 %xor1 to i1, !dbg !3182
    #dbg_value(i8 poison, !3183, !DIExpression(), !3178)
  %2 = and i8 %xor1, 2, !dbg !3184
  %mul9 = mul i8 %2, %b, !dbg !3185
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3182
  %xor11 = xor i8 %conv10, %mul9, !dbg !3186
    #dbg_value(i8 %xor11, !3183, !DIExpression(), !3178)
  %3 = and i8 %xor1, 4, !dbg !3187
  %mul16 = mul i8 %3, %b, !dbg !3188
  %xor18 = xor i8 %mul16, %xor11, !dbg !3189
    #dbg_value(i8 %xor18, !3183, !DIExpression(), !3178)
  %4 = and i8 %xor1, 8, !dbg !3190
  %mul23 = mul i8 %4, %b, !dbg !3191
  %xor25 = xor i8 %mul23, %xor18, !dbg !3192
    #dbg_value(i8 %xor25, !3183, !DIExpression(), !3178)
    #dbg_value(i8 %xor25, !3193, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3178)
  %5 = lshr i8 %xor25, 4, !dbg !3194
  %6 = lshr i8 %xor25, 3, !dbg !3195
  %7 = and i8 %6, 14, !dbg !3195
  %8 = xor i8 %5, %7, !dbg !3196
  %xor25.masked = and i8 %xor25, 15, !dbg !3197
  %9 = xor i8 %8, %xor25.masked, !dbg !3197
    #dbg_value(i8 %9, !3198, !DIExpression(), !3178)
  ret i8 %9, !dbg !3199
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3200 {
entry:
    #dbg_value(ptr %a, !3201, !DIExpression(), !3202)
    #dbg_value(ptr %b, !3203, !DIExpression(), !3202)
    #dbg_value(i32 %n, !3204, !DIExpression(), !3202)
    #dbg_value(i32 %m, !3205, !DIExpression(), !3202)
    #dbg_value(i8 0, !3206, !DIExpression(), !3202)
    #dbg_value(i32 0, !3207, !DIExpression(), !3209)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3210
  br label %for.cond, !dbg !3210

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3202
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3211
    #dbg_value(i32 %i.0, !3207, !DIExpression(), !3209)
    #dbg_value(ptr %b.addr.0, !3203, !DIExpression(), !3202)
    #dbg_value(i8 %ret.0, !3206, !DIExpression(), !3202)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3212
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3214

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3215
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3215
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3217
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3218
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3219
    #dbg_value(i8 %call1, !3206, !DIExpression(), !3202)
  %inc = add nuw i32 %i.0, 1, !dbg !3220
    #dbg_value(i32 %inc, !3207, !DIExpression(), !3209)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3221
    #dbg_value(ptr %add.ptr, !3203, !DIExpression(), !3202)
  br label %for.cond, !dbg !3222, !llvm.loop !3223

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !3225
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3226 {
entry:
    #dbg_value(i8 %a, !3227, !DIExpression(), !3228)
    #dbg_value(i8 %b, !3229, !DIExpression(), !3228)
  %xor1 = xor i8 %a, %b, !dbg !3230
  ret i8 %xor1, !dbg !3231
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
!175 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !176, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!215 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !176, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!216 = !DILocalVariable(name: "p", arg: 1, scope: !215, file: !25, line: 538, type: !178)
!217 = !DILocation(line: 0, scope: !215)
!218 = !DILocalVariable(name: "cpk", arg: 2, scope: !215, file: !25, line: 538, type: !18)
!219 = !DILocalVariable(name: "csk", arg: 3, scope: !215, file: !25, line: 539, type: !18)
!220 = !DILocalVariable(name: "ret", scope: !215, file: !25, line: 540, type: !45)
!221 = !DILocalVariable(name: "seed_sk", scope: !215, file: !25, line: 541, type: !18)
!222 = !DILocalVariable(name: "S", scope: !215, file: !25, line: 542, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6944, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 868)
!226 = !DILocation(line: 542, column: 19, scope: !215)
!227 = !DILocalVariable(name: "P", scope: !215, file: !25, line: 543, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6829632, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 106713)
!231 = !DILocation(line: 543, column: 14, scope: !215)
!232 = !DILocalVariable(name: "P3", scope: !215, file: !25, line: 544, type: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 1296)
!236 = !DILocation(line: 544, column: 14, scope: !215)
!237 = !DILocalVariable(name: "O", scope: !215, file: !25, line: 547, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 13632, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 1704)
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
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44928, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 702)
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
!462 = !DILocation(line: 37, column: 9, scope: !460)
!463 = !DILocation(line: 37, scope: !460)
!464 = !DILocation(line: 38, column: 21, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !448, line: 37, column: 43)
!466 = distinct !DILexicalBlock(scope: !460, file: !448, line: 37, column: 5)
!467 = !DILocation(line: 38, column: 33, scope: !465)
!468 = !DILocation(line: 38, column: 51, scope: !465)
!469 = !DILocation(line: 38, column: 46, scope: !465)
!470 = !DILocation(line: 38, column: 44, scope: !465)
!471 = !DILocation(line: 39, column: 27, scope: !465)
!472 = !DILocation(line: 39, column: 33, scope: !465)
!473 = !DILocation(line: 39, column: 52, scope: !465)
!474 = !DILocation(line: 39, column: 59, scope: !465)
!475 = !DILocation(line: 39, column: 46, scope: !465)
!476 = !DILocation(line: 39, column: 44, scope: !465)
!477 = !DILocation(line: 39, column: 17, scope: !465)
!478 = !DILocation(line: 40, column: 27, scope: !465)
!479 = !DILocation(line: 40, column: 33, scope: !465)
!480 = !DILocation(line: 40, column: 52, scope: !465)
!481 = !DILocation(line: 40, column: 59, scope: !465)
!482 = !DILocation(line: 40, column: 46, scope: !465)
!483 = !DILocation(line: 40, column: 44, scope: !465)
!484 = !DILocation(line: 40, column: 17, scope: !465)
!485 = !DILocation(line: 41, column: 27, scope: !465)
!486 = !DILocation(line: 41, column: 33, scope: !465)
!487 = !DILocation(line: 41, column: 52, scope: !465)
!488 = !DILocation(line: 41, column: 59, scope: !465)
!489 = !DILocation(line: 41, column: 46, scope: !465)
!490 = !DILocation(line: 41, column: 44, scope: !465)
!491 = !DILocation(line: 41, column: 17, scope: !465)
!492 = !DILocation(line: 38, column: 9, scope: !465)
!493 = !DILocation(line: 38, column: 16, scope: !465)
!494 = !DILocation(line: 37, column: 20, scope: !466)
!495 = !DILocation(line: 37, column: 5, scope: !460)
!496 = !DILocation(line: 37, column: 40, scope: !466)
!497 = !DILocation(line: 37, column: 5, scope: !466)
!498 = distinct !{!498, !495, !499, !307}
!499 = !DILocation(line: 42, column: 5, scope: !460)
!500 = !DILocation(line: 43, column: 1, scope: !447)
!501 = distinct !DISubprogram(name: "mul_table", scope: !502, file: !502, line: 129, type: !503, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!502 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!503 = !DISubroutineType(types: !504)
!504 = !{!19, !12}
!505 = !DILocalVariable(name: "b", arg: 1, scope: !501, file: !502, line: 129, type: !12)
!506 = !DILocation(line: 0, scope: !501)
!507 = !DILocation(line: 130, column: 19, scope: !501)
!508 = !DILocation(line: 130, column: 33, scope: !501)
!509 = !DILocalVariable(name: "x", scope: !501, file: !502, line: 130, type: !19)
!510 = !DILocalVariable(name: "high_nibble_mask", scope: !501, file: !502, line: 132, type: !19)
!511 = !DILocation(line: 134, column: 28, scope: !501)
!512 = !DILocalVariable(name: "high_half", scope: !501, file: !502, line: 134, type: !19)
!513 = !DILocation(line: 135, column: 28, scope: !501)
!514 = !DILocation(line: 135, column: 47, scope: !501)
!515 = !DILocation(line: 135, column: 34, scope: !501)
!516 = !DILocation(line: 135, column: 5, scope: !501)
!517 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !327, file: !327, line: 16, type: !518, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !243, !330, !49, !5, !243, !243, !243, !243}
!520 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !517, file: !327, line: 16, type: !243)
!521 = !DILocation(line: 0, scope: !517)
!522 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !517, file: !327, line: 16, type: !330)
!523 = !DILocalVariable(name: "mat", arg: 3, scope: !517, file: !327, line: 16, type: !49)
!524 = !DILocalVariable(name: "acc", arg: 4, scope: !517, file: !327, line: 16, type: !5)
!525 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !517, file: !327, line: 17, type: !243)
!526 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !517, file: !327, line: 17, type: !243)
!527 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !517, file: !327, line: 17, type: !243)
!528 = !DILocalVariable(name: "triangular", arg: 8, scope: !517, file: !327, line: 17, type: !243)
!529 = !DILocalVariable(name: "bs_mat_entries_used", scope: !517, file: !327, line: 19, type: !45)
!530 = !DILocalVariable(name: "r", scope: !531, file: !327, line: 20, type: !45)
!531 = distinct !DILexicalBlock(scope: !517, file: !327, line: 20, column: 5)
!532 = !DILocation(line: 0, scope: !531)
!533 = !DILocation(line: 20, column: 10, scope: !531)
!534 = !DILocation(line: 19, column: 9, scope: !517)
!535 = !DILocation(line: 20, scope: !531)
!536 = !DILocation(line: 20, column: 23, scope: !537)
!537 = distinct !DILexicalBlock(scope: !531, file: !327, line: 20, column: 5)
!538 = !DILocation(line: 20, column: 5, scope: !531)
!539 = !DILocation(line: 21, column: 33, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !327, line: 21, column: 9)
!541 = distinct !DILexicalBlock(scope: !537, file: !327, line: 20, column: 43)
!542 = !DILocalVariable(name: "c", scope: !540, file: !327, line: 21, type: !45)
!543 = !DILocation(line: 0, scope: !540)
!544 = !DILocation(line: 21, column: 14, scope: !540)
!545 = !DILocation(line: 21, scope: !540)
!546 = !DILocation(line: 21, column: 40, scope: !547)
!547 = distinct !DILexicalBlock(scope: !540, file: !327, line: 21, column: 9)
!548 = !DILocation(line: 21, column: 9, scope: !540)
!549 = !DILocation(line: 22, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !327, line: 22, column: 13)
!551 = distinct !DILexicalBlock(scope: !547, file: !327, line: 21, column: 60)
!552 = !DILocalVariable(name: "k", scope: !550, file: !327, line: 22, type: !45)
!553 = !DILocation(line: 0, scope: !550)
!554 = !DILocation(line: 22, column: 31, scope: !555)
!555 = distinct !DILexicalBlock(scope: !550, file: !327, line: 22, column: 13)
!556 = !DILocation(line: 22, column: 13, scope: !550)
!557 = !DILocation(line: 23, column: 65, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !327, line: 22, column: 51)
!559 = !DILocation(line: 23, column: 51, scope: !558)
!560 = !DILocation(line: 23, column: 94, scope: !558)
!561 = !DILocation(line: 23, column: 88, scope: !558)
!562 = !DILocation(line: 23, column: 134, scope: !558)
!563 = !DILocation(line: 23, column: 145, scope: !558)
!564 = !DILocation(line: 23, column: 129, scope: !558)
!565 = !DILocation(line: 23, column: 115, scope: !558)
!566 = !DILocation(line: 23, column: 17, scope: !558)
!567 = !DILocation(line: 22, column: 45, scope: !555)
!568 = !DILocation(line: 22, column: 13, scope: !555)
!569 = distinct !{!569, !556, !570, !307}
!570 = !DILocation(line: 24, column: 13, scope: !550)
!571 = !DILocation(line: 25, column: 33, scope: !551)
!572 = !DILocation(line: 21, column: 56, scope: !547)
!573 = !DILocation(line: 21, column: 9, scope: !547)
!574 = distinct !{!574, !548, !575, !307}
!575 = !DILocation(line: 26, column: 9, scope: !540)
!576 = !DILocation(line: 20, column: 39, scope: !537)
!577 = !DILocation(line: 20, column: 5, scope: !537)
!578 = distinct !{!578, !538, !579, !307}
!579 = !DILocation(line: 27, column: 5, scope: !531)
!580 = !DILocation(line: 28, column: 1, scope: !517)
!581 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !25, file: !25, line: 262, type: !582, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !49, !5, !45, !45}
!584 = !DILocalVariable(name: "in", arg: 1, scope: !581, file: !25, line: 262, type: !49)
!585 = !DILocation(line: 0, scope: !581)
!586 = !DILocalVariable(name: "out", arg: 2, scope: !581, file: !25, line: 262, type: !5)
!587 = !DILocalVariable(name: "vecs", arg: 3, scope: !581, file: !25, line: 262, type: !45)
!588 = !DILocalVariable(name: "m", arg: 4, scope: !581, file: !25, line: 262, type: !45)
!589 = !DILocation(line: 263, column: 32, scope: !581)
!590 = !DILocation(line: 263, column: 38, scope: !581)
!591 = !DILocalVariable(name: "m_vec_limbs", scope: !581, file: !25, line: 263, type: !243)
!592 = !DILocalVariable(name: "_out", scope: !581, file: !25, line: 264, type: !18)
!593 = !DILocalVariable(name: "tmp", scope: !581, file: !25, line: 265, type: !594)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 576, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 9)
!597 = !DILocation(line: 265, column: 14, scope: !581)
!598 = !DILocalVariable(name: "i", scope: !599, file: !25, line: 266, type: !45)
!599 = distinct !DILexicalBlock(scope: !581, file: !25, line: 266, column: 5)
!600 = !DILocation(line: 0, scope: !599)
!601 = !DILocation(line: 266, column: 10, scope: !599)
!602 = !DILocation(line: 266, column: 28, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !25, line: 266, column: 5)
!604 = !DILocation(line: 266, column: 5, scope: !599)
!605 = !DILocation(line: 266, scope: !599)
!606 = !DILocation(line: 268, column: 27, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !25, line: 267, column: 5)
!608 = !DILocation(line: 268, column: 29, scope: !607)
!609 = !DILocation(line: 268, column: 24, scope: !607)
!610 = !DILocation(line: 268, column: 34, scope: !607)
!611 = !DILocation(line: 268, column: 9, scope: !607)
!612 = !DILocation(line: 269, column: 24, scope: !607)
!613 = !DILocation(line: 269, column: 36, scope: !607)
!614 = !DILocation(line: 269, column: 21, scope: !607)
!615 = !DILocation(line: 269, column: 71, scope: !607)
!616 = !DILocation(line: 269, column: 9, scope: !607)
!617 = !DILocation(line: 266, column: 5, scope: !603)
!618 = distinct !{!618, !604, !619, !307}
!619 = !DILocation(line: 270, column: 5, scope: !599)
!620 = !DILocation(line: 271, column: 1, scope: !581)
!621 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !622, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!622 = !DISubroutineType(types: !623)
!623 = !{!45, !178, !49, !5}
!624 = !DILocalVariable(name: "p", arg: 1, scope: !621, file: !25, line: 310, type: !178)
!625 = !DILocation(line: 0, scope: !621)
!626 = !DILocalVariable(name: "csk", arg: 2, scope: !621, file: !25, line: 310, type: !49)
!627 = !DILocalVariable(name: "sk", arg: 3, scope: !621, file: !25, line: 311, type: !5)
!628 = !DILocalVariable(name: "ret", scope: !621, file: !25, line: 312, type: !45)
!629 = !DILocalVariable(name: "S", scope: !621, file: !25, line: 313, type: !223)
!630 = !DILocation(line: 313, column: 19, scope: !621)
!631 = !DILocalVariable(name: "P", scope: !621, file: !25, line: 314, type: !5)
!632 = !DILocation(line: 315, column: 24, scope: !621)
!633 = !DILocalVariable(name: "O", scope: !621, file: !25, line: 315, type: !18)
!634 = !DILocalVariable(name: "param_o", scope: !621, file: !25, line: 317, type: !243)
!635 = !DILocalVariable(name: "param_v", scope: !621, file: !25, line: 318, type: !243)
!636 = !DILocalVariable(name: "param_O_bytes", scope: !621, file: !25, line: 319, type: !243)
!637 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !621, file: !25, line: 320, type: !243)
!638 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !621, file: !25, line: 321, type: !243)
!639 = !DILocalVariable(name: "seed_sk", scope: !621, file: !25, line: 323, type: !49)
!640 = !DILocalVariable(name: "seed_pk", scope: !621, file: !25, line: 324, type: !18)
!641 = !DILocation(line: 326, column: 5, scope: !621)
!642 = !DILocation(line: 328, column: 14, scope: !621)
!643 = !DILocation(line: 328, column: 5, scope: !621)
!644 = !DILocation(line: 334, column: 5, scope: !621)
!645 = !DILocation(line: 341, column: 22, scope: !621)
!646 = !DILocalVariable(name: "P2", scope: !621, file: !25, line: 341, type: !5)
!647 = !DILocalVariable(name: "P1", scope: !621, file: !25, line: 343, type: !5)
!648 = !DILocalVariable(name: "L", scope: !621, file: !25, line: 346, type: !5)
!649 = !DILocation(line: 347, column: 5, scope: !621)
!650 = !DILocation(line: 355, column: 5, scope: !621)
!651 = !DILocation(line: 356, column: 5, scope: !621)
!652 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !327, file: !327, line: 218, type: !378, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!653 = !DILocalVariable(name: "p", arg: 1, scope: !652, file: !327, line: 218, type: !178)
!654 = !DILocation(line: 0, scope: !652)
!655 = !DILocalVariable(name: "P1", arg: 2, scope: !652, file: !327, line: 218, type: !330)
!656 = !DILocalVariable(name: "O", arg: 3, scope: !652, file: !327, line: 218, type: !49)
!657 = !DILocalVariable(name: "acc", arg: 4, scope: !652, file: !327, line: 218, type: !5)
!658 = !DILocalVariable(name: "param_o", scope: !652, file: !327, line: 222, type: !243)
!659 = !DILocalVariable(name: "param_v", scope: !652, file: !327, line: 223, type: !243)
!660 = !DILocalVariable(name: "m_vec_limbs", scope: !652, file: !327, line: 224, type: !243)
!661 = !DILocalVariable(name: "bs_mat_entries_used", scope: !652, file: !327, line: 226, type: !45)
!662 = !DILocalVariable(name: "r", scope: !663, file: !327, line: 227, type: !45)
!663 = distinct !DILexicalBlock(scope: !652, file: !327, line: 227, column: 5)
!664 = !DILocation(line: 0, scope: !663)
!665 = !DILocation(line: 227, column: 10, scope: !663)
!666 = !DILocation(line: 226, column: 9, scope: !652)
!667 = !DILocation(line: 227, scope: !663)
!668 = !DILocation(line: 227, column: 23, scope: !669)
!669 = distinct !DILexicalBlock(scope: !663, file: !327, line: 227, column: 5)
!670 = !DILocation(line: 227, column: 5, scope: !663)
!671 = !DILocation(line: 228, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !327, line: 228, column: 9)
!673 = distinct !DILexicalBlock(scope: !669, file: !327, line: 227, column: 39)
!674 = !DILocation(line: 228, scope: !672)
!675 = !DILocalVariable(name: "c", scope: !672, file: !327, line: 228, type: !45)
!676 = !DILocation(line: 0, scope: !672)
!677 = !DILocation(line: 228, column: 27, scope: !678)
!678 = distinct !DILexicalBlock(scope: !672, file: !327, line: 228, column: 9)
!679 = !DILocation(line: 229, column: 17, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !327, line: 229, column: 16)
!681 = distinct !DILexicalBlock(scope: !678, file: !327, line: 228, column: 43)
!682 = !DILocation(line: 233, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !327, line: 233, column: 13)
!684 = !DILocalVariable(name: "k", scope: !683, file: !327, line: 233, type: !45)
!685 = !DILocation(line: 0, scope: !683)
!686 = !DILocation(line: 233, column: 31, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !327, line: 233, column: 13)
!688 = !DILocation(line: 233, column: 13, scope: !683)
!689 = !DILocation(line: 234, column: 47, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !327, line: 233, column: 50)
!691 = !DILocation(line: 234, column: 88, scope: !690)
!692 = !DILocation(line: 234, column: 84, scope: !690)
!693 = !DILocation(line: 234, column: 127, scope: !690)
!694 = !DILocation(line: 234, column: 137, scope: !690)
!695 = !DILocation(line: 234, column: 108, scope: !690)
!696 = !DILocation(line: 234, column: 17, scope: !690)
!697 = !DILocation(line: 235, column: 47, scope: !690)
!698 = !DILocation(line: 235, column: 88, scope: !690)
!699 = !DILocation(line: 235, column: 84, scope: !690)
!700 = !DILocation(line: 235, column: 127, scope: !690)
!701 = !DILocation(line: 235, column: 137, scope: !690)
!702 = !DILocation(line: 235, column: 108, scope: !690)
!703 = !DILocation(line: 235, column: 17, scope: !690)
!704 = !DILocation(line: 233, column: 44, scope: !687)
!705 = !DILocation(line: 233, column: 13, scope: !687)
!706 = distinct !{!706, !688, !707, !307}
!707 = !DILocation(line: 236, column: 13, scope: !683)
!708 = !DILocation(line: 0, scope: !681)
!709 = !DILocation(line: 228, column: 39, scope: !678)
!710 = !DILocation(line: 228, column: 9, scope: !678)
!711 = distinct !{!711, !671, !712, !307}
!712 = !DILocation(line: 238, column: 9, scope: !672)
!713 = !DILocation(line: 227, column: 35, scope: !669)
!714 = !DILocation(line: 227, column: 5, scope: !669)
!715 = distinct !{!715, !670, !716, !307}
!716 = !DILocation(line: 239, column: 5, scope: !663)
!717 = !DILocation(line: 240, column: 1, scope: !652)
!718 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !719, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!719 = !DISubroutineType(types: !720)
!720 = !{!45, !178, !18, !721, !49, !15, !49}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!722 = !DILocalVariable(name: "p", arg: 1, scope: !718, file: !25, line: 359, type: !178)
!723 = !DILocation(line: 0, scope: !718)
!724 = !DILocalVariable(name: "sig", arg: 2, scope: !718, file: !25, line: 359, type: !18)
!725 = !DILocalVariable(name: "siglen", arg: 3, scope: !718, file: !25, line: 360, type: !721)
!726 = !DILocalVariable(name: "m", arg: 4, scope: !718, file: !25, line: 360, type: !49)
!727 = !DILocalVariable(name: "mlen", arg: 5, scope: !718, file: !25, line: 361, type: !15)
!728 = !DILocalVariable(name: "csk", arg: 6, scope: !718, file: !25, line: 361, type: !49)
!729 = !DILocalVariable(name: "ret", scope: !718, file: !25, line: 362, type: !45)
!730 = !DILocalVariable(name: "tenc", scope: !718, file: !25, line: 363, type: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 568, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 71)
!734 = !DILocation(line: 363, column: 19, scope: !718)
!735 = !DILocalVariable(name: "t", scope: !718, file: !25, line: 363, type: !736)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1136, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 142)
!739 = !DILocation(line: 363, column: 38, scope: !718)
!740 = !DILocalVariable(name: "y", scope: !718, file: !25, line: 364, type: !736)
!741 = !DILocation(line: 364, column: 19, scope: !718)
!742 = !DILocalVariable(name: "salt", scope: !718, file: !25, line: 365, type: !743)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 40)
!746 = !DILocation(line: 365, column: 19, scope: !718)
!747 = !DILocalVariable(name: "V", scope: !718, file: !25, line: 366, type: !748)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 7392, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 924)
!751 = !DILocation(line: 366, column: 19, scope: !718)
!752 = !DILocalVariable(name: "Vdec", scope: !718, file: !25, line: 366, type: !238)
!753 = !DILocation(line: 366, column: 57, scope: !718)
!754 = !DILocalVariable(name: "A", scope: !718, file: !25, line: 367, type: !755)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 167040, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 20880)
!758 = !DILocation(line: 367, column: 19, scope: !718)
!759 = !DILocalVariable(name: "x", scope: !718, file: !25, line: 368, type: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 14784, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 1848)
!763 = !DILocation(line: 368, column: 19, scope: !718)
!764 = !DILocalVariable(name: "r", scope: !718, file: !25, line: 369, type: !765)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1160, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 145)
!768 = !DILocation(line: 369, column: 19, scope: !718)
!769 = !DILocalVariable(name: "s", scope: !718, file: !25, line: 370, type: !760)
!770 = !DILocation(line: 370, column: 19, scope: !718)
!771 = !DILocalVariable(name: "sk", scope: !718, file: !25, line: 372, type: !128, align: 256)
!772 = !DILocation(line: 372, column: 22, scope: !718)
!773 = !DILocalVariable(name: "Ox", scope: !718, file: !25, line: 373, type: !736)
!774 = !DILocation(line: 373, column: 19, scope: !718)
!775 = !DILocalVariable(name: "tmp", scope: !718, file: !25, line: 374, type: !765)
!776 = !DILocation(line: 374, column: 19, scope: !718)
!777 = !DILocalVariable(name: "param_m", scope: !718, file: !25, line: 378, type: !243)
!778 = !DILocalVariable(name: "param_n", scope: !718, file: !25, line: 379, type: !243)
!779 = !DILocalVariable(name: "param_o", scope: !718, file: !25, line: 380, type: !243)
!780 = !DILocalVariable(name: "param_k", scope: !718, file: !25, line: 381, type: !243)
!781 = !DILocalVariable(name: "param_v", scope: !718, file: !25, line: 382, type: !243)
!782 = !DILocalVariable(name: "param_m_bytes", scope: !718, file: !25, line: 383, type: !243)
!783 = !DILocalVariable(name: "param_v_bytes", scope: !718, file: !25, line: 384, type: !243)
!784 = !DILocalVariable(name: "param_r_bytes", scope: !718, file: !25, line: 385, type: !243)
!785 = !DILocalVariable(name: "param_sig_bytes", scope: !718, file: !25, line: 386, type: !243)
!786 = !DILocalVariable(name: "param_A_cols", scope: !718, file: !25, line: 387, type: !243)
!787 = !DILocalVariable(name: "param_digest_bytes", scope: !718, file: !25, line: 388, type: !243)
!788 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !718, file: !25, line: 389, type: !243)
!789 = !DILocalVariable(name: "param_salt_bytes", scope: !718, file: !25, line: 390, type: !243)
!790 = !DILocation(line: 392, column: 11, scope: !718)
!791 = !DILocation(line: 393, column: 13, scope: !792)
!792 = distinct !DILexicalBlock(scope: !718, file: !25, line: 393, column: 9)
!793 = !DILocalVariable(name: "seed_sk", scope: !718, file: !25, line: 371, type: !49)
!794 = !DILocation(line: 401, column: 5, scope: !718)
!795 = !DILocalVariable(name: "P1", scope: !718, file: !25, line: 403, type: !5)
!796 = !DILocation(line: 404, column: 23, scope: !718)
!797 = !DILocalVariable(name: "L", scope: !718, file: !25, line: 404, type: !5)
!798 = !DILocalVariable(name: "Mtmp", scope: !718, file: !25, line: 405, type: !233)
!799 = !DILocation(line: 405, column: 14, scope: !718)
!800 = !DILocation(line: 420, column: 25, scope: !801)
!801 = distinct !DILexicalBlock(scope: !718, file: !25, line: 420, column: 9)
!802 = !DILocation(line: 420, column: 9, scope: !801)
!803 = !DILocation(line: 420, column: 65, scope: !801)
!804 = !DILocation(line: 427, column: 37, scope: !718)
!805 = !DILocation(line: 427, column: 5, scope: !718)
!806 = !DILocation(line: 429, column: 5, scope: !718)
!807 = !DILocation(line: 437, column: 16, scope: !718)
!808 = !DILocation(line: 437, column: 5, scope: !718)
!809 = !DILocation(line: 438, column: 59, scope: !718)
!810 = !DILocalVariable(name: "ctrbyte", scope: !718, file: !25, line: 375, type: !18)
!811 = !DILocation(line: 440, column: 5, scope: !718)
!812 = !DILocation(line: 442, column: 5, scope: !718)
!813 = !DILocalVariable(name: "ctr", scope: !814, file: !25, line: 444, type: !45)
!814 = distinct !DILexicalBlock(scope: !718, file: !25, line: 444, column: 5)
!815 = !DILocation(line: 0, scope: !814)
!816 = !DILocation(line: 466, column: 18, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !25, line: 444, column: 42)
!818 = distinct !DILexicalBlock(scope: !814, file: !25, line: 444, column: 5)
!819 = !DILocation(line: 444, column: 10, scope: !814)
!820 = !DILocation(line: 444, scope: !814)
!821 = !DILocation(line: 444, column: 27, scope: !818)
!822 = !DILocation(line: 444, column: 5, scope: !814)
!823 = !DILocation(line: 445, column: 20, scope: !817)
!824 = !DILocation(line: 445, column: 18, scope: !817)
!825 = !DILocation(line: 447, column: 9, scope: !817)
!826 = !DILocalVariable(name: "i", scope: !827, file: !25, line: 451, type: !45)
!827 = distinct !DILexicalBlock(scope: !817, file: !25, line: 451, column: 9)
!828 = !DILocation(line: 0, scope: !827)
!829 = !DILocation(line: 452, column: 13, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !25, line: 451, column: 48)
!831 = distinct !DILexicalBlock(scope: !827, file: !25, line: 451, column: 9)
!832 = !DILocation(line: 452, column: 22, scope: !830)
!833 = !DILocation(line: 452, column: 48, scope: !830)
!834 = !DILocation(line: 456, column: 9, scope: !817)
!835 = !DILocation(line: 458, column: 9, scope: !817)
!836 = !DILocation(line: 459, column: 9, scope: !817)
!837 = !DILocalVariable(name: "i", scope: !838, file: !25, line: 461, type: !45)
!838 = distinct !DILexicalBlock(scope: !817, file: !25, line: 461, column: 9)
!839 = !DILocation(line: 0, scope: !838)
!840 = !DILocation(line: 461, column: 14, scope: !838)
!841 = !DILocation(line: 461, scope: !838)
!842 = !DILocation(line: 463, column: 20, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !25, line: 462, column: 9)
!844 = distinct !DILexicalBlock(scope: !838, file: !25, line: 461, column: 9)
!845 = !DILocation(line: 463, column: 43, scope: !843)
!846 = !DILocation(line: 463, column: 13, scope: !843)
!847 = !DILocation(line: 463, column: 48, scope: !843)
!848 = !DILocation(line: 461, column: 39, scope: !844)
!849 = !DILocation(line: 461, column: 27, scope: !844)
!850 = !DILocation(line: 461, column: 9, scope: !838)
!851 = !DILocation(line: 461, column: 9, scope: !844)
!852 = distinct !{!852, !850, !853, !307}
!853 = !DILocation(line: 464, column: 9, scope: !838)
!854 = !DILocation(line: 466, column: 9, scope: !817)
!855 = !DILocation(line: 470, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !817, file: !25, line: 470, column: 13)
!857 = !DILocation(line: 473, column: 13, scope: !858)
!858 = distinct !DILexicalBlock(scope: !856, file: !25, line: 472, column: 16)
!859 = !DILocation(line: 474, column: 13, scope: !858)
!860 = !DILocation(line: 444, column: 35, scope: !818)
!861 = !DILocation(line: 444, column: 5, scope: !818)
!862 = distinct !{!862, !822, !863, !307}
!863 = !DILocation(line: 476, column: 5, scope: !814)
!864 = !DILocalVariable(name: "i", scope: !865, file: !25, line: 478, type: !45)
!865 = distinct !DILexicalBlock(scope: !718, file: !25, line: 478, column: 5)
!866 = !DILocation(line: 0, scope: !865)
!867 = !DILocation(line: 478, column: 10, scope: !865)
!868 = !DILocation(line: 478, scope: !865)
!869 = !DILocation(line: 478, column: 23, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !25, line: 478, column: 5)
!871 = !DILocation(line: 478, column: 5, scope: !865)
!872 = !DILocation(line: 479, column: 23, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !25, line: 478, column: 44)
!874 = !DILocation(line: 479, column: 19, scope: !873)
!875 = !DILocalVariable(name: "vi", scope: !718, file: !25, line: 376, type: !18)
!876 = !DILocation(line: 480, column: 17, scope: !873)
!877 = !DILocation(line: 480, column: 33, scope: !873)
!878 = !DILocation(line: 480, column: 29, scope: !873)
!879 = !DILocation(line: 480, column: 9, scope: !873)
!880 = !DILocation(line: 481, column: 31, scope: !873)
!881 = !DILocation(line: 481, column: 27, scope: !873)
!882 = !DILocation(line: 481, column: 9, scope: !873)
!883 = !DILocation(line: 482, column: 22, scope: !873)
!884 = !DILocation(line: 482, column: 18, scope: !873)
!885 = !DILocation(line: 482, column: 32, scope: !873)
!886 = !DILocation(line: 482, column: 61, scope: !873)
!887 = !DILocation(line: 482, column: 57, scope: !873)
!888 = !DILocation(line: 482, column: 9, scope: !873)
!889 = !DILocation(line: 478, column: 39, scope: !870)
!890 = !DILocation(line: 478, column: 5, scope: !870)
!891 = distinct !{!891, !871, !892, !307}
!892 = !DILocation(line: 483, column: 5, scope: !865)
!893 = !DILocation(line: 484, column: 5, scope: !718)
!894 = !DILocation(line: 486, column: 34, scope: !718)
!895 = !DILocation(line: 486, column: 5, scope: !718)
!896 = !DILocation(line: 487, column: 13, scope: !718)
!897 = !DILocation(line: 487, column: 5, scope: !718)
!898 = !DILabel(scope: !718, name: "err", file: !25, line: 489)
!899 = !DILocation(line: 489, column: 1, scope: !718)
!900 = !DILocation(line: 490, column: 5, scope: !718)
!901 = !DILocation(line: 491, column: 5, scope: !718)
!902 = !DILocation(line: 492, column: 5, scope: !718)
!903 = !DILocation(line: 493, column: 5, scope: !718)
!904 = !DILocation(line: 494, column: 23, scope: !718)
!905 = !DILocation(line: 494, column: 5, scope: !718)
!906 = !DILocation(line: 495, column: 5, scope: !718)
!907 = !DILocation(line: 496, column: 5, scope: !718)
!908 = !DILocation(line: 497, column: 5, scope: !718)
!909 = !DILocation(line: 498, column: 5, scope: !718)
!910 = !DILocation(line: 499, column: 5, scope: !718)
!911 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !327, file: !327, line: 244, type: !912, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !178, !49, !330, !330, !5, !5}
!914 = !DILocalVariable(name: "p", arg: 1, scope: !911, file: !327, line: 244, type: !178)
!915 = !DILocation(line: 0, scope: !911)
!916 = !DILocalVariable(name: "Vdec", arg: 2, scope: !911, file: !327, line: 244, type: !49)
!917 = !DILocalVariable(name: "L", arg: 3, scope: !911, file: !327, line: 244, type: !330)
!918 = !DILocalVariable(name: "P1", arg: 4, scope: !911, file: !327, line: 244, type: !330)
!919 = !DILocalVariable(name: "VL", arg: 5, scope: !911, file: !327, line: 244, type: !5)
!920 = !DILocalVariable(name: "VP1V", arg: 6, scope: !911, file: !327, line: 244, type: !5)
!921 = !DILocalVariable(name: "param_k", scope: !911, file: !327, line: 246, type: !243)
!922 = !DILocalVariable(name: "param_v", scope: !911, file: !327, line: 247, type: !243)
!923 = !DILocalVariable(name: "param_o", scope: !911, file: !327, line: 248, type: !243)
!924 = !DILocation(line: 251, column: 5, scope: !911)
!925 = !DILocalVariable(name: "Pv", scope: !911, file: !327, line: 254, type: !926)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 981504, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 15336)
!929 = !DILocation(line: 254, column: 14, scope: !911)
!930 = !DILocation(line: 255, column: 5, scope: !911)
!931 = !DILocation(line: 256, column: 5, scope: !911)
!932 = !DILocation(line: 257, column: 1, scope: !911)
!933 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !934, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !178, !5, !49, !18}
!936 = !DILocalVariable(name: "p", arg: 1, scope: !933, file: !25, line: 43, type: !178)
!937 = !DILocation(line: 0, scope: !933)
!938 = !DILocalVariable(name: "vPv", arg: 2, scope: !933, file: !25, line: 43, type: !5)
!939 = !DILocalVariable(name: "t", arg: 3, scope: !933, file: !25, line: 43, type: !49)
!940 = !DILocalVariable(name: "y", arg: 4, scope: !933, file: !25, line: 43, type: !18)
!941 = !DILocalVariable(name: "top_pos", scope: !933, file: !25, line: 48, type: !942)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!943 = !DILocalVariable(name: "m_vec_limbs", scope: !933, file: !25, line: 49, type: !942)
!944 = !DILocalVariable(name: "mask", scope: !945, file: !25, line: 53, type: !6)
!945 = distinct !DILexicalBlock(scope: !946, file: !25, line: 52, column: 29)
!946 = distinct !DILexicalBlock(scope: !933, file: !25, line: 52, column: 8)
!947 = !DILocation(line: 0, scope: !945)
!948 = !DILocalVariable(name: "i", scope: !949, file: !25, line: 56, type: !45)
!949 = distinct !DILexicalBlock(scope: !945, file: !25, line: 56, column: 9)
!950 = !DILocation(line: 0, scope: !949)
!951 = !DILocation(line: 56, column: 14, scope: !949)
!952 = !DILocation(line: 56, scope: !949)
!953 = !DILocation(line: 58, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !25, line: 57, column: 9)
!955 = distinct !DILexicalBlock(scope: !949, file: !25, line: 56, column: 9)
!956 = !DILocation(line: 58, column: 50, scope: !954)
!957 = !DILocation(line: 56, column: 53, scope: !955)
!958 = !DILocation(line: 56, column: 27, scope: !955)
!959 = !DILocation(line: 56, column: 9, scope: !949)
!960 = !DILocation(line: 56, column: 9, scope: !955)
!961 = distinct !{!961, !959, !962, !307}
!962 = !DILocation(line: 59, column: 9, scope: !949)
!963 = !DILocalVariable(name: "temp", scope: !933, file: !25, line: 62, type: !594)
!964 = !DILocation(line: 62, column: 14, scope: !933)
!965 = !DILocalVariable(name: "temp_bytes", scope: !933, file: !25, line: 63, type: !18)
!966 = !DILocalVariable(name: "i", scope: !967, file: !25, line: 64, type: !45)
!967 = distinct !DILexicalBlock(scope: !933, file: !25, line: 64, column: 5)
!968 = !DILocation(line: 0, scope: !967)
!969 = !DILocation(line: 64, column: 10, scope: !967)
!970 = !DILocation(line: 64, scope: !967)
!971 = !DILocation(line: 64, column: 36, scope: !972)
!972 = distinct !DILexicalBlock(scope: !967, file: !25, line: 64, column: 5)
!973 = !DILocation(line: 64, column: 5, scope: !967)
!974 = !DILocation(line: 65, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !25, line: 65, column: 9)
!976 = distinct !DILexicalBlock(scope: !972, file: !25, line: 64, column: 48)
!977 = !DILocalVariable(name: "j", scope: !975, file: !25, line: 65, type: !45)
!978 = !DILocation(line: 0, scope: !975)
!979 = !DILocation(line: 65, column: 27, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !25, line: 65, column: 9)
!981 = !DILocation(line: 65, column: 9, scope: !975)
!982 = !DILocation(line: 67, column: 34, scope: !983)
!983 = distinct !DILexicalBlock(scope: !980, file: !25, line: 65, column: 46)
!984 = !DILocation(line: 67, column: 54, scope: !983)
!985 = !DILocation(line: 67, column: 66, scope: !983)
!986 = !DILocalVariable(name: "top", scope: !983, file: !25, line: 67, type: !14)
!987 = !DILocation(line: 0, scope: !983)
!988 = !DILocation(line: 68, column: 13, scope: !983)
!989 = !DILocation(line: 68, column: 33, scope: !983)
!990 = !DILocalVariable(name: "k", scope: !991, file: !25, line: 69, type: !45)
!991 = distinct !DILexicalBlock(scope: !983, file: !25, line: 69, column: 13)
!992 = !DILocation(line: 0, scope: !991)
!993 = !DILocation(line: 70, column: 30, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !25, line: 69, column: 52)
!995 = distinct !DILexicalBlock(scope: !991, file: !25, line: 69, column: 13)
!996 = !DILocation(line: 70, column: 38, scope: !994)
!997 = !DILocation(line: 70, column: 17, scope: !994)
!998 = !DILocation(line: 70, column: 27, scope: !994)
!999 = !DILocation(line: 71, column: 17, scope: !994)
!1000 = !DILocation(line: 71, column: 25, scope: !994)
!1001 = !DILocalVariable(name: "jj", scope: !1002, file: !25, line: 74, type: !45)
!1002 = distinct !DILexicalBlock(scope: !983, file: !25, line: 74, column: 13)
!1003 = !DILocation(line: 0, scope: !1002)
!1004 = !DILocation(line: 79, column: 41, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !25, line: 75, column: 30)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !25, line: 75, column: 20)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 74, column: 53)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !25, line: 74, column: 13)
!1009 = !DILocation(line: 79, column: 38, scope: !1005)
!1010 = !DILocation(line: 86, column: 41, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !25, line: 82, column: 22)
!1012 = !DILocation(line: 86, column: 73, scope: !1011)
!1013 = !DILocation(line: 86, column: 38, scope: !1011)
!1014 = !DILocation(line: 79, column: 21, scope: !1005)
!1015 = !DILocation(line: 86, column: 21, scope: !1011)
!1016 = !DILocalVariable(name: "k", scope: !1017, file: !25, line: 92, type: !15)
!1017 = distinct !DILexicalBlock(scope: !983, file: !25, line: 92, column: 13)
!1018 = !DILocation(line: 0, scope: !1017)
!1019 = !DILocation(line: 93, column: 36, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !25, line: 92, column: 51)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !25, line: 92, column: 13)
!1022 = !DILocation(line: 93, column: 49, scope: !1020)
!1023 = !DILocation(line: 93, column: 28, scope: !1020)
!1024 = !DILocation(line: 93, column: 78, scope: !1020)
!1025 = !DILocation(line: 93, column: 91, scope: !1020)
!1026 = !DILocation(line: 93, column: 104, scope: !1020)
!1027 = !DILocation(line: 93, column: 83, scope: !1020)
!1028 = !DILocation(line: 93, column: 82, scope: !1020)
!1029 = !DILocation(line: 93, column: 73, scope: !1020)
!1030 = !DILocation(line: 93, column: 25, scope: !1020)
!1031 = !DILocation(line: 93, column: 17, scope: !1020)
!1032 = !DILocation(line: 65, column: 42, scope: !980)
!1033 = !DILocation(line: 65, column: 9, scope: !980)
!1034 = distinct !{!1034, !981, !1035, !307}
!1035 = !DILocation(line: 95, column: 9, scope: !975)
!1036 = !DILocation(line: 64, column: 44, scope: !972)
!1037 = !DILocation(line: 64, column: 5, scope: !972)
!1038 = distinct !{!1038, !973, !1039, !307}
!1039 = !DILocation(line: 96, column: 5, scope: !967)
!1040 = !DILocation(line: 99, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !933, file: !25, line: 99, column: 5)
!1042 = !DILocalVariable(name: "i", scope: !1041, file: !25, line: 99, type: !45)
!1043 = !DILocation(line: 0, scope: !1041)
!1044 = !DILocation(line: 105, column: 18, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !25, line: 100, column: 5)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !25, line: 99, column: 5)
!1047 = !DILocation(line: 105, column: 40, scope: !1045)
!1048 = !DILocation(line: 105, column: 28, scope: !1045)
!1049 = !DILocation(line: 105, column: 44, scope: !1045)
!1050 = !DILocation(line: 105, column: 25, scope: !1045)
!1051 = !DILocation(line: 105, column: 9, scope: !1045)
!1052 = !DILocation(line: 105, column: 16, scope: !1045)
!1053 = !DILocation(line: 106, column: 21, scope: !1045)
!1054 = !DILocation(line: 106, column: 18, scope: !1045)
!1055 = !DILocation(line: 106, column: 44, scope: !1045)
!1056 = !DILocation(line: 106, column: 25, scope: !1045)
!1057 = !DILocation(line: 106, column: 12, scope: !1045)
!1058 = !DILocation(line: 106, column: 9, scope: !1045)
!1059 = !DILocation(line: 106, column: 16, scope: !1045)
!1060 = !DILocation(line: 99, column: 38, scope: !1046)
!1061 = !DILocation(line: 99, column: 23, scope: !1046)
!1062 = !DILocation(line: 99, column: 5, scope: !1041)
!1063 = !DILocation(line: 99, column: 5, scope: !1046)
!1064 = distinct !{!1064, !1062, !1065, !307}
!1065 = !DILocation(line: 108, column: 5, scope: !1041)
!1066 = !DILocation(line: 109, column: 1, scope: !933)
!1067 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1068, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !178, !5, !18}
!1070 = !DILocalVariable(name: "p", arg: 1, scope: !1067, file: !25, line: 154, type: !178)
!1071 = !DILocation(line: 0, scope: !1067)
!1072 = !DILocalVariable(name: "VtL", arg: 2, scope: !1067, file: !25, line: 154, type: !5)
!1073 = !DILocalVariable(name: "A_out", arg: 3, scope: !1067, file: !25, line: 154, type: !18)
!1074 = !DILocalVariable(name: "bits_to_shift", scope: !1067, file: !25, line: 159, type: !45)
!1075 = !DILocalVariable(name: "words_to_shift", scope: !1067, file: !25, line: 160, type: !45)
!1076 = !DILocalVariable(name: "m_vec_limbs", scope: !1067, file: !25, line: 161, type: !243)
!1077 = !DILocalVariable(name: "A", scope: !1067, file: !25, line: 162, type: !1078)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 165888, elements: !1079)
!1079 = !{!1080}
!1080 = !DISubrange(count: 2592)
!1081 = !DILocation(line: 162, column: 14, scope: !1067)
!1082 = !DILocalVariable(name: "A_width", scope: !1067, file: !25, line: 163, type: !15)
!1083 = !DILocalVariable(name: "mask", scope: !1084, file: !25, line: 168, type: !6)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !25, line: 167, column: 29)
!1085 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 167, column: 8)
!1086 = !DILocation(line: 0, scope: !1084)
!1087 = !DILocalVariable(name: "i", scope: !1088, file: !25, line: 171, type: !45)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !25, line: 171, column: 9)
!1089 = !DILocation(line: 0, scope: !1088)
!1090 = !DILocation(line: 171, column: 14, scope: !1088)
!1091 = !DILocation(line: 171, scope: !1088)
!1092 = !DILocation(line: 173, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !25, line: 172, column: 9)
!1094 = distinct !DILexicalBlock(scope: !1088, file: !25, line: 171, column: 9)
!1095 = !DILocation(line: 173, column: 50, scope: !1093)
!1096 = !DILocation(line: 171, column: 53, scope: !1094)
!1097 = !DILocation(line: 171, column: 27, scope: !1094)
!1098 = !DILocation(line: 171, column: 9, scope: !1088)
!1099 = !DILocation(line: 171, column: 9, scope: !1094)
!1100 = distinct !{!1100, !1098, !1101, !307}
!1101 = !DILocation(line: 174, column: 9, scope: !1088)
!1102 = !DILocation(line: 177, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 177, column: 5)
!1104 = !DILocation(line: 160, column: 9, scope: !1067)
!1105 = !DILocation(line: 159, column: 9, scope: !1067)
!1106 = !DILocalVariable(name: "i", scope: !1103, file: !25, line: 177, type: !45)
!1107 = !DILocation(line: 0, scope: !1103)
!1108 = !DILocation(line: 177, column: 23, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 177, column: 5)
!1110 = !DILocation(line: 177, column: 5, scope: !1103)
!1111 = !DILocation(line: 178, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !25, line: 178, column: 9)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !25, line: 177, column: 47)
!1114 = !DILocalVariable(name: "j", scope: !1112, file: !25, line: 178, type: !45)
!1115 = !DILocation(line: 0, scope: !1112)
!1116 = !DILocation(line: 178, column: 40, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !25, line: 178, column: 9)
!1118 = !DILocation(line: 178, column: 9, scope: !1112)
!1119 = !DILocation(line: 180, column: 22, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !25, line: 178, column: 51)
!1121 = !DILocalVariable(name: "Mj", scope: !1067, file: !25, line: 164, type: !330)
!1122 = !DILocalVariable(name: "c", scope: !1123, file: !25, line: 181, type: !45)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !25, line: 181, column: 13)
!1124 = !DILocation(line: 0, scope: !1123)
!1125 = !DILocation(line: 181, column: 18, scope: !1123)
!1126 = !DILocation(line: 181, scope: !1123)
!1127 = !DILocation(line: 181, column: 31, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !25, line: 181, column: 13)
!1129 = !DILocation(line: 181, column: 13, scope: !1123)
!1130 = !DILocation(line: 182, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !25, line: 182, column: 17)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !25, line: 181, column: 50)
!1133 = !DILocalVariable(name: "k", scope: !1131, file: !25, line: 182, type: !45)
!1134 = !DILocation(line: 0, scope: !1131)
!1135 = !DILocation(line: 184, column: 78, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 183, column: 17)
!1137 = distinct !DILexicalBlock(scope: !1131, file: !25, line: 182, column: 17)
!1138 = !DILocation(line: 184, column: 100, scope: !1136)
!1139 = !DILocation(line: 184, column: 35, scope: !1136)
!1140 = !DILocation(line: 184, column: 39, scope: !1136)
!1141 = !DILocation(line: 184, column: 48, scope: !1136)
!1142 = !DILocation(line: 184, column: 65, scope: !1136)
!1143 = !DILocation(line: 184, column: 43, scope: !1136)
!1144 = !DILocation(line: 184, column: 21, scope: !1136)
!1145 = !DILocation(line: 184, column: 75, scope: !1136)
!1146 = !DILocation(line: 185, column: 38, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1136, file: !25, line: 185, column: 24)
!1148 = !DILocation(line: 186, column: 114, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1147, file: !25, line: 185, column: 42)
!1150 = !DILocation(line: 186, column: 108, scope: !1149)
!1151 = !DILocation(line: 186, column: 39, scope: !1149)
!1152 = !DILocation(line: 186, column: 43, scope: !1149)
!1153 = !DILocation(line: 186, column: 52, scope: !1149)
!1154 = !DILocation(line: 186, column: 73, scope: !1149)
!1155 = !DILocation(line: 186, column: 47, scope: !1149)
!1156 = !DILocation(line: 186, column: 25, scope: !1149)
!1157 = !DILocation(line: 186, column: 83, scope: !1149)
!1158 = !DILocation(line: 187, column: 21, scope: !1149)
!1159 = !DILocation(line: 182, column: 51, scope: !1137)
!1160 = !DILocation(line: 182, column: 35, scope: !1137)
!1161 = !DILocation(line: 182, column: 17, scope: !1131)
!1162 = !DILocation(line: 182, column: 17, scope: !1137)
!1163 = distinct !{!1163, !1161, !1164, !307}
!1164 = !DILocation(line: 188, column: 17, scope: !1131)
!1165 = !DILocation(line: 181, column: 46, scope: !1128)
!1166 = !DILocation(line: 181, column: 13, scope: !1128)
!1167 = distinct !{!1167, !1129, !1168, !307}
!1168 = !DILocation(line: 189, column: 13, scope: !1123)
!1169 = !DILocation(line: 191, column: 19, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1120, file: !25, line: 191, column: 17)
!1171 = !DILocation(line: 192, column: 26, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1170, file: !25, line: 191, column: 25)
!1173 = !DILocalVariable(name: "Mi", scope: !1067, file: !25, line: 164, type: !330)
!1174 = !DILocalVariable(name: "c", scope: !1175, file: !25, line: 193, type: !45)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !25, line: 193, column: 17)
!1176 = !DILocation(line: 0, scope: !1175)
!1177 = !DILocation(line: 193, column: 22, scope: !1175)
!1178 = !DILocation(line: 193, scope: !1175)
!1179 = !DILocation(line: 193, column: 35, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !25, line: 193, column: 17)
!1181 = !DILocation(line: 193, column: 17, scope: !1175)
!1182 = !DILocation(line: 194, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !25, line: 194, column: 21)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 193, column: 54)
!1185 = !DILocalVariable(name: "k", scope: !1183, file: !25, line: 194, type: !45)
!1186 = !DILocation(line: 0, scope: !1183)
!1187 = !DILocation(line: 196, column: 81, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !25, line: 195, column: 21)
!1189 = distinct !DILexicalBlock(scope: !1183, file: !25, line: 194, column: 21)
!1190 = !DILocation(line: 196, column: 103, scope: !1188)
!1191 = !DILocation(line: 196, column: 38, scope: !1188)
!1192 = !DILocation(line: 196, column: 42, scope: !1188)
!1193 = !DILocation(line: 196, column: 51, scope: !1188)
!1194 = !DILocation(line: 196, column: 68, scope: !1188)
!1195 = !DILocation(line: 196, column: 46, scope: !1188)
!1196 = !DILocation(line: 196, column: 25, scope: !1188)
!1197 = !DILocation(line: 196, column: 78, scope: !1188)
!1198 = !DILocation(line: 197, column: 42, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1188, file: !25, line: 197, column: 28)
!1200 = !DILocation(line: 198, column: 117, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !25, line: 197, column: 46)
!1202 = !DILocation(line: 198, column: 111, scope: !1201)
!1203 = !DILocation(line: 198, column: 42, scope: !1201)
!1204 = !DILocation(line: 198, column: 46, scope: !1201)
!1205 = !DILocation(line: 198, column: 55, scope: !1201)
!1206 = !DILocation(line: 198, column: 76, scope: !1201)
!1207 = !DILocation(line: 198, column: 50, scope: !1201)
!1208 = !DILocation(line: 198, column: 29, scope: !1201)
!1209 = !DILocation(line: 198, column: 86, scope: !1201)
!1210 = !DILocation(line: 199, column: 25, scope: !1201)
!1211 = !DILocation(line: 194, column: 55, scope: !1189)
!1212 = !DILocation(line: 194, column: 39, scope: !1189)
!1213 = !DILocation(line: 194, column: 21, scope: !1183)
!1214 = !DILocation(line: 194, column: 21, scope: !1189)
!1215 = distinct !{!1215, !1213, !1216, !307}
!1216 = !DILocation(line: 200, column: 21, scope: !1183)
!1217 = !DILocation(line: 193, column: 50, scope: !1180)
!1218 = !DILocation(line: 193, column: 17, scope: !1180)
!1219 = distinct !{!1219, !1181, !1220, !307}
!1220 = !DILocation(line: 201, column: 17, scope: !1175)
!1221 = !DILocation(line: 204, column: 27, scope: !1120)
!1222 = !DILocation(line: 205, column: 30, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1120, file: !25, line: 205, column: 16)
!1224 = !DILocation(line: 178, column: 46, scope: !1117)
!1225 = !DILocation(line: 178, column: 9, scope: !1117)
!1226 = distinct !{!1226, !1118, !1227, !307}
!1227 = !DILocation(line: 209, column: 9, scope: !1112)
!1228 = !DILocation(line: 177, column: 42, scope: !1109)
!1229 = !DILocation(line: 177, column: 5, scope: !1109)
!1230 = distinct !{!1230, !1110, !1231, !307}
!1231 = !DILocation(line: 210, column: 5, scope: !1103)
!1232 = !DILocation(line: 212, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 212, column: 5)
!1234 = !DILocalVariable(name: "c", scope: !1233, file: !25, line: 212, type: !15)
!1235 = !DILocation(line: 0, scope: !1233)
!1236 = !DILocation(line: 212, column: 26, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !25, line: 212, column: 5)
!1238 = !DILocation(line: 212, column: 5, scope: !1233)
!1239 = !DILocation(line: 214, column: 35, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !25, line: 213, column: 5)
!1241 = !DILocation(line: 214, column: 9, scope: !1240)
!1242 = !DILocation(line: 212, column: 91, scope: !1237)
!1243 = !DILocation(line: 212, column: 5, scope: !1237)
!1244 = distinct !{!1244, !1238, !1245, !307}
!1245 = !DILocation(line: 215, column: 5, scope: !1233)
!1246 = !DILocalVariable(name: "tab", scope: !1067, file: !25, line: 217, type: !1247)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 16)
!1250 = !DILocation(line: 217, column: 19, scope: !1067)
!1251 = !DILocalVariable(name: "i", scope: !1252, file: !25, line: 218, type: !15)
!1252 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 218, column: 5)
!1253 = !DILocation(line: 0, scope: !1252)
!1254 = !DILocation(line: 218, column: 10, scope: !1252)
!1255 = !DILocation(line: 218, scope: !1252)
!1256 = !DILocation(line: 218, column: 26, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !25, line: 218, column: 5)
!1258 = !DILocation(line: 218, column: 5, scope: !1252)
!1259 = !DILocation(line: 220, column: 28, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !25, line: 219, column: 5)
!1261 = !DILocation(line: 220, column: 22, scope: !1260)
!1262 = !DILocation(line: 220, column: 14, scope: !1260)
!1263 = !DILocation(line: 220, column: 9, scope: !1260)
!1264 = !DILocation(line: 220, column: 20, scope: !1260)
!1265 = !DILocation(line: 221, column: 22, scope: !1260)
!1266 = !DILocation(line: 221, column: 14, scope: !1260)
!1267 = !DILocation(line: 221, column: 16, scope: !1260)
!1268 = !DILocation(line: 221, column: 9, scope: !1260)
!1269 = !DILocation(line: 221, column: 20, scope: !1260)
!1270 = !DILocation(line: 222, column: 22, scope: !1260)
!1271 = !DILocation(line: 222, column: 14, scope: !1260)
!1272 = !DILocation(line: 222, column: 16, scope: !1260)
!1273 = !DILocation(line: 222, column: 9, scope: !1260)
!1274 = !DILocation(line: 222, column: 20, scope: !1260)
!1275 = !DILocation(line: 223, column: 22, scope: !1260)
!1276 = !DILocation(line: 223, column: 14, scope: !1260)
!1277 = !DILocation(line: 223, column: 16, scope: !1260)
!1278 = !DILocation(line: 223, column: 9, scope: !1260)
!1279 = !DILocation(line: 223, column: 20, scope: !1260)
!1280 = !DILocation(line: 218, column: 41, scope: !1257)
!1281 = !DILocation(line: 218, column: 5, scope: !1257)
!1282 = distinct !{!1282, !1258, !1283, !307}
!1283 = !DILocation(line: 224, column: 5, scope: !1252)
!1284 = !DILocation(line: 228, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 228, column: 5)
!1286 = !DILocalVariable(name: "c", scope: !1285, file: !25, line: 228, type: !15)
!1287 = !DILocation(line: 0, scope: !1285)
!1288 = !DILocation(line: 228, column: 26, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !25, line: 228, column: 5)
!1290 = !DILocation(line: 228, column: 5, scope: !1285)
!1291 = !DILocation(line: 230, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !25, line: 230, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !25, line: 229, column: 5)
!1294 = !DILocalVariable(name: "r", scope: !1292, file: !25, line: 230, type: !45)
!1295 = !DILocation(line: 0, scope: !1292)
!1296 = !DILocation(line: 230, column: 36, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !25, line: 230, column: 9)
!1298 = !DILocation(line: 230, column: 9, scope: !1292)
!1299 = !DILocation(line: 232, column: 28, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !25, line: 231, column: 9)
!1301 = !DILocation(line: 232, column: 32, scope: !1300)
!1302 = !DILocation(line: 232, column: 41, scope: !1300)
!1303 = !DILocation(line: 232, column: 49, scope: !1300)
!1304 = !DILocation(line: 232, column: 45, scope: !1300)
!1305 = !DILocalVariable(name: "pos", scope: !1300, file: !25, line: 232, type: !15)
!1306 = !DILocation(line: 0, scope: !1300)
!1307 = !DILocation(line: 233, column: 28, scope: !1300)
!1308 = !DILocation(line: 233, column: 41, scope: !1300)
!1309 = !DILocalVariable(name: "t0", scope: !1300, file: !25, line: 233, type: !6)
!1310 = !DILocation(line: 234, column: 35, scope: !1300)
!1311 = !DILocation(line: 234, column: 41, scope: !1300)
!1312 = !DILocalVariable(name: "t1", scope: !1300, file: !25, line: 234, type: !6)
!1313 = !DILocation(line: 235, column: 35, scope: !1300)
!1314 = !DILocation(line: 235, column: 41, scope: !1300)
!1315 = !DILocalVariable(name: "t2", scope: !1300, file: !25, line: 235, type: !6)
!1316 = !DILocation(line: 236, column: 28, scope: !1300)
!1317 = !DILocation(line: 236, column: 35, scope: !1300)
!1318 = !DILocation(line: 236, column: 41, scope: !1300)
!1319 = !DILocalVariable(name: "t3", scope: !1300, file: !25, line: 236, type: !6)
!1320 = !DILocalVariable(name: "t", scope: !1321, file: !25, line: 237, type: !15)
!1321 = distinct !DILexicalBlock(scope: !1300, file: !25, line: 237, column: 13)
!1322 = !DILocation(line: 0, scope: !1321)
!1323 = !DILocation(line: 239, column: 84, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !25, line: 238, column: 13)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !25, line: 237, column: 13)
!1326 = !DILocation(line: 239, column: 83, scope: !1324)
!1327 = !DILocation(line: 239, column: 100, scope: !1324)
!1328 = !DILocation(line: 239, column: 99, scope: !1324)
!1329 = !DILocation(line: 239, column: 95, scope: !1324)
!1330 = !DILocation(line: 239, column: 116, scope: !1324)
!1331 = !DILocation(line: 239, column: 115, scope: !1324)
!1332 = !DILocation(line: 239, column: 111, scope: !1324)
!1333 = !DILocation(line: 239, column: 132, scope: !1324)
!1334 = !DILocation(line: 239, column: 131, scope: !1324)
!1335 = !DILocation(line: 239, column: 127, scope: !1324)
!1336 = !DILocation(line: 239, column: 24, scope: !1324)
!1337 = !DILocation(line: 239, column: 36, scope: !1324)
!1338 = !DILocation(line: 239, column: 40, scope: !1324)
!1339 = !DILocation(line: 239, column: 49, scope: !1324)
!1340 = !DILocation(line: 239, column: 60, scope: !1324)
!1341 = !DILocation(line: 239, column: 72, scope: !1324)
!1342 = !DILocation(line: 239, column: 53, scope: !1324)
!1343 = !DILocation(line: 239, column: 17, scope: !1324)
!1344 = !DILocation(line: 239, column: 78, scope: !1324)
!1345 = !DILocation(line: 230, column: 82, scope: !1297)
!1346 = !DILocation(line: 230, column: 9, scope: !1297)
!1347 = distinct !{!1347, !1298, !1348, !307}
!1348 = !DILocation(line: 241, column: 9, scope: !1292)
!1349 = !DILocation(line: 228, column: 38, scope: !1289)
!1350 = !DILocation(line: 228, column: 5, scope: !1289)
!1351 = distinct !{!1351, !1290, !1352, !307}
!1352 = !DILocation(line: 242, column: 5, scope: !1285)
!1353 = !DILocation(line: 250, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 250, column: 5)
!1355 = !DILocalVariable(name: "r", scope: !1354, file: !25, line: 250, type: !45)
!1356 = !DILocation(line: 0, scope: !1354)
!1357 = !DILocation(line: 250, column: 23, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !25, line: 250, column: 5)
!1359 = !DILocation(line: 250, column: 5, scope: !1354)
!1360 = !DILocation(line: 252, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !25, line: 252, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !25, line: 251, column: 5)
!1363 = !DILocalVariable(name: "c", scope: !1361, file: !25, line: 252, type: !45)
!1364 = !DILocation(line: 0, scope: !1361)
!1365 = !DILocation(line: 254, column: 13, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !25, line: 254, column: 13)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !25, line: 253, column: 9)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !25, line: 252, column: 9)
!1369 = !DILocation(line: 254, scope: !1366)
!1370 = !DILocalVariable(name: "i", scope: !1366, file: !25, line: 254, type: !45)
!1371 = !DILocation(line: 0, scope: !1366)
!1372 = !DILocation(line: 254, column: 35, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !25, line: 254, column: 13)
!1374 = !DILocation(line: 256, column: 55, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1373, file: !25, line: 255, column: 13)
!1376 = !DILocation(line: 256, column: 59, scope: !1375)
!1377 = !DILocation(line: 256, column: 63, scope: !1375)
!1378 = !DILocation(line: 256, column: 44, scope: !1375)
!1379 = !DILocation(line: 256, column: 95, scope: !1375)
!1380 = !DILocation(line: 256, column: 92, scope: !1375)
!1381 = !DILocation(line: 256, column: 75, scope: !1375)
!1382 = !DILocation(line: 256, column: 99, scope: !1375)
!1383 = !DILocation(line: 256, column: 17, scope: !1375)
!1384 = !DILocation(line: 254, column: 50, scope: !1373)
!1385 = !DILocation(line: 254, column: 13, scope: !1373)
!1386 = distinct !{!1386, !1365, !1387, !307}
!1387 = !DILocation(line: 257, column: 13, scope: !1366)
!1388 = !DILocation(line: 252, column: 50, scope: !1368)
!1389 = !DILocation(line: 252, column: 27, scope: !1368)
!1390 = !DILocation(line: 252, column: 9, scope: !1361)
!1391 = !DILocation(line: 252, column: 9, scope: !1368)
!1392 = distinct !{!1392, !1390, !1393, !307}
!1393 = !DILocation(line: 258, column: 9, scope: !1361)
!1394 = !DILocation(line: 256, column: 104, scope: !1375)
!1395 = !DILocation(line: 250, column: 38, scope: !1358)
!1396 = !DILocation(line: 250, column: 5, scope: !1358)
!1397 = distinct !{!1397, !1359, !1398, !307}
!1398 = !DILocation(line: 259, column: 5, scope: !1354)
!1399 = !DILocation(line: 260, column: 1, scope: !1067)
!1400 = distinct !DISubprogram(name: "mat_mul", scope: !502, file: !502, line: 79, type: !1401, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !49, !49, !18, !45, !45, !45}
!1403 = !DILocalVariable(name: "a", arg: 1, scope: !1400, file: !502, line: 79, type: !49)
!1404 = !DILocation(line: 0, scope: !1400)
!1405 = !DILocalVariable(name: "b", arg: 2, scope: !1400, file: !502, line: 79, type: !49)
!1406 = !DILocalVariable(name: "c", arg: 3, scope: !1400, file: !502, line: 80, type: !18)
!1407 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1400, file: !502, line: 80, type: !45)
!1408 = !DILocalVariable(name: "row_a", arg: 5, scope: !1400, file: !502, line: 80, type: !45)
!1409 = !DILocalVariable(name: "col_b", arg: 6, scope: !1400, file: !502, line: 80, type: !45)
!1410 = !DILocalVariable(name: "i", scope: !1411, file: !502, line: 81, type: !45)
!1411 = distinct !DILexicalBlock(scope: !1400, file: !502, line: 81, column: 5)
!1412 = !DILocation(line: 0, scope: !1411)
!1413 = !DILocation(line: 81, column: 10, scope: !1411)
!1414 = !DILocation(line: 81, scope: !1411)
!1415 = !DILocation(line: 81, column: 23, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !502, line: 81, column: 5)
!1417 = !DILocation(line: 81, column: 5, scope: !1411)
!1418 = !DILocation(line: 82, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !502, line: 82, column: 9)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !502, line: 81, column: 53)
!1421 = !DILocalVariable(name: "j", scope: !1419, file: !502, line: 82, type: !45)
!1422 = !DILocation(line: 0, scope: !1419)
!1423 = !DILocation(line: 82, column: 27, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !502, line: 82, column: 9)
!1425 = !DILocation(line: 82, column: 9, scope: !1419)
!1426 = !DILocation(line: 83, column: 31, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !502, line: 82, column: 46)
!1428 = !DILocation(line: 83, column: 18, scope: !1427)
!1429 = !DILocation(line: 83, column: 16, scope: !1427)
!1430 = !DILocation(line: 82, column: 36, scope: !1424)
!1431 = !DILocation(line: 82, column: 41, scope: !1424)
!1432 = !DILocation(line: 82, column: 9, scope: !1424)
!1433 = distinct !{!1433, !1425, !1434, !307}
!1434 = !DILocation(line: 84, column: 9, scope: !1419)
!1435 = !DILocation(line: 81, column: 32, scope: !1416)
!1436 = !DILocation(line: 81, column: 39, scope: !1416)
!1437 = !DILocation(line: 81, column: 5, scope: !1416)
!1438 = distinct !{!1438, !1417, !1439, !307}
!1439 = !DILocation(line: 85, column: 5, scope: !1411)
!1440 = !DILocation(line: 86, column: 1, scope: !1400)
!1441 = distinct !DISubprogram(name: "mat_add", scope: !502, file: !502, line: 88, type: !1442, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !49, !49, !18, !45, !45}
!1444 = !DILocalVariable(name: "a", arg: 1, scope: !1441, file: !502, line: 88, type: !49)
!1445 = !DILocation(line: 0, scope: !1441)
!1446 = !DILocalVariable(name: "b", arg: 2, scope: !1441, file: !502, line: 88, type: !49)
!1447 = !DILocalVariable(name: "c", arg: 3, scope: !1441, file: !502, line: 89, type: !18)
!1448 = !DILocalVariable(name: "m", arg: 4, scope: !1441, file: !502, line: 89, type: !45)
!1449 = !DILocalVariable(name: "n", arg: 5, scope: !1441, file: !502, line: 89, type: !45)
!1450 = !DILocalVariable(name: "i", scope: !1451, file: !502, line: 90, type: !45)
!1451 = distinct !DILexicalBlock(scope: !1441, file: !502, line: 90, column: 5)
!1452 = !DILocation(line: 0, scope: !1451)
!1453 = !DILocation(line: 90, column: 10, scope: !1451)
!1454 = !DILocation(line: 90, scope: !1451)
!1455 = !DILocation(line: 90, column: 23, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !502, line: 90, column: 5)
!1457 = !DILocation(line: 90, column: 5, scope: !1451)
!1458 = !DILocation(line: 91, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !502, line: 91, column: 9)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !502, line: 90, column: 33)
!1461 = !DILocalVariable(name: "j", scope: !1459, file: !502, line: 91, type: !45)
!1462 = !DILocation(line: 0, scope: !1459)
!1463 = !DILocation(line: 91, column: 27, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !502, line: 91, column: 9)
!1465 = !DILocation(line: 91, column: 9, scope: !1459)
!1466 = !DILocation(line: 92, column: 46, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !502, line: 91, column: 37)
!1468 = !DILocation(line: 92, column: 42, scope: !1467)
!1469 = !DILocation(line: 92, column: 50, scope: !1467)
!1470 = !DILocation(line: 92, column: 38, scope: !1467)
!1471 = !DILocation(line: 92, column: 64, scope: !1467)
!1472 = !DILocation(line: 92, column: 60, scope: !1467)
!1473 = !DILocation(line: 92, column: 68, scope: !1467)
!1474 = !DILocation(line: 92, column: 56, scope: !1467)
!1475 = !DILocation(line: 92, column: 32, scope: !1467)
!1476 = !DILocation(line: 92, column: 21, scope: !1467)
!1477 = !DILocation(line: 92, column: 17, scope: !1467)
!1478 = !DILocation(line: 92, column: 25, scope: !1467)
!1479 = !DILocation(line: 92, column: 30, scope: !1467)
!1480 = !DILocation(line: 91, column: 32, scope: !1464)
!1481 = !DILocation(line: 91, column: 9, scope: !1464)
!1482 = distinct !{!1482, !1465, !1483, !307}
!1483 = !DILocation(line: 93, column: 9, scope: !1459)
!1484 = !DILocation(line: 90, column: 28, scope: !1456)
!1485 = !DILocation(line: 90, column: 5, scope: !1456)
!1486 = distinct !{!1486, !1457, !1487, !307}
!1487 = !DILocation(line: 94, column: 5, scope: !1451)
!1488 = !DILocation(line: 95, column: 1, scope: !1441)
!1489 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !280, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1490 = !DILocalVariable(name: "m", arg: 1, scope: !1489, file: !25, line: 32, type: !49)
!1491 = !DILocation(line: 0, scope: !1489)
!1492 = !DILocalVariable(name: "menc", arg: 2, scope: !1489, file: !25, line: 32, type: !18)
!1493 = !DILocalVariable(name: "mlen", arg: 3, scope: !1489, file: !25, line: 32, type: !45)
!1494 = !DILocalVariable(name: "i", scope: !1489, file: !25, line: 33, type: !45)
!1495 = !DILocation(line: 34, column: 10, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !25, line: 34, column: 5)
!1497 = !DILocation(line: 34, scope: !1496)
!1498 = !DILocation(line: 34, column: 26, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !25, line: 34, column: 5)
!1500 = !DILocation(line: 34, column: 19, scope: !1499)
!1501 = !DILocation(line: 34, column: 5, scope: !1496)
!1502 = !DILocation(line: 35, column: 20, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !25, line: 34, column: 44)
!1504 = !DILocation(line: 35, column: 31, scope: !1503)
!1505 = !DILocation(line: 35, column: 27, scope: !1503)
!1506 = !DILocation(line: 35, column: 36, scope: !1503)
!1507 = !DILocation(line: 35, column: 24, scope: !1503)
!1508 = !DILocation(line: 35, column: 9, scope: !1503)
!1509 = !DILocation(line: 35, column: 17, scope: !1503)
!1510 = !DILocation(line: 34, column: 31, scope: !1499)
!1511 = !DILocation(line: 34, column: 38, scope: !1499)
!1512 = !DILocation(line: 34, column: 5, scope: !1499)
!1513 = distinct !{!1513, !1501, !1514, !307}
!1514 = !DILocation(line: 36, column: 5, scope: !1496)
!1515 = !DILocation(line: 38, column: 18, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1489, file: !25, line: 38, column: 9)
!1517 = !DILocation(line: 39, column: 20, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1516, file: !25, line: 38, column: 24)
!1519 = !DILocation(line: 39, column: 9, scope: !1518)
!1520 = !DILocation(line: 39, column: 17, scope: !1518)
!1521 = !DILocation(line: 40, column: 5, scope: !1518)
!1522 = !DILocation(line: 41, column: 1, scope: !1489)
!1523 = distinct !DISubprogram(name: "add_f", scope: !502, file: !502, line: 43, type: !1524, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!14, !14, !14}
!1526 = !DILocalVariable(name: "a", arg: 1, scope: !1523, file: !502, line: 43, type: !14)
!1527 = !DILocation(line: 0, scope: !1523)
!1528 = !DILocalVariable(name: "b", arg: 2, scope: !1523, file: !502, line: 43, type: !14)
!1529 = !DILocation(line: 44, column: 14, scope: !1523)
!1530 = !DILocation(line: 44, column: 5, scope: !1523)
!1531 = distinct !DISubprogram(name: "lincomb", scope: !502, file: !502, line: 70, type: !1532, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!14, !49, !49, !45, !45}
!1534 = !DILocalVariable(name: "a", arg: 1, scope: !1531, file: !502, line: 70, type: !49)
!1535 = !DILocation(line: 0, scope: !1531)
!1536 = !DILocalVariable(name: "b", arg: 2, scope: !1531, file: !502, line: 71, type: !49)
!1537 = !DILocalVariable(name: "n", arg: 3, scope: !1531, file: !502, line: 71, type: !45)
!1538 = !DILocalVariable(name: "m", arg: 4, scope: !1531, file: !502, line: 71, type: !45)
!1539 = !DILocalVariable(name: "ret", scope: !1531, file: !502, line: 72, type: !14)
!1540 = !DILocalVariable(name: "i", scope: !1541, file: !502, line: 73, type: !45)
!1541 = distinct !DILexicalBlock(scope: !1531, file: !502, line: 73, column: 5)
!1542 = !DILocation(line: 0, scope: !1541)
!1543 = !DILocation(line: 73, column: 10, scope: !1541)
!1544 = !DILocation(line: 73, scope: !1541)
!1545 = !DILocation(line: 73, column: 23, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !502, line: 73, column: 5)
!1547 = !DILocation(line: 73, column: 5, scope: !1541)
!1548 = !DILocation(line: 74, column: 27, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !502, line: 73, column: 41)
!1550 = !DILocation(line: 74, column: 33, scope: !1549)
!1551 = !DILocation(line: 74, column: 21, scope: !1549)
!1552 = !DILocation(line: 74, column: 15, scope: !1549)
!1553 = !DILocation(line: 73, column: 28, scope: !1546)
!1554 = !DILocation(line: 73, column: 35, scope: !1546)
!1555 = !DILocation(line: 73, column: 5, scope: !1546)
!1556 = distinct !{!1556, !1547, !1557, !307}
!1557 = !DILocation(line: 75, column: 5, scope: !1541)
!1558 = !DILocation(line: 76, column: 5, scope: !1531)
!1559 = distinct !DISubprogram(name: "mul_f", scope: !502, file: !502, line: 9, type: !1524, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1560 = !DILocalVariable(name: "a", arg: 1, scope: !1559, file: !502, line: 9, type: !14)
!1561 = !DILocation(line: 0, scope: !1559)
!1562 = !DILocalVariable(name: "b", arg: 2, scope: !1559, file: !502, line: 9, type: !14)
!1563 = !DILocation(line: 14, column: 10, scope: !1559)
!1564 = !DILocation(line: 14, column: 7, scope: !1559)
!1565 = !DILocation(line: 17, column: 17, scope: !1559)
!1566 = !DILocalVariable(name: "p", scope: !1559, file: !502, line: 11, type: !14)
!1567 = !DILocation(line: 18, column: 13, scope: !1559)
!1568 = !DILocation(line: 18, column: 17, scope: !1559)
!1569 = !DILocation(line: 18, column: 7, scope: !1559)
!1570 = !DILocation(line: 19, column: 13, scope: !1559)
!1571 = !DILocation(line: 19, column: 17, scope: !1559)
!1572 = !DILocation(line: 19, column: 7, scope: !1559)
!1573 = !DILocation(line: 20, column: 13, scope: !1559)
!1574 = !DILocation(line: 20, column: 17, scope: !1559)
!1575 = !DILocation(line: 20, column: 7, scope: !1559)
!1576 = !DILocalVariable(name: "top_p", scope: !1559, file: !502, line: 23, type: !14)
!1577 = !DILocation(line: 24, column: 37, scope: !1559)
!1578 = !DILocation(line: 24, column: 52, scope: !1559)
!1579 = !DILocation(line: 24, column: 43, scope: !1559)
!1580 = !DILocation(line: 24, column: 59, scope: !1559)
!1581 = !DILocalVariable(name: "out", scope: !1559, file: !502, line: 24, type: !14)
!1582 = !DILocation(line: 25, column: 5, scope: !1559)
!1583 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1584 = !DILocation(line: 0, scope: !24)
!1585 = !DILocalVariable(name: "i", scope: !1586, file: !25, line: 117, type: !15)
!1586 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1587 = !DILocation(line: 0, scope: !1586)
!1588 = !DILocation(line: 119, column: 24, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !25, line: 118, column: 5)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !25, line: 117, column: 5)
!1591 = !DILocation(line: 119, column: 29, scope: !1589)
!1592 = !DILocation(line: 119, column: 38, scope: !1589)
!1593 = !DILocation(line: 119, column: 36, scope: !1589)
!1594 = !DILocation(line: 119, column: 46, scope: !1589)
!1595 = !DILocalVariable(name: "t", scope: !1589, file: !25, line: 119, type: !6)
!1596 = !DILocation(line: 0, scope: !1589)
!1597 = !DILocation(line: 120, column: 21, scope: !1589)
!1598 = !DILocation(line: 120, column: 16, scope: !1589)
!1599 = !DILocation(line: 121, column: 9, scope: !1589)
!1600 = !DILocation(line: 121, column: 16, scope: !1589)
!1601 = !DILocation(line: 120, column: 9, scope: !1589)
!1602 = !DILocalVariable(name: "i", scope: !1603, file: !25, line: 124, type: !15)
!1603 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1604 = !DILocation(line: 0, scope: !1603)
!1605 = !DILocation(line: 126, column: 25, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !25, line: 125, column: 5)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !25, line: 124, column: 5)
!1608 = !DILocation(line: 126, column: 32, scope: !1606)
!1609 = !DILocation(line: 126, column: 40, scope: !1606)
!1610 = !DILocation(line: 126, column: 38, scope: !1606)
!1611 = !DILocation(line: 126, column: 48, scope: !1606)
!1612 = !DILocalVariable(name: "t0", scope: !1606, file: !25, line: 126, type: !6)
!1613 = !DILocation(line: 0, scope: !1606)
!1614 = !DILocation(line: 127, column: 25, scope: !1606)
!1615 = !DILocation(line: 127, column: 32, scope: !1606)
!1616 = !DILocation(line: 127, column: 40, scope: !1606)
!1617 = !DILocation(line: 127, column: 38, scope: !1606)
!1618 = !DILocation(line: 127, column: 48, scope: !1606)
!1619 = !DILocalVariable(name: "t1", scope: !1606, file: !25, line: 127, type: !6)
!1620 = !DILocation(line: 128, column: 23, scope: !1606)
!1621 = !DILocation(line: 128, column: 16, scope: !1606)
!1622 = !DILocation(line: 129, column: 23, scope: !1606)
!1623 = !DILocation(line: 129, column: 9, scope: !1606)
!1624 = !DILocation(line: 129, column: 16, scope: !1606)
!1625 = !DILocation(line: 130, column: 9, scope: !1606)
!1626 = !DILocation(line: 130, column: 16, scope: !1606)
!1627 = !DILocation(line: 131, column: 9, scope: !1606)
!1628 = !DILocation(line: 131, column: 16, scope: !1606)
!1629 = !DILocation(line: 128, column: 9, scope: !1606)
!1630 = !DILocalVariable(name: "i", scope: !1631, file: !25, line: 134, type: !15)
!1631 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1632 = !DILocation(line: 0, scope: !1631)
!1633 = !DILocation(line: 136, column: 25, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !25, line: 135, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !25, line: 134, column: 5)
!1636 = !DILocation(line: 136, column: 32, scope: !1634)
!1637 = !DILocation(line: 136, column: 41, scope: !1634)
!1638 = !DILocation(line: 136, column: 39, scope: !1634)
!1639 = !DILocation(line: 136, column: 50, scope: !1634)
!1640 = !DILocalVariable(name: "t0", scope: !1634, file: !25, line: 136, type: !6)
!1641 = !DILocation(line: 0, scope: !1634)
!1642 = !DILocation(line: 137, column: 25, scope: !1634)
!1643 = !DILocation(line: 137, column: 32, scope: !1634)
!1644 = !DILocation(line: 137, column: 41, scope: !1634)
!1645 = !DILocation(line: 137, column: 39, scope: !1634)
!1646 = !DILocation(line: 137, column: 50, scope: !1634)
!1647 = !DILocalVariable(name: "t1", scope: !1634, file: !25, line: 137, type: !6)
!1648 = !DILocation(line: 139, column: 23, scope: !1634)
!1649 = !DILocation(line: 139, column: 17, scope: !1634)
!1650 = !DILocation(line: 140, column: 23, scope: !1634)
!1651 = !DILocation(line: 140, column: 9, scope: !1634)
!1652 = !DILocation(line: 140, column: 17, scope: !1634)
!1653 = !DILocation(line: 141, column: 9, scope: !1634)
!1654 = !DILocation(line: 141, column: 17, scope: !1634)
!1655 = !DILocation(line: 142, column: 9, scope: !1634)
!1656 = !DILocation(line: 142, column: 17, scope: !1634)
!1657 = !DILocation(line: 139, column: 9, scope: !1634)
!1658 = !DILocalVariable(name: "i", scope: !1659, file: !25, line: 145, type: !15)
!1659 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1660 = !DILocation(line: 0, scope: !1659)
!1661 = !DILocation(line: 147, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !25, line: 146, column: 5)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !25, line: 145, column: 5)
!1664 = !DILocation(line: 147, column: 28, scope: !1662)
!1665 = !DILocation(line: 147, column: 36, scope: !1662)
!1666 = !DILocation(line: 147, column: 44, scope: !1662)
!1667 = !DILocalVariable(name: "t", scope: !1662, file: !25, line: 147, type: !6)
!1668 = !DILocation(line: 0, scope: !1662)
!1669 = !DILocation(line: 148, column: 21, scope: !1662)
!1670 = !DILocation(line: 148, column: 16, scope: !1662)
!1671 = !DILocation(line: 149, column: 9, scope: !1662)
!1672 = !DILocation(line: 149, column: 16, scope: !1662)
!1673 = !DILocation(line: 148, column: 9, scope: !1662)
!1674 = !DILocation(line: 151, column: 1, scope: !24)
!1675 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !327, file: !327, line: 61, type: !388, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1676 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1675, file: !327, line: 61, type: !243)
!1677 = !DILocation(line: 0, scope: !1675)
!1678 = !DILocalVariable(name: "mat", arg: 2, scope: !1675, file: !327, line: 61, type: !49)
!1679 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1675, file: !327, line: 61, type: !330)
!1680 = !DILocalVariable(name: "acc", arg: 4, scope: !1675, file: !327, line: 61, type: !5)
!1681 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1675, file: !327, line: 62, type: !243)
!1682 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1675, file: !327, line: 62, type: !243)
!1683 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1675, file: !327, line: 62, type: !243)
!1684 = !DILocalVariable(name: "r", scope: !1685, file: !327, line: 64, type: !45)
!1685 = distinct !DILexicalBlock(scope: !1675, file: !327, line: 64, column: 5)
!1686 = !DILocation(line: 0, scope: !1685)
!1687 = !DILocation(line: 64, column: 10, scope: !1685)
!1688 = !DILocation(line: 64, scope: !1685)
!1689 = !DILocation(line: 64, column: 23, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !327, line: 64, column: 5)
!1691 = !DILocation(line: 64, column: 5, scope: !1685)
!1692 = !DILocation(line: 65, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !327, line: 65, column: 9)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !327, line: 64, column: 40)
!1695 = !DILocalVariable(name: "c", scope: !1693, file: !327, line: 65, type: !45)
!1696 = !DILocation(line: 0, scope: !1693)
!1697 = !DILocation(line: 65, column: 27, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !327, line: 65, column: 9)
!1699 = !DILocation(line: 65, column: 9, scope: !1693)
!1700 = !DILocation(line: 66, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !327, line: 66, column: 13)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !327, line: 65, column: 44)
!1703 = !DILocalVariable(name: "k", scope: !1701, file: !327, line: 66, type: !45)
!1704 = !DILocation(line: 0, scope: !1701)
!1705 = !DILocation(line: 66, column: 31, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !327, line: 66, column: 13)
!1707 = !DILocation(line: 66, column: 13, scope: !1701)
!1708 = !DILocation(line: 67, column: 70, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !327, line: 66, column: 54)
!1710 = !DILocation(line: 67, column: 84, scope: !1709)
!1711 = !DILocation(line: 67, column: 65, scope: !1709)
!1712 = !DILocation(line: 67, column: 51, scope: !1709)
!1713 = !DILocation(line: 67, column: 96, scope: !1709)
!1714 = !DILocation(line: 67, column: 90, scope: !1709)
!1715 = !DILocation(line: 67, column: 136, scope: !1709)
!1716 = !DILocation(line: 67, column: 150, scope: !1709)
!1717 = !DILocation(line: 67, column: 131, scope: !1709)
!1718 = !DILocation(line: 67, column: 117, scope: !1709)
!1719 = !DILocation(line: 67, column: 17, scope: !1709)
!1720 = !DILocation(line: 66, column: 48, scope: !1706)
!1721 = !DILocation(line: 66, column: 13, scope: !1706)
!1722 = distinct !{!1722, !1707, !1723, !307}
!1723 = !DILocation(line: 68, column: 13, scope: !1701)
!1724 = !DILocation(line: 65, column: 40, scope: !1698)
!1725 = !DILocation(line: 65, column: 9, scope: !1698)
!1726 = distinct !{!1726, !1699, !1727, !307}
!1727 = !DILocation(line: 69, column: 9, scope: !1693)
!1728 = !DILocation(line: 64, column: 36, scope: !1690)
!1729 = !DILocation(line: 64, column: 5, scope: !1690)
!1730 = distinct !{!1730, !1691, !1731, !307}
!1731 = !DILocation(line: 70, column: 5, scope: !1685)
!1732 = !DILocation(line: 71, column: 1, scope: !1675)
!1733 = distinct !DISubprogram(name: "P1_times_Vt", scope: !327, file: !327, line: 82, type: !378, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1734 = !DILocalVariable(name: "p", arg: 1, scope: !1733, file: !327, line: 82, type: !178)
!1735 = !DILocation(line: 0, scope: !1733)
!1736 = !DILocalVariable(name: "P1", arg: 2, scope: !1733, file: !327, line: 82, type: !330)
!1737 = !DILocalVariable(name: "V", arg: 3, scope: !1733, file: !327, line: 82, type: !49)
!1738 = !DILocalVariable(name: "acc", arg: 4, scope: !1733, file: !327, line: 82, type: !5)
!1739 = !DILocation(line: 86, column: 5, scope: !1733)
!1740 = !DILocation(line: 87, column: 1, scope: !1733)
!1741 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !327, file: !327, line: 32, type: !518, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1742 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1741, file: !327, line: 32, type: !243)
!1743 = !DILocation(line: 0, scope: !1741)
!1744 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1741, file: !327, line: 32, type: !330)
!1745 = !DILocalVariable(name: "mat", arg: 3, scope: !1741, file: !327, line: 32, type: !49)
!1746 = !DILocalVariable(name: "acc", arg: 4, scope: !1741, file: !327, line: 32, type: !5)
!1747 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1741, file: !327, line: 33, type: !243)
!1748 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1741, file: !327, line: 33, type: !243)
!1749 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1741, file: !327, line: 33, type: !243)
!1750 = !DILocalVariable(name: "triangular", arg: 8, scope: !1741, file: !327, line: 33, type: !243)
!1751 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1741, file: !327, line: 34, type: !45)
!1752 = !DILocalVariable(name: "r", scope: !1753, file: !327, line: 35, type: !45)
!1753 = distinct !DILexicalBlock(scope: !1741, file: !327, line: 35, column: 5)
!1754 = !DILocation(line: 0, scope: !1753)
!1755 = !DILocation(line: 35, column: 10, scope: !1753)
!1756 = !DILocation(line: 34, column: 9, scope: !1741)
!1757 = !DILocation(line: 35, scope: !1753)
!1758 = !DILocation(line: 35, column: 23, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1753, file: !327, line: 35, column: 5)
!1760 = !DILocation(line: 35, column: 5, scope: !1753)
!1761 = !DILocation(line: 36, column: 33, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !327, line: 36, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !327, line: 35, column: 43)
!1764 = !DILocalVariable(name: "c", scope: !1762, file: !327, line: 36, type: !45)
!1765 = !DILocation(line: 0, scope: !1762)
!1766 = !DILocation(line: 36, column: 14, scope: !1762)
!1767 = !DILocation(line: 36, scope: !1762)
!1768 = !DILocation(line: 36, column: 40, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1762, file: !327, line: 36, column: 9)
!1770 = !DILocation(line: 36, column: 9, scope: !1762)
!1771 = !DILocation(line: 37, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !327, line: 37, column: 13)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !327, line: 36, column: 60)
!1774 = !DILocalVariable(name: "k", scope: !1772, file: !327, line: 37, type: !45)
!1775 = !DILocation(line: 0, scope: !1772)
!1776 = !DILocation(line: 37, column: 31, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !327, line: 37, column: 13)
!1778 = !DILocation(line: 37, column: 13, scope: !1772)
!1779 = !DILocation(line: 38, column: 65, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !327, line: 37, column: 51)
!1781 = !DILocation(line: 38, column: 51, scope: !1780)
!1782 = !DILocation(line: 38, column: 94, scope: !1780)
!1783 = !DILocation(line: 38, column: 88, scope: !1780)
!1784 = !DILocation(line: 38, column: 137, scope: !1780)
!1785 = !DILocation(line: 38, column: 148, scope: !1780)
!1786 = !DILocation(line: 38, column: 132, scope: !1780)
!1787 = !DILocation(line: 38, column: 118, scope: !1780)
!1788 = !DILocation(line: 38, column: 17, scope: !1780)
!1789 = !DILocation(line: 37, column: 45, scope: !1777)
!1790 = !DILocation(line: 37, column: 13, scope: !1777)
!1791 = distinct !{!1791, !1778, !1792, !307}
!1792 = !DILocation(line: 39, column: 13, scope: !1772)
!1793 = !DILocation(line: 40, column: 33, scope: !1773)
!1794 = !DILocation(line: 36, column: 56, scope: !1769)
!1795 = !DILocation(line: 36, column: 9, scope: !1769)
!1796 = distinct !{!1796, !1770, !1797, !307}
!1797 = !DILocation(line: 41, column: 9, scope: !1762)
!1798 = !DILocation(line: 35, column: 39, scope: !1759)
!1799 = !DILocation(line: 35, column: 5, scope: !1759)
!1800 = distinct !{!1800, !1760, !1801, !307}
!1801 = !DILocation(line: 42, column: 5, scope: !1753)
!1802 = !DILocation(line: 43, column: 1, scope: !1741)
!1803 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !719, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1804 = !DILocalVariable(name: "p", arg: 1, scope: !1803, file: !25, line: 502, type: !178)
!1805 = !DILocation(line: 0, scope: !1803)
!1806 = !DILocalVariable(name: "sm", arg: 2, scope: !1803, file: !25, line: 502, type: !18)
!1807 = !DILocalVariable(name: "smlen", arg: 3, scope: !1803, file: !25, line: 503, type: !721)
!1808 = !DILocalVariable(name: "m", arg: 4, scope: !1803, file: !25, line: 503, type: !49)
!1809 = !DILocalVariable(name: "mlen", arg: 5, scope: !1803, file: !25, line: 504, type: !15)
!1810 = !DILocalVariable(name: "csk", arg: 6, scope: !1803, file: !25, line: 504, type: !49)
!1811 = !DILocalVariable(name: "ret", scope: !1803, file: !25, line: 505, type: !45)
!1812 = !DILocalVariable(name: "param_sig_bytes", scope: !1803, file: !25, line: 506, type: !243)
!1813 = !DILocation(line: 508, column: 16, scope: !1803)
!1814 = !DILocation(line: 508, column: 5, scope: !1803)
!1815 = !DILocation(line: 509, column: 50, scope: !1803)
!1816 = !DILocalVariable(name: "siglen", scope: !1803, file: !25, line: 507, type: !15)
!1817 = !DILocation(line: 509, column: 11, scope: !1803)
!1818 = !DILocation(line: 510, column: 13, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1803, file: !25, line: 510, column: 9)
!1820 = !DILocation(line: 510, column: 24, scope: !1819)
!1821 = !DILocation(line: 511, column: 23, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !25, line: 510, column: 62)
!1823 = !DILocation(line: 511, column: 30, scope: !1822)
!1824 = !DILocation(line: 511, column: 9, scope: !1822)
!1825 = !DILocation(line: 512, column: 9, scope: !1822)
!1826 = !DILocation(line: 515, column: 14, scope: !1803)
!1827 = !DILocation(line: 515, column: 21, scope: !1803)
!1828 = !DILocation(line: 515, column: 12, scope: !1803)
!1829 = !DILocation(line: 515, column: 5, scope: !1803)
!1830 = !DILabel(scope: !1803, name: "err", file: !25, line: 516)
!1831 = !DILocation(line: 516, column: 1, scope: !1803)
!1832 = !DILocation(line: 517, column: 5, scope: !1803)
!1833 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_open", scope: !25, file: !25, line: 520, type: !719, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1834 = !DILocalVariable(name: "p", arg: 1, scope: !1833, file: !25, line: 520, type: !178)
!1835 = !DILocation(line: 0, scope: !1833)
!1836 = !DILocalVariable(name: "m", arg: 2, scope: !1833, file: !25, line: 520, type: !18)
!1837 = !DILocalVariable(name: "mlen", arg: 3, scope: !1833, file: !25, line: 521, type: !721)
!1838 = !DILocalVariable(name: "sm", arg: 4, scope: !1833, file: !25, line: 521, type: !49)
!1839 = !DILocalVariable(name: "smlen", arg: 5, scope: !1833, file: !25, line: 522, type: !15)
!1840 = !DILocalVariable(name: "pk", arg: 6, scope: !1833, file: !25, line: 522, type: !49)
!1841 = !DILocalVariable(name: "param_sig_bytes", scope: !1833, file: !25, line: 523, type: !243)
!1842 = !DILocation(line: 524, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1833, file: !25, line: 524, column: 9)
!1844 = !DILocation(line: 527, column: 36, scope: !1833)
!1845 = !DILocation(line: 527, column: 61, scope: !1833)
!1846 = !DILocation(line: 527, column: 18, scope: !1833)
!1847 = !DILocalVariable(name: "result", scope: !1833, file: !25, line: 527, type: !45)
!1848 = !DILocation(line: 530, column: 16, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1833, file: !25, line: 530, column: 9)
!1850 = !DILocation(line: 531, column: 23, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1849, file: !25, line: 530, column: 28)
!1852 = !DILocation(line: 531, column: 15, scope: !1851)
!1853 = !DILocation(line: 532, column: 23, scope: !1851)
!1854 = !DILocation(line: 532, column: 9, scope: !1851)
!1855 = !DILocation(line: 533, column: 5, scope: !1851)
!1856 = !DILocation(line: 536, column: 1, scope: !1833)
!1857 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1858, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!45, !178, !49, !15, !49, !49}
!1860 = !DILocalVariable(name: "p", arg: 1, scope: !1857, file: !25, line: 617, type: !178)
!1861 = !DILocation(line: 0, scope: !1857)
!1862 = !DILocalVariable(name: "m", arg: 2, scope: !1857, file: !25, line: 617, type: !49)
!1863 = !DILocalVariable(name: "mlen", arg: 3, scope: !1857, file: !25, line: 618, type: !15)
!1864 = !DILocalVariable(name: "sig", arg: 4, scope: !1857, file: !25, line: 618, type: !49)
!1865 = !DILocalVariable(name: "cpk", arg: 5, scope: !1857, file: !25, line: 619, type: !49)
!1866 = !DILocalVariable(name: "tEnc", scope: !1857, file: !25, line: 620, type: !731)
!1867 = !DILocation(line: 620, column: 19, scope: !1857)
!1868 = !DILocalVariable(name: "t", scope: !1857, file: !25, line: 621, type: !736)
!1869 = !DILocation(line: 621, column: 19, scope: !1857)
!1870 = !DILocalVariable(name: "y", scope: !1857, file: !25, line: 622, type: !1871)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2272, elements: !1872)
!1872 = !{!1873}
!1873 = !DISubrange(count: 284)
!1874 = !DILocation(line: 622, column: 19, scope: !1857)
!1875 = !DILocalVariable(name: "s", scope: !1857, file: !25, line: 623, type: !760)
!1876 = !DILocation(line: 623, column: 19, scope: !1857)
!1877 = !DILocalVariable(name: "pk", scope: !1857, file: !25, line: 624, type: !123)
!1878 = !DILocation(line: 624, column: 14, scope: !1857)
!1879 = !DILocalVariable(name: "tmp", scope: !1857, file: !25, line: 625, type: !1880)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 832, elements: !1881)
!1881 = !{!1882}
!1882 = !DISubrange(count: 104)
!1883 = !DILocation(line: 625, column: 19, scope: !1857)
!1884 = !DILocalVariable(name: "param_m", scope: !1857, file: !25, line: 627, type: !243)
!1885 = !DILocalVariable(name: "param_n", scope: !1857, file: !25, line: 628, type: !243)
!1886 = !DILocalVariable(name: "param_k", scope: !1857, file: !25, line: 629, type: !243)
!1887 = !DILocalVariable(name: "param_m_bytes", scope: !1857, file: !25, line: 630, type: !243)
!1888 = !DILocalVariable(name: "param_sig_bytes", scope: !1857, file: !25, line: 631, type: !243)
!1889 = !DILocalVariable(name: "param_digest_bytes", scope: !1857, file: !25, line: 632, type: !243)
!1890 = !DILocalVariable(name: "param_salt_bytes", scope: !1857, file: !25, line: 633, type: !243)
!1891 = !DILocation(line: 635, column: 15, scope: !1857)
!1892 = !DILocalVariable(name: "ret", scope: !1857, file: !25, line: 635, type: !45)
!1893 = !DILocation(line: 636, column: 13, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1857, file: !25, line: 636, column: 9)
!1895 = !DILocalVariable(name: "P1", scope: !1857, file: !25, line: 640, type: !5)
!1896 = !DILocation(line: 641, column: 23, scope: !1857)
!1897 = !DILocalVariable(name: "P2", scope: !1857, file: !25, line: 641, type: !5)
!1898 = !DILocation(line: 642, column: 23, scope: !1857)
!1899 = !DILocalVariable(name: "P3", scope: !1857, file: !25, line: 642, type: !5)
!1900 = !DILocation(line: 657, column: 5, scope: !1857)
!1901 = !DILocation(line: 660, column: 16, scope: !1857)
!1902 = !DILocation(line: 660, column: 60, scope: !1857)
!1903 = !DILocation(line: 660, column: 5, scope: !1857)
!1904 = !DILocation(line: 662, column: 5, scope: !1857)
!1905 = !DILocation(line: 663, column: 5, scope: !1857)
!1906 = !DILocation(line: 666, column: 5, scope: !1857)
!1907 = !DILocation(line: 668, column: 5, scope: !1857)
!1908 = !DILocation(line: 670, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1857, file: !25, line: 670, column: 9)
!1910 = !DILocation(line: 670, column: 31, scope: !1909)
!1911 = !DILocation(line: 674, column: 1, scope: !1857)
!1912 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !622, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1913 = !DILocalVariable(name: "p", arg: 1, scope: !1912, file: !25, line: 608, type: !178)
!1914 = !DILocation(line: 0, scope: !1912)
!1915 = !DILocalVariable(name: "cpk", arg: 2, scope: !1912, file: !25, line: 608, type: !49)
!1916 = !DILocalVariable(name: "pk", arg: 3, scope: !1912, file: !25, line: 609, type: !5)
!1917 = !DILocation(line: 610, column: 5, scope: !1912)
!1918 = !DILocation(line: 612, column: 23, scope: !1912)
!1919 = !DILocation(line: 612, column: 72, scope: !1912)
!1920 = !DILocation(line: 612, column: 5, scope: !1912)
!1921 = !DILocation(line: 614, column: 5, scope: !1912)
!1922 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1923, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !178, !49, !330, !330, !330, !18}
!1925 = !DILocalVariable(name: "p", arg: 1, scope: !1922, file: !25, line: 288, type: !178)
!1926 = !DILocation(line: 0, scope: !1922)
!1927 = !DILocalVariable(name: "s", arg: 2, scope: !1922, file: !25, line: 288, type: !49)
!1928 = !DILocalVariable(name: "P1", arg: 3, scope: !1922, file: !25, line: 288, type: !330)
!1929 = !DILocalVariable(name: "P2", arg: 4, scope: !1922, file: !25, line: 288, type: !330)
!1930 = !DILocalVariable(name: "P3", arg: 5, scope: !1922, file: !25, line: 288, type: !330)
!1931 = !DILocalVariable(name: "eval", arg: 6, scope: !1922, file: !25, line: 288, type: !18)
!1932 = !DILocalVariable(name: "SPS", scope: !1922, file: !25, line: 289, type: !233)
!1933 = !DILocation(line: 289, column: 14, scope: !1922)
!1934 = !DILocation(line: 291, column: 5, scope: !1922)
!1935 = !DILocalVariable(name: "zero", scope: !1922, file: !25, line: 292, type: !736)
!1936 = !DILocation(line: 292, column: 19, scope: !1922)
!1937 = !DILocation(line: 293, column: 5, scope: !1922)
!1938 = !DILocation(line: 294, column: 1, scope: !1922)
!1939 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !327, file: !327, line: 277, type: !1940, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !178, !330, !330, !330, !49, !5}
!1942 = !DILocalVariable(name: "p", arg: 1, scope: !1939, file: !327, line: 277, type: !178)
!1943 = !DILocation(line: 0, scope: !1939)
!1944 = !DILocalVariable(name: "P1", arg: 2, scope: !1939, file: !327, line: 277, type: !330)
!1945 = !DILocalVariable(name: "P2", arg: 3, scope: !1939, file: !327, line: 277, type: !330)
!1946 = !DILocalVariable(name: "P3", arg: 4, scope: !1939, file: !327, line: 277, type: !330)
!1947 = !DILocalVariable(name: "s", arg: 5, scope: !1939, file: !327, line: 277, type: !49)
!1948 = !DILocalVariable(name: "SPS", arg: 6, scope: !1939, file: !327, line: 278, type: !5)
!1949 = !DILocalVariable(name: "PS", scope: !1939, file: !327, line: 286, type: !1950)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1064448, elements: !1951)
!1951 = !{!1952}
!1952 = !DISubrange(count: 16632)
!1953 = !DILocation(line: 286, column: 14, scope: !1939)
!1954 = !DILocation(line: 287, column: 5, scope: !1939)
!1955 = !DILocation(line: 290, column: 5, scope: !1939)
!1956 = !DILocation(line: 292, column: 1, scope: !1939)
!1957 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !327, file: !327, line: 151, type: !1958, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !330, !330, !330, !49, !243, !243, !243, !243, !5}
!1960 = !DILocalVariable(name: "P1", arg: 1, scope: !1957, file: !327, line: 151, type: !330)
!1961 = !DILocation(line: 0, scope: !1957)
!1962 = !DILocalVariable(name: "P2", arg: 2, scope: !1957, file: !327, line: 151, type: !330)
!1963 = !DILocalVariable(name: "P3", arg: 3, scope: !1957, file: !327, line: 151, type: !330)
!1964 = !DILocalVariable(name: "S", arg: 4, scope: !1957, file: !327, line: 151, type: !49)
!1965 = !DILocalVariable(name: "m", arg: 5, scope: !1957, file: !327, line: 152, type: !243)
!1966 = !DILocalVariable(name: "v", arg: 6, scope: !1957, file: !327, line: 152, type: !243)
!1967 = !DILocalVariable(name: "o", arg: 7, scope: !1957, file: !327, line: 152, type: !243)
!1968 = !DILocalVariable(name: "k", arg: 8, scope: !1957, file: !327, line: 152, type: !243)
!1969 = !DILocalVariable(name: "PS", arg: 9, scope: !1957, file: !327, line: 152, type: !5)
!1970 = !DILocation(line: 154, column: 21, scope: !1957)
!1971 = !DILocalVariable(name: "n", scope: !1957, file: !327, line: 154, type: !243)
!1972 = !DILocation(line: 155, column: 32, scope: !1957)
!1973 = !DILocation(line: 155, column: 37, scope: !1957)
!1974 = !DILocalVariable(name: "m_vec_limbs", scope: !1957, file: !327, line: 155, type: !243)
!1975 = !DILocalVariable(name: "accumulator", scope: !1957, file: !327, line: 157, type: !1976)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17031168, elements: !1977)
!1977 = !{!1978}
!1978 = !DISubrange(count: 266112)
!1979 = !DILocation(line: 157, column: 14, scope: !1957)
!1980 = !DILocalVariable(name: "P1_used", scope: !1957, file: !327, line: 158, type: !45)
!1981 = !DILocalVariable(name: "row", scope: !1982, file: !327, line: 159, type: !45)
!1982 = distinct !DILexicalBlock(scope: !1957, file: !327, line: 159, column: 5)
!1983 = !DILocation(line: 0, scope: !1982)
!1984 = !DILocation(line: 159, column: 10, scope: !1982)
!1985 = !DILocation(line: 158, column: 9, scope: !1957)
!1986 = !DILocation(line: 159, scope: !1982)
!1987 = !DILocation(line: 159, column: 27, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1982, file: !327, line: 159, column: 5)
!1989 = !DILocation(line: 159, column: 5, scope: !1982)
!1990 = !DILocation(line: 160, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !327, line: 160, column: 9)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !327, line: 159, column: 39)
!1993 = !DILocation(line: 175, column: 5, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1957, file: !327, line: 175, column: 5)
!1995 = !DILocation(line: 160, scope: !1991)
!1996 = !DILocalVariable(name: "j", scope: !1991, file: !327, line: 160, type: !45)
!1997 = !DILocation(line: 0, scope: !1991)
!1998 = !DILocation(line: 160, column: 29, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1991, file: !327, line: 160, column: 9)
!2000 = !DILocation(line: 161, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !327, line: 161, column: 13)
!2002 = distinct !DILexicalBlock(scope: !1999, file: !327, line: 160, column: 39)
!2003 = !DILocalVariable(name: "col", scope: !2001, file: !327, line: 161, type: !45)
!2004 = !DILocation(line: 0, scope: !2001)
!2005 = !DILocation(line: 161, column: 35, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !327, line: 161, column: 13)
!2007 = !DILocation(line: 161, column: 13, scope: !2001)
!2008 = !DILocation(line: 162, column: 54, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !327, line: 161, column: 47)
!2010 = !DILocation(line: 162, column: 43, scope: !2009)
!2011 = !DILocation(line: 162, column: 91, scope: !2009)
!2012 = !DILocation(line: 162, column: 95, scope: !2009)
!2013 = !DILocation(line: 162, column: 102, scope: !2009)
!2014 = !DILocation(line: 162, column: 115, scope: !2009)
!2015 = !DILocation(line: 162, column: 109, scope: !2009)
!2016 = !DILocation(line: 162, column: 107, scope: !2009)
!2017 = !DILocation(line: 162, column: 125, scope: !2009)
!2018 = !DILocation(line: 162, column: 82, scope: !2009)
!2019 = !DILocation(line: 162, column: 17, scope: !2009)
!2020 = !DILocation(line: 161, column: 43, scope: !2006)
!2021 = !DILocation(line: 161, column: 13, scope: !2006)
!2022 = distinct !{!2022, !2007, !2023, !307}
!2023 = !DILocation(line: 163, column: 13, scope: !2001)
!2024 = !DILocation(line: 164, column: 21, scope: !2002)
!2025 = !DILocation(line: 160, column: 35, scope: !1999)
!2026 = !DILocation(line: 160, column: 9, scope: !1999)
!2027 = distinct !{!2027, !1990, !2028, !307}
!2028 = !DILocation(line: 165, column: 9, scope: !1991)
!2029 = !DILocation(line: 167, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1992, file: !327, line: 167, column: 9)
!2031 = !DILocalVariable(name: "j", scope: !2030, file: !327, line: 167, type: !45)
!2032 = !DILocation(line: 0, scope: !2030)
!2033 = !DILocation(line: 167, column: 27, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !327, line: 167, column: 9)
!2035 = !DILocation(line: 167, column: 9, scope: !2030)
!2036 = !DILocation(line: 168, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !327, line: 168, column: 13)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !327, line: 167, column: 37)
!2039 = !DILocalVariable(name: "col", scope: !2037, file: !327, line: 168, type: !45)
!2040 = !DILocation(line: 0, scope: !2037)
!2041 = !DILocation(line: 168, column: 35, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !327, line: 168, column: 13)
!2043 = !DILocation(line: 168, column: 13, scope: !2037)
!2044 = !DILocation(line: 169, column: 50, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !327, line: 168, column: 47)
!2046 = !DILocation(line: 169, column: 54, scope: !2045)
!2047 = !DILocation(line: 169, column: 58, scope: !2045)
!2048 = !DILocation(line: 169, column: 43, scope: !2045)
!2049 = !DILocation(line: 169, column: 93, scope: !2045)
!2050 = !DILocation(line: 169, column: 97, scope: !2045)
!2051 = !DILocation(line: 169, column: 104, scope: !2045)
!2052 = !DILocation(line: 169, column: 118, scope: !2045)
!2053 = !DILocation(line: 169, column: 111, scope: !2045)
!2054 = !DILocation(line: 169, column: 109, scope: !2045)
!2055 = !DILocation(line: 169, column: 133, scope: !2045)
!2056 = !DILocation(line: 169, column: 84, scope: !2045)
!2057 = !DILocation(line: 169, column: 17, scope: !2045)
!2058 = !DILocation(line: 168, column: 43, scope: !2042)
!2059 = !DILocation(line: 168, column: 13, scope: !2042)
!2060 = distinct !{!2060, !2043, !2061, !307}
!2061 = !DILocation(line: 170, column: 13, scope: !2037)
!2062 = !DILocation(line: 167, column: 33, scope: !2034)
!2063 = !DILocation(line: 167, column: 9, scope: !2034)
!2064 = distinct !{!2064, !2035, !2065, !307}
!2065 = !DILocation(line: 171, column: 9, scope: !2030)
!2066 = !DILocation(line: 159, column: 35, scope: !1988)
!2067 = !DILocation(line: 159, column: 5, scope: !1988)
!2068 = distinct !{!2068, !1989, !2069, !307}
!2069 = !DILocation(line: 172, column: 5, scope: !1982)
!2070 = !DILocation(line: 174, column: 9, scope: !1957)
!2071 = !DILocation(line: 175, scope: !1994)
!2072 = !DILocalVariable(name: "row", scope: !1994, file: !327, line: 175, type: !45)
!2073 = !DILocation(line: 0, scope: !1994)
!2074 = !DILocalVariable(name: "P3_used", scope: !1957, file: !327, line: 174, type: !45)
!2075 = !DILocation(line: 175, column: 27, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1994, file: !327, line: 175, column: 5)
!2077 = !DILocation(line: 186, column: 5, scope: !1957)
!2078 = !DILocation(line: 176, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !327, line: 176, column: 9)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !327, line: 175, column: 39)
!2081 = !DILocalVariable(name: "j", scope: !2079, file: !327, line: 176, type: !45)
!2082 = !DILocation(line: 0, scope: !2079)
!2083 = !DILocation(line: 176, column: 29, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2079, file: !327, line: 176, column: 9)
!2085 = !DILocation(line: 176, column: 9, scope: !2079)
!2086 = !DILocation(line: 177, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !327, line: 177, column: 13)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !327, line: 176, column: 39)
!2089 = !DILocalVariable(name: "col", scope: !2087, file: !327, line: 177, type: !45)
!2090 = !DILocation(line: 0, scope: !2087)
!2091 = !DILocation(line: 177, column: 35, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !327, line: 177, column: 13)
!2093 = !DILocation(line: 177, column: 13, scope: !2087)
!2094 = !DILocation(line: 178, column: 53, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !327, line: 177, column: 47)
!2096 = !DILocation(line: 178, column: 43, scope: !2095)
!2097 = !DILocation(line: 178, column: 89, scope: !2095)
!2098 = !DILocation(line: 178, column: 93, scope: !2095)
!2099 = !DILocation(line: 178, column: 100, scope: !2095)
!2100 = !DILocation(line: 178, column: 113, scope: !2095)
!2101 = !DILocation(line: 178, column: 107, scope: !2095)
!2102 = !DILocation(line: 178, column: 105, scope: !2095)
!2103 = !DILocation(line: 178, column: 123, scope: !2095)
!2104 = !DILocation(line: 178, column: 80, scope: !2095)
!2105 = !DILocation(line: 178, column: 17, scope: !2095)
!2106 = !DILocation(line: 177, column: 43, scope: !2092)
!2107 = !DILocation(line: 177, column: 13, scope: !2092)
!2108 = distinct !{!2108, !2093, !2109, !307}
!2109 = !DILocation(line: 179, column: 13, scope: !2087)
!2110 = !DILocation(line: 180, column: 21, scope: !2088)
!2111 = !DILocation(line: 176, column: 35, scope: !2084)
!2112 = !DILocation(line: 176, column: 9, scope: !2084)
!2113 = distinct !{!2113, !2085, !2114, !307}
!2114 = !DILocation(line: 181, column: 9, scope: !2079)
!2115 = !DILocation(line: 175, column: 35, scope: !2076)
!2116 = !DILocation(line: 175, column: 5, scope: !2076)
!2117 = distinct !{!2117, !1993, !2118, !307}
!2118 = !DILocation(line: 182, column: 5, scope: !1994)
!2119 = !DILocalVariable(name: "i", scope: !1957, file: !327, line: 185, type: !45)
!2120 = !DILocation(line: 186, column: 14, scope: !1957)
!2121 = !DILocation(line: 187, column: 58, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1957, file: !327, line: 186, column: 23)
!2123 = !DILocation(line: 187, column: 63, scope: !2122)
!2124 = !DILocation(line: 187, column: 54, scope: !2122)
!2125 = !DILocation(line: 187, column: 85, scope: !2122)
!2126 = !DILocation(line: 187, column: 81, scope: !2122)
!2127 = !DILocation(line: 187, column: 9, scope: !2122)
!2128 = !DILocation(line: 188, column: 10, scope: !2122)
!2129 = distinct !{!2129, !2077, !2130, !307}
!2130 = !DILocation(line: 189, column: 5, scope: !1957)
!2131 = !DILocation(line: 191, column: 1, scope: !1957)
!2132 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !327, file: !327, line: 195, type: !2133, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !330, !49, !45, !45, !45, !5}
!2135 = !DILocalVariable(name: "PS", arg: 1, scope: !2132, file: !327, line: 195, type: !330)
!2136 = !DILocation(line: 0, scope: !2132)
!2137 = !DILocalVariable(name: "S", arg: 2, scope: !2132, file: !327, line: 195, type: !49)
!2138 = !DILocalVariable(name: "m", arg: 3, scope: !2132, file: !327, line: 195, type: !45)
!2139 = !DILocalVariable(name: "k", arg: 4, scope: !2132, file: !327, line: 195, type: !45)
!2140 = !DILocalVariable(name: "n", arg: 5, scope: !2132, file: !327, line: 195, type: !45)
!2141 = !DILocalVariable(name: "SPS", arg: 6, scope: !2132, file: !327, line: 195, type: !5)
!2142 = !DILocalVariable(name: "accumulator", scope: !2132, file: !327, line: 196, type: !2143)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2144)
!2144 = !{!2145}
!2145 = !DISubrange(count: 20736)
!2146 = !DILocation(line: 196, column: 14, scope: !2132)
!2147 = !DILocation(line: 197, column: 32, scope: !2132)
!2148 = !DILocation(line: 197, column: 37, scope: !2132)
!2149 = !DILocalVariable(name: "m_vec_limbs", scope: !2132, file: !327, line: 197, type: !243)
!2150 = !DILocalVariable(name: "row", scope: !2151, file: !327, line: 198, type: !45)
!2151 = distinct !DILexicalBlock(scope: !2132, file: !327, line: 198, column: 5)
!2152 = !DILocation(line: 0, scope: !2151)
!2153 = !DILocation(line: 198, column: 10, scope: !2151)
!2154 = !DILocation(line: 198, scope: !2151)
!2155 = !DILocation(line: 198, column: 27, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !327, line: 198, column: 5)
!2157 = !DILocation(line: 198, column: 5, scope: !2151)
!2158 = !DILocation(line: 208, column: 5, scope: !2132)
!2159 = !DILocation(line: 199, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !327, line: 199, column: 9)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !327, line: 198, column: 39)
!2162 = !DILocalVariable(name: "j", scope: !2160, file: !327, line: 199, type: !45)
!2163 = !DILocation(line: 0, scope: !2160)
!2164 = !DILocation(line: 199, column: 27, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !327, line: 199, column: 9)
!2166 = !DILocation(line: 199, column: 9, scope: !2160)
!2167 = !DILocation(line: 200, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !327, line: 200, column: 13)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !327, line: 199, column: 37)
!2170 = !DILocalVariable(name: "col", scope: !2168, file: !327, line: 200, type: !45)
!2171 = !DILocation(line: 0, scope: !2168)
!2172 = !DILocation(line: 200, column: 35, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2168, file: !327, line: 200, column: 13)
!2174 = !DILocation(line: 200, column: 13, scope: !2168)
!2175 = !DILocation(line: 201, column: 52, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !327, line: 200, column: 50)
!2177 = !DILocation(line: 201, column: 56, scope: !2176)
!2178 = !DILocation(line: 201, column: 63, scope: !2176)
!2179 = !DILocation(line: 201, column: 47, scope: !2176)
!2180 = !DILocation(line: 201, column: 99, scope: !2176)
!2181 = !DILocation(line: 201, column: 103, scope: !2176)
!2182 = !DILocation(line: 201, column: 110, scope: !2176)
!2183 = !DILocation(line: 201, column: 123, scope: !2176)
!2184 = !DILocation(line: 201, column: 117, scope: !2176)
!2185 = !DILocation(line: 201, column: 115, scope: !2176)
!2186 = !DILocation(line: 201, column: 133, scope: !2176)
!2187 = !DILocation(line: 201, column: 90, scope: !2176)
!2188 = !DILocation(line: 201, column: 21, scope: !2176)
!2189 = !DILocation(line: 200, column: 44, scope: !2173)
!2190 = !DILocation(line: 200, column: 13, scope: !2173)
!2191 = distinct !{!2191, !2174, !2192, !307}
!2192 = !DILocation(line: 202, column: 13, scope: !2168)
!2193 = !DILocation(line: 199, column: 33, scope: !2165)
!2194 = !DILocation(line: 199, column: 9, scope: !2165)
!2195 = distinct !{!2195, !2166, !2196, !307}
!2196 = !DILocation(line: 203, column: 9, scope: !2160)
!2197 = !DILocation(line: 198, column: 35, scope: !2156)
!2198 = !DILocation(line: 198, column: 5, scope: !2156)
!2199 = distinct !{!2199, !2157, !2200, !307}
!2200 = !DILocation(line: 204, column: 5, scope: !2151)
!2201 = !DILocalVariable(name: "i", scope: !2132, file: !327, line: 207, type: !45)
!2202 = !DILocation(line: 208, column: 14, scope: !2132)
!2203 = !DILocation(line: 209, column: 58, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2132, file: !327, line: 208, column: 21)
!2205 = !DILocation(line: 209, column: 63, scope: !2204)
!2206 = !DILocation(line: 209, column: 54, scope: !2204)
!2207 = !DILocation(line: 209, column: 86, scope: !2204)
!2208 = !DILocation(line: 209, column: 82, scope: !2204)
!2209 = !DILocation(line: 209, column: 9, scope: !2204)
!2210 = !DILocation(line: 210, column: 10, scope: !2204)
!2211 = distinct !{!2211, !2158, !2212, !307}
!2212 = !DILocation(line: 211, column: 5, scope: !2132)
!2213 = !DILocation(line: 212, column: 1, scope: !2132)
!2214 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2215, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !45, !330, !5}
!2217 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2214, file: !448, line: 22, type: !45)
!2218 = !DILocation(line: 0, scope: !2214)
!2219 = !DILocalVariable(name: "in", arg: 2, scope: !2214, file: !448, line: 22, type: !330)
!2220 = !DILocalVariable(name: "acc", arg: 3, scope: !2214, file: !448, line: 22, type: !5)
!2221 = !DILocalVariable(name: "i", scope: !2222, file: !448, line: 24, type: !15)
!2222 = distinct !DILexicalBlock(scope: !2214, file: !448, line: 24, column: 5)
!2223 = !DILocation(line: 0, scope: !2222)
!2224 = !DILocation(line: 26, column: 19, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !448, line: 25, column: 5)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !448, line: 24, column: 5)
!2227 = !DILocation(line: 26, column: 16, scope: !2225)
!2228 = !DILocation(line: 26, column: 9, scope: !2225)
!2229 = !DILocation(line: 28, column: 1, scope: !2214)
!2230 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !448, file: !448, line: 66, type: !2231, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !45, !5, !5}
!2233 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2230, file: !448, line: 66, type: !45)
!2234 = !DILocation(line: 0, scope: !2230)
!2235 = !DILocalVariable(name: "bins", arg: 2, scope: !2230, file: !448, line: 66, type: !5)
!2236 = !DILocalVariable(name: "out", arg: 3, scope: !2230, file: !448, line: 66, type: !5)
!2237 = !DILocation(line: 67, column: 44, scope: !2230)
!2238 = !DILocation(line: 67, column: 73, scope: !2230)
!2239 = !DILocation(line: 67, column: 5, scope: !2230)
!2240 = !DILocation(line: 68, column: 40, scope: !2230)
!2241 = !DILocation(line: 68, column: 69, scope: !2230)
!2242 = !DILocation(line: 68, column: 5, scope: !2230)
!2243 = !DILocation(line: 69, column: 44, scope: !2230)
!2244 = !DILocation(line: 69, column: 74, scope: !2230)
!2245 = !DILocation(line: 69, column: 5, scope: !2230)
!2246 = !DILocation(line: 70, column: 40, scope: !2230)
!2247 = !DILocation(line: 70, column: 69, scope: !2230)
!2248 = !DILocation(line: 70, column: 5, scope: !2230)
!2249 = !DILocation(line: 71, column: 44, scope: !2230)
!2250 = !DILocation(line: 71, column: 73, scope: !2230)
!2251 = !DILocation(line: 71, column: 5, scope: !2230)
!2252 = !DILocation(line: 72, column: 40, scope: !2230)
!2253 = !DILocation(line: 72, column: 69, scope: !2230)
!2254 = !DILocation(line: 72, column: 5, scope: !2230)
!2255 = !DILocation(line: 73, column: 44, scope: !2230)
!2256 = !DILocation(line: 73, column: 74, scope: !2230)
!2257 = !DILocation(line: 73, column: 5, scope: !2230)
!2258 = !DILocation(line: 74, column: 40, scope: !2230)
!2259 = !DILocation(line: 74, column: 69, scope: !2230)
!2260 = !DILocation(line: 74, column: 5, scope: !2230)
!2261 = !DILocation(line: 75, column: 44, scope: !2230)
!2262 = !DILocation(line: 75, column: 74, scope: !2230)
!2263 = !DILocation(line: 75, column: 5, scope: !2230)
!2264 = !DILocation(line: 76, column: 40, scope: !2230)
!2265 = !DILocation(line: 76, column: 69, scope: !2230)
!2266 = !DILocation(line: 76, column: 5, scope: !2230)
!2267 = !DILocation(line: 77, column: 44, scope: !2230)
!2268 = !DILocation(line: 77, column: 74, scope: !2230)
!2269 = !DILocation(line: 77, column: 5, scope: !2230)
!2270 = !DILocation(line: 78, column: 40, scope: !2230)
!2271 = !DILocation(line: 78, column: 69, scope: !2230)
!2272 = !DILocation(line: 78, column: 5, scope: !2230)
!2273 = !DILocation(line: 79, column: 44, scope: !2230)
!2274 = !DILocation(line: 79, column: 74, scope: !2230)
!2275 = !DILocation(line: 79, column: 5, scope: !2230)
!2276 = !DILocation(line: 80, column: 40, scope: !2230)
!2277 = !DILocation(line: 80, column: 69, scope: !2230)
!2278 = !DILocation(line: 80, column: 5, scope: !2230)
!2279 = !DILocation(line: 81, column: 35, scope: !2230)
!2280 = !DILocation(line: 81, column: 5, scope: !2230)
!2281 = !DILocation(line: 82, column: 1, scope: !2230)
!2282 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !448, file: !448, line: 56, type: !2215, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2283 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2282, file: !448, line: 56, type: !45)
!2284 = !DILocation(line: 0, scope: !2282)
!2285 = !DILocalVariable(name: "in", arg: 2, scope: !2282, file: !448, line: 56, type: !330)
!2286 = !DILocalVariable(name: "acc", arg: 3, scope: !2282, file: !448, line: 56, type: !5)
!2287 = !DILocalVariable(name: "mask_lsb", scope: !2282, file: !448, line: 58, type: !6)
!2288 = !DILocalVariable(name: "i", scope: !2289, file: !448, line: 59, type: !45)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !448, line: 59, column: 5)
!2290 = !DILocation(line: 0, scope: !2289)
!2291 = !DILocation(line: 60, column: 22, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !448, line: 59, column: 43)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !448, line: 59, column: 5)
!2294 = !DILocation(line: 60, column: 28, scope: !2292)
!2295 = !DILocalVariable(name: "t", scope: !2292, file: !448, line: 60, type: !6)
!2296 = !DILocation(line: 0, scope: !2292)
!2297 = !DILocation(line: 61, column: 32, scope: !2292)
!2298 = !DILocation(line: 61, column: 43, scope: !2292)
!2299 = !DILocation(line: 61, column: 38, scope: !2292)
!2300 = !DILocation(line: 61, column: 16, scope: !2292)
!2301 = !DILocation(line: 61, column: 9, scope: !2292)
!2302 = !DILocation(line: 63, column: 1, scope: !2282)
!2303 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !448, file: !448, line: 46, type: !2215, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2304 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2303, file: !448, line: 46, type: !45)
!2305 = !DILocation(line: 0, scope: !2303)
!2306 = !DILocalVariable(name: "in", arg: 2, scope: !2303, file: !448, line: 46, type: !330)
!2307 = !DILocalVariable(name: "acc", arg: 3, scope: !2303, file: !448, line: 46, type: !5)
!2308 = !DILocalVariable(name: "mask_msb", scope: !2303, file: !448, line: 48, type: !6)
!2309 = !DILocalVariable(name: "i", scope: !2310, file: !448, line: 49, type: !45)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !448, line: 49, column: 5)
!2311 = !DILocation(line: 0, scope: !2310)
!2312 = !DILocation(line: 50, column: 22, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !448, line: 49, column: 43)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !448, line: 49, column: 5)
!2315 = !DILocalVariable(name: "t", scope: !2313, file: !448, line: 50, type: !6)
!2316 = !DILocation(line: 0, scope: !2313)
!2317 = !DILocation(line: 51, column: 32, scope: !2313)
!2318 = !DILocation(line: 51, column: 44, scope: !2313)
!2319 = !DILocation(line: 51, column: 50, scope: !2313)
!2320 = !DILocation(line: 51, column: 38, scope: !2313)
!2321 = !DILocation(line: 51, column: 16, scope: !2313)
!2322 = !DILocation(line: 51, column: 9, scope: !2313)
!2323 = !DILocation(line: 53, column: 1, scope: !2303)
!2324 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2215, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2325 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2324, file: !448, line: 13, type: !45)
!2326 = !DILocation(line: 0, scope: !2324)
!2327 = !DILocalVariable(name: "in", arg: 2, scope: !2324, file: !448, line: 13, type: !330)
!2328 = !DILocalVariable(name: "out", arg: 3, scope: !2324, file: !448, line: 13, type: !5)
!2329 = !DILocalVariable(name: "i", scope: !2330, file: !448, line: 15, type: !15)
!2330 = distinct !DILexicalBlock(scope: !2324, file: !448, line: 15, column: 5)
!2331 = !DILocation(line: 0, scope: !2330)
!2332 = !DILocation(line: 17, column: 18, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !448, line: 16, column: 5)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !448, line: 15, column: 5)
!2335 = !DILocation(line: 17, column: 16, scope: !2333)
!2336 = !DILocation(line: 17, column: 9, scope: !2333)
!2337 = !DILocation(line: 19, column: 1, scope: !2324)
!2338 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_m_upper", scope: !58, file: !58, line: 14, type: !2339, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !2341, !330, !5, !45}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2344, file: !36, line: 266, baseType: !45, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2344, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2344, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2344, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2344, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2344, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2344, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2344, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2344, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2344, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2344, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2344, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2344, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2344, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2344, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2344, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2344, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2344, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2344, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2344, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2344, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2344, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2344, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2369 = !DILocalVariable(name: "p", arg: 1, scope: !2338, file: !58, line: 14, type: !2341)
!2370 = !DILocation(line: 0, scope: !2338)
!2371 = !DILocalVariable(name: "in", arg: 2, scope: !2338, file: !58, line: 14, type: !330)
!2372 = !DILocalVariable(name: "out", arg: 3, scope: !2338, file: !58, line: 14, type: !5)
!2373 = !DILocalVariable(name: "size", arg: 4, scope: !2338, file: !58, line: 14, type: !45)
!2374 = !DILocalVariable(name: "m_vec_limbs", scope: !2338, file: !58, line: 19, type: !243)
!2375 = !DILocalVariable(name: "m_vecs_stored", scope: !2338, file: !58, line: 20, type: !45)
!2376 = !DILocalVariable(name: "r", scope: !2377, file: !58, line: 21, type: !45)
!2377 = distinct !DILexicalBlock(scope: !2338, file: !58, line: 21, column: 5)
!2378 = !DILocation(line: 0, scope: !2377)
!2379 = !DILocation(line: 21, column: 10, scope: !2377)
!2380 = !DILocation(line: 20, column: 9, scope: !2338)
!2381 = !DILocation(line: 21, scope: !2377)
!2382 = !DILocation(line: 21, column: 23, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !58, line: 21, column: 5)
!2384 = !DILocation(line: 21, column: 5, scope: !2377)
!2385 = !DILocation(line: 22, column: 9, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !58, line: 22, column: 9)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !58, line: 21, column: 36)
!2388 = !DILocation(line: 22, scope: !2386)
!2389 = !DILocalVariable(name: "c", scope: !2386, file: !58, line: 22, type: !45)
!2390 = !DILocation(line: 0, scope: !2386)
!2391 = !DILocation(line: 22, column: 27, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2386, file: !58, line: 22, column: 9)
!2393 = !DILocation(line: 23, column: 59, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2392, file: !58, line: 22, column: 40)
!2395 = !DILocation(line: 23, column: 66, scope: !2394)
!2396 = !DILocation(line: 23, column: 40, scope: !2394)
!2397 = !DILocation(line: 23, column: 76, scope: !2394)
!2398 = !DILocation(line: 23, column: 13, scope: !2394)
!2399 = !DILocation(line: 24, column: 19, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2394, file: !58, line: 24, column: 17)
!2401 = !DILocation(line: 25, column: 62, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2400, file: !58, line: 24, column: 25)
!2403 = !DILocation(line: 25, column: 69, scope: !2402)
!2404 = !DILocation(line: 25, column: 43, scope: !2402)
!2405 = !DILocation(line: 25, column: 79, scope: !2402)
!2406 = !DILocation(line: 25, column: 17, scope: !2402)
!2407 = !DILocation(line: 26, column: 13, scope: !2402)
!2408 = !DILocation(line: 27, column: 27, scope: !2394)
!2409 = !DILocation(line: 22, column: 36, scope: !2392)
!2410 = !DILocation(line: 22, column: 9, scope: !2392)
!2411 = distinct !{!2411, !2385, !2412, !307}
!2412 = !DILocation(line: 28, column: 9, scope: !2386)
!2413 = !DILocation(line: 21, column: 32, scope: !2383)
!2414 = !DILocation(line: 21, column: 5, scope: !2383)
!2415 = distinct !{!2415, !2384, !2416, !307}
!2416 = !DILocation(line: 29, column: 5, scope: !2377)
!2417 = !DILocation(line: 30, column: 1, scope: !2338)
!2418 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2215, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2419 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2418, file: !448, line: 13, type: !45)
!2420 = !DILocation(line: 0, scope: !2418)
!2421 = !DILocalVariable(name: "in", arg: 2, scope: !2418, file: !448, line: 13, type: !330)
!2422 = !DILocalVariable(name: "out", arg: 3, scope: !2418, file: !448, line: 13, type: !5)
!2423 = !DILocalVariable(name: "i", scope: !2424, file: !448, line: 15, type: !15)
!2424 = distinct !DILexicalBlock(scope: !2418, file: !448, line: 15, column: 5)
!2425 = !DILocation(line: 0, scope: !2424)
!2426 = !DILocation(line: 17, column: 18, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !448, line: 16, column: 5)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !448, line: 15, column: 5)
!2429 = !DILocation(line: 17, column: 16, scope: !2427)
!2430 = !DILocation(line: 17, column: 9, scope: !2427)
!2431 = !DILocation(line: 19, column: 1, scope: !2418)
!2432 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2215, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2433 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2432, file: !448, line: 22, type: !45)
!2434 = !DILocation(line: 0, scope: !2432)
!2435 = !DILocalVariable(name: "in", arg: 2, scope: !2432, file: !448, line: 22, type: !330)
!2436 = !DILocalVariable(name: "acc", arg: 3, scope: !2432, file: !448, line: 22, type: !5)
!2437 = !DILocalVariable(name: "i", scope: !2438, file: !448, line: 24, type: !15)
!2438 = distinct !DILexicalBlock(scope: !2432, file: !448, line: 24, column: 5)
!2439 = !DILocation(line: 0, scope: !2438)
!2440 = !DILocation(line: 26, column: 19, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !448, line: 25, column: 5)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !448, line: 24, column: 5)
!2443 = !DILocation(line: 26, column: 16, scope: !2441)
!2444 = !DILocation(line: 26, column: 9, scope: !2441)
!2445 = !DILocation(line: 28, column: 1, scope: !2432)
!2446 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2447, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!45, !2341, !18, !49, !49, !18, !45, !45, !45, !45}
!2449 = !DILocalVariable(name: "p", arg: 1, scope: !2446, file: !58, line: 40, type: !2341)
!2450 = !DILocation(line: 0, scope: !2446)
!2451 = !DILocalVariable(name: "A", arg: 2, scope: !2446, file: !58, line: 40, type: !18)
!2452 = !DILocalVariable(name: "y", arg: 3, scope: !2446, file: !58, line: 41, type: !49)
!2453 = !DILocalVariable(name: "r", arg: 4, scope: !2446, file: !58, line: 41, type: !49)
!2454 = !DILocalVariable(name: "x", arg: 5, scope: !2446, file: !58, line: 42, type: !18)
!2455 = !DILocalVariable(name: "k", arg: 6, scope: !2446, file: !58, line: 42, type: !45)
!2456 = !DILocalVariable(name: "o", arg: 7, scope: !2446, file: !58, line: 42, type: !45)
!2457 = !DILocalVariable(name: "m", arg: 8, scope: !2446, file: !58, line: 42, type: !45)
!2458 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2446, file: !58, line: 42, type: !45)
!2459 = !DILocalVariable(name: "i", scope: !2460, file: !58, line: 51, type: !45)
!2460 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 51, column: 5)
!2461 = !DILocation(line: 0, scope: !2460)
!2462 = !DILocation(line: 51, column: 10, scope: !2460)
!2463 = !DILocation(line: 51, scope: !2460)
!2464 = !DILocation(line: 51, column: 23, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !58, line: 51, column: 5)
!2466 = !DILocation(line: 51, column: 5, scope: !2460)
!2467 = !DILocation(line: 57, column: 5, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 57, column: 5)
!2469 = !DILocation(line: 52, column: 16, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !58, line: 51, column: 37)
!2471 = !DILocation(line: 52, column: 9, scope: !2470)
!2472 = !DILocation(line: 52, column: 14, scope: !2470)
!2473 = !DILocation(line: 51, column: 33, scope: !2465)
!2474 = !DILocation(line: 51, column: 5, scope: !2465)
!2475 = distinct !{!2475, !2466, !2476, !307}
!2476 = !DILocation(line: 53, column: 5, scope: !2460)
!2477 = !DILocation(line: 57, scope: !2468)
!2478 = !DILocalVariable(name: "i", scope: !2468, file: !58, line: 57, type: !45)
!2479 = !DILocation(line: 0, scope: !2468)
!2480 = !DILocation(line: 57, column: 23, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2468, file: !58, line: 57, column: 5)
!2482 = !DILocation(line: 58, column: 13, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2481, file: !58, line: 57, column: 33)
!2484 = !DILocation(line: 58, column: 26, scope: !2483)
!2485 = !DILocation(line: 58, column: 30, scope: !2483)
!2486 = !DILocation(line: 58, column: 21, scope: !2483)
!2487 = !DILocation(line: 58, column: 9, scope: !2483)
!2488 = !DILocation(line: 58, column: 36, scope: !2483)
!2489 = !DILocation(line: 57, column: 29, scope: !2481)
!2490 = !DILocation(line: 57, column: 5, scope: !2481)
!2491 = distinct !{!2491, !2467, !2492, !307}
!2492 = !DILocation(line: 59, column: 5, scope: !2468)
!2493 = !DILocation(line: 60, column: 25, scope: !2446)
!2494 = !DILocation(line: 60, column: 29, scope: !2446)
!2495 = !DILocation(line: 60, column: 5, scope: !2446)
!2496 = !DILocalVariable(name: "i", scope: !2497, file: !58, line: 63, type: !45)
!2497 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 63, column: 5)
!2498 = !DILocation(line: 0, scope: !2497)
!2499 = !DILocation(line: 63, column: 10, scope: !2497)
!2500 = !DILocation(line: 63, scope: !2497)
!2501 = !DILocation(line: 63, column: 23, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !58, line: 63, column: 5)
!2503 = !DILocation(line: 63, column: 5, scope: !2497)
!2504 = !DILocation(line: 64, column: 44, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !58, line: 63, column: 33)
!2506 = !DILocation(line: 64, column: 50, scope: !2505)
!2507 = !DILocation(line: 64, column: 38, scope: !2505)
!2508 = !DILocation(line: 64, column: 13, scope: !2505)
!2509 = !DILocation(line: 64, column: 26, scope: !2505)
!2510 = !DILocation(line: 64, column: 30, scope: !2505)
!2511 = !DILocation(line: 64, column: 21, scope: !2505)
!2512 = !DILocation(line: 64, column: 9, scope: !2505)
!2513 = !DILocation(line: 64, column: 36, scope: !2505)
!2514 = !DILocation(line: 63, column: 29, scope: !2502)
!2515 = !DILocation(line: 63, column: 5, scope: !2502)
!2516 = distinct !{!2516, !2503, !2517, !307}
!2517 = !DILocation(line: 65, column: 5, scope: !2497)
!2518 = !DILocation(line: 67, column: 16, scope: !2446)
!2519 = !DILocation(line: 67, column: 20, scope: !2446)
!2520 = !DILocation(line: 67, column: 5, scope: !2446)
!2521 = !DILocalVariable(name: "full_rank", scope: !2446, file: !58, line: 70, type: !14)
!2522 = !DILocalVariable(name: "i", scope: !2523, file: !58, line: 71, type: !45)
!2523 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 71, column: 5)
!2524 = !DILocation(line: 0, scope: !2523)
!2525 = !DILocation(line: 71, column: 10, scope: !2523)
!2526 = !DILocation(line: 71, scope: !2523)
!2527 = !DILocation(line: 71, column: 23, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2523, file: !58, line: 71, column: 5)
!2529 = !DILocation(line: 71, column: 5, scope: !2523)
!2530 = !DILocation(line: 72, column: 27, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !58, line: 71, column: 42)
!2532 = !DILocation(line: 72, column: 32, scope: !2531)
!2533 = !DILocation(line: 72, column: 22, scope: !2531)
!2534 = !DILocation(line: 72, column: 19, scope: !2531)
!2535 = !DILocation(line: 71, column: 38, scope: !2528)
!2536 = !DILocation(line: 71, column: 5, scope: !2528)
!2537 = distinct !{!2537, !2529, !2538, !307}
!2538 = !DILocation(line: 73, column: 5, scope: !2523)
!2539 = !DILocation(line: 80, column: 19, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 80, column: 9)
!2541 = !DILocation(line: 88, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 88, column: 5)
!2543 = !DILocalVariable(name: "row", scope: !2542, file: !58, line: 88, type: !45)
!2544 = !DILocation(line: 0, scope: !2542)
!2545 = !DILocation(line: 88, column: 31, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !58, line: 88, column: 5)
!2547 = !DILocation(line: 88, column: 5, scope: !2542)
!2548 = !DILocalVariable(name: "finished", scope: !2446, file: !58, line: 46, type: !14)
!2549 = !DILocation(line: 90, column: 27, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !58, line: 88, column: 44)
!2551 = !DILocalVariable(name: "col_upper_bound", scope: !2446, file: !58, line: 47, type: !45)
!2552 = !DILocalVariable(name: "col", scope: !2553, file: !58, line: 93, type: !45)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !58, line: 93, column: 9)
!2554 = !DILocation(line: 0, scope: !2553)
!2555 = !DILocation(line: 93, column: 14, scope: !2553)
!2556 = !DILocation(line: 0, scope: !2550)
!2557 = !DILocation(line: 93, scope: !2553)
!2558 = !DILocation(line: 93, column: 33, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2553, file: !58, line: 93, column: 9)
!2560 = !DILocation(line: 93, column: 9, scope: !2553)
!2561 = distinct !{!2561, !2547, !2562, !307}
!2562 = !DILocation(line: 122, column: 5, scope: !2542)
!2563 = !DILocation(line: 97, column: 50, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !58, line: 93, column: 60)
!2565 = !DILocation(line: 97, column: 44, scope: !2564)
!2566 = !DILocation(line: 97, column: 30, scope: !2564)
!2567 = !DILocation(line: 97, column: 73, scope: !2564)
!2568 = !DILocalVariable(name: "correct_column", scope: !2446, file: !58, line: 48, type: !14)
!2569 = !DILocation(line: 99, column: 63, scope: !2564)
!2570 = !DILocation(line: 99, column: 48, scope: !2564)
!2571 = !DILocation(line: 99, column: 46, scope: !2564)
!2572 = !DILocalVariable(name: "u", scope: !2564, file: !58, line: 99, type: !14)
!2573 = !DILocation(line: 0, scope: !2564)
!2574 = !DILocation(line: 100, column: 13, scope: !2564)
!2575 = !DILocation(line: 100, column: 20, scope: !2564)
!2576 = !DILocalVariable(name: "i", scope: !2577, file: !58, line: 102, type: !45)
!2577 = distinct !DILexicalBlock(scope: !2564, file: !58, line: 102, column: 13)
!2578 = !DILocation(line: 0, scope: !2577)
!2579 = !DILocation(line: 102, column: 18, scope: !2577)
!2580 = !DILocation(line: 102, scope: !2577)
!2581 = !DILocation(line: 102, column: 31, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !58, line: 102, column: 13)
!2583 = !DILocation(line: 102, column: 13, scope: !2577)
!2584 = !DILocation(line: 103, column: 53, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !58, line: 102, column: 46)
!2586 = !DILocation(line: 103, column: 45, scope: !2585)
!2587 = !DILocation(line: 103, column: 34, scope: !2585)
!2588 = !DILocation(line: 103, column: 95, scope: !2585)
!2589 = !DILocation(line: 103, column: 99, scope: !2585)
!2590 = !DILocation(line: 103, column: 91, scope: !2585)
!2591 = !DILocation(line: 103, column: 80, scope: !2585)
!2592 = !DILocation(line: 103, column: 115, scope: !2585)
!2593 = !DILocation(line: 103, column: 76, scope: !2585)
!2594 = !DILocation(line: 104, column: 49, scope: !2585)
!2595 = !DILocation(line: 104, column: 53, scope: !2585)
!2596 = !DILocation(line: 104, column: 45, scope: !2585)
!2597 = !DILocation(line: 104, column: 34, scope: !2585)
!2598 = !DILocation(line: 104, column: 69, scope: !2585)
!2599 = !DILocation(line: 104, column: 30, scope: !2585)
!2600 = !DILocation(line: 104, column: 95, scope: !2585)
!2601 = !DILocation(line: 104, column: 99, scope: !2585)
!2602 = !DILocation(line: 104, column: 91, scope: !2585)
!2603 = !DILocation(line: 104, column: 80, scope: !2585)
!2604 = !DILocation(line: 104, column: 115, scope: !2585)
!2605 = !DILocation(line: 104, column: 76, scope: !2585)
!2606 = !DILocation(line: 105, column: 49, scope: !2585)
!2607 = !DILocation(line: 105, column: 53, scope: !2585)
!2608 = !DILocation(line: 105, column: 45, scope: !2585)
!2609 = !DILocation(line: 105, column: 34, scope: !2585)
!2610 = !DILocation(line: 105, column: 69, scope: !2585)
!2611 = !DILocation(line: 105, column: 30, scope: !2585)
!2612 = !DILocation(line: 105, column: 95, scope: !2585)
!2613 = !DILocation(line: 105, column: 99, scope: !2585)
!2614 = !DILocation(line: 105, column: 91, scope: !2585)
!2615 = !DILocation(line: 105, column: 80, scope: !2585)
!2616 = !DILocation(line: 105, column: 115, scope: !2585)
!2617 = !DILocation(line: 105, column: 76, scope: !2585)
!2618 = !DILocation(line: 106, column: 49, scope: !2585)
!2619 = !DILocation(line: 106, column: 53, scope: !2585)
!2620 = !DILocation(line: 106, column: 45, scope: !2585)
!2621 = !DILocation(line: 106, column: 34, scope: !2585)
!2622 = !DILocation(line: 106, column: 69, scope: !2585)
!2623 = !DILocation(line: 106, column: 30, scope: !2585)
!2624 = !DILocation(line: 106, column: 95, scope: !2585)
!2625 = !DILocation(line: 106, column: 99, scope: !2585)
!2626 = !DILocation(line: 106, column: 91, scope: !2585)
!2627 = !DILocation(line: 106, column: 80, scope: !2585)
!2628 = !DILocation(line: 106, column: 115, scope: !2585)
!2629 = !DILocation(line: 106, column: 76, scope: !2585)
!2630 = !DILocalVariable(name: "tmp", scope: !2585, file: !58, line: 103, type: !6)
!2631 = !DILocation(line: 0, scope: !2585)
!2632 = !DILocation(line: 108, column: 23, scope: !2585)
!2633 = !DILocation(line: 110, column: 34, scope: !2585)
!2634 = !DILocation(line: 110, column: 17, scope: !2585)
!2635 = !DILocation(line: 110, column: 48, scope: !2585)
!2636 = !DILocation(line: 111, column: 56, scope: !2585)
!2637 = !DILocation(line: 111, column: 34, scope: !2585)
!2638 = !DILocation(line: 111, column: 17, scope: !2585)
!2639 = !DILocation(line: 111, column: 48, scope: !2585)
!2640 = !DILocation(line: 112, column: 56, scope: !2585)
!2641 = !DILocation(line: 112, column: 34, scope: !2585)
!2642 = !DILocation(line: 112, column: 17, scope: !2585)
!2643 = !DILocation(line: 112, column: 48, scope: !2585)
!2644 = !DILocation(line: 113, column: 56, scope: !2585)
!2645 = !DILocation(line: 113, column: 34, scope: !2585)
!2646 = !DILocation(line: 113, column: 17, scope: !2585)
!2647 = !DILocation(line: 113, column: 48, scope: !2585)
!2648 = !DILocation(line: 114, column: 56, scope: !2585)
!2649 = !DILocation(line: 114, column: 34, scope: !2585)
!2650 = !DILocation(line: 114, column: 17, scope: !2585)
!2651 = !DILocation(line: 114, column: 48, scope: !2585)
!2652 = !DILocation(line: 115, column: 56, scope: !2585)
!2653 = !DILocation(line: 115, column: 34, scope: !2585)
!2654 = !DILocation(line: 115, column: 17, scope: !2585)
!2655 = !DILocation(line: 115, column: 48, scope: !2585)
!2656 = !DILocation(line: 116, column: 56, scope: !2585)
!2657 = !DILocation(line: 116, column: 34, scope: !2585)
!2658 = !DILocation(line: 116, column: 17, scope: !2585)
!2659 = !DILocation(line: 116, column: 48, scope: !2585)
!2660 = !DILocation(line: 117, column: 56, scope: !2585)
!2661 = !DILocation(line: 117, column: 34, scope: !2585)
!2662 = !DILocation(line: 117, column: 17, scope: !2585)
!2663 = !DILocation(line: 117, column: 48, scope: !2585)
!2664 = !DILocation(line: 102, column: 40, scope: !2582)
!2665 = !DILocation(line: 102, column: 13, scope: !2582)
!2666 = distinct !{!2666, !2583, !2667, !307}
!2667 = !DILocation(line: 118, column: 13, scope: !2577)
!2668 = !DILocation(line: 120, column: 33, scope: !2564)
!2669 = !DILocation(line: 93, column: 56, scope: !2559)
!2670 = !DILocation(line: 93, column: 9, scope: !2559)
!2671 = distinct !{!2671, !2560, !2672, !307}
!2672 = !DILocation(line: 121, column: 9, scope: !2553)
!2673 = !DILocation(line: 124, column: 1, scope: !2446)
!2674 = distinct !DISubprogram(name: "mat_mul", scope: !502, file: !502, line: 79, type: !1401, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2675 = !DILocalVariable(name: "a", arg: 1, scope: !2674, file: !502, line: 79, type: !49)
!2676 = !DILocation(line: 0, scope: !2674)
!2677 = !DILocalVariable(name: "b", arg: 2, scope: !2674, file: !502, line: 79, type: !49)
!2678 = !DILocalVariable(name: "c", arg: 3, scope: !2674, file: !502, line: 80, type: !18)
!2679 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2674, file: !502, line: 80, type: !45)
!2680 = !DILocalVariable(name: "row_a", arg: 5, scope: !2674, file: !502, line: 80, type: !45)
!2681 = !DILocalVariable(name: "col_b", arg: 6, scope: !2674, file: !502, line: 80, type: !45)
!2682 = !DILocalVariable(name: "i", scope: !2683, file: !502, line: 81, type: !45)
!2683 = distinct !DILexicalBlock(scope: !2674, file: !502, line: 81, column: 5)
!2684 = !DILocation(line: 0, scope: !2683)
!2685 = !DILocation(line: 81, column: 10, scope: !2683)
!2686 = !DILocation(line: 81, scope: !2683)
!2687 = !DILocation(line: 81, column: 23, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2683, file: !502, line: 81, column: 5)
!2689 = !DILocation(line: 81, column: 5, scope: !2683)
!2690 = !DILocation(line: 82, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !502, line: 82, column: 9)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !502, line: 81, column: 53)
!2693 = !DILocalVariable(name: "j", scope: !2691, file: !502, line: 82, type: !45)
!2694 = !DILocation(line: 0, scope: !2691)
!2695 = !DILocation(line: 82, column: 27, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2691, file: !502, line: 82, column: 9)
!2697 = !DILocation(line: 82, column: 9, scope: !2691)
!2698 = !DILocation(line: 83, column: 31, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !502, line: 82, column: 46)
!2700 = !DILocation(line: 83, column: 18, scope: !2699)
!2701 = !DILocation(line: 83, column: 16, scope: !2699)
!2702 = !DILocation(line: 82, column: 36, scope: !2696)
!2703 = !DILocation(line: 82, column: 41, scope: !2696)
!2704 = !DILocation(line: 82, column: 9, scope: !2696)
!2705 = distinct !{!2705, !2697, !2706, !307}
!2706 = !DILocation(line: 84, column: 9, scope: !2691)
!2707 = !DILocation(line: 81, column: 32, scope: !2688)
!2708 = !DILocation(line: 81, column: 39, scope: !2688)
!2709 = !DILocation(line: 81, column: 5, scope: !2688)
!2710 = distinct !{!2710, !2689, !2711, !307}
!2711 = !DILocation(line: 85, column: 5, scope: !2683)
!2712 = !DILocation(line: 86, column: 1, scope: !2674)
!2713 = distinct !DISubprogram(name: "sub_f", scope: !502, file: !502, line: 48, type: !1524, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2714 = !DILocalVariable(name: "a", arg: 1, scope: !2713, file: !502, line: 48, type: !14)
!2715 = !DILocation(line: 0, scope: !2713)
!2716 = !DILocalVariable(name: "b", arg: 2, scope: !2713, file: !502, line: 48, type: !14)
!2717 = !DILocation(line: 49, column: 14, scope: !2713)
!2718 = !DILocation(line: 49, column: 5, scope: !2713)
!2719 = distinct !DISubprogram(name: "EF", scope: !2720, file: !2720, line: 60, type: !2721, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2720 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !18, !45, !45}
!2723 = !DILocalVariable(name: "A", arg: 1, scope: !2719, file: !2720, line: 60, type: !18)
!2724 = !DILocation(line: 0, scope: !2719)
!2725 = !DILocalVariable(name: "nrows", arg: 2, scope: !2719, file: !2720, line: 60, type: !45)
!2726 = !DILocalVariable(name: "ncols", arg: 3, scope: !2719, file: !2720, line: 60, type: !45)
!2727 = !DILocalVariable(name: "_pivot_row", scope: !2719, file: !2720, line: 62, type: !2728, align: 256)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !2729)
!2729 = !{!2730}
!2730 = !DISubrange(count: 10)
!2731 = !DILocation(line: 62, column: 27, scope: !2719)
!2732 = !DILocalVariable(name: "_pivot_row2", scope: !2719, file: !2720, line: 63, type: !2728, align: 256)
!2733 = !DILocation(line: 63, column: 27, scope: !2719)
!2734 = !DILocalVariable(name: "packed_A", scope: !2719, file: !2720, line: 64, type: !2735, align: 256)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 90880, elements: !2736)
!2736 = !{!2737}
!2737 = !DISubrange(count: 1420)
!2738 = !DILocation(line: 64, column: 27, scope: !2719)
!2739 = !DILocation(line: 66, column: 26, scope: !2719)
!2740 = !DILocation(line: 66, column: 32, scope: !2719)
!2741 = !DILocalVariable(name: "row_len", scope: !2719, file: !2720, line: 66, type: !45)
!2742 = !DILocalVariable(name: "i", scope: !2743, file: !2720, line: 69, type: !45)
!2743 = distinct !DILexicalBlock(scope: !2719, file: !2720, line: 69, column: 5)
!2744 = !DILocation(line: 0, scope: !2743)
!2745 = !DILocation(line: 69, column: 10, scope: !2743)
!2746 = !DILocation(line: 69, scope: !2743)
!2747 = !DILocation(line: 69, column: 23, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2743, file: !2720, line: 69, column: 5)
!2749 = !DILocation(line: 69, column: 5, scope: !2743)
!2750 = !DILocation(line: 77, column: 5, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2719, file: !2720, line: 77, column: 5)
!2752 = !DILocation(line: 70, column: 29, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !2720, line: 69, column: 37)
!2754 = !DILocation(line: 70, column: 25, scope: !2753)
!2755 = !DILocation(line: 70, column: 51, scope: !2753)
!2756 = !DILocation(line: 70, column: 47, scope: !2753)
!2757 = !DILocation(line: 70, column: 9, scope: !2753)
!2758 = !DILocation(line: 69, column: 33, scope: !2748)
!2759 = !DILocation(line: 69, column: 5, scope: !2748)
!2760 = distinct !{!2760, !2749, !2761, !307}
!2761 = !DILocation(line: 71, column: 5, scope: !2743)
!2762 = !DILocation(line: 77, scope: !2751)
!2763 = !DILocalVariable(name: "pivot_row", scope: !2719, file: !2720, line: 76, type: !45)
!2764 = !DILocalVariable(name: "pivot_col", scope: !2751, file: !2720, line: 77, type: !45)
!2765 = !DILocation(line: 0, scope: !2751)
!2766 = !DILocation(line: 77, column: 39, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2751, file: !2720, line: 77, column: 5)
!2768 = !DILocation(line: 79, column: 37, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2767, file: !2720, line: 77, column: 61)
!2770 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2769, file: !2720, line: 79, type: !45)
!2771 = !DILocation(line: 0, scope: !2769)
!2772 = !DILocation(line: 80, column: 37, scope: !2769)
!2773 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2769, file: !2720, line: 80, type: !45)
!2774 = !DILocalVariable(name: "i", scope: !2775, file: !2720, line: 85, type: !45)
!2775 = distinct !DILexicalBlock(scope: !2769, file: !2720, line: 85, column: 9)
!2776 = !DILocation(line: 0, scope: !2775)
!2777 = !DILocation(line: 85, column: 14, scope: !2775)
!2778 = !DILocation(line: 85, scope: !2775)
!2779 = !DILocation(line: 85, column: 27, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !2720, line: 85, column: 9)
!2781 = !DILocation(line: 85, column: 9, scope: !2775)
!2782 = !DILocation(line: 93, column: 9, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2769, file: !2720, line: 93, column: 9)
!2784 = !DILocation(line: 86, column: 13, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !2720, line: 85, column: 43)
!2786 = !DILocation(line: 86, column: 27, scope: !2785)
!2787 = !DILocation(line: 87, column: 13, scope: !2785)
!2788 = !DILocation(line: 87, column: 28, scope: !2785)
!2789 = !DILocation(line: 85, column: 39, scope: !2780)
!2790 = !DILocation(line: 85, column: 9, scope: !2780)
!2791 = distinct !{!2791, !2781, !2792, !307}
!2792 = !DILocation(line: 88, column: 9, scope: !2775)
!2793 = !DILocation(line: 0, scope: !2783)
!2794 = !DILocalVariable(name: "row", scope: !2783, file: !2720, line: 93, type: !45)
!2795 = !DILocalVariable(name: "pivot", scope: !2769, file: !2720, line: 91, type: !14)
!2796 = !DILocalVariable(name: "pivot_is_zero", scope: !2769, file: !2720, line: 92, type: !6)
!2797 = !DILocation(line: 94, column: 24, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2783, file: !2720, line: 93, column: 9)
!2799 = !DILocation(line: 94, column: 21, scope: !2798)
!2800 = !DILocation(line: 96, column: 38, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !2720, line: 94, column: 80)
!2802 = !DILocation(line: 96, column: 37, scope: !2801)
!2803 = !DILocalVariable(name: "is_pivot_row", scope: !2801, file: !2720, line: 96, type: !6)
!2804 = !DILocation(line: 0, scope: !2801)
!2805 = !DILocation(line: 97, column: 40, scope: !2801)
!2806 = !DILocalVariable(name: "below_pivot_row", scope: !2801, file: !2720, line: 97, type: !6)
!2807 = !DILocalVariable(name: "j", scope: !2808, file: !2720, line: 99, type: !45)
!2808 = distinct !DILexicalBlock(scope: !2801, file: !2720, line: 99, column: 13)
!2809 = !DILocation(line: 0, scope: !2808)
!2810 = !DILocation(line: 99, column: 18, scope: !2808)
!2811 = !DILocation(line: 99, scope: !2808)
!2812 = !DILocation(line: 99, column: 31, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2808, file: !2720, line: 99, column: 13)
!2814 = !DILocation(line: 99, column: 13, scope: !2808)
!2815 = !DILocation(line: 100, column: 67, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !2720, line: 99, column: 47)
!2817 = !DILocation(line: 100, column: 48, scope: !2816)
!2818 = !DILocation(line: 101, column: 47, scope: !2816)
!2819 = !DILocation(line: 101, column: 57, scope: !2816)
!2820 = !DILocation(line: 101, column: 34, scope: !2816)
!2821 = !DILocation(line: 100, column: 85, scope: !2816)
!2822 = !DILocation(line: 100, column: 17, scope: !2816)
!2823 = !DILocation(line: 100, column: 31, scope: !2816)
!2824 = !DILocation(line: 99, column: 43, scope: !2813)
!2825 = !DILocation(line: 99, column: 13, scope: !2813)
!2826 = distinct !{!2826, !2814, !2827, !307}
!2827 = !DILocation(line: 102, column: 13, scope: !2808)
!2828 = !DILocation(line: 103, column: 21, scope: !2801)
!2829 = !DILocation(line: 104, column: 44, scope: !2801)
!2830 = !DILocation(line: 104, column: 30, scope: !2801)
!2831 = !DILocation(line: 104, column: 29, scope: !2801)
!2832 = !DILocation(line: 94, column: 76, scope: !2798)
!2833 = !DILocation(line: 93, column: 9, scope: !2798)
!2834 = distinct !{!2834, !2782, !2835, !307}
!2835 = !DILocation(line: 105, column: 9, scope: !2783)
!2836 = !DILocation(line: 108, column: 19, scope: !2769)
!2837 = !DILocalVariable(name: "inverse", scope: !2719, file: !2720, line: 75, type: !14)
!2838 = !DILocation(line: 109, column: 9, scope: !2769)
!2839 = !DILocalVariable(name: "row", scope: !2840, file: !2720, line: 113, type: !45)
!2840 = distinct !DILexicalBlock(scope: !2769, file: !2720, line: 113, column: 9)
!2841 = !DILocation(line: 0, scope: !2840)
!2842 = !DILocation(line: 113, column: 14, scope: !2840)
!2843 = !DILocation(line: 113, scope: !2840)
!2844 = !DILocation(line: 113, column: 51, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2840, file: !2720, line: 113, column: 9)
!2846 = !DILocation(line: 113, column: 9, scope: !2840)
!2847 = !DILocation(line: 114, column: 33, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !2720, line: 113, column: 84)
!2849 = !DILocation(line: 114, column: 63, scope: !2848)
!2850 = !DILocalVariable(name: "do_copy", scope: !2848, file: !2720, line: 114, type: !6)
!2851 = !DILocation(line: 0, scope: !2848)
!2852 = !DILocalVariable(name: "do_not_copy", scope: !2848, file: !2720, line: 115, type: !6)
!2853 = !DILocalVariable(name: "col", scope: !2854, file: !2720, line: 116, type: !45)
!2854 = distinct !DILexicalBlock(scope: !2848, file: !2720, line: 116, column: 13)
!2855 = !DILocation(line: 0, scope: !2854)
!2856 = !DILocation(line: 116, column: 18, scope: !2854)
!2857 = !DILocation(line: 116, scope: !2854)
!2858 = !DILocation(line: 116, column: 35, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !2720, line: 116, column: 13)
!2860 = !DILocation(line: 116, column: 13, scope: !2854)
!2861 = !DILocation(line: 118, column: 49, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !2720, line: 116, column: 53)
!2863 = !DILocation(line: 118, column: 59, scope: !2862)
!2864 = !DILocation(line: 118, column: 36, scope: !2862)
!2865 = !DILocation(line: 118, column: 34, scope: !2862)
!2866 = !DILocation(line: 119, column: 32, scope: !2862)
!2867 = !DILocation(line: 119, column: 30, scope: !2862)
!2868 = !DILocation(line: 118, column: 67, scope: !2862)
!2869 = !DILocation(line: 117, column: 30, scope: !2862)
!2870 = !DILocation(line: 117, column: 40, scope: !2862)
!2871 = !DILocation(line: 117, column: 17, scope: !2862)
!2872 = !DILocation(line: 117, column: 47, scope: !2862)
!2873 = !DILocation(line: 116, column: 49, scope: !2859)
!2874 = !DILocation(line: 116, column: 13, scope: !2859)
!2875 = distinct !{!2875, !2860, !2876, !307}
!2876 = !DILocation(line: 120, column: 13, scope: !2854)
!2877 = !DILocation(line: 113, column: 80, scope: !2845)
!2878 = !DILocation(line: 113, column: 9, scope: !2845)
!2879 = distinct !{!2879, !2846, !2880, !307}
!2880 = !DILocation(line: 121, column: 9, scope: !2840)
!2881 = !DILocation(line: 124, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2769, file: !2720, line: 124, column: 9)
!2883 = !DILocalVariable(name: "row", scope: !2882, file: !2720, line: 124, type: !45)
!2884 = !DILocation(line: 0, scope: !2882)
!2885 = !DILocation(line: 124, column: 51, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !2720, line: 124, column: 9)
!2887 = !DILocation(line: 124, column: 9, scope: !2882)
!2888 = !DILocation(line: 125, column: 46, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !2720, line: 124, column: 67)
!2890 = !DILocalVariable(name: "below_pivot", scope: !2889, file: !2720, line: 125, type: !14)
!2891 = !DILocation(line: 0, scope: !2889)
!2892 = !DILocation(line: 126, column: 74, scope: !2889)
!2893 = !DILocation(line: 126, column: 68, scope: !2889)
!2894 = !DILocation(line: 126, column: 41, scope: !2889)
!2895 = !DILocalVariable(name: "elt_to_elim", scope: !2889, file: !2720, line: 126, type: !14)
!2896 = !DILocation(line: 128, column: 63, scope: !2889)
!2897 = !DILocation(line: 129, column: 52, scope: !2889)
!2898 = !DILocation(line: 129, column: 46, scope: !2889)
!2899 = !DILocation(line: 128, column: 13, scope: !2889)
!2900 = !DILocation(line: 124, column: 63, scope: !2886)
!2901 = !DILocation(line: 124, column: 9, scope: !2886)
!2902 = distinct !{!2902, !2887, !2903, !307}
!2903 = !DILocation(line: 130, column: 9, scope: !2882)
!2904 = !DILocation(line: 132, column: 19, scope: !2769)
!2905 = !DILocation(line: 77, column: 57, scope: !2767)
!2906 = !DILocation(line: 77, column: 5, scope: !2767)
!2907 = distinct !{!2907, !2750, !2908, !307}
!2908 = !DILocation(line: 133, column: 5, scope: !2751)
!2909 = !DILocation(line: 138, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2719, file: !2720, line: 138, column: 5)
!2911 = !DILocalVariable(name: "i", scope: !2910, file: !2720, line: 138, type: !45)
!2912 = !DILocation(line: 0, scope: !2910)
!2913 = !DILocation(line: 138, column: 23, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !2720, line: 138, column: 5)
!2915 = !DILocation(line: 138, column: 5, scope: !2910)
!2916 = !DILocation(line: 139, column: 47, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2914, file: !2720, line: 138, column: 37)
!2918 = !DILocation(line: 139, column: 43, scope: !2917)
!2919 = !DILocation(line: 139, column: 9, scope: !2917)
!2920 = !DILocalVariable(name: "j", scope: !2921, file: !2720, line: 140, type: !45)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !2720, line: 140, column: 9)
!2922 = !DILocation(line: 0, scope: !2921)
!2923 = !DILocation(line: 140, column: 14, scope: !2921)
!2924 = !DILocation(line: 140, scope: !2921)
!2925 = !DILocation(line: 140, column: 27, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !2720, line: 140, column: 9)
!2927 = !DILocation(line: 140, column: 9, scope: !2921)
!2928 = !DILocation(line: 141, column: 32, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2926, file: !2720, line: 140, column: 41)
!2930 = !DILocation(line: 141, column: 17, scope: !2929)
!2931 = !DILocation(line: 141, column: 13, scope: !2929)
!2932 = !DILocation(line: 141, column: 30, scope: !2929)
!2933 = !DILocation(line: 140, column: 37, scope: !2926)
!2934 = !DILocation(line: 140, column: 9, scope: !2926)
!2935 = distinct !{!2935, !2927, !2936, !307}
!2936 = !DILocation(line: 142, column: 9, scope: !2921)
!2937 = !DILocation(line: 138, column: 33, scope: !2914)
!2938 = !DILocation(line: 138, column: 5, scope: !2914)
!2939 = distinct !{!2939, !2915, !2940, !307}
!2940 = !DILocation(line: 143, column: 5, scope: !2910)
!2941 = !DILocation(line: 145, column: 5, scope: !2719)
!2942 = !DILocation(line: 146, column: 5, scope: !2719)
!2943 = !DILocation(line: 147, column: 5, scope: !2719)
!2944 = !DILocation(line: 148, column: 5, scope: !2719)
!2945 = !DILocation(line: 149, column: 1, scope: !2719)
!2946 = distinct !DISubprogram(name: "ct_compare_8", scope: !2947, file: !2947, line: 51, type: !1524, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2947 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2948 = !DILocalVariable(name: "a", arg: 1, scope: !2946, file: !2947, line: 51, type: !14)
!2949 = !DILocation(line: 0, scope: !2946)
!2950 = !DILocalVariable(name: "b", arg: 2, scope: !2946, file: !2947, line: 51, type: !14)
!2951 = !DILocation(line: 52, column: 42, scope: !2946)
!2952 = !DILocation(line: 52, column: 13, scope: !2946)
!2953 = !DILocation(line: 52, column: 71, scope: !2946)
!2954 = !DILocation(line: 52, column: 69, scope: !2946)
!2955 = !DILocation(line: 52, column: 5, scope: !2946)
!2956 = distinct !DISubprogram(name: "mul_fx8", scope: !502, file: !502, line: 28, type: !2957, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!6, !14, !6}
!2959 = !DILocalVariable(name: "a", arg: 1, scope: !2956, file: !502, line: 28, type: !14)
!2960 = !DILocation(line: 0, scope: !2956)
!2961 = !DILocalVariable(name: "b", arg: 2, scope: !2956, file: !502, line: 28, type: !6)
!2962 = !DILocation(line: 31, column: 13, scope: !2956)
!2963 = !DILocation(line: 31, column: 10, scope: !2956)
!2964 = !DILocation(line: 31, column: 17, scope: !2956)
!2965 = !DILocalVariable(name: "p", scope: !2956, file: !502, line: 30, type: !6)
!2966 = !DILocation(line: 32, column: 13, scope: !2956)
!2967 = !DILocation(line: 32, column: 10, scope: !2956)
!2968 = !DILocation(line: 32, column: 17, scope: !2956)
!2969 = !DILocation(line: 32, column: 7, scope: !2956)
!2970 = !DILocation(line: 33, column: 13, scope: !2956)
!2971 = !DILocation(line: 33, column: 10, scope: !2956)
!2972 = !DILocation(line: 33, column: 17, scope: !2956)
!2973 = !DILocation(line: 33, column: 7, scope: !2956)
!2974 = !DILocation(line: 34, column: 13, scope: !2956)
!2975 = !DILocation(line: 34, column: 10, scope: !2956)
!2976 = !DILocation(line: 34, column: 17, scope: !2956)
!2977 = !DILocation(line: 34, column: 7, scope: !2956)
!2978 = !DILocalVariable(name: "top_p", scope: !2956, file: !502, line: 37, type: !6)
!2979 = !DILocation(line: 38, column: 32, scope: !2956)
!2980 = !DILocation(line: 38, column: 47, scope: !2956)
!2981 = !DILocation(line: 38, column: 38, scope: !2956)
!2982 = !DILocation(line: 38, column: 54, scope: !2956)
!2983 = !DILocalVariable(name: "out", scope: !2956, file: !502, line: 38, type: !6)
!2984 = !DILocation(line: 39, column: 5, scope: !2956)
!2985 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2720, file: !2720, line: 24, type: !2986, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !49, !5, !45}
!2988 = !DILocalVariable(name: "in", arg: 1, scope: !2985, file: !2720, line: 24, type: !49)
!2989 = !DILocation(line: 0, scope: !2985)
!2990 = !DILocalVariable(name: "out", arg: 2, scope: !2985, file: !2720, line: 24, type: !5)
!2991 = !DILocalVariable(name: "ncols", arg: 3, scope: !2985, file: !2720, line: 24, type: !45)
!2992 = !DILocalVariable(name: "out8", scope: !2985, file: !2720, line: 26, type: !18)
!2993 = !DILocalVariable(name: "i", scope: !2985, file: !2720, line: 25, type: !45)
!2994 = !DILocation(line: 27, column: 9, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2985, file: !2720, line: 27, column: 5)
!2996 = !DILocation(line: 27, scope: !2995)
!2997 = !DILocation(line: 27, column: 17, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !2720, line: 27, column: 5)
!2999 = !DILocation(line: 27, column: 20, scope: !2998)
!3000 = !DILocation(line: 27, column: 5, scope: !2995)
!3001 = !DILocation(line: 31, column: 23, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !2720, line: 27, column: 36)
!3003 = !DILocation(line: 31, column: 44, scope: !3002)
!3004 = !DILocation(line: 31, column: 40, scope: !3002)
!3005 = !DILocation(line: 31, column: 48, scope: !3002)
!3006 = !DILocation(line: 31, column: 37, scope: !3002)
!3007 = !DILocation(line: 31, column: 15, scope: !3002)
!3008 = !DILocation(line: 31, column: 9, scope: !3002)
!3009 = !DILocation(line: 31, column: 20, scope: !3002)
!3010 = !DILocation(line: 27, column: 31, scope: !2998)
!3011 = !DILocation(line: 27, column: 5, scope: !2998)
!3012 = distinct !{!3012, !3000, !3013, !307}
!3013 = !DILocation(line: 33, column: 5, scope: !2995)
!3014 = !DILocation(line: 34, column: 19, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2985, file: !2720, line: 34, column: 9)
!3016 = !DILocation(line: 38, column: 23, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3015, file: !2720, line: 34, column: 24)
!3018 = !DILocation(line: 38, column: 15, scope: !3017)
!3019 = !DILocation(line: 38, column: 9, scope: !3017)
!3020 = !DILocation(line: 38, column: 20, scope: !3017)
!3021 = !DILocation(line: 40, column: 5, scope: !3017)
!3022 = !DILocation(line: 41, column: 1, scope: !2985)
!3023 = distinct !DISubprogram(name: "ct_compare_64", scope: !2947, file: !2947, line: 46, type: !3024, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!6, !45, !45}
!3026 = !DILocalVariable(name: "a", arg: 1, scope: !3023, file: !2947, line: 46, type: !45)
!3027 = !DILocation(line: 0, scope: !3023)
!3028 = !DILocalVariable(name: "b", arg: 2, scope: !3023, file: !2947, line: 46, type: !45)
!3029 = !DILocation(line: 47, column: 38, scope: !3023)
!3030 = !DILocation(line: 47, column: 44, scope: !3023)
!3031 = !DILocation(line: 47, column: 73, scope: !3023)
!3032 = !DILocation(line: 47, column: 71, scope: !3023)
!3033 = !DILocation(line: 47, column: 5, scope: !3023)
!3034 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !2947, file: !2947, line: 35, type: !3024, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3035 = !DILocalVariable(name: "a", arg: 1, scope: !3034, file: !2947, line: 35, type: !45)
!3036 = !DILocation(line: 0, scope: !3034)
!3037 = !DILocalVariable(name: "b", arg: 2, scope: !3034, file: !2947, line: 35, type: !45)
!3038 = !DILocalVariable(name: "diff", scope: !3034, file: !2947, line: 36, type: !46)
!3039 = !DILocation(line: 37, column: 30, scope: !3034)
!3040 = !DILocation(line: 37, column: 59, scope: !3034)
!3041 = !DILocation(line: 37, column: 57, scope: !3034)
!3042 = !DILocation(line: 37, column: 5, scope: !3034)
!3043 = distinct !DISubprogram(name: "m_extract_element", scope: !2720, file: !2720, line: 16, type: !3044, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!14, !330, !45}
!3046 = !DILocalVariable(name: "in", arg: 1, scope: !3043, file: !2720, line: 16, type: !330)
!3047 = !DILocation(line: 0, scope: !3043)
!3048 = !DILocalVariable(name: "index", arg: 2, scope: !3043, file: !2720, line: 16, type: !45)
!3049 = !DILocation(line: 17, column: 27, scope: !3043)
!3050 = !DILocalVariable(name: "leg", scope: !3043, file: !2720, line: 17, type: !243)
!3051 = !DILocation(line: 18, column: 30, scope: !3043)
!3052 = !DILocalVariable(name: "offset", scope: !3043, file: !2720, line: 18, type: !243)
!3053 = !DILocation(line: 20, column: 13, scope: !3043)
!3054 = !DILocation(line: 20, column: 31, scope: !3043)
!3055 = !DILocation(line: 20, column: 21, scope: !3043)
!3056 = !DILocation(line: 20, column: 12, scope: !3043)
!3057 = !DILocation(line: 20, column: 5, scope: !3043)
!3058 = distinct !DISubprogram(name: "inverse_f", scope: !502, file: !502, line: 57, type: !3059, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!14, !14}
!3061 = !DILocalVariable(name: "a", arg: 1, scope: !3058, file: !502, line: 57, type: !14)
!3062 = !DILocation(line: 0, scope: !3058)
!3063 = !DILocation(line: 61, column: 24, scope: !3058)
!3064 = !DILocalVariable(name: "a2", scope: !3058, file: !502, line: 61, type: !14)
!3065 = !DILocation(line: 62, column: 24, scope: !3058)
!3066 = !DILocalVariable(name: "a4", scope: !3058, file: !502, line: 62, type: !14)
!3067 = !DILocation(line: 63, column: 24, scope: !3058)
!3068 = !DILocalVariable(name: "a8", scope: !3058, file: !502, line: 63, type: !14)
!3069 = !DILocation(line: 64, column: 24, scope: !3058)
!3070 = !DILocalVariable(name: "a6", scope: !3058, file: !502, line: 64, type: !14)
!3071 = !DILocation(line: 65, column: 25, scope: !3058)
!3072 = !DILocalVariable(name: "a14", scope: !3058, file: !502, line: 65, type: !14)
!3073 = !DILocation(line: 67, column: 5, scope: !3058)
!3074 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !2947, file: !2947, line: 94, type: !3075, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !243, !330, !14, !5}
!3077 = !DILocalVariable(name: "legs", arg: 1, scope: !3074, file: !2947, line: 94, type: !243)
!3078 = !DILocation(line: 0, scope: !3074)
!3079 = !DILocalVariable(name: "in", arg: 2, scope: !3074, file: !2947, line: 94, type: !330)
!3080 = !DILocalVariable(name: "a", arg: 3, scope: !3074, file: !2947, line: 94, type: !14)
!3081 = !DILocalVariable(name: "acc", arg: 4, scope: !3074, file: !2947, line: 94, type: !5)
!3082 = !DILocation(line: 95, column: 20, scope: !3074)
!3083 = !DILocalVariable(name: "tab", scope: !3074, file: !2947, line: 95, type: !19)
!3084 = !DILocalVariable(name: "lsb_ask", scope: !3074, file: !2947, line: 97, type: !6)
!3085 = !DILocalVariable(name: "i", scope: !3086, file: !2947, line: 99, type: !45)
!3086 = distinct !DILexicalBlock(scope: !3074, file: !2947, line: 99, column: 5)
!3087 = !DILocation(line: 0, scope: !3086)
!3088 = !DILocation(line: 99, column: 9, scope: !3086)
!3089 = !DILocation(line: 99, scope: !3086)
!3090 = !DILocation(line: 99, column: 20, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3086, file: !2947, line: 99, column: 5)
!3092 = !DILocation(line: 99, column: 5, scope: !3086)
!3093 = !DILocation(line: 100, column: 21, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !2947, line: 99, column: 32)
!3095 = !DILocation(line: 100, column: 33, scope: !3094)
!3096 = !DILocation(line: 100, column: 51, scope: !3094)
!3097 = !DILocation(line: 100, column: 46, scope: !3094)
!3098 = !DILocation(line: 100, column: 44, scope: !3094)
!3099 = !DILocation(line: 101, column: 27, scope: !3094)
!3100 = !DILocation(line: 101, column: 33, scope: !3094)
!3101 = !DILocation(line: 101, column: 52, scope: !3094)
!3102 = !DILocation(line: 101, column: 59, scope: !3094)
!3103 = !DILocation(line: 101, column: 46, scope: !3094)
!3104 = !DILocation(line: 101, column: 44, scope: !3094)
!3105 = !DILocation(line: 101, column: 17, scope: !3094)
!3106 = !DILocation(line: 102, column: 21, scope: !3094)
!3107 = !DILocation(line: 102, column: 27, scope: !3094)
!3108 = !DILocation(line: 102, column: 33, scope: !3094)
!3109 = !DILocation(line: 102, column: 52, scope: !3094)
!3110 = !DILocation(line: 102, column: 59, scope: !3094)
!3111 = !DILocation(line: 102, column: 46, scope: !3094)
!3112 = !DILocation(line: 102, column: 44, scope: !3094)
!3113 = !DILocation(line: 102, column: 17, scope: !3094)
!3114 = !DILocation(line: 103, column: 21, scope: !3094)
!3115 = !DILocation(line: 103, column: 27, scope: !3094)
!3116 = !DILocation(line: 103, column: 33, scope: !3094)
!3117 = !DILocation(line: 103, column: 52, scope: !3094)
!3118 = !DILocation(line: 103, column: 59, scope: !3094)
!3119 = !DILocation(line: 103, column: 46, scope: !3094)
!3120 = !DILocation(line: 103, column: 44, scope: !3094)
!3121 = !DILocation(line: 103, column: 17, scope: !3094)
!3122 = !DILocation(line: 100, column: 9, scope: !3094)
!3123 = !DILocation(line: 100, column: 16, scope: !3094)
!3124 = !DILocation(line: 99, column: 29, scope: !3091)
!3125 = !DILocation(line: 99, column: 5, scope: !3091)
!3126 = distinct !{!3126, !3092, !3127, !307}
!3127 = !DILocation(line: 104, column: 5, scope: !3086)
!3128 = !DILocation(line: 105, column: 1, scope: !3074)
!3129 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2720, file: !2720, line: 44, type: !3130, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !45, !330, !18}
!3132 = !DILocalVariable(name: "legs", arg: 1, scope: !3129, file: !2720, line: 44, type: !45)
!3133 = !DILocation(line: 0, scope: !3129)
!3134 = !DILocalVariable(name: "in", arg: 2, scope: !3129, file: !2720, line: 44, type: !330)
!3135 = !DILocalVariable(name: "out", arg: 3, scope: !3129, file: !2720, line: 44, type: !18)
!3136 = !DILocalVariable(name: "in8", scope: !3129, file: !2720, line: 45, type: !49)
!3137 = !DILocalVariable(name: "i", scope: !3138, file: !2720, line: 46, type: !45)
!3138 = distinct !DILexicalBlock(scope: !3129, file: !2720, line: 46, column: 5)
!3139 = !DILocation(line: 0, scope: !3138)
!3140 = !DILocation(line: 46, column: 9, scope: !3138)
!3141 = !DILocation(line: 46, scope: !3138)
!3142 = !DILocation(line: 46, column: 29, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !2720, line: 46, column: 5)
!3144 = !DILocation(line: 46, column: 22, scope: !3143)
!3145 = !DILocation(line: 46, column: 5, scope: !3138)
!3146 = !DILocation(line: 51, column: 26, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !2720, line: 46, column: 42)
!3148 = !DILocation(line: 51, column: 21, scope: !3147)
!3149 = !DILocation(line: 51, column: 31, scope: !3147)
!3150 = !DILocation(line: 51, column: 9, scope: !3147)
!3151 = !DILocation(line: 51, column: 18, scope: !3147)
!3152 = !DILocation(line: 52, column: 26, scope: !3147)
!3153 = !DILocation(line: 52, column: 21, scope: !3147)
!3154 = !DILocation(line: 52, column: 30, scope: !3147)
!3155 = !DILocation(line: 52, column: 14, scope: !3147)
!3156 = !DILocation(line: 52, column: 9, scope: !3147)
!3157 = !DILocation(line: 52, column: 18, scope: !3147)
!3158 = !DILocation(line: 46, column: 37, scope: !3143)
!3159 = !DILocation(line: 46, column: 5, scope: !3143)
!3160 = distinct !{!3160, !3145, !3161, !307}
!3161 = !DILocation(line: 54, column: 5, scope: !3138)
!3162 = !DILocation(line: 55, column: 1, scope: !3129)
!3163 = distinct !DISubprogram(name: "mul_table", scope: !502, file: !502, line: 129, type: !503, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3164 = !DILocalVariable(name: "b", arg: 1, scope: !3163, file: !502, line: 129, type: !12)
!3165 = !DILocation(line: 0, scope: !3163)
!3166 = !DILocation(line: 130, column: 19, scope: !3163)
!3167 = !DILocation(line: 130, column: 33, scope: !3163)
!3168 = !DILocalVariable(name: "x", scope: !3163, file: !502, line: 130, type: !19)
!3169 = !DILocalVariable(name: "high_nibble_mask", scope: !3163, file: !502, line: 132, type: !19)
!3170 = !DILocation(line: 134, column: 28, scope: !3163)
!3171 = !DILocalVariable(name: "high_half", scope: !3163, file: !502, line: 134, type: !19)
!3172 = !DILocation(line: 135, column: 28, scope: !3163)
!3173 = !DILocation(line: 135, column: 47, scope: !3163)
!3174 = !DILocation(line: 135, column: 34, scope: !3163)
!3175 = !DILocation(line: 135, column: 5, scope: !3163)
!3176 = distinct !DISubprogram(name: "mul_f", scope: !502, file: !502, line: 9, type: !1524, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3177 = !DILocalVariable(name: "a", arg: 1, scope: !3176, file: !502, line: 9, type: !14)
!3178 = !DILocation(line: 0, scope: !3176)
!3179 = !DILocalVariable(name: "b", arg: 2, scope: !3176, file: !502, line: 9, type: !14)
!3180 = !DILocation(line: 14, column: 10, scope: !3176)
!3181 = !DILocation(line: 14, column: 7, scope: !3176)
!3182 = !DILocation(line: 17, column: 17, scope: !3176)
!3183 = !DILocalVariable(name: "p", scope: !3176, file: !502, line: 11, type: !14)
!3184 = !DILocation(line: 18, column: 13, scope: !3176)
!3185 = !DILocation(line: 18, column: 17, scope: !3176)
!3186 = !DILocation(line: 18, column: 7, scope: !3176)
!3187 = !DILocation(line: 19, column: 13, scope: !3176)
!3188 = !DILocation(line: 19, column: 17, scope: !3176)
!3189 = !DILocation(line: 19, column: 7, scope: !3176)
!3190 = !DILocation(line: 20, column: 13, scope: !3176)
!3191 = !DILocation(line: 20, column: 17, scope: !3176)
!3192 = !DILocation(line: 20, column: 7, scope: !3176)
!3193 = !DILocalVariable(name: "top_p", scope: !3176, file: !502, line: 23, type: !14)
!3194 = !DILocation(line: 24, column: 37, scope: !3176)
!3195 = !DILocation(line: 24, column: 52, scope: !3176)
!3196 = !DILocation(line: 24, column: 43, scope: !3176)
!3197 = !DILocation(line: 24, column: 59, scope: !3176)
!3198 = !DILocalVariable(name: "out", scope: !3176, file: !502, line: 24, type: !14)
!3199 = !DILocation(line: 25, column: 5, scope: !3176)
!3200 = distinct !DISubprogram(name: "lincomb", scope: !502, file: !502, line: 70, type: !1532, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3201 = !DILocalVariable(name: "a", arg: 1, scope: !3200, file: !502, line: 70, type: !49)
!3202 = !DILocation(line: 0, scope: !3200)
!3203 = !DILocalVariable(name: "b", arg: 2, scope: !3200, file: !502, line: 71, type: !49)
!3204 = !DILocalVariable(name: "n", arg: 3, scope: !3200, file: !502, line: 71, type: !45)
!3205 = !DILocalVariable(name: "m", arg: 4, scope: !3200, file: !502, line: 71, type: !45)
!3206 = !DILocalVariable(name: "ret", scope: !3200, file: !502, line: 72, type: !14)
!3207 = !DILocalVariable(name: "i", scope: !3208, file: !502, line: 73, type: !45)
!3208 = distinct !DILexicalBlock(scope: !3200, file: !502, line: 73, column: 5)
!3209 = !DILocation(line: 0, scope: !3208)
!3210 = !DILocation(line: 73, column: 10, scope: !3208)
!3211 = !DILocation(line: 73, scope: !3208)
!3212 = !DILocation(line: 73, column: 23, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3208, file: !502, line: 73, column: 5)
!3214 = !DILocation(line: 73, column: 5, scope: !3208)
!3215 = !DILocation(line: 74, column: 27, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !502, line: 73, column: 41)
!3217 = !DILocation(line: 74, column: 33, scope: !3216)
!3218 = !DILocation(line: 74, column: 21, scope: !3216)
!3219 = !DILocation(line: 74, column: 15, scope: !3216)
!3220 = !DILocation(line: 73, column: 28, scope: !3213)
!3221 = !DILocation(line: 73, column: 35, scope: !3213)
!3222 = !DILocation(line: 73, column: 5, scope: !3213)
!3223 = distinct !{!3223, !3214, !3224, !307}
!3224 = !DILocation(line: 75, column: 5, scope: !3208)
!3225 = !DILocation(line: 76, column: 5, scope: !3200)
!3226 = distinct !DISubprogram(name: "add_f", scope: !502, file: !502, line: 43, type: !1524, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3227 = !DILocalVariable(name: "a", arg: 1, scope: !3226, file: !502, line: 43, type: !14)
!3228 = !DILocation(line: 0, scope: !3226)
!3229 = !DILocalVariable(name: "b", arg: 2, scope: !3226, file: !502, line: 43, type: !14)
!3230 = !DILocation(line: 44, column: 14, scope: !3226)
!3231 = !DILocation(line: 44, column: 5, scope: !3226)
