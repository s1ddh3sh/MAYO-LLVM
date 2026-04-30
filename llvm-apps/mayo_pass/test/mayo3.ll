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
    #dbg_value(ptr %p, !111, !DIExpression(), !112)
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
  %call4 = call i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 %call5, !145, !DIExpression(), !112)
  %cmp6.not = icmp eq i32 %call5, 0, !dbg !149
  br i1 %cmp6.not, label %if.end9, label %err, !dbg !149

if.end9:                                          ; preds = %if.end
  %call11 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !151
    #dbg_value(i32 %call11, !145, !DIExpression(), !112)
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !152
  br i1 %cmp12.not, label %if.end15, label %err, !dbg !152

if.end15:                                         ; preds = %if.end9
  %1 = load i32, ptr %msglen, align 4, !dbg !154
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !155
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !156
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !156

if.end21:                                         ; preds = %if.end15
  %2 = load i32, ptr %smlen, align 4, !dbg !158
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !159
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
  %call32 = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !166
    #dbg_value(i32 %call32, !145, !DIExpression(), !112)
  %sext = sub nsw i32 0, %call32, !dbg !167
  br label %err, !dbg !167

err:                                              ; preds = %if.end30, %if.end21, %lor.lhs.false, %if.end15, %if.end9, %if.end, %entry
  %res.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end9 ], [ -1, %if.end15 ], [ -1, %lor.lhs.false ], [ -1, %if.end21 ], [ %sext, %if.end30 ], !dbg !112
    #dbg_value(i32 %res.0, !145, !DIExpression(), !112)
    #dbg_label(!169, !170)
  call void @free(ptr noundef %call) #8, !dbg !171
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 32) #8, !dbg !172
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !175 {
entry:
    #dbg_value(ptr %p, !206, !DIExpression(), !207)
    #dbg_value(ptr %pk, !208, !DIExpression(), !207)
    #dbg_value(ptr %sk, !209, !DIExpression(), !207)
    #dbg_value(i32 0, !210, !DIExpression(), !207)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !211
    #dbg_value(i32 %call, !210, !DIExpression(), !207)
    #dbg_label(!212, !213)
  ret i32 %call, !dbg !214
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !215 {
entry:
  %S = alloca [556 x i8], align 1
  %P = alloca [48762 x i64], align 8
  %P3 = alloca [700 x i64], align 8
  %O = alloca [1080 x i8], align 1
  %P3_upper = alloca [385 x i64], align 8
    #dbg_value(ptr %p, !216, !DIExpression(), !217)
    #dbg_value(ptr %cpk, !218, !DIExpression(), !217)
    #dbg_value(ptr %csk, !219, !DIExpression(), !217)
    #dbg_value(i32 0, !220, !DIExpression(), !217)
    #dbg_value(ptr %csk, !221, !DIExpression(), !217)
    #dbg_declare(ptr %S, !222, !DIExpression(), !226)
    #dbg_declare(ptr %P, !227, !DIExpression(), !231)
    #dbg_declare(ptr %P3, !232, !DIExpression(), !236)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5600) %P3, i8 0, i32 5600, i1 false), !dbg !236
    #dbg_declare(ptr %O, !237, !DIExpression(), !241)
    #dbg_value(i32 7, !242, !DIExpression(), !217)
    #dbg_value(i32 108, !244, !DIExpression(), !217)
    #dbg_value(i32 108, !245, !DIExpression(), !217)
    #dbg_value(i32 10, !246, !DIExpression(), !217)
    #dbg_value(i32 540, !247, !DIExpression(), !217)
    #dbg_value(i32 41202, !248, !DIExpression(), !217)
    #dbg_value(i32 385, !249, !DIExpression(), !217)
    #dbg_value(i32 16, !250, !DIExpression(), !217)
    #dbg_value(i32 32, !251, !DIExpression(), !217)
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 329616, !dbg !253
    #dbg_value(ptr %add.ptr, !254, !DIExpression(), !217)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 32) #8, !dbg !255
  %cmp.not = icmp eq i32 %call, 0, !dbg !257
  br i1 %cmp.not, label %if.end, label %err, !dbg !257

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #8, !dbg !258
    #dbg_value(ptr %S, !259, !DIExpression(), !217)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !260
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1080) #6, !dbg !261
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !262
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !263
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !264
    #dbg_declare(ptr %P3_upper, !265, !DIExpression(), !269)
  call void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 10) #6, !dbg !270
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !271
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 55, i32 noundef 108) #6, !dbg !272
  br label %err, !dbg !272

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !217
    #dbg_value(i32 %ret.0, !220, !DIExpression(), !217)
    #dbg_label(!273, !274)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1080) #8, !dbg !275
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 60480) #8, !dbg !276
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 5600) #8, !dbg !277
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 376164, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !323
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 6966, i32 noundef 108) #6, !dbg !324
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
    #dbg_value(i32 7, !337, !DIExpression(), !332)
    #dbg_value(i32 108, !338, !DIExpression(), !332)
    #dbg_value(i32 10, !339, !DIExpression(), !332)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !340
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 7, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 108, i32 noundef 10, i32 noundef 10) #6, !dbg !341
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 7, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 1) #6, !dbg !385
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
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !462
  %16 = load i64, ptr %arrayidx.4, align 8, !dbg !462
  %and.4 = and i64 %16, 1229782938247303441, !dbg !465
  %and1.4 = and i32 %call, 255, !dbg !466
  %conv.4 = zext nneg i32 %and1.4 to i64, !dbg !467
  %mul.4 = mul i64 %and.4, %conv.4, !dbg !468
  %shr.4 = lshr i64 %16, 1, !dbg !469
  %and3.4 = and i64 %shr.4, 1229782938247303441, !dbg !470
  %shr4.4 = lshr i32 %call, 8, !dbg !471
  %and5.4 = and i32 %shr4.4, 15, !dbg !472
  %conv6.4 = zext nneg i32 %and5.4 to i64, !dbg !473
  %mul7.4 = mul nuw i64 %and3.4, %conv6.4, !dbg !474
  %xor.4 = xor i64 %mul.4, %mul7.4, !dbg !475
  %arrayidx8.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !476
  %17 = load i64, ptr %arrayidx8.4, align 8, !dbg !476
  %shr9.4 = lshr i64 %17, 2, !dbg !477
  %and10.4 = and i64 %shr9.4, 1229782938247303441, !dbg !478
  %shr11.4 = lshr i32 %call, 16, !dbg !479
  %and12.4 = and i32 %shr11.4, 15, !dbg !480
  %conv13.4 = zext nneg i32 %and12.4 to i64, !dbg !481
  %mul14.4 = mul nuw i64 %and10.4, %conv13.4, !dbg !482
  %xor15.4 = xor i64 %xor.4, %mul14.4, !dbg !483
  %arrayidx16.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !484
  %18 = load i64, ptr %arrayidx16.4, align 8, !dbg !484
  %shr17.4 = lshr i64 %18, 3, !dbg !485
  %and18.4 = and i64 %shr17.4, 1229782938247303441, !dbg !486
  %shr19.4 = lshr i32 %call, 24, !dbg !487
  %and20.4 = and i32 %shr19.4, 15, !dbg !488
  %conv21.4 = zext nneg i32 %and20.4 to i64, !dbg !489
  %mul22.4 = mul nuw i64 %and18.4, %conv21.4, !dbg !490
  %xor23.4 = xor i64 %xor15.4, %mul22.4, !dbg !491
  %arrayidx24.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !493
  %19 = load i64, ptr %arrayidx24.4, align 8, !dbg !492
  %xor25.4 = xor i64 %19, %xor23.4, !dbg !492
  store i64 %xor25.4, ptr %arrayidx24.4, align 8, !dbg !492
    #dbg_value(i32 5, !459, !DIExpression(), !461)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !462
  %20 = load i64, ptr %arrayidx.5, align 8, !dbg !462
  %and.5 = and i64 %20, 1229782938247303441, !dbg !465
  %and1.5 = and i32 %call, 255, !dbg !466
  %conv.5 = zext nneg i32 %and1.5 to i64, !dbg !467
  %mul.5 = mul i64 %and.5, %conv.5, !dbg !468
  %shr.5 = lshr i64 %20, 1, !dbg !469
  %and3.5 = and i64 %shr.5, 1229782938247303441, !dbg !470
  %shr4.5 = lshr i32 %call, 8, !dbg !471
  %and5.5 = and i32 %shr4.5, 15, !dbg !472
  %conv6.5 = zext nneg i32 %and5.5 to i64, !dbg !473
  %mul7.5 = mul nuw i64 %and3.5, %conv6.5, !dbg !474
  %xor.5 = xor i64 %mul.5, %mul7.5, !dbg !475
  %arrayidx8.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !476
  %21 = load i64, ptr %arrayidx8.5, align 8, !dbg !476
  %shr9.5 = lshr i64 %21, 2, !dbg !477
  %and10.5 = and i64 %shr9.5, 1229782938247303441, !dbg !478
  %shr11.5 = lshr i32 %call, 16, !dbg !479
  %and12.5 = and i32 %shr11.5, 15, !dbg !480
  %conv13.5 = zext nneg i32 %and12.5 to i64, !dbg !481
  %mul14.5 = mul nuw i64 %and10.5, %conv13.5, !dbg !482
  %xor15.5 = xor i64 %xor.5, %mul14.5, !dbg !483
  %arrayidx16.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !484
  %22 = load i64, ptr %arrayidx16.5, align 8, !dbg !484
  %shr17.5 = lshr i64 %22, 3, !dbg !485
  %and18.5 = and i64 %shr17.5, 1229782938247303441, !dbg !486
  %shr19.5 = lshr i32 %call, 24, !dbg !487
  %and20.5 = and i32 %shr19.5, 15, !dbg !488
  %conv21.5 = zext nneg i32 %and20.5 to i64, !dbg !489
  %mul22.5 = mul nuw i64 %and18.5, %conv21.5, !dbg !490
  %xor23.5 = xor i64 %xor15.5, %mul22.5, !dbg !491
  %arrayidx24.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !493
  %23 = load i64, ptr %arrayidx24.5, align 8, !dbg !492
  %xor25.5 = xor i64 %23, %xor23.5, !dbg !492
  store i64 %xor25.5, ptr %arrayidx24.5, align 8, !dbg !492
    #dbg_value(i32 6, !459, !DIExpression(), !461)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !462
  %24 = load i64, ptr %arrayidx.6, align 8, !dbg !462
  %and.6 = and i64 %24, 1229782938247303441, !dbg !465
  %and1.6 = and i32 %call, 255, !dbg !466
  %conv.6 = zext nneg i32 %and1.6 to i64, !dbg !467
  %mul.6 = mul i64 %and.6, %conv.6, !dbg !468
  %shr.6 = lshr i64 %24, 1, !dbg !469
  %and3.6 = and i64 %shr.6, 1229782938247303441, !dbg !470
  %shr4.6 = lshr i32 %call, 8, !dbg !471
  %and5.6 = and i32 %shr4.6, 15, !dbg !472
  %conv6.6 = zext nneg i32 %and5.6 to i64, !dbg !473
  %mul7.6 = mul nuw i64 %and3.6, %conv6.6, !dbg !474
  %xor.6 = xor i64 %mul.6, %mul7.6, !dbg !475
  %arrayidx8.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !476
  %25 = load i64, ptr %arrayidx8.6, align 8, !dbg !476
  %shr9.6 = lshr i64 %25, 2, !dbg !477
  %and10.6 = and i64 %shr9.6, 1229782938247303441, !dbg !478
  %shr11.6 = lshr i32 %call, 16, !dbg !479
  %and12.6 = and i32 %shr11.6, 15, !dbg !480
  %conv13.6 = zext nneg i32 %and12.6 to i64, !dbg !481
  %mul14.6 = mul nuw i64 %and10.6, %conv13.6, !dbg !482
  %xor15.6 = xor i64 %xor.6, %mul14.6, !dbg !483
  %arrayidx16.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !484
  %26 = load i64, ptr %arrayidx16.6, align 8, !dbg !484
  %shr17.6 = lshr i64 %26, 3, !dbg !485
  %and18.6 = and i64 %shr17.6, 1229782938247303441, !dbg !486
  %shr19.6 = lshr i32 %call, 24, !dbg !487
  %and20.6 = and i32 %shr19.6, 15, !dbg !488
  %conv21.6 = zext nneg i32 %and20.6 to i64, !dbg !489
  %mul22.6 = mul nuw i64 %and18.6, %conv21.6, !dbg !490
  %xor23.6 = xor i64 %xor15.6, %mul22.6, !dbg !491
  %arrayidx24.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !493
  %27 = load i64, ptr %arrayidx24.6, align 8, !dbg !492
  %xor25.6 = xor i64 %27, %xor23.6, !dbg !492
  store i64 %xor25.6, ptr %arrayidx24.6, align 8, !dbg !492
    #dbg_value(i32 7, !459, !DIExpression(), !461)
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
  %tmp = alloca [7 x i64], align 8
    #dbg_value(ptr %in, !578, !DIExpression(), !579)
    #dbg_value(ptr %out, !580, !DIExpression(), !579)
    #dbg_value(i32 %vecs, !581, !DIExpression(), !579)
    #dbg_value(i32 %m, !582, !DIExpression(), !579)
  %add = add nsw i32 %m, 15, !dbg !583
  %div = sdiv i32 %add, 16, !dbg !584
    #dbg_value(i32 %div, !585, !DIExpression(), !579)
    #dbg_value(ptr %out, !586, !DIExpression(), !579)
    #dbg_declare(ptr %tmp, !587, !DIExpression(), !591)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %tmp, i8 0, i32 56, i1 false), !dbg !591
    #dbg_value(i32 %vecs, !592, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !594)
  br label %for.cond, !dbg !595

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !592, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !594)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !596
  br i1 %cmp, label %for.body, label %for.end, !dbg !598

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !599
    #dbg_value(i32 %i.0, !592, !DIExpression(), !594)
  %mul = mul nsw i32 %i.0, %m, !dbg !600
  %div1 = sdiv i32 %mul, 2, !dbg !602
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !603
  %div2 = sdiv i32 %m, 2, !dbg !604
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef %div2) #8, !dbg !605
  %mul3 = mul nsw i32 %i.0, %div, !dbg !606
  %mul4 = shl i32 %mul3, 3, !dbg !607
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !608
  %mul7 = shl nsw i32 %div, 3, !dbg !609
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef %mul7) #8, !dbg !610
    #dbg_value(i32 %i.0, !592, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !594)
  br label %for.cond, !dbg !611, !llvm.loop !612

for.end:                                          ; preds = %for.cond
  ret void, !dbg !614
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !615 {
entry:
  %S = alloca [556 x i8], align 1
    #dbg_value(ptr %p, !618, !DIExpression(), !619)
    #dbg_value(ptr %csk, !620, !DIExpression(), !619)
    #dbg_value(ptr %sk, !621, !DIExpression(), !619)
    #dbg_value(i32 0, !622, !DIExpression(), !619)
    #dbg_declare(ptr %S, !623, !DIExpression(), !624)
    #dbg_value(ptr %sk, !625, !DIExpression(), !619)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !626
    #dbg_value(ptr %add.ptr1, !627, !DIExpression(), !619)
    #dbg_value(i32 10, !628, !DIExpression(), !619)
    #dbg_value(i32 108, !629, !DIExpression(), !619)
    #dbg_value(i32 540, !630, !DIExpression(), !619)
    #dbg_value(i32 16, !631, !DIExpression(), !619)
    #dbg_value(i32 32, !632, !DIExpression(), !619)
    #dbg_value(ptr %csk, !633, !DIExpression(), !619)
    #dbg_value(ptr %S, !634, !DIExpression(), !619)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #8, !dbg !635
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !636
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1080) #6, !dbg !637
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !638
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !639
    #dbg_value(ptr %add.ptr5, !640, !DIExpression(), !619)
    #dbg_value(ptr %sk, !641, !DIExpression(), !619)
    #dbg_value(ptr %add.ptr5, !642, !DIExpression(), !619)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !643
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 556) #8, !dbg !644
  ret i32 0, !dbg !645
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !646 {
entry:
    #dbg_value(ptr %p, !647, !DIExpression(), !648)
    #dbg_value(ptr %P1, !649, !DIExpression(), !648)
    #dbg_value(ptr %O, !650, !DIExpression(), !648)
    #dbg_value(ptr %acc, !651, !DIExpression(), !648)
    #dbg_value(i32 10, !652, !DIExpression(), !648)
    #dbg_value(i32 108, !653, !DIExpression(), !648)
    #dbg_value(i32 7, !654, !DIExpression(), !648)
    #dbg_value(i32 0, !655, !DIExpression(), !648)
    #dbg_value(i32 0, !656, !DIExpression(), !658)
  br label %for.cond, !dbg !659

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 108, %entry ], !dbg !660
  %bs_mat_entries_used.0 = phi i32 [ %bs_mat_entries_used.1, %for.inc27 ], [ 0, %entry ], !dbg !660
  %r.0 = phi i32 [ %inc28, %for.inc27 ], [ 0, %entry ], !dbg !661
    #dbg_value(i32 %r.0, !656, !DIExpression(), !658)
    #dbg_value(i32 %bs_mat_entries_used.0, !655, !DIExpression(), !648)
  %exitcond2.not = icmp eq i32 %r.0, 108, !dbg !662
  br i1 %exitcond2.not, label %for.end29, label %for.cond1.preheader, !dbg !664

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !665
  br label %for.cond1, !dbg !665

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !648
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !668
    #dbg_value(i32 %c.0, !669, !DIExpression(), !670)
    #dbg_value(i32 %bs_mat_entries_used.1, !655, !DIExpression(), !648)
  %exitcond1.not = icmp eq i32 %bs_mat_entries_used.1, %0, !dbg !671
  br i1 %exitcond1.not, label %for.inc27, label %for.body3, !dbg !665

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !673
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !673

for.cond5.preheader:                              ; preds = %for.body3
  %add.ptr.idx.1 = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !676
  %add.ptr.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.1, !dbg !676
  %mul8.1 = mul nuw nsw i32 %c.0, 10, !dbg !680
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.1, !dbg !681
  br label %for.cond5, !dbg !682

for.cond5:                                        ; preds = %for.body7.2, %for.cond5.preheader
  %k.0 = phi i32 [ 0, %for.cond5.preheader ], [ %add23.3, %for.body7.2 ], !dbg !683
    #dbg_value(i32 %k.0, !684, !DIExpression(), !685)
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !676
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !676
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !680
  %2 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !681
  %arrayidx = getelementptr inbounds nuw i8, ptr %2, i32 %k.0, !dbg !681
  %3 = load i8, ptr %arrayidx, align 1, !dbg !681
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !686
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !687
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !688
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !688
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr, i8 noundef zeroext %3, ptr noundef %add.ptr13) #6, !dbg !689
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !690
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !690
  %mul16 = mul nuw nsw i32 %r.0, 10, !dbg !691
  %4 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !692
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %4, i32 %k.0, !dbg !692
  %5 = load i8, ptr %arrayidx18, align 1, !dbg !692
  %mul19 = mul nuw nsw i32 %c.0, 10, !dbg !693
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !694
  %add.ptr22.idx = mul nuw nsw i32 %add20, 56, !dbg !695
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15, i8 noundef zeroext %5, ptr noundef %add.ptr22) #6, !dbg !696
    #dbg_value(i32 %k.0, !684, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !685)
  %add23 = or disjoint i32 %k.0, 1, !dbg !697
    #dbg_value(i32 %add23, !684, !DIExpression(), !685)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %1, i32 %add23, !dbg !681
  %6 = load i8, ptr %arrayidx.1, align 1, !dbg !681
  %mul10.1 = mul nuw nsw i32 %r.0, 10, !dbg !686
  %add11.1 = add nuw nsw i32 %mul10.1, %add23, !dbg !687
  %add.ptr13.idx.1 = mul nuw nsw i32 %add11.1, 56, !dbg !688
  %add.ptr13.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.1, !dbg !688
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr.1, i8 noundef zeroext %6, ptr noundef nonnull %add.ptr13.1) #6, !dbg !689
  %add.ptr15.idx.1 = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !690
  %add.ptr15.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.1, !dbg !690
  %mul16.1 = mul nuw nsw i32 %r.0, 10, !dbg !691
  %7 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.1, !dbg !692
  %arrayidx18.1 = getelementptr inbounds nuw i8, ptr %7, i32 %add23, !dbg !692
  %8 = load i8, ptr %arrayidx18.1, align 1, !dbg !692
  %mul19.1 = mul nuw nsw i32 %c.0, 10, !dbg !693
  %add20.1 = add nuw nsw i32 %mul19.1, %add23, !dbg !694
  %add.ptr22.idx.1 = mul nuw nsw i32 %add20.1, 56, !dbg !695
  %add.ptr22.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.1, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15.1, i8 noundef zeroext %8, ptr noundef nonnull %add.ptr22.1) #6, !dbg !696
    #dbg_value(i32 %k.0, !684, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !685)
  %exitcond.2.not = icmp eq i32 %k.0, 8, !dbg !698
  br i1 %exitcond.2.not, label %for.inc25, label %for.body7.2, !dbg !682

for.body7.2:                                      ; preds = %for.cond5
  %add23.1 = or disjoint i32 %k.0, 2, !dbg !697
    #dbg_value(i32 %add23.1, !684, !DIExpression(), !685)
  %add.ptr.idx.2 = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !676
  %add.ptr.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.2, !dbg !676
  %mul8.2 = mul nuw nsw i32 %c.0, 10, !dbg !680
  %9 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.2, !dbg !681
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %9, i32 %add23.1, !dbg !681
  %10 = load i8, ptr %arrayidx.2, align 1, !dbg !681
  %mul10.2 = mul nuw nsw i32 %r.0, 10, !dbg !686
  %add11.2 = add nuw nsw i32 %mul10.2, %add23.1, !dbg !687
  %add.ptr13.idx.2 = mul nuw nsw i32 %add11.2, 56, !dbg !688
  %add.ptr13.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.2, !dbg !688
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr.2, i8 noundef zeroext %10, ptr noundef nonnull %add.ptr13.2) #6, !dbg !689
  %add.ptr15.idx.2 = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !690
  %add.ptr15.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.2, !dbg !690
  %mul16.2 = mul nuw nsw i32 %r.0, 10, !dbg !691
  %11 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.2, !dbg !692
  %arrayidx18.2 = getelementptr inbounds nuw i8, ptr %11, i32 %add23.1, !dbg !692
  %12 = load i8, ptr %arrayidx18.2, align 1, !dbg !692
  %mul19.2 = mul nuw nsw i32 %c.0, 10, !dbg !693
  %add20.2 = add nuw nsw i32 %mul19.2, %add23.1, !dbg !694
  %add.ptr22.idx.2 = mul nuw nsw i32 %add20.2, 56, !dbg !695
  %add.ptr22.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.2, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15.2, i8 noundef zeroext %12, ptr noundef nonnull %add.ptr22.2) #6, !dbg !696
    #dbg_value(i32 %k.0, !684, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !685)
  %add23.2 = or disjoint i32 %k.0, 3, !dbg !697
    #dbg_value(i32 %add23.2, !684, !DIExpression(), !685)
  %add.ptr.idx.3 = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !676
  %add.ptr.3 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.3, !dbg !676
  %mul8.3 = mul nuw nsw i32 %c.0, 10, !dbg !680
  %13 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8.3, !dbg !681
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %13, i32 %add23.2, !dbg !681
  %14 = load i8, ptr %arrayidx.3, align 1, !dbg !681
  %mul10.3 = mul nuw nsw i32 %r.0, 10, !dbg !686
  %add11.3 = add nuw nsw i32 %mul10.3, %add23.2, !dbg !687
  %add.ptr13.idx.3 = mul nuw nsw i32 %add11.3, 56, !dbg !688
  %add.ptr13.3 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.3, !dbg !688
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr.3, i8 noundef zeroext %14, ptr noundef nonnull %add.ptr13.3) #6, !dbg !689
  %add.ptr15.idx.3 = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !690
  %add.ptr15.3 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.3, !dbg !690
  %mul16.3 = mul nuw nsw i32 %r.0, 10, !dbg !691
  %15 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16.3, !dbg !692
  %arrayidx18.3 = getelementptr inbounds nuw i8, ptr %15, i32 %add23.2, !dbg !692
  %16 = load i8, ptr %arrayidx18.3, align 1, !dbg !692
  %mul19.3 = mul nuw nsw i32 %c.0, 10, !dbg !693
  %add20.3 = add nuw nsw i32 %mul19.3, %add23.2, !dbg !694
  %add.ptr22.idx.3 = mul nuw nsw i32 %add20.3, 56, !dbg !695
  %add.ptr22.3 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.3, !dbg !695
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15.3, i8 noundef zeroext %16, ptr noundef nonnull %add.ptr22.3) #6, !dbg !696
  %add23.3 = add nuw nsw i32 %k.0, 4, !dbg !697
    #dbg_value(i32 %add23.3, !684, !DIExpression(), !685)
  br label %for.cond5, !dbg !699, !llvm.loop !700

for.inc25:                                        ; preds = %for.cond5, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !702
    #dbg_value(i32 %bs_mat_entries_used.2, !655, !DIExpression(), !648)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !703
    #dbg_value(i32 %inc, !669, !DIExpression(), !670)
  br label %for.cond1, !dbg !704, !llvm.loop !705

for.inc27:                                        ; preds = %for.cond1
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !707
    #dbg_value(i32 %inc28, !656, !DIExpression(), !658)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !708
  br label %for.cond, !dbg !708, !llvm.loop !709

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !711
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !712 {
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
    #dbg_value(ptr %p, !716, !DIExpression(), !717)
    #dbg_value(ptr %sig, !718, !DIExpression(), !717)
    #dbg_value(ptr %siglen, !719, !DIExpression(), !717)
    #dbg_value(ptr %m, !720, !DIExpression(), !717)
    #dbg_value(i32 %mlen, !721, !DIExpression(), !717)
    #dbg_value(ptr %csk, !722, !DIExpression(), !717)
    #dbg_value(i32 0, !723, !DIExpression(), !717)
    #dbg_declare(ptr %tenc, !724, !DIExpression(), !728)
    #dbg_declare(ptr %t, !729, !DIExpression(), !733)
    #dbg_declare(ptr %y, !734, !DIExpression(), !735)
    #dbg_declare(ptr %salt, !736, !DIExpression(), !737)
    #dbg_declare(ptr %V, !738, !DIExpression(), !742)
    #dbg_declare(ptr %Vdec, !743, !DIExpression(), !747)
    #dbg_declare(ptr %A, !748, !DIExpression(), !752)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12432) %A, i8 0, i32 12432, i1 false), !dbg !752
    #dbg_declare(ptr %x, !753, !DIExpression(), !757)
    #dbg_declare(ptr %r, !758, !DIExpression(), !762)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(111) %r, i8 0, i32 111, i1 false), !dbg !762
    #dbg_declare(ptr %s, !763, !DIExpression(), !764)
    #dbg_declare(ptr %sk, !765, !DIExpression(), !766)
    #dbg_declare(ptr %Ox, !767, !DIExpression(), !768)
    #dbg_declare(ptr %tmp, !769, !DIExpression(), !773)
    #dbg_value(i32 108, !774, !DIExpression(), !717)
    #dbg_value(i32 118, !775, !DIExpression(), !717)
    #dbg_value(i32 10, !776, !DIExpression(), !717)
    #dbg_value(i32 11, !777, !DIExpression(), !717)
    #dbg_value(i32 108, !778, !DIExpression(), !717)
    #dbg_value(i32 54, !779, !DIExpression(), !717)
    #dbg_value(i32 54, !780, !DIExpression(), !717)
    #dbg_value(i32 55, !781, !DIExpression(), !717)
    #dbg_value(i32 681, !782, !DIExpression(), !717)
    #dbg_value(i32 111, !783, !DIExpression(), !717)
    #dbg_value(i32 48, !784, !DIExpression(), !717)
    #dbg_value(i32 32, !785, !DIExpression(), !717)
    #dbg_value(i32 32, !786, !DIExpression(), !717)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !787
    #dbg_value(i32 %call, !723, !DIExpression(), !717)
  %cmp.not = icmp eq i32 %call, 0, !dbg !788
  br i1 %cmp.not, label %if.end, label %err, !dbg !788

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !790, !DIExpression(), !717)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #8, !dbg !791
    #dbg_value(ptr %sk, !792, !DIExpression(), !717)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !793
    #dbg_value(ptr %add.ptr, !794, !DIExpression(), !717)
    #dbg_declare(ptr %Mtmp, !795, !DIExpression(), !799)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6160) %Mtmp, i8 0, i32 6160, i1 false), !dbg !799
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !800
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 32) #8, !dbg !802
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !803
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !803

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !804
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 32) #8, !dbg !805
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 112) #8, !dbg !806
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !807
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 32) #8, !dbg !808
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 112, !dbg !809
    #dbg_value(ptr %add.ptr24, !810, !DIExpression(), !717)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !811
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !812
    #dbg_value(i32 0, !813, !DIExpression(), !815)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 594, !dbg !816
  br label %for.cond, !dbg !819

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !820
    #dbg_value(i32 %ctr.0, !813, !DIExpression(), !815)
  %exitcond2.not = icmp eq i32 %ctr.0, 256, !dbg !821
  br i1 %exitcond2.not, label %for.end76, label %for.body, !dbg !822

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !823
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !824
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 649, ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !825
    #dbg_value(i32 0, !826, !DIExpression(), !828)
    #dbg_value(i32 0, !826, !DIExpression(), !828)
  call fastcc void @decode(ptr noundef nonnull %V, ptr noundef nonnull %Vdec, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 1, !826, !DIExpression(), !828)
  %add.ptr39.1 = getelementptr inbounds nuw i8, ptr %V, i32 54, !dbg !832
  %add.ptr42.1 = getelementptr inbounds nuw i8, ptr %Vdec, i32 108, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.1, ptr noundef nonnull %add.ptr42.1, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 2, !826, !DIExpression(), !828)
  %add.ptr39.2 = getelementptr inbounds nuw i8, ptr %V, i32 108, !dbg !832
  %add.ptr42.2 = getelementptr inbounds nuw i8, ptr %Vdec, i32 216, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.2, ptr noundef nonnull %add.ptr42.2, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 3, !826, !DIExpression(), !828)
  %add.ptr39.3 = getelementptr inbounds nuw i8, ptr %V, i32 162, !dbg !832
  %add.ptr42.3 = getelementptr inbounds nuw i8, ptr %Vdec, i32 324, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.3, ptr noundef nonnull %add.ptr42.3, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 4, !826, !DIExpression(), !828)
  %add.ptr39.4 = getelementptr inbounds nuw i8, ptr %V, i32 216, !dbg !832
  %add.ptr42.4 = getelementptr inbounds nuw i8, ptr %Vdec, i32 432, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.4, ptr noundef nonnull %add.ptr42.4, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 5, !826, !DIExpression(), !828)
  %add.ptr39.5 = getelementptr inbounds nuw i8, ptr %V, i32 270, !dbg !832
  %add.ptr42.5 = getelementptr inbounds nuw i8, ptr %Vdec, i32 540, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.5, ptr noundef nonnull %add.ptr42.5, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 6, !826, !DIExpression(), !828)
  %add.ptr39.6 = getelementptr inbounds nuw i8, ptr %V, i32 324, !dbg !832
  %add.ptr42.6 = getelementptr inbounds nuw i8, ptr %Vdec, i32 648, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.6, ptr noundef nonnull %add.ptr42.6, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 7, !826, !DIExpression(), !828)
  %add.ptr39.7 = getelementptr inbounds nuw i8, ptr %V, i32 378, !dbg !832
  %add.ptr42.7 = getelementptr inbounds nuw i8, ptr %Vdec, i32 756, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.7, ptr noundef nonnull %add.ptr42.7, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 8, !826, !DIExpression(), !828)
  %add.ptr39.8 = getelementptr inbounds nuw i8, ptr %V, i32 432, !dbg !832
  %add.ptr42.8 = getelementptr inbounds nuw i8, ptr %Vdec, i32 864, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.8, ptr noundef nonnull %add.ptr42.8, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 9, !826, !DIExpression(), !828)
  %add.ptr39.9 = getelementptr inbounds nuw i8, ptr %V, i32 486, !dbg !832
  %add.ptr42.9 = getelementptr inbounds nuw i8, ptr %Vdec, i32 972, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.9, ptr noundef nonnull %add.ptr42.9, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 10, !826, !DIExpression(), !828)
  %add.ptr39.10 = getelementptr inbounds nuw i8, ptr %V, i32 540, !dbg !832
  %add.ptr42.10 = getelementptr inbounds nuw i8, ptr %Vdec, i32 1080, !dbg !833
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.10, ptr noundef nonnull %add.ptr42.10, i32 noundef 108) #6, !dbg !829
    #dbg_value(i32 11, !826, !DIExpression(), !828)
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !834
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !835
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !836
    #dbg_value(i32 0, !837, !DIExpression(), !839)
  br label %for.cond52, !dbg !840

for.cond52:                                       ; preds = %for.body55.4, %for.body
  %i51.0 = phi i32 [ 0, %for.body ], [ %inc58.7, %for.body55.4 ], !dbg !841
    #dbg_value(i32 %i51.0, !837, !DIExpression(), !839)
  %0 = mul nuw nsw i32 %i51.0, 111, !dbg !842
  %sub = add nuw nsw i32 %0, 110, !dbg !845
  %arrayidx = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub, !dbg !846
  store i8 0, ptr %arrayidx, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !839)
  %1 = mul nuw i32 %i51.0, 111, !dbg !842
  %sub.1 = add nuw i32 %1, 221, !dbg !845
  %arrayidx.1 = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub.1, !dbg !846
  store i8 0, ptr %arrayidx.1, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !839)
  %2 = mul nuw i32 %i51.0, 111, !dbg !842
  %sub.2 = add nuw i32 %2, 332, !dbg !845
  %arrayidx.2 = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub.2, !dbg !846
  store i8 0, ptr %arrayidx.2, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !839)
  %3 = mul nuw i32 %i51.0, 111, !dbg !842
  %sub.3 = add nuw i32 %3, 443, !dbg !845
  %arrayidx.3 = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub.3, !dbg !846
  store i8 0, ptr %arrayidx.3, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value), !839)
  %exitcond1.4.not = icmp eq i32 %i51.0, 104, !dbg !848
  br i1 %exitcond1.4.not, label %for.end59, label %for.body55.4, !dbg !849

for.body55.4:                                     ; preds = %for.cond52
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value), !839)
  %4 = mul nuw i32 %i51.0, 111, !dbg !842
  %sub.4 = add nuw i32 %4, 554, !dbg !845
  %arrayidx.4 = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub.4, !dbg !846
  store i8 0, ptr %arrayidx.4, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 5, DW_OP_or, DW_OP_stack_value), !839)
  %5 = mul nuw i32 %i51.0, 111, !dbg !842
  %sub.5 = add nuw i32 %5, 665, !dbg !845
  %arrayidx.5 = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub.5, !dbg !846
  store i8 0, ptr %arrayidx.5, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 6, DW_OP_or, DW_OP_stack_value), !839)
  %6 = mul nuw i32 %i51.0, 111, !dbg !842
  %sub.6 = add nuw i32 %6, 776, !dbg !845
  %arrayidx.6 = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub.6, !dbg !846
  store i8 0, ptr %arrayidx.6, align 1, !dbg !847
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !839)
    #dbg_value(i32 %i51.0, !837, !DIExpression(DW_OP_constu, 7, DW_OP_or, DW_OP_stack_value), !839)
  %7 = mul nuw i32 %i51.0, 111, !dbg !842
  %sub.7 = add nuw i32 %7, 887, !dbg !845
  %arrayidx.7 = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub.7, !dbg !846
  store i8 0, ptr %arrayidx.7, align 1, !dbg !847
  %inc58.7 = add nuw nsw i32 %i51.0, 8, !dbg !850
    #dbg_value(i32 %inc58.7, !837, !DIExpression(), !839)
  br label %for.cond52, !dbg !851, !llvm.loop !852

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 110) #6, !dbg !854
  %call67 = call i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 11, i32 noundef 10, i32 noundef 108, i32 noundef 111) #6, !dbg !855
  %tobool.not = icmp eq i32 %call67, 0, !dbg !855
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !855

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 6160) #8, !dbg !857
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 12432) #8, !dbg !859
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !860
    #dbg_value(i32 %inc75, !813, !DIExpression(), !815)
  br label %for.cond, !dbg !861, !llvm.loop !862

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !864, !DIExpression(), !866)
  br label %for.cond78, !dbg !867

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !868
    #dbg_value(i32 %i77.0, !864, !DIExpression(), !866)
  %exitcond3.not = icmp eq i32 %i77.0, 11, !dbg !869
  br i1 %exitcond3.not, label %for.end106, label %for.body81, !dbg !871

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 108, !dbg !872
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !874
    #dbg_value(ptr %add.ptr84, !875, !DIExpression(), !717)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !876
  %mul89 = mul nuw nsw i32 %i77.0, 10, !dbg !877
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !878
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 10, i32 noundef 108, i32 noundef 1) #6, !dbg !879
  %mul94 = mul nuw nsw i32 %i77.0, 118, !dbg !880
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !881
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 108, i32 noundef 1) #6, !dbg !882
  %mul97 = mul nuw nsw i32 %i77.0, 118, !dbg !883
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !884
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 108, !dbg !885
  %mul101 = mul nuw nsw i32 %i77.0, 10, !dbg !886
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !887
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 10) #8, !dbg !888
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !889
    #dbg_value(i32 %inc105, !864, !DIExpression(), !866)
  br label %for.cond78, !dbg !890, !llvm.loop !891

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1298) #6, !dbg !893
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !894
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 32) #8, !dbg !895
  store i32 681, ptr %siglen, align 4, !dbg !896
  br label %err, !dbg !897

err:                                              ; preds = %if.end, %entry, %for.end106
  %ret.0 = phi i32 [ %call, %for.end106 ], [ %call, %entry ], [ 1, %if.end ], !dbg !717
    #dbg_value(i32 %ret.0, !723, !DIExpression(), !717)
    #dbg_label(!898, !899)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 649) #8, !dbg !900
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1188) #8, !dbg !901
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 12432) #8, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 111) #8, !dbg !903
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !904
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 1080) #8, !dbg !905
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 391176) #8, !dbg !906
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 108) #8, !dbg !907
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !908
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 6160) #8, !dbg !909
  ret i32 %ret.0, !dbg !910
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !911 {
entry:
  %Pv = alloca [8316 x i64], align 8
    #dbg_value(ptr %p, !914, !DIExpression(), !915)
    #dbg_value(ptr %Vdec, !916, !DIExpression(), !915)
    #dbg_value(ptr %L, !917, !DIExpression(), !915)
    #dbg_value(ptr %P1, !918, !DIExpression(), !915)
    #dbg_value(ptr %VL, !919, !DIExpression(), !915)
    #dbg_value(ptr %VP1V, !920, !DIExpression(), !915)
    #dbg_value(i32 11, !921, !DIExpression(), !915)
    #dbg_value(i32 108, !922, !DIExpression(), !915)
    #dbg_value(i32 10, !923, !DIExpression(), !915)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 11, i32 noundef 108, i32 noundef 10) #6, !dbg !924
    #dbg_declare(ptr %Pv, !925, !DIExpression(), !929)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(66528) %Pv, i8 0, i32 66528, i1 false), !dbg !929
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !930
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 11, i32 noundef 108, i32 noundef 11) #6, !dbg !931
  ret void, !dbg !932
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !933 {
entry:
  %temp = alloca [7 x i64], align 8
    #dbg_value(ptr %p, !936, !DIExpression(), !937)
    #dbg_value(ptr %vPv, !938, !DIExpression(), !937)
    #dbg_value(ptr %t, !939, !DIExpression(), !937)
    #dbg_value(ptr %y, !940, !DIExpression(), !937)
    #dbg_value(i32 44, !941, !DIExpression(), !937)
    #dbg_value(i32 7, !943, !DIExpression(), !937)
    #dbg_value(i64 1, !944, !DIExpression(), !947)
    #dbg_value(i64 281474976710656, !944, !DIExpression(), !947)
    #dbg_value(i64 281474976710655, !944, !DIExpression(), !947)
    #dbg_value(i32 0, !948, !DIExpression(), !950)
  br label %for.cond, !dbg !951

for.cond:                                         ; preds = %for.body.1, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.1, %for.body.1 ], !dbg !952
    #dbg_value(i32 %i.0, !948, !DIExpression(), !950)
  %.idx7 = mul nuw nsw i32 %i.0, 56, !dbg !953
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !953
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !953
  %1 = load i64, ptr %arrayidx, align 8, !dbg !956
  %and = and i64 %1, 281474976710655, !dbg !956
  store i64 %and, ptr %arrayidx, align 8, !dbg !956
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !950)
  %exitcond.1.not = icmp eq i32 %i.0, 120, !dbg !957
  br i1 %exitcond.1.not, label %for.end, label %for.body.1, !dbg !958

for.body.1:                                       ; preds = %for.cond
    #dbg_value(i32 %i.0, !948, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !950)
  %2 = mul nuw i32 %i.0, 56, !dbg !953
  %3 = getelementptr i8, ptr %vPv, i32 %2, !dbg !953
  %arrayidx.1 = getelementptr i8, ptr %3, i32 104, !dbg !953
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !956
  %and.1 = and i64 %4, 281474976710655, !dbg !956
  store i64 %and.1, ptr %arrayidx.1, align 8, !dbg !956
  %inc.1 = add nuw nsw i32 %i.0, 2, !dbg !959
    #dbg_value(i32 %inc.1, !948, !DIExpression(), !950)
  br label %for.cond, !dbg !960, !llvm.loop !961

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !963, !DIExpression(), !964)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %temp, i8 0, i32 56, i1 false), !dbg !964
    #dbg_value(ptr %temp, !965, !DIExpression(), !937)
    #dbg_value(i32 10, !966, !DIExpression(), !968)
  br label %for.cond3, !dbg !969

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 10, %for.end ], [ %dec78, %for.inc77 ], !dbg !970
    #dbg_value(i32 %i2.0, !966, !DIExpression(), !968)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !971
  br i1 %cmp4, label %for.cond6, label %for.cond81, !dbg !973

for.cond6:                                        ; preds = %for.cond3, %for.body8
  %j.0 = phi i32 [ %inc75, %for.body8 ], [ %i2.0, %for.cond3 ], !dbg !974
    #dbg_value(i32 %j.0, !977, !DIExpression(), !978)
  %exitcond10.not = icmp eq i32 %j.0, 11, !dbg !979
  br i1 %exitcond10.not, label %for.inc77, label %for.body8, !dbg !981

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !982
  %5 = load i64, ptr %arrayidx9, align 8, !dbg !982
  %shr = lshr i64 %5, 44, !dbg !984
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !985
    #dbg_value(i8 %rem1, !986, !DIExpression(), !987)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !988
  %shl11 = shl i64 %5, 4, !dbg !989
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !989
    #dbg_value(i32 5, !990, !DIExpression(), !992)
    #dbg_value(i32 5, !990, !DIExpression(), !992)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !993
  %6 = load i64, ptr %arrayidx16, align 8, !dbg !993
  %shr17 = lshr i64 %6, 60, !dbg !996
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !997
  %7 = load i64, ptr %arrayidx19, align 8, !dbg !998
  %xor = xor i64 %7, %shr17, !dbg !998
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !998
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !999
  %8 = load i64, ptr %arrayidx20, align 8, !dbg !1000
  %shl21 = shl i64 %8, 4, !dbg !1000
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1000
    #dbg_value(i32 4, !990, !DIExpression(), !992)
  %arrayidx16.1 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !993
  %9 = load i64, ptr %arrayidx16.1, align 8, !dbg !993
  %shr17.1 = lshr i64 %9, 60, !dbg !996
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !997
  %10 = load i64, ptr %arrayidx19.1, align 8, !dbg !998
  %xor.1 = xor i64 %10, %shr17.1, !dbg !998
  store i64 %xor.1, ptr %arrayidx19.1, align 8, !dbg !998
  %arrayidx20.1 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !999
  %11 = load i64, ptr %arrayidx20.1, align 8, !dbg !1000
  %shl21.1 = shl i64 %11, 4, !dbg !1000
  store i64 %shl21.1, ptr %arrayidx20.1, align 8, !dbg !1000
    #dbg_value(i32 3, !990, !DIExpression(), !992)
  %arrayidx16.2 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !993
  %12 = load i64, ptr %arrayidx16.2, align 8, !dbg !993
  %shr17.2 = lshr i64 %12, 60, !dbg !996
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !997
  %13 = load i64, ptr %arrayidx19.2, align 8, !dbg !998
  %xor.2 = xor i64 %13, %shr17.2, !dbg !998
  store i64 %xor.2, ptr %arrayidx19.2, align 8, !dbg !998
  %arrayidx20.2 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !999
  %14 = load i64, ptr %arrayidx20.2, align 8, !dbg !1000
  %shl21.2 = shl i64 %14, 4, !dbg !1000
  store i64 %shl21.2, ptr %arrayidx20.2, align 8, !dbg !1000
    #dbg_value(i32 2, !990, !DIExpression(), !992)
  %arrayidx16.3 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !993
  %15 = load i64, ptr %arrayidx16.3, align 8, !dbg !993
  %shr17.3 = lshr i64 %15, 60, !dbg !996
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !997
  %16 = load i64, ptr %arrayidx19.3, align 8, !dbg !998
  %xor.3 = xor i64 %16, %shr17.3, !dbg !998
  store i64 %xor.3, ptr %arrayidx19.3, align 8, !dbg !998
  %arrayidx20.3 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !999
  %17 = load i64, ptr %arrayidx20.3, align 8, !dbg !1000
  %shl21.3 = shl i64 %17, 4, !dbg !1000
  store i64 %shl21.3, ptr %arrayidx20.3, align 8, !dbg !1000
    #dbg_value(i32 1, !990, !DIExpression(), !992)
  %arrayidx16.4 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !993
  %18 = load i64, ptr %arrayidx16.4, align 8, !dbg !993
  %shr17.4 = lshr i64 %18, 60, !dbg !996
  %arrayidx19.4 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !997
  %19 = load i64, ptr %arrayidx19.4, align 8, !dbg !998
  %xor.4 = xor i64 %19, %shr17.4, !dbg !998
  store i64 %xor.4, ptr %arrayidx19.4, align 8, !dbg !998
  %arrayidx20.4 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !999
  %20 = load i64, ptr %arrayidx20.4, align 8, !dbg !1000
  %shl21.4 = shl i64 %20, 4, !dbg !1000
  store i64 %shl21.4, ptr %arrayidx20.4, align 8, !dbg !1000
    #dbg_value(i32 0, !990, !DIExpression(), !992)
  %21 = load i64, ptr %temp, align 8, !dbg !993
  %shr17.5 = lshr i64 %21, 60, !dbg !996
  %arrayidx19.5 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !997
  %22 = load i64, ptr %arrayidx19.5, align 8, !dbg !998
  %xor.5 = xor i64 %22, %shr17.5, !dbg !998
  store i64 %xor.5, ptr %arrayidx19.5, align 8, !dbg !998
  %shl21.5 = shl i64 %21, 4, !dbg !1000
  store i64 %shl21.5, ptr %temp, align 8, !dbg !1000
    #dbg_value(i32 -1, !990, !DIExpression(), !992)
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !985
    #dbg_value(i32 0, !1001, !DIExpression(), !1003)
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 8) #6, !dbg !1004
  %23 = load i8, ptr %temp, align 1, !dbg !1009
  %xor356 = xor i8 %23, %call, !dbg !1009
  store i8 %xor356, ptr %temp, align 1, !dbg !1009
    #dbg_value(i32 1, !1001, !DIExpression(), !1003)
  %call38.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 0) #6, !dbg !1010
  %shl40.1 = shl nuw i8 %call38.1, 4, !dbg !1012
  %24 = load i8, ptr %temp, align 1, !dbg !1013
  %xor44.1 = xor i8 %shl40.1, %24, !dbg !1013
  store i8 %xor44.1, ptr %temp, align 1, !dbg !1013
    #dbg_value(i32 2, !1001, !DIExpression(), !1003)
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 1) #6, !dbg !1004
  %arrayidx33.2 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !1014
  %25 = load i8, ptr %arrayidx33.2, align 1, !dbg !1009
  %xor356.2 = xor i8 %25, %call.2, !dbg !1009
  store i8 %xor356.2, ptr %arrayidx33.2, align 1, !dbg !1009
    #dbg_value(i32 3, !1001, !DIExpression(), !1003)
  %call38.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 7) #6, !dbg !1010
  %shl40.3 = shl nuw i8 %call38.3, 4, !dbg !1012
  %arrayidx42.3 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !1015
  %26 = load i8, ptr %arrayidx42.3, align 1, !dbg !1013
  %xor44.3 = xor i8 %shl40.3, %26, !dbg !1013
  store i8 %xor44.3, ptr %arrayidx42.3, align 1, !dbg !1013
    #dbg_value(i32 4, !1001, !DIExpression(), !1003)
    #dbg_value(i32 0, !1016, !DIExpression(), !1018)
  %mul54 = mul nuw nsw i32 %i2.0, 11, !dbg !1019
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1022
  %.idx = mul nuw nsw i32 %add55, 56, !dbg !1023
  %27 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1023
  %28 = load i64, ptr %27, align 8, !dbg !1023
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62 = mul nuw nsw i32 %j.0, 11, !dbg !1025
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1026
  %.idx4 = mul nuw nsw i32 %add63, 56, !dbg !1027
  %29 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1027
  %30 = load i64, ptr %29, align 8, !dbg !1027
  %mul67 = select i1 %cmp59.not, i64 0, i64 %30, !dbg !1028
  %xor68 = xor i64 %28, %mul67, !dbg !1029
  %31 = load i64, ptr %temp, align 8, !dbg !1030
  %xor70 = xor i64 %31, %xor68, !dbg !1030
  store i64 %xor70, ptr %temp, align 8, !dbg !1030
    #dbg_value(i32 1, !1016, !DIExpression(), !1018)
  %mul54.1 = mul nuw nsw i32 %i2.0, 11, !dbg !1019
  %add55.1 = add nuw nsw i32 %mul54.1, %j.0, !dbg !1022
  %.idx.1 = mul nuw nsw i32 %add55.1, 56, !dbg !1023
  %32 = getelementptr i8, ptr %vPv, i32 %.idx.1, !dbg !1023
  %arrayidx58.1 = getelementptr i8, ptr %32, i32 8, !dbg !1023
  %33 = load i64, ptr %arrayidx58.1, align 8, !dbg !1023
  %cmp59.not.1 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.1 = mul nuw nsw i32 %j.0, 11, !dbg !1025
  %add63.1 = add nuw nsw i32 %mul62.1, %i2.0, !dbg !1026
  %.idx4.1 = mul nuw nsw i32 %add63.1, 56, !dbg !1027
  %34 = getelementptr i8, ptr %vPv, i32 %.idx4.1, !dbg !1027
  %arrayidx66.1 = getelementptr i8, ptr %34, i32 8, !dbg !1027
  %35 = load i64, ptr %arrayidx66.1, align 8, !dbg !1027
  %mul67.1 = select i1 %cmp59.not.1, i64 0, i64 %35, !dbg !1028
  %xor68.1 = xor i64 %33, %mul67.1, !dbg !1029
  %arrayidx69.1 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !1031
  %36 = load i64, ptr %arrayidx69.1, align 8, !dbg !1030
  %xor70.1 = xor i64 %36, %xor68.1, !dbg !1030
  store i64 %xor70.1, ptr %arrayidx69.1, align 8, !dbg !1030
    #dbg_value(i32 2, !1016, !DIExpression(), !1018)
  %mul54.2 = mul nuw nsw i32 %i2.0, 11, !dbg !1019
  %add55.2 = add nuw nsw i32 %mul54.2, %j.0, !dbg !1022
  %.idx.2 = mul nuw nsw i32 %add55.2, 56, !dbg !1023
  %37 = getelementptr i8, ptr %vPv, i32 %.idx.2, !dbg !1023
  %arrayidx58.2 = getelementptr i8, ptr %37, i32 16, !dbg !1023
  %38 = load i64, ptr %arrayidx58.2, align 8, !dbg !1023
  %cmp59.not.2 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.2 = mul nuw nsw i32 %j.0, 11, !dbg !1025
  %add63.2 = add nuw nsw i32 %mul62.2, %i2.0, !dbg !1026
  %.idx4.2 = mul nuw nsw i32 %add63.2, 56, !dbg !1027
  %39 = getelementptr i8, ptr %vPv, i32 %.idx4.2, !dbg !1027
  %arrayidx66.2 = getelementptr i8, ptr %39, i32 16, !dbg !1027
  %40 = load i64, ptr %arrayidx66.2, align 8, !dbg !1027
  %mul67.2 = select i1 %cmp59.not.2, i64 0, i64 %40, !dbg !1028
  %xor68.2 = xor i64 %38, %mul67.2, !dbg !1029
  %arrayidx69.2 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !1031
  %41 = load i64, ptr %arrayidx69.2, align 8, !dbg !1030
  %xor70.2 = xor i64 %41, %xor68.2, !dbg !1030
  store i64 %xor70.2, ptr %arrayidx69.2, align 8, !dbg !1030
    #dbg_value(i32 3, !1016, !DIExpression(), !1018)
  %mul54.3 = mul nuw nsw i32 %i2.0, 11, !dbg !1019
  %add55.3 = add nuw nsw i32 %mul54.3, %j.0, !dbg !1022
  %.idx.3 = mul nuw nsw i32 %add55.3, 56, !dbg !1023
  %42 = getelementptr i8, ptr %vPv, i32 %.idx.3, !dbg !1023
  %arrayidx58.3 = getelementptr i8, ptr %42, i32 24, !dbg !1023
  %43 = load i64, ptr %arrayidx58.3, align 8, !dbg !1023
  %cmp59.not.3 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.3 = mul nuw nsw i32 %j.0, 11, !dbg !1025
  %add63.3 = add nuw nsw i32 %mul62.3, %i2.0, !dbg !1026
  %.idx4.3 = mul nuw nsw i32 %add63.3, 56, !dbg !1027
  %44 = getelementptr i8, ptr %vPv, i32 %.idx4.3, !dbg !1027
  %arrayidx66.3 = getelementptr i8, ptr %44, i32 24, !dbg !1027
  %45 = load i64, ptr %arrayidx66.3, align 8, !dbg !1027
  %mul67.3 = select i1 %cmp59.not.3, i64 0, i64 %45, !dbg !1028
  %xor68.3 = xor i64 %43, %mul67.3, !dbg !1029
  %arrayidx69.3 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1031
  %46 = load i64, ptr %arrayidx69.3, align 8, !dbg !1030
  %xor70.3 = xor i64 %46, %xor68.3, !dbg !1030
  store i64 %xor70.3, ptr %arrayidx69.3, align 8, !dbg !1030
    #dbg_value(i32 4, !1016, !DIExpression(), !1018)
  %mul54.4 = mul nuw nsw i32 %i2.0, 11, !dbg !1019
  %add55.4 = add nuw nsw i32 %mul54.4, %j.0, !dbg !1022
  %.idx.4 = mul nuw nsw i32 %add55.4, 56, !dbg !1023
  %47 = getelementptr i8, ptr %vPv, i32 %.idx.4, !dbg !1023
  %arrayidx58.4 = getelementptr i8, ptr %47, i32 32, !dbg !1023
  %48 = load i64, ptr %arrayidx58.4, align 8, !dbg !1023
  %cmp59.not.4 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.4 = mul nuw nsw i32 %j.0, 11, !dbg !1025
  %add63.4 = add nuw nsw i32 %mul62.4, %i2.0, !dbg !1026
  %.idx4.4 = mul nuw nsw i32 %add63.4, 56, !dbg !1027
  %49 = getelementptr i8, ptr %vPv, i32 %.idx4.4, !dbg !1027
  %arrayidx66.4 = getelementptr i8, ptr %49, i32 32, !dbg !1027
  %50 = load i64, ptr %arrayidx66.4, align 8, !dbg !1027
  %mul67.4 = select i1 %cmp59.not.4, i64 0, i64 %50, !dbg !1028
  %xor68.4 = xor i64 %48, %mul67.4, !dbg !1029
  %arrayidx69.4 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !1031
  %51 = load i64, ptr %arrayidx69.4, align 8, !dbg !1030
  %xor70.4 = xor i64 %51, %xor68.4, !dbg !1030
  store i64 %xor70.4, ptr %arrayidx69.4, align 8, !dbg !1030
    #dbg_value(i32 5, !1016, !DIExpression(), !1018)
  %mul54.5 = mul nuw nsw i32 %i2.0, 11, !dbg !1019
  %add55.5 = add nuw nsw i32 %mul54.5, %j.0, !dbg !1022
  %.idx.5 = mul nuw nsw i32 %add55.5, 56, !dbg !1023
  %52 = getelementptr i8, ptr %vPv, i32 %.idx.5, !dbg !1023
  %arrayidx58.5 = getelementptr i8, ptr %52, i32 40, !dbg !1023
  %53 = load i64, ptr %arrayidx58.5, align 8, !dbg !1023
  %cmp59.not.5 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.5 = mul nuw nsw i32 %j.0, 11, !dbg !1025
  %add63.5 = add nuw nsw i32 %mul62.5, %i2.0, !dbg !1026
  %.idx4.5 = mul nuw nsw i32 %add63.5, 56, !dbg !1027
  %54 = getelementptr i8, ptr %vPv, i32 %.idx4.5, !dbg !1027
  %arrayidx66.5 = getelementptr i8, ptr %54, i32 40, !dbg !1027
  %55 = load i64, ptr %arrayidx66.5, align 8, !dbg !1027
  %mul67.5 = select i1 %cmp59.not.5, i64 0, i64 %55, !dbg !1028
  %xor68.5 = xor i64 %53, %mul67.5, !dbg !1029
  %arrayidx69.5 = getelementptr inbounds nuw i8, ptr %temp, i32 40, !dbg !1031
  %56 = load i64, ptr %arrayidx69.5, align 8, !dbg !1030
  %xor70.5 = xor i64 %56, %xor68.5, !dbg !1030
  store i64 %xor70.5, ptr %arrayidx69.5, align 8, !dbg !1030
    #dbg_value(i32 6, !1016, !DIExpression(), !1018)
  %mul54.6 = mul nuw nsw i32 %i2.0, 11, !dbg !1019
  %add55.6 = add nuw nsw i32 %mul54.6, %j.0, !dbg !1022
  %.idx.6 = mul nuw nsw i32 %add55.6, 56, !dbg !1023
  %57 = getelementptr i8, ptr %vPv, i32 %.idx.6, !dbg !1023
  %arrayidx58.6 = getelementptr i8, ptr %57, i32 48, !dbg !1023
  %58 = load i64, ptr %arrayidx58.6, align 8, !dbg !1023
  %cmp59.not.6 = icmp eq i32 %i2.0, %j.0, !dbg !1024
  %mul62.6 = mul nuw nsw i32 %j.0, 11, !dbg !1025
  %add63.6 = add nuw nsw i32 %mul62.6, %i2.0, !dbg !1026
  %.idx4.6 = mul nuw nsw i32 %add63.6, 56, !dbg !1027
  %59 = getelementptr i8, ptr %vPv, i32 %.idx4.6, !dbg !1027
  %arrayidx66.6 = getelementptr i8, ptr %59, i32 48, !dbg !1027
  %60 = load i64, ptr %arrayidx66.6, align 8, !dbg !1027
  %mul67.6 = select i1 %cmp59.not.6, i64 0, i64 %60, !dbg !1028
  %xor68.6 = xor i64 %58, %mul67.6, !dbg !1029
  %arrayidx69.6 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !1031
  %61 = load i64, ptr %arrayidx69.6, align 8, !dbg !1030
  %xor70.6 = xor i64 %61, %xor68.6, !dbg !1030
  store i64 %xor70.6, ptr %arrayidx69.6, align 8, !dbg !1030
    #dbg_value(i32 7, !1016, !DIExpression(), !1018)
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1032
    #dbg_value(i32 %inc75, !977, !DIExpression(), !978)
  br label %for.cond6, !dbg !1033, !llvm.loop !1034

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1036
    #dbg_value(i32 %dec78, !966, !DIExpression(), !968)
  br label %for.cond3, !dbg !1037, !llvm.loop !1038

for.cond81:                                       ; preds = %for.cond3, %for.body84.4
  %i80.0 = phi i32 [ %add106.4, %for.body84.4 ], [ 0, %for.cond3 ], !dbg !1040
    #dbg_value(i32 %i80.0, !1042, !DIExpression(), !1043)
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1044
  %62 = load i8, ptr %arrayidx85, align 1, !dbg !1044
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1047
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1048
  %63 = load i8, ptr %arrayidx88, align 1, !dbg !1048
  %64 = and i8 %63, 15, !dbg !1049
  %xor912 = xor i8 %62, %64, !dbg !1050
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1051
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1052
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1053
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1054
  %65 = load i8, ptr %arrayidx95, align 1, !dbg !1054
  %66 = lshr i8 %63, 4, !dbg !1055
  %xor1013 = xor i8 %65, %66, !dbg !1056
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1057
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1058
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1043)
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1060
    #dbg_value(i32 %add106, !1042, !DIExpression(), !1043)
  %arrayidx85.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add106, !dbg !1044
  %67 = load i8, ptr %arrayidx85.1, align 1, !dbg !1044
  %div87.1 = lshr exact i32 %add106, 1, !dbg !1047
  %arrayidx88.1 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.1, !dbg !1048
  %68 = load i8, ptr %arrayidx88.1, align 1, !dbg !1048
  %69 = and i8 %68, 15, !dbg !1049
  %xor912.1 = xor i8 %67, %69, !dbg !1050
  %arrayidx93.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add106, !dbg !1051
  store i8 %xor912.1, ptr %arrayidx93.1, align 1, !dbg !1052
  %add94.1 = or disjoint i32 %add106, 1, !dbg !1053
  %arrayidx95.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.1, !dbg !1054
  %70 = load i8, ptr %arrayidx95.1, align 1, !dbg !1054
  %71 = lshr i8 %68, 4, !dbg !1055
  %xor1013.1 = xor i8 %70, %71, !dbg !1056
  %add103.1 = or disjoint i32 %add106, 1, !dbg !1057
  %arrayidx104.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.1, !dbg !1058
  store i8 %xor1013.1, ptr %arrayidx104.1, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1043)
  %add106.1 = add nuw nsw i32 %i80.0, 4, !dbg !1060
    #dbg_value(i32 %add106.1, !1042, !DIExpression(), !1043)
  %arrayidx85.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.1, !dbg !1044
  %72 = load i8, ptr %arrayidx85.2, align 1, !dbg !1044
  %div87.2 = lshr exact i32 %add106.1, 1, !dbg !1047
  %arrayidx88.2 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.2, !dbg !1048
  %73 = load i8, ptr %arrayidx88.2, align 1, !dbg !1048
  %74 = and i8 %73, 15, !dbg !1049
  %xor912.2 = xor i8 %72, %74, !dbg !1050
  %arrayidx93.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.1, !dbg !1051
  store i8 %xor912.2, ptr %arrayidx93.2, align 1, !dbg !1052
  %add94.2 = or disjoint i32 %add106.1, 1, !dbg !1053
  %arrayidx95.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.2, !dbg !1054
  %75 = load i8, ptr %arrayidx95.2, align 1, !dbg !1054
  %76 = lshr i8 %73, 4, !dbg !1055
  %xor1013.2 = xor i8 %75, %76, !dbg !1056
  %add103.2 = or disjoint i32 %add106.1, 1, !dbg !1057
  %arrayidx104.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.2, !dbg !1058
  store i8 %xor1013.2, ptr %arrayidx104.2, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !1043)
  %add106.2 = add nuw nsw i32 %i80.0, 6, !dbg !1060
    #dbg_value(i32 %add106.2, !1042, !DIExpression(), !1043)
  %arrayidx85.3 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.2, !dbg !1044
  %77 = load i8, ptr %arrayidx85.3, align 1, !dbg !1044
  %div87.3 = lshr exact i32 %add106.2, 1, !dbg !1047
  %arrayidx88.3 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.3, !dbg !1048
  %78 = load i8, ptr %arrayidx88.3, align 1, !dbg !1048
  %79 = and i8 %78, 15, !dbg !1049
  %xor912.3 = xor i8 %77, %79, !dbg !1050
  %arrayidx93.3 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.2, !dbg !1051
  store i8 %xor912.3, ptr %arrayidx93.3, align 1, !dbg !1052
  %add94.3 = or disjoint i32 %add106.2, 1, !dbg !1053
  %arrayidx95.3 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.3, !dbg !1054
  %80 = load i8, ptr %arrayidx95.3, align 1, !dbg !1054
  %81 = lshr i8 %78, 4, !dbg !1055
  %xor1013.3 = xor i8 %80, %81, !dbg !1056
  %add103.3 = or disjoint i32 %add106.2, 1, !dbg !1057
  %arrayidx104.3 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.3, !dbg !1058
  store i8 %xor1013.3, ptr %arrayidx104.3, align 1, !dbg !1059
    #dbg_value(i32 %i80.0, !1042, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1043)
  %cmp82.4 = icmp samesign ult i32 %i80.0, 100, !dbg !1061
  br i1 %cmp82.4, label %for.body84.4, label %for.end107, !dbg !1062

for.body84.4:                                     ; preds = %for.cond81
  %add106.3 = add nuw nsw i32 %i80.0, 8, !dbg !1060
    #dbg_value(i32 %add106.3, !1042, !DIExpression(), !1043)
  %arrayidx85.4 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.3, !dbg !1044
  %82 = load i8, ptr %arrayidx85.4, align 1, !dbg !1044
  %div87.4 = lshr exact i32 %add106.3, 1, !dbg !1047
  %arrayidx88.4 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.4, !dbg !1048
  %83 = load i8, ptr %arrayidx88.4, align 1, !dbg !1048
  %84 = and i8 %83, 15, !dbg !1049
  %xor912.4 = xor i8 %82, %84, !dbg !1050
  %arrayidx93.4 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.3, !dbg !1051
  store i8 %xor912.4, ptr %arrayidx93.4, align 1, !dbg !1052
  %add94.4 = or disjoint i32 %add106.3, 1, !dbg !1053
  %arrayidx95.4 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.4, !dbg !1054
  %85 = load i8, ptr %arrayidx95.4, align 1, !dbg !1054
  %86 = lshr i8 %83, 4, !dbg !1055
  %xor1013.4 = xor i8 %85, %86, !dbg !1056
  %add103.4 = or disjoint i32 %add106.3, 1, !dbg !1057
  %arrayidx104.4 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.4, !dbg !1058
  store i8 %xor1013.4, ptr %arrayidx104.4, align 1, !dbg !1059
  %add106.4 = add nuw nsw i32 %i80.0, 10, !dbg !1060
    #dbg_value(i32 %add106.4, !1042, !DIExpression(), !1043)
  br label %for.cond81, !dbg !1063, !llvm.loop !1064

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1066
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1067 {
entry:
  %A = alloca [1568 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1070, !DIExpression(), !1071)
    #dbg_value(ptr %VtL, !1072, !DIExpression(), !1071)
    #dbg_value(ptr %A_out, !1073, !DIExpression(), !1071)
    #dbg_value(i32 0, !1074, !DIExpression(), !1071)
    #dbg_value(i32 0, !1075, !DIExpression(), !1071)
    #dbg_value(i32 7, !1076, !DIExpression(), !1071)
    #dbg_declare(ptr %A, !1077, !DIExpression(), !1081)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12544) %A, i8 0, i32 12544, i1 false), !dbg !1081
    #dbg_value(i32 112, !1082, !DIExpression(), !1071)
    #dbg_value(i64 1, !1083, !DIExpression(), !1086)
    #dbg_value(i64 281474976710656, !1083, !DIExpression(), !1086)
    #dbg_value(i64 281474976710655, !1083, !DIExpression(), !1086)
    #dbg_value(i32 0, !1087, !DIExpression(), !1089)
  br label %for.cond, !dbg !1090

for.cond:                                         ; preds = %for.body.2, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.2, %for.body.2 ], !dbg !1091
    #dbg_value(i32 %i.0, !1087, !DIExpression(), !1089)
  %.idx = mul nuw nsw i32 %i.0, 56, !dbg !1092
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1092
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1092
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1095
  %and = and i64 %1, 281474976710655, !dbg !1095
  store i64 %and, ptr %arrayidx, align 8, !dbg !1095
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1089)
    #dbg_value(i32 %i.0, !1087, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1089)
  %2 = mul nuw i32 %i.0, 56, !dbg !1092
  %3 = getelementptr i8, ptr %VtL, i32 %2, !dbg !1092
  %arrayidx.1 = getelementptr i8, ptr %3, i32 104, !dbg !1092
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !1095
  %and.1 = and i64 %4, 281474976710655, !dbg !1095
  store i64 %and.1, ptr %arrayidx.1, align 8, !dbg !1095
  %inc.1 = add nuw nsw i32 %i.0, 2, !dbg !1096
    #dbg_value(i32 %inc.1, !1087, !DIExpression(), !1089)
  %exitcond.2.not = icmp eq i32 %inc.1, 110, !dbg !1097
  br i1 %exitcond.2.not, label %for.cond3, label %for.body.2, !dbg !1098

for.body.2:                                       ; preds = %for.cond
  %.idx.2 = mul nuw nsw i32 %inc.1, 56, !dbg !1092
  %5 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx.2, !dbg !1092
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %5, i32 48, !dbg !1092
  %6 = load i64, ptr %arrayidx.2, align 8, !dbg !1095
  %and.2 = and i64 %6, 281474976710655, !dbg !1095
  store i64 %and.2, ptr %arrayidx.2, align 8, !dbg !1095
  %inc.2 = add nuw nsw i32 %i.0, 3, !dbg !1096
    #dbg_value(i32 %inc.2, !1087, !DIExpression(), !1089)
  br label %for.cond, !dbg !1099, !llvm.loop !1100

for.cond3:                                        ; preds = %for.cond, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond ], !dbg !1102
  %words_to_shift.0 = phi i32 [ %words_to_shift.1, %for.inc103 ], [ 0, %for.cond ], !dbg !1104
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1, %for.inc103 ], [ 0, %for.cond ], !dbg !1105
    #dbg_value(i32 %bits_to_shift.0, !1074, !DIExpression(), !1071)
    #dbg_value(i32 %words_to_shift.0, !1075, !DIExpression(), !1071)
    #dbg_value(i32 %i2.0, !1106, !DIExpression(), !1107)
  %exitcond8.not = icmp eq i32 %i2.0, 11, !dbg !1108
  br i1 %exitcond8.not, label %for.cond107, label %for.cond6, !dbg !1110

for.cond6:                                        ; preds = %for.cond3, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 10, %for.cond3 ], !dbg !1111
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond3 ], !dbg !1071
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond3 ], !dbg !1071
    #dbg_value(i32 %bits_to_shift.1, !1074, !DIExpression(), !1071)
    #dbg_value(i32 %words_to_shift.1, !1075, !DIExpression(), !1071)
    #dbg_value(i32 %j.0, !1114, !DIExpression(), !1115)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1116
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1118

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 560, !dbg !1119
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1119
    #dbg_value(ptr %add.ptr, !1121, !DIExpression(), !1071)
    #dbg_value(i32 0, !1122, !DIExpression(), !1124)
  br label %for.cond11, !dbg !1125

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1126
    #dbg_value(i32 %c.0, !1122, !DIExpression(), !1124)
  %exitcond5.not = icmp eq i32 %c.0, 10, !dbg !1127
  br i1 %exitcond5.not, label %for.end46, label %for.body16, !dbg !1129

for.body16:                                       ; preds = %for.cond11
    #dbg_value(i32 0, !1130, !DIExpression(), !1133)
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 56, !dbg !1134
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %arrayidx19.idx, !dbg !1134
  %7 = load i64, ptr %arrayidx19, align 8, !dbg !1134
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1137
  %shl20 = shl i64 %7, %sh_prom, !dbg !1137
  %mul21 = mul nuw nsw i32 %i2.0, 10, !dbg !1138
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1139
  %mul24 = mul i32 %words_to_shift.1, 112, !dbg !1140
  %add25 = add i32 %add22, %mul24, !dbg !1141
  %arrayidx26 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25, !dbg !1142
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1143
  %xor = xor i64 %8, %shl20, !dbg !1143
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1143
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp27, label %if.then, label %for.body16.1, !dbg !1144

if.then:                                          ; preds = %for.body16
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 56, !dbg !1146
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %arrayidx30.idx, !dbg !1146
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1146
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1149
  %shr = lshr i64 %9, %sh_prom32, !dbg !1149
  %mul33 = mul nuw nsw i32 %i2.0, 10, !dbg !1150
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1151
  %10 = mul i32 %words_to_shift.1, 112, !dbg !1152
  %mul37 = add i32 %10, 112, !dbg !1152
  %add38 = add i32 %add34, %mul37, !dbg !1153
  %arrayidx39 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38, !dbg !1154
  %11 = load i64, ptr %arrayidx39, align 8, !dbg !1155
  %xor40 = xor i64 %11, %shr, !dbg !1155
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1155
  br label %for.body16.1, !dbg !1156

for.body16.1:                                     ; preds = %if.then, %for.body16
    #dbg_value(i32 1, !1130, !DIExpression(), !1133)
  %12 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 8, !dbg !1134
  %arrayidx19.idx.1 = mul nuw nsw i32 %c.0, 56, !dbg !1134
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx19.idx.1, !dbg !1134
  %13 = load i64, ptr %arrayidx19.1, align 8, !dbg !1134
  %sh_prom.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1137
  %shl20.1 = shl i64 %13, %sh_prom.1, !dbg !1137
  %mul21.1 = mul nuw nsw i32 %i2.0, 10, !dbg !1138
  %add22.1 = add nuw nsw i32 %mul21.1, %c.0, !dbg !1139
  %14 = mul i32 %words_to_shift.1, 112, !dbg !1140
  %mul24.1 = add i32 %14, 112, !dbg !1140
  %add25.1 = add i32 %add22.1, %mul24.1, !dbg !1141
  %arrayidx26.1 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25.1, !dbg !1142
  %15 = load i64, ptr %arrayidx26.1, align 8, !dbg !1143
  %xor.1 = xor i64 %15, %shl20.1, !dbg !1143
  store i64 %xor.1, ptr %arrayidx26.1, align 8, !dbg !1143
  %cmp27.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp27.1, label %if.then.1, label %for.body16.2, !dbg !1144

if.then.1:                                        ; preds = %for.body16.1
  %16 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 8, !dbg !1146
  %arrayidx30.idx.1 = mul nuw nsw i32 %c.0, 56, !dbg !1146
  %arrayidx30.1 = getelementptr inbounds nuw i8, ptr %16, i32 %arrayidx30.idx.1, !dbg !1146
  %17 = load i64, ptr %arrayidx30.1, align 8, !dbg !1146
  %sub31.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.1 = zext nneg i32 %sub31.1 to i64, !dbg !1149
  %shr.1 = lshr i64 %17, %sh_prom32.1, !dbg !1149
  %mul33.1 = mul nuw nsw i32 %i2.0, 10, !dbg !1150
  %add34.1 = add nuw nsw i32 %mul33.1, %c.0, !dbg !1151
  %18 = mul i32 %words_to_shift.1, 112, !dbg !1152
  %mul37.1 = add i32 %18, 224, !dbg !1152
  %add38.1 = add i32 %add34.1, %mul37.1, !dbg !1153
  %arrayidx39.1 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38.1, !dbg !1154
  %19 = load i64, ptr %arrayidx39.1, align 8, !dbg !1155
  %xor40.1 = xor i64 %19, %shr.1, !dbg !1155
  store i64 %xor40.1, ptr %arrayidx39.1, align 8, !dbg !1155
  br label %for.body16.2, !dbg !1156

for.body16.2:                                     ; preds = %for.body16.1, %if.then.1
    #dbg_value(i32 2, !1130, !DIExpression(), !1133)
  %20 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 16, !dbg !1134
  %arrayidx19.idx.2 = mul nuw nsw i32 %c.0, 56, !dbg !1134
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %20, i32 %arrayidx19.idx.2, !dbg !1134
  %21 = load i64, ptr %arrayidx19.2, align 8, !dbg !1134
  %sh_prom.2 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1137
  %shl20.2 = shl i64 %21, %sh_prom.2, !dbg !1137
  %mul21.2 = mul nuw nsw i32 %i2.0, 10, !dbg !1138
  %add22.2 = add nuw nsw i32 %mul21.2, %c.0, !dbg !1139
  %22 = mul i32 %words_to_shift.1, 112, !dbg !1140
  %mul24.2 = add i32 %22, 224, !dbg !1140
  %add25.2 = add i32 %add22.2, %mul24.2, !dbg !1141
  %arrayidx26.2 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25.2, !dbg !1142
  %23 = load i64, ptr %arrayidx26.2, align 8, !dbg !1143
  %xor.2 = xor i64 %23, %shl20.2, !dbg !1143
  store i64 %xor.2, ptr %arrayidx26.2, align 8, !dbg !1143
  %cmp27.2 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp27.2, label %if.then.2, label %for.body16.3, !dbg !1144

if.then.2:                                        ; preds = %for.body16.2
  %24 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 16, !dbg !1146
  %arrayidx30.idx.2 = mul nuw nsw i32 %c.0, 56, !dbg !1146
  %arrayidx30.2 = getelementptr inbounds nuw i8, ptr %24, i32 %arrayidx30.idx.2, !dbg !1146
  %25 = load i64, ptr %arrayidx30.2, align 8, !dbg !1146
  %sub31.2 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.2 = zext nneg i32 %sub31.2 to i64, !dbg !1149
  %shr.2 = lshr i64 %25, %sh_prom32.2, !dbg !1149
  %mul33.2 = mul nuw nsw i32 %i2.0, 10, !dbg !1150
  %add34.2 = add nuw nsw i32 %mul33.2, %c.0, !dbg !1151
  %26 = mul i32 %words_to_shift.1, 112, !dbg !1152
  %mul37.2 = add i32 %26, 336, !dbg !1152
  %add38.2 = add i32 %add34.2, %mul37.2, !dbg !1153
  %arrayidx39.2 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38.2, !dbg !1154
  %27 = load i64, ptr %arrayidx39.2, align 8, !dbg !1155
  %xor40.2 = xor i64 %27, %shr.2, !dbg !1155
  store i64 %xor40.2, ptr %arrayidx39.2, align 8, !dbg !1155
  br label %for.body16.3, !dbg !1156

for.body16.3:                                     ; preds = %for.body16.2, %if.then.2
    #dbg_value(i32 3, !1130, !DIExpression(), !1133)
  %28 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 24, !dbg !1134
  %arrayidx19.idx.3 = mul nuw nsw i32 %c.0, 56, !dbg !1134
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %28, i32 %arrayidx19.idx.3, !dbg !1134
  %29 = load i64, ptr %arrayidx19.3, align 8, !dbg !1134
  %sh_prom.3 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1137
  %shl20.3 = shl i64 %29, %sh_prom.3, !dbg !1137
  %mul21.3 = mul nuw nsw i32 %i2.0, 10, !dbg !1138
  %add22.3 = add nuw nsw i32 %mul21.3, %c.0, !dbg !1139
  %30 = mul i32 %words_to_shift.1, 112, !dbg !1140
  %mul24.3 = add i32 %30, 336, !dbg !1140
  %add25.3 = add i32 %add22.3, %mul24.3, !dbg !1141
  %arrayidx26.3 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25.3, !dbg !1142
  %31 = load i64, ptr %arrayidx26.3, align 8, !dbg !1143
  %xor.3 = xor i64 %31, %shl20.3, !dbg !1143
  store i64 %xor.3, ptr %arrayidx26.3, align 8, !dbg !1143
  %cmp27.3 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp27.3, label %if.then.3, label %for.body16.4, !dbg !1144

if.then.3:                                        ; preds = %for.body16.3
  %32 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 24, !dbg !1146
  %arrayidx30.idx.3 = mul nuw nsw i32 %c.0, 56, !dbg !1146
  %arrayidx30.3 = getelementptr inbounds nuw i8, ptr %32, i32 %arrayidx30.idx.3, !dbg !1146
  %33 = load i64, ptr %arrayidx30.3, align 8, !dbg !1146
  %sub31.3 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.3 = zext nneg i32 %sub31.3 to i64, !dbg !1149
  %shr.3 = lshr i64 %33, %sh_prom32.3, !dbg !1149
  %mul33.3 = mul nuw nsw i32 %i2.0, 10, !dbg !1150
  %add34.3 = add nuw nsw i32 %mul33.3, %c.0, !dbg !1151
  %34 = mul i32 %words_to_shift.1, 112, !dbg !1152
  %mul37.3 = add i32 %34, 448, !dbg !1152
  %add38.3 = add i32 %add34.3, %mul37.3, !dbg !1153
  %arrayidx39.3 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38.3, !dbg !1154
  %35 = load i64, ptr %arrayidx39.3, align 8, !dbg !1155
  %xor40.3 = xor i64 %35, %shr.3, !dbg !1155
  store i64 %xor40.3, ptr %arrayidx39.3, align 8, !dbg !1155
  br label %for.body16.4, !dbg !1156

for.body16.4:                                     ; preds = %for.body16.3, %if.then.3
    #dbg_value(i32 4, !1130, !DIExpression(), !1133)
  %36 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 32, !dbg !1134
  %arrayidx19.idx.4 = mul nuw nsw i32 %c.0, 56, !dbg !1134
  %arrayidx19.4 = getelementptr inbounds nuw i8, ptr %36, i32 %arrayidx19.idx.4, !dbg !1134
  %37 = load i64, ptr %arrayidx19.4, align 8, !dbg !1134
  %sh_prom.4 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1137
  %shl20.4 = shl i64 %37, %sh_prom.4, !dbg !1137
  %mul21.4 = mul nuw nsw i32 %i2.0, 10, !dbg !1138
  %add22.4 = add nuw nsw i32 %mul21.4, %c.0, !dbg !1139
  %38 = mul i32 %words_to_shift.1, 112, !dbg !1140
  %mul24.4 = add i32 %38, 448, !dbg !1140
  %add25.4 = add i32 %add22.4, %mul24.4, !dbg !1141
  %arrayidx26.4 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25.4, !dbg !1142
  %39 = load i64, ptr %arrayidx26.4, align 8, !dbg !1143
  %xor.4 = xor i64 %39, %shl20.4, !dbg !1143
  store i64 %xor.4, ptr %arrayidx26.4, align 8, !dbg !1143
  %cmp27.4 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp27.4, label %if.then.4, label %for.body16.5, !dbg !1144

if.then.4:                                        ; preds = %for.body16.4
  %40 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 32, !dbg !1146
  %arrayidx30.idx.4 = mul nuw nsw i32 %c.0, 56, !dbg !1146
  %arrayidx30.4 = getelementptr inbounds nuw i8, ptr %40, i32 %arrayidx30.idx.4, !dbg !1146
  %41 = load i64, ptr %arrayidx30.4, align 8, !dbg !1146
  %sub31.4 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.4 = zext nneg i32 %sub31.4 to i64, !dbg !1149
  %shr.4 = lshr i64 %41, %sh_prom32.4, !dbg !1149
  %mul33.4 = mul nuw nsw i32 %i2.0, 10, !dbg !1150
  %add34.4 = add nuw nsw i32 %mul33.4, %c.0, !dbg !1151
  %42 = mul i32 %words_to_shift.1, 112, !dbg !1152
  %mul37.4 = add i32 %42, 560, !dbg !1152
  %add38.4 = add i32 %add34.4, %mul37.4, !dbg !1153
  %arrayidx39.4 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38.4, !dbg !1154
  %43 = load i64, ptr %arrayidx39.4, align 8, !dbg !1155
  %xor40.4 = xor i64 %43, %shr.4, !dbg !1155
  store i64 %xor40.4, ptr %arrayidx39.4, align 8, !dbg !1155
  br label %for.body16.5, !dbg !1156

for.body16.5:                                     ; preds = %for.body16.4, %if.then.4
    #dbg_value(i32 5, !1130, !DIExpression(), !1133)
  %44 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 40, !dbg !1134
  %arrayidx19.idx.5 = mul nuw nsw i32 %c.0, 56, !dbg !1134
  %arrayidx19.5 = getelementptr inbounds nuw i8, ptr %44, i32 %arrayidx19.idx.5, !dbg !1134
  %45 = load i64, ptr %arrayidx19.5, align 8, !dbg !1134
  %sh_prom.5 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1137
  %shl20.5 = shl i64 %45, %sh_prom.5, !dbg !1137
  %mul21.5 = mul nuw nsw i32 %i2.0, 10, !dbg !1138
  %add22.5 = add nuw nsw i32 %mul21.5, %c.0, !dbg !1139
  %46 = mul i32 %words_to_shift.1, 112, !dbg !1140
  %mul24.5 = add i32 %46, 560, !dbg !1140
  %add25.5 = add i32 %add22.5, %mul24.5, !dbg !1141
  %arrayidx26.5 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25.5, !dbg !1142
  %47 = load i64, ptr %arrayidx26.5, align 8, !dbg !1143
  %xor.5 = xor i64 %47, %shl20.5, !dbg !1143
  store i64 %xor.5, ptr %arrayidx26.5, align 8, !dbg !1143
  %cmp27.5 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp27.5, label %if.then.5, label %for.body16.6, !dbg !1144

if.then.5:                                        ; preds = %for.body16.5
  %48 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 40, !dbg !1146
  %arrayidx30.idx.5 = mul nuw nsw i32 %c.0, 56, !dbg !1146
  %arrayidx30.5 = getelementptr inbounds nuw i8, ptr %48, i32 %arrayidx30.idx.5, !dbg !1146
  %49 = load i64, ptr %arrayidx30.5, align 8, !dbg !1146
  %sub31.5 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.5 = zext nneg i32 %sub31.5 to i64, !dbg !1149
  %shr.5 = lshr i64 %49, %sh_prom32.5, !dbg !1149
  %mul33.5 = mul nuw nsw i32 %i2.0, 10, !dbg !1150
  %add34.5 = add nuw nsw i32 %mul33.5, %c.0, !dbg !1151
  %50 = mul i32 %words_to_shift.1, 112, !dbg !1152
  %mul37.5 = add i32 %50, 672, !dbg !1152
  %add38.5 = add i32 %add34.5, %mul37.5, !dbg !1153
  %arrayidx39.5 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38.5, !dbg !1154
  %51 = load i64, ptr %arrayidx39.5, align 8, !dbg !1155
  %xor40.5 = xor i64 %51, %shr.5, !dbg !1155
  store i64 %xor40.5, ptr %arrayidx39.5, align 8, !dbg !1155
  br label %for.body16.6, !dbg !1156

for.body16.6:                                     ; preds = %for.body16.5, %if.then.5
    #dbg_value(i32 6, !1130, !DIExpression(), !1133)
  %52 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 48, !dbg !1134
  %arrayidx19.idx.6 = mul nuw nsw i32 %c.0, 56, !dbg !1134
  %arrayidx19.6 = getelementptr inbounds nuw i8, ptr %52, i32 %arrayidx19.idx.6, !dbg !1134
  %53 = load i64, ptr %arrayidx19.6, align 8, !dbg !1134
  %sh_prom.6 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1137
  %shl20.6 = shl i64 %53, %sh_prom.6, !dbg !1137
  %mul21.6 = mul nuw nsw i32 %i2.0, 10, !dbg !1138
  %add22.6 = add nuw nsw i32 %mul21.6, %c.0, !dbg !1139
  %54 = mul i32 %words_to_shift.1, 112, !dbg !1140
  %mul24.6 = add i32 %54, 672, !dbg !1140
  %add25.6 = add i32 %add22.6, %mul24.6, !dbg !1141
  %arrayidx26.6 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25.6, !dbg !1142
  %55 = load i64, ptr %arrayidx26.6, align 8, !dbg !1143
  %xor.6 = xor i64 %55, %shl20.6, !dbg !1143
  store i64 %xor.6, ptr %arrayidx26.6, align 8, !dbg !1143
  %cmp27.6 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1144
  br i1 %cmp27.6, label %if.then.6, label %for.inc44, !dbg !1144

if.then.6:                                        ; preds = %for.body16.6
  %56 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 48, !dbg !1146
  %arrayidx30.idx.6 = mul nuw nsw i32 %c.0, 56, !dbg !1146
  %arrayidx30.6 = getelementptr inbounds nuw i8, ptr %56, i32 %arrayidx30.idx.6, !dbg !1146
  %57 = load i64, ptr %arrayidx30.6, align 8, !dbg !1146
  %sub31.6 = sub nsw i32 64, %bits_to_shift.1, !dbg !1148
  %sh_prom32.6 = zext nneg i32 %sub31.6 to i64, !dbg !1149
  %shr.6 = lshr i64 %57, %sh_prom32.6, !dbg !1149
  %mul33.6 = mul nuw nsw i32 %i2.0, 10, !dbg !1150
  %add34.6 = add nuw nsw i32 %mul33.6, %c.0, !dbg !1151
  %58 = mul i32 %words_to_shift.1, 112, !dbg !1152
  %mul37.6 = add i32 %58, 784, !dbg !1152
  %add38.6 = add i32 %add34.6, %mul37.6, !dbg !1153
  %arrayidx39.6 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38.6, !dbg !1154
  %59 = load i64, ptr %arrayidx39.6, align 8, !dbg !1155
  %xor40.6 = xor i64 %59, %shr.6, !dbg !1155
  store i64 %xor40.6, ptr %arrayidx39.6, align 8, !dbg !1155
  br label %for.inc44, !dbg !1156

for.inc44:                                        ; preds = %for.body16.6, %if.then.6
    #dbg_value(i32 7, !1130, !DIExpression(), !1133)
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1157
    #dbg_value(i32 %inc45, !1122, !DIExpression(), !1124)
  br label %for.cond11, !dbg !1158, !llvm.loop !1159

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1161
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1161

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 560, !dbg !1163
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1163
    #dbg_value(ptr %add.ptr51, !1165, !DIExpression(), !1071)
    #dbg_value(i32 0, !1166, !DIExpression(), !1168)
  br label %for.cond53, !dbg !1169

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1170
    #dbg_value(i32 %c52.0, !1166, !DIExpression(), !1168)
  %exitcond7.not = icmp eq i32 %c52.0, 10, !dbg !1171
  br i1 %exitcond7.not, label %if.end95, label %for.body59, !dbg !1173

for.body59:                                       ; preds = %for.cond53
    #dbg_value(i32 0, !1174, !DIExpression(), !1177)
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1178
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 %arrayidx62.idx, !dbg !1178
  %60 = load i64, ptr %arrayidx62, align 8, !dbg !1178
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1181
  %shl64 = shl i64 %60, %sh_prom63, !dbg !1181
  %mul65 = mul nsw i32 %j.0, 10, !dbg !1182
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1183
  %mul68 = mul i32 %words_to_shift.1, 112, !dbg !1184
  %add69 = add i32 %add66, %mul68, !dbg !1185
  %arrayidx70 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69, !dbg !1186
  %61 = load i64, ptr %arrayidx70, align 8, !dbg !1187
  %xor71 = xor i64 %61, %shl64, !dbg !1187
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1187
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1188
  br i1 %cmp72, label %if.then73, label %for.body59.1, !dbg !1188

if.then73:                                        ; preds = %for.body59
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1190
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 %arrayidx76.idx, !dbg !1190
  %62 = load i64, ptr %arrayidx76, align 8, !dbg !1190
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1192
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1193
  %shr79 = lshr i64 %62, %sh_prom78, !dbg !1193
  %mul80 = mul nsw i32 %j.0, 10, !dbg !1194
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1195
  %63 = mul i32 %words_to_shift.1, 112, !dbg !1196
  %mul84 = add i32 %63, 112, !dbg !1196
  %add85 = add i32 %add81, %mul84, !dbg !1197
  %arrayidx86 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85, !dbg !1198
  %64 = load i64, ptr %arrayidx86, align 8, !dbg !1199
  %xor87 = xor i64 %64, %shr79, !dbg !1199
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1199
  br label %for.body59.1, !dbg !1200

for.body59.1:                                     ; preds = %if.then73, %for.body59
    #dbg_value(i32 1, !1174, !DIExpression(), !1177)
  %65 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 8, !dbg !1178
  %arrayidx62.idx.1 = mul nuw nsw i32 %c52.0, 56, !dbg !1178
  %arrayidx62.1 = getelementptr inbounds nuw i8, ptr %65, i32 %arrayidx62.idx.1, !dbg !1178
  %66 = load i64, ptr %arrayidx62.1, align 8, !dbg !1178
  %sh_prom63.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1181
  %shl64.1 = shl i64 %66, %sh_prom63.1, !dbg !1181
  %mul65.1 = mul nsw i32 %j.0, 10, !dbg !1182
  %add66.1 = add nsw i32 %mul65.1, %c52.0, !dbg !1183
  %67 = mul i32 %words_to_shift.1, 112, !dbg !1184
  %mul68.1 = add i32 %67, 112, !dbg !1184
  %add69.1 = add i32 %add66.1, %mul68.1, !dbg !1185
  %arrayidx70.1 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69.1, !dbg !1186
  %68 = load i64, ptr %arrayidx70.1, align 8, !dbg !1187
  %xor71.1 = xor i64 %68, %shl64.1, !dbg !1187
  store i64 %xor71.1, ptr %arrayidx70.1, align 8, !dbg !1187
  %cmp72.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1188
  br i1 %cmp72.1, label %if.then73.1, label %for.body59.2, !dbg !1188

if.then73.1:                                      ; preds = %for.body59.1
  %69 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 8, !dbg !1190
  %arrayidx76.idx.1 = mul nuw nsw i32 %c52.0, 56, !dbg !1190
  %arrayidx76.1 = getelementptr inbounds nuw i8, ptr %69, i32 %arrayidx76.idx.1, !dbg !1190
  %70 = load i64, ptr %arrayidx76.1, align 8, !dbg !1190
  %sub77.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1192
  %sh_prom78.1 = zext nneg i32 %sub77.1 to i64, !dbg !1193
  %shr79.1 = lshr i64 %70, %sh_prom78.1, !dbg !1193
  %mul80.1 = mul nsw i32 %j.0, 10, !dbg !1194
  %add81.1 = add nsw i32 %mul80.1, %c52.0, !dbg !1195
  %71 = mul i32 %words_to_shift.1, 112, !dbg !1196
  %mul84.1 = add i32 %71, 224, !dbg !1196
  %add85.1 = add i32 %add81.1, %mul84.1, !dbg !1197
  %arrayidx86.1 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85.1, !dbg !1198
  %72 = load i64, ptr %arrayidx86.1, align 8, !dbg !1199
  %xor87.1 = xor i64 %72, %shr79.1, !dbg !1199
  store i64 %xor87.1, ptr %arrayidx86.1, align 8, !dbg !1199
  br label %for.body59.2, !dbg !1200

for.body59.2:                                     ; preds = %for.body59.1, %if.then73.1
    #dbg_value(i32 2, !1174, !DIExpression(), !1177)
  %73 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 16, !dbg !1178
  %arrayidx62.idx.2 = mul nuw nsw i32 %c52.0, 56, !dbg !1178
  %arrayidx62.2 = getelementptr inbounds nuw i8, ptr %73, i32 %arrayidx62.idx.2, !dbg !1178
  %74 = load i64, ptr %arrayidx62.2, align 8, !dbg !1178
  %sh_prom63.2 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1181
  %shl64.2 = shl i64 %74, %sh_prom63.2, !dbg !1181
  %mul65.2 = mul nsw i32 %j.0, 10, !dbg !1182
  %add66.2 = add nsw i32 %mul65.2, %c52.0, !dbg !1183
  %75 = mul i32 %words_to_shift.1, 112, !dbg !1184
  %mul68.2 = add i32 %75, 224, !dbg !1184
  %add69.2 = add i32 %add66.2, %mul68.2, !dbg !1185
  %arrayidx70.2 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69.2, !dbg !1186
  %76 = load i64, ptr %arrayidx70.2, align 8, !dbg !1187
  %xor71.2 = xor i64 %76, %shl64.2, !dbg !1187
  store i64 %xor71.2, ptr %arrayidx70.2, align 8, !dbg !1187
  %cmp72.2 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1188
  br i1 %cmp72.2, label %if.then73.2, label %for.body59.3, !dbg !1188

if.then73.2:                                      ; preds = %for.body59.2
  %77 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 16, !dbg !1190
  %arrayidx76.idx.2 = mul nuw nsw i32 %c52.0, 56, !dbg !1190
  %arrayidx76.2 = getelementptr inbounds nuw i8, ptr %77, i32 %arrayidx76.idx.2, !dbg !1190
  %78 = load i64, ptr %arrayidx76.2, align 8, !dbg !1190
  %sub77.2 = sub nsw i32 64, %bits_to_shift.1, !dbg !1192
  %sh_prom78.2 = zext nneg i32 %sub77.2 to i64, !dbg !1193
  %shr79.2 = lshr i64 %78, %sh_prom78.2, !dbg !1193
  %mul80.2 = mul nsw i32 %j.0, 10, !dbg !1194
  %add81.2 = add nsw i32 %mul80.2, %c52.0, !dbg !1195
  %79 = mul i32 %words_to_shift.1, 112, !dbg !1196
  %mul84.2 = add i32 %79, 336, !dbg !1196
  %add85.2 = add i32 %add81.2, %mul84.2, !dbg !1197
  %arrayidx86.2 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85.2, !dbg !1198
  %80 = load i64, ptr %arrayidx86.2, align 8, !dbg !1199
  %xor87.2 = xor i64 %80, %shr79.2, !dbg !1199
  store i64 %xor87.2, ptr %arrayidx86.2, align 8, !dbg !1199
  br label %for.body59.3, !dbg !1200

for.body59.3:                                     ; preds = %for.body59.2, %if.then73.2
    #dbg_value(i32 3, !1174, !DIExpression(), !1177)
  %81 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 24, !dbg !1178
  %arrayidx62.idx.3 = mul nuw nsw i32 %c52.0, 56, !dbg !1178
  %arrayidx62.3 = getelementptr inbounds nuw i8, ptr %81, i32 %arrayidx62.idx.3, !dbg !1178
  %82 = load i64, ptr %arrayidx62.3, align 8, !dbg !1178
  %sh_prom63.3 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1181
  %shl64.3 = shl i64 %82, %sh_prom63.3, !dbg !1181
  %mul65.3 = mul nsw i32 %j.0, 10, !dbg !1182
  %add66.3 = add nsw i32 %mul65.3, %c52.0, !dbg !1183
  %83 = mul i32 %words_to_shift.1, 112, !dbg !1184
  %mul68.3 = add i32 %83, 336, !dbg !1184
  %add69.3 = add i32 %add66.3, %mul68.3, !dbg !1185
  %arrayidx70.3 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69.3, !dbg !1186
  %84 = load i64, ptr %arrayidx70.3, align 8, !dbg !1187
  %xor71.3 = xor i64 %84, %shl64.3, !dbg !1187
  store i64 %xor71.3, ptr %arrayidx70.3, align 8, !dbg !1187
  %cmp72.3 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1188
  br i1 %cmp72.3, label %if.then73.3, label %for.body59.4, !dbg !1188

if.then73.3:                                      ; preds = %for.body59.3
  %85 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 24, !dbg !1190
  %arrayidx76.idx.3 = mul nuw nsw i32 %c52.0, 56, !dbg !1190
  %arrayidx76.3 = getelementptr inbounds nuw i8, ptr %85, i32 %arrayidx76.idx.3, !dbg !1190
  %86 = load i64, ptr %arrayidx76.3, align 8, !dbg !1190
  %sub77.3 = sub nsw i32 64, %bits_to_shift.1, !dbg !1192
  %sh_prom78.3 = zext nneg i32 %sub77.3 to i64, !dbg !1193
  %shr79.3 = lshr i64 %86, %sh_prom78.3, !dbg !1193
  %mul80.3 = mul nsw i32 %j.0, 10, !dbg !1194
  %add81.3 = add nsw i32 %mul80.3, %c52.0, !dbg !1195
  %87 = mul i32 %words_to_shift.1, 112, !dbg !1196
  %mul84.3 = add i32 %87, 448, !dbg !1196
  %add85.3 = add i32 %add81.3, %mul84.3, !dbg !1197
  %arrayidx86.3 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85.3, !dbg !1198
  %88 = load i64, ptr %arrayidx86.3, align 8, !dbg !1199
  %xor87.3 = xor i64 %88, %shr79.3, !dbg !1199
  store i64 %xor87.3, ptr %arrayidx86.3, align 8, !dbg !1199
  br label %for.body59.4, !dbg !1200

for.body59.4:                                     ; preds = %for.body59.3, %if.then73.3
    #dbg_value(i32 4, !1174, !DIExpression(), !1177)
  %89 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 32, !dbg !1178
  %arrayidx62.idx.4 = mul nuw nsw i32 %c52.0, 56, !dbg !1178
  %arrayidx62.4 = getelementptr inbounds nuw i8, ptr %89, i32 %arrayidx62.idx.4, !dbg !1178
  %90 = load i64, ptr %arrayidx62.4, align 8, !dbg !1178
  %sh_prom63.4 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1181
  %shl64.4 = shl i64 %90, %sh_prom63.4, !dbg !1181
  %mul65.4 = mul nsw i32 %j.0, 10, !dbg !1182
  %add66.4 = add nsw i32 %mul65.4, %c52.0, !dbg !1183
  %91 = mul i32 %words_to_shift.1, 112, !dbg !1184
  %mul68.4 = add i32 %91, 448, !dbg !1184
  %add69.4 = add i32 %add66.4, %mul68.4, !dbg !1185
  %arrayidx70.4 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69.4, !dbg !1186
  %92 = load i64, ptr %arrayidx70.4, align 8, !dbg !1187
  %xor71.4 = xor i64 %92, %shl64.4, !dbg !1187
  store i64 %xor71.4, ptr %arrayidx70.4, align 8, !dbg !1187
  %cmp72.4 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1188
  br i1 %cmp72.4, label %if.then73.4, label %for.body59.5, !dbg !1188

if.then73.4:                                      ; preds = %for.body59.4
  %93 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 32, !dbg !1190
  %arrayidx76.idx.4 = mul nuw nsw i32 %c52.0, 56, !dbg !1190
  %arrayidx76.4 = getelementptr inbounds nuw i8, ptr %93, i32 %arrayidx76.idx.4, !dbg !1190
  %94 = load i64, ptr %arrayidx76.4, align 8, !dbg !1190
  %sub77.4 = sub nsw i32 64, %bits_to_shift.1, !dbg !1192
  %sh_prom78.4 = zext nneg i32 %sub77.4 to i64, !dbg !1193
  %shr79.4 = lshr i64 %94, %sh_prom78.4, !dbg !1193
  %mul80.4 = mul nsw i32 %j.0, 10, !dbg !1194
  %add81.4 = add nsw i32 %mul80.4, %c52.0, !dbg !1195
  %95 = mul i32 %words_to_shift.1, 112, !dbg !1196
  %mul84.4 = add i32 %95, 560, !dbg !1196
  %add85.4 = add i32 %add81.4, %mul84.4, !dbg !1197
  %arrayidx86.4 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85.4, !dbg !1198
  %96 = load i64, ptr %arrayidx86.4, align 8, !dbg !1199
  %xor87.4 = xor i64 %96, %shr79.4, !dbg !1199
  store i64 %xor87.4, ptr %arrayidx86.4, align 8, !dbg !1199
  br label %for.body59.5, !dbg !1200

for.body59.5:                                     ; preds = %for.body59.4, %if.then73.4
    #dbg_value(i32 5, !1174, !DIExpression(), !1177)
  %97 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 40, !dbg !1178
  %arrayidx62.idx.5 = mul nuw nsw i32 %c52.0, 56, !dbg !1178
  %arrayidx62.5 = getelementptr inbounds nuw i8, ptr %97, i32 %arrayidx62.idx.5, !dbg !1178
  %98 = load i64, ptr %arrayidx62.5, align 8, !dbg !1178
  %sh_prom63.5 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1181
  %shl64.5 = shl i64 %98, %sh_prom63.5, !dbg !1181
  %mul65.5 = mul nsw i32 %j.0, 10, !dbg !1182
  %add66.5 = add nsw i32 %mul65.5, %c52.0, !dbg !1183
  %99 = mul i32 %words_to_shift.1, 112, !dbg !1184
  %mul68.5 = add i32 %99, 560, !dbg !1184
  %add69.5 = add i32 %add66.5, %mul68.5, !dbg !1185
  %arrayidx70.5 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69.5, !dbg !1186
  %100 = load i64, ptr %arrayidx70.5, align 8, !dbg !1187
  %xor71.5 = xor i64 %100, %shl64.5, !dbg !1187
  store i64 %xor71.5, ptr %arrayidx70.5, align 8, !dbg !1187
  %cmp72.5 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1188
  br i1 %cmp72.5, label %if.then73.5, label %for.body59.6, !dbg !1188

if.then73.5:                                      ; preds = %for.body59.5
  %101 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 40, !dbg !1190
  %arrayidx76.idx.5 = mul nuw nsw i32 %c52.0, 56, !dbg !1190
  %arrayidx76.5 = getelementptr inbounds nuw i8, ptr %101, i32 %arrayidx76.idx.5, !dbg !1190
  %102 = load i64, ptr %arrayidx76.5, align 8, !dbg !1190
  %sub77.5 = sub nsw i32 64, %bits_to_shift.1, !dbg !1192
  %sh_prom78.5 = zext nneg i32 %sub77.5 to i64, !dbg !1193
  %shr79.5 = lshr i64 %102, %sh_prom78.5, !dbg !1193
  %mul80.5 = mul nsw i32 %j.0, 10, !dbg !1194
  %add81.5 = add nsw i32 %mul80.5, %c52.0, !dbg !1195
  %103 = mul i32 %words_to_shift.1, 112, !dbg !1196
  %mul84.5 = add i32 %103, 672, !dbg !1196
  %add85.5 = add i32 %add81.5, %mul84.5, !dbg !1197
  %arrayidx86.5 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85.5, !dbg !1198
  %104 = load i64, ptr %arrayidx86.5, align 8, !dbg !1199
  %xor87.5 = xor i64 %104, %shr79.5, !dbg !1199
  store i64 %xor87.5, ptr %arrayidx86.5, align 8, !dbg !1199
  br label %for.body59.6, !dbg !1200

for.body59.6:                                     ; preds = %for.body59.5, %if.then73.5
    #dbg_value(i32 6, !1174, !DIExpression(), !1177)
  %105 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 48, !dbg !1178
  %arrayidx62.idx.6 = mul nuw nsw i32 %c52.0, 56, !dbg !1178
  %arrayidx62.6 = getelementptr inbounds nuw i8, ptr %105, i32 %arrayidx62.idx.6, !dbg !1178
  %106 = load i64, ptr %arrayidx62.6, align 8, !dbg !1178
  %sh_prom63.6 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1181
  %shl64.6 = shl i64 %106, %sh_prom63.6, !dbg !1181
  %mul65.6 = mul nsw i32 %j.0, 10, !dbg !1182
  %add66.6 = add nsw i32 %mul65.6, %c52.0, !dbg !1183
  %107 = mul i32 %words_to_shift.1, 112, !dbg !1184
  %mul68.6 = add i32 %107, 672, !dbg !1184
  %add69.6 = add i32 %add66.6, %mul68.6, !dbg !1185
  %arrayidx70.6 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69.6, !dbg !1186
  %108 = load i64, ptr %arrayidx70.6, align 8, !dbg !1187
  %xor71.6 = xor i64 %108, %shl64.6, !dbg !1187
  store i64 %xor71.6, ptr %arrayidx70.6, align 8, !dbg !1187
  %cmp72.6 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1188
  br i1 %cmp72.6, label %if.then73.6, label %for.inc92, !dbg !1188

if.then73.6:                                      ; preds = %for.body59.6
  %109 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 48, !dbg !1190
  %arrayidx76.idx.6 = mul nuw nsw i32 %c52.0, 56, !dbg !1190
  %arrayidx76.6 = getelementptr inbounds nuw i8, ptr %109, i32 %arrayidx76.idx.6, !dbg !1190
  %110 = load i64, ptr %arrayidx76.6, align 8, !dbg !1190
  %sub77.6 = sub nsw i32 64, %bits_to_shift.1, !dbg !1192
  %sh_prom78.6 = zext nneg i32 %sub77.6 to i64, !dbg !1193
  %shr79.6 = lshr i64 %110, %sh_prom78.6, !dbg !1193
  %mul80.6 = mul nsw i32 %j.0, 10, !dbg !1194
  %add81.6 = add nsw i32 %mul80.6, %c52.0, !dbg !1195
  %111 = mul i32 %words_to_shift.1, 112, !dbg !1196
  %mul84.6 = add i32 %111, 784, !dbg !1196
  %add85.6 = add i32 %add81.6, %mul84.6, !dbg !1197
  %arrayidx86.6 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85.6, !dbg !1198
  %112 = load i64, ptr %arrayidx86.6, align 8, !dbg !1199
  %xor87.6 = xor i64 %112, %shr79.6, !dbg !1199
  store i64 %xor87.6, ptr %arrayidx86.6, align 8, !dbg !1199
  br label %for.inc92, !dbg !1200

for.inc92:                                        ; preds = %for.body59.6, %if.then73.6
    #dbg_value(i32 7, !1174, !DIExpression(), !1177)
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1201
    #dbg_value(i32 %inc93, !1166, !DIExpression(), !1168)
  br label %for.cond53, !dbg !1202, !llvm.loop !1203

if.end95:                                         ; preds = %for.cond53, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1205
    #dbg_value(i32 %add96, !1074, !DIExpression(), !1071)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1206
  %inc99 = zext i1 %cmp97 to i32, !dbg !1206
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1206
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1206
    #dbg_value(i32 %spec.select3, !1074, !DIExpression(), !1071)
    #dbg_value(i32 %spec.select, !1075, !DIExpression(), !1071)
  %dec = add nsw i32 %j.0, -1, !dbg !1208
    #dbg_value(i32 %dec, !1114, !DIExpression(), !1115)
  br label %for.cond6, !dbg !1209, !llvm.loop !1210

for.inc103:                                       ; preds = %for.cond6
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1212
    #dbg_value(i32 %inc104, !1106, !DIExpression(), !1107)
  br label %for.cond3, !dbg !1213, !llvm.loop !1214

for.cond107:                                      ; preds = %for.cond3, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond3 ], !dbg !1216
    #dbg_value(i32 %c106.0, !1218, !DIExpression(), !1219)
  %cmp109 = icmp samesign ult i32 %c106.0, 1232, !dbg !1220
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1222

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1223
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1225
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1226
    #dbg_value(i32 %add113, !1218, !DIExpression(), !1219)
  br label %for.cond107, !dbg !1227, !llvm.loop !1228

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1230, !DIExpression(), !1234)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1234
    #dbg_value(i32 0, !1235, !DIExpression(), !1237)
  br label %for.cond116, !dbg !1238

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138.3, %for.body118 ], !dbg !1239
    #dbg_value(i32 %i115.0, !1235, !DIExpression(), !1237)
  %exitcond9.not = icmp eq i32 %i115.0, 4, !dbg !1240
  br i1 %exitcond9.not, label %for.cond141, label %for.body118, !dbg !1242

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1243
  %113 = load i8, ptr %arrayidx119, align 1, !dbg !1243
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %113, i8 noundef zeroext 1) #6, !dbg !1245
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1246
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1247
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1248
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %113, i8 noundef zeroext 2) #6, !dbg !1249
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1250
  %add125 = or disjoint i32 %mul124, 1, !dbg !1251
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1252
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1253
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %113, i8 noundef zeroext 4) #6, !dbg !1254
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1255
  %add130 = or disjoint i32 %mul129, 2, !dbg !1256
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1257
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1258
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %113, i8 noundef zeroext 8) #6, !dbg !1259
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1260
  %add135 = or disjoint i32 %mul134, 3, !dbg !1261
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1262
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1263
    #dbg_value(i32 %i115.0, !1235, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1237)
  %inc138 = or disjoint i32 %i115.0, 1, !dbg !1264
    #dbg_value(i32 %inc138, !1235, !DIExpression(), !1237)
  %arrayidx119.1 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138, !dbg !1243
  %114 = load i8, ptr %arrayidx119.1, align 1, !dbg !1243
  %call.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %114, i8 noundef zeroext 1) #6, !dbg !1245
  %mul120.1 = shl nuw nsw i32 %inc138, 2, !dbg !1246
  %arrayidx121.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.1, !dbg !1247
  store i8 %call.1, ptr %arrayidx121.1, align 1, !dbg !1248
  %call123.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %114, i8 noundef zeroext 2) #6, !dbg !1249
  %mul124.1 = shl nuw nsw i32 %inc138, 2, !dbg !1250
  %add125.1 = or disjoint i32 %mul124.1, 1, !dbg !1251
  %arrayidx126.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.1, !dbg !1252
  store i8 %call123.1, ptr %arrayidx126.1, align 1, !dbg !1253
  %call128.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %114, i8 noundef zeroext 4) #6, !dbg !1254
  %mul129.1 = shl nuw nsw i32 %inc138, 2, !dbg !1255
  %add130.1 = or disjoint i32 %mul129.1, 2, !dbg !1256
  %arrayidx131.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.1, !dbg !1257
  store i8 %call128.1, ptr %arrayidx131.1, align 1, !dbg !1258
  %call133.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %114, i8 noundef zeroext 8) #6, !dbg !1259
  %mul134.1 = shl nuw nsw i32 %inc138, 2, !dbg !1260
  %add135.1 = or disjoint i32 %mul134.1, 3, !dbg !1261
  %arrayidx136.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.1, !dbg !1262
  store i8 %call133.1, ptr %arrayidx136.1, align 1, !dbg !1263
    #dbg_value(i32 %i115.0, !1235, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1237)
  %inc138.1 = or disjoint i32 %i115.0, 2, !dbg !1264
    #dbg_value(i32 %inc138.1, !1235, !DIExpression(), !1237)
  %arrayidx119.2 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138.1, !dbg !1243
  %115 = load i8, ptr %arrayidx119.2, align 1, !dbg !1243
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %115, i8 noundef zeroext 1) #6, !dbg !1245
  %mul120.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1246
  %arrayidx121.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.2, !dbg !1247
  store i8 %call.2, ptr %arrayidx121.2, align 1, !dbg !1248
  %call123.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %115, i8 noundef zeroext 2) #6, !dbg !1249
  %mul124.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1250
  %add125.2 = or disjoint i32 %mul124.2, 1, !dbg !1251
  %arrayidx126.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.2, !dbg !1252
  store i8 %call123.2, ptr %arrayidx126.2, align 1, !dbg !1253
  %call128.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %115, i8 noundef zeroext 4) #6, !dbg !1254
  %mul129.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1255
  %add130.2 = or disjoint i32 %mul129.2, 2, !dbg !1256
  %arrayidx131.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.2, !dbg !1257
  store i8 %call128.2, ptr %arrayidx131.2, align 1, !dbg !1258
  %call133.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %115, i8 noundef zeroext 8) #6, !dbg !1259
  %mul134.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1260
  %add135.2 = or disjoint i32 %mul134.2, 3, !dbg !1261
  %arrayidx136.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.2, !dbg !1262
  store i8 %call133.2, ptr %arrayidx136.2, align 1, !dbg !1263
    #dbg_value(i32 %i115.0, !1235, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1237)
  %inc138.2 = or disjoint i32 %i115.0, 3, !dbg !1264
    #dbg_value(i32 %inc138.2, !1235, !DIExpression(), !1237)
  %arrayidx119.3 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138.2, !dbg !1243
  %116 = load i8, ptr %arrayidx119.3, align 1, !dbg !1243
  %call.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %116, i8 noundef zeroext 1) #6, !dbg !1245
  %mul120.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1246
  %arrayidx121.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.3, !dbg !1247
  store i8 %call.3, ptr %arrayidx121.3, align 1, !dbg !1248
  %call123.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %116, i8 noundef zeroext 2) #6, !dbg !1249
  %mul124.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1250
  %add125.3 = or disjoint i32 %mul124.3, 1, !dbg !1251
  %arrayidx126.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.3, !dbg !1252
  store i8 %call123.3, ptr %arrayidx126.3, align 1, !dbg !1253
  %call128.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %116, i8 noundef zeroext 4) #6, !dbg !1254
  %mul129.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1255
  %add130.3 = or disjoint i32 %mul129.3, 2, !dbg !1256
  %arrayidx131.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.3, !dbg !1257
  store i8 %call128.3, ptr %arrayidx131.3, align 1, !dbg !1258
  %call133.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %116, i8 noundef zeroext 8) #6, !dbg !1259
  %mul134.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1260
  %add135.3 = or disjoint i32 %mul134.3, 3, !dbg !1261
  %arrayidx136.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.3, !dbg !1262
  store i8 %call133.3, ptr %arrayidx136.3, align 1, !dbg !1263
  %inc138.3 = add nuw nsw i32 %i115.0, 4, !dbg !1264
    #dbg_value(i32 %inc138.3, !1235, !DIExpression(), !1237)
  br label %for.cond116, !dbg !1265, !llvm.loop !1266

for.cond141:                                      ; preds = %for.cond116, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond116 ], !dbg !1268
    #dbg_value(i32 %c140.0, !1270, !DIExpression(), !1271)
  %cmp142 = icmp samesign ult i32 %c140.0, 112, !dbg !1272
  br i1 %cmp142, label %for.cond144, label %for.cond207, !dbg !1274

for.cond144:                                      ; preds = %for.cond141, %for.body146
  %r.0 = phi i32 [ %inc201, %for.body146 ], [ 108, %for.cond141 ], !dbg !1275
    #dbg_value(i32 %r.0, !1278, !DIExpression(), !1279)
  %exitcond11.not = icmp eq i32 %r.0, 174, !dbg !1280
  br i1 %exitcond11.not, label %for.inc203, label %for.body146, !dbg !1282

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1283
  %mul147 = mul nuw nsw i32 %div1, 112, !dbg !1285
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1286
  %rem = and i32 %r.0, 15, !dbg !1287
  %add149 = or disjoint i32 %add148, %rem, !dbg !1288
    #dbg_value(i32 %add149, !1289, !DIExpression(), !1290)
  %arrayidx150 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1291
  %117 = load i64, ptr %arrayidx150, align 8, !dbg !1291
  %and151 = and i64 %117, 1229782938247303441, !dbg !1292
    #dbg_value(i64 %and151, !1293, !DIExpression(), !1290)
  %shr153 = lshr i64 %117, 1, !dbg !1294
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1295
    #dbg_value(i64 %and154, !1296, !DIExpression(), !1290)
  %shr156 = lshr i64 %117, 2, !dbg !1297
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1298
    #dbg_value(i64 %and157, !1299, !DIExpression(), !1290)
  %arrayidx158 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1300
  %118 = load i64, ptr %arrayidx158, align 8, !dbg !1300
  %shr159 = lshr i64 %118, 3, !dbg !1301
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1302
    #dbg_value(i64 %and160, !1303, !DIExpression(), !1290)
    #dbg_value(i32 0, !1304, !DIExpression(), !1306)
    #dbg_value(i32 0, !1304, !DIExpression(), !1306)
  %119 = load i8, ptr %tab, align 1, !dbg !1307
  %conv = zext i8 %119 to i64, !dbg !1307
  %mul167 = mul i64 %and151, %conv, !dbg !1310
  %arrayidx170 = getelementptr inbounds nuw i8, ptr %tab, i32 1, !dbg !1311
  %120 = load i8, ptr %arrayidx170, align 1, !dbg !1311
  %conv171 = zext i8 %120 to i64, !dbg !1311
  %mul172 = mul i64 %and154, %conv171, !dbg !1312
  %xor173 = xor i64 %mul167, %mul172, !dbg !1313
  %arrayidx176 = getelementptr inbounds nuw i8, ptr %tab, i32 2, !dbg !1314
  %121 = load i8, ptr %arrayidx176, align 1, !dbg !1314
  %conv177 = zext i8 %121 to i64, !dbg !1314
  %mul178 = mul i64 %and157, %conv177, !dbg !1315
  %xor179 = xor i64 %xor173, %mul178, !dbg !1316
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %tab, i32 3, !dbg !1317
  %122 = load i8, ptr %arrayidx182, align 1, !dbg !1317
  %conv183 = zext i8 %122 to i64, !dbg !1317
  %mul184 = mul i64 %and160, %conv183, !dbg !1318
  %xor185 = xor i64 %xor179, %mul184, !dbg !1319
  %sub187 = add nsw i32 %r.0, -108, !dbg !1320
  %div1882 = lshr i32 %sub187, 4, !dbg !1321
  %mul189 = mul i32 %div1882, 112, !dbg !1322
  %add190 = add i32 %mul189, %c140.0, !dbg !1323
  %sub192 = add nuw nsw i32 %r.0, 4, !dbg !1324
  %rem193 = and i32 %sub192, 15, !dbg !1325
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1326
  %arrayidx195 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194, !dbg !1327
  %123 = load i64, ptr %arrayidx195, align 8, !dbg !1328
  %xor196 = xor i64 %123, %xor185, !dbg !1328
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1328
    #dbg_value(i32 1, !1304, !DIExpression(), !1306)
  %arrayidx166.1 = getelementptr inbounds nuw i8, ptr %tab, i32 4, !dbg !1307
  %124 = load i8, ptr %arrayidx166.1, align 1, !dbg !1307
  %conv.1 = zext i8 %124 to i64, !dbg !1307
  %mul167.1 = mul i64 %and151, %conv.1, !dbg !1310
  %arrayidx170.1 = getelementptr inbounds nuw i8, ptr %tab, i32 5, !dbg !1311
  %125 = load i8, ptr %arrayidx170.1, align 1, !dbg !1311
  %conv171.1 = zext i8 %125 to i64, !dbg !1311
  %mul172.1 = mul i64 %and154, %conv171.1, !dbg !1312
  %xor173.1 = xor i64 %mul167.1, %mul172.1, !dbg !1313
  %arrayidx176.1 = getelementptr inbounds nuw i8, ptr %tab, i32 6, !dbg !1314
  %126 = load i8, ptr %arrayidx176.1, align 1, !dbg !1314
  %conv177.1 = zext i8 %126 to i64, !dbg !1314
  %mul178.1 = mul i64 %and157, %conv177.1, !dbg !1315
  %xor179.1 = xor i64 %xor173.1, %mul178.1, !dbg !1316
  %arrayidx182.1 = getelementptr inbounds nuw i8, ptr %tab, i32 7, !dbg !1317
  %127 = load i8, ptr %arrayidx182.1, align 1, !dbg !1317
  %conv183.1 = zext i8 %127 to i64, !dbg !1317
  %mul184.1 = mul i64 %and160, %conv183.1, !dbg !1318
  %xor185.1 = xor i64 %xor179.1, %mul184.1, !dbg !1319
  %sub187.1 = add nsw i32 %r.0, -107, !dbg !1320
  %div1882.1 = lshr i32 %sub187.1, 4, !dbg !1321
  %mul189.1 = mul i32 %div1882.1, 112, !dbg !1322
  %add190.1 = add i32 %mul189.1, %c140.0, !dbg !1323
  %sub192.1 = add nuw nsw i32 %r.0, 5, !dbg !1324
  %rem193.1 = and i32 %sub192.1, 15, !dbg !1325
  %add194.1 = or disjoint i32 %add190.1, %rem193.1, !dbg !1326
  %arrayidx195.1 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194.1, !dbg !1327
  %128 = load i64, ptr %arrayidx195.1, align 8, !dbg !1328
  %xor196.1 = xor i64 %128, %xor185.1, !dbg !1328
  store i64 %xor196.1, ptr %arrayidx195.1, align 8, !dbg !1328
    #dbg_value(i32 2, !1304, !DIExpression(), !1306)
  %arrayidx166.2 = getelementptr inbounds nuw i8, ptr %tab, i32 8, !dbg !1307
  %129 = load i8, ptr %arrayidx166.2, align 1, !dbg !1307
  %conv.2 = zext i8 %129 to i64, !dbg !1307
  %mul167.2 = mul i64 %and151, %conv.2, !dbg !1310
  %arrayidx170.2 = getelementptr inbounds nuw i8, ptr %tab, i32 9, !dbg !1311
  %130 = load i8, ptr %arrayidx170.2, align 1, !dbg !1311
  %conv171.2 = zext i8 %130 to i64, !dbg !1311
  %mul172.2 = mul i64 %and154, %conv171.2, !dbg !1312
  %xor173.2 = xor i64 %mul167.2, %mul172.2, !dbg !1313
  %arrayidx176.2 = getelementptr inbounds nuw i8, ptr %tab, i32 10, !dbg !1314
  %131 = load i8, ptr %arrayidx176.2, align 1, !dbg !1314
  %conv177.2 = zext i8 %131 to i64, !dbg !1314
  %mul178.2 = mul i64 %and157, %conv177.2, !dbg !1315
  %xor179.2 = xor i64 %xor173.2, %mul178.2, !dbg !1316
  %arrayidx182.2 = getelementptr inbounds nuw i8, ptr %tab, i32 11, !dbg !1317
  %132 = load i8, ptr %arrayidx182.2, align 1, !dbg !1317
  %conv183.2 = zext i8 %132 to i64, !dbg !1317
  %mul184.2 = mul i64 %and160, %conv183.2, !dbg !1318
  %xor185.2 = xor i64 %xor179.2, %mul184.2, !dbg !1319
  %sub187.2 = add nsw i32 %r.0, -106, !dbg !1320
  %div1882.2 = lshr i32 %sub187.2, 4, !dbg !1321
  %mul189.2 = mul i32 %div1882.2, 112, !dbg !1322
  %add190.2 = add i32 %mul189.2, %c140.0, !dbg !1323
  %sub192.2 = add nuw nsw i32 %r.0, 6, !dbg !1324
  %rem193.2 = and i32 %sub192.2, 15, !dbg !1325
  %add194.2 = or disjoint i32 %add190.2, %rem193.2, !dbg !1326
  %arrayidx195.2 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194.2, !dbg !1327
  %133 = load i64, ptr %arrayidx195.2, align 8, !dbg !1328
  %xor196.2 = xor i64 %133, %xor185.2, !dbg !1328
  store i64 %xor196.2, ptr %arrayidx195.2, align 8, !dbg !1328
    #dbg_value(i32 3, !1304, !DIExpression(), !1306)
  %arrayidx166.3 = getelementptr inbounds nuw i8, ptr %tab, i32 12, !dbg !1307
  %134 = load i8, ptr %arrayidx166.3, align 1, !dbg !1307
  %conv.3 = zext i8 %134 to i64, !dbg !1307
  %mul167.3 = mul i64 %and151, %conv.3, !dbg !1310
  %arrayidx170.3 = getelementptr inbounds nuw i8, ptr %tab, i32 13, !dbg !1311
  %135 = load i8, ptr %arrayidx170.3, align 1, !dbg !1311
  %conv171.3 = zext i8 %135 to i64, !dbg !1311
  %mul172.3 = mul i64 %and154, %conv171.3, !dbg !1312
  %xor173.3 = xor i64 %mul167.3, %mul172.3, !dbg !1313
  %arrayidx176.3 = getelementptr inbounds nuw i8, ptr %tab, i32 14, !dbg !1314
  %136 = load i8, ptr %arrayidx176.3, align 1, !dbg !1314
  %conv177.3 = zext i8 %136 to i64, !dbg !1314
  %mul178.3 = mul i64 %and157, %conv177.3, !dbg !1315
  %xor179.3 = xor i64 %xor173.3, %mul178.3, !dbg !1316
  %arrayidx182.3 = getelementptr inbounds nuw i8, ptr %tab, i32 15, !dbg !1317
  %137 = load i8, ptr %arrayidx182.3, align 1, !dbg !1317
  %conv183.3 = zext i8 %137 to i64, !dbg !1317
  %mul184.3 = mul i64 %and160, %conv183.3, !dbg !1318
  %xor185.3 = xor i64 %xor179.3, %mul184.3, !dbg !1319
  %sub187.3 = add nsw i32 %r.0, -105, !dbg !1320
  %div1882.3 = lshr i32 %sub187.3, 4, !dbg !1321
  %mul189.3 = mul i32 %div1882.3, 112, !dbg !1322
  %add190.3 = add i32 %mul189.3, %c140.0, !dbg !1323
  %sub192.3 = add nuw nsw i32 %r.0, 7, !dbg !1324
  %rem193.3 = and i32 %sub192.3, 15, !dbg !1325
  %add194.3 = or disjoint i32 %add190.3, %rem193.3, !dbg !1326
  %arrayidx195.3 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194.3, !dbg !1327
  %138 = load i64, ptr %arrayidx195.3, align 8, !dbg !1328
  %xor196.3 = xor i64 %138, %xor185.3, !dbg !1328
  store i64 %xor196.3, ptr %arrayidx195.3, align 8, !dbg !1328
    #dbg_value(i32 4, !1304, !DIExpression(), !1306)
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1329
    #dbg_value(i32 %inc201, !1278, !DIExpression(), !1279)
  br label %for.cond144, !dbg !1330, !llvm.loop !1331

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1333
    #dbg_value(i32 %add204, !1270, !DIExpression(), !1271)
  br label %for.cond141, !dbg !1334, !llvm.loop !1335

for.cond207:                                      ; preds = %for.cond141, %for.inc241
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc241 ], [ 108, %for.cond141 ], !dbg !1337
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond141 ], !dbg !1337
    #dbg_value(i32 %r206.0, !1339, !DIExpression(), !1340)
  %cmp208 = icmp samesign ult i32 %r206.0, 108, !dbg !1341
  br i1 %cmp208, label %for.cond212, label %for.end243, !dbg !1343

for.cond212:                                      ; preds = %for.cond207, %for.inc238.3
  %c211.0 = phi i32 [ %add239.3, %for.inc238.3 ], [ 0, %for.cond207 ], !dbg !1344
    #dbg_value(i32 %c211.0, !1347, !DIExpression(), !1348)
  br label %for.cond217, !dbg !1349

for.cond217:                                      ; preds = %for.cond212, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond212 ], !dbg !1353
    #dbg_value(i32 %i216.0, !1354, !DIExpression(), !1355)
  %exitcond12.not = icmp eq i32 %i216.0, %indvars.iv, !dbg !1356
  br i1 %exitcond12.not, label %for.inc238, label %for.body221, !dbg !1349

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 7, !dbg !1358
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1360
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1361
  %arrayidx226 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225, !dbg !1362
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1363
  %mul228 = mul nuw nsw i32 %add227, 111, !dbg !1364
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1365
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1366
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef %add.ptr230, i32 noundef 16) #6, !dbg !1367
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1368
    #dbg_value(i32 %inc236, !1354, !DIExpression(), !1355)
  br label %for.cond217, !dbg !1369, !llvm.loop !1370

for.inc238:                                       ; preds = %for.cond217
  %add239 = or disjoint i32 %c211.0, 16, !dbg !1372
    #dbg_value(i32 %add239, !1347, !DIExpression(), !1348)
  br label %for.cond217.1, !dbg !1349

for.cond217.1:                                    ; preds = %for.body221.1, %for.inc238
  %i216.0.1 = phi i32 [ %inc236.1, %for.body221.1 ], [ 0, %for.inc238 ], !dbg !1353
    #dbg_value(i32 %i216.0.1, !1354, !DIExpression(), !1355)
  %exitcond12.1.not = icmp eq i32 %i216.0.1, %indvars.iv, !dbg !1356
  br i1 %exitcond12.1.not, label %for.inc238.1, label %for.body221.1, !dbg !1349

for.inc238.1:                                     ; preds = %for.cond217.1
  %add239.1 = or disjoint i32 %c211.0, 32, !dbg !1372
    #dbg_value(i32 %add239.1, !1347, !DIExpression(), !1348)
  br label %for.cond217.2, !dbg !1349

for.body221.1:                                    ; preds = %for.cond217.1
  %div223.1 = mul nuw nsw i32 %r206.0, 7, !dbg !1358
  %add224.1 = add nuw nsw i32 %div223.1, %add239, !dbg !1360
  %add225.1 = add nuw nsw i32 %add224.1, %i216.0.1, !dbg !1361
  %arrayidx226.1 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225.1, !dbg !1362
  %add227.1 = add nuw nsw i32 %r206.0, %i216.0.1, !dbg !1363
  %mul228.1 = mul nuw nsw i32 %add227.1, 111, !dbg !1364
  %add.ptr229.1 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.1, !dbg !1365
  %add.ptr230.1 = getelementptr inbounds nuw i8, ptr %add.ptr229.1, i32 %add239, !dbg !1366
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.1, ptr noundef nonnull %add.ptr230.1, i32 noundef 16) #6, !dbg !1367
  %inc236.1 = add nuw nsw i32 %i216.0.1, 1, !dbg !1368
    #dbg_value(i32 %inc236.1, !1354, !DIExpression(), !1355)
  br label %for.cond217.1, !dbg !1369, !llvm.loop !1370

for.cond217.2:                                    ; preds = %for.body221.2, %for.inc238.1
  %i216.0.2 = phi i32 [ %inc236.2, %for.body221.2 ], [ 0, %for.inc238.1 ], !dbg !1353
    #dbg_value(i32 %i216.0.2, !1354, !DIExpression(), !1355)
  %exitcond12.2.not = icmp eq i32 %i216.0.2, %indvars.iv, !dbg !1356
  br i1 %exitcond12.2.not, label %for.inc238.2, label %for.body221.2, !dbg !1349

for.inc238.2:                                     ; preds = %for.cond217.2
  %add239.2 = or disjoint i32 %c211.0, 48, !dbg !1372
    #dbg_value(i32 %add239.2, !1347, !DIExpression(), !1348)
  %cmp213.3 = icmp samesign ult i32 %add239.2, 110, !dbg !1373
  br i1 %cmp213.3, label %for.cond217.3, label %for.inc241, !dbg !1374

for.body221.2:                                    ; preds = %for.cond217.2
  %div223.2 = mul nuw nsw i32 %r206.0, 7, !dbg !1358
  %add224.2 = add nuw nsw i32 %div223.2, %add239.1, !dbg !1360
  %add225.2 = add nuw nsw i32 %add224.2, %i216.0.2, !dbg !1361
  %arrayidx226.2 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225.2, !dbg !1362
  %add227.2 = add nuw nsw i32 %r206.0, %i216.0.2, !dbg !1363
  %mul228.2 = mul nuw nsw i32 %add227.2, 111, !dbg !1364
  %add.ptr229.2 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.2, !dbg !1365
  %add.ptr230.2 = getelementptr inbounds nuw i8, ptr %add.ptr229.2, i32 %add239.1, !dbg !1366
  %cmp232.2 = icmp samesign ult i32 %add239.1, 94, !dbg !1375
  %sub234.2 = sub nuw nsw i32 110, %add239.1, !dbg !1375
  %cond.2 = select i1 %cmp232.2, i32 16, i32 %sub234.2, !dbg !1375
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.2, ptr noundef nonnull %add.ptr230.2, i32 noundef %cond.2) #6, !dbg !1367
  %inc236.2 = add nuw nsw i32 %i216.0.2, 1, !dbg !1368
    #dbg_value(i32 %inc236.2, !1354, !DIExpression(), !1355)
  br label %for.cond217.2, !dbg !1369, !llvm.loop !1370

for.cond217.3:                                    ; preds = %for.inc238.2, %for.body221.3
  %i216.0.3 = phi i32 [ %inc236.3, %for.body221.3 ], [ 0, %for.inc238.2 ], !dbg !1353
    #dbg_value(i32 %i216.0.3, !1354, !DIExpression(), !1355)
  %exitcond12.3.not = icmp eq i32 %i216.0.3, %indvars.iv, !dbg !1356
  br i1 %exitcond12.3.not, label %for.inc238.3, label %for.body221.3, !dbg !1349

for.inc238.3:                                     ; preds = %for.cond217.3
  %add239.3 = add nuw nsw i32 %c211.0, 64, !dbg !1372
    #dbg_value(i32 %add239.3, !1347, !DIExpression(), !1348)
  br label %for.cond212, !dbg !1376, !llvm.loop !1377

for.body221.3:                                    ; preds = %for.cond217.3
  %div223.3 = mul nuw nsw i32 %r206.0, 7, !dbg !1358
  %add224.3 = add nuw nsw i32 %div223.3, %add239.2, !dbg !1360
  %add225.3 = add nuw nsw i32 %add224.3, %i216.0.3, !dbg !1361
  %arrayidx226.3 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225.3, !dbg !1362
  %add227.3 = add nuw nsw i32 %r206.0, %i216.0.3, !dbg !1363
  %mul228.3 = mul nuw nsw i32 %add227.3, 111, !dbg !1364
  %add.ptr229.3 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.3, !dbg !1365
  %add.ptr230.3 = getelementptr inbounds nuw i8, ptr %add.ptr229.3, i32 %add239.2, !dbg !1366
  %cmp232.3 = icmp samesign ult i32 %add239.2, 94, !dbg !1375
  %sub234.3 = sub nsw i32 110, %add239.2, !dbg !1375
  %cond.3 = select i1 %cmp232.3, i32 16, i32 %sub234.3, !dbg !1375
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.3, ptr noundef nonnull %add.ptr230.3, i32 noundef %cond.3) #6, !dbg !1367
  %inc236.3 = add nuw nsw i32 %i216.0.3, 1, !dbg !1368
    #dbg_value(i32 %inc236.3, !1354, !DIExpression(), !1355)
  br label %for.cond217.3, !dbg !1369, !llvm.loop !1370

for.inc241:                                       ; preds = %for.inc238.2
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1379
    #dbg_value(i32 %add242, !1339, !DIExpression(), !1340)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1380
  br label %for.cond207, !dbg !1380, !llvm.loop !1381

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1383
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1384 {
entry:
    #dbg_value(ptr %a, !1387, !DIExpression(), !1388)
    #dbg_value(ptr %b, !1389, !DIExpression(), !1388)
    #dbg_value(ptr %c, !1390, !DIExpression(), !1388)
    #dbg_value(i32 %colrow_ab, !1391, !DIExpression(), !1388)
    #dbg_value(i32 %row_a, !1392, !DIExpression(), !1388)
    #dbg_value(i32 %col_b, !1393, !DIExpression(), !1388)
    #dbg_value(i32 0, !1394, !DIExpression(), !1396)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1397
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1397
  br label %for.cond, !dbg !1397

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1398
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1387, !DIExpression(), !1388)
    #dbg_value(ptr %c.addr.0, !1390, !DIExpression(), !1388)
    #dbg_value(i32 %i.0, !1394, !DIExpression(), !1396)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1399
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !1401

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1402
    #dbg_value(i32 %j.0, !1405, !DIExpression(), !1406)
    #dbg_value(ptr %c.addr.1, !1390, !DIExpression(), !1388)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1407
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !1409

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1410
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1412
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1413
  %inc = add nuw i32 %j.0, 1, !dbg !1414
    #dbg_value(i32 %inc, !1405, !DIExpression(), !1406)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1415
    #dbg_value(ptr %incdec.ptr, !1390, !DIExpression(), !1388)
  br label %for.cond1, !dbg !1416, !llvm.loop !1417

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !1419
    #dbg_value(i32 %inc5, !1394, !DIExpression(), !1396)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1420
    #dbg_value(ptr %add.ptr6, !1387, !DIExpression(), !1388)
  br label %for.cond, !dbg !1421, !llvm.loop !1422

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1424
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1425 {
entry:
    #dbg_value(ptr %a, !1428, !DIExpression(), !1429)
    #dbg_value(ptr %b, !1430, !DIExpression(), !1429)
    #dbg_value(ptr %c, !1431, !DIExpression(), !1429)
    #dbg_value(i32 %m, !1432, !DIExpression(), !1429)
    #dbg_value(i32 %n, !1433, !DIExpression(), !1429)
    #dbg_value(i32 0, !1434, !DIExpression(), !1436)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1437
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1437
  br label %for.cond, !dbg !1437

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1438
    #dbg_value(i32 %i.0, !1434, !DIExpression(), !1436)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1439
  br i1 %exitcond2.not, label %for.end13, label %for.cond1, !dbg !1441

for.cond1:                                        ; preds = %for.cond, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1442
    #dbg_value(i32 %j.0, !1445, !DIExpression(), !1446)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1447
  br i1 %exitcond.not, label %for.inc11, label %for.body3, !dbg !1449

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1450
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1452
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1453
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1454
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1455
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1456
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1457
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1458
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1459
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1460
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1461
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1462
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1463
  %inc = add nuw i32 %j.0, 1, !dbg !1464
    #dbg_value(i32 %inc, !1445, !DIExpression(), !1446)
  br label %for.cond1, !dbg !1465, !llvm.loop !1466

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1468
    #dbg_value(i32 %inc12, !1434, !DIExpression(), !1436)
  br label %for.cond, !dbg !1469, !llvm.loop !1470

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1472
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1473 {
entry:
    #dbg_value(ptr %m, !1474, !DIExpression(), !1475)
    #dbg_value(ptr %menc, !1476, !DIExpression(), !1475)
    #dbg_value(i32 %mlen, !1477, !DIExpression(), !1475)
    #dbg_value(i32 0, !1478, !DIExpression(), !1475)
  br label %for.cond, !dbg !1479

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1481
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1474, !DIExpression(), !1475)
    #dbg_value(i32 %i.0, !1478, !DIExpression(), !1475)
  %div = sdiv i32 %mlen, 2, !dbg !1482
  %cmp = icmp slt i32 %i.0, %div, !dbg !1484
  br i1 %cmp, label %for.body, label %for.end, !dbg !1485

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1486
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1488
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1489
  %shl = shl i8 %1, 4, !dbg !1490
  %or = or i8 %shl, %0, !dbg !1491
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1492
  store i8 %or, ptr %arrayidx, align 1, !dbg !1493
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1494
    #dbg_value(i32 %inc, !1478, !DIExpression(), !1475)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1495
    #dbg_value(ptr %add.ptr3, !1474, !DIExpression(), !1475)
  br label %for.cond, !dbg !1496, !llvm.loop !1497

for.end:                                          ; preds = %for.cond
  %2 = and i32 %mlen, -2147483647, !dbg !1499
  %cmp4 = icmp eq i32 %2, 1, !dbg !1499
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1499

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0, align 1, !dbg !1501
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1503
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1504
  br label %if.end, !dbg !1505

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !1506
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1507 {
entry:
    #dbg_value(i8 %a, !1510, !DIExpression(), !1511)
    #dbg_value(i8 %b, !1512, !DIExpression(), !1511)
  %xor1 = xor i8 %a, %b, !dbg !1513
  ret i8 %xor1, !dbg !1514
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1515 {
entry:
    #dbg_value(ptr %a, !1518, !DIExpression(), !1519)
    #dbg_value(ptr %b, !1520, !DIExpression(), !1519)
    #dbg_value(i32 %n, !1521, !DIExpression(), !1519)
    #dbg_value(i32 %m, !1522, !DIExpression(), !1519)
    #dbg_value(i8 0, !1523, !DIExpression(), !1519)
    #dbg_value(i32 0, !1524, !DIExpression(), !1526)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1527
  br label %for.cond, !dbg !1527

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1519
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1528
    #dbg_value(i32 %i.0, !1524, !DIExpression(), !1526)
    #dbg_value(ptr %b.addr.0, !1520, !DIExpression(), !1519)
    #dbg_value(i8 %ret.0, !1523, !DIExpression(), !1519)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !1529
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1531

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1532
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1532
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1534
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1535
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1536
    #dbg_value(i8 %call1, !1523, !DIExpression(), !1519)
  %inc = add nuw i32 %i.0, 1, !dbg !1537
    #dbg_value(i32 %inc, !1524, !DIExpression(), !1526)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1538
    #dbg_value(ptr %add.ptr, !1520, !DIExpression(), !1519)
  br label %for.cond, !dbg !1539, !llvm.loop !1540

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !1542
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1543 {
entry:
    #dbg_value(i8 %a, !1544, !DIExpression(), !1545)
    #dbg_value(i8 %b, !1546, !DIExpression(), !1545)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !1547
  %xor1 = xor i8 %a, %0, !dbg !1548
    #dbg_value(i8 %xor1, !1544, !DIExpression(), !1545)
  %1 = trunc i8 %xor1 to i1, !dbg !1549
    #dbg_value(i8 poison, !1550, !DIExpression(), !1545)
  %2 = and i8 %xor1, 2, !dbg !1551
  %mul9 = mul i8 %2, %b, !dbg !1552
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1549
  %xor11 = xor i8 %conv10, %mul9, !dbg !1553
    #dbg_value(i8 %xor11, !1550, !DIExpression(), !1545)
  %3 = and i8 %xor1, 4, !dbg !1554
  %mul16 = mul i8 %3, %b, !dbg !1555
  %xor18 = xor i8 %mul16, %xor11, !dbg !1556
    #dbg_value(i8 %xor18, !1550, !DIExpression(), !1545)
  %4 = and i8 %xor1, 8, !dbg !1557
  %mul23 = mul i8 %4, %b, !dbg !1558
  %xor25 = xor i8 %mul23, %xor18, !dbg !1559
    #dbg_value(i8 %xor25, !1550, !DIExpression(), !1545)
    #dbg_value(i8 %xor25, !1560, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1545)
  %5 = lshr i8 %xor25, 4, !dbg !1561
  %6 = lshr i8 %xor25, 3, !dbg !1562
  %7 = and i8 %6, 14, !dbg !1562
  %8 = xor i8 %5, %7, !dbg !1563
  %xor25.masked = and i8 %xor25, 15, !dbg !1564
  %9 = xor i8 %8, %xor25.masked, !dbg !1564
    #dbg_value(i8 %9, !1565, !DIExpression(), !1545)
  ret i8 %9, !dbg !1566
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1567, !DIExpression(), !1568)
    #dbg_value(i32 0, !1569, !DIExpression(), !1571)
    #dbg_value(i32 0, !1569, !DIExpression(), !1571)
  %0 = load i64, ptr %M, align 8, !dbg !1572
  %shr = lshr i64 %0, 4, !dbg !1575
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1576
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1576
  %xor = xor i64 %shr, %1, !dbg !1577
  %and = and i64 %xor, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and, !1579, !DIExpression(), !1580)
  %shl = shl nuw i64 %and, 4, !dbg !1581
  %2 = load i64, ptr %M, align 8, !dbg !1582
  %xor3 = xor i64 %2, %shl, !dbg !1582
  store i64 %xor3, ptr %M, align 8, !dbg !1582
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1583
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1584
  %xor6 = xor i64 %3, %and, !dbg !1584
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1584
    #dbg_value(i32 2, !1569, !DIExpression(), !1571)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1572
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !1572
  %shr.1 = lshr i64 %4, 4, !dbg !1575
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1576
  %5 = load i64, ptr %arrayidx1.1, align 8, !dbg !1576
  %xor.1 = xor i64 %shr.1, %5, !dbg !1577
  %and.1 = and i64 %xor.1, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and.1, !1579, !DIExpression(), !1580)
  %shl.1 = shl nuw i64 %and.1, 4, !dbg !1581
  %arrayidx2.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1585
  %6 = load i64, ptr %arrayidx2.1, align 8, !dbg !1582
  %xor3.1 = xor i64 %6, %shl.1, !dbg !1582
  store i64 %xor3.1, ptr %arrayidx2.1, align 8, !dbg !1582
  %arrayidx5.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1583
  %7 = load i64, ptr %arrayidx5.1, align 8, !dbg !1584
  %xor6.1 = xor i64 %7, %and.1, !dbg !1584
  store i64 %xor6.1, ptr %arrayidx5.1, align 8, !dbg !1584
    #dbg_value(i32 4, !1569, !DIExpression(), !1571)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1572
  %8 = load i64, ptr %arrayidx.2, align 8, !dbg !1572
  %shr.2 = lshr i64 %8, 4, !dbg !1575
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1576
  %9 = load i64, ptr %arrayidx1.2, align 8, !dbg !1576
  %xor.2 = xor i64 %shr.2, %9, !dbg !1577
  %and.2 = and i64 %xor.2, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and.2, !1579, !DIExpression(), !1580)
  %shl.2 = shl nuw i64 %and.2, 4, !dbg !1581
  %arrayidx2.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1585
  %10 = load i64, ptr %arrayidx2.2, align 8, !dbg !1582
  %xor3.2 = xor i64 %10, %shl.2, !dbg !1582
  store i64 %xor3.2, ptr %arrayidx2.2, align 8, !dbg !1582
  %arrayidx5.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1583
  %11 = load i64, ptr %arrayidx5.2, align 8, !dbg !1584
  %xor6.2 = xor i64 %11, %and.2, !dbg !1584
  store i64 %xor6.2, ptr %arrayidx5.2, align 8, !dbg !1584
    #dbg_value(i32 6, !1569, !DIExpression(), !1571)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1572
  %12 = load i64, ptr %arrayidx.3, align 8, !dbg !1572
  %shr.3 = lshr i64 %12, 4, !dbg !1575
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1576
  %13 = load i64, ptr %arrayidx1.3, align 8, !dbg !1576
  %xor.3 = xor i64 %shr.3, %13, !dbg !1577
  %and.3 = and i64 %xor.3, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and.3, !1579, !DIExpression(), !1580)
  %shl.3 = shl nuw i64 %and.3, 4, !dbg !1581
  %arrayidx2.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1585
  %14 = load i64, ptr %arrayidx2.3, align 8, !dbg !1582
  %xor3.3 = xor i64 %14, %shl.3, !dbg !1582
  store i64 %xor3.3, ptr %arrayidx2.3, align 8, !dbg !1582
  %arrayidx5.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1583
  %15 = load i64, ptr %arrayidx5.3, align 8, !dbg !1584
  %xor6.3 = xor i64 %15, %and.3, !dbg !1584
  store i64 %xor6.3, ptr %arrayidx5.3, align 8, !dbg !1584
    #dbg_value(i32 8, !1569, !DIExpression(), !1571)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1572
  %16 = load i64, ptr %arrayidx.4, align 8, !dbg !1572
  %shr.4 = lshr i64 %16, 4, !dbg !1575
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1576
  %17 = load i64, ptr %arrayidx1.4, align 8, !dbg !1576
  %xor.4 = xor i64 %shr.4, %17, !dbg !1577
  %and.4 = and i64 %xor.4, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and.4, !1579, !DIExpression(), !1580)
  %shl.4 = shl nuw i64 %and.4, 4, !dbg !1581
  %arrayidx2.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1585
  %18 = load i64, ptr %arrayidx2.4, align 8, !dbg !1582
  %xor3.4 = xor i64 %18, %shl.4, !dbg !1582
  store i64 %xor3.4, ptr %arrayidx2.4, align 8, !dbg !1582
  %arrayidx5.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1583
  %19 = load i64, ptr %arrayidx5.4, align 8, !dbg !1584
  %xor6.4 = xor i64 %19, %and.4, !dbg !1584
  store i64 %xor6.4, ptr %arrayidx5.4, align 8, !dbg !1584
    #dbg_value(i32 10, !1569, !DIExpression(), !1571)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1572
  %20 = load i64, ptr %arrayidx.5, align 8, !dbg !1572
  %shr.5 = lshr i64 %20, 4, !dbg !1575
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1576
  %21 = load i64, ptr %arrayidx1.5, align 8, !dbg !1576
  %xor.5 = xor i64 %shr.5, %21, !dbg !1577
  %and.5 = and i64 %xor.5, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and.5, !1579, !DIExpression(), !1580)
  %shl.5 = shl nuw i64 %and.5, 4, !dbg !1581
  %arrayidx2.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1585
  %22 = load i64, ptr %arrayidx2.5, align 8, !dbg !1582
  %xor3.5 = xor i64 %22, %shl.5, !dbg !1582
  store i64 %xor3.5, ptr %arrayidx2.5, align 8, !dbg !1582
  %arrayidx5.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1583
  %23 = load i64, ptr %arrayidx5.5, align 8, !dbg !1584
  %xor6.5 = xor i64 %23, %and.5, !dbg !1584
  store i64 %xor6.5, ptr %arrayidx5.5, align 8, !dbg !1584
    #dbg_value(i32 12, !1569, !DIExpression(), !1571)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1572
  %24 = load i64, ptr %arrayidx.6, align 8, !dbg !1572
  %shr.6 = lshr i64 %24, 4, !dbg !1575
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1576
  %25 = load i64, ptr %arrayidx1.6, align 8, !dbg !1576
  %xor.6 = xor i64 %shr.6, %25, !dbg !1577
  %and.6 = and i64 %xor.6, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and.6, !1579, !DIExpression(), !1580)
  %shl.6 = shl nuw i64 %and.6, 4, !dbg !1581
  %arrayidx2.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1585
  %26 = load i64, ptr %arrayidx2.6, align 8, !dbg !1582
  %xor3.6 = xor i64 %26, %shl.6, !dbg !1582
  store i64 %xor3.6, ptr %arrayidx2.6, align 8, !dbg !1582
  %arrayidx5.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1583
  %27 = load i64, ptr %arrayidx5.6, align 8, !dbg !1584
  %xor6.6 = xor i64 %27, %and.6, !dbg !1584
  store i64 %xor6.6, ptr %arrayidx5.6, align 8, !dbg !1584
    #dbg_value(i32 14, !1569, !DIExpression(), !1571)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1572
  %28 = load i64, ptr %arrayidx.7, align 8, !dbg !1572
  %shr.7 = lshr i64 %28, 4, !dbg !1575
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1576
  %29 = load i64, ptr %arrayidx1.7, align 8, !dbg !1576
  %xor.7 = xor i64 %shr.7, %29, !dbg !1577
  %and.7 = and i64 %xor.7, 1085102592571150095, !dbg !1578
    #dbg_value(i64 %and.7, !1579, !DIExpression(), !1580)
  %shl.7 = shl nuw i64 %and.7, 4, !dbg !1581
  %arrayidx2.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1585
  %30 = load i64, ptr %arrayidx2.7, align 8, !dbg !1582
  %xor3.7 = xor i64 %30, %shl.7, !dbg !1582
  store i64 %xor3.7, ptr %arrayidx2.7, align 8, !dbg !1582
  %arrayidx5.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1583
  %31 = load i64, ptr %arrayidx5.7, align 8, !dbg !1584
  %xor6.7 = xor i64 %31, %and.7, !dbg !1584
  store i64 %xor6.7, ptr %arrayidx5.7, align 8, !dbg !1584
    #dbg_value(i32 16, !1569, !DIExpression(), !1571)
    #dbg_value(i32 0, !1586, !DIExpression(), !1588)
  %32 = load i64, ptr %M, align 8, !dbg !1589
  %shr13 = lshr i64 %32, 8, !dbg !1592
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1593
  %33 = load i64, ptr %arrayidx15, align 8, !dbg !1593
  %xor16 = xor i64 %shr13, %33, !dbg !1594
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1595
    #dbg_value(i64 %and17, !1596, !DIExpression(), !1597)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1598
  %34 = load i64, ptr %arrayidx19, align 8, !dbg !1598
  %shr20 = lshr i64 %34, 8, !dbg !1599
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1600
  %35 = load i64, ptr %arrayidx22, align 8, !dbg !1600
  %xor23 = xor i64 %shr20, %35, !dbg !1601
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1602
    #dbg_value(i64 %and24, !1603, !DIExpression(), !1597)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1604
  %36 = load i64, ptr %M, align 8, !dbg !1605
  %xor27 = xor i64 %36, %shl25, !dbg !1605
  store i64 %xor27, ptr %M, align 8, !dbg !1605
  %shl28 = shl nuw i64 %and24, 8, !dbg !1606
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1607
  %37 = load i64, ptr %arrayidx30, align 8, !dbg !1608
  %xor31 = xor i64 %37, %shl28, !dbg !1608
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1608
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1609
  %38 = load i64, ptr %arrayidx33, align 8, !dbg !1610
  %xor34 = xor i64 %38, %and17, !dbg !1610
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1610
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1611
  %39 = load i64, ptr %arrayidx36, align 8, !dbg !1612
  %xor37 = xor i64 %39, %and24, !dbg !1612
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1612
    #dbg_value(i32 4, !1586, !DIExpression(), !1588)
  %arrayidx12.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1589
  %40 = load i64, ptr %arrayidx12.1, align 8, !dbg !1589
  %shr13.1 = lshr i64 %40, 8, !dbg !1592
  %arrayidx15.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1593
  %41 = load i64, ptr %arrayidx15.1, align 8, !dbg !1593
  %xor16.1 = xor i64 %shr13.1, %41, !dbg !1594
  %and17.1 = and i64 %xor16.1, 71777214294589695, !dbg !1595
    #dbg_value(i64 %and17.1, !1596, !DIExpression(), !1597)
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1598
  %42 = load i64, ptr %arrayidx19.1, align 8, !dbg !1598
  %shr20.1 = lshr i64 %42, 8, !dbg !1599
  %arrayidx22.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1600
  %43 = load i64, ptr %arrayidx22.1, align 8, !dbg !1600
  %xor23.1 = xor i64 %shr20.1, %43, !dbg !1601
  %and24.1 = and i64 %xor23.1, 71777214294589695, !dbg !1602
    #dbg_value(i64 %and24.1, !1603, !DIExpression(), !1597)
  %shl25.1 = shl nuw i64 %and17.1, 8, !dbg !1604
  %arrayidx26.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1613
  %44 = load i64, ptr %arrayidx26.1, align 8, !dbg !1605
  %xor27.1 = xor i64 %44, %shl25.1, !dbg !1605
  store i64 %xor27.1, ptr %arrayidx26.1, align 8, !dbg !1605
  %shl28.1 = shl nuw i64 %and24.1, 8, !dbg !1606
  %arrayidx30.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1607
  %45 = load i64, ptr %arrayidx30.1, align 8, !dbg !1608
  %xor31.1 = xor i64 %45, %shl28.1, !dbg !1608
  store i64 %xor31.1, ptr %arrayidx30.1, align 8, !dbg !1608
  %arrayidx33.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1609
  %46 = load i64, ptr %arrayidx33.1, align 8, !dbg !1610
  %xor34.1 = xor i64 %46, %and17.1, !dbg !1610
  store i64 %xor34.1, ptr %arrayidx33.1, align 8, !dbg !1610
  %arrayidx36.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1611
  %47 = load i64, ptr %arrayidx36.1, align 8, !dbg !1612
  %xor37.1 = xor i64 %47, %and24.1, !dbg !1612
  store i64 %xor37.1, ptr %arrayidx36.1, align 8, !dbg !1612
    #dbg_value(i32 8, !1586, !DIExpression(), !1588)
  %arrayidx12.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1589
  %48 = load i64, ptr %arrayidx12.2, align 8, !dbg !1589
  %shr13.2 = lshr i64 %48, 8, !dbg !1592
  %arrayidx15.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1593
  %49 = load i64, ptr %arrayidx15.2, align 8, !dbg !1593
  %xor16.2 = xor i64 %shr13.2, %49, !dbg !1594
  %and17.2 = and i64 %xor16.2, 71777214294589695, !dbg !1595
    #dbg_value(i64 %and17.2, !1596, !DIExpression(), !1597)
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1598
  %50 = load i64, ptr %arrayidx19.2, align 8, !dbg !1598
  %shr20.2 = lshr i64 %50, 8, !dbg !1599
  %arrayidx22.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1600
  %51 = load i64, ptr %arrayidx22.2, align 8, !dbg !1600
  %xor23.2 = xor i64 %shr20.2, %51, !dbg !1601
  %and24.2 = and i64 %xor23.2, 71777214294589695, !dbg !1602
    #dbg_value(i64 %and24.2, !1603, !DIExpression(), !1597)
  %shl25.2 = shl nuw i64 %and17.2, 8, !dbg !1604
  %arrayidx26.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1613
  %52 = load i64, ptr %arrayidx26.2, align 8, !dbg !1605
  %xor27.2 = xor i64 %52, %shl25.2, !dbg !1605
  store i64 %xor27.2, ptr %arrayidx26.2, align 8, !dbg !1605
  %shl28.2 = shl nuw i64 %and24.2, 8, !dbg !1606
  %arrayidx30.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1607
  %53 = load i64, ptr %arrayidx30.2, align 8, !dbg !1608
  %xor31.2 = xor i64 %53, %shl28.2, !dbg !1608
  store i64 %xor31.2, ptr %arrayidx30.2, align 8, !dbg !1608
  %arrayidx33.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1609
  %54 = load i64, ptr %arrayidx33.2, align 8, !dbg !1610
  %xor34.2 = xor i64 %54, %and17.2, !dbg !1610
  store i64 %xor34.2, ptr %arrayidx33.2, align 8, !dbg !1610
  %arrayidx36.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1611
  %55 = load i64, ptr %arrayidx36.2, align 8, !dbg !1612
  %xor37.2 = xor i64 %55, %and24.2, !dbg !1612
  store i64 %xor37.2, ptr %arrayidx36.2, align 8, !dbg !1612
    #dbg_value(i32 12, !1586, !DIExpression(), !1588)
  %arrayidx12.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1589
  %56 = load i64, ptr %arrayidx12.3, align 8, !dbg !1589
  %shr13.3 = lshr i64 %56, 8, !dbg !1592
  %arrayidx15.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1593
  %57 = load i64, ptr %arrayidx15.3, align 8, !dbg !1593
  %xor16.3 = xor i64 %shr13.3, %57, !dbg !1594
  %and17.3 = and i64 %xor16.3, 71777214294589695, !dbg !1595
    #dbg_value(i64 %and17.3, !1596, !DIExpression(), !1597)
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1598
  %58 = load i64, ptr %arrayidx19.3, align 8, !dbg !1598
  %shr20.3 = lshr i64 %58, 8, !dbg !1599
  %arrayidx22.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1600
  %59 = load i64, ptr %arrayidx22.3, align 8, !dbg !1600
  %xor23.3 = xor i64 %shr20.3, %59, !dbg !1601
  %and24.3 = and i64 %xor23.3, 71777214294589695, !dbg !1602
    #dbg_value(i64 %and24.3, !1603, !DIExpression(), !1597)
  %shl25.3 = shl nuw i64 %and17.3, 8, !dbg !1604
  %arrayidx26.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1613
  %60 = load i64, ptr %arrayidx26.3, align 8, !dbg !1605
  %xor27.3 = xor i64 %60, %shl25.3, !dbg !1605
  store i64 %xor27.3, ptr %arrayidx26.3, align 8, !dbg !1605
  %shl28.3 = shl nuw i64 %and24.3, 8, !dbg !1606
  %arrayidx30.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1607
  %61 = load i64, ptr %arrayidx30.3, align 8, !dbg !1608
  %xor31.3 = xor i64 %61, %shl28.3, !dbg !1608
  store i64 %xor31.3, ptr %arrayidx30.3, align 8, !dbg !1608
  %arrayidx33.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1609
  %62 = load i64, ptr %arrayidx33.3, align 8, !dbg !1610
  %xor34.3 = xor i64 %62, %and17.3, !dbg !1610
  store i64 %xor34.3, ptr %arrayidx33.3, align 8, !dbg !1610
  %arrayidx36.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1611
  %63 = load i64, ptr %arrayidx36.3, align 8, !dbg !1612
  %xor37.3 = xor i64 %63, %and24.3, !dbg !1612
  store i64 %xor37.3, ptr %arrayidx36.3, align 8, !dbg !1612
    #dbg_value(i32 16, !1586, !DIExpression(), !1588)
    #dbg_value(i32 0, !1614, !DIExpression(), !1616)
  %64 = load i64, ptr %M, align 8, !dbg !1617
  %shr47 = lshr i64 %64, 16, !dbg !1620
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1621
  %65 = load i64, ptr %arrayidx49, align 8, !dbg !1621
  %xor50 = xor i64 %shr47, %65, !dbg !1622
  %and51 = and i64 %xor50, 281470681808895, !dbg !1623
    #dbg_value(i64 %and51, !1624, !DIExpression(), !1625)
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1626
  %66 = load i64, ptr %arrayidx54, align 8, !dbg !1626
  %shr55 = lshr i64 %66, 16, !dbg !1627
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1628
  %67 = load i64, ptr %arrayidx57, align 8, !dbg !1628
  %xor58 = xor i64 %shr55, %67, !dbg !1629
  %and59 = and i64 %xor58, 281470681808895, !dbg !1630
    #dbg_value(i64 %and59, !1631, !DIExpression(), !1625)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1632
  %68 = load i64, ptr %M, align 8, !dbg !1633
  %xor62 = xor i64 %68, %shl60, !dbg !1633
  store i64 %xor62, ptr %M, align 8, !dbg !1633
  %shl63 = shl nuw i64 %and59, 16, !dbg !1634
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1635
  %69 = load i64, ptr %arrayidx65, align 8, !dbg !1636
  %xor66 = xor i64 %69, %shl63, !dbg !1636
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1636
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1637
  %70 = load i64, ptr %arrayidx68, align 8, !dbg !1638
  %xor69 = xor i64 %70, %and51, !dbg !1638
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1638
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1639
  %71 = load i64, ptr %arrayidx71, align 8, !dbg !1640
  %xor72 = xor i64 %71, %and59, !dbg !1640
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1640
    #dbg_value(i32 1, !1614, !DIExpression(), !1616)
  %arrayidx46.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1617
  %72 = load i64, ptr %arrayidx46.1, align 8, !dbg !1617
  %shr47.1 = lshr i64 %72, 16, !dbg !1620
  %arrayidx49.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1621
  %73 = load i64, ptr %arrayidx49.1, align 8, !dbg !1621
  %xor50.1 = xor i64 %shr47.1, %73, !dbg !1622
  %and51.1 = and i64 %xor50.1, 281470681808895, !dbg !1623
    #dbg_value(i64 %and51.1, !1624, !DIExpression(), !1625)
  %arrayidx54.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1626
  %74 = load i64, ptr %arrayidx54.1, align 8, !dbg !1626
  %shr55.1 = lshr i64 %74, 16, !dbg !1627
  %arrayidx57.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1628
  %75 = load i64, ptr %arrayidx57.1, align 8, !dbg !1628
  %xor58.1 = xor i64 %shr55.1, %75, !dbg !1629
  %and59.1 = and i64 %xor58.1, 281470681808895, !dbg !1630
    #dbg_value(i64 %and59.1, !1631, !DIExpression(), !1625)
  %shl60.1 = shl nuw i64 %and51.1, 16, !dbg !1632
  %arrayidx61.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1641
  %76 = load i64, ptr %arrayidx61.1, align 8, !dbg !1633
  %xor62.1 = xor i64 %76, %shl60.1, !dbg !1633
  store i64 %xor62.1, ptr %arrayidx61.1, align 8, !dbg !1633
  %shl63.1 = shl nuw i64 %and59.1, 16, !dbg !1634
  %arrayidx65.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1635
  %77 = load i64, ptr %arrayidx65.1, align 8, !dbg !1636
  %xor66.1 = xor i64 %77, %shl63.1, !dbg !1636
  store i64 %xor66.1, ptr %arrayidx65.1, align 8, !dbg !1636
  %arrayidx68.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1637
  %78 = load i64, ptr %arrayidx68.1, align 8, !dbg !1638
  %xor69.1 = xor i64 %78, %and51.1, !dbg !1638
  store i64 %xor69.1, ptr %arrayidx68.1, align 8, !dbg !1638
  %arrayidx71.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1639
  %79 = load i64, ptr %arrayidx71.1, align 8, !dbg !1640
  %xor72.1 = xor i64 %79, %and59.1, !dbg !1640
  store i64 %xor72.1, ptr %arrayidx71.1, align 8, !dbg !1640
    #dbg_value(i32 2, !1614, !DIExpression(), !1616)
  %arrayidx46.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1617
  %80 = load i64, ptr %arrayidx46.2, align 8, !dbg !1617
  %shr47.2 = lshr i64 %80, 16, !dbg !1620
  %arrayidx49.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1621
  %81 = load i64, ptr %arrayidx49.2, align 8, !dbg !1621
  %xor50.2 = xor i64 %shr47.2, %81, !dbg !1622
  %and51.2 = and i64 %xor50.2, 281470681808895, !dbg !1623
    #dbg_value(i64 %and51.2, !1624, !DIExpression(), !1625)
  %arrayidx54.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1626
  %82 = load i64, ptr %arrayidx54.2, align 8, !dbg !1626
  %shr55.2 = lshr i64 %82, 16, !dbg !1627
  %arrayidx57.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1628
  %83 = load i64, ptr %arrayidx57.2, align 8, !dbg !1628
  %xor58.2 = xor i64 %shr55.2, %83, !dbg !1629
  %and59.2 = and i64 %xor58.2, 281470681808895, !dbg !1630
    #dbg_value(i64 %and59.2, !1631, !DIExpression(), !1625)
  %shl60.2 = shl nuw i64 %and51.2, 16, !dbg !1632
  %arrayidx61.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1641
  %84 = load i64, ptr %arrayidx61.2, align 8, !dbg !1633
  %xor62.2 = xor i64 %84, %shl60.2, !dbg !1633
  store i64 %xor62.2, ptr %arrayidx61.2, align 8, !dbg !1633
  %shl63.2 = shl nuw i64 %and59.2, 16, !dbg !1634
  %arrayidx65.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1635
  %85 = load i64, ptr %arrayidx65.2, align 8, !dbg !1636
  %xor66.2 = xor i64 %85, %shl63.2, !dbg !1636
  store i64 %xor66.2, ptr %arrayidx65.2, align 8, !dbg !1636
  %arrayidx68.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1637
  %86 = load i64, ptr %arrayidx68.2, align 8, !dbg !1638
  %xor69.2 = xor i64 %86, %and51.2, !dbg !1638
  store i64 %xor69.2, ptr %arrayidx68.2, align 8, !dbg !1638
  %arrayidx71.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1639
  %87 = load i64, ptr %arrayidx71.2, align 8, !dbg !1640
  %xor72.2 = xor i64 %87, %and59.2, !dbg !1640
  store i64 %xor72.2, ptr %arrayidx71.2, align 8, !dbg !1640
    #dbg_value(i32 3, !1614, !DIExpression(), !1616)
  %arrayidx46.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1617
  %88 = load i64, ptr %arrayidx46.3, align 8, !dbg !1617
  %shr47.3 = lshr i64 %88, 16, !dbg !1620
  %arrayidx49.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1621
  %89 = load i64, ptr %arrayidx49.3, align 8, !dbg !1621
  %xor50.3 = xor i64 %shr47.3, %89, !dbg !1622
  %and51.3 = and i64 %xor50.3, 281470681808895, !dbg !1623
    #dbg_value(i64 %and51.3, !1624, !DIExpression(), !1625)
  %arrayidx54.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1626
  %90 = load i64, ptr %arrayidx54.3, align 8, !dbg !1626
  %shr55.3 = lshr i64 %90, 16, !dbg !1627
  %arrayidx57.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1628
  %91 = load i64, ptr %arrayidx57.3, align 8, !dbg !1628
  %xor58.3 = xor i64 %shr55.3, %91, !dbg !1629
  %and59.3 = and i64 %xor58.3, 281470681808895, !dbg !1630
    #dbg_value(i64 %and59.3, !1631, !DIExpression(), !1625)
  %shl60.3 = shl nuw i64 %and51.3, 16, !dbg !1632
  %arrayidx61.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1641
  %92 = load i64, ptr %arrayidx61.3, align 8, !dbg !1633
  %xor62.3 = xor i64 %92, %shl60.3, !dbg !1633
  store i64 %xor62.3, ptr %arrayidx61.3, align 8, !dbg !1633
  %shl63.3 = shl nuw i64 %and59.3, 16, !dbg !1634
  %arrayidx65.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1635
  %93 = load i64, ptr %arrayidx65.3, align 8, !dbg !1636
  %xor66.3 = xor i64 %93, %shl63.3, !dbg !1636
  store i64 %xor66.3, ptr %arrayidx65.3, align 8, !dbg !1636
  %arrayidx68.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1637
  %94 = load i64, ptr %arrayidx68.3, align 8, !dbg !1638
  %xor69.3 = xor i64 %94, %and51.3, !dbg !1638
  store i64 %xor69.3, ptr %arrayidx68.3, align 8, !dbg !1638
  %arrayidx71.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1639
  %95 = load i64, ptr %arrayidx71.3, align 8, !dbg !1640
  %xor72.3 = xor i64 %95, %and59.3, !dbg !1640
  store i64 %xor72.3, ptr %arrayidx71.3, align 8, !dbg !1640
    #dbg_value(i32 4, !1614, !DIExpression(), !1616)
    #dbg_value(i32 0, !1642, !DIExpression(), !1644)
  %96 = load i64, ptr %M, align 8, !dbg !1645
  %shr81 = lshr i64 %96, 32, !dbg !1648
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1649
  %97 = load i64, ptr %arrayidx83, align 8, !dbg !1649
  %.masked = and i64 %97, 4294967295, !dbg !1650
  %and85 = xor i64 %shr81, %.masked, !dbg !1650
    #dbg_value(i64 %and85, !1651, !DIExpression(), !1652)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1653
  %98 = load i64, ptr %M, align 8, !dbg !1654
  %xor88 = xor i64 %98, %shl86, !dbg !1654
  store i64 %xor88, ptr %M, align 8, !dbg !1654
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1655
  %99 = load i64, ptr %arrayidx90, align 8, !dbg !1656
  %xor91 = xor i64 %99, %and85, !dbg !1656
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1656
    #dbg_value(i32 1, !1642, !DIExpression(), !1644)
  %arrayidx80.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1645
  %100 = load i64, ptr %arrayidx80.1, align 8, !dbg !1645
  %shr81.1 = lshr i64 %100, 32, !dbg !1648
  %arrayidx83.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1649
  %101 = load i64, ptr %arrayidx83.1, align 8, !dbg !1649
  %.masked.1 = and i64 %101, 4294967295, !dbg !1650
  %and85.1 = xor i64 %shr81.1, %.masked.1, !dbg !1650
    #dbg_value(i64 %and85.1, !1651, !DIExpression(), !1652)
  %shl86.1 = shl nuw i64 %and85.1, 32, !dbg !1653
  %arrayidx87.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1657
  %102 = load i64, ptr %arrayidx87.1, align 8, !dbg !1654
  %xor88.1 = xor i64 %102, %shl86.1, !dbg !1654
  store i64 %xor88.1, ptr %arrayidx87.1, align 8, !dbg !1654
  %arrayidx90.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1655
  %103 = load i64, ptr %arrayidx90.1, align 8, !dbg !1656
  %xor91.1 = xor i64 %103, %and85.1, !dbg !1656
  store i64 %xor91.1, ptr %arrayidx90.1, align 8, !dbg !1656
    #dbg_value(i32 2, !1642, !DIExpression(), !1644)
  %arrayidx80.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1645
  %104 = load i64, ptr %arrayidx80.2, align 8, !dbg !1645
  %shr81.2 = lshr i64 %104, 32, !dbg !1648
  %arrayidx83.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1649
  %105 = load i64, ptr %arrayidx83.2, align 8, !dbg !1649
  %.masked.2 = and i64 %105, 4294967295, !dbg !1650
  %and85.2 = xor i64 %shr81.2, %.masked.2, !dbg !1650
    #dbg_value(i64 %and85.2, !1651, !DIExpression(), !1652)
  %shl86.2 = shl nuw i64 %and85.2, 32, !dbg !1653
  %arrayidx87.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1657
  %106 = load i64, ptr %arrayidx87.2, align 8, !dbg !1654
  %xor88.2 = xor i64 %106, %shl86.2, !dbg !1654
  store i64 %xor88.2, ptr %arrayidx87.2, align 8, !dbg !1654
  %arrayidx90.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1655
  %107 = load i64, ptr %arrayidx90.2, align 8, !dbg !1656
  %xor91.2 = xor i64 %107, %and85.2, !dbg !1656
  store i64 %xor91.2, ptr %arrayidx90.2, align 8, !dbg !1656
    #dbg_value(i32 3, !1642, !DIExpression(), !1644)
  %arrayidx80.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1645
  %108 = load i64, ptr %arrayidx80.3, align 8, !dbg !1645
  %shr81.3 = lshr i64 %108, 32, !dbg !1648
  %arrayidx83.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1649
  %109 = load i64, ptr %arrayidx83.3, align 8, !dbg !1649
  %.masked.3 = and i64 %109, 4294967295, !dbg !1650
  %and85.3 = xor i64 %shr81.3, %.masked.3, !dbg !1650
    #dbg_value(i64 %and85.3, !1651, !DIExpression(), !1652)
  %shl86.3 = shl nuw i64 %and85.3, 32, !dbg !1653
  %arrayidx87.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1657
  %110 = load i64, ptr %arrayidx87.3, align 8, !dbg !1654
  %xor88.3 = xor i64 %110, %shl86.3, !dbg !1654
  store i64 %xor88.3, ptr %arrayidx87.3, align 8, !dbg !1654
  %arrayidx90.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1655
  %111 = load i64, ptr %arrayidx90.3, align 8, !dbg !1656
  %xor91.3 = xor i64 %111, %and85.3, !dbg !1656
  store i64 %xor91.3, ptr %arrayidx90.3, align 8, !dbg !1656
    #dbg_value(i32 4, !1642, !DIExpression(), !1644)
  %arrayidx80.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1645
  %112 = load i64, ptr %arrayidx80.4, align 8, !dbg !1645
  %shr81.4 = lshr i64 %112, 32, !dbg !1648
  %arrayidx83.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1649
  %113 = load i64, ptr %arrayidx83.4, align 8, !dbg !1649
  %.masked.4 = and i64 %113, 4294967295, !dbg !1650
  %and85.4 = xor i64 %shr81.4, %.masked.4, !dbg !1650
    #dbg_value(i64 %and85.4, !1651, !DIExpression(), !1652)
  %shl86.4 = shl nuw i64 %and85.4, 32, !dbg !1653
  %arrayidx87.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1657
  %114 = load i64, ptr %arrayidx87.4, align 8, !dbg !1654
  %xor88.4 = xor i64 %114, %shl86.4, !dbg !1654
  store i64 %xor88.4, ptr %arrayidx87.4, align 8, !dbg !1654
  %arrayidx90.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1655
  %115 = load i64, ptr %arrayidx90.4, align 8, !dbg !1656
  %xor91.4 = xor i64 %115, %and85.4, !dbg !1656
  store i64 %xor91.4, ptr %arrayidx90.4, align 8, !dbg !1656
    #dbg_value(i32 5, !1642, !DIExpression(), !1644)
  %arrayidx80.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1645
  %116 = load i64, ptr %arrayidx80.5, align 8, !dbg !1645
  %shr81.5 = lshr i64 %116, 32, !dbg !1648
  %arrayidx83.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1649
  %117 = load i64, ptr %arrayidx83.5, align 8, !dbg !1649
  %.masked.5 = and i64 %117, 4294967295, !dbg !1650
  %and85.5 = xor i64 %shr81.5, %.masked.5, !dbg !1650
    #dbg_value(i64 %and85.5, !1651, !DIExpression(), !1652)
  %shl86.5 = shl nuw i64 %and85.5, 32, !dbg !1653
  %arrayidx87.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1657
  %118 = load i64, ptr %arrayidx87.5, align 8, !dbg !1654
  %xor88.5 = xor i64 %118, %shl86.5, !dbg !1654
  store i64 %xor88.5, ptr %arrayidx87.5, align 8, !dbg !1654
  %arrayidx90.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1655
  %119 = load i64, ptr %arrayidx90.5, align 8, !dbg !1656
  %xor91.5 = xor i64 %119, %and85.5, !dbg !1656
  store i64 %xor91.5, ptr %arrayidx90.5, align 8, !dbg !1656
    #dbg_value(i32 6, !1642, !DIExpression(), !1644)
  %arrayidx80.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1645
  %120 = load i64, ptr %arrayidx80.6, align 8, !dbg !1645
  %shr81.6 = lshr i64 %120, 32, !dbg !1648
  %arrayidx83.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1649
  %121 = load i64, ptr %arrayidx83.6, align 8, !dbg !1649
  %.masked.6 = and i64 %121, 4294967295, !dbg !1650
  %and85.6 = xor i64 %shr81.6, %.masked.6, !dbg !1650
    #dbg_value(i64 %and85.6, !1651, !DIExpression(), !1652)
  %shl86.6 = shl nuw i64 %and85.6, 32, !dbg !1653
  %arrayidx87.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1657
  %122 = load i64, ptr %arrayidx87.6, align 8, !dbg !1654
  %xor88.6 = xor i64 %122, %shl86.6, !dbg !1654
  store i64 %xor88.6, ptr %arrayidx87.6, align 8, !dbg !1654
  %arrayidx90.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1655
  %123 = load i64, ptr %arrayidx90.6, align 8, !dbg !1656
  %xor91.6 = xor i64 %123, %and85.6, !dbg !1656
  store i64 %xor91.6, ptr %arrayidx90.6, align 8, !dbg !1656
    #dbg_value(i32 7, !1642, !DIExpression(), !1644)
  %arrayidx80.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1645
  %124 = load i64, ptr %arrayidx80.7, align 8, !dbg !1645
  %shr81.7 = lshr i64 %124, 32, !dbg !1648
  %arrayidx83.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1649
  %125 = load i64, ptr %arrayidx83.7, align 8, !dbg !1649
  %.masked.7 = and i64 %125, 4294967295, !dbg !1650
  %and85.7 = xor i64 %shr81.7, %.masked.7, !dbg !1650
    #dbg_value(i64 %and85.7, !1651, !DIExpression(), !1652)
  %shl86.7 = shl nuw i64 %and85.7, 32, !dbg !1653
  %arrayidx87.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1657
  %126 = load i64, ptr %arrayidx87.7, align 8, !dbg !1654
  %xor88.7 = xor i64 %126, %shl86.7, !dbg !1654
  store i64 %xor88.7, ptr %arrayidx87.7, align 8, !dbg !1654
  %arrayidx90.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1655
  %127 = load i64, ptr %arrayidx90.7, align 8, !dbg !1656
  %xor91.7 = xor i64 %127, %and85.7, !dbg !1656
  store i64 %xor91.7, ptr %arrayidx90.7, align 8, !dbg !1656
    #dbg_value(i32 8, !1642, !DIExpression(), !1644)
  ret void, !dbg !1658
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1659 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1660, !DIExpression(), !1661)
    #dbg_value(ptr %mat, !1662, !DIExpression(), !1661)
    #dbg_value(ptr %bs_mat, !1663, !DIExpression(), !1661)
    #dbg_value(ptr %acc, !1664, !DIExpression(), !1661)
    #dbg_value(i32 %mat_rows, !1665, !DIExpression(), !1661)
    #dbg_value(i32 %mat_cols, !1666, !DIExpression(), !1661)
    #dbg_value(i32 %bs_mat_cols, !1667, !DIExpression(), !1661)
    #dbg_value(i32 0, !1668, !DIExpression(), !1670)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1671
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1671
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1671
  br label %for.cond, !dbg !1671

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1672
    #dbg_value(i32 %r.0, !1668, !DIExpression(), !1670)
  %exitcond4.not = icmp eq i32 %r.0, %smax3, !dbg !1673
  br i1 %exitcond4.not, label %for.end19, label %for.cond1, !dbg !1675

for.cond1:                                        ; preds = %for.cond, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond ], !dbg !1676
    #dbg_value(i32 %c.0, !1679, !DIExpression(), !1680)
  %exitcond2.not = icmp eq i32 %c.0, %smax1, !dbg !1681
  br i1 %exitcond2.not, label %for.inc17, label %for.cond4, !dbg !1683

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond1 ], !dbg !1684
    #dbg_value(i32 %k.0, !1687, !DIExpression(), !1688)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1689
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1691

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1692
  %add = add nsw i32 %mul, %k.0, !dbg !1694
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1695
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1696
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1697
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1698
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1698
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1698
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1699
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1700
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1701
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1702
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1703
  %add14 = add nuw i32 %k.0, 1, !dbg !1704
    #dbg_value(i32 %add14, !1687, !DIExpression(), !1688)
  br label %for.cond4, !dbg !1705, !llvm.loop !1706

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1708
    #dbg_value(i32 %inc, !1679, !DIExpression(), !1680)
  br label %for.cond1, !dbg !1709, !llvm.loop !1710

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1712
    #dbg_value(i32 %inc18, !1668, !DIExpression(), !1670)
  br label %for.cond, !dbg !1713, !llvm.loop !1714

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1716
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1717 {
entry:
    #dbg_value(ptr %p, !1718, !DIExpression(), !1719)
    #dbg_value(ptr %P1, !1720, !DIExpression(), !1719)
    #dbg_value(ptr %V, !1721, !DIExpression(), !1719)
    #dbg_value(ptr %acc, !1722, !DIExpression(), !1719)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 7, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 11, i32 noundef 1) #6, !dbg !1723
  ret void, !dbg !1724
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1725 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1726, !DIExpression(), !1727)
    #dbg_value(ptr %bs_mat, !1728, !DIExpression(), !1727)
    #dbg_value(ptr %mat, !1729, !DIExpression(), !1727)
    #dbg_value(ptr %acc, !1730, !DIExpression(), !1727)
    #dbg_value(i32 %bs_mat_rows, !1731, !DIExpression(), !1727)
    #dbg_value(i32 %bs_mat_cols, !1732, !DIExpression(), !1727)
    #dbg_value(i32 %mat_rows, !1733, !DIExpression(), !1727)
    #dbg_value(i32 %triangular, !1734, !DIExpression(), !1727)
    #dbg_value(i32 0, !1735, !DIExpression(), !1727)
    #dbg_value(i32 0, !1736, !DIExpression(), !1738)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1739
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1739
  br label %for.cond, !dbg !1739

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1, %for.inc17 ], !dbg !1740
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1741
    #dbg_value(i32 %r.0, !1736, !DIExpression(), !1738)
    #dbg_value(i32 %bs_mat_entries_used.0, !1735, !DIExpression(), !1727)
  %exitcond2.not = icmp eq i32 %r.0, %smax1, !dbg !1742
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !1744

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1745
    #dbg_value(i32 %mul, !1748, !DIExpression(), !1749)
  br label %for.cond1, !dbg !1750

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1727
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1751
    #dbg_value(i32 %c.0, !1748, !DIExpression(), !1749)
    #dbg_value(i32 %bs_mat_entries_used.1, !1735, !DIExpression(), !1727)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1752
  br i1 %cmp2, label %for.cond4, label %for.inc17, !dbg !1754

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond1 ], !dbg !1755
    #dbg_value(i32 %k.0, !1758, !DIExpression(), !1759)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1760
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1762

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1763
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1765
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1766
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1767
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1767
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1767
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1768
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1769
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1770
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1771
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1772
  %add13 = add nuw i32 %k.0, 1, !dbg !1773
    #dbg_value(i32 %add13, !1758, !DIExpression(), !1759)
  br label %for.cond4, !dbg !1774, !llvm.loop !1775

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1735, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1727)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1777
    #dbg_value(i32 %add14, !1735, !DIExpression(), !1727)
  %inc = add nsw i32 %c.0, 1, !dbg !1778
    #dbg_value(i32 %inc, !1748, !DIExpression(), !1749)
  br label %for.cond1, !dbg !1779, !llvm.loop !1780

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1782
    #dbg_value(i32 %inc18, !1736, !DIExpression(), !1738)
  br label %for.cond, !dbg !1783, !llvm.loop !1784

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1786
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1787 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1788, !DIExpression(), !1789)
    #dbg_value(ptr %sm, !1790, !DIExpression(), !1789)
    #dbg_value(ptr %smlen, !1791, !DIExpression(), !1789)
    #dbg_value(ptr %m, !1792, !DIExpression(), !1789)
    #dbg_value(i32 %mlen, !1793, !DIExpression(), !1789)
    #dbg_value(ptr %csk, !1794, !DIExpression(), !1789)
    #dbg_value(i32 0, !1795, !DIExpression(), !1789)
    #dbg_value(i32 681, !1796, !DIExpression(), !1789)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1797
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1798
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1799
    #dbg_value(ptr %siglen, !1800, !DIExpression(DW_OP_deref), !1789)
  %call2 = call i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1801
    #dbg_value(i32 %call2, !1795, !DIExpression(), !1789)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1802
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1800, !DIExpression(), !1789)
  %cmp3.not = icmp eq i32 %0, 681
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1804
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1804

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1805
    #dbg_value(i32 %1, !1800, !DIExpression(), !1789)
  %add = add i32 %1, %mlen, !dbg !1807
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1808
  br label %err, !dbg !1809

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1810
    #dbg_value(i32 %2, !1800, !DIExpression(), !1789)
  %add5 = add i32 %2, %mlen, !dbg !1811
  store i32 %add5, ptr %smlen, align 4, !dbg !1812
  br label %err, !dbg !1813

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1814, !1815)
  ret i32 %call2, !dbg !1816
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1817 {
entry:
    #dbg_value(ptr %p, !1818, !DIExpression(), !1819)
    #dbg_value(ptr %m, !1820, !DIExpression(), !1819)
    #dbg_value(ptr %mlen, !1821, !DIExpression(), !1819)
    #dbg_value(ptr %sm, !1822, !DIExpression(), !1819)
    #dbg_value(i32 %smlen, !1823, !DIExpression(), !1819)
    #dbg_value(ptr %pk, !1824, !DIExpression(), !1819)
    #dbg_value(i32 681, !1825, !DIExpression(), !1819)
  %cmp = icmp ult i32 %smlen, 681, !dbg !1826
  br i1 %cmp, label %return, label %if.end, !dbg !1826

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1828
  %sub = add i32 %smlen, -681, !dbg !1829
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1830
    #dbg_value(i32 %call, !1831, !DIExpression(), !1819)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1832
  br i1 %cmp1, label %if.then2, label %return, !dbg !1832

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -681, !dbg !1834
  store i32 %sub3, ptr %mlen, align 4, !dbg !1836
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1837
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1838
  br label %return, !dbg !1839

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %call, %if.then2 ], [ %call, %if.end ], !dbg !1819
  ret i32 %retval.0, !dbg !1840
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1841 {
entry:
  %tEnc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [216 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %pk = alloca [49147 x i64], align 8
  %tmp = alloca [80 x i8], align 1
    #dbg_value(ptr %p, !1844, !DIExpression(), !1845)
    #dbg_value(ptr %m, !1846, !DIExpression(), !1845)
    #dbg_value(i32 %mlen, !1847, !DIExpression(), !1845)
    #dbg_value(ptr %sig, !1848, !DIExpression(), !1845)
    #dbg_value(ptr %cpk, !1849, !DIExpression(), !1845)
    #dbg_declare(ptr %tEnc, !1850, !DIExpression(), !1851)
    #dbg_declare(ptr %t, !1852, !DIExpression(), !1853)
    #dbg_declare(ptr %y, !1854, !DIExpression(), !1858)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(216) %y, i8 0, i32 216, i1 false), !dbg !1858
    #dbg_declare(ptr %s, !1859, !DIExpression(), !1860)
    #dbg_declare(ptr %pk, !1861, !DIExpression(), !1862)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(393176) %pk, i8 0, i32 393176, i1 false), !dbg !1862
    #dbg_declare(ptr %tmp, !1863, !DIExpression(), !1867)
    #dbg_value(i32 108, !1868, !DIExpression(), !1845)
    #dbg_value(i32 118, !1869, !DIExpression(), !1845)
    #dbg_value(i32 11, !1870, !DIExpression(), !1845)
    #dbg_value(i32 54, !1871, !DIExpression(), !1845)
    #dbg_value(i32 681, !1872, !DIExpression(), !1845)
    #dbg_value(i32 48, !1873, !DIExpression(), !1845)
    #dbg_value(i32 32, !1874, !DIExpression(), !1845)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1875
    #dbg_value(i32 %call, !1876, !DIExpression(), !1845)
  %cmp.not = icmp eq i32 %call, 0, !dbg !1877
  br i1 %cmp.not, label %if.end, label %return, !dbg !1877

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !1879, !DIExpression(), !1845)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 329616, !dbg !1880
    #dbg_value(ptr %add.ptr, !1881, !DIExpression(), !1845)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1882
    #dbg_value(ptr %add.ptr2, !1883, !DIExpression(), !1845)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1884
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !1885
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !1886
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 32) #8, !dbg !1887
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !1888
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !1889
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1298) #6, !dbg !1890
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1891
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 108) #8, !dbg !1892
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1894
  %. = zext i1 %cmp21 to i32, !dbg !1845
  br label %return, !dbg !1845

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !1845
  ret i32 %retval.0, !dbg !1895
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1896 {
entry:
    #dbg_value(ptr %p, !1897, !DIExpression(), !1898)
    #dbg_value(ptr %cpk, !1899, !DIExpression(), !1898)
    #dbg_value(ptr %pk, !1900, !DIExpression(), !1898)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1901
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1902
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !1903
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 55, i32 noundef 108) #6, !dbg !1904
  ret i32 0, !dbg !1905
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !1906 {
entry:
  %SPS = alloca [847 x i64], align 8
  %zero = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !1909, !DIExpression(), !1910)
    #dbg_value(ptr %s, !1911, !DIExpression(), !1910)
    #dbg_value(ptr %P1, !1912, !DIExpression(), !1910)
    #dbg_value(ptr %P2, !1913, !DIExpression(), !1910)
    #dbg_value(ptr %P3, !1914, !DIExpression(), !1910)
    #dbg_value(ptr %eval, !1915, !DIExpression(), !1910)
    #dbg_declare(ptr %SPS, !1916, !DIExpression(), !1920)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6776) %SPS, i8 0, i32 6776, i1 false), !dbg !1920
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1921
    #dbg_declare(ptr %zero, !1922, !DIExpression(), !1923)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(108) %zero, i8 0, i32 108, i1 false), !dbg !1923
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1924
  ret void, !dbg !1925
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !1926 {
entry:
  %PS = alloca [9086 x i64], align 8
    #dbg_value(ptr %p, !1929, !DIExpression(), !1930)
    #dbg_value(ptr %P1, !1931, !DIExpression(), !1930)
    #dbg_value(ptr %P2, !1932, !DIExpression(), !1930)
    #dbg_value(ptr %P3, !1933, !DIExpression(), !1930)
    #dbg_value(ptr %s, !1934, !DIExpression(), !1930)
    #dbg_value(ptr %SPS, !1935, !DIExpression(), !1930)
    #dbg_declare(ptr %PS, !1936, !DIExpression(), !1940)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72688) %PS, i8 0, i32 72688, i1 false), !dbg !1940
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 11, ptr noundef nonnull %PS) #6, !dbg !1941
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 108, i32 noundef 11, i32 noundef 118, ptr noundef %SPS) #6, !dbg !1942
  ret void, !dbg !1943
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !1944 {
entry:
  %accumulator = alloca [145376 x i64], align 8
    #dbg_value(ptr %P1, !1947, !DIExpression(), !1948)
    #dbg_value(ptr %P2, !1949, !DIExpression(), !1948)
    #dbg_value(ptr %P3, !1950, !DIExpression(), !1948)
    #dbg_value(ptr %S, !1951, !DIExpression(), !1948)
    #dbg_value(i32 %m, !1952, !DIExpression(), !1948)
    #dbg_value(i32 %v, !1953, !DIExpression(), !1948)
    #dbg_value(i32 %o, !1954, !DIExpression(), !1948)
    #dbg_value(i32 %k, !1955, !DIExpression(), !1948)
    #dbg_value(ptr %PS, !1956, !DIExpression(), !1948)
  %add = add i32 %o, %v, !dbg !1957
    #dbg_value(i32 %add, !1958, !DIExpression(), !1948)
  %add1 = add nsw i32 %m, 15, !dbg !1959
  %div = sdiv i32 %add1, 16, !dbg !1960
    #dbg_value(i32 %div, !1961, !DIExpression(), !1948)
    #dbg_declare(ptr %accumulator, !1962, !DIExpression(), !1966)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(1163008) %accumulator, i8 0, i32 1163008, i1 false), !dbg !1966
    #dbg_value(i32 0, !1967, !DIExpression(), !1948)
    #dbg_value(i32 0, !1968, !DIExpression(), !1970)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !1971
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !1971
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !1971
  br label %for.cond, !dbg !1971

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !1972
  %P1_used.0 = phi i32 [ %P1_used.1, %for.inc52 ], [ 0, %entry ], !dbg !1972
  %row.0 = phi i32 [ %inc53, %for.inc52 ], [ 0, %entry ], !dbg !1973
    #dbg_value(i32 %row.0, !1968, !DIExpression(), !1970)
    #dbg_value(i32 %P1_used.0, !1967, !DIExpression(), !1948)
  %exitcond6.not = icmp eq i32 %row.0, %smax5, !dbg !1974
  br i1 %exitcond6.not, label %for.cond56.preheader, label %for.cond2.preheader, !dbg !1976

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !1977
  br label %for.cond2, !dbg !1977

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !1980
  br label %for.cond56, !dbg !1980

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !1948
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !1982
    #dbg_value(i32 %j.0, !1983, !DIExpression(), !1984)
    #dbg_value(i32 %P1_used.1, !1967, !DIExpression(), !1948)
  %exitcond1.not = icmp eq i32 %P1_used.1, %0, !dbg !1985
  br i1 %exitcond1.not, label %for.cond21, label %for.cond5, !dbg !1977

for.cond5:                                        ; preds = %for.cond2, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond2 ], !dbg !1987
    #dbg_value(i32 %col.0, !1990, !DIExpression(), !1991)
  %exitcond.not = icmp eq i32 %col.0, %smax, !dbg !1992
  br i1 %exitcond.not, label %for.inc17, label %for.body7, !dbg !1994

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !1995
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !1997
  %mul8 = mul nsw i32 %row.0, %k, !dbg !1998
  %add9 = add nsw i32 %mul8, %col.0, !dbg !1999
  %mul10 = shl nsw i32 %add9, 4, !dbg !2000
  %mul11 = mul nsw i32 %col.0, %add, !dbg !2001
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2002
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2002
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2002
  %conv = zext i8 %2 to i32, !dbg !2002
  %add13 = add nsw i32 %mul10, %conv, !dbg !2003
  %mul14 = mul nsw i32 %add13, %div, !dbg !2004
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !2005
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2006
  %inc = add nuw i32 %col.0, 1, !dbg !2007
    #dbg_value(i32 %inc, !1990, !DIExpression(), !1991)
  br label %for.cond5, !dbg !2008, !llvm.loop !2009

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !1967, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1948)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2011
    #dbg_value(i32 %inc16, !1967, !DIExpression(), !1948)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2012
    #dbg_value(i32 %inc18, !1983, !DIExpression(), !1984)
  br label %for.cond2, !dbg !2013, !llvm.loop !2014

for.cond21:                                       ; preds = %for.cond2, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond2 ], !dbg !2016
    #dbg_value(i32 %j20.0, !2018, !DIExpression(), !2019)
  %exitcond4.not = icmp eq i32 %j20.0, %smax3, !dbg !2020
  br i1 %exitcond4.not, label %for.inc52, label %for.cond26, !dbg !2022

for.cond26:                                       ; preds = %for.cond21, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond21 ], !dbg !2023
    #dbg_value(i32 %col25.0, !2026, !DIExpression(), !2027)
  %exitcond2.not = icmp eq i32 %col25.0, %smax, !dbg !2028
  br i1 %exitcond2.not, label %for.inc49, label %for.body29, !dbg !2030

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !2031
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !2033
  %mul32 = mul nsw i32 %add31, %div, !dbg !2034
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !2035
  %mul35 = mul nsw i32 %row.0, %k, !dbg !2036
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !2037
  %mul37 = shl nsw i32 %add36, 4, !dbg !2038
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !2039
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2040
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2040
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !2040
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2040
  %conv42 = zext i8 %5 to i32, !dbg !2040
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2041
  %mul44 = mul nsw i32 %add43, %div, !dbg !2042
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2043
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2044
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2045
    #dbg_value(i32 %inc47, !2026, !DIExpression(), !2027)
  br label %for.cond26, !dbg !2046, !llvm.loop !2047

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2049
    #dbg_value(i32 %inc50, !2018, !DIExpression(), !2019)
  br label %for.cond21, !dbg !2050, !llvm.loop !2051

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2053
    #dbg_value(i32 %inc53, !1968, !DIExpression(), !1970)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2054
  br label %for.cond, !dbg !2054, !llvm.loop !2055

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2057
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2058
    #dbg_value(i32 %row55.0, !2059, !DIExpression(), !2060)
    #dbg_value(i32 %P3_used.0, !2061, !DIExpression(), !1948)
  %exitcond9.not = icmp eq i32 %row55.0, %smax8, !dbg !2062
  br i1 %exitcond9.not, label %while.cond.preheader, label %for.cond61, !dbg !1980

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2064
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2064
  br label %while.cond, !dbg !2064

for.cond61:                                       ; preds = %for.cond56, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond56 ], !dbg !1948
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond56 ], !dbg !2065
    #dbg_value(i32 %j60.0, !2068, !DIExpression(), !2069)
    #dbg_value(i32 %P3_used.1, !2061, !DIExpression(), !1948)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2070
  br i1 %cmp62, label %for.cond66, label %for.inc90, !dbg !2072

for.cond66:                                       ; preds = %for.cond61, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond61 ], !dbg !2073
    #dbg_value(i32 %col65.0, !2076, !DIExpression(), !2077)
  %exitcond7.not = icmp eq i32 %col65.0, %smax, !dbg !2078
  br i1 %exitcond7.not, label %for.inc87, label %for.body69, !dbg !2080

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2081
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2083
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2084
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2085
  %mul75 = shl nsw i32 %add74, 4, !dbg !2086
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2087
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2088
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2088
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2088
  %conv79 = zext i8 %8 to i32, !dbg !2088
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2089
  %mul81 = mul nsw i32 %add80, %div, !dbg !2090
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2091
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2092
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2093
    #dbg_value(i32 %inc84, !2076, !DIExpression(), !2077)
  br label %for.cond66, !dbg !2094, !llvm.loop !2095

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2061, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1948)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2097
    #dbg_value(i32 %inc86, !2061, !DIExpression(), !1948)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2098
    #dbg_value(i32 %inc88, !2068, !DIExpression(), !2069)
  br label %for.cond61, !dbg !2099, !llvm.loop !2100

for.inc90:                                        ; preds = %for.cond61
  %inc91 = add i32 %row55.0, 1, !dbg !2102
    #dbg_value(i32 %inc91, !2059, !DIExpression(), !2060)
  br label %for.cond56, !dbg !2103, !llvm.loop !2104

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !1948
    #dbg_value(i32 %i.0, !2106, !DIExpression(), !1948)
  %exitcond11.not = icmp eq i32 %i.0, %smax10, !dbg !2107
  br i1 %exitcond11.not, label %while.end, label %while.body, !dbg !2064

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2108
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2110
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2111
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2112
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2113
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2114
  %inc102 = add nuw i32 %i.0, 1, !dbg !2115
    #dbg_value(i32 %inc102, !2106, !DIExpression(), !1948)
  br label %while.cond, !dbg !2064, !llvm.loop !2116

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2118
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2119 {
entry:
  %accumulator = alloca [13552 x i64], align 8
    #dbg_value(ptr %PS, !2122, !DIExpression(), !2123)
    #dbg_value(ptr %S, !2124, !DIExpression(), !2123)
    #dbg_value(i32 %m, !2125, !DIExpression(), !2123)
    #dbg_value(i32 %k, !2126, !DIExpression(), !2123)
    #dbg_value(i32 %n, !2127, !DIExpression(), !2123)
    #dbg_value(ptr %SPS, !2128, !DIExpression(), !2123)
    #dbg_declare(ptr %accumulator, !2129, !DIExpression(), !2133)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(108416) %accumulator, i8 0, i32 108416, i1 false), !dbg !2133
  %add = add nsw i32 %m, 15, !dbg !2134
  %div = sdiv i32 %add, 16, !dbg !2135
    #dbg_value(i32 %div, !2136, !DIExpression(), !2123)
    #dbg_value(i32 0, !2137, !DIExpression(), !2139)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2140
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2140
  br label %for.cond, !dbg !2140

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2141
    #dbg_value(i32 %row.0, !2137, !DIExpression(), !2139)
  %exitcond3.not = icmp eq i32 %row.0, %smax2, !dbg !2142
  br i1 %exitcond3.not, label %while.cond.preheader, label %for.cond1, !dbg !2144

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2145
  br label %while.cond, !dbg !2145

for.cond1:                                        ; preds = %for.cond, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond ], !dbg !2146
    #dbg_value(i32 %j.0, !2149, !DIExpression(), !2150)
  %exitcond1.not = icmp eq i32 %j.0, %smax, !dbg !2151
  br i1 %exitcond1.not, label %for.inc20, label %for.cond4, !dbg !2153

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond1 ], !dbg !2154
    #dbg_value(i32 %col.0, !2157, !DIExpression(), !2158)
  %exitcond.not = icmp eq i32 %col.0, %k, !dbg !2159
  br i1 %exitcond.not, label %for.inc18, label %for.body6, !dbg !2161

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2162
  %add7 = add nsw i32 %mul, %col.0, !dbg !2164
  %mul8 = mul nsw i32 %add7, %div, !dbg !2165
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2166
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2167
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2168
  %mul11 = shl nsw i32 %add10, 4, !dbg !2169
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2170
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2171
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2171
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2171
  %conv = zext i8 %2 to i32, !dbg !2171
  %add14 = add nsw i32 %mul11, %conv, !dbg !2172
  %mul15 = mul nsw i32 %add14, %div, !dbg !2173
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2174
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2175
  %add17 = add nuw i32 %col.0, 1, !dbg !2176
    #dbg_value(i32 %add17, !2157, !DIExpression(), !2158)
  br label %for.cond4, !dbg !2177, !llvm.loop !2178

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2180
    #dbg_value(i32 %inc, !2149, !DIExpression(), !2150)
  br label %for.cond1, !dbg !2181, !llvm.loop !2182

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2184
    #dbg_value(i32 %inc21, !2137, !DIExpression(), !2139)
  br label %for.cond, !dbg !2185, !llvm.loop !2186

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2123
    #dbg_value(i32 %i.0, !2188, !DIExpression(), !2123)
  %exitcond4.not = icmp eq i32 %i.0, %0, !dbg !2189
  br i1 %exitcond4.not, label %while.end, label %while.body, !dbg !2145

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2190
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2192
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2193
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2194
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2195
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2196
  %inc32 = add nuw i32 %i.0, 1, !dbg !2197
    #dbg_value(i32 %inc32, !2188, !DIExpression(), !2123)
  br label %while.cond, !dbg !2145, !llvm.loop !2198

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2200
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2201 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2204, !DIExpression(), !2205)
    #dbg_value(ptr %in, !2206, !DIExpression(), !2205)
    #dbg_value(ptr %acc, !2207, !DIExpression(), !2205)
    #dbg_value(i32 0, !2208, !DIExpression(), !2210)
    #dbg_value(i32 0, !2208, !DIExpression(), !2210)
  %0 = load i64, ptr %in, align 8, !dbg !2211
  %1 = load i64, ptr %acc, align 8, !dbg !2214
  %xor = xor i64 %1, %0, !dbg !2214
  store i64 %xor, ptr %acc, align 8, !dbg !2214
    #dbg_value(i32 1, !2208, !DIExpression(), !2210)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2211
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2211
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2215
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2214
  %xor.1 = xor i64 %3, %2, !dbg !2214
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2214
    #dbg_value(i32 2, !2208, !DIExpression(), !2210)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2211
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2211
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2215
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2214
  %xor.2 = xor i64 %5, %4, !dbg !2214
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2214
    #dbg_value(i32 3, !2208, !DIExpression(), !2210)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2211
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2211
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2215
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2214
  %xor.3 = xor i64 %7, %6, !dbg !2214
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2214
    #dbg_value(i32 4, !2208, !DIExpression(), !2210)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2211
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2211
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2215
  %9 = load i64, ptr %arrayidx1.4, align 8, !dbg !2214
  %xor.4 = xor i64 %9, %8, !dbg !2214
  store i64 %xor.4, ptr %arrayidx1.4, align 8, !dbg !2214
    #dbg_value(i32 5, !2208, !DIExpression(), !2210)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2211
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2211
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2215
  %11 = load i64, ptr %arrayidx1.5, align 8, !dbg !2214
  %xor.5 = xor i64 %11, %10, !dbg !2214
  store i64 %xor.5, ptr %arrayidx1.5, align 8, !dbg !2214
    #dbg_value(i32 6, !2208, !DIExpression(), !2210)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2211
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2211
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2215
  %13 = load i64, ptr %arrayidx1.6, align 8, !dbg !2214
  %xor.6 = xor i64 %13, %12, !dbg !2214
  store i64 %xor.6, ptr %arrayidx1.6, align 8, !dbg !2214
    #dbg_value(i32 7, !2208, !DIExpression(), !2210)
  ret void, !dbg !2216
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2217 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2220, !DIExpression(), !2221)
    #dbg_value(ptr %bins, !2222, !DIExpression(), !2221)
    #dbg_value(ptr %out, !2223, !DIExpression(), !2221)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2224
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2225
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2226
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 616, !dbg !2227
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2228
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2229
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2230
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2231
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2232
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2233
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2234
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2235
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2236
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2237
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2238
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2239
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2240
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2241
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2242
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2243
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2244
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2245
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2246
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2247
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2248
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2249
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2250
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2251
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2252
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2253
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2254
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2255
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2256
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2257
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2258
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2259
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2260
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2261
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2262
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2263
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2264
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2265
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2266
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2267
  ret void, !dbg !2268
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2269 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2270, !DIExpression(), !2271)
    #dbg_value(ptr %in, !2272, !DIExpression(), !2271)
    #dbg_value(ptr %acc, !2273, !DIExpression(), !2271)
    #dbg_value(i64 1229782938247303441, !2274, !DIExpression(), !2271)
    #dbg_value(i32 0, !2275, !DIExpression(), !2277)
    #dbg_value(i32 0, !2275, !DIExpression(), !2277)
  %0 = load i64, ptr %in, align 8, !dbg !2278
  %and = and i64 %0, 1229782938247303441, !dbg !2281
    #dbg_value(i64 %and, !2282, !DIExpression(), !2283)
  %xor = lshr i64 %0, 1, !dbg !2284
  %shr = and i64 %xor, 8608480567731124087, !dbg !2284
  %mul = mul nuw i64 %and, 9, !dbg !2285
  %xor2 = xor i64 %shr, %mul, !dbg !2286
  %1 = load i64, ptr %acc, align 8, !dbg !2287
  %xor4 = xor i64 %1, %xor2, !dbg !2287
  store i64 %xor4, ptr %acc, align 8, !dbg !2287
    #dbg_value(i32 1, !2275, !DIExpression(), !2277)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2278
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2278
  %and.1 = and i64 %2, 1229782938247303441, !dbg !2281
    #dbg_value(i64 %and.1, !2282, !DIExpression(), !2283)
  %xor.1 = lshr i64 %2, 1, !dbg !2284
  %shr.1 = and i64 %xor.1, 8608480567731124087, !dbg !2284
  %mul.1 = mul nuw i64 %and.1, 9, !dbg !2285
  %xor2.1 = xor i64 %shr.1, %mul.1, !dbg !2286
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2288
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2287
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2287
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2287
    #dbg_value(i32 2, !2275, !DIExpression(), !2277)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2278
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2278
  %and.2 = and i64 %4, 1229782938247303441, !dbg !2281
    #dbg_value(i64 %and.2, !2282, !DIExpression(), !2283)
  %xor.2 = lshr i64 %4, 1, !dbg !2284
  %shr.2 = and i64 %xor.2, 8608480567731124087, !dbg !2284
  %mul.2 = mul nuw i64 %and.2, 9, !dbg !2285
  %xor2.2 = xor i64 %shr.2, %mul.2, !dbg !2286
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2288
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2287
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2287
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2287
    #dbg_value(i32 3, !2275, !DIExpression(), !2277)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2278
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2278
  %and.3 = and i64 %6, 1229782938247303441, !dbg !2281
    #dbg_value(i64 %and.3, !2282, !DIExpression(), !2283)
  %xor.3 = lshr i64 %6, 1, !dbg !2284
  %shr.3 = and i64 %xor.3, 8608480567731124087, !dbg !2284
  %mul.3 = mul nuw i64 %and.3, 9, !dbg !2285
  %xor2.3 = xor i64 %shr.3, %mul.3, !dbg !2286
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2288
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2287
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2287
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2287
    #dbg_value(i32 4, !2275, !DIExpression(), !2277)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2278
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2278
  %and.4 = and i64 %8, 1229782938247303441, !dbg !2281
    #dbg_value(i64 %and.4, !2282, !DIExpression(), !2283)
  %xor.4 = lshr i64 %8, 1, !dbg !2284
  %shr.4 = and i64 %xor.4, 8608480567731124087, !dbg !2284
  %mul.4 = mul nuw i64 %and.4, 9, !dbg !2285
  %xor2.4 = xor i64 %shr.4, %mul.4, !dbg !2286
  %arrayidx3.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2288
  %9 = load i64, ptr %arrayidx3.4, align 8, !dbg !2287
  %xor4.4 = xor i64 %9, %xor2.4, !dbg !2287
  store i64 %xor4.4, ptr %arrayidx3.4, align 8, !dbg !2287
    #dbg_value(i32 5, !2275, !DIExpression(), !2277)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2278
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2278
  %and.5 = and i64 %10, 1229782938247303441, !dbg !2281
    #dbg_value(i64 %and.5, !2282, !DIExpression(), !2283)
  %xor.5 = lshr i64 %10, 1, !dbg !2284
  %shr.5 = and i64 %xor.5, 8608480567731124087, !dbg !2284
  %mul.5 = mul nuw i64 %and.5, 9, !dbg !2285
  %xor2.5 = xor i64 %shr.5, %mul.5, !dbg !2286
  %arrayidx3.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2288
  %11 = load i64, ptr %arrayidx3.5, align 8, !dbg !2287
  %xor4.5 = xor i64 %11, %xor2.5, !dbg !2287
  store i64 %xor4.5, ptr %arrayidx3.5, align 8, !dbg !2287
    #dbg_value(i32 6, !2275, !DIExpression(), !2277)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2278
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2278
  %and.6 = and i64 %12, 1229782938247303441, !dbg !2281
    #dbg_value(i64 %and.6, !2282, !DIExpression(), !2283)
  %xor.6 = lshr i64 %12, 1, !dbg !2284
  %shr.6 = and i64 %xor.6, 8608480567731124087, !dbg !2284
  %mul.6 = mul nuw i64 %and.6, 9, !dbg !2285
  %xor2.6 = xor i64 %shr.6, %mul.6, !dbg !2286
  %arrayidx3.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2288
  %13 = load i64, ptr %arrayidx3.6, align 8, !dbg !2287
  %xor4.6 = xor i64 %13, %xor2.6, !dbg !2287
  store i64 %xor4.6, ptr %arrayidx3.6, align 8, !dbg !2287
    #dbg_value(i32 7, !2275, !DIExpression(), !2277)
  ret void, !dbg !2289
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2290 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2291, !DIExpression(), !2292)
    #dbg_value(ptr %in, !2293, !DIExpression(), !2292)
    #dbg_value(ptr %acc, !2294, !DIExpression(), !2292)
    #dbg_value(i64 -8608480567731124088, !2295, !DIExpression(), !2292)
    #dbg_value(i32 0, !2296, !DIExpression(), !2298)
    #dbg_value(i32 0, !2296, !DIExpression(), !2298)
  %0 = load i64, ptr %in, align 8, !dbg !2299
    #dbg_value(i64 %0, !2302, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2303)
  %xor = shl i64 %0, 1, !dbg !2304
  %shl = and i64 %xor, -1229782938247303442, !dbg !2304
  %and = lshr i64 %0, 3, !dbg !2305
  %shr = and i64 %and, 1229782938247303441, !dbg !2305
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2306
  %xor2 = xor i64 %shl, %mul, !dbg !2307
  %1 = load i64, ptr %acc, align 8, !dbg !2308
  %xor4 = xor i64 %1, %xor2, !dbg !2308
  store i64 %xor4, ptr %acc, align 8, !dbg !2308
    #dbg_value(i32 1, !2296, !DIExpression(), !2298)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2299
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2299
    #dbg_value(i64 %2, !2302, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2303)
  %xor.1 = shl i64 %2, 1, !dbg !2304
  %shl.1 = and i64 %xor.1, -1229782938247303442, !dbg !2304
  %and.1 = lshr i64 %2, 3, !dbg !2305
  %shr.1 = and i64 %and.1, 1229782938247303441, !dbg !2305
  %mul.1 = mul nuw nsw i64 %shr.1, 3, !dbg !2306
  %xor2.1 = xor i64 %shl.1, %mul.1, !dbg !2307
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2309
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2308
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2308
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2308
    #dbg_value(i32 2, !2296, !DIExpression(), !2298)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2299
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2299
    #dbg_value(i64 %4, !2302, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2303)
  %xor.2 = shl i64 %4, 1, !dbg !2304
  %shl.2 = and i64 %xor.2, -1229782938247303442, !dbg !2304
  %and.2 = lshr i64 %4, 3, !dbg !2305
  %shr.2 = and i64 %and.2, 1229782938247303441, !dbg !2305
  %mul.2 = mul nuw nsw i64 %shr.2, 3, !dbg !2306
  %xor2.2 = xor i64 %shl.2, %mul.2, !dbg !2307
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2309
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2308
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2308
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2308
    #dbg_value(i32 3, !2296, !DIExpression(), !2298)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2299
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2299
    #dbg_value(i64 %6, !2302, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2303)
  %xor.3 = shl i64 %6, 1, !dbg !2304
  %shl.3 = and i64 %xor.3, -1229782938247303442, !dbg !2304
  %and.3 = lshr i64 %6, 3, !dbg !2305
  %shr.3 = and i64 %and.3, 1229782938247303441, !dbg !2305
  %mul.3 = mul nuw nsw i64 %shr.3, 3, !dbg !2306
  %xor2.3 = xor i64 %shl.3, %mul.3, !dbg !2307
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2309
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2308
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2308
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2308
    #dbg_value(i32 4, !2296, !DIExpression(), !2298)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2299
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2299
    #dbg_value(i64 %8, !2302, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2303)
  %xor.4 = shl i64 %8, 1, !dbg !2304
  %shl.4 = and i64 %xor.4, -1229782938247303442, !dbg !2304
  %and.4 = lshr i64 %8, 3, !dbg !2305
  %shr.4 = and i64 %and.4, 1229782938247303441, !dbg !2305
  %mul.4 = mul nuw nsw i64 %shr.4, 3, !dbg !2306
  %xor2.4 = xor i64 %shl.4, %mul.4, !dbg !2307
  %arrayidx3.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2309
  %9 = load i64, ptr %arrayidx3.4, align 8, !dbg !2308
  %xor4.4 = xor i64 %9, %xor2.4, !dbg !2308
  store i64 %xor4.4, ptr %arrayidx3.4, align 8, !dbg !2308
    #dbg_value(i32 5, !2296, !DIExpression(), !2298)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2299
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2299
    #dbg_value(i64 %10, !2302, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2303)
  %xor.5 = shl i64 %10, 1, !dbg !2304
  %shl.5 = and i64 %xor.5, -1229782938247303442, !dbg !2304
  %and.5 = lshr i64 %10, 3, !dbg !2305
  %shr.5 = and i64 %and.5, 1229782938247303441, !dbg !2305
  %mul.5 = mul nuw nsw i64 %shr.5, 3, !dbg !2306
  %xor2.5 = xor i64 %shl.5, %mul.5, !dbg !2307
  %arrayidx3.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2309
  %11 = load i64, ptr %arrayidx3.5, align 8, !dbg !2308
  %xor4.5 = xor i64 %11, %xor2.5, !dbg !2308
  store i64 %xor4.5, ptr %arrayidx3.5, align 8, !dbg !2308
    #dbg_value(i32 6, !2296, !DIExpression(), !2298)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2299
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2299
    #dbg_value(i64 %12, !2302, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2303)
  %xor.6 = shl i64 %12, 1, !dbg !2304
  %shl.6 = and i64 %xor.6, -1229782938247303442, !dbg !2304
  %and.6 = lshr i64 %12, 3, !dbg !2305
  %shr.6 = and i64 %and.6, 1229782938247303441, !dbg !2305
  %mul.6 = mul nuw nsw i64 %shr.6, 3, !dbg !2306
  %xor2.6 = xor i64 %shl.6, %mul.6, !dbg !2307
  %arrayidx3.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2309
  %13 = load i64, ptr %arrayidx3.6, align 8, !dbg !2308
  %xor4.6 = xor i64 %13, %xor2.6, !dbg !2308
  store i64 %xor4.6, ptr %arrayidx3.6, align 8, !dbg !2308
    #dbg_value(i32 7, !2296, !DIExpression(), !2298)
  ret void, !dbg !2310
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2311 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2312, !DIExpression(), !2313)
    #dbg_value(ptr %in, !2314, !DIExpression(), !2313)
    #dbg_value(ptr %out, !2315, !DIExpression(), !2313)
    #dbg_value(i32 0, !2316, !DIExpression(), !2318)
    #dbg_value(i32 0, !2316, !DIExpression(), !2318)
  %0 = load i64, ptr %in, align 8, !dbg !2319
  store i64 %0, ptr %out, align 8, !dbg !2322
    #dbg_value(i32 1, !2316, !DIExpression(), !2318)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2319
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2319
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2323
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2322
    #dbg_value(i32 2, !2316, !DIExpression(), !2318)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2319
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2319
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2323
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2322
    #dbg_value(i32 3, !2316, !DIExpression(), !2318)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2319
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2319
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2323
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2322
    #dbg_value(i32 4, !2316, !DIExpression(), !2318)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2319
  %4 = load i64, ptr %arrayidx.4, align 8, !dbg !2319
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %out, i32 32, !dbg !2323
  store i64 %4, ptr %arrayidx1.4, align 8, !dbg !2322
    #dbg_value(i32 5, !2316, !DIExpression(), !2318)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2319
  %5 = load i64, ptr %arrayidx.5, align 8, !dbg !2319
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %out, i32 40, !dbg !2323
  store i64 %5, ptr %arrayidx1.5, align 8, !dbg !2322
    #dbg_value(i32 6, !2316, !DIExpression(), !2318)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2319
  %6 = load i64, ptr %arrayidx.6, align 8, !dbg !2319
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %out, i32 48, !dbg !2323
  store i64 %6, ptr %arrayidx1.6, align 8, !dbg !2322
    #dbg_value(i32 7, !2316, !DIExpression(), !2318)
  ret void, !dbg !2324
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2325 {
entry:
    #dbg_value(ptr %p, !2356, !DIExpression(), !2357)
    #dbg_value(ptr %in, !2358, !DIExpression(), !2357)
    #dbg_value(ptr %out, !2359, !DIExpression(), !2357)
    #dbg_value(i32 %size, !2360, !DIExpression(), !2357)
    #dbg_value(i32 7, !2361, !DIExpression(), !2357)
    #dbg_value(i32 0, !2362, !DIExpression(), !2357)
    #dbg_value(i32 0, !2363, !DIExpression(), !2365)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2366
  br label %for.cond, !dbg !2366

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2367
  %m_vecs_stored.0 = phi i32 [ %m_vecs_stored.1, %for.inc15 ], [ 0, %entry ], !dbg !2367
  %r.0 = phi i32 [ %inc16, %for.inc15 ], [ 0, %entry ], !dbg !2368
    #dbg_value(i32 %r.0, !2363, !DIExpression(), !2365)
    #dbg_value(i32 %m_vecs_stored.0, !2362, !DIExpression(), !2357)
  %exitcond1.not = icmp eq i32 %r.0, %smax, !dbg !2369
  br i1 %exitcond1.not, label %for.end17, label %for.cond1.preheader, !dbg !2371

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2372
  br label %for.cond1, !dbg !2372

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2357
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2375
    #dbg_value(i32 %c.0, !2376, !DIExpression(), !2377)
    #dbg_value(i32 %m_vecs_stored.1, !2362, !DIExpression(), !2357)
  %exitcond.not = icmp eq i32 %m_vecs_stored.1, %0, !dbg !2378
  br i1 %exitcond.not, label %for.inc15, label %for.body3, !dbg !2372

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2380
  %add = add nsw i32 %mul, %c.0, !dbg !2382
  %add.ptr.idx = mul nsw i32 %add, 56, !dbg !2383
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2383
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2384
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2384
  call fastcc void @m_vec_copy.17(i32 noundef 7, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2385
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2386
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2386

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2388
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2390
  %add.ptr11.idx = mul nsw i32 %add9, 56, !dbg !2391
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2391
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2392
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2392
  call fastcc void @m_vec_add.18(i32 noundef 7, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2393
  br label %for.inc, !dbg !2394

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2362, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2357)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2395
    #dbg_value(i32 %inc, !2362, !DIExpression(), !2357)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2396
    #dbg_value(i32 %inc14, !2376, !DIExpression(), !2377)
  br label %for.cond1, !dbg !2397, !llvm.loop !2398

for.inc15:                                        ; preds = %for.cond1
  %inc16 = add nuw i32 %r.0, 1, !dbg !2400
    #dbg_value(i32 %inc16, !2363, !DIExpression(), !2365)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2401
  br label %for.cond, !dbg !2401, !llvm.loop !2402

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2404
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2405 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2406, !DIExpression(), !2407)
    #dbg_value(ptr %in, !2408, !DIExpression(), !2407)
    #dbg_value(ptr %out, !2409, !DIExpression(), !2407)
    #dbg_value(i32 0, !2410, !DIExpression(), !2412)
    #dbg_value(i32 0, !2410, !DIExpression(), !2412)
  %0 = load i64, ptr %in, align 8, !dbg !2413
  store i64 %0, ptr %out, align 8, !dbg !2416
    #dbg_value(i32 1, !2410, !DIExpression(), !2412)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2413
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2413
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2417
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2416
    #dbg_value(i32 2, !2410, !DIExpression(), !2412)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2413
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2413
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2417
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2416
    #dbg_value(i32 3, !2410, !DIExpression(), !2412)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2413
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2413
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2417
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2416
    #dbg_value(i32 4, !2410, !DIExpression(), !2412)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2413
  %4 = load i64, ptr %arrayidx.4, align 8, !dbg !2413
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %out, i32 32, !dbg !2417
  store i64 %4, ptr %arrayidx1.4, align 8, !dbg !2416
    #dbg_value(i32 5, !2410, !DIExpression(), !2412)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2413
  %5 = load i64, ptr %arrayidx.5, align 8, !dbg !2413
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %out, i32 40, !dbg !2417
  store i64 %5, ptr %arrayidx1.5, align 8, !dbg !2416
    #dbg_value(i32 6, !2410, !DIExpression(), !2412)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2413
  %6 = load i64, ptr %arrayidx.6, align 8, !dbg !2413
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %out, i32 48, !dbg !2417
  store i64 %6, ptr %arrayidx1.6, align 8, !dbg !2416
    #dbg_value(i32 7, !2410, !DIExpression(), !2412)
  ret void, !dbg !2418
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2419 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2420, !DIExpression(), !2421)
    #dbg_value(ptr %in, !2422, !DIExpression(), !2421)
    #dbg_value(ptr %acc, !2423, !DIExpression(), !2421)
    #dbg_value(i32 0, !2424, !DIExpression(), !2426)
    #dbg_value(i32 0, !2424, !DIExpression(), !2426)
  %0 = load i64, ptr %in, align 8, !dbg !2427
  %1 = load i64, ptr %acc, align 8, !dbg !2430
  %xor = xor i64 %1, %0, !dbg !2430
  store i64 %xor, ptr %acc, align 8, !dbg !2430
    #dbg_value(i32 1, !2424, !DIExpression(), !2426)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2427
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2427
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2431
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2430
  %xor.1 = xor i64 %3, %2, !dbg !2430
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2430
    #dbg_value(i32 2, !2424, !DIExpression(), !2426)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2427
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2427
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2431
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2430
  %xor.2 = xor i64 %5, %4, !dbg !2430
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2430
    #dbg_value(i32 3, !2424, !DIExpression(), !2426)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2427
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2427
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2431
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2430
  %xor.3 = xor i64 %7, %6, !dbg !2430
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2430
    #dbg_value(i32 4, !2424, !DIExpression(), !2426)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2427
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2427
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2431
  %9 = load i64, ptr %arrayidx1.4, align 8, !dbg !2430
  %xor.4 = xor i64 %9, %8, !dbg !2430
  store i64 %xor.4, ptr %arrayidx1.4, align 8, !dbg !2430
    #dbg_value(i32 5, !2424, !DIExpression(), !2426)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %in, i32 40, !dbg !2427
  %10 = load i64, ptr %arrayidx.5, align 8, !dbg !2427
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %acc, i32 40, !dbg !2431
  %11 = load i64, ptr %arrayidx1.5, align 8, !dbg !2430
  %xor.5 = xor i64 %11, %10, !dbg !2430
  store i64 %xor.5, ptr %arrayidx1.5, align 8, !dbg !2430
    #dbg_value(i32 6, !2424, !DIExpression(), !2426)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %in, i32 48, !dbg !2427
  %12 = load i64, ptr %arrayidx.6, align 8, !dbg !2427
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %acc, i32 48, !dbg !2431
  %13 = load i64, ptr %arrayidx1.6, align 8, !dbg !2430
  %xor.6 = xor i64 %13, %12, !dbg !2430
  store i64 %xor.6, ptr %arrayidx1.6, align 8, !dbg !2430
    #dbg_value(i32 7, !2424, !DIExpression(), !2426)
  ret void, !dbg !2432
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2433 {
entry:
  %Ar = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2436, !DIExpression(), !2437)
    #dbg_value(ptr %A, !2438, !DIExpression(), !2437)
    #dbg_value(ptr %y, !2439, !DIExpression(), !2437)
    #dbg_value(ptr %r, !2440, !DIExpression(), !2437)
    #dbg_value(ptr %x, !2441, !DIExpression(), !2437)
    #dbg_value(i32 %k, !2442, !DIExpression(), !2437)
    #dbg_value(i32 %o, !2443, !DIExpression(), !2437)
    #dbg_value(i32 %m, !2444, !DIExpression(), !2437)
    #dbg_value(i32 %A_cols, !2445, !DIExpression(), !2437)
    #dbg_value(i32 0, !2446, !DIExpression(), !2448)
  %0 = mul nsw i32 %o, %k, !dbg !2449
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2449
  br label %for.cond, !dbg !2449

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2450
    #dbg_value(i32 %i.0, !2446, !DIExpression(), !2448)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2451
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2453

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2454
  br label %for.cond3, !dbg !2454

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2456
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2456
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2458
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2459
  %inc = add nuw i32 %i.0, 1, !dbg !2460
    #dbg_value(i32 %inc, !2446, !DIExpression(), !2448)
  br label %for.cond, !dbg !2461, !llvm.loop !2462

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2464
    #dbg_value(i32 %i2.0, !2465, !DIExpression(), !2466)
  %exitcond14.not = icmp eq i32 %i2.0, %smax13, !dbg !2467
  br i1 %exitcond14.not, label %for.end13, label %for.body5, !dbg !2454

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2469
  %mul7 = mul nsw i32 %k, %o, !dbg !2471
  %add = add nsw i32 %mul7, 1, !dbg !2472
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2473
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2474
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2474
  store i8 0, ptr %arrayidx10, align 1, !dbg !2475
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2476
    #dbg_value(i32 %inc12, !2465, !DIExpression(), !2466)
  br label %for.cond3, !dbg !2477, !llvm.loop !2478

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2480
  %add15 = add nsw i32 %mul14, 1, !dbg !2481
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2482
    #dbg_value(i32 0, !2483, !DIExpression(), !2485)
  br label %for.cond17, !dbg !2486

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2487
    #dbg_value(i32 %i16.0, !2483, !DIExpression(), !2485)
  %exitcond15.not = icmp eq i32 %i16.0, %smax13, !dbg !2488
  br i1 %exitcond15.not, label %for.end30, label %for.body19, !dbg !2490

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2491
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2491
  %arrayidx21 = getelementptr inbounds nuw [108 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2493
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2493
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2494
  %mul22 = mul nsw i32 %k, %o, !dbg !2495
  %mul23 = mul nsw i32 %k, %o, !dbg !2496
  %add24 = add nsw i32 %mul23, 1, !dbg !2497
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2498
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2499
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2499
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2500
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2501
    #dbg_value(i32 %inc29, !2483, !DIExpression(), !2485)
  br label %for.cond17, !dbg !2502, !llvm.loop !2503

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2505
  %add32 = add nsw i32 %mul31, 1, !dbg !2506
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2507
    #dbg_value(i8 0, !2508, !DIExpression(), !2437)
    #dbg_value(i32 0, !2509, !DIExpression(), !2511)
  %6 = add i32 %A_cols, -1, !dbg !2512
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2512
  br label %for.cond34, !dbg !2512

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2437
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2513
    #dbg_value(i32 %i33.0, !2509, !DIExpression(), !2511)
    #dbg_value(i8 %full_rank.0, !2508, !DIExpression(), !2437)
  %exitcond17.not = icmp eq i32 %i33.0, %smax16, !dbg !2514
  br i1 %exitcond17.not, label %for.end45, label %for.inc43, !dbg !2516

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2437)
  %sub37 = add nsw i32 %m, -1, !dbg !2517
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2519
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2520
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2520
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2520
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2437)
  %or12 = or i8 %full_rank.0, %8, !dbg !2521
    #dbg_value(i8 %or12, !2508, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2437)
    #dbg_value(i8 %or12, !2508, !DIExpression(), !2437)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2522
    #dbg_value(i32 %inc44, !2509, !DIExpression(), !2511)
  br label %for.cond34, !dbg !2523, !llvm.loop !2524

for.end45:                                        ; preds = %for.cond34
  %cmp47 = icmp eq i8 %full_rank.0, 0, !dbg !2526
  br i1 %cmp47, label %return, label %for.cond50, !dbg !2526

for.cond50:                                       ; preds = %for.cond63, %for.end45
  %row.0.in = phi i32 [ %m, %for.end45 ], [ %row.0, %for.cond63 ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2528
    #dbg_value(i32 %row.0, !2530, !DIExpression(), !2531)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2532
  br i1 %cmp51, label %for.body53, label %return, !dbg !2534

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2535, !DIExpression(), !2437)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2536
  %div = sdiv i32 32, %sub54, !dbg !2536
  %add55 = add nsw i32 %row.0, %div, !dbg !2536
  %mul56 = mul nsw i32 %k, %o, !dbg !2536
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2536
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2536

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2536
  %div60 = sdiv i32 32, %sub59, !dbg !2536
  %add61 = add nsw i32 %row.0, %div60, !dbg !2536
  br label %cond.end, !dbg !2536

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2536
  br label %cond.end, !dbg !2536

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2536
    #dbg_value(i32 %cond, !2538, !DIExpression(), !2437)
    #dbg_value(i32 %row.0, !2539, !DIExpression(), !2541)
  br label %for.cond63, !dbg !2542

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2543
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2544
    #dbg_value(i32 %col.0, !2539, !DIExpression(), !2541)
    #dbg_value(i8 %finished.0, !2535, !DIExpression(), !2437)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2545
  br i1 %cmp64.not, label %for.cond50, label %for.body66, !dbg !2547, !llvm.loop !2548

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2550
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2552
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2552
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2552
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2553
  %not = xor i8 %finished.0, -1, !dbg !2554
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2437)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2556
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2557
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2557
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2557
  %13 = and i8 %12, %not, !dbg !2558
  %and801 = and i8 %13, %call70, !dbg !2558
    #dbg_value(i8 %and801, !2559, !DIExpression(), !2560)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2561
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2562
  %xor2 = xor i8 %14, %and801, !dbg !2562
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2562
    #dbg_value(i32 0, !2563, !DIExpression(), !2565)
  br label %for.cond87, !dbg !2566

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2567
    #dbg_value(i32 %i86.0, !2563, !DIExpression(), !2565)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2568
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2570

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2571
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2573
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2573
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2573
  %conv94 = zext i8 %16 to i64, !dbg !2574
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2575
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2576
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2577
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2577
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2577
  %conv99 = zext i8 %18 to i64, !dbg !2578
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2579
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2580
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2581
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2582
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2583
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2583
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2583
  %conv106 = zext i8 %20 to i64, !dbg !2584
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2585
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2586
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2587
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2588
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2589
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2589
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2589
  %conv113 = zext i8 %22 to i64, !dbg !2590
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2591
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2592
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2593
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2594
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2595
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2595
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2595
  %conv120 = zext i8 %24 to i64, !dbg !2596
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2597
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2598
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2599
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2600
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2601
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2601
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2601
  %conv127 = zext i8 %26 to i64, !dbg !2602
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2603
  %xor129 = xor i64 %xor122, %shl128, !dbg !2604
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2605
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2606
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2607
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2607
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2607
  %conv134 = zext i8 %28 to i64, !dbg !2608
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2609
  %xor136 = xor i64 %xor129, %shl135, !dbg !2610
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2611
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2612
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2613
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2613
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2613
  %conv141 = zext i8 %30 to i64, !dbg !2614
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2615
  %xor143 = xor i64 %xor136, %shl142, !dbg !2616
    #dbg_value(i64 %xor143, !2617, !DIExpression(), !2618)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2619
    #dbg_value(i64 %call144, !2617, !DIExpression(), !2618)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2620
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2620
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2621
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2621
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2622
  %33 = trunc i64 %call144 to i8, !dbg !2622
  %34 = and i8 %33, 15, !dbg !2622
  %conv152 = xor i8 %34, %32, !dbg !2622
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2622
  %shr = lshr i64 %call144, 8, !dbg !2623
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2624
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2624
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2625
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2625
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2626
  %37 = trunc i64 %shr to i8, !dbg !2626
  %38 = and i8 %37, 15, !dbg !2626
  %conv161 = xor i8 %38, %36, !dbg !2626
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2626
  %shr162 = lshr i64 %call144, 16, !dbg !2627
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2628
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2628
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2629
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2629
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2630
  %41 = trunc i64 %shr162 to i8, !dbg !2630
  %42 = and i8 %41, 15, !dbg !2630
  %conv171 = xor i8 %42, %40, !dbg !2630
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2630
  %shr172 = lshr i64 %call144, 24, !dbg !2631
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2632
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2632
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2633
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2633
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2634
  %45 = trunc i64 %shr172 to i8, !dbg !2634
  %46 = and i8 %45, 15, !dbg !2634
  %conv181 = xor i8 %46, %44, !dbg !2634
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2634
  %shr182 = lshr i64 %call144, 32, !dbg !2635
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2636
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2636
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2637
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2637
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2638
  %49 = trunc i64 %shr182 to i8, !dbg !2638
  %50 = and i8 %49, 15, !dbg !2638
  %conv191 = xor i8 %50, %48, !dbg !2638
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2638
  %shr192 = lshr i64 %call144, 40, !dbg !2639
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2640
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2640
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2641
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2641
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2642
  %53 = trunc i64 %shr192 to i8, !dbg !2642
  %54 = and i8 %53, 15, !dbg !2642
  %conv201 = xor i8 %54, %52, !dbg !2642
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2642
  %shr202 = lshr i64 %call144, 48, !dbg !2643
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2644
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2644
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2645
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2645
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2646
  %57 = trunc i64 %shr202 to i8, !dbg !2646
  %58 = and i8 %57, 15, !dbg !2646
  %conv211 = xor i8 %58, %56, !dbg !2646
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2646
  %shr212 = lshr i64 %call144, 56, !dbg !2647
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2648
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2648
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2649
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2649
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2650
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2650
  %conv221 = xor i8 %60, %61, !dbg !2650
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2650
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2651
    #dbg_value(i32 %add223, !2563, !DIExpression(), !2565)
  br label %for.cond87, !dbg !2652, !llvm.loop !2653

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2437)
  %or2273 = or i8 %finished.0, %call70, !dbg !2655
    #dbg_value(i8 %or2273, !2535, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2437)
    #dbg_value(i8 %or2273, !2535, !DIExpression(), !2437)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2656
    #dbg_value(i32 %inc230, !2539, !DIExpression(), !2541)
  br label %for.cond63, !dbg !2657, !llvm.loop !2658

return:                                           ; preds = %for.cond50, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %for.cond50 ], !dbg !2437
  ret i32 %retval.0, !dbg !2660
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2661 {
entry:
    #dbg_value(ptr %a, !2662, !DIExpression(), !2663)
    #dbg_value(ptr %b, !2664, !DIExpression(), !2663)
    #dbg_value(ptr %c, !2665, !DIExpression(), !2663)
    #dbg_value(i32 %colrow_ab, !2666, !DIExpression(), !2663)
    #dbg_value(i32 %row_a, !2667, !DIExpression(), !2663)
    #dbg_value(i32 %col_b, !2668, !DIExpression(), !2663)
    #dbg_value(i32 0, !2669, !DIExpression(), !2671)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2672
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2672
  br label %for.cond, !dbg !2672

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2673
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2662, !DIExpression(), !2663)
    #dbg_value(ptr %c.addr.0, !2665, !DIExpression(), !2663)
    #dbg_value(i32 %i.0, !2669, !DIExpression(), !2671)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !2674
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !2676

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !2677
    #dbg_value(i32 %j.0, !2680, !DIExpression(), !2681)
    #dbg_value(ptr %c.addr.1, !2665, !DIExpression(), !2663)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !2682
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !2684

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2685
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2687
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2688
  %inc = add nuw i32 %j.0, 1, !dbg !2689
    #dbg_value(i32 %inc, !2680, !DIExpression(), !2681)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2690
    #dbg_value(ptr %incdec.ptr, !2665, !DIExpression(), !2663)
  br label %for.cond1, !dbg !2691, !llvm.loop !2692

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !2694
    #dbg_value(i32 %inc5, !2669, !DIExpression(), !2671)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2695
    #dbg_value(ptr %add.ptr6, !2662, !DIExpression(), !2663)
  br label %for.cond, !dbg !2696, !llvm.loop !2697

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2699
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2700 {
entry:
    #dbg_value(i8 %a, !2701, !DIExpression(), !2702)
    #dbg_value(i8 %b, !2703, !DIExpression(), !2702)
  %xor1 = xor i8 %a, %b, !dbg !2704
  ret i8 %xor1, !dbg !2705
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2706 {
entry:
  %_pivot_row = alloca [7 x i64], align 32
  %_pivot_row2 = alloca [7 x i64], align 32
  %packed_A = alloca [756 x i64], align 32
  %temp = alloca [126 x i8], align 1
    #dbg_value(ptr %A, !2710, !DIExpression(), !2711)
    #dbg_value(i32 %nrows, !2712, !DIExpression(), !2711)
    #dbg_value(i32 %ncols, !2713, !DIExpression(), !2711)
    #dbg_declare(ptr %_pivot_row, !2714, !DIExpression(), !2715)
    #dbg_declare(ptr %_pivot_row2, !2716, !DIExpression(), !2717)
    #dbg_declare(ptr %packed_A, !2718, !DIExpression(), !2722)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(6048) %packed_A, i8 0, i32 6048, i1 false), !dbg !2722
  %add = add nsw i32 %ncols, 15, !dbg !2723
  %div = sdiv i32 %add, 16, !dbg !2724
    #dbg_value(i32 %div, !2725, !DIExpression(), !2711)
    #dbg_value(i32 0, !2726, !DIExpression(), !2728)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2729
  br label %for.cond, !dbg !2729

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2730
    #dbg_value(i32 %i.0, !2726, !DIExpression(), !2728)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2731
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2733

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2734
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2734
  br label %for.cond3, !dbg !2734

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2736
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2738
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2739
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2740
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2741
  %inc = add nuw i32 %i.0, 1, !dbg !2742
    #dbg_value(i32 %inc, !2726, !DIExpression(), !2728)
  br label %for.cond, !dbg !2743, !llvm.loop !2744

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2746
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2711
    #dbg_value(i32 %pivot_row.0, !2747, !DIExpression(), !2711)
    #dbg_value(i32 %pivot_col.0, !2748, !DIExpression(), !2749)
  %exitcond6.not = icmp eq i32 %pivot_col.0, %smax5, !dbg !2750
  br i1 %exitcond6.not, label %for.cond121, label %for.body5, !dbg !2734

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2752
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2752
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2752
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2752
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2752
    #dbg_value(i32 %cond, !2754, !DIExpression(), !2755)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2756
    #dbg_value(i32 %cond16, !2757, !DIExpression(), !2755)
    #dbg_value(i32 0, !2758, !DIExpression(), !2760)
  br label %for.cond18, !dbg !2761

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2762
    #dbg_value(i32 %i17.0, !2758, !DIExpression(), !2760)
  %exitcond2.not = icmp eq i32 %i17.0, %smax1, !dbg !2763
  br i1 %exitcond2.not, label %for.cond25.preheader, label %for.body20, !dbg !2765

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2756
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2756
  br label %for.cond25, !dbg !2766

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2768
  store i64 0, ptr %arrayidx, align 8, !dbg !2770
  %arrayidx21 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2771
  store i64 0, ptr %arrayidx21, align 8, !dbg !2772
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2773
    #dbg_value(i32 %inc23, !2758, !DIExpression(), !2760)
  br label %for.cond18, !dbg !2774, !llvm.loop !2775

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2755
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2755
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2777
    #dbg_value(i32 %row.0, !2778, !DIExpression(), !2777)
    #dbg_value(i8 %pivot.0, !2779, !DIExpression(), !2755)
    #dbg_value(i64 %pivot_is_zero.0, !2780, !DIExpression(), !2755)
  %add27 = add nsw i32 %cond16, 32, !dbg !2781
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2781
  %sub30 = add nsw i32 %nrows, -1, !dbg !2781
  %add32 = add nsw i32 %cond16, 32, !dbg !2781
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2781
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2783
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2766

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2784
  %not = xor i64 %call, -1, !dbg !2786
    #dbg_value(i64 %not, !2787, !DIExpression(), !2788)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2789
    #dbg_value(i64 %call37, !2790, !DIExpression(), !2788)
    #dbg_value(i32 0, !2791, !DIExpression(), !2793)
  br label %for.cond38, !dbg !2794

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2795
    #dbg_value(i32 %j.0, !2791, !DIExpression(), !2793)
  %exitcond3.not = icmp eq i32 %j.0, %smax1, !dbg !2796
  br i1 %exitcond3.not, label %for.end48, label %for.body40, !dbg !2798

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2799
  %or = or i64 %and, %not, !dbg !2801
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2802
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2803
  %arrayidx43 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2804
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2804
  %and44 = and i64 %or, %0, !dbg !2805
  %arrayidx45 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2806
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2807
  %xor = xor i64 %1, %and44, !dbg !2807
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2807
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2808
    #dbg_value(i32 %inc47, !2791, !DIExpression(), !2793)
  br label %for.cond38, !dbg !2809, !llvm.loop !2810

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2812
    #dbg_value(i8 %call50, !2779, !DIExpression(), !2755)
  %conv = zext nneg i8 %call50 to i32, !dbg !2813
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2814
    #dbg_value(i64 %call51, !2780, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2755)
  %not52 = xor i64 %call51, -1, !dbg !2815
    #dbg_value(i64 %not52, !2780, !DIExpression(), !2755)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2816
    #dbg_value(i32 %inc54, !2778, !DIExpression(), !2777)
  br label %for.cond25, !dbg !2817, !llvm.loop !2818

for.end55:                                        ; preds = %for.cond25
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0) #6, !dbg !2820
    #dbg_value(i8 %call56, !2821, !DIExpression(), !2711)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2822
    #dbg_value(i32 %cond, !2823, !DIExpression(), !2825)
  br label %for.cond60, !dbg !2826

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2827
    #dbg_value(i32 %row59.0, !2823, !DIExpression(), !2825)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2828
  br i1 %cmp61.not, label %for.cond90, label %for.body63, !dbg !2830

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2831
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0, !dbg !2833
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2833
    #dbg_value(i64 %and67, !2834, !DIExpression(), !2835)
    #dbg_value(i64 %and67.demorgan, !2836, !DIExpression(), !2835)
    #dbg_value(i32 0, !2837, !DIExpression(), !2839)
  br label %for.cond69, !dbg !2840

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2841
    #dbg_value(i32 %col.0, !2837, !DIExpression(), !2839)
  %exitcond4.not = icmp eq i32 %col.0, %smax1, !dbg !2842
  br i1 %exitcond4.not, label %for.inc86, label %for.body72, !dbg !2844

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2845
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2847
  %arrayidx75 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2848
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2848
  %and76 = and i64 %and67.demorgan, %2, !dbg !2849
  %arrayidx77 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2850
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2850
  %and78 = and i64 %3, %and67, !dbg !2851
  %add79 = add i64 %and76, %and78, !dbg !2852
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2853
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2854
  %arrayidx82 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2855
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2856
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2857
    #dbg_value(i32 %inc84, !2837, !DIExpression(), !2839)
  br label %for.cond69, !dbg !2858, !llvm.loop !2859

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2861
    #dbg_value(i32 %inc87, !2823, !DIExpression(), !2825)
  br label %for.cond60, !dbg !2862, !llvm.loop !2863

for.cond90:                                       ; preds = %for.cond60, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond60 ], !dbg !2865
    #dbg_value(i32 %row89.0, !2867, !DIExpression(), !2868)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2869
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2871

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2872
    #dbg_value(i1 %cmp94, !2874, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2875)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2876
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2877
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2878
    #dbg_value(i8 %call100, !2879, !DIExpression(), !2875)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2880
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2881
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2882
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2883
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2884
    #dbg_value(i32 %inc110, !2867, !DIExpression(), !2868)
  br label %for.cond90, !dbg !2885, !llvm.loop !2886

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0, i32 %pivot_row.0), !2747, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2711)
  %4 = trunc i64 %pivot_is_zero.0 to i32, !dbg !2888
  %5 = add i32 %4, 1, !dbg !2888
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2888
    #dbg_value(i32 %conv116, !2747, !DIExpression(), !2711)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2889
    #dbg_value(i32 %inc118, !2748, !DIExpression(), !2749)
  br label %for.cond3, !dbg !2890, !llvm.loop !2891

for.cond121:                                      ; preds = %for.cond3, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond3 ], !dbg !2893
    #dbg_value(i32 %i120.0, !2895, !DIExpression(), !2896)
  %exitcond8.not = icmp eq i32 %i120.0, %smax, !dbg !2897
  br i1 %exitcond8.not, label %for.end143, label %for.body124, !dbg !2899

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2900
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2902
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2903
    #dbg_value(i32 0, !2904, !DIExpression(), !2906)
  br label %for.cond130, !dbg !2907

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2908
    #dbg_value(i32 %j129.0, !2904, !DIExpression(), !2906)
  %exitcond7.not = icmp eq i32 %j129.0, %smax5, !dbg !2909
  br i1 %exitcond7.not, label %for.inc141, label %for.body133, !dbg !2911

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [126 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2912
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2912
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2914
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2915
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2915
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2916
  %inc139 = add nuw i32 %j129.0, 1, !dbg !2917
    #dbg_value(i32 %inc139, !2904, !DIExpression(), !2906)
  br label %for.cond130, !dbg !2918, !llvm.loop !2919

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !2921
    #dbg_value(i32 %inc142, !2895, !DIExpression(), !2896)
  br label %for.cond121, !dbg !2922, !llvm.loop !2923

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 126) #8, !dbg !2925
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 56) #8, !dbg !2926
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 56) #8, !dbg !2927
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 6048) #8, !dbg !2928
  ret void, !dbg !2929
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2930 {
entry:
    #dbg_value(i8 %a, !2932, !DIExpression(), !2933)
    #dbg_value(i8 %b, !2934, !DIExpression(), !2933)
  %0 = icmp ne i8 %a, %b, !dbg !2935
  %conv3 = sext i1 %0 to i8, !dbg !2936
  %1 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !2937
  %xor5 = xor i8 %1, %conv3, !dbg !2938
  ret i8 %xor5, !dbg !2939
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !2940 {
entry:
    #dbg_value(i8 %a, !2943, !DIExpression(), !2944)
    #dbg_value(i64 %b, !2945, !DIExpression(), !2944)
  %0 = and i8 %a, 1, !dbg !2946
  %conv1 = zext nneg i8 %0 to i64, !dbg !2947
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !2948
    #dbg_value(i64 %mul, !2949, !DIExpression(), !2944)
  %1 = and i8 %a, 2, !dbg !2950
  %conv4 = zext nneg i8 %1 to i64, !dbg !2951
  %mul5 = mul i64 %b, %conv4, !dbg !2952
  %xor = xor i64 %mul, %mul5, !dbg !2953
    #dbg_value(i64 %xor, !2949, !DIExpression(), !2944)
  %2 = and i8 %a, 4, !dbg !2954
  %conv8 = zext nneg i8 %2 to i64, !dbg !2955
  %mul9 = mul i64 %b, %conv8, !dbg !2956
  %xor10 = xor i64 %xor, %mul9, !dbg !2957
    #dbg_value(i64 %xor10, !2949, !DIExpression(), !2944)
  %3 = and i8 %a, 8, !dbg !2958
  %conv13 = zext nneg i8 %3 to i64, !dbg !2959
  %mul14 = mul i64 %b, %conv13, !dbg !2960
  %xor15 = xor i64 %xor10, %mul14, !dbg !2961
    #dbg_value(i64 %xor15, !2949, !DIExpression(), !2944)
    #dbg_value(i64 %xor15, !2962, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !2944)
  %shr = lshr i64 %xor15, 4, !dbg !2963
  %and16 = lshr i64 %xor15, 3, !dbg !2964
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !2964
  %4 = xor i64 %shr, %shr18, !dbg !2965
  %xor19 = xor i64 %4, %xor15, !dbg !2965
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !2966
    #dbg_value(i64 %and20, !2967, !DIExpression(), !2944)
  ret i64 %and20, !dbg !2968
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !2969 {
entry:
    #dbg_value(ptr %in, !2972, !DIExpression(), !2973)
    #dbg_value(ptr %out, !2974, !DIExpression(), !2973)
    #dbg_value(i32 %ncols, !2975, !DIExpression(), !2973)
    #dbg_value(ptr %out, !2976, !DIExpression(), !2973)
    #dbg_value(i32 0, !2977, !DIExpression(), !2973)
  br label %for.cond, !dbg !2978

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !2980
    #dbg_value(i32 %i.0, !2977, !DIExpression(), !2973)
  %add = or disjoint i32 %i.0, 1, !dbg !2981
  %cmp = icmp slt i32 %add, %ncols, !dbg !2983
  br i1 %cmp, label %for.body, label %for.end, !dbg !2984

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !2985
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2985
  %add2 = or disjoint i32 %i.0, 1, !dbg !2987
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !2988
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !2988
  %shl5 = shl i8 %1, 4, !dbg !2989
  %or = or i8 %shl5, %0, !dbg !2990
  %div = lshr exact i32 %i.0, 1, !dbg !2991
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !2992
  store i8 %or, ptr %arrayidx7, align 1, !dbg !2993
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !2994
    #dbg_value(i32 %add8, !2977, !DIExpression(), !2973)
  br label %for.cond, !dbg !2995, !llvm.loop !2996

for.end:                                          ; preds = %for.cond
  %2 = and i32 %ncols, -2147483647, !dbg !2998
  %cmp9 = icmp eq i32 %2, 1, !dbg !2998
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2998

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3000
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3000
  %div16 = lshr exact i32 %i.0, 1, !dbg !3002
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3003
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3004
  br label %if.end, !dbg !3005

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3006
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3007 {
entry:
    #dbg_value(i32 %a, !3010, !DIExpression(), !3011)
    #dbg_value(i32 %b, !3012, !DIExpression(), !3011)
  %xor = xor i32 %a, %b, !dbg !3013
  %0 = icmp sgt i32 %xor, 0, !dbg !3014
  %shr = sext i1 %0 to i64, !dbg !3014
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3015
  %xor1 = xor i64 %1, %shr, !dbg !3016
  ret i64 %xor1, !dbg !3017
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3018 {
entry:
    #dbg_value(i32 %a, !3019, !DIExpression(), !3020)
    #dbg_value(i32 %b, !3021, !DIExpression(), !3020)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3022, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3020)
  %0 = icmp slt i32 %b, %a, !dbg !3023
  %shr = sext i1 %0 to i64, !dbg !3023
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3024
  %xor = xor i64 %1, %shr, !dbg !3025
  ret i64 %xor, !dbg !3026
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !3027 {
entry:
    #dbg_value(ptr %in, !3030, !DIExpression(), !3031)
    #dbg_value(i32 %index, !3032, !DIExpression(), !3031)
  %div = sdiv i32 %index, 16, !dbg !3033
    #dbg_value(i32 %div, !3034, !DIExpression(), !3031)
  %rem = srem i32 %index, 16, !dbg !3035
    #dbg_value(i32 %rem, !3036, !DIExpression(), !3031)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3037
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3037
  %mul = shl nsw i32 %rem, 2, !dbg !3038
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3039
  %shr = lshr i64 %0, %sh_prom, !dbg !3039
  %1 = trunc i64 %shr to i8, !dbg !3040
  %conv = and i8 %1, 15, !dbg !3040
  ret i8 %conv, !dbg !3041
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3042 {
entry:
    #dbg_value(i8 %a, !3045, !DIExpression(), !3046)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3047
    #dbg_value(i8 %call, !3048, !DIExpression(), !3046)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3049
    #dbg_value(i8 %call1, !3050, !DIExpression(), !3046)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3051
    #dbg_value(i8 %call2, !3052, !DIExpression(), !3046)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3053
    #dbg_value(i8 %call3, !3054, !DIExpression(), !3046)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3055
    #dbg_value(i8 %call4, !3056, !DIExpression(), !3046)
  ret i8 %call4, !dbg !3057
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3058 {
entry:
    #dbg_value(i32 %legs, !3061, !DIExpression(), !3062)
    #dbg_value(ptr %in, !3063, !DIExpression(), !3062)
    #dbg_value(i8 %a, !3064, !DIExpression(), !3062)
    #dbg_value(ptr %acc, !3065, !DIExpression(), !3062)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3066
    #dbg_value(i32 %call, !3067, !DIExpression(), !3062)
    #dbg_value(i64 1229782938247303441, !3068, !DIExpression(), !3062)
    #dbg_value(i32 0, !3069, !DIExpression(), !3071)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3072
  br label %for.cond, !dbg !3072

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3073
    #dbg_value(i32 %i.0, !3069, !DIExpression(), !3071)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3074
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3076

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3077
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3077
  %and = and i64 %0, 1229782938247303441, !dbg !3079
  %and1 = and i32 %call, 255, !dbg !3080
  %conv = zext nneg i32 %and1 to i64, !dbg !3081
  %mul = mul i64 %and, %conv, !dbg !3082
  %shr = lshr i64 %0, 1, !dbg !3083
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3084
  %shr4 = lshr i32 %call, 8, !dbg !3085
  %and5 = and i32 %shr4, 15, !dbg !3086
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3087
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3088
  %xor = xor i64 %mul, %mul7, !dbg !3089
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3090
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3090
  %shr9 = lshr i64 %1, 2, !dbg !3091
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3092
  %shr11 = lshr i32 %call, 16, !dbg !3093
  %and12 = and i32 %shr11, 15, !dbg !3094
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3095
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3096
  %xor15 = xor i64 %xor, %mul14, !dbg !3097
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3098
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3098
  %shr17 = lshr i64 %2, 3, !dbg !3099
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3100
  %shr19 = lshr i32 %call, 24, !dbg !3101
  %and20 = and i32 %shr19, 15, !dbg !3102
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3103
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3104
  %xor23 = xor i64 %xor15, %mul22, !dbg !3105
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3106
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3107
  %xor25 = xor i64 %3, %xor23, !dbg !3107
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3107
  %inc = add nuw i32 %i.0, 1, !dbg !3108
    #dbg_value(i32 %inc, !3069, !DIExpression(), !3071)
  br label %for.cond, !dbg !3109, !llvm.loop !3110

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3112
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3113 {
entry:
    #dbg_value(i32 %legs, !3116, !DIExpression(), !3117)
    #dbg_value(ptr %in, !3118, !DIExpression(), !3117)
    #dbg_value(ptr %out, !3119, !DIExpression(), !3117)
    #dbg_value(ptr %in, !3120, !DIExpression(), !3117)
    #dbg_value(i32 0, !3121, !DIExpression(), !3123)
  br label %for.cond, !dbg !3124

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3125
    #dbg_value(i32 %i.0, !3121, !DIExpression(), !3123)
  %mul = shl nsw i32 %legs, 4, !dbg !3126
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3128
  br i1 %cmp, label %for.body, label %for.end, !dbg !3129

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3130
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3132
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3132
  %1 = and i8 %0, 15, !dbg !3133
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3134
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3135
  %div3 = lshr exact i32 %i.0, 1, !dbg !3136
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3137
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3137
  %3 = lshr i8 %2, 4, !dbg !3138
  %add = or disjoint i32 %i.0, 1, !dbg !3139
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3140
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3141
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3142
    #dbg_value(i32 %add8, !3121, !DIExpression(), !3123)
  br label %for.cond, !dbg !3143, !llvm.loop !3144

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3146
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3147 {
entry:
    #dbg_value(i8 %b, !3148, !DIExpression(), !3149)
  %conv = zext i8 %b to i32, !dbg !3150
  %mul = mul i32 %conv, 134480385, !dbg !3151
    #dbg_value(i32 %mul, !3152, !DIExpression(), !3149)
    #dbg_value(i32 -252645136, !3153, !DIExpression(), !3149)
  %and = and i32 %mul, -252645136, !dbg !3154
    #dbg_value(i32 %and, !3155, !DIExpression(), !3149)
  %shr = lshr exact i32 %and, 4, !dbg !3156
  %shr1 = lshr exact i32 %and, 3, !dbg !3157
  %0 = xor i32 %shr, %shr1, !dbg !3158
  %xor2 = xor i32 %0, %mul, !dbg !3158
  ret i32 %xor2, !dbg !3159
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3160 {
entry:
    #dbg_value(i8 %a, !3161, !DIExpression(), !3162)
    #dbg_value(i8 %b, !3163, !DIExpression(), !3162)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3164
  %xor1 = xor i8 %a, %0, !dbg !3165
    #dbg_value(i8 %xor1, !3161, !DIExpression(), !3162)
  %1 = trunc i8 %xor1 to i1, !dbg !3166
    #dbg_value(i8 poison, !3167, !DIExpression(), !3162)
  %2 = and i8 %xor1, 2, !dbg !3168
  %mul9 = mul i8 %2, %b, !dbg !3169
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3166
  %xor11 = xor i8 %conv10, %mul9, !dbg !3170
    #dbg_value(i8 %xor11, !3167, !DIExpression(), !3162)
  %3 = and i8 %xor1, 4, !dbg !3171
  %mul16 = mul i8 %3, %b, !dbg !3172
  %xor18 = xor i8 %mul16, %xor11, !dbg !3173
    #dbg_value(i8 %xor18, !3167, !DIExpression(), !3162)
  %4 = and i8 %xor1, 8, !dbg !3174
  %mul23 = mul i8 %4, %b, !dbg !3175
  %xor25 = xor i8 %mul23, %xor18, !dbg !3176
    #dbg_value(i8 %xor25, !3167, !DIExpression(), !3162)
    #dbg_value(i8 %xor25, !3177, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3162)
  %5 = lshr i8 %xor25, 4, !dbg !3178
  %6 = lshr i8 %xor25, 3, !dbg !3179
  %7 = and i8 %6, 14, !dbg !3179
  %8 = xor i8 %5, %7, !dbg !3180
  %xor25.masked = and i8 %xor25, 15, !dbg !3181
  %9 = xor i8 %8, %xor25.masked, !dbg !3181
    #dbg_value(i8 %9, !3182, !DIExpression(), !3162)
  ret i8 %9, !dbg !3183
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3184 {
entry:
    #dbg_value(ptr %a, !3185, !DIExpression(), !3186)
    #dbg_value(ptr %b, !3187, !DIExpression(), !3186)
    #dbg_value(i32 %n, !3188, !DIExpression(), !3186)
    #dbg_value(i32 %m, !3189, !DIExpression(), !3186)
    #dbg_value(i8 0, !3190, !DIExpression(), !3186)
    #dbg_value(i32 0, !3191, !DIExpression(), !3193)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3194
  br label %for.cond, !dbg !3194

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3186
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3195
    #dbg_value(i32 %i.0, !3191, !DIExpression(), !3193)
    #dbg_value(ptr %b.addr.0, !3187, !DIExpression(), !3186)
    #dbg_value(i8 %ret.0, !3190, !DIExpression(), !3186)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3196
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3198

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3199
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3199
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3201
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3202
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3203
    #dbg_value(i8 %call1, !3190, !DIExpression(), !3186)
  %inc = add nuw i32 %i.0, 1, !dbg !3204
    #dbg_value(i32 %inc, !3191, !DIExpression(), !3193)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3205
    #dbg_value(ptr %add.ptr, !3187, !DIExpression(), !3186)
  br label %for.cond, !dbg !3206, !llvm.loop !3207

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !3209
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3210 {
entry:
    #dbg_value(i8 %a, !3211, !DIExpression(), !3212)
    #dbg_value(i8 %b, !3213, !DIExpression(), !3212)
  %xor1 = xor i8 %a, %b, !dbg !3214
  ret i8 %xor1, !dbg !3215
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
!175 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !176, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!215 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !176, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!216 = !DILocalVariable(name: "p", arg: 1, scope: !215, file: !25, line: 538, type: !178)
!217 = !DILocation(line: 0, scope: !215)
!218 = !DILocalVariable(name: "cpk", arg: 2, scope: !215, file: !25, line: 538, type: !18)
!219 = !DILocalVariable(name: "csk", arg: 3, scope: !215, file: !25, line: 539, type: !18)
!220 = !DILocalVariable(name: "ret", scope: !215, file: !25, line: 540, type: !45)
!221 = !DILocalVariable(name: "seed_sk", scope: !215, file: !25, line: 541, type: !18)
!222 = !DILocalVariable(name: "S", scope: !215, file: !25, line: 542, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4448, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 556)
!226 = !DILocation(line: 542, column: 19, scope: !215)
!227 = !DILocalVariable(name: "P", scope: !215, file: !25, line: 543, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3120768, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 48762)
!231 = !DILocation(line: 543, column: 14, scope: !215)
!232 = !DILocalVariable(name: "P3", scope: !215, file: !25, line: 544, type: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44800, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 700)
!236 = !DILocation(line: 544, column: 14, scope: !215)
!237 = !DILocalVariable(name: "O", scope: !215, file: !25, line: 547, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8640, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 1080)
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
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24640, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 385)
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
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 448, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 7)
!591 = !DILocation(line: 265, column: 14, scope: !575)
!592 = !DILocalVariable(name: "i", scope: !593, file: !25, line: 266, type: !45)
!593 = distinct !DILexicalBlock(scope: !575, file: !25, line: 266, column: 5)
!594 = !DILocation(line: 0, scope: !593)
!595 = !DILocation(line: 266, column: 10, scope: !593)
!596 = !DILocation(line: 266, column: 28, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !25, line: 266, column: 5)
!598 = !DILocation(line: 266, column: 5, scope: !593)
!599 = !DILocation(line: 266, scope: !593)
!600 = !DILocation(line: 268, column: 27, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !25, line: 267, column: 5)
!602 = !DILocation(line: 268, column: 29, scope: !601)
!603 = !DILocation(line: 268, column: 24, scope: !601)
!604 = !DILocation(line: 268, column: 34, scope: !601)
!605 = !DILocation(line: 268, column: 9, scope: !601)
!606 = !DILocation(line: 269, column: 24, scope: !601)
!607 = !DILocation(line: 269, column: 36, scope: !601)
!608 = !DILocation(line: 269, column: 21, scope: !601)
!609 = !DILocation(line: 269, column: 71, scope: !601)
!610 = !DILocation(line: 269, column: 9, scope: !601)
!611 = !DILocation(line: 266, column: 5, scope: !597)
!612 = distinct !{!612, !598, !613, !307}
!613 = !DILocation(line: 270, column: 5, scope: !593)
!614 = !DILocation(line: 271, column: 1, scope: !575)
!615 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !616, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!616 = !DISubroutineType(types: !617)
!617 = !{!45, !178, !49, !5}
!618 = !DILocalVariable(name: "p", arg: 1, scope: !615, file: !25, line: 310, type: !178)
!619 = !DILocation(line: 0, scope: !615)
!620 = !DILocalVariable(name: "csk", arg: 2, scope: !615, file: !25, line: 310, type: !49)
!621 = !DILocalVariable(name: "sk", arg: 3, scope: !615, file: !25, line: 311, type: !5)
!622 = !DILocalVariable(name: "ret", scope: !615, file: !25, line: 312, type: !45)
!623 = !DILocalVariable(name: "S", scope: !615, file: !25, line: 313, type: !223)
!624 = !DILocation(line: 313, column: 19, scope: !615)
!625 = !DILocalVariable(name: "P", scope: !615, file: !25, line: 314, type: !5)
!626 = !DILocation(line: 315, column: 24, scope: !615)
!627 = !DILocalVariable(name: "O", scope: !615, file: !25, line: 315, type: !18)
!628 = !DILocalVariable(name: "param_o", scope: !615, file: !25, line: 317, type: !243)
!629 = !DILocalVariable(name: "param_v", scope: !615, file: !25, line: 318, type: !243)
!630 = !DILocalVariable(name: "param_O_bytes", scope: !615, file: !25, line: 319, type: !243)
!631 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !615, file: !25, line: 320, type: !243)
!632 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !615, file: !25, line: 321, type: !243)
!633 = !DILocalVariable(name: "seed_sk", scope: !615, file: !25, line: 323, type: !49)
!634 = !DILocalVariable(name: "seed_pk", scope: !615, file: !25, line: 324, type: !18)
!635 = !DILocation(line: 326, column: 5, scope: !615)
!636 = !DILocation(line: 328, column: 14, scope: !615)
!637 = !DILocation(line: 328, column: 5, scope: !615)
!638 = !DILocation(line: 334, column: 5, scope: !615)
!639 = !DILocation(line: 341, column: 22, scope: !615)
!640 = !DILocalVariable(name: "P2", scope: !615, file: !25, line: 341, type: !5)
!641 = !DILocalVariable(name: "P1", scope: !615, file: !25, line: 343, type: !5)
!642 = !DILocalVariable(name: "L", scope: !615, file: !25, line: 346, type: !5)
!643 = !DILocation(line: 347, column: 5, scope: !615)
!644 = !DILocation(line: 355, column: 5, scope: !615)
!645 = !DILocation(line: 356, column: 5, scope: !615)
!646 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !327, file: !327, line: 218, type: !378, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!647 = !DILocalVariable(name: "p", arg: 1, scope: !646, file: !327, line: 218, type: !178)
!648 = !DILocation(line: 0, scope: !646)
!649 = !DILocalVariable(name: "P1", arg: 2, scope: !646, file: !327, line: 218, type: !330)
!650 = !DILocalVariable(name: "O", arg: 3, scope: !646, file: !327, line: 218, type: !49)
!651 = !DILocalVariable(name: "acc", arg: 4, scope: !646, file: !327, line: 218, type: !5)
!652 = !DILocalVariable(name: "param_o", scope: !646, file: !327, line: 222, type: !243)
!653 = !DILocalVariable(name: "param_v", scope: !646, file: !327, line: 223, type: !243)
!654 = !DILocalVariable(name: "m_vec_limbs", scope: !646, file: !327, line: 224, type: !243)
!655 = !DILocalVariable(name: "bs_mat_entries_used", scope: !646, file: !327, line: 226, type: !45)
!656 = !DILocalVariable(name: "r", scope: !657, file: !327, line: 227, type: !45)
!657 = distinct !DILexicalBlock(scope: !646, file: !327, line: 227, column: 5)
!658 = !DILocation(line: 0, scope: !657)
!659 = !DILocation(line: 227, column: 10, scope: !657)
!660 = !DILocation(line: 226, column: 9, scope: !646)
!661 = !DILocation(line: 227, scope: !657)
!662 = !DILocation(line: 227, column: 23, scope: !663)
!663 = distinct !DILexicalBlock(scope: !657, file: !327, line: 227, column: 5)
!664 = !DILocation(line: 227, column: 5, scope: !657)
!665 = !DILocation(line: 228, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !327, line: 228, column: 9)
!667 = distinct !DILexicalBlock(scope: !663, file: !327, line: 227, column: 39)
!668 = !DILocation(line: 228, scope: !666)
!669 = !DILocalVariable(name: "c", scope: !666, file: !327, line: 228, type: !45)
!670 = !DILocation(line: 0, scope: !666)
!671 = !DILocation(line: 228, column: 27, scope: !672)
!672 = distinct !DILexicalBlock(scope: !666, file: !327, line: 228, column: 9)
!673 = !DILocation(line: 229, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !327, line: 229, column: 16)
!675 = distinct !DILexicalBlock(scope: !672, file: !327, line: 228, column: 43)
!676 = !DILocation(line: 234, column: 47, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !327, line: 233, column: 50)
!678 = distinct !DILexicalBlock(scope: !679, file: !327, line: 233, column: 13)
!679 = distinct !DILexicalBlock(scope: !675, file: !327, line: 233, column: 13)
!680 = !DILocation(line: 234, column: 88, scope: !677)
!681 = !DILocation(line: 234, column: 84, scope: !677)
!682 = !DILocation(line: 233, column: 13, scope: !679)
!683 = !DILocation(line: 233, scope: !679)
!684 = !DILocalVariable(name: "k", scope: !679, file: !327, line: 233, type: !45)
!685 = !DILocation(line: 0, scope: !679)
!686 = !DILocation(line: 234, column: 127, scope: !677)
!687 = !DILocation(line: 234, column: 137, scope: !677)
!688 = !DILocation(line: 234, column: 108, scope: !677)
!689 = !DILocation(line: 234, column: 17, scope: !677)
!690 = !DILocation(line: 235, column: 47, scope: !677)
!691 = !DILocation(line: 235, column: 88, scope: !677)
!692 = !DILocation(line: 235, column: 84, scope: !677)
!693 = !DILocation(line: 235, column: 127, scope: !677)
!694 = !DILocation(line: 235, column: 137, scope: !677)
!695 = !DILocation(line: 235, column: 108, scope: !677)
!696 = !DILocation(line: 235, column: 17, scope: !677)
!697 = !DILocation(line: 233, column: 44, scope: !678)
!698 = !DILocation(line: 233, column: 31, scope: !678)
!699 = !DILocation(line: 233, column: 13, scope: !678)
!700 = distinct !{!700, !682, !701, !307}
!701 = !DILocation(line: 236, column: 13, scope: !679)
!702 = !DILocation(line: 0, scope: !675)
!703 = !DILocation(line: 228, column: 39, scope: !672)
!704 = !DILocation(line: 228, column: 9, scope: !672)
!705 = distinct !{!705, !665, !706, !307}
!706 = !DILocation(line: 238, column: 9, scope: !666)
!707 = !DILocation(line: 227, column: 35, scope: !663)
!708 = !DILocation(line: 227, column: 5, scope: !663)
!709 = distinct !{!709, !664, !710, !307}
!710 = !DILocation(line: 239, column: 5, scope: !657)
!711 = !DILocation(line: 240, column: 1, scope: !646)
!712 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !713, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!713 = !DISubroutineType(types: !714)
!714 = !{!45, !178, !18, !715, !49, !15, !49}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!716 = !DILocalVariable(name: "p", arg: 1, scope: !712, file: !25, line: 359, type: !178)
!717 = !DILocation(line: 0, scope: !712)
!718 = !DILocalVariable(name: "sig", arg: 2, scope: !712, file: !25, line: 359, type: !18)
!719 = !DILocalVariable(name: "siglen", arg: 3, scope: !712, file: !25, line: 360, type: !715)
!720 = !DILocalVariable(name: "m", arg: 4, scope: !712, file: !25, line: 360, type: !49)
!721 = !DILocalVariable(name: "mlen", arg: 5, scope: !712, file: !25, line: 361, type: !15)
!722 = !DILocalVariable(name: "csk", arg: 6, scope: !712, file: !25, line: 361, type: !49)
!723 = !DILocalVariable(name: "ret", scope: !712, file: !25, line: 362, type: !45)
!724 = !DILocalVariable(name: "tenc", scope: !712, file: !25, line: 363, type: !725)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 432, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 54)
!728 = !DILocation(line: 363, column: 19, scope: !712)
!729 = !DILocalVariable(name: "t", scope: !712, file: !25, line: 363, type: !730)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 864, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 108)
!733 = !DILocation(line: 363, column: 38, scope: !712)
!734 = !DILocalVariable(name: "y", scope: !712, file: !25, line: 364, type: !730)
!735 = !DILocation(line: 364, column: 19, scope: !712)
!736 = !DILocalVariable(name: "salt", scope: !712, file: !25, line: 365, type: !138)
!737 = !DILocation(line: 365, column: 19, scope: !712)
!738 = !DILocalVariable(name: "V", scope: !712, file: !25, line: 366, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5192, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 649)
!742 = !DILocation(line: 366, column: 19, scope: !712)
!743 = !DILocalVariable(name: "Vdec", scope: !712, file: !25, line: 366, type: !744)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 9504, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 1188)
!747 = !DILocation(line: 366, column: 57, scope: !712)
!748 = !DILocalVariable(name: "A", scope: !712, file: !25, line: 367, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 99456, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 12432)
!752 = !DILocation(line: 367, column: 19, scope: !712)
!753 = !DILocalVariable(name: "x", scope: !712, file: !25, line: 368, type: !754)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 10384, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 1298)
!757 = !DILocation(line: 368, column: 19, scope: !712)
!758 = !DILocalVariable(name: "r", scope: !712, file: !25, line: 369, type: !759)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 888, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 111)
!762 = !DILocation(line: 369, column: 19, scope: !712)
!763 = !DILocalVariable(name: "s", scope: !712, file: !25, line: 370, type: !754)
!764 = !DILocation(line: 370, column: 19, scope: !712)
!765 = !DILocalVariable(name: "sk", scope: !712, file: !25, line: 372, type: !128, align: 256)
!766 = !DILocation(line: 372, column: 22, scope: !712)
!767 = !DILocalVariable(name: "Ox", scope: !712, file: !25, line: 373, type: !730)
!768 = !DILocation(line: 373, column: 19, scope: !712)
!769 = !DILocalVariable(name: "tmp", scope: !712, file: !25, line: 374, type: !770)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 904, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 113)
!773 = !DILocation(line: 374, column: 19, scope: !712)
!774 = !DILocalVariable(name: "param_m", scope: !712, file: !25, line: 378, type: !243)
!775 = !DILocalVariable(name: "param_n", scope: !712, file: !25, line: 379, type: !243)
!776 = !DILocalVariable(name: "param_o", scope: !712, file: !25, line: 380, type: !243)
!777 = !DILocalVariable(name: "param_k", scope: !712, file: !25, line: 381, type: !243)
!778 = !DILocalVariable(name: "param_v", scope: !712, file: !25, line: 382, type: !243)
!779 = !DILocalVariable(name: "param_m_bytes", scope: !712, file: !25, line: 383, type: !243)
!780 = !DILocalVariable(name: "param_v_bytes", scope: !712, file: !25, line: 384, type: !243)
!781 = !DILocalVariable(name: "param_r_bytes", scope: !712, file: !25, line: 385, type: !243)
!782 = !DILocalVariable(name: "param_sig_bytes", scope: !712, file: !25, line: 386, type: !243)
!783 = !DILocalVariable(name: "param_A_cols", scope: !712, file: !25, line: 387, type: !243)
!784 = !DILocalVariable(name: "param_digest_bytes", scope: !712, file: !25, line: 388, type: !243)
!785 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !712, file: !25, line: 389, type: !243)
!786 = !DILocalVariable(name: "param_salt_bytes", scope: !712, file: !25, line: 390, type: !243)
!787 = !DILocation(line: 392, column: 11, scope: !712)
!788 = !DILocation(line: 393, column: 13, scope: !789)
!789 = distinct !DILexicalBlock(scope: !712, file: !25, line: 393, column: 9)
!790 = !DILocalVariable(name: "seed_sk", scope: !712, file: !25, line: 371, type: !49)
!791 = !DILocation(line: 401, column: 5, scope: !712)
!792 = !DILocalVariable(name: "P1", scope: !712, file: !25, line: 403, type: !5)
!793 = !DILocation(line: 404, column: 23, scope: !712)
!794 = !DILocalVariable(name: "L", scope: !712, file: !25, line: 404, type: !5)
!795 = !DILocalVariable(name: "Mtmp", scope: !712, file: !25, line: 405, type: !796)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 49280, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 770)
!799 = !DILocation(line: 405, column: 14, scope: !712)
!800 = !DILocation(line: 420, column: 25, scope: !801)
!801 = distinct !DILexicalBlock(scope: !712, file: !25, line: 420, column: 9)
!802 = !DILocation(line: 420, column: 9, scope: !801)
!803 = !DILocation(line: 420, column: 65, scope: !801)
!804 = !DILocation(line: 427, column: 37, scope: !712)
!805 = !DILocation(line: 427, column: 5, scope: !712)
!806 = !DILocation(line: 429, column: 5, scope: !712)
!807 = !DILocation(line: 437, column: 16, scope: !712)
!808 = !DILocation(line: 437, column: 5, scope: !712)
!809 = !DILocation(line: 438, column: 59, scope: !712)
!810 = !DILocalVariable(name: "ctrbyte", scope: !712, file: !25, line: 375, type: !18)
!811 = !DILocation(line: 440, column: 5, scope: !712)
!812 = !DILocation(line: 442, column: 5, scope: !712)
!813 = !DILocalVariable(name: "ctr", scope: !814, file: !25, line: 444, type: !45)
!814 = distinct !DILexicalBlock(scope: !712, file: !25, line: 444, column: 5)
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
!848 = !DILocation(line: 461, column: 27, scope: !844)
!849 = !DILocation(line: 461, column: 9, scope: !838)
!850 = !DILocation(line: 461, column: 39, scope: !844)
!851 = !DILocation(line: 461, column: 9, scope: !844)
!852 = distinct !{!852, !849, !853, !307}
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
!865 = distinct !DILexicalBlock(scope: !712, file: !25, line: 478, column: 5)
!866 = !DILocation(line: 0, scope: !865)
!867 = !DILocation(line: 478, column: 10, scope: !865)
!868 = !DILocation(line: 478, scope: !865)
!869 = !DILocation(line: 478, column: 23, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !25, line: 478, column: 5)
!871 = !DILocation(line: 478, column: 5, scope: !865)
!872 = !DILocation(line: 479, column: 23, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !25, line: 478, column: 44)
!874 = !DILocation(line: 479, column: 19, scope: !873)
!875 = !DILocalVariable(name: "vi", scope: !712, file: !25, line: 376, type: !18)
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
!893 = !DILocation(line: 484, column: 5, scope: !712)
!894 = !DILocation(line: 486, column: 34, scope: !712)
!895 = !DILocation(line: 486, column: 5, scope: !712)
!896 = !DILocation(line: 487, column: 13, scope: !712)
!897 = !DILocation(line: 487, column: 5, scope: !712)
!898 = !DILabel(scope: !712, name: "err", file: !25, line: 489)
!899 = !DILocation(line: 489, column: 1, scope: !712)
!900 = !DILocation(line: 490, column: 5, scope: !712)
!901 = !DILocation(line: 491, column: 5, scope: !712)
!902 = !DILocation(line: 492, column: 5, scope: !712)
!903 = !DILocation(line: 493, column: 5, scope: !712)
!904 = !DILocation(line: 494, column: 23, scope: !712)
!905 = !DILocation(line: 494, column: 5, scope: !712)
!906 = !DILocation(line: 495, column: 5, scope: !712)
!907 = !DILocation(line: 496, column: 5, scope: !712)
!908 = !DILocation(line: 497, column: 5, scope: !712)
!909 = !DILocation(line: 498, column: 5, scope: !712)
!910 = !DILocation(line: 499, column: 5, scope: !712)
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
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 532224, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 8316)
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
!957 = !DILocation(line: 56, column: 27, scope: !955)
!958 = !DILocation(line: 56, column: 9, scope: !949)
!959 = !DILocation(line: 56, column: 53, scope: !955)
!960 = !DILocation(line: 56, column: 9, scope: !955)
!961 = distinct !{!961, !958, !962, !307}
!962 = !DILocation(line: 59, column: 9, scope: !949)
!963 = !DILocalVariable(name: "temp", scope: !933, file: !25, line: 62, type: !588)
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
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 100352, elements: !1079)
!1079 = !{!1080}
!1080 = !DISubrange(count: 1568)
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
!1130 = !DILocalVariable(name: "k", scope: !1131, file: !25, line: 182, type: !45)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !25, line: 182, column: 17)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !25, line: 181, column: 50)
!1133 = !DILocation(line: 0, scope: !1131)
!1134 = !DILocation(line: 184, column: 78, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !25, line: 183, column: 17)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !25, line: 182, column: 17)
!1137 = !DILocation(line: 184, column: 100, scope: !1135)
!1138 = !DILocation(line: 184, column: 35, scope: !1135)
!1139 = !DILocation(line: 184, column: 39, scope: !1135)
!1140 = !DILocation(line: 184, column: 65, scope: !1135)
!1141 = !DILocation(line: 184, column: 43, scope: !1135)
!1142 = !DILocation(line: 184, column: 21, scope: !1135)
!1143 = !DILocation(line: 184, column: 75, scope: !1135)
!1144 = !DILocation(line: 185, column: 38, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1135, file: !25, line: 185, column: 24)
!1146 = !DILocation(line: 186, column: 86, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 185, column: 42)
!1148 = !DILocation(line: 186, column: 114, scope: !1147)
!1149 = !DILocation(line: 186, column: 108, scope: !1147)
!1150 = !DILocation(line: 186, column: 39, scope: !1147)
!1151 = !DILocation(line: 186, column: 43, scope: !1147)
!1152 = !DILocation(line: 186, column: 73, scope: !1147)
!1153 = !DILocation(line: 186, column: 47, scope: !1147)
!1154 = !DILocation(line: 186, column: 25, scope: !1147)
!1155 = !DILocation(line: 186, column: 83, scope: !1147)
!1156 = !DILocation(line: 187, column: 21, scope: !1147)
!1157 = !DILocation(line: 181, column: 46, scope: !1128)
!1158 = !DILocation(line: 181, column: 13, scope: !1128)
!1159 = distinct !{!1159, !1129, !1160, !307}
!1160 = !DILocation(line: 189, column: 13, scope: !1123)
!1161 = !DILocation(line: 191, column: 19, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1120, file: !25, line: 191, column: 17)
!1163 = !DILocation(line: 192, column: 26, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1162, file: !25, line: 191, column: 25)
!1165 = !DILocalVariable(name: "Mi", scope: !1067, file: !25, line: 164, type: !330)
!1166 = !DILocalVariable(name: "c", scope: !1167, file: !25, line: 193, type: !45)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !25, line: 193, column: 17)
!1168 = !DILocation(line: 0, scope: !1167)
!1169 = !DILocation(line: 193, column: 22, scope: !1167)
!1170 = !DILocation(line: 193, scope: !1167)
!1171 = !DILocation(line: 193, column: 35, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !25, line: 193, column: 17)
!1173 = !DILocation(line: 193, column: 17, scope: !1167)
!1174 = !DILocalVariable(name: "k", scope: !1175, file: !25, line: 194, type: !45)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !25, line: 194, column: 21)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !25, line: 193, column: 54)
!1177 = !DILocation(line: 0, scope: !1175)
!1178 = !DILocation(line: 196, column: 81, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 195, column: 21)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !25, line: 194, column: 21)
!1181 = !DILocation(line: 196, column: 103, scope: !1179)
!1182 = !DILocation(line: 196, column: 38, scope: !1179)
!1183 = !DILocation(line: 196, column: 42, scope: !1179)
!1184 = !DILocation(line: 196, column: 68, scope: !1179)
!1185 = !DILocation(line: 196, column: 46, scope: !1179)
!1186 = !DILocation(line: 196, column: 25, scope: !1179)
!1187 = !DILocation(line: 196, column: 78, scope: !1179)
!1188 = !DILocation(line: 197, column: 42, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !25, line: 197, column: 28)
!1190 = !DILocation(line: 198, column: 89, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1189, file: !25, line: 197, column: 46)
!1192 = !DILocation(line: 198, column: 117, scope: !1191)
!1193 = !DILocation(line: 198, column: 111, scope: !1191)
!1194 = !DILocation(line: 198, column: 42, scope: !1191)
!1195 = !DILocation(line: 198, column: 46, scope: !1191)
!1196 = !DILocation(line: 198, column: 76, scope: !1191)
!1197 = !DILocation(line: 198, column: 50, scope: !1191)
!1198 = !DILocation(line: 198, column: 29, scope: !1191)
!1199 = !DILocation(line: 198, column: 86, scope: !1191)
!1200 = !DILocation(line: 199, column: 25, scope: !1191)
!1201 = !DILocation(line: 193, column: 50, scope: !1172)
!1202 = !DILocation(line: 193, column: 17, scope: !1172)
!1203 = distinct !{!1203, !1173, !1204, !307}
!1204 = !DILocation(line: 201, column: 17, scope: !1167)
!1205 = !DILocation(line: 204, column: 27, scope: !1120)
!1206 = !DILocation(line: 205, column: 30, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1120, file: !25, line: 205, column: 16)
!1208 = !DILocation(line: 178, column: 46, scope: !1117)
!1209 = !DILocation(line: 178, column: 9, scope: !1117)
!1210 = distinct !{!1210, !1118, !1211, !307}
!1211 = !DILocation(line: 209, column: 9, scope: !1112)
!1212 = !DILocation(line: 177, column: 42, scope: !1109)
!1213 = !DILocation(line: 177, column: 5, scope: !1109)
!1214 = distinct !{!1214, !1110, !1215, !307}
!1215 = !DILocation(line: 210, column: 5, scope: !1103)
!1216 = !DILocation(line: 212, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 212, column: 5)
!1218 = !DILocalVariable(name: "c", scope: !1217, file: !25, line: 212, type: !15)
!1219 = !DILocation(line: 0, scope: !1217)
!1220 = !DILocation(line: 212, column: 26, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !25, line: 212, column: 5)
!1222 = !DILocation(line: 212, column: 5, scope: !1217)
!1223 = !DILocation(line: 214, column: 35, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !25, line: 213, column: 5)
!1225 = !DILocation(line: 214, column: 9, scope: !1224)
!1226 = !DILocation(line: 212, column: 91, scope: !1221)
!1227 = !DILocation(line: 212, column: 5, scope: !1221)
!1228 = distinct !{!1228, !1222, !1229, !307}
!1229 = !DILocation(line: 215, column: 5, scope: !1217)
!1230 = !DILocalVariable(name: "tab", scope: !1067, file: !25, line: 217, type: !1231)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1232)
!1232 = !{!1233}
!1233 = !DISubrange(count: 16)
!1234 = !DILocation(line: 217, column: 19, scope: !1067)
!1235 = !DILocalVariable(name: "i", scope: !1236, file: !25, line: 218, type: !15)
!1236 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 218, column: 5)
!1237 = !DILocation(line: 0, scope: !1236)
!1238 = !DILocation(line: 218, column: 10, scope: !1236)
!1239 = !DILocation(line: 218, scope: !1236)
!1240 = !DILocation(line: 218, column: 26, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !25, line: 218, column: 5)
!1242 = !DILocation(line: 218, column: 5, scope: !1236)
!1243 = !DILocation(line: 220, column: 28, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !25, line: 219, column: 5)
!1245 = !DILocation(line: 220, column: 22, scope: !1244)
!1246 = !DILocation(line: 220, column: 14, scope: !1244)
!1247 = !DILocation(line: 220, column: 9, scope: !1244)
!1248 = !DILocation(line: 220, column: 20, scope: !1244)
!1249 = !DILocation(line: 221, column: 22, scope: !1244)
!1250 = !DILocation(line: 221, column: 14, scope: !1244)
!1251 = !DILocation(line: 221, column: 16, scope: !1244)
!1252 = !DILocation(line: 221, column: 9, scope: !1244)
!1253 = !DILocation(line: 221, column: 20, scope: !1244)
!1254 = !DILocation(line: 222, column: 22, scope: !1244)
!1255 = !DILocation(line: 222, column: 14, scope: !1244)
!1256 = !DILocation(line: 222, column: 16, scope: !1244)
!1257 = !DILocation(line: 222, column: 9, scope: !1244)
!1258 = !DILocation(line: 222, column: 20, scope: !1244)
!1259 = !DILocation(line: 223, column: 22, scope: !1244)
!1260 = !DILocation(line: 223, column: 14, scope: !1244)
!1261 = !DILocation(line: 223, column: 16, scope: !1244)
!1262 = !DILocation(line: 223, column: 9, scope: !1244)
!1263 = !DILocation(line: 223, column: 20, scope: !1244)
!1264 = !DILocation(line: 218, column: 41, scope: !1241)
!1265 = !DILocation(line: 218, column: 5, scope: !1241)
!1266 = distinct !{!1266, !1242, !1267, !307}
!1267 = !DILocation(line: 224, column: 5, scope: !1236)
!1268 = !DILocation(line: 228, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 228, column: 5)
!1270 = !DILocalVariable(name: "c", scope: !1269, file: !25, line: 228, type: !15)
!1271 = !DILocation(line: 0, scope: !1269)
!1272 = !DILocation(line: 228, column: 26, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !25, line: 228, column: 5)
!1274 = !DILocation(line: 228, column: 5, scope: !1269)
!1275 = !DILocation(line: 230, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !25, line: 230, column: 9)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !25, line: 229, column: 5)
!1278 = !DILocalVariable(name: "r", scope: !1276, file: !25, line: 230, type: !45)
!1279 = !DILocation(line: 0, scope: !1276)
!1280 = !DILocation(line: 230, column: 36, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !25, line: 230, column: 9)
!1282 = !DILocation(line: 230, column: 9, scope: !1276)
!1283 = !DILocation(line: 232, column: 28, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !25, line: 231, column: 9)
!1285 = !DILocation(line: 232, column: 32, scope: !1284)
!1286 = !DILocation(line: 232, column: 41, scope: !1284)
!1287 = !DILocation(line: 232, column: 49, scope: !1284)
!1288 = !DILocation(line: 232, column: 45, scope: !1284)
!1289 = !DILocalVariable(name: "pos", scope: !1284, file: !25, line: 232, type: !15)
!1290 = !DILocation(line: 0, scope: !1284)
!1291 = !DILocation(line: 233, column: 28, scope: !1284)
!1292 = !DILocation(line: 233, column: 41, scope: !1284)
!1293 = !DILocalVariable(name: "t0", scope: !1284, file: !25, line: 233, type: !6)
!1294 = !DILocation(line: 234, column: 35, scope: !1284)
!1295 = !DILocation(line: 234, column: 41, scope: !1284)
!1296 = !DILocalVariable(name: "t1", scope: !1284, file: !25, line: 234, type: !6)
!1297 = !DILocation(line: 235, column: 35, scope: !1284)
!1298 = !DILocation(line: 235, column: 41, scope: !1284)
!1299 = !DILocalVariable(name: "t2", scope: !1284, file: !25, line: 235, type: !6)
!1300 = !DILocation(line: 236, column: 28, scope: !1284)
!1301 = !DILocation(line: 236, column: 35, scope: !1284)
!1302 = !DILocation(line: 236, column: 41, scope: !1284)
!1303 = !DILocalVariable(name: "t3", scope: !1284, file: !25, line: 236, type: !6)
!1304 = !DILocalVariable(name: "t", scope: !1305, file: !25, line: 237, type: !15)
!1305 = distinct !DILexicalBlock(scope: !1284, file: !25, line: 237, column: 13)
!1306 = !DILocation(line: 0, scope: !1305)
!1307 = !DILocation(line: 239, column: 84, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !25, line: 238, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !25, line: 237, column: 13)
!1310 = !DILocation(line: 239, column: 83, scope: !1308)
!1311 = !DILocation(line: 239, column: 100, scope: !1308)
!1312 = !DILocation(line: 239, column: 99, scope: !1308)
!1313 = !DILocation(line: 239, column: 95, scope: !1308)
!1314 = !DILocation(line: 239, column: 116, scope: !1308)
!1315 = !DILocation(line: 239, column: 115, scope: !1308)
!1316 = !DILocation(line: 239, column: 111, scope: !1308)
!1317 = !DILocation(line: 239, column: 132, scope: !1308)
!1318 = !DILocation(line: 239, column: 131, scope: !1308)
!1319 = !DILocation(line: 239, column: 127, scope: !1308)
!1320 = !DILocation(line: 239, column: 24, scope: !1308)
!1321 = !DILocation(line: 239, column: 36, scope: !1308)
!1322 = !DILocation(line: 239, column: 40, scope: !1308)
!1323 = !DILocation(line: 239, column: 49, scope: !1308)
!1324 = !DILocation(line: 239, column: 60, scope: !1308)
!1325 = !DILocation(line: 239, column: 72, scope: !1308)
!1326 = !DILocation(line: 239, column: 53, scope: !1308)
!1327 = !DILocation(line: 239, column: 17, scope: !1308)
!1328 = !DILocation(line: 239, column: 78, scope: !1308)
!1329 = !DILocation(line: 230, column: 82, scope: !1281)
!1330 = !DILocation(line: 230, column: 9, scope: !1281)
!1331 = distinct !{!1331, !1282, !1332, !307}
!1332 = !DILocation(line: 241, column: 9, scope: !1276)
!1333 = !DILocation(line: 228, column: 38, scope: !1273)
!1334 = !DILocation(line: 228, column: 5, scope: !1273)
!1335 = distinct !{!1335, !1274, !1336, !307}
!1336 = !DILocation(line: 242, column: 5, scope: !1269)
!1337 = !DILocation(line: 250, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1067, file: !25, line: 250, column: 5)
!1339 = !DILocalVariable(name: "r", scope: !1338, file: !25, line: 250, type: !45)
!1340 = !DILocation(line: 0, scope: !1338)
!1341 = !DILocation(line: 250, column: 23, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !25, line: 250, column: 5)
!1343 = !DILocation(line: 250, column: 5, scope: !1338)
!1344 = !DILocation(line: 252, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !25, line: 252, column: 9)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !25, line: 251, column: 5)
!1347 = !DILocalVariable(name: "c", scope: !1345, file: !25, line: 252, type: !45)
!1348 = !DILocation(line: 0, scope: !1345)
!1349 = !DILocation(line: 254, column: 13, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !25, line: 254, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !25, line: 253, column: 9)
!1352 = distinct !DILexicalBlock(scope: !1345, file: !25, line: 252, column: 9)
!1353 = !DILocation(line: 254, scope: !1350)
!1354 = !DILocalVariable(name: "i", scope: !1350, file: !25, line: 254, type: !45)
!1355 = !DILocation(line: 0, scope: !1350)
!1356 = !DILocation(line: 254, column: 35, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !25, line: 254, column: 13)
!1358 = !DILocation(line: 256, column: 55, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1357, file: !25, line: 255, column: 13)
!1360 = !DILocation(line: 256, column: 59, scope: !1359)
!1361 = !DILocation(line: 256, column: 63, scope: !1359)
!1362 = !DILocation(line: 256, column: 44, scope: !1359)
!1363 = !DILocation(line: 256, column: 95, scope: !1359)
!1364 = !DILocation(line: 256, column: 92, scope: !1359)
!1365 = !DILocation(line: 256, column: 75, scope: !1359)
!1366 = !DILocation(line: 256, column: 99, scope: !1359)
!1367 = !DILocation(line: 256, column: 17, scope: !1359)
!1368 = !DILocation(line: 254, column: 50, scope: !1357)
!1369 = !DILocation(line: 254, column: 13, scope: !1357)
!1370 = distinct !{!1370, !1349, !1371, !307}
!1371 = !DILocation(line: 257, column: 13, scope: !1350)
!1372 = !DILocation(line: 252, column: 50, scope: !1352)
!1373 = !DILocation(line: 252, column: 27, scope: !1352)
!1374 = !DILocation(line: 252, column: 9, scope: !1345)
!1375 = !DILocation(line: 256, column: 104, scope: !1359)
!1376 = !DILocation(line: 252, column: 9, scope: !1352)
!1377 = distinct !{!1377, !1374, !1378, !307}
!1378 = !DILocation(line: 258, column: 9, scope: !1345)
!1379 = !DILocation(line: 250, column: 38, scope: !1342)
!1380 = !DILocation(line: 250, column: 5, scope: !1342)
!1381 = distinct !{!1381, !1343, !1382, !307}
!1382 = !DILocation(line: 259, column: 5, scope: !1338)
!1383 = !DILocation(line: 260, column: 1, scope: !1067)
!1384 = distinct !DISubprogram(name: "mat_mul", scope: !496, file: !496, line: 79, type: !1385, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !49, !49, !18, !45, !45, !45}
!1387 = !DILocalVariable(name: "a", arg: 1, scope: !1384, file: !496, line: 79, type: !49)
!1388 = !DILocation(line: 0, scope: !1384)
!1389 = !DILocalVariable(name: "b", arg: 2, scope: !1384, file: !496, line: 79, type: !49)
!1390 = !DILocalVariable(name: "c", arg: 3, scope: !1384, file: !496, line: 80, type: !18)
!1391 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1384, file: !496, line: 80, type: !45)
!1392 = !DILocalVariable(name: "row_a", arg: 5, scope: !1384, file: !496, line: 80, type: !45)
!1393 = !DILocalVariable(name: "col_b", arg: 6, scope: !1384, file: !496, line: 80, type: !45)
!1394 = !DILocalVariable(name: "i", scope: !1395, file: !496, line: 81, type: !45)
!1395 = distinct !DILexicalBlock(scope: !1384, file: !496, line: 81, column: 5)
!1396 = !DILocation(line: 0, scope: !1395)
!1397 = !DILocation(line: 81, column: 10, scope: !1395)
!1398 = !DILocation(line: 81, scope: !1395)
!1399 = !DILocation(line: 81, column: 23, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !496, line: 81, column: 5)
!1401 = !DILocation(line: 81, column: 5, scope: !1395)
!1402 = !DILocation(line: 82, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !496, line: 82, column: 9)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !496, line: 81, column: 53)
!1405 = !DILocalVariable(name: "j", scope: !1403, file: !496, line: 82, type: !45)
!1406 = !DILocation(line: 0, scope: !1403)
!1407 = !DILocation(line: 82, column: 27, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !496, line: 82, column: 9)
!1409 = !DILocation(line: 82, column: 9, scope: !1403)
!1410 = !DILocation(line: 83, column: 31, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !496, line: 82, column: 46)
!1412 = !DILocation(line: 83, column: 18, scope: !1411)
!1413 = !DILocation(line: 83, column: 16, scope: !1411)
!1414 = !DILocation(line: 82, column: 36, scope: !1408)
!1415 = !DILocation(line: 82, column: 41, scope: !1408)
!1416 = !DILocation(line: 82, column: 9, scope: !1408)
!1417 = distinct !{!1417, !1409, !1418, !307}
!1418 = !DILocation(line: 84, column: 9, scope: !1403)
!1419 = !DILocation(line: 81, column: 32, scope: !1400)
!1420 = !DILocation(line: 81, column: 39, scope: !1400)
!1421 = !DILocation(line: 81, column: 5, scope: !1400)
!1422 = distinct !{!1422, !1401, !1423, !307}
!1423 = !DILocation(line: 85, column: 5, scope: !1395)
!1424 = !DILocation(line: 86, column: 1, scope: !1384)
!1425 = distinct !DISubprogram(name: "mat_add", scope: !496, file: !496, line: 88, type: !1426, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !49, !49, !18, !45, !45}
!1428 = !DILocalVariable(name: "a", arg: 1, scope: !1425, file: !496, line: 88, type: !49)
!1429 = !DILocation(line: 0, scope: !1425)
!1430 = !DILocalVariable(name: "b", arg: 2, scope: !1425, file: !496, line: 88, type: !49)
!1431 = !DILocalVariable(name: "c", arg: 3, scope: !1425, file: !496, line: 89, type: !18)
!1432 = !DILocalVariable(name: "m", arg: 4, scope: !1425, file: !496, line: 89, type: !45)
!1433 = !DILocalVariable(name: "n", arg: 5, scope: !1425, file: !496, line: 89, type: !45)
!1434 = !DILocalVariable(name: "i", scope: !1435, file: !496, line: 90, type: !45)
!1435 = distinct !DILexicalBlock(scope: !1425, file: !496, line: 90, column: 5)
!1436 = !DILocation(line: 0, scope: !1435)
!1437 = !DILocation(line: 90, column: 10, scope: !1435)
!1438 = !DILocation(line: 90, scope: !1435)
!1439 = !DILocation(line: 90, column: 23, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !496, line: 90, column: 5)
!1441 = !DILocation(line: 90, column: 5, scope: !1435)
!1442 = !DILocation(line: 91, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !496, line: 91, column: 9)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !496, line: 90, column: 33)
!1445 = !DILocalVariable(name: "j", scope: !1443, file: !496, line: 91, type: !45)
!1446 = !DILocation(line: 0, scope: !1443)
!1447 = !DILocation(line: 91, column: 27, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !496, line: 91, column: 9)
!1449 = !DILocation(line: 91, column: 9, scope: !1443)
!1450 = !DILocation(line: 92, column: 46, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !496, line: 91, column: 37)
!1452 = !DILocation(line: 92, column: 42, scope: !1451)
!1453 = !DILocation(line: 92, column: 50, scope: !1451)
!1454 = !DILocation(line: 92, column: 38, scope: !1451)
!1455 = !DILocation(line: 92, column: 64, scope: !1451)
!1456 = !DILocation(line: 92, column: 60, scope: !1451)
!1457 = !DILocation(line: 92, column: 68, scope: !1451)
!1458 = !DILocation(line: 92, column: 56, scope: !1451)
!1459 = !DILocation(line: 92, column: 32, scope: !1451)
!1460 = !DILocation(line: 92, column: 21, scope: !1451)
!1461 = !DILocation(line: 92, column: 17, scope: !1451)
!1462 = !DILocation(line: 92, column: 25, scope: !1451)
!1463 = !DILocation(line: 92, column: 30, scope: !1451)
!1464 = !DILocation(line: 91, column: 32, scope: !1448)
!1465 = !DILocation(line: 91, column: 9, scope: !1448)
!1466 = distinct !{!1466, !1449, !1467, !307}
!1467 = !DILocation(line: 93, column: 9, scope: !1443)
!1468 = !DILocation(line: 90, column: 28, scope: !1440)
!1469 = !DILocation(line: 90, column: 5, scope: !1440)
!1470 = distinct !{!1470, !1441, !1471, !307}
!1471 = !DILocation(line: 94, column: 5, scope: !1435)
!1472 = !DILocation(line: 95, column: 1, scope: !1425)
!1473 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !280, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1474 = !DILocalVariable(name: "m", arg: 1, scope: !1473, file: !25, line: 32, type: !49)
!1475 = !DILocation(line: 0, scope: !1473)
!1476 = !DILocalVariable(name: "menc", arg: 2, scope: !1473, file: !25, line: 32, type: !18)
!1477 = !DILocalVariable(name: "mlen", arg: 3, scope: !1473, file: !25, line: 32, type: !45)
!1478 = !DILocalVariable(name: "i", scope: !1473, file: !25, line: 33, type: !45)
!1479 = !DILocation(line: 34, column: 10, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !25, line: 34, column: 5)
!1481 = !DILocation(line: 34, scope: !1480)
!1482 = !DILocation(line: 34, column: 26, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !25, line: 34, column: 5)
!1484 = !DILocation(line: 34, column: 19, scope: !1483)
!1485 = !DILocation(line: 34, column: 5, scope: !1480)
!1486 = !DILocation(line: 35, column: 20, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !25, line: 34, column: 44)
!1488 = !DILocation(line: 35, column: 31, scope: !1487)
!1489 = !DILocation(line: 35, column: 27, scope: !1487)
!1490 = !DILocation(line: 35, column: 36, scope: !1487)
!1491 = !DILocation(line: 35, column: 24, scope: !1487)
!1492 = !DILocation(line: 35, column: 9, scope: !1487)
!1493 = !DILocation(line: 35, column: 17, scope: !1487)
!1494 = !DILocation(line: 34, column: 31, scope: !1483)
!1495 = !DILocation(line: 34, column: 38, scope: !1483)
!1496 = !DILocation(line: 34, column: 5, scope: !1483)
!1497 = distinct !{!1497, !1485, !1498, !307}
!1498 = !DILocation(line: 36, column: 5, scope: !1480)
!1499 = !DILocation(line: 38, column: 18, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1473, file: !25, line: 38, column: 9)
!1501 = !DILocation(line: 39, column: 20, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1500, file: !25, line: 38, column: 24)
!1503 = !DILocation(line: 39, column: 9, scope: !1502)
!1504 = !DILocation(line: 39, column: 17, scope: !1502)
!1505 = !DILocation(line: 40, column: 5, scope: !1502)
!1506 = !DILocation(line: 41, column: 1, scope: !1473)
!1507 = distinct !DISubprogram(name: "add_f", scope: !496, file: !496, line: 43, type: !1508, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!14, !14, !14}
!1510 = !DILocalVariable(name: "a", arg: 1, scope: !1507, file: !496, line: 43, type: !14)
!1511 = !DILocation(line: 0, scope: !1507)
!1512 = !DILocalVariable(name: "b", arg: 2, scope: !1507, file: !496, line: 43, type: !14)
!1513 = !DILocation(line: 44, column: 14, scope: !1507)
!1514 = !DILocation(line: 44, column: 5, scope: !1507)
!1515 = distinct !DISubprogram(name: "lincomb", scope: !496, file: !496, line: 70, type: !1516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!14, !49, !49, !45, !45}
!1518 = !DILocalVariable(name: "a", arg: 1, scope: !1515, file: !496, line: 70, type: !49)
!1519 = !DILocation(line: 0, scope: !1515)
!1520 = !DILocalVariable(name: "b", arg: 2, scope: !1515, file: !496, line: 71, type: !49)
!1521 = !DILocalVariable(name: "n", arg: 3, scope: !1515, file: !496, line: 71, type: !45)
!1522 = !DILocalVariable(name: "m", arg: 4, scope: !1515, file: !496, line: 71, type: !45)
!1523 = !DILocalVariable(name: "ret", scope: !1515, file: !496, line: 72, type: !14)
!1524 = !DILocalVariable(name: "i", scope: !1525, file: !496, line: 73, type: !45)
!1525 = distinct !DILexicalBlock(scope: !1515, file: !496, line: 73, column: 5)
!1526 = !DILocation(line: 0, scope: !1525)
!1527 = !DILocation(line: 73, column: 10, scope: !1525)
!1528 = !DILocation(line: 73, scope: !1525)
!1529 = !DILocation(line: 73, column: 23, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !496, line: 73, column: 5)
!1531 = !DILocation(line: 73, column: 5, scope: !1525)
!1532 = !DILocation(line: 74, column: 27, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !496, line: 73, column: 41)
!1534 = !DILocation(line: 74, column: 33, scope: !1533)
!1535 = !DILocation(line: 74, column: 21, scope: !1533)
!1536 = !DILocation(line: 74, column: 15, scope: !1533)
!1537 = !DILocation(line: 73, column: 28, scope: !1530)
!1538 = !DILocation(line: 73, column: 35, scope: !1530)
!1539 = !DILocation(line: 73, column: 5, scope: !1530)
!1540 = distinct !{!1540, !1531, !1541, !307}
!1541 = !DILocation(line: 75, column: 5, scope: !1525)
!1542 = !DILocation(line: 76, column: 5, scope: !1515)
!1543 = distinct !DISubprogram(name: "mul_f", scope: !496, file: !496, line: 9, type: !1508, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1544 = !DILocalVariable(name: "a", arg: 1, scope: !1543, file: !496, line: 9, type: !14)
!1545 = !DILocation(line: 0, scope: !1543)
!1546 = !DILocalVariable(name: "b", arg: 2, scope: !1543, file: !496, line: 9, type: !14)
!1547 = !DILocation(line: 14, column: 10, scope: !1543)
!1548 = !DILocation(line: 14, column: 7, scope: !1543)
!1549 = !DILocation(line: 17, column: 17, scope: !1543)
!1550 = !DILocalVariable(name: "p", scope: !1543, file: !496, line: 11, type: !14)
!1551 = !DILocation(line: 18, column: 13, scope: !1543)
!1552 = !DILocation(line: 18, column: 17, scope: !1543)
!1553 = !DILocation(line: 18, column: 7, scope: !1543)
!1554 = !DILocation(line: 19, column: 13, scope: !1543)
!1555 = !DILocation(line: 19, column: 17, scope: !1543)
!1556 = !DILocation(line: 19, column: 7, scope: !1543)
!1557 = !DILocation(line: 20, column: 13, scope: !1543)
!1558 = !DILocation(line: 20, column: 17, scope: !1543)
!1559 = !DILocation(line: 20, column: 7, scope: !1543)
!1560 = !DILocalVariable(name: "top_p", scope: !1543, file: !496, line: 23, type: !14)
!1561 = !DILocation(line: 24, column: 37, scope: !1543)
!1562 = !DILocation(line: 24, column: 52, scope: !1543)
!1563 = !DILocation(line: 24, column: 43, scope: !1543)
!1564 = !DILocation(line: 24, column: 59, scope: !1543)
!1565 = !DILocalVariable(name: "out", scope: !1543, file: !496, line: 24, type: !14)
!1566 = !DILocation(line: 25, column: 5, scope: !1543)
!1567 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1568 = !DILocation(line: 0, scope: !24)
!1569 = !DILocalVariable(name: "i", scope: !1570, file: !25, line: 117, type: !15)
!1570 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1571 = !DILocation(line: 0, scope: !1570)
!1572 = !DILocation(line: 119, column: 24, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !25, line: 118, column: 5)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !25, line: 117, column: 5)
!1575 = !DILocation(line: 119, column: 29, scope: !1573)
!1576 = !DILocation(line: 119, column: 38, scope: !1573)
!1577 = !DILocation(line: 119, column: 36, scope: !1573)
!1578 = !DILocation(line: 119, column: 46, scope: !1573)
!1579 = !DILocalVariable(name: "t", scope: !1573, file: !25, line: 119, type: !6)
!1580 = !DILocation(line: 0, scope: !1573)
!1581 = !DILocation(line: 120, column: 21, scope: !1573)
!1582 = !DILocation(line: 120, column: 16, scope: !1573)
!1583 = !DILocation(line: 121, column: 9, scope: !1573)
!1584 = !DILocation(line: 121, column: 16, scope: !1573)
!1585 = !DILocation(line: 120, column: 9, scope: !1573)
!1586 = !DILocalVariable(name: "i", scope: !1587, file: !25, line: 124, type: !15)
!1587 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1588 = !DILocation(line: 0, scope: !1587)
!1589 = !DILocation(line: 126, column: 25, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !25, line: 125, column: 5)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !25, line: 124, column: 5)
!1592 = !DILocation(line: 126, column: 32, scope: !1590)
!1593 = !DILocation(line: 126, column: 40, scope: !1590)
!1594 = !DILocation(line: 126, column: 38, scope: !1590)
!1595 = !DILocation(line: 126, column: 48, scope: !1590)
!1596 = !DILocalVariable(name: "t0", scope: !1590, file: !25, line: 126, type: !6)
!1597 = !DILocation(line: 0, scope: !1590)
!1598 = !DILocation(line: 127, column: 25, scope: !1590)
!1599 = !DILocation(line: 127, column: 32, scope: !1590)
!1600 = !DILocation(line: 127, column: 40, scope: !1590)
!1601 = !DILocation(line: 127, column: 38, scope: !1590)
!1602 = !DILocation(line: 127, column: 48, scope: !1590)
!1603 = !DILocalVariable(name: "t1", scope: !1590, file: !25, line: 127, type: !6)
!1604 = !DILocation(line: 128, column: 23, scope: !1590)
!1605 = !DILocation(line: 128, column: 16, scope: !1590)
!1606 = !DILocation(line: 129, column: 23, scope: !1590)
!1607 = !DILocation(line: 129, column: 9, scope: !1590)
!1608 = !DILocation(line: 129, column: 16, scope: !1590)
!1609 = !DILocation(line: 130, column: 9, scope: !1590)
!1610 = !DILocation(line: 130, column: 16, scope: !1590)
!1611 = !DILocation(line: 131, column: 9, scope: !1590)
!1612 = !DILocation(line: 131, column: 16, scope: !1590)
!1613 = !DILocation(line: 128, column: 9, scope: !1590)
!1614 = !DILocalVariable(name: "i", scope: !1615, file: !25, line: 134, type: !15)
!1615 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1616 = !DILocation(line: 0, scope: !1615)
!1617 = !DILocation(line: 136, column: 25, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !25, line: 135, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !25, line: 134, column: 5)
!1620 = !DILocation(line: 136, column: 32, scope: !1618)
!1621 = !DILocation(line: 136, column: 41, scope: !1618)
!1622 = !DILocation(line: 136, column: 39, scope: !1618)
!1623 = !DILocation(line: 136, column: 50, scope: !1618)
!1624 = !DILocalVariable(name: "t0", scope: !1618, file: !25, line: 136, type: !6)
!1625 = !DILocation(line: 0, scope: !1618)
!1626 = !DILocation(line: 137, column: 25, scope: !1618)
!1627 = !DILocation(line: 137, column: 32, scope: !1618)
!1628 = !DILocation(line: 137, column: 41, scope: !1618)
!1629 = !DILocation(line: 137, column: 39, scope: !1618)
!1630 = !DILocation(line: 137, column: 50, scope: !1618)
!1631 = !DILocalVariable(name: "t1", scope: !1618, file: !25, line: 137, type: !6)
!1632 = !DILocation(line: 139, column: 23, scope: !1618)
!1633 = !DILocation(line: 139, column: 17, scope: !1618)
!1634 = !DILocation(line: 140, column: 23, scope: !1618)
!1635 = !DILocation(line: 140, column: 9, scope: !1618)
!1636 = !DILocation(line: 140, column: 17, scope: !1618)
!1637 = !DILocation(line: 141, column: 9, scope: !1618)
!1638 = !DILocation(line: 141, column: 17, scope: !1618)
!1639 = !DILocation(line: 142, column: 9, scope: !1618)
!1640 = !DILocation(line: 142, column: 17, scope: !1618)
!1641 = !DILocation(line: 139, column: 9, scope: !1618)
!1642 = !DILocalVariable(name: "i", scope: !1643, file: !25, line: 145, type: !15)
!1643 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1644 = !DILocation(line: 0, scope: !1643)
!1645 = !DILocation(line: 147, column: 24, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !25, line: 146, column: 5)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !25, line: 145, column: 5)
!1648 = !DILocation(line: 147, column: 28, scope: !1646)
!1649 = !DILocation(line: 147, column: 36, scope: !1646)
!1650 = !DILocation(line: 147, column: 44, scope: !1646)
!1651 = !DILocalVariable(name: "t", scope: !1646, file: !25, line: 147, type: !6)
!1652 = !DILocation(line: 0, scope: !1646)
!1653 = !DILocation(line: 148, column: 21, scope: !1646)
!1654 = !DILocation(line: 148, column: 16, scope: !1646)
!1655 = !DILocation(line: 149, column: 9, scope: !1646)
!1656 = !DILocation(line: 149, column: 16, scope: !1646)
!1657 = !DILocation(line: 148, column: 9, scope: !1646)
!1658 = !DILocation(line: 151, column: 1, scope: !24)
!1659 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !327, file: !327, line: 61, type: !388, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1660 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1659, file: !327, line: 61, type: !243)
!1661 = !DILocation(line: 0, scope: !1659)
!1662 = !DILocalVariable(name: "mat", arg: 2, scope: !1659, file: !327, line: 61, type: !49)
!1663 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1659, file: !327, line: 61, type: !330)
!1664 = !DILocalVariable(name: "acc", arg: 4, scope: !1659, file: !327, line: 61, type: !5)
!1665 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1659, file: !327, line: 62, type: !243)
!1666 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1659, file: !327, line: 62, type: !243)
!1667 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1659, file: !327, line: 62, type: !243)
!1668 = !DILocalVariable(name: "r", scope: !1669, file: !327, line: 64, type: !45)
!1669 = distinct !DILexicalBlock(scope: !1659, file: !327, line: 64, column: 5)
!1670 = !DILocation(line: 0, scope: !1669)
!1671 = !DILocation(line: 64, column: 10, scope: !1669)
!1672 = !DILocation(line: 64, scope: !1669)
!1673 = !DILocation(line: 64, column: 23, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !327, line: 64, column: 5)
!1675 = !DILocation(line: 64, column: 5, scope: !1669)
!1676 = !DILocation(line: 65, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !327, line: 65, column: 9)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !327, line: 64, column: 40)
!1679 = !DILocalVariable(name: "c", scope: !1677, file: !327, line: 65, type: !45)
!1680 = !DILocation(line: 0, scope: !1677)
!1681 = !DILocation(line: 65, column: 27, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !327, line: 65, column: 9)
!1683 = !DILocation(line: 65, column: 9, scope: !1677)
!1684 = !DILocation(line: 66, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !327, line: 66, column: 13)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !327, line: 65, column: 44)
!1687 = !DILocalVariable(name: "k", scope: !1685, file: !327, line: 66, type: !45)
!1688 = !DILocation(line: 0, scope: !1685)
!1689 = !DILocation(line: 66, column: 31, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !327, line: 66, column: 13)
!1691 = !DILocation(line: 66, column: 13, scope: !1685)
!1692 = !DILocation(line: 67, column: 70, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !327, line: 66, column: 54)
!1694 = !DILocation(line: 67, column: 84, scope: !1693)
!1695 = !DILocation(line: 67, column: 65, scope: !1693)
!1696 = !DILocation(line: 67, column: 51, scope: !1693)
!1697 = !DILocation(line: 67, column: 96, scope: !1693)
!1698 = !DILocation(line: 67, column: 90, scope: !1693)
!1699 = !DILocation(line: 67, column: 136, scope: !1693)
!1700 = !DILocation(line: 67, column: 150, scope: !1693)
!1701 = !DILocation(line: 67, column: 131, scope: !1693)
!1702 = !DILocation(line: 67, column: 117, scope: !1693)
!1703 = !DILocation(line: 67, column: 17, scope: !1693)
!1704 = !DILocation(line: 66, column: 48, scope: !1690)
!1705 = !DILocation(line: 66, column: 13, scope: !1690)
!1706 = distinct !{!1706, !1691, !1707, !307}
!1707 = !DILocation(line: 68, column: 13, scope: !1685)
!1708 = !DILocation(line: 65, column: 40, scope: !1682)
!1709 = !DILocation(line: 65, column: 9, scope: !1682)
!1710 = distinct !{!1710, !1683, !1711, !307}
!1711 = !DILocation(line: 69, column: 9, scope: !1677)
!1712 = !DILocation(line: 64, column: 36, scope: !1674)
!1713 = !DILocation(line: 64, column: 5, scope: !1674)
!1714 = distinct !{!1714, !1675, !1715, !307}
!1715 = !DILocation(line: 70, column: 5, scope: !1669)
!1716 = !DILocation(line: 71, column: 1, scope: !1659)
!1717 = distinct !DISubprogram(name: "P1_times_Vt", scope: !327, file: !327, line: 82, type: !378, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1718 = !DILocalVariable(name: "p", arg: 1, scope: !1717, file: !327, line: 82, type: !178)
!1719 = !DILocation(line: 0, scope: !1717)
!1720 = !DILocalVariable(name: "P1", arg: 2, scope: !1717, file: !327, line: 82, type: !330)
!1721 = !DILocalVariable(name: "V", arg: 3, scope: !1717, file: !327, line: 82, type: !49)
!1722 = !DILocalVariable(name: "acc", arg: 4, scope: !1717, file: !327, line: 82, type: !5)
!1723 = !DILocation(line: 86, column: 5, scope: !1717)
!1724 = !DILocation(line: 87, column: 1, scope: !1717)
!1725 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !327, file: !327, line: 32, type: !512, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1726 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1725, file: !327, line: 32, type: !243)
!1727 = !DILocation(line: 0, scope: !1725)
!1728 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1725, file: !327, line: 32, type: !330)
!1729 = !DILocalVariable(name: "mat", arg: 3, scope: !1725, file: !327, line: 32, type: !49)
!1730 = !DILocalVariable(name: "acc", arg: 4, scope: !1725, file: !327, line: 32, type: !5)
!1731 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1725, file: !327, line: 33, type: !243)
!1732 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1725, file: !327, line: 33, type: !243)
!1733 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1725, file: !327, line: 33, type: !243)
!1734 = !DILocalVariable(name: "triangular", arg: 8, scope: !1725, file: !327, line: 33, type: !243)
!1735 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1725, file: !327, line: 34, type: !45)
!1736 = !DILocalVariable(name: "r", scope: !1737, file: !327, line: 35, type: !45)
!1737 = distinct !DILexicalBlock(scope: !1725, file: !327, line: 35, column: 5)
!1738 = !DILocation(line: 0, scope: !1737)
!1739 = !DILocation(line: 35, column: 10, scope: !1737)
!1740 = !DILocation(line: 34, column: 9, scope: !1725)
!1741 = !DILocation(line: 35, scope: !1737)
!1742 = !DILocation(line: 35, column: 23, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1737, file: !327, line: 35, column: 5)
!1744 = !DILocation(line: 35, column: 5, scope: !1737)
!1745 = !DILocation(line: 36, column: 33, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !327, line: 36, column: 9)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !327, line: 35, column: 43)
!1748 = !DILocalVariable(name: "c", scope: !1746, file: !327, line: 36, type: !45)
!1749 = !DILocation(line: 0, scope: !1746)
!1750 = !DILocation(line: 36, column: 14, scope: !1746)
!1751 = !DILocation(line: 36, scope: !1746)
!1752 = !DILocation(line: 36, column: 40, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1746, file: !327, line: 36, column: 9)
!1754 = !DILocation(line: 36, column: 9, scope: !1746)
!1755 = !DILocation(line: 37, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !327, line: 37, column: 13)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !327, line: 36, column: 60)
!1758 = !DILocalVariable(name: "k", scope: !1756, file: !327, line: 37, type: !45)
!1759 = !DILocation(line: 0, scope: !1756)
!1760 = !DILocation(line: 37, column: 31, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !327, line: 37, column: 13)
!1762 = !DILocation(line: 37, column: 13, scope: !1756)
!1763 = !DILocation(line: 38, column: 65, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !327, line: 37, column: 51)
!1765 = !DILocation(line: 38, column: 51, scope: !1764)
!1766 = !DILocation(line: 38, column: 94, scope: !1764)
!1767 = !DILocation(line: 38, column: 88, scope: !1764)
!1768 = !DILocation(line: 38, column: 137, scope: !1764)
!1769 = !DILocation(line: 38, column: 148, scope: !1764)
!1770 = !DILocation(line: 38, column: 132, scope: !1764)
!1771 = !DILocation(line: 38, column: 118, scope: !1764)
!1772 = !DILocation(line: 38, column: 17, scope: !1764)
!1773 = !DILocation(line: 37, column: 45, scope: !1761)
!1774 = !DILocation(line: 37, column: 13, scope: !1761)
!1775 = distinct !{!1775, !1762, !1776, !307}
!1776 = !DILocation(line: 39, column: 13, scope: !1756)
!1777 = !DILocation(line: 40, column: 33, scope: !1757)
!1778 = !DILocation(line: 36, column: 56, scope: !1753)
!1779 = !DILocation(line: 36, column: 9, scope: !1753)
!1780 = distinct !{!1780, !1754, !1781, !307}
!1781 = !DILocation(line: 41, column: 9, scope: !1746)
!1782 = !DILocation(line: 35, column: 39, scope: !1743)
!1783 = !DILocation(line: 35, column: 5, scope: !1743)
!1784 = distinct !{!1784, !1744, !1785, !307}
!1785 = !DILocation(line: 42, column: 5, scope: !1737)
!1786 = !DILocation(line: 43, column: 1, scope: !1725)
!1787 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !713, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1788 = !DILocalVariable(name: "p", arg: 1, scope: !1787, file: !25, line: 502, type: !178)
!1789 = !DILocation(line: 0, scope: !1787)
!1790 = !DILocalVariable(name: "sm", arg: 2, scope: !1787, file: !25, line: 502, type: !18)
!1791 = !DILocalVariable(name: "smlen", arg: 3, scope: !1787, file: !25, line: 503, type: !715)
!1792 = !DILocalVariable(name: "m", arg: 4, scope: !1787, file: !25, line: 503, type: !49)
!1793 = !DILocalVariable(name: "mlen", arg: 5, scope: !1787, file: !25, line: 504, type: !15)
!1794 = !DILocalVariable(name: "csk", arg: 6, scope: !1787, file: !25, line: 504, type: !49)
!1795 = !DILocalVariable(name: "ret", scope: !1787, file: !25, line: 505, type: !45)
!1796 = !DILocalVariable(name: "param_sig_bytes", scope: !1787, file: !25, line: 506, type: !243)
!1797 = !DILocation(line: 508, column: 16, scope: !1787)
!1798 = !DILocation(line: 508, column: 5, scope: !1787)
!1799 = !DILocation(line: 509, column: 50, scope: !1787)
!1800 = !DILocalVariable(name: "siglen", scope: !1787, file: !25, line: 507, type: !15)
!1801 = !DILocation(line: 509, column: 11, scope: !1787)
!1802 = !DILocation(line: 510, column: 13, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1787, file: !25, line: 510, column: 9)
!1804 = !DILocation(line: 510, column: 24, scope: !1803)
!1805 = !DILocation(line: 511, column: 23, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !25, line: 510, column: 62)
!1807 = !DILocation(line: 511, column: 30, scope: !1806)
!1808 = !DILocation(line: 511, column: 9, scope: !1806)
!1809 = !DILocation(line: 512, column: 9, scope: !1806)
!1810 = !DILocation(line: 515, column: 14, scope: !1787)
!1811 = !DILocation(line: 515, column: 21, scope: !1787)
!1812 = !DILocation(line: 515, column: 12, scope: !1787)
!1813 = !DILocation(line: 515, column: 5, scope: !1787)
!1814 = !DILabel(scope: !1787, name: "err", file: !25, line: 516)
!1815 = !DILocation(line: 516, column: 1, scope: !1787)
!1816 = !DILocation(line: 517, column: 5, scope: !1787)
!1817 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_open", scope: !25, file: !25, line: 520, type: !713, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1818 = !DILocalVariable(name: "p", arg: 1, scope: !1817, file: !25, line: 520, type: !178)
!1819 = !DILocation(line: 0, scope: !1817)
!1820 = !DILocalVariable(name: "m", arg: 2, scope: !1817, file: !25, line: 520, type: !18)
!1821 = !DILocalVariable(name: "mlen", arg: 3, scope: !1817, file: !25, line: 521, type: !715)
!1822 = !DILocalVariable(name: "sm", arg: 4, scope: !1817, file: !25, line: 521, type: !49)
!1823 = !DILocalVariable(name: "smlen", arg: 5, scope: !1817, file: !25, line: 522, type: !15)
!1824 = !DILocalVariable(name: "pk", arg: 6, scope: !1817, file: !25, line: 522, type: !49)
!1825 = !DILocalVariable(name: "param_sig_bytes", scope: !1817, file: !25, line: 523, type: !243)
!1826 = !DILocation(line: 524, column: 15, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1817, file: !25, line: 524, column: 9)
!1828 = !DILocation(line: 527, column: 36, scope: !1817)
!1829 = !DILocation(line: 527, column: 61, scope: !1817)
!1830 = !DILocation(line: 527, column: 18, scope: !1817)
!1831 = !DILocalVariable(name: "result", scope: !1817, file: !25, line: 527, type: !45)
!1832 = !DILocation(line: 530, column: 16, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1817, file: !25, line: 530, column: 9)
!1834 = !DILocation(line: 531, column: 23, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1833, file: !25, line: 530, column: 28)
!1836 = !DILocation(line: 531, column: 15, scope: !1835)
!1837 = !DILocation(line: 532, column: 23, scope: !1835)
!1838 = !DILocation(line: 532, column: 9, scope: !1835)
!1839 = !DILocation(line: 533, column: 5, scope: !1835)
!1840 = !DILocation(line: 536, column: 1, scope: !1817)
!1841 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1842, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!45, !178, !49, !15, !49, !49}
!1844 = !DILocalVariable(name: "p", arg: 1, scope: !1841, file: !25, line: 617, type: !178)
!1845 = !DILocation(line: 0, scope: !1841)
!1846 = !DILocalVariable(name: "m", arg: 2, scope: !1841, file: !25, line: 617, type: !49)
!1847 = !DILocalVariable(name: "mlen", arg: 3, scope: !1841, file: !25, line: 618, type: !15)
!1848 = !DILocalVariable(name: "sig", arg: 4, scope: !1841, file: !25, line: 618, type: !49)
!1849 = !DILocalVariable(name: "cpk", arg: 5, scope: !1841, file: !25, line: 619, type: !49)
!1850 = !DILocalVariable(name: "tEnc", scope: !1841, file: !25, line: 620, type: !725)
!1851 = !DILocation(line: 620, column: 19, scope: !1841)
!1852 = !DILocalVariable(name: "t", scope: !1841, file: !25, line: 621, type: !730)
!1853 = !DILocation(line: 621, column: 19, scope: !1841)
!1854 = !DILocalVariable(name: "y", scope: !1841, file: !25, line: 622, type: !1855)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1728, elements: !1856)
!1856 = !{!1857}
!1857 = !DISubrange(count: 216)
!1858 = !DILocation(line: 622, column: 19, scope: !1841)
!1859 = !DILocalVariable(name: "s", scope: !1841, file: !25, line: 623, type: !754)
!1860 = !DILocation(line: 623, column: 19, scope: !1841)
!1861 = !DILocalVariable(name: "pk", scope: !1841, file: !25, line: 624, type: !123)
!1862 = !DILocation(line: 624, column: 14, scope: !1841)
!1863 = !DILocalVariable(name: "tmp", scope: !1841, file: !25, line: 625, type: !1864)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 80)
!1867 = !DILocation(line: 625, column: 19, scope: !1841)
!1868 = !DILocalVariable(name: "param_m", scope: !1841, file: !25, line: 627, type: !243)
!1869 = !DILocalVariable(name: "param_n", scope: !1841, file: !25, line: 628, type: !243)
!1870 = !DILocalVariable(name: "param_k", scope: !1841, file: !25, line: 629, type: !243)
!1871 = !DILocalVariable(name: "param_m_bytes", scope: !1841, file: !25, line: 630, type: !243)
!1872 = !DILocalVariable(name: "param_sig_bytes", scope: !1841, file: !25, line: 631, type: !243)
!1873 = !DILocalVariable(name: "param_digest_bytes", scope: !1841, file: !25, line: 632, type: !243)
!1874 = !DILocalVariable(name: "param_salt_bytes", scope: !1841, file: !25, line: 633, type: !243)
!1875 = !DILocation(line: 635, column: 15, scope: !1841)
!1876 = !DILocalVariable(name: "ret", scope: !1841, file: !25, line: 635, type: !45)
!1877 = !DILocation(line: 636, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1841, file: !25, line: 636, column: 9)
!1879 = !DILocalVariable(name: "P1", scope: !1841, file: !25, line: 640, type: !5)
!1880 = !DILocation(line: 641, column: 23, scope: !1841)
!1881 = !DILocalVariable(name: "P2", scope: !1841, file: !25, line: 641, type: !5)
!1882 = !DILocation(line: 642, column: 23, scope: !1841)
!1883 = !DILocalVariable(name: "P3", scope: !1841, file: !25, line: 642, type: !5)
!1884 = !DILocation(line: 657, column: 5, scope: !1841)
!1885 = !DILocation(line: 660, column: 16, scope: !1841)
!1886 = !DILocation(line: 660, column: 60, scope: !1841)
!1887 = !DILocation(line: 660, column: 5, scope: !1841)
!1888 = !DILocation(line: 662, column: 5, scope: !1841)
!1889 = !DILocation(line: 663, column: 5, scope: !1841)
!1890 = !DILocation(line: 666, column: 5, scope: !1841)
!1891 = !DILocation(line: 668, column: 5, scope: !1841)
!1892 = !DILocation(line: 670, column: 9, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1841, file: !25, line: 670, column: 9)
!1894 = !DILocation(line: 670, column: 31, scope: !1893)
!1895 = !DILocation(line: 674, column: 1, scope: !1841)
!1896 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !616, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1897 = !DILocalVariable(name: "p", arg: 1, scope: !1896, file: !25, line: 608, type: !178)
!1898 = !DILocation(line: 0, scope: !1896)
!1899 = !DILocalVariable(name: "cpk", arg: 2, scope: !1896, file: !25, line: 608, type: !49)
!1900 = !DILocalVariable(name: "pk", arg: 3, scope: !1896, file: !25, line: 609, type: !5)
!1901 = !DILocation(line: 610, column: 5, scope: !1896)
!1902 = !DILocation(line: 612, column: 23, scope: !1896)
!1903 = !DILocation(line: 612, column: 72, scope: !1896)
!1904 = !DILocation(line: 612, column: 5, scope: !1896)
!1905 = !DILocation(line: 614, column: 5, scope: !1896)
!1906 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1907, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !178, !49, !330, !330, !330, !18}
!1909 = !DILocalVariable(name: "p", arg: 1, scope: !1906, file: !25, line: 288, type: !178)
!1910 = !DILocation(line: 0, scope: !1906)
!1911 = !DILocalVariable(name: "s", arg: 2, scope: !1906, file: !25, line: 288, type: !49)
!1912 = !DILocalVariable(name: "P1", arg: 3, scope: !1906, file: !25, line: 288, type: !330)
!1913 = !DILocalVariable(name: "P2", arg: 4, scope: !1906, file: !25, line: 288, type: !330)
!1914 = !DILocalVariable(name: "P3", arg: 5, scope: !1906, file: !25, line: 288, type: !330)
!1915 = !DILocalVariable(name: "eval", arg: 6, scope: !1906, file: !25, line: 288, type: !18)
!1916 = !DILocalVariable(name: "SPS", scope: !1906, file: !25, line: 289, type: !1917)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 54208, elements: !1918)
!1918 = !{!1919}
!1919 = !DISubrange(count: 847)
!1920 = !DILocation(line: 289, column: 14, scope: !1906)
!1921 = !DILocation(line: 291, column: 5, scope: !1906)
!1922 = !DILocalVariable(name: "zero", scope: !1906, file: !25, line: 292, type: !730)
!1923 = !DILocation(line: 292, column: 19, scope: !1906)
!1924 = !DILocation(line: 293, column: 5, scope: !1906)
!1925 = !DILocation(line: 294, column: 1, scope: !1906)
!1926 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !327, file: !327, line: 277, type: !1927, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !178, !330, !330, !330, !49, !5}
!1929 = !DILocalVariable(name: "p", arg: 1, scope: !1926, file: !327, line: 277, type: !178)
!1930 = !DILocation(line: 0, scope: !1926)
!1931 = !DILocalVariable(name: "P1", arg: 2, scope: !1926, file: !327, line: 277, type: !330)
!1932 = !DILocalVariable(name: "P2", arg: 3, scope: !1926, file: !327, line: 277, type: !330)
!1933 = !DILocalVariable(name: "P3", arg: 4, scope: !1926, file: !327, line: 277, type: !330)
!1934 = !DILocalVariable(name: "s", arg: 5, scope: !1926, file: !327, line: 277, type: !49)
!1935 = !DILocalVariable(name: "SPS", arg: 6, scope: !1926, file: !327, line: 278, type: !5)
!1936 = !DILocalVariable(name: "PS", scope: !1926, file: !327, line: 286, type: !1937)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 581504, elements: !1938)
!1938 = !{!1939}
!1939 = !DISubrange(count: 9086)
!1940 = !DILocation(line: 286, column: 14, scope: !1926)
!1941 = !DILocation(line: 287, column: 5, scope: !1926)
!1942 = !DILocation(line: 290, column: 5, scope: !1926)
!1943 = !DILocation(line: 292, column: 1, scope: !1926)
!1944 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !327, file: !327, line: 151, type: !1945, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !330, !330, !330, !49, !243, !243, !243, !243, !5}
!1947 = !DILocalVariable(name: "P1", arg: 1, scope: !1944, file: !327, line: 151, type: !330)
!1948 = !DILocation(line: 0, scope: !1944)
!1949 = !DILocalVariable(name: "P2", arg: 2, scope: !1944, file: !327, line: 151, type: !330)
!1950 = !DILocalVariable(name: "P3", arg: 3, scope: !1944, file: !327, line: 151, type: !330)
!1951 = !DILocalVariable(name: "S", arg: 4, scope: !1944, file: !327, line: 151, type: !49)
!1952 = !DILocalVariable(name: "m", arg: 5, scope: !1944, file: !327, line: 152, type: !243)
!1953 = !DILocalVariable(name: "v", arg: 6, scope: !1944, file: !327, line: 152, type: !243)
!1954 = !DILocalVariable(name: "o", arg: 7, scope: !1944, file: !327, line: 152, type: !243)
!1955 = !DILocalVariable(name: "k", arg: 8, scope: !1944, file: !327, line: 152, type: !243)
!1956 = !DILocalVariable(name: "PS", arg: 9, scope: !1944, file: !327, line: 152, type: !5)
!1957 = !DILocation(line: 154, column: 21, scope: !1944)
!1958 = !DILocalVariable(name: "n", scope: !1944, file: !327, line: 154, type: !243)
!1959 = !DILocation(line: 155, column: 32, scope: !1944)
!1960 = !DILocation(line: 155, column: 37, scope: !1944)
!1961 = !DILocalVariable(name: "m_vec_limbs", scope: !1944, file: !327, line: 155, type: !243)
!1962 = !DILocalVariable(name: "accumulator", scope: !1944, file: !327, line: 157, type: !1963)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 9304064, elements: !1964)
!1964 = !{!1965}
!1965 = !DISubrange(count: 145376)
!1966 = !DILocation(line: 157, column: 14, scope: !1944)
!1967 = !DILocalVariable(name: "P1_used", scope: !1944, file: !327, line: 158, type: !45)
!1968 = !DILocalVariable(name: "row", scope: !1969, file: !327, line: 159, type: !45)
!1969 = distinct !DILexicalBlock(scope: !1944, file: !327, line: 159, column: 5)
!1970 = !DILocation(line: 0, scope: !1969)
!1971 = !DILocation(line: 159, column: 10, scope: !1969)
!1972 = !DILocation(line: 158, column: 9, scope: !1944)
!1973 = !DILocation(line: 159, scope: !1969)
!1974 = !DILocation(line: 159, column: 27, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !327, line: 159, column: 5)
!1976 = !DILocation(line: 159, column: 5, scope: !1969)
!1977 = !DILocation(line: 160, column: 9, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !327, line: 160, column: 9)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !327, line: 159, column: 39)
!1980 = !DILocation(line: 175, column: 5, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1944, file: !327, line: 175, column: 5)
!1982 = !DILocation(line: 160, scope: !1978)
!1983 = !DILocalVariable(name: "j", scope: !1978, file: !327, line: 160, type: !45)
!1984 = !DILocation(line: 0, scope: !1978)
!1985 = !DILocation(line: 160, column: 29, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1978, file: !327, line: 160, column: 9)
!1987 = !DILocation(line: 161, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !327, line: 161, column: 13)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !327, line: 160, column: 39)
!1990 = !DILocalVariable(name: "col", scope: !1988, file: !327, line: 161, type: !45)
!1991 = !DILocation(line: 0, scope: !1988)
!1992 = !DILocation(line: 161, column: 35, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !327, line: 161, column: 13)
!1994 = !DILocation(line: 161, column: 13, scope: !1988)
!1995 = !DILocation(line: 162, column: 54, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !327, line: 161, column: 47)
!1997 = !DILocation(line: 162, column: 43, scope: !1996)
!1998 = !DILocation(line: 162, column: 91, scope: !1996)
!1999 = !DILocation(line: 162, column: 95, scope: !1996)
!2000 = !DILocation(line: 162, column: 102, scope: !1996)
!2001 = !DILocation(line: 162, column: 115, scope: !1996)
!2002 = !DILocation(line: 162, column: 109, scope: !1996)
!2003 = !DILocation(line: 162, column: 107, scope: !1996)
!2004 = !DILocation(line: 162, column: 125, scope: !1996)
!2005 = !DILocation(line: 162, column: 82, scope: !1996)
!2006 = !DILocation(line: 162, column: 17, scope: !1996)
!2007 = !DILocation(line: 161, column: 43, scope: !1993)
!2008 = !DILocation(line: 161, column: 13, scope: !1993)
!2009 = distinct !{!2009, !1994, !2010, !307}
!2010 = !DILocation(line: 163, column: 13, scope: !1988)
!2011 = !DILocation(line: 164, column: 21, scope: !1989)
!2012 = !DILocation(line: 160, column: 35, scope: !1986)
!2013 = !DILocation(line: 160, column: 9, scope: !1986)
!2014 = distinct !{!2014, !1977, !2015, !307}
!2015 = !DILocation(line: 165, column: 9, scope: !1978)
!2016 = !DILocation(line: 167, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1979, file: !327, line: 167, column: 9)
!2018 = !DILocalVariable(name: "j", scope: !2017, file: !327, line: 167, type: !45)
!2019 = !DILocation(line: 0, scope: !2017)
!2020 = !DILocation(line: 167, column: 27, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !327, line: 167, column: 9)
!2022 = !DILocation(line: 167, column: 9, scope: !2017)
!2023 = !DILocation(line: 168, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !327, line: 168, column: 13)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !327, line: 167, column: 37)
!2026 = !DILocalVariable(name: "col", scope: !2024, file: !327, line: 168, type: !45)
!2027 = !DILocation(line: 0, scope: !2024)
!2028 = !DILocation(line: 168, column: 35, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !327, line: 168, column: 13)
!2030 = !DILocation(line: 168, column: 13, scope: !2024)
!2031 = !DILocation(line: 169, column: 50, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !327, line: 168, column: 47)
!2033 = !DILocation(line: 169, column: 54, scope: !2032)
!2034 = !DILocation(line: 169, column: 58, scope: !2032)
!2035 = !DILocation(line: 169, column: 43, scope: !2032)
!2036 = !DILocation(line: 169, column: 93, scope: !2032)
!2037 = !DILocation(line: 169, column: 97, scope: !2032)
!2038 = !DILocation(line: 169, column: 104, scope: !2032)
!2039 = !DILocation(line: 169, column: 118, scope: !2032)
!2040 = !DILocation(line: 169, column: 111, scope: !2032)
!2041 = !DILocation(line: 169, column: 109, scope: !2032)
!2042 = !DILocation(line: 169, column: 133, scope: !2032)
!2043 = !DILocation(line: 169, column: 84, scope: !2032)
!2044 = !DILocation(line: 169, column: 17, scope: !2032)
!2045 = !DILocation(line: 168, column: 43, scope: !2029)
!2046 = !DILocation(line: 168, column: 13, scope: !2029)
!2047 = distinct !{!2047, !2030, !2048, !307}
!2048 = !DILocation(line: 170, column: 13, scope: !2024)
!2049 = !DILocation(line: 167, column: 33, scope: !2021)
!2050 = !DILocation(line: 167, column: 9, scope: !2021)
!2051 = distinct !{!2051, !2022, !2052, !307}
!2052 = !DILocation(line: 171, column: 9, scope: !2017)
!2053 = !DILocation(line: 159, column: 35, scope: !1975)
!2054 = !DILocation(line: 159, column: 5, scope: !1975)
!2055 = distinct !{!2055, !1976, !2056, !307}
!2056 = !DILocation(line: 172, column: 5, scope: !1969)
!2057 = !DILocation(line: 174, column: 9, scope: !1944)
!2058 = !DILocation(line: 175, scope: !1981)
!2059 = !DILocalVariable(name: "row", scope: !1981, file: !327, line: 175, type: !45)
!2060 = !DILocation(line: 0, scope: !1981)
!2061 = !DILocalVariable(name: "P3_used", scope: !1944, file: !327, line: 174, type: !45)
!2062 = !DILocation(line: 175, column: 27, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1981, file: !327, line: 175, column: 5)
!2064 = !DILocation(line: 186, column: 5, scope: !1944)
!2065 = !DILocation(line: 176, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !327, line: 176, column: 9)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !327, line: 175, column: 39)
!2068 = !DILocalVariable(name: "j", scope: !2066, file: !327, line: 176, type: !45)
!2069 = !DILocation(line: 0, scope: !2066)
!2070 = !DILocation(line: 176, column: 29, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !327, line: 176, column: 9)
!2072 = !DILocation(line: 176, column: 9, scope: !2066)
!2073 = !DILocation(line: 177, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !327, line: 177, column: 13)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !327, line: 176, column: 39)
!2076 = !DILocalVariable(name: "col", scope: !2074, file: !327, line: 177, type: !45)
!2077 = !DILocation(line: 0, scope: !2074)
!2078 = !DILocation(line: 177, column: 35, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !327, line: 177, column: 13)
!2080 = !DILocation(line: 177, column: 13, scope: !2074)
!2081 = !DILocation(line: 178, column: 53, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !327, line: 177, column: 47)
!2083 = !DILocation(line: 178, column: 43, scope: !2082)
!2084 = !DILocation(line: 178, column: 89, scope: !2082)
!2085 = !DILocation(line: 178, column: 93, scope: !2082)
!2086 = !DILocation(line: 178, column: 100, scope: !2082)
!2087 = !DILocation(line: 178, column: 113, scope: !2082)
!2088 = !DILocation(line: 178, column: 107, scope: !2082)
!2089 = !DILocation(line: 178, column: 105, scope: !2082)
!2090 = !DILocation(line: 178, column: 123, scope: !2082)
!2091 = !DILocation(line: 178, column: 80, scope: !2082)
!2092 = !DILocation(line: 178, column: 17, scope: !2082)
!2093 = !DILocation(line: 177, column: 43, scope: !2079)
!2094 = !DILocation(line: 177, column: 13, scope: !2079)
!2095 = distinct !{!2095, !2080, !2096, !307}
!2096 = !DILocation(line: 179, column: 13, scope: !2074)
!2097 = !DILocation(line: 180, column: 21, scope: !2075)
!2098 = !DILocation(line: 176, column: 35, scope: !2071)
!2099 = !DILocation(line: 176, column: 9, scope: !2071)
!2100 = distinct !{!2100, !2072, !2101, !307}
!2101 = !DILocation(line: 181, column: 9, scope: !2066)
!2102 = !DILocation(line: 175, column: 35, scope: !2063)
!2103 = !DILocation(line: 175, column: 5, scope: !2063)
!2104 = distinct !{!2104, !1980, !2105, !307}
!2105 = !DILocation(line: 182, column: 5, scope: !1981)
!2106 = !DILocalVariable(name: "i", scope: !1944, file: !327, line: 185, type: !45)
!2107 = !DILocation(line: 186, column: 14, scope: !1944)
!2108 = !DILocation(line: 187, column: 58, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1944, file: !327, line: 186, column: 23)
!2110 = !DILocation(line: 187, column: 63, scope: !2109)
!2111 = !DILocation(line: 187, column: 54, scope: !2109)
!2112 = !DILocation(line: 187, column: 85, scope: !2109)
!2113 = !DILocation(line: 187, column: 81, scope: !2109)
!2114 = !DILocation(line: 187, column: 9, scope: !2109)
!2115 = !DILocation(line: 188, column: 10, scope: !2109)
!2116 = distinct !{!2116, !2064, !2117, !307}
!2117 = !DILocation(line: 189, column: 5, scope: !1944)
!2118 = !DILocation(line: 191, column: 1, scope: !1944)
!2119 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !327, file: !327, line: 195, type: !2120, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !330, !49, !45, !45, !45, !5}
!2122 = !DILocalVariable(name: "PS", arg: 1, scope: !2119, file: !327, line: 195, type: !330)
!2123 = !DILocation(line: 0, scope: !2119)
!2124 = !DILocalVariable(name: "S", arg: 2, scope: !2119, file: !327, line: 195, type: !49)
!2125 = !DILocalVariable(name: "m", arg: 3, scope: !2119, file: !327, line: 195, type: !45)
!2126 = !DILocalVariable(name: "k", arg: 4, scope: !2119, file: !327, line: 195, type: !45)
!2127 = !DILocalVariable(name: "n", arg: 5, scope: !2119, file: !327, line: 195, type: !45)
!2128 = !DILocalVariable(name: "SPS", arg: 6, scope: !2119, file: !327, line: 195, type: !5)
!2129 = !DILocalVariable(name: "accumulator", scope: !2119, file: !327, line: 196, type: !2130)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 867328, elements: !2131)
!2131 = !{!2132}
!2132 = !DISubrange(count: 13552)
!2133 = !DILocation(line: 196, column: 14, scope: !2119)
!2134 = !DILocation(line: 197, column: 32, scope: !2119)
!2135 = !DILocation(line: 197, column: 37, scope: !2119)
!2136 = !DILocalVariable(name: "m_vec_limbs", scope: !2119, file: !327, line: 197, type: !243)
!2137 = !DILocalVariable(name: "row", scope: !2138, file: !327, line: 198, type: !45)
!2138 = distinct !DILexicalBlock(scope: !2119, file: !327, line: 198, column: 5)
!2139 = !DILocation(line: 0, scope: !2138)
!2140 = !DILocation(line: 198, column: 10, scope: !2138)
!2141 = !DILocation(line: 198, scope: !2138)
!2142 = !DILocation(line: 198, column: 27, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !327, line: 198, column: 5)
!2144 = !DILocation(line: 198, column: 5, scope: !2138)
!2145 = !DILocation(line: 208, column: 5, scope: !2119)
!2146 = !DILocation(line: 199, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !327, line: 199, column: 9)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !327, line: 198, column: 39)
!2149 = !DILocalVariable(name: "j", scope: !2147, file: !327, line: 199, type: !45)
!2150 = !DILocation(line: 0, scope: !2147)
!2151 = !DILocation(line: 199, column: 27, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2147, file: !327, line: 199, column: 9)
!2153 = !DILocation(line: 199, column: 9, scope: !2147)
!2154 = !DILocation(line: 200, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !327, line: 200, column: 13)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !327, line: 199, column: 37)
!2157 = !DILocalVariable(name: "col", scope: !2155, file: !327, line: 200, type: !45)
!2158 = !DILocation(line: 0, scope: !2155)
!2159 = !DILocation(line: 200, column: 35, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !327, line: 200, column: 13)
!2161 = !DILocation(line: 200, column: 13, scope: !2155)
!2162 = !DILocation(line: 201, column: 52, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !327, line: 200, column: 50)
!2164 = !DILocation(line: 201, column: 56, scope: !2163)
!2165 = !DILocation(line: 201, column: 63, scope: !2163)
!2166 = !DILocation(line: 201, column: 47, scope: !2163)
!2167 = !DILocation(line: 201, column: 99, scope: !2163)
!2168 = !DILocation(line: 201, column: 103, scope: !2163)
!2169 = !DILocation(line: 201, column: 110, scope: !2163)
!2170 = !DILocation(line: 201, column: 123, scope: !2163)
!2171 = !DILocation(line: 201, column: 117, scope: !2163)
!2172 = !DILocation(line: 201, column: 115, scope: !2163)
!2173 = !DILocation(line: 201, column: 133, scope: !2163)
!2174 = !DILocation(line: 201, column: 90, scope: !2163)
!2175 = !DILocation(line: 201, column: 21, scope: !2163)
!2176 = !DILocation(line: 200, column: 44, scope: !2160)
!2177 = !DILocation(line: 200, column: 13, scope: !2160)
!2178 = distinct !{!2178, !2161, !2179, !307}
!2179 = !DILocation(line: 202, column: 13, scope: !2155)
!2180 = !DILocation(line: 199, column: 33, scope: !2152)
!2181 = !DILocation(line: 199, column: 9, scope: !2152)
!2182 = distinct !{!2182, !2153, !2183, !307}
!2183 = !DILocation(line: 203, column: 9, scope: !2147)
!2184 = !DILocation(line: 198, column: 35, scope: !2143)
!2185 = !DILocation(line: 198, column: 5, scope: !2143)
!2186 = distinct !{!2186, !2144, !2187, !307}
!2187 = !DILocation(line: 204, column: 5, scope: !2138)
!2188 = !DILocalVariable(name: "i", scope: !2119, file: !327, line: 207, type: !45)
!2189 = !DILocation(line: 208, column: 14, scope: !2119)
!2190 = !DILocation(line: 209, column: 58, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2119, file: !327, line: 208, column: 21)
!2192 = !DILocation(line: 209, column: 63, scope: !2191)
!2193 = !DILocation(line: 209, column: 54, scope: !2191)
!2194 = !DILocation(line: 209, column: 86, scope: !2191)
!2195 = !DILocation(line: 209, column: 82, scope: !2191)
!2196 = !DILocation(line: 209, column: 9, scope: !2191)
!2197 = !DILocation(line: 210, column: 10, scope: !2191)
!2198 = distinct !{!2198, !2145, !2199, !307}
!2199 = !DILocation(line: 211, column: 5, scope: !2119)
!2200 = !DILocation(line: 212, column: 1, scope: !2119)
!2201 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2202, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !45, !330, !5}
!2204 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2201, file: !448, line: 22, type: !45)
!2205 = !DILocation(line: 0, scope: !2201)
!2206 = !DILocalVariable(name: "in", arg: 2, scope: !2201, file: !448, line: 22, type: !330)
!2207 = !DILocalVariable(name: "acc", arg: 3, scope: !2201, file: !448, line: 22, type: !5)
!2208 = !DILocalVariable(name: "i", scope: !2209, file: !448, line: 24, type: !15)
!2209 = distinct !DILexicalBlock(scope: !2201, file: !448, line: 24, column: 5)
!2210 = !DILocation(line: 0, scope: !2209)
!2211 = !DILocation(line: 26, column: 19, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !448, line: 25, column: 5)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !448, line: 24, column: 5)
!2214 = !DILocation(line: 26, column: 16, scope: !2212)
!2215 = !DILocation(line: 26, column: 9, scope: !2212)
!2216 = !DILocation(line: 28, column: 1, scope: !2201)
!2217 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !448, file: !448, line: 66, type: !2218, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !45, !5, !5}
!2220 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2217, file: !448, line: 66, type: !45)
!2221 = !DILocation(line: 0, scope: !2217)
!2222 = !DILocalVariable(name: "bins", arg: 2, scope: !2217, file: !448, line: 66, type: !5)
!2223 = !DILocalVariable(name: "out", arg: 3, scope: !2217, file: !448, line: 66, type: !5)
!2224 = !DILocation(line: 67, column: 44, scope: !2217)
!2225 = !DILocation(line: 67, column: 73, scope: !2217)
!2226 = !DILocation(line: 67, column: 5, scope: !2217)
!2227 = !DILocation(line: 68, column: 40, scope: !2217)
!2228 = !DILocation(line: 68, column: 69, scope: !2217)
!2229 = !DILocation(line: 68, column: 5, scope: !2217)
!2230 = !DILocation(line: 69, column: 44, scope: !2217)
!2231 = !DILocation(line: 69, column: 74, scope: !2217)
!2232 = !DILocation(line: 69, column: 5, scope: !2217)
!2233 = !DILocation(line: 70, column: 40, scope: !2217)
!2234 = !DILocation(line: 70, column: 69, scope: !2217)
!2235 = !DILocation(line: 70, column: 5, scope: !2217)
!2236 = !DILocation(line: 71, column: 44, scope: !2217)
!2237 = !DILocation(line: 71, column: 73, scope: !2217)
!2238 = !DILocation(line: 71, column: 5, scope: !2217)
!2239 = !DILocation(line: 72, column: 40, scope: !2217)
!2240 = !DILocation(line: 72, column: 69, scope: !2217)
!2241 = !DILocation(line: 72, column: 5, scope: !2217)
!2242 = !DILocation(line: 73, column: 44, scope: !2217)
!2243 = !DILocation(line: 73, column: 74, scope: !2217)
!2244 = !DILocation(line: 73, column: 5, scope: !2217)
!2245 = !DILocation(line: 74, column: 40, scope: !2217)
!2246 = !DILocation(line: 74, column: 69, scope: !2217)
!2247 = !DILocation(line: 74, column: 5, scope: !2217)
!2248 = !DILocation(line: 75, column: 44, scope: !2217)
!2249 = !DILocation(line: 75, column: 74, scope: !2217)
!2250 = !DILocation(line: 75, column: 5, scope: !2217)
!2251 = !DILocation(line: 76, column: 40, scope: !2217)
!2252 = !DILocation(line: 76, column: 69, scope: !2217)
!2253 = !DILocation(line: 76, column: 5, scope: !2217)
!2254 = !DILocation(line: 77, column: 44, scope: !2217)
!2255 = !DILocation(line: 77, column: 74, scope: !2217)
!2256 = !DILocation(line: 77, column: 5, scope: !2217)
!2257 = !DILocation(line: 78, column: 40, scope: !2217)
!2258 = !DILocation(line: 78, column: 69, scope: !2217)
!2259 = !DILocation(line: 78, column: 5, scope: !2217)
!2260 = !DILocation(line: 79, column: 44, scope: !2217)
!2261 = !DILocation(line: 79, column: 74, scope: !2217)
!2262 = !DILocation(line: 79, column: 5, scope: !2217)
!2263 = !DILocation(line: 80, column: 40, scope: !2217)
!2264 = !DILocation(line: 80, column: 69, scope: !2217)
!2265 = !DILocation(line: 80, column: 5, scope: !2217)
!2266 = !DILocation(line: 81, column: 35, scope: !2217)
!2267 = !DILocation(line: 81, column: 5, scope: !2217)
!2268 = !DILocation(line: 82, column: 1, scope: !2217)
!2269 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !448, file: !448, line: 56, type: !2202, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2270 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2269, file: !448, line: 56, type: !45)
!2271 = !DILocation(line: 0, scope: !2269)
!2272 = !DILocalVariable(name: "in", arg: 2, scope: !2269, file: !448, line: 56, type: !330)
!2273 = !DILocalVariable(name: "acc", arg: 3, scope: !2269, file: !448, line: 56, type: !5)
!2274 = !DILocalVariable(name: "mask_lsb", scope: !2269, file: !448, line: 58, type: !6)
!2275 = !DILocalVariable(name: "i", scope: !2276, file: !448, line: 59, type: !45)
!2276 = distinct !DILexicalBlock(scope: !2269, file: !448, line: 59, column: 5)
!2277 = !DILocation(line: 0, scope: !2276)
!2278 = !DILocation(line: 60, column: 22, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !448, line: 59, column: 43)
!2280 = distinct !DILexicalBlock(scope: !2276, file: !448, line: 59, column: 5)
!2281 = !DILocation(line: 60, column: 28, scope: !2279)
!2282 = !DILocalVariable(name: "t", scope: !2279, file: !448, line: 60, type: !6)
!2283 = !DILocation(line: 0, scope: !2279)
!2284 = !DILocation(line: 61, column: 32, scope: !2279)
!2285 = !DILocation(line: 61, column: 43, scope: !2279)
!2286 = !DILocation(line: 61, column: 38, scope: !2279)
!2287 = !DILocation(line: 61, column: 16, scope: !2279)
!2288 = !DILocation(line: 61, column: 9, scope: !2279)
!2289 = !DILocation(line: 63, column: 1, scope: !2269)
!2290 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !448, file: !448, line: 46, type: !2202, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2291 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2290, file: !448, line: 46, type: !45)
!2292 = !DILocation(line: 0, scope: !2290)
!2293 = !DILocalVariable(name: "in", arg: 2, scope: !2290, file: !448, line: 46, type: !330)
!2294 = !DILocalVariable(name: "acc", arg: 3, scope: !2290, file: !448, line: 46, type: !5)
!2295 = !DILocalVariable(name: "mask_msb", scope: !2290, file: !448, line: 48, type: !6)
!2296 = !DILocalVariable(name: "i", scope: !2297, file: !448, line: 49, type: !45)
!2297 = distinct !DILexicalBlock(scope: !2290, file: !448, line: 49, column: 5)
!2298 = !DILocation(line: 0, scope: !2297)
!2299 = !DILocation(line: 50, column: 22, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !448, line: 49, column: 43)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !448, line: 49, column: 5)
!2302 = !DILocalVariable(name: "t", scope: !2300, file: !448, line: 50, type: !6)
!2303 = !DILocation(line: 0, scope: !2300)
!2304 = !DILocation(line: 51, column: 32, scope: !2300)
!2305 = !DILocation(line: 51, column: 44, scope: !2300)
!2306 = !DILocation(line: 51, column: 50, scope: !2300)
!2307 = !DILocation(line: 51, column: 38, scope: !2300)
!2308 = !DILocation(line: 51, column: 16, scope: !2300)
!2309 = !DILocation(line: 51, column: 9, scope: !2300)
!2310 = !DILocation(line: 53, column: 1, scope: !2290)
!2311 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2202, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2312 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2311, file: !448, line: 13, type: !45)
!2313 = !DILocation(line: 0, scope: !2311)
!2314 = !DILocalVariable(name: "in", arg: 2, scope: !2311, file: !448, line: 13, type: !330)
!2315 = !DILocalVariable(name: "out", arg: 3, scope: !2311, file: !448, line: 13, type: !5)
!2316 = !DILocalVariable(name: "i", scope: !2317, file: !448, line: 15, type: !15)
!2317 = distinct !DILexicalBlock(scope: !2311, file: !448, line: 15, column: 5)
!2318 = !DILocation(line: 0, scope: !2317)
!2319 = !DILocation(line: 17, column: 18, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !448, line: 16, column: 5)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !448, line: 15, column: 5)
!2322 = !DILocation(line: 17, column: 16, scope: !2320)
!2323 = !DILocation(line: 17, column: 9, scope: !2320)
!2324 = !DILocation(line: 19, column: 1, scope: !2311)
!2325 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_m_upper", scope: !58, file: !58, line: 14, type: !2326, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !2328, !330, !5, !45}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2331)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2331, file: !36, line: 266, baseType: !45, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2331, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2331, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2331, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2331, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2331, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2331, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2331, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2331, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2331, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2331, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2331, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2331, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2331, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2331, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2331, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2331, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2331, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2331, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2331, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2331, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2331, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2331, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2356 = !DILocalVariable(name: "p", arg: 1, scope: !2325, file: !58, line: 14, type: !2328)
!2357 = !DILocation(line: 0, scope: !2325)
!2358 = !DILocalVariable(name: "in", arg: 2, scope: !2325, file: !58, line: 14, type: !330)
!2359 = !DILocalVariable(name: "out", arg: 3, scope: !2325, file: !58, line: 14, type: !5)
!2360 = !DILocalVariable(name: "size", arg: 4, scope: !2325, file: !58, line: 14, type: !45)
!2361 = !DILocalVariable(name: "m_vec_limbs", scope: !2325, file: !58, line: 19, type: !243)
!2362 = !DILocalVariable(name: "m_vecs_stored", scope: !2325, file: !58, line: 20, type: !45)
!2363 = !DILocalVariable(name: "r", scope: !2364, file: !58, line: 21, type: !45)
!2364 = distinct !DILexicalBlock(scope: !2325, file: !58, line: 21, column: 5)
!2365 = !DILocation(line: 0, scope: !2364)
!2366 = !DILocation(line: 21, column: 10, scope: !2364)
!2367 = !DILocation(line: 20, column: 9, scope: !2325)
!2368 = !DILocation(line: 21, scope: !2364)
!2369 = !DILocation(line: 21, column: 23, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2364, file: !58, line: 21, column: 5)
!2371 = !DILocation(line: 21, column: 5, scope: !2364)
!2372 = !DILocation(line: 22, column: 9, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !58, line: 22, column: 9)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !58, line: 21, column: 36)
!2375 = !DILocation(line: 22, scope: !2373)
!2376 = !DILocalVariable(name: "c", scope: !2373, file: !58, line: 22, type: !45)
!2377 = !DILocation(line: 0, scope: !2373)
!2378 = !DILocation(line: 22, column: 27, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !58, line: 22, column: 9)
!2380 = !DILocation(line: 23, column: 59, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2379, file: !58, line: 22, column: 40)
!2382 = !DILocation(line: 23, column: 66, scope: !2381)
!2383 = !DILocation(line: 23, column: 40, scope: !2381)
!2384 = !DILocation(line: 23, column: 76, scope: !2381)
!2385 = !DILocation(line: 23, column: 13, scope: !2381)
!2386 = !DILocation(line: 24, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2381, file: !58, line: 24, column: 17)
!2388 = !DILocation(line: 25, column: 62, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2387, file: !58, line: 24, column: 25)
!2390 = !DILocation(line: 25, column: 69, scope: !2389)
!2391 = !DILocation(line: 25, column: 43, scope: !2389)
!2392 = !DILocation(line: 25, column: 79, scope: !2389)
!2393 = !DILocation(line: 25, column: 17, scope: !2389)
!2394 = !DILocation(line: 26, column: 13, scope: !2389)
!2395 = !DILocation(line: 27, column: 27, scope: !2381)
!2396 = !DILocation(line: 22, column: 36, scope: !2379)
!2397 = !DILocation(line: 22, column: 9, scope: !2379)
!2398 = distinct !{!2398, !2372, !2399, !307}
!2399 = !DILocation(line: 28, column: 9, scope: !2373)
!2400 = !DILocation(line: 21, column: 32, scope: !2370)
!2401 = !DILocation(line: 21, column: 5, scope: !2370)
!2402 = distinct !{!2402, !2371, !2403, !307}
!2403 = !DILocation(line: 29, column: 5, scope: !2364)
!2404 = !DILocation(line: 30, column: 1, scope: !2325)
!2405 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2202, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2406 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2405, file: !448, line: 13, type: !45)
!2407 = !DILocation(line: 0, scope: !2405)
!2408 = !DILocalVariable(name: "in", arg: 2, scope: !2405, file: !448, line: 13, type: !330)
!2409 = !DILocalVariable(name: "out", arg: 3, scope: !2405, file: !448, line: 13, type: !5)
!2410 = !DILocalVariable(name: "i", scope: !2411, file: !448, line: 15, type: !15)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !448, line: 15, column: 5)
!2412 = !DILocation(line: 0, scope: !2411)
!2413 = !DILocation(line: 17, column: 18, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !448, line: 16, column: 5)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !448, line: 15, column: 5)
!2416 = !DILocation(line: 17, column: 16, scope: !2414)
!2417 = !DILocation(line: 17, column: 9, scope: !2414)
!2418 = !DILocation(line: 19, column: 1, scope: !2405)
!2419 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2202, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2420 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2419, file: !448, line: 22, type: !45)
!2421 = !DILocation(line: 0, scope: !2419)
!2422 = !DILocalVariable(name: "in", arg: 2, scope: !2419, file: !448, line: 22, type: !330)
!2423 = !DILocalVariable(name: "acc", arg: 3, scope: !2419, file: !448, line: 22, type: !5)
!2424 = !DILocalVariable(name: "i", scope: !2425, file: !448, line: 24, type: !15)
!2425 = distinct !DILexicalBlock(scope: !2419, file: !448, line: 24, column: 5)
!2426 = !DILocation(line: 0, scope: !2425)
!2427 = !DILocation(line: 26, column: 19, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !448, line: 25, column: 5)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !448, line: 24, column: 5)
!2430 = !DILocation(line: 26, column: 16, scope: !2428)
!2431 = !DILocation(line: 26, column: 9, scope: !2428)
!2432 = !DILocation(line: 28, column: 1, scope: !2419)
!2433 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2434, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!45, !2328, !18, !49, !49, !18, !45, !45, !45, !45}
!2436 = !DILocalVariable(name: "p", arg: 1, scope: !2433, file: !58, line: 40, type: !2328)
!2437 = !DILocation(line: 0, scope: !2433)
!2438 = !DILocalVariable(name: "A", arg: 2, scope: !2433, file: !58, line: 40, type: !18)
!2439 = !DILocalVariable(name: "y", arg: 3, scope: !2433, file: !58, line: 41, type: !49)
!2440 = !DILocalVariable(name: "r", arg: 4, scope: !2433, file: !58, line: 41, type: !49)
!2441 = !DILocalVariable(name: "x", arg: 5, scope: !2433, file: !58, line: 42, type: !18)
!2442 = !DILocalVariable(name: "k", arg: 6, scope: !2433, file: !58, line: 42, type: !45)
!2443 = !DILocalVariable(name: "o", arg: 7, scope: !2433, file: !58, line: 42, type: !45)
!2444 = !DILocalVariable(name: "m", arg: 8, scope: !2433, file: !58, line: 42, type: !45)
!2445 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2433, file: !58, line: 42, type: !45)
!2446 = !DILocalVariable(name: "i", scope: !2447, file: !58, line: 51, type: !45)
!2447 = distinct !DILexicalBlock(scope: !2433, file: !58, line: 51, column: 5)
!2448 = !DILocation(line: 0, scope: !2447)
!2449 = !DILocation(line: 51, column: 10, scope: !2447)
!2450 = !DILocation(line: 51, scope: !2447)
!2451 = !DILocation(line: 51, column: 23, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !58, line: 51, column: 5)
!2453 = !DILocation(line: 51, column: 5, scope: !2447)
!2454 = !DILocation(line: 57, column: 5, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2433, file: !58, line: 57, column: 5)
!2456 = !DILocation(line: 52, column: 16, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !58, line: 51, column: 37)
!2458 = !DILocation(line: 52, column: 9, scope: !2457)
!2459 = !DILocation(line: 52, column: 14, scope: !2457)
!2460 = !DILocation(line: 51, column: 33, scope: !2452)
!2461 = !DILocation(line: 51, column: 5, scope: !2452)
!2462 = distinct !{!2462, !2453, !2463, !307}
!2463 = !DILocation(line: 53, column: 5, scope: !2447)
!2464 = !DILocation(line: 57, scope: !2455)
!2465 = !DILocalVariable(name: "i", scope: !2455, file: !58, line: 57, type: !45)
!2466 = !DILocation(line: 0, scope: !2455)
!2467 = !DILocation(line: 57, column: 23, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2455, file: !58, line: 57, column: 5)
!2469 = !DILocation(line: 58, column: 13, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !58, line: 57, column: 33)
!2471 = !DILocation(line: 58, column: 26, scope: !2470)
!2472 = !DILocation(line: 58, column: 30, scope: !2470)
!2473 = !DILocation(line: 58, column: 21, scope: !2470)
!2474 = !DILocation(line: 58, column: 9, scope: !2470)
!2475 = !DILocation(line: 58, column: 36, scope: !2470)
!2476 = !DILocation(line: 57, column: 29, scope: !2468)
!2477 = !DILocation(line: 57, column: 5, scope: !2468)
!2478 = distinct !{!2478, !2454, !2479, !307}
!2479 = !DILocation(line: 59, column: 5, scope: !2455)
!2480 = !DILocation(line: 60, column: 25, scope: !2433)
!2481 = !DILocation(line: 60, column: 29, scope: !2433)
!2482 = !DILocation(line: 60, column: 5, scope: !2433)
!2483 = !DILocalVariable(name: "i", scope: !2484, file: !58, line: 63, type: !45)
!2484 = distinct !DILexicalBlock(scope: !2433, file: !58, line: 63, column: 5)
!2485 = !DILocation(line: 0, scope: !2484)
!2486 = !DILocation(line: 63, column: 10, scope: !2484)
!2487 = !DILocation(line: 63, scope: !2484)
!2488 = !DILocation(line: 63, column: 23, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !58, line: 63, column: 5)
!2490 = !DILocation(line: 63, column: 5, scope: !2484)
!2491 = !DILocation(line: 64, column: 44, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !58, line: 63, column: 33)
!2493 = !DILocation(line: 64, column: 50, scope: !2492)
!2494 = !DILocation(line: 64, column: 38, scope: !2492)
!2495 = !DILocation(line: 64, column: 13, scope: !2492)
!2496 = !DILocation(line: 64, column: 26, scope: !2492)
!2497 = !DILocation(line: 64, column: 30, scope: !2492)
!2498 = !DILocation(line: 64, column: 21, scope: !2492)
!2499 = !DILocation(line: 64, column: 9, scope: !2492)
!2500 = !DILocation(line: 64, column: 36, scope: !2492)
!2501 = !DILocation(line: 63, column: 29, scope: !2489)
!2502 = !DILocation(line: 63, column: 5, scope: !2489)
!2503 = distinct !{!2503, !2490, !2504, !307}
!2504 = !DILocation(line: 65, column: 5, scope: !2484)
!2505 = !DILocation(line: 67, column: 16, scope: !2433)
!2506 = !DILocation(line: 67, column: 20, scope: !2433)
!2507 = !DILocation(line: 67, column: 5, scope: !2433)
!2508 = !DILocalVariable(name: "full_rank", scope: !2433, file: !58, line: 70, type: !14)
!2509 = !DILocalVariable(name: "i", scope: !2510, file: !58, line: 71, type: !45)
!2510 = distinct !DILexicalBlock(scope: !2433, file: !58, line: 71, column: 5)
!2511 = !DILocation(line: 0, scope: !2510)
!2512 = !DILocation(line: 71, column: 10, scope: !2510)
!2513 = !DILocation(line: 71, scope: !2510)
!2514 = !DILocation(line: 71, column: 23, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !58, line: 71, column: 5)
!2516 = !DILocation(line: 71, column: 5, scope: !2510)
!2517 = !DILocation(line: 72, column: 27, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !58, line: 71, column: 42)
!2519 = !DILocation(line: 72, column: 32, scope: !2518)
!2520 = !DILocation(line: 72, column: 22, scope: !2518)
!2521 = !DILocation(line: 72, column: 19, scope: !2518)
!2522 = !DILocation(line: 71, column: 38, scope: !2515)
!2523 = !DILocation(line: 71, column: 5, scope: !2515)
!2524 = distinct !{!2524, !2516, !2525, !307}
!2525 = !DILocation(line: 73, column: 5, scope: !2510)
!2526 = !DILocation(line: 80, column: 19, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2433, file: !58, line: 80, column: 9)
!2528 = !DILocation(line: 88, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2433, file: !58, line: 88, column: 5)
!2530 = !DILocalVariable(name: "row", scope: !2529, file: !58, line: 88, type: !45)
!2531 = !DILocation(line: 0, scope: !2529)
!2532 = !DILocation(line: 88, column: 31, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !58, line: 88, column: 5)
!2534 = !DILocation(line: 88, column: 5, scope: !2529)
!2535 = !DILocalVariable(name: "finished", scope: !2433, file: !58, line: 46, type: !14)
!2536 = !DILocation(line: 90, column: 27, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !58, line: 88, column: 44)
!2538 = !DILocalVariable(name: "col_upper_bound", scope: !2433, file: !58, line: 47, type: !45)
!2539 = !DILocalVariable(name: "col", scope: !2540, file: !58, line: 93, type: !45)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !58, line: 93, column: 9)
!2541 = !DILocation(line: 0, scope: !2540)
!2542 = !DILocation(line: 93, column: 14, scope: !2540)
!2543 = !DILocation(line: 0, scope: !2537)
!2544 = !DILocation(line: 93, scope: !2540)
!2545 = !DILocation(line: 93, column: 33, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2540, file: !58, line: 93, column: 9)
!2547 = !DILocation(line: 93, column: 9, scope: !2540)
!2548 = distinct !{!2548, !2534, !2549, !307}
!2549 = !DILocation(line: 122, column: 5, scope: !2529)
!2550 = !DILocation(line: 97, column: 50, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !58, line: 93, column: 60)
!2552 = !DILocation(line: 97, column: 44, scope: !2551)
!2553 = !DILocation(line: 97, column: 30, scope: !2551)
!2554 = !DILocation(line: 97, column: 73, scope: !2551)
!2555 = !DILocalVariable(name: "correct_column", scope: !2433, file: !58, line: 48, type: !14)
!2556 = !DILocation(line: 99, column: 63, scope: !2551)
!2557 = !DILocation(line: 99, column: 48, scope: !2551)
!2558 = !DILocation(line: 99, column: 46, scope: !2551)
!2559 = !DILocalVariable(name: "u", scope: !2551, file: !58, line: 99, type: !14)
!2560 = !DILocation(line: 0, scope: !2551)
!2561 = !DILocation(line: 100, column: 13, scope: !2551)
!2562 = !DILocation(line: 100, column: 20, scope: !2551)
!2563 = !DILocalVariable(name: "i", scope: !2564, file: !58, line: 102, type: !45)
!2564 = distinct !DILexicalBlock(scope: !2551, file: !58, line: 102, column: 13)
!2565 = !DILocation(line: 0, scope: !2564)
!2566 = !DILocation(line: 102, column: 18, scope: !2564)
!2567 = !DILocation(line: 102, scope: !2564)
!2568 = !DILocation(line: 102, column: 31, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2564, file: !58, line: 102, column: 13)
!2570 = !DILocation(line: 102, column: 13, scope: !2564)
!2571 = !DILocation(line: 103, column: 53, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2569, file: !58, line: 102, column: 46)
!2573 = !DILocation(line: 103, column: 45, scope: !2572)
!2574 = !DILocation(line: 103, column: 34, scope: !2572)
!2575 = !DILocation(line: 103, column: 95, scope: !2572)
!2576 = !DILocation(line: 103, column: 99, scope: !2572)
!2577 = !DILocation(line: 103, column: 91, scope: !2572)
!2578 = !DILocation(line: 103, column: 80, scope: !2572)
!2579 = !DILocation(line: 103, column: 115, scope: !2572)
!2580 = !DILocation(line: 103, column: 76, scope: !2572)
!2581 = !DILocation(line: 104, column: 49, scope: !2572)
!2582 = !DILocation(line: 104, column: 53, scope: !2572)
!2583 = !DILocation(line: 104, column: 45, scope: !2572)
!2584 = !DILocation(line: 104, column: 34, scope: !2572)
!2585 = !DILocation(line: 104, column: 69, scope: !2572)
!2586 = !DILocation(line: 104, column: 30, scope: !2572)
!2587 = !DILocation(line: 104, column: 95, scope: !2572)
!2588 = !DILocation(line: 104, column: 99, scope: !2572)
!2589 = !DILocation(line: 104, column: 91, scope: !2572)
!2590 = !DILocation(line: 104, column: 80, scope: !2572)
!2591 = !DILocation(line: 104, column: 115, scope: !2572)
!2592 = !DILocation(line: 104, column: 76, scope: !2572)
!2593 = !DILocation(line: 105, column: 49, scope: !2572)
!2594 = !DILocation(line: 105, column: 53, scope: !2572)
!2595 = !DILocation(line: 105, column: 45, scope: !2572)
!2596 = !DILocation(line: 105, column: 34, scope: !2572)
!2597 = !DILocation(line: 105, column: 69, scope: !2572)
!2598 = !DILocation(line: 105, column: 30, scope: !2572)
!2599 = !DILocation(line: 105, column: 95, scope: !2572)
!2600 = !DILocation(line: 105, column: 99, scope: !2572)
!2601 = !DILocation(line: 105, column: 91, scope: !2572)
!2602 = !DILocation(line: 105, column: 80, scope: !2572)
!2603 = !DILocation(line: 105, column: 115, scope: !2572)
!2604 = !DILocation(line: 105, column: 76, scope: !2572)
!2605 = !DILocation(line: 106, column: 49, scope: !2572)
!2606 = !DILocation(line: 106, column: 53, scope: !2572)
!2607 = !DILocation(line: 106, column: 45, scope: !2572)
!2608 = !DILocation(line: 106, column: 34, scope: !2572)
!2609 = !DILocation(line: 106, column: 69, scope: !2572)
!2610 = !DILocation(line: 106, column: 30, scope: !2572)
!2611 = !DILocation(line: 106, column: 95, scope: !2572)
!2612 = !DILocation(line: 106, column: 99, scope: !2572)
!2613 = !DILocation(line: 106, column: 91, scope: !2572)
!2614 = !DILocation(line: 106, column: 80, scope: !2572)
!2615 = !DILocation(line: 106, column: 115, scope: !2572)
!2616 = !DILocation(line: 106, column: 76, scope: !2572)
!2617 = !DILocalVariable(name: "tmp", scope: !2572, file: !58, line: 103, type: !6)
!2618 = !DILocation(line: 0, scope: !2572)
!2619 = !DILocation(line: 108, column: 23, scope: !2572)
!2620 = !DILocation(line: 110, column: 34, scope: !2572)
!2621 = !DILocation(line: 110, column: 17, scope: !2572)
!2622 = !DILocation(line: 110, column: 48, scope: !2572)
!2623 = !DILocation(line: 111, column: 56, scope: !2572)
!2624 = !DILocation(line: 111, column: 34, scope: !2572)
!2625 = !DILocation(line: 111, column: 17, scope: !2572)
!2626 = !DILocation(line: 111, column: 48, scope: !2572)
!2627 = !DILocation(line: 112, column: 56, scope: !2572)
!2628 = !DILocation(line: 112, column: 34, scope: !2572)
!2629 = !DILocation(line: 112, column: 17, scope: !2572)
!2630 = !DILocation(line: 112, column: 48, scope: !2572)
!2631 = !DILocation(line: 113, column: 56, scope: !2572)
!2632 = !DILocation(line: 113, column: 34, scope: !2572)
!2633 = !DILocation(line: 113, column: 17, scope: !2572)
!2634 = !DILocation(line: 113, column: 48, scope: !2572)
!2635 = !DILocation(line: 114, column: 56, scope: !2572)
!2636 = !DILocation(line: 114, column: 34, scope: !2572)
!2637 = !DILocation(line: 114, column: 17, scope: !2572)
!2638 = !DILocation(line: 114, column: 48, scope: !2572)
!2639 = !DILocation(line: 115, column: 56, scope: !2572)
!2640 = !DILocation(line: 115, column: 34, scope: !2572)
!2641 = !DILocation(line: 115, column: 17, scope: !2572)
!2642 = !DILocation(line: 115, column: 48, scope: !2572)
!2643 = !DILocation(line: 116, column: 56, scope: !2572)
!2644 = !DILocation(line: 116, column: 34, scope: !2572)
!2645 = !DILocation(line: 116, column: 17, scope: !2572)
!2646 = !DILocation(line: 116, column: 48, scope: !2572)
!2647 = !DILocation(line: 117, column: 56, scope: !2572)
!2648 = !DILocation(line: 117, column: 34, scope: !2572)
!2649 = !DILocation(line: 117, column: 17, scope: !2572)
!2650 = !DILocation(line: 117, column: 48, scope: !2572)
!2651 = !DILocation(line: 102, column: 40, scope: !2569)
!2652 = !DILocation(line: 102, column: 13, scope: !2569)
!2653 = distinct !{!2653, !2570, !2654, !307}
!2654 = !DILocation(line: 118, column: 13, scope: !2564)
!2655 = !DILocation(line: 120, column: 33, scope: !2551)
!2656 = !DILocation(line: 93, column: 56, scope: !2546)
!2657 = !DILocation(line: 93, column: 9, scope: !2546)
!2658 = distinct !{!2658, !2547, !2659, !307}
!2659 = !DILocation(line: 121, column: 9, scope: !2540)
!2660 = !DILocation(line: 124, column: 1, scope: !2433)
!2661 = distinct !DISubprogram(name: "mat_mul", scope: !496, file: !496, line: 79, type: !1385, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2662 = !DILocalVariable(name: "a", arg: 1, scope: !2661, file: !496, line: 79, type: !49)
!2663 = !DILocation(line: 0, scope: !2661)
!2664 = !DILocalVariable(name: "b", arg: 2, scope: !2661, file: !496, line: 79, type: !49)
!2665 = !DILocalVariable(name: "c", arg: 3, scope: !2661, file: !496, line: 80, type: !18)
!2666 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2661, file: !496, line: 80, type: !45)
!2667 = !DILocalVariable(name: "row_a", arg: 5, scope: !2661, file: !496, line: 80, type: !45)
!2668 = !DILocalVariable(name: "col_b", arg: 6, scope: !2661, file: !496, line: 80, type: !45)
!2669 = !DILocalVariable(name: "i", scope: !2670, file: !496, line: 81, type: !45)
!2670 = distinct !DILexicalBlock(scope: !2661, file: !496, line: 81, column: 5)
!2671 = !DILocation(line: 0, scope: !2670)
!2672 = !DILocation(line: 81, column: 10, scope: !2670)
!2673 = !DILocation(line: 81, scope: !2670)
!2674 = !DILocation(line: 81, column: 23, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !496, line: 81, column: 5)
!2676 = !DILocation(line: 81, column: 5, scope: !2670)
!2677 = !DILocation(line: 82, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !496, line: 82, column: 9)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !496, line: 81, column: 53)
!2680 = !DILocalVariable(name: "j", scope: !2678, file: !496, line: 82, type: !45)
!2681 = !DILocation(line: 0, scope: !2678)
!2682 = !DILocation(line: 82, column: 27, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2678, file: !496, line: 82, column: 9)
!2684 = !DILocation(line: 82, column: 9, scope: !2678)
!2685 = !DILocation(line: 83, column: 31, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !496, line: 82, column: 46)
!2687 = !DILocation(line: 83, column: 18, scope: !2686)
!2688 = !DILocation(line: 83, column: 16, scope: !2686)
!2689 = !DILocation(line: 82, column: 36, scope: !2683)
!2690 = !DILocation(line: 82, column: 41, scope: !2683)
!2691 = !DILocation(line: 82, column: 9, scope: !2683)
!2692 = distinct !{!2692, !2684, !2693, !307}
!2693 = !DILocation(line: 84, column: 9, scope: !2678)
!2694 = !DILocation(line: 81, column: 32, scope: !2675)
!2695 = !DILocation(line: 81, column: 39, scope: !2675)
!2696 = !DILocation(line: 81, column: 5, scope: !2675)
!2697 = distinct !{!2697, !2676, !2698, !307}
!2698 = !DILocation(line: 85, column: 5, scope: !2670)
!2699 = !DILocation(line: 86, column: 1, scope: !2661)
!2700 = distinct !DISubprogram(name: "sub_f", scope: !496, file: !496, line: 48, type: !1508, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2701 = !DILocalVariable(name: "a", arg: 1, scope: !2700, file: !496, line: 48, type: !14)
!2702 = !DILocation(line: 0, scope: !2700)
!2703 = !DILocalVariable(name: "b", arg: 2, scope: !2700, file: !496, line: 48, type: !14)
!2704 = !DILocation(line: 49, column: 14, scope: !2700)
!2705 = !DILocation(line: 49, column: 5, scope: !2700)
!2706 = distinct !DISubprogram(name: "EF", scope: !2707, file: !2707, line: 60, type: !2708, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2707 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !18, !45, !45}
!2710 = !DILocalVariable(name: "A", arg: 1, scope: !2706, file: !2707, line: 60, type: !18)
!2711 = !DILocation(line: 0, scope: !2706)
!2712 = !DILocalVariable(name: "nrows", arg: 2, scope: !2706, file: !2707, line: 60, type: !45)
!2713 = !DILocalVariable(name: "ncols", arg: 3, scope: !2706, file: !2707, line: 60, type: !45)
!2714 = !DILocalVariable(name: "_pivot_row", scope: !2706, file: !2707, line: 62, type: !588, align: 256)
!2715 = !DILocation(line: 62, column: 27, scope: !2706)
!2716 = !DILocalVariable(name: "_pivot_row2", scope: !2706, file: !2707, line: 63, type: !588, align: 256)
!2717 = !DILocation(line: 63, column: 27, scope: !2706)
!2718 = !DILocalVariable(name: "packed_A", scope: !2706, file: !2707, line: 64, type: !2719, align: 256)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 48384, elements: !2720)
!2720 = !{!2721}
!2721 = !DISubrange(count: 756)
!2722 = !DILocation(line: 64, column: 27, scope: !2706)
!2723 = !DILocation(line: 66, column: 26, scope: !2706)
!2724 = !DILocation(line: 66, column: 32, scope: !2706)
!2725 = !DILocalVariable(name: "row_len", scope: !2706, file: !2707, line: 66, type: !45)
!2726 = !DILocalVariable(name: "i", scope: !2727, file: !2707, line: 69, type: !45)
!2727 = distinct !DILexicalBlock(scope: !2706, file: !2707, line: 69, column: 5)
!2728 = !DILocation(line: 0, scope: !2727)
!2729 = !DILocation(line: 69, column: 10, scope: !2727)
!2730 = !DILocation(line: 69, scope: !2727)
!2731 = !DILocation(line: 69, column: 23, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !2707, line: 69, column: 5)
!2733 = !DILocation(line: 69, column: 5, scope: !2727)
!2734 = !DILocation(line: 77, column: 5, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2706, file: !2707, line: 77, column: 5)
!2736 = !DILocation(line: 70, column: 29, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !2707, line: 69, column: 37)
!2738 = !DILocation(line: 70, column: 25, scope: !2737)
!2739 = !DILocation(line: 70, column: 51, scope: !2737)
!2740 = !DILocation(line: 70, column: 47, scope: !2737)
!2741 = !DILocation(line: 70, column: 9, scope: !2737)
!2742 = !DILocation(line: 69, column: 33, scope: !2732)
!2743 = !DILocation(line: 69, column: 5, scope: !2732)
!2744 = distinct !{!2744, !2733, !2745, !307}
!2745 = !DILocation(line: 71, column: 5, scope: !2727)
!2746 = !DILocation(line: 77, scope: !2735)
!2747 = !DILocalVariable(name: "pivot_row", scope: !2706, file: !2707, line: 76, type: !45)
!2748 = !DILocalVariable(name: "pivot_col", scope: !2735, file: !2707, line: 77, type: !45)
!2749 = !DILocation(line: 0, scope: !2735)
!2750 = !DILocation(line: 77, column: 39, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2735, file: !2707, line: 77, column: 5)
!2752 = !DILocation(line: 79, column: 37, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2751, file: !2707, line: 77, column: 61)
!2754 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2753, file: !2707, line: 79, type: !45)
!2755 = !DILocation(line: 0, scope: !2753)
!2756 = !DILocation(line: 80, column: 37, scope: !2753)
!2757 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2753, file: !2707, line: 80, type: !45)
!2758 = !DILocalVariable(name: "i", scope: !2759, file: !2707, line: 85, type: !45)
!2759 = distinct !DILexicalBlock(scope: !2753, file: !2707, line: 85, column: 9)
!2760 = !DILocation(line: 0, scope: !2759)
!2761 = !DILocation(line: 85, column: 14, scope: !2759)
!2762 = !DILocation(line: 85, scope: !2759)
!2763 = !DILocation(line: 85, column: 27, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2759, file: !2707, line: 85, column: 9)
!2765 = !DILocation(line: 85, column: 9, scope: !2759)
!2766 = !DILocation(line: 93, column: 9, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2753, file: !2707, line: 93, column: 9)
!2768 = !DILocation(line: 86, column: 13, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !2707, line: 85, column: 43)
!2770 = !DILocation(line: 86, column: 27, scope: !2769)
!2771 = !DILocation(line: 87, column: 13, scope: !2769)
!2772 = !DILocation(line: 87, column: 28, scope: !2769)
!2773 = !DILocation(line: 85, column: 39, scope: !2764)
!2774 = !DILocation(line: 85, column: 9, scope: !2764)
!2775 = distinct !{!2775, !2765, !2776, !307}
!2776 = !DILocation(line: 88, column: 9, scope: !2759)
!2777 = !DILocation(line: 0, scope: !2767)
!2778 = !DILocalVariable(name: "row", scope: !2767, file: !2707, line: 93, type: !45)
!2779 = !DILocalVariable(name: "pivot", scope: !2753, file: !2707, line: 91, type: !14)
!2780 = !DILocalVariable(name: "pivot_is_zero", scope: !2753, file: !2707, line: 92, type: !6)
!2781 = !DILocation(line: 94, column: 24, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2767, file: !2707, line: 93, column: 9)
!2783 = !DILocation(line: 94, column: 21, scope: !2782)
!2784 = !DILocation(line: 96, column: 38, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !2707, line: 94, column: 80)
!2786 = !DILocation(line: 96, column: 37, scope: !2785)
!2787 = !DILocalVariable(name: "is_pivot_row", scope: !2785, file: !2707, line: 96, type: !6)
!2788 = !DILocation(line: 0, scope: !2785)
!2789 = !DILocation(line: 97, column: 40, scope: !2785)
!2790 = !DILocalVariable(name: "below_pivot_row", scope: !2785, file: !2707, line: 97, type: !6)
!2791 = !DILocalVariable(name: "j", scope: !2792, file: !2707, line: 99, type: !45)
!2792 = distinct !DILexicalBlock(scope: !2785, file: !2707, line: 99, column: 13)
!2793 = !DILocation(line: 0, scope: !2792)
!2794 = !DILocation(line: 99, column: 18, scope: !2792)
!2795 = !DILocation(line: 99, scope: !2792)
!2796 = !DILocation(line: 99, column: 31, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !2707, line: 99, column: 13)
!2798 = !DILocation(line: 99, column: 13, scope: !2792)
!2799 = !DILocation(line: 100, column: 67, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !2707, line: 99, column: 47)
!2801 = !DILocation(line: 100, column: 48, scope: !2800)
!2802 = !DILocation(line: 101, column: 47, scope: !2800)
!2803 = !DILocation(line: 101, column: 57, scope: !2800)
!2804 = !DILocation(line: 101, column: 34, scope: !2800)
!2805 = !DILocation(line: 100, column: 85, scope: !2800)
!2806 = !DILocation(line: 100, column: 17, scope: !2800)
!2807 = !DILocation(line: 100, column: 31, scope: !2800)
!2808 = !DILocation(line: 99, column: 43, scope: !2797)
!2809 = !DILocation(line: 99, column: 13, scope: !2797)
!2810 = distinct !{!2810, !2798, !2811, !307}
!2811 = !DILocation(line: 102, column: 13, scope: !2792)
!2812 = !DILocation(line: 103, column: 21, scope: !2785)
!2813 = !DILocation(line: 104, column: 44, scope: !2785)
!2814 = !DILocation(line: 104, column: 30, scope: !2785)
!2815 = !DILocation(line: 104, column: 29, scope: !2785)
!2816 = !DILocation(line: 94, column: 76, scope: !2782)
!2817 = !DILocation(line: 93, column: 9, scope: !2782)
!2818 = distinct !{!2818, !2766, !2819, !307}
!2819 = !DILocation(line: 105, column: 9, scope: !2767)
!2820 = !DILocation(line: 108, column: 19, scope: !2753)
!2821 = !DILocalVariable(name: "inverse", scope: !2706, file: !2707, line: 75, type: !14)
!2822 = !DILocation(line: 109, column: 9, scope: !2753)
!2823 = !DILocalVariable(name: "row", scope: !2824, file: !2707, line: 113, type: !45)
!2824 = distinct !DILexicalBlock(scope: !2753, file: !2707, line: 113, column: 9)
!2825 = !DILocation(line: 0, scope: !2824)
!2826 = !DILocation(line: 113, column: 14, scope: !2824)
!2827 = !DILocation(line: 113, scope: !2824)
!2828 = !DILocation(line: 113, column: 51, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !2707, line: 113, column: 9)
!2830 = !DILocation(line: 113, column: 9, scope: !2824)
!2831 = !DILocation(line: 114, column: 33, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2829, file: !2707, line: 113, column: 84)
!2833 = !DILocation(line: 114, column: 63, scope: !2832)
!2834 = !DILocalVariable(name: "do_copy", scope: !2832, file: !2707, line: 114, type: !6)
!2835 = !DILocation(line: 0, scope: !2832)
!2836 = !DILocalVariable(name: "do_not_copy", scope: !2832, file: !2707, line: 115, type: !6)
!2837 = !DILocalVariable(name: "col", scope: !2838, file: !2707, line: 116, type: !45)
!2838 = distinct !DILexicalBlock(scope: !2832, file: !2707, line: 116, column: 13)
!2839 = !DILocation(line: 0, scope: !2838)
!2840 = !DILocation(line: 116, column: 18, scope: !2838)
!2841 = !DILocation(line: 116, scope: !2838)
!2842 = !DILocation(line: 116, column: 35, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !2707, line: 116, column: 13)
!2844 = !DILocation(line: 116, column: 13, scope: !2838)
!2845 = !DILocation(line: 118, column: 49, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !2707, line: 116, column: 53)
!2847 = !DILocation(line: 118, column: 59, scope: !2846)
!2848 = !DILocation(line: 118, column: 36, scope: !2846)
!2849 = !DILocation(line: 118, column: 34, scope: !2846)
!2850 = !DILocation(line: 119, column: 32, scope: !2846)
!2851 = !DILocation(line: 119, column: 30, scope: !2846)
!2852 = !DILocation(line: 118, column: 67, scope: !2846)
!2853 = !DILocation(line: 117, column: 30, scope: !2846)
!2854 = !DILocation(line: 117, column: 40, scope: !2846)
!2855 = !DILocation(line: 117, column: 17, scope: !2846)
!2856 = !DILocation(line: 117, column: 47, scope: !2846)
!2857 = !DILocation(line: 116, column: 49, scope: !2843)
!2858 = !DILocation(line: 116, column: 13, scope: !2843)
!2859 = distinct !{!2859, !2844, !2860, !307}
!2860 = !DILocation(line: 120, column: 13, scope: !2838)
!2861 = !DILocation(line: 113, column: 80, scope: !2829)
!2862 = !DILocation(line: 113, column: 9, scope: !2829)
!2863 = distinct !{!2863, !2830, !2864, !307}
!2864 = !DILocation(line: 121, column: 9, scope: !2824)
!2865 = !DILocation(line: 124, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2753, file: !2707, line: 124, column: 9)
!2867 = !DILocalVariable(name: "row", scope: !2866, file: !2707, line: 124, type: !45)
!2868 = !DILocation(line: 0, scope: !2866)
!2869 = !DILocation(line: 124, column: 51, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !2707, line: 124, column: 9)
!2871 = !DILocation(line: 124, column: 9, scope: !2866)
!2872 = !DILocation(line: 125, column: 46, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !2707, line: 124, column: 67)
!2874 = !DILocalVariable(name: "below_pivot", scope: !2873, file: !2707, line: 125, type: !14)
!2875 = !DILocation(line: 0, scope: !2873)
!2876 = !DILocation(line: 126, column: 74, scope: !2873)
!2877 = !DILocation(line: 126, column: 68, scope: !2873)
!2878 = !DILocation(line: 126, column: 41, scope: !2873)
!2879 = !DILocalVariable(name: "elt_to_elim", scope: !2873, file: !2707, line: 126, type: !14)
!2880 = !DILocation(line: 128, column: 63, scope: !2873)
!2881 = !DILocation(line: 129, column: 52, scope: !2873)
!2882 = !DILocation(line: 129, column: 46, scope: !2873)
!2883 = !DILocation(line: 128, column: 13, scope: !2873)
!2884 = !DILocation(line: 124, column: 63, scope: !2870)
!2885 = !DILocation(line: 124, column: 9, scope: !2870)
!2886 = distinct !{!2886, !2871, !2887, !307}
!2887 = !DILocation(line: 130, column: 9, scope: !2866)
!2888 = !DILocation(line: 132, column: 19, scope: !2753)
!2889 = !DILocation(line: 77, column: 57, scope: !2751)
!2890 = !DILocation(line: 77, column: 5, scope: !2751)
!2891 = distinct !{!2891, !2734, !2892, !307}
!2892 = !DILocation(line: 133, column: 5, scope: !2735)
!2893 = !DILocation(line: 138, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2706, file: !2707, line: 138, column: 5)
!2895 = !DILocalVariable(name: "i", scope: !2894, file: !2707, line: 138, type: !45)
!2896 = !DILocation(line: 0, scope: !2894)
!2897 = !DILocation(line: 138, column: 23, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !2707, line: 138, column: 5)
!2899 = !DILocation(line: 138, column: 5, scope: !2894)
!2900 = !DILocation(line: 139, column: 47, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !2707, line: 138, column: 37)
!2902 = !DILocation(line: 139, column: 43, scope: !2901)
!2903 = !DILocation(line: 139, column: 9, scope: !2901)
!2904 = !DILocalVariable(name: "j", scope: !2905, file: !2707, line: 140, type: !45)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !2707, line: 140, column: 9)
!2906 = !DILocation(line: 0, scope: !2905)
!2907 = !DILocation(line: 140, column: 14, scope: !2905)
!2908 = !DILocation(line: 140, scope: !2905)
!2909 = !DILocation(line: 140, column: 27, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2905, file: !2707, line: 140, column: 9)
!2911 = !DILocation(line: 140, column: 9, scope: !2905)
!2912 = !DILocation(line: 141, column: 32, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !2707, line: 140, column: 41)
!2914 = !DILocation(line: 141, column: 17, scope: !2913)
!2915 = !DILocation(line: 141, column: 13, scope: !2913)
!2916 = !DILocation(line: 141, column: 30, scope: !2913)
!2917 = !DILocation(line: 140, column: 37, scope: !2910)
!2918 = !DILocation(line: 140, column: 9, scope: !2910)
!2919 = distinct !{!2919, !2911, !2920, !307}
!2920 = !DILocation(line: 142, column: 9, scope: !2905)
!2921 = !DILocation(line: 138, column: 33, scope: !2898)
!2922 = !DILocation(line: 138, column: 5, scope: !2898)
!2923 = distinct !{!2923, !2899, !2924, !307}
!2924 = !DILocation(line: 143, column: 5, scope: !2894)
!2925 = !DILocation(line: 145, column: 5, scope: !2706)
!2926 = !DILocation(line: 146, column: 5, scope: !2706)
!2927 = !DILocation(line: 147, column: 5, scope: !2706)
!2928 = !DILocation(line: 148, column: 5, scope: !2706)
!2929 = !DILocation(line: 149, column: 1, scope: !2706)
!2930 = distinct !DISubprogram(name: "ct_compare_8", scope: !2931, file: !2931, line: 51, type: !1508, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2931 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2932 = !DILocalVariable(name: "a", arg: 1, scope: !2930, file: !2931, line: 51, type: !14)
!2933 = !DILocation(line: 0, scope: !2930)
!2934 = !DILocalVariable(name: "b", arg: 2, scope: !2930, file: !2931, line: 51, type: !14)
!2935 = !DILocation(line: 52, column: 42, scope: !2930)
!2936 = !DILocation(line: 52, column: 13, scope: !2930)
!2937 = !DILocation(line: 52, column: 71, scope: !2930)
!2938 = !DILocation(line: 52, column: 69, scope: !2930)
!2939 = !DILocation(line: 52, column: 5, scope: !2930)
!2940 = distinct !DISubprogram(name: "mul_fx8", scope: !496, file: !496, line: 28, type: !2941, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!6, !14, !6}
!2943 = !DILocalVariable(name: "a", arg: 1, scope: !2940, file: !496, line: 28, type: !14)
!2944 = !DILocation(line: 0, scope: !2940)
!2945 = !DILocalVariable(name: "b", arg: 2, scope: !2940, file: !496, line: 28, type: !6)
!2946 = !DILocation(line: 31, column: 13, scope: !2940)
!2947 = !DILocation(line: 31, column: 10, scope: !2940)
!2948 = !DILocation(line: 31, column: 17, scope: !2940)
!2949 = !DILocalVariable(name: "p", scope: !2940, file: !496, line: 30, type: !6)
!2950 = !DILocation(line: 32, column: 13, scope: !2940)
!2951 = !DILocation(line: 32, column: 10, scope: !2940)
!2952 = !DILocation(line: 32, column: 17, scope: !2940)
!2953 = !DILocation(line: 32, column: 7, scope: !2940)
!2954 = !DILocation(line: 33, column: 13, scope: !2940)
!2955 = !DILocation(line: 33, column: 10, scope: !2940)
!2956 = !DILocation(line: 33, column: 17, scope: !2940)
!2957 = !DILocation(line: 33, column: 7, scope: !2940)
!2958 = !DILocation(line: 34, column: 13, scope: !2940)
!2959 = !DILocation(line: 34, column: 10, scope: !2940)
!2960 = !DILocation(line: 34, column: 17, scope: !2940)
!2961 = !DILocation(line: 34, column: 7, scope: !2940)
!2962 = !DILocalVariable(name: "top_p", scope: !2940, file: !496, line: 37, type: !6)
!2963 = !DILocation(line: 38, column: 32, scope: !2940)
!2964 = !DILocation(line: 38, column: 47, scope: !2940)
!2965 = !DILocation(line: 38, column: 38, scope: !2940)
!2966 = !DILocation(line: 38, column: 54, scope: !2940)
!2967 = !DILocalVariable(name: "out", scope: !2940, file: !496, line: 38, type: !6)
!2968 = !DILocation(line: 39, column: 5, scope: !2940)
!2969 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2707, file: !2707, line: 24, type: !2970, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{null, !49, !5, !45}
!2972 = !DILocalVariable(name: "in", arg: 1, scope: !2969, file: !2707, line: 24, type: !49)
!2973 = !DILocation(line: 0, scope: !2969)
!2974 = !DILocalVariable(name: "out", arg: 2, scope: !2969, file: !2707, line: 24, type: !5)
!2975 = !DILocalVariable(name: "ncols", arg: 3, scope: !2969, file: !2707, line: 24, type: !45)
!2976 = !DILocalVariable(name: "out8", scope: !2969, file: !2707, line: 26, type: !18)
!2977 = !DILocalVariable(name: "i", scope: !2969, file: !2707, line: 25, type: !45)
!2978 = !DILocation(line: 27, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2969, file: !2707, line: 27, column: 5)
!2980 = !DILocation(line: 27, scope: !2979)
!2981 = !DILocation(line: 27, column: 17, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !2707, line: 27, column: 5)
!2983 = !DILocation(line: 27, column: 20, scope: !2982)
!2984 = !DILocation(line: 27, column: 5, scope: !2979)
!2985 = !DILocation(line: 31, column: 23, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !2707, line: 27, column: 36)
!2987 = !DILocation(line: 31, column: 44, scope: !2986)
!2988 = !DILocation(line: 31, column: 40, scope: !2986)
!2989 = !DILocation(line: 31, column: 48, scope: !2986)
!2990 = !DILocation(line: 31, column: 37, scope: !2986)
!2991 = !DILocation(line: 31, column: 15, scope: !2986)
!2992 = !DILocation(line: 31, column: 9, scope: !2986)
!2993 = !DILocation(line: 31, column: 20, scope: !2986)
!2994 = !DILocation(line: 27, column: 31, scope: !2982)
!2995 = !DILocation(line: 27, column: 5, scope: !2982)
!2996 = distinct !{!2996, !2984, !2997, !307}
!2997 = !DILocation(line: 33, column: 5, scope: !2979)
!2998 = !DILocation(line: 34, column: 19, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2969, file: !2707, line: 34, column: 9)
!3000 = !DILocation(line: 38, column: 23, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2999, file: !2707, line: 34, column: 24)
!3002 = !DILocation(line: 38, column: 15, scope: !3001)
!3003 = !DILocation(line: 38, column: 9, scope: !3001)
!3004 = !DILocation(line: 38, column: 20, scope: !3001)
!3005 = !DILocation(line: 40, column: 5, scope: !3001)
!3006 = !DILocation(line: 41, column: 1, scope: !2969)
!3007 = distinct !DISubprogram(name: "ct_compare_64", scope: !2931, file: !2931, line: 46, type: !3008, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!6, !45, !45}
!3010 = !DILocalVariable(name: "a", arg: 1, scope: !3007, file: !2931, line: 46, type: !45)
!3011 = !DILocation(line: 0, scope: !3007)
!3012 = !DILocalVariable(name: "b", arg: 2, scope: !3007, file: !2931, line: 46, type: !45)
!3013 = !DILocation(line: 47, column: 38, scope: !3007)
!3014 = !DILocation(line: 47, column: 44, scope: !3007)
!3015 = !DILocation(line: 47, column: 73, scope: !3007)
!3016 = !DILocation(line: 47, column: 71, scope: !3007)
!3017 = !DILocation(line: 47, column: 5, scope: !3007)
!3018 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !2931, file: !2931, line: 35, type: !3008, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3019 = !DILocalVariable(name: "a", arg: 1, scope: !3018, file: !2931, line: 35, type: !45)
!3020 = !DILocation(line: 0, scope: !3018)
!3021 = !DILocalVariable(name: "b", arg: 2, scope: !3018, file: !2931, line: 35, type: !45)
!3022 = !DILocalVariable(name: "diff", scope: !3018, file: !2931, line: 36, type: !46)
!3023 = !DILocation(line: 37, column: 30, scope: !3018)
!3024 = !DILocation(line: 37, column: 59, scope: !3018)
!3025 = !DILocation(line: 37, column: 57, scope: !3018)
!3026 = !DILocation(line: 37, column: 5, scope: !3018)
!3027 = distinct !DISubprogram(name: "m_extract_element", scope: !2707, file: !2707, line: 16, type: !3028, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!14, !330, !45}
!3030 = !DILocalVariable(name: "in", arg: 1, scope: !3027, file: !2707, line: 16, type: !330)
!3031 = !DILocation(line: 0, scope: !3027)
!3032 = !DILocalVariable(name: "index", arg: 2, scope: !3027, file: !2707, line: 16, type: !45)
!3033 = !DILocation(line: 17, column: 27, scope: !3027)
!3034 = !DILocalVariable(name: "leg", scope: !3027, file: !2707, line: 17, type: !243)
!3035 = !DILocation(line: 18, column: 30, scope: !3027)
!3036 = !DILocalVariable(name: "offset", scope: !3027, file: !2707, line: 18, type: !243)
!3037 = !DILocation(line: 20, column: 13, scope: !3027)
!3038 = !DILocation(line: 20, column: 31, scope: !3027)
!3039 = !DILocation(line: 20, column: 21, scope: !3027)
!3040 = !DILocation(line: 20, column: 12, scope: !3027)
!3041 = !DILocation(line: 20, column: 5, scope: !3027)
!3042 = distinct !DISubprogram(name: "inverse_f", scope: !496, file: !496, line: 57, type: !3043, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!14, !14}
!3045 = !DILocalVariable(name: "a", arg: 1, scope: !3042, file: !496, line: 57, type: !14)
!3046 = !DILocation(line: 0, scope: !3042)
!3047 = !DILocation(line: 61, column: 24, scope: !3042)
!3048 = !DILocalVariable(name: "a2", scope: !3042, file: !496, line: 61, type: !14)
!3049 = !DILocation(line: 62, column: 24, scope: !3042)
!3050 = !DILocalVariable(name: "a4", scope: !3042, file: !496, line: 62, type: !14)
!3051 = !DILocation(line: 63, column: 24, scope: !3042)
!3052 = !DILocalVariable(name: "a8", scope: !3042, file: !496, line: 63, type: !14)
!3053 = !DILocation(line: 64, column: 24, scope: !3042)
!3054 = !DILocalVariable(name: "a6", scope: !3042, file: !496, line: 64, type: !14)
!3055 = !DILocation(line: 65, column: 25, scope: !3042)
!3056 = !DILocalVariable(name: "a14", scope: !3042, file: !496, line: 65, type: !14)
!3057 = !DILocation(line: 67, column: 5, scope: !3042)
!3058 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !2931, file: !2931, line: 94, type: !3059, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !243, !330, !14, !5}
!3061 = !DILocalVariable(name: "legs", arg: 1, scope: !3058, file: !2931, line: 94, type: !243)
!3062 = !DILocation(line: 0, scope: !3058)
!3063 = !DILocalVariable(name: "in", arg: 2, scope: !3058, file: !2931, line: 94, type: !330)
!3064 = !DILocalVariable(name: "a", arg: 3, scope: !3058, file: !2931, line: 94, type: !14)
!3065 = !DILocalVariable(name: "acc", arg: 4, scope: !3058, file: !2931, line: 94, type: !5)
!3066 = !DILocation(line: 95, column: 20, scope: !3058)
!3067 = !DILocalVariable(name: "tab", scope: !3058, file: !2931, line: 95, type: !19)
!3068 = !DILocalVariable(name: "lsb_ask", scope: !3058, file: !2931, line: 97, type: !6)
!3069 = !DILocalVariable(name: "i", scope: !3070, file: !2931, line: 99, type: !45)
!3070 = distinct !DILexicalBlock(scope: !3058, file: !2931, line: 99, column: 5)
!3071 = !DILocation(line: 0, scope: !3070)
!3072 = !DILocation(line: 99, column: 9, scope: !3070)
!3073 = !DILocation(line: 99, scope: !3070)
!3074 = !DILocation(line: 99, column: 20, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3070, file: !2931, line: 99, column: 5)
!3076 = !DILocation(line: 99, column: 5, scope: !3070)
!3077 = !DILocation(line: 100, column: 21, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !2931, line: 99, column: 32)
!3079 = !DILocation(line: 100, column: 33, scope: !3078)
!3080 = !DILocation(line: 100, column: 51, scope: !3078)
!3081 = !DILocation(line: 100, column: 46, scope: !3078)
!3082 = !DILocation(line: 100, column: 44, scope: !3078)
!3083 = !DILocation(line: 101, column: 27, scope: !3078)
!3084 = !DILocation(line: 101, column: 33, scope: !3078)
!3085 = !DILocation(line: 101, column: 52, scope: !3078)
!3086 = !DILocation(line: 101, column: 59, scope: !3078)
!3087 = !DILocation(line: 101, column: 46, scope: !3078)
!3088 = !DILocation(line: 101, column: 44, scope: !3078)
!3089 = !DILocation(line: 101, column: 17, scope: !3078)
!3090 = !DILocation(line: 102, column: 21, scope: !3078)
!3091 = !DILocation(line: 102, column: 27, scope: !3078)
!3092 = !DILocation(line: 102, column: 33, scope: !3078)
!3093 = !DILocation(line: 102, column: 52, scope: !3078)
!3094 = !DILocation(line: 102, column: 59, scope: !3078)
!3095 = !DILocation(line: 102, column: 46, scope: !3078)
!3096 = !DILocation(line: 102, column: 44, scope: !3078)
!3097 = !DILocation(line: 102, column: 17, scope: !3078)
!3098 = !DILocation(line: 103, column: 21, scope: !3078)
!3099 = !DILocation(line: 103, column: 27, scope: !3078)
!3100 = !DILocation(line: 103, column: 33, scope: !3078)
!3101 = !DILocation(line: 103, column: 52, scope: !3078)
!3102 = !DILocation(line: 103, column: 59, scope: !3078)
!3103 = !DILocation(line: 103, column: 46, scope: !3078)
!3104 = !DILocation(line: 103, column: 44, scope: !3078)
!3105 = !DILocation(line: 103, column: 17, scope: !3078)
!3106 = !DILocation(line: 100, column: 9, scope: !3078)
!3107 = !DILocation(line: 100, column: 16, scope: !3078)
!3108 = !DILocation(line: 99, column: 29, scope: !3075)
!3109 = !DILocation(line: 99, column: 5, scope: !3075)
!3110 = distinct !{!3110, !3076, !3111, !307}
!3111 = !DILocation(line: 104, column: 5, scope: !3070)
!3112 = !DILocation(line: 105, column: 1, scope: !3058)
!3113 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2707, file: !2707, line: 44, type: !3114, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !45, !330, !18}
!3116 = !DILocalVariable(name: "legs", arg: 1, scope: !3113, file: !2707, line: 44, type: !45)
!3117 = !DILocation(line: 0, scope: !3113)
!3118 = !DILocalVariable(name: "in", arg: 2, scope: !3113, file: !2707, line: 44, type: !330)
!3119 = !DILocalVariable(name: "out", arg: 3, scope: !3113, file: !2707, line: 44, type: !18)
!3120 = !DILocalVariable(name: "in8", scope: !3113, file: !2707, line: 45, type: !49)
!3121 = !DILocalVariable(name: "i", scope: !3122, file: !2707, line: 46, type: !45)
!3122 = distinct !DILexicalBlock(scope: !3113, file: !2707, line: 46, column: 5)
!3123 = !DILocation(line: 0, scope: !3122)
!3124 = !DILocation(line: 46, column: 9, scope: !3122)
!3125 = !DILocation(line: 46, scope: !3122)
!3126 = !DILocation(line: 46, column: 29, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3122, file: !2707, line: 46, column: 5)
!3128 = !DILocation(line: 46, column: 22, scope: !3127)
!3129 = !DILocation(line: 46, column: 5, scope: !3122)
!3130 = !DILocation(line: 51, column: 26, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !2707, line: 46, column: 42)
!3132 = !DILocation(line: 51, column: 21, scope: !3131)
!3133 = !DILocation(line: 51, column: 31, scope: !3131)
!3134 = !DILocation(line: 51, column: 9, scope: !3131)
!3135 = !DILocation(line: 51, column: 18, scope: !3131)
!3136 = !DILocation(line: 52, column: 26, scope: !3131)
!3137 = !DILocation(line: 52, column: 21, scope: !3131)
!3138 = !DILocation(line: 52, column: 30, scope: !3131)
!3139 = !DILocation(line: 52, column: 14, scope: !3131)
!3140 = !DILocation(line: 52, column: 9, scope: !3131)
!3141 = !DILocation(line: 52, column: 18, scope: !3131)
!3142 = !DILocation(line: 46, column: 37, scope: !3127)
!3143 = !DILocation(line: 46, column: 5, scope: !3127)
!3144 = distinct !{!3144, !3129, !3145, !307}
!3145 = !DILocation(line: 54, column: 5, scope: !3122)
!3146 = !DILocation(line: 55, column: 1, scope: !3113)
!3147 = distinct !DISubprogram(name: "mul_table", scope: !496, file: !496, line: 129, type: !497, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3148 = !DILocalVariable(name: "b", arg: 1, scope: !3147, file: !496, line: 129, type: !12)
!3149 = !DILocation(line: 0, scope: !3147)
!3150 = !DILocation(line: 130, column: 19, scope: !3147)
!3151 = !DILocation(line: 130, column: 33, scope: !3147)
!3152 = !DILocalVariable(name: "x", scope: !3147, file: !496, line: 130, type: !19)
!3153 = !DILocalVariable(name: "high_nibble_mask", scope: !3147, file: !496, line: 132, type: !19)
!3154 = !DILocation(line: 134, column: 28, scope: !3147)
!3155 = !DILocalVariable(name: "high_half", scope: !3147, file: !496, line: 134, type: !19)
!3156 = !DILocation(line: 135, column: 28, scope: !3147)
!3157 = !DILocation(line: 135, column: 47, scope: !3147)
!3158 = !DILocation(line: 135, column: 34, scope: !3147)
!3159 = !DILocation(line: 135, column: 5, scope: !3147)
!3160 = distinct !DISubprogram(name: "mul_f", scope: !496, file: !496, line: 9, type: !1508, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3161 = !DILocalVariable(name: "a", arg: 1, scope: !3160, file: !496, line: 9, type: !14)
!3162 = !DILocation(line: 0, scope: !3160)
!3163 = !DILocalVariable(name: "b", arg: 2, scope: !3160, file: !496, line: 9, type: !14)
!3164 = !DILocation(line: 14, column: 10, scope: !3160)
!3165 = !DILocation(line: 14, column: 7, scope: !3160)
!3166 = !DILocation(line: 17, column: 17, scope: !3160)
!3167 = !DILocalVariable(name: "p", scope: !3160, file: !496, line: 11, type: !14)
!3168 = !DILocation(line: 18, column: 13, scope: !3160)
!3169 = !DILocation(line: 18, column: 17, scope: !3160)
!3170 = !DILocation(line: 18, column: 7, scope: !3160)
!3171 = !DILocation(line: 19, column: 13, scope: !3160)
!3172 = !DILocation(line: 19, column: 17, scope: !3160)
!3173 = !DILocation(line: 19, column: 7, scope: !3160)
!3174 = !DILocation(line: 20, column: 13, scope: !3160)
!3175 = !DILocation(line: 20, column: 17, scope: !3160)
!3176 = !DILocation(line: 20, column: 7, scope: !3160)
!3177 = !DILocalVariable(name: "top_p", scope: !3160, file: !496, line: 23, type: !14)
!3178 = !DILocation(line: 24, column: 37, scope: !3160)
!3179 = !DILocation(line: 24, column: 52, scope: !3160)
!3180 = !DILocation(line: 24, column: 43, scope: !3160)
!3181 = !DILocation(line: 24, column: 59, scope: !3160)
!3182 = !DILocalVariable(name: "out", scope: !3160, file: !496, line: 24, type: !14)
!3183 = !DILocation(line: 25, column: 5, scope: !3160)
!3184 = distinct !DISubprogram(name: "lincomb", scope: !496, file: !496, line: 70, type: !1516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3185 = !DILocalVariable(name: "a", arg: 1, scope: !3184, file: !496, line: 70, type: !49)
!3186 = !DILocation(line: 0, scope: !3184)
!3187 = !DILocalVariable(name: "b", arg: 2, scope: !3184, file: !496, line: 71, type: !49)
!3188 = !DILocalVariable(name: "n", arg: 3, scope: !3184, file: !496, line: 71, type: !45)
!3189 = !DILocalVariable(name: "m", arg: 4, scope: !3184, file: !496, line: 71, type: !45)
!3190 = !DILocalVariable(name: "ret", scope: !3184, file: !496, line: 72, type: !14)
!3191 = !DILocalVariable(name: "i", scope: !3192, file: !496, line: 73, type: !45)
!3192 = distinct !DILexicalBlock(scope: !3184, file: !496, line: 73, column: 5)
!3193 = !DILocation(line: 0, scope: !3192)
!3194 = !DILocation(line: 73, column: 10, scope: !3192)
!3195 = !DILocation(line: 73, scope: !3192)
!3196 = !DILocation(line: 73, column: 23, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3192, file: !496, line: 73, column: 5)
!3198 = !DILocation(line: 73, column: 5, scope: !3192)
!3199 = !DILocation(line: 74, column: 27, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3197, file: !496, line: 73, column: 41)
!3201 = !DILocation(line: 74, column: 33, scope: !3200)
!3202 = !DILocation(line: 74, column: 21, scope: !3200)
!3203 = !DILocation(line: 74, column: 15, scope: !3200)
!3204 = !DILocation(line: 73, column: 28, scope: !3197)
!3205 = !DILocation(line: 73, column: 35, scope: !3197)
!3206 = !DILocation(line: 73, column: 5, scope: !3197)
!3207 = distinct !{!3207, !3198, !3208, !307}
!3208 = !DILocation(line: 75, column: 5, scope: !3192)
!3209 = !DILocation(line: 76, column: 5, scope: !3184)
!3210 = distinct !DISubprogram(name: "add_f", scope: !496, file: !496, line: 43, type: !1508, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3211 = !DILocalVariable(name: "a", arg: 1, scope: !3210, file: !496, line: 43, type: !14)
!3212 = !DILocation(line: 0, scope: !3210)
!3213 = !DILocalVariable(name: "b", arg: 2, scope: !3210, file: !496, line: 43, type: !14)
!3214 = !DILocation(line: 44, column: 14, scope: !3210)
!3215 = !DILocation(line: 44, column: 5, scope: !3210)
